uint64_t sub_1D52DB15C()
{
  sub_1D56162D8();
  sub_1D52DA7D8(v1);
  return sub_1D5616328();
}

uint64_t sub_1D52DB1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D52D9EF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D52DB1CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D52DA588();
  *a1 = result;
  return result;
}

uint64_t sub_1D52DB1F4(uint64_t a1)
{
  v2 = sub_1D52DB760();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52DB230(uint64_t a1)
{
  v2 = sub_1D52DB760();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D52DB2A8(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D52DA7D8(v2);
  return sub_1D5616328();
}

uint64_t sub_1D52DB2E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC58, &unk_1D561DA70);
  OUTLINED_FUNCTION_22(v1);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_3();
  v37 = v3;
  v4 = sub_1D560F548();
  OUTLINED_FUNCTION_4();
  v34 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = type metadata accessor for StorePlatformOffer(0);
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = *(v0 + *(type metadata accessor for StorePlatformMusicMovie(0) + 80));
  if (!v17)
  {
    return 0;
  }

  v18 = *(v17 + 16);
  if (!v18)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = *(v10 + 20);
  v20 = v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v21 = *(v12 + 72);
  v35 = (v34 + 32);
  v22 = MEMORY[0x1E69E7CC0];
  v36 = v9;
  v33 = v21;
  do
  {
    sub_1D52DB9E8(v20, v16, type metadata accessor for StorePlatformOffer);
    sub_1D4F39AB0(v16 + v19, v37, &qword_1EC7EAC58, &unk_1D561DA70);
    sub_1D52DBA44(v16, type metadata accessor for StorePlatformOffer);
    v23 = OUTLINED_FUNCTION_35_1();
    OUTLINED_FUNCTION_57(v23, v24, v4);
    if (v25)
    {
      sub_1D4E50004(v37, &qword_1EC7EAC58, &unk_1D561DA70);
    }

    else
    {
      v26 = v19;
      v27 = *v35;
      (*v35)(v36, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D4F00C24();
        v22 = v30;
      }

      v29 = *(v22 + 16);
      if (v29 >= *(v22 + 24) >> 1)
      {
        sub_1D4F00C24();
        v22 = v31;
      }

      *(v22 + 16) = v29 + 1;
      (v27)(v22 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v29, v36, v4);
      v19 = v26;
      v21 = v33;
    }

    v20 += v21;
    --v18;
  }

  while (v18);
  return v22;
}

uint64_t sub_1D52DB5E8()
{
  v1 = *(v0 + *(type metadata accessor for StorePlatformMusicMovie(0) + 64));
  if (v1 != 2)
  {
    return v1 & 1;
  }

  sub_1D52DBAE4(&qword_1EC7EFC08);
  sub_1D52DBAE4(&qword_1EC7EFC10);
  OUTLINED_FUNCTION_24();

  return sub_1D5612A28();
}

uint64_t sub_1D52DB6E0(uint64_t a1, uint64_t a2)
{
  sub_1D52DBAE4(&qword_1EC7EFC10);

  return sub_1D5612A28();
}

unint64_t sub_1D52DB760()
{
  result = qword_1EC7F3958;
  if (!qword_1EC7F3958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3958);
  }

  return result;
}

unint64_t sub_1D52DB7B4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F3940, qword_1D564F0C0);
    v4();
    result = OUTLINED_FUNCTION_60_21();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D52DB818()
{
  result = qword_1EDD531F0;
  if (!qword_1EDD531F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE90, &qword_1D561DC80);
    sub_1D52DBAE4(&unk_1EDD57438);
    sub_1D52DBAE4(&unk_1EDD57440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD531F0);
  }

  return result;
}

unint64_t sub_1D52DB900()
{
  result = qword_1EC7F3970;
  if (!qword_1EC7F3970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAE90, &qword_1D561DC80);
    sub_1D52DBAE4(&unk_1EDD57438);
    sub_1D52DBAE4(&unk_1EDD57440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3970);
  }

  return result;
}

uint64_t sub_1D52DB9E8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D52DBA44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D52DBA9C()
{
  v0 = sub_1D5610088();
  __swift_allocate_value_buffer(v0, qword_1EC87C4F0);
  v1 = OUTLINED_FUNCTION_71();
  __swift_project_value_buffer(v1, v2);
  return sub_1D560FE28();
}

unint64_t sub_1D52DBAE4(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for StorePlatformMusicMovie.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEB)
  {
    if (a2 + 21 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 21) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 22;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v5 = v6 - 22;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StorePlatformMusicMovie.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D52DBC90()
{
  result = qword_1EC7F3978;
  if (!qword_1EC7F3978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3978);
  }

  return result;
}

unint64_t sub_1D52DBCE8()
{
  result = qword_1EC7F3980;
  if (!qword_1EC7F3980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3980);
  }

  return result;
}

unint64_t sub_1D52DBD40()
{
  result = qword_1EC7F3988;
  if (!qword_1EC7F3988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3988);
  }

  return result;
}

uint64_t MusicCatalogInternalSearchResponse.Context.Citation.init(id:source:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = sub_1D560C368();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  if (a2)
  {
    v19 = a2;
  }

  else
  {
    sub_1D5615B68();

    OUTLINED_FUNCTION_6_98();
    v32 = v21;
    v33 = v20;
    sub_1D560C358();
    v31 = a3;
    v22 = a5;
    v23 = sub_1D560C338();
    v25 = v24;
    (*(v14 + 8))(v18, v12);
    v26 = v23;
    a5 = v22;
    a3 = v31;
    MEMORY[0x1DA6EAC70](v26, v25);

    a1 = v32;
    v19 = v33;
  }

  *a6 = a1;
  a6[1] = v19;
  v27 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation(0);
  *(a6 + *(v27 + 28)) = a2 == 0;
  if (a4)
  {
    v28 = a3;
  }

  else
  {
    v28 = 0;
  }

  v29 = 0xE000000000000000;
  if (a4)
  {
    v29 = a4;
  }

  a6[2] = v28;
  a6[3] = v29;
  return sub_1D4F39A1C(a5, a6 + *(v27 + 24), &unk_1EC7E9CA8, &unk_1D561D1D0);
}

uint64_t type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation(uint64_t a1)
{
  result = qword_1EC7F3998;
  if (!qword_1EC7F3998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MusicCatalogInternalSearchResponse.Context.Citation.== infix(_:_:)(void *a1, void *a2)
{
  v4 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = *a1 == *a2 && a1[1] == a2[1];
  if (!v19 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_20;
  }

  v20 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v20 && (sub_1D5616168() & 1) == 0)
  {
    goto LABEL_20;
  }

  v32 = v6;
  v31 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation(0);
  v21 = *(v31 + 24);
  v22 = *(v15 + 48);
  sub_1D4F39AB0(a1 + v21, v18, &unk_1EC7E9CA8, &unk_1D561D1D0);
  sub_1D4F39AB0(a2 + v21, &v18[v22], &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_10(v18);
  if (v19)
  {
    OUTLINED_FUNCTION_10(&v18[v22]);
    if (v19)
    {
      sub_1D4E50004(v18, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_22:
      v24 = *(a1 + *(v31 + 28)) ^ *(a2 + *(v31 + 28)) ^ 1;
      return v24 & 1;
    }

    goto LABEL_19;
  }

  sub_1D4F39AB0(v18, v14, &unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_10(&v18[v22]);
  if (v23)
  {
    (*(v32 + 8))(v14, v4);
LABEL_19:
    sub_1D4E50004(v18, &qword_1EC7E9FB0, &qword_1D562C590);
    goto LABEL_20;
  }

  v25 = v32;
  (*(v32 + 32))(v10, &v18[v22], v4);
  OUTLINED_FUNCTION_3_130();
  sub_1D52DCEC4(v26, v27, MEMORY[0x1E6968FC8]);
  v28 = sub_1D5614D18();
  v29 = *(v25 + 8);
  v29(v10, v4);
  v29(v14, v4);
  sub_1D4E50004(v18, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v28)
  {
    goto LABEL_22;
  }

LABEL_20:
  v24 = 0;
  return v24 & 1;
}

uint64_t MusicCatalogInternalSearchResponse.Context.Citation.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  sub_1D5614E28();
  sub_1D5614E28();
  v14 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation(0);
  sub_1D4F39AB0(v2 + *(v14 + 24), v13, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v9, v13, v3);
    sub_1D56162F8();
    OUTLINED_FUNCTION_3_130();
    sub_1D52DCEC4(v15, v16, MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v5 + 8))(v9, v3);
  }

  return sub_1D56162F8();
}

uint64_t MusicCatalogInternalSearchResponse.Context.Citation.hashValue.getter()
{
  sub_1D56162D8();
  MusicCatalogInternalSearchResponse.Context.Citation.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D52DC5A4(uint64_t a1)
{
  sub_1D56162D8();
  MusicCatalogInternalSearchResponse.Context.Citation.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t sub_1D52DC5E0@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCatalogInternalSearchResponse.Context.Citation.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicCatalogInternalSearchResponse.Context.Citation.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v4 = sub_1D560C368();
  OUTLINED_FUNCTION_4();
  v52 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(0);
  OUTLINED_FUNCTION_14();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = (&v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v46 - v23;
  sub_1D4E628D4(a1, &v53);
  sub_1D524767C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = v9;
  v50 = v17;
  v46 = v4;
  v51 = a1;
  sub_1D52DC9D8(v24, v22);
  v26 = *v22;
  v27 = v22[1];
  v28 = v22[3];
  v47 = v22[2];
  sub_1D4F39AB0(v22 + *(v18 + 24), v13, &qword_1EC7EAFF8, &qword_1D561DDB8);
  v29 = sub_1D560FDA8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v29);
  v48 = v28;

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v13, &qword_1EC7EAFF8, &qword_1D561DDB8);
    v31 = sub_1D560C0A8();
    v32 = v50;
    __swift_storeEnumTagSinglePayload(v50, 1, 1, v31);
  }

  else
  {
    v32 = v50;
    sub_1D560FD98();
    (*(*(v29 - 8) + 8))(v13, v29);
  }

  v33 = v55;
  v34 = v49;
  v35 = v51;
  if (v27)
  {
    v36 = v27;
  }

  else
  {
    v53 = 0;
    v54 = 0xE000000000000000;
    sub_1D5615B68();

    OUTLINED_FUNCTION_6_98();
    v53 = v38;
    v54 = v37;
    sub_1D560C358();
    v39 = sub_1D560C338();
    v40 = v34;
    v42 = v41;
    (*(v52 + 8))(v40, v46);
    MEMORY[0x1DA6EAC70](v39, v42);
    v35 = v51;

    v26 = v53;
    v36 = v54;
  }

  *v33 = v26;
  v33[1] = v36;
  v43 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation(0);
  *(v33 + *(v43 + 28)) = v27 == 0;
  v44 = v47;
  if (!v48)
  {
    v44 = 0;
  }

  v45 = 0xE000000000000000;
  if (v48)
  {
    v45 = v48;
  }

  v33[2] = v44;
  v33[3] = v45;
  sub_1D4F39A1C(v32, v33 + *(v43 + 24), &unk_1EC7E9CA8, &unk_1D561D1D0);
  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1D52DCA3C(v22);
  return sub_1D52DCA3C(v24);
}

uint64_t sub_1D52DC9D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52DCA3C(uint64_t a1)
{
  v2 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicCatalogInternalSearchResponse.Context.Citation.encode(to:)(uint64_t a1)
{
  v24[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAFF8, &qword_1D561DDB8);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v10 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.Citation(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  v15 = type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation(0);
  v16 = 0;
  v17 = 0;
  if ((*(v1 + *(v15 + 28)) & 1) == 0)
  {
    v16 = *v1;
    v17 = v1[1];
  }

  v18 = v1[3];
  v24[0] = v1[2];
  sub_1D4F39AB0(v1 + *(v15 + 24), v5, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v19 = sub_1D560C0A8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v19);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v5, &unk_1EC7E9CA8, &unk_1D561D1D0);
    v21 = 1;
  }

  else
  {
    sub_1D560C038();
    (*(*(v19 - 8) + 8))(v5, v19);
    v21 = 0;
  }

  v22 = sub_1D560FDA8();
  __swift_storeEnumTagSinglePayload(v9, v21, 1, v22);
  *v14 = v16;
  v14[1] = v17;
  v14[2] = v24[0];
  v14[3] = v18;
  sub_1D4F39A1C(v9, v14 + *(v10 + 24), &qword_1EC7EAFF8, &qword_1D561DDB8);
  sub_1D524750C();
  return sub_1D52DCA3C(v14);
}

unint64_t MusicCatalogInternalSearchResponse.Context.Citation.description.getter()
{
  MEMORY[0x1DA6EAC70](*v0, v0[1]);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A6469, 0xE500000000000000);

  MEMORY[0x1DA6EAC70](v0[2], v0[3]);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x656372756F73202CLL, 0xEB0000000022203ALL);

  type metadata accessor for MusicCatalogInternalSearchResponse.Context.Citation(0);
  v1 = sub_1D5615878();
  MEMORY[0x1DA6EAC70](v1);

  MEMORY[0x1DA6EAC70](0x203A6C7275202CLL, 0xE700000000000000);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000034;
}

uint64_t sub_1D52DCEC4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D52DCF3C(uint64_t a1)
{
  sub_1D500A1D4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink(0) + 24);
  v4 = sub_1D560C0A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink(uint64_t a1)
{
  result = qword_1EC7F39B0;
  if (!qword_1EC7F39B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static MusicCatalogInternalSearchResponse.Context.SafetyLink.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink(0);

  return sub_1D560BFB8();
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  sub_1D5614E28();
  type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink(0);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_171();
  sub_1D52DDA3C(v1, v2, MEMORY[0x1E6968FC0]);
  return sub_1D5614CB8();
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5614E28();
  type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink(0);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_171();
  sub_1D52DDA3C(v0, v1, MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D52DD2C4(uint64_t a1)
{
  sub_1D56162D8();
  MusicCatalogInternalSearchResponse.Context.SafetyLink.hash(into:)(v2);
  return sub_1D5616328();
}

void MusicCatalogInternalSearchResponse.Context.SafetyLink.init(from:)(void *a1)
{
  v3 = sub_1D5611C78();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-1] - v8;
  v10 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v18[-1] - v14;
  sub_1D4E628D4(a1, v18);
  sub_1D524812C();
  if (v1)
  {
    v18[0] = v1;
    v16 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    if (swift_dynamicCast())
    {

      (*(v4 + 32))(v7, v9, v3);
      sub_1D5615C18();
      swift_allocError();
      sub_1D5611C68();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(a1);
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  else
  {
    sub_1D52DD598(v15, v13);
    sub_1D524D22C();
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D52DD5FC(v15);
  }
}

uint64_t sub_1D52DD598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52DD5FC(uint64_t a1)
{
  v2 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.encode(to:)()
{
  v1 = type metadata accessor for CatalogInternalSearchRawResponse.Results.QueryContext.SafetyLink(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *v0;
  v5 = v0[1];
  v8 = v0[2];
  v7 = v0[3];
  v9 = *(v2 + 32);
  type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink(0);

  sub_1D560C038();
  v10 = sub_1D560FDA8();
  __swift_storeEnumTagSinglePayload(v4 + v9, 0, 1, v10);
  *v4 = v6;
  v4[1] = v5;
  v4[2] = v8;
  v4[3] = v7;
  sub_1D5247D78();
  return sub_1D52DD5FC(v4);
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.description.getter()
{
  OUTLINED_FUNCTION_2_127();
  MEMORY[0x1DA6EAC70](*v0, v0[1]);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_131();

  type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink(0);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_171();
  sub_1D52DDA3C(v1, v2, MEMORY[0x1E6968FE0]);
  v3 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v3);

  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70](0x22203A6C7275202CLL, 0xE800000000000000);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v5;
}

uint64_t MusicCatalogInternalSearchResponse.Context.SafetyLink.debugDescription.getter()
{
  OUTLINED_FUNCTION_2_127();
  MEMORY[0x1DA6EAC70](*v0, v0[1]);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_131();

  MEMORY[0x1DA6EAC70](v0[2], v0[3]);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_3_131();

  type metadata accessor for MusicCatalogInternalSearchResponse.Context.SafetyLink(0);
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_171();
  sub_1D52DDA3C(v1, v2, MEMORY[0x1E6968FE0]);
  v3 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v3);

  OUTLINED_FUNCTION_1_5();
  MEMORY[0x1DA6EAC70](0x3A6C727520200A2CLL, 0xEA00000000002220);

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v5;
}

uint64_t sub_1D52DDA3C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D52DDAB4(uint64_t a1)
{
  result = sub_1D560C0A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t (*MusicCatalogSearchSuggestionsRequest.suggestionsLimit.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = sub_1D560E968();
  OUTLINED_FUNCTION_29_2(v2, v3);
  return sub_1D52DDBCC;
}

uint64_t (*MusicCatalogSearchSuggestionsRequest.topResultsLimit.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  v2 = sub_1D560E948();
  OUTLINED_FUNCTION_29_2(v2, v3);
  return sub_1D52DDC8C;
}

uint64_t MusicCatalogSearchSuggestionsRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1D560E928();
  sub_1D560CCE8();
  (*(v4 + 8))(v7, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v14 = type metadata accessor for MusicRequestConfiguration(0);
  v15 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v13, v15 ^ 1u, 1, v14);
  sub_1D4F73F78(v13, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v11, 1, v14) != 1)
    {
      sub_1D4FEF060(v11);
    }
  }

  else
  {
    sub_1D4E56C6C(v11, a1);
  }

  return sub_1D4FEF060(v13);
}

uint64_t sub_1D52DDEAC(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F5A490(a1, v4);
  return MusicCatalogSearchSuggestionsRequest.configuration.setter(v4);
}

uint64_t MusicCatalogSearchSuggestionsRequest.configuration.setter(uint64_t a1)
{
  v2 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - v9;
  type metadata accessor for MusicRequestConfiguration(0);
  sub_1D4E48388();
  sub_1D560E6C8();
  (*(v4 + 16))(v8, v10, v2);
  sub_1D560E938();
  sub_1D4F581B8(a1);
  return (*(v4 + 8))(v10, v2);
}

void (*MusicCatalogSearchSuggestionsRequest.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  v3[2] = *(v4 - 8);
  v3[3] = OUTLINED_FUNCTION_4_98();
  v3[4] = OUTLINED_FUNCTION_4_98();
  v3[5] = type metadata accessor for MusicRequestConfiguration(0);
  v3[6] = OUTLINED_FUNCTION_4_98();
  v5 = OUTLINED_FUNCTION_4_98();
  v3[7] = v5;
  MusicCatalogSearchSuggestionsRequest.configuration.getter(v5);
  return sub_1D52DE164;
}

void sub_1D52DE164(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v7 = *(*a1 + 16);
  v6 = *(*a1 + 24);
  v8 = *(*a1 + 8);
  if (a2)
  {
    sub_1D4F5A490(*(*a1 + 56), v3);
    sub_1D4E48388();
    sub_1D560E6C8();
    v9 = OUTLINED_FUNCTION_178();
    v10(v9);
    sub_1D560E938();
    (*(v7 + 8))(v5, v8);
    sub_1D4F581B8(v3);
  }

  else
  {
    sub_1D4E48388();
    sub_1D560E6C8();
    v11 = OUTLINED_FUNCTION_178();
    v12(v11);
    sub_1D560E938();
    (*(v7 + 8))(v5, v8);
  }

  sub_1D4F581B8(v4);
  free(v4);
  free(v3);
  free(v5);
  free(v6);

  free(v2);
}

uint64_t (*MusicCatalogSearchSuggestionsRequest.includeNaturalLanguageResults.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _s8MusicKit0A31CatalogSearchSuggestionsRequestV0aB8InternalE29includeNaturalLanguageResultsSbvg_0() & 1;
  return sub_1D52DE2F8;
}

uint64_t sub_1D52DE320(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF0F0](a1);
}

uint64_t (*sub_1D52DE3C4(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = _s8MusicKit0A31CatalogSearchSuggestionsRequestV0aB8InternalE29includeNaturalLanguageResultsSbvg_0() & 1;
  return sub_1D52DE2F8;
}

uint64_t sub_1D52DE414(uint64_t a1)
{
  v2 = sub_1D52DE4D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52DE450(uint64_t a1)
{
  v2 = sub_1D52DE4D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D52DE4D0()
{
  result = qword_1EC7F39C8;
  if (!qword_1EC7F39C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F39C8);
  }

  return result;
}

uint64_t sub_1D52DE5A4(uint64_t a1)
{
  v2 = sub_1D52DE660();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52DE5E0(uint64_t a1)
{
  v2 = sub_1D52DE660();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D52DE660()
{
  result = qword_1EC7F39D8;
  if (!qword_1EC7F39D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F39D8);
  }

  return result;
}

uint64_t sub_1D52DE6D4(uint64_t a1)
{
  v2 = sub_1D52DE790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52DE710(uint64_t a1)
{
  v2 = sub_1D52DE790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D52DE790()
{
  result = qword_1EC7F39E8;
  if (!qword_1EC7F39E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F39E8);
  }

  return result;
}

uint64_t sub_1D52DE804(uint64_t a1)
{
  v2 = sub_1D52DE9BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52DE840(uint64_t a1)
{
  v2 = sub_1D52DE9BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D52DE8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_4();
  v30 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  v23();
  sub_1D56163D8();
  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_81_22();
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D52DE9BC()
{
  result = qword_1EC7F39F8;
  if (!qword_1EC7F39F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F39F8);
  }

  return result;
}

void CloudSuggestedPivotEntry.id.getter()
{
  OUTLINED_FUNCTION_47();
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_0();
  v4 = sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v8 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v12 = OUTLINED_FUNCTION_30_8();
  type metadata accessor for CloudSuggestedPivotEntry(v12);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(v0, v16, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v6 + 32))(v1, v16, v4);
      sub_1D56104A8();
      (*(v6 + 8))(v1, v4);
    }

    else
    {
      v19 = OUTLINED_FUNCTION_135_2();
      v20(v19, v16, v23);
      sub_1D560FC88();
      v21 = OUTLINED_FUNCTION_159();
      v22(v21);
    }
  }

  else
  {
    (*(v10 + 32))(v2, v16, v8);
    sub_1D560F248();
    (*(v10 + 8))(v2, v8);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t type metadata accessor for CloudSuggestedPivotEntry(uint64_t a1)
{
  result = qword_1EC7F3A88;
  if (!qword_1EC7F3A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static CloudSuggestedPivotEntry.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v53 = v3;
  v54 = v4;
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v50 = v6;
  v51 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v47 = v7;
  OUTLINED_FUNCTION_70_0();
  sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v48 = v9;
  v49 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v10 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  v52 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  type metadata accessor for CloudSuggestedPivotEntry(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_159_1();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3A00, &unk_1D564F650);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v47 - v24;
  v26 = *(v23 + 56);
  sub_1D52E40FC(v53, &v47 - v24, type metadata accessor for CloudSuggestedPivotEntry);
  sub_1D52E40FC(v54, &v25[v26], type metadata accessor for CloudSuggestedPivotEntry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_0_172();
      sub_1D52E40FC(v25, v20, v28);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v29 = v48;
        OUTLINED_FUNCTION_81();
        v30 = &v25[v26];
        v31 = v49;
        v32(v1, v30, v49);
        sub_1D5610498();
        v33 = *(v29 + 8);
        v33(v1, v31);
        v33(v20, v31);
LABEL_13:
        sub_1D52DF24C(v25);
        goto LABEL_14;
      }

      (*(v48 + 8))(v20, v49);
    }

    else
    {
      OUTLINED_FUNCTION_0_172();
      v38 = OUTLINED_FUNCTION_71();
      sub_1D52E40FC(v38, v39, v40);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v42 = v50;
        v41 = v51;
        v43 = v47;
        (*(v50 + 32))(v47, &v25[v26], v51);
        sub_1D560FC78();
        v44 = *(v42 + 8);
        v44(v43, v41);
        v44(v16, v41);
        goto LABEL_13;
      }

      (*(v50 + 8))(v16, v51);
    }
  }

  else
  {
    v34 = v52;
    OUTLINED_FUNCTION_0_172();
    sub_1D52E40FC(v25, v0, v35);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v34 + 32))(v2, &v25[v26], v10);
      sub_1D560F238();
      v45 = *(v34 + 8);
      v45(v2, v10);
      v46 = OUTLINED_FUNCTION_91_0();
      (v45)(v46);
      goto LABEL_13;
    }

    v36 = OUTLINED_FUNCTION_91_0();
    v37(v36);
  }

  sub_1D4E50004(v25, &qword_1EC7F3A00, &unk_1D564F650);
LABEL_14:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D52DF24C(uint64_t a1)
{
  v2 = type metadata accessor for CloudSuggestedPivotEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void CloudSuggestedPivotEntry.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v4 = sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v33 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v32 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v13 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v17 = OUTLINED_FUNCTION_15_3();
  type metadata accessor for CloudSuggestedPivotEntry(v17);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_82();
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(v0, v3, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v32 + 32))(v1, v3, v10);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_40_43();
      sub_1D52E4BF8(v21, v22, MEMORY[0x1E6975D00]);
      sub_1D5614CB8();
      v23 = OUTLINED_FUNCTION_75_2();
      v24(v23);
    }

    else
    {
      OUTLINED_FUNCTION_81();
      v29(v9, v3, v4);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_38_35();
      sub_1D52E4BF8(v30, v31, MEMORY[0x1E6975B40]);
      sub_1D5614CB8();
      (*(v33 + 8))(v9, v4);
    }
  }

  else
  {
    (*(v15 + 32))(v2, v3, v13);
    MEMORY[0x1DA6EC0D0](0);
    OUTLINED_FUNCTION_39_39();
    sub_1D52E4BF8(v25, v26, MEMORY[0x1E6975670]);
    sub_1D5614CB8();
    v27 = OUTLINED_FUNCTION_11_89();
    v28(v27);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t CloudSuggestedPivotEntry.hashValue.getter()
{
  sub_1D56162D8();
  CloudSuggestedPivotEntry.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D52DF648(uint64_t a1)
{
  sub_1D56162D8();
  CloudSuggestedPivotEntry.hash(into:)();
  return sub_1D5616328();
}

void CloudSuggestedPivotEntry.decodeRawAttributes(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v28 = v3;
  sub_1D560FBB8();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  v27 = sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v26 = v6;
  OUTLINED_FUNCTION_70_0();
  sub_1D56100B8();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  v25 = sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v24 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  sub_1D560F1A8();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v11 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for CloudSuggestedPivotEntry(v13);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(v0, v2, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v19 = OUTLINED_FUNCTION_135_2();
    v20(v19, v2, v11);
    sub_1D4E628D4(v28, v29);
    sub_1D560F1B8();
    sub_1D5614C38();
LABEL_6:
    v22 = OUTLINED_FUNCTION_68_4();
    v23(v22);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_11_18();
    v21(v26, v2, v27);
    sub_1D4E628D4(v28, v29);
    sub_1D560FBC8();
    OUTLINED_FUNCTION_76_15();
    sub_1D5614C38();
    goto LABEL_6;
  }

  (*(v24 + 32))(v1, v2, v25);
  sub_1D4E628D4(v28, v29);
  sub_1D56100C8();
  OUTLINED_FUNCTION_76_15();
  sub_1D5614C38();
  v17 = OUTLINED_FUNCTION_15_2();
  v18(v17);
LABEL_7:
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void CloudSuggestedPivotEntry.decodeRawRelationships(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_64_22(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CD8, &qword_1D564AD60);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30_8();
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v62 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF48, &qword_1D5623AE0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_46_23();
  sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v61 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_82();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D18, &unk_1D565D110);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_41_6();
  v23 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for CloudSuggestedPivotEntry(v25);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  sub_1D5614A88();
  sub_1D5614BD8();
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(a10, v11, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v39 = OUTLINED_FUNCTION_135_2();
    v40(v39, v11, v23);
    sub_1D560F208();
    v41 = sub_1D560F1F8();
    OUTLINED_FUNCTION_35_3(v10, v42, v41);
    if (!v33)
    {

      sub_1D4E50004(v10, &qword_1EC7F2D18, &unk_1D565D110);
      OUTLINED_FUNCTION_66_21();
      v55 = sub_1D560F228();
      sub_1D526ED98(v55, v56);

      sub_1D5614C18();
      v57 = OUTLINED_FUNCTION_21_58();
      v58(v57);
      goto LABEL_13;
    }

    v43 = OUTLINED_FUNCTION_21_58();
    v44(v43);
    v36 = &qword_1EC7F2D18;
    v37 = &unk_1D565D110;
    v38 = v10;
LABEL_12:
    sub_1D4E50004(v38, v36, v37);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v45 = OUTLINED_FUNCTION_37_33();
    v46(v45, v11, v62);
    sub_1D560FC28();
    v47 = sub_1D560FBF8();
    OUTLINED_FUNCTION_35_3(v12, v48, v47);
    if (!v33)
    {

      sub_1D4E50004(v12, &qword_1EC7F2CD8, &qword_1D564AD60);
      OUTLINED_FUNCTION_66_21();
      sub_1D560FC68();
      sub_1D526F154();
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_54_29();
      v59 = OUTLINED_FUNCTION_17_66();
      v60(v59);
      goto LABEL_13;
    }

    v49 = OUTLINED_FUNCTION_17_66();
    v50(v49);
    v36 = &qword_1EC7F2CD8;
    v37 = &qword_1D564AD60;
    v38 = v12;
    goto LABEL_12;
  }

  v29 = OUTLINED_FUNCTION_37_33();
  v30(v29, v11, v61);
  sub_1D5610468();
  v31 = sub_1D5610458();
  OUTLINED_FUNCTION_35_3(v13, v32, v31);
  if (v33)
  {
    v34 = OUTLINED_FUNCTION_61_5();
    v35(v34);
    v36 = &qword_1EC7ECF48;
    v37 = &qword_1D5623AE0;
    v38 = v13;
    goto LABEL_12;
  }

  sub_1D4E50004(v13, &qword_1EC7ECF48, &qword_1D5623AE0);
  OUTLINED_FUNCTION_66_21();
  v51 = sub_1D5610488();
  sub_1D526F0C4(v51, v52);
  OUTLINED_FUNCTION_82();

  OUTLINED_FUNCTION_54_29();
  v53 = OUTLINED_FUNCTION_61_5();
  v54(v53);
LABEL_13:
  OUTLINED_FUNCTION_81_22();
  OUTLINED_FUNCTION_26();
}

void CloudSuggestedPivotEntry.decodeRawAssociations(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_64_22(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D20, &unk_1D564F660);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_30_8();
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v62 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF40, &unk_1D5623AC0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_46_23();
  sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v61 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_4_82();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D60, &unk_1D564ADF0);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_41_6();
  v23 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  v25 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for CloudSuggestedPivotEntry(v25);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_18_3();
  sub_1D5614A88();
  sub_1D5614BD8();
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(a10, v11, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v39 = OUTLINED_FUNCTION_135_2();
    v40(v39, v11, v23);
    sub_1D560F298();
    v41 = sub_1D560F1D8();
    OUTLINED_FUNCTION_35_3(v10, v42, v41);
    if (!v33)
    {

      sub_1D4E50004(v10, &qword_1EC7F2D60, &unk_1D564ADF0);
      OUTLINED_FUNCTION_66_21();
      v55 = sub_1D560F218();
      sub_1D526F244(v55, v56);

      sub_1D5614C18();
      v57 = OUTLINED_FUNCTION_21_58();
      v58(v57);
      goto LABEL_13;
    }

    v43 = OUTLINED_FUNCTION_21_58();
    v44(v43);
    v36 = &qword_1EC7F2D60;
    v37 = &unk_1D564ADF0;
    v38 = v10;
LABEL_12:
    sub_1D4E50004(v38, v36, v37);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v45 = OUTLINED_FUNCTION_37_33();
    v46(v45, v11, v62);
    sub_1D560FCD8();
    v47 = sub_1D560FBD8();
    OUTLINED_FUNCTION_35_3(v12, v48, v47);
    if (!v33)
    {

      sub_1D4E50004(v12, &qword_1EC7F2D20, &unk_1D564F660);
      OUTLINED_FUNCTION_66_21();
      sub_1D560FC58();
      sub_1D526F154();
      OUTLINED_FUNCTION_82();

      OUTLINED_FUNCTION_54_29();
      v59 = OUTLINED_FUNCTION_17_66();
      v60(v59);
      goto LABEL_13;
    }

    v49 = OUTLINED_FUNCTION_17_66();
    v50(v49);
    v36 = &qword_1EC7F2D20;
    v37 = &unk_1D564F660;
    v38 = v12;
    goto LABEL_12;
  }

  v29 = OUTLINED_FUNCTION_37_33();
  v30(v29, v11, v61);
  sub_1D5610518();
  v31 = sub_1D5610138();
  OUTLINED_FUNCTION_35_3(v13, v32, v31);
  if (v33)
  {
    v34 = OUTLINED_FUNCTION_61_5();
    v35(v34);
    v36 = &qword_1EC7ECF40;
    v37 = &unk_1D5623AC0;
    v38 = v13;
    goto LABEL_12;
  }

  sub_1D4E50004(v13, &qword_1EC7ECF40, &unk_1D5623AC0);
  OUTLINED_FUNCTION_66_21();
  v51 = sub_1D5610478();
  sub_1D526F33C(v51, v52);
  OUTLINED_FUNCTION_82();

  OUTLINED_FUNCTION_54_29();
  v53 = OUTLINED_FUNCTION_61_5();
  v54(v53);
LABEL_13:
  OUTLINED_FUNCTION_81_22();
  OUTLINED_FUNCTION_26();
}

void CloudSuggestedPivotEntry.decodeRawMetadata(from:skippingValuesFor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_64_22(v13);
  v66[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D68, &unk_1D565D150);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v66[3] = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_2();
  v69 = v17;
  OUTLINED_FUNCTION_70_0();
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v71 = v19;
  v72 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v70 = v20;
  v66[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D88, &qword_1D564AE20);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13();
  v66[1] = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_159_1();
  sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v67 = v25;
  v68 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DB0, &unk_1D565D170);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v66 - v31;
  v33 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  v66[5] = v34;
  MEMORY[0x1EEE9AC00](v35);
  v36 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for CloudSuggestedPivotEntry(v36);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_4_82();
  sub_1D5614A88();
  v73 = sub_1D5614BD8();
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(a10, v12, v38);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_81();
    v48(v10, v12, v33);
    sub_1D560F278();
    v49 = sub_1D560F2F8();
    OUTLINED_FUNCTION_35_3(v32, v50, v49);
    if (!v42)
    {

      sub_1D4E50004(v32, &qword_1EC7F2DB0, &unk_1D565D170);
      OUTLINED_FUNCTION_66_21();
      sub_1D560F278();
      OUTLINED_FUNCTION_76_15();
      sub_1D5614C38();
      v62 = OUTLINED_FUNCTION_69_27();
      v63(v62);
      goto LABEL_13;
    }

    v51 = OUTLINED_FUNCTION_69_27();
    v52(v51);
    v45 = &qword_1EC7F2DB0;
    v46 = &unk_1D565D170;
    v47 = v32;
LABEL_12:
    sub_1D4E50004(v47, v45, v46);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v53 = OUTLINED_FUNCTION_135_2();
    v54(v53, v12, v72);
    v55 = v69;
    sub_1D560FCB8();
    v56 = sub_1D560FD58();
    OUTLINED_FUNCTION_35_3(v55, v57, v56);
    if (!v42)
    {

      sub_1D4E50004(v55, &qword_1EC7F2D68, &unk_1D565D150);
      OUTLINED_FUNCTION_66_21();
      sub_1D560FCB8();
      OUTLINED_FUNCTION_76_15();
      sub_1D5614C38();
      v64 = OUTLINED_FUNCTION_45_31();
      v65(v64);
      goto LABEL_13;
    }

    v58 = OUTLINED_FUNCTION_45_31();
    v59(v58);
    v45 = &qword_1EC7F2D68;
    v46 = &unk_1D565D150;
    v47 = v55;
    goto LABEL_12;
  }

  (*(v67 + 32))(v28, v12, v68);
  sub_1D56104F8();
  v40 = sub_1D5610578();
  OUTLINED_FUNCTION_35_3(v11, v41, v40);
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_61_30();
    v44(v43);
    v45 = &qword_1EC7F2D88;
    v46 = &qword_1D564AE20;
    v47 = v11;
    goto LABEL_12;
  }

  sub_1D4E50004(v11, &qword_1EC7F2D88, &qword_1D564AE20);
  OUTLINED_FUNCTION_66_21();
  sub_1D56104F8();
  OUTLINED_FUNCTION_76_15();
  sub_1D5614C38();
  v60 = OUTLINED_FUNCTION_61_30();
  v61(v60);
LABEL_13:
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void CloudSuggestedPivotEntry.mergeAttributes(with:for:)()
{
  OUTLINED_FUNCTION_25_1();
  sub_1D560FBB8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v38 = v5;
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v37 = v6;
  OUTLINED_FUNCTION_70_0();
  sub_1D56100B8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_31_6();
  sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v35 = v9;
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_82();
  v10 = sub_1D560F1A8();
  OUTLINED_FUNCTION_4();
  v34 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_3();
  v13 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for CloudSuggestedPivotEntry(v17);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(v0, v21, v22);
  OUTLINED_FUNCTION_75_2();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v24 = OUTLINED_FUNCTION_37_33();
      v25(v24, v21, v36);
      sub_1D56100C8();
      sub_1D52E4BF8(&qword_1EC7F2E00, MEMORY[0x1E6975C00], MEMORY[0x1E6975C08]);
      sub_1D5614C48();
      v26 = OUTLINED_FUNCTION_71();
      v27(v26);
      (*(v35 + 8))(v2, v36);
    }

    else
    {
      v30 = OUTLINED_FUNCTION_68_4();
      v31(v30);
      sub_1D560FBC8();
      sub_1D52E4BF8(&qword_1EC7F2DD8, MEMORY[0x1E6975A98], MEMORY[0x1E6975AA0]);
      sub_1D5614C48();
      v32 = OUTLINED_FUNCTION_82_20();
      v33(v32);
      (*(v38 + 8))(v37, v39);
    }
  }

  else
  {
    v28 = OUTLINED_FUNCTION_135_2();
    v29(v28, v21, v13);
    sub_1D560F1B8();
    sub_1D52E4BF8(&qword_1EC7F2E30, MEMORY[0x1E69755F8], MEMORY[0x1E6975600]);
    sub_1D5614C48();
    (*(v34 + 8))(v1, v10);
    (*(v15 + 8))(v0, v13);
  }

  OUTLINED_FUNCTION_81_22();
  OUTLINED_FUNCTION_26();
}

void CloudSuggestedPivotEntry.mergeRelationships(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_47_36(v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2CD8, &qword_1D564AD60);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16_74(v18, v77);
  v79 = sub_1D560FBF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF48, &qword_1D5623AE0);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_41_6();
  v78 = sub_1D5610458();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  sub_1D5610588();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D18, &unk_1D565D110);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_31_6();
  v27 = sub_1D560F1F8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_82();
  v29 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for CloudSuggestedPivotEntry(v31);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  if (*(v12 + 16))
  {
  }

  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(a10, v13, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = OUTLINED_FUNCTION_35_46();
    v44(v43);
    sub_1D560F208();
    v45 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_57(v45, v46, v27);
    if (!v37)
    {

      v61 = OUTLINED_FUNCTION_23_56();
      v62(v61);
      sub_1D52E4BF8(&qword_1EC7F2E90, MEMORY[0x1E6975638], MEMORY[0x1E6975640]);
      OUTLINED_FUNCTION_26_57();
      sub_1D5614C48();
      v63 = OUTLINED_FUNCTION_28_51();
      v64(v63);
      v65 = OUTLINED_FUNCTION_12_73();
      v66(v65);
      goto LABEL_16;
    }

    v47 = OUTLINED_FUNCTION_12_73();
    v48(v47);
    v40 = &qword_1EC7F2D18;
    v41 = &unk_1D565D110;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v49 = OUTLINED_FUNCTION_18_70();
    v50(v49);
    OUTLINED_FUNCTION_63_18();
    sub_1D560FC28();
    v51 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_57(v51, v52, v79);
    if (!v37)
    {

      v67 = OUTLINED_FUNCTION_22_56();
      v68(v67);
      v69 = sub_1D52E4BF8(&qword_1EC7F2E38, MEMORY[0x1E6975AB8], MEMORY[0x1E6975AC0]);
      OUTLINED_FUNCTION_45_37(v29, v70, v71, v72, v69);
      v73 = OUTLINED_FUNCTION_27_52();
      v74(v73);
      v75 = OUTLINED_FUNCTION_55_2();
      v76(v75);
      goto LABEL_16;
    }

    v53 = OUTLINED_FUNCTION_55_2();
    v54(v53);
    v40 = &qword_1EC7F2CD8;
    v41 = &qword_1D564AD60;
LABEL_14:
    v42 = v10;
    goto LABEL_15;
  }

  v35 = OUTLINED_FUNCTION_19_64();
  v36(v35);
  sub_1D5610468();
  OUTLINED_FUNCTION_57(v11, 1, v78);
  if (v37)
  {
    v38 = OUTLINED_FUNCTION_11_89();
    v39(v38);
    v40 = &qword_1EC7ECF48;
    v41 = &qword_1D5623AE0;
    v42 = v11;
LABEL_15:
    sub_1D4E50004(v42, v40, v41);
    goto LABEL_16;
  }

  v55 = OUTLINED_FUNCTION_24_53();
  v56(v55);
  sub_1D52E4BF8(&qword_1EC7F2E60, MEMORY[0x1E6975CA0], MEMORY[0x1E6975CA8]);
  OUTLINED_FUNCTION_26_57();
  sub_1D5614C48();
  v57 = OUTLINED_FUNCTION_20_64();
  v58(v57);
  v59 = OUTLINED_FUNCTION_11_89();
  v60(v59);
LABEL_16:
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void CloudSuggestedPivotEntry.mergeAssociations(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_47_36(v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D20, &unk_1D564F660);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16_74(v18, v77);
  v79 = sub_1D560FBD8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF40, &unk_1D5623AC0);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_41_6();
  v78 = sub_1D5610138();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  sub_1D5610588();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D60, &unk_1D564ADF0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_31_6();
  v27 = sub_1D560F1D8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_82();
  v29 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for CloudSuggestedPivotEntry(v31);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  if (*(v12 + 16))
  {
  }

  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(a10, v13, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = OUTLINED_FUNCTION_35_46();
    v44(v43);
    sub_1D560F298();
    v45 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_57(v45, v46, v27);
    if (!v37)
    {

      v61 = OUTLINED_FUNCTION_23_56();
      v62(v61);
      sub_1D52E4BF8(&qword_1EC7F2EF0, MEMORY[0x1E6975618], MEMORY[0x1E6975620]);
      OUTLINED_FUNCTION_26_57();
      sub_1D5614C48();
      v63 = OUTLINED_FUNCTION_28_51();
      v64(v63);
      v65 = OUTLINED_FUNCTION_12_73();
      v66(v65);
      goto LABEL_16;
    }

    v47 = OUTLINED_FUNCTION_12_73();
    v48(v47);
    v40 = &qword_1EC7F2D60;
    v41 = &unk_1D564ADF0;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v49 = OUTLINED_FUNCTION_18_70();
    v50(v49);
    OUTLINED_FUNCTION_63_18();
    sub_1D560FCD8();
    v51 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_57(v51, v52, v79);
    if (!v37)
    {

      v67 = OUTLINED_FUNCTION_22_56();
      v68(v67);
      v69 = sub_1D52E4BF8(&qword_1EC7F2E98, MEMORY[0x1E6975AA8], MEMORY[0x1E6975AB0]);
      OUTLINED_FUNCTION_45_37(v29, v70, v71, v72, v69);
      v73 = OUTLINED_FUNCTION_27_52();
      v74(v73);
      v75 = OUTLINED_FUNCTION_55_2();
      v76(v75);
      goto LABEL_16;
    }

    v53 = OUTLINED_FUNCTION_55_2();
    v54(v53);
    v40 = &qword_1EC7F2D20;
    v41 = &unk_1D564F660;
LABEL_14:
    v42 = v10;
    goto LABEL_15;
  }

  v35 = OUTLINED_FUNCTION_19_64();
  v36(v35);
  sub_1D5610518();
  OUTLINED_FUNCTION_57(v11, 1, v78);
  if (v37)
  {
    v38 = OUTLINED_FUNCTION_11_89();
    v39(v38);
    v40 = &qword_1EC7ECF40;
    v41 = &unk_1D5623AC0;
    v42 = v11;
LABEL_15:
    sub_1D4E50004(v42, v40, v41);
    goto LABEL_16;
  }

  v55 = OUTLINED_FUNCTION_24_53();
  v56(v55);
  sub_1D52E4BF8(&qword_1EC7F2EC0, MEMORY[0x1E6975C20], MEMORY[0x1E6975C28]);
  OUTLINED_FUNCTION_26_57();
  sub_1D5614C48();
  v57 = OUTLINED_FUNCTION_20_64();
  v58(v57);
  v59 = OUTLINED_FUNCTION_11_89();
  v60(v59);
LABEL_16:
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void CloudSuggestedPivotEntry.mergeMetadata(with:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_25_1();
  OUTLINED_FUNCTION_47_36(v14, v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D68, &unk_1D565D150);
  OUTLINED_FUNCTION_22(v16);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_16_74(v18, v77);
  v79 = sub_1D560FD58();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2D88, &qword_1D564AE20);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_41_6();
  v78 = sub_1D5610578();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_70_0();
  sub_1D5610588();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5_0();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2DB0, &unk_1D565D170);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_31_6();
  v27 = sub_1D560F2F8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_4_82();
  v29 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v30);
  v31 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for CloudSuggestedPivotEntry(v31);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  if (*(v12 + 16))
  {
  }

  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(a10, v13, v33);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v43 = OUTLINED_FUNCTION_35_46();
    v44(v43);
    sub_1D560F278();
    v45 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_57(v45, v46, v27);
    if (!v37)
    {

      v61 = OUTLINED_FUNCTION_23_56();
      v62(v61);
      sub_1D52E4BF8(&qword_1EC7F2F50, MEMORY[0x1E6975648], MEMORY[0x1E6975650]);
      OUTLINED_FUNCTION_26_57();
      sub_1D5614C48();
      v63 = OUTLINED_FUNCTION_28_51();
      v64(v63);
      v65 = OUTLINED_FUNCTION_12_73();
      v66(v65);
      goto LABEL_16;
    }

    v47 = OUTLINED_FUNCTION_12_73();
    v48(v47);
    v40 = &qword_1EC7F2DB0;
    v41 = &unk_1D565D170;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v49 = OUTLINED_FUNCTION_18_70();
    v50(v49);
    OUTLINED_FUNCTION_63_18();
    sub_1D560FCB8();
    v51 = OUTLINED_FUNCTION_45_1();
    OUTLINED_FUNCTION_57(v51, v52, v79);
    if (!v37)
    {

      v67 = OUTLINED_FUNCTION_22_56();
      v68(v67);
      v69 = sub_1D52E4BF8(&qword_1EC7F2EF8, MEMORY[0x1E6975B18], MEMORY[0x1E6975B20]);
      OUTLINED_FUNCTION_45_37(v29, v70, v71, v72, v69);
      v73 = OUTLINED_FUNCTION_27_52();
      v74(v73);
      v75 = OUTLINED_FUNCTION_55_2();
      v76(v75);
      goto LABEL_16;
    }

    v53 = OUTLINED_FUNCTION_55_2();
    v54(v53);
    v40 = &qword_1EC7F2D68;
    v41 = &unk_1D565D150;
LABEL_14:
    v42 = v10;
    goto LABEL_15;
  }

  v35 = OUTLINED_FUNCTION_19_64();
  v36(v35);
  sub_1D56104F8();
  OUTLINED_FUNCTION_57(v11, 1, v78);
  if (v37)
  {
    v38 = OUTLINED_FUNCTION_11_89();
    v39(v38);
    v40 = &qword_1EC7F2D88;
    v41 = &qword_1D564AE20;
    v42 = v11;
LABEL_15:
    sub_1D4E50004(v42, v40, v41);
    goto LABEL_16;
  }

  v55 = OUTLINED_FUNCTION_24_53();
  v56(v55);
  sub_1D52E4BF8(&qword_1EC7F2F20, MEMORY[0x1E6975CD8], MEMORY[0x1E6975CE0]);
  OUTLINED_FUNCTION_26_57();
  sub_1D5614C48();
  v57 = OUTLINED_FUNCTION_20_64();
  v58(v57);
  v59 = OUTLINED_FUNCTION_11_89();
  v60(v59);
LABEL_16:
  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

uint64_t sub_1D52E2490(uint64_t a1)
{
  v2 = sub_1D52E2E2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52E24CC(uint64_t a1)
{
  v2 = sub_1D52E2E2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudSuggestedPivotEntry.init(from:)()
{
  OUTLINED_FUNCTION_25_1();
  v4 = v3;
  v119 = v5;
  sub_1D5615C08();
  OUTLINED_FUNCTION_4();
  v111 = v7;
  v112 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v110 = v8;
  OUTLINED_FUNCTION_70_0();
  v108 = sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v107 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5_0();
  v109 = v11;
  OUTLINED_FUNCTION_70_0();
  sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v113 = v13;
  v114 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  v115 = v14;
  OUTLINED_FUNCTION_70_0();
  sub_1D560F308();
  OUTLINED_FUNCTION_4();
  v116 = v16;
  v117 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  v118 = v17;
  OUTLINED_FUNCTION_70_0();
  v123 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v121 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v120 = v20;
  OUTLINED_FUNCTION_23();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v102 - v23;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13_2();
  v124 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3A08, &unk_1D564F670);
  OUTLINED_FUNCTION_4();
  v122 = v27;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_15_3();
  v30 = type metadata accessor for CloudSuggestedPivotEntry(v29);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  v32 = OUTLINED_FUNCTION_91_0();
  __swift_project_boxed_opaque_existential_1(v32, v33);
  sub_1D52E2E2C();
  sub_1D5616398();
  v34 = v4;
  if (v0)
  {
    goto LABEL_9;
  }

  v35 = v24;
  v106 = v2;
  v126 = v30;
  v36 = v121;
  v37 = v34;
  OUTLINED_FUNCTION_9_89();
  sub_1D52E4BF8(v38, v39, MEMORY[0x1E6975BF0]);
  v40 = v123;
  v41 = v124;
  sub_1D5615FD8();
  v42 = v41;
  v103 = 0;
  v105 = v1;
  v43 = v36;
  (*(v36 + 2))(v35, v42, v40);
  sub_1D560F1E8();
  v44 = sub_1D5615298();

  v104 = v26;
  if (v44)
  {
    v45 = *(v36 + 1);
LABEL_7:
    v52 = v103;
    v45(v35, v40);
    v53 = v45;
    sub_1D4E628D4(v37, v125);
    v54 = v118;
    sub_1D560F258();
    v55 = v119;
    if (v52)
    {
      v56 = OUTLINED_FUNCTION_55_27();
      v53(v56);
      v57 = OUTLINED_FUNCTION_7_99();
      v58(v57);
      v34 = v37;
      goto LABEL_9;
    }

    v59 = OUTLINED_FUNCTION_55_27();
    v53(v59);
    v60 = OUTLINED_FUNCTION_7_99();
    v61(v60);
    v62 = OUTLINED_FUNCTION_48_33();
    v63(v62, v54);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    sub_1D52E2E80(v40, v55);
    __swift_destroy_boxed_opaque_existential_1(v37);
    goto LABEL_10;
  }

  sub_1D560F1C8();
  OUTLINED_FUNCTION_9_89();
  sub_1D52E4BF8(v46, v47, MEMORY[0x1E6975BE0]);
  OUTLINED_FUNCTION_72_23();
  *(v49 - 256) = v48;
  v50 = sub_1D5614D18();
  v45 = *(v43 + 1);
  v51 = OUTLINED_FUNCTION_15_2();
  (v45)(v51);
  if (v50)
  {
    goto LABEL_7;
  }

  sub_1D5610278();
  v64 = sub_1D5615298();

  if ((v64 & 1) == 0)
  {
    sub_1D56100D8();
    OUTLINED_FUNCTION_72_23();
    v65 = sub_1D5614D18();
    v66 = OUTLINED_FUNCTION_15_2();
    (v45)(v66);
    if ((v65 & 1) == 0)
    {
      sub_1D560FBE8();
      v78 = sub_1D5615298();

      v45(v35, v40);
      v79 = v45;
      if ((v78 & 1) == 0)
      {
        v86 = v37;
        __swift_project_boxed_opaque_existential_1(v37, v37[3]);
        OUTLINED_FUNCTION_82();
        sub_1D5616348();
        v125[0] = 0;
        v125[1] = 0xE000000000000000;
        sub_1D5615B68();
        MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D5689350);
        OUTLINED_FUNCTION_9_89();
        sub_1D52E4BF8(v87, v88, MEMORY[0x1E6975BF8]);
        v89 = sub_1D56160F8();
        MEMORY[0x1DA6EAC70](v89);

        MEMORY[0x1DA6EAC70](0xD00000000000002BLL, 0x80000001D568A4E0);
        v90 = v110;
        sub_1D5615BF8();
        v91 = sub_1D5615C18();
        swift_allocError();
        v93 = v92;
        v94 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640) + 48);
        *v93 = v126;
        (*(v111 + 16))(v93 + v94, v90, v112);
        (*(*(v91 - 8) + 104))(v93, *MEMORY[0x1E69E6AF8], v91);
        swift_willThrow();
        v95 = OUTLINED_FUNCTION_17_66();
        v96(v95);
        v79(v124, v123);
        v97 = OUTLINED_FUNCTION_7_99();
        v98(v97);
        v34 = v86;
        goto LABEL_9;
      }

      v121 = v45;
      sub_1D4E628D4(v37, v125);
      v80 = v109;
      v81 = v103;
      sub_1D560FC98();
      v82 = v122;
      v83 = v105;
      v84 = v104;
      if (v81)
      {
        v85 = OUTLINED_FUNCTION_55_27();
        (v121)(v85);
        v72 = *(v82 + 8);
        v70 = v83;
        v71 = v84;
        goto LABEL_3;
      }

      v99 = OUTLINED_FUNCTION_55_27();
      (v121)(v99);
      (*(v82 + 8))(v83, v84);
      v100 = OUTLINED_FUNCTION_48_33();
      v101(v100, v80, v108);
LABEL_17:
      v55 = v119;
      goto LABEL_18;
    }
  }

  v45(v35, v40);
  sub_1D4E628D4(v37, v125);
  v67 = v115;
  v68 = v103;
  sub_1D56104D8();
  if (!v68)
  {
    v73 = OUTLINED_FUNCTION_55_27();
    (v45)(v73);
    v74 = OUTLINED_FUNCTION_7_99();
    v75(v74);
    v76 = OUTLINED_FUNCTION_48_33();
    v77(v76, v67);
    goto LABEL_17;
  }

  v69 = OUTLINED_FUNCTION_55_27();
  (v45)(v69);
  v70 = OUTLINED_FUNCTION_7_99();
LABEL_3:
  v72(v70, v71);
  v34 = v37;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v34);
LABEL_10:
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D52E2E2C()
{
  result = qword_1EC7F3A10;
  if (!qword_1EC7F3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A10);
  }

  return result;
}

uint64_t sub_1D52E2E80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudSuggestedPivotEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void CloudSuggestedPivotEntry.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v23 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_83_5();
  v5 = sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_30_8();
  v9 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_46_23();
  type metadata accessor for CloudSuggestedPivotEntry(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_0_172();
  sub_1D52E40FC(v0, v16, v17);
  OUTLINED_FUNCTION_71();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_81();
      v19(v2, v16, v5);
      sub_1D5610528();
      (*(v7 + 8))(v2, v5);
    }

    else
    {
      OUTLINED_FUNCTION_11_18();
      v20(v1, v16, v23);
      sub_1D560FCE8();
      v21 = OUTLINED_FUNCTION_75_2();
      v22(v21);
    }
  }

  else
  {
    (*(v11 + 32))(v3, v16, v9);
    sub_1D560F2A8();
    (*(v11 + 8))(v3, v9);
  }

  OUTLINED_FUNCTION_248();
  OUTLINED_FUNCTION_26();
}

void MusicSuggestedPivotEntry.init<A>(_:configuration:sharedRelatedItemStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v130 = v23;
  v131 = v24;
  v26 = v25;
  v132 = v27;
  v29 = v28;
  v134 = v30;
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v117 = v32;
  v118 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  v116 = v33;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  OUTLINED_FUNCTION_4();
  v114 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  v110 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_13_2();
  v113 = v38;
  OUTLINED_FUNCTION_70_0();
  v125 = sub_1D560FD68();
  OUTLINED_FUNCTION_4();
  v123 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_5_0();
  v124 = v41;
  OUTLINED_FUNCTION_70_0();
  v112 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v111 = v42;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_5_0();
  v122 = v44;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  OUTLINED_FUNCTION_4();
  v108 = v45;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13();
  v105 = v47;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_2();
  v107 = v49;
  OUTLINED_FUNCTION_70_0();
  v121 = sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v106 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5_0();
  v120 = v52;
  v133 = v26;
  v54 = *(v26 - 8);
  v53 = v26 - 8;
  v55 = v54;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_5_0();
  v127 = v57;
  OUTLINED_FUNCTION_70_0();
  v104 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_5_0();
  v119 = v59;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  OUTLINED_FUNCTION_4();
  v102 = v60;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13();
  v101 = v62;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_13_2();
  v65 = v64;
  OUTLINED_FUNCTION_70_0();
  v66 = sub_1D560F308();
  OUTLINED_FUNCTION_4();
  v68 = v67;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_5();
  v70 = OUTLINED_FUNCTION_31_6();
  type metadata accessor for CloudSuggestedPivotEntry(v70);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_59_0();
  v74 = v72 - v73;
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_159_1();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF878, &qword_1D5633210);
  v135 = v29;
  sub_1D5610648();
  OUTLINED_FUNCTION_0_172();
  v128 = v20;
  v77 = OUTLINED_FUNCTION_91_0();
  sub_1D52E40FC(v77, v78, v79);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v81 = (v54 + 16);
  v126 = (v54 + 8);
  v129 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload)
  {
    v119 = v76 - 8;
    if (EnumCaseMultiPayload != 1)
    {
      (*(v123 + 32))(v124, v74, v125);
      OUTLINED_FUNCTION_38_35();
      sub_1D52E4BF8(v97, v98, MEMORY[0x1E6975B28]);
      OUTLINED_FUNCTION_56_27();
      (*(v114 + 16))(v110, v68, v115);
      (*v81)(v127, v132, v133);
      sub_1D5614418();
      v99 = OUTLINED_FUNCTION_159();
      v100(v99);
      (*(*(v76 - 8) + 8))(v55, v76);
      (*(v114 + 8))(v68, v115);
      (*(v123 + 8))(v124, v125);
      sub_1D52DF24C(v128);
      v88 = OUTLINED_FUNCTION_67_28();
      v90 = v116;
      goto LABEL_7;
    }

    (*(v106 + 32))(v120, v74, v121);
    OUTLINED_FUNCTION_40_43();
    sub_1D52E4BF8(v82, v83, MEMORY[0x1E6975CE8]);
    OUTLINED_FUNCTION_56_27();
    (*(v108 + 16))(v105, v68, v109);
    v84 = OUTLINED_FUNCTION_83_18();
    v85(v84, v132, v133);
    sub_1D56148A8();
    v86 = OUTLINED_FUNCTION_159();
    v87(v86);
    (*(*(v76 - 8) + 8))(v55, v76);
    (*(v108 + 8))(v68, v109);
    (*(v106 + 8))(v120, v121);
    sub_1D52DF24C(v128);
    v88 = OUTLINED_FUNCTION_67_28();
    v90 = v122;
    v91 = &a16;
  }

  else
  {
    (*(v68 + 32))(v53, v74, v66);
    OUTLINED_FUNCTION_39_39();
    sub_1D52E4BF8(v92, v93, MEMORY[0x1E6975658]);
    sub_1D5610598();
    (*(v102 + 16))(v101, v65, v103);
    v94 = OUTLINED_FUNCTION_83_18();
    v95(v94, v132, v133);
    sub_1D5613B08();
    (*v126)(v132, v133);
    (*(*(v76 - 8) + 8))(v135, v76);
    (*(v102 + 8))(v65, v103);
    (*(v68 + 8))(v53, v66);
    sub_1D52DF24C(v128);
    v88 = OUTLINED_FUNCTION_67_28();
    v90 = v119;
    v91 = &v136;
  }

  v96 = *(v91 - 32);
LABEL_7:
  v89(v88, v90, v96);
  type metadata accessor for MusicSuggestedPivotContainer(0);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_46();
}

void MusicSuggestedPivotEntry.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v57 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  OUTLINED_FUNCTION_4();
  v55 = v5;
  v56 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_74(v7, v46);
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v52 = v9;
  v53 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v51 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  OUTLINED_FUNCTION_4();
  v49 = v12;
  v50 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_30_8();
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v47 = v15;
  v48 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_82();
  type metadata accessor for CloudSuggestedPivotEntry(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_83_5();
  v21 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v25 = OUTLINED_FUNCTION_15_3();
  type metadata accessor for MusicSuggestedPivotContainer(v25);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v29 = v28 - v27;
  sub_1D52E40FC(v57, v28 - v27, type metadata accessor for MusicSuggestedPivotContainer);
  OUTLINED_FUNCTION_159();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = v48;
      v32 = OUTLINED_FUNCTION_37_33();
      v33(v32, v29, v48);
      sub_1D5614638();
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_93();
      sub_1D52E4BF8(v34, v35, &protocol conformance descriptor for CloudSuggestedPivotEntry);
      OUTLINED_FUNCTION_70_20();
      sub_1D5610598();
      sub_1D52DF24C(v19);
      (*(v49 + 8))(v1, v50);
      v36 = *(v47 + 8);
      v37 = v3;
    }

    else
    {
      OUTLINED_FUNCTION_11_18();
      v31 = v53;
      v43(v51, v29, v53);
      sub_1D5614328();
      sub_1D5610648();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_8_93();
      sub_1D52E4BF8(v44, v45, &protocol conformance descriptor for CloudSuggestedPivotEntry);
      OUTLINED_FUNCTION_70_20();
      sub_1D5610598();
      sub_1D52DF24C(v19);
      (*(v55 + 8))(v54, v56);
      v36 = *(v52 + 8);
      v37 = v51;
    }

    v36(v37, v31);
  }

  else
  {
    OUTLINED_FUNCTION_11_18();
    v38(v2, v29, v21);
    sub_1D56139D8();
    sub_1D5610648();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_93();
    sub_1D52E4BF8(v39, v40, &protocol conformance descriptor for CloudSuggestedPivotEntry);
    OUTLINED_FUNCTION_70_20();
    sub_1D5610598();
    sub_1D52DF24C(v19);
    v41 = OUTLINED_FUNCTION_75_2();
    v42(v41);
    (*(v23 + 8))(v2, v21);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D52E40FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

unint64_t sub_1D52E415C()
{
  result = qword_1EC7F3A20;
  if (!qword_1EC7F3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A20);
  }

  return result;
}

unint64_t sub_1D52E41B4()
{
  result = qword_1EC7F3A28;
  if (!qword_1EC7F3A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A28);
  }

  return result;
}

unint64_t sub_1D52E420C()
{
  result = qword_1EC7F3A30;
  if (!qword_1EC7F3A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A30);
  }

  return result;
}

unint64_t sub_1D52E4264()
{
  result = qword_1EC7F3A38;
  if (!qword_1EC7F3A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A38);
  }

  return result;
}

unint64_t sub_1D52E42BC()
{
  result = qword_1EC7F3A40;
  if (!qword_1EC7F3A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A40);
  }

  return result;
}

unint64_t sub_1D52E4314()
{
  result = qword_1EC7F3A48;
  if (!qword_1EC7F3A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A48);
  }

  return result;
}

unint64_t sub_1D52E436C()
{
  result = qword_1EC7F3A50;
  if (!qword_1EC7F3A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A50);
  }

  return result;
}

unint64_t sub_1D52E43C4()
{
  result = qword_1EC7F3A58;
  if (!qword_1EC7F3A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A58);
  }

  return result;
}

unint64_t sub_1D52E441C()
{
  result = qword_1EC7F3A60;
  if (!qword_1EC7F3A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A60);
  }

  return result;
}

unint64_t sub_1D52E4474()
{
  result = qword_1EC7F3A68;
  if (!qword_1EC7F3A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A68);
  }

  return result;
}

unint64_t sub_1D52E44CC()
{
  result = qword_1EC7F3A70;
  if (!qword_1EC7F3A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A70);
  }

  return result;
}

unint64_t sub_1D52E4524()
{
  result = qword_1EC7F3A78;
  if (!qword_1EC7F3A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A78);
  }

  return result;
}

uint64_t sub_1D52E4610(uint64_t a1)
{
  sub_1D52E4BF8(&qword_1EC7F1920, type metadata accessor for MusicSuggestedPivotEntry, &protocol conformance descriptor for MusicSuggestedPivotEntry);

  return sub_1D5612668();
}

uint64_t sub_1D52E467C(uint64_t a1)
{
  result = sub_1D560F308();
  if (v2 <= 0x3F)
  {
    result = sub_1D5610588();
    if (v3 <= 0x3F)
    {
      result = sub_1D560FD68();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

_BYTE *sub_1D52E4744(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D52E4834()
{
  result = qword_1EC7F3A98;
  if (!qword_1EC7F3A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3A98);
  }

  return result;
}

unint64_t sub_1D52E488C()
{
  result = qword_1EC7F3AA0;
  if (!qword_1EC7F3AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AA0);
  }

  return result;
}

unint64_t sub_1D52E48E4()
{
  result = qword_1EC7F3AA8;
  if (!qword_1EC7F3AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AA8);
  }

  return result;
}

unint64_t sub_1D52E493C()
{
  result = qword_1EC7F3AB0;
  if (!qword_1EC7F3AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AB0);
  }

  return result;
}

unint64_t sub_1D52E4994()
{
  result = qword_1EC7F3AB8;
  if (!qword_1EC7F3AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AB8);
  }

  return result;
}

unint64_t sub_1D52E49EC()
{
  result = qword_1EC7F3AC0;
  if (!qword_1EC7F3AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AC0);
  }

  return result;
}

unint64_t sub_1D52E4A44()
{
  result = qword_1EC7F3AC8;
  if (!qword_1EC7F3AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AC8);
  }

  return result;
}

unint64_t sub_1D52E4A9C()
{
  result = qword_1EC7F3AD0;
  if (!qword_1EC7F3AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AD0);
  }

  return result;
}

unint64_t sub_1D52E4AF4()
{
  result = qword_1EC7F3AD8;
  if (!qword_1EC7F3AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AD8);
  }

  return result;
}

unint64_t sub_1D52E4B4C()
{
  result = qword_1EC7F3AE0;
  if (!qword_1EC7F3AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AE0);
  }

  return result;
}

unint64_t sub_1D52E4BA4()
{
  result = qword_1EC7F3AE8;
  if (!qword_1EC7F3AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AE8);
  }

  return result;
}

uint64_t sub_1D52E4BF8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_47_36(uint64_t a1, uint64_t a2)
{
  *(v4 - 88) = v3;
  *(v4 - 72) = v2;
  *(v4 - 112) = a2;
}

uint64_t OUTLINED_FUNCTION_66_21()
{
  v2 = *(v0 - 144);

  return sub_1D4E628D4(v2, v0 - 120);
}

double NSUserDefaults.subscript.getter@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  (*(a2 + 8))(a1, a2);
  v5 = sub_1D5614D38();

  v6 = [v3 objectForKey_];

  if (v6)
  {
    sub_1D56159A8();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D52E4F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11[-v6];
  (*(v8 + 16))(&v11[-v6], v9, v5);
  sub_1D4F508D8(a1, v11);
  return NSUserDefaults.subscript.setter(v11, v7, v5);
}

uint64_t NSUserDefaults.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D4F508D8(a1, &v16);
  if (v17)
  {
    sub_1D4E519A8(&v16, &v18);
    __swift_project_boxed_opaque_existential_1(&v18, v19);
    v8 = sub_1D5616158();
    v9 = OUTLINED_FUNCTION_0_173();
    v10(v9);
    v11 = sub_1D5614D38();

    [v4 setObject:v8 forKey:v11];
    swift_unknownObjectRelease();

    (*(*(a3 - 8) + 8))(a2, a3);
    sub_1D50B8C70(a1);
    return __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    sub_1D50B8C70(&v16);
    v13 = OUTLINED_FUNCTION_0_173();
    v14(v13);
    v15 = sub_1D5614D38();

    [v4 removeObjectForKey_];

    (*(*(a3 - 8) + 8))(a2, a3);
    return sub_1D50B8C70(a1);
  }
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v8 = __swift_coroFrameAllocStub(0x70uLL);
  *a1 = v8;
  v8[9] = a4;
  v8[10] = v4;
  v8[8] = a3;
  v9 = *(a3 - 8);
  v10 = v9;
  v8[11] = v9;
  v11 = *(v9 + 64);
  v8[12] = __swift_coroFrameAllocStub(v11);
  v8[13] = __swift_coroFrameAllocStub(v11);
  (*(v10 + 16))();
  NSUserDefaults.subscript.getter(a3, a4, v8);
  return sub_1D52E528C;
}

void sub_1D52E528C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[12];
  v3 = (*a1)[13];
  if (a2)
  {
    v5 = v2[11];
    v6 = v2[8];
    sub_1D4F508D8(*a1, (v2 + 4));
    (*(v5 + 32))(v4, v3, v6);
    NSUserDefaults.subscript.setter((v2 + 4), v4, v6);
    sub_1D50B8C70(v2);
  }

  else
  {
    NSUserDefaults.subscript.setter(*a1, v2[13], v2[8]);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t AssetURLFlavor.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D52E5478@<X0>(Swift::String *a1@<X0>, void *a2@<X8>)
{
  result = AssetURLFlavor.init(rawValue:)(*a1).rawValue._countAndFlagsBits;
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D52E54B8@<X0>(uint64_t *a1@<X8>)
{
  result = AssetURLFlavor.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t AssetURLFlavor.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_1();
  sub_1D5616358();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    OUTLINED_FUNCTION_1_1();
    v5 = sub_1D5616188();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AssetURLFlavor.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163B8();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D56161A8();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t sub_1D52E562C()
{
  result = qword_1EC7F3AF0;
  if (!qword_1EC7F3AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AF0);
  }

  return result;
}

uint64_t sub_1D52E56C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v100 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_48(&v84 - v10);
  v88 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v87 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_48(v14 - v13);
  v93 = sub_1D56128E8();
  OUTLINED_FUNCTION_4();
  v92 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  v90 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v91 = &v84 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_48(&v84 - v21);
  v98 = sub_1D5613EF8();
  OUTLINED_FUNCTION_4();
  v96 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_5();
  v95 = v25 - v24;
  v26 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  v94 = v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v84 - v30;
  v32 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v84 - v40;
  v99 = a2;
  result = sub_1D560F0C8();
  if (result)
  {
    *a5 = 7;
    return result;
  }

  v85 = a5;
  v43 = a1;
  v44 = a3;
  sub_1D560EC98();
  sub_1D560D5C8();
  (*(v34 + 8))(v38, v32);
  v45 = sub_1D560D4C8();
  v46 = v43;
  if (__swift_getEnumTagSinglePayload(v41, 1, v45) == 1)
  {
    sub_1D4E6C9CC(v41, &unk_1EC7EBF20, &unk_1D561F530);
    v47 = v26;
  }

  else
  {
    v48 = sub_1D560D488();
    v50 = v49;
    (*(*(v45 - 8) + 8))(v41, v45);
    v52 = v48 == _s8MusicKit0A7LibraryC0aB8InternalE2idSSvg_0() && v50 == v51;
    v47 = v26;
    if (v52)
    {
    }

    else
    {
      v53 = sub_1D5616168();

      if ((v53 & 1) == 0)
      {
        *v85 = 7;
        return result;
      }
    }
  }

  v54 = *(v47 + 16);
  v54(v31, v46, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v112 = 0;
    v110 = 0u;
    v111 = 0u;
    result = sub_1D4E6C9CC(&v110, &qword_1EC7EC500, &unk_1D5621030);
LABEL_19:
    *v85 = 0;
    return result;
  }

  sub_1D4E48324(&v110, &v113);
  v55 = v114;
  v56 = v115;
  __swift_project_boxed_opaque_existential_1(&v113, v114);
  (*(v56 + 16))(&v108, v55, v56);
  if (!v109)
  {
    sub_1D4E6C9CC(&v108, &qword_1EC7EC500, &unk_1D5621030);
    result = __swift_destroy_boxed_opaque_existential_1(&v113);
    goto LABEL_19;
  }

  sub_1D4E48324(&v108, &v110);
  __swift_project_boxed_opaque_existential_1(&v110, *(&v111 + 1));
  OUTLINED_FUNCTION_1_10();
  sub_1D4F60168();
  v57 = v108;
  if (v108 == 1)
  {
    goto LABEL_15;
  }

  sub_1D4E628D4(&v110, &v108);
  v59 = v97;
  v60 = v98;
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v60);
    sub_1D4E6C9CC(v59, &qword_1EC7EA8A8, &qword_1D561CF10);
    v54(v94, v46, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC540, &unk_1D5633D30);
    if (swift_dynamicCast())
    {
      sub_1D4E48324(&v105, &v108);
      __swift_project_boxed_opaque_existential_1(&v108, v109);
      sub_1D560DB68();
      if (v101[3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
        if (swift_dynamicCast())
        {
          if (*(&v103 + 1))
          {
            sub_1D4E48324(&v102, &v105);
            __swift_project_boxed_opaque_existential_1(&v105, *(&v106 + 1));
            OUTLINED_FUNCTION_1_10();
            sub_1D4F67E14(v70, v71, v72);
            v73 = v102;
            __swift_destroy_boxed_opaque_existential_1(&v105);
            __swift_destroy_boxed_opaque_existential_1(&v108);
            if (v73 < 0)
            {
              goto LABEL_24;
            }

LABEL_59:
            v57 = 9;
            goto LABEL_15;
          }
        }

        else
        {
          OUTLINED_FUNCTION_1_133();
        }
      }

      else
      {
        sub_1D4E6C9CC(v101, &qword_1EC7EEC40, &unk_1D561C070);
        v102 = 0u;
        v103 = 0u;
        v104 = 0;
      }

      sub_1D4E6C9CC(&v102, &qword_1EC7EC548, &qword_1D5621090);
      __swift_destroy_boxed_opaque_existential_1(&v108);
    }

    else
    {
      v107 = 0;
      v105 = 0u;
      v106 = 0u;
      sub_1D4E6C9CC(&v105, &qword_1EC7EC548, &qword_1D5621090);
    }

LABEL_55:
    *v85 = 0;
    goto LABEL_56;
  }

  __swift_storeEnumTagSinglePayload(v59, 0, 1, v60);
  v61 = v96;
  v62 = v95;
  (*(v96 + 32))(v95, v59, v60);
  v63 = sub_1D5613D78();
  if ((v64 & 1) == 0 && v63 > 0)
  {
    goto LABEL_23;
  }

  v74 = v91;
  sub_1D5613DB8();
  v75 = v92;
  v76 = v90;
  v77 = v93;
  (*(v92 + 16))(v90, v74, v93);
  v78 = (*(v75 + 88))(v76, v77);
  if (v78 == *MEMORY[0x1E69765E8])
  {
    goto LABEL_58;
  }

  if (v78 == *MEMORY[0x1E69765F8])
  {
    (*(v75 + 8))(v74, v77);
LABEL_23:
    (*(v61 + 8))(v62, v60);
LABEL_24:
    v65 = objc_opt_self();
    v66 = [objc_opt_self() autoupdatingActiveAccount];
    v67 = [v65 sharedMonitorForIdentity_];

    v68 = [v67 subscriptionStatus];
    if (v68)
    {
      v69 = [v68 capabilities];

      if ((v69 & 0x100) == 0)
      {
        v57 = 6;
        goto LABEL_15;
      }
    }

    sub_1D4E628D4(&v110, &v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F67C0, &unk_1D5664FC0);
    if (swift_dynamicCast())
    {
      sub_1D4E48324(&v102, &v108);
      __swift_project_boxed_opaque_existential_1(&v108, v109);
      if (sub_1D5612F38())
      {
        if (qword_1EDD55F58 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_1D560C8F8();

        v79 = v105;

        if ((v79 & 1) == 0)
        {
          *v85 = 2;
          __swift_destroy_boxed_opaque_existential_1(&v108);
          goto LABEL_56;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(&v108);
    }

    else
    {
      OUTLINED_FUNCTION_1_133();
      sub_1D4E6C9CC(&v102, &qword_1EC7F3B00, &qword_1D5650210);
    }

    sub_1D4E628D4(&v110, &v108);
    v80 = v89;
    v81 = v88;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v80, 0, 1, v81);
      v82 = v87;
      v83 = v86;
      (*(v87 + 32))(v86, v80, v81);
      Playlist.variant.getter();
      (*(v82 + 8))(v83, v81);
      if (v108 == 4)
      {
        goto LABEL_55;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v80, 1, 1, v81);
      sub_1D4E6C9CC(v80, &unk_1EC7F1990, &unk_1D561CEF0);
    }

    sub_1D4E5A1CC();

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D560C8F8();

    v57 = v108;
    if (v108 != 2)
    {
      v58 = v85;
      if (v108 != 3)
      {
        if (v108)
        {
          v57 = 4;
        }

        else
        {
          v57 = 11;
        }
      }

      goto LABEL_16;
    }

    v57 = 11;
LABEL_15:
    v58 = v85;
LABEL_16:
    *v58 = v57;
LABEL_56:
    __swift_destroy_boxed_opaque_existential_1(&v110);
    return __swift_destroy_boxed_opaque_existential_1(&v113);
  }

  if (v78 == *MEMORY[0x1E69765F0])
  {
LABEL_58:
    (*(v75 + 8))(v74, v77);
    (*(v61 + 8))(v62, v60);
    goto LABEL_59;
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t MusicLibrary.PinAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D52E64D4(uint64_t a1)
{
  sub_1D56162D8();
  MusicLibrary.PinAction.UnsupportedReason.hash(into:)();
  return sub_1D5616328();
}

unint64_t sub_1D52E6524()
{
  result = qword_1EC7F3AF8;
  if (!qword_1EC7F3AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3AF8);
  }

  return result;
}

_BYTE *_s9PinActionVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s9PinActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D52E670C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EED18, &unk_1D562E668);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v19 - v9;
  v11 = sub_1D5612848();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5614898();
  v19[0] = v3;
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    (*(v12 + 32))(v14, v10, v11);
    sub_1D4F39AB0(a2, v7, &qword_1EC7EC450, &unk_1D5621060);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
    if (__swift_getEnumTagSinglePayload(v7, 1, v15) == 1)
    {
      sub_1D4E50004(v7, &qword_1EC7EC450, &unk_1D5621060);
      v21 = 0u;
      v22 = 0u;
    }

    else
    {
      *(&v22 + 1) = v15;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(&v21);
      (*(*(v15 - 8) + 32))(boxed_opaque_existential_1Tm, v7, v15);
    }

    sub_1D56126C8();
    *(&v22 + 1) = v11;
    v23 = MEMORY[0x1E69765B0];
    v17 = __swift_allocate_boxed_opaque_existential_1Tm(&v21);
    (*(v12 + 16))(v17, v14, v11);
    sub_1D56145A8();
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
    sub_1D4E50004(v10, &qword_1EC7EED18, &unk_1D562E668);
    *&v21 = 0;
    *(&v21 + 1) = 0xE000000000000000;
    sub_1D5615B68();
    v20 = v21;
    MEMORY[0x1DA6EAC70](0xD00000000000003CLL, 0x80000001D5682C10);
    sub_1D5612B18();
    sub_1D5615D48();
    __swift_destroy_boxed_opaque_existential_1(&v21);
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t MusicShareableItemRequest.init(shareableURL:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MusicShareableItemRequest(0);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(a1 + *(v2 + 24)) = 4;
  *(a1 + *(v2 + 28)) = MEMORY[0x1E69E7CC0];
  sub_1D560C0A8();
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_159();

  return v4(v3);
}

uint64_t type metadata accessor for MusicShareableItemRequest(uint64_t a1)
{
  result = qword_1EC7F3B40;
  if (!qword_1EC7F3B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicShareableItemRequest.shareableURL.getter()
{
  sub_1D560C0A8();
  OUTLINED_FUNCTION_14();
  v0 = OUTLINED_FUNCTION_71();

  return v1(v0);
}

uint64_t MusicShareableItemRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v3 = OUTLINED_FUNCTION_22(v2);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  type metadata accessor for MusicShareableItemRequest(0);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v9 = type metadata accessor for MusicRequestConfiguration(0);
  v10 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v8, v10 ^ 1u, 1, v9);
  sub_1D4F39AB0(v8, v6, &qword_1EC7EA838, &unk_1D561CB10);
  OUTLINED_FUNCTION_10(v6);
  if (v11)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    OUTLINED_FUNCTION_10(v6);
    if (!v11)
    {
      sub_1D4E50004(v6, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D52EA00C(v6, a1);
  }

  return sub_1D4E50004(v8, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D52E6DEC(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D52E9628(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return MusicShareableItemRequest.configuration.setter();
}

uint64_t MusicShareableItemRequest.configuration.setter()
{
  OUTLINED_FUNCTION_147();
  v1 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration(0);
  OUTLINED_FUNCTION_3_132();
  sub_1D52EB5B0(v7, v8, &protocol conformance descriptor for MusicRequestConfiguration);
  sub_1D560E6C8();
  OUTLINED_FUNCTION_6_99();
  sub_1D4E586C0();
  v9 = type metadata accessor for MusicShareableItemRequest(0);
  return (*(v3 + 40))(v0 + *(v9 + 20), v6, v1);
}

void (*MusicShareableItemRequest.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for MusicRequestConfiguration(0);
  v3[4] = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  MusicShareableItemRequest.configuration.getter(v10);
  return sub_1D52E7090;
}

void sub_1D52E7090(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  if (a2)
  {
    sub_1D52E9628(*(*a1 + 48), v3);
    OUTLINED_FUNCTION_3_132();
    sub_1D52EB5B0(v6, v7, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    sub_1D4E586C0();
    v8 = type metadata accessor for MusicShareableItemRequest(0);
    v9 = OUTLINED_FUNCTION_33_45(v8);
    v10(v9);
    sub_1D4E586C0();
  }

  else
  {
    OUTLINED_FUNCTION_3_132();
    sub_1D52EB5B0(v11, v12, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    OUTLINED_FUNCTION_6_99();
    sub_1D4E586C0();
    v13 = type metadata accessor for MusicShareableItemRequest(0);
    v14 = OUTLINED_FUNCTION_33_45(v13);
    v15(v14);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t MusicShareableItemRequest.source.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MusicShareableItemRequest(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t MusicShareableItemRequest.source.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for MusicShareableItemRequest(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

void (*MusicShareableItemRequest.source.modify())()
{
  v0 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for MusicShareableItemRequest(v0);
  return nullsub_1;
}

double MusicShareableItemRequest.properties.getter()
{
  type metadata accessor for MusicShareableItemRequest(0);

  return result;
}

uint64_t MusicShareableItemRequest.properties.setter()
{
  v2 = OUTLINED_FUNCTION_64_1();
  v3 = *(type metadata accessor for MusicShareableItemRequest(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

void (*MusicShareableItemRequest.properties.modify())()
{
  v0 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for MusicShareableItemRequest(v0);
  return nullsub_1;
}

uint64_t MusicShareableItemRequest.response()()
{
  OUTLINED_FUNCTION_60();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1D560D838();
  v1[14] = v3;
  OUTLINED_FUNCTION_69(v3);
  v1[15] = v4;
  v1[16] = OUTLINED_FUNCTION_127();
  v5 = sub_1D5614828();
  v1[17] = v5;
  OUTLINED_FUNCTION_69(v5);
  v1[18] = v6;
  v1[19] = OUTLINED_FUNCTION_167();
  v1[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  v1[21] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[22] = OUTLINED_FUNCTION_127();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v8);
  v1[23] = OUTLINED_FUNCTION_167();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v1[26] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[27] = v10;
  v1[28] = OUTLINED_FUNCTION_167();
  v1[29] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_22(v11);
  v1[30] = OUTLINED_FUNCTION_167();
  v1[31] = swift_task_alloc();
  v12 = sub_1D5614898();
  v1[32] = v12;
  OUTLINED_FUNCTION_69(v12);
  v1[33] = v13;
  v1[34] = OUTLINED_FUNCTION_167();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v14 = sub_1D5613D28();
  v1[37] = v14;
  OUTLINED_FUNCTION_69(v14);
  v1[38] = v15;
  v1[39] = OUTLINED_FUNCTION_167();
  v1[40] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  v1[41] = v16;
  OUTLINED_FUNCTION_69(v16);
  v1[42] = v17;
  v1[43] = OUTLINED_FUNCTION_127();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F68, &qword_1D56502C0);
  v1[44] = v18;
  OUTLINED_FUNCTION_22(v18);
  v1[45] = OUTLINED_FUNCTION_127();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC458, &unk_1D5620CD0);
  OUTLINED_FUNCTION_22(v19);
  v1[46] = OUTLINED_FUNCTION_127();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  OUTLINED_FUNCTION_22(v20);
  v1[47] = OUTLINED_FUNCTION_167();
  v1[48] = swift_task_alloc();
  v21 = sub_1D5613AF8();
  v1[49] = v21;
  OUTLINED_FUNCTION_69(v21);
  v1[50] = v22;
  v1[51] = OUTLINED_FUNCTION_127();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3B08, &qword_1D56502C8);
  OUTLINED_FUNCTION_22(v23);
  v1[52] = OUTLINED_FUNCTION_127();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4D8, &qword_1D56502D0);
  v1[53] = v24;
  OUTLINED_FUNCTION_69(v24);
  v1[54] = v25;
  v1[55] = OUTLINED_FUNCTION_127();
  v26 = type metadata accessor for MusicShareableItem(0);
  v1[56] = v26;
  OUTLINED_FUNCTION_22(v26);
  v1[57] = OUTLINED_FUNCTION_127();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3B10, &qword_1D56502D8);
  v1[58] = v27;
  OUTLINED_FUNCTION_69(v27);
  v1[59] = v28;
  v1[60] = OUTLINED_FUNCTION_127();
  v29 = sub_1D560CD48();
  v1[61] = v29;
  OUTLINED_FUNCTION_69(v29);
  v1[62] = v30;
  v1[63] = OUTLINED_FUNCTION_167();
  v1[64] = swift_task_alloc();
  v31 = type metadata accessor for MusicRequestConfiguration(0);
  v1[65] = v31;
  OUTLINED_FUNCTION_22(v31);
  v1[66] = OUTLINED_FUNCTION_127();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3B18, &qword_1D56502E0);
  v1[67] = v32;
  OUTLINED_FUNCTION_69(v32);
  v1[68] = v33;
  v1[69] = OUTLINED_FUNCTION_127();
  v34 = sub_1D560C0A8();
  v1[70] = v34;
  OUTLINED_FUNCTION_69(v34);
  v1[71] = v35;
  v1[72] = OUTLINED_FUNCTION_127();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3B20, &qword_1D56502E8);
  OUTLINED_FUNCTION_22(v36);
  v1[73] = OUTLINED_FUNCTION_127();
  v37 = _s9ParsedURLVMa(0);
  v1[74] = v37;
  OUTLINED_FUNCTION_22(v37);
  v1[75] = OUTLINED_FUNCTION_167();
  v1[76] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v38, v39, v40);
}

uint64_t sub_1D52E79D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_22_57();
  OUTLINED_FUNCTION_32_45();
  v39 = v38[73];
  v40 = v38[72];
  (*(v38[71] + 16))(v40, v38[13], v38[70]);
  sub_1D503EA18(v40, v39);
  OUTLINED_FUNCTION_10(v39);
  if (v41)
  {
    sub_1D4E50004(v38[73], &qword_1EC7F3B20, &qword_1D56502E8);
    sub_1D52E95D4();
    v69 = swift_allocError();
    *v42 = 0;
    swift_willThrow();
    v43 = OUTLINED_FUNCTION_40_44();
    OUTLINED_FUNCTION_9_90(v43);

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_94();

    return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, v69, a34, a35, a36, a37, a38);
  }

  else
  {
    v53 = v38[76];
    v54 = v38[75];
    v55 = v38[69];
    v56 = v38[66];
    v58 = v38[63];
    v57 = v38[64];
    v60 = v38[61];
    v59 = v38[62];
    v61 = v38[13];
    sub_1D52EA00C(v38[73], v53);
    sub_1D52E9628(v53, v54);
    sub_1D52E9680(v54, v55);
    MusicShareableItemRequest.configuration.getter(v56);
    OUTLINED_FUNCTION_3_132();
    sub_1D52EB5B0(v62, v63, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    (*(v59 + 16))(v58, v57, v60);
    sub_1D560E248();
    (*(v59 + 8))(v57, v60);
    OUTLINED_FUNCTION_6_99();
    sub_1D4E586C0();
    v64 = type metadata accessor for MusicShareableItemRequest(0);
    sub_1D52E9D00(v53, *(v61 + *(v64 + 28)));
    sub_1D560E228();
    v65 = swift_task_alloc();
    v38[77] = v65;
    *v65 = v38;
    v65[1] = sub_1D52E7D8C;
    OUTLINED_FUNCTION_94();

    return MEMORY[0x1EEDCEDA0](v66, v67);
  }
}

uint64_t sub_1D52E7D8C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 624) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52E7E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_22_57();
  OUTLINED_FUNCTION_32_45();
  v40 = *(v38 + 448);
  v41 = *(v38 + 416);
  sub_1D560E448();
  sub_1D4ECA4B8();
  v42 = OUTLINED_FUNCTION_70();
  v43(v42);
  if (__swift_getEnumTagSinglePayload(v41, 1, v40) == 1)
  {
    v44 = *(v38 + 552);
    v45 = *(v38 + 544);
    v46 = *(v38 + 536);
    v48 = *(v38 + 472);
    v47 = *(v38 + 480);
    v49 = *(v38 + 464);
    sub_1D52E95D4();
    v174 = swift_allocError();
    *v50 = 1;
    swift_willThrow();
    (*(v48 + 8))(v47, v49);
    (*(v45 + 8))(v44, v46);
    OUTLINED_FUNCTION_0_174();
    sub_1D4E586C0();
    v51 = OUTLINED_FUNCTION_40_44();
    OUTLINED_FUNCTION_9_90(v51);

    OUTLINED_FUNCTION_55();
LABEL_34:
    OUTLINED_FUNCTION_94();

    return v160(v159, v160, v161, v162, v163, v164, v165, v166, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, v174, a34, a35, a36, a37, a38);
  }

  v52 = *(v38 + 416);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload)
    {
      v93 = *(v38 + 552);
      v94 = *(v38 + 544);
      v95 = *(v38 + 536);
      v96 = *(v38 + 456);
      (*(*(v38 + 472) + 8))(*(v38 + 480), *(v38 + 464));
      (*(v94 + 8))(v93, v95);
      OUTLINED_FUNCTION_5_100();
      sub_1D52EA00C(v52, v96);
LABEL_33:
      OUTLINED_FUNCTION_14_69();
      a9 = v157;
      a10 = v156;
      a11 = *(v38 + 416);
      a12 = *(v38 + 408);
      a13 = *(v38 + 384);
      a14 = *(v38 + 376);
      a15 = *(v38 + 368);
      a16 = *(v38 + 360);
      a17 = *(v38 + 344);
      a18 = *(v38 + 320);
      a19 = *(v38 + 312);
      a20 = *(v38 + 288);
      a21 = *(v38 + 280);
      a22 = *(v38 + 272);
      a23 = *(v38 + 248);
      a24 = *(v38 + 240);
      a25 = *(v38 + 232);
      a26 = *(v38 + 224);
      a27 = *(v38 + 200);
      a28 = *(v38 + 192);
      a29 = *(v38 + 184);
      a30 = *(v38 + 176);
      a31 = *(v38 + 160);
      a32 = *(v38 + 152);
      v174 = *(v38 + 128);
      OUTLINED_FUNCTION_5_100();
      sub_1D52EA00C(v39, v158);
      OUTLINED_FUNCTION_0_174();
      sub_1D4E586C0();

      OUTLINED_FUNCTION_55();
      goto LABEL_34;
    }

    v54 = *(v38 + 608);
    v55 = *(v38 + 592);
    v167 = *(*(v38 + 400) + 32);
    (v167)(*(v38 + 408), v52, *(v38 + 392));
    v56 = (v54 + *(v55 + 28));
    v57 = v56[1];
    if (v57)
    {
      v58 = *v56;
      sub_1D5613AC8();
      if (OUTLINED_FUNCTION_37_34() == 1)
      {
        v59 = *(v38 + 368);
        v60 = *(v38 + 296);
        (*(*(v38 + 472) + 8))(*(v38 + 480), *(v38 + 464));
        v61 = OUTLINED_FUNCTION_159();
        v62(v61);
        sub_1D4E50004(v59, &qword_1EC7EC458, &unk_1D5620CD0);
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v63, v64, v65, v60);
      }

      else
      {
        v172 = v58;
        v118 = *(v38 + 360);
        v119 = *(v38 + 352);
        v120 = *(v38 + 304);
        (*(*(v38 + 336) + 16))(*(v38 + 344), *(v38 + 368), *(v38 + 328));
        OUTLINED_FUNCTION_163_0();
        sub_1D4E62A60(v121, &qword_1EC7EA4E8, &unk_1D561C470, v122);
        sub_1D5614F98();
        v123 = *(v119 + 36);
        v170 = (v120 + 16);
        v175 = (v120 + 32);
        v168 = (v120 + 8);
        OUTLINED_FUNCTION_14_1();
        sub_1D4E62A60(v124, &qword_1EC7EA4E8, &unk_1D561C470, v125);
        v171 = v57;
        v169 = v123;
        while (1)
        {
          sub_1D5615648();
          if (*(v118 + v123) == *(v38 + 88))
          {
            OUTLINED_FUNCTION_27_53();
            sub_1D4E50004(*(v38 + 360), &qword_1EC7F2F68, &qword_1D56502C0);
            v140 = OUTLINED_FUNCTION_70();
            v141(v140);
            v142 = OUTLINED_FUNCTION_159();
            v143(v142);
            v144 = 1;
            goto LABEL_29;
          }

          v126 = *(v38 + 320);
          v127 = *(v38 + 312);
          v128 = *(v38 + 296);
          v129 = sub_1D5615688();
          (*v170)(v126);
          v129(v38 + 48, 0);
          v123 = v169;
          sub_1D5615658();
          v130 = *v175;
          (*v175)(v127, v126, v128);
          if (_s16MusicKitInternal0A18SuggestedPivotSeedV2id0aB00A6ItemIDVvg_0() == v172 && v171 == v131)
          {
            break;
          }

          v133 = sub_1D5616168();

          if (v133)
          {
            goto LABEL_28;
          }

          (*v168)(*(v38 + 312), *(v38 + 296));
        }

LABEL_28:
        v173 = *(v38 + 552);
        v145 = *(v38 + 544);
        v146 = *(v38 + 536);
        v147 = *(v38 + 376);
        v148 = *(v38 + 312);
        v149 = *(v38 + 296);
        sub_1D4E50004(*(v38 + 360), &qword_1EC7F2F68, &qword_1D56502C0);
        v150 = OUTLINED_FUNCTION_70();
        v151(v150);
        (*(v145 + 8))(v173, v146);
        v130(v147, v148, v149);
        v144 = 0;
LABEL_29:
        __swift_storeEnumTagSinglePayload(*(v38 + 376), v144, 1, *(v38 + 296));
        v152 = OUTLINED_FUNCTION_159();
        v153(v152);
      }

      sub_1D4F39A1C(*(v38 + 376), *(v38 + 384), &qword_1EC7EA888, &qword_1D563B8C0);
    }

    else
    {
      OUTLINED_FUNCTION_27_53();
      v97 = *(v38 + 296);
      (*(*(v38 + 472) + 8))(*(v38 + 480), *(v38 + 464));
      v98 = OUTLINED_FUNCTION_159();
      v99(v98);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v100, v101, v102, v97);
    }

    v154 = *(v38 + 456);
    v155 = *(v38 + 384);
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F80, &qword_1D564AE90) + 48);
    OUTLINED_FUNCTION_12_34();
    v167();
    sub_1D4F39A1C(v155, v154 + v39, &qword_1EC7EA888, &qword_1D563B8C0);
    OUTLINED_FUNCTION_159();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_12_34();
LABEL_32:
    sub_1D4E50004(v115, v116, v117);
    goto LABEL_33;
  }

  v66 = *(v38 + 608);
  v67 = *(v38 + 592);
  v69 = *(v38 + 280);
  v68 = *(v38 + 288);
  v70 = *(v38 + 256);
  v71 = *(v38 + 264);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2F78, &qword_1D56502F0);
  *(v38 + 632) = v72;
  *(v38 + 704) = *(v72 + 48);
  *(v38 + 640) = *(v71 + 32);
  *(v38 + 648) = (v71 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v73 = OUTLINED_FUNCTION_71();
  v74(v73);
  (*(v71 + 16))(v69, v68, v70);
  v75 = (v66 + *(v67 + 28));
  *(v38 + 656) = *v75;
  v76 = v75[1];
  *(v38 + 664) = v76;
  if (!v76)
  {
    OUTLINED_FUNCTION_27_53();
    (*(*(v38 + 264) + 8))(*(v38 + 288), *(v38 + 256));
    v103 = OUTLINED_FUNCTION_70();
    v104(v103);
    v105 = OUTLINED_FUNCTION_159();
    v106(v105);
    goto LABEL_14;
  }

  v77 = *(v38 + 208);
  v78 = *(v38 + 192);
  sub_1D5614858();
  if (__swift_getEnumTagSinglePayload(v78, 1, v77) == 1)
  {
    v79 = *(v38 + 208);
    (*(*(v38 + 264) + 8))(*(v38 + 288), *(v38 + 256));
    v80 = OUTLINED_FUNCTION_70();
    v81(v80);
    v82 = OUTLINED_FUNCTION_159();
    v83(v82);
    OUTLINED_FUNCTION_102();
    sub_1D4E50004(v84, v85, v86);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v87, v88, v89, v79);
    OUTLINED_FUNCTION_102();
    sub_1D4E50004(v90, v91, v92);
LABEL_14:
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v110);
    v111 = *(v38 + 704);
    v112 = *(v38 + 456);
    v39 = *(v38 + 416);
    v113 = *(v38 + 248);
    v114 = *(*(v38 + 632) + 48);
    (*(v38 + 640))(v112, *(v38 + 280), *(v38 + 256));
    sub_1D4F39A1C(v113, v112 + v114, &unk_1EC7F2BE0, &qword_1D56250F0);
    OUTLINED_FUNCTION_159();
    swift_storeEnumTagMultiPayload();
    v115 = v39 + v111;
    v116 = &unk_1EC7F2BE0;
    v117 = &qword_1D56250F0;
    goto LABEL_32;
  }

  v134 = swift_task_alloc();
  *(v38 + 672) = v134;
  *v134 = v38;
  v134[1] = sub_1D52E8A10;
  OUTLINED_FUNCTION_94();

  return sub_1D52EA064(v135, v136, v137);
}

uint64_t sub_1D52E8A10()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  v2[85] = v0;

  if (!v0)
  {
    v6 = v2[26];
    v7 = v2[27];
    v8 = v2[24];
    v9 = *(v7 + 8);
    v2[86] = v9;
    v2[87] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v8, v6);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D52E8B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_22_57();
  OUTLINED_FUNCTION_32_45();
  v40 = *(v38 + 224);
  v39 = *(v38 + 232);
  v41 = *(v38 + 208);
  v42 = *(v38 + 216);
  v43 = *(v38 + 200);
  v44 = *(v38 + 168);
  v45 = *(v38 + 176);
  v46 = *(v38 + 144);
  v47 = *(v38 + 120);
  OUTLINED_FUNCTION_36_42(v43, 0);
  (*(v42 + 32))(v39, v43, v41);
  v110 = *(v42 + 16);
  v110(v40, v39, v41);
  OUTLINED_FUNCTION_163_0();
  sub_1D4E62A60(v48, &unk_1EC7F6A30, &qword_1D561C4C0, v49);
  v123 = v45;
  sub_1D5614F98();
  v50 = *(v44 + 36);
  v118 = (v46 + 16);
  v126 = (v46 + 32);
  v113 = (v46 + 8);
  v116 = (v47 + 8);
  OUTLINED_FUNCTION_14_1();
  sub_1D4E62A60(v51, &unk_1EC7F6A30, &qword_1D561C4C0, v52);
  while (1)
  {
    sub_1D5615648();
    if (*(v123 + v50) == *(v38 + 80))
    {
      sub_1D4E50004(*(v38 + 176), &qword_1EC7ECEA0, &qword_1D5666390);
      v63 = 1;
      goto LABEL_13;
    }

    v132 = *(v38 + 656);
    v135 = *(v38 + 664);
    v53 = *(v38 + 160);
    v129 = *(v38 + 152);
    v54 = *(v38 + 136);
    v55 = sub_1D5615688();
    (*v118)(v53);
    v55(v38 + 16, 0);
    sub_1D5615658();
    v56 = *v126;
    (*v126)(v129, v53, v54);
    if (sub_1D560EC18() == v132 && v135 == v57)
    {
      break;
    }

    v59 = sub_1D5616168();

    if (v59)
    {
      goto LABEL_12;
    }

    v60 = *(v38 + 128);
    v61 = *(v38 + 112);
    sub_1D560EC98();
    v62 = sub_1D560D788();
    (*v116)(v60, v61);
    if (v62)
    {
      goto LABEL_12;
    }

    (*v113)(*(v38 + 152), *(v38 + 136));
  }

LABEL_12:
  sub_1D4E50004(*(v38 + 176), &qword_1EC7ECEA0, &qword_1D5666390);
  v64 = OUTLINED_FUNCTION_159();
  v56(v64);
  v63 = 0;
LABEL_13:
  v108 = *(v38 + 688);
  v133 = *(v38 + 640);
  v127 = *(v38 + 536);
  v130 = *(v38 + 552);
  v65 = *(v38 + 472);
  v121 = *(v38 + 480);
  v124 = *(v38 + 544);
  v119 = *(v38 + 464);
  v114 = *(v38 + 288);
  v66 = *(v38 + 264);
  v67 = *(v38 + 272);
  v106 = *(v38 + 280);
  v68 = *(v38 + 256);
  v69 = *(v38 + 232);
  v70 = *(v38 + 208);
  v71 = *(v38 + 184);
  __swift_storeEnumTagSinglePayload(*(v38 + 240), v63, 1, *(v38 + 136));
  v72 = OUTLINED_FUNCTION_71();
  sub_1D4F39A1C(v72, v73, v74, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3B30, &unk_1D5650300);
  sub_1D560D208();
  v110(v71, v69, v70);
  OUTLINED_FUNCTION_36_42(v71, 0);
  sub_1D52E670C(v71, v67);

  sub_1D4E50004(v71, &qword_1EC7EC450, &unk_1D5621060);
  v108(v69, v70);
  v76 = *(v66 + 8);
  v76(v106, v68);
  v76(v114, v68);
  (*(v65 + 8))(v121, v119);
  (*(v124 + 8))(v130, v127);
  v133(v106, v67, v68);
  v77 = *(v38 + 704);
  v78 = *(v38 + 456);
  v79 = *(v38 + 416);
  v80 = *(v38 + 248);
  v81 = *(*(v38 + 632) + 48);
  (*(v38 + 640))(v78, *(v38 + 280), *(v38 + 256));
  sub_1D4F39A1C(v80, v78 + v81, &unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_159();
  swift_storeEnumTagMultiPayload();
  sub_1D4E50004(v79 + v77, &unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_14_69();
  v94 = v83;
  v95 = v82;
  v96 = *(v38 + 416);
  v97 = *(v38 + 408);
  v98 = *(v38 + 384);
  v99 = *(v38 + 376);
  v100 = *(v38 + 368);
  v101 = *(v38 + 360);
  v102 = *(v38 + 344);
  v103 = *(v38 + 320);
  v104 = *(v38 + 312);
  v105 = *(v38 + 288);
  v107 = *(v38 + 280);
  v109 = *(v38 + 272);
  v111 = *(v38 + 248);
  v112 = *(v38 + 240);
  v115 = *(v38 + 232);
  v117 = *(v38 + 224);
  v120 = *(v38 + 200);
  v122 = *(v38 + 192);
  v125 = *(v38 + 184);
  v128 = *(v38 + 176);
  v131 = *(v38 + 160);
  v134 = *(v38 + 152);
  v136 = *(v38 + 128);
  OUTLINED_FUNCTION_5_100();
  sub_1D52EA00C(v65 + 8, v84);
  OUTLINED_FUNCTION_0_174();
  sub_1D4E586C0();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_94();

  return v86(v85, v86, v87, v88, v89, v90, v91, v92, a9, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v107, v109, v111, v112, v115, v117, v120, v122, v125, v128, v131, v134, v136, a35, a36, a37, a38);
}

uint64_t sub_1D52E9200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_22_57();
  OUTLINED_FUNCTION_32_45();
  (*(v38[68] + 8))(v38[69], v38[67]);
  OUTLINED_FUNCTION_0_174();
  sub_1D4E586C0();
  OUTLINED_FUNCTION_8_94(v38[78]);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_94();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38);
}

uint64_t sub_1D52E9398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  OUTLINED_FUNCTION_22_57();
  OUTLINED_FUNCTION_32_45();
  v39 = *(v38 + 544);
  v56 = *(v38 + 536);
  v57 = *(v38 + 552);
  v41 = *(v38 + 472);
  v40 = *(v38 + 480);
  v42 = *(v38 + 464);
  v61 = *(v38 + 416);
  v62 = *(v38 + 704);
  v43 = *(v38 + 288);
  v44 = *(v38 + 256);
  v45 = *(v38 + 216);
  v59 = *(v38 + 208);
  v60 = *(v38 + 608);
  v58 = *(v38 + 192);
  v46 = *(*(v38 + 264) + 8);
  v46(*(v38 + 280), v44);
  v46(v43, v44);
  (*(v41 + 8))(v40, v42);
  (*(v39 + 8))(v57, v56);
  OUTLINED_FUNCTION_0_174();
  sub_1D4E586C0();
  (*(v45 + 8))(v58, v59);
  sub_1D4E50004(v61 + v62, &unk_1EC7F2BE0, &qword_1D56250F0);
  OUTLINED_FUNCTION_8_94(*(v38 + 680));

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_94();

  return v48(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v56, v57, v58, v59, v60, v61, v62, a35, a36, a37, a38);
}

unint64_t sub_1D52E95D4()
{
  result = qword_1EC7F3B28;
  if (!qword_1EC7F3B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3B28);
  }

  return result;
}

uint64_t sub_1D52E9628(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D52E9680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1D56126A8();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = &v31 - v6;
  v35 = sub_1D5610F88();
  v7 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v36 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D560D9A8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D5610A18();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(_s9ParsedURLVMa(0) + 20);
  v38 = a1;
  v18 = *(a1 + v17);
  if (v18 == 7)
  {
    if (qword_1EC7E9678 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v13, qword_1EC87C658);
    (*(v14 + 16))(v16, v19, v13);
    v20 = MEMORY[0x1E69760B8];
  }

  else
  {
    sub_1D5610A08();
    v20 = MEMORY[0x1E69760C0];
  }

  sub_1D554FC90(v18, v12);
  sub_1D560D8B8();
  (*(v10 + 8))(v12, v9);
  (*(v7 + 104))(v36, *v20, v35);
  type metadata accessor for MusicShareableItem(0);
  sub_1D52EB5B0(&qword_1EC7F3B58, type metadata accessor for MusicShareableItem, &protocol conformance descriptor for MusicShareableItem);
  sub_1D52EB5B0(&qword_1EC7F3B60, type metadata accessor for MusicShareableItem, &protocol conformance descriptor for MusicShareableItem);
  sub_1D560E258();
  sub_1D555A178(&unk_1F50A42C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3B18, &qword_1D56502E0);
  sub_1D560E2D8();
  if (v18 == 6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D561EAC0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA8, &qword_1D563A170);
    *(v28 + 32) = sub_1D560D208();
    v22 = v31;
    sub_1D5610038();
    v29 = sub_1D5610088();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v29);
    v24 = sub_1D560E288();
    v26 = v32;
    v25 = v33;
    v27 = v34;
    (*(v33 + 104))(v32, *MEMORY[0x1E6976580], v34);
    sub_1D5614898();
    goto LABEL_10;
  }

  if (!v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D561EAC0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3B68, &qword_1D5650400);
    *(v21 + 32) = sub_1D560D1A8();
    v22 = v31;
    sub_1D560FFB8();
    v23 = sub_1D5610088();
    __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
    v24 = sub_1D560E288();
    v26 = v32;
    v25 = v33;
    v27 = v34;
    (*(v33 + 104))(v32, *MEMORY[0x1E6976580], v34);
    sub_1D5613AF8();
LABEL_10:
    sub_1D5615238();

    (*(v25 + 8))(v26, v27);
    sub_1D4E50004(v22, &qword_1EC7EA358, &unk_1D561DF50);
    v24(v39, 0);
  }

  return sub_1D4E586C0();
}

uint64_t sub_1D52E9D00(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v3 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF10, &qword_1D561DCE0);
  v24 = sub_1D52EB280();
  v23 = &v24;
  v13 = sub_1D4F25E78(sub_1D52EB590, v22, a2);

  if (v13)
  {
    v14 = _s9ParsedURLVMa(0);
    sub_1D554FC90(*(v21 + *(v14 + 20)), v11);
    v15 = sub_1D560D8F8();
    (*(v5 + 8))(v11, v3);
    if (dynamic_cast_existential_1_conditional(v15, v15, &protocol descriptor for EditorialArtworkVending))
    {
      sub_1D52EB280();
      MEMORY[0x1DA6EAF30]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D56151B8();
      }

      sub_1D56151F8();
      v12 = v25;
    }
  }

  v24 = sub_1D4F84C9C();
  MEMORY[0x1EEE9AC00](v24);
  *(&v20 - 2) = &v24;
  v16 = sub_1D4F25E78(sub_1D52EB5F8, (&v20 - 4), a2);

  if (v16)
  {
    v17 = _s9ParsedURLVMa(0);
    sub_1D554FC90(*(v21 + *(v17 + 20)), v9);
    v18 = sub_1D560D8F8();
    (*(v5 + 8))(v9, v3);
    if (dynamic_cast_existential_1_conditional(v18, v18, &protocol descriptor for EditorialVideoArtworkVending))
    {
      sub_1D4F84C9C();
      MEMORY[0x1DA6EAF30]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D56151B8();
      }

      sub_1D56151F8();
      return v25;
    }
  }

  return v12;
}

uint64_t sub_1D52EA00C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D52EA064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  v4[11] = swift_task_alloc();
  v5 = sub_1D560D838();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_1D5614828();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F2BE0, &qword_1D56250F0);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D52EA2E0, 0, 0);
}

uint64_t sub_1D52EA2E0()
{
  if (!v0[9])
  {
    (*(v0[26] + 16))(v0[7], v0[10], v0[25]);
    goto LABEL_25;
  }

  v1 = v0[29];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[15];
  v5 = v0[10];
  v6 = *(v3 + 16);
  v0[30] = v6;
  v0[31] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
  v60 = v0 + 24;
  do
  {
    v10 = v0[23];
    v11 = v0[15];
    OUTLINED_FUNCTION_102();
    sub_1D4F39AB0(v12, v13, v14, &qword_1D56250F0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v11) != 1)
    {
      sub_1D4E50004(*v60, &unk_1EC7F2BE0, &qword_1D56250F0);
      v53 = (v0 + 23);
LABEL_24:
      v54 = OUTLINED_FUNCTION_42_36(v53);
      sub_1D4E50004(v54, &unk_1EC7F2BE0, &qword_1D56250F0);
      v55 = OUTLINED_FUNCTION_16_75();
      v56(v55);
LABEL_25:
      OUTLINED_FUNCTION_20_65();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_341();

      __asm { BRAA            X1, X16 }
    }

    sub_1D4E50004(v0[23], &unk_1EC7F2BE0, &qword_1D56250F0);
    if ((sub_1D560DA08() & 1) == 0)
    {
      v53 = (v0 + 24);
      goto LABEL_24;
    }

    v15 = v0[19];
    v16 = v0[20];
    (v0[30])(v0[28], v0[29], v0[25]);
    OUTLINED_FUNCTION_163_0();
    sub_1D4E62A60(&qword_1EDD53B90, &unk_1EC7F6A30, &qword_1D561C4C0, v17);
    v61 = v16;
    sub_1D5614F98();
    v18 = *(v15 + 36);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_12_34();
    sub_1D4E62A60(v19, v20, v21, v22);
    while (1)
    {
      sub_1D5615648();
      if (*(v61 + v18) == v0[6])
      {
        v35 = *v60;
        sub_1D4E50004(v0[20], &qword_1EC7ECEA0, &qword_1D5666390);
        sub_1D4E50004(v35, &unk_1EC7F2BE0, &qword_1D56250F0);
        v36 = 1;
        goto LABEL_17;
      }

      v23 = v0[18];
      v24 = v0[15];
      v25 = v0[16];
      v64 = v0[9];
      v62 = v0[17];
      v63 = v0[8];
      v26 = sub_1D5615688();
      (*(v25 + 16))(v23);
      v26(v0 + 2, 0);
      sub_1D5615658();
      v27 = *(v25 + 32);
      v27(v62, v23, v24);
      v28 = sub_1D560EC18();
      v30 = v29;
      if (v28 == v63 && v64 == v29)
      {
        break;
      }

      v32 = sub_1D5616168();

      if (v32)
      {
        goto LABEL_16;
      }

      sub_1D560EC98();
      v30 = sub_1D560D788();
      v33 = OUTLINED_FUNCTION_70();
      v34(v33);
      if (v30)
      {
        goto LABEL_16;
      }

      (*(v0[16] + 8))(v0[17], v0[15]);
    }

LABEL_16:
    v37 = OUTLINED_FUNCTION_35_47();
    sub_1D4E50004(v37, &qword_1EC7ECEA0, &qword_1D5666390);
    sub_1D4E50004(v30, &unk_1EC7F2BE0, &qword_1D56250F0);
    v38 = OUTLINED_FUNCTION_70();
    (v27)(v38);
    v36 = 0;
LABEL_17:
    v39 = v0[24];
    v40 = v0[21];
    OUTLINED_FUNCTION_36_42(v0[22], v36);
    v41 = OUTLINED_FUNCTION_16_75();
    sub_1D4F39A1C(v41, v42, v43, &qword_1D56250F0);
    sub_1D4F39AB0(v39, v40, &unk_1EC7F2BE0, &qword_1D56250F0);
    LODWORD(v39) = OUTLINED_FUNCTION_37_34();
    sub_1D4E50004(v40, &unk_1EC7F2BE0, &qword_1D56250F0);
  }

  while (v39 != 1);
  v44 = swift_task_alloc();
  v0[32] = v44;
  OUTLINED_FUNCTION_13_76();
  sub_1D52EB5B0(v45, v46, MEMORY[0x1E6977330]);
  *v44 = v0;
  OUTLINED_FUNCTION_10_87();
  OUTLINED_FUNCTION_341();

  return MEMORY[0x1EEDCE948](v47, v48, v49, v50, v51);
}

uint64_t sub_1D52EA834()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52EA938()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 88);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1D560D9F8();
    OUTLINED_FUNCTION_10(v2);
    if (!v27)
    {
      sub_1D4E50004(*(v0 + 88), &qword_1EC7EC450, &unk_1D5621060);
    }
  }

  else
  {
    (*(*(v0 + 208) + 32))(*(v0 + 216), v2, v1);
  }

  v3 = *(v0 + 208);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  sub_1D560DA48();
  (*(v3 + 8))(v4, v5);
  v56 = (v0 + 192);
  do
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 120);
    OUTLINED_FUNCTION_102();
    sub_1D4F39AB0(v8, v9, v10, &qword_1D56250F0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_1D4E50004(*v56, &unk_1EC7F2BE0, &qword_1D56250F0);
      v49 = v0 + 184;
      goto LABEL_26;
    }

    sub_1D4E50004(*(v0 + 184), &unk_1EC7F2BE0, &qword_1D56250F0);
    if ((sub_1D560DA08() & 1) == 0)
    {
      v49 = v0 + 192;
LABEL_26:
      v50 = OUTLINED_FUNCTION_42_36(v49);
      sub_1D4E50004(v50, &unk_1EC7F2BE0, &qword_1D56250F0);
      v51 = OUTLINED_FUNCTION_16_75();
      v52(v51);
      OUTLINED_FUNCTION_20_65();

      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_341();

      __asm { BRAA            X1, X16 }
    }

    v11 = *(v0 + 152);
    v12 = *(v0 + 160);
    (*(v0 + 240))(*(v0 + 224), *(v0 + 232), *(v0 + 200));
    OUTLINED_FUNCTION_163_0();
    sub_1D4E62A60(&qword_1EDD53B90, &unk_1EC7F6A30, &qword_1D561C4C0, v13);
    v57 = v12;
    sub_1D5614F98();
    v14 = *(v11 + 36);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_12_34();
    sub_1D4E62A60(v15, v16, v17, v18);
    while (1)
    {
      sub_1D5615648();
      if (*(v57 + v14) == *(v0 + 48))
      {
        v31 = *v56;
        sub_1D4E50004(*(v0 + 160), &qword_1EC7ECEA0, &qword_1D5666390);
        sub_1D4E50004(v31, &unk_1EC7F2BE0, &qword_1D56250F0);
        v32 = 1;
        goto LABEL_20;
      }

      v19 = *(v0 + 144);
      v20 = *(v0 + 120);
      v21 = *(v0 + 128);
      v60 = *(v0 + 72);
      v58 = *(v0 + 136);
      v59 = *(v0 + 64);
      v22 = sub_1D5615688();
      (*(v21 + 16))(v19);
      v22(v0 + 16, 0);
      sub_1D5615658();
      v23 = *(v21 + 32);
      v23(v58, v19, v20);
      v24 = sub_1D560EC18();
      v26 = v25;
      v27 = v24 == v59 && v60 == v25;
      if (v27)
      {
        break;
      }

      v28 = sub_1D5616168();

      if (v28)
      {
        goto LABEL_19;
      }

      sub_1D560EC98();
      v26 = sub_1D560D788();
      v29 = OUTLINED_FUNCTION_70();
      v30(v29);
      if (v26)
      {
        goto LABEL_19;
      }

      (*(*(v0 + 128) + 8))(*(v0 + 136), *(v0 + 120));
    }

LABEL_19:
    v33 = OUTLINED_FUNCTION_35_47();
    sub_1D4E50004(v33, &qword_1EC7ECEA0, &qword_1D5666390);
    sub_1D4E50004(v26, &unk_1EC7F2BE0, &qword_1D56250F0);
    v34 = OUTLINED_FUNCTION_70();
    (v23)(v34);
    v32 = 0;
LABEL_20:
    v35 = *(v0 + 192);
    v36 = *(v0 + 168);
    OUTLINED_FUNCTION_36_42(*(v0 + 176), v32);
    v37 = OUTLINED_FUNCTION_16_75();
    sub_1D4F39A1C(v37, v38, v39, &qword_1D56250F0);
    sub_1D4F39AB0(v35, v36, &unk_1EC7F2BE0, &qword_1D56250F0);
    LODWORD(v35) = OUTLINED_FUNCTION_37_34();
    sub_1D4E50004(v36, &unk_1EC7F2BE0, &qword_1D56250F0);
  }

  while (v35 != 1);
  v40 = swift_task_alloc();
  *(v0 + 256) = v40;
  OUTLINED_FUNCTION_13_76();
  sub_1D52EB5B0(v41, v42, MEMORY[0x1E6977330]);
  *v40 = v0;
  OUTLINED_FUNCTION_10_87();
  OUTLINED_FUNCTION_341();

  return MEMORY[0x1EEDCE948](v43, v44, v45, v46, v47);
}

uint64_t sub_1D52EAEE8()
{
  v1 = v0[29];
  v2 = v0[26];
  v3 = v0[25];
  sub_1D4E50004(v0[24], &unk_1EC7F2BE0, &qword_1D56250F0);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_55();

  return v4();
}

void static MusicShareableItemRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1D560BFB8())
  {
    v4 = type metadata accessor for MusicShareableItemRequest(0);
    if (_s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0())
    {
      v5 = *(v4 + 24);
      v6 = *(a1 + v5);
      v7 = *(a2 + v5);
      if (v6 == 4)
      {
        if (v7 != 4)
        {
          return;
        }
      }

      else if (v6 != v7)
      {
        return;
      }

      sub_1D4EFBD24();
    }
  }
}

void MusicShareableItemRequest.hash(into:)()
{
  OUTLINED_FUNCTION_64_1();
  sub_1D560C0A8();
  sub_1D52EB5B0(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1D5614CB8();
  v2 = type metadata accessor for MusicShareableItemRequest(0);
  sub_1D560CD48();
  sub_1D52EB5B0(&qword_1EC7EA848, MEMORY[0x1E6974D20], MEMORY[0x1E6974D28]);
  sub_1D5614CB8();
  v3 = *(v1 + *(v2 + 24));
  sub_1D56162F8();
  if (v3 != 4)
  {
    MEMORY[0x1DA6EC0D0](v3);
  }

  v4 = *(v1 + *(v2 + 28));

  sub_1D4F09F48(v0, v4);
}

uint64_t MusicShareableItemRequest.hashValue.getter()
{
  sub_1D56162D8();
  MusicShareableItemRequest.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D52EB244(uint64_t a1)
{
  sub_1D56162D8();
  MusicShareableItemRequest.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D52EB280()
{
  type metadata accessor for MusicShareableItem(0);
  swift_getKeyPath();
  sub_1D560CDE8();
  sub_1D560CDC8();
  sub_1D52EB5B0(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  v0 = sub_1D560D138();

  return v0;
}

void sub_1D52EB3F8(uint64_t a1)
{
  sub_1D560C0A8();
  if (v1 <= 0x3F)
  {
    sub_1D560CD48();
    if (v2 <= 0x3F)
    {
      sub_1D4EF1C68();
      if (v3 <= 0x3F)
      {
        sub_1D52EB4AC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D52EB4AC(uint64_t a1)
{
  if (!qword_1EC7F3B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EAF10, &qword_1D561DCE0);
    v1 = sub_1D56152D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7F3B50);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  OUTLINED_FUNCTION_25_0();
  if ((*(v2 + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v3;
  }

  return a1;
}

uint64_t sub_1D52EB5B0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_20_65()
{
}

uint64_t OUTLINED_FUNCTION_37_34()
{

  return __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t sub_1D52EB690()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0148, &unk_1D5636140);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v8 - v2;
  type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  v4 = OUTLINED_FUNCTION_3_133();
  sub_1D4E69970(v0 + *(v4 + 76), v3, &qword_1EC7F0148, &unk_1D5636140);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F3B80, qword_1D5636170);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    sub_1D4E50004(v3, &qword_1EC7F0148, &unk_1D5636140);
    return 0;
  }

  else
  {
    sub_1D5612858();
    v6 = v8[1];
    (*(*(v5 - 8) + 8))(v3, v5);
  }

  return v6;
}

uint64_t InternalMusicPlayer.Queue.Entry.item.getter()
{
  OUTLINED_FUNCTION_8_95();
  v0 = OUTLINED_FUNCTION_3_133();
  return OUTLINED_FUNCTION_7_100(&qword_1EC7F0140, &qword_1D5636130, *(v0 + 20));
}

uint64_t InternalMusicPlayer.Queue.Entry.container.getter()
{
  OUTLINED_FUNCTION_8_95();
  v0 = OUTLINED_FUNCTION_3_133();
  return OUTLINED_FUNCTION_7_100(&unk_1EC7F1280, &qword_1D5636138, *(v0 + 24));
}

uint64_t InternalMusicPlayer.Queue.Entry.title.getter()
{
  type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  OUTLINED_FUNCTION_1_134();

  return OUTLINED_FUNCTION_71();
}

uint64_t InternalMusicPlayer.Queue.Entry.subtitle.getter()
{
  type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  OUTLINED_FUNCTION_1_134();

  return OUTLINED_FUNCTION_71();
}

uint64_t InternalMusicPlayer.Queue.Entry.artwork.getter()
{
  OUTLINED_FUNCTION_8_95();
  v0 = OUTLINED_FUNCTION_3_133();
  return OUTLINED_FUNCTION_7_100(&qword_1EC7E9CA0, &unk_1D561A0C0, *(v0 + 40));
}

uint64_t InternalMusicPlayer.Queue.Entry.transientItem.getter()
{
  OUTLINED_FUNCTION_8_95();
  v0 = OUTLINED_FUNCTION_3_133();
  return OUTLINED_FUNCTION_7_100(&unk_1EC7F65C0, &qword_1D562E6B0, *(v0 + 60));
}

BOOL InternalMusicPlayer.Queue.Entry.isTransient.getter()
{
  v1 = v0 + *(type metadata accessor for InternalMusicPlayer.Queue.Entry(0) + 20);
  v2 = _s21EntryPropertyProviderVMa(0);
  sub_1D4E69970(v1 + *(v2 + 60), v5, &unk_1EC7F65C0, &qword_1D562E6B0);
  v3 = v6 != 0;
  sub_1D4E50004(v5, &unk_1EC7F65C0, &qword_1D562E6B0);
  return v3;
}

uint64_t static InternalMusicPlayer.Queue.Entry.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for InternalMusicPlayer.Queue.Entry(0) + 20);

  return sub_1D5104E50((a1 + v5), (a2 + v5));
}

uint64_t InternalMusicPlayer.Queue.Entry.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  return sub_1D5105370(a1);
}

uint64_t InternalMusicPlayer.Queue.Entry.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for InternalMusicPlayer.Queue.Entry(0);
  sub_1D5105370(v1);
  return sub_1D5616328();
}

uint64_t sub_1D52EBC30(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5105370(v2);
  return sub_1D5616328();
}

uint64_t sub_1D52EBC84@<X0>(uint64_t *a1@<X8>)
{
  result = InternalMusicPlayer.Queue.Entry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t InternalMusicPlayer.Queue.Entry.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1280, &qword_1D5636138);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v27 - v2;
  v28 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Container(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0140, &qword_1D5636130);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for InternalMusicPlayer.Queue.Entry.Item(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0xD000000000000020;
  v31 = 0x80000001D568A530;
  v29[0] = 0x22203A6469;
  v29[1] = 0xE500000000000000;
  MEMORY[0x1DA6EAC70](*v0, v0[1]);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  OUTLINED_FUNCTION_4_99();

  v13 = v0 + *(type metadata accessor for InternalMusicPlayer.Queue.Entry(0) + 20);
  v14 = _s21EntryPropertyProviderVMa(0);
  sub_1D4E69970(&v13[v14[5]], v8, &qword_1EC7F0140, &qword_1D5636130);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1D4E50004(v8, &qword_1EC7F0140, &qword_1D5636130);
    strcpy(v29, ", title: ");
    BYTE3(v29[1]) = 0;
    HIDWORD(v29[1]) = -369098752;
    v15 = &v13[v14[11]];
    v16 = *(v15 + 1);
    if (v16)
    {
      v17 = *v15;
    }

    else
    {
      v17 = 0;
    }

    if (v16)
    {
      v18 = *(v15 + 1);
    }

    else
    {
      v18 = 0xE000000000000000;
    }

    MEMORY[0x1DA6EAC70](v17, v18);

    MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
    OUTLINED_FUNCTION_4_99();

    v19 = &v13[v14[12]];
    v20 = *(v19 + 1);
    if (v20)
    {
      v21 = *v19;
      v29[0] = 0;
      v29[1] = 0xE000000000000000;
      sub_1D5615B68();

      strcpy(v29, ", subtitle: ");
      HIWORD(v29[1]) = -4864;
      MEMORY[0x1DA6EAC70](v21, v20);
      MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
      OUTLINED_FUNCTION_4_99();
    }
  }

  else
  {
    sub_1D52EC1E4(v8, v12, type metadata accessor for InternalMusicPlayer.Queue.Entry.Item);
    strcpy(v29, ", item = ");
    WORD1(v29[1]) = 0;
    HIDWORD(v29[1]) = -385875968;
    sub_1D5007EC4();
    MEMORY[0x1DA6EAC70]();

    OUTLINED_FUNCTION_4_99();

    sub_1D4E69970(&v13[v14[6]], v3, &unk_1EC7F1280, &qword_1D5636138);
    if (__swift_getEnumTagSinglePayload(v3, 1, v28) == 1)
    {
      OUTLINED_FUNCTION_2_129();
      sub_1D4E50004(v3, &unk_1EC7F1280, &qword_1D5636138);
    }

    else
    {
      v22 = v3;
      v23 = v27;
      sub_1D52EC1E4(v22, v27, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
      v29[0] = 0;
      v29[1] = 0xE000000000000000;
      sub_1D5615B68();

      strcpy(v29, ", container = ");
      HIBYTE(v29[1]) = -18;
      sub_1D522F1B8();
      MEMORY[0x1DA6EAC70]();

      OUTLINED_FUNCTION_4_99();

      sub_1D52EC240(v23, type metadata accessor for InternalMusicPlayer.Queue.Entry.Container);
      OUTLINED_FUNCTION_2_129();
    }
  }

  if ((v13[v14[7] + 8] & 1) == 0)
  {
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    v24.n128_f64[0] = MEMORY[0x1DA6EAC70](0x547472617473202CLL, 0xED0000203A656D69);
    OUTLINED_FUNCTION_6_100(v24);
    MEMORY[0x1DA6EAC70](v29[0], v29[1]);

    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    v25.n128_f64[0] = MEMORY[0x1DA6EAC70](0x6D6954646E65202CLL, 0xEB00000000203A65);
    OUTLINED_FUNCTION_6_100(v25);
    MEMORY[0x1DA6EAC70](v29[0], v29[1]);
  }

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return v30;
}

uint64_t sub_1D52EC1E4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D52EC240(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D52EC29C()
{
  result = qword_1EC7F3B70;
  if (!qword_1EC7F3B70)
  {
    type metadata accessor for InternalMusicPlayer.Queue.Entry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3B70);
  }

  return result;
}

id Playlist.Collaborator.Status.init(legacyModelRawValue:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [objc_opt_self() collaboratorStatusForRawValue_];
  v4 = 0x1030204uLL >> (8 * result);
  if (result >= 5)
  {
    LOBYTE(v4) = 2;
  }

  *a2 = v4;
  return result;
}

Swift::Int __swiftcall Playlist.Collaborator.Status.convertToLegacyModelRawValue()()
{
  v1 = qword_1D56507D8[*v0];
  v2 = objc_opt_self();

  return [v2 rawValueForCollaboratorStatus_];
}

unint64_t Playlist.Collaborator.LegacyModelPlaylistAuthorPropertyKey.rawValue.getter()
{
  result = 0xD00000000000002ELL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000021;
      break;
    case 2:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D52EC44C()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7F3B90);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F3B90);
  v2 = *MEMORY[0x1E6976800];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static Playlist.Collaborator.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E9410 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  v3 = __swift_project_value_buffer(v2, qword_1EC7F3B90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Playlist.Collaborator.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v101 = a1;
  v93 = a4;
  v100 = sub_1D5612B88();
  OUTLINED_FUNCTION_4();
  v106 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v92 = v9 - v8;
  v10 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v111 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v108 = v14 - v13;
  v99 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v98 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v107 = (v18 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F78, &unk_1D561B970);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v112 = &v90 - v20;
  v96 = type metadata accessor for PlaylistCollaboratorPropertyProvider(0);
  OUTLINED_FUNCTION_14();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v104 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v110 = &v90 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v90 - v29;
  v91 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v90 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v35 = v34 - v33;

  v94 = a2;
  sub_1D560F7E8();
  v109 = sub_1D52ED3FC();
  v105 = sub_1D5614C68();

  sub_1D560FF18();
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v10);
  sub_1D560FF18();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v10);
  v97 = v35;
  v36 = v101;
  sub_1D560D4D8();
  sub_1D4E50004(v28, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v30, &qword_1EC7EA358, &unk_1D561DF50);
  v95 = a3;
  sub_1D4EC76A8(a3, v113);
  if (!v114)
  {
    sub_1D4E50004(v113, &qword_1EC7EEC40, &unk_1D561C070);
    v115 = 0u;
    v116 = 0u;
    v117 = 0;
LABEL_8:
    v37 = v96;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v117 = 0;
    v115 = 0u;
    v116 = 0u;
    goto LABEL_8;
  }

  v37 = v96;
  if (!*(&v116 + 1))
  {
LABEL_9:
    sub_1D4E50004(&v115, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_10;
  }

  sub_1D4E48324(&v115, &v118);
  __swift_project_boxed_opaque_existential_1(&v118, v119);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v38 = v112;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v37);
    v39 = v104;
    sub_1D4EC568C(v38, v104);
    v40 = v110;
    sub_1D52EE3EC(v39, v110, type metadata accessor for PlaylistCollaboratorPropertyProvider);
    v41 = v107;
    sub_1D560D718();
    (*(v98 + 40))(v40 + v37[14], v41, v99);
    v42 = v108;
    sub_1D5612468();
    (*(v111 + 40))(v40 + v37[15], v42, v10);
    v43 = sub_1D5612458();
    v45 = v44;
    sub_1D52EE44C(v39, type metadata accessor for PlaylistCollaboratorPropertyProvider);
    v46 = (v40 + v37[16]);

    *v46 = v43;
    v46[1] = v45;
    __swift_destroy_boxed_opaque_existential_1(&v118);
    goto LABEL_15;
  }

  __swift_storeEnumTagSinglePayload(v38, 1, 1, v37);
  sub_1D4E50004(v38, &qword_1EC7E9F78, &unk_1D561B970);
  __swift_destroy_boxed_opaque_existential_1(&v118);
LABEL_10:
  v47 = sub_1D56140F8();
  v48 = v110;
  __swift_storeEnumTagSinglePayload(v110, 1, 1, v47);
  v49 = v37[11];
  v50 = sub_1D560C0A8();
  __swift_storeEnumTagSinglePayload(v48 + v49, 1, 1, v50);
  (*(v98 + 16))(v48 + v37[14], v36, v99);
  sub_1D5612468();
  v51 = sub_1D5612458();
  v53 = v52;
  sub_1D5614A88();
  v112 = OUTLINED_FUNCTION_3_134();
  v54 = OUTLINED_FUNCTION_3_134();
  v55 = OUTLINED_FUNCTION_3_134();
  v56 = OUTLINED_FUNCTION_3_134();
  v57 = (v48 + v37[5]);
  *v57 = 0;
  v57[1] = 0;
  *(v48 + v37[6]) = 2;
  *(v48 + v37[7]) = 2;
  *(v48 + v37[8]) = 2;
  *(v48 + v37[9]) = 2;
  v58 = (v48 + v37[10]);
  *v58 = 0;
  v58[1] = 0;
  *(v48 + v37[12]) = 2;
  if (qword_1EC7E8960 != -1)
  {
    swift_once();
  }

  v59 = qword_1EC87BE40;
  if (qword_1EC87BE40 >> 62)
  {
    sub_1D560CDE8();

    v89 = sub_1D5615E18();

    v59 = v89;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v60 = v110;
  *(v110 + v37[13]) = v59;
  v61 = (v60 + v37[16]);
  *v61 = v51;
  v61[1] = v53;
  *(v60 + v37[17]) = v112;
  *(v60 + v37[18]) = v54;
  *(v60 + v37[19]) = v55;
  *(v60 + v37[20]) = v56;
LABEL_15:
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_175();
  v62 = type metadata accessor for SocialProfile(0);
  LOBYTE(v115) = 0;
  LODWORD(v112) = *MEMORY[0x1E6976668];
  v63 = v106;
  v64 = *(v106 + 104);
  v65 = v92;
  v66 = v100;
  v64(v92);
  v108 = v63 + 104;
  v102 = v64;
  v67 = sub_1D52EE3A4(&qword_1EC7E9D70, type metadata accessor for PlaylistCollaboratorPropertyProvider, &unk_1D561B7B4);
  v104 = sub_1D52EE3A4(&qword_1EC7EE040, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
  v103 = v67;
  OUTLINED_FUNCTION_5_101();
  OUTLINED_FUNCTION_8_96();
  v111 = v62;
  sub_1D5610D38();
  OUTLINED_FUNCTION_7_101();
  v68 = v63 + 8;
  v107 = *(v63 + 8);
  v107(v65, v66);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_175();
  v69 = OUTLINED_FUNCTION_6_101(1);
  v70 = v112;
  (v64)(v69, v112, v66);
  OUTLINED_FUNCTION_5_101();
  sub_1D5610D48();
  OUTLINED_FUNCTION_7_101();
  v71 = v107;
  v107(v65, v66);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_175();
  v72 = OUTLINED_FUNCTION_6_101(2);
  v73 = v70;
  v74 = v102;
  (v102)(v72, v73, v66);
  OUTLINED_FUNCTION_5_101();
  OUTLINED_FUNCTION_9_91();
  sub_1D5610D48();
  OUTLINED_FUNCTION_7_101();
  v71(v65, v66);
  v106 = v68;
  swift_getKeyPath();
  LOBYTE(v118) = 0;
  (v74)(v65, v112, v66);
  v75 = v110;
  sub_1D5610D68();

  v107(v65, v66);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_175();
  v77 = OUTLINED_FUNCTION_6_101(v76);
  v78 = v112;
  (v74)(v77, v112, v66);
  OUTLINED_FUNCTION_5_101();
  OUTLINED_FUNCTION_9_91();
  sub_1D5610D48();
  OUTLINED_FUNCTION_7_101();
  v79 = v107;
  v107(v65, v66);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_175();
  v80 = OUTLINED_FUNCTION_6_101(4);
  v81 = v78;
  v82 = v102;
  (v102)(v80, v81, v66);
  OUTLINED_FUNCTION_5_101();
  OUTLINED_FUNCTION_8_96();
  OUTLINED_FUNCTION_9_91();
  sub_1D5610D48();
  OUTLINED_FUNCTION_7_101();
  v83 = v100;
  v79(v65, v100);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_175();
  v84 = OUTLINED_FUNCTION_6_101(5);
  (v82)(v84, v112, v83);
  OUTLINED_FUNCTION_5_101();
  OUTLINED_FUNCTION_9_91();
  sub_1D5610D48();
  OUTLINED_FUNCTION_7_101();
  v85 = v107;
  v107(v65, v83);
  swift_getKeyPath();
  LOBYTE(v118) = 1;
  (v102)(v65, v112, v83);
  sub_1D52ED450();
  v86 = v103;
  sub_1D5610D88();

  v85(v65, v83);
  v119 = v96;
  v120 = v86;
  v87 = __swift_allocate_boxed_opaque_existential_0(&v118);
  sub_1D52EE3EC(v75, v87, type metadata accessor for PlaylistCollaboratorPropertyProvider);
  Playlist.Collaborator.init(propertyProvider:)(&v118, v93);
  swift_unknownObjectRelease();
  sub_1D4E50004(v95, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v98 + 8))(v101, v99);
  (*(v90 + 8))(v97, v91);
  return sub_1D52EE44C(v75, type metadata accessor for PlaylistCollaboratorPropertyProvider);
}

unint64_t sub_1D52ED3FC()
{
  result = qword_1EC7F3BA8;
  if (!qword_1EC7F3BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3BA8);
  }

  return result;
}

unint64_t sub_1D52ED450()
{
  result = qword_1EC7F3BB0;
  if (!qword_1EC7F3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3BB0);
  }

  return result;
}

id sub_1D52ED6E0()
{
  v1 = sub_1D56131C8();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v48 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v39 - v4;
  v43 = type metadata accessor for SocialProfile(0);
  v5 = MEMORY[0x1EEE9AC00](v43);
  v45 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = (&v39 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v41 = &v39 - v9;
  v10 = type metadata accessor for SocialProfilePropertyProvider(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v42 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v40 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v40);
  v15 = v10[10];
  v16 = sub_1D560C0A8();
  __swift_storeEnumTagSinglePayload(&v14[v15], 1, 1, v16);
  type metadata accessor for Playlist.Collaborator(0);
  sub_1D52EE3A4(&unk_1EDD52D30, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v44 = v0;
  sub_1D560EC98();
  sub_1D560FF18();
  sub_1D5614A88();
  v39 = sub_1D5614BD8();
  v17 = sub_1D5614BD8();
  v18 = sub_1D5614BD8();
  v19 = sub_1D5614BD8();
  if (qword_1EDD54CF8 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDD76B58;
  if (qword_1EDD76B58 >> 62)
  {
    sub_1D560CDE8();

    v38 = sub_1D5615E18();

    v20 = v38;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v21 = v10[5];
  *&v14[v10[11]] = v20;
  v22 = &v14[v10[14]];
  *v22 = 0;
  *(v22 + 1) = 0;
  *&v14[v10[15]] = v39;
  *&v14[v10[16]] = v17;
  *&v14[v10[17]] = v18;
  *&v14[v10[18]] = v19;
  if (qword_1EC7E9430 != -1)
  {
    swift_once();
  }

  sub_1D52EE3A4(&qword_1EC7F3BB8, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
  v23 = v41;
  sub_1D560EC28();
  sub_1D52EE334(v23, v14);
  if (qword_1EC7E9438 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  *&v14[v21] = v51;
  if (qword_1EC7E9440 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v24 = v10[7];
  v26 = v10[8];
  v25 = v10[9];
  v14[v10[6]] = v51 & 1;
  if (qword_1EC7E9450 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v14[v24] = v51;
  if (qword_1EC7E9458 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v14[v26] = v51;
  if (qword_1EC7E9460 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  *&v14[v25] = v51;
  v27 = v42;
  sub_1D52EE3EC(v14, v42, type metadata accessor for SocialProfilePropertyProvider);
  v28 = sub_1D560D708();
  v29 = v46;
  *v46 = v28;
  *(v29 + 8) = v30;
  sub_1D52EE3A4(&qword_1EDD54CF0, type metadata accessor for SocialProfilePropertyProvider, &unk_1D5633BA0);
  sub_1D5610D28();
  sub_1D52EE44C(v27, type metadata accessor for SocialProfilePropertyProvider);
  v32 = v49;
  v31 = v50;
  v33 = v47;
  (*(v49 + 104))(v47, *MEMORY[0x1E6976988], v50);
  (*(v32 + 16))(v48, v33, v31);
  sub_1D52EE3EC(v29, v45, type metadata accessor for SocialProfile);
  sub_1D4ECAE94();
  v35 = v34;
  (*(v32 + 8))(v33, v31);
  v36 = [v35 underlyingObject];

  sub_1D52EE44C(v29, type metadata accessor for SocialProfile);
  sub_1D52EE44C(v14, type metadata accessor for SocialProfilePropertyProvider);
  return v36;
}

uint64_t Playlist.Collaborator.LegacyModelPlaylistAuthorPropertyKey.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D5615EF8();

  v6 = 4;
  if (v4 < 4)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t sub_1D52EDF54@<X0>(unint64_t *a1@<X8>)
{
  result = Playlist.Collaborator.LegacyModelPlaylistAuthorPropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Playlist.Collaborator.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E6976800];
  sub_1D5613158();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1D52EDFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D52EE3A4(&qword_1EC7F3520, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D52EE0A0(uint64_t a1, uint64_t a2)
{
  sub_1D52EE3A4(qword_1EC7F3BD0, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);

  return sub_1D56132F8();
}

Swift::Int sub_1D52EE130@<X0>(Swift::Int *a1@<X8>)
{
  result = Playlist.Collaborator.Status.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

unint64_t sub_1D52EE15C()
{
  result = qword_1EC7F3BC0;
  if (!qword_1EC7F3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3BC0);
  }

  return result;
}

unint64_t sub_1D52EE1B8()
{
  result = qword_1EC7F3BC8;
  if (!qword_1EC7F3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3BC8);
  }

  return result;
}

_BYTE *_s36LegacyModelPlaylistAuthorPropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D52EE334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52EE3A4(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D52EE3EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D52EE44C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D52EE4EC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
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

uint64_t sub_1D52EE574(void *a1, void *a2)
{
  v3 = a2[3];
  v11 = a2[2];
  _s12CodableValueV10CodingKeysOMa(255, v11, v3, a2[4]);
  OUTLINED_FUNCTION_0_176();
  swift_getWitnessTable();
  v4 = sub_1D56160D8();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163D8();
  sub_1D56160C8();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1D52EE6D0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a5;
  OUTLINED_FUNCTION_1_0();
  v37 = v9;
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s12CodableValueV10CodingKeysOMa(255, v12, v13, v14);
  OUTLINED_FUNCTION_0_176();
  swift_getWitnessTable();
  v40 = sub_1D5616008();
  OUTLINED_FUNCTION_1_0();
  v35 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v36 = a2;
  v38 = a3;
  v19 = _s12CodableValueVMa(0, a2, a3, a4);
  OUTLINED_FUNCTION_1_0();
  v33 = v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v24 = v41;
  sub_1D5616398();
  if (!v24)
  {
    v32 = v23;
    v41 = v19;
    v26 = v35;
    v25 = v36;
    v27 = v37;
    v28 = v39;
    sub_1D5615FD8();
    (*(v26 + 8))(v18, v40);
    v29 = v32;
    (*(v27 + 32))(v32, v28, v25);
    (*(v33 + 32))(v34, v29, v41);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D52EE9BC(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4EA72F0();
  return sub_1D5616328();
}

uint64_t sub_1D52EEA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D52EE4EC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D52EEA74@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_53_0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D52EEAAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D52EEB00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_1D52EEBC4(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D52EEBBC(v5, a1, a2);
  return sub_1D5616328();
}

uint64_t sub_1D52EEC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_1D56162D8();
  sub_1D52EEBBC(v6, a2, v4);
  return sub_1D5616328();
}

uint64_t sub_1D52EEC8C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D52EECFC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_1D52EEE38(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1D52EF058()
{
  result = qword_1EC7F3C58[0];
  if (!qword_1EC7F3C58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC7F3C58);
  }

  return result;
}

uint64_t sub_1D52EF0C4(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

_BYTE *sub_1D52EF15C(_BYTE *result, int a2, int a3)
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

uint64_t sub_1D52EF24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D52EF264()
{
  v1 = v0[3];
  if ((v0[4] & 0x8000000000000000) != 0)
  {
    v6 = swift_task_alloc();
    v0[8] = v6;
    *v6 = v0;
    v6[1] = sub_1D52EF4B4;
    v7 = v0[2];

    return sub_1D54F1FF0(v7);
  }

  else
  {
    v2 = v0[2];
    v3 = swift_task_alloc();
    v0[5] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = OUTLINED_FUNCTION_10_88();
    v0[6] = v4;
    *v4 = v0;
    v4[1] = sub_1D52EF3B0;

    return v8();
  }
}

uint64_t sub_1D52EF3B0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = sub_1D52EF598;
  }

  else
  {

    v7 = j__OUTLINED_FUNCTION_1_18;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D52EF4B4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D52EF598()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D52EF5F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1D4E6ED20;

  return sub_1D54F2224(a3);
}

uint64_t sub_1D52EF690()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_50_1(v1);

  return sub_1D52EF5F4(v3, v4, v5);
}

uint64_t sub_1D52EF728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D52EF740()
{
  v1 = v0[16];
  if ((v0[17] & 0x8000000000000000) != 0)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[21] = v7;
    *v7 = v8;
    v7[1] = sub_1D52EF9C8;
    v9 = v0[15];

    return sub_1D54F2320((v0 + 2), v9);
  }

  else
  {
    v2 = v0[15];
    v3 = swift_task_alloc();
    v0[18] = v3;
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    OUTLINED_FUNCTION_10_88();
    OUTLINED_FUNCTION_58();
    v0[19] = v4;
    *v4 = v5;
    v4[1] = sub_1D52EF890;

    return v10(v0 + 8, &unk_1D5650AD0, v3);
  }
}

uint64_t sub_1D52EF890()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 160) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D52AEB20, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_7_102(*(v3 + 112), *(v3 + 72), *(v3 + 88));
    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D52EF9C8()
{
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (!v0)
  {
    OUTLINED_FUNCTION_7_102(*(v3 + 112), *(v3 + 24), *(v3 + 40));
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_1D52EFAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  v5 = swift_task_alloc();
  *(v3 + 72) = v5;
  *v5 = v3;
  v5[1] = sub_1D52EFB78;

  return sub_1D54F22F0(v3 + 16, a3);
}

uint64_t sub_1D52EFB78()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_55();

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D52EFC94, 0, 0);
  }
}

uint64_t sub_1D52EFC94()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  *(v1 + 25) = *(v0 + 41);
  *v1 = v2;
  v1[1] = v3;
  return OUTLINED_FUNCTION_1_18();
}

uint64_t sub_1D52EFCAC()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_50_1(v1);

  return sub_1D52EFAD0(v3, v4, v5);
}

BOOL sub_1D52EFD44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1D52EFD70(char a1)
{
  if (a1)
  {
    return 0x697257646165722ELL;
  }

  else
  {
    return 0x6C6E4F646165722ELL;
  }
}

uint64_t sub_1D52EFDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = *v3;
  return OUTLINED_FUNCTION_4_100(sub_1D52EFDF4);
}

uint64_t sub_1D52F0064()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (!v0)
  {
    OUTLINED_FUNCTION_80_13();

    v8 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  return result;
}

uint64_t sub_1D52F0160()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (!v0)
  {
    OUTLINED_FUNCTION_7_102(*(v3 + 136), *(v3 + 72), *(v3 + 88));
  }

  OUTLINED_FUNCTION_71_0();

  return v7();
}

uint64_t sub_1D52F025C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v10 + 208) = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_13_77(v11);

  return sub_1D52F5AB4(v13, v14, v15);
}

uint64_t sub_1D52F02E0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (!v0)
  {
    OUTLINED_FUNCTION_7_102(*(v3 + 136), *(v3 + 24), *(v3 + 40));
  }

  OUTLINED_FUNCTION_71_0();

  return v7();
}

uint64_t sub_1D52F03DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = *v3;
  return OUTLINED_FUNCTION_4_100(sub_1D52F0420);
}

void sub_1D52F0420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_89_16();
  OUTLINED_FUNCTION_160();
  v13 = v12[8];
  v14 = *(v13 + 136);
  if (v14 == *(v13 + 128))
  {
    OUTLINED_FUNCTION_6_102();
    OUTLINED_FUNCTION_57_30();
LABEL_8:
    OUTLINED_FUNCTION_28_6(v15, v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_77_16();
    return;
  }

  OUTLINED_FUNCTION_56_28();
  if (v31 != v32)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v14 < v30)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14 >= v29)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    MEMORY[0x1EEE6DE48](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
    return;
  }

  *(v13 + 136) = v14 + 1;
  v33 = sub_1D552E500();
  OUTLINED_FUNCTION_17_67(v33);
  if (v13)
  {
    v35 = v12[8];
    v34 = v12[9];
    OUTLINED_FUNCTION_29_48();
    v12[2] = a11;
    v12[3] = a12;
    OUTLINED_FUNCTION_12_74();
    MEMORY[0x1DA6EAC70](0xD000000000000015);
    v12[4] = v35;
    v36 = MEMORY[0x1E69E5FE0];
    sub_1D5615D48();
    v37 = OUTLINED_FUNCTION_23_57();
    MEMORY[0x1DA6EAC70](v37);
    sub_1D552E500();
    OUTLINED_FUNCTION_73_20();
    OUTLINED_FUNCTION_41_39();
    MEMORY[0x1DA6EAC70](v34, v36);

    OUTLINED_FUNCTION_85_18();
    v15 = "Fatal error";
    v20 = "MusicKitInternal/ActorQueue.swift";
    goto LABEL_8;
  }

  v38 = v12[8];
  if ((*(v38 + 152) & 1) == 0)
  {
    v45 = swift_task_alloc();
    v12[10] = v45;
    *(v45 + 16) = v14;
    *(v45 + 24) = v38;
    v46 = swift_task_alloc();
    v12[11] = v46;
    *(v46 + 16) = v38;
    *(v46 + 24) = v14;
    OUTLINED_FUNCTION_0_177();
    sub_1D52F84F4(v47, v48, &unk_1D5671394);
    v49 = swift_task_alloc();
    v12[12] = v49;
    *v49 = v12;
    v49[1] = sub_1D52F06F0;
    OUTLINED_FUNCTION_7_103();
    OUTLINED_FUNCTION_64_23();

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_53_29();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v12[13] = v39;
  *v39 = v40;
  OUTLINED_FUNCTION_81_23(v39);
  OUTLINED_FUNCTION_77_16();

  sub_1D52F5E78(v41, v42, v43);
}

uint64_t sub_1D52F06F0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (!v0)
  {

    v8 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  return result;
}

uint64_t sub_1D52F07F4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D52F08D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v10 + 112) = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_81_23(v11);

  return sub_1D52F5E78(v13, v14, v15);
}

uint64_t sub_1D52F0958(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1D52F09A4, v2, 0);
}

void sub_1D52F09A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_89_16();
  OUTLINED_FUNCTION_160();
  v13 = v12[7];
  v14 = *(v13 + 136);
  if (v14 == *(v13 + 128))
  {
    OUTLINED_FUNCTION_6_102();
    OUTLINED_FUNCTION_57_30();
LABEL_8:
    OUTLINED_FUNCTION_28_6(v15, v16, v17, v18, v19, v20);
    OUTLINED_FUNCTION_77_16();
    return;
  }

  OUTLINED_FUNCTION_56_28();
  if (v31 != v32)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v14 < v30)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14 >= v29)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    MEMORY[0x1EEE6DE48](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
    return;
  }

  *(v13 + 136) = v14 + 1;
  v33 = sub_1D552E500();
  OUTLINED_FUNCTION_17_67(v33);
  if (v13)
  {
    v35 = v12[7];
    v34 = v12[8];
    OUTLINED_FUNCTION_29_48();
    v12[2] = a11;
    v12[3] = a12;
    OUTLINED_FUNCTION_12_74();
    MEMORY[0x1DA6EAC70](0xD000000000000015);
    v12[4] = v35;
    v36 = MEMORY[0x1E69E5FE0];
    sub_1D5615D48();
    v37 = OUTLINED_FUNCTION_23_57();
    MEMORY[0x1DA6EAC70](v37);
    sub_1D552E500();
    OUTLINED_FUNCTION_73_20();
    OUTLINED_FUNCTION_41_39();
    MEMORY[0x1DA6EAC70](v34, v36);

    OUTLINED_FUNCTION_85_18();
    v15 = "Fatal error";
    v20 = "MusicKitInternal/ActorQueue.swift";
    goto LABEL_8;
  }

  v38 = v12[7];
  if ((*(v38 + 152) & 1) == 0)
  {
    v43 = swift_task_alloc();
    v12[9] = v43;
    *(v43 + 16) = v14;
    *(v43 + 24) = v38;
    v44 = swift_task_alloc();
    v12[10] = v44;
    *(v44 + 16) = v38;
    *(v44 + 24) = v14;
    OUTLINED_FUNCTION_0_177();
    sub_1D52F84F4(v45, v46, &unk_1D5671394);
    v47 = swift_task_alloc();
    v12[11] = v47;
    *v47 = v12;
    v47[1] = sub_1D52F0C74;
    OUTLINED_FUNCTION_7_103();
    OUTLINED_FUNCTION_64_23();

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_53_29();
  v39 = swift_task_alloc();
  v12[12] = v39;
  *v39 = v12;
  OUTLINED_FUNCTION_65_26(v39);
  OUTLINED_FUNCTION_77_16();

  sub_1D52F6258(v40, v41);
}

uint64_t sub_1D52F0C74()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (!v0)
  {

    v8 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  return result;
}

uint64_t sub_1D52F0D78()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_55();

    return v4();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_42_37();

    return v7(v6);
  }
}

uint64_t sub_1D52F0E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  v11 = swift_task_alloc();
  *(v10 + 104) = v11;
  *v11 = v10;
  v12 = OUTLINED_FUNCTION_65_26(v11);

  return sub_1D52F6258(v12, v13);
}

uint64_t sub_1D52F0F20()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_55();

    return v4();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_42_37();

    return v7(v6);
  }
}

uint64_t sub_1D52F1044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = *v3;
  return OUTLINED_FUNCTION_4_100(sub_1D52F1088);
}

uint64_t sub_1D52F12F8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (!v0)
  {
    OUTLINED_FUNCTION_80_13();

    v8 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  return result;
}

uint64_t sub_1D52F13F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v10 + 208) = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_13_77(v11);

  return sub_1D52F6630(v13, v14, v15);
}

uint64_t sub_1D52F1478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = *v3;
  return OUTLINED_FUNCTION_4_100(sub_1D52F14BC);
}

uint64_t sub_1D52F172C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (!v0)
  {
    OUTLINED_FUNCTION_80_13();

    v8 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  return result;
}

uint64_t sub_1D52F1828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v10 + 208) = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_13_77(v11);

  return sub_1D52F6A0C(v13, v14, v15);
}

uint64_t sub_1D52F18AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = *v3;
  return OUTLINED_FUNCTION_4_100(sub_1D52F18F0);
}

uint64_t sub_1D52F1B60()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (!v0)
  {
    OUTLINED_FUNCTION_80_13();

    v8 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  return result;
}

uint64_t sub_1D52F1C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v10 + 208) = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_13_77(v11);

  return sub_1D52F6CE0(v13, v14, v15);
}

uint64_t sub_1D52F1CE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v4[21] = *v3;
  return OUTLINED_FUNCTION_4_100(sub_1D52F1D24);
}

uint64_t sub_1D52F1F94()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (!v0)
  {
    OUTLINED_FUNCTION_80_13();

    v8 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  return result;
}

uint64_t sub_1D52F2090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v10 + 208) = v11;
  *v11 = v12;
  v13 = OUTLINED_FUNCTION_13_77(v11);

  return sub_1D52F6E84(v13, v14, v15);
}

uint64_t sub_1D52F2114()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 176) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v0;
  type metadata accessor for SQLDatabase.Location(0);
  *(v1 + 56) = swift_task_alloc();
  _s8LocationVMa(0);
  *(v1 + 64) = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D52F21CC()
{
  OUTLINED_FUNCTION_160();
  v28 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  swift_defaultActor_initialize();
  v3 = OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue;
  *(v0 + 72) = OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue;
  type metadata accessor for ActorQueue();
  swift_allocObject();
  *(v1 + v3) = sub_1D552E568(0);
  *(v0 + 80) = OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_location;
  OUTLINED_FUNCTION_40_45();
  sub_1D4E56DC4(v2, v1 + v4, v5);
  if (qword_1EDD5D8B0 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_1EDD5D8B0);
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 40);
  v8 = sub_1D560C758();
  __swift_project_value_buffer(v8, qword_1EDD76DE0);
  OUTLINED_FUNCTION_40_45();
  sub_1D4E56DC4(v7, v6, v9);
  v10 = sub_1D560C738();
  v11 = sub_1D56156E8();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 64);
  if (v12)
  {
    v14 = *(v0 + 176);
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    if (v14)
    {
      v16 = 0x697257646165722ELL;
    }

    else
    {
      v16 = 0x6C6E4F646165722ELL;
    }

    if (v14)
    {
      v17 = 0xEA00000000006574;
    }

    else
    {
      v17 = 0xE900000000000079;
    }

    v18 = sub_1D4E6835C(v16, v17, &v27);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2082;
    v19 = sub_1D52FA1CC();
    v21 = v20;
    sub_1D5014360(v13);
    v22 = sub_1D4E6835C(v19, v21, &v27);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_1D4E3F000, v10, v11, "Connecting to database %{public}s with location: %{public}s.", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {

    sub_1D5014360(v13);
  }

  v23 = *(v0 + 176);
  sub_1D4E56DC4(*(v0 + 40), *(v0 + 56), type metadata accessor for SQLDatabase.Location);
  type metadata accessor for SQLDatabase(0);
  swift_allocObject();
  v24 = swift_task_alloc();
  *(v0 + 88) = v24;
  *v24 = v0;
  v24[1] = sub_1D52F24B8;
  v25 = *(v0 + 56);

  return sub_1D54E7594(v25, v23 & 1 | 0x1000100, 33555456);
}

uint64_t sub_1D52F24B8()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52F25C4()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 176);
  *(*(v0 + 48) + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection) = *(v0 + 104);
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 136) = v2;
    *v2 = v0;
    v2[1] = sub_1D52F298C;

    return sub_1D52F34F4();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_1D52F26D4;

    return sub_1D52F2FB8();
  }
}

uint64_t sub_1D52F26D4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v3;
  }

  OUTLINED_FUNCTION_8_97();
  sub_1D52F84F4(v6, v7, &unk_1D5650B48);
  swift_getObjectType();
  sub_1D5615338();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D52F2888()
{
  OUTLINED_FUNCTION_80();
  if (v0[16] == 60)
  {
    sub_1D5014360(v0[5]);

    OUTLINED_FUNCTION_50();
    v2 = v0[6];

    return v1(v2);
  }

  else
  {
    sub_1D52F853C();
    swift_allocError();
    *v4 = 0;
    swift_willThrow();
    sub_1D5014360(v0[5]);

    OUTLINED_FUNCTION_55();

    return v5();
  }
}

uint64_t sub_1D52F298C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v3[18] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_8_97();
    sub_1D52F84F4(v7, v8, &unk_1D5650B48);
    swift_getObjectType();
    v10 = sub_1D5615338();

    return MEMORY[0x1EEE6DFA0](sub_1D52F2D78, v10, v9);
  }

  else
  {
    OUTLINED_FUNCTION_8_97();
    v3[19] = sub_1D52F84F4(v11, v12, &unk_1D5650B48);
    v13 = swift_task_alloc();
    v3[20] = v13;
    *v13 = v5;
    v13[1] = sub_1D52F2B4C;

    return sub_1D52F2FB8();
  }
}

uint64_t sub_1D52F2B4C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_24_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 168) = v0;

  swift_getObjectType();
  v8 = sub_1D5615338();
  if (v0)
  {
    v9 = sub_1D52F2E6C;
  }

  else
  {
    v9 = sub_1D52F2C90;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1D52F2C90()
{
  OUTLINED_FUNCTION_60();
  sub_1D5014360(*(v0 + 40));

  OUTLINED_FUNCTION_50();
  v2 = *(v0 + 48);

  return v1(v2);
}

uint64_t sub_1D52F2D04()
{
  OUTLINED_FUNCTION_60();
  sub_1D5014360(*(v0 + 40));

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D52F2D78()
{
  OUTLINED_FUNCTION_160();
  v1 = v0[18];
  sub_1D5615B68();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D568A6E0);
  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  sub_1D5615D48();
  return sub_1D5615E08();
}

uint64_t sub_1D52F2E6C()
{
  OUTLINED_FUNCTION_60();
  sub_1D5014360(*(v0 + 40));

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D52F2EE0()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[5];
  sub_1D5014360(v0[6] + v0[10]);

  _s8DatabaseCMa(0);
  swift_defaultActor_destroy();
  sub_1D5014360(v1);
  swift_deallocPartialClassInstance();

  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D52F2FB8()
{
  OUTLINED_FUNCTION_80();
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 56) = v0;
  OUTLINED_FUNCTION_27_0(&unk_1D5650BD0);
  v5 = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 24) = 0x80000001D5689D90;
  *(v1 + 48) = 0;
  v3 = swift_task_alloc();
  *(v1 + 64) = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_26_12(v3);

  return v5(v1 + 16);
}

uint64_t sub_1D52F3080()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_44();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;

  if (v0)
  {
    OUTLINED_FUNCTION_153_1();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    *(v7 + 49) = v3;
    *(v7 + 72) = v5;
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }
}

uint64_t sub_1D52F31BC()
{
  OUTLINED_FUNCTION_80();
  if ((*(v0 + 49) & 1) != 0 || !*(v0 + 72))
  {
    v3 = *(v0 + 56);
    v4 = *(v3 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
    *(v0 + 80) = v4;
    v5 = *(v3 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);
    *(v0 + 88) = v5;

    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *v6 = v0;
    v6[1] = sub_1D52F32E8;

    return sub_1D52FA4F8(0x6E6F6973726576, 0xE700000000000000, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_50();

    return v1();
  }
}

uint64_t sub_1D52F32E8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 104) = v5;
  *(v3 + 112) = v6;

  if (v0)
  {

    OUTLINED_FUNCTION_50();

    return v7(0);
  }

  else
  {

    v9 = OUTLINED_FUNCTION_20_66();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1D52F3444()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 112);
  if (v1)
  {
    if (v1 == 0xE100000000000000 && *(v0 + 104) == 49)
    {
    }

    else
    {
      sub_1D5616168();
    }
  }

  OUTLINED_FUNCTION_50();

  return v2();
}

uint64_t sub_1D52F34F4()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  OUTLINED_FUNCTION_26_12(v2);

  return sub_1D52F2FB8();
}

uint64_t sub_1D52F357C()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
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
    v11 = *(v5 + 16);
    *(v5 + 32) = v3;

    return MEMORY[0x1EEE6DFA0](sub_1D52F36B0, v11, 0);
  }
}

uint64_t sub_1D52F36B0()
{
  OUTLINED_FUNCTION_80();
  if (v0[4])
  {
    if (qword_1EDD5D8B0 != -1)
    {
      OUTLINED_FUNCTION_0_20(&qword_1EDD5D8B0);
    }

    v1 = sub_1D560C758();
    v0[6] = __swift_project_value_buffer(v1, qword_1EDD76DE0);
    v2 = sub_1D560C738();
    v3 = sub_1D56156E8();
    if (os_log_type_enabled(v2, v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_72_4(&dword_1D4E3F000, v4, v5, "􁁿 Migration start!");
      OUTLINED_FUNCTION_122();
    }

    if (qword_1EDD5A0C0 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDD76CE0;
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    OUTLINED_FUNCTION_26_12(v7);

    return sub_1D52ACF54(v6);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[5] = v9;
    *v9 = v0;
    v9[1] = sub_1D4EFC820;

    return sub_1D52F3C28();
  }
}

uint64_t sub_1D52F388C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_24_1();
  *v5 = v4;
  *(v7 + 64) = v6;
  *(v7 + 72) = v0;

  OUTLINED_FUNCTION_153_4();
  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D52F39A0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 64);
  if (!*(v1 + 16))
  {

    v2 = sub_1D560C738();
    v6 = sub_1D56156E8();
    if (!os_log_type_enabled(v2, v6))
    {
      goto LABEL_8;
    }

    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_72_4(&dword_1D4E3F000, v7, v8, "􁁿 Migration success, no migrations needed.");
    goto LABEL_6;
  }

  v2 = sub_1D560C738();
  v3 = sub_1D56156E8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134349056;
    v5 = *(v1 + 16);

    *(v4 + 4) = v5;

    _os_log_impl(&dword_1D4E3F000, v2, v3, "􁁿 Migration success, finished %{public}ld migration(s).", v4, 0xCu);
LABEL_6:
    OUTLINED_FUNCTION_122();
    goto LABEL_8;
  }

  swift_bridgeObjectRelease_n();
LABEL_8:

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v10(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1D52F3B04()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 72);
  v2 = v1;
  v3 = sub_1D560C738();
  v4 = sub_1D56156C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 72);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D4E3F000, v3, v4, "􁁿􀘞 Migration FAILED: %{public}@", v6, 0xCu);
    sub_1D5103588(v7);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  swift_willThrow();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_153_1();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1D52F3C48()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_27_0(&unk_1D5650B80);
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D52F3D10;

  return v4();
}

uint64_t sub_1D52F3D10()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 32) = v0;

  OUTLINED_FUNCTION_153_4();
  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D52F3E40()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 64);

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_26_12(v2);

  return sub_1D52FB3F0(v1, 0x8000000000000000);
}

uint64_t sub_1D52F3EDC()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 80) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1D52F4514;
  }

  else
  {

    v6 = sub_1D52F4008;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D52F4008()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 64);

  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_26_12(v2);

  return sub_1D51BB394(v1, 0x8000000000000000);
}

uint64_t sub_1D52F40A4()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v0;

  v5 = *(v2 + 64);
  if (v0)
  {
    v6 = sub_1D52F4570;
  }

  else
  {

    v6 = sub_1D52F41D0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1D52F41D0()
{
  sub_1D4F0029C();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3 >= *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_75();
    v2 = v20;
  }

  *(v2 + 16) = v3 + 1;
  v4 = v2 + 80 * v3;
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = 0x80000001D5689E30;
  *(v4 + 104) = 0;
  *(v0 + 56) = 60;
  v5 = sub_1D56160F8();
  v7 = v6;
  v8 = *(v2 + 16);
  v9 = v8 + 1;
  if (v8 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_75();
    v2 = v21;
  }

  *(v2 + 16) = v9;
  v10 = v2 + 80 * v8;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  OUTLINED_FUNCTION_3_99(v10, v23, v25, v27, v29);
  if ((v8 + 2) > *(v2 + 24) >> 1)
  {
    sub_1D4F0029C();
    v2 = v22;
  }

  *(v2 + 16) = v8 + 2;
  v11 = v2 + 80 * v9;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0xE000000000000000;
  OUTLINED_FUNCTION_3_99(v11, v24, v26, v28, v30);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v12, v13, v14, v15, v16);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 104) = v17;
  *v17 = v18;
  v17[1] = sub_1D52F4390;

  return sub_1D54F1FF0(v0 + 16);
}

uint64_t sub_1D52F4390()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;

  if (v0)
  {
    sub_1D51D2984(v3 + 16);
    OUTLINED_FUNCTION_71_0();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_204();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }
}

uint64_t sub_1D52F44B8()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 16);
  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D52F4514()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D52F4570()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D52F45CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return OUTLINED_FUNCTION_4_100(sub_1D52F45EC);
}

uint64_t sub_1D52F45EC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 32);
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v5;
  *(v4 + 48) = v2;
  OUTLINED_FUNCTION_27_0(&unk_1D5650B98);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 72) = v6;
  *v6 = v7;
  v6[1] = sub_1D52F46D8;
  OUTLINED_FUNCTION_153_1();

  return v11(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1D52F46D8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v7 = *(v3 + 56);

    return MEMORY[0x1EEE6DFA0](sub_1D52C6A04, v7, 0);
  }

  else
  {

    OUTLINED_FUNCTION_55();

    return v8();
  }
}

uint64_t sub_1D52F47F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D52F481C, a2, 0);
}

uint64_t sub_1D52F481C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0[3] + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  OUTLINED_FUNCTION_27_0(&unk_1D566A688);
  v11 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[8] = v3;
  *v3 = v4;
  v3[1] = sub_1D52EF4B4;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v9 = v0[2];

  return v11(v9, v7, v8, v1, v5, v6);
}

uint64_t sub_1D52F48D0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D52F48F0, v1, 0);
}

uint64_t sub_1D52F48F0()
{
  OUTLINED_FUNCTION_91();
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_27_0(&unk_1D5650C20);
  v7 = v4;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1D52F49CC;

  return v7(&unk_1D5650C18, v3);
}

uint64_t sub_1D52F49CC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_153_1();

    return v14(v11, v12, v13, v14, v15, v16, v17, v18);
  }
}

uint64_t sub_1D52F4B14()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D52F4B70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D52F4B94, a1, 0);
}

uint64_t sub_1D52F4B94()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_27_0(&dword_1D564E038);
  v5 = v1;
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1D52F4C40;
  v3 = *(v0 + 24);

  return v5(v3);
}

uint64_t sub_1D52F4C40()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_55();

    return v4();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_42_37();

    return v7(v6);
  }
}

uint64_t sub_1D52F4D64()
{
  sub_1D5014360(v0 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_location);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D52F4DB4()
{
  sub_1D52F4D64();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t _s8DatabaseCMa(uint64_t a1)
{
  result = qword_1EDD5A008;
  if (!qword_1EDD5A008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D52F4E34(uint64_t a1)
{
  result = type metadata accessor for SQLDatabase.Location(319);
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

uint64_t sub_1D52F4EE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x796C6E4F64616572 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469725764616572 && a2 == 0xE900000000000065)
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

uint64_t sub_1D52F4FB0(char a1)
{
  if (a1)
  {
    return 0x7469725764616572;
  }

  else
  {
    return 0x796C6E4F64616572;
  }
}

uint64_t sub_1D52F4FEC(void *a1, int a2)
{
  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3D48, &qword_1D5650EA0);
  OUTLINED_FUNCTION_4();
  v22 = v4;
  v23 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3D50, &qword_1D5650EA8);
  OUTLINED_FUNCTION_4();
  v9 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3D58, &qword_1D5650EB0);
  OUTLINED_FUNCTION_4();
  v15 = v14;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v21 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D52F8608();
  sub_1D56163D8();
  v19 = (v15 + 8);
  if (v24)
  {
    v26 = 1;
    sub_1D52F865C();
    sub_1D5616018();
    (*(v22 + 8))(v7, v23);
  }

  else
  {
    v25 = 0;
    sub_1D52F86B0();
    sub_1D5616018();
    (*(v9 + 8))(v12, v21);
  }

  return (*v19)(v18, v13);
}

uint64_t sub_1D52F5278(unint64_t a1)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3D18, &qword_1D5650E80);
  OUTLINED_FUNCTION_4();
  v38 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3D20, &qword_1D5650E88);
  OUTLINED_FUNCTION_4();
  v37 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3D28, &unk_1D5650E90);
  OUTLINED_FUNCTION_4();
  v39 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_1D52F8608();
  v16 = v41;
  sub_1D5616398();
  if (v16)
  {
    goto LABEL_8;
  }

  v35 = v6;
  v36 = v10;
  v41 = a1;
  v17 = v40;
  sub_1D5615FE8();
  result = sub_1D4FE35F0();
  if (v20 == v21 >> 1)
  {
LABEL_7:
    v26 = sub_1D5615C18();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v28 = &_s8DatabaseC4ModeON;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v39 + 8))(v15, v11);
    a1 = v41;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return a1;
  }

  v34 = 0;
  if (v20 < (v21 >> 1))
  {
    a1 = *(v19 + v20);
    sub_1D4FE35EC();
    v23 = v22;
    v25 = v24;
    swift_unknownObjectRelease();
    if (v23 == v25 >> 1)
    {
      if (a1)
      {
        LODWORD(v37) = a1;
        v43 = 1;
        sub_1D52F865C();
        OUTLINED_FUNCTION_76_16(&_s8DatabaseC4ModeO19ReadWriteCodingKeysON, &v43);
        swift_unknownObjectRelease();
        (*(v38 + 8))(v5, v17);
        v30 = OUTLINED_FUNCTION_46_31();
        v31(v30);
        a1 = v37;
      }

      else
      {
        v42 = 0;
        sub_1D52F86B0();
        v29 = v36;
        OUTLINED_FUNCTION_76_16(&_s8DatabaseC4ModeO18ReadOnlyCodingKeysON, &v42);
        swift_unknownObjectRelease();
        (*(v37 + 8))(v29, v35);
        v32 = OUTLINED_FUNCTION_46_31();
        v33(v32);
      }

      __swift_destroy_boxed_opaque_existential_1(v41);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D52F571C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D52F4EE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D52F5744(uint64_t a1)
{
  v2 = sub_1D52F8608();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52F5780(uint64_t a1)
{
  v2 = sub_1D52F8608();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D52F57BC(uint64_t a1)
{
  v2 = sub_1D52F86B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52F57F8(uint64_t a1)
{
  v2 = sub_1D52F86B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D52F5834(uint64_t a1)
{
  v2 = sub_1D52F865C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D52F5870(uint64_t a1)
{
  v2 = sub_1D52F865C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D52F58AC@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D52F5278(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1D52F5910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1D56162D8();
  a4(v8, v6);
  return sub_1D5616328();
}

uint64_t sub_1D52F5964()
{
  OUTLINED_FUNCTION_80();
  v1 = v0;
  v3 = v2;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_32(v4);
  *v5 = v6;
  v5[1] = sub_1D4E6ED20;

  return sub_1D52F3E24(v3, v1);
}

uint64_t sub_1D52F5A04()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_32(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_7_8(v6);

  return sub_1D52F47F8(v8, v9, v1, v2, v3, v4);
}