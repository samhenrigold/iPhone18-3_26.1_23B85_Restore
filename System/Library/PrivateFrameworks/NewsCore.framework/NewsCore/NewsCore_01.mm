uint64_t sub_1B643034C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1B6430394(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  sub_1B6416D08(a3, (v10 + 4));
  sub_1B6416D08(a4, (v10 + 9));
  v10[14] = a5;
  return v10;
}

id sub_1B643040C(void *a1)
{
  v45[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B67D856C();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = sub_1B67D85FC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  v15 = sub_1B67D88CC();
  if (!v15)
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v16 = [v15 contentDirectory];
  sub_1B67D964C();

  v41 = v9;
  v42 = v8;
  (*(v9 + 56))(v7, 1, 1, v8);
  (*(v43 + 104))(v4, *MEMORY[0x1E6968F70], v44);
  sub_1B67D85CC();
  sub_1B67D859C();
  v17 = NewsCoreUserDefaults();
  v18 = [v17 BOOLForKey_];

  v19 = v12;
  if (v18)
  {
    v20 = [objc_opt_self() defaultManager];
    v21 = sub_1B67D858C();
    v45[0] = 0;
    v22 = [v20 removeItemAtURL:v21 error:v45];

    if (v22)
    {
      v23 = v45[0];
    }

    else
    {
      v24 = v45[0];
      v25 = sub_1B67D855C();

      swift_willThrow();
    }

    v26 = NewsCoreUserDefaults();
    [v26 setBool:0 forKey:@"news.esl_inventory.force_enable_all_tags"];
  }

  v44 = v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TagESLService();
  v27 = sub_1B67D88CC();
  if (!v27)
  {
    goto LABEL_11;
  }

  v28 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B138, &qword_1B6814FF0);
  v29 = sub_1B67D88CC();
  v30 = v41;
  v31 = v42;
  if (!v29)
  {
    goto LABEL_12;
  }

  v32 = v29;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &qword_1EDB1E558, off_1E7C350A0);
  v33 = sub_1B67D88CC();
  v34 = objc_allocWithZone(FCFeedItemInventory);
  v35 = sub_1B67D858C();
  v36 = sub_1B67D963C();
  v37 = [v34 initWithFeedItemService:v28 feedPersonalizer:v32 readingHistory:v33 fileURL:v35 version:1 refreshInterval:v36 loggingKey:86400.0];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v38 = *(v30 + 8);
  v38(v19, v31);
  v38(v44, v31);
  return v37;
}

void *sub_1B6430948(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0E0, &unk_1B681A0C0);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0D0, &unk_1B6814F78);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0A8, &qword_1B6814F40);
  result = sub_1B67D88DC();
  if (!v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0B0, &unk_1B6814F48);
  result = sub_1B67D88DC();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B020, &qword_1B6814F18);
  result = sub_1B67D88CC();
  if (result)
  {
    v6 = result;
    type metadata accessor for TagESLService();
    return sub_1B6430B50(v3, v4, v5, &v9, &v7, v6);
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_1B6430B50(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  sub_1B6416D08(a4, (v12 + 5));
  sub_1B6416D08(a5, (v12 + 10));
  v12[15] = a6;
  return v12;
}

void *sub_1B6430BD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v3 = sub_1B67D8A9C();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B67D856C();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v42 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v34 - v8;
  v10 = sub_1B67D85FC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v35 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v34 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v34 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v34[1] = result;
  v20 = [result contentDirectory];
  sub_1B67D964C();

  v36 = v11;
  v37 = v10;
  (*(v11 + 56))(v9, 1, 1, v10);
  (*(v43 + 104))(v42, *MEMORY[0x1E6968F70], v44);
  sub_1B67D85CC();
  sub_1B67D859C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v21 = result;
  v22 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B098, &qword_1B6814F38);
  result = sub_1B67D88DC();
  v23 = v45[0];
  if (!v45[0])
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B090, &qword_1B6814F30);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v24 = result;
  type metadata accessor for ListBasedRecipeItemService();
  v46 = sub_1B6431778(v21, v23, v24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B120, &qword_1B6814FD8);

  result = sub_1B67D88DC();
  v26 = v36;
  v25 = v37;
  if (v45[3])
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B128, &unk_1B6814FE0);
    v28 = v35;
    (*(v26 + 16))(v35, v22, v25);
    v29 = sub_1B64318C8();
    v30 = v38;
    (*(v39 + 16))(v38, v29, v40);
    v31 = sub_1B6431974(&v46, v45, v28, v30);
    v32 = v41;
    v41[3] = v27;
    v32[4] = &off_1F2DC11F0;

    swift_unknownObjectRelease();
    *v32 = v31;
    v33 = *(v26 + 8);
    v33(v22, v25);
    return (v33)(v18, v25);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1B6431124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B110, &qword_1B6814FC8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B6814E60;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for GlobalRecipeListProvider();
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v4 + 56) = v5;
  *(v4 + 64) = &off_1F2DBFAF8;
  *(v4 + 32) = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = type metadata accessor for RecentRecipeListProvider();
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(v4 + 96) = v7;
  *(v4 + 104) = &protocol witness table for RecentRecipeListProvider;
  *(v4 + 72) = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = type metadata accessor for TrendingRecipeListProvider();
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v4 + 136) = v8;
  *(v4 + 144) = &protocol witness table for TrendingRecipeListProvider;
  *(v4 + 112) = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = type metadata accessor for PersonalizedRecipeListProvider();
  result = sub_1B67D88CC();
  if (result)
  {
    *(v4 + 176) = v9;
    *(v4 + 184) = &off_1F2DBFB10;
    *(v4 + 152) = result;
    *a2 = v4;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B64312B4(void *a1, void (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B0B8, &unk_1B6814F58);
  result = sub_1B67D88CC();
  if (result)
  {
    v7 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF98, "\u0383");
    result = sub_1B67D88CC();
    if (result)
    {
      v8 = result;
      a2(0);
      return a3(v7, v8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64313C8(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1B6431438(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B0B8, &unk_1B6814F58);
  result = sub_1B67D88CC();
  if (result)
  {
    v2 = result;
    type metadata accessor for TrendingRecipeListProvider();
    return sub_1B64314B0(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B64314B0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void *sub_1B64314E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B0B8, &unk_1B6814F58);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AF98, "\u0383");
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0E0, &unk_1B681A0C0);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &unk_1EDB1E560, off_1E7C35350);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B108, &qword_1B6814FC0);
  result = sub_1B67D88CC();
  if (result)
  {
    v7 = result;
    type metadata accessor for PersonalizedRecipeListProvider();
    return sub_1B6431698(v3, v4, v5, v6, v7);
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1B6431698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *sub_1B6431778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = 0x40BC200000000000;
  return result;
}

uint64_t sub_1B64317E0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1B67D8A9C();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B64318EC()
{
  v0 = sub_1B67D8A9C();
  __swift_allocate_value_buffer(v0, qword_1EDB20508);
  __swift_project_value_buffer(v0, qword_1EDB20508);
  return sub_1B67D8A8C();
}

char *sub_1B6431974(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_allocObject();
  v10 = sub_1B6431A18(a1, a2, a3, a4);
  (*(*(*(v5 + 80) - 8) + 8))(a1);
  return v10;
}

char *sub_1B6431A18(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a2;
  v25 = a4;
  v9 = *v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24 - v11;
  v13 = sub_1B67D85FC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v9 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B600, &qword_1B6816720);
  v18 = swift_allocObject();
  *(v18 + 24) = 0;
  *&v5[v17] = v18;
  *(v18 + 16) = 0;
  (*(*(*(v9 + 80) - 8) + 16))(&v5[*(*v5 + 96)], a1);
  sub_1B6431D18(a2, &v5[*(*v5 + 104)]);
  type metadata accessor for RecipeItemDatabase(0);
  (*(v14 + 16))(v16, a3, v13);
  v19 = sub_1B67D8A9C();
  v20 = *(v19 - 8);
  v21 = v25;
  (*(v20 + 16))(v12, v25, v19);
  (*(v20 + 56))(v12, 0, 1, v19);
  v22 = sub_1B64321B4(v16, v12);
  (*(v14 + 8))(a3, v13);
  __swift_destroy_boxed_opaque_existential_1(v24);
  *&v5[*(*v5 + 112)] = v22;
  (*(v20 + 32))(&v5[*(*v5 + 128)], v21, v19);
  return v5;
}

uint64_t sub_1B6431D18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1B6431D9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6431DD4(uint64_t a1)
{
  result = sub_1B67D85FC();
  if (v2 <= 0x3F)
  {
    result = sub_1B67D8A9C();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B6431EAC(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1B67D8A9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_storage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B6D0, &unk_1B68174D0);
  v12 = swift_allocObject();
  *(v12 + 44) = 0;
  *(v12 + 24) = 0;
  *(v12 + 32) = 0;
  *(v12 + 16) = 0;
  *(v12 + 40) = -1;
  *(v2 + v11) = v12;
  v13 = OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_fileURL;
  v14 = sub_1B67D85FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v23 = v2;
  v16(v2 + v13, a1, v14);
  v17 = v22;
  sub_1B6415FF0(v22, v6, &unk_1EB94B3E0, &qword_1B68165A0);
  v18 = *(v8 + 48);
  if (v18(v6, 1, v7) == 1)
  {
    v19 = sub_1B647172C();
    (*(v8 + 16))(v10, v19, v7);
    sub_1B6418AB4(v17, &unk_1EB94B3E0, &qword_1B68165A0);
    (*(v15 + 8))(a1, v14);
    if (v18(v6, 1, v7) != 1)
    {
      sub_1B6418AB4(v6, &unk_1EB94B3E0, &qword_1B68165A0);
    }
  }

  else
  {
    sub_1B6418AB4(v17, &unk_1EB94B3E0, &qword_1B68165A0);
    (*(v15 + 8))(a1, v14);
    (*(v8 + 32))(v10, v6, v7);
  }

  v20 = v23;
  (*(v8 + 32))(v23 + OBJC_IVAR____TtC8NewsCore18RecipeItemDatabase_logger, v10, v7);
  return v20;
}

uint64_t sub_1B64321B4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1B6431EAC(a1, a2);
  return v4;
}

id sub_1B6432214(void *a1)
{
  v2 = sub_1B67D856C();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94BB50, &qword_1B6814FD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_1B67D85FC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v15 = [result contentDirectory];
  sub_1B67D964C();

  v27 = v8;
  v28 = v7;
  (*(v8 + 56))(v6, 1, 1, v7);
  (*(v30 + 104))(v29, *MEMORY[0x1E6968F70], v31);
  sub_1B67D85CC();
  sub_1B67D859C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &unk_1EDB1F010, off_1E7C34E00);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = result;
  v17 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B138, &qword_1B6814FF0);
  result = sub_1B67D88CC();
  if (result)
  {
    v18 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1B63F3DA0(0, &qword_1EDB1E558, off_1E7C350A0);
    v19 = sub_1B67D88CC();
    v20 = objc_allocWithZone(FCFeedItemInventory);
    v21 = sub_1B67D858C();
    v22 = sub_1B67D963C();
    v23 = [v20 initWithFeedItemService:v16 feedPersonalizer:v18 readingHistory:v19 fileURL:v21 version:0 refreshInterval:v22 loggingKey:0.0];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v24 = v28;
    v25 = *(v27 + 8);
    v25(v11, v28);
    v25(v17, v24);
    return v23;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1B6432644(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0C8, &unk_1B6814F68);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B0F8, &unk_1B6814FB0);
  result = sub_1B67D88CC();
  if (result)
  {
    v5 = [objc_allocWithZone(FCPeopleAlsoReadFeedItemService) initWithConfigurationManager:v3 contentContext:v4 readingHistory:result];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v5;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B6432810@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &qword_1EDB1E590, off_1E7C342A8);
  result = sub_1B67D88CC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B138, &qword_1B6814FF0);
    result = sub_1B67D88CC();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for MyArticlesRequestFactory();
      result = sub_1B64313C8(v5, v6);
      a2[3] = v7;
      a2[4] = &off_1F2DBEA60;
      *a2 = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1B643291C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0F0, &unk_1B6814FA0);
  result = sub_1B67D88CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &qword_1EDB1FC90, off_1E7C34430);
  result = sub_1B67D88CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0A8, &qword_1B6814F40);
  result = sub_1B67D88DC();
  if (!v12)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B0B0, &unk_1B6814F48);
  result = sub_1B67D88DC();
  if (!v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B020, &qword_1B6814F18);
  result = sub_1B67D88CC();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for MyArticlesService();
    result = sub_1B6430394(v5, v6, &v11, &v9, v7);
    a2[3] = v8;
    a2[4] = &off_1F2DBE580;
    *a2 = result;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

id FCURLForTodayPrivateDataTransactionQueue()
{
  v0 = +[FCContextConfiguration defaultConfiguration];
  v1 = [v0 privateDataContainerCombinationIdentifier];
  v2 = FCURLForFeldsparUserAccountHomeDirectoryForEnvironment(v1);

  v3 = [v2 URLByAppendingPathComponent:@"todayPrivateDataTransactionQueue" isDirectory:0];

  return v3;
}

void sub_1B6433A1C(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1B6415FF0(v3 + v4, a1, &unk_1EB94A100, &qword_1B680FD50);

  os_unfair_lock_unlock((v3 + v5));
}

void FCDateRange.init(dateInterval:)(uint64_t a1)
{
  v2 = sub_1B67D877C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1B67D842C();
  v7 = sub_1B67D86DC();
  v8 = *(v3 + 8);
  v8(v5, v2);
  sub_1B67D840C();
  v9 = sub_1B67D86DC();
  v8(v5, v2);
  v10 = [v6 initWithEarlierDate:v7 laterDate:v9];

  if (v10)
  {
    v11 = sub_1B67D843C();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  else
  {
    __break(1u);
  }
}

void sub_1B6434858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6434A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FCSwizzleClassMethods(objc_class *a1, const char *a2, const char *a3)
{
  if (a1)
  {
    ClassMethod = class_getClassMethod(a1, a2);
    v6 = class_getClassMethod(a1, a3);
    if (ClassMethod)
    {
      if (v6)
      {

        method_exchangeImplementations(ClassMethod, v6);
      }
    }
  }
}

void sub_1B64350F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t RecipeBoxType.recipeIDs()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6435778;

  return v7(a1, a2);
}

uint64_t sub_1B64355E8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B6435678;

  return sub_1B641EE54();
}

uint64_t sub_1B6435678(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1B6435778(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B64358AC, 0, 0);
  }
}

uint64_t sub_1B64358AC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v2, 0);
    v3 = v14;
    v4 = v1 + 48;
    do
    {
      v5 = RecipeBoxItem.recipeID.getter();
      v15 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1B6456B24((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v15;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v0 + 8);

  return v12(v3);
}

void sub_1B6436358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FCSpecialTagFeedTypeForTagID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 foodHubTagID];
    v7 = [v3 isEqualToString:v6];

    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v9 = [v5 recipeCatalogTagID];
      v10 = [v3 isEqualToString:v9];

      if (v10)
      {
        v8 = 2;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1B6436AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FCUpdateAssetURLHostIfNeeded_block_invoke()
{
  v0 = NewsCoreUserDefaults();
  _MergedGlobals_205 = [v0 BOOLForKey:@"replace_cdn_with_cvws"];
}

uint64_t FCContentModeFromString(void *a1)
{
  v1 = a1;
  if (v1 && ([&unk_1F2E71938 objectForKeyedSubscript:v1], v2 = objc_claimAutoreleasedReturnValue(), v2, v2))
  {
    v3 = [&unk_1F2E71938 objectForKeyedSubscript:v1];
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

uint64_t FCUpdateAssetURLHostIfNeeded(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (qword_1EDB27940 != -1)
  {
    v5 = v1;
    dispatch_once(&qword_1EDB27940, &__block_literal_global_165);
    v2 = v5;
  }

  if (_MergedGlobals_205 == 1)
  {
    v4 = v2;
    v1 = FCAllowedToRewriteAssetURLComponents(v2);
    v2 = v4;
    if (v1)
    {
      v1 = [v4 setHost:@"cvws.icloud-content.com"];
      v2 = v4;
    }
  }

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void sub_1B6438208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id location)
{
  objc_destroyWeak((v37 + 64));
  _Block_object_dispose(&a33, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id FCTagAdjustName(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = FCBundle();
    v6 = [v5 localizedStringForKey:@"Sports" value:&stru_1F2DC7DC0 table:0];
  }

  else
  {
    v6 = v3;
  }

  return v6;
}

id FCHeadlinesByArticleIDFromHeldRecords(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = FCIssuesWithHeldRecords(v16, a6, v19);
  if (a8)
  {
    v21 = -[FCHeadlineExperimentalTitleProvider initWithShouldShowAlternateHeadlines:]([FCHeadlineExperimentalTitleProvider alloc], "initWithShouldShowAlternateHeadlines:", [v15 shouldShowAlternateHeadlines]);
  }

  else
  {
    v21 = 0;
  }

  v22 = MEMORY[0x1E695DF20];
  v23 = [v17 allObjects];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __FCHeadlinesByArticleIDFromHeldRecords_block_invoke;
  v32[3] = &unk_1E7C406C8;
  v33 = v15;
  v34 = v16;
  v35 = v18;
  v36 = v19;
  v38 = v21;
  v39 = a7;
  v37 = v20;
  v24 = v21;
  v25 = v20;
  v26 = v19;
  v27 = v18;
  v28 = v16;
  v29 = v15;
  v30 = [v22 fc_dictionaryWithKeys:v23 allowingNil:1 valueBlock:v32];

  return v30;
}

id FCIssuesWithHeldRecords(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager"];
    *buf = 136315906;
    v18 = "NSDictionary<NSString *,FCIssue *> *FCIssuesWithHeldRecords(FCAssetManager *__strong, FCHeldRecords<NTPBIssueRecord *> *__strong, NSDictionary<NSString *,id<FCChannelProviding>> *__strong)";
    v19 = 2080;
    v20 = "FCArticleHeadlineUtilities.m";
    v21 = 1024;
    v22 = 82;
    v23 = 2114;
    v24 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __FCIssuesWithHeldRecords_block_invoke;
  v14[3] = &unk_1E7C3B1B0;
  v15 = v7;
  v16 = v5;
  v8 = v5;
  v9 = v7;
  v10 = [v6 transformRecordsWithBlock:v14];
  v11 = [v10 fc_dictionaryWithKeySelector:sel_identifier];

  return v11;
}

void sub_1B6439F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

FCArticleHeadline *FCHeadlineWithHeldRecords(void *a1, void *a2, void *a3, void *a4, void *a5, char a6, void *a7, void *a8)
{
  v57 = *MEMORY[0x1E69E9840];
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v47 = a8;
  if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "configuration"];
    *buf = 136315906;
    v50 = "id<FCHeadlineProviding> FCHeadlineWithHeldRecords(__strong id<FCCoreConfiguration>, FCAssetManager *__strong, NSString *__strong, FCHeldRecords<NTPBArticleRecord *> *__strong, NSDictionary<NSString *,id<FCChannelProviding>> *__strong, BOOL, NSDictionary<NSString *,FCIssue *> *__strong, FCHeadlineExperimentalTitleProvider *__strong)";
    v51 = 2080;
    v52 = "FCArticleHeadlineUtilities.m";
    v53 = 1024;
    v54 = 27;
    v55 = 2114;
    v56 = v38;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (v15)
    {
      goto LABEL_6;
    }
  }

  else if (v15)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "assetManager"];
    *buf = 136315906;
    v50 = "id<FCHeadlineProviding> FCHeadlineWithHeldRecords(__strong id<FCCoreConfiguration>, FCAssetManager *__strong, NSString *__strong, FCHeldRecords<NTPBArticleRecord *> *__strong, NSDictionary<NSString *,id<FCChannelProviding>> *__strong, BOOL, NSDictionary<NSString *,FCIssue *> *__strong, FCHeadlineExperimentalTitleProvider *__strong)";
    v51 = 2080;
    v52 = "FCArticleHeadlineUtilities.m";
    v53 = 1024;
    v54 = 28;
    v55 = 2114;
    v56 = v39;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_6:
  if (!v16 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleID"];
    *buf = 136315906;
    v50 = "id<FCHeadlineProviding> FCHeadlineWithHeldRecords(__strong id<FCCoreConfiguration>, FCAssetManager *__strong, NSString *__strong, FCHeldRecords<NTPBArticleRecord *> *__strong, NSDictionary<NSString *,id<FCChannelProviding>> *__strong, BOOL, NSDictionary<NSString *,FCIssue *> *__strong, FCHeadlineExperimentalTitleProvider *__strong)";
    v51 = 2080;
    v52 = "FCArticleHeadlineUtilities.m";
    v53 = 1024;
    v54 = 29;
    v55 = 2114;
    v56 = v40;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v43 = [v17 recordsByID];
  v20 = [v43 objectForKeyedSubscript:v16];
  v48 = [v17 interestTokenForID:v16];
  v21 = [v20 sourceChannelTagID];

  if (v21)
  {
    v22 = [v20 sourceChannelTagID];
    v23 = [v18 objectForKeyedSubscript:v22];
  }

  else
  {
    v23 = 0;
  }

  v46 = v18;
  v24 = [v20 parentIssueID];
  if (v24 && (v25 = v24, [v14 paidBundleConfig], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "areMagazinesEnabled"), v26, v25, v27))
  {
    v28 = [v20 parentIssueID];
    v29 = [v19 objectForKeyedSubscript:v28];
  }

  else
  {
    v29 = 0;
  }

  v30 = 0;
  v31 = a6;
  if (v23)
  {
    v31 = 0;
  }

  if (v20 && v48 && (v31 & 1) == 0)
  {
    v41 = [FCArticleHeadline alloc];
    [v14 topStoriesConfig];
    v32 = v45 = v17;
    [v32 styleConfigurations];
    v42 = v19;
    v34 = v33 = v15;
    [v14 topStoriesConfig];
    v36 = v35 = v16;
    v30 = -[FCArticleHeadline initWithArticleRecord:articleInterestToken:sourceChannel:parentIssue:storyStyleConfigs:storyTypeTimeout:rapidUpdatesTimeout:assetManager:experimentalTitleProvider:](v41, "initWithArticleRecord:articleInterestToken:sourceChannel:parentIssue:storyStyleConfigs:storyTypeTimeout:rapidUpdatesTimeout:assetManager:experimentalTitleProvider:", v20, v48, v23, v29, v34, [v36 storyTypeTimeout], objc_msgSend(v14, "articleRapidUpdatesTimeout"), v33, v47);

    v16 = v35;
    v15 = v33;
    v19 = v42;

    v17 = v45;
  }

  return v30;
}

double FCCGRectFromBuffer(unint64_t a1)
{
  if (a1)
  {
    return HIWORD(a1) / 65535.0;
  }

  else
  {
    return *MEMORY[0x1E695F058];
  }
}

uint64_t FCArticleRoleFromPBRole(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 8)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

__CFString *FCCKLocalizedArticleArticleRecirculationConfigurationKey()
{
  v0 = +[FCAppleAccount sharedAccount];
  v1 = [v0 isContentStoreFrontSupported];

  v2 = @"articleRecirculationConfiguration";
  if (v1)
  {
    v3 = +[FCAppleAccount sharedAccount];
    v4 = [v3 contentStoreFrontID];
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@", @"articleRecirculationConfiguration", v4];
  }

  return v2;
}

FCProxyHeadline *FCAssignSingleHeadlineMetadata(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = [[FCProxyHeadline alloc] initWithHeadline:v5 overrideMetadata:v6 configuration:v7];
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

void sub_1B643CB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B643E998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B6440134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1B6441230()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = type metadata accessor for ThrottleRegistry();
  v2 = objc_allocWithZone(v1);
  v3 = OBJC_IVAR___FCThrottleRegistry_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B8B0, &unk_1B6819540);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *&v2[v3] = v4;
  *&v2[OBJC_IVAR___FCThrottleRegistry_userDefaults] = v0;
  *&v2[OBJC_IVAR___FCThrottleRegistry_maxRetryAfter] = 0x40E5180000000000;
  v6.receiver = v2;
  v6.super_class = v1;
  result = objc_msgSendSuper2(&v6, sel_init);
  qword_1EDB20630 = result;
  return result;
}

uint64_t sub_1B6441388(uint64_t a1, uint64_t a2, double *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1B67D877C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21[0] = 0;
  *(&v21[0] + 1) = 0xE000000000000000;
  sub_1B67D9EFC();

  *&v21[0] = 0xD000000000000016;
  *(&v21[0] + 1) = 0x80000001B682A1D0;
  MEMORY[0x1B8C94910](a1, a2);
  v13 = [objc_opt_self() standardUserDefaults];
  v14 = sub_1B67D963C();

  v15 = [v13 objectForKey_];

  if (v15)
  {
    sub_1B67D9E3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
  }

  v21[0] = v19;
  v21[1] = v20;
  if (!*(&v20 + 1))
  {
    sub_1B6418AB4(v21, &qword_1EB94B738, &unk_1B6819580);
    (*(v10 + 56))(v8, 1, 1, v9);
    goto LABEL_9;
  }

  v16 = swift_dynamicCast();
  (*(v10 + 56))(v8, v16 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
LABEL_9:
    sub_1B6418AB4(v8, &unk_1EB94A100, &qword_1B680FD50);
    return 0;
  }

  (*(v10 + 32))(v12, v8, v9);
  sub_1B67D872C();
  if (v17 > 0.0)
  {
    *a3 = ceil(v17) + 1.0;
    (*(v10 + 8))(v12, v9);
    return 1;
  }

  (*(v10 + 8))(v12, v9);
  return 0;
}

void sub_1B64426A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void FCOperationFlagsApplyToURLRequest(char a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    [v3 setAllowsCellularAccess:0];
    v3 = v4;
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v4 setAllowsExpensiveNetworkAccess:0];
  v3 = v4;
  if ((a1 & 4) != 0)
  {
LABEL_4:
    [v4 setAllowsConstrainedNetworkAccess:0];
    v3 = v4;
  }

LABEL_5:
}

id FCClientInfoHeaderValue()
{
  if (qword_1EDB27810 != -1)
  {
    dispatch_once(&qword_1EDB27810, &__block_literal_global_147);
  }

  v1 = _MergedGlobals_193;

  return v1;
}

void __FCClientInfoHeaderValue_block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v1 = CKProductType();
  v2 = @"UNKNOWN";
  if (!v1)
  {
    v1 = @"UNKNOWN";
  }

  v29 = v1;
  v25 = v0;
  [v0 appendFormat:@"<%@>", v1];
  v3 = [MEMORY[0x1E695B880] sharedOptions];
  v4 = [v3 productName];

  v5 = [MEMORY[0x1E695B880] sharedOptions];
  v6 = [v5 productVersion];

  v7 = [MEMORY[0x1E695B880] sharedOptions];
  v8 = [v7 buildVersion];

  v28 = v4;
  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = @"UNKNOWN";
  }

  if (v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = @"UNKNOWN";
  }

  v27 = v8;
  if (v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = @"UNKNOWN";
  }

  [v0 appendFormat:@" <%@;%@;%@>", v9, v10, v11];
  v26 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.newscore"];
  v12 = [v26 infoDictionary];
  v13 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
  v14 = *MEMORY[0x1E695E148];
  v15 = [v12 objectForKeyedSubscript:*MEMORY[0x1E695E148]];
  v24 = [MEMORY[0x1E696AAE8] mainBundle];
  v16 = [v24 infoDictionary];
  v17 = [MEMORY[0x1E696AAE8] mainBundle];
  v18 = [v17 bundleIdentifier];

  v19 = [v16 objectForKeyedSubscript:v14];
  if ([(__CFString *)v13 length])
  {
    v20 = v13;
  }

  else
  {
    v20 = @"UNKNOWN";
  }

  if ([(__CFString *)v15 length])
  {
    v21 = v15;
  }

  else
  {
    v21 = @"1.0";
  }

  if ([(__CFString *)v18 length])
  {
    v2 = v18;
  }

  if ([(__CFString *)v19 length])
  {
    v22 = v19;
  }

  else
  {
    v22 = @"1.0";
  }

  [v25 appendFormat:@" <%@/%@ (%@/%@)>", v20, v21, v2, v22];
  v23 = _MergedGlobals_193;
  _MergedGlobals_193 = v25;
}

id FCUserAgentHeaderValue()
{
  if (qword_1EDB27820 != -1)
  {
    dispatch_once(&qword_1EDB27820, &__block_literal_global_29_0);
  }

  v1 = qword_1EDB27818;

  return v1;
}

void __FCUserAgentHeaderValue_block_invoke()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.news.widget"];

  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v14 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v6 = [v5 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    [v3 stringWithFormat:@"AppleNewsWidget/%@ Version/%@", v4, v6];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = [v7 bundleIdentifier];
    v9 = [v8 isEqualToString:@"com.apple.newsd"];

    v10 = MEMORY[0x1E696AEC0];
    v14 = [MEMORY[0x1E696AAE8] mainBundle];
    v4 = [v14 objectForInfoDictionaryKey:*MEMORY[0x1E695E500]];
    v5 = [MEMORY[0x1E696AAE8] mainBundle];
    v11 = [v5 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
    v6 = v11;
    if (v9)
    {
      [v10 stringWithFormat:@"AppleNewsAgent/%@ Version/%@", v4, v11];
    }

    else
    {
      [v10 stringWithFormat:@"AppleNews/%@ Version/%@", v4, v11];
    }
  }
  v12 = ;
  v13 = qword_1EDB27818;
  qword_1EDB27818 = v12;
}

void sub_1B64439A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void FCFlattenArrayToArray(void *a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          FCFlattenArrayToArray(v9, v4);
        }

        else
        {
          [v4 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_1B64454BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1B64462C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 248));
  _Unwind_Resume(a1);
}

void sub_1B6446F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1B6447348()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B920, &qword_1B6811070);
  v1 = sub_1B67D9ACC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1B67D9A8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 16, v10 | 7);
}

uint64_t sub_1B64474EC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6447528()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447560()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64475B8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B64475CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447604()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B644763C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6447674()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B64476B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B644777C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B6447844()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447880()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B64478B8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B644790C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B644795C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B64479BC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B64479FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447A34()
{
  _Block_release(*(v0 + 24));
  _Block_release(*(v0 + 32));
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B6447A90()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6447AC8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447B00()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447B38()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B6447C1C()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447C74()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6447CB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A788, &unk_1B68129F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B6447DBC()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447E0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6447E44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6447E7C()
{
  Request = type metadata accessor for SmarterFetchRequest(0);
  v20 = *(*(Request - 8) + 80);
  v17 = *(*(Request - 8) + 64);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA80, &unk_1B68130D0);
  v2 = *(v19 - 8);
  v3 = *(v2 + 80);
  v15 = *(v2 + 64);
  v4 = sub_1B67D877C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v16 = *(v5 + 64);
  swift_unknownObjectRelease();

  v18 = (v20 + 40) & ~v20;
  v7 = v0 + v18;
  type metadata accessor for SmarterFetchRequest.DataType(0);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    v14 = *(v5 + 8);
    v14(v7, v4);
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94AA90, &unk_1B68180C0) + 48);
    if (!(*(v5 + 48))(v7 + v8, 1, v4))
    {
      v14(v7 + v8, v4);
    }
  }

  v9 = (v7 + *(Request + 60));
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_1B645745C(*v9, v10);
  }

  v11 = (v18 + v17 + v3) & ~v3;
  v12 = (v11 + v15 + v6) & ~v6;
  (*(v2 + 8))(v0 + v11, v19);
  (*(v5 + 8))(v0 + v12, v4);

  return MEMORY[0x1EEE6BDD0](v0, v12 + v16, v20 | v3 | v6 | 7);
}

uint64_t sub_1B64481A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64481E4()
{
  v1 = sub_1B67D877C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B64482B8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B6448300()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B6448340()
{
  _Block_release(*(v0 + 24));
  _Block_release(*(v0 + 32));
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B644839C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64483D4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6448414()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1B6448578()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADF8, &qword_1B6816E10);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64485EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B64486BC()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64486F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;

  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1B6448884()
{
  swift_unknownObjectRelease();
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B64488FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B6448954()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B64489A0()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64489D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B6448A28()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6448A68()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6448AA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6448AE4()
{
  sub_1B645745C(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1B6448B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B67D87BC();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1B67D877C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B6448C24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B67D87BC();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1B67D877C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B6448D24(uint64_t *a1)
{
  type metadata accessor for FeedItemSequence(255, *a1, *a1, *(a1[1] + 8));

  return swift_getWitnessTable();
}

uint64_t sub_1B6448D80()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B6448DCC()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6448E04()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B6448E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FeedItemInventory.Metadata(0, *(v4 + 32), *(v4 + 40), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 56) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  swift_unknownObjectRelease();

  v9 = v4 + v7;
  v10 = sub_1B67D877C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v7, 1, v10))
  {
    (*(v11 + 8))(v4 + v7, v10);
  }

  v12 = *(v5 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  if (!(*(v14 + 48))(v9 + v12, 1, AssociatedTypeWitness))
  {
    (*(v14 + 8))(v9 + v12, AssociatedTypeWitness);
  }

  return MEMORY[0x1EEE6BDD0](v4, v7 + v8, v6 | 7);
}

uint64_t sub_1B6449014()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B644904C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B644909C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B64490E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B644912C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B644916C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A398, &qword_1B6811328);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B6449214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RecipeItemInventory.Metadata(0, *(v4 + 32), *(v4 + 40), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 56) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  swift_unknownObjectRelease();

  v9 = v4 + v7;
  v10 = sub_1B67D877C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v7, 1, v10))
  {
    (*(v11 + 8))(v4 + v7, v10);
  }

  v12 = *(v5 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  if (!(*(v14 + 48))(v9 + v12, 1, AssociatedTypeWitness))
  {
    (*(v14 + 8))(v9 + v12, AssociatedTypeWitness);
  }

  return MEMORY[0x1EEE6BDD0](v4, v7 + v8, v6 | 7);
}

uint64_t sub_1B64493E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADF8, &qword_1B6816E10);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B6449458()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B698, &qword_1B6816E18);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B6A0, &unk_1B6816E20);
  (*(*(v2 - 8) + 8))(v0 + 24, v2);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6449510()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B644955C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B644959C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1B64495DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B67D85FC();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6449648(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1B67D85FC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

__n128 sub_1B64496D4(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B64496E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B6449720()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PrivateZoneChange(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  v4 = sub_1B67D999C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 88) & ~v6;
  v8 = *(v5 + 64);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  (*(v5 + 8))(v0 + v7, v4);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v8, v6 | 7);
}

uint64_t sub_1B6449848()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B6449880()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B64498B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B6449904()
{
  MEMORY[0x1B8C96ED0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B644996C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SmarterFetchRequest.DataType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B6449A2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SmarterFetchRequest.DataType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B6449AE8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B6449B20()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1B6449D2C(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

void sub_1B6449D58(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v52 = sub_1B67DA45C();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v46 - v15;
  sub_1B67D8C2C();
  sub_1B67D8AAC();
  *&v64 = a1;
  *(&v64 + 1) = a2;
  sub_1B67D8DDC();

  v17 = a5[3];
  v49 = a5;
  v17(a4, a5);
  v67 = a3;
  v18 = [a3 modificationDate];
  if (v18)
  {
    v19 = v18;
    sub_1B67D874C();

    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = sub_1B67D877C();
  (*(*(v21 - 8) + 56))(v16, v20, 1, v21);
  sub_1B67D8DDC();

  *(&v65 + 1) = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v64);
  v47 = *(a4 - 8);
  v23 = *(v47 + 16);
  v53 = a6;
  v54 = a4;
  v23(boxed_opaque_existential_0, a6, a4);
  sub_1B67DA43C();
  v50 = v13;
  sub_1B67DA44C();
  v24 = sub_1B67DA00C();

  sub_1B67DA10C();
  v65 = v62;
  v66 = v63;
  v64 = v61;
  if (*(&v63 + 1))
  {
    v25 = &qword_1EB949A68;
    v55 = v24;
    do
    {

      sub_1B644A4F0(&v65, v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949A50, &qword_1B680FD58);
      if (swift_dynamicCast())
      {
        v26 = v25;
        sub_1B6416D08(v59, &v61);
        v28 = *(&v62 + 1);
        v27 = v63;
        __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
        if ((*(v27 + 8))(v28, v27))
        {
          [v67 encryptedValues];
          swift_getObjectType();
          v29 = *(&v62 + 1);
          v30 = v63;
          __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
          (*(v30 + 24))(v29, v30);
          sub_1B67D9D3C();

          swift_unknownObjectRelease();
        }

        else
        {
          v31 = *(&v62 + 1);
          v32 = v63;
          __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
          (*(v32 + 24))(v31, v32);
          sub_1B644A500();
          sub_1B67D9D3C();
        }

        v25 = v26;
        sub_1B644A54C(v59, &v56);
        if (v57)
        {
          sub_1B6416D08(&v56, v58);
          sub_1B6431D18(v58, &v56);
          v33 = *(&v62 + 1);
          v34 = v63;
          __swift_mutable_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
          (*(v34 + 40))(&v56, v33, v34);
          __swift_destroy_boxed_opaque_existential_1(v58);
        }

        else
        {
          sub_1B6418AB4(&v56, v26, &qword_1B680FD68);
          v35 = *(&v62 + 1);
          v36 = v63;
          __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
          if ((*(v36 + 16))(v35, v36))
          {
            v40 = *(&v62 + 1);
            v41 = v63;
            __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
            v42 = (*(v41 + 24))(v40, v41);
            v44 = v43;
            sub_1B644A5BC();
            swift_allocError();
            *v45 = v42;
            v45[1] = v44;
            swift_willThrow();

            sub_1B6418AB4(v59, &qword_1EB949A68, &qword_1B680FD68);
            (*(v51 + 8))(v50, v52);
            (*(v47 + 8))(v53, v54);
            __swift_destroy_boxed_opaque_existential_1(&v61);
            return;
          }
        }

        sub_1B6418AB4(v59, v26, &qword_1B680FD68);
        __swift_destroy_boxed_opaque_existential_1(&v61);
      }

      else
      {
        v60 = 0;
        memset(v59, 0, sizeof(v59));
        sub_1B6418AB4(v59, &qword_1EB949A58, &qword_1B680FD60);
      }

      sub_1B67DA10C();
      v65 = v62;
      v66 = v63;
      v64 = v61;
    }

    while (*(&v63 + 1));
  }

  v37 = v53;
  v38 = v48;
  v39 = v54;
  (v49[4])(v54);
  if (v38)
  {

    (*(v51 + 8))(v50, v52);
    (*(v47 + 8))(v37, v39);
  }

  else
  {
    (*(v51 + 8))(v50, v52);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_1B644A4F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1B644A500()
{
  result = qword_1EB949A60;
  if (!qword_1EB949A60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB949A60);
  }

  return result;
}

uint64_t sub_1B644A54C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949A68, &qword_1B680FD68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B644A5BC()
{
  result = qword_1EB950610[0];
  if (!qword_1EB950610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB950610);
  }

  return result;
}

uint64_t sub_1B644A610(void *a1, uint64_t a2)
{
  v31 = sub_1B67DA45C();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v40 + 1) = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v39);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, v2, a2);
  sub_1B67DA43C();
  v29 = v6;
  sub_1B67DA44C();
  v8 = sub_1B67DA00C();

  sub_1B67DA10C();
  v40 = v37;
  v41 = v38;
  v39 = v36;
  if (*(&v38 + 1))
  {
    v42 = v8;
    do
    {

      sub_1B644A4F0(&v40, &v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949A50, &qword_1B680FD58);
      if (swift_dynamicCast())
      {
        sub_1B6416D08(v34, &v36);
        v9 = *(&v37 + 1);
        v10 = v38;
        __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
        (*(v10 + 32))(&v32, v9, v10);
        if (v33)
        {
          sub_1B6416D08(&v32, v34);
          v11 = *(&v37 + 1);
          v12 = v38;
          __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
          if ((*(v12 + 8))(v11, v12))
          {
            [a1 encryptedValues];
            swift_getObjectType();
            v13 = a1;
            v15 = *(&v37 + 1);
            v14 = v38;
            __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
            v16 = v15;
            a1 = v13;
            (*(v14 + 24))(v16, v14);
            sub_1B6431D18(v34, &v32);
            sub_1B67D9D4C();
            swift_unknownObjectRelease();
          }

          else
          {
            v19 = *(&v37 + 1);
            v20 = v38;
            __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
            (*(v20 + 24))(v19, v20);
            sub_1B6431D18(v34, &v32);
            sub_1B644A500();
            sub_1B67D9D4C();
          }

          __swift_destroy_boxed_opaque_existential_1(v34);
          __swift_destroy_boxed_opaque_existential_1(&v36);
        }

        else
        {
          sub_1B6418AB4(&v32, &qword_1EB949A68, &qword_1B680FD68);
          v17 = *(&v37 + 1);
          v18 = v38;
          __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
          if ((*(v18 + 16))(v17, v18))
          {
            v22 = *(&v37 + 1);
            v23 = v38;
            __swift_project_boxed_opaque_existential_1(&v36, *(&v37 + 1));
            v24 = (*(v23 + 24))(v22, v23);
            v26 = v25;
            sub_1B644A5BC();
            swift_allocError();
            *v27 = v24;
            v27[1] = v26;
            swift_willThrow();

            (*(v30 + 8))(v29, v31);
            return __swift_destroy_boxed_opaque_existential_1(&v36);
          }

          __swift_destroy_boxed_opaque_existential_1(&v36);
        }
      }

      else
      {
        v35 = 0;
        memset(v34, 0, sizeof(v34));
        sub_1B6418AB4(v34, &qword_1EB949A58, &qword_1B680FD60);
      }

      sub_1B67DA10C();
      v40 = v37;
      v41 = v38;
      v39 = v36;
    }

    while (*(&v38 + 1));
  }

  (*(v30 + 8))(v29, v31);
}

uint64_t sub_1B644AB00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B644AB48(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B644ABA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_1B67D9A5C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v11 = v6;
  v12 = v3;
  v13 = a1;
  v14 = a2;
  sub_1B644BF68(&v10[-v8]);
  return sub_1B67D9ADC();
}

uint64_t sub_1B644AC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B920, &qword_1B6811070);
  v31 = a5;
  v7 = sub_1B67D9A8C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  v30 = &v29 - v10;
  v12 = sub_1B67D9ACC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v29 - v18;
  v20 = sub_1B67D993C();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(v16, v32, v12);
  v21 = a1;
  v22 = v7;
  (*(v8 + 16))(v11, v21, v7);
  v23 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v24 = (v14 + *(v8 + 80) + v23) & ~*(v8 + 80);
  v25 = swift_allocObject();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 4) = v31;
  (*(v13 + 32))(&v25[v23], v16, v12);
  (*(v8 + 32))(&v25[v24], v30, v22);
  v26 = &v25[(v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8];
  v27 = v34;
  *v26 = v33;
  v26[1] = v27;

  sub_1B644BCA8(0, 0, v19, &unk_1B680FE08, v25);
}

uint64_t sub_1B644AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a7;
  v8[21] = a8;
  v8[18] = a5;
  v8[19] = a6;
  v8[17] = a4;
  v8[22] = *(a8 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B920, &qword_1B6811070);
  v9 = sub_1B67D9A3C();
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();
  sub_1B67D9DFC();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v10 = sub_1B67D9ABC();
  v8[30] = v10;
  v8[31] = *(v10 - 8);
  v8[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B644B190, 0, 0);
}

uint64_t sub_1B644B190()
{
  sub_1B67D9ACC();
  sub_1B67D9A9C();
  v1 = swift_task_alloc();
  v0[33] = v1;
  *v1 = v0;
  v1[1] = sub_1B644B260;
  v2 = v0[29];
  v3 = v0[30];

  return MEMORY[0x1EEE6DB90](v2, 0, 0, v3, v0 + 12);
}

uint64_t sub_1B644B260()
{

  if (v0)
  {
    v1 = sub_1B644B8E4;
  }

  else
  {
    v1 = sub_1B644B370;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1B644B370()
{
  v1 = v0[29];
  v2 = v0[21];
  v3 = v0[22];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);
    v0[16] = 0;
    sub_1B67D9A8C();
    sub_1B67D9A7C();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[25];
    (*(v3 + 32))(v0[23], v1, v2);
    sub_1B67D9A8C();
    sub_1B67D9A6C();
    (*(v7 + 8))(v6, v8);
    v9 = swift_task_alloc();
    v0[33] = v9;
    *v9 = v0;
    v9[1] = sub_1B644B260;
    v10 = v0[29];
    v11 = v0[30];

    return MEMORY[0x1EEE6DB90](v10, 0, 0, v11, v0 + 12);
  }
}

uint64_t sub_1B644B594()
{

  if (v0)
  {
    v1 = sub_1B644BBA4;
  }

  else
  {
    v1 = sub_1B644B6A4;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1B644B6A4()
{
  v1 = v0[28];
  v2 = v0[21];
  v3 = v0[22];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[35];
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    v0[15] = 0;
    sub_1B67D9A8C();
    sub_1B67D9A7C();

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[26];
    v7 = v0[27];
    v9 = v0[25];
    (*(v3 + 32))(v0[23], v1, v2);
    sub_1B67D9A8C();
    sub_1B67D9A6C();
    (*(v8 + 8))(v7, v9);
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
    v10 = swift_task_alloc();
    v0[34] = v10;
    *v10 = v0;
    v10[1] = sub_1B644B594;
    v11 = v0[28];

    return MEMORY[0x1EEE6D8D0](v11, 0, 0);
  }
}

uint64_t sub_1B644B8E4()
{
  v1 = v0[19];
  (*(v0[31] + 8))(v0[32], v0[30]);
  v0[35] = v0[12];
  v1();
  v2 = v0[5];
  v3 = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[10] = swift_getAssociatedTypeWitness();
  v0[11] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 7);
  sub_1B67D9A2C();

  __swift_mutable_project_boxed_opaque_existential_1((v0 + 7), v0[10]);
  v6 = swift_task_alloc();
  v0[34] = v6;
  *v6 = v0;
  v6[1] = sub_1B644B594;
  v7 = v0[28];

  return MEMORY[0x1EEE6D8D0](v7, 0, 0);
}

uint64_t sub_1B644BBA4()
{
  v1 = v0[14];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[35];
  v0[13] = v1;
  v3 = v1;
  sub_1B67D9A8C();
  sub_1B67D9A7C();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B644BCA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B644C200(a3, v25 - v10);
  v12 = sub_1B67D993C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B644C270(v11);
  }

  else
  {
    sub_1B67D992C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B67D989C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B67D965C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1B644C270(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B644C270(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1B644BF68@<X0>(uint64_t a2@<X8>)
{
  v3 = *MEMORY[0x1E69E8790];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B920, &qword_1B6811070);
  v4 = sub_1B67D9A5C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B644C054()
{
  v2 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94B920, &qword_1B6811070);
  v3 = *(sub_1B67D9ACC() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1B67D9A8C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1B642694C;

  return sub_1B644AF94(v11, v12, v13, v0 + v4, v0 + v7, v9, v10, v2);
}

uint64_t sub_1B644C200(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B644C270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B644C2D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B642694C;

  return sub_1B641633C(a1, v4);
}

uint64_t sub_1B644C390()
{
  v0 = sub_1B67D877C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D876C();
  sub_1B67D86BC();
  v5 = v4;
  result = (*(v1 + 8))(v3, v0);
  v7 = v5 * 1000.0;
  if (COERCE__INT64(fabs(v5 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v7 < 9.22337204e18)
  {
    return v7;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B644C560(void *a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &qword_1EDB1FC88, off_1E7C345E0);
  result = sub_1B67D88CC();
  if (result)
  {
    v6 = result;
    a2(0);
    return a3(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1B644C5F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B63F3DA0(0, &qword_1EDB1FC88, off_1E7C345E0);
  result = sub_1B67D88CC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB949AE0, qword_1B681A0D0);
    sub_1B650C1EC();

    v4 = sub_1B67D88BC();

    if (v4)
    {
      type metadata accessor for DropboxReadingHistory();
      return DropboxReadingHistory.__allocating_init(todayDropbox:articleExposureRegistry:)(v3, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id DropboxBundleSubscriptionManager.__allocating_init(todayDropbox:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949C10, &qword_1B680FEE8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *&v3[v4] = v5;
  *&v3[OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_entitlementsOverrideProvider] = 0;
  *&v3[OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_todayDropbox] = a1;
  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id DropboxBundleSubscriptionManager.init(todayDropbox:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949C10, &qword_1B680FEE8);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_entitlementsOverrideProvider] = 0;
  *&v1[OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_todayDropbox] = a1;
  v7.receiver = v1;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t DropboxBundleSubscriptionManager.addInterest()@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InterestToken();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = InterestToken.__allocating_init(_:)(sub_1B644C8F8, v3);
  a1[3] = v2;
  a1[4] = &protocol witness table for InterestToken;
  *a1 = result;
  return result;
}

char *sub_1B644C8F8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *&result[OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData];
    v2 = result;

    os_unfair_lock_lock((v1 + 24));
    swift_unknownObjectRelease();
    *(v1 + 16) = 0;
    os_unfair_lock_unlock((v1 + 24));
  }

  return result;
}

uint64_t sub_1B644C97C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    *a3 = v4;
LABEL_6:
    swift_unknownObjectRetain();
    return sub_1B64475B8(v5, v6);
  }

  v8 = *(a2 + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_todayDropbox);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1B644DC08;
  *(v9 + 24) = v6;
  v12[4] = sub_1B644DC48;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1B644CB30;
  v12[3] = &block_descriptor;
  v10 = _Block_copy(v12);

  [v8 peekSyncWithAccessor_];
  _Block_release(v10);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    result = *a1;
    if (*a1)
    {
      *a3 = result;
      swift_unknownObjectRetain();
      v5 = sub_1B644DC08;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B644CB30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

id DropboxBundleSubscriptionManager.cachedSubscription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
  os_unfair_lock_lock((v1 + 24));
  sub_1B644CDA4((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 24));
  v2 = [v5 bundleSubscription];
  swift_unknownObjectRelease();
  if (!v2)
  {
    v3 = sub_1B67D97AC();
    v2 = FCBundleSubscriptionMakeWithStateInline(v3);
  }

  return v2;
}

id DropboxBundleSubscriptionManager.validatedCachedSubscription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
  os_unfair_lock_lock((v1 + 24));
  sub_1B644DC8C((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = [v4 bundleSubscription];
  swift_unknownObjectRelease();
  return v2;
}

id FCBundleSubscriptionMakeWithStateInline(void *a1)
{
  v1 = a1;
  v2 = [FCBundleSubscription subscriptionWithSubscriptionState:3 bundleChannelIDs:v1];
  v3 = MEMORY[0x1E696AD98];
  v4 = v2;
  v5 = [v3 numberWithUnsignedInteger:v2 + 1];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:~v2];
  objc_setAssociatedObject(v4, (v2 + 1), v5, 1);
  objc_setAssociatedObject(v4, (-2 - v2), v6, 1);

  return v4;
}

id DropboxBundleSubscriptionManager.bundleSubscription.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
  os_unfair_lock_lock((v1 + 24));
  sub_1B644DC8C((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 24));
  v2 = [v5 bundleSubscription];
  swift_unknownObjectRelease();
  if (!v2)
  {
    v3 = sub_1B67D97AC();
    v2 = FCBundleSubscriptionMakeWithStateInline(v3);
  }

  return v2;
}

uint64_t DropboxBundleSubscriptionManager.entitlementsOverrideProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_entitlementsOverrideProvider;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t (*DropboxBundleSubscriptionManager.prepareForUse(completion:)(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t DropboxBundleSubscriptionManager.purchasedTagIDs.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
  os_unfair_lock_lock((v1 + 24));
  sub_1B644DC8C((v1 + 16), &v5);
  os_unfair_lock_unlock((v1 + 24));
  v2 = [v5 purchasedTagIDs];
  swift_unknownObjectRelease();
  v3 = sub_1B67D9AFC();

  return v3;
}

id DropboxBundleSubscriptionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DropboxBundleSubscriptionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B644DA6C(void (*a1)(id))
{
  if (a1)
  {
    v3 = *(v1 + OBJC_IVAR____TtC8NewsCore32DropboxBundleSubscriptionManager_lazyDropboxData);
    MEMORY[0x1EEE9AC00](a1);
    os_unfair_lock_lock((v3 + 24));
    sub_1B644DC8C((v3 + 16), &v6);
    os_unfair_lock_unlock((v3 + 24));
    v4 = [v6 bundleSubscription];
    swift_unknownObjectRelease();
    if (!v4)
    {
      v5 = sub_1B67D97AC();
      v4 = FCBundleSubscriptionMakeWithStateInline(v5);
    }

    a1(v4);
  }
}

uint64_t sub_1B644DBAC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B644DBCC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1B644DC08(uint64_t a1)
{
  **(v1 + 16) = a1;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of FeedItemScoringServiceType.scoreItems(in:configurationSet:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B642694C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1B644DDE0@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  v9(v5, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  result = sub_1B67D8B3C();
  *a1 = result;
  return result;
}

uint64_t sub_1B644DF70()
{
  sub_1B67D8B6C();
  sub_1B67D8B8C();
  swift_allocObject();
  return sub_1B67D8C0C();
}

uint64_t sub_1B644DFB8(uint64_t a1)
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v3)
  {
    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B644E00C()
{
  result = qword_1EB949F60;
  if (!qword_1EB949F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB949F60);
  }

  return result;
}

unint64_t sub_1B644E064()
{
  result = qword_1EB949F68;
  if (!qword_1EB949F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB949F68);
  }

  return result;
}

uint64_t sub_1B644E0B8(uint64_t a1)
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v3)
  {
    return v2;
  }

  __break(1u);
  return result;
}

id static CKContainer.newsPrivate.getter()
{
  v0 = [objc_opt_self() defaultConfiguration];
  v1 = [v0 privateDataContainerIdentifier];
  if (!v1)
  {
    sub_1B67D964C();
    v1 = sub_1B67D963C();
  }

  if ([v0 environment])
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:v1 environment:v2];

  v4 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerID_];
  return v4;
}

id static CKContainer.newsPrivateSecure.getter()
{
  v0 = [objc_opt_self() defaultConfiguration];
  v1 = [v0 privateDataSecureContainerIdentifier];
  if (!v1)
  {
    sub_1B67D964C();
    v1 = sub_1B67D963C();
  }

  if ([v0 environment])
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E695B8A0]) initWithContainerIdentifier:v1 environment:v2];

  v4 = [objc_allocWithZone(MEMORY[0x1E695B8B0]) init];
  [v4 setUseZoneWidePCS_];
  v5 = [objc_allocWithZone(MEMORY[0x1E695B888]) initWithContainerID:v3 options:v4];

  return v5;
}

uint64_t sub_1B644E324()
{
  v0 = sub_1B67D882C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1B67D883C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B646A628();

  sub_1B67D887C();

  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E88], v0);
  v6[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F78, &qword_1B68100A8);
  swift_allocObject();
  result = sub_1B67D885C();
  qword_1EDB23E20 = result;
  return result;
}

uint64_t *sub_1B644E4E8()
{
  if (qword_1EDB23E08 != -1)
  {
    swift_once();
  }

  return &qword_1EDB23E10;
}

uint64_t *sub_1B644E570()
{
  if (qword_1EDB23DF8 != -1)
  {
    swift_once();
  }

  return &qword_1EDB23E00;
}

uint64_t *sub_1B644E5F8()
{
  if (qword_1EDB23DE8 != -1)
  {
    swift_once();
  }

  return &qword_1EDB23DF0;
}

uint64_t sub_1B644E680(uint64_t a1, void *a2, uint64_t *a3)
{
  v18 = a3;
  v17 = sub_1B67D882C();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B67D881C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B67D883C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F70, &qword_1B68100A0);
  sub_1B67D964C();
  *v13 = sub_1B67D964C();
  v13[1] = v14;
  (*(v11 + 104))(v13, *MEMORY[0x1E69D6E98], v10);
  (*(v7 + 104))(v9, *MEMORY[0x1E69D6D00], v6);
  (*(v3 + 104))(v5, *MEMORY[0x1E69D6E90], v17);
  result = sub_1B67D884C();
  *v18 = result;
  return result;
}

uint64_t *sub_1B644E900()
{
  if (qword_1EDB23DD8 != -1)
  {
    swift_once();
  }

  return &qword_1EDB23DE0;
}

uint64_t sub_1B644E974(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t getEnumTagSinglePayload for MetadataEntity.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for MetadataEntity.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1B644EAD4(uint64_t a1, uint64_t a2)
{
  result = sub_1B67D964C();
  qword_1EB95A888 = result;
  unk_1EB95A890 = v3;
  return result;
}

uint64_t sub_1B644EB04(uint64_t a1, uint64_t a2)
{
  result = sub_1B67D964C();
  qword_1EB95A898 = result;
  unk_1EB95A8A0 = v3;
  return result;
}

uint64_t sub_1B644EB84(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  if (*a3 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
  }

  v6 = *a4;

  return v6;
}

Swift::Bool __swiftcall ItemExposureRegistryType.hasItemIDBeenExposed(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  ItemExposureRegistryType.firstExposureDate(for:)(countAndFlagsBits, object, &v8 - v4);
  v6 = sub_1B67D877C();
  LOBYTE(object) = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  sub_1B6418AB4(v5, &unk_1EB94A100, &qword_1B680FD50);
  return object;
}

uint64_t ItemExposureRegistryType.firstExposureDate(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B68100D0;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  v8 = sub_1B67D97AC();

  v9 = [v3 exposuresForItemIDs_];

  type metadata accessor for ItemExposure(0);
  v10 = sub_1B67D97BC();

  if (v10 >> 62)
  {
    result = sub_1B67DA04C();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v19 = sub_1B67D877C();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a3;
    v17 = 1;
    goto LABEL_9;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1B8C95180](0, v10);

    v21 = OBJC_IVAR___FCItemExposure_firstExposedAt;
    v14 = sub_1B67D877C();
    v22 = *(v14 - 8);
    (*(v22 + 16))(a3, v20 + v21, v14);
    swift_unknownObjectRelease();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 32);

    v13 = OBJC_IVAR___FCItemExposure_firstExposedAt;
    v14 = sub_1B67D877C();
    v22 = *(v14 - 8);
    (*(v22 + 16))(a3, &v12[v13], v14);
  }

  v15 = *(v22 + 56);
  v16 = a3;
  v17 = 0;
  v18 = v14;
LABEL_9:

  return v15(v16, v17, 1, v18);
}

void ItemExposureRegistryType.markItemIDAsExposed(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3B0, &qword_1B6810120);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B68100E0;
  type metadata accessor for ItemExposure(0);
  (*(v9 + 16))(v11, a3, v8);

  *(v12 + 32) = ItemExposure.__allocating_init(itemID:exposedAt:version:)(a1, a2, v11, 0);
  v13 = sub_1B67D97AC();

  [v4 registerExposures_];
}

Swift::Void __swiftcall ItemExposureRegistryType.markItemIDsAsExposed(_:)(Swift::OpaquePointer a1)
{
  v3 = sub_1B67D877C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B67D876C();
  v9 = v6;
  sub_1B644F358(sub_1B644F32C, v8, a1._rawValue);
  type metadata accessor for ItemExposure(0);
  v7 = sub_1B67D97AC();

  [v1 registerExposures_];

  (*(v4 + 8))(v6, v3);
}

id sub_1B644F220@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  type metadata accessor for ItemExposure(0);
  (*(v7 + 16))(v9, a2, v6);

  result = ItemExposure.__allocating_init(itemID:exposedAt:version:)(v11, v10, v9, 0);
  *a3 = result;
  return result;
}

uint64_t sub_1B644F358(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1B67D9FAC();
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v11[0] = *(i - 1);
      v11[1] = v10;

      a1(&v12, v11);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_1B67D9F7C();
      sub_1B67D9FBC();
      sub_1B67D9FCC();
      sub_1B67D9F8C();
      if (!--v6)
      {
        return v13;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ItemExposureRegistryType.markItemIDAsExposed(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  *(inited + 32) = countAndFlagsBits;
  *(inited + 40) = object;

  ItemExposureRegistryType.markItemIDsAsExposed(_:)(inited);
  swift_setDeallocating();
  sub_1B644F4F4(inited + 32);
}

unint64_t sub_1B644F594()
{
  result = qword_1EDB1FB00;
  if (!qword_1EDB1FB00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB1FB00);
  }

  return result;
}

id sub_1B644F624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v34 = a1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B3E0, &qword_1B68165A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = v28 - v5;
  v32 = sub_1B67D8A9C();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1B67D9CEC();
  v7 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B67D9CBC();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1B67D949C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_storage;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F80, &qword_1B6810128);
  v13 = swift_allocObject();
  *(v13 + 44) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 16) = 0;
  *(v13 + 40) = -1;
  *&v2[v12] = v13;
  v29 = OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_accessQueue;
  v14 = sub_1B644F594();
  v28[0] = "nFirstExposedAt";
  v28[1] = v14;
  sub_1B67D947C();
  v39 = MEMORY[0x1E69E7CC0];
  sub_1B6430304(&qword_1EDB1FB08, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A980, &unk_1B6810130);
  v15 = v30;
  sub_1B6458C04(&qword_1EDB1FB10, &unk_1EB94A980, &unk_1B6810130);
  v16 = v32;
  sub_1B67D9E5C();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8090], v31);
  v18 = v33;
  v17 = v34;
  *&v2[v29] = sub_1B67D9D2C();
  v19 = OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_fileURL;
  v20 = sub_1B67D85FC();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v3[v19], v17, v20);
  sub_1B6415FF0(v37, v18, &unk_1EB94B3E0, &qword_1B68165A0);
  v22 = *(v15 + 48);
  if (v22(v18, 1, v16) == 1)
  {
    v23 = sub_1B6471324();
    v24 = v35;
    (*(v15 + 16))(v35, v23, v16);
    v25 = v24;
    if (v22(v18, 1, v16) != 1)
    {
      sub_1B6418AB4(v18, &unk_1EB94B3E0, &qword_1B68165A0);
    }
  }

  else
  {
    v25 = v35;
    (*(v15 + 32))(v35, v18, v16);
  }

  (*(v15 + 32))(&v3[OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_logger], v25, v16);
  v38.receiver = v3;
  v38.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v38, sel_init);
  sub_1B6418AB4(v37, &unk_1EB94B3E0, &qword_1B68165A0);
  (*(v21 + 8))(v17, v20);
  return v26;
}

id sub_1B644FB50()
{
  ObjectType = swift_getObjectType();
  sub_1B644FB98();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1B644FB98()
{
  sub_1B67D9D0C();
  v1 = *(v0 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_storage);
  os_unfair_lock_lock((v1 + 44));
  v2 = *(v1 + 40);
  if (v2 != 255)
  {
    if (v2)
    {
      sub_1B6453A28(*(v1 + 16), *(v1 + 24), *(v1 + 32), v2);
    }

    else
    {
      sub_1B67D8F2C();
    }
  }

  sub_1B64539D4();
  v3 = swift_allocError();
  *v4 = 0;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  os_unfair_lock_unlock((v1 + 44));
}

char *sub_1B644FDFC(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = sub_1B67D8B1C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = a2 >> 62;
  v42 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v8;
  if (a2 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B67DA04C())
  {
    v14 = MEMORY[0x1E69E7CC0];
    v49 = a2;
    v41 = v12;
    if (!i)
    {
      goto LABEL_16;
    }

    *&v45 = MEMORY[0x1E69E7CC0];
    result = sub_1B6456B24(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v38 = v3;
    v39 = v10;
    v40 = v9;
    v44 = a1;
    v14 = v45;
    if ((a2 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      do
      {
        v17 = (MEMORY[0x1B8C95180](v16, v49) + OBJC_IVAR___FCItemExposure_itemID);
        swift_beginAccess();
        v19 = *v17;
        v18 = v17[1];

        swift_unknownObjectRelease();
        *&v45 = v14;
        v21 = *(v14 + 16);
        v20 = *(v14 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1B6456B24((v20 > 1), v21 + 1, 1);
          v14 = v45;
        }

        ++v16;
        *(v14 + 16) = v21 + 1;
        v22 = v14 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v18;
      }

      while (i != v16);
    }

    else
    {
      v23 = (a2 + 32);
      do
      {
        v24 = (*v23 + OBJC_IVAR___FCItemExposure_itemID);
        swift_beginAccess();
        v26 = *v24;
        v25 = v24[1];
        *&v45 = v14;
        v27 = *(v14 + 16);
        v28 = *(v14 + 24);

        if (v27 >= v28 >> 1)
        {
          sub_1B6456B24((v28 > 1), v27 + 1, 1);
          v14 = v45;
        }

        *(v14 + 16) = v27 + 1;
        v29 = v14 + 16 * v27;
        *(v29 + 32) = v26;
        *(v29 + 40) = v25;
        ++v23;
        --i;
      }

      while (i);
    }

    a1 = v44;
    v10 = v39;
    v9 = v40;
    v3 = v38;
LABEL_16:
    sub_1B67D8D5C();
    sub_1B64503A4(v14);

    v30 = v42;
    sub_1B67D8C8C();

    v31 = sub_1B67D8E4C();
    v32 = v43;
    (*(*(v31 - 8) + 56))(v43, 1, 1, v31);
    v33 = sub_1B67D8D2C();
    if (v3)
    {

      sub_1B6418AB4(v32, &qword_1EB94B510, &unk_1B68102C0);
      return (*(v10 + 8))(v30, v9);
    }

    v34 = v33;

    sub_1B6418AB4(v32, &qword_1EB94B510, &unk_1B68102C0);
    (*(v10 + 8))(v30, v9);
    *&v45 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A018, &qword_1B6810318);
    v9 = sub_1B6458C04(&qword_1EDB1E618, &qword_1EB94A018, &qword_1B6810318);
    sub_1B6458C58();
    v43 = sub_1B67D970C();

    if (v41)
    {
      a2 = v49;
      v10 = sub_1B67DA04C();
      if (!v10)
      {
      }
    }

    else
    {
      a2 = v49;
      v10 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v10)
      {
      }
    }

    v44 = a1;
    a1 = 0;
    v12 = a2 & 0xC000000000000001;
    while (1)
    {
      if (v12)
      {
        v35 = MEMORY[0x1B8C95180](a1, a2);
      }

      else
      {
        if (a1 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v35 = *(a2 + 8 * a1 + 32);
      }

      v36 = v35;
      v9 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      sub_1B64504A0(v43, v35, v48);
      sub_1B67D8D4C();
      v45 = v48[0];
      v46 = v48[1];
      v47 = v48[2];
      sub_1B67D8CDC();

      ++a1;
      if (v9 == v10)
      {
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B64503A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B6456B04(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    v5 = MEMORY[0x1E69D62D8];
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);

      if (v9 >= v8 >> 1)
      {
        sub_1B6456B04((v8 > 1), v9 + 1, 1);
        v2 = v14;
      }

      v12 = MEMORY[0x1E69E6158];
      v13 = v5;
      *&v11 = v7;
      *(&v11 + 1) = v6;
      *(v2 + 16) = v9 + 1;
      sub_1B6416D08(&v11, v2 + 40 * v9 + 32);
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1B64504A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v112 = a3;
  v113 = sub_1B67D877C();
  v5 = *(v113 - 8);
  v6 = MEMORY[0x1EEE9AC00](v113);
  v8 = v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v105 = v89 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v109 = (v89 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v107 = v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v104 = v89 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v106 = v89 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v103 = v89 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v110 = v89 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v108 = v89 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v89 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = v89 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  *&v111 = v89 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = v89 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = v89 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = v89 - v39;
  v41 = a2;
  v42 = a2 + OBJC_IVAR___FCItemExposure_itemID;
  v43 = *(a2 + OBJC_IVAR___FCItemExposure_itemID);
  *&v114 = *(v42 + 8);
  if (!*(a1 + 16) || (v44 = sub_1B6456E70(v43, v114), (v45 & 1) == 0))
  {
    v57 = v5[2];
    v58 = v113;
    v57(v40, v41 + OBJC_IVAR___FCItemExposure_firstExposedAt, v113);
    v59 = v5[7];
    v59(v40, 0, 1, v58);
    v110 = v43;
    v60 = OBJC_IVAR___FCItemExposure_lastExposedAt;
    v57(v38, v41 + OBJC_IVAR___FCItemExposure_lastExposedAt, v58);
    v59(v38, 0, 1, v58);
    v109 = *(v41 + OBJC_IVAR___FCItemExposure_maxExposedVersion);
    v57(v35, v41 + OBJC_IVAR___FCItemExposure_maxExposedVersionFirstExposedAt, v58);
    v59(v35, 0, 1, v58);
    v61 = v41 + v60;
    v62 = v111;
    v57(v111, v61, v58);
    v59(v62, 0, 1, v58);
    v63 = v114;

    result = sub_1B645783C(v110, v63, v40, v38, v109, 0, v35, v62, v115);
    v65 = v115[1];
    v64 = v115[2];
    v66 = v115[0];
LABEL_21:
    v88 = v112;
    *v112 = v66;
    v88[1] = v65;
    v88[2] = v64;
    return result;
  }

  v91 = v8;
  v46 = (*(a1 + 56) + 48 * v44);
  v47 = v46[1];
  v100 = *v46;
  v111 = v47;
  v114 = v46[2];

  v98 = v111;

  v97 = *(&v111 + 1);

  v89[1] = v114;

  v93 = *(&v114 + 1);

  sub_1B67D8B4C();
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  v48 = v5 + 6;
  v49 = v5[6];
  v50 = v5;
  v51 = v113;
  v102 = v48;
  v101 = v49;
  result = v49(v27, 1, v113);
  if (result == 1)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v53 = OBJC_IVAR___FCItemExposure_firstExposedAt;
  v54 = v50[4];
  v55 = v109;
  v54();
  v99 = sub_1B6430304(&qword_1EDB1EFB0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v56 = sub_1B67D95FC();
  v96 = v54;
  v94 = v41;
  if (v56)
  {
    (v54)(v30, v55, v51);
  }

  else
  {
    (v50[1])(v55, v51);
    (v50[2])(v30, v41 + v53, v51);
  }

  v92 = v50;
  v95 = v50[7];
  v109 = v50 + 7;
  v95(v30, 0, 1, v51);
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  sub_1B67D8B4C();
  v67 = v110;
  sub_1B67D8DCC();

  result = v101(v67, 1, v51);
  if (result == 1)
  {
    goto LABEL_23;
  }

  v68 = OBJC_IVAR___FCItemExposure_lastExposedAt;
  v69 = v105;
  v70 = v96;
  (v96)(v105, v67, v51);
  v71 = v94;
  v72 = sub_1B67D960C();
  v73 = v106;
  v74 = v107;
  v90 = v68;
  if (v72)
  {
    v75 = v108;
    (v70)(v108, v69, v51);
  }

  else
  {
    v76 = v92;
    (v92[1])(v69, v51);
    v77 = v76[2];
    v75 = v108;
    v77(v108, v71 + v68, v51);
  }

  v78 = v70;
  v79 = v71;
  v80 = v95;
  v95(v75, 0, 1, v51);
  sub_1B67D8DDC();

  v81 = *(v71 + OBJC_IVAR___FCItemExposure_maxExposedVersion);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (BYTE8(v115[0]))
  {
    goto LABEL_24;
  }

  if (*&v115[0] >= v81)
  {
    goto LABEL_16;
  }

  sub_1B67D8B4C();
  *&v115[0] = v81;
  BYTE8(v115[0]) = 0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  result = v101(v73, 1, v51);
  if (result != 1)
  {
    v82 = v103;
    (v78)(v103, v73, v51);
    v80(v82, 0, 1, v51);
    sub_1B67D8DDC();

LABEL_16:
    sub_1B67D8B4C();
    sub_1B67D8B4C();
    sub_1B67D8DCC();

    result = v101(v74, 1, v51);
    if (result != 1)
    {
      v83 = v91;
      (v78)(v91, v74, v51);
      v84 = v90;
      if (sub_1B67D960C())
      {
        v85 = v104;
        (v78)(v104, v83, v51);
      }

      else
      {
        v86 = v92;
        (v92[1])(v83, v51);
        v87 = v79 + v84;
        v85 = v104;
        (v86[2])(v104, v87, v51);
      }

      v80(v85, 0, 1, v51);
      sub_1B67D8DDC();

      v64 = v114;
      v65 = v111;
      v66 = v100;
      goto LABEL_21;
    }

    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1B6450F30(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B67D946C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B67D949C();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_accessQueue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_1B6458BB0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B6453FF4;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_1B67D947C();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1B6430304(&qword_1EDB1EF78, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B1F0, &qword_1B6810310);
  sub_1B6458C04(&qword_1EDB1E630, &unk_1EB94B1F0, &qword_1B6810310);
  sub_1B67D9E5C();
  MEMORY[0x1B8C94F70](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

uint64_t sub_1B6451280(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F88, &qword_1B6810148);
  sub_1B67D9D0C();
  return v2;
}

uint64_t sub_1B6451450@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v59 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v61 = v53 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v62 = v53 - v9;
  v60 = sub_1B67D877C();
  v74 = *(v60 - 8);
  v10 = MEMORY[0x1EEE9AC00](v60);
  v58 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v53 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v53 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v53 - v18;
  v20 = sub_1B67D8B1C();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D8D5C();
  sub_1B64503A4(a1);
  sub_1B67D8C8C();

  v24 = sub_1B67D8E4C();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  v25 = v75;
  v26 = sub_1B67D8D2C();
  v53[1] = v25;
  if (v25)
  {

    sub_1B6418AB4(v19, &qword_1EB94B510, &unk_1B68102C0);
    return (*(v21 + 8))(v23, v20);
  }

  else
  {
    v28 = v26;
    v72 = v14;
    v73 = v16;

    sub_1B6418AB4(v19, &qword_1EB94B510, &unk_1B68102C0);
    (*(v21 + 8))(v23, v20);
    v29 = *(v28 + 16);
    if (v29)
    {
      v78 = MEMORY[0x1E69E7CC0];
      sub_1B67D9FAC();
      result = type metadata accessor for ItemExposure(0);
      v30 = 0;
      v31 = (v74 + 48);
      v71 = (v74 + 32);
      v54 = result;
      v53[2] = result + 120;
      v32 = (v28 + 40);
      v33 = v62;
      v57 = a2;
      v56 = v28;
      v55 = v29;
      v70 = (v74 + 48);
      while (v30 < *(v28 + 16))
      {
        v34 = v30;
        v35 = *(v32 - 1);
        v36 = *v32;
        v38 = v32[1];
        v37 = v32[2];
        v40 = v32[3];
        v39 = v32[4];
        v66 = v32;

        v75 = v38;

        v74 = v37;

        v69 = v40;

        v67 = v39;

        v68 = v35;
        sub_1B67D8B4C();
        sub_1B67D8DCC();

        v41 = v77;
        if (!v77)
        {
          goto LABEL_20;
        }

        v64 = v36;
        v65 = v34;
        v63 = v76;
        sub_1B67D8B4C();
        sub_1B67D8DCC();

        v42 = *v31;
        v43 = v60;
        result = (*v31)(v33, 1, v60);
        v44 = v61;
        if (result == 1)
        {
          goto LABEL_21;
        }

        v45 = *v71;
        (*v71)(v73, v33, v43);
        sub_1B67D8B4C();
        sub_1B67D8DCC();

        result = v42(v44, 1, v43);
        if (result == 1)
        {
          goto LABEL_18;
        }

        v45(v72, v44, v43);
        sub_1B67D8B4C();
        sub_1B67D8DCC();

        if (v77)
        {
          goto LABEL_19;
        }

        v46 = v76;
        sub_1B67D8B4C();
        v47 = v59;
        sub_1B67D8DCC();

        result = v42(v47, 1, v43);
        if (result == 1)
        {
          goto LABEL_22;
        }

        v48 = v43;
        v49 = v65 + 1;
        v50 = v58;
        v45(v58, v47, v48);
        v30 = v49;
        (*(v54 + 120))(v63, v41, v73, v72, v46, v50);

        sub_1B67D9F7C();
        sub_1B67D9FBC();
        sub_1B67D9FCC();
        result = sub_1B67D9F8C();
        v32 = v66 + 6;
        v51 = v55 == v49;
        a2 = v57;
        v33 = v62;
        v28 = v56;
        v31 = v70;
        if (v51)
        {

          v52 = v78;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {

      v52 = MEMORY[0x1E69E7CC0];
LABEL_15:
      *a2 = v52;
    }
  }

  return result;
}

uint64_t sub_1B6451BC8(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1B6450F30(sub_1B6456FE4, v4);
}

uint64_t sub_1B6451D10()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F90, &qword_1B6810150);
  sub_1B67D9D0C();
  return v1;
}

uint64_t sub_1B6451EB4@<X0>(void *a1@<X8>)
{
  v3 = sub_1B67D8E4C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B64577E8();
  sub_1B67D8D9C();
  strcpy(v6, "LastAccessedAt");
  v6[15] = -18;
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6220], v3);
  v7 = sub_1B67D8FAC();
  if (v1)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v9 = v7;
    (*(v4 + 8))(v6, v3);

    v10 = *(v9 + 16);
    if (v10)
    {
      v20 = 0;
      v21 = a1;
      v22 = MEMORY[0x1E69E7CC0];
      sub_1B6456B24(0, v10, 0);
      v11 = 32;
      v12 = v22;
      do
      {

        v14 = sub_1B644DFB8(v13);
        v16 = v15;

        v22 = v12;
        v18 = *(v12 + 16);
        v17 = *(v12 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1B6456B24((v17 > 1), v18 + 1, 1);
          v12 = v22;
        }

        *(v12 + 16) = v18 + 1;
        v19 = v12 + 16 * v18;
        *(v19 + 32) = v14;
        *(v19 + 40) = v16;
        v11 += 8;
        --v10;
      }

      while (v10);

      *v21 = v12;
    }

    else
    {

      *a1 = MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1B6452114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;

  sub_1B6450F30(a3, v5);
}

uint64_t sub_1B6452180(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v22 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v22 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - v13;
  v15 = sub_1B67D877C();
  v16 = *(*(v15 - 8) + 56);
  v16(v14, 1, 1, v15);
  v16(v12, 1, 1, v15);
  v16(v9, 1, 1, v15);
  sub_1B67D876C();
  v16(v6, 0, 1, v15);
  sub_1B645783C(0, 0xE000000000000000, v14, v12, 0, 1, v9, v6, v23);
  v17 = *(v24 + 16);
  if (v17)
  {
    v18 = (v24 + 40);
    while (1)
    {
      v19 = *(v18 - 1);
      v20 = *v18;

      sub_1B67D8B4C();
      *&v22[0] = v19;
      *(&v22[0] + 1) = v20;
      sub_1B67D8DDC();

      sub_1B67D8D8C();
      v22[0] = v23[0];
      v22[1] = v23[1];
      v22[2] = v23[2];
      sub_1B6458A9C();
      sub_1B67D8E3C();
      if (v2)
      {
        break;
      }

      v18 += 2;
      if (!--v17)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:
}

uint64_t sub_1B64524AC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F90, &qword_1B6810150);
  sub_1B67D9D0C();
  return v3;
}

uint64_t sub_1B6452648@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37[-1] - v6;
  v8 = sub_1B67D8B1C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v37[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v37[-1] - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v37[-1] - v16;
  sub_1B64577E8();
  sub_1B67D8D9C();
  sub_1B64503A4(a1);
  sub_1B67D8C8C();

  v18 = sub_1B67D877C();
  v37[3] = v18;
  v37[4] = MEMORY[0x1E69D6130];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, a2, v18);
  sub_1B67D8C9C();
  __swift_destroy_boxed_opaque_existential_1(v37);
  sub_1B67D8C6C();
  v20 = *(v9 + 8);
  v20(v12, v8);
  v20(v15, v8);
  v21 = sub_1B67D8E4C();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  v22 = v38;
  v23 = sub_1B67D8FEC();
  if (v22)
  {

    sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
    return (v20)(v17, v8);
  }

  else
  {
    v25 = v23;

    sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
    v20(v17, v8);
    v26 = *(v25 + 16);
    if (v26)
    {
      v38 = 0;
      v37[0] = MEMORY[0x1E69E7CC0];
      sub_1B6456B24(0, v26, 0);
      v27 = 32;
      v28 = v37[0];
      do
      {

        v30 = sub_1B644DFB8(v29);
        v32 = v31;

        v37[0] = v28;
        v34 = *(v28 + 16);
        v33 = *(v28 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1B6456B24((v33 > 1), v34 + 1, 1);
          v28 = v37[0];
        }

        *(v28 + 16) = v34 + 1;
        v35 = v28 + 16 * v34;
        *(v35 + 32) = v30;
        *(v35 + 40) = v32;
        v27 += 8;
        --v26;
      }

      while (v26);

      *v36 = v28;
    }

    else
    {

      *v36 = MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1B6452B98(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  v4 = v1;
  sub_1B6450F30(sub_1B64571F8, v3);
}

void sub_1B6452C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v48 = a1;
  v5 = sub_1B67D8B1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B67D8E4C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B67D877C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a2;
  if (a2)
  {
    v16 = v6;
    v17 = v51;
    goto LABEL_3;
  }

  v44 = v8;
  v45 = v6;
  v46 = v5;
  v19 = *(a3 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_storage);
  os_unfair_lock_lock((v19 + 44));
  v20 = *(v19 + 16);
  v21 = *(v19 + 24);
  v22 = *(v19 + 32);
  v23 = *(v19 + 40);
  if (v23 == 255)
  {
    sub_1B64539D4();
    swift_allocError();
    *v36 = 1;
LABEL_15:
    swift_willThrow();
    sub_1B64574B0(v20, v21, v22, v23);
    os_unfair_lock_unlock((v19 + 44));
    return;
  }

  if (v23)
  {
    goto LABEL_15;
  }

  os_unfair_lock_unlock((v19 + 44));
  sub_1B67D8D4C();

  sub_1B67D876C();
  v49 = sub_1B64585F8(v15);
  v50 = v37;
  v38 = v51;
  sub_1B67D8CDC();
  v17 = v38;
  if (v38)
  {

    return;
  }

  v16 = v45;
  v5 = v46;
  v8 = v44;
LABEL_3:
  sub_1B64577E8();
  sub_1B67D8D9C();
  strcpy(v12, "LastAccessedAt");
  v12[15] = -18;
  (*(v10 + 104))(v12, *MEMORY[0x1E69D6220], v9);
  v18 = sub_1B67D8FBC();
  if (v17)
  {
    (*(v10 + 8))(v12, v9);

    return;
  }

  v24 = v18;
  v26 = *(v10 + 8);
  v25 = v10 + 8;
  v26(v12, v9);

  v27 = *(v24 + 16);
  if (v27)
  {
    v44 = v8;
    v45 = v16;
    v46 = v5;
    v51 = 0;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v27, 0);
    v25 = 32;
    v28 = v49;
    do
    {

      v30 = sub_1B644DFB8(v29);
      v32 = v31;

      v49 = v28;
      v34 = *(v28 + 16);
      v33 = *(v28 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1B6456B24((v33 > 1), v34 + 1, 1);
        v28 = v49;
      }

      *(v28 + 16) = v34 + 1;
      v35 = v28 + 16 * v34;
      *(v35 + 32) = v30;
      *(v35 + 40) = v32;
      v25 += 8;
      --v27;
    }

    while (v27);

    v16 = v45;
    v5 = v46;
    v8 = v44;
  }

  else
  {

    v28 = MEMORY[0x1E69E7CC0];
  }

  v39 = *(v28 + 16);
  v40 = v47;
  if (v39 > v47)
  {
    if (v47 < 0)
    {
      __break(1u);
    }

    else
    {
      v25 = v8;
      if (!v47)
      {
LABEL_22:
        sub_1B67D8D7C();
        sub_1B64503A4(v28);

        sub_1B67D8C8C();

        sub_1B67D8E2C();
        (*(v16 + 8))(v25, v5);

        return;
      }
    }

    sub_1B6456D98(v28, v28 + 32, v40, (2 * v39) | 1);
    v42 = v41;

    v28 = v42;
    goto LABEL_22;
  }
}

uint64_t sub_1B64531D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F98, &qword_1B6810158);
  sub_1B67D9D0C();
  return v1;
}

void sub_1B645337C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v40 = a1;
  v33 = a3;
  v5 = sub_1B67D83BC();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v39 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  v34 = type metadata accessor for ItemExposureRegistry.JSON(0);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_storage);
  os_unfair_lock_lock((v14 + 44));
  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  v17 = *(v14 + 32);
  v18 = *(v14 + 40);
  if (v18 == 255)
  {
    sub_1B64539D4();
    swift_allocError();
    *v19 = 1;
LABEL_5:
    swift_willThrow();
    sub_1B64574B0(v16, v15, v17, v18);
    os_unfair_lock_unlock((v14 + 44));
    return;
  }

  if (v18)
  {
    goto LABEL_5;
  }

  os_unfair_lock_unlock((v14 + 44));
  sub_1B67D8D5C();

  v20 = sub_1B67D8CEC();

  if (!v3)
  {
    if (!*(v20 + 16))
    {

      v21 = sub_1B67D877C();
      (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
      goto LABEL_11;
    }

    sub_1B67D8B4C();
    sub_1B67D8DCC();

    if ((*(v39 + 48))(v9, 1, v10) != 1)
    {

      sub_1B6404758(v9, v12);
LABEL_11:
      sub_1B67D8D5C();
      v22 = sub_1B67D8CEC();

      v23 = v35;
      sub_1B6404758(v12, v35);
      *(v23 + *(v34 + 20)) = v22;
      sub_1B67D83FC();
      swift_allocObject();
      sub_1B67D83EC();
      v24 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
      v25 = sub_1B67D963C();
      [v24 setDateFormat_];

      v27 = v36;
      v26 = v37;
      *v36 = v24;
      (*(v26 + 104))(v27, *MEMORY[0x1E6967FD0], v38);
      sub_1B67D83CC();
      sub_1B6457734();
      v28 = sub_1B67D83DC();
      v30 = v29;
      sub_1B645778C(v23);

      v31 = v33;
      *v33 = v28;
      v31[1] = v30;
      return;
    }

    __break(1u);
  }
}

void sub_1B64538E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B6453B84();
  if (!v3)
  {
    MEMORY[0x1EEE9AC00](v4);
    sub_1B67D8F1C();
  }
}

unint64_t sub_1B64539D4()
{
  result = qword_1EB9508B0;
  if (!qword_1EB9508B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9508B0);
  }

  return result;
}

void sub_1B6453A28(void *result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_1B6453A40(result, a2, a3, a4 & 1);
  }
}

void sub_1B6453A40(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

void sub_1B6453A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B6453B84();
  if (!v3)
  {
    MEMORY[0x1EEE9AC00](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F98, &qword_1B6810158);
    sub_1B67D8F1C();
  }
}

void sub_1B6453B84()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1B67D94CC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_accessQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = sub_1B67D94EC();
  v9 = (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v10 = *(v1 + OBJC_IVAR____TtC8NewsCore20ItemExposureRegistry_storage);
    MEMORY[0x1EEE9AC00](v9);
    *(&v11 - 2) = v1;
    *(&v11 - 1) = ObjectType;
    os_unfair_lock_lock((v10 + 44));
    sub_1B6457550((v10 + 16), &v12);
    os_unfair_lock_unlock((v10 + 44));
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B6453D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B67D8C1C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6453B84();
  v13[0] = v13;
  MEMORY[0x1EEE9AC00](v9);
  v13[-4] = a2;
  v13[-3] = a3;
  v13[-2] = v10;
  v13[-1] = v11;
  (*(v6 + 104))(v8, *MEMORY[0x1E69D6188], v5);
  sub_1B67D8F4C();
  (*(v6 + 8))(v8, v5);
}

uint64_t sub_1B6453FF4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id sub_1B6454038@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v67 = a2;
  v59 = a3;
  v4 = sub_1B67D8C1C();
  v5 = *(v4 - 8);
  v57 = v4;
  v58 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v56 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v51 - v8;
  v9 = sub_1B67D8F0C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v70 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1B67D8E6C();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B67D8F7C();
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B67D8E8C();
  v60 = *(v14 - 8);
  v61 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B67D8EDC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B67D8C4C();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v21 = sub_1B67D8F5C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = (&v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_1B67D8EBC();
  MEMORY[0x1EEE9AC00](v25 - 8);
  v26 = *a1;
  v27 = a1[2];
  v71 = a1[1];
  v72 = v27;
  v28 = *(a1 + 24);
  if (v28 == 255)
  {
    v52 = a1 + 1;
    v74 = 255;
    v53 = v26;
    v54 = a1;
    *v24 = sub_1B67D85BC();
    v24[1] = v35;
    (*(v22 + 104))(v24, *MEMORY[0x1E69D6280], v21);
    sub_1B67D8C3C();
    (*(v17 + 104))(v19, *MEMORY[0x1E69D6270], v16);
    (*(v60 + 104))(v62, *MEMORY[0x1E69D6268], v61);
    (*(v63 + 104))(v65, *MEMORY[0x1E69D62A0], v64);
    (*(v66 + 104))(v69, *MEMORY[0x1E69D6250], v68);
    sub_1B67D8EFC();
    v75 = 1;
    sub_1B67D8EAC();
    sub_1B67D8F8C();
    swift_allocObject();
    v36 = v73;
    v37 = sub_1B67D8ECC();
    if (!v36)
    {
      v39 = v37;
      sub_1B645756C();
      v40 = sub_1B67D8F3C();
      sub_1B64575C0();
      v41 = sub_1B67D8F3C();
      v42 = sub_1B67D8E7C();
      MEMORY[0x1EEE9AC00](v42);
      *(&v51 - 2) = v45;
      *(&v51 - 1) = v41;
      v47 = v56;
      v46 = v57;
      v48(v56);
      sub_1B67D8F4C();
      (*(v58 + 8))(v47, v46);
      v49 = v54;
      *v54 = v39;
      v49[1] = v40;
      v49[2] = v41;
      *(v49 + 24) = 0;
      v50 = v59;
      *v59 = v39;
      v50[1] = v40;
      v50[2] = v41;
    }

    v38 = v54;
    *v54 = v36;
    v43 = v52;
    *v52 = 0;
    v43[1] = 0;
    *(v38 + 24) = 1;
    v44 = v36;
    v29 = v53;
    v30 = v74;
  }

  else
  {
    v29 = v26;
    v30 = v28;
    if ((v28 & 1) == 0)
    {
      v31 = v59;
      v32 = v71;
      v33 = v72;
      *v59 = v26;
      v31[1] = v32;
      v31[2] = v33;
    }
  }

  swift_willThrow();
  return sub_1B64574B0(v29, v71, v72, v30);
}

uint64_t sub_1B6454970(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x80000001B6828440;
  v6 = 0x80000001B6828460;
  v7 = 0xD00000000000001FLL;
  if (a1 != 4)
  {
    v7 = 0x656363417473616CLL;
    v6 = 0xEE00744164657373;
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v5 = v6;
  }

  v8 = 0x7078457473726966;
  if (a1 == 1)
  {
    v9 = 0xEE0074416465736FLL;
  }

  else
  {
    v8 = 0x6F7078457473616CLL;
    v9 = 0xED00007441646573;
  }

  if (a1)
  {
    v4 = v8;
    v3 = v9;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v7;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x80000001B6828440;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_35;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x80000001B6828460;
      if (v10 != 0xD00000000000001FLL)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v12 = 0xEE00744164657373;
      if (v10 != 0x656363417473616CLL)
      {
LABEL_35:
        v13 = sub_1B67DA2DC();
        goto LABEL_36;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEE0074416465736FLL;
      if (v10 != 0x7078457473726966)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v12 = 0xED00007441646573;
      if (v10 != 0x6F7078457473616CLL)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    v12 = 0xE200000000000000;
    if (v10 != 25705)
    {
      goto LABEL_35;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_35;
  }

  v13 = 1;
LABEL_36:

  return v13 & 1;
}

uint64_t sub_1B6454B88()
{
  sub_1B67DA3DC();
  sub_1B67D967C();
  return sub_1B67DA41C();
}

uint64_t sub_1B6454BE4(unsigned __int8 a1)
{
  sub_1B67DA3DC();
  sub_1B67D967C();

  return sub_1B67DA41C();
}

uint64_t sub_1B6454D2C(uint64_t a1)
{
  sub_1B67DA3DC();
  sub_1B67D967C();
  return sub_1B67DA41C();
}

uint64_t sub_1B6454D84(uint64_t a1, unsigned __int8 a2)
{
  sub_1B67DA3DC();
  sub_1B67D967C();

  return sub_1B67DA41C();
}

uint64_t sub_1B6454EA8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B67DA12C();

  *a2 = v3 != 0;
  return result;
}

void sub_1B6454EFC(uint64_t a1@<X8>)
{
  strcpy(a1, "lastErasedAt");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1B6454F40@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B67DA12C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B6454FB0(uint64_t a1)
{
  v2 = sub_1B645B3EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6454FEC(uint64_t a1)
{
  v2 = sub_1B645B3EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B645504C()
{
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B8C();
  swift_allocObject();
  return sub_1B67D8BFC();
}

uint64_t sub_1B64550B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6459490();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B6455108(uint64_t a1)
{
  v2 = sub_1B645756C();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B6455154(uint64_t a1)
{
  v2 = sub_1B645756C();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B64551A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B645756C();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B6455204@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1B64597DC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1B645524C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B645756C();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B6455298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B645756C();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B64552EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B645756C();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B6455364(uint64_t a1)
{
  sub_1B67D967C();
}

unint64_t sub_1B645547C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B645A6A4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1B64554AC(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xD000000000000011;
  v6 = 0x80000001B6828440;
  v7 = 0x80000001B6828460;
  v8 = 0xD00000000000001FLL;
  if (v2 != 4)
  {
    v8 = 0x656363417473616CLL;
    v7 = 0xEE00744164657373;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x7078457473726966;
  v10 = 0xEE0074416465736FLL;
  if (v2 != 1)
  {
    v9 = 0x6F7078457473616CLL;
    v10 = 0xED00007441646573;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1B645558C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  v4 = 0xD00000000000001FLL;
  if (v1 != 4)
  {
    v4 = 0x656363417473616CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7078457473726966;
  if (v1 != 1)
  {
    v5 = 0x6F7078457473616CLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B6455668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B645A6A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B645569C(uint64_t a1)
{
  v2 = sub_1B645B398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64556D8(uint64_t a1)
{
  v2 = sub_1B645B398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6455714(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v51 = v43 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v53 = v43 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v43 - v12;
  v54 = sub_1B67D877C();
  v56 = *(v54 - 8);
  v14 = MEMORY[0x1EEE9AC00](v54);
  v48 = v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v50 = v43 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v52 = v43 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A040, &qword_1B6810888);
  v59 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v43 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B645B398();
  sub_1B67DA47C();
  v55 = v3;
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (!v58)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(v57) = 0;
  sub_1B67DA20C();
  if (v2)
  {
    (*(v59 + 8))(v24, v22);
  }

  v46 = 0;
  v47 = v22;

  sub_1B67D8B4C();
  sub_1B67D8DCC();

  v26 = v56;
  v27 = v54;
  v44 = *(v56 + 48);
  v45 = v56 + 48;
  result = v44(v13, 1, v54);
  if (result == 1)
  {
    goto LABEL_13;
  }

  v28 = v13;
  v29 = *(v26 + 32);
  (v29)(v21, v28, v27);
  LOBYTE(v57) = 1;
  v30 = sub_1B6430304(&unk_1EDB1EFC0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  v31 = v46;
  v32 = v47;
  sub_1B67DA24C();
  if (v31)
  {
    (*(v26 + 8))(v21, v27);
    return (*(v59 + 8))(v24, v32);
  }

  v43[1] = v26 + 32;
  v43[2] = v30;
  v46 = v29;
  v33 = *(v26 + 8);
  v56 = v26 + 8;
  v33(v21, v27);
  sub_1B67D8B4C();
  v34 = v53;
  sub_1B67D8DCC();

  result = v44(v34, 1, v27);
  if (result == 1)
  {
    goto LABEL_14;
  }

  v35 = v52;
  v46();
  LOBYTE(v57) = 2;
  v36 = v47;
  sub_1B67DA24C();
  v33(v35, v27);
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v58)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  LOBYTE(v57) = 3;
  sub_1B67DA22C();
  sub_1B67D8B4C();
  v37 = v51;
  sub_1B67D8DCC();
  v38 = v37;

  result = v44(v37, 1, v27);
  if (result == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v39 = v50;
  (v46)(v50, v38, v27);
  LOBYTE(v57) = 4;
  sub_1B67DA24C();
  v33(v39, v27);
  sub_1B67D8B4C();
  v40 = v49;
  sub_1B67D8DCC();
  v41 = v40;

  result = v44(v40, 1, v27);
  if (result != 1)
  {
    v42 = v48;
    (v46)(v48, v41, v27);
    LOBYTE(v57) = 5;
    sub_1B67DA24C();
    v33(v42, v27);
    return (*(v59 + 8))(v24, v36);
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B6455E2C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A028, &qword_1B6810878);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64593B8();
  sub_1B67DA47C();
  v12 = 0;
  sub_1B67D877C();
  sub_1B6430304(&unk_1EDB1EFC0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1B67DA1FC();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for ItemExposureRegistry.JSON(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A018, &qword_1B6810318);
    sub_1B645940C();
    sub_1B67DA24C();
  }

  return (*(v6 + 8))(v8, v5);
}

double sub_1B6456010@<D0>(_OWORD *a1@<X8>)
{
  sub_1B6459FE8(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1B6456070(uint64_t a1)
{
  v2 = sub_1B64575C0();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64560BC(uint64_t a1)
{
  v2 = sub_1B64575C0();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B6456108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64575C0();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

double sub_1B645616C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1B645A6F0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1B64561C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B64575C0();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B6456214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B64575C0();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B6456268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B64575C0();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B64562CC()
{
  v1 = *v0;
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](v1);
  return sub_1B67DA41C();
}

uint64_t sub_1B6456314(uint64_t a1)
{
  v2 = *v1;
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](v2);
  return sub_1B67DA41C();
}

uint64_t sub_1B6456358()
{
  if (*v0)
  {
    return 0x657275736F707865;
  }

  else
  {
    return 0x736172457473616CLL;
  }
}

uint64_t sub_1B64563A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736172457473616CLL && a2 == 0xEC00000074416465;
  if (v6 || (sub_1B67DA2DC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657275736F707865 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B67DA2DC();

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

uint64_t sub_1B6456494(uint64_t a1)
{
  v2 = sub_1B64593B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B64564D0(uint64_t a1)
{
  v2 = sub_1B64593B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B6456540(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1B6456628(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1B6458B54(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1B6456628(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1B6456734(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1B67D9F6C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1B6456734(uint64_t a1, unint64_t a2)
{
  v3 = sub_1B6456780(a1, a2);
  sub_1B64568B0(&unk_1F2DBCD58);
  return v3;
}

void *sub_1B6456780(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1B645699C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1B67D9F6C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1B67D96CC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1B645699C(v10, 0);
        result = sub_1B67D9EDC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B64568B0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1B6456A10(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1B645699C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3A0, &qword_1B6812A40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1B6456A10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A3A0, &qword_1B6812A40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_1B6456B04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B6456B44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B6456B24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B6456C8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B6456B44(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD0, &unk_1B68102B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B580, &qword_1B68146D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B6456C8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1B6456D98(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_1B6456E70(uint64_t a1, uint64_t a2)
{
  sub_1B67DA3DC();
  sub_1B67D967C();
  v4 = sub_1B67DA41C();

  return sub_1B6456EE8(a1, a2, v4);
}

unint64_t sub_1B6456EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B67DA2DC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1B6456FE4(uint64_t a1)
{
  sub_1B67D8D7C();
  sub_1B67D8E0C();
}

void sub_1B6457054(uint64_t *a3@<X3>, uint64_t *a4@<X4>, uint64_t a6@<X8>)
{
  sub_1B6453B84();
  if (!v6)
  {
    v11[0] = a6;
    v11[1] = v11;
    MEMORY[0x1EEE9AC00](v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    sub_1B67D8F1C();

    *v11[0] = v11[3];
  }
}

uint64_t sub_1B6457278(uint64_t a1)
{
  result = sub_1B67D85FC();
  if (v2 <= 0x3F)
  {
    result = sub_1B67D8A9C();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1B6457398(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1B64573F4()
{
  result = qword_1EB9508B8[0];
  if (!qword_1EB9508B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9508B8);
  }

  return result;
}

uint64_t sub_1B6457448(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B645745C(result, a2);
  }

  return result;
}

uint64_t sub_1B645745C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_1B64574B0(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1B64574C8(result, a2, a3, a4 & 1);
  }

  return result;
}

id sub_1B64574C8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return a1;
  }

  else
  {
  }
}

unint64_t sub_1B645756C()
{
  result = qword_1EDB25570[0];
  if (!qword_1EDB25570[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB25570);
  }

  return result;
}

unint64_t sub_1B64575C0()
{
  result = qword_1EDB24778[0];
  if (!qword_1EDB24778[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB24778);
  }

  return result;
}

uint64_t sub_1B6457614()
{
  sub_1B67D8D3C();
  sub_1B67D8CCC();

  if (!v0)
  {
    sub_1B67D8D3C();
    sub_1B67D8CCC();
  }

  return result;
}

uint64_t sub_1B6457690(uint64_t a1)
{
  sub_1B67D8D6C();
  sub_1B67D8DFC();

  if (!v1)
  {
    sub_1B67D8D6C();
    sub_1B67D8DFC();
  }

  return result;
}

unint64_t sub_1B6457734()
{
  result = qword_1EB950A40;
  if (!qword_1EB950A40)
  {
    type metadata accessor for ItemExposureRegistry.JSON(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB950A40);
  }

  return result;
}

uint64_t sub_1B645778C(uint64_t a1)
{
  v2 = type metadata accessor for ItemExposureRegistry.JSON(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B64577E8()
{
  result = qword_1EB949FA8;
  if (!qword_1EB949FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB949FA8);
  }

  return result;
}

uint64_t sub_1B645783C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v98 = a8;
  v99 = a7;
  v87 = a6;
  v88 = a5;
  v100 = a4;
  v101 = a3;
  v84 = a2;
  v83 = a1;
  v92 = a9;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v90 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v91 = &v77 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v94 = &v77 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v89 = &v77 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v93 = &v77 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v86 = &v77 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v81 = &v77 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v77 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v96 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v95 = &v77 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v77 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v38 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v77 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v42 = *(*(v41 - 8) + 56);
  v42(v40, 1, 1, v41);
  v42(v38, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v97 = sub_1B67D8B3C();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v44 = *(*(v43 - 8) + 56);
  v44(v34, 1, 1, v43);
  v44(v32, 1, 1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();

  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  v103 = sub_1B67D8B3C();
  v78 = v34;
  v80 = v44;
  v44(v34, 1, 1, v43);
  v79 = v32;
  v44(v32, 1, 1, v43);
  swift_allocObject();

  sub_1B67D8DBC();
  swift_allocObject();
  v45 = sub_1B67D8B3C();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v47 = *(*(v46 - 8) + 56);
  v47(v95, 1, 1, v46);
  v47(v96, 1, 1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  swift_allocObject();
  v102 = v45;

  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
  swift_allocObject();
  v48 = sub_1B67D8B3C();
  v49 = v78;
  v50 = v80;
  v80(v78, 1, 1, v43);
  v51 = v79;
  v50(v79, 1, 1, v43);
  swift_allocObject();
  v82 = v48;

  sub_1B67D8DBC();
  swift_allocObject();
  v52 = v81;
  v53 = sub_1B67D8B3C();
  v50(v49, 1, 1, v43);
  v50(v51, 1, 1, v43);
  swift_allocObject();
  v96 = v53;

  sub_1B67D8DBC();
  swift_allocObject();
  v95 = sub_1B67D8B3C();

  sub_1B67D8B4C();
  v104 = v83;
  v105 = v84;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  sub_1B6415FF0(v101, v52, &unk_1EB94A100, &qword_1B680FD50);
  v54 = sub_1B67D877C();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  if (v56(v52, 1, v54) == 1)
  {
    v57 = v85;
    sub_1B67D876C();
    if (v56(v52, 1, v54) != 1)
    {
      sub_1B6418AB4(v52, &unk_1EB94A100, &qword_1B680FD50);
    }
  }

  else
  {
    v57 = v85;
    (*(v55 + 32))(v85, v52, v54);
  }

  v58 = *(v55 + 56);
  v58(v57, 0, 1, v54);
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v59 = v93;
  sub_1B6415FF0(v100, v93, &unk_1EB94A100, &qword_1B680FD50);
  v60 = v56(v59, 1, v54);
  v61 = v89;
  if (v60 == 1)
  {
    sub_1B67D8B4C();
    sub_1B67D8DCC();
    v62 = v93;

    if (v56(v62, 1, v54) != 1)
    {
      sub_1B6418AB4(v62, &unk_1EB94A100, &qword_1B680FD50);
    }
  }

  else
  {
    v63 = v86;
    (*(v55 + 32))(v86, v59, v54);
    v58(v63, 0, 1, v54);
  }

  sub_1B67D8DDC();

  v64 = v82;
  sub_1B67D8B4C();
  v65 = v88;
  if (v87)
  {
    v65 = 0;
  }

  v104 = v65;
  LOBYTE(v105) = 0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v66 = v94;
  sub_1B6415FF0(v99, v94, &unk_1EB94A100, &qword_1B680FD50);
  if (v56(v66, 1, v54) == 1)
  {
    sub_1B67D8B4C();
    sub_1B67D8DCC();
    v67 = v94;

    if (v56(v67, 1, v54) != 1)
    {
      sub_1B6418AB4(v67, &unk_1EB94A100, &qword_1B680FD50);
    }
  }

  else
  {
    (*(v55 + 32))(v61, v66, v54);
    v58(v61, 0, 1, v54);
  }

  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v68 = v90;
  sub_1B6415FF0(v98, v90, &unk_1EB94A100, &qword_1B680FD50);
  if (v56(v68, 1, v54) == 1)
  {
    sub_1B67D8B4C();
    sub_1B67D8DCC();

    if (v56(v68, 1, v54) != 1)
    {
      sub_1B6418AB4(v68, &unk_1EB94A100, &qword_1B680FD50);
    }
  }

  else
  {
    v69 = v91;
    (*(v55 + 32))(v91, v68, v54);
    v58(v69, 0, 1, v54);
  }

  sub_1B67D8DDC();

  sub_1B6418AB4(v98, &unk_1EB94A100, &qword_1B680FD50);
  sub_1B6418AB4(v99, &unk_1EB94A100, &qword_1B680FD50);
  sub_1B6418AB4(v100, &unk_1EB94A100, &qword_1B680FD50);
  sub_1B6418AB4(v101, &unk_1EB94A100, &qword_1B680FD50);
  v70 = v95;

  v71 = v96;

  v72 = v102;

  v73 = v103;

  v74 = v97;

  v76 = v92;
  *v92 = v74;
  v76[1] = v73;
  v76[2] = v72;
  v76[3] = v64;
  v76[4] = v71;
  v76[5] = v70;
  return result;
}

uint64_t sub_1B64585F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  v18(v14, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v19 = sub_1B67D8B3C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v21 = *(*(v20 - 8) + 56);
  v21(v10, 1, 1, v20);
  v21(v8, 1, 1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  swift_allocObject();

  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC8, &qword_1B68102A8);
  swift_allocObject();
  sub_1B67D8B3C();

  sub_1B67D8B4C();
  v26 = xmmword_1B68100F0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v22 = sub_1B67D877C();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v4, a1, v22);
  (*(v23 + 56))(v4, 0, 1, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  (*(*(v24 - 8) + 56))(v4, 0, 1, v24);
  sub_1B67D8DDC();

  (*(v23 + 8))(a1, v22);

  return v19;
}

unint64_t sub_1B6458A9C()
{
  result = qword_1EDB227D8;
  if (!qword_1EDB227D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB227D8);
  }

  return result;
}

void *sub_1B6458B08@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5, *(v1 + 40));
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1B6458B54(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B6458C04(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B6458C58()
{
  result = qword_1EDB227E0[0];
  if (!qword_1EDB227E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB227E0);
  }

  return result;
}

void sub_1B6458CD4(uint64_t a1)
{
  sub_1B6458D7C(319);
  if (v1 <= 0x3F)
  {
    sub_1B6458DD4(319, &qword_1EB94A020, &type metadata for ItemExposureEntity, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B6458D7C(uint64_t a1)
{
  if (!qword_1EDB1EF90)
  {
    sub_1B67D877C();
    v1 = sub_1B67D9DFC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB1EF90);
    }
  }
}

void sub_1B6458DD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B6458E4C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B6458E94(uint64_t result, int a2, int a3)
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

unint64_t sub_1B6458EE4()
{
  result = qword_1EDB25520;
  if (!qword_1EDB25520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB25520);
  }

  return result;
}

unint64_t sub_1B6458F3C()
{
  result = qword_1EDB25528;
  if (!qword_1EDB25528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB25528);
  }

  return result;
}

unint64_t sub_1B6458F94()
{
  result = qword_1EDB25540;
  if (!qword_1EDB25540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB25540);
  }

  return result;
}

unint64_t sub_1B6458FE8()
{
  result = qword_1EDB25550[0];
  if (!qword_1EDB25550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB25550);
  }

  return result;
}

unint64_t sub_1B6459048()
{
  result = qword_1EB950B60[0];
  if (!qword_1EB950B60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB950B60);
  }

  return result;
}

unint64_t sub_1B64590A0()
{
  result = qword_1EDB24720;
  if (!qword_1EDB24720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB24720);
  }

  return result;
}

unint64_t sub_1B64590F8()
{
  result = qword_1EDB24728;
  if (!qword_1EDB24728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB24728);
  }

  return result;
}

unint64_t sub_1B6459150()
{
  result = qword_1EDB24740;
  if (!qword_1EDB24740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB24740);
  }

  return result;
}

unint64_t sub_1B64591A4()
{
  result = qword_1EDB24750[0];
  if (!qword_1EDB24750[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB24750);
  }

  return result;
}

unint64_t sub_1B6459200()
{
  result = qword_1EB950BF0[0];
  if (!qword_1EB950BF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB950BF0);
  }

  return result;
}

unint64_t sub_1B645925C()
{
  result = qword_1EDB24730;
  if (!qword_1EDB24730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB24730);
  }

  return result;
}

unint64_t sub_1B64592B4()
{
  result = qword_1EDB24768;
  if (!qword_1EDB24768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB24768);
  }

  return result;
}

unint64_t sub_1B645930C()
{
  result = qword_1EDB25530;
  if (!qword_1EDB25530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB25530);
  }

  return result;
}

unint64_t sub_1B6459364()
{
  result = qword_1EDB25568;
  if (!qword_1EDB25568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB25568);
  }

  return result;
}

unint64_t sub_1B64593B8()
{
  result = qword_1EB950D00;
  if (!qword_1EB950D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB950D00);
  }

  return result;
}

unint64_t sub_1B645940C()
{
  result = qword_1EB94A030;
  if (!qword_1EB94A030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB94A018, &qword_1B6810318);
    sub_1B64590F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94A030);
  }

  return result;
}

uint64_t sub_1B6459490()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 1, 1, v12);
  v13(v9, 1, 1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v14 = sub_1B67D8B3C();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v16 = *(*(v15 - 8) + 56);
  v16(v5, 1, 1, v15);
  v16(v3, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  swift_allocObject();

  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC8, &qword_1B68102A8);
  swift_allocObject();
  sub_1B67D8B3C();

  sub_1B67D8B4C();
  v18 = xmmword_1B68100F0;
  sub_1B67D8DDC();

  return v14;
}

uint64_t sub_1B64597DC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v32 = &v29 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A048, &qword_1B6810890);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB0, &unk_1B6810270);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  v20(v16, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v21 = sub_1B67D8B3C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FB8, &qword_1B6810298);
  v23 = *(*(v22 - 8) + 56);
  v23(v12, 1, 1, v22);
  v23(v10, 1, 1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC0, &qword_1B68102A0);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FC8, &qword_1B68102A8);
  swift_allocObject();
  sub_1B67D8B3C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B645B3EC();
  v24 = v34;
  sub_1B67DA46C();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v25 = v30;
    sub_1B67D8B4C();
    v33 = xmmword_1B68100F0;
    sub_1B67D8DDC();

    sub_1B67D8B4C();
    sub_1B67D877C();
    sub_1B6430304(&unk_1EDB1EFA0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v26 = v31;
    sub_1B67DA18C();
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
    (*(*(v28 - 8) + 56))(v32, 0, 1, v28);
    sub_1B67D8DDC();

    (*(v25 + 8))(v6, v26);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v21;
}

uint64_t sub_1B6459D6C(void *a1, uint64_t a2)
{
  v15[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FA0, &qword_1B68182C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - v8;
  v15[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A050, &qword_1B6810898);
  v10 = *(v15[0] - 8);
  MEMORY[0x1EEE9AC00](v15[0]);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B645B3EC();
  sub_1B67DA47C();
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  result = (*(v7 + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B6404758(v5, v9);
    sub_1B645B440();
    v14 = v15[0];
    sub_1B67DA24C();
    sub_1B6418AB4(v9, &unk_1EB94A100, &qword_1B680FD50);
    return (*(v10 + 8))(v12, v14);
  }

  return result;
}

uint64_t sub_1B6459FE8@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 1, 1, v17);
  v18(v14, 1, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v37 = sub_1B67D8B3C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v20 = *(*(v19 - 8) + 56);
  v20(v10, 1, 1, v19);
  v20(v8, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  v32 = v8;
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  v34 = sub_1B67D8B3C();
  v31 = v10;
  v20(v10, 1, 1, v19);
  v20(v8, 1, 1, v19);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v33 = sub_1B67D8B3C();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v22 = *(*(v21 - 8) + 56);
  v22(v35, 1, 1, v21);
  v22(v36, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
  swift_allocObject();
  v23 = sub_1B67D8B3C();
  v24 = v31;
  v20(v31, 1, 1, v19);
  v25 = v32;
  v20(v32, 1, 1, v19);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v26 = sub_1B67D8B3C();
  v20(v24, 1, 1, v19);
  v20(v25, 1, 1, v19);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  result = sub_1B67D8B3C();
  v28 = v38;
  v29 = v33;
  v30 = v34;
  *v38 = v37;
  v28[1] = v30;
  v28[2] = v29;
  v28[3] = v23;
  v28[4] = v26;
  v28[5] = result;
  return result;
}

unint64_t sub_1B645A6A4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B67DA12C();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1B645A6F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v70 = a1;
  v57 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v58 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v59 = &v57 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v61 = &v57 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v57 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A038, &qword_1B6810880);
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v57 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FD8, &unk_1B6811440);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v57 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v57 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v57 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v30 = *(*(v29 - 8) + 56);
  v30(v28, 1, 1, v29);
  v30(v26, 1, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v75 = sub_1B67D8B3C();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v32 = *(*(v31 - 8) + 56);
  v32(v22, 1, 1, v31);
  v32(v20, 1, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  v65 = v20;
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  v71 = sub_1B67D8B3C();
  v64 = v22;
  v66 = v32;
  v32(v22, 1, 1, v31);
  v32(v20, 1, 1, v31);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v69 = sub_1B67D8B3C();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A000, &unk_1B68102F0);
  v34 = *(*(v33 - 8) + 56);
  v34(v16, 1, 1, v33);
  v34(v67, 1, 1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A008, &unk_1B6811450);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A010, &unk_1B6810300);
  swift_allocObject();
  v67 = sub_1B67D8B3C();
  v35 = v64;
  v36 = v66;
  v66(v64, 1, 1, v31);
  v37 = v65;
  v36(v65, 1, 1, v31);
  swift_allocObject();
  v38 = v37;
  sub_1B67D8DBC();
  swift_allocObject();
  v39 = sub_1B67D8B3C();
  v36(v35, 1, 1, v31);
  v36(v38, 1, 1, v31);
  v40 = v70;
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v41 = sub_1B67D8B3C();
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  sub_1B645B398();
  v42 = v68;
  sub_1B67DA46C();
  if (v42)
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    v68 = v41;
    v44 = v60;
    v43 = v61;
    sub_1B67D8B4C();
    LOBYTE(v73) = 0;
    v45 = v39;
    v73 = sub_1B67DA19C();
    v74 = v46;
    sub_1B67D8DDC();

    sub_1B67D8B4C();
    v47 = sub_1B67D877C();
    LOBYTE(v73) = 1;
    sub_1B6430304(&unk_1EDB1EFA0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1B67DA1CC();
    v48 = (*(v47 - 8) + 56);
    v65 = *v48;
    v66 = v48;
    (v65)(v44, 0, 1, v47);
    sub_1B67D8DDC();

    sub_1B67D8B4C();
    LOBYTE(v73) = 2;
    sub_1B67DA1CC();
    v49 = v65;
    (v65)(v43, 0, 1, v47);
    sub_1B67D8DDC();

    v50 = v67;
    sub_1B67D8B4C();
    LOBYTE(v73) = 3;
    v73 = sub_1B67DA1BC();
    LOBYTE(v74) = 0;
    sub_1B67D8DDC();

    sub_1B67D8B4C();
    LOBYTE(v73) = 4;
    v51 = v59;
    sub_1B67DA1CC();
    v49(v51, 0, 1, v47);
    sub_1B67D8DDC();

    v52 = v68;
    v64 = sub_1B67D8B4C();
    LOBYTE(v73) = 5;
    v53 = v58;
    sub_1B67DA1CC();
    v49(v53, 0, 1, v47);
    sub_1B67D8DDC();

    (*(v62 + 8))(v72, v63);
    result = __swift_destroy_boxed_opaque_existential_1(v70);
    v55 = v57;
    v56 = v71;
    *v57 = v75;
    v55[1] = v56;
    v55[2] = v69;
    v55[3] = v50;
    v55[4] = v45;
    v55[5] = v52;
  }

  return result;
}

unint64_t sub_1B645B398()
{
  result = qword_1EB950D08;
  if (!qword_1EB950D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB950D08);
  }

  return result;
}

unint64_t sub_1B645B3EC()
{
  result = qword_1EB950D10[0];
  if (!qword_1EB950D10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB950D10);
  }

  return result;
}

unint64_t sub_1B645B440()
{
  result = qword_1EDB1EF88;
  if (!qword_1EDB1EF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB94A100, &qword_1B680FD50);
    sub_1B6430304(&unk_1EDB1EFC0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EF88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ItemExposureEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ItemExposureEntity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PrivateZoneChangeOrigin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PrivateZoneChangeOrigin(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B645B7B0()
{
  result = qword_1EB950E20[0];
  if (!qword_1EB950E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB950E20);
  }

  return result;
}

unint64_t sub_1B645B808()
{
  result = qword_1EB9510B0[0];
  if (!qword_1EB9510B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9510B0);
  }

  return result;
}

unint64_t sub_1B645B860()
{
  result = qword_1EB951340[0];
  if (!qword_1EB951340[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB951340);
  }

  return result;
}

unint64_t sub_1B645B8B8()
{
  result = qword_1EB951450;
  if (!qword_1EB951450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB951450);
  }

  return result;
}

unint64_t sub_1B645B910()
{
  result = qword_1EB951458[0];
  if (!qword_1EB951458[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB951458);
  }

  return result;
}

unint64_t sub_1B645B968()
{
  result = qword_1EB9514E0;
  if (!qword_1EB9514E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9514E0);
  }

  return result;
}

unint64_t sub_1B645B9C0()
{
  result = qword_1EB9514E8[0];
  if (!qword_1EB9514E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9514E8);
  }

  return result;
}

unint64_t sub_1B645BA18()
{
  result = qword_1EB951570;
  if (!qword_1EB951570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB951570);
  }

  return result;
}

unint64_t sub_1B645BA70()
{
  result = qword_1EB951578;
  if (!qword_1EB951578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB951578);
  }

  return result;
}

uint64_t sub_1B645BB38(uint64_t a1, uint64_t a2)
{
  result = sub_1B67D964C();
  qword_1EB95A8A8 = result;
  qword_1EB95A8B0 = v3;
  return result;
}

uint64_t sub_1B645BB68(uint64_t a1, uint64_t a2)
{
  result = sub_1B67D964C();
  qword_1EB95A8B8 = result;
  qword_1EB95A8C0 = v3;
  return result;
}

uint64_t sub_1B645BBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[35] = a4;
  v5[36] = v4;
  v5[33] = a1;
  v5[34] = a3;
  v5[37] = type metadata accessor for FeedItemPruningPolicy(0);
  v5[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v5[39] = swift_task_alloc();
  v6 = sub_1B67D877C();
  v5[40] = v6;
  v5[41] = *(v6 - 8);
  v5[42] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B645BD14, 0, 0);
}

uint64_t sub_1B645BD14(uint64_t a1)
{
  v3 = v1[35];
  v2 = v1[36];
  v4 = v1[34];
  sub_1B67D876C();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  v1[43] = v5;
  *(v5 + 16) = v6;
  v7 = *(v2 + 16);
  v1[22] = v4;
  v1[23] = v3;
  v1[18] = MEMORY[0x1E69E9820];
  v1[19] = 1107296256;
  v1[20] = sub_1B645C7A8;
  v1[21] = &block_descriptor_1;
  v8 = _Block_copy(v1 + 18);
  v1[44] = v8;

  v1[28] = sub_1B645C34C;
  v1[29] = v5;
  v1[24] = MEMORY[0x1E69E9820];
  v1[25] = 1107296256;
  v1[26] = sub_1B645C7A8;
  v1[27] = &block_descriptor_3;
  v9 = _Block_copy(v1 + 24);
  v1[45] = v9;

  v1[2] = v1;
  v1[3] = sub_1B645BF64;
  v10 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94B900, qword_1B6810C80);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1B645C474;
  v1[13] = &block_descriptor_6;
  v1[14] = v10;
  [v7 fetchFeedItemsWithCursor:0 feedItemHandler:v8 networkEventHandler:v9 completionHandler:v1 + 10];

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1B645BF64()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_1B645C268;
  }

  else
  {
    v2 = sub_1B645C074;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B645C074()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 304);
  v7 = *(v0 + 312);
  v15 = v7;
  v17 = *(v0 + 264);
  _Block_release(*(v0 + 360));
  _Block_release(v1);
  v16 = sub_1B645C624(MEMORY[0x1E69E7CC0]);
  v8 = *(v4 + 16);
  v8(v7, v2, v5);
  (*(v4 + 56))(v7, 0, 1, v5);
  swift_beginAccess();
  v9 = *(v3 + 16);
  v8(v6, v2, v5);
  v10 = v6;
  swift_storeEnumTagMultiPayload();
  v11 = sub_1B645C75C(&unk_1EDB1EFA0, MEMORY[0x1E6969558]);
  v12 = sub_1B645C75C(&unk_1EDB1EFC0, MEMORY[0x1E6969538]);

  sub_1B65074D8(v16, v15, v9, v10, v5, v11, v12, v17);

  (*(v4 + 8))(v2, v5);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1B645C268(uint64_t a1)
{
  v2 = v1[45];
  v3 = v1[44];
  v5 = v1[41];
  v4 = v1[42];
  v6 = v1[40];
  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  _Block_release(v2);
  _Block_release(v3);

  v7 = v1[1];

  return v7();
}

uint64_t sub_1B645C34C(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x1B8C949F0]();
  if (*((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1B67D97FC();
  }

  sub_1B67D983C();
  return swift_endAccess();
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B645C40C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1B645C474(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  return sub_1B6458B54(a2 + 32, a1 + 32);
}

{
  return sub_1B6458B54(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_5(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

uint64_t sub_1B645C538()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B645C570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B642694C;

  return sub_1B645BBE8(a1, v8, a3, a4);
}

unint64_t sub_1B645C624(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A800, &qword_1B6810CE0);
    v3 = sub_1B67DA0EC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B6456E70(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

uint64_t sub_1B645C75C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1B67D877C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B645C7AC(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 16));
  v5 = swift_allocObject();
  v6 = (v2 + 24);
  v7 = *(v2 + 24);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 24) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_1B645DD98(0, v7[2] + 1, 1, v7);
    *v6 = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_1B645DD98((v9 > 1), v10 + 1, 1, v7);
    *v6 = v7;
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = &unk_1B6810CF0;
  v11[5] = v5;
  os_unfair_lock_unlock((v2 + 16));
  os_unfair_lock_lock((v2 + 16));
  sub_1B645D508((v2 + 24), v2);

  os_unfair_lock_unlock((v2 + 16));
}

uint64_t sub_1B645C8C8(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_1B642694C;

  return v5();
}

uint64_t sub_1B645C9B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B642694C;

  return sub_1B645C8C8(a1, v4);
}

uint64_t sub_1B645CA68()
{
  v1[6] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B645CB10, 0, 0);
}

uint64_t sub_1B645CB10()
{
  v1 = v0[6];
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  os_unfair_lock_unlock((v1 + 16));
  if (v3)
  {
LABEL_2:
    v0[9] = v2;
    v0[10] = v3;

    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1B645CF84;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    while (*(v2 + 16))
    {
      v9 = v0[6];
      os_unfair_lock_lock((v9 + 16));
      v8 = v0[6];
      if (!*(v9 + 32))
      {
        v10 = *(v8 + 24);
        v11 = v10[2];
        if (v11)
        {
          v12 = v10[4];
          v13 = v10[5];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + 24) = v10;
          if (!isUniquelyReferenced_nonNull_native || (v11 - 1) > v10[3] >> 1)
          {
            v15 = v0[6];
            v10 = sub_1B645DD98(isUniquelyReferenced_nonNull_native, v11, 1, v10);
            *(v15 + 24) = v10;
          }

          v16 = v0[7];
          v17 = v0[8];
          v18 = v0[6];

          v19 = v10[2];
          memmove(v10 + 4, v10 + 6, 16 * v19 - 16);
          v10[2] = v19 - 1;
          *(v18 + 24) = v10;
          v20 = swift_allocObject();
          *(v20 + 16) = v12;
          *(v20 + 24) = v13;
          v21 = sub_1B67D993C();
          v22 = *(v21 - 8);
          (*(v22 + 56))(v17, 1, 1, v21);
          v23 = swift_allocObject();
          swift_weakInit();
          v24 = swift_allocObject();
          v24[2] = 0;
          v24[3] = 0;
          v24[4] = v23;
          v24[5] = &unk_1B6810D08;
          v24[6] = v20;
          sub_1B644C200(v17, v16);
          LODWORD(v17) = (*(v22 + 48))(v16, 1, v21);

          v25 = v0[7];
          if (v17 == 1)
          {
            sub_1B644C270(v0[7]);
          }

          else
          {
            sub_1B67D992C();
            (*(v22 + 8))(v25, v21);
          }

          v26 = v24[2];
          swift_unknownObjectRetain();

          if (v26)
          {
            swift_getObjectType();
            v27 = sub_1B67D989C();
            v29 = v28;
            swift_unknownObjectRelease();
          }

          else
          {
            v27 = 0;
            v29 = 0;
          }

          v30 = swift_allocObject();
          *(v30 + 16) = &unk_1B6810D18;
          *(v30 + 24) = v24;
          if (v29 | v27)
          {
            v0[2] = 0;
            v0[3] = 0;
            v0[4] = v27;
            v0[5] = v29;
          }

          v5 = v0[8];
          v6 = v0[6];
          v7 = swift_task_create();

          sub_1B644C270(v5);
          *(v6 + 32) = v7;

          v8 = v0[6];
        }
      }

      os_unfair_lock_unlock((v8 + 16));

      os_unfair_lock_lock((v8 + 16));
      v2 = *(v8 + 24);
      v3 = *(v8 + 32);

      os_unfair_lock_unlock((v8 + 16));
      if (v3)
      {
        goto LABEL_2;
      }
    }

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1B645CF84()
{

  return MEMORY[0x1EEE6DFA0](sub_1B645D080, 0, 0);
}

uint64_t sub_1B645D080()
{

  v1 = v0[6];
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);

  os_unfair_lock_unlock((v1 + 16));
  if (v3)
  {
LABEL_2:
    v0[9] = v2;
    v0[10] = v3;

    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_1B645CF84;

    return MEMORY[0x1EEE6DA40]();
  }

  else
  {
    while (*(v2 + 16))
    {
      v9 = v0[6];
      os_unfair_lock_lock((v9 + 16));
      v8 = v0[6];
      if (!*(v9 + 32))
      {
        v10 = *(v8 + 24);
        v11 = v10[2];
        if (v11)
        {
          v12 = v10[4];
          v13 = v10[5];

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v8 + 24) = v10;
          if (!isUniquelyReferenced_nonNull_native || (v11 - 1) > v10[3] >> 1)
          {
            v15 = v0[6];
            v10 = sub_1B645DD98(isUniquelyReferenced_nonNull_native, v11, 1, v10);
            *(v15 + 24) = v10;
          }

          v16 = v0[7];
          v17 = v0[8];
          v18 = v0[6];

          v19 = v10[2];
          memmove(v10 + 4, v10 + 6, 16 * v19 - 16);
          v10[2] = v19 - 1;
          *(v18 + 24) = v10;
          v20 = swift_allocObject();
          *(v20 + 16) = v12;
          *(v20 + 24) = v13;
          v21 = sub_1B67D993C();
          v22 = *(v21 - 8);
          (*(v22 + 56))(v17, 1, 1, v21);
          v23 = swift_allocObject();
          swift_weakInit();
          v24 = swift_allocObject();
          v24[2] = 0;
          v24[3] = 0;
          v24[4] = v23;
          v24[5] = &unk_1B6810D08;
          v24[6] = v20;
          sub_1B644C200(v17, v16);
          LODWORD(v17) = (*(v22 + 48))(v16, 1, v21);

          v25 = v0[7];
          if (v17 == 1)
          {
            sub_1B644C270(v0[7]);
          }

          else
          {
            sub_1B67D992C();
            (*(v22 + 8))(v25, v21);
          }

          v26 = v24[2];
          swift_unknownObjectRetain();

          if (v26)
          {
            swift_getObjectType();
            v27 = sub_1B67D989C();
            v29 = v28;
            swift_unknownObjectRelease();
          }

          else
          {
            v27 = 0;
            v29 = 0;
          }

          v30 = swift_allocObject();
          *(v30 + 16) = &unk_1B6810D18;
          *(v30 + 24) = v24;
          if (v29 | v27)
          {
            v0[2] = 0;
            v0[3] = 0;
            v0[4] = v27;
            v0[5] = v29;
          }

          v5 = v0[8];
          v6 = v0[6];
          v7 = swift_task_create();

          sub_1B644C270(v5);
          *(v6 + 32) = v7;

          v8 = v0[6];
        }
      }

      os_unfair_lock_unlock((v8 + 16));

      os_unfair_lock_lock((v8 + 16));
      v2 = *(v8 + 24);
      v3 = *(v8 + 32);

      os_unfair_lock_unlock((v8 + 16));
      if (v3)
      {
        goto LABEL_2;
      }
    }

    v31 = v0[1];

    return v31();
  }
}