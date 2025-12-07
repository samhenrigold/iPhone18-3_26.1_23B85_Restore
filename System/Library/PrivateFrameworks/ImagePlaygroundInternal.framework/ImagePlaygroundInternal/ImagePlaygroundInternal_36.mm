uint64_t sub_1D267176C()
{
  (*(*(v0 + 1320) + 8))(*(v0 + 1328), *(v0 + 1312));
  v1 = *(v0 + 2288);
  *(v0 + 1216) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 2272);
    v4 = *(v0 + 2264);
    v5 = *(v0 + 2256);
    v6 = *(v0 + 1480);

    v7 = *(v0 + 1096);
    v8 = *(v0 + 1104);
    sub_1D2672E0C();
    swift_allocError();
    *v9 = v7;
    v9[1] = v8;
    swift_willThrow();

    sub_1D22D6D60(v5, v4);
    sub_1D22BD238(v6, &qword_1EC6DF7A0, &qword_1D289B1A0);

    v10 = *(v0 + 8);
LABEL_22:

    return v10();
  }

  sub_1D2872658();
  v11 = v1;
  v12 = sub_1D2873CA8();
  v13 = sub_1D2878A18();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 2272);
  v16 = *(v0 + 2264);
  v17 = *(v0 + 2256);
  if (v14)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 138412290;
    v20 = v1;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v21;
    *v19 = v21;
    _os_log_impl(&dword_1D226E000, v12, v13, "Cannot parse recipe data wrapper to recipe with error: %@", v18, 0xCu);
    sub_1D22BD238(v19, qword_1EC6DA930, &qword_1D287E870);
    MEMORY[0x1D38A3520](v19, -1, -1);
    MEMORY[0x1D38A3520](v18, -1, -1);

    sub_1D22D6D60(v17, v16);
  }

  else
  {
    sub_1D22D6D60(*(v0 + 2256), *(v0 + 2264));
  }

  (*(*(v0 + 1536) + 8))(*(v0 + 1544), *(v0 + 1528));
  *(v0 + 405) = 0;
  if (*(v0 + 2008))
  {
    v22 = 0;
    v23 = *(v0 + 1776);
    v24 = *(v0 + 1376);
    v25 = *(v0 + 2000) + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v26 = *(v23 + 72);
    v27 = MEMORY[0x1E69E7CC0];
    do
    {
      v28 = *(v0 + 1792);
      v29 = *(v0 + 1784);
      sub_1D2672EC0(v25, v28, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v28, v29, type metadata accessor for PromptElementConceptExtractor.Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v31 = *(v0 + 1784);
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D2672F28(v31, *(v0 + 1392), type metadata accessor for PlaygroundImage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1D27CD8A8(0, v27[2] + 1, 1, v27);
        }

        v33 = v27[2];
        v32 = v27[3];
        if (v33 >= v32 >> 1)
        {
          v27 = sub_1D27CD8A8((v32 > 1), v33 + 1, 1, v27);
        }

        v34 = *(v0 + 1392);
        v27[2] = v33 + 1;
        sub_1D2672F28(v34, v27 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v33, type metadata accessor for PlaygroundImage);
      }

      else
      {
        sub_1D2672F90(v31, type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v22;
      v25 += v26;
    }

    while (v22 != *(v0 + 2008));
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  if (v27[2])
  {
    v35 = *(*(v0 + 1376) + 80);
    sub_1D2672EC0(v27 + ((v35 + 32) & ~v35), *(v0 + 1344), type metadata accessor for PlaygroundImage);
    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = *(v0 + 1376);
  v38 = *(v0 + 1368);
  v39 = *(v0 + 1344);
  v40 = *(v0 + 1336);

  (*(v37 + 56))(v39, v36, 1, v38);
  sub_1D22BD1D0(v39, v40, &unk_1EC6DE5A0, &unk_1D287F0E0);
  if ((*(v37 + 48))(v40, 1, v38) == 1)
  {
    v41 = *(v0 + 1480);
    v42 = *(v0 + 1344);
    v43 = *(v0 + 1336);

    sub_1D22BD238(v42, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D22BD238(v41, &qword_1EC6DF7A0, &qword_1D289B1A0);
    sub_1D22BD238(v43, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v44 = *(v0 + 405);
    v45 = *(v0 + 1304);
    *(v45 + 16) = *(v0 + 404);
    *(v45 + 17) = v44;

    v10 = *(v0 + 8);
    goto LABEL_22;
  }

  sub_1D2672F28(*(v0 + 1336), *(v0 + 1384), type metadata accessor for PlaygroundImage);
  *(v0 + 2296) = sub_1D23C7314();
  *(v0 + 2304) = sub_1D2878558();
  v47 = swift_task_alloc();
  *(v0 + 2312) = v47;
  *v47 = v0;
  v47[1] = sub_1D266F178;
  v48 = *(v0 + 1384);

  return sub_1D28421E4(v0 + 352, v48, 1);
}

uint64_t sub_1D26722CC(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 112) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = sub_1D2873CB8();
  *(v3 + 32) = v5;
  *(v3 + 40) = *(v5 - 8);
  *(v3 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB560, &qword_1D289B1C0);
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = sub_1D2872488();
  *(v3 + 64) = v7;
  *(v3 + 72) = *(v7 - 8);
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = sub_1D2878568();
  *(v3 + 96) = sub_1D2878558();
  type metadata accessor for CGImage(0);
  v8 = swift_task_alloc();
  *(v3 + 104) = v8;
  *v8 = v3;
  v8[1] = sub_1D2672494;

  return MEMORY[0x1EEDC93C0](v6, a2);
}

uint64_t sub_1D2672494()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D26725D0, v1, v0);
}

uint64_t sub_1D26725D0()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D22BD238(*(v0 + 56), &qword_1EC6DB560, &qword_1D289B1C0);
    sub_1D2872658();
    v4 = sub_1D2873CA8();
    v5 = sub_1D2878A18();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D226E000, v4, v5, "Cannot resize native image into CGImage", v6, 2u);
      MEMORY[0x1D38A3520](v6, -1, -1);
    }

    v8 = *(v0 + 40);
    v7 = *(v0 + 48);
    v9 = *(v0 + 32);
    v10 = *(v0 + 16);

    (*(v8 + 8))(v7, v9);
    v11 = type metadata accessor for PlaygroundImage(0);
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  else
  {
    v13 = *(v0 + 72);
    v12 = *(v0 + 80);
    v14 = *(v0 + 64);
    v15 = *(v0 + 112);
    v16 = *(v0 + 16);
    v17 = *(v0 + 24);
    (*(v13 + 32))(v12, *(v0 + 56), v14);
    v18 = sub_1D2872478();
    v19 = type metadata accessor for PlaygroundImage(0);
    *(v16 + 32) = 0;
    *(v16 + 40) = 0;
    v20 = (v16 + v19[9]);
    *v20 = 0u;
    v20[1] = 0u;
    *(v16 + v19[10]) = xmmword_1D28809A0;
    v21 = v19[11];
    v22 = sub_1D2873AA8();
    (*(*(v22 - 8) + 56))(v16 + v21, 1, 1, v22);
    *v16 = v18;
    *(v16 + 8) = 3;
    *(v16 + 24) = 1;
    *(v16 + 16) = 0;
    *(v16 + v19[12]) = v15;
    v23 = v18;
    sub_1D2871808();

    (*(v13 + 8))(v12, v14);
    (*(*(v19 - 1) + 56))(v16, 0, 1, v19);
  }

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D26728B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1D2872378();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2872388();
  v9 = (*(v3 + 88))(v5, v2);
  if (v9 == *MEMORY[0x1E696E480])
  {
    (*(v3 + 96))(v5, v2);
    v10 = sub_1D2871818();
    v11 = *(v10 - 8);
    (*(v11 + 32))(v8, v5, v10);
    (*(v11 + 56))(v8, 0, 2, v10);
  }

  else if (v9 == *MEMORY[0x1E696E488])
  {
    v12 = sub_1D2871818();
    (*(*(v12 - 8) + 56))(v8, 1, 2, v12);
  }

  else
  {
    v13 = *MEMORY[0x1E696E490];
    v14 = v9;
    v15 = sub_1D2871818();
    (*(*(v15 - 8) + 56))(v8, 2, 2, v15);
    if (v14 != v13)
    {
      (*(v3 + 8))(v5, v2);
    }
  }

  v16 = sub_1D28723A8();
  v18 = v17;
  v19 = type metadata accessor for IdentifiedEntity(0);
  sub_1D2672EC0(v8, a1 + *(v19 + 20), type metadata accessor for IdentifiedEntity.Kind);
  sub_1D28723B8();
  sub_1D2872368();
  v20 = sub_1D28721D8();
  v22 = v21;

  result = sub_1D2672F90(v8, type metadata accessor for IdentifiedEntity.Kind);
  *a1 = v16;
  a1[1] = v18;
  v24 = (a1 + *(v19 + 24));
  *v24 = v20;
  v24[1] = v22;
  return result;
}

uint64_t sub_1D2672BFC(uint64_t a1)
{
  sub_1D22D7044(a1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08, &qword_1D288C9A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_1D22BD238(&v12, &qword_1EC6D9A58, &qword_1D287F000);
    sub_1D28722B8();
    goto LABEL_9;
  }

  v1 = *(&v13 + 1);
  v2 = v14;
  __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
  v3 = (*(v2 + 16))(v1, v2);
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_0(&v12);
  v6 = sub_1D28722B8();
  if (!v5)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  if (v3 == v6 && v5 == v7)
  {

    v9 = 1;
  }

  else
  {
    v9 = sub_1D2879618();
  }

LABEL_10:

  return v9 & 1;
}

uint64_t sub_1D2672D60()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D2672E0C()
{
  result = qword_1EC6DF798;
  if (!qword_1EC6DF798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF798);
  }

  return result;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D2672E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2672EC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2672F28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2672F90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2672FF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BC8FC;

  return sub_1D2783B48(a1, v4, v5, v6, v7, v8);
}

uint64_t CreationContext.__allocating_init(defaultStyle:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CreationContext.init(defaultStyle:)(a1);
  return v2;
}

BOOL sub_1D2673120()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8, &unk_1D28826F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v25[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25[-v5 - 8];
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v8 = *(*(v0 + v7) + 16) != 0;
  v9 = sub_1D27D8C8C();
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  if ((v9 & 1) == 0)
  {
    swift_beginAccess();
    if (*(v0 + v10))
    {
      return 1;
    }

    v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
    swift_beginAccess();
    sub_1D22BD1D0(v0 + v14, v3, &qword_1EC6DA2C8, &unk_1D28826F0);
    v15 = type metadata accessor for SceneConditioningImage(0);
    v16 = (*(*(v15 - 8) + 48))(v3, 1, v15);
    v17 = v3;
LABEL_8:
    sub_1D22BD238(v17, &qword_1EC6DA2C8, &unk_1D28826F0);
    if (v16 == 1)
    {
      goto LABEL_9;
    }

    return 1;
  }

  swift_beginAccess();
  v11 = *(v0 + v10);
  if (!v11)
  {
    v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
    swift_beginAccess();
    sub_1D22BD1D0(v0 + v18, v6, &qword_1EC6DA2C8, &unk_1D28826F0);
    v19 = type metadata accessor for SceneConditioningImage(0);
    v16 = (*(*(v19 - 8) + 48))(v6, 1, v19);
    v17 = v6;
    goto LABEL_8;
  }

  v12 = v11;
  v13 = sub_1D2878BF8();

  if (v13)
  {
    return 1;
  }

LABEL_9:
  v20 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v20, v25, &qword_1EC6D9A58, &qword_1D287F000);
  v21 = v26;
  sub_1D22BD238(v25, &qword_1EC6D9A58, &qword_1D287F000);
  if (v21)
  {
    return 1;
  }

  v22 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  if (*(*(v0 + v22) + 16))
  {
    return 1;
  }

  return v8;
}

uint64_t sub_1D2673418()
{
  v1 = v0;
  v2 = type metadata accessor for Prompt(0);
  v66 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for CuratedPrompt(0);
  v65 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = sub_1D2872008();
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SketchConditioningImage(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SceneConditioningImage(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  if ((*(v14 + 48))(v1 + v17, 1, v13))
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  else
  {
    sub_1D26784A4(v1 + v17, v16, type metadata accessor for SceneConditioningImage);
    type metadata accessor for PlaygroundImage(0);
    v18 = sub_1D28717B8();
    v19 = v20;
    sub_1D2678444(v16, type metadata accessor for SceneConditioningImage);
  }

  v75 = v18;
  v76 = v19;
  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
  swift_beginAccess();
  if ((*(v10 + 48))(v1 + v21, 1, v9))
  {
    v22 = 0;
    v23 = 0xE000000000000000;
  }

  else
  {
    sub_1D26784A4(v1 + v21, v12, type metadata accessor for SketchConditioningImage);
    type metadata accessor for PlaygroundImage(0);
    v24 = sub_1D28717B8();
    v23 = v25;
    sub_1D2678444(v12, type metadata accessor for SketchConditioningImage);
    v22 = v24;
  }

  MEMORY[0x1D38A0C50](v22, v23);

  v26 = (v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson);
  swift_beginAccess();
  v27 = v26[3];
  v28 = 0xE000000000000000;
  if (v27)
  {
    v29 = v26[4];
    v30 = __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    v31 = *(v27 - 8);
    v32 = MEMORY[0x1EEE9AC00](v30);
    v34 = &v64 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v34, v32);
    v35 = (*(*(*(v29 + 8) + 8) + 16))(v27);
    v37 = v36;
    (*(v31 + 8))(v34, v27);
  }

  else
  {
    v35 = 0;
    v37 = 0xE000000000000000;
  }

  MEMORY[0x1D38A0C50](v35, v37);

  v38 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  v39 = v68;
  v40 = v1 + v38;
  v41 = v67;
  v42 = v69;
  (*(v68 + 16))(v67, v40, v69);
  v43 = sub_1D2871F98();
  v45 = v44;
  (*(v39 + 8))(v41, v42);
  MEMORY[0x1D38A0C50](v43, v45);

  v46 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v69 = v1;
  v47 = *(v1 + v46);
  v71 = 0;
  v72 = 0xE000000000000000;
  v48 = *(v47 + 16);
  if (v48)
  {
    v49 = v47 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v50 = *(v65 + 72);
    v68 = v47;
    sub_1D2870F68();
    do
    {
      sub_1D26784A4(v49, v7, type metadata accessor for CuratedPrompt);
      v51 = v7[1];
      v73 = *v7;
      v74 = v51;
      sub_1D2870F68();
      v52 = sub_1D28782E8();
      MEMORY[0x1D38A0C50](v52);

      sub_1D2678444(v7, type metadata accessor for CuratedPrompt);
      v49 += v50;
      --v48;
    }

    while (v48);

    v53 = v71;
    v28 = v72;
  }

  else
  {
    v53 = 0;
  }

  MEMORY[0x1D38A0C50](v53, v28);

  v54 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  v55 = v69;
  swift_beginAccess();
  v56 = *(v55 + v54);
  v57 = 0xE000000000000000;
  v73 = 0;
  v74 = 0xE000000000000000;
  v58 = *(v56 + 16);
  if (v58)
  {
    v59 = v56 + ((*(v66 + 80) + 32) & ~*(v66 + 80));
    v60 = *(v66 + 72);
    sub_1D2870F68();
    do
    {
      sub_1D26784A4(v59, v4, type metadata accessor for Prompt);
      v70 = *v4;
      v61 = sub_1D28795C8();
      MEMORY[0x1D38A0C50](v61);

      sub_1D2678444(v4, type metadata accessor for Prompt);
      v59 += v60;
      --v58;
    }

    while (v58);

    v62 = v73;
    v57 = v74;
  }

  else
  {
    v62 = 0;
  }

  MEMORY[0x1D38A0C50](v62, v57);

  return v75;
}

BOOL sub_1D2673C1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200, &qword_1D289B260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8, &unk_1D28826F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v7, v6, &qword_1EC6DA2C8, &unk_1D28826F0);
  v8 = type metadata accessor for SceneConditioningImage(0);
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_1D22BD238(v6, &qword_1EC6DA2C8, &unk_1D28826F0);
  if (v7 != 1)
  {
    return 0;
  }

  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v9, v3, &qword_1EC6DA200, &qword_1D289B260);
  v10 = type metadata accessor for SketchConditioningImage(0);
  LODWORD(v9) = (*(*(v10 - 8) + 48))(v3, 1, v10);
  sub_1D22BD238(v3, &qword_1EC6DA200, &qword_1D289B260);
  if (v9 != 1)
  {
    return 0;
  }

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  if (*(v0 + v11))
  {
    return 0;
  }

  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v12, v18, &qword_1EC6D9A58, &qword_1D287F000);
  v13 = v19;
  sub_1D22BD238(v18, &qword_1EC6D9A58, &qword_1D287F000);
  if (v13)
  {
    return 0;
  }

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription + 8))
  {
    return 0;
  }

  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  if (*(*(v0 + v14) + 16))
  {
    return 0;
  }

  v16 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  return *(*(v0 + v16) + 16) == 0;
}

uint64_t sub_1D2673EFC()
{
  v1 = type metadata accessor for CuratedPrompt(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Prompt(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v10 = *(v0 + v9);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v39 = v0;
    v40 = v2;
    v42[0] = MEMORY[0x1E69E7CC0];
    sub_1D2870F68();
    sub_1D23D81B8(0, v11, 0);
    v12 = v42[0];
    v13 = *(v6 + 80);
    v38 = v10;
    v14 = v10 + ((v13 + 32) & ~v13);
    v15 = *(v6 + 72);
    do
    {
      sub_1D26784A4(v14, v8, type metadata accessor for Prompt);
      v16 = *(v8 + 1);
      v17 = *(v8 + 2);
      sub_1D2870F68();
      sub_1D2678444(v8, type metadata accessor for Prompt);
      v42[0] = v12;
      v19 = *(v12 + 16);
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D23D81B8((v18 > 1), v19 + 1, 1);
        v12 = v42[0];
      }

      *(v12 + 16) = v19 + 1;
      v20 = v12 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v14 += v15;
      --v11;
    }

    while (v11);

    v0 = v39;
    v2 = v40;
  }

  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v22 = *(v0 + v21);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D2870F68();
    sub_1D23D81B8(0, v23, 0);
    v24 = v41;
    v25 = *(v2 + 80);
    v40 = v22;
    v26 = v22 + ((v25 + 32) & ~v25);
    v27 = *(v2 + 72);
    do
    {
      sub_1D26784A4(v26, v4, type metadata accessor for CuratedPrompt);
      v29 = *(v4 + 2);
      v28 = *(v4 + 3);
      sub_1D2870F68();
      sub_1D2678444(v4, type metadata accessor for CuratedPrompt);
      v41 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D23D81B8((v30 > 1), v31 + 1, 1);
        v24 = v41;
      }

      *(v24 + 16) = v31 + 1;
      v32 = v24 + 16 * v31;
      *(v32 + 32) = v29;
      *(v32 + 40) = v28;
      v26 += v27;
      --v23;
    }

    while (v23);
  }

  v41 = v12;
  sub_1D274DC9C(v24);
  v33 = objc_opt_self();
  v34 = sub_1D28783C8();

  v35 = [v33 localizedStringByJoiningStrings_];

  v36 = sub_1D28780A8();
  return v36;
}

void sub_1D26742D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200, &qword_1D289B260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v21 - v2 + 64;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8, &unk_1D28826F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v21 - v5 + 64;
  v7 = type metadata accessor for SceneConditioningImage(0);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  sub_1D22BD298(v6, v0 + v8, &qword_1EC6DA2C8, &unk_1D28826F0);
  swift_endAccess();
  v9 = type metadata accessor for SketchConditioningImage(0);
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
  swift_beginAccess();
  sub_1D22BD298(v3, v0 + v10, &qword_1EC6DA200, &qword_1D289B260);
  swift_endAccess();
  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v12 = *(v0 + v11);
  *(v0 + v11) = 0;

  v22 = 0;
  memset(v21, 0, sizeof(v21));
  v13 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD298(v21, v0 + v13, &qword_1EC6D9A58, &qword_1D287F000);
  swift_endAccess();
  v14 = (v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription);
  *v14 = 0;
  v14[1] = 0;

  v15 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v16 = MEMORY[0x1E69E7CC0];
  *(v0 + v15) = MEMORY[0x1E69E7CC0];

  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts;
  swift_beginAccess();
  *(v0 + v17) = v16;

  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  *(v0 + v18) = v16;

  v19 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedCuratedPrompts;
  swift_beginAccess();
  *(v0 + v19) = v16;

  *(v0 + v17) = v16;

  *(v0 + v19) = v16;

  *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 0;
}

uint64_t sub_1D26745FC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Prompt(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D26784A4(a1, v7, type metadata accessor for Prompt);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v9 = *(v2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1D27CC840(0, v9[2] + 1, 1, v9);
    *(v2 + v8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1D27CC840((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  sub_1D2678580(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, type metadata accessor for Prompt);
  *(v2 + v8) = v9;
  v13 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v13);
  *(&v18 - 2) = a1;
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts;
  swift_beginAccess();
  v15 = sub_1D268223C(sub_1D267850C, (&v18 - 4));
  v16 = *(*(v2 + v14) + 16);
  if (v16 < v15)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1D278CD34(v15, v16);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1D2674838(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  type metadata accessor for SketchConditioningImage(0);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for PlaygroundImage(0);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  sub_1D2878568();
  v3[14] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[15] = v5;
  v3[16] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D2674954, v5, v4);
}

uint64_t sub_1D2674954()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    *(*(v0 + 56) + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 1;
  }

  v4 = *(v0 + 40);
  *(v1 + v2) = v4;

  v5 = [v4 baseImage];
  if (v5)
  {
    v6 = v5;
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = *(v0 + 72);
    *(v8 + 32) = 0;
    *(v8 + 40) = 0;
    v10 = (v8 + v9[9]);
    *v10 = 0u;
    v10[1] = 0u;
    *(v8 + v9[10]) = xmmword_1D28809A0;
    v11 = v9[11];
    v12 = sub_1D2873AA8();
    (*(*(v12 - 8) + 56))(v8 + v11, 1, 1, v12);
    *v8 = v6;
    *(v8 + 8) = 3;
    *(v8 + 24) = 1;
    *(v8 + 16) = 0;
    *(v8 + v9[12]) = 0;
    sub_1D2871808();
    sub_1D2678580(v8, v7, type metadata accessor for PlaygroundImage);
    v13 = swift_task_alloc();
    *(v0 + 136) = v13;
    *v13 = v0;
    v13[1] = sub_1D2674CE0;
    v14 = *(v0 + 104);
    v15 = *(v0 + 56);

    return _ConditioningImageFactory.assignConditioningImage(from:to:)(v14, v15);
  }

  else
  {

    v17 = [*(v0 + 40) sketchImage];
    if (v17)
    {
      v18 = v17;
      v20 = *(v0 + 80);
      v19 = *(v0 + 88);
      v21 = *(v0 + 64);
      v22 = *(v0 + 72);
      *(v20 + 32) = 0;
      *(v20 + 40) = 0;
      v23 = (v20 + v22[9]);
      *v23 = 0u;
      v23[1] = 0u;
      *(v20 + v22[10]) = xmmword_1D28809A0;
      v24 = v22[11];
      v25 = sub_1D2873AA8();
      (*(*(v25 - 8) + 56))(v20 + v24, 1, 1, v25);
      *v20 = v18;
      *(v20 + 8) = 3;
      *(v20 + 24) = 1;
      *(v20 + 16) = 0;
      *(v20 + v22[12]) = 1;
      sub_1D2871808();
      sub_1D2678580(v20, v19, type metadata accessor for PlaygroundImage);
      sub_1D26784A4(v19, v21, type metadata accessor for PlaygroundImage);
      sub_1D26762D8(v21);
      sub_1D2678444(v21, type metadata accessor for SketchConditioningImage);
      sub_1D2678444(v19, type metadata accessor for PlaygroundImage);
    }

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1D2674CE0()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D2674E00, v3, v2);
}

uint64_t sub_1D2674E00()
{
  v1 = *(v0 + 104);

  sub_1D2678444(v1, type metadata accessor for PlaygroundImage);
  v2 = [*(v0 + 40) sketchImage];
  if (v2)
  {
    v3 = v2;
    v5 = *(v0 + 80);
    v4 = *(v0 + 88);
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    v8 = (v5 + v7[9]);
    *v8 = 0u;
    v8[1] = 0u;
    *(v5 + v7[10]) = xmmword_1D28809A0;
    v9 = v7[11];
    v10 = sub_1D2873AA8();
    (*(*(v10 - 8) + 56))(v5 + v9, 1, 1, v10);
    *v5 = v3;
    *(v5 + 8) = 3;
    *(v5 + 24) = 1;
    *(v5 + 16) = 0;
    *(v5 + v7[12]) = 1;
    sub_1D2871808();
    sub_1D2678580(v5, v4, type metadata accessor for PlaygroundImage);
    sub_1D26784A4(v4, v6, type metadata accessor for PlaygroundImage);
    sub_1D26762D8(v6);
    sub_1D2678444(v6, type metadata accessor for SketchConditioningImage);
    sub_1D2678444(v4, type metadata accessor for PlaygroundImage);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D267502C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_1D23C3FAC(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_1D22BD238(v13, &qword_1EC6E1900, &qword_1D288CA00);
}

Swift::Void __swiftcall CreationContext.add(text:)(Swift::String text)
{
  v59 = text;
  v51 = sub_1D28712C8();
  MEMORY[0x1EEE9AC00](v51);
  v1 = sub_1D2871318();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v52 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - v5;
  v58 = sub_1D2871798();
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40, &unk_1D289B180);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v53 = type metadata accessor for Prompt(0);
  MEMORY[0x1EEE9AC00](v53);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v54 = &v50 - v19;
  (*(v2 + 56))(v14, 1, 1, v1, v18);
  v56 = v8;
  sub_1D2871778();
  v55 = v14;
  sub_1D22BD1D0(v14, v11, &unk_1EC6E1D40, &unk_1D289B180);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    sub_1D22BD238(v11, &unk_1EC6E1D40, &unk_1D289B180);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    countAndFlagsBits = v59._countAndFlagsBits;
    object = v59._object;
    *(v16 + 3) = sub_1D24B63AC(qword_1ED8B0010, v59._countAndFlagsBits, v59._object);
    v16[32] = v22 & 1;
    v23 = sub_1D27E1420(countAndFlagsBits, object);
    v25 = v24;
    goto LABEL_9;
  }

  (*(v2 + 32))(v6, v11, v1);
  v26 = v6;
  if (qword_1ED89CD48 != -1)
  {
    swift_once();
  }

  v27 = qword_1ED8B0010;
  sub_1D28712B8();
  sub_1D2436AE8();
  aBlock = sub_1D28782D8();
  v61 = v28;
  v68[0] = 12369903;
  v68[1] = 0xA300000000000000;
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_1D22BD06C();
  v29 = sub_1D2878FA8();
  v31 = v30;

  v32 = sub_1D24B63AC(v27, v29, v31);
  LODWORD(v51) = v33;

  v68[0] = v32;
  sub_1D2436B40();
  (*(v2 + 16))(v52, v26, v1);
  v34 = sub_1D2878AE8();
  v52 = *MEMORY[0x1E69DB5F0];
  v35 = [v34 length];
  v36 = swift_allocObject();
  *(v36 + 16) = v68;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1D2436B8C;
  *(v37 + 24) = v36;
  v64 = sub_1D2677778;
  v65 = v37;
  aBlock = MEMORY[0x1E69E9820];
  v61 = 1107296256;
  v62 = sub_1D267502C;
  v63 = &block_descriptor_34;
  v38 = _Block_copy(&aBlock);
  sub_1D2870F78();

  [v34 enumerateAttribute:v52 inRange:0 options:v35 usingBlock:{0, v38}];

  _Block_release(v38);
  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if ((v34 & 1) == 0)
  {
    v39 = v68[0];

    *(v16 + 3) = v39;
    v16[32] = v51 & 1;
    v40 = sub_1D27E0DA0();
    v23 = sub_1D27E1420(v40, v41);
    v25 = v42;

    (*(v2 + 8))(v26, v1);
LABEL_9:
    v43 = MEMORY[0x1E69E7CC0];
    *(v16 + 1) = v23;
    *(v16 + 2) = v25;
    *(v16 + 5) = v43;
    v44 = v53;
    v45 = v57;
    v46 = v56;
    v47 = v58;
    (*(v57 + 16))(&v16[*(v53 + 36)], v56, v58);
    v16[*(v44 + 40)] = 0;
    sub_1D2879838();
    sub_1D2877F38();
    v48 = sub_1D2879818();
    (*(v45 + 8))(v46, v47);
    sub_1D22BD238(v55, &unk_1EC6E1D40, &unk_1D289B180);
    *v16 = v48;
    v49 = v54;
    sub_1D2678580(v16, v54, type metadata accessor for Prompt);
    sub_1D26745FC(v49);
    sub_1D2678444(v49, type metadata accessor for Prompt);
    return;
  }

  __break(1u);
}

uint64_t CreationContext.init(defaultStyle:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  v4 = type metadata accessor for SceneConditioningImage(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
  v6 = type metadata accessor for SketchConditioningImage(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe) = 0;
  v7 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0;
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_skinTone;
  v9 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts) = v10;
  v11 = (v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_accessibilityDescription);
  *v11 = 0;
  v11[1] = 0;
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedCuratedPrompts) = v10;
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts) = v10;
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 0;
  v12 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  v13 = sub_1D2872008();
  (*(*(v13 - 8) + 32))(v1 + v12, a1, v13);
  return v1;
}

uint64_t sub_1D2675A60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200, &qword_1D289B260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15[-v2];
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  if (*(*(v0 + v4) + 16))
  {
    v5 = 1;
  }

  else
  {
    v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
    swift_beginAccess();
    v5 = *(*(v0 + v6) + 16) != 0;
  }

  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v7, v3, &qword_1EC6DA200, &qword_1D289B260);
  v8 = type metadata accessor for SketchConditioningImage(0);
  v9 = (*(*(v8 - 8) + 48))(v3, 1, v8) != 1;
  sub_1D22BD238(v3, &qword_1EC6DA200, &qword_1D289B260);
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v11 = *(v0 + v10);
  if (v11)
  {
    v12 = v11;
    v13 = sub_1D2878C08();
  }

  else
  {
    v13 = v9 && !v5;
  }

  return v13 & 1;
}

uint64_t sub_1D2675C1C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Prompt(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v9 = (v1 + v8);
  v10 = sub_1D268223C(sub_1D2678620, v16);
  v11 = *(*(v2 + v8) + 16);
  if (v11 < v10)
  {
    __break(1u);
  }

  else
  {
    sub_1D278CD34(v10, v11);
    swift_endAccess();
    sub_1D26784A4(a1, v7, type metadata accessor for Prompt);
    a1 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts;
    swift_beginAccess();
    v9 = *(v2 + a1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + a1) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v9 = sub_1D27CC840(0, v9[2] + 1, 1, v9);
  *(v2 + a1) = v9;
LABEL_3:
  v14 = v9[2];
  v13 = v9[3];
  if (v14 >= v13 >> 1)
  {
    v9 = sub_1D27CC840((v13 > 1), v14 + 1, 1, v9);
  }

  v9[2] = v14 + 1;
  sub_1D2678580(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, type metadata accessor for Prompt);
  *(v2 + a1) = v9;
  return swift_endAccess();
}

uint64_t sub_1D2675E30(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D2879618() & 1;
  }
}

uint64_t sub_1D2675E88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CuratedPrompt(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D26784A4(a1, v7, type metadata accessor for CuratedPrompt);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v9 = *(v2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v8) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1D27CCA98(0, v9[2] + 1, 1, v9);
    *(v2 + v8) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1D27CCA98((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  sub_1D2678580(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, type metadata accessor for CuratedPrompt);
  *(v2 + v8) = v9;
  v13 = swift_endAccess();
  MEMORY[0x1EEE9AC00](v13);
  *(&v18 - 2) = a1;
  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedCuratedPrompts;
  swift_beginAccess();
  v15 = sub_1D2682594(sub_1D2677A5C, (&v18 - 4));
  v16 = *(*(v2 + v14) + 16);
  if (v16 < v15)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1D278CC2C(v15, v16);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1D26760C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CuratedPrompt(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = a1;
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v9 = (v1 + v8);
  v10 = sub_1D2682594(sub_1D2678604, v16);
  v11 = *(*(v2 + v8) + 16);
  if (v11 < v10)
  {
    __break(1u);
  }

  else
  {
    sub_1D278CC2C(v10, v11);
    swift_endAccess();
    sub_1D26784A4(a1, v7, type metadata accessor for CuratedPrompt);
    a1 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedCuratedPrompts;
    swift_beginAccess();
    v9 = *(v2 + a1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + a1) = v9;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  v9 = sub_1D27CCA98(0, v9[2] + 1, 1, v9);
  *(v2 + a1) = v9;
LABEL_3:
  v14 = v9[2];
  v13 = v9[3];
  if (v14 >= v13 >> 1)
  {
    v9 = sub_1D27CCA98((v13 > 1), v14 + 1, 1, v9);
  }

  v9[2] = v14 + 1;
  sub_1D2678580(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, type metadata accessor for CuratedPrompt);
  *(v2 + a1) = v9;
  return swift_endAccess();
}

uint64_t sub_1D26762D8(uint64_t a1)
{
  v36 = a1;
  v2 = type metadata accessor for SketchConditioningImage(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B0, &qword_1D289B2F0);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200, &qword_1D289B260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v35 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v29 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  v17 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v17, v16, &qword_1EC6DA200, &qword_1D289B260);
  v33 = *(v3 + 48);
  v18 = v33(v16, 1, v2);
  v19 = v16;
  v20 = v3;
  sub_1D22BD238(v19, &qword_1EC6DA200, &qword_1D289B260);
  if (v18 != 1)
  {
    sub_1D26784A4(v36, v13, type metadata accessor for SketchConditioningImage);
    v30 = v3;
    (*(v3 + 56))(v13, 0, 1, v2);
    v21 = *(v34 + 48);
    v34 = v17;
    sub_1D22BD1D0(v1 + v17, v6, &qword_1EC6DA200, &qword_1D289B260);
    sub_1D22BD1D0(v13, &v6[v21], &qword_1EC6DA200, &qword_1D289B260);
    v22 = v33;
    if (v33(v6, 1, v2) == 1)
    {
      sub_1D22BD238(v13, &qword_1EC6DA200, &qword_1D289B260);
      v23 = v22(&v6[v21], 1, v2);
      v20 = v30;
      if (v23 == 1)
      {
        sub_1D22BD238(v6, &qword_1EC6DA200, &qword_1D289B260);
        v17 = v34;
        goto LABEL_9;
      }
    }

    else
    {
      v24 = v32;
      sub_1D22BD1D0(v6, v32, &qword_1EC6DA200, &qword_1D289B260);
      if (v22(&v6[v21], 1, v2) != 1)
      {
        v27 = v31;
        sub_1D2678580(&v6[v21], v31, type metadata accessor for SketchConditioningImage);
        type metadata accessor for PlaygroundImage(0);
        v28 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
        sub_1D2678444(v27, type metadata accessor for SketchConditioningImage);
        sub_1D22BD238(v13, &qword_1EC6DA200, &qword_1D289B260);
        sub_1D2678444(v24, type metadata accessor for SketchConditioningImage);
        sub_1D22BD238(v6, &qword_1EC6DA200, &qword_1D289B260);
        v20 = v30;
        v17 = v34;
        if (v28)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }

      sub_1D22BD238(v13, &qword_1EC6DA200, &qword_1D289B260);
      sub_1D2678444(v24, type metadata accessor for SketchConditioningImage);
      v20 = v30;
    }

    sub_1D22BD238(v6, &qword_1EC6DF7B0, &qword_1D289B2F0);
    v17 = v34;
LABEL_8:
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 1;
  }

LABEL_9:
  v25 = v35;
  sub_1D26784A4(v36, v35, type metadata accessor for SketchConditioningImage);
  (*(v20 + 56))(v25, 0, 1, v2);
  swift_beginAccess();
  sub_1D22BD298(v25, v1 + v17, &qword_1EC6DA200, &qword_1D289B260);
  return swift_endAccess();
}

uint64_t sub_1D26767F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200, &qword_1D289B260);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9[-v2];
  *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 1;
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5)
  {
    [v5 setSketchImage_];
  }

  v6 = type metadata accessor for SketchConditioningImage(0);
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
  swift_beginAccess();
  sub_1D22BD298(v3, v0 + v7, &qword_1EC6DA200, &qword_1D289B260);
  return swift_endAccess();
}

uint64_t sub_1D2676930(uint64_t a1)
{
  v2 = v1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B8, &unk_1D289B410);
  MEMORY[0x1EEE9AC00](v44);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8, &unk_1D28826F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v47 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v43 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v40 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = type metadata accessor for SceneConditioningImage(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v22 = *(v2 + v21);
  v45 = v5;
  v48 = v20;
  if (v22)
  {
    [v22 baseImageRatio];
    sub_1D27FCA74(v20, v23);
    v20[*(v15 + 20)] = *(a1 + *(v15 + 20));
  }

  else
  {
    sub_1D26784A4(a1, v20, type metadata accessor for SceneConditioningImage);
  }

  v24 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  sub_1D22BD1D0(v2 + v24, v14, &qword_1EC6DA2C8, &unk_1D28826F0);
  v25 = *(v16 + 48);
  v26 = v25(v14, 1, v15);
  sub_1D22BD238(v14, &qword_1EC6DA2C8, &unk_1D28826F0);
  if (v26 != 1)
  {
    v27 = v46;
    sub_1D26784A4(v48, v46, type metadata accessor for SceneConditioningImage);
    v41 = v16;
    (*(v16 + 56))(v27, 0, 1, v15);
    v28 = v45;
    v29 = *(v44 + 48);
    sub_1D22BD1D0(v2 + v24, v45, &qword_1EC6DA2C8, &unk_1D28826F0);
    sub_1D22BD1D0(v27, v28 + v29, &qword_1EC6DA2C8, &unk_1D28826F0);
    if (v25(v28, 1, v15) == 1)
    {
      sub_1D22BD238(v27, &qword_1EC6DA2C8, &unk_1D28826F0);
      if (v25((v28 + v29), 1, v15) == 1)
      {
LABEL_7:
        sub_1D22BD238(v28, &qword_1EC6DA2C8, &unk_1D28826F0);
LABEL_18:
        v16 = v41;
        goto LABEL_19;
      }

      goto LABEL_10;
    }

    v30 = v43;
    sub_1D22BD1D0(v28, v43, &qword_1EC6DA2C8, &unk_1D28826F0);
    if (v25((v28 + v29), 1, v15) == 1)
    {
      sub_1D22BD238(v46, &qword_1EC6DA2C8, &unk_1D28826F0);
      sub_1D2678444(v30, type metadata accessor for SceneConditioningImage);
LABEL_10:
      v31 = &qword_1EC6DF7B8;
      v32 = &unk_1D289B410;
LABEL_17:
      sub_1D22BD238(v28, v31, v32);
      *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 1;
      goto LABEL_18;
    }

    v33 = v42;
    sub_1D2678580(v28 + v29, v42, type metadata accessor for SceneConditioningImage);
    type metadata accessor for PlaygroundImage(0);
    v34 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
    sub_1D22BD238(v46, &qword_1EC6DA2C8, &unk_1D28826F0);
    if (v34)
    {
      v35 = *(v15 + 20);
      v36 = *(v30 + v35);
      v37 = *(v33 + v35);
      sub_1D2678444(v33, type metadata accessor for SceneConditioningImage);
      if (v36 == 2)
      {
        if (v37 == 2)
        {
LABEL_22:
          sub_1D2678444(v30, type metadata accessor for SceneConditioningImage);
          goto LABEL_7;
        }
      }

      else if (v37 != 2 && ((v37 ^ v36) & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_1D2678444(v33, type metadata accessor for SceneConditioningImage);
    }

    sub_1D2678444(v30, type metadata accessor for SceneConditioningImage);
    v31 = &qword_1EC6DA2C8;
    v32 = &unk_1D28826F0;
    goto LABEL_17;
  }

LABEL_19:
  v38 = v47;
  sub_1D2678580(v48, v47, type metadata accessor for SceneConditioningImage);
  (*(v16 + 56))(v38, 0, 1, v15);
  swift_beginAccess();
  sub_1D22BD298(v38, v2 + v24, &qword_1EC6DA2C8, &unk_1D28826F0);
  return swift_endAccess();
}

uint64_t sub_1D2676F44()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8, &unk_1D28826F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17[-v5];
  v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v7, v6, &qword_1EC6DA2C8, &unk_1D28826F0);
  v8 = type metadata accessor for SceneConditioningImage(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  sub_1D22BD238(v6, &qword_1EC6DA2C8, &unk_1D28826F0);
  if (v10 != 1)
  {
    goto LABEL_5;
  }

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v12 = *(v0 + v11);
  if (v12)
  {
    v13 = [v12 baseImage];
    if (v13)
    {

LABEL_5:
      *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 1;
    }
  }

  v14 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
  swift_beginAccess();
  v15 = *(v0 + v14);
  if (v15)
  {
    [v15 setBaseImage_];
  }

  (*(v9 + 56))(v3, 1, 1, v8);
  swift_beginAccess();
  sub_1D22BD298(v3, v0 + v7, &qword_1EC6DA2C8, &unk_1D28826F0);
  return swift_endAccess();
}

uint64_t sub_1D2677178()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40, &unk_1D287EFF0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v12[-v2];
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(v0 + v4, &v13, &qword_1EC6D9A58, &qword_1D287F000);
  v5 = *(&v14 + 1);
  sub_1D22BD238(&v13, &qword_1EC6D9A58, &qword_1D287F000);
  if (v5)
  {
    *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 1;
  }

  sub_1D22BD1D0(v0 + v4, &v13, &qword_1EC6D9A58, &qword_1D287F000);
  if (*(&v14 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
    v6 = type metadata accessor for PersonConditioningImage(0);
    v7 = swift_dynamicCast();
    (*(*(v6 - 8) + 56))(v3, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_1D22BD238(&v13, &qword_1EC6D9A58, &qword_1D287F000);
    v6 = type metadata accessor for PersonConditioningImage(0);
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  }

  type metadata accessor for PersonConditioningImage(0);
  v8 = (*(*(v6 - 8) + 48))(v3, 1, v6);
  sub_1D22BD238(v3, &qword_1EC6D9A40, &unk_1D287EFF0);
  if (!v8)
  {
    v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
    swift_beginAccess();
    v10 = *(v0 + v9);
    if (v10)
    {
      [v10 setBaseImage_];
    }
  }

  v15 = 0;
  v13 = 0u;
  v14 = 0u;
  swift_beginAccess();
  sub_1D22BD298(&v13, v0 + v4, &qword_1EC6D9A58, &qword_1D287F000);
  return swift_endAccess();
}

uint64_t sub_1D2677418(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v8, v4);
  v9 = sub_1D2871F98();
  v11 = v10;
  (*(v5 + 8))(v7, v4);
  if (v9 == sub_1D2871F98() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1D2879618();

    if ((v14 & 1) == 0)
    {
      *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession) = 1;
    }
  }

  swift_beginAccess();
  (*(v5 + 24))(v2 + v8, a1, v4);
  return swift_endAccess();
}

uint64_t CreationContext.deinit()
{
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage, &qword_1EC6DA2C8, &unk_1D28826F0);
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage, &qword_1EC6DA200, &qword_1D289B260);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson, &qword_1EC6D9A58, &qword_1D287F000);
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_skinTone, &unk_1EC6E33C0, &unk_1D2883750);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
  v2 = sub_1D2872008();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t CreationContext.__deallocating_deinit()
{
  CreationContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t type metadata accessor for CreationContext(uint64_t a1)
{
  result = qword_1ED8A40C8;
  if (!qword_1ED8A40C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D267780C(uint64_t a1)
{
  sub_1D2677A08(319, qword_1ED8A6870, type metadata accessor for SceneConditioningImage);
  if (v1 <= 0x3F)
  {
    sub_1D2677A08(319, &qword_1ED8A6748, type metadata accessor for SketchConditioningImage);
    if (v2 <= 0x3F)
    {
      sub_1D2677A08(319, &qword_1ED8A6E30, type metadata accessor for ImageGenerationPerson.SkinTone);
      if (v3 <= 0x3F)
      {
        sub_1D2872008();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D2677A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D2677A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v61 - v11;
  v68 = type metadata accessor for PhotosPersonAsset(0);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v62 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v63 = (&v61 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40, &unk_1D287EFF0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v65 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v61 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v61 - v21;
  v23 = type metadata accessor for PersonConditioningImage(0);
  v71 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v61 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v70 = &v61 - v30;
  v74[3] = a3;
  v74[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v69 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession;
  v32 = &unk_1ED8B0000;
  if (*(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_shouldResetSession))
  {
    goto LABEL_17;
  }

  v33 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(a2 + v33, v72, &qword_1EC6D9A58, &qword_1D287F000);
  v34 = v73;
  v32 = &unk_1ED8B0000;
  sub_1D22BD238(v72, &qword_1EC6D9A58, &qword_1D287F000);
  if (!v34)
  {
    goto LABEL_17;
  }

  sub_1D22BD1D0(a2 + v33, v72, &qword_1EC6D9A58, &qword_1D287F000);
  v35 = v71;
  v36 = (v71 + 56);
  if (!v73)
  {
    sub_1D22BD238(v72, &qword_1EC6D9A58, &qword_1D287F000);
    (*v36)(v19, 1, 1, v23);
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
  v37 = swift_dynamicCast();
  v61 = *(v35 + 56);
  v61(v19, v37 ^ 1u, 1, v23);
  if ((*(v35 + 48))(v19, 1, v23) == 1)
  {
    goto LABEL_9;
  }

  sub_1D2678580(v19, v28, type metadata accessor for PersonConditioningImage);
  sub_1D22D7044(v74, v72);
  v19 = v65;
  if (!swift_dynamicCast())
  {
    sub_1D2678444(v28, type metadata accessor for PersonConditioningImage);
    v61(v19, 1, 1, v23);
LABEL_9:
    sub_1D22BD238(v19, &qword_1EC6D9A40, &unk_1D287EFF0);
    sub_1D22BD1D0(a2 + v33, v72, &qword_1EC6D9A58, &qword_1D287F000);
    v41 = v66;
    v42 = (v66 + 56);
    v43 = v67;
    v44 = v68;
    if (v73)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
      v45 = swift_dynamicCast();
      v46 = *(v41 + 56);
      v46(v43, v45 ^ 1u, 1, v44);
      if ((*(v41 + 48))(v43, 1, v44) != 1)
      {
        v47 = v63;
        sub_1D2678580(v43, v63, type metadata accessor for PhotosPersonAsset);
        sub_1D22D7044(v74, v72);
        v48 = v64;
        if (!swift_dynamicCast())
        {
          sub_1D2678444(v47, type metadata accessor for PhotosPersonAsset);
          v50 = 1;
          v46(v48, 1, 1, v44);
          sub_1D22BD238(v48, &unk_1EC6DDDC0, &unk_1D2881BE0);
          goto LABEL_16;
        }

        v46(v48, 0, 1, v44);
        v49 = v62;
        sub_1D2678580(v48, v62, type metadata accessor for PhotosPersonAsset);
        v38 = _s23ImagePlaygroundInternal17PhotosPersonAssetV2eeoiySbAC_ACtFZ_0(v47, v49);
        sub_1D2678444(v49, type metadata accessor for PhotosPersonAsset);
        v39 = v47;
        v40 = type metadata accessor for PhotosPersonAsset;
        goto LABEL_13;
      }
    }

    else
    {
      sub_1D22BD238(v72, &qword_1EC6D9A58, &qword_1D287F000);
      (*v42)(v43, 1, 1, v44);
    }

    sub_1D22BD238(v43, &unk_1EC6DDDC0, &unk_1D2881BE0);
    v50 = 1;
    goto LABEL_16;
  }

  v61(v19, 0, 1, v23);
  sub_1D2678580(v19, v25, type metadata accessor for PersonConditioningImage);
  v38 = sub_1D26B94BC(v28, v25);
  sub_1D2678444(v25, type metadata accessor for PersonConditioningImage);
  v39 = v28;
  v40 = type metadata accessor for PersonConditioningImage;
LABEL_13:
  sub_1D2678444(v39, v40);
  v50 = v38 ^ 1;
LABEL_16:
  *(a2 + v69) = v50 & 1;
  v32 = &unk_1ED8B0000;
LABEL_17:
  sub_1D22D7044(v74, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
  v51 = swift_dynamicCast();
  v52 = *(v71 + 56);
  if (v51)
  {
    v52(v22, 0, 1, v23);
    v53 = v22;
    v54 = v70;
    sub_1D2678580(v53, v70, type metadata accessor for PersonConditioningImage);
    v55 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_drawOnImageRecipe;
    swift_beginAccess();
    v56 = *(a2 + v55);
    if (v56)
    {
      swift_endAccess();
      v57 = v56;
      v58 = sub_1D262AD28();
      [v57 setBaseImage_];

      sub_1D2678444(v54, type metadata accessor for PersonConditioningImage);
    }

    else
    {
      sub_1D2678444(v54, type metadata accessor for PersonConditioningImage);
      swift_endAccess();
    }
  }

  else
  {
    v52(v22, 1, 1, v23);
    sub_1D22BD238(v22, &qword_1EC6D9A40, &unk_1D287EFF0);
  }

  sub_1D22D7044(v74, v72);
  v59 = v32[61];
  swift_beginAccess();
  sub_1D22BD298(v72, a2 + v59, &qword_1EC6D9A58, &qword_1D287F000);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(v74);
}

uint64_t sub_1D26783EC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D2879618() & 1;
  }
}

uint64_t sub_1D2678444(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D26784A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2678528(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(a1 + 8) == *(v2 + 8) && *(a1 + 16) == *(v2 + 16))
  {
    return 1;
  }

  else
  {
    return sub_1D2879618() & 1;
  }
}

uint64_t sub_1D2678580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D267863C(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = a2;
    v6 = 0;
    v7 = result + 32;
    v8 = MEMORY[0x1E69E7CC0];
    v21 = result;
    v22 = a2;
    while (v6 < *(v3 + 16))
    {
      sub_1D22D7044(v7, v26);
      v9 = sub_1D268154C(v26, v5);
      if (v2)
      {
        __swift_destroy_boxed_opaque_existential_0(v26);

        goto LABEL_15;
      }

      if (v9)
      {
        sub_1D227268C(v26, v23);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D23D8528(0, *(v8 + 16) + 1, 1);
          v8 = v27;
        }

        v11 = v4;
        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D23D8528((v12 > 1), v13 + 1, 1);
        }

        v14 = v24;
        v15 = v25;
        v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
        v17 = MEMORY[0x1EEE9AC00](v16);
        v19 = &v21 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19, v17);
        sub_1D2564390(v13, v19, &v27, v14, v15);
        result = __swift_destroy_boxed_opaque_existential_0(v23);
        v8 = v27;
        v4 = v11;
        v3 = v21;
        v5 = v22;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_0(v26);
      }

      ++v6;
      v7 += 40;
      if (v4 == v6)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

void sub_1D267885C(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2879368())
  {
    v6 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1D38A1C30](v6, a3);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v10 = v7;
      a1(&v10);

      if (!v3)
      {
        ++v6;
        if (v8 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v7 = *(a3 + 8 * v6 + 32);
    sub_1D2870F78();
    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_1D2678970(void (*a1)(void *), uint64_t a2)
{
  v4 = v2;
  v24[5] = a2;
  v23 = a1;
  v5 = sub_1D2871908();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7F0, &qword_1D289B430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7F8, &qword_1D289B438);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  sub_1D22BD1D0(v4, v10, &qword_1EC6DF7F0, &qword_1D289B430);
  v14 = sub_1D2871988();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, v10, v14);
  sub_1D26875E8(&unk_1ED8A6C50, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  sub_1D2878868();
  (*(v15 + 8))(v10, v14);
  v16 = (v22 + 8);
  do
  {
    sub_1D2878818();
    sub_1D26875E8(&unk_1ED8A6C70, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v17 = sub_1D2877F98();
    (*v16)(v7, v5);
    if (v17)
    {
      break;
    }

    sub_1D26875E8(&qword_1EC6D8BC0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B68]);
    sub_1D2877F58();
    v18 = sub_1D28788B8();
    v20 = *v19;
    v18(v24, 0);
    v24[0] = v20;
    v23(v24);
  }

  while (!v3);
  return sub_1D22BD238(v13, &qword_1EC6DF7F8, &qword_1D289B438);
}

uint64_t sub_1D2678CF0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v24[0] = a1;
  v24[1] = a2;
  v26 = sub_1D2871908();
  v5 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2871988();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1920, &qword_1D28A1100);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - v14;
  (*(v9 + 16))(v11, v4, v8, v13);
  v16 = MEMORY[0x1E6969B50];
  sub_1D26875E8(&qword_1ED8A6C60, MEMORY[0x1E6969B50], MEMORY[0x1E6969B78]);
  sub_1D2878318();
  sub_1D26875E8(&unk_1ED8A6C50, v16, MEMORY[0x1E6969B88]);
  v17 = (v5 + 8);
  do
  {
    sub_1D2878868();
    sub_1D26875E8(&unk_1ED8A6C70, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    v18 = v26;
    v19 = sub_1D2877F98();
    (*v17)(v7, v18);
    if (v19)
    {
      break;
    }

    v20 = sub_1D28788B8();
    v22 = *v21;
    v20(v25, 0);
    sub_1D2878878();
    v25[0] = v22;
    (v24[0])(v25);
  }

  while (!v3);
  return sub_1D22BD238(v15, &unk_1EC6E1920, &qword_1D28A1100);
}

uint64_t sub_1D267901C(uint64_t a1)
{
  v2 = type metadata accessor for Prompt(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D23D8528(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D26874FC(v8, v5, type metadata accessor for Prompt);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D23D8528((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_1D26875E8(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1D26874FC(v5, boxed_opaque_existential_1, type metadata accessor for Prompt);
      *(v7 + 16) = v11 + 1;
      sub_1D227268C(&v14, v7 + 40 * v11 + 32);
      sub_1D2687564(v5, type metadata accessor for Prompt);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D2679220(uint64_t a1)
{
  v2 = type metadata accessor for CuratedPrompt(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D23D8528(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D26874FC(v8, v5, type metadata accessor for CuratedPrompt);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D23D8528((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = sub_1D26875E8(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt, &unk_1D28ABF9C);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1D26874FC(v5, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
      *(v7 + 16) = v11 + 1;
      sub_1D227268C(&v14, v7 + 40 * v11 + 32);
      sub_1D2687564(v5, type metadata accessor for CuratedPrompt);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D2679424(uint64_t a1)
{
  v2 = type metadata accessor for PhotosPersonAsset(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D23D85A8(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D26874FC(v8, v5, type metadata accessor for PhotosPersonAsset);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D23D85A8((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &protocol witness table for PhotosPersonAsset;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1D26874FC(v5, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
      *(v7 + 16) = v11 + 1;
      sub_1D227268C(&v14, v7 + 40 * v11 + 32);
      sub_1D2687564(v5, type metadata accessor for PhotosPersonAsset);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D26795F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D23D85E8(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1D22D7044(v4, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A48, &unk_1D2882FF0);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D23D85E8((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D227268C(&v9, v2 + 40 * v6 + 32);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D267972C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D23D8528(0, v1, 0);
    v4 = a1 + 32;
    v2 = v20;
    do
    {
      sub_1D22D7044(v4, v16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
      swift_dynamicCast();
      v20 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D23D8528((v5 > 1), v6 + 1, 1);
      }

      v7 = v18;
      v8 = v19;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      v10 = MEMORY[0x1EEE9AC00](v9);
      v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v13 + 16))(v12, v10);
      sub_1D2564390(v6, v12, &v20, v7, v8);
      __swift_destroy_boxed_opaque_existential_0(v17);
      v2 = v20;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D2679904(uint64_t a1)
{
  v2 = sub_1D2872A48();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D23D86AC(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D23D86AC((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = &protocol witness table for GeneratedImage;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
      v9(boxed_opaque_existential_1, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_1D227268C(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_1D2679AD0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D2879368();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1D23D86AC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1D38A1C30](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1D23D86AC((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = sub_1D2872E18();
        v15 = &protocol witness table for GenerativePlayground.PreviewRepresentation;
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1D227268C(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);
        sub_1D2870F78();
        if (v11 >= v12 >> 1)
        {
          sub_1D23D86AC((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = sub_1D2872E18();
        v15 = &protocol witness table for GenerativePlayground.PreviewRepresentation;
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_1D227268C(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2679C88(uint64_t a1)
{
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1D23D870C(0, v6, 0);
    v7 = v18;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v12 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      swift_dynamicCast();
      v18 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D23D870C((v13 > 1), v14 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v14 + 1;
      sub_1D23C3FAC(&v17, (v7 + 32 * v14 + 32));
      v11 += v12;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D2679E34(uint64_t a1)
{
  v2 = type metadata accessor for CharacterAsset(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v17 = MEMORY[0x1E69E7CC0];
    sub_1D23D88D8(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_1D26874FC(v8, v5, type metadata accessor for CharacterAsset);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D23D88D8((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &off_1F4DCE510;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_1D26874FC(v5, boxed_opaque_existential_1, type metadata accessor for CharacterAsset);
      *(v7 + 16) = v11 + 1;
      sub_1D227268C(&v14, v7 + 40 * v11 + 32);
      sub_1D2687564(v5, type metadata accessor for CharacterAsset);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_1D267A004(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D23D870C(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_1D2564D70(v4, v8);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1D23D870C((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_1D23C3FAC(&v9, (v2 + 32 * v6 + 32));
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_1D267A118(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_1D2879368();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D23D870C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x1D38A1C30](i, a1);
        sub_1D22BCFD0(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D23D870C((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_1D23C3FAC(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_1D22BCFD0(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_1D23D870C((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_1D23C3FAC(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D267A318(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D23D8AE0(0, v1, 0);
    v4 = a1 + 40;
    v2 = v12;
    do
    {
      v5 = *(v4 - 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABC0, &unk_1D289B420);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABB0, &qword_1D28851D8);
      swift_dynamicCast();
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D23D8AE0((v6 > 1), v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 16 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v11;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D267A454(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1D2879368();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1D23D81B8(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D38A1C30](0, a1);
    result = sub_1D2878088();
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(a1 + 32);
  result = sub_1D2878088();
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D267A600@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v450 = a2;
  v464 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200, &qword_1D289B260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v411 = &v397 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v419 = &v397 - v8;
  v9 = type metadata accessor for SketchConditioningImage(0);
  v420 = *(v9 - 8);
  v421 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v404 = &v397 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v412 = &v397 - v12;
  v417 = sub_1D2873CB8();
  v414 = *(v417 - 8);
  MEMORY[0x1EEE9AC00](v417);
  v430 = &v397 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v426 = &v397 - v15;
  v16 = type metadata accessor for PhotosPersonImage(0);
  v424 = *(v16 - 8);
  v425 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v454 = (&v397 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20, &unk_1D287EC80);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v440 = &v397 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A40, &unk_1D287EFF0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v435 = &v397 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v442 = &v397 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8, &unk_1D28826F0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v418 = &v397 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v432 = &v397 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v406 = &v397 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v422 = &v397 - v31;
  v32 = type metadata accessor for SceneConditioningImage(0);
  v437 = *(v32 - 8);
  v438 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v410 = &v397 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v429 = &v397 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v408 = &v397 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v463 = &v397 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v423 = &v397 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v407 = &v397 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v461 = &v397 - v45;
  v462 = type metadata accessor for PhotosPersonAsset(0);
  v444 = *(v462 - 8);
  MEMORY[0x1EEE9AC00](v462);
  v413 = &v397 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v443 = (&v397 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v460 = (&v397 - v50);
  v467 = type metadata accessor for Prompt(0);
  v445 = *(v467 - 8);
  MEMORY[0x1EEE9AC00](v467);
  v409 = &v397 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v403 = &v397 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v446 = &v397 - v55;
  MEMORY[0x1EEE9AC00](v56);
  *&v447 = &v397 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v436 = &v397 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v456 = &v397 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v466 = &v397 - v63;
  v441 = type metadata accessor for CharacterAsset(0);
  v439 = *(v441 - 8);
  MEMORY[0x1EEE9AC00](v441);
  v427 = &v397 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v428 = &v397 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v415 = &v397 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7C0, &qword_1D289B3F0);
  MEMORY[0x1EEE9AC00](v69 - 8);
  v431 = &v397 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v434 = &v397 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v449 = &v397 - v74;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210, &unk_1D2886B20);
  MEMORY[0x1EEE9AC00](v75 - 8);
  v416 = &v397 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v452 = &v397 - v78;
  v457 = type metadata accessor for CuratedPrompt(0);
  v469 = *(v457 - 8);
  MEMORY[0x1EEE9AC00](v457);
  v405 = &v397 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v468 = &v397 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v433 = &v397 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v448 = (&v397 - v85);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v86 - 8);
  v88 = &v397 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v451 = &v397 - v90;
  *&v455 = sub_1D2872008();
  v458 = *(v455 - 8);
  MEMORY[0x1EEE9AC00](v455);
  v92 = &v397 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v93);
  v95 = &v397 - v94;
  MEMORY[0x1EEE9AC00](v96);
  v98 = &v397 - v97;
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v397 - v100;
  MEMORY[0x1EEE9AC00](v102);
  v104 = &v397 - v103;
  v105 = *(v3 + 32);
  v453 = a1;
  v470 = a1;
  sub_1D2870F68();
  sub_1D274B7E8(sub_1D2682164, v105, &v491);

  if (*(&v492 + 1))
  {
    sub_1D227268C(&v491, &v494);
    sub_1D267FBA8(&v494);
    result = __swift_destroy_boxed_opaque_existential_0(&v494);
    v107 = v464;
    *(v464 + 32) = 0;
    *v107 = 0u;
    v107[1] = 0u;
    return result;
  }

  v401 = v98;
  v402 = v101;
  v398 = v88;
  v399 = v92;
  v400 = v95;
  v465 = 0;
  v459 = v3;
  sub_1D22BD238(&v491, &unk_1EC6E1D30, &qword_1D2892FF0);
  v108 = v453;
  sub_1D22D7044(v453, &v494);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
  v109 = v451;
  v110 = v455;
  v111 = swift_dynamicCast();
  v112 = v458;
  v113 = v458[7];
  v397 = v113;
  if (v111)
  {
    v113(v109, 0, 1, v110);
    (v112[4])(v104, v109, v110);
    sub_1D267FD74(v104);
    (v112[1])(v104, v110);
  }

  else
  {
    v113(v109, 1, 1, v110);
    sub_1D22BD238(v109, &qword_1EC6D9A30, &qword_1D287EFC0);
  }

  v114 = v454;
  v115 = v457;
  v116 = v402;
  v117 = v452;
  v499 = 0u;
  memset(v500, 0, 25);
  v498 = 0u;
  sub_1D22D7044(v108, &v494);
  v118 = swift_dynamicCast();
  v119 = v469;
  v120 = *(v469 + 56);
  if (v118)
  {
    v120(v117, 0, 1, v115);
    v121 = v448;
    sub_1D2687494(v117, v448, type metadata accessor for CuratedPrompt);
    v122 = *(v459 + 40);
    v123 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
    swift_beginAccess();
    v128 = v458;
    v124 = v458[2];
    v467 = v122;
    v124(v116, v122 + v123, v110);
    v125 = v401;
    sub_1D2871FC8();
    LOBYTE(v123) = MEMORY[0x1D389AA00](v116, v125);
    v126 = *(v128 + 8);
    v126(v125, v110);
    v126(v116, v110);
    v127 = v464;
    LOBYTE(v128) = v450;
    if (v123)
    {
      sub_1D23C75E0();
      v129 = v449;
      sub_1D2437F60(v121, v449);
    }

    else
    {
      v177 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization(0);
      v129 = v449;
      (*(*(v177 - 8) + 56))(v449, 1, 1, v177);
    }

    if (*(v121[6] + 65) != 1)
    {
      v197 = v128;
      v198 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
      v199 = v467;
      swift_beginAccess();
      v200 = *(v199 + v198);
      v201 = *(v200 + 16);
      sub_1D2870F68();
      if (v201)
      {
        v202 = 0;
        v203 = v468;
        while (1)
        {
          if (v202 >= *(v200 + 16))
          {
            __break(1u);
            goto LABEL_206;
          }

          sub_1D26874FC(v200 + ((*(v469 + 80) + 32) & ~*(v469 + 80)) + *(v469 + 72) * v202, v203, type metadata accessor for CuratedPrompt);
          if (*(*(v203 + 48) + 65) != 1)
          {
            break;
          }

          ++v202;
          sub_1D2687564(v203, type metadata accessor for CuratedPrompt);
          if (v201 == v202)
          {
            goto LABEL_59;
          }
        }

        v251 = v433;
        sub_1D2687494(v203, v433, type metadata accessor for CuratedPrompt);
        sub_1D26760C4(v251);
        *(&v495 + 1) = v457;
        *&v496[0] = sub_1D26875E8(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt, &unk_1D28ABF9C);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v494);
        sub_1D26874FC(v251, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
        *(v496 + 8) = xmmword_1D28830D0;
        BYTE8(v496[1]) = 6;
        sub_1D26821CC(&v494, &v498);
        v253 = v434;
        sub_1D22BD1D0(v129, v434, &qword_1EC6DF7C0, &qword_1D289B3F0);
        v254 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization(0);
        if ((*(*(v254 - 8) + 48))(v253, 1, v254) == 1)
        {
          sub_1D22BD238(v253, &qword_1EC6DF7C0, &qword_1D289B3F0);
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v294 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization;
            v295 = v253;
          }

          else
          {
            v335 = v415;
            sub_1D2687494(v253, v415, type metadata accessor for CharacterAsset);
            sub_1D284580C(v335, v467);
            v294 = type metadata accessor for CharacterAsset;
            v295 = v335;
          }

          sub_1D2687564(v295, v294);
        }

        sub_1D2675E88(v121);
        sub_1D2687564(v251, type metadata accessor for CuratedPrompt);
        sub_1D22BD238(v129, &qword_1EC6DF7C0, &qword_1D289B3F0);
        sub_1D2687564(v121, type metadata accessor for CuratedPrompt);
      }

      else
      {
LABEL_59:

        *(&v492 + 1) = v457;
        *&v493[0] = sub_1D26875E8(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt, &unk_1D28ABF9C);
        v204 = __swift_allocate_boxed_opaque_existential_1(&v491);
        sub_1D26874FC(v121, v204, type metadata accessor for CuratedPrompt);
        sub_1D267FF1C(&v491, v129, &v494);
        sub_1D22BD238(v129, &qword_1EC6DF7C0, &qword_1D289B3F0);
        sub_1D2687564(v121, type metadata accessor for CuratedPrompt);
        __swift_destroy_boxed_opaque_existential_0(&v491);
        sub_1D26821CC(&v494, &v498);
      }

      LOBYTE(v128) = v197;
      v127 = v464;
      goto LABEL_151;
    }

    *(&v492 + 1) = v115;
    *&v493[0] = sub_1D26875E8(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt, &unk_1D28ABF9C);
    v178 = __swift_allocate_boxed_opaque_existential_1(&v491);
    sub_1D26874FC(v121, v178, type metadata accessor for CuratedPrompt);
    sub_1D267FF1C(&v491, v129, &v494);
    sub_1D22BD238(v129, &qword_1EC6DF7C0, &qword_1D289B3F0);
    sub_1D2687564(v121, type metadata accessor for CuratedPrompt);
    __swift_destroy_boxed_opaque_existential_0(&v491);
    v179 = &v494;
    goto LABEL_48;
  }

  v120(v117, 1, 1, v115);
  sub_1D22BD238(v117, &qword_1EC6DA210, &unk_1D2886B20);
  sub_1D22D7044(v108, &v494);
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
  if (swift_dynamicCast())
  {
    sub_1D227268C(&v491, &v475);
    v130 = v459;
    v131 = *(v459 + 40);
    v132 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
    swift_beginAccess();
    *&v455 = v132;
    v133 = *(v131 + v132);
    v134 = *(v133 + 16);
    v135 = v444;
    v136 = v463;
    if (!v134)
    {
LABEL_61:
      sub_1D22BD1D0(&v498, &v494, &qword_1EC6DF7C8, &qword_1D289B3F8);
      v205 = *(&v495 + 1);
      sub_1D22BD238(&v494, &qword_1EC6DF7C8, &qword_1D289B3F8);
      v127 = v464;
      LOBYTE(v128) = v450;
      if (!v205)
      {
        v206 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
        swift_beginAccess();
        sub_1D22BD1D0(v131 + v206, &v494, &qword_1EC6D9A58, &qword_1D287F000);
        if (*(&v495 + 1))
        {
          sub_1D227268C(&v494, &v491);
          v207 = *(&v492 + 1);
          v208 = *&v493[0];
          v209 = __swift_project_boxed_opaque_existential_1(&v491, *(&v492 + 1));
          *(&v495 + 1) = v207;
          *&v496[0] = *(v208 + 8);
          v210 = __swift_allocate_boxed_opaque_existential_1(&v494);
          (*(*(v207 - 8) + 16))(v210, v209, v207);
          *(v496 + 8) = xmmword_1D2883050;
          BYTE8(v496[1]) = 6;
          sub_1D26821CC(&v494, &v498);
          __swift_destroy_boxed_opaque_existential_0(&v491);
        }

        else
        {
          sub_1D22BD238(&v494, &qword_1EC6D9A58, &qword_1D287F000);
          v296 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
          swift_beginAccess();
          v297 = v422;
          sub_1D22BD1D0(v131 + v296, v422, &qword_1EC6DA2C8, &unk_1D28826F0);
          v298 = v438;
          if ((*(v437 + 48))(v297, 1, v438) == 1)
          {
            sub_1D22BD238(v297, &qword_1EC6DA2C8, &unk_1D28826F0);
          }

          else
          {
            sub_1D2687494(v297, v136, type metadata accessor for SceneConditioningImage);
            *(&v495 + 1) = v298;
            *&v496[0] = sub_1D26875E8(&qword_1EC6DF7E0, type metadata accessor for SceneConditioningImage, &unk_1D289C7C4);
            v338 = __swift_allocate_boxed_opaque_existential_1(&v494);
            sub_1D26874FC(v136, v338, type metadata accessor for SceneConditioningImage);
            *(v496 + 8) = xmmword_1D28830A0;
            BYTE8(v496[1]) = 6;
            sub_1D26821CC(&v494, &v498);
            sub_1D2676F44();
            sub_1D2687564(v136, type metadata accessor for SceneConditioningImage);
          }
        }
      }

      v339 = v477;
      v340 = v478;
      v341 = __swift_project_boxed_opaque_existential_1(&v475, v477);
      sub_1D2682EFC(v341, v130, v339, v340);
      __swift_destroy_boxed_opaque_existential_0(&v475);
      goto LABEL_151;
    }

    v137 = v445;
    v452 = ((*(v445 + 80) + 32) & ~*(v445 + 80));
    v138 = &v452[v133];
    v453 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts;
    v458 = v133;
    sub_1D2870F68();
    v139 = v138;
    v128 = 0;
    v469 = *(v137 + 72);
    v448 = (v135 + 56);
    v457 = v134 - 1;
    v447 = xmmword_1D2883080;
    v140 = v462;
    v114 = v461;
    v127 = v460;
    v141 = v466;
    v454 = v131;
    while (1)
    {
      v468 = v139;
      sub_1D26874FC(v139, v141, type metadata accessor for Prompt);
      sub_1D2680C6C(v141, &v491);
      v495 = v492;
      v494 = v491;
      v496[0] = v493[0];
      v496[1] = v493[1];
      v142 = *(&v492 + 1);
      v474 = v492;
      v471 = v493[0];
      v472 = v493[1];
      v473 = v491;
      if (*(&v492 + 1))
      {
        sub_1D22D7044(&v475, v497);
        if (swift_dynamicCast())
        {
          (*v448)(v114, 0, 1, v140);
          sub_1D2687494(v114, v127, type metadata accessor for PhotosPersonAsset);
          v486 = v473;
          v488[0] = v471;
          v488[1] = v472;
          v143 = *v127;
          v144 = v127[1];
          v145 = v127[2];
          v490[1] = v127[3];
          v146 = v127[1];
          v147 = v127[2];
          v148 = *v127;
          v489[0] = v143;
          v489[1] = v146;
          v490[0] = v145;
          *&v487 = v474;
          *(&v487 + 1) = v142;
          v483 = v148;
          v484 = v144;
          v149 = v127[3];
          v485[0] = v147;
          v485[1] = v149;
          sub_1D22D63B0(v489, &v479);
          v150 = _s23ImagePlaygroundInternal12PhotosPersonV2eeoiySbAC_ACtFZ_0(&v486, &v483);
          v491 = v483;
          v492 = v484;
          v493[0] = v485[0];
          v493[1] = v485[1];
          sub_1D22D640C(&v491);
          v151 = sub_1D2687564(v127, type metadata accessor for PhotosPersonAsset);
          if (v150)
          {
            sub_1D2687564(v141, type metadata accessor for Prompt);
            sub_1D22BD238(&v494, &qword_1EC6DF7A8, &qword_1D289B1B8);
            goto LABEL_42;
          }

          v451 = v128;
        }

        else
        {
          v451 = v128;
          (*v448)(v114, 1, 1, v140);
          v151 = sub_1D22BD238(v114, &unk_1EC6DDDC0, &unk_1D2881BE0);
        }

        MEMORY[0x1EEE9AC00](v151);
        *(&v397 - 2) = v141;
        v152 = v455;
        swift_beginAccess();
        v153 = v465;
        v154 = sub_1D268223C(sub_1D2687630, (&v397 - 4));
        v465 = v153;
        if (v153)
        {
          goto LABEL_216;
        }

        v155 = v154;
        v156 = *(v131 + v152);
        v157 = v156[2];
        v158 = v157 - v154;
        if (v157 < v154)
        {
LABEL_206:
          __break(1u);
LABEL_207:
          __break(1u);
LABEL_208:
          __break(1u);
LABEL_209:
          __break(1u);
LABEL_210:
          __break(1u);
LABEL_211:
          __break(1u);
          goto LABEL_212;
        }

        if (v154 < 0)
        {
          goto LABEL_207;
        }

        v159 = v154 - v157;
        v160 = v154;
        if (__OFADD__(v157, v154 - v157))
        {
          goto LABEL_208;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v131 + v152) = v156;
        if (!isUniquelyReferenced_nonNull_native || v160 > v156[3] >> 1)
        {
          if (v157 <= v160)
          {
            v162 = v157 - v158;
          }

          else
          {
            v162 = v157;
          }

          v156 = sub_1D27CC840(isUniquelyReferenced_nonNull_native, v162, 1, v156);
          *(v131 + v152) = v156;
        }

        v163 = &v452[v156];
        v164 = v155 * v469;
        v165 = &v452[v156 + v155 * v469];
        swift_arrayDestroy();
        if (v157 != v155)
        {
          if (v164 < v157 * v469 || v165 >= &v163[v157 * v469 + (v156[2] - v157) * v469])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v164 != v157 * v469)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v166 = v156[2];
          v167 = __OFADD__(v166, v159);
          v168 = v166 + v159;
          if (v167)
          {
            goto LABEL_209;
          }

          v156[2] = v168;
        }

        v169 = v454;
        *(v454 + v455) = v156;
        swift_endAccess();
        v170 = v456;
        sub_1D26874FC(v466, v456, type metadata accessor for Prompt);
        v171 = v453;
        swift_beginAccess();
        v172 = *&v169[v171];
        v173 = swift_isUniquelyReferenced_nonNull_native();
        *&v169[v171] = v172;
        if ((v173 & 1) == 0)
        {
          v172 = sub_1D27CC840(0, v172[2] + 1, 1, v172);
          *(v454 + v453) = v172;
        }

        v130 = v459;
        v136 = v463;
        v114 = v461;
        v127 = v460;
        v128 = v451;
        v175 = v172[2];
        v174 = v172[3];
        if (v175 >= v174 >> 1)
        {
          v172 = sub_1D27CC840((v174 > 1), v175 + 1, 1, v172);
        }

        v172[2] = v175 + 1;
        sub_1D2687494(v170, &v452[v172 + v175 * v469], type metadata accessor for Prompt);
        v131 = v454;
        *(v454 + v453) = v172;
        swift_endAccess();
        *(&v492 + 1) = v467;
        *&v493[0] = sub_1D26875E8(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
        v176 = __swift_allocate_boxed_opaque_existential_1(&v491);
        v141 = v466;
        sub_1D2687494(v466, v176, type metadata accessor for Prompt);
        sub_1D22BD238(&v494, &qword_1EC6DF7A8, &qword_1D289B1B8);
        *(v493 + 8) = v447;
        BYTE8(v493[1]) = 6;
        sub_1D26821CC(&v491, &v498);
        v140 = v462;
      }

      else
      {
        sub_1D2687564(v141, type metadata accessor for Prompt);
      }

LABEL_42:
      if (v457 == v128)
      {

        goto LABEL_61;
      }

      ++v128;
      v139 = v468 + v469;
      if (v128 >= v458[2])
      {
        __break(1u);
        goto LABEL_177;
      }
    }
  }

  *&v493[0] = 0;
  v492 = 0u;
  v491 = 0u;
  sub_1D22BD238(&v491, &qword_1EC6D9A58, &qword_1D287F000);
  sub_1D22D7044(v108, &v494);
  v180 = v398;
  if (swift_dynamicCast())
  {
    v397(v180, 0, 1, v110);
    v181 = v458;
    v182 = v400;
    (v458[4])(v400, v180, v110);
    v183 = *(v459 + 40);
    v184 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
    swift_beginAccess();
    v185 = v181[2];
    v186 = v183 + v184;
    v187 = v399;
    v185(v399, v186, v110);
    *(&v495 + 1) = v110;
    *&v496[0] = sub_1D26875E8(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
    v188 = __swift_allocate_boxed_opaque_existential_1(&v494);
    v185(v188, v187, v110);
    *(v496 + 8) = xmmword_1D287CB60;
    BYTE8(v496[1]) = 6;
    sub_1D26821CC(&v494, &v498);
    sub_1D2677418(v182);
    if ((sub_1D2871E68() & 1) == 0)
    {
      sub_1D2676F44();
    }

    v469 = v183;
    v189 = v402;
    sub_1D2871FC8();
    v190 = MEMORY[0x1D389AA00](v182, v189);
    v193 = v181[1];
    v192 = v181 + 1;
    v191 = v193;
    v193(v189, v110);
    v194 = v464;
    v195 = v442;
    if (v190)
    {
      sub_1D2871FC8();
      sub_1D26875E8(&qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);
      v196 = sub_1D2877F98();
      v191(v189, v110);
      LODWORD(v468) = v196 ^ 1;
    }

    else
    {
      LODWORD(v468) = 0;
    }

    sub_1D2871FC8();
    sub_1D26875E8(&qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);
    v255 = sub_1D2877F98();
    v191(v189, v110);
    v458 = v192;
    if (v255)
    {
      v256 = 0;
    }

    else
    {
      sub_1D2871FC8();
      v256 = MEMORY[0x1D389AA00](v399, v189);
      v191(v189, v110);
    }

    v127 = v194;
    v279 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
    v280 = v469;
    swift_beginAccess();
    sub_1D22BD1D0(v280 + v279, &v494, &qword_1EC6D9A58, &qword_1D287F000);
    v281 = v441;
    if (*(&v495 + 1))
    {
      v282 = swift_dynamicCast();
      v283 = v191;
      v284 = v439;
      (*(v439 + 56))(v195, v282 ^ 1u, 1, v281);
      v285 = (*(v284 + 48))(v195, 1, v281);
      v191 = v283;
      if (v285 != 1)
      {
        v286 = v195;
        v287 = v428;
        sub_1D2687494(v286, v428, type metadata accessor for CharacterAsset);
        if (v468)
        {
          v288 = v427;
          sub_1D26874FC(v287, v427, type metadata accessor for PlaygroundImage);
          sub_1D22BD1D0(v287 + v281[5], v288 + v281[5], &unk_1EC6DE5A0, &unk_1D287F0E0);
          sub_1D26874FC(v287 + v281[6], v288 + v281[6], type metadata accessor for CharacterRecipe);
          *(v288 + v281[7]) = 1;
          sub_1D284580C(v288, v280);
          sub_1D2687564(v288, type metadata accessor for CharacterAsset);
          sub_1D2687564(v287, type metadata accessor for CharacterAsset);
          v289 = v455;
          v283(v399, v455);
          v290 = v400;
        }

        else
        {
          v336 = v400;
          v337 = v427;
          if (v256)
          {
            sub_1D26874FC(v287, v427, type metadata accessor for PlaygroundImage);
            sub_1D22BD1D0(v287 + v281[5], v337 + v281[5], &unk_1EC6DE5A0, &unk_1D287F0E0);
            sub_1D26874FC(v287 + v281[6], v337 + v281[6], type metadata accessor for CharacterRecipe);
            *(v337 + v281[7]) = 0;
            sub_1D284580C(v337, v280);
            sub_1D2687564(v337, type metadata accessor for CharacterAsset);
          }

          sub_1D2687564(v287, type metadata accessor for CharacterAsset);
          v289 = v455;
          v191(v399, v455);
          v290 = v336;
        }

LABEL_131:
        v191(v290, v289);
        LOBYTE(v128) = v450;
        goto LABEL_151;
      }
    }

    else
    {
      sub_1D22BD238(&v494, &qword_1EC6D9A58, &qword_1D287F000);
      (*(v439 + 56))(v195, 1, 1, v281);
    }

    sub_1D22BD238(v195, &unk_1EC6DDDA0, &qword_1D2882D20);
    sub_1D22BD1D0(v280 + v279, &v494, &qword_1EC6D9A58, &qword_1D287F000);
    if (*(&v495 + 1))
    {
      v291 = type metadata accessor for PersonConditioningImage(0);
      v292 = v435;
      v293 = swift_dynamicCast();
      (*(*(v291 - 8) + 56))(v292, v293 ^ 1u, 1, v291);
    }

    else
    {
      sub_1D22BD238(&v494, &qword_1EC6D9A58, &qword_1D287F000);
      v291 = type metadata accessor for PersonConditioningImage(0);
      v292 = v435;
      (*(*(v291 - 8) + 56))(v435, 1, 1, v291);
    }

    v299 = v400;
    type metadata accessor for PersonConditioningImage(0);
    v300 = (*(*(v291 - 8) + 48))(v292, 1, v291);
    sub_1D22BD238(v292, &qword_1EC6D9A40, &unk_1D287EFF0);
    if (v300)
    {
      v301 = v399;
    }

    else
    {
      v302 = v399;
      if (v468)
      {
        sub_1D2677178();
      }

      v301 = v302;
    }

    v289 = v455;
    v191(v301, v455);
    v290 = v299;
    goto LABEL_131;
  }

  v397(v180, 1, 1, v110);
  sub_1D22BD238(v180, &qword_1EC6D9A30, &qword_1D287EFC0);
  sub_1D22D7044(v108, v497);
  v211 = v440;
  v212 = v467;
  if (!swift_dynamicCast())
  {
    v257 = v108;
    (*(v445 + 56))(v211, 1, 1, v212);
    sub_1D22BD238(v211, &unk_1EC6E1D20, &unk_1D287EC80);
    sub_1D22D7044(v108, &v494);
    v258 = v432;
    v259 = v438;
    v260 = swift_dynamicCast();
    v261 = *(v437 + 56);
    v127 = v464;
    v262 = v459;
    LOBYTE(v128) = v450;
    if (v260)
    {
      v263 = v437;
      v261(v258, 0, 1, v259);
      v264 = v429;
      sub_1D2687494(v258, v429, type metadata accessor for SceneConditioningImage);
      v265 = *(v262 + 40);
      v266 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
      swift_beginAccess();
      v267 = v418;
      sub_1D22BD1D0(v265 + v266, v418, &qword_1EC6DA2C8, &unk_1D28826F0);
      if ((*(v263 + 48))(v267, 1, v259) == 1)
      {
        sub_1D22BD238(v267, &qword_1EC6DA2C8, &unk_1D28826F0);
        v268 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
        swift_beginAccess();
        v269 = *(v265 + v268);
        v270 = *(v269 + 16);
        sub_1D2870F68();
        v271 = v409;
        if (v270)
        {
          v272 = 0;
          while (1)
          {
            if (v272 >= *(v269 + 16))
            {
              goto LABEL_214;
            }

            sub_1D26874FC(v269 + ((*(v445 + 80) + 32) & ~*(v445 + 80)) + *(v445 + 72) * v272, v271, type metadata accessor for Prompt);
            sub_1D2680C6C(v271, &v494);
            if (*(&v495 + 1))
            {
              break;
            }

            ++v272;
            sub_1D2687564(v271, type metadata accessor for Prompt);
            if (v270 == v272)
            {
              goto LABEL_110;
            }
          }

          sub_1D22BD238(&v494, &qword_1EC6DF7A8, &qword_1D289B1B8);
          v364 = v403;
          sub_1D2687494(v271, v403, type metadata accessor for Prompt);
          sub_1D2675C1C(v364);
          sub_1D2677178();
          v365 = sub_1D23C6DDC();
          sub_1D2612BDC(MEMORY[0x1E69E7CC0]);

          *(&v492 + 1) = v467;
          *&v493[0] = sub_1D26875E8(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
          v366 = __swift_allocate_boxed_opaque_existential_1(&v491);
          sub_1D2687494(v364, v366, type metadata accessor for Prompt);
          *(v493 + 8) = xmmword_1D28830A0;
          BYTE8(v493[1]) = 6;
          sub_1D26821CC(&v491, &v498);
        }

        else
        {
LABEL_110:

          v273 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
          swift_beginAccess();
          sub_1D22BD1D0(v265 + v273, &v494, &qword_1EC6D9A58, &qword_1D287F000);
          if (*(&v495 + 1))
          {
            sub_1D227268C(&v494, &v491);
            sub_1D2677178();
            v274 = sub_1D23C6DDC();
            sub_1D2612BDC(MEMORY[0x1E69E7CC0]);

            v275 = *(&v492 + 1);
            v276 = *&v493[0];
            v277 = __swift_project_boxed_opaque_existential_1(&v491, *(&v492 + 1));
            *(&v495 + 1) = v275;
            *&v496[0] = *(v276 + 8);
            v278 = __swift_allocate_boxed_opaque_existential_1(&v494);
            (*(*(v275 - 8) + 16))(v278, v277, v275);
            *(v496 + 8) = xmmword_1D28830A0;
            BYTE8(v496[1]) = 6;
            sub_1D26821CC(&v494, &v498);
            __swift_destroy_boxed_opaque_existential_0(&v491);
          }

          else
          {
            sub_1D22BD238(&v494, &qword_1EC6D9A58, &qword_1D287F000);
          }
        }

        v264 = v429;
      }

      else
      {
        v345 = v410;
        sub_1D2687494(v267, v410, type metadata accessor for SceneConditioningImage);
        *(&v495 + 1) = v259;
        *&v496[0] = sub_1D26875E8(&qword_1EC6DF7E0, type metadata accessor for SceneConditioningImage, &unk_1D289C7C4);
        v346 = __swift_allocate_boxed_opaque_existential_1(&v494);
        sub_1D2687494(v345, v346, type metadata accessor for SceneConditioningImage);
        *(v496 + 8) = xmmword_1D2883090;
        BYTE8(v496[1]) = 6;
        sub_1D26821CC(&v494, &v498);
      }

      sub_1D2676930(v264);
      sub_1D2687564(v264, type metadata accessor for SceneConditioningImage);
LABEL_151:
      sub_1D267F6F0();
      sub_1D267E8EC();
      sub_1D22BD1D0(&v498, &v491, &qword_1EC6DF7C8, &qword_1D289B3F8);
      if (*(&v492 + 1))
      {
        v494 = v491;
        v495 = v492;
        v496[0] = v493[0];
        *(v496 + 9) = *(v493 + 9);
        if (v128)
        {
          sub_1D2681364(&v494, *(&v496[0] + 1), *&v496[1], SBYTE8(v496[1]));
        }

        v342 = &unk_1EC6DF7D0;
        v343 = &unk_1D289B400;
        v344 = &v494;
      }

      else
      {
        v342 = &qword_1EC6DF7C8;
        v343 = &qword_1D289B3F8;
        v344 = &v491;
      }

      sub_1D22BD238(v344, v342, v343);
      if (*(&v499 + 1))
      {
        sub_1D22D7044(&v498, v127);
      }

      else
      {
        *(v127 + 4) = 0;
        *v127 = 0u;
        v127[1] = 0u;
      }

      return sub_1D22BD238(&v498, &qword_1EC6DF7C8, &qword_1D289B3F8);
    }

    v261(v258, 1, 1, v259);
    sub_1D22BD238(v258, &qword_1EC6DA2C8, &unk_1D28826F0);
    sub_1D22D7044(v257, &v494);
    v303 = v419;
    v304 = v421;
    v305 = swift_dynamicCast();
    v306 = v420;
    v307 = *(v420 + 56);
    if (v305)
    {
      v307(v303, 0, 1, v304);
      v308 = v412;
      sub_1D2687494(v303, v412, type metadata accessor for SketchConditioningImage);
      v309 = *(v262 + 40);
      v310 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
      swift_beginAccess();
      v311 = v411;
      sub_1D22BD1D0(v309 + v310, v411, &qword_1EC6DA200, &qword_1D289B260);
      if ((*(v306 + 48))(v311, 1, v304) == 1)
      {
        sub_1D22BD238(v311, &qword_1EC6DA200, &qword_1D289B260);
      }

      else
      {
        v355 = v311;
        v356 = v404;
        sub_1D2687494(v355, v404, type metadata accessor for SketchConditioningImage);
        *(&v495 + 1) = v304;
        *&v496[0] = sub_1D26875E8(&qword_1EC6DF7D8, type metadata accessor for SketchConditioningImage, &unk_1D289D0A4);
        v357 = __swift_allocate_boxed_opaque_existential_1(&v494);
        sub_1D2687494(v356, v357, type metadata accessor for SketchConditioningImage);
        *(v496 + 8) = xmmword_1D2883090;
        BYTE8(v496[1]) = 6;
        sub_1D26821CC(&v494, &v498);
      }

      sub_1D26762D8(v308);
      sub_1D2687564(v308, type metadata accessor for SketchConditioningImage);
      goto LABEL_151;
    }

    v307(v303, 1, 1, v304);
    v347 = &qword_1EC6DA200;
    v348 = &qword_1D289B260;
    v349 = v303;
LABEL_204:
    sub_1D22BD238(v349, v347, v348);
    goto LABEL_151;
  }

  v213 = v445;
  (*(v445 + 56))(v211, 0, 1, v212);
  v214 = v436;
  sub_1D2687494(v211, v436, type metadata accessor for Prompt);
  v130 = v459;
  sub_1D2680C6C(v214, &v491);
  v495 = v492;
  v494 = v491;
  v496[0] = v493[0];
  v496[1] = v493[1];
  v127 = v464;
  LOBYTE(v128) = v450;
  if (!*(&v492 + 1))
  {
    v330 = v416;
    sub_1D2681054(v214, v416);
    v331 = v457;
    if ((*(v119 + 48))(v330, 1, v457) == 1)
    {
      sub_1D22BD238(v330, &qword_1EC6DA210, &unk_1D2886B20);
      *(&v487 + 1) = v212;
      *&v488[0] = sub_1D26875E8(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
      v332 = __swift_allocate_boxed_opaque_existential_1(&v486);
      sub_1D26874FC(v214, v332, type metadata accessor for Prompt);
      v333 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization(0);
      v334 = v431;
      (*(*(v333 - 8) + 56))(v431, 1, 1, v333);
      sub_1D267FF1C(&v486, v334, v489);
      sub_1D22BD238(v334, &qword_1EC6DF7C0, &qword_1D289B3F0);
    }

    else
    {
      v350 = v330;
      v351 = v405;
      sub_1D2687494(v350, v405, type metadata accessor for CuratedPrompt);
      *(&v487 + 1) = v331;
      *&v488[0] = sub_1D26875E8(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt, &unk_1D28ABF9C);
      v352 = __swift_allocate_boxed_opaque_existential_1(&v486);
      sub_1D26874FC(v351, v352, type metadata accessor for CuratedPrompt);
      v353 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization(0);
      v354 = v431;
      (*(*(v353 - 8) + 56))(v431, 1, 1, v353);
      sub_1D267FF1C(&v486, v354, v489);
      sub_1D22BD238(v354, &qword_1EC6DF7C0, &qword_1D289B3F0);
      sub_1D2687564(v351, type metadata accessor for CuratedPrompt);
    }

    sub_1D2687564(v214, type metadata accessor for Prompt);
    __swift_destroy_boxed_opaque_existential_0(&v486);
    v179 = v489;
LABEL_48:
    sub_1D26821CC(v179, &v498);
    goto LABEL_151;
  }

  v215 = *(v130 + 40);
  v216 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v466 = v215;
  v463 = v216;
  v217 = *(v215 + v216);
  v218 = *(v217 + 16);
  v131 = v443;
  if (!v218)
  {
LABEL_136:
    sub_1D22BD1D0(&v498, v489, &qword_1EC6DF7C8, &qword_1D289B3F8);
    v312 = *(&v489[1] + 1);
    sub_1D22BD238(v489, &qword_1EC6DF7C8, &qword_1D289B3F8);
    v136 = v426;
    if (v312)
    {
      goto LABEL_178;
    }

    v313 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
    v314 = v466;
    swift_beginAccess();
    sub_1D22BD1D0(v314 + v313, v489, &qword_1EC6D9A58, &qword_1D287F000);
    if (*(&v489[1] + 1))
    {
      v315 = v407;
      v316 = v462;
      v317 = swift_dynamicCast();
      v318 = v444;
      (*(v444 + 56))(v315, v317 ^ 1u, 1, v316);
      v319 = v316;
      v320 = v315;
      v321 = (*(v318 + 48))(v315, 1, v319);
      v322 = v438;
      v323 = v408;
      if (v321 != 1)
      {
        sub_1D2687494(v320, v131, type metadata accessor for PhotosPersonAsset);
        v324 = v131[1];
        v486 = *v131;
        v487 = v324;
        v325 = v131[3];
        v327 = *v131;
        v326 = v131[1];
        v488[0] = v131[2];
        v488[1] = v325;
        v483 = v327;
        v484 = v326;
        v328 = v131[3];
        v485[0] = v131[2];
        v485[1] = v328;
        v479 = v494;
        v480 = v495;
        v481 = v496[0];
        v482 = v496[1];
        sub_1D22D63B0(&v486, &v475);
        v329 = _s23ImagePlaygroundInternal12PhotosPersonV2eeoiySbAC_ACtFZ_0(&v483, &v479);
        v489[0] = v483;
        v489[1] = v484;
        v490[0] = v485[0];
        v490[1] = v485[1];
        sub_1D22D640C(v489);
        if (!v329)
        {
LABEL_177:
          *(&v484 + 1) = v462;
          *&v485[0] = sub_1D26875E8(&qword_1EC6D8780, type metadata accessor for PhotosPersonAsset, &unk_1D28AD4DC);
          v367 = __swift_allocate_boxed_opaque_existential_1(&v483);
          sub_1D2687494(v131, v367, type metadata accessor for PhotosPersonAsset);
          *(v485 + 8) = xmmword_1D2883050;
          BYTE8(v485[1]) = 6;
          sub_1D26821CC(&v483, &v498);
          goto LABEL_178;
        }

        sub_1D2687564(v131, type metadata accessor for PhotosPersonAsset);
LABEL_169:
        v358 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
        v359 = v466;
        swift_beginAccess();
        v360 = v359 + v358;
        v361 = v406;
        sub_1D22BD1D0(v360, v406, &qword_1EC6DA2C8, &unk_1D28826F0);
        if ((*(v437 + 48))(v361, 1, v322) == 1)
        {
          sub_1D22BD238(v361, &qword_1EC6DA2C8, &unk_1D28826F0);
          sub_1D23C7044();
          v362 = sub_1D27ED8C8();

          if ((v362 & 1) == 0)
          {
            sub_1D22BD238(&v498, &qword_1EC6DF7C8, &qword_1D289B3F8);
            sub_1D22D7044(v453, &v498);
            *(v500 + 8) = xmmword_1D28838E0;
            BYTE8(v500[1]) = 6;
          }
        }

        else
        {
          sub_1D2687494(v361, v323, type metadata accessor for SceneConditioningImage);
          *(&v489[1] + 1) = v322;
          *&v490[0] = sub_1D26875E8(&qword_1EC6DF7E0, type metadata accessor for SceneConditioningImage, &unk_1D289C7C4);
          v363 = __swift_allocate_boxed_opaque_existential_1(v489);
          sub_1D26874FC(v323, v363, type metadata accessor for SceneConditioningImage);
          *(v490 + 8) = xmmword_1D28830A0;
          BYTE8(v490[1]) = 6;
          sub_1D26821CC(v489, &v498);
          sub_1D2676F44();
          sub_1D2687564(v323, type metadata accessor for SceneConditioningImage);
        }

LABEL_178:
        v368 = sub_1D23C6DDC();
        v489[0] = v494;
        v489[1] = v495;
        v490[0] = v496[0];
        v490[1] = v496[1];
        sub_1D255AEC8(v489, v136);
        if ((*(v424 + 48))(v136, 1, v425) == 1)
        {
          sub_1D22BD238(v136, &qword_1EC6DDD60, &qword_1D2893770);
          v369 = v444;
          v370 = v423;
          v371 = v462;
          (*(v444 + 56))(v423, 1, 1, v462);
        }

        else
        {
          sub_1D2687494(v136, v114, type metadata accessor for PhotosPersonImage);
          v371 = v462;
          v372 = v114;
          v370 = v423;
          sub_1D2687494(v372, &v423[*(v462 + 20)], type metadata accessor for PhotosPersonImage);
          v373 = v496[1];
          *(v370 + 2) = v496[0];
          *(v370 + 3) = v373;
          v374 = v495;
          *v370 = v494;
          *(v370 + 1) = v374;
          v370[*(v371 + 24)] = 1;
          v370[*(v371 + 28)] = 0;
          v369 = v444;
          (*(v444 + 56))(v370, 0, 1, v371);
          sub_1D22D63B0(&v494, v489);
        }

        v375 = v467;
        v376 = v430;

        if ((*(v369 + 48))(v370, 1, v371) == 1)
        {
          sub_1D22BD238(v370, &unk_1EC6DDDC0, &unk_1D2881BE0);
          sub_1D2872658();
          sub_1D22BD1D0(&v491, v489, &qword_1EC6DF7A8, &qword_1D289B1B8);
          v377 = v376;
          v378 = sub_1D2873CA8();
          v379 = sub_1D2878A18();
          sub_1D22BD238(&v491, &qword_1EC6DF7A8, &qword_1D289B1B8);
          if (os_log_type_enabled(v378, v379))
          {
            v380 = swift_slowAlloc();
            v381 = swift_slowAlloc();
            *&v486 = v381;
            *v380 = 136315138;
            v382 = *(&v495 + 1);
            v128 = v495;
            v383 = v417;
            if (*&v496[0])
            {
              *&v489[0] = *&v496[0];
              *(v489 + 8) = *(v496 + 8);
              v384 = sub_1D24FBD9C();
              if (v385)
              {
                v386 = v384;
              }

              else
              {
                v386 = 0;
              }

              if (v385)
              {
                v387 = v385;
              }

              else
              {
                v387 = 0xE000000000000000;
              }

              *&v489[0] = v128;
              *(&v489[0] + 1) = v382;
              sub_1D2870F68();
              MEMORY[0x1D38A0C50](v386, v387);
              v383 = v417;

              v382 = *(&v489[0] + 1);
              v128 = *&v489[0];
            }

            else
            {
              sub_1D2870F68();
            }

            v389 = sub_1D23D7C84(v128, v382, &v486);

            *(v380 + 4) = v389;
            _os_log_impl(&dword_1D226E000, v378, v379, "Cache miss when looking for asset matching person with id: %s", v380, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v381);
            MEMORY[0x1D38A3520](v381, -1, -1);
            MEMORY[0x1D38A3520](v380, -1, -1);

            (*(v414 + 8))(v430, v383);
            v127 = v464;
            LOBYTE(v128) = v450;
          }

          else
          {

            (*(v414 + 8))(v377, v417);
          }

          v375 = v467;
        }

        else
        {
          v388 = v413;
          sub_1D2687494(v370, v413, type metadata accessor for PhotosPersonAsset);
          sub_1D26828EC(v388, v130);
          sub_1D2687564(v388, type metadata accessor for PhotosPersonAsset);
        }

        v390 = v436;
        v391 = *(v436 + 40);
        v392 = v431;
        if (*(v391 + 16) == 1 && ((v393 = *(type metadata accessor for IdentifiedEntity(0) - 8), v394 = (v391 + ((*(v393 + 80) + 32) & ~*(v393 + 80))), *(v390 + 8) == *v394) && *(v390 + 16) == v394[1] || (sub_1D2879618() & 1) != 0))
        {
          sub_1D2687564(v390, type metadata accessor for Prompt);
          v347 = &qword_1EC6DF7A8;
          v348 = &qword_1D289B1B8;
          v349 = &v491;
        }

        else
        {
          *(&v484 + 1) = v375;
          *&v485[0] = sub_1D26875E8(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
          v395 = __swift_allocate_boxed_opaque_existential_1(&v483);
          sub_1D26874FC(v390, v395, type metadata accessor for Prompt);
          v396 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization(0);
          (*(*(v396 - 8) + 56))(v392, 1, 1, v396);
          sub_1D267FF1C(&v483, v392, &v486);
          sub_1D22BD238(&v491, &qword_1EC6DF7A8, &qword_1D289B1B8);
          sub_1D22BD238(v392, &qword_1EC6DF7C0, &qword_1D289B3F0);
          sub_1D2687564(v390, type metadata accessor for Prompt);
          __swift_destroy_boxed_opaque_existential_0(&v483);
          if (*(&v487 + 1))
          {
            v489[0] = v486;
            v489[1] = v487;
            v490[0] = v488[0];
            *(v490 + 9) = *(v488 + 9);
            sub_1D22BD238(&v498, &qword_1EC6DF7C8, &qword_1D289B3F8);
            v498 = v489[0];
            v499 = v489[1];
            v500[0] = v490[0];
            *(v500 + 9) = *(v490 + 9);
            goto LABEL_151;
          }

          v347 = &qword_1EC6DF7C8;
          v348 = &qword_1D289B3F8;
          v349 = &v486;
        }

        goto LABEL_204;
      }
    }

    else
    {
      sub_1D22BD238(v489, &qword_1EC6D9A58, &qword_1D287F000);
      v320 = v407;
      (*(v444 + 56))(v407, 1, 1, v462);
      v322 = v438;
      v323 = v408;
    }

    sub_1D22BD238(v320, &unk_1EC6DDDC0, &unk_1D2881BE0);
    goto LABEL_169;
  }

  v460 = ((*(v213 + 80) + 32) & ~*(v213 + 80));
  v219 = v460 + v217;
  v461 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_removedPrompts;
  sub_1D2870F68();
  v220 = v213;
  v221 = 0;
  v222 = *(v220 + 72);
  v468 = v218 - 1;
  v455 = xmmword_1D2883080;
  v223 = v447;
  v456 = v217;
  v469 = v222;
  while (1)
  {
    sub_1D26874FC(v219, v223, type metadata accessor for Prompt);
    sub_1D2680C6C(v223, &v486);
    v489[0] = v486;
    v489[1] = v487;
    v490[0] = v488[0];
    v490[1] = v488[1];
    v475 = v486;
    v476 = v487;
    v479 = v488[0];
    v480 = v488[1];
    if (!*(&v487 + 1))
    {
      sub_1D2687564(v223, type metadata accessor for Prompt);
      goto LABEL_95;
    }

    v486 = v475;
    v487 = __PAIR128__(*(&v487 + 1), v476);
    v488[0] = v479;
    v488[1] = v480;
    v483 = v494;
    v484 = v495;
    v485[0] = v496[0];
    v485[1] = v496[1];
    v224 = _s23ImagePlaygroundInternal12PhotosPersonV2eeoiySbAC_ACtFZ_0(&v486, &v483);
    if (v224)
    {
      sub_1D2687564(v223, type metadata accessor for Prompt);
      sub_1D22BD238(v489, &qword_1EC6DF7A8, &qword_1D289B1B8);
      goto LABEL_95;
    }

    MEMORY[0x1EEE9AC00](v224);
    *(&v397 - 2) = v223;
    v225 = v466;
    v226 = v463;
    swift_beginAccess();
    v227 = v465;
    v228 = sub_1D268223C(sub_1D2436A68, (&v397 - 4));
    v465 = v227;
    if (v227)
    {
      goto LABEL_217;
    }

    v229 = v228;
    v230 = *&v226[v225];
    v231 = v230[2];
    v232 = v231 - v228;
    if (v231 < v228)
    {
      goto LABEL_211;
    }

    v458 = &v397;
    if (v228 < 0)
    {
      break;
    }

    v457 = v228 - v231;
    v233 = v228;
    if (__OFADD__(v231, v228 - v231))
    {
      goto LABEL_213;
    }

    v234 = swift_isUniquelyReferenced_nonNull_native();
    *&v226[v225] = v230;
    if (!v234 || v233 > v230[3] >> 1)
    {
      if (v231 <= v233)
      {
        v235 = v231 - v232;
      }

      else
      {
        v235 = v231;
      }

      v230 = sub_1D27CC840(v234, v235, 1, v230);
      *&v226[v225] = v230;
    }

    v236 = v460 + v230;
    v237 = v229 * v469;
    v238 = v460 + v230 + v229 * v469;
    swift_arrayDestroy();
    v239 = v231 == v229;
    v131 = v443;
    if (!v239)
    {
      if (v237 < v231 * v469 || v238 >= &v236[v231 * v469 + (v230[2] - v231) * v469])
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v237 != v231 * v469)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v240 = v230[2];
      v167 = __OFADD__(v240, v457);
      v241 = v240 + v457;
      if (v167)
      {
        goto LABEL_215;
      }

      v230[2] = v241;
    }

    v242 = v466;
    *&v463[v466] = v230;
    swift_endAccess();
    sub_1D26874FC(v447, v446, type metadata accessor for Prompt);
    v243 = v461;
    swift_beginAccess();
    v244 = *&v243[v242];
    v245 = swift_isUniquelyReferenced_nonNull_native();
    *&v243[v242] = v244;
    if ((v245 & 1) == 0)
    {
      v244 = sub_1D27CC840(0, v244[2] + 1, 1, v244);
      *&v461[v242] = v244;
    }

    v127 = v464;
    v130 = v459;
    LOBYTE(v128) = v450;
    v246 = v469;
    v248 = v244[2];
    v247 = v244[3];
    if (v248 >= v247 >> 1)
    {
      v250 = sub_1D27CC840((v247 > 1), v248 + 1, 1, v244);
      v246 = v469;
      v244 = v250;
    }

    v244[2] = v248 + 1;
    sub_1D2687494(v446, v460 + v244 + v248 * v246, type metadata accessor for Prompt);
    *&v461[v466] = v244;
    swift_endAccess();
    *(&v487 + 1) = v467;
    *&v488[0] = sub_1D26875E8(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
    v249 = __swift_allocate_boxed_opaque_existential_1(&v486);
    v223 = v447;
    sub_1D2687494(v447, v249, type metadata accessor for Prompt);
    sub_1D22BD238(v489, &qword_1EC6DF7A8, &qword_1D289B1B8);
    *(v488 + 8) = v455;
    BYTE8(v488[1]) = 6;
    sub_1D26821CC(&v486, &v498);
    v217 = v456;
LABEL_95:
    if (v468 == v221)
    {

      v114 = v454;
      goto LABEL_136;
    }

    ++v221;
    v219 += v469;
    if (v221 >= *(v217 + 16))
    {
      goto LABEL_210;
    }
  }

LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  swift_endAccess();
  __break(1u);
LABEL_217:
  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1D267E554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v17 - v3;
  v5 = type metadata accessor for PhotosPersonImage(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (v17 - v10);
  sub_1D2680C6C(a1, &v18);
  v22 = v18;
  v23 = v19;
  v24 = v20;
  v25 = v21;
  if (!*(&v19 + 1))
  {
    return 0;
  }

  v12 = sub_1D23C6DDC();
  v17[0] = v18;
  v17[1] = v19;
  v17[2] = v20;
  v17[3] = v21;
  sub_1D255AEC8(v17, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D22BD238(v4, &qword_1EC6DDD60, &qword_1D2893770);
    v13 = type metadata accessor for PhotosPersonAsset(0);
    (*(*(v13 - 1) + 56))(v11, 1, 1, v13);
  }

  else
  {
    sub_1D2687494(v4, v8, type metadata accessor for PhotosPersonImage);
    v13 = type metadata accessor for PhotosPersonAsset(0);
    sub_1D2687494(v8, v11 + v13[5], type metadata accessor for PhotosPersonImage);
    v14 = v25;
    v11[2] = v24;
    v11[3] = v14;
    v15 = v23;
    *v11 = v22;
    v11[1] = v15;
    *(v11 + v13[6]) = 1;
    *(v11 + v13[7]) = 0;
    (*(*(v13 - 1) + 56))(v11, 0, 1, v13);
    sub_1D22D63B0(&v22, v17);
  }

  type metadata accessor for PhotosPersonAsset(0);
  if ((*(*(v13 - 1) + 48))(v11, 1, v13) == 1)
  {
    sub_1D22BD238(&v18, &qword_1EC6DF7A8, &qword_1D289B1B8);
    sub_1D22BD238(v11, &unk_1EC6DDDC0, &unk_1D2881BE0);
    return 0;
  }

  sub_1D22BD238(v11, &unk_1EC6DDDC0, &unk_1D2881BE0);
  sub_1D2870F68();
  sub_1D22BD238(&v18, &qword_1EC6DF7A8, &qword_1D289B1B8);
  return 1;
}

double sub_1D267E8EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8, &unk_1D28826F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v82 - v2;
  v4 = type metadata accessor for SceneConditioningImage(0);
  v88 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v90 = v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v82 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200, &qword_1D289B260);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v85 = v82 - v10;
  v92 = type metadata accessor for SketchConditioningImage(0);
  v84 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v87 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v86 = v82 - v13;
  v95 = sub_1D2872008();
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v0;
  v15 = *(v0 + 40);
  swift_beginAccess();
  v16 = sub_1D2870F68();
  v17 = sub_1D267901C(v16);

  swift_beginAccess();
  v18 = sub_1D2870F68();
  v19 = sub_1D2679220(v18);

  *&v101 = v17;
  sub_1D274DE40(v19);
  v20 = v101;
  v21 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(&v15[v21], &v98, &qword_1EC6D9A58, &qword_1D287F000);
  v91 = v4;
  v89 = v3;
  if (v99)
  {
    v83 = v8;
    sub_1D227268C(&v98, &v101);
    v22 = v102;
    v82[0] = v103;
    v23 = __swift_project_boxed_opaque_existential_1(&v101, v102);
    v82[1] = v82;
    v24 = *(v22 - 1);
    v25 = *(v24 + 64);
    v26 = MEMORY[0x1EEE9AC00](v23);
    v27 = v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = *(v24 + 16);
    (v28)(v27, v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v20;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }

    goto LABEL_55;
  }

  sub_1D22BD238(&v98, &qword_1EC6D9A58, &qword_1D287F000);
  while (1)
  {
    v35 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_style;
    swift_beginAccess();
    v36 = *(v94 + 16);
    v36(v93, &v15[v35], v95);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v38 = *(v20 + 16);
      v37 = *(v20 + 24);
      if (v38 >= v37 >> 1)
      {
        v20 = sub_1D27CCA74((v37 > 1), v38 + 1, 1, v20);
      }

      v25 = v95;
      v102 = v95;
      v103 = sub_1D26875E8(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v101);
      v40 = v93;
      v36(boxed_opaque_existential_1, v93, v25);
      *(v20 + 16) = v38 + 1;
      sub_1D227268C(&v101, v20 + 40 * v38 + 32);
      (*(v94 + 8))(v40, v25);
      v104 = v20;
      v41 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
      swift_beginAccess();
      v42 = &v15[v41];
      v43 = v85;
      sub_1D22BD1D0(v42, v85, &qword_1EC6DA200, &qword_1D289B260);
      if ((*(v84 + 48))(v43, 1, v92) == 1)
      {
        sub_1D22BD238(v43, &qword_1EC6DA200, &qword_1D289B260);
        v44 = v88;
        v45 = v89;
      }

      else
      {
        v46 = v43;
        v47 = v86;
        sub_1D2687494(v46, v86, type metadata accessor for SketchConditioningImage);
        sub_1D26874FC(v47, v87, type metadata accessor for SketchConditioningImage);
        v49 = *(v20 + 16);
        v48 = *(v20 + 24);
        v44 = v88;
        v45 = v89;
        if (v49 >= v48 >> 1)
        {
          v20 = sub_1D27CCA74((v48 > 1), v49 + 1, 1, v20);
        }

        sub_1D2687564(v86, type metadata accessor for SketchConditioningImage);
        v102 = v92;
        v103 = sub_1D26875E8(&qword_1EC6DF7D8, type metadata accessor for SketchConditioningImage, &unk_1D289D0A4);
        v50 = __swift_allocate_boxed_opaque_existential_1(&v101);
        v51 = v87;
        sub_1D26874FC(v87, v50, type metadata accessor for SketchConditioningImage);
        *(v20 + 16) = v49 + 1;
        sub_1D227268C(&v101, v20 + 40 * v49 + 32);
        sub_1D2687564(v51, type metadata accessor for SketchConditioningImage);
        v104 = v20;
        v4 = v91;
      }

      v52 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
      swift_beginAccess();
      sub_1D22BD1D0(&v15[v52], v45, &qword_1EC6DA2C8, &unk_1D28826F0);
      v53 = *(v44 + 48);
      v36 = (v44 + 48);
      if (v53(v45, 1, v4) == 1)
      {
        sub_1D22BD238(v45, &qword_1EC6DA2C8, &unk_1D28826F0);
      }

      else
      {
        sub_1D2687494(v45, v8, type metadata accessor for SceneConditioningImage);
        sub_1D26874FC(v8, v90, type metadata accessor for SceneConditioningImage);
        v55 = *(v20 + 16);
        v54 = *(v20 + 24);
        if (v55 >= v54 >> 1)
        {
          v20 = sub_1D27CCA74((v54 > 1), v55 + 1, 1, v20);
        }

        sub_1D2687564(v8, type metadata accessor for SceneConditioningImage);
        v102 = v4;
        v103 = sub_1D26875E8(&qword_1EC6DF7E0, type metadata accessor for SceneConditioningImage, &unk_1D289C7C4);
        v56 = __swift_allocate_boxed_opaque_existential_1(&v101);
        v57 = v90;
        sub_1D26874FC(v90, v56, type metadata accessor for SceneConditioningImage);
        *(v20 + 16) = v55 + 1;
        sub_1D227268C(&v101, v20 + 40 * v55 + 32);
        sub_1D2687564(v57, type metadata accessor for SceneConditioningImage);
        v104 = v20;
      }

      v95 = *(v20 + 16);
      if (!v95)
      {
        break;
      }

      v58 = 0;
      v94 = v20 + 32;
      v4 = MEMORY[0x1E69E7CC0];
      while (v58 < *(v20 + 16))
      {
        v36 = v20;
        v67 = v58 + 1;
        sub_1D22D7044(v94 + 40 * v58, &v101);
        v68 = *(v96 + 32);
        v69 = *(v68 + 16);
        sub_1D2870F68();
        v70 = v68 + 32;
        v20 = -v69;
        v71 = -1;
        while (v20 + v71 != -1)
        {
          if (++v71 >= *(v68 + 16))
          {
            __break(1u);
            goto LABEL_50;
          }

          v25 = v70 + 40;
          sub_1D22D7044(v70, &v98);
          v8 = v99;
          v15 = v100;
          __swift_project_boxed_opaque_existential_1(&v98, v99);
          v72 = (*(v15 + 7))(&v101, v8, v15);
          __swift_destroy_boxed_opaque_existential_0(&v98);
          v70 = v25;
          if (v72)
          {

            __swift_destroy_boxed_opaque_existential_0(&v101);
            goto LABEL_25;
          }
        }

        sub_1D227268C(&v101, &v98);
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v97 = v4;
        if ((v73 & 1) == 0)
        {
          sub_1D23D8528(0, *(v4 + 16) + 1, 1);
          v4 = v97;
        }

        v60 = *(v4 + 16);
        v59 = *(v4 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1D23D8528((v59 > 1), v60 + 1, 1);
        }

        v61 = v99;
        v62 = v100;
        v63 = __swift_mutable_project_boxed_opaque_existential_1(&v98, v99);
        v64 = MEMORY[0x1EEE9AC00](v63);
        v8 = v82 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v66 + 16))(v8, v64);
        sub_1D2564390(v60, v8, &v97, v61, v62);
        __swift_destroy_boxed_opaque_existential_0(&v98);
        v4 = v97;
LABEL_25:
        v58 = v67;
        v20 = v36;
        if (v67 == v95)
        {
          goto LABEL_35;
        }
      }

LABEL_50:
      __break(1u);
LABEL_51:
      v20 = sub_1D27CCA74(0, *(v20 + 16) + 1, 1, v20);
    }

    v4 = MEMORY[0x1E69E7CC0];
LABEL_35:
    v74 = v96;
    v75 = sub_1D2870F68();
    v28 = sub_1D267863C(v75, &v104);
    *&v101 = *(v74 + 32);
    sub_1D2870F68();
    v76 = sub_1D2870F78();
    v22 = &v101;
    sub_1D274DE40(v76);
    sub_1D2870F68();
    v24 = sub_1D26871E4(&v101, v28);

    v15 = v101;
    v27 = *(v101 + 16);
    if (v24 > v27)
    {
      __break(1u);
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    if (v24 < 0)
    {
      goto LABEL_53;
    }

    if (!__OFADD__(v27, v24 - v27))
    {
      break;
    }

LABEL_54:
    __break(1u);
LABEL_55:
    isUniquelyReferenced_nonNull_native = sub_1D27CCA74(0, *(v20 + 16) + 1, 1, v20);
    v20 = isUniquelyReferenced_nonNull_native;
    v104 = isUniquelyReferenced_nonNull_native;
LABEL_3:
    v31 = *(v20 + 16);
    v30 = *(v20 + 24);
    if (v31 >= v30 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1D27CCA74((v30 > 1), v31 + 1, 1, v20);
      v32 = isUniquelyReferenced_nonNull_native;
      v104 = isUniquelyReferenced_nonNull_native;
    }

    else
    {
      v32 = v20;
    }

    v33 = MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
    v34 = v82 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (v28)(v34, v27, v22, v33);
    sub_1D254D5D8(v31, v34, &v104, v22, *(v82[0] + 8));
    (*(v24 + 8))(v27, v22);
    __swift_destroy_boxed_opaque_existential_0(&v101);
    v20 = v32;
    v4 = v91;
    v8 = v83;
  }

  v77 = swift_isUniquelyReferenced_nonNull_native();
  if (!v77 || v24 > *(v15 + 3) >> 1)
  {
    if (v27 <= v24)
    {
      v78 = v24;
    }

    else
    {
      v78 = v27;
    }

    v15 = sub_1D27CCA74(v77, v78, 1, v15);
    *&v101 = v15;
  }

  sub_1D278C84C(v24, v27, 0);
  *(v96 + 32) = v15;

  v79 = *(v4 + 16);

  if (v79)
  {

    goto LABEL_47;
  }

  v80 = *(v28 + 16);

  if (v80)
  {
LABEL_47:
    sub_1D267F94C();
  }

  return result;
}

double sub_1D267F6F0()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24) == 1)
  {
    sub_1D2681C00();
    swift_beginAccess();
    v1 = *(v0 + 48);
    if (v1 >> 62)
    {
      goto LABEL_21;
    }

    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    sub_1D2870F68();
    if (v5)
    {
      v4 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D38A1C30](v4, v1);
          v7 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_15;
          }
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v5 = sub_1D2879368();
            goto LABEL_4;
          }

          v6 = *(v1 + 8 * v4 + 32);
          sub_1D2870F78();
          v7 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
            goto LABEL_14;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v2 = *(v6 + 24);
          ObjectType = swift_getObjectType();
          (*(v2 + 16))(ObjectType, v2);
          swift_unknownObjectRelease();
        }

        ++v4;
      }

      while (v7 != v5);
    }
  }

  else
  {
LABEL_15:
    sub_1D2872658();
    v9 = sub_1D2873CA8();
    v10 = sub_1D28789F8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v9, v10, "Skipping context update", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return result;
}

double sub_1D267F94C()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24) == 1)
  {
    sub_1D2681C00();
    swift_beginAccess();
    v1 = *(v0 + 48);
    if (v1 >> 62)
    {
      goto LABEL_21;
    }

    v5 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    sub_1D2870F68();
    if (v5)
    {
      v4 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D38A1C30](v4, v1);
          v7 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_15;
          }
        }

        else
        {
          if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_21:
            v5 = sub_1D2879368();
            goto LABEL_4;
          }

          v6 = *(v1 + 8 * v4 + 32);
          sub_1D2870F78();
          v7 = (v4 + 1);
          if (__OFADD__(v4, 1))
          {
            goto LABEL_14;
          }
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          v2 = *(v6 + 24);
          ObjectType = swift_getObjectType();
          (*(v2 + 8))(ObjectType, v2);
          swift_unknownObjectRelease();
        }

        ++v4;
      }

      while (v7 != v5);
    }
  }

  else
  {
LABEL_15:
    sub_1D2872658();
    v9 = sub_1D2873CA8();
    v10 = sub_1D28789F8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v9, v10, "Skipping active representations update", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_1D267FBA8(uint64_t a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 24) == 1)
  {
    sub_1D2681C00();
    v7 = swift_beginAccess();
    v8 = *(v1 + 48);
    MEMORY[0x1EEE9AC00](v7);
    *(&v12 - 2) = a1;
    sub_1D2870F68();
    sub_1D267885C(sub_1D2687410, (&v12 - 4), v8);
  }

  else
  {
    sub_1D2872658();
    v9 = sub_1D2873CA8();
    v10 = sub_1D28789F8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D226E000, v9, v10, "Skipping duplicate representation update", v11, 2u);
      MEMORY[0x1D38A3520](v11, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_1D267FD74(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D2872008();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2871FC8();
  sub_1D26875E8(&qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);
  v7 = sub_1D2877F98();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    v8 = *(v2 + 32);
    v9 = *(v8 + 16);
    sub_1D2870F68();
    if (v9)
    {
      v10 = 0;
      v11 = v8 + 32;
      while (v10 < *(v8 + 16))
      {
        sub_1D22D7044(v11, v13);
        sub_1D268163C(v13, v2);
        ++v10;
        __swift_destroy_boxed_opaque_existential_0(v13);
        v11 += 40;
        if (v9 == v10)
        {
          goto LABEL_6;
        }
      }

      __break(1u);

      __swift_destroy_boxed_opaque_existential_0(v13);
      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }
}

uint64_t sub_1D267FF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v93 = a2;
  v98 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20, &unk_1D287EC80);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v94 = &v84 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v84 - v8;
  v90 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v84 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7C0, &qword_1D289B3F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v87 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v84 - v13;
  v14 = type metadata accessor for CharacterAsset(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210, &unk_1D2886B20);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v99 = &v84 - v17;
  v97 = type metadata accessor for Prompt(0);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v92 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v86 = &v84 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v84 - v22;
  v24 = type metadata accessor for CuratedPrompt(0);
  v100 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v95 = &v84 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v84 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v84 - v30;
  *(a3 + 41) = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  v32 = *(v3 + 40);
  v33 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activeCuratedPrompts;
  swift_beginAccess();
  v34 = sub_1D2870F68();
  v35 = sub_1D2679220(v34);

  v36 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v101 = v32;
  v37 = sub_1D2870F68();
  v38 = sub_1D267901C(v37);

  *&v102 = v35;
  v39 = v38;
  v40 = v98;
  sub_1D274DE40(v39);
  v41 = *(v102 + 16);

  if (v41 != 6)
  {
    goto LABEL_13;
  }

  sub_1D22D7044(v40, &v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
  if (swift_dynamicCast())
  {
    sub_1D2687564(v31, type metadata accessor for CuratedPrompt);
    v42 = v101;
    goto LABEL_5;
  }

  v42 = v101;
  if (!*(*(v101 + v36) + 16))
  {
LABEL_5:
    v43 = *(v42 + v33);
    v44 = *(v43 + 16);
    if (v44)
    {
      sub_1D26874FC(v43 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * (v44 - 1), v28, type metadata accessor for CuratedPrompt);
      sub_1D26760C4(v28);
      *(&v103 + 1) = v24;
      *v104 = sub_1D26875E8(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt, &unk_1D28ABF9C);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v102);
      v46 = type metadata accessor for CuratedPrompt;
      v47 = v28;
LABEL_12:
      sub_1D2687494(v47, boxed_opaque_existential_1, v46);
      sub_1D22BD238(a3, &qword_1EC6DF7C8, &qword_1D289B3F8);
      *&v104[8] = xmmword_1D2883070;
      v104[24] = 6;
      v51 = v103;
      *a3 = v102;
      a3[1] = v51;
      a3[2] = *v104;
      *(a3 + 41) = *&v104[9];
      goto LABEL_13;
    }
  }

  sub_1D22D7044(v40, &v102);
  if (swift_dynamicCast())
  {
    sub_1D2687564(v23, type metadata accessor for Prompt);
  }

  else if (*(*(v42 + v33) + 16))
  {
    goto LABEL_13;
  }

  v48 = *(v101 + v36);
  v49 = *(v48 + 16);
  if (v49)
  {
    v50 = v86;
    sub_1D26874FC(v48 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * (v49 - 1), v86, type metadata accessor for Prompt);
    sub_1D2675C1C(v50);
    *(&v103 + 1) = v97;
    *v104 = sub_1D26875E8(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v102);
    v46 = type metadata accessor for Prompt;
    v47 = v50;
    goto LABEL_12;
  }

LABEL_13:
  sub_1D22D7044(v40, &v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
  v52 = v99;
  v53 = swift_dynamicCast();
  v54 = *(v100 + 56);
  if (v53)
  {
    v54(v52, 0, 1, v24);
    v55 = v95;
    sub_1D2687494(v52, v95, type metadata accessor for CuratedPrompt);
    v56 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
    v57 = v101;
    swift_beginAccess();
    sub_1D22BD1D0(v57 + v56, &v102, &qword_1EC6D9A58, &qword_1D287F000);
    v58 = *(&v103 + 1);
    sub_1D22BD238(&v102, &qword_1EC6D9A58, &qword_1D287F000);
    if (!v58)
    {
      v59 = v93;
      v60 = v88;
      sub_1D22BD1D0(v93, v88, &qword_1EC6DF7C0, &qword_1D289B3F0);
      v61 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization(0);
      v62 = *(*(v61 - 8) + 48);
      if (v62(v60, 1, v61) == 1)
      {
        sub_1D22BD238(v60, &qword_1EC6DF7C0, &qword_1D289B3F0);
        goto LABEL_25;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D2687564(v60, type metadata accessor for GenericCharacterManager.AutomaticPersonalization);
LABEL_25:
        v77 = v59;
        v78 = v87;
        sub_1D22BD1D0(v77, v87, &qword_1EC6DF7C0, &qword_1D289B3F0);
        if (v62(v78, 1, v61) == 1)
        {
          sub_1D22BD238(v78, &qword_1EC6DF7C0, &qword_1D289B3F0);
        }

        else
        {
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v79 = v84;
            sub_1D2687494(v78, v84, type metadata accessor for ImageGenerationPerson.SkinTone);
            v80 = v79;
            v81 = v91;
            sub_1D2687494(v80, v91, type metadata accessor for ImageGenerationPerson.SkinTone);
            (*(v89 + 56))(v81, 0, 1, v90);
LABEL_32:
            v83 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_skinTone;
            swift_beginAccess();
            sub_1D262963C(v81, v57 + v83);
            swift_endAccess();
            sub_1D22BD238(v81, &unk_1EC6E33C0, &unk_1D2883750);
            goto LABEL_33;
          }

          sub_1D2687564(v78, type metadata accessor for GenericCharacterManager.AutomaticPersonalization);
        }

        v81 = v91;
        (*(v89 + 56))(v91, 1, 1, v90);
        goto LABEL_32;
      }

      v82 = v85;
      sub_1D2687494(v60, v85, type metadata accessor for CharacterAsset);
      sub_1D284580C(v82, v57);
      sub_1D2687564(v82, type metadata accessor for CharacterAsset);
    }

LABEL_33:
    sub_1D2675E88(v55);
    v74 = type metadata accessor for CuratedPrompt;
    v75 = v55;
    return sub_1D2687564(v75, v74);
  }

  v54(v52, 1, 1, v24);
  sub_1D22BD238(v52, &qword_1EC6DA210, &unk_1D2886B20);
  sub_1D22D7044(v40, &v102);
  v63 = v94;
  v64 = v97;
  v65 = swift_dynamicCast();
  v66 = *(v96 + 56);
  v67 = v101;
  if ((v65 & 1) == 0)
  {
    v66(v63, 1, 1, v64);
    return sub_1D22BD238(v63, &unk_1EC6E1D20, &unk_1D287EC80);
  }

  v66(v63, 0, 1, v64);
  v68 = v92;
  sub_1D2687494(v63, v92, type metadata accessor for Prompt);
  v69 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_activePerson;
  swift_beginAccess();
  sub_1D22BD1D0(v67 + v69, &v102, &qword_1EC6D9A58, &qword_1D287F000);
  v70 = *(&v103 + 1);
  sub_1D22BD238(&v102, &qword_1EC6D9A58, &qword_1D287F000);
  if (!v70)
  {
    v71 = type metadata accessor for GenericCharacterManager.AutomaticPersonalization(0);
    if ((*(*(v71 - 8) + 48))(v93, 1, v71) == 1)
    {
      v72 = v91;
      (*(v89 + 56))(v91, 1, 1, v90);
      v73 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_skinTone;
      swift_beginAccess();
      sub_1D262963C(v72, v67 + v73);
      swift_endAccess();
      sub_1D22BD238(v72, &unk_1EC6E33C0, &unk_1D2883750);
    }
  }

  sub_1D26745FC(v68);
  v74 = type metadata accessor for Prompt;
  v75 = v68;
  return sub_1D2687564(v75, v74);
}

double sub_1D2680C6C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for IdentifiedEntity.Kind(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2871818();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IdentifiedEntity(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  v18 = sub_1D279F58C(*(a1 + 40));
  if (*(v18 + 16))
  {
    sub_1D26874FC(v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v14, type metadata accessor for IdentifiedEntity);

    sub_1D2687494(v14, v17, type metadata accessor for IdentifiedEntity);
    sub_1D26874FC(&v17[*(v11 + 20)], v6, type metadata accessor for IdentifiedEntity.Kind);
    if ((*(v8 + 48))(v6, 2, v7))
    {
      sub_1D2687564(v17, type metadata accessor for IdentifiedEntity);
      v19 = type metadata accessor for IdentifiedEntity.Kind;
      v20 = v6;
    }

    else
    {
      v21 = v10;
      (*(v8 + 32))(v10, v6, v7);
      sub_1D23C6CA0();
      v22 = _SystemPhotoLibrary.photoLibrary.getter();

      if (v22)
      {
        v23 = sub_1D286641C(v10, v22);
        if (v23)
        {
          v24 = v23;
          v25 = [v23 localIdentifier];
          v26 = sub_1D28780A8();
          v34 = v27;
          v35 = v26;

          v28 = [v24 px_localizedName];
          v29 = sub_1D28780A8();
          v31 = v30;

          (*(v8 + 8))(v21, v7);
          sub_1D2687564(v17, type metadata accessor for IdentifiedEntity);
          sub_1D238D058(0, 0, 0);
          *a2 = v29;
          a2[1] = v31;
          v33 = v34;
          a2[2] = v35;
          a2[3] = v33;
          a2[4] = 0;
          a2[5] = 0;
          a2[6] = 0;
          a2[7] = v24;
          return result;
        }
      }

      (*(v8 + 8))(v10, v7);
      v19 = type metadata accessor for IdentifiedEntity;
      v20 = v17;
    }

    sub_1D2687564(v20, v19);
  }

  else
  {
  }

  result = 0.0;
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

void sub_1D2681054(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90, &qword_1D2882510);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for CuratedPrompt(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(sub_1D23C7858() + 56);
  sub_1D2870F68();

  v24 = *(v11 + 16);
  if (v24)
  {
    v21 = v7;
    v22 = a2;
    v12 = 0;
    v13 = *(a1 + 8);
    v14 = *(a1 + 16);
    v23 = v13;
    v15 = v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v16 = v8;
    while (v12 < *(v11 + 16))
    {
      v8 = v16;
      sub_1D26874FC(v15 + *(v16 + 72) * v12, v10, type metadata accessor for CuratedPrompt);
      v27 = v23;
      v28 = v14;
      v17 = *(v10 + 3);
      v25 = *(v10 + 2);
      v26 = v17;
      v18 = sub_1D28718F8();
      (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
      sub_1D22BD06C();
      sub_1D2870F68();
      sub_1D2870F68();
      v19 = sub_1D2878FE8();
      sub_1D22BD238(v6, &qword_1EC6E1D90, &qword_1D2882510);

      if (!v19)
      {

        a2 = v22;
        sub_1D2687494(v10, v22, type metadata accessor for CuratedPrompt);
        v20 = 0;
        v7 = v21;
        goto LABEL_9;
      }

      ++v12;
      sub_1D2687564(v10, type metadata accessor for CuratedPrompt);
      v16 = v8;
      if (v24 == v12)
      {

        v20 = 1;
        v7 = v21;
        a2 = v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {

    v20 = 1;
LABEL_9:
    v16 = v8;
LABEL_10:
    (*(v16 + 56))(a2, v20, 1, v7);
  }
}

void sub_1D2681364(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = sub_1D2873CB8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 24) == 1)
  {
    sub_1D2681C00();
    v13 = swift_beginAccess();
    v14 = *(v4 + 48);
    MEMORY[0x1EEE9AC00](v13);
    *(&v18 - 4) = a1;
    *(&v18 - 3) = a2;
    *(&v18 - 2) = a3;
    *(&v18 - 8) = a4;
    sub_1D2870F68();
    sub_1D267885C(sub_1D26875C4, (&v18 - 6), v14);
  }

  else
  {
    sub_1D2872658();
    v15 = sub_1D2873CA8();
    v16 = sub_1D28789F8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "Skipping replace representaiton update", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }
}

BOOL sub_1D268154C(uint64_t a1, void *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 16);
  v5 = *a2 + 32;
  sub_1D2870F68();
  result = v5;
  v7 = -1;
  while (1)
  {
    v8 = v7 - v4;
    if (v7 - v4 == -1)
    {
LABEL_5:

      return v8 == -1;
    }

    if (++v7 >= *(v3 + 16))
    {
      break;
    }

    v9 = result + 40;
    sub_1D22D7044(result, v13);
    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v12 = (*(v11 + 56))(a1, v10, v11);
    __swift_destroy_boxed_opaque_existential_0(v13);
    result = v9;
    if (v12)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D268163C(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v3 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for CharacterRecipe(0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for CharacterAsset(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210, &unk_1D2886B20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v32 - v13;
  v15 = type metadata accessor for CuratedPrompt(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22D7044(a1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
  v19 = swift_dynamicCast();
  v20 = *(v16 + 56);
  if (v19)
  {
    v20(v14, 0, 1, v15);
    sub_1D2687494(v14, v18, type metadata accessor for CuratedPrompt);
    if (v18[*(v15 + 92) + 48] != 255)
    {
      sub_1D2683500(v18, v36);
    }

    sub_1D2687564(v18, type metadata accessor for CuratedPrompt);
  }

  else
  {
    v20(v14, 1, 1, v15);
    sub_1D22BD238(v14, &qword_1EC6DA210, &unk_1D2886B20);
  }

  sub_1D22D7044(a1, v39);
  v21 = swift_dynamicCast();
  v22 = *(v10 + 56);
  if ((v21 & 1) == 0)
  {
    v22(v8, 1, 1, v9);
    return sub_1D22BD238(v8, &unk_1EC6DDDA0, &qword_1D2882D20);
  }

  v22(v8, 0, 1, v9);
  v23 = v8;
  v24 = v33;
  sub_1D2687494(v23, v33, type metadata accessor for CharacterAsset);
  v25 = v35;
  sub_1D26874FC(v24 + *(v9 + 24), v35, type metadata accessor for CharacterRecipe);
  v26 = *(v32 + 20);
  v27 = *MEMORY[0x1E69E0170];
  v28 = sub_1D28737A8();
  v29 = v34;
  (*(*(v28 - 8) + 104))(v34, v27, v28);
  sub_1D26875E8(&qword_1EC6D8BA8, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01D8]);
  sub_1D2878368();
  sub_1D2878368();
  if (v39[0] == v37 && v39[1] == v38)
  {
    sub_1D2687564(v29, type metadata accessor for ImageGenerationPerson.SkinTone);

    sub_1D2687564(v25 + v26, type metadata accessor for ImageGenerationPerson.SkinTone);
LABEL_12:
    sub_1D26848F0(v24, v36);
    return sub_1D2687564(v24, type metadata accessor for CharacterAsset);
  }

  v31 = sub_1D2879618();
  sub_1D2687564(v29, type metadata accessor for ImageGenerationPerson.SkinTone);

  sub_1D2687564(v25 + v26, type metadata accessor for ImageGenerationPerson.SkinTone);
  if (v31)
  {
    goto LABEL_12;
  }

  return sub_1D2687564(v24, type metadata accessor for CharacterAsset);
}

void sub_1D2681C00()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  v3 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_67;
  }

  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      if (v3)
      {
        v5 = sub_1D2879368();
      }

      else
      {
        v5 = *(v2 + 16);
      }

      goto LABEL_21;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1D38A1C30](v5, v1);
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_58;
      }

      sub_1D2870F78();
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    v7 = __OFADD__(v5++, 1);
    if (v7)
    {
      goto LABEL_59;
    }
  }

  v8 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    if (v3)
    {
      if (v8 != sub_1D2879368())
      {
LABEL_24:
        v2 = v5 + 5;
        do
        {
          v10 = v2 - 4;
          v3 = v1 & 0xC000000000000001;
          if ((v1 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1D38A1C30](v2 - 4, v1);
          }

          else
          {
            if ((v10 & 0x8000000000000000) != 0)
            {
              goto LABEL_60;
            }

            if (v10 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_61;
            }

            sub_1D2870F78();
          }

          v11 = swift_unknownObjectWeakLoadStrong();

          if (v11)
          {
            swift_unknownObjectRelease();
            if (v10 != v5)
            {
              if (v3)
              {
                v12 = MEMORY[0x1D38A1C30](v5, v1);
                v13 = MEMORY[0x1D38A1C30](v2 - 4, v1);
              }

              else
              {
                if ((v5 & 0x8000000000000000) != 0)
                {
                  goto LABEL_70;
                }

                v14 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v5 >= v14)
                {
                  goto LABEL_71;
                }

                if (v10 >= v14)
                {
                  goto LABEL_72;
                }

                v12 = *(v1 + 8 * v5 + 32);
                v13 = *(v1 + 8 * v2);
                sub_1D2870F78();
                sub_1D2870F78();
              }

              isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
              *(v0 + 48) = v1;
              if (!isUniquelyReferenced_nonNull_bridgeObject || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
              {
                v1 = sub_1D278F320();
                *(v0 + 48) = v1;
              }

              if ((v5 & 0x8000000000000000) != 0)
              {
                goto LABEL_64;
              }

              v3 = v1 & 0xFFFFFFFFFFFFFF8;
              if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_65;
              }

              *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v5 + 0x20) = v13;

              *(v0 + 48) = v1;
              if ((v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
              {
                v1 = sub_1D278F320();
                *(v0 + 48) = v1;
                v3 = v1 & 0xFFFFFFFFFFFFFF8;
                if ((v10 & 0x8000000000000000) != 0)
                {
LABEL_57:
                  __break(1u);
LABEL_58:
                  __break(1u);
LABEL_59:
                  __break(1u);
LABEL_60:
                  __break(1u);
LABEL_61:
                  __break(1u);
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
LABEL_66:
                  __break(1u);
LABEL_67:
                  v4 = sub_1D2879368();
                  goto LABEL_3;
                }
              }

              else if ((v10 & 0x8000000000000000) != 0)
              {
                goto LABEL_57;
              }

              if (v10 >= *(v3 + 16))
              {
                goto LABEL_66;
              }

              *(v3 + 8 * v2) = v12;

              *(v0 + 48) = v1;
            }

            v7 = __OFADD__(v5++, 1);
            if (v7)
            {
              goto LABEL_63;
            }
          }

          v7 = __OFADD__(v10, 1);
          v16 = v2 - 3;
          if (v7)
          {
            goto LABEL_62;
          }

          if (v1 >> 62)
          {
            v17 = sub_1D2879368();
          }

          else
          {
            v17 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v2;
        }

        while (v16 != v17);
      }
    }

    else if (v8 != *(v2 + 16))
    {
      goto LABEL_24;
    }

LABEL_21:
    if (v1 >> 62)
    {
      v9 = sub_1D2879368();
      if (v9 >= v5)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v9 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 >= v5)
      {
LABEL_23:
        sub_1D278CA38(v5, v9);
        swift_endAccess();
        return;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D2681F68(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(a2, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D2681FDC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = *(v9 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 32))(a2, a3, a4, a5, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *ImageConditioningRepresentationsManager.deinit()
{

  return v0;
}

uint64_t ImageConditioningRepresentationsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2682164(void *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  return (*(v4 + 56))(v2, v3, v4) & 1;
}

uint64_t sub_1D26821CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7C8, &qword_1D289B3F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D268223C(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for Prompt(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = *v2;
  result = sub_1D25A60EC(a1, a2, *v2, v14);
  if (!v3)
  {
    v45 = 0;
    if (v19)
    {
      return *(v17 + 16);
    }

    v40 = v16;
    v41 = a1;
    v37 = v12;
    v38 = v9;
    v36 = v2;
    v44 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = (v17 + 16);
      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        return v44;
      }

      v39 = v7;
      while (v20 < v21)
      {
        v23 = v17;
        v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v17 + v42;
        v25 = *(v7 + 72);
        v43 = v25 * v20;
        v26 = v40;
        sub_1D26874FC(v24 + v25 * v20, v40, type metadata accessor for Prompt);
        v27 = a2;
        v28 = v45;
        v29 = v41(v26);
        result = sub_1D2687564(v26, type metadata accessor for Prompt);
        v45 = v28;
        if (v28)
        {
          return result;
        }

        if (v29)
        {
          a2 = v27;
          v7 = v39;
          v17 = v23;
        }

        else
        {
          v30 = v44;
          if (v20 == v44)
          {
            a2 = v27;
            v7 = v39;
            v17 = v23;
          }

          else
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v31 = *v22;
            if (v44 >= *v22)
            {
              goto LABEL_27;
            }

            v32 = v25 * v44;
            result = sub_1D26874FC(v24 + v25 * v44, v37, type metadata accessor for Prompt);
            if (v20 >= v31)
            {
              goto LABEL_28;
            }

            v33 = v43;
            sub_1D26874FC(v24 + v43, v38, type metadata accessor for Prompt);
            v17 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1D278BCA4(v23);
            }

            a2 = v27;
            v34 = v17 + v42;
            result = sub_1D268742C(v38, v17 + v42 + v32, type metadata accessor for Prompt);
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_29;
            }

            result = sub_1D268742C(v37, v34 + v33, type metadata accessor for Prompt);
            *v36 = v17;
            v7 = v39;
            v30 = v44;
          }

          v44 = v30 + 1;
        }

        ++v20;
        v22 = (v17 + 16);
        v21 = *(v17 + 16);
        if (v20 == v21)
        {
          return v44;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D2682594(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v6 = type metadata accessor for CuratedPrompt(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = *v2;
  result = sub_1D25A6118(a1, a2, *v2, v14);
  if (!v3)
  {
    v45 = 0;
    if (v19)
    {
      return *(v17 + 16);
    }

    v40 = v16;
    v41 = a1;
    v37 = v12;
    v38 = v9;
    v36 = v2;
    v44 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v22 = (v17 + 16);
      v21 = *(v17 + 16);
      if (v20 == v21)
      {
        return v44;
      }

      v39 = v7;
      while (v20 < v21)
      {
        v23 = v17;
        v42 = (*(v7 + 80) + 32) & ~*(v7 + 80);
        v24 = v17 + v42;
        v25 = *(v7 + 72);
        v43 = v25 * v20;
        v26 = v40;
        sub_1D26874FC(v24 + v25 * v20, v40, type metadata accessor for CuratedPrompt);
        v27 = a2;
        v28 = v45;
        v29 = v41(v26);
        result = sub_1D2687564(v26, type metadata accessor for CuratedPrompt);
        v45 = v28;
        if (v28)
        {
          return result;
        }

        if (v29)
        {
          a2 = v27;
          v7 = v39;
          v17 = v23;
        }

        else
        {
          v30 = v44;
          if (v20 == v44)
          {
            a2 = v27;
            v7 = v39;
            v17 = v23;
          }

          else
          {
            if ((v44 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v31 = *v22;
            if (v44 >= *v22)
            {
              goto LABEL_27;
            }

            v32 = v25 * v44;
            result = sub_1D26874FC(v24 + v25 * v44, v37, type metadata accessor for CuratedPrompt);
            if (v20 >= v31)
            {
              goto LABEL_28;
            }

            v33 = v43;
            sub_1D26874FC(v24 + v43, v38, type metadata accessor for CuratedPrompt);
            v17 = v23;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v17 = sub_1D278BCF4(v23);
            }

            a2 = v27;
            v34 = v17 + v42;
            result = sub_1D268742C(v38, v17 + v42 + v32, type metadata accessor for CuratedPrompt);
            if (v20 >= *(v17 + 16))
            {
              goto LABEL_29;
            }

            result = sub_1D268742C(v37, v34 + v33, type metadata accessor for CuratedPrompt);
            *v36 = v17;
            v7 = v39;
            v30 = v44;
          }

          v44 = v30 + 1;
        }

        ++v20;
        v22 = (v17 + 16);
        v21 = *(v17 + 16);
        if (v20 == v21)
        {
          return v44;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1D26828EC(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - v6;
  v8 = type metadata accessor for PhotosPersonAsset(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for CharacterAsset(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = v8;
  v44[4] = sub_1D26875E8(&qword_1EC6D9A60, type metadata accessor for PhotosPersonAsset, &unk_1D28AD4C0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  sub_1D26874FC(a1, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
  sub_1D22D7044(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
  v20 = swift_dynamicCast();
  v21 = *(v16 + 56);
  if (v20)
  {
    v21(v14, 0, 1, v15);
    sub_1D2687494(v14, v18, type metadata accessor for CharacterAsset);
    v22 = CharacterAsset.id.getter();
    v24 = v23;
    sub_1D2687564(v18, type metadata accessor for CharacterAsset);
LABEL_3:
    v25 = v42;
    v26 = sub_1D23C6DDC();
    sub_1D2612E14(v22, v24);

LABEL_15:
    sub_1D28462CC(boxed_opaque_existential_1, *(v25 + 40));
    __swift_destroy_boxed_opaque_existential_0(v44);
    return;
  }

  v21(v14, 1, 1, v15);
  sub_1D22BD238(v14, &unk_1EC6DDDA0, &qword_1D2882D20);
  sub_1D22D7044(v44, v43);
  v27 = swift_dynamicCast();
  v28 = *(v9 + 56);
  if ((v27 & 1) == 0)
  {
    v28(v7, 1, 1, v8);
    v37 = &unk_1EC6DDDC0;
    v38 = &unk_1D2881BE0;
    v39 = v7;
LABEL_14:
    sub_1D22BD238(v39, v37, v38);
    v25 = v42;
    goto LABEL_15;
  }

  v28(v7, 0, 1, v8);
  sub_1D2687494(v7, v11, type metadata accessor for PhotosPersonAsset);
  v29 = *(v11 + 7);
  if (!v29)
  {
    v40 = sub_1D2871818();
    v32 = v41;
    (*(*(v40 - 8) + 56))(v41, 1, 1, v40);
LABEL_13:
    sub_1D2687564(v11, type metadata accessor for PhotosPersonAsset);
    v37 = &qword_1EC6D8F70;
    v38 = &qword_1D2881410;
    v39 = v32;
    goto LABEL_14;
  }

  v30 = v29;
  v31 = [v30 localIdentifier];
  v32 = v41;
  if (!v31)
  {
    sub_1D28780A8();
    v31 = sub_1D2878068();
  }

  v33 = [objc_opt_self() uuidFromLocalIdentifier_];

  if (v33)
  {
    sub_1D28780A8();

    sub_1D28717A8();

    v34 = sub_1D2871818();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v32, 1, v34) != 1)
    {
      v22 = sub_1D28717B8();
      v24 = v36;
      sub_1D2687564(v11, type metadata accessor for PhotosPersonAsset);
      (*(v35 + 8))(v32, v34);
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  __break(1u);
}

void sub_1D2682EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v45 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v45 - v10;
  v12 = type metadata accessor for PhotosPersonAsset(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDA0, &qword_1D2882D20);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v45 - v16;
  v18 = type metadata accessor for CharacterAsset(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[3] = a3;
  v50[4] = a4;
  v48 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_1D22D7044(v50, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
  v23 = swift_dynamicCast();
  v24 = *(v19 + 56);
  if (v23)
  {
    v24(v17, 0, 1, v18);
    sub_1D2687494(v17, v21, type metadata accessor for CharacterAsset);
    v25 = CharacterAsset.id.getter();
    v27 = v26;
    sub_1D2687564(v21, type metadata accessor for CharacterAsset);
LABEL_3:
    v28 = v47;
    v29 = sub_1D23C6DDC();
    sub_1D2612E14(v25, v27);

LABEL_15:
    sub_1D2677A78(boxed_opaque_existential_1, *(v28 + 40), a3, v48);
    __swift_destroy_boxed_opaque_existential_0(v50);
    return;
  }

  v24(v17, 1, 1, v18);
  sub_1D22BD238(v17, &unk_1EC6DDDA0, &qword_1D2882D20);
  sub_1D22D7044(v50, v49);
  v30 = swift_dynamicCast();
  v31 = *(v13 + 56);
  if ((v30 & 1) == 0)
  {
    v31(v11, 1, 1, v12);
    v41 = &unk_1EC6DDDC0;
    v42 = &unk_1D2881BE0;
    v43 = v11;
LABEL_14:
    sub_1D22BD238(v43, v41, v42);
    v28 = v47;
    goto LABEL_15;
  }

  v31(v11, 0, 1, v12);
  v32 = v45;
  sub_1D2687494(v11, v45, type metadata accessor for PhotosPersonAsset);
  v33 = *(v32 + 56);
  if (!v33)
  {
    v44 = sub_1D2871818();
    v36 = v46;
    (*(*(v44 - 8) + 56))(v46, 1, 1, v44);
LABEL_13:
    sub_1D2687564(v32, type metadata accessor for PhotosPersonAsset);
    v41 = &qword_1EC6D8F70;
    v42 = &qword_1D2881410;
    v43 = v36;
    goto LABEL_14;
  }

  v34 = v33;
  v35 = [v34 localIdentifier];
  v36 = v46;
  if (!v35)
  {
    sub_1D28780A8();
    v35 = sub_1D2878068();
  }

  v37 = [objc_opt_self() uuidFromLocalIdentifier_];

  if (v37)
  {
    sub_1D28780A8();

    sub_1D28717A8();

    v38 = sub_1D2871818();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v36, 1, v38) != 1)
    {
      v25 = sub_1D28717B8();
      v27 = v40;
      sub_1D2687564(v32, type metadata accessor for PhotosPersonAsset);
      (*(v39 + 8))(v36, v38);
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  __break(1u);
}

void sub_1D2683500(uint64_t a1, uint64_t a2)
{
  v138 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B0, &qword_1D289B2F0);
  MEMORY[0x1EEE9AC00](v117);
  v118 = &v113 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200, &qword_1D289B260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v115 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v125 = &v113 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v113 - v9;
  v130 = type metadata accessor for SketchConditioningImage(0);
  v133 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v113 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v123 = &v113 - v12;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B8, &unk_1D289B410);
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v113 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8, &unk_1D28826F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v116 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v122 = &v113 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v128 = &v113 - v19;
  v131 = type metadata accessor for SceneConditioningImage(0);
  v134 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v121 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v114 = &v113 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v129 = &v113 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20, &unk_1D287EC80);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v137 = &v113 - v26;
  v27 = sub_1D2872008();
  v135 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v113 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for Prompt(0);
  v30 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v127 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v113 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v132 = &v113 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210, &unk_1D2886B20);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v126 = &v113 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v113 - v40;
  v42 = type metadata accessor for CuratedPrompt(0);
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v113 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v113 - v47;
  v142[3] = v49;
  v142[4] = sub_1D26875E8(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt, &unk_1D28ABF9C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v142);
  sub_1D26874FC(a1, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
  sub_1D22D7044(v142, v139);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
  v52 = swift_dynamicCast();
  v53 = *(v43 + 56);
  if (v52)
  {
    v53(v41, 0, 1, v42);
    sub_1D2687494(v41, v48, type metadata accessor for CuratedPrompt);
    sub_1D26760C4(v48);
    v54 = type metadata accessor for CuratedPrompt;
    v55 = v48;
LABEL_3:
    sub_1D2687564(v55, v54);
LABEL_13:
    sub_1D267F6F0();
    sub_1D267E8EC();
    __swift_destroy_boxed_opaque_existential_0(v142);
    return;
  }

  v56 = v138;
  v53(v41, 1, 1, v42);
  sub_1D22BD238(v41, &qword_1EC6DA210, &unk_1D2886B20);
  sub_1D22D7044(v142, v139);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D22D7044(v142, v139);
    if (swift_dynamicCast())
    {
      (*(v135 + 8))(v29, v27);
      goto LABEL_13;
    }

    sub_1D22D7044(v142, v139);
    v63 = v137;
    v64 = v136;
    v65 = swift_dynamicCast();
    v66 = *(v30 + 56);
    if (v65)
    {
      v66(v63, 0, 1, v64);
      v67 = v127;
      sub_1D2687494(v63, v127, type metadata accessor for Prompt);
      v68 = v126;
      sub_1D2681054(v67, v126);
      if ((*(v43 + 48))(v68, 1, v42) == 1)
      {
        sub_1D22BD238(v68, &qword_1EC6DA210, &unk_1D2886B20);
        sub_1D2675C1C(v67);
      }

      else
      {
        sub_1D2687494(v68, v45, type metadata accessor for CuratedPrompt);
        sub_1D26760C4(v45);
        sub_1D2687564(v45, type metadata accessor for CuratedPrompt);
      }

      sub_1D2680C6C(v67, v139);
      if (v140)
      {
        sub_1D22BD238(v139, &qword_1EC6DF7A8, &qword_1D289B1B8);
        sub_1D2677178();
        v87 = sub_1D23C6DDC();
        sub_1D2612BDC(MEMORY[0x1E69E7CC0]);
      }

      v54 = type metadata accessor for Prompt;
      v55 = v67;
      goto LABEL_3;
    }

    v66(v63, 1, 1, v64);
    sub_1D22BD238(v63, &unk_1EC6E1D20, &unk_1D287EC80);
    sub_1D22D7044(v142, v139);
    v70 = v128;
    v137 = v51;
    v71 = v131;
    v72 = swift_dynamicCast();
    v73 = *(v134 + 56);
    v74 = v56;
    if ((v72 & 1) == 0)
    {
      v73(v70, 1, 1, v71);
      sub_1D22BD238(v70, &qword_1EC6DA2C8, &unk_1D28826F0);
      v88 = v125;
      v85 = v130;
      v86 = v133;
      v89 = v124;
      goto LABEL_37;
    }

    v73(v70, 0, 1, v71);
    v75 = v70;
    v76 = v129;
    sub_1D2687494(v75, v129, type metadata accessor for SceneConditioningImage);
    v77 = v122;
    sub_1D26874FC(v76, v122, type metadata accessor for SceneConditioningImage);
    v73(v77, 0, 1, v71);
    v78 = *(v56 + 40);
    v79 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
    swift_beginAccess();
    v80 = *(v119 + 48);
    v81 = v120;
    sub_1D22BD1D0(v77, v120, &qword_1EC6DA2C8, &unk_1D28826F0);
    v82 = v134;
    sub_1D22BD1D0(v78 + v79, v81 + v80, &qword_1EC6DA2C8, &unk_1D28826F0);
    v83 = *(v82 + 48);
    v84 = v83(v81, 1, v71);
    v85 = v130;
    v86 = v133;
    if (v84 == 1)
    {
      sub_1D22BD238(v77, &qword_1EC6DA2C8, &unk_1D28826F0);
      if (v83(v81 + v80, 1, v71) == 1)
      {
LABEL_21:
        sub_1D22BD238(v81, &qword_1EC6DA2C8, &unk_1D28826F0);
        sub_1D2676F44();
        v54 = type metadata accessor for SceneConditioningImage;
        v55 = v129;
        goto LABEL_3;
      }

      goto LABEL_29;
    }

    v90 = v116;
    sub_1D22BD1D0(v81, v116, &qword_1EC6DA2C8, &unk_1D28826F0);
    if (v83(v81 + v80, 1, v71) == 1)
    {
      sub_1D22BD238(v122, &qword_1EC6DA2C8, &unk_1D28826F0);
      sub_1D2687564(v90, type metadata accessor for SceneConditioningImage);
LABEL_29:
      sub_1D22BD238(v81, &qword_1EC6DF7B8, &unk_1D289B410);
      v89 = v124;
      v88 = v125;
LABEL_36:
      sub_1D2687564(v129, type metadata accessor for SceneConditioningImage);
LABEL_37:
      sub_1D22D7044(v142, v139);
      v97 = swift_dynamicCast();
      v98 = *(v86 + 56);
      if (!v97)
      {
        v98(v89, 1, 1, v85);
        sub_1D22BD238(v89, &qword_1EC6DA200, &qword_1D289B260);
        goto LABEL_46;
      }

      v98(v89, 0, 1, v85);
      v99 = v123;
      sub_1D2687494(v89, v123, type metadata accessor for SketchConditioningImage);
      sub_1D26874FC(v99, v88, type metadata accessor for SketchConditioningImage);
      v98(v88, 0, 1, v85);
      v100 = *(v74 + 40);
      v101 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
      swift_beginAccess();
      v102 = *(v117 + 48);
      v103 = v118;
      sub_1D22BD1D0(v88, v118, &qword_1EC6DA200, &qword_1D289B260);
      v104 = v103 + v102;
      v105 = v103;
      v106 = v133;
      sub_1D22BD1D0(v100 + v101, v104, &qword_1EC6DA200, &qword_1D289B260);
      v107 = *(v106 + 48);
      if (v107(v105, 1, v85) == 1)
      {
        sub_1D22BD238(v88, &qword_1EC6DA200, &qword_1D289B260);
        if (v107(v105 + v102, 1, v85) == 1)
        {
          sub_1D22BD238(v105, &qword_1EC6DA200, &qword_1D289B260);
LABEL_49:
          sub_1D26767F4();
          v54 = type metadata accessor for SketchConditioningImage;
          v55 = v123;
          goto LABEL_3;
        }
      }

      else
      {
        v108 = v115;
        sub_1D22BD1D0(v105, v115, &qword_1EC6DA200, &qword_1D289B260);
        if (v107(v105 + v102, 1, v85) != 1)
        {
          v110 = v105 + v102;
          v111 = v113;
          sub_1D2687494(v110, v113, type metadata accessor for SketchConditioningImage);
          type metadata accessor for PlaygroundImage(0);
          v112 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
          sub_1D2687564(v111, type metadata accessor for SketchConditioningImage);
          sub_1D22BD238(v88, &qword_1EC6DA200, &qword_1D289B260);
          sub_1D2687564(v108, type metadata accessor for SketchConditioningImage);
          sub_1D22BD238(v105, &qword_1EC6DA200, &qword_1D289B260);
          if (v112)
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        sub_1D22BD238(v88, &qword_1EC6DA200, &qword_1D289B260);
        sub_1D2687564(v108, type metadata accessor for SketchConditioningImage);
      }

      sub_1D22BD238(v105, &qword_1EC6DF7B0, &qword_1D289B2F0);
LABEL_45:
      sub_1D2687564(v123, type metadata accessor for SketchConditioningImage);
LABEL_46:
      sub_1D22D7044(v142, v139);
      v109 = v121;
      if (swift_dynamicCast())
      {
        sub_1D2687564(v109, type metadata accessor for SceneConditioningImage);
        sub_1D2676F44();
        sub_1D26767F4();
      }

      goto LABEL_13;
    }

    v91 = v81 + v80;
    v92 = v114;
    sub_1D2687494(v91, v114, type metadata accessor for SceneConditioningImage);
    type metadata accessor for PlaygroundImage(0);
    v93 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
    sub_1D22BD238(v122, &qword_1EC6DA2C8, &unk_1D28826F0);
    v88 = v125;
    if (v93)
    {
      v94 = *(v71 + 20);
      v95 = *(v90 + v94);
      v96 = *(v92 + v94);
      sub_1D2687564(v92, type metadata accessor for SceneConditioningImage);
      v89 = v124;
      if (v95 == 2)
      {
        if (v96 == 2)
        {
LABEL_52:
          sub_1D2687564(v116, type metadata accessor for SceneConditioningImage);
          goto LABEL_21;
        }
      }

      else if (v96 != 2 && ((v96 ^ v95) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_1D2687564(v92, type metadata accessor for SceneConditioningImage);
      v89 = v124;
    }

    sub_1D2687564(v116, type metadata accessor for SceneConditioningImage);
    sub_1D22BD238(v81, &qword_1EC6DA2C8, &unk_1D28826F0);
    goto LABEL_36;
  }

  __swift_destroy_boxed_opaque_existential_0(&v141);
  v57 = *(v56 + 40);
  sub_1D2677178();
  v58 = sub_1D23C6DDC();
  sub_1D2612BDC(MEMORY[0x1E69E7CC0]);

  v59 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v60 = *(v57 + v59);
  v61 = *(v60 + 16);
  sub_1D2870F68();
  if (!v61)
  {
LABEL_10:

    goto LABEL_13;
  }

  v62 = 0;
  while (v62 < *(v60 + 16))
  {
    sub_1D26874FC(v60 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v62, v34, type metadata accessor for Prompt);
    sub_1D2680C6C(v34, v139);
    if (v140)
    {

      sub_1D22BD238(v139, &qword_1EC6DF7A8, &qword_1D289B1B8);
      v69 = v132;
      sub_1D2687494(v34, v132, type metadata accessor for Prompt);
      sub_1D2675C1C(v69);
      v54 = type metadata accessor for Prompt;
      v55 = v69;
      goto LABEL_3;
    }

    ++v62;
    sub_1D2687564(v34, type metadata accessor for Prompt);
    if (v61 == v62)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1D26848F0(uint64_t a1, uint64_t a2)
{
  v137 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B0, &qword_1D289B2F0);
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v112 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200, &qword_1D289B260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v114 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v124 = &v112 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v123 = &v112 - v9;
  v129 = type metadata accessor for SketchConditioningImage(0);
  v132 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v112 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v122 = &v112 - v12;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B8, &unk_1D289B410);
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v112 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8, &unk_1D28826F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v115 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v121 = &v112 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v112 - v19;
  v130 = type metadata accessor for SceneConditioningImage(0);
  v133 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v120 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v113 = &v112 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v128 = &v112 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20, &unk_1D287EC80);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v136 = &v112 - v26;
  v27 = sub_1D2872008();
  v134 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v112 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for Prompt(0);
  v30 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v126 = &v112 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v112 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v131 = &v112 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210, &unk_1D2886B20);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v125 = &v112 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v112 - v40;
  v42 = type metadata accessor for CuratedPrompt(0);
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v112 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v112 - v47;
  v141[3] = type metadata accessor for CharacterAsset(0);
  v141[4] = sub_1D26875E8(&qword_1EC6D9A78, type metadata accessor for CharacterAsset, &unk_1D289B5E4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v141);
  sub_1D26874FC(a1, boxed_opaque_existential_1, type metadata accessor for CharacterAsset);
  sub_1D22D7044(v141, v138);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
  v51 = swift_dynamicCast();
  v52 = *(v43 + 56);
  if (v51)
  {
    v52(v41, 0, 1, v42);
    sub_1D2687494(v41, v48, type metadata accessor for CuratedPrompt);
    sub_1D26760C4(v48);
    v53 = type metadata accessor for CuratedPrompt;
    v54 = v48;
LABEL_3:
    sub_1D2687564(v54, v53);
LABEL_13:
    sub_1D267F6F0();
    sub_1D267E8EC();
    __swift_destroy_boxed_opaque_existential_0(v141);
    return;
  }

  v55 = v137;
  v52(v41, 1, 1, v42);
  sub_1D22BD238(v41, &qword_1EC6DA210, &unk_1D2886B20);
  sub_1D22D7044(v141, v138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D22D7044(v141, v138);
    if (swift_dynamicCast())
    {
      (*(v134 + 8))(v29, v27);
      goto LABEL_13;
    }

    sub_1D22D7044(v141, v138);
    v62 = v136;
    v63 = v135;
    v64 = swift_dynamicCast();
    v65 = *(v30 + 56);
    if (v64)
    {
      v65(v62, 0, 1, v63);
      v66 = v126;
      sub_1D2687494(v62, v126, type metadata accessor for Prompt);
      v67 = v125;
      sub_1D2681054(v66, v125);
      if ((*(v43 + 48))(v67, 1, v42) == 1)
      {
        sub_1D22BD238(v67, &qword_1EC6DA210, &unk_1D2886B20);
        sub_1D2675C1C(v66);
      }

      else
      {
        sub_1D2687494(v67, v45, type metadata accessor for CuratedPrompt);
        sub_1D26760C4(v45);
        sub_1D2687564(v45, type metadata accessor for CuratedPrompt);
      }

      sub_1D2680C6C(v66, v138);
      if (v139)
      {
        sub_1D22BD238(v138, &qword_1EC6DF7A8, &qword_1D289B1B8);
        sub_1D2677178();
        v86 = sub_1D23C6DDC();
        sub_1D2612BDC(MEMORY[0x1E69E7CC0]);
      }

      v53 = type metadata accessor for Prompt;
      v54 = v66;
      goto LABEL_3;
    }

    v65(v62, 1, 1, v63);
    sub_1D22BD238(v62, &unk_1EC6E1D20, &unk_1D287EC80);
    sub_1D22D7044(v141, v138);
    v69 = v127;
    v136 = v50;
    v70 = v130;
    v71 = swift_dynamicCast();
    v72 = *(v133 + 56);
    v73 = v55;
    if ((v71 & 1) == 0)
    {
      v72(v69, 1, 1, v70);
      sub_1D22BD238(v69, &qword_1EC6DA2C8, &unk_1D28826F0);
      v87 = v124;
      v84 = v129;
      v85 = v132;
      v88 = v123;
      goto LABEL_37;
    }

    v72(v69, 0, 1, v70);
    v74 = v69;
    v75 = v128;
    sub_1D2687494(v74, v128, type metadata accessor for SceneConditioningImage);
    v76 = v121;
    sub_1D26874FC(v75, v121, type metadata accessor for SceneConditioningImage);
    v72(v76, 0, 1, v70);
    v77 = *(v55 + 40);
    v78 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
    swift_beginAccess();
    v79 = *(v118 + 48);
    v80 = v119;
    sub_1D22BD1D0(v76, v119, &qword_1EC6DA2C8, &unk_1D28826F0);
    v81 = v133;
    sub_1D22BD1D0(v77 + v78, v80 + v79, &qword_1EC6DA2C8, &unk_1D28826F0);
    v82 = *(v81 + 48);
    v83 = v82(v80, 1, v70);
    v84 = v129;
    v85 = v132;
    if (v83 == 1)
    {
      sub_1D22BD238(v76, &qword_1EC6DA2C8, &unk_1D28826F0);
      if (v82(v80 + v79, 1, v70) == 1)
      {
LABEL_21:
        sub_1D22BD238(v80, &qword_1EC6DA2C8, &unk_1D28826F0);
        sub_1D2676F44();
        v53 = type metadata accessor for SceneConditioningImage;
        v54 = v128;
        goto LABEL_3;
      }

      goto LABEL_29;
    }

    v89 = v115;
    sub_1D22BD1D0(v80, v115, &qword_1EC6DA2C8, &unk_1D28826F0);
    if (v82(v80 + v79, 1, v70) == 1)
    {
      sub_1D22BD238(v121, &qword_1EC6DA2C8, &unk_1D28826F0);
      sub_1D2687564(v89, type metadata accessor for SceneConditioningImage);
LABEL_29:
      sub_1D22BD238(v80, &qword_1EC6DF7B8, &unk_1D289B410);
      v88 = v123;
      v87 = v124;
LABEL_36:
      sub_1D2687564(v128, type metadata accessor for SceneConditioningImage);
LABEL_37:
      sub_1D22D7044(v141, v138);
      v96 = swift_dynamicCast();
      v97 = *(v85 + 56);
      if (!v96)
      {
        v97(v88, 1, 1, v84);
        sub_1D22BD238(v88, &qword_1EC6DA200, &qword_1D289B260);
        goto LABEL_46;
      }

      v97(v88, 0, 1, v84);
      v98 = v122;
      sub_1D2687494(v88, v122, type metadata accessor for SketchConditioningImage);
      sub_1D26874FC(v98, v87, type metadata accessor for SketchConditioningImage);
      v97(v87, 0, 1, v84);
      v99 = *(v73 + 40);
      v100 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
      swift_beginAccess();
      v101 = *(v116 + 48);
      v102 = v117;
      sub_1D22BD1D0(v87, v117, &qword_1EC6DA200, &qword_1D289B260);
      v103 = v102 + v101;
      v104 = v102;
      v105 = v132;
      sub_1D22BD1D0(v99 + v100, v103, &qword_1EC6DA200, &qword_1D289B260);
      v106 = *(v105 + 48);
      if (v106(v104, 1, v84) == 1)
      {
        sub_1D22BD238(v87, &qword_1EC6DA200, &qword_1D289B260);
        if (v106(v104 + v101, 1, v84) == 1)
        {
          sub_1D22BD238(v104, &qword_1EC6DA200, &qword_1D289B260);
LABEL_49:
          sub_1D26767F4();
          v53 = type metadata accessor for SketchConditioningImage;
          v54 = v122;
          goto LABEL_3;
        }
      }

      else
      {
        v107 = v114;
        sub_1D22BD1D0(v104, v114, &qword_1EC6DA200, &qword_1D289B260);
        if (v106(v104 + v101, 1, v84) != 1)
        {
          v109 = v104 + v101;
          v110 = v112;
          sub_1D2687494(v109, v112, type metadata accessor for SketchConditioningImage);
          type metadata accessor for PlaygroundImage(0);
          v111 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
          sub_1D2687564(v110, type metadata accessor for SketchConditioningImage);
          sub_1D22BD238(v87, &qword_1EC6DA200, &qword_1D289B260);
          sub_1D2687564(v107, type metadata accessor for SketchConditioningImage);
          sub_1D22BD238(v104, &qword_1EC6DA200, &qword_1D289B260);
          if (v111)
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        sub_1D22BD238(v87, &qword_1EC6DA200, &qword_1D289B260);
        sub_1D2687564(v107, type metadata accessor for SketchConditioningImage);
      }

      sub_1D22BD238(v104, &qword_1EC6DF7B0, &qword_1D289B2F0);
LABEL_45:
      sub_1D2687564(v122, type metadata accessor for SketchConditioningImage);
LABEL_46:
      sub_1D22D7044(v141, v138);
      v108 = v120;
      if (swift_dynamicCast())
      {
        sub_1D2687564(v108, type metadata accessor for SceneConditioningImage);
        sub_1D2676F44();
        sub_1D26767F4();
      }

      goto LABEL_13;
    }

    v90 = v80 + v79;
    v91 = v113;
    sub_1D2687494(v90, v113, type metadata accessor for SceneConditioningImage);
    type metadata accessor for PlaygroundImage(0);
    v92 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
    sub_1D22BD238(v121, &qword_1EC6DA2C8, &unk_1D28826F0);
    v87 = v124;
    if (v92)
    {
      v93 = *(v70 + 20);
      v94 = *(v89 + v93);
      v95 = *(v91 + v93);
      sub_1D2687564(v91, type metadata accessor for SceneConditioningImage);
      v88 = v123;
      if (v94 == 2)
      {
        if (v95 == 2)
        {
LABEL_52:
          sub_1D2687564(v115, type metadata accessor for SceneConditioningImage);
          goto LABEL_21;
        }
      }

      else if (v95 != 2 && ((v95 ^ v94) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_1D2687564(v91, type metadata accessor for SceneConditioningImage);
      v88 = v123;
    }

    sub_1D2687564(v115, type metadata accessor for SceneConditioningImage);
    sub_1D22BD238(v80, &qword_1EC6DA2C8, &unk_1D28826F0);
    goto LABEL_36;
  }

  __swift_destroy_boxed_opaque_existential_0(&v140);
  v56 = *(v55 + 40);
  sub_1D2677178();
  v57 = sub_1D23C6DDC();
  sub_1D2612BDC(MEMORY[0x1E69E7CC0]);

  v58 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v59 = *(v56 + v58);
  v60 = *(v59 + 16);
  sub_1D2870F68();
  if (!v60)
  {
LABEL_10:

    goto LABEL_13;
  }

  v61 = 0;
  while (v61 < *(v59 + 16))
  {
    sub_1D26874FC(v59 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v61, v34, type metadata accessor for Prompt);
    sub_1D2680C6C(v34, v138);
    if (v139)
    {

      sub_1D22BD238(v138, &qword_1EC6DF7A8, &qword_1D289B1B8);
      v68 = v131;
      sub_1D2687494(v34, v131, type metadata accessor for Prompt);
      sub_1D2675C1C(v68);
      v53 = type metadata accessor for Prompt;
      v54 = v68;
      goto LABEL_3;
    }

    ++v61;
    sub_1D2687564(v34, type metadata accessor for Prompt);
    if (v60 == v61)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1D2685CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v143 = a4;
  v144 = a2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B0, &qword_1D289B2F0);
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v117 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA200, &qword_1D289B260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v119 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v131 = &v117 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v117 - v12;
  v130 = type metadata accessor for SketchConditioningImage(0);
  v139 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v117 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v128 = &v117 - v15;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7B8, &unk_1D289B410);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v117 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2C8, &unk_1D28826F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v120 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v127 = &v117 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v134 = &v117 - v22;
  v137 = type metadata accessor for SceneConditioningImage(0);
  v135 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v126 = &v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v118 = &v117 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v136 = &v117 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20, &unk_1D287EC80);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v142 = &v117 - v29;
  v30 = sub_1D2872008();
  v140 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v117 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for Prompt(0);
  v33 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v133 = &v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v117 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v138 = &v117 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210, &unk_1D2886B20);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v132 = &v117 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v117 - v43;
  v45 = type metadata accessor for CuratedPrompt(0);
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v123 = &v117 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v117 - v49;
  v148[3] = a3;
  v148[4] = v143;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v148);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_1D22D7044(v148, v145);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
  v53 = swift_dynamicCast();
  v54 = *(v46 + 56);
  if (v53)
  {
    v54(v44, 0, 1, v45);
    sub_1D2687494(v44, v50, type metadata accessor for CuratedPrompt);
    sub_1D26760C4(v50);
    v55 = type metadata accessor for CuratedPrompt;
    v56 = v50;
LABEL_3:
    sub_1D2687564(v56, v55);
LABEL_13:
    sub_1D267F6F0();
    sub_1D267E8EC();
    __swift_destroy_boxed_opaque_existential_0(v148);
    return;
  }

  v57 = v144;
  v54(v44, 1, 1, v45);
  sub_1D22BD238(v44, &qword_1EC6DA210, &unk_1D2886B20);
  sub_1D22D7044(v148, v145);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D22D7044(v148, v145);
    v64 = v57;
    if (swift_dynamicCast())
    {
      (*(v140 + 8))(v32, v30);
      goto LABEL_13;
    }

    sub_1D22D7044(v148, v145);
    v65 = v142;
    v66 = v141;
    v67 = swift_dynamicCast();
    v68 = *(v33 + 56);
    if (v67)
    {
      v68(v65, 0, 1, v66);
      v69 = v133;
      sub_1D2687494(v65, v133, type metadata accessor for Prompt);
      v70 = v132;
      sub_1D2681054(v69, v132);
      if ((*(v46 + 48))(v70, 1, v45) == 1)
      {
        sub_1D22BD238(v70, &qword_1EC6DA210, &unk_1D2886B20);
        sub_1D2675C1C(v69);
      }

      else
      {
        v88 = v123;
        sub_1D2687494(v70, v123, type metadata accessor for CuratedPrompt);
        sub_1D26760C4(v88);
        sub_1D2687564(v88, type metadata accessor for CuratedPrompt);
      }

      sub_1D2680C6C(v69, v145);
      if (v146)
      {
        sub_1D22BD238(v145, &qword_1EC6DF7A8, &qword_1D289B1B8);
        sub_1D2677178();
        v89 = sub_1D23C6DDC();
        sub_1D2612BDC(MEMORY[0x1E69E7CC0]);
      }

      v55 = type metadata accessor for Prompt;
      v56 = v69;
      goto LABEL_3;
    }

    v68(v65, 1, 1, v66);
    sub_1D22BD238(v65, &unk_1EC6E1D20, &unk_1D287EC80);
    sub_1D22D7044(v148, v145);
    v72 = v134;
    v143 = v52;
    v73 = v137;
    v74 = swift_dynamicCast();
    v75 = v135;
    v76 = *(v135 + 56);
    if ((v74 & 1) == 0)
    {
      v76(v72, 1, 1, v73);
      sub_1D22BD238(v72, &qword_1EC6DA2C8, &unk_1D28826F0);
      v90 = v131;
      v91 = v130;
      v87 = v139;
      v92 = v129;
      goto LABEL_37;
    }

    v76(v72, 0, 1, v73);
    v77 = v72;
    v78 = v136;
    sub_1D2687494(v77, v136, type metadata accessor for SceneConditioningImage);
    v79 = v73;
    v80 = v127;
    sub_1D26874FC(v78, v127, type metadata accessor for SceneConditioningImage);
    v76(v80, 0, 1, v79);
    v81 = *(v64 + 40);
    v82 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_importedSceneImage;
    swift_beginAccess();
    v83 = *(v124 + 48);
    v84 = v125;
    sub_1D22BD1D0(v80, v125, &qword_1EC6DA2C8, &unk_1D28826F0);
    sub_1D22BD1D0(v81 + v82, v84 + v83, &qword_1EC6DA2C8, &unk_1D28826F0);
    v85 = *(v75 + 48);
    v86 = v85(v84, 1, v79);
    v87 = v139;
    if (v86 == 1)
    {
      sub_1D22BD238(v80, &qword_1EC6DA2C8, &unk_1D28826F0);
      if (v85(v84 + v83, 1, v79) == 1)
      {
LABEL_21:
        sub_1D22BD238(v84, &qword_1EC6DA2C8, &unk_1D28826F0);
        sub_1D2676F44();
        v55 = type metadata accessor for SceneConditioningImage;
        v56 = v136;
        goto LABEL_3;
      }

      goto LABEL_29;
    }

    v93 = v120;
    sub_1D22BD1D0(v84, v120, &qword_1EC6DA2C8, &unk_1D28826F0);
    v94 = v79;
    if (v85(v84 + v83, 1, v79) == 1)
    {
      sub_1D22BD238(v127, &qword_1EC6DA2C8, &unk_1D28826F0);
      sub_1D2687564(v93, type metadata accessor for SceneConditioningImage);
LABEL_29:
      sub_1D22BD238(v84, &qword_1EC6DF7B8, &unk_1D289B410);
      v92 = v129;
      v90 = v131;
      v91 = v130;
LABEL_36:
      sub_1D2687564(v136, type metadata accessor for SceneConditioningImage);
LABEL_37:
      sub_1D22D7044(v148, v145);
      v101 = swift_dynamicCast();
      v102 = *(v87 + 56);
      if (!v101)
      {
        v102(v92, 1, 1, v91);
        sub_1D22BD238(v92, &qword_1EC6DA200, &qword_1D289B260);
        goto LABEL_46;
      }

      v102(v92, 0, 1, v91);
      v103 = v128;
      sub_1D2687494(v92, v128, type metadata accessor for SketchConditioningImage);
      sub_1D26874FC(v103, v90, type metadata accessor for SketchConditioningImage);
      v102(v90, 0, 1, v91);
      v104 = *(v64 + 40);
      v105 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_sketchPlaygroundImage;
      swift_beginAccess();
      v106 = *(v121 + 48);
      v107 = v122;
      sub_1D22BD1D0(v90, v122, &qword_1EC6DA200, &qword_1D289B260);
      v108 = v107 + v106;
      v109 = v107;
      v110 = v139;
      sub_1D22BD1D0(v104 + v105, v108, &qword_1EC6DA200, &qword_1D289B260);
      v111 = *(v110 + 48);
      if (v111(v109, 1, v91) == 1)
      {
        sub_1D22BD238(v90, &qword_1EC6DA200, &qword_1D289B260);
        if (v111(v109 + v106, 1, v91) == 1)
        {
          sub_1D22BD238(v109, &qword_1EC6DA200, &qword_1D289B260);
LABEL_49:
          sub_1D26767F4();
          v55 = type metadata accessor for SketchConditioningImage;
          v56 = v128;
          goto LABEL_3;
        }
      }

      else
      {
        v112 = v119;
        sub_1D22BD1D0(v109, v119, &qword_1EC6DA200, &qword_1D289B260);
        if (v111(v109 + v106, 1, v91) != 1)
        {
          v114 = v109 + v106;
          v115 = v117;
          sub_1D2687494(v114, v117, type metadata accessor for SketchConditioningImage);
          type metadata accessor for PlaygroundImage(0);
          v116 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
          sub_1D2687564(v115, type metadata accessor for SketchConditioningImage);
          sub_1D22BD238(v90, &qword_1EC6DA200, &qword_1D289B260);
          sub_1D2687564(v112, type metadata accessor for SketchConditioningImage);
          sub_1D22BD238(v109, &qword_1EC6DA200, &qword_1D289B260);
          if (v116)
          {
            goto LABEL_49;
          }

          goto LABEL_45;
        }

        sub_1D22BD238(v90, &qword_1EC6DA200, &qword_1D289B260);
        sub_1D2687564(v112, type metadata accessor for SketchConditioningImage);
      }

      sub_1D22BD238(v109, &qword_1EC6DF7B0, &qword_1D289B2F0);
LABEL_45:
      sub_1D2687564(v128, type metadata accessor for SketchConditioningImage);
LABEL_46:
      sub_1D22D7044(v148, v145);
      v113 = v126;
      if (swift_dynamicCast())
      {
        sub_1D2687564(v113, type metadata accessor for SceneConditioningImage);
        sub_1D2676F44();
        sub_1D26767F4();
      }

      goto LABEL_13;
    }

    v95 = v84 + v83;
    v96 = v118;
    sub_1D2687494(v95, v118, type metadata accessor for SceneConditioningImage);
    type metadata accessor for PlaygroundImage(0);
    v97 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
    sub_1D22BD238(v127, &qword_1EC6DA2C8, &unk_1D28826F0);
    v90 = v131;
    v91 = v130;
    if (v97)
    {
      v98 = *(v94 + 20);
      v99 = *(v93 + v98);
      v100 = *(v96 + v98);
      sub_1D2687564(v96, type metadata accessor for SceneConditioningImage);
      v92 = v129;
      if (v99 == 2)
      {
        if (v100 == 2)
        {
LABEL_52:
          sub_1D2687564(v120, type metadata accessor for SceneConditioningImage);
          goto LABEL_21;
        }
      }

      else if (v100 != 2 && ((v100 ^ v99) & 1) == 0)
      {
        goto LABEL_52;
      }
    }

    else
    {
      sub_1D2687564(v96, type metadata accessor for SceneConditioningImage);
      v92 = v129;
    }

    sub_1D2687564(v120, type metadata accessor for SceneConditioningImage);
    sub_1D22BD238(v84, &qword_1EC6DA2C8, &unk_1D28826F0);
    goto LABEL_36;
  }

  __swift_destroy_boxed_opaque_existential_0(&v147);
  v58 = *(v57 + 40);
  sub_1D2677178();
  v59 = sub_1D23C6DDC();
  sub_1D2612BDC(MEMORY[0x1E69E7CC0]);

  v60 = OBJC_IVAR____TtC23ImagePlaygroundInternal15CreationContext_prompts;
  swift_beginAccess();
  v61 = *(v58 + v60);
  v62 = *(v61 + 16);
  sub_1D2870F68();
  if (!v62)
  {
LABEL_10:

    goto LABEL_13;
  }

  v63 = 0;
  while (v63 < *(v61 + 16))
  {
    sub_1D26874FC(v61 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v63, v37, type metadata accessor for Prompt);
    sub_1D2680C6C(v37, v145);
    if (v146)
    {

      sub_1D22BD238(v145, &qword_1EC6DF7A8, &qword_1D289B1B8);
      v71 = v138;
      sub_1D2687494(v37, v138, type metadata accessor for Prompt);
      sub_1D2675C1C(v71);
      v55 = type metadata accessor for Prompt;
      v56 = v71;
      goto LABEL_3;
    }

    ++v63;
    sub_1D2687564(v37, type metadata accessor for Prompt);
    if (v62 == v63)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1D26870D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = a2 + 32;
  v14 = v4;
  v15 = a2;
  v13 = a2 + 32;
  do
  {
    v6 = v4 + 40 * v3;
    v7 = *(a2 + 16) + 1;
    while (--v7)
    {
      v8 = v5 + 40;
      sub_1D22D7044(v5, v16);
      v9 = v17;
      v10 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v11 = (*(v10 + 56))(v6, v9, v10);
      __swift_destroy_boxed_opaque_existential_0(v16);
      v5 = v8;
      if (v11)
      {
        return v3;
      }
    }

    ++v3;
    v4 = v14;
    a2 = v15;
    v5 = v13;
  }

  while (v3 != v2);
  return 0;
}

uint64_t sub_1D26871E4(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *a1;
  result = sub_1D26870D4(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return v5[2];
  }

  v21 = a1;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v22 = v3;
    v23 = v3 + 32;
LABEL_9:
    while (1)
    {
      v11 = v5[2];
      if (v9 == v11)
      {
        return v8;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        break;
      }

      v28 = v5;
      v12 = v5 + 4;
      sub_1D22D7044(&v12[5 * v9], v27);
      v13 = *(v3 + 16) + 1;
      v14 = v23;
      while (--v13)
      {
        v15 = v14 + 40;
        sub_1D22D7044(v14, &v24);
        v16 = v25;
        v17 = v26;
        __swift_project_boxed_opaque_existential_1(&v24, v25);
        v18 = (*(v17 + 56))(v27, v16, v17);
        __swift_destroy_boxed_opaque_existential_0(&v24);
        v14 = v15;
        if (v18)
        {
          result = __swift_destroy_boxed_opaque_existential_0(v27);
          v3 = v22;
          v5 = v28;
          v10 = __OFADD__(v9++, 1);
          if (v10)
          {
            goto LABEL_27;
          }

          goto LABEL_9;
        }
      }

      result = __swift_destroy_boxed_opaque_existential_0(v27);
      if (v8 == v9)
      {
        v5 = v28;
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_29;
        }

        v19 = v28[2];
        if (v8 >= v19)
        {
          goto LABEL_30;
        }

        result = sub_1D22D7044(&v12[5 * v8], v27);
        if (v9 >= v19)
        {
          goto LABEL_31;
        }

        sub_1D22D7044(&v12[5 * v9], &v24);
        v5 = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D278BCE0(v5);
        }

        v20 = v5 + 4;
        __swift_destroy_boxed_opaque_existential_0(&v5[5 * v8 + 4]);
        result = sub_1D227268C(&v24, &v5[5 * v8 + 4]);
        if (v9 >= v5[2])
        {
          goto LABEL_32;
        }

        __swift_destroy_boxed_opaque_existential_0(&v20[5 * v9]);
        result = sub_1D227268C(v27, &v20[5 * v9]);
        *v21 = v5;
      }

      v10 = __OFADD__(v8++, 1);
      v3 = v22;
      if (v10)
      {
        goto LABEL_28;
      }

      v10 = __OFADD__(v9++, 1);
      if (v10)
      {
        goto LABEL_27;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D268742C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2687494(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26874FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2687564(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D26875E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D268764C(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v2[10] = sub_1D2878568();
  v2[11] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D26876E8, v4, v3);
}

uint64_t sub_1D26876E8()
{
  v1 = v0[9];
  [v1 setDeliveryMode_];
  type metadata accessor for Canceller();
  inited = swift_initStackObject();
  v0[14] = inited;
  *(inited + 16) = 0;
  *(inited + 24) = 0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  v3 = swift_task_alloc();
  v0[15] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = inited;
  v4 = sub_1D2878558();
  v0[16] = v4;
  v5 = swift_task_alloc();
  v0[17] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  *v5 = v0;
  v5[1] = sub_1D2687838;
  v7 = v0[8];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE18](v7, &unk_1D289B498, v3, sub_1D268996C, inited, v4, v8, v6);
}

uint64_t sub_1D2687838()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1D26879D8;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1D268795C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D268795C()
{
  v1 = *(v0 + 112);
  swift_setDeallocating();
  sub_1D2508CC0(v1 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D26879D8()
{
  v1 = *(v0 + 112);

  swift_setDeallocating();
  sub_1D2508CC0(v1 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D2687A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_1D2878568();
  v3[6] = sub_1D2878558();
  v5 = sub_1D28784F8();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D2687B0C, v5, v4);
}

uint64_t sub_1D2687B0C(uint64_t a1)
{
  if (sub_1D28786D8())
  {
    v2 = *(v1 + 16);

    v3 = type metadata accessor for PhotosPersonImage(0);
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    v4 = *(v1 + 8);

    return v4();
  }

  else
  {
    v12 = *(v1 + 24);
    v6 = sub_1D2878558();
    *(v1 + 72) = v6;
    v7 = swift_task_alloc();
    *(v1 + 80) = v7;
    *(v7 + 16) = v12;
    v8 = swift_task_alloc();
    *(v1 + 88) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
    *v8 = v1;
    v8[1] = sub_1D2687CC8;
    v10 = *(v1 + 16);
    v11 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6DE38](v10, v6, v11, 0xD00000000000001DLL, 0x80000001D28BF7C0, sub_1D2689970, v7, v9);
  }
}

uint64_t sub_1D2687CC8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1D2687E50;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1D2687DEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D2687DEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2687E50()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1D2687EC8(uint64_t a1, void (*a2)(char *, uint64_t), os_unfair_lock_s *a3)
{
  v66 = a3;
  v71 = a2;
  v73 = a1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF800, &qword_1D289B4A8);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v63 - v3;
  v74 = sub_1D2873CB8();
  v69 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v64 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v63 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v63 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF808, &unk_1D289B4B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = *(v11 + 16);
  v20(v18, v73, v10);
  v70 = v15;
  v20(v15, v18, v10);
  v72 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v11;
  v20(v72, v18, v10);
  v22 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v19;
  (*(v11 + 32))(v23 + v22, v18, v10);
  v73 = v19;
  swift_retain_n();
  sub_1D2872658();
  v24 = sub_1D2873CA8();
  v25 = sub_1D2878A08();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    aBlock[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, aBlock);
    _os_log_impl(&dword_1D226E000, v24, v25, "%s: Status: Generating", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x1D38A3520](v27, -1, -1);
    MEMORY[0x1D38A3520](v26, -1, -1);
  }

  v28 = *(v69 + 8);
  v28(v9, v74);
  v29 = objc_opt_self();
  v30 = [v29 sharedManager];
  v31 = swift_allocObject();
  v31[2] = sub_1D2689AD0;
  v31[3] = v23;
  v32 = v71;
  v31[4] = v71;
  aBlock[4] = sub_1D2689B50;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D2689518;
  aBlock[3] = &block_descriptor_35;
  v33 = _Block_copy(aBlock);
  sub_1D2870F78();
  v34 = v32;

  v35 = [v30 requestFaceCropForOptions:v34 resultHandler:v33];
  _Block_release(v33);

  if (v35)
  {
    v36 = *(v21 + 8);
    v36(v70, v10);
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = sub_1D2689AD0;
    *(v37 + 32) = v23;
    sub_1D2870F78();
    v38 = v66;
    os_unfair_lock_lock(v66 + 4);
    if (v38[10]._os_unfair_lock_opaque)
    {
      v70 = v36;
      os_unfair_lock_unlock(v38 + 4);
      v39 = [v29 sharedManager];
      [v39 cancelRequestForRequestID_];

      v40 = v64;
      sub_1D2872658();
      v41 = sub_1D2873CA8();
      v42 = sub_1D2878A08();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v71 = v28;
        v45 = v44;
        aBlock[0] = v44;
        *v43 = 136315394;
        *(v43 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, aBlock);
        *(v43 + 12) = 1024;
        *(v43 + 14) = v35;
        _os_log_impl(&dword_1D226E000, v41, v42, "%s: Request Cancelled with id: %d", v43, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x1D38A3520](v45, -1, -1);
        MEMORY[0x1D38A3520](v43, -1, -1);

        v71(v64, v74);
      }

      else
      {

        v28(v40, v74);
      }

      v59 = v73;
      v60 = type metadata accessor for PhotosPersonImage(0);
      v61 = v68;
      (*(*(v60 - 8) + 56))(v68, 1, 1, v60);
      swift_storeEnumTagMultiPayload();
      v58 = v72;
      sub_1D2688844(v61, v59);
      sub_1D2689B80(v61);
      v36 = v70;
    }

    else
    {
      v56 = *&v38[6]._os_unfair_lock_opaque;
      v57 = *&v38[8]._os_unfair_lock_opaque;
      *&v38[6]._os_unfair_lock_opaque = sub_1D2689B74;
      *&v38[8]._os_unfair_lock_opaque = v37;
      sub_1D2870F78();
      sub_1D22D7900(v56, v57);
      os_unfair_lock_unlock(v38 + 4);
      v58 = v72;
    }

    v36(v58, v10);
  }

  else
  {
    v71 = v28;
    v46 = type metadata accessor for PhotosPersonImage(0);
    v47 = v68;
    (*(*(v46 - 8) + 56))(v68, 1, 1, v46);
    swift_storeEnumTagMultiPayload();
    v48 = v70;
    sub_1D2688844(v47, v73);
    sub_1D2689B80(v47);
    v49 = *(v21 + 8);
    v49(v48, v10);
    v50 = v65;
    sub_1D2872658();
    v51 = sub_1D2873CA8();
    v52 = sub_1D2878A08();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      aBlock[0] = v54;
      *v53 = 136315138;
      *(v53 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, aBlock);
      _os_log_impl(&dword_1D226E000, v51, v52, "%s: Invalid Request ID", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x1D38A3520](v54, -1, -1);
      MEMORY[0x1D38A3520](v53, -1, -1);

      v49(v72, v10);
      v55 = v65;
    }

    else
    {

      v49(v72, v10);

      v55 = v50;
    }

    v71(v55, v74);
  }

  return result;
}

void sub_1D2688844(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF800, &qword_1D289B4A8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v10 - v8);
  __swp(a2 + 16, (a2 + 16));
  if (((a2 + 16) & 1) == 0)
  {
    sub_1D2689CA8(a1, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v10[1] = *v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF808, &unk_1D289B4B0);
      sub_1D2878508();
    }

    else
    {
      sub_1D2689D18(v9, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF808, &unk_1D289B4B0);
      sub_1D2878518();
    }
  }
}

uint64_t sub_1D26889AC(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  v99 = a1;
  v98 = type metadata accessor for PhotosPersonImage(0);
  v93 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v92 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF800, &qword_1D289B4A8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v88 - v11);
  v13 = sub_1D2873CB8();
  v14 = *(v13 - 8);
  v96 = v13;
  v97 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v88 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v88 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v91 = &v88 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v88 - v26;
  v100 = sub_1D28780A8();
  v101 = v28;
  sub_1D28790D8();
  v29 = *(a2 + 16);
  v94 = v10;
  v95 = a4;
  if (v29 && (v30 = sub_1D25D0A38(v102), (v31 & 1) != 0))
  {
    sub_1D23C3EE4(*(a2 + 56) + 32 * v30, v103);
    sub_1D23ED134(v102);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
    if (swift_dynamicCast())
    {
      v32 = v100;
      sub_1D2872658();
      v33 = v32;
      v34 = sub_1D2873CA8();
      v35 = sub_1D2878A18();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = a3;
        v38 = swift_slowAlloc();
        v102[0] = v38;
        *v36 = 136315138;
        swift_getErrorValue();
        v39 = sub_1D2879748();
        v41 = sub_1D23D7C84(v39, v40, v102);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_1D226E000, v34, v35, "People Retrieval Error: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        v42 = v38;
        a3 = v37;
        MEMORY[0x1D38A3520](v42, -1, -1);
        MEMORY[0x1D38A3520](v36, -1, -1);
      }

      (*(v97 + 8))(v27, v96);
      *v12 = v32;
      swift_storeEnumTagMultiPayload();
      v43 = v32;
      a3(v12);

      return sub_1D2689B80(v12);
    }
  }

  else
  {
    sub_1D23ED134(v102);
  }

  v103[0] = sub_1D28780A8();
  v103[1] = v44;
  sub_1D28790D8();
  if (!*(a2 + 16) || (v45 = sub_1D25D0A38(v102), (v46 & 1) == 0))
  {
    sub_1D23ED134(v102);
    goto LABEL_13;
  }

  sub_1D23C3EE4(*(a2 + 56) + 32 * v45, v103);
  sub_1D23ED134(v102);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v47 = 0;
    goto LABEL_14;
  }

  v47 = v100;
LABEL_14:
  v48 = [a5 person];
  if (!v48)
  {
    v48 = [a5 face];
    if (!v48)
    {
      if (v99)
      {
LABEL_21:
        if (v47)
        {
LABEL_22:
          sub_1D2872658();
          v57 = sub_1D2873CA8();
          v58 = sub_1D2878A08();
          if (os_log_type_enabled(v57, v58))
          {
            v59 = swift_slowAlloc();
            v60 = swift_slowAlloc();
            v102[0] = v60;
            *v59 = 136315138;
            *(v59 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, v102);
            _os_log_impl(&dword_1D226E000, v57, v58, "%s: Status: Generated Low Res Result", v59, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v60);
            MEMORY[0x1D38A3520](v60, -1, -1);
            MEMORY[0x1D38A3520](v59, -1, -1);
          }

          (*(v97 + 8))(v19, v96);
LABEL_37:
          (*(v93 + 56))(v12, 1, 1, v98);
          swift_storeEnumTagMultiPayload();
          a3(v12);
          return sub_1D2689B80(v12);
        }

LABEL_34:
        sub_1D2872658();
        v84 = sub_1D2873CA8();
        v85 = sub_1D2878A08();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v102[0] = v87;
          *v86 = 136315138;
          *(v86 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, v102);
          _os_log_impl(&dword_1D226E000, v84, v85, "%s: Status: No image generated", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v87);
          MEMORY[0x1D38A3520](v87, -1, -1);
          MEMORY[0x1D38A3520](v86, -1, -1);
        }

        (*(v97 + 8))(v16, v96);
        goto LABEL_37;
      }

LABEL_33:

      if (v47)
      {
        goto LABEL_22;
      }

      goto LABEL_34;
    }
  }

  v49 = v48;
  v50 = [v48 localIdentifier];

  v51 = sub_1D28780A8();
  v53 = v52;

  if (!v99)
  {
    goto LABEL_33;
  }

  if (!v53)
  {
    goto LABEL_21;
  }

  v89 = v99;
  v54 = [a5 face];
  v55 = v54;
  v90 = a3;
  v88 = v22;
  if (v54)
  {
    v56 = [v54 vuObservationID];
  }

  else
  {
    v56 = 0;
  }

  v61 = v55 == 0;
  v62 = v92;
  v63 = v92 + *(v98 + 24);
  v64 = type metadata accessor for PlaygroundImage(0);
  v65 = (v63 + v64[9]);
  *v65 = 0u;
  v65[1] = 0u;
  *(v63 + v64[10]) = xmmword_1D28809A0;
  v66 = v64[11];
  v67 = sub_1D2873AA8();
  (*(*(v67 - 8) + 56))(v63 + v66, 1, 1, v67);
  *v63 = v99;
  *(v63 + 8) = 2;
  [v89 imageOrientation];
  *(v63 + 24) = sub_1D2878C88();
  *(v63 + 16) = 0;
  *(v63 + 32) = 0;
  *(v63 + 40) = 0;
  *(v63 + v64[12]) = 0;
  sub_1D2871808();
  *v62 = v51;
  *(v62 + 8) = v53;
  *(v62 + 16) = v56;
  *(v62 + 24) = v61;
  if (v47)
  {
    v68 = v91;
    sub_1D2872658();
    v69 = sub_1D2873CA8();
    v70 = sub_1D2878A08();
    v71 = os_log_type_enabled(v69, v70);
    v72 = v90;
    if (v71)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v102[0] = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, v102);
      _os_log_impl(&dword_1D226E000, v69, v70, "%s: Status: Generated Low Res Result", v73, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v74);
      MEMORY[0x1D38A3520](v74, -1, -1);
      MEMORY[0x1D38A3520](v73, -1, -1);
    }

    (*(v97 + 8))(v68, v96);
    (*(v93 + 56))(v12, 1, 1, v98);
    swift_storeEnumTagMultiPayload();
    v72(v12);
    sub_1D2689B80(v12);
    return sub_1D2689C4C(v92);
  }

  else
  {
    v76 = v88;
    sub_1D2872658();
    v77 = sub_1D2873CA8();
    v78 = sub_1D2878A08();
    v79 = os_log_type_enabled(v77, v78);
    v80 = v90;
    if (v79)
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v102[0] = v82;
      *v81 = 136315138;
      *(v81 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, v102);
      _os_log_impl(&dword_1D226E000, v77, v78, "%s: Status: Generated High Res Image", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v82);
      MEMORY[0x1D38A3520](v82, -1, -1);
      MEMORY[0x1D38A3520](v81, -1, -1);
    }

    (*(v97 + 8))(v76, v96);
    v83 = v92;
    sub_1D2689BE8(v92, v12);
    (*(v93 + 56))(v12, 0, 1, v98);
    swift_storeEnumTagMultiPayload();
    v80(v12);
    sub_1D2689B80(v12);
    return sub_1D2689C4C(v83);
  }
}

void sub_1D2689518(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_1D2877E98();
  sub_1D2870F78();
  v6 = a2;
  v4(a2, v5);
}

uint64_t sub_1D26895BC(uint64_t a1, void (*a2)(char *))
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF800, &qword_1D289B4A8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v18 - v4;
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() sharedManager];
  [v10 cancelRequestForRequestID_];

  sub_1D2872658();
  v11 = sub_1D2873CA8();
  v12 = sub_1D2878A08();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v18[1] = v3;
    v15 = v14;
    v20 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1D23D7C84(0xD00000000000001DLL, 0x80000001D28BF7C0, &v20);
    *(v13 + 12) = 1024;
    *(v13 + 14) = a1;
    _os_log_impl(&dword_1D226E000, v11, v12, "%s: Request Cancelled with id: %d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1D38A3520](v15, -1, -1);
    MEMORY[0x1D38A3520](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v16 = type metadata accessor for PhotosPersonImage(0);
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  swift_storeEnumTagMultiPayload();
  v19(v5);
  return sub_1D2689B80(v5);
}

uint64_t sub_1D26898C0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D22BC8FC;

  return sub_1D2687A6C(a1, v5, v4);
}

uint64_t sub_1D2689978(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v6 = &v13 - v5;
  v7 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v6, v2, v11);
  sub_1D2872728();
  (*(v7 + 8))(v10, v3);
  return sub_1D2878EF8();
}

void sub_1D2689AD0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF808, &unk_1D289B4B0);
  v3 = *(v1 + 16);

  sub_1D2688844(a1, v3);
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D2689B80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF800, &qword_1D289B4A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2689BE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonImage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2689C4C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosPersonImage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D2689CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF800, &qword_1D289B4A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2689D18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDD60, &qword_1D2893770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CharacterAsset.id.getter()
{
  v1 = type metadata accessor for CharacterAsset(0);
  if (*(v0 + *(v1 + 24)) == 3)
  {
    v2 = 0xEB00000000646569;
    v3 = 0x6669636570736E75;
  }

  else
  {
    v3 = sub_1D2873768();
    v2 = v4;
  }

  type metadata accessor for CharacterRecipe(0);
  v5 = _s23ImagePlaygroundInternal0A16GenerationPersonV8SkinToneV2idSSvg_0();
  v7 = v6;
  sub_1D2870F68();
  MEMORY[0x1D38A0C50](v5, v7);

  MEMORY[0x1D38A0C50](v3, v2);

  MEMORY[0x1D38A0C50](45, 0xE100000000000000);
  if (*(v0 + *(v1 + 28)))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 28)))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1D38A0C50](v8, v9);

  return 0;
}

uint64_t type metadata accessor for CharacterAsset(uint64_t a1)
{
  result = qword_1ED8A45D0;
  if (!qword_1ED8A45D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2689F24()
{
  v1 = 0x616D49696A6F6D65;
  v2 = 0x657069636572;
  if (*v0 != 2)
  {
    v2 = 0x6A6F6D4573657375;
  }

  if (*v0)
  {
    v1 = 0x756F726779616C70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D2689FB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D268BBB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D2689FEC(uint64_t a1)
{
  v2 = sub_1D268B684();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D268A028(uint64_t a1)
{
  v2 = sub_1D268B684();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CharacterAsset.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF810, &unk_1D289B4C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D268B684();
  sub_1D2879888();
  v12 = 0;
  type metadata accessor for PlaygroundImage(0);
  sub_1D268B98C(&qword_1EC6DC208, type metadata accessor for PlaygroundImage, &protocol conformance descriptor for PlaygroundImage);
  sub_1D2879598();
  if (!v1)
  {
    type metadata accessor for CharacterAsset(0);
    v11 = 1;
    sub_1D2879568();
    v10 = 2;
    type metadata accessor for CharacterRecipe(0);
    sub_1D268B98C(&qword_1EC6DF410, type metadata accessor for CharacterRecipe, &unk_1D28AC2E0);
    sub_1D2879598();
    v9 = 3;
    sub_1D2879588();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CharacterAsset.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for PlaygroundImage(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1D2871818();
  sub_1D268B98C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  v9 = type metadata accessor for CharacterAsset(0);
  sub_1D247E07C(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D268B748(v8, v5, type metadata accessor for PlaygroundImage);
    sub_1D28797F8();
    sub_1D2877F08();
    sub_1D268B7B0(v5, type metadata accessor for PlaygroundImage);
  }

  if (*(v1 + *(v9 + 24)) == 3)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D28797F8();
    sub_1D2873768();
    sub_1D2877F38();
  }

  type metadata accessor for CharacterRecipe(0);
  sub_1D28737A8();
  sub_1D268B98C(&qword_1EC6DC168, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01C8]);
  sub_1D2877F08();
  return sub_1D28797F8();
}

uint64_t CharacterAsset.hashValue.getter()
{
  v1 = type metadata accessor for PlaygroundImage(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D268B98C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  v8 = type metadata accessor for CharacterAsset(0);
  sub_1D247E07C(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D268B748(v7, v4, type metadata accessor for PlaygroundImage);
    sub_1D28797F8();
    sub_1D2877F08();
    sub_1D268B7B0(v4, type metadata accessor for PlaygroundImage);
  }

  if (*(v0 + *(v8 + 24)) == 3)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D28797F8();
    sub_1D2873768();
    sub_1D2877F38();
  }

  type metadata accessor for CharacterRecipe(0);
  sub_1D28737A8();
  sub_1D268B98C(&qword_1EC6DC168, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01C8]);
  sub_1D2877F08();
  sub_1D28797F8();
  return sub_1D2879828();
}

uint64_t CharacterAsset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = type metadata accessor for CharacterRecipe(0);
  MEMORY[0x1EEE9AC00](v25);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = type metadata accessor for PlaygroundImage(0);
  MEMORY[0x1EEE9AC00](v7);
  v26 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF820, &qword_1D289B4D0);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = type metadata accessor for CharacterAsset(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D268B684();
  v29 = v11;
  v15 = v30;
  sub_1D2879868();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v30 = v12;
  v16 = v14;
  v34 = 0;
  sub_1D268B98C(&qword_1EC6DA878, type metadata accessor for PlaygroundImage, &protocol conformance descriptor for PlaygroundImage);
  v17 = v26;
  v18 = v28;
  sub_1D2879528();
  sub_1D268B748(v17, v16, type metadata accessor for PlaygroundImage);
  v33 = 1;
  sub_1D28794D8();
  v19 = v30;
  sub_1D268B6D8(v6, v16 + *(v30 + 20));
  v32 = 2;
  sub_1D268B98C(&qword_1EC6DF400, type metadata accessor for CharacterRecipe, &unk_1D28AC2B8);
  v20 = v24;
  sub_1D2879528();
  sub_1D268B748(v20, v16 + *(v19 + 24), type metadata accessor for CharacterRecipe);
  v31 = 3;
  v22 = sub_1D28794F8();
  (*(v27 + 8))(v29, v18);
  *(v16 + *(v19 + 28)) = v22 & 1;
  sub_1D268BD30(v16, v23, type metadata accessor for CharacterAsset);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1D268B7B0(v16, type metadata accessor for CharacterAsset);
}

uint64_t sub_1D268AE28(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for PlaygroundImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D28797D8();
  sub_1D2871818();
  sub_1D268B98C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  sub_1D247E07C(v2 + a2[5], v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D268B748(v10, v7, type metadata accessor for PlaygroundImage);
    sub_1D28797F8();
    sub_1D2877F08();
    sub_1D268B7B0(v7, type metadata accessor for PlaygroundImage);
  }

  if (*(v2 + a2[6]) == 3)
  {
    sub_1D28797F8();
  }

  else
  {
    sub_1D28797F8();
    sub_1D2873768();
    sub_1D2877F38();
  }

  type metadata accessor for CharacterRecipe(0);
  sub_1D28737A8();
  sub_1D268B98C(&qword_1EC6DC168, MEMORY[0x1E69E01B8], MEMORY[0x1E69E01C8]);
  sub_1D2877F08();
  sub_1D28797F8();
  return sub_1D2879828();
}

uint64_t sub_1D268B110@<X0>(uint64_t *a1@<X8>)
{
  result = CharacterAsset.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D268B138()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  type metadata accessor for CharacterAsset(0);
  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D268B2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 28)) == 1)
  {
    sub_1D268BD30(v2, a2, type metadata accessor for PlaygroundImage);
    v4 = type metadata accessor for PlaygroundImage(0);
    v5 = *(*(v4 - 8) + 56);

    return v5(a2, 0, 1, v4);
  }

  else
  {
    v7 = v2 + *(a1 + 20);

    return sub_1D247E07C(v7, a2);
  }
}

uint64_t _s23ImagePlaygroundInternal14CharacterAssetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AA0, &qword_1D287F4E0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  if ((_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = type metadata accessor for CharacterAsset(0);
  v15 = v14[5];
  v16 = *(v11 + 48);
  sub_1D247E07C(a1 + v15, v13);
  sub_1D247E07C(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) == 1)
  {
    if (v17(&v13[v16], 1, v4) == 1)
    {
      sub_1D22BD238(v13, &unk_1EC6DE5A0, &unk_1D287F0E0);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_1D247E07C(v13, v10);
  if (v17(&v13[v16], 1, v4) == 1)
  {
    sub_1D268B7B0(v10, type metadata accessor for PlaygroundImage);
LABEL_7:
    sub_1D22BD238(v13, &qword_1EC6D9AA0, &qword_1D287F4E0);
LABEL_11:
    v19 = 0;
    return v19 & 1;
  }

  sub_1D268B748(&v13[v16], v7, type metadata accessor for PlaygroundImage);
  v18 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
  sub_1D268B7B0(v7, type metadata accessor for PlaygroundImage);
  sub_1D268B7B0(v10, type metadata accessor for PlaygroundImage);
  sub_1D22BD238(v13, &unk_1EC6DE5A0, &unk_1D287F0E0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if ((sub_1D284E274((a1 + v14[6]), (a2 + v14[6])) & 1) == 0)
  {
    goto LABEL_11;
  }

  v19 = *(a1 + v14[7]) ^ *(a2 + v14[7]) ^ 1;
  return v19 & 1;
}

unint64_t sub_1D268B684()
{
  result = qword_1EC6DF818;
  if (!qword_1EC6DF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF818);
  }

  return result;
}

uint64_t sub_1D268B6D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D268B748(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D268B7B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D268B858(uint64_t a1)
{
  result = sub_1D268B98C(&qword_1EC6D9A78, type metadata accessor for CharacterAsset, &unk_1D289B5E4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D268B8B0(uint64_t a1)
{
  *(a1 + 8) = sub_1D268B98C(&qword_1EC6DF830, type metadata accessor for CharacterAsset, &unk_1D289B600);
  result = sub_1D268B98C(&qword_1EC6DF838, type metadata accessor for CharacterAsset, &protocol conformance descriptor for CharacterAsset);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D268B934(uint64_t a1)
{
  result = sub_1D268B98C(&qword_1EC6DF840, type metadata accessor for CharacterAsset, &protocol conformance descriptor for CharacterAsset);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D268B98C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D268B9FC(uint64_t a1)
{
  type metadata accessor for PlaygroundImage(319);
  if (v1 <= 0x3F)
  {
    sub_1D22D0510(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CharacterRecipe(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D268BAB4()
{
  result = qword_1EC6DF848;
  if (!qword_1EC6DF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF848);
  }

  return result;
}

unint64_t sub_1D268BB0C()
{
  result = qword_1EC6DF850;
  if (!qword_1EC6DF850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF850);
  }

  return result;
}

unint64_t sub_1D268BB64()
{
  result = qword_1EC6DF858;
  if (!qword_1EC6DF858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF858);
  }

  return result;
}

uint64_t sub_1D268BBB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D49696A6F6D65 && a2 == 0xEA00000000006567;
  if (v4 || (sub_1D2879618() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F726779616C70 && a2 == 0xEF6567616D49646ELL || (sub_1D2879618() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657069636572 && a2 == 0xE600000000000000 || (sub_1D2879618() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6A6F6D4573657375 && a2 == 0xEE00656C79745369)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D2879618();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D268BD30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D268BD98@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E33C0, &unk_1D2883750);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v26 - v9;
  LOBYTE(v26) = *a1;
  v11 = type metadata accessor for CharacterRecipe(0);
  sub_1D264D23C(&a1[*(v11 + 20)], v10);
  v12 = type metadata accessor for ImageGenerationPerson.SkinTone(0);
  (*(*(v12 - 8) + 56))(v10, 0, 1, v12);
  type metadata accessor for AppearanceViewModel(0);
  swift_allocObject();
  sub_1D286E0BC(&v26, v10);
  v14 = v13;
  sub_1D2870F78();
  sub_1D2877848();
  sub_1D2875208();
  v26 = xmmword_1D2898670;
  v27 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF860, &unk_1D289B770);
  swift_allocObject();
  MEMORY[0x1D389D4C0](&v26);
  sub_1D2874A18();
  v15 = sub_1D28749F8();
  if (v15)
  {
    v16 = v15;
    v17 = type metadata accessor for PlaygroundImage(0);
    v18 = (a2 + v17[9]);
    *v18 = 0u;
    v18[1] = 0u;
    *(a2 + v17[10]) = xmmword_1D28809A0;
    v19 = v17[11];
    v20 = sub_1D2873AA8();
    (*(*(v20 - 8) + 56))(a2 + v19, 1, 1, v20);
    *a2 = v16;
    *(a2 + 8) = 0;
    *(a2 + 24) = 1;
    *(a2 + 16) = 0;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + v17[12]) = 0;
    sub_1D2871808();

    return (*(*(v17 - 1) + 56))(a2, 0, 1, v17);
  }

  else
  {
    sub_1D2872708();
    v22 = sub_1D2873CA8();
    v23 = sub_1D2878A18();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D226E000, v22, v23, "Can not render appearance", v24, 2u);
      MEMORY[0x1D38A3520](v24, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
    v25 = type metadata accessor for PlaygroundImage(0);
    return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
  }
}

uint64_t PhotosPersonImage.id.getter()
{
  v1 = *v0;
  sub_1D2870F68();
  return v1;
}

uint64_t PhotosPersonImage.hash(into:)(uint64_t a1)
{
  sub_1D2877F38();
  if (*(v1 + 24) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    v2 = *(v1 + 16);
    sub_1D28797F8();
    MEMORY[0x1D38A2260](v2);
  }

  type metadata accessor for PhotosPersonImage(0);
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D268C7E4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1D2877F08();
}

uint64_t PhotosPersonImage.hashValue.getter()
{
  sub_1D28797D8();
  sub_1D2877F38();
  if (*(v0 + 24) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    v1 = *(v0 + 16);
    sub_1D28797F8();
    MEMORY[0x1D38A2260](v1);
  }

  type metadata accessor for PhotosPersonImage(0);
  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D268C7E4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D268C3DC()
{
  sub_1D28797D8();
  sub_1D2877F38();
  if (*(v0 + 24) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    v1 = *(v0 + 16);
    sub_1D28797F8();
    MEMORY[0x1D38A2260](v1);
  }

  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D268C7E4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t sub_1D268C4D0(uint64_t a1)
{
  sub_1D2877F38();
  if (*(v1 + 24) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    v2 = *(v1 + 16);
    sub_1D28797F8();
    MEMORY[0x1D38A2260](v2);
  }

  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D268C7E4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_1D2877F08();
}

uint64_t sub_1D268C5AC()
{
  sub_1D28797D8();
  sub_1D2877F38();
  if (*(v0 + 24) == 1)
  {
    sub_1D28797F8();
  }

  else
  {
    v1 = *(v0 + 16);
    sub_1D28797F8();
    MEMORY[0x1D38A2260](v1);
  }

  type metadata accessor for PlaygroundImage(0);
  sub_1D2871818();
  sub_1D268C7E4(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  return sub_1D2879828();
}

uint64_t _s23ImagePlaygroundInternal012PhotosPersonA0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1D2879618() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (a1[3])
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (a1[2] != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  type metadata accessor for PhotosPersonImage(0);
  type metadata accessor for PlaygroundImage(0);

  return _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
}

uint64_t type metadata accessor for PhotosPersonImage(uint64_t a1)
{
  result = qword_1ED8A6A60;
  if (!qword_1ED8A6A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D268C7E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D268C854(uint64_t a1)
{
  sub_1D24B0F0C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlaygroundImage(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}