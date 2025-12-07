uint64_t sub_218B19F68(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = a4(0);
  return sub_2194F90C4(a2, a3, v7, v9, v8);
}

uint64_t sub_218B19FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = a7;
  v28 = a8;
  v25 = a5;
  v26 = a6;
  v23 = a3;
  v24 = a4;
  v22 = a1;
  v9 = type metadata accessor for OfflineFeedManifest(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  v16 = swift_projectBox();
  swift_beginAccess();
  sub_218B1AC58(v16, v12, type metadata accessor for OfflineFeedManifest);
  sub_2187B8B2C(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v17 = *(v10 + 72);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C09EC0;
  v20 = v19 + v18;
  sub_218B1A4B4(v12, v20, type metadata accessor for OfflineFeedManifest);
  sub_218B1A4B4(v22, v20 + v17, type metadata accessor for OfflineFeedManifest);
  OfflineFeedManifest.init(_:)(v19, v15);
  sub_218B1A51C(v12, type metadata accessor for OfflineFeedManifest);
  sub_218B1AC58(v15, v16, type metadata accessor for OfflineFeedManifest);
  swift_endAccess();
  return sub_218B19C54(v23, a2, v24, v25, v26, v27, v28);
}

uint64_t sub_218B1A21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v8 = type metadata accessor for OfflineFeedManifest(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  swift_beginAccess();
  sub_218B1AC58(v12, v11, type metadata accessor for OfflineFeedManifest);
  sub_2187B8B2C(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v13 = *(v9 + 72);
  v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09EC0;
  v16 = v15 + v14;
  sub_218B1A4B4(v11, v16, type metadata accessor for OfflineFeedManifest);
  sub_218B1A4B4(a1, v16 + v13, type metadata accessor for OfflineFeedManifest);
  OfflineFeedManifest.init(_:)(v15, v12);
  sub_218B1A51C(v11, type metadata accessor for OfflineFeedManifest);
  swift_endAccess();
  return sub_218B19C54(a3, a2, v19, v20, sub_218B1A99C, &unk_282A37A90, sub_218B1AAA4);
}

uint64_t sub_218B1A444(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187B8B2C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218B1A4B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B1A51C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218B1A61C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_218B19A94(0);
  v7 = *(v6 + 48);
  *a2 = v5;
  sub_218B1A4B4(a1, a2 + v7, type metadata accessor for OfflineFeedManifest);
}

unint64_t sub_218B1A68C()
{
  result = qword_280EAFA40;
  if (!qword_280EAFA40)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EAFA40);
  }

  return result;
}

void sub_218B1A76C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AudioFeedServiceConfig(255);
    v7 = sub_2186F6AA0(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig, &unk_219C207D8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroy_21Tm()
{
  v1 = sub_219BE5434();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_218B1AB18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_2186F6AA0(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218B1ABD8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2187B8B2C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218B1AC58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218B1ACC0(unint64_t *a1)
{
  v3 = sub_219BDD944();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187B2C48(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  if (((*a1 >> 58) & 0x3C | (*a1 >> 1) & 3) == 2)
  {
    v43 = v1;
    v21 = swift_projectBox();
    sub_218B1B33C(v21, v11, sub_2187B2C48);

    sub_218B1B3A4(v11, v20, type metadata accessor for NewsActivity2.Article);
    sub_218B1B33C(v20, v17, type metadata accessor for NewsActivity2.Article);
    sub_2187B2DA0(0);

    sub_218B1B3A4(v17, v5, MEMORY[0x277D2FB40]);
    sub_219BDD8B4();
    sub_218B1B40C(v5, MEMORY[0x277D2FB40]);
    v22 = sub_219BDB954();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v8, 1, v22) == 1)
    {
      sub_218B1B40C(v20, type metadata accessor for NewsActivity2.Article);
      sub_218B1B40C(v8, sub_21873F65C);
    }

    else
    {
      v24 = sub_219BDB854();
      (*(v23 + 8))(v8, v22);
      v25 = [v24 nss_campaignID];
      if (v25)
      {
        v41 = v24;
        v26 = v25;
        v42 = sub_219BF5414();
        v28 = v27;

        if (qword_280EE6000 != -1)
        {
          swift_once();
        }

        v29 = sub_219BE5434();
        __swift_project_value_buffer(v29, qword_280F626D0);
        sub_218B1B33C(v20, v14, type metadata accessor for NewsActivity2.Article);

        v30 = sub_219BE5414();
        v31 = sub_219BF6214();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v46[0] = v40;
          *v32 = 136315394;
          *(v32 + 4) = sub_2186D1058(v42, v28, v46);
          *(v32 + 12) = 2080;
          sub_218B1B33C(v14, v17, type metadata accessor for NewsActivity2.Article);

          sub_218B1B3A4(v17, v5, MEMORY[0x277D2FB40]);
          v33 = sub_219BDD8C4();
          v35 = v34;
          sub_218B1B40C(v5, MEMORY[0x277D2FB40]);
          sub_218B1B40C(v14, type metadata accessor for NewsActivity2.Article);
          v36 = sub_2186D1058(v33, v35, v46);

          *(v32 + 14) = v36;
          _os_log_impl(&dword_2186C1000, v30, v31, "Received campaignID [%s] for article [%s]", v32, 0x16u);
          v37 = v40;
          swift_arrayDestroy();
          MEMORY[0x21CECF960](v37, -1, -1);
          MEMORY[0x21CECF960](v32, -1, -1);
        }

        else
        {

          sub_218B1B40C(v14, type metadata accessor for NewsActivity2.Article);
        }

        __swift_project_boxed_opaque_existential_1((v43 + 16), *(v43 + 40));
        sub_218B1B46C();
        sub_219BE1E34();
        if (v45)
        {
          sub_2186CB1F0(&v44, v46);
          v38 = v47;
          v39 = v48;
          __swift_project_boxed_opaque_existential_1(v46, v47);
          (*(v39 + 8))(v42, v28, v38, v39);

          sub_218B1B40C(v20, type metadata accessor for NewsActivity2.Article);
          __swift_destroy_boxed_opaque_existential_1(v46);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        sub_218B1B40C(v20, type metadata accessor for NewsActivity2.Article);
      }
    }
  }
}

uint64_t sub_218B1B33C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B1B3A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B1B40C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218B1B46C()
{
  result = qword_280EB90E0;
  if (!qword_280EB90E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EB90E0);
  }

  return result;
}

uint64_t sub_218B1B4D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for PuzzleContinuePlayingModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for PuzzleContinuePlayingModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_218B1B580()
{
  type metadata accessor for PuzzleContinuePlayingConfig(0);
  sub_219BE2904();

  type metadata accessor for PuzzleContinuePlayingViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EA8710, &protocol descriptor for PuzzleContinuePlayingStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EA8718, &protocol descriptor for PuzzleContinuePlayingRouterType, 1);
  sub_219BE2914();
  type metadata accessor for PuzzleContinuePlayingRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &unk_280E99070, &protocol descriptor for PuzzleContinuePlayingEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E9CB28, &protocol descriptor for PuzzleContinuePlayingInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EA5680, &protocol descriptor for PuzzleContinuePlayingTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E9AC98, &protocol descriptor for PuzzleContinuePlayingDataManagerType, 0);
  sub_219BE2914();

  sub_218AE15BC(0);
  sub_219BE2904();

  type metadata accessor for PuzzleContinuePlayingBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280E99068, &protocol descriptor for PuzzleContinuePlayingModelFactoryType, 1);
  sub_219BE2914();

  sub_218B1F820(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_218B1FFCC(0);
  sub_219BE2904();

  sub_218B20214(0);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_218B1F90C(0);
  sub_219BE2904();

  sub_218B20108(0);
  sub_219BE2904();

  sub_218AE1800(0);
  sub_219BE2904();

  type metadata accessor for PuzzleContinuePlayingBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_218B202A8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  sub_219BE2904();

  sub_218B1FA14(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_218B20760(0, &unk_280E8FFF8, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D34068]);
  sub_219BE2904();

  sub_218B1FB90(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_218B1FD60(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_218B1FEE0(0);
  sub_219BE2904();

  type metadata accessor for PuzzleContinuePlayingBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for PuzzleContinuePlayingBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_218B203E4(0);
  sub_219BE2904();

  sub_218B20478(0);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_218B2050C(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  sub_219BE2914();

  return result;
}

char *sub_218B1BFF8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA8710, &protocol descriptor for PuzzleContinuePlayingStylerType, 1);
  result = sub_219BE1E34();
  if (!v17)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E99070, &protocol descriptor for PuzzleContinuePlayingEventHandlerType, 0);
  result = sub_219BE1E34();
  v3 = v14;
  if (!v14)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B202A8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE1800(0);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = sub_218B20A48(*v10, v3, v4, v5, v6);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v16);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_218B1C224@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for BaseStyler(0);
    v20[3] = v10;
    v11 = sub_218B21000(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for PuzzleContinuePlayingStyler();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v10);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[5] = v10;
    v13[6] = v11;
    v13[2] = v19;
    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    a2[4] = &off_282A78B30;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B1C484@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B20F98(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BDD274();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for PuzzleContinuePlayingRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 64) = v5;
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A69658;
      *a2 = v8;
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

void sub_218B1C5B8(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PuzzleContinuePlayingViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_218B1C638@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9CB28, &protocol descriptor for PuzzleContinuePlayingInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA8718, &protocol descriptor for PuzzleContinuePlayingRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA5680, &protocol descriptor for PuzzleContinuePlayingTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_218B20D8C(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A8AF08;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_218B1C8E8(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9AC98, &protocol descriptor for PuzzleContinuePlayingDataManagerType, 0);
  sub_219BE1E34();
  if (!v17)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1F820(0);
  v4 = sub_219BE1E24();
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleContinuePlayingBlueprintModifierFactory();
  v6 = sub_219BE1E24();
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleContinuePlayingConfig(0);
  v8 = sub_219BE1E24();
  if (!v8)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B20F98(0, &unk_280E906C0, sub_2186F1804, &type metadata for PuzzleOfflineModel, MEMORY[0x277D33538]);
  v10 = sub_219BE1E24();
  if (v10)
  {
    v12 = v10;
    sub_218B208AC(0, v11);
    v13 = swift_allocObject();
    v13[3] = 0;
    swift_unknownObjectWeakInit();
    v14 = MEMORY[0x277D84F98];
    v13[6] = v17;
    v13[7] = v18;
    v13[4] = v5;
    v13[5] = v7;
    v13[8] = v9;
    v13[9] = v14;
    v13[10] = v12;
    *(v17 + 24) = &off_282A602B8;
    swift_unknownObjectWeakAssign();
    swift_allocObject();
    swift_weakInit();
    swift_unknownObjectRetain();

    v15 = v12;
    v16 = sub_219BF1AF4();
    swift_unknownObjectRelease();

    *a2 = v13;
    a2[1] = &off_282A602C8;
    return;
  }

LABEL_11:
  __break(1u);
}

void *sub_218B1CB90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100, MEMORY[0x277D33F00], 1);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (v9)
  {
    v6 = type metadata accessor for PuzzleContinuePlayingTracker();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    sub_2186CB1F0(&v10, v7 + 24);
    result = sub_2186CB1F0(&v8, v7 + 64);
    a2[3] = v6;
    a2[4] = &off_282A9DB30;
    *a2 = v7;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218B1CCE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100, MEMORY[0x277D33F00], 1);
  result = sub_219BE1E34();
  if (!v13[3])
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90500, MEMORY[0x277D337B0], 1);
  result = sub_219BE1E34();
  if (!v12[3])
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40, &protocolRef_FCPaidAccessCheckerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FD20, MEMORY[0x277D34670], 1);
  result = sub_219BE1E34();
  if (!v11[3])
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E901E0, MEMORY[0x277D33CA8], 1);
  result = sub_219BE1E34();
  if (!v10[3])
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FD00, MEMORY[0x277D34698], 1);
  result = sub_219BE1E34();
  if (v9[3])
  {
    type metadata accessor for PuzzleContinuePlayingDataManager();
    v7 = swift_allocObject();
    v7[3] = 0;
    swift_unknownObjectWeakInit();
    sub_218718690(v13, (v7 + 4));
    sub_218718690(v12, (v7 + 9));
    v7[14] = v5;
    v7[15] = v6;
    sub_218718690(v11, (v7 + 16));
    sub_218718690(v10, (v7 + 21));
    sub_218718690(v9, (v7 + 26));
    __swift_project_boxed_opaque_existential_1(v7 + 4, v7[7]);
    sub_218B21000(qword_280EA5830, type metadata accessor for PuzzleContinuePlayingDataManager, &unk_219CA9538);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    sub_219BF3784();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v8);
    __swift_destroy_boxed_opaque_existential_1(v9);
    __swift_destroy_boxed_opaque_existential_1(v10);
    __swift_destroy_boxed_opaque_existential_1(v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
    *a2 = v7;
    a2[1] = &off_282A89B08;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_218B1D0B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E99068, &protocol descriptor for PuzzleContinuePlayingModelFactoryType, 1);
  result = sub_219BE1E34();
  if (!v27)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DF40, &protocolRef_FCPaidAccessCheckerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FD20, MEMORY[0x277D34670], 1);
  result = sub_219BE1E34();
  if (!v25)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E901E0, MEMORY[0x277D33CA8], 1);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FD00, MEMORY[0x277D34698], 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (&v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for PuzzleContinuePlayingModelFactory();
    v19[3] = v10;
    v19[4] = &off_282A75B30;
    v19[0] = v9;
    type metadata accessor for PuzzleContinuePlayingBlueprintModifierFactory();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (&v19[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v11[5] = v10;
    v11[6] = &off_282A75B30;
    v11[2] = v17;
    v11[7] = v3;
    sub_2186CB1F0(&v24, (v11 + 8));
    sub_2186CB1F0(&v22, (v11 + 13));
    sub_2186CB1F0(&v20, (v11 + 18));
    __swift_destroy_boxed_opaque_existential_1(v19);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v11;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218B1D434@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for PuzzleContinuePlayingModelFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282A75B30;
  *a1 = result;
  return result;
}

uint64_t sub_218B1D47C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE15BC(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218B1F90C(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218B1F820(0);
      swift_allocObject();
      return sub_219BE6EB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_218B1D55C(uint64_t a1, void *a2)
{
  sub_218B207CC(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_218B207EC(0, &unk_280EE4540, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_218B21000(&qword_280EE43F8, sub_218B207CC, MEMORY[0x277D6E730]);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B1FFCC(0);
  if (sub_219BE1E24())
  {
    swift_allocObject();
    sub_218B21000(&qword_280EE3BC0, sub_218B1FFCC, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218B1D6F4(void *a1)
{
  sub_218B20694(0, &qword_280EE3A90, MEMORY[0x277D6EB30]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleContinuePlayingBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B20108(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B20214(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_218B1FFCC(0);
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218B1D874(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE1800(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (v3)
  {
    sub_218B20214(0);
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218B1DA14(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FA14(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_218B1F90C(0);
      swift_allocObject();
      return sub_219BE72C4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218B1DB6C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_218B1DBB0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B20760(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for PuzzleContinuePlayingConfig(0);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for PuzzleContinuePlayingBlueprintLayoutBuilder();
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
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

void *sub_218B1DC9C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE15BC(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FA14(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B203E4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE70E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_218B21000(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_218B202A8(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_218B1DF9C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B20214(0);
  if (sub_219BE1E24())
  {
    sub_218B21000(&unk_280EE4148, sub_218B20214, MEMORY[0x277D6E7D0]);
  }

  sub_219BE8724();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B20478(0);
  if (sub_219BE1E24())
  {
    sub_218B21000(&unk_280EE4820, sub_218B20478, MEMORY[0x277D6E070]);
  }

  return sub_219BE86F4();
}

id sub_218B1E0F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B20760(0, &unk_280E8FFF8, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D34068]);
  result = sub_219BE1DE4();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B1E1D0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FB90(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FD60(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FEE0(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_218B1FA14(0);
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218B1E33C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FA14(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE95A4();
    swift_allocObject();
    result = sub_219BE9594();
    v4 = MEMORY[0x277D6E690];
    *a2 = result;
    a2[1] = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B1E3F4()
{
  v0 = sub_219BE80A4();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v1);
  return sub_219BE9574();
}

uint64_t sub_218B1E4C4(void *a1)
{
  sub_218B20694(0, &qword_280E90308, MEMORY[0x277D33AA0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v15 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleContinuePlayingConfig(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_219BF1814();

  v10 = sub_219BF2A74();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v4, 1, v10) == 1)
  {
    (*(v11 + 104))(v7, *MEMORY[0x277D33A98], v10);
    if (v12(v4, 1, v10) != 1)
    {
      sub_218B206E8(v4);
    }
  }

  else
  {
    (*(v11 + 32))(v7, v4, v10);
  }

  (*(v11 + 56))(v7, 0, 1, v10);
  v15[1] = v9;
  sub_218B20760(0, &unk_280E8FFF8, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D34068]);
  v14 = objc_allocWithZone(v13);
  return sub_219BF3B94();
}

void sub_218B1E774(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE15BC(0);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE1800(0);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleContinuePlayingBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PuzzleContinuePlayingBlueprintViewSupplementaryViewProvider();
  if (sub_219BE1E24())
  {
    *&v8[0] = v3;
    sub_218B1FB90(0);
    v7 = objc_allocWithZone(v6);
    sub_219BE9B64();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_218B1E910(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  v3 = sub_219BE1DE4();
  if (v3)
  {
    sub_2186C6148(0, &qword_280E8E790, 0x277D759D8);
    sub_219BE1BB4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_218B1EA20(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  result = sub_219BE1DF4();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_219BEA274();
    sub_219BE9B74();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218B1EAF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE15BC(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE1800(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B203E4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_218B21000(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800, MEMORY[0x277D6E170], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_218B1FD60(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_218B1ED44(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B2050C(0);
  if (sub_219BE1E24())
  {
    sub_218B21000(&unk_280EE3F80, sub_218B2050C, MEMORY[0x277D6E7F8]);
  }

  return sub_219BE9774();
}

uint64_t sub_218B1EE48(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE15BC(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218AE1800(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218B1FEE0(0);
      v4 = objc_allocWithZone(v3);
      return sub_219BE9F24();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218B1EF08(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810, MEMORY[0x277D32340], 0);
  result = sub_219BE1E34();
  if (v3)
  {
    type metadata accessor for PuzzleContinuePlayingBlueprintViewCellProvider();
    v2 = swift_allocObject();
    v2[3] = 0;
    swift_unknownObjectWeakInit();
    v2[4] = v3;
    v2[5] = v4;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218B1EFB4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for PuzzleContinuePlayingViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A36300;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void *sub_218B1F048(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0, MEMORY[0x277D32C08], 1);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for PuzzleContinuePlayingBlueprintViewSupplementaryViewProvider();
    v2 = swift_allocObject();
    sub_2186CB1F0(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B1F0E8(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_218B205F8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AE15BC(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_218B203E4(0);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B1F340(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FA14(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_218B20478(0);
    swift_allocObject();
    return sub_219BE8914();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B1F3B8(void *a1)
{
  sub_2187F2110(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B2050C(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_218B21000(&unk_280EE3F90, sub_218B2050C, MEMORY[0x277D6E800]);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE8A54();
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_219BE70E4();
      swift_allocObject();
      return sub_219BE70D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218B1F4F4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FA14(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218AE15BC(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218B2050C(0);
      swift_allocObject();
      return sub_219BE9AB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218B1F608(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B1FA14(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE7BC4();

    sub_219BE8A54();
    swift_allocObject();
    return sub_219BE8A44();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218B1F6C4(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B202A8(0);
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    v10 = sub_218B21000(a3, sub_218B202A8, a4);
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  return a5(v8, v10);
}

uint64_t sub_218B1F778@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B202A8(0);
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_218B21000(&unk_280EE4918, sub_218B202A8, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218B1F820(uint64_t a1)
{
  if (!qword_280EE5580)
  {
    sub_218AE15BC(255);
    sub_218B1F90C(255);
    sub_218B21000(&qword_280EE53D0, sub_218AE15BC, MEMORY[0x277D6D8C8]);
    sub_218B21000(&unk_280EE5230, sub_218B1F90C, MEMORY[0x277D6D960]);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5580);
    }
  }
}

void sub_218B1F90C(uint64_t a1)
{
  if (!qword_280EE5228)
  {
    type metadata accessor for PuzzleContinuePlayingModel(255);
    sub_218B1FA14(255);
    sub_218AE146C();
    sub_218B21000(&qword_280EBAB50, type metadata accessor for PuzzleContinuePlayingModel, &unk_219C0FD4C);
    sub_218B21000(&unk_280EE4E68, sub_218B1FA14, MEMORY[0x277D6DC88]);
    v1 = sub_219BE72E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5228);
    }
  }
}

void sub_218B1FA14(uint64_t a1)
{
  if (!qword_280EE4E60)
  {
    sub_2186C6148(255, &qword_280E8E4C0, 0x277D752A0);
    sub_218B1FB90(255);
    sub_218B1FD60(255);
    sub_218B1FEE0(255);
    type metadata accessor for PuzzleContinuePlayingViewController();
    sub_218B21000(&qword_280EE3E40, sub_218B1FB90, MEMORY[0x277D6E820]);
    sub_218B21000(&qword_280EE42C8, sub_218B1FD60, MEMORY[0x277D6E738]);
    sub_218B21000(&unk_280EE3D00, sub_218B1FEE0, MEMORY[0x277D6E918]);
    v1 = sub_219BE7BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4E60);
    }
  }
}

void sub_218B1FB90(uint64_t a1)
{
  if (!qword_280EE3E30)
  {
    sub_218AE15BC(255);
    sub_218AE1800(255);
    type metadata accessor for PuzzleContinuePlayingBlueprintViewCellProvider();
    type metadata accessor for PuzzleContinuePlayingBlueprintViewSupplementaryViewProvider();
    sub_218B21000(&qword_280EE53D0, sub_218AE15BC, MEMORY[0x277D6D8C8]);
    sub_218B21000(&qword_280EE4C40, sub_218AE1800, MEMORY[0x277D6DF38]);
    sub_218B21000(&qword_280E93800, type metadata accessor for PuzzleContinuePlayingBlueprintViewCellProvider, &unk_219C429D0);
    sub_218B21000(qword_280EE1AF8, type metadata accessor for PuzzleContinuePlayingBlueprintViewSupplementaryViewProvider, &unk_219CC6EDC);
    sub_218B21000(&unk_280EA5730, type metadata accessor for PuzzleContinuePlayingLayoutModel, &unk_219CB8B7C);
    v1 = sub_219BE9B94();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3E30);
    }
  }
}

void sub_218B1FD60(uint64_t a1)
{
  if (!qword_280EE42B8)
  {
    sub_218AE15BC(255);
    sub_218AE1800(255);
    type metadata accessor for PuzzleContinuePlayingViewController();
    sub_218B21000(&qword_280EE53D0, sub_218AE15BC, MEMORY[0x277D6D8C8]);
    sub_218B21000(&qword_280EE4C40, sub_218AE1800, MEMORY[0x277D6DF38]);
    sub_218B21000(&qword_280E9CB20, type metadata accessor for PuzzleContinuePlayingViewController, &unk_219C1A0BC);
    sub_218B21000(&unk_280EA5730, type metadata accessor for PuzzleContinuePlayingLayoutModel, &unk_219CB8B7C);
    v1 = sub_219BE9794();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE42B8);
    }
  }
}

void sub_218B1FEE0(uint64_t a1)
{
  if (!qword_280EE3CF8)
  {
    sub_218AE15BC(255);
    sub_218AE1800(255);
    sub_218B21000(&qword_280EE53D0, sub_218AE15BC, MEMORY[0x277D6D8C8]);
    sub_218B21000(&qword_280EE4C40, sub_218AE1800, MEMORY[0x277D6DF38]);
    v1 = sub_219BE9F34();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3CF8);
    }
  }
}

void sub_218B1FFCC(uint64_t a1)
{
  if (!qword_280EE3BB8)
  {
    sub_218AE1800(255);
    type metadata accessor for PuzzleContinuePlayingBlueprintLayoutBuilder();
    sub_218B20108(255);
    sub_218B21000(&qword_280EE4C40, sub_218AE1800, MEMORY[0x277D6DF38]);
    sub_218B21000(qword_280E942B0, type metadata accessor for PuzzleContinuePlayingBlueprintLayoutBuilder, &unk_219C30308);
    sub_218B21000(&qword_280EE4208, sub_218B20108, MEMORY[0x277D6E7B8]);
    v1 = sub_219BEA4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3BB8);
    }
  }
}

void sub_218B20108(uint64_t a1)
{
  if (!qword_280EE4200)
  {
    type metadata accessor for PuzzleContinuePlayingLayoutModel(255);
    sub_218B201C0();
    sub_218B21000(&unk_280EA5730, type metadata accessor for PuzzleContinuePlayingLayoutModel, &unk_219CB8B7C);
    v1 = sub_219BE9974();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4200);
    }
  }
}

unint64_t sub_218B201C0()
{
  result = qword_280E93D48;
  if (!qword_280E93D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E93D48);
  }

  return result;
}

void sub_218B20214(uint64_t a1)
{
  if (!qword_280EE4140)
  {
    sub_218AE1800(255);
    sub_218B21000(&qword_280EE4C40, sub_218AE1800, MEMORY[0x277D6DF38]);
    v1 = sub_219BE99B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4140);
    }
  }
}

void sub_218B202A8(uint64_t a1)
{
  if (!qword_280EE4908)
  {
    sub_218AE15BC(255);
    sub_218B1FA14(255);
    type metadata accessor for PuzzleContinuePlayingViewController();
    sub_218B21000(&qword_280EE53D0, sub_218AE15BC, MEMORY[0x277D6D8C8]);
    sub_218B21000(&unk_280EE4E68, sub_218B1FA14, MEMORY[0x277D6DC88]);
    sub_218B21000(&qword_280E9CB20, type metadata accessor for PuzzleContinuePlayingViewController, &unk_219C1A0BC);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4908);
    }
  }
}

void sub_218B203E4(uint64_t a1)
{
  if (!qword_280EE45F0)
  {
    sub_218AE15BC(255);
    sub_218B21000(&qword_280EE53D0, sub_218AE15BC, MEMORY[0x277D6D8C8]);
    v1 = sub_219BE8ED4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE45F0);
    }
  }
}

void sub_218B20478(uint64_t a1)
{
  if (!qword_280EE4818)
  {
    sub_218B1FA14(255);
    sub_218B21000(&unk_280EE4E68, sub_218B1FA14, MEMORY[0x277D6DC88]);
    v1 = sub_219BE8934();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4818);
    }
  }
}

void sub_218B2050C(uint64_t a1)
{
  if (!qword_280EE3F70)
  {
    sub_218B1FA14(255);
    sub_218AE15BC(255);
    sub_218B21000(&unk_280EE4E68, sub_218B1FA14, MEMORY[0x277D6DC88]);
    sub_218B21000(&qword_280EE53D8, sub_218AE15BC, MEMORY[0x277D6D8C0]);
    v1 = sub_219BE9AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3F70);
    }
  }
}

void sub_218B205F8(uint64_t a1)
{
  if (!qword_280EE46A8)
  {
    sub_218AE15BC(255);
    sub_218B21000(&qword_280EE53D0, sub_218AE15BC, MEMORY[0x277D6D8C8]);
    v1 = sub_219BE8EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE46A8);
    }
  }
}

void sub_218B20694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218B206E8(uint64_t a1)
{
  sub_218B20694(0, &qword_280E90308, MEMORY[0x277D33AA0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218B20760(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_218B207EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for PuzzleContinuePlayingSectionDescriptor;
    v8[1] = type metadata accessor for PuzzleContinuePlayingModel(255);
    v8[2] = sub_218AE146C();
    v8[3] = sub_218B21000(&qword_280EBAB50, type metadata accessor for PuzzleContinuePlayingModel, &unk_219C0FD4C);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218B208AC(uint64_t a1, __n128 a2)
{
  if (!qword_280EA8730[0])
  {
    v3 = type metadata accessor for PuzzleContinuePlayingBlueprintModifierFactory();
    v4 = sub_218B21000(&unk_280E93B98, type metadata accessor for PuzzleContinuePlayingBlueprintModifierFactory, &unk_219C6B108);
    v6 = type metadata accessor for PuzzleContinuePlayingInteractor(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, qword_280EA8730);
    }
  }
}

void sub_218B20940(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = off_282A36318[0];
        type metadata accessor for PuzzleContinuePlayingViewController();

        v4(v3);

        swift_unknownObjectRelease();
      }

      else
      {
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

char *sub_218B20A48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for PuzzleContinuePlayingStyler();
  v29[3] = v10;
  v29[4] = &off_282A78B30;
  v29[0] = a1;
  v11 = type metadata accessor for PuzzleContinuePlayingViewController();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v29, v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v16;
  v28[3] = v10;
  v28[4] = &off_282A78B30;
  v28[0] = v18;
  v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_isBeingUsedAsPlugin] = 0;
  *&v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_pluggableDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = &v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_lastComputedSize];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  *&v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintHorizontalShimView] = 0;
  sub_218718690(v28, &v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_styler]);
  v20 = &v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_eventHandler];
  *v20 = a2;
  v20[1] = a3;
  *&v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintViewController] = a4;
  *&v12[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintLayoutProvider] = a5;
  v27.receiver = v12;
  v27.super_class = v11;
  swift_unknownObjectRetain();
  v21 = a4;

  v22 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
  *(*&v22[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_eventHandler] + 24) = &off_282A36308;
  swift_unknownObjectWeakAssign();
  v23 = *&v22[OBJC_IVAR____TtC7NewsUI235PuzzleContinuePlayingViewController_blueprintViewController];
  v24 = v22;
  v25 = v23;
  sub_219BE8744();

  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v24;
}

void *sub_218B20C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for PuzzleContinuePlayingRouter();
  v15[4] = &off_282A69658;
  v15[0] = a3;
  v14[3] = type metadata accessor for PuzzleContinuePlayingTracker();
  v14[4] = &off_282A9DB30;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A8AEF0, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_218B20D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = type metadata accessor for PuzzleContinuePlayingRouter();
  v27 = &off_282A69658;
  v25[0] = a3;
  v23 = v8;
  v24 = &off_282A9DB30;
  v22[0] = a4;
  type metadata accessor for PuzzleContinuePlayingEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_218B20C94(a1, a2, *v13, *v18, v9);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

void sub_218B20F98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_218B21000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218B21048(uint64_t a1)
{
  result = sub_219BF0634();
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

uint64_t sub_218B21104(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v34 = a1;
  v4 = sub_219BF0634();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1904();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BF0BD4();
  v11 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BEF9A4();
  sub_219BEF984();
  v14 = *(v8 + 16);
  v33 = v10;
  v35 = v7;
  v14(v10, v37, v7);
  v15 = sub_219BEF994();
  v16 = v2[7];
  v17 = *(v38 + 16);
  v36 = v6;
  v37 = v4;
  v17(v6, v2 + qword_280E95690, v4);
  v18 = *(v2 + qword_280E95698);
  v19 = v16;
  if (v18)
  {
    v20 = [v18 asPuzzleType];
  }

  else
  {
    v20 = 0;
  }

  sub_218B214E8(v34, v39);
  v21 = v39[0];
  v22 = v39[1];
  type metadata accessor for PuzzleContinuePlayingConfig(0);
  v23 = swift_allocObject();
  (*(v11 + 32))(v23 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedContext, v13, v32);
  (*(v8 + 32))(v23 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_formatContent, v33, v35);
  v24 = (v23 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_layoutOptionsProvider);
  v25 = MEMORY[0x277D6E490];
  *v24 = v15;
  v24[1] = v25;
  *(v23 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_log) = v16;
  (*(v38 + 32))(v23 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedKind, v36, v37);
  *(v23 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_puzzleType) = v20;
  v26 = (v23 + OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_knobConfig);
  *v26 = v21;
  v26[1] = v22;
  v27 = v3[5];
  v28 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v27);
  v29 = (*(v28 + 8))(v23, v27, v28);

  return v29;
}

void sub_218B214E8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v36 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup(0);
  MEMORY[0x28223BE20](v36);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A1299C(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v36 - v10;
  v12 = type metadata accessor for TagFeedGroup(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v36 - v18;
  (*(v9 + 16))(v11, a1, AssociatedTypeWitness, v17);
  v20 = swift_dynamicCast();
  v21 = *(v13 + 56);
  if (v20)
  {
    v21(v7, 0, 1, v12);
    sub_218B21C5C(v7, v19, type metadata accessor for TagFeedGroup);
    sub_218B21BF8(v19, v15);
    if (swift_getEnumCaseMultiPayload() == 36)
    {
      sub_218B21CC4(v19, type metadata accessor for TagFeedGroup);
      sub_218B21C5C(v15, v4, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v22 = &v4[*(v36 + 20)];
      v23 = *v22;
      v24 = *(v22 + 1);
      sub_218B21CC4(v4, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v25 = v37;
      *v37 = v23;
      v25[1] = v24;
    }

    else
    {
      if (qword_280EE5F80 != -1)
      {
        swift_once();
      }

      v31 = sub_219BE5434();
      __swift_project_value_buffer(v31, qword_280F625E0);
      v32 = sub_219BE5414();
      v33 = sub_219BF61F4();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        *v34 = 0;
        _os_log_impl(&dword_2186C1000, v32, v33, "Failed to retrieve PuzzleContinuePlayingKnobConfiguration from puzzleContinuePlaying group.  Using defaults.", v34, 2u);
        MEMORY[0x21CECF960](v34, -1, -1);
      }

      sub_218B21CC4(v19, type metadata accessor for TagFeedGroup);
      v35 = v37;
      *v37 = 0x4122750000000000;
      v35[1] = 5;
      sub_218B21CC4(v15, type metadata accessor for TagFeedGroup);
    }
  }

  else
  {
    v21(v7, 1, 1, v12);
    sub_218B21CC4(v7, sub_218A1299C);
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v26 = sub_219BE5434();
    __swift_project_value_buffer(v26, qword_280F625E0);
    v27 = sub_219BE5414();
    v28 = sub_219BF61F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_2186C1000, v27, v28, "Failed to retrieve PuzzleContinuePlayingKnobConfiguration from feed group.  Falling back to default config.", v29, 2u);
      MEMORY[0x21CECF960](v29, -1, -1);
    }

    v30 = v37;
    *v37 = 0x4122750000000000;
    v30[1] = 5;
  }
}

uint64_t sub_218B21A6C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = qword_280E95690;
  v2 = sub_219BF0634();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_218B21B00()
{
  sub_218B21A6C();

  return swift_deallocClassInstance();
}

uint64_t sub_218B21B94()
{
  v1 = *(*v0 + qword_280F619A8);

  return v1;
}

uint64_t sub_218B21BF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B21C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218B21CC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218B21D24(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  swift_unknownObjectRetain();

  sub_218DB1F7C(v4, v3);
  swift_unknownObjectRelease();

  sub_218774F78(v2 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218B21DC4(uint64_t a1)
{
  sub_218B21FF0();
  sub_219BE3204();
  v1 = sub_219BE2E54();
  v2 = sub_219BE2F64();

  return v2;
}

uint64_t sub_218B21E60(uint64_t *a1)
{
  sub_21870F2E8(0, &qword_27CC0E130, &type metadata for SportsFavoritesPrewarmResult);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_218B21ED0()
{
  sub_219BE3204();
  v0 = sub_219BE2E54();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_218B21F88()
{
  v0 = off_282A4D798[0];
  type metadata accessor for TagService();
  return v0(25);
}

unint64_t sub_218B21FF0()
{
  result = qword_280E8E530;
  if (!qword_280E8E530)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E530);
  }

  return result;
}

uint64_t sub_218B2203C(id *a1)
{
  v1 = [*a1 subscribedTags];
  sub_2186D8870();
  v2 = sub_219BF5924();

  v10 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
LABEL_18:
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x21CECE0F0](v4, v2);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v2 + 8 * v4 + 32);
      swift_unknownObjectRetain();
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    v7 = [v5 asSports];
    v8 = swift_unknownObjectRelease();
    ++v4;
    if (v7)
    {
      MEMORY[0x21CECC690](v8);
      if (*(v10 + 16) >= *(v10 + 24) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v4 = v6;
    }
  }

  sub_21870F2E8(0, &qword_27CC0E138, &type metadata for SportsFavoritesFetchResult);
  swift_allocObject();
  return sub_219BE3014();
}

double sub_218B22220(uint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v6 = (a1 + 32);
      while (1)
      {
        v7 = *v6;
        v6 += 2;
        if ([*(v7 + 16) isSports])
        {
          break;
        }

        if (!--v4)
        {
          return result;
        }
      }

      v18 = MEMORY[0x277D84F90];
      if (a2 >> 62)
      {
LABEL_31:
        v9 = sub_219BF7214();
      }

      else
      {
        v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = 0;
      v17 = MEMORY[0x277D84F90];
      while (v9 != v10)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x21CECE0F0](v10, a2);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v10 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v11 = *(a2 + 8 * v10 + 32);
          swift_unknownObjectRetain();
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }
        }

        v13 = [v11 asSports];
        v14 = swift_unknownObjectRelease();
        ++v10;
        if (v13)
        {
          MEMORY[0x21CECC690](v14);
          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          v17 = v18;
          v10 = v12;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v3 + 24);
        ObjectType = swift_getObjectType();
        (*(v15 + 8))(v3, &off_282A37BC8, v17, ObjectType, v15);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t ShareLinkProvider.shareLink(for:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5438(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v24 - v17;
  if ([a1 contentType] == 1)
  {
    v19 = [a1 contentURL];
    if (v19)
    {
      v20 = v19;
      sub_219BDB8B4();

      (*(v6 + 56))(v18, 0, 1, v5);
    }

    else
    {
      (*(v6 + 56))(v18, 1, 1, v5);
    }

    return sub_218AB007C(v18, a2);
  }

  else
  {
    sub_218B227CC(a1, v14);
    sub_2188383F8(v14, v11);
    if ((*(v6 + 48))(v11, 1, v5) == 1)
    {
      v21 = MEMORY[0x277CC9260];
      sub_2187BC38C(v14, &unk_280EE9D00, MEMORY[0x277CC9260]);
      sub_2187BC38C(v11, &unk_280EE9D00, v21);
      return (*(v6 + 56))(a2, 1, 1, v5);
    }

    else
    {
      v23 = *(v6 + 32);
      v23(v8, v11, v5);
      if (*(v2 + 16))
      {
        sub_218B22B14(v8, a2);
        (*(v6 + 8))(v8, v5);
        sub_2187BC38C(v14, &unk_280EE9D00, MEMORY[0x277CC9260]);
      }

      else
      {
        sub_2187BC38C(v14, &unk_280EE9D00, MEMORY[0x277CC9260]);
        v23(a2, v8, v5);
      }

      return (*(v6 + 56))(a2, 0, 1, v5);
    }
  }
}

uint64_t sub_218B227CC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v19 = &v34 - v18;
  v20 = [a1 articleID];
  if (!v20)
  {
    sub_219BF5414();
    v20 = sub_219BF53D4();
  }

  v21 = [a1 routeURL];
  if (v21)
  {
    v22 = v21;
    sub_219BDB8B4();

    v23 = sub_219BDB854();
    (*(v4 + 8))(v15, v3);
  }

  else
  {
    v23 = 0;
  }

  v24 = [objc_opt_self() nss:v20 NewsURLForArticleID:v23 routeURL:?];

  if (v24)
  {
    sub_219BDB8B4();

    v25 = *(v4 + 32);
    v25(v19, v12, v3);
    v26 = [a1 sourceChannel];
    if (!v26 || (v27 = [v26 isPublic], swift_unknownObjectRelease(), v27))
    {
      v28 = v35;
      v25(v35, v19, v3);
      goto LABEL_13;
    }

    (*(v4 + 8))(v19, v3);
  }

  v29 = [a1 contentURL];
  if (!v29)
  {
    v32 = 1;
    v28 = v35;
    return (*(v4 + 56))(v28, v32, 1, v3);
  }

  v30 = v29;
  sub_219BDB8B4();

  v31 = *(v4 + 32);
  v31(v9, v6, v3);
  v28 = v35;
  v31(v35, v9, v3);
LABEL_13:
  v32 = 0;
  return (*(v4 + 56))(v28, v32, 1, v3);
}

uint64_t sub_218B22B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2186E5438(0, &unk_280EE9D00, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  sub_2186E5438(0, &unk_280EE9DB0, MEMORY[0x277CC8958]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_219BDB354();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB264();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2187BC38C(v9, &unk_280EE9DB0, MEMORY[0x277CC8958]);
    v14 = sub_219BDB954();
    return (*(*(v14 - 8) + 16))(a2, a1, v14);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = sub_219BDB2B4();
    v20 = 0x79616C50776F6E2FLL;
    v21 = 0xEB00000000676E69;
    MEMORY[0x21CECC330](v16);

    MEMORY[0x21CEB2060](v20, v21);
    sub_219BDB274();
    (*(v11 + 8))(v13, v10);
    v17 = sub_219BDB954();
    v18 = *(v17 - 8);
    v19 = *(v18 + 48);
    if (v19(v6, 1, v17) == 1)
    {
      (*(v18 + 16))(a2, a1, v17);
      result = v19(v6, 1, v17);
      if (result != 1)
      {
        return sub_2187BC38C(v6, &unk_280EE9D00, MEMORY[0x277CC9260]);
      }
    }

    else
    {
      return (*(v18 + 32))(a2, v6, v17);
    }
  }

  return result;
}

uint64_t sub_218B22EE0(uint64_t a1, uint64_t a2)
{
  sub_2187015C4(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218B22F4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2187015C4(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_218B22FC8()
{
  sub_2187015C4(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B2403C(v0, v8);
  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_219BEDCA4();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_218B2315C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_2187015C4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B2403C(v3, v12);
  (*(v7 + 32))(v9, v12, v6);
  a3(v6);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218B2330C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_2187015C4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B2403C(v3, v12);
  (*(v7 + 32))(v9, v12, v6);
  v13 = a3(v6);
  (*(v7 + 8))(v9, v6);
  return v13;
}

uint64_t sub_218B23458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_218701754(&qword_27CC0E178, type metadata accessor for RecipeBoxFeedGroupConfig, &unk_219C1C394);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_218B235FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_2187015C4(0);
  v5 = v4;
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B23F38(0);
  v9 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218B23F94();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v21;
    v16 = v5;
    v17 = v7;
    sub_218B23FE8();
    sub_219BF7734();
    sub_218718690(a1, v20);
    type metadata accessor for RecipeListRecipeBoxFeedGroupConfigData(0);
    sub_218701754(&qword_280EE2F60, type metadata accessor for RecipeListRecipeBoxFeedGroupConfigData, &unk_219C11220);
    sub_218701754(&qword_280EE2F68, type metadata accessor for RecipeListRecipeBoxFeedGroupConfigData, &unk_219C111F8);
    v13 = v17;
    sub_219BEDD24();
    (*(v12 + 8))(v11, v9);
    (*(v18 + 32))(v19, v13, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_218B238DC(BOOL *a3@<X8>)
{
  v4 = sub_219BF7614();

  *a3 = v4 != 0;
}

uint64_t sub_218B23934(uint64_t a1)
{
  v2 = sub_218B23F94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218B23970(uint64_t a1)
{
  v2 = sub_218B23F94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218B239C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_218B23A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

void sub_218B23AA8(BOOL *a3@<X8>)
{
  v4 = sub_219BF7614();

  *a3 = v4 != 0;
}

uint64_t sub_218B23BE0(uint64_t a1)
{
  v2 = v1;
  sub_2187015C4(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B2403C(v2, v10);
  (*(v5 + 32))(v7, v10, v4);
  sub_219BEDD64();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218B23D38@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RecipeListRecipeBoxFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187015C4(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B2403C(v1, v13);
  (*(v8 + 32))(v10, v13, v7);
  sub_219BEDD14();
  (*(v8 + 8))(v10, v7);
  v14 = sub_219BF1934();
  v15 = *(v14 - 8);
  (*(v15 + 32))(a1, v5, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

void sub_218B23F38(uint64_t a1)
{
  if (!qword_27CC0E160)
  {
    sub_218B23F94();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0E160);
    }
  }
}

unint64_t sub_218B23F94()
{
  result = qword_27CC0E168;
  if (!qword_27CC0E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E168);
  }

  return result;
}

unint64_t sub_218B23FE8()
{
  result = qword_27CC0E170;
  if (!qword_27CC0E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E170);
  }

  return result;
}

uint64_t sub_218B2403C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxFeedGroupConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218B240C4()
{
  result = qword_27CC0E180;
  if (!qword_27CC0E180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E180);
  }

  return result;
}

unint64_t sub_218B2411C()
{
  result = qword_27CC0E188;
  if (!qword_27CC0E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E188);
  }

  return result;
}

unint64_t sub_218B24174()
{
  result = qword_27CC0E190;
  if (!qword_27CC0E190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E190);
  }

  return result;
}

unint64_t sub_218B241CC()
{
  result = qword_27CC0E198;
  if (!qword_27CC0E198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E198);
  }

  return result;
}

unint64_t sub_218B24220()
{
  result = qword_27CC0E1A0;
  if (!qword_27CC0E1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E1A0);
  }

  return result;
}

uint64_t sub_218B242AC@<X0>(void *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (qword_280EE9650 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {

    return sub_218B243CC(a4);
  }

  else
  {
    v9 = sub_218C8D588([a1 subscription], objc_msgSend(a1, sel_isOptedIntoIssues));
    result = sub_218C8D588([a1 activeNewsletter], objc_msgSend(a1, sel_isEligibleForIssues));
    *a4 = v9;
    *(a4 + 8) = result;
    *(a4 + 16) = a2 & 1;
    *(a4 + 17) = a3 & 1;
  }

  return result;
}

uint64_t sub_218B243CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CC08180 != -1)
  {
    swift_once();
  }

  sub_218B24670();
  sub_219BDC7D4();
  if (qword_27CC08190 != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();
  v2 = 2;
  if (v12)
  {
    v2 = 3;
  }

  if (v13)
  {
    v3 = v2;
  }

  else
  {
    v3 = 1;
  }

  if (qword_27CC08188 != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();
  v4 = sub_218C8D588(v3, v11);
  if (qword_27CC08198 != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();
  if (qword_27CC081A8 != -1)
  {
    swift_once();
  }

  sub_219BDC7D4();
  if (qword_27CC081A0 != -1)
  {
    swift_once();
  }

  v5 = 2;
  if (v9)
  {
    v5 = 3;
  }

  if (v10)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  sub_219BDC7D4();
  result = sub_218C8D588(v6, v8);
  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 16) = 0;
  return result;
}

unint64_t sub_218B24670()
{
  result = qword_27CC0E1A8;
  if (!qword_27CC0E1A8)
  {
    type metadata accessor for EmailSignupModelFactory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0E1A8);
  }

  return result;
}

void sub_218B246C4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v7 = sub_219BF1414();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B24A8C(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AD7B00(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  sub_218B24B24(a1, v13);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    sub_218B255A0(v13, sub_218B24A8C);
  }

  else
  {
    (*(v16 + 32))(v18, v13, v15);
    sub_219BF2534();
    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x277D33368])
    {
      (*(v8 + 96))(v10, v7);
      v20 = *v10;
      if (a3 && sub_219BE82D4())
      {
        if (v19 != 2)
        {
          v23 = swift_allocObject();
          *(v23 + 16) = v20;
          *(v23 + 24) = a3;
          *(v23 + 32) = v26;
          *(v23 + 40) = v19 & 1;
          v24 = v20;

          sub_219BDD154();

          (*(v16 + 8))(v18, v15);
          return;
        }

        (*(v16 + 8))(v18, v15);
      }

      else
      {
        (*(v16 + 8))(v18, v15);
      }
    }

    else
    {
      (*(v16 + 8))(v18, v15);
      (*(v8 + 8))(v10, v7);
    }
  }

  sub_2186C66AC();
  v21 = sub_219BF6F44();
  v22 = sub_219BF6214();
  sub_219BE5314("Unable to add execute observer for save recipe command, missing context, tracker, or state", 90, 2, &dword_2186C1000, v21, v22, MEMORY[0x277D84F90]);
}

void sub_218B24AC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218B24B24(uint64_t a1, uint64_t a2)
{
  sub_218B24A8C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218B24B88(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5)
{
  v69 = a5;
  v65 = a4;
  v61 = a3;
  v77 = a1;
  v6 = sub_219BE09E4();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x28223BE20](v6);
  v66 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDF104();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B24AC0(0, &unk_27CC15A90, MEMORY[0x277D6E130], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v53 - v11;
  v12 = sub_219BDF274();
  MEMORY[0x28223BE20](v12 - 8);
  v57 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_219BDEEB4();
  v59 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_219BDEFE4();
  v15 = *(v55 - 8);
  *&v16 = MEMORY[0x28223BE20](v55).n128_u64[0];
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a2 identifier];
  sub_219BF5414();

  [a2 isPaid];
  v74 = a2;
  v20 = [a2 totalTime];
  sub_219BF5414();

  sub_219BDEFB4();
  sub_218B24AC0(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v22 = v21;
  v23 = sub_219BDCD44();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v72 = *(v24 + 80);
  v73 = v25;
  v27 = swift_allocObject();
  v76 = xmmword_219C09BA0;
  *(v27 + 16) = xmmword_219C09BA0;
  v29 = *(v24 + 104);
  v28 = v24 + 104;
  v30 = *MEMORY[0x277CEAD18];
  v75 = v29;
  (v29)(v27 + v26);
  sub_218B25600(&qword_280EE8900, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
  v71 = "context, tracker, or state";
  v31 = v55;
  sub_219BDCCC4();

  (*(v15 + 8))(v18, v31);
  if (v61)
  {
    v32 = v56;
    sub_219BE8304();
    v33 = 0;
  }

  else
  {
    v33 = 1;
    v32 = v56;
  }

  v34 = sub_219BE89F4();
  (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
  sub_219BDF284();
  v35 = v58;
  sub_219BDEEA4();
  v36 = swift_allocObject();
  *(v36 + 16) = v76;
  v70 = v30;
  v75(v36 + v26, v30, v23);
  sub_218B25600(&unk_27CC15AA0, MEMORY[0x277D2D740], MEMORY[0x277D2D738]);
  v37 = v60;
  v54 = v23;
  sub_219BDCCC4();

  (*(v59 + 8))(v35, v37);
  v38 = [v74 sourceChannel];
  v53 = v22;
  v39 = v62;
  sub_219BE01F4();
  v40 = swift_allocObject();
  *(v40 + 16) = v76;
  v75(v40 + v26, v70, v23);
  sub_218B25600(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  v61 = v28;
  v41 = v64;
  sub_219BDCCC4();

  (*(v63 + 8))(v39, v41);
  v42 = v66;
  sub_219BE01E4();
  v43 = swift_allocObject();
  *(v43 + 16) = v76;
  v75(v43 + v26, v70, v54);
  sub_218B25600(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
  v44 = v68;
  sub_219BDCCC4();

  (*(v67 + 8))(v42, v44);
  if (v69)
  {
    v45 = [v74 eventAggregationPersonalizationData];
    if (v45)
    {
      v46 = v45;
      sub_219BDBA04();
    }

    sub_219BDFFF4();
    v79 = sub_219BE04B4();
    __swift_allocate_boxed_opaque_existential_1(v78);
    sub_219BE04A4();
    v49 = &unk_27CC0E1B0;
    v50 = MEMORY[0x277D2E2D0];
    v51 = MEMORY[0x277D2E2C8];
  }

  else
  {
    v47 = [v74 eventAggregationPersonalizationData];
    if (v47)
    {
      v48 = v47;
      sub_219BDBA04();
    }

    sub_219BDF954();
    v79 = sub_219BE04B4();
    __swift_allocate_boxed_opaque_existential_1(v78);
    sub_219BE04A4();
    v49 = &unk_27CC0E1B8;
    v50 = MEMORY[0x277D2DEA0];
    v51 = MEMORY[0x277D2DE98];
  }

  sub_218B25600(v49, v50, v51);
  sub_219BDCCE4();
  swift_unknownObjectRelease();
  return sub_218B255A0(v78, sub_21880702C);
}

uint64_t sub_218B255A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218B25600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AudioFeedRouteModel(uint64_t a1)
{
  result = qword_27CC0E1C0;
  if (!qword_27CC0E1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_218B25694(uint64_t a1)
{
  result = sub_219BDD664();
  if (v2 <= 0x3F)
  {
    result = sub_218731D50();
    if (v3 <= 0x3F)
    {
      result = sub_219BDD944();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void *sub_218B2572C@<X0>(char *a1@<X0>, void (**a2)(char *)@<X1>, uint64_t a4@<X8>)
{
  v156 = a1;
  v157 = a2;
  v155 = a4;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v4 - 8);
  v145 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BE1444();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v131 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934(0);
  v137 = v7;
  v158 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v129 = &v126 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v130 = &v126 - v10;
  sub_218B589C8(0);
  v143 = v11;
  v147 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v134 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v135 = &v126 - v14;
  v142 = sub_219BE97D4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v136 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v144 = &v126 - v17;
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v126 - v22;
  sub_218954350(0);
  v154 = v24;
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v146 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v149 = &v126 - v28;
  sub_218B58AD4(0);
  v30 = v29;
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v153 = &v126 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v126 - v34;
  sub_218954408(0);
  v37 = v36;
  v151 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v150 = &v126 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v126 - v40;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v48 = 1;
    v49 = v155;
LABEL_39:
    v125 = sub_219BE16D4();
    return (*(*(v125 - 8) + 56))(v49, v48, 1, v125);
  }

  v43 = Strong;
  v140 = v31;
  v148 = v30;

  sub_219BEE5E4();

  sub_219BDEC74();

  v152 = v43;

  sub_219BDEC44();

  sub_219BEB294();
  v44 = v25;
  v45 = v154;
  v157 = *(v25 + 48);
  v46 = (v157)(v23, 1, v154);
  v139 = v35;
  v138 = v41;
  if (v46 == 1)
  {
    v47 = v45;
    sub_218B58C44(v23, sub_21898BBC4);
  }

  else
  {
    v156 = v20;
    v50 = v149;
    (*(v25 + 32))(v149, v23, v45);
    sub_219BE6944();
    v128 = v37;
    sub_219BEB194();
    v52 = v51;

    if ((v52 & 1) == 0)
    {
      v127 = v25;
      sub_218B588AC(&v161);
      v65 = v135;
      sub_219BE65A4();
      sub_2186F1034(&qword_27CC0E1D8, sub_218B589C8, MEMORY[0x277D6DE20]);
      v66 = v143;
      v67 = sub_219BF5E44();
      if (v67)
      {
        v68 = v67;
        v160 = MEMORY[0x277D84F90];
        sub_218C34D90(0, v67 & ~(v67 >> 63), 0);
        v69 = v160;
        result = sub_219BF5DF4();
        if (v68 < 0)
        {
          __break(1u);
          goto LABEL_41;
        }

        v156 = (v158 + 32);
        v157 = (v158 + 16);
        v71 = v137;
        v72 = v130;
        do
        {
          v73 = sub_219BF5EC4();
          (*v157)(v72);
          v73(v159, 0);
          v160 = v69;
          v74 = v66;
          v76 = *(v69 + 16);
          v75 = *(v69 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_218C34D90((v75 > 1), v76 + 1, 1);
            v69 = v160;
          }

          *(v69 + 16) = v76 + 1;
          (*(v158 + 32))(v69 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v76, v72, v71);
          sub_219BF5E94();
          --v68;
          v66 = v74;
        }

        while (v68);
        (*(v147 + 8))(v65, v74);
      }

      else
      {
        (*(v147 + 8))(v65, v66);
      }

      v49 = v155;
      v89 = v145;
      type metadata accessor for TagFeedLayoutModel(0);
      sub_2186F1034(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
      sub_219BE97B4();
      v90 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v91 = v152;
      swift_beginAccess();
      v92 = *(v91 + v90);
      v93 = v140;
      v94 = v149;
      if (v92 && [v92 backingTag])
      {
        swift_unknownObjectRetain();
        v95 = v131;
        sub_219BE1414();
        v96 = sub_219BE1434();
        v98 = v97;
        swift_unknownObjectRelease_n();
        v99 = v95;
        v94 = v149;
        (*(v132 + 8))(v99, v133);
      }

      else
      {
        v96 = 0;
        v98 = 0;
      }

      v100 = v141;
      v101 = v144;
      v102 = v142;
      (*(v141 + 16))(v89, v144, v142);
      (*(v100 + 56))(v89, 0, 1, v102);
      v103 = v94;
      v104 = v96;
      v105 = v94;
      v106 = v138;
      sub_21968E4D8(v103, v89, v104, v98, v49);

      sub_218B58C44(v89, sub_218B58900);
      (*(v100 + 8))(v101, v102);
      (*(v127 + 8))(v105, v154);
      (*(v93 + 8))(v139, v148);
      (*(v151 + 8))(v106, v128);
      goto LABEL_38;
    }

    v47 = v45;
    (*(v25 + 8))(v50, v45);
    v37 = v128;
    v20 = v156;
  }

  v53 = v150;
  sub_219BDEBD4();

  v54 = v153;
  sub_219BDEBA4();

  sub_219BEB294();
  sub_218B588AC(&v161);
  v55 = (v157)(v20, 1, v47);
  v49 = v155;
  if (v55 == 1)
  {

    v56 = *(v140 + 8);
    v57 = v148;
    v56(v54, v148);
    v58 = *(v151 + 8);
    v58(v53, v37);
    v56(v139, v57);
    v58(v138, v37);
    sub_218B58C44(v20, sub_21898BBC4);
    v48 = 1;
    goto LABEL_39;
  }

  v59 = v146;
  (*(v44 + 32))(v146, v20, v47);
  sub_219BE6944();
  sub_219BEB194();
  v61 = v60;

  v62 = v148;
  if (v61)
  {

    (*(v44 + 8))(v59, v47);
    v63 = *(v140 + 8);
    v63(v153, v62);
    v64 = *(v151 + 8);
    v64(v53, v37);
    v63(v139, v62);
    v64(v138, v37);
    v48 = 1;
    goto LABEL_39;
  }

  v127 = v44;
  v77 = v134;
  sub_219BE65A4();
  sub_2186F1034(&qword_27CC0E1D8, sub_218B589C8, MEMORY[0x277D6DE20]);
  v78 = v143;
  v79 = sub_219BF5E44();
  if (!v79)
  {
    (*(v147 + 8))(v77, v78);
    v49 = v155;
LABEL_32:
    type metadata accessor for TagFeedLayoutModel(0);
    sub_2186F1034(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
    v107 = v136;
    sub_219BE97B4();
    v108 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
    v109 = v152;
    swift_beginAccess();
    v110 = *(v109 + v108);
    v111 = v145;
    if (v110)
    {
      v112 = [v110 backingTag];
      v113 = v142;
      v114 = v141;
      if (v112)
      {
        swift_unknownObjectRetain();
        v115 = v131;
        sub_219BE1414();
        v116 = sub_219BE1434();
        v118 = v117;
        v107 = v136;
        v111 = v145;
        swift_unknownObjectRelease_n();
        (*(v132 + 8))(v115, v133);
      }

      else
      {
        v116 = 0;
        v118 = 0;
      }
    }

    else
    {
      v116 = 0;
      v118 = 0;
      v113 = v142;
      v114 = v141;
    }

    (*(v114 + 16))(v111, v107, v113);
    (*(v114 + 56))(v111, 0, 1, v113);
    v119 = v146;
    v120 = v116;
    v121 = v150;
    sub_21968E4D8(v146, v111, v120, v118, v49);

    sub_218B58C44(v111, sub_218B58900);
    (*(v114 + 8))(v107, v113);
    (*(v127 + 8))(v119, v154);
    v122 = *(v140 + 8);
    v123 = v148;
    v122(v153, v148);
    v124 = *(v151 + 8);
    v124(v121, v37);
    v122(v139, v123);
    v124(v138, v37);
LABEL_38:
    v48 = 0;
    goto LABEL_39;
  }

  v80 = v79;
  v128 = v37;
  v160 = MEMORY[0x277D84F90];
  sub_218C34D90(0, v79 & ~(v79 >> 63), 0);
  v81 = v160;
  result = sub_219BF5DF4();
  if ((v80 & 0x8000000000000000) == 0)
  {
    v82 = v77;
    v156 = (v158 + 32);
    v157 = (v158 + 16);
    v83 = v137;
    v84 = v129;
    do
    {
      v85 = sub_219BF5EC4();
      (*v157)(v84);
      v85(v159, 0);
      v160 = v81;
      v86 = v78;
      v88 = *(v81 + 16);
      v87 = *(v81 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_218C34D90((v87 > 1), v88 + 1, 1);
        v81 = v160;
      }

      *(v81 + 16) = v88 + 1;
      (*(v158 + 32))(v81 + ((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v88, v84, v83);
      sub_219BF5E94();
      --v80;
      v78 = v86;
    }

    while (v80);
    (*(v147 + 8))(v82, v86);
    v49 = v155;
    v37 = v128;
    goto LABEL_32;
  }

LABEL_41:
  __break(1u);
  return result;
}

void *sub_218B26A0C@<X0>(uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v104 = a2;
  v102 = a4;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_219BE16D4();
  v92 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v88 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v76 - v9;
  v83 = sub_219BE1444();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58934(0);
  v84 = v12;
  v106 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v85 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B589C8(0);
  v91 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v90 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_219BE97D4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v93 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v105 = (&v76 - v22);
  sub_218954350(0);
  v24 = v23;
  v103 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v98 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58AD4(0);
  v100 = *(v26 - 8);
  v101 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v30 = v29;
  v99 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v78 = v15;
  v79 = v10;
  v80 = v6;
  v109 = *(Strong + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  v34 = Strong;
  sub_218987644(0);
  sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  v94 = v34;
  v109 = *(v34 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintLayoutProvider);
  sub_218B58B8C(0);
  sub_2186F1034(&qword_280EE4BD0, sub_218B58B8C, MEMORY[0x277D6DF38]);
  v96 = v28;
  sub_219BE91E4();
  sub_219BEB354();
  v35 = v103;
  v36 = *(v103 + 48);
  v37 = v36(v20, 1, v24);
  v97 = v30;
  v95 = v32;
  if (v37 == 1)
  {

    sub_219BEE5E4();
    v38 = v105;
    sub_219BEB294();
    sub_218B588AC(&v109);
    if (v36(v20, 1, v24) != 1)
    {
      sub_218B58C44(v20, sub_21898BBC4);
    }
  }

  else
  {
    v38 = v105;
    (*(v35 + 32))(v105, v20, v24);
    (*(v35 + 56))(v38, 0, 1, v24);
  }

  if (v36(v38, 1, v24) == 1)
  {

    (*(v100 + 8))(v96, v101);
    (*(v99 + 8))(v95, v97);
    sub_218B58C44(v38, sub_21898BBC4);
LABEL_10:
    v45 = 1;
    v46 = v102;
LABEL_11:
    v47 = sub_219BE0014();
    return (*(*(v47 - 8) + 56))(v46, v45, 1, v47);
  }

  v39 = v103;
  v40 = v98;
  (*(v103 + 32))(v98, v38, v24);
  sub_219BE6944();
  v41 = v97;
  v42 = v95;
  sub_219BEB194();
  v44 = v43;

  if (v44)
  {

    (*(v39 + 8))(v40, v24);
    (*(v100 + 8))(v96, v101);
    (*(v99 + 8))(v42, v41);
    goto LABEL_10;
  }

  v77 = v24;
  v49 = v90;
  sub_219BE65A4();
  sub_2186F1034(&qword_27CC0E1D8, sub_218B589C8, MEMORY[0x277D6DE20]);
  v50 = v91;
  v51 = sub_219BF5E44();
  if (!v51)
  {
LABEL_18:
    (*(v78 + 8))(v49, v50);
    v46 = v102;
    v59 = v89;
    v60 = v92;
    type metadata accessor for TagFeedLayoutModel(0);
    sub_2186F1034(&unk_280ED2740, type metadata accessor for TagFeedLayoutModel, &unk_219CAE7EC);
    v61 = v93;
    sub_219BE97B4();
    v62 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
    v63 = v94;
    swift_beginAccess();
    v64 = *(v63 + v62);
    v65 = v80;
    v66 = v79;
    if (v64 && [v64 backingTag])
    {
      swift_unknownObjectRetain();
      v67 = v81;
      sub_219BE1414();
      v68 = sub_219BE1434();
      v70 = v69;
      v60 = v92;
      swift_unknownObjectRelease_n();
      (*(v82 + 8))(v67, v83);
    }

    else
    {
      v68 = 0;
      v70 = 0;
    }

    v71 = v86;
    v72 = v87;
    (*(v86 + 16))(v65, v61, v87);
    (*(v71 + 56))(v65, 0, 1, v72);
    v73 = v98;
    v74 = v68;
    v75 = v95;
    sub_21968E4D8(v98, v65, v74, v70, v66);

    sub_218B58C44(v65, sub_218B58900);
    (*(v60 + 16))(v88, v66, v59);
    sub_219BE0004();

    (*(v60 + 8))(v66, v59);
    (*(v71 + 8))(v93, v72);
    (*(v103 + 8))(v73, v77);
    (*(v100 + 8))(v96, v101);
    (*(v99 + 8))(v75, v97);
    v45 = 0;
    goto LABEL_11;
  }

  v52 = v51;
  v108 = MEMORY[0x277D84F90];
  sub_218C34D90(0, v51 & ~(v51 >> 63), 0);
  v53 = v108;
  result = sub_219BF5DF4();
  if ((v52 & 0x8000000000000000) == 0)
  {
    v104 = v106 + 32;
    v105 = (v106 + 16);
    v54 = v84;
    v55 = v85;
    do
    {
      v56 = sub_219BF5EC4();
      (*v105)(v55);
      v56(v107, 0);
      v108 = v53;
      v58 = *(v53 + 16);
      v57 = *(v53 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_218C34D90((v57 > 1), v58 + 1, 1);
        v53 = v108;
      }

      *(v53 + 16) = v58 + 1;
      (*(v106 + 32))(v53 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v58, v55, v54);
      sub_219BF5E94();
      --v52;
    }

    while (v52);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_218B277D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v49 = a1;
  sub_218954408(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v48 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE14C4();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE14A4();
  v50 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v46 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v43 - v19;
  MEMORY[0x28223BE20](v21);
  v47 = v43 - v22;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    v25 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
    swift_beginAccess();
    v26 = *(v24 + v25);
    if (v26)
    {
      v45 = a4;
      v27 = v26;
      sub_21999FD58(v15);
      v28 = [v27 identifier];
      v43[1] = a2;
      v29 = v8;
      v30 = v12;
      v31 = v16;
      v32 = v28;
      sub_219BF5414();
      v44 = v7;

      v33 = v31;
      v34 = v30;
      sub_219BE1484();

      v35 = v50;
      v36 = v47;
      (*(v50 + 32))(v47, v20, v33);
      v51 = *(v24 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
      sub_218987644(0);
      sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
      v37 = v48;
      sub_219BE7B94();

      sub_219BEE5E4();
      v38 = v44;
      sub_219BEB294();
      sub_218B588AC(v52);
      (*(v29 + 8))(v37, v38);
      sub_218954350(0);
      if ((*(*(v39 - 8) + 48))(v34, 1, v39) == 1)
      {
        (*(v35 + 8))(v36, v33);

        sub_218B58C44(v34, sub_21898BBC4);
        v40 = 1;
        a4 = v45;
      }

      else
      {
        sub_218B58C44(v34, sub_21898BBC4);
        (*(v35 + 16))(v46, v36, v33);
        a4 = v45;
        sub_219BDFE44();

        (*(v35 + 8))(v36, v33);
        v40 = 0;
      }
    }

    else
    {

      v40 = 1;
    }
  }

  else
  {
    v40 = 1;
  }

  v41 = sub_219BDFE54();
  return (*(*(v41 - 8) + 56))(a4, v40, 1, v41);
}

void sub_218B27CE8(uint64_t a1, void *a2)
{
  v69 = a1;
  v59 = sub_219BE9C04();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_219BE1544();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_219BDBD64();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_219BE1524();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_219BE9944();
  v8 = *(v68 - 8);
  v66 = *(v8 + 64);
  MEMORY[0x28223BE20](v68);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDF074();
  v70 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v51 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v47 - v15;
  v63 = &v47 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  v20 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
  swift_beginAccess();
  v21 = *(v2 + v20);
  *(v2 + v20) = a2;
  v22 = v2;

  v64 = a2;
  sub_218B286F8(v19);
  v65 = *(v2 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v23 = v68;
  (*(v8 + 16))(v10, v69, v68);
  v24 = *(v12 + 16);
  v67 = v19;
  v49 = v12 + 16;
  v48 = v24;
  v24(v16, v19, v11);
  v25 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v26 = (v66 + *(v12 + 80) + v25) & ~*(v12 + 80);
  v27 = (v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v64;
  *(v28 + 16) = v64;
  (*(v8 + 32))(v28 + v25, v10, v23);
  v68 = v12;
  (*(v12 + 32))(v28 + v26, v63, v70);
  *(v28 + v27) = v22;
  v30 = v29;

  sub_219BDD154();

  sub_219BDD134();
  LODWORD(v28) = [objc_msgSend(v30 backingTag)];
  swift_unknownObjectRelease();
  if (v28)
  {
    v31 = v50;
    sub_219BDBD54();
    sub_219BDBD44();
    (*(v52 + 8))(v31, v53);
    (*(v54 + 104))(v56, *MEMORY[0x277D2F3B8], v55);
    v32 = v57;
    sub_219BE9934();
    v33 = (*(v58 + 88))(v32, v59);
    if (v33 == *MEMORY[0x277D6E830])
    {
      (*(v68 + 104))(v51, *MEMORY[0x277D2D868], v70);
    }

    else
    {
      if (v33 != *MEMORY[0x277D6E840] && v33 != *MEMORY[0x277D6E848] && v33 != *MEMORY[0x277D6E838])
      {
        sub_219BF7514();
        __break(1u);
        return;
      }

      v48(v51, v67, v70);
    }

    v34 = v60;
    sub_219BE1514();
    sub_2186F1034(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
    v35 = v62;
    sub_219BDD1F4();
    (*(v61 + 8))(v34, v35);
    sub_219BDD134();
  }

  v36 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
  v37 = [objc_msgSend(v30 backingTag)];
  swift_unknownObjectRelease();
  v38 = &v36[OBJC_IVAR___TSFeedViewContext_feedTagType];
  swift_beginAccess();
  *v38 = v37;
  v38[8] = 0;
  v39 = sub_219BF6394();
  v40 = [v30 alternativeFeedDescriptor];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 feedConfiguration];
  }

  else
  {
    v42 = [v30 feedConfiguration];
  }

  *&v73 = v39;
  *(&v73 + 1) = v36;
  v74 = MEMORY[0x277D84F90];
  LOBYTE(v75) = 0;
  *(&v75 + 1) = v42;
  v76 = 0u;
  v77 = 0u;
  v78 = -1;
  v43 = swift_allocObject();
  v44 = v76;
  *(v43 + 48) = v75;
  *(v43 + 64) = v44;
  *(v43 + 80) = v77;
  *(v43 + 96) = v78;
  v45 = v74;
  *(v43 + 16) = v73;
  *(v43 + 32) = v45;
  v72 = v43 | 0x2000000000000004;
  swift_unknownObjectRetain();
  v46 = v36;
  sub_218B5A004(&v73, v71);

  sub_219BE7884();

  sub_218B5A060(&v73);
  swift_unknownObjectRelease();

  (*(v68 + 8))(v67, v70);
}

uint64_t sub_218B286F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE15B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDCD34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDD184();
  sub_218747CC8(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
  sub_219BDD0A4();
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  (*(v3 + 104))(v5, *MEMORY[0x277D2F548], v2);
  sub_219BDD094();
  (*(v3 + 8))(v5, v2);
  v10 = sub_219BDCD14();

  (*(v7 + 8))(v9, v6);
  v11 = sub_219BDF074();
  v12 = MEMORY[0x277D2D820];
  if ((v10 & 1) == 0)
  {
    v12 = MEMORY[0x277D2D810];
  }

  return (*(*(v11 - 8) + 104))(a1, *v12, v11);
}

uint64_t sub_218B289C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v164 = a5;
  v127 = a4;
  v157 = a3;
  v143 = sub_219BDF104();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_219BDF434();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v120 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v159 = &v120 - v10;
  sub_218B5A0B4(0);
  MEMORY[0x28223BE20](v11 - 8);
  v136 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BE0754();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v124 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A0E8(0);
  MEMORY[0x28223BE20](v14 - 8);
  v133 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_219BDFD94();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v123 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A11C(0);
  MEMORY[0x28223BE20](v17 - 8);
  v130 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_219BDF654();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v122 = &v120 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A150(0);
  MEMORY[0x28223BE20](v20 - 8);
  v126 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_219BDF2F4();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v121 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896FA3C(0);
  MEMORY[0x28223BE20](v23 - 8);
  v156 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_219BDFA44();
  v160 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v166 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_219BE9C04();
  v150 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v147 = &v120 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_219BDF074();
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v148 = &v120 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_219BE1544();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v144 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BE1524();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BE14C4();
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v120 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BE14A4();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_219BE1444();
  v161 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v125 = &v120 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40 = MEMORY[0x28223BE20](v39).n128_u64[0];
  v42 = &v120 - v41;
  v43 = [a2 backingTag];
  sub_219BE1414();
  swift_unknownObjectRelease();
  sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v158 = v42;
  v162 = v37;
  sub_219BDCCC4();
  sub_21999FD58(v32);
  v163 = a2;
  v44 = [a2 identifier];
  sub_219BF5414();

  sub_219BE1484();
  sub_2186F1034(&qword_280EE8010, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
  v168 = "feedDismissingManager";
  v45 = v144;
  v167 = a1;
  sub_219BDCCC4();
  (*(v34 + 8))(v36, v33);
  sub_219BE9924();
  (*(v145 + 104))(v45, *MEMORY[0x277D2F3B8], v146);
  v46 = v147;
  sub_219BE9934();
  v47 = (*(v150 + 88))(v46, v152);
  if (v47 == *MEMORY[0x277D6E830])
  {
    (*(v149 + 104))(v148, *MEMORY[0x277D2D868], v151);
  }

  else
  {
    if (v47 != *MEMORY[0x277D6E840] && v47 != *MEMORY[0x277D6E848] && v47 != *MEMORY[0x277D6E838])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    (*(v149 + 16))(v148, v127, v151);
  }

  v48 = v160;
  v49 = v156;
  v50 = v153;
  sub_219BE1514();
  sub_2186F1034(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  v51 = v155;
  sub_219BDCCC4();
  (*(v154 + 8))(v50, v51);
  v52 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_urlReferralData;
  v53 = v164;
  swift_beginAccess();
  sub_218B5A2A4(v53 + v52, v49, sub_21896FA3C);
  v54 = v165;
  if ((*(v48 + 48))(v49, 1, v165) == 1)
  {
    sub_218B58C44(v49, sub_21896FA3C);
  }

  else
  {
    (*(v48 + 32))(v166, v49, v54);
    v55 = v126;
    sub_219BDFA24();
    v56 = v128;
    v57 = v129;
    if ((*(v128 + 48))(v55, 1, v129) == 1)
    {
      sub_218B58C44(v55, sub_218B5A150);
    }

    else
    {
      v58 = v121;
      (*(v56 + 32))(v121, v55, v57);
      sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v59 = sub_219BDCD44();
      v60 = *(v59 - 8);
      v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_219C09BA0;
      (*(v60 + 104))(v62 + v61, *MEMORY[0x277CEAD18], v59);
      sub_2186F1034(&qword_280EE8800, MEMORY[0x277D2D9E8], MEMORY[0x277D2D9E0]);
      sub_219BDCCC4();

      (*(v56 + 8))(v58, v57);
    }

    v63 = v135;
    v64 = v132;
    v65 = v131;
    v66 = v130;
    sub_219BDF9F4();
    if ((*(v65 + 48))(v66, 1, v64) == 1)
    {
      sub_218B58C44(v66, sub_218B5A11C);
    }

    else
    {
      v67 = v122;
      (*(v65 + 32))(v122, v66, v64);
      sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v68 = sub_219BDCD44();
      v69 = *(v68 - 8);
      v70 = (*(v69 + 80) + 32) & ~*(v69 + 80);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_219C09BA0;
      (*(v69 + 104))(v71 + v70, *MEMORY[0x277CEAD18], v68);
      sub_2186F1034(&qword_280EE8700, MEMORY[0x277D2DC88], MEMORY[0x277D2DC80]);
      sub_219BDCCC4();

      (*(v65 + 8))(v67, v64);
    }

    v72 = v134;
    v73 = v133;
    v74 = v165;
    sub_219BDFA04();
    if ((*(v72 + 48))(v73, 1, v63) == 1)
    {
      sub_218B58C44(v73, sub_218B5A0E8);
    }

    else
    {
      v75 = v123;
      (*(v72 + 32))(v123, v73, v63);
      sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v76 = sub_219BDCD44();
      v77 = *(v76 - 8);
      v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v79 = swift_allocObject();
      *(v79 + 16) = xmmword_219C09BA0;
      (*(v77 + 104))(v79 + v78, *MEMORY[0x277CEAD18], v76);
      sub_2186F1034(&qword_280EE8550, MEMORY[0x277D2E0C8], MEMORY[0x277D2E0C0]);
      sub_219BDCCC4();

      (*(v72 + 8))(v75, v63);
    }

    v80 = v138;
    v81 = v137;
    v82 = v136;
    sub_219BDFA14();
    if ((*(v81 + 48))(v82, 1, v80) == 1)
    {
      sub_218B58C44(v82, sub_218B5A0B4);
    }

    else
    {
      v83 = v124;
      (*(v81 + 32))(v124, v82, v80);
      sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v84 = sub_219BDCD44();
      v85 = *(v84 - 8);
      v86 = (*(v85 + 80) + 32) & ~*(v85 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_219C09BA0;
      (*(v85 + 104))(v87 + v86, *MEMORY[0x277CEAD18], v84);
      sub_2186F1034(&qword_280EE8308, MEMORY[0x277D2E770], MEMORY[0x277D2E768]);
      sub_219BDCCC4();

      (*(v81 + 8))(v83, v80);
    }

    sub_219BDFA34();
    v88 = v163;
    v89 = [objc_msgSend(v163 backingTag)];
    swift_unknownObjectRelease();
    v90 = sub_219BF5414();
    v92 = v91;

    if ([v88 backingTag])
    {
      swift_unknownObjectRetain();
      v93 = v125;
      sub_219BE1414();
      v94 = sub_219BE1434();
      v96 = v95;
      swift_unknownObjectRelease_n();
      (*(v161 + 8))(v93, v162);
      if ((v94 != v90 || v96 != v92) && (sub_219BF78F4() & 1) == 0)
      {
        v111 = v159;
        v173 = sub_219BDF3F4();
        v174 = v112;
        v171 = v90;
        v172 = v92;
        v169 = v94;
        v170 = v96;
        sub_2187F3BD4();
        sub_219BF7034();

        v113 = v120;
        sub_219BDF424();

        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v114 = sub_219BDCD44();
        v115 = *(v114 - 8);
        v116 = (*(v115 + 80) + 32) & ~*(v115 + 80);
        v117 = swift_allocObject();
        *(v117 + 16) = xmmword_219C09BA0;
        (*(v115 + 104))(v117 + v116, *MEMORY[0x277CEAD18], v114);
        sub_2186F1034(&qword_280EE87D0, MEMORY[0x277D2DA88], MEMORY[0x277D2DA80]);
        v118 = v140;
        sub_219BDCCC4();

        v119 = *(v139 + 8);
        v119(v113, v118);
        v119(v111, v118);
        (*(v160 + 8))(v166, v165);
        goto LABEL_27;
      }

      v74 = v165;
      v48 = v160;
    }

    sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v97 = sub_219BDCD44();
    v98 = *(v97 - 8);
    v99 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v100 = swift_allocObject();
    *(v100 + 16) = xmmword_219C09BA0;
    (*(v98 + 104))(v100 + v99, *MEMORY[0x277CEAD18], v97);
    sub_2186F1034(&qword_280EE87D0, MEMORY[0x277D2DA88], MEMORY[0x277D2DA80]);
    v101 = v159;
    v102 = v140;
    sub_219BDCCC4();

    (*(v139 + 8))(v101, v102);
    (*(v48 + 8))(v166, v74);
  }

LABEL_27:
  v103 = [v163 backingTag];
  v175 = &unk_282B7DDA8;
  if (swift_dynamicCastObjCProtocolConditional())
  {
    v104 = v141;
    sub_219BE01F4();
    sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v105 = sub_219BDCD44();
    v106 = *(v105 - 8);
    v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_219C09BA0;
    (*(v106 + 104))(v108 + v107, *MEMORY[0x277CEAD18], v105);
    sub_2186F1034(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v109 = v143;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v142 + 8))(v104, v109);
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return (*(v161 + 8))(v158, v162);
}

void sub_218B2A5A4(uint64_t a1)
{
  sub_218954408(0);
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747BDC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDC104();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v62 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B597DC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF1094();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v70 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7158(0);
  v74 = v12;
  v76 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v75 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  sub_21898BF70(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v63 = &v62 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v62 - v28;
  sub_218B5A32C(0, &qword_280EE47A8, MEMORY[0x277D6E1E0]);
  v31 = v30;
  v77 = a1;
  sub_219BE8BA4();
  sub_219BE5FC4();
  v32 = *(v22 + 8);
  v32(v29, v21);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
      v49 = *(v48 + 48);
      v50 = sub_219BF1584();
      (*(*(v50 - 8) + 8))(&v19[v49], v50);
      v33 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
    case 3u:
    case 6u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      v33 = type metadata accessor for TagFeedModel;
      goto LABEL_3;
    case 4u:
      v41 = v75;
      v40 = v76;
      v42 = v74;
      (*(v76 + 32))(v75, v19, v74);
      v43 = v70;
      sub_219BF07D4();
      v19 = v73;
      sub_219BF1034();
      (*(v71 + 8))(v43, v72);
      v44 = sub_219BF3484();
      v45 = *(v44 - 8);
      if ((*(v45 + 48))(v19, 1, v44) == 1)
      {
        (*(v40 + 8))(v41, v42);
        v33 = sub_218B597DC;
LABEL_3:
        v34 = v33;
        v35 = v19;
        goto LABEL_4;
      }

      if ((*(v45 + 88))(v19, v44) == *MEMORY[0x277D33DF0])
      {
        (*(v45 + 8))(v19, v44);
        v51 = v64;
        MEMORY[0x21CEBF950](v31);
        v52 = v63;
        sub_219BE8BA4();
        v16 = v65;
        v53 = v67;
        sub_219BEB2F4();
        v32(v52, v21);
        (*(v66 + 8))(v51, v53);
        v55 = v68;
        v54 = v69;
        if ((*(v68 + 48))(v16, 1, v69) == 1)
        {
          (*(v76 + 8))(v75, v42);
          v56 = sub_218747BDC;
          goto LABEL_17;
        }

        v57 = v62;
        (*(v55 + 32))(v62, v16, v54);
        Strong = swift_unknownObjectWeakLoadStrong();
        v59 = v75;
        if (Strong)
        {
          v60 = Strong;
          v61 = swift_unknownObjectWeakLoadStrong();
          if (v61)
          {
            sub_218B59904(v60, v57, v61);
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        (*(v55 + 8))(v57, v54);
        (*(v76 + 8))(v59, v42);
      }

      else
      {
        (*(v40 + 8))(v41, v42);
        (*(v45 + 8))(v19, v44);
      }

      break;
    case 5u:
      sub_218B58C44(v19, type metadata accessor for TagFeedModel);
      sub_219BE8BA4();
      sub_219BE5FC4();
      v32(v24, v21);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v46 = sub_219BE5B64();
        swift_getObjectType();
        v78 = v46;
        sub_219BEB4E4();
      }

      else
      {
        v56 = type metadata accessor for TagFeedModel;
LABEL_17:
        v34 = v56;
        v35 = v16;
LABEL_4:
        sub_218B58C44(v35, v34);
      }

      break;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54, " fallback ");
      v37 = *(v36 + 48);
      sub_2186F0E54(0);
      (*(*(v38 - 8) + 8))(&v19[v37], v38);
      sub_2186EAD48(0);
      (*(*(v39 - 8) + 8))(v19, v39);
      return;
    default:

      sub_2186F0CC0(0);
      v34 = type metadata accessor for TagFeedGapLocation;
      v35 = &v19[*(v47 + 48)];
      goto LABEL_4;
  }
}

double sub_218B2AF3C(uint64_t a1, void *a2)
{
  v5 = sub_219BE8F74();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = [a2 referringFeedItemIdentifier];
  if (v8)
  {
    v9 = v8;
    sub_219BF5414();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  [a2 setReferringFeedItemIdentifier_];
  v25[1] = v2;
  (*(v6 + 16))(v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  (*(v6 + 32))(v13 + v12, v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v14 = a2;
  if (v11)
  {
    sub_219BDD1B4();
  }

  else
  {
    sub_219BDD154();
  }

  v15 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
  v16 = [objc_msgSend(a2 backingTag)];
  swift_unknownObjectRelease();
  v17 = &v15[OBJC_IVAR___TSFeedViewContext_feedTagType];
  swift_beginAccess();
  *v17 = v16;
  v17[8] = 0;
  v18 = [a2 backingChannel];
  if (!v18)
  {
    v18 = [a2 backingTag];
  }

  if ([swift_unknownObjectRetain() isPuzzleHub])
  {
    swift_unknownObjectRelease();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v15;
    *(v19 + 32) = MEMORY[0x277D84F90];
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    v20 = 9;
  }

  else if ([v18 isFoodHub])
  {
    swift_unknownObjectRelease();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v15;
    *(v19 + 32) = MEMORY[0x277D84F90];
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    v20 = 12;
  }

  else
  {
    v21 = [v18 isRecipeCatalog];
    swift_unknownObjectRelease();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = v15;
    *(v19 + 32) = MEMORY[0x277D84F90];
    *(v19 + 40) = 0;
    *(v19 + 48) = 0;
    if (!v21)
    {
      *(v19 + 88) = 0;
      *(v19 + 72) = 0u;
      *(v19 + 56) = 0u;
      goto LABEL_16;
    }

    v20 = 13;
  }

  *(v19 + 56) = v20;
  *(v19 + 64) = 0u;
  *(v19 + 80) = 0u;
LABEL_16:
  *(v19 + 96) = -1;
  v22 = v19 | 0x2000000000000004;
  v25[2] = v19 | 0x2000000000000004;
  swift_unknownObjectRetain();
  v23 = v15;

  sub_219BE7864();

  swift_unknownObjectRelease();
  return sub_218932F9C(v22);
}

uint64_t sub_218B2B358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v3 = sub_219BDBD34();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE1574();
  v6 = *(v5 - 8);
  v53 = v5;
  v54 = v6;
  MEMORY[0x28223BE20](v5);
  v52 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE9C04();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v41 - v11;
  v12 = sub_219BDF244();
  v56 = *(v12 - 8);
  v57 = v12;
  MEMORY[0x28223BE20](v12);
  v55 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE1444();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE17A4();
  sub_2186F1034(&qword_280EE7F30, MEMORY[0x277D2F910], MEMORY[0x277D2F908]);
  memset(v62, 0, 32);
  sub_219BDCCE4();
  sub_218B58C44(v62, sub_21880702C);
  sub_219BF6394();
  sub_219BE1414();
  swift_unknownObjectRelease();
  sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v19 = v18;
  v20 = sub_219BDCD44();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v45 = *(v21 + 72);
  v47 = v19;
  v23 = swift_allocObject();
  v43 = xmmword_219C09BA0;
  *(v23 + 16) = xmmword_219C09BA0;
  v24 = *(v21 + 104);
  v44 = *MEMORY[0x277CEAD18];
  v42 = v24;
  v24(v23 + v22);
  sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v46 = "feedDismissingManager";
  sub_219BDCCC4();

  v25 = v17;
  v26 = v51;
  v27 = v14;
  v28 = v49;
  (*(v15 + 8))(v25, v27);
  v29 = v50;
  v30 = v48;
  sub_219BE8F44();
  (*(v29 + 32))(v28, v30, v26);
  v31 = (*(v29 + 88))(v28, v26);
  if (v31 == *MEMORY[0x277D6E830])
  {
    (*(v54 + 104))(v52, *MEMORY[0x277D2F428], v53);
  }

  else
  {
    v32 = *(v54 + 104);
    if (v31 == *MEMORY[0x277D6E840] || v31 == *MEMORY[0x277D6E848] || v31 == *MEMORY[0x277D6E838])
    {
      v32(v52, *MEMORY[0x277D2F420], v53);
    }

    else
    {
      v32(v52, *MEMORY[0x277D2F430], v53);
      (*(v29 + 8))(v28, v26);
    }
  }

  v34 = v59;
  v33 = v60;
  v35 = v55;
  sub_219BDF234();
  v36 = swift_allocObject();
  *(v36 + 16) = v43;
  v42(v36 + v22, v44, v20);
  sub_2186F1034(&qword_280EE8810, MEMORY[0x277D2D9A8], MEMORY[0x277D2D9A0]);
  v37 = v57;
  sub_219BDCCC4();

  (*(v56 + 8))(v35, v37);
  sub_219BDF524();
  v38 = v58;
  sub_219BE8F64();
  sub_2186F1034(&qword_280EE8760, MEMORY[0x277D2DB18], MEMORY[0x277D2DB00]);
  sub_219BDCC64();
  v39 = *(v34 + 8);
  v39(v38, v33);
  sub_219BE8F54();

  sub_219BDCC74();

  return (v39)(v38, v33);
}

uint64_t sub_218B2BB58()
{
  sub_219BE0014();
  sub_2186F1034(&unk_280EE84D0, MEMORY[0x277D2E2E0], MEMORY[0x277D2E2D8]);
  sub_219BDCC44();
  sub_219BDFE54();
  sub_2186F1034(&qword_280EE8540, MEMORY[0x277D2E1A8], MEMORY[0x277D2E1A0]);
  sub_219BDCC44();
  sub_219BE0714();
  sub_2186F1034(&qword_280EE8338, MEMORY[0x277D2E728], MEMORY[0x277D2E720]);
  sub_219BDCC44();
  sub_219BDF434();
  sub_2186F1034(&qword_280EE87D0, MEMORY[0x277D2DA88], MEMORY[0x277D2DA80]);
  sub_219BDCC44();
  sub_219BDF2F4();
  sub_2186F1034(&qword_280EE8800, MEMORY[0x277D2D9E8], MEMORY[0x277D2D9E0]);
  sub_219BDCC44();
  sub_219BDF654();
  sub_2186F1034(&qword_280EE8700, MEMORY[0x277D2DC88], MEMORY[0x277D2DC80]);
  sub_219BDCC44();
  sub_219BDF034();
  sub_2186F1034(&unk_280EE88E0, MEMORY[0x277D2D7D8], MEMORY[0x277D2D7D0]);
  return sub_219BDCC44();
}

void sub_218B2BDC4(uint64_t a1)
{
  v2 = sub_219BF0B74();
  v160 = *(v2 - 8);
  v161 = v2;
  MEMORY[0x28223BE20](v2);
  v159 = v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F1164(0);
  v157 = *(v4 - 8);
  v158 = v4;
  MEMORY[0x28223BE20](v4);
  v156 = v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_219BDBD34();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v115 = v109 - v8;
  v9 = sub_219BF0AC4();
  v154 = *(v9 - 8);
  v155 = v9;
  MEMORY[0x28223BE20](v9);
  v153 = v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FB04C(0);
  v151 = *(v11 - 8);
  v152 = v11;
  MEMORY[0x28223BE20](v11);
  v150 = v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_219BEDAE4();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v147 = v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FAF54(0);
  v146 = v14;
  v145 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v144 = v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_219BF07A4();
  v142 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v141 = v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7240(0);
  v140 = v17;
  v139 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v138 = v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A30C(0);
  v20 = v19;
  v111 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v109[1] = v21;
  v110 = v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_219BEBF14();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109[0] = v22;
  MEMORY[0x28223BE20](v23);
  v119 = v109 - v24;
  v137 = sub_219BEC504();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48(0);
  v162 = v26;
  v165 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v164 = v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_219BF1094();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7158(0);
  v131 = v29;
  v130 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v129 = v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_219BF04A4();
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v126 = v109 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0F3C(0);
  v125 = v32;
  v124 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v123 = v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_219BF0F34();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54(0);
  v166 = *(v35 - 8);
  v167 = v35;
  MEMORY[0x28223BE20](v35);
  v37 = v109 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v38);
  v40 = v109 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v43 = v109 - v42;
  sub_21898BF70(0);
  v45 = v44;
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v48 = v109 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = v109 - v50;
  v163 = v20;
  v169 = a1;
  sub_219BE7564();
  sub_219BE5FC4();
  v52 = *(v46 + 8);
  v53 = v51;
  v54 = v43;
  v52(v53, v45);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
      v82 = *(v81 + 48);
      v83 = sub_219BF1584();
      (*(*(v83 - 8) + 8))(&v43[v82], v83);
      v55 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_3;
    case 2u:
      v76 = v166;
      v75 = v167;
      (*(v166 + 32))(v37, v54, v167);
      v77 = v120;
      sub_219BF07D4();
      sub_218B2D1DC(v169, v77);
      (*(v121 + 8))(v77, v122);
      (*(v76 + 8))(v37, v75);
      return;
    case 3u:
      v58 = v124;
      v59 = v123;
      v78 = v43;
      v61 = v125;
      (*(v124 + 32))(v123, v78, v125);
      v79 = v126;
      sub_219BF07D4();
      sub_218B2DAD8(v169, v79);
      v68 = *(v127 + 8);
      v69 = v79;
      v70 = &v160;
      goto LABEL_11;
    case 4u:
      v58 = v130;
      v59 = v129;
      v71 = v43;
      v61 = v131;
      (*(v130 + 32))(v129, v71, v131);
      v72 = v132;
      sub_219BF07D4();
      v63.n128_f64[0] = sub_218B2E678(v169, v72);
      v68 = *(v133 + 8);
      v69 = v72;
      v70 = &v166;
      goto LABEL_11;
    case 5u:
      sub_218B58C44(v43, type metadata accessor for TagFeedModel);
      sub_219BE7564();
      sub_219BE5FC4();
      v52(v48, v45);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v84 = sub_219BE5B64();
        swift_getObjectType();
        v170 = v84;
        v85 = v115;
        sub_219BE75A4();
        v86 = v116;
        sub_219BE7574();
        sub_219BEB4C4();

        v87 = *(v117 + 8);
        v88 = v118;
        v87(v86, v118);
        v87(v85, v88);
      }

      else
      {
        v56 = type metadata accessor for TagFeedModel;
        v57 = v40;
LABEL_4:
        sub_218B58C44(v57, v56);
      }

      return;
    case 6u:
    case 8u:
    case 0xCu:
    case 0xDu:
      v55 = type metadata accessor for TagFeedModel;
LABEL_3:
      v56 = v55;
      v57 = v43;
      goto LABEL_4;
    case 7u:
      v91 = v164;
      v90 = v165;
      v92 = v162;
      (*(v165 + 32))(v164, v43, v162);
      v93 = v135;
      sub_219BF07D4();
      v94 = v136;
      v95 = v137;
      if ((*(v136 + 88))(v93, v137) == *MEMORY[0x277D2D6A8])
      {
        v161 = v54;
        (*(v94 + 96))(v93, v95);
        v96 = v113;
        v97 = *(v113 + 32);
        v98 = v119;
        v99 = v93;
        v100 = v114;
        v97(v119, v99, v114);
        v101 = v168;
        __swift_project_boxed_opaque_existential_1((v168 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_trackerConfiguration), *(v168 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_trackerConfiguration + 24));
        if (sub_219BE0BD4())
        {
          v168 = *(v101 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
          (*(v96 + 16))(v112, v98, v100);
          v102 = v111;
          v103 = v110;
          v104 = v163;
          (*(v111 + 16))(v110, v169, v163);
          v105 = (*(v96 + 80) + 16) & ~*(v96 + 80);
          v106 = (v109[0] + *(v102 + 80) + v105) & ~*(v102 + 80);
          v107 = swift_allocObject();
          v97((v107 + v105), v112, v100);
          (*(v102 + 32))(v107 + v106, v103, v104);
          sub_219BDD154();

          (*(v96 + 8))(v119, v100);
          (*(v165 + 8))(v164, v162);
        }

        else
        {
          (*(v96 + 8))(v98, v100);
          (*(v165 + 8))(v164, v92);
        }

        v54 = v161;
      }

      else
      {
        (*(v90 + 8))(v91, v92);
        (*(v94 + 8))(v93, v95);
      }

      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54, " fallback ");
      (*(v166 + 8))(&v54[*(v108 + 48)], v167);
      return;
    case 9u:
      v58 = v145;
      v59 = v144;
      v66 = v43;
      v61 = v146;
      (*(v145 + 32))(v144, v66, v146);
      v67 = v147;
      sub_219BF07D4();
      v63.n128_f64[0] = sub_218B2FB78(v169, v67);
      v68 = *(v148 + 8);
      v69 = v67;
      v70 = &v172;
      goto LABEL_11;
    case 0xAu:
      v58 = v139;
      v59 = v138;
      v73 = v43;
      v61 = v140;
      (*(v139 + 32))(v138, v73, v140);
      v74 = v141;
      sub_219BF07D4();
      v63.n128_f64[0] = sub_218B2F14C(v169, v74);
      v68 = *(v142 + 8);
      v69 = v74;
      v70 = &v171;
LABEL_11:
      v64 = *(v70 - 32);
      goto LABEL_18;
    case 0xBu:
      v59 = v150;
      v58 = v151;
      v89 = v43;
      v61 = v152;
      (*(v151 + 32))(v150, v89, v152);
      v62 = v153;
      sub_219BF07D4();
      v63.n128_f64[0] = sub_218B306DC(v169, v62);
      v65 = v154;
      v64 = v155;
      goto LABEL_17;
    case 0xEu:
      v59 = v156;
      v58 = v157;
      v60 = v43;
      v61 = v158;
      (*(v157 + 32))(v156, v60, v158);
      v62 = v159;
      sub_219BF07D4();
      v63.n128_f64[0] = sub_218B31544(v169, v62);
      v65 = v160;
      v64 = v161;
LABEL_17:
      v68 = *(v65 + 8);
      v69 = v62;
LABEL_18:
      v68(v69, v64, v63);
      (*(v58 + 8))(v59, v61);
      return;
    default:

      sub_2186F0CC0(0);
      v56 = type metadata accessor for TagFeedGapLocation;
      v57 = &v43[*(v80 + 48)];
      goto LABEL_4;
  }
}

uint64_t sub_218B2D1DC(uint64_t a1, uint64_t a2)
{
  v74 = a2;
  sub_218B5A30C(0);
  v4 = v3;
  v82 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v77 = v5;
  v81 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_219BF0F34();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v73 = v6;
  v87 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDBD34();
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v70 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v63 - v10;
  v79 = sub_219BDB184();
  v76 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v86 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D8C(0);
  MEMORY[0x28223BE20](v12 - 8);
  v85 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  v67 = *(v24 - 8);
  MEMORY[0x28223BE20](v24 - 8);
  v84 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v63 - v27;
  v68 = v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v63 - v31;
  sub_219BE7594();
  v83 = v4;
  v75 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v16 + 8))(v18, v15);
  sub_219BEB244();

  (*(v21 + 8))(v23, v20);
  v33 = v32;
  sub_218B5A2A4(v32, v28, sub_21898BBC4);
  sub_218954350(0);
  v35 = v34;
  v36 = *(v34 - 8);
  if ((*(v36 + 48))(v28, 1, v34) == 1)
  {
    sub_218B58C44(v28, sub_21898BBC4);
    v37 = sub_219BE16E4();
    (*(*(v37 - 8) + 56))(v85, 1, 1, v37);
  }

  else
  {
    sub_219BE6934();
    v38 = v89;
    (*(v36 + 8))(v28, v35);
    v39 = v85;
    sub_2194420E8(v38, v85);

    v40 = sub_219BE16E4();
    (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  }

  v66 = *(v88 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker + 24);
  v64 = *(v88 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker + 32);
  v65 = __swift_project_boxed_opaque_existential_1((v88 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker), v66);
  v41 = v69;
  v42 = v83;
  v43 = v75;
  sub_219BE75A4();
  v44 = v70;
  sub_219BE7574();
  sub_219BDB104();
  v45 = *(v71 + 8);
  v46 = v44;
  v47 = v72;
  v45(v46, v72);
  v45(v41, v47);
  v48 = v74;
  v72 = sub_219BF0F14();
  v49 = v78;
  v50 = v80;
  (*(v78 + 16))(v87, v48, v80);
  v52 = v81;
  v51 = v82;
  (*(v82 + 16))(v81, v43, v42);
  v63 = v33;
  sub_218B5A2A4(v33, v84, sub_21898BBC4);
  v53 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v54 = (v73 + *(v51 + 80) + v53) & ~*(v51 + 80);
  v55 = (v77 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = (*(v67 + 80) + v55 + 8) & ~*(v67 + 80);
  v57 = swift_allocObject();
  (*(v49 + 32))(v57 + v53, v87, v50);
  (*(v51 + 32))(v57 + v54, v52, v42);
  *(v57 + v55) = v88;
  sub_218B5A680(v84, v57 + v56, sub_21898BBC4);
  v58 = v64;
  v59 = *(v64 + 32);

  v60 = v85;
  v61 = v86;
  v59(v86, v85, v72, sub_218B5A6E8, v57, v66, v58);
  swift_unknownObjectRelease();

  (*(v76 + 8))(v61, v79);
  sub_218B58C44(v60, sub_218B58D8C);
  return sub_218B58C44(v63, sub_21898BBC4);
}

uint64_t sub_218B2DAD8(uint64_t a1, uint64_t a2)
{
  v93 = a2;
  sub_218B5A30C(0);
  v4 = v3;
  v97 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v96 = v5;
  v106 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BF04A4();
  v95 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v92 = v6;
  v103 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v90 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v101 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v8;
  MEMORY[0x28223BE20](v9);
  v105 = v79 - v10;
  v82 = sub_219BE1444();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v12 - 8);
  v84 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BE16D4();
  v94 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v14;
  MEMORY[0x28223BE20](v15);
  v109 = v79 - v16;
  sub_21898BF70(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v83 = v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = v79 - v27;
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v33 = v32;
  v108 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v98 = v79 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v34;
  MEMORY[0x28223BE20](v35);
  v107 = v79 - v36;
  sub_219BE7594();
  v110 = v4;
  v102 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v19 + 8))(v21, v18);
  sub_219BEB244();
  v37 = v108;

  v38 = *(v24 + 8);
  v85 = v24 + 8;
  v38(v28, v23);
  if ((*(v37 + 48))(v31, 1, v33) == 1)
  {
    return sub_218B58C44(v31, sub_21898BBC4);
  }

  v40 = *(v37 + 32);
  v41 = v107;
  v88 = v33;
  v79[1] = v37 + 32;
  v79[0] = v40;
  v40(v107, v31, v33);
  v42 = v86;
  v43 = sub_218B326E4();
  v44 = v83;
  sub_219BE7594();
  v45 = sub_219BE97D4();
  v46 = v84;
  (*(*(v45 - 8) + 56))(v84, 1, 1, v45);
  if (v43)
  {
    swift_unknownObjectRetain();
    v47 = v44;
    v48 = v80;
    sub_219BE1414();
    v49 = sub_219BE1434();
    v51 = v50;
    swift_unknownObjectRelease();
    v52 = v48;
    v44 = v47;
    (*(v81 + 8))(v52, v82);
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v53 = v93;
  sub_21968E4D8(v41, v46, v49, v51, v109);

  sub_218B58C44(v46, sub_218B58900);
  v38(v44, v23);
  sub_218718690(v42 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager, &v111);
  v54 = v112;
  v55 = __swift_project_boxed_opaque_existential_1(&v111, v112);
  v56 = [sub_219BF0404() dismissingIdentifier];
  v57 = swift_unknownObjectRelease();
  v79[2] = v43;
  if (v56)
  {
    v58 = sub_219BF5414();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0;
  }

  v61 = MEMORY[0x28223BE20](v57);
  v63 = v79 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v64 + 16))(v63, v55, v54, v61);
  v65 = v105;
  sub_218A75968(v58, v60, v63, v54, v105);
  __swift_destroy_boxed_opaque_existential_1(&v111);
  v93 = *(v42 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v66 = v108;
  (*(v108 + 16))(v98, v107, v88);
  v67 = v95;
  (*(v95 + 16))(v103, v53, v104);
  sub_218B5A2A4(v65, v101, sub_218B59134);
  v68 = v94;
  (*(v94 + 16))(v99, v109, v100);
  v69 = v97;
  (*(v97 + 16))(v106, v102, v110);
  v70 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v71 = (v87 + *(v67 + 80) + v70) & ~*(v67 + 80);
  v72 = (v92 + *(v90 + 80) + v71) & ~*(v90 + 80);
  v73 = (v91 + *(v68 + 80) + v72) & ~*(v68 + 80);
  v74 = (v89 + *(v69 + 80) + v73) & ~*(v69 + 80);
  v75 = swift_allocObject();
  v76 = v75 + v70;
  v77 = v88;
  (v79[0])(v76, v98, v88);
  (*(v67 + 32))(v75 + v71, v103, v104);
  sub_218B5A680(v101, v75 + v72, sub_218B59134);
  v78 = v100;
  (*(v68 + 32))(v75 + v73, v99, v100);
  (*(v69 + 32))(v75 + v74, v106, v110);
  sub_219BDD154();

  swift_unknownObjectRelease();
  sub_218B58C44(v105, sub_218B59134);
  (*(v68 + 8))(v109, v78);
  return (*(v66 + 8))(v107, v77);
}

double sub_218B2E678(uint64_t a1, uint64_t a2)
{
  v101 = a2;
  v112 = a1;
  sub_218B5A30C(0);
  v3 = v2;
  v105 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v102 = v4;
  v111 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF1094();
  v103 = *(v5 - 8);
  v104 = v5;
  MEMORY[0x28223BE20](v5);
  v100 = v6;
  v109 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v98 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v108 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = v8;
  MEMORY[0x28223BE20](v9);
  v110 = &v80 - v10;
  v83 = sub_219BE1444();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v12 - 8);
  v91 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v14);
  v92 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v93 = v19;
  v106 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v94 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v27 = v26;
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v84 = &v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v80 - v31;
  v97 = swift_allocBox();
  v34 = v33;
  v35 = sub_219BE16D4();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v88 = v34;
  v87 = v35;
  v86 = v37;
  v85 = v36 + 56;
  (v37)(v34, 1, 1);
  v95 = swift_allocBox();
  v39 = v38;
  sub_219BE7594();
  v107 = v3;
  sub_219BE7564();
  sub_219BE5F84();
  v40 = v25;
  v41 = v106;
  (*(v23 + 8))(v40, v22);
  sub_219BEB244();

  v42 = *(v28 + 8);
  v90 = v27;
  v43 = v27;
  v44 = v93;
  v89 = v28 + 8;
  v42(v32, v43);
  sub_218B5A2A4(v39, v18, sub_21898BBC4);
  if ((*(v41 + 48))(v18, 1, v44) == 1)
  {
    sub_218B58C44(v18, sub_21898BBC4);
    v45 = v96;
  }

  else
  {
    (*(v41 + 32))(v94, v18, v44);
    v45 = v96;
    v46 = sub_218B326E4();
    v47 = v84;
    sub_219BE7594();
    v48 = sub_219BE97D4();
    v49 = v91;
    (*(*(v48 - 8) + 56))(v91, 1, 1, v48);
    v50 = v44;
    if (v46)
    {
      swift_unknownObjectRetain();
      v51 = v81;
      sub_219BE1414();
      v52 = sub_219BE1434();
      v54 = v53;
      swift_unknownObjectRelease();
      (*(v82 + 8))(v51, v83);
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    v55 = v92;
    v56 = v94;
    sub_21968E4D8(v94, v49, v52, v54, v92);
    swift_unknownObjectRelease();

    sub_218B58C44(v49, sub_218B58900);
    v42(v47, v90);
    (*(v106 + 8))(v56, v50);
    v86(v55, 0, 1, v87);
    sub_218B58ECC(v55, v88);
  }

  v57 = *(v45 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager + 24);
  v58 = __swift_project_boxed_opaque_existential_1((v45 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager), v57);
  v59 = v101;
  v60 = sub_219BF1024();
  v62 = v61;
  v63 = MEMORY[0x28223BE20](v60);
  v65 = &v80 - v64;
  (*(v66 + 16))(&v80 - v64, v58, v57, v63);
  v67 = v110;
  sub_218A75968(v60, v62, v65, v57, v110);
  v106 = *(v45 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v68 = v103;
  v69 = v59;
  v70 = v104;
  (*(v103 + 16))(v109, v69, v104);
  v71 = v105;
  v72 = v107;
  (*(v105 + 16))(v111, v112, v107);
  sub_218B5A2A4(v67, v108, sub_218B59134);
  v73 = (*(v68 + 80) + 16) & ~*(v68 + 80);
  v74 = (v100 + *(v71 + 80) + v73) & ~*(v71 + 80);
  v75 = (v102 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = (v75 + 15) & 0xFFFFFFFFFFFFFFF8;
  v77 = (*(v98 + 80) + v76 + 8) & ~*(v98 + 80);
  v78 = swift_allocObject();
  (*(v68 + 32))(v78 + v73, v109, v70);
  (*(v71 + 32))(v78 + v74, v111, v72);
  *(v78 + v75) = v95;
  *(v78 + v76) = v97;
  sub_218B5A680(v108, v78 + v77, sub_218B59134);

  sub_219BDD154();

  sub_218B58C44(v110, sub_218B59134);

  return result;
}

double sub_218B2F14C(uint64_t a1, uint64_t a2)
{
  v91 = a2;
  v3 = sub_219BF07A4();
  v94 = *(v3 - 8);
  v95 = v3;
  MEMORY[0x28223BE20](v3);
  v92 = v4;
  v103 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A30C(0);
  v6 = v5;
  v93 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v90 = v7;
  v102 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_219BE1444();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v9 - 8);
  v83 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v101 = v11;
  MEMORY[0x28223BE20](v11);
  v84 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v14 = *(v13 - 8);
  v96 = v13;
  v97 = v14;
  MEMORY[0x28223BE20](v13);
  v80 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v85 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v73 - v26;
  sub_21898BBC4(0);
  v87 = *(v28 - 8);
  MEMORY[0x28223BE20](v28 - 8);
  v99 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v73 - v31;
  v86 = v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v73 - v35;
  sub_219BE7594();
  v98 = v6;
  v89 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v18 + 8))(v20, v17);
  sub_219BEB244();
  v37 = v97;

  v38 = *(v23 + 8);
  v39 = v27;
  v40 = v96;
  v82 = v22;
  v81 = v23 + 8;
  v38(v39, v22);
  v88 = swift_allocBox();
  v42 = v41;
  v43 = sub_219BE16D4();
  v44 = *(*(v43 - 8) + 56);
  v44(v42, 1, 1, v43);
  v101 = v36;
  sub_218B5A2A4(v36, v32, sub_21898BBC4);
  if ((*(v37 + 48))(v32, 1, v40) == 1)
  {
    sub_218B58C44(v32, sub_21898BBC4);
    v45 = v100;
    v46 = v89;
  }

  else
  {
    v74 = v44;
    v75 = v38;
    v76 = v42;
    v47 = v80;
    (*(v37 + 32))(v80, v32, v40);
    v46 = v89;
    sub_219BE7594();
    v48 = sub_219BE97D4();
    v49 = v83;
    (*(*(v48 - 8) + 56))(v83, 1, 1, v48);
    v50 = v47;
    v45 = v100;
    if (sub_218B326E4())
    {
      v51 = v77;
      sub_219BE1414();
      v52 = sub_219BE1434();
      v54 = v53;
      swift_unknownObjectRelease();
      (*(v78 + 8))(v51, v79);
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    v56 = v84;
    v55 = v85;
    sub_21968E4D8(v50, v49, v52, v54, v84);

    sub_218B58C44(v49, sub_218B58900);
    v75(v55, v82);
    (*(v97 + 8))(v50, v96);
    v74(v56, 0, 1, v43);
    sub_218B58ECC(v56, v76);
  }

  __swift_project_boxed_opaque_existential_1((v45 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator), *(v45 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator + 24));
  v57 = v91;
  v58 = sub_219BF06B4();
  v59 = v45;
  v60 = [v58 identifier];

  sub_219BF5414();
  LODWORD(v96) = sub_219BF4774();

  v97 = *(v59 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  sub_218B5A2A4(v101, v99, sub_21898BBC4);
  v61 = v93;
  v62 = v46;
  v63 = v98;
  (*(v93 + 16))(v102, v62, v98);
  v64 = v94;
  v65 = v95;
  (*(v94 + 16))(v103, v57, v95);
  v66 = (*(v87 + 80) + 16) & ~*(v87 + 80);
  v67 = (v86 + *(v61 + 80) + v66) & ~*(v61 + 80);
  v68 = (v90 + *(v64 + 80) + v67) & ~*(v64 + 80);
  v69 = (v92 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  sub_218B5A680(v99, v70 + v66, sub_21898BBC4);
  (*(v61 + 32))(v70 + v67, v102, v63);
  (*(v64 + 32))(v70 + v68, v103, v65);
  *(v70 + v69) = v88;
  v71 = v70 + ((v69 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v71 = v100;
  *(v71 + 8) = v96 & 1;

  sub_219BDD154();

  sub_218B58C44(v101, sub_21898BBC4);

  return result;
}

double sub_218B2FB78(uint64_t a1, uint64_t a2)
{
  v103 = a2;
  sub_218B5A30C(0);
  v4 = v3;
  v107 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v104 = v5;
  v117 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEDAE4();
  v105 = *(v6 - 8);
  v106 = v6;
  MEMORY[0x28223BE20](v6);
  v102 = v7;
  v115 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v100 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v116 = &v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v9;
  MEMORY[0x28223BE20](v10);
  v114 = &v85 - v11;
  v88 = sub_219BE1444();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v13 - 8);
  v93 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v113 = v15;
  MEMORY[0x28223BE20](v15);
  v94 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v18 = *(v17 - 8);
  v108 = v17;
  v109 = v18;
  MEMORY[0x28223BE20](v17);
  v90 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v95 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v85 - v30;
  sub_21898BBC4(0);
  v96 = *(v32 - 8);
  MEMORY[0x28223BE20](v32 - 8);
  v112 = &v85 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v85 - v35;
  v97 = v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v85 - v39;
  sub_219BE7594();
  v110 = a1;
  v111 = v4;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v22 + 8))(v24, v21);
  sub_219BEB244();
  v41 = v108;

  v42 = *(v27 + 8);
  v43 = v31;
  v44 = v109;
  v92 = v26;
  v91 = v27 + 8;
  v89 = v42;
  v42(v43, v26);
  v98 = swift_allocBox();
  v46 = v45;
  v47 = sub_219BE16D4();
  v48 = *(*(v47 - 8) + 56);
  v48(v46, 1, 1, v47);
  v113 = v40;
  sub_218B5A2A4(v40, v36, sub_21898BBC4);
  if ((*(v44 + 48))(v36, 1, v41) == 1)
  {
    sub_218B58C44(v36, sub_21898BBC4);
    v49 = v99;
  }

  else
  {
    v85 = v46;
    v50 = *(v44 + 32);
    v51 = v90;
    v50(v90, v36, v41);
    sub_219BE7594();
    v52 = sub_219BE97D4();
    v53 = v93;
    (*(*(v52 - 8) + 56))(v93, 1, 1, v52);
    v54 = v51;
    v49 = v99;
    if (sub_218B326E4())
    {
      v55 = v86;
      sub_219BE1414();
      v56 = sub_219BE1434();
      v58 = v57;
      swift_unknownObjectRelease();
      (*(v87 + 8))(v55, v88);
    }

    else
    {
      v56 = 0;
      v58 = 0;
    }

    v59 = v94;
    v60 = v95;
    sub_21968E4D8(v54, v53, v56, v58, v94);

    sub_218B58C44(v53, sub_218B58900);
    v89(v60, v92);
    (*(v109 + 8))(v54, v108);
    v48(v59, 0, 1, v47);
    sub_218B58ECC(v59, v85);
  }

  v61 = *(v49 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager + 24);
  v62 = __swift_project_boxed_opaque_existential_1((v49 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager), v61);
  v63 = v49;
  v64 = v103;
  v65 = sub_219BEDAB4();
  v67 = v66;
  v68 = MEMORY[0x28223BE20](v65);
  v70 = &v85 - v69;
  (*(v71 + 16))(&v85 - v69, v62, v61, v68);
  v72 = v114;
  sub_218A75968(v65, v67, v70, v61, v114);
  v109 = *(v63 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v73 = v105;
  v74 = v64;
  v75 = v106;
  (*(v105 + 16))(v115, v74, v106);
  v76 = v107;
  v77 = v111;
  (*(v107 + 16))(v117, v110, v111);
  sub_218B5A2A4(v113, v112, sub_21898BBC4);
  sub_218B5A2A4(v72, v116, sub_218B59134);
  v78 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v79 = (v102 + *(v76 + 80) + v78) & ~*(v76 + 80);
  v80 = (v104 + *(v96 + 80) + v79) & ~*(v96 + 80);
  v81 = (v97 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = (*(v100 + 80) + v81 + 8) & ~*(v100 + 80);
  v83 = swift_allocObject();
  (*(v73 + 32))(v83 + v78, v115, v75);
  (*(v76 + 32))(v83 + v79, v117, v77);
  sub_218B5A680(v112, v83 + v80, sub_21898BBC4);
  *(v83 + v81) = v98;
  sub_218B5A680(v116, v83 + v82, sub_218B59134);

  sub_219BDD154();

  sub_218B58C44(v114, sub_218B59134);
  sub_218B58C44(v113, sub_21898BBC4);

  return result;
}

double sub_218B306DC(unint64_t a1, uint64_t a2)
{
  v112 = a2;
  sub_218B5A30C(0);
  v4 = v3;
  v117 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v114 = v5;
  v129 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_219BF0AC4();
  v116 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v111 = v6;
  v125 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v109 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v123 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v8;
  MEMORY[0x28223BE20](v9);
  v127 = &v92 - v10;
  v126 = sub_219BDF8A4();
  v115 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v122 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = v11;
  MEMORY[0x28223BE20](v12);
  v124 = &v92 - v13;
  v132 = sub_219BDEF94();
  v113 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v121 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = v14;
  MEMORY[0x28223BE20](v15);
  v131 = &v92 - v16;
  v97 = sub_219BE1444();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v18 - 8);
  v101 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v106 = v20;
  MEMORY[0x28223BE20](v20);
  v102 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v118 = *(v22 - 1);
  v119 = v22;
  MEMORY[0x28223BE20](v22);
  v103 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v30 = v29;
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v98 = &v92 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v92 - v34;
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v92 - v40;
  sub_219BE7594();
  v130 = v4;
  v120 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v26 + 8))(v28, v25);
  sub_219BEB244();
  v42 = v118;

  v43 = *(v31 + 8);
  v100 = v30;
  v99 = v31 + 8;
  v43(v35, v30);
  v105 = swift_allocBox();
  v45 = v44;
  v46 = sub_219BE16D4();
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v49 = v47 + 56;
  v48(v45, 1, 1, v46);
  v106 = v41;
  v50 = v41;
  v51 = v119;
  sub_218B5A2A4(v50, v38, sub_21898BBC4);
  if ((*(v42 + 48))(v38, 1, v51) == 1)
  {
    sub_218B58C44(v38, sub_21898BBC4);
    v52 = v104;
  }

  else
  {
    v92 = v49;
    v93 = v43;
    v94 = v45;
    (*(v42 + 32))(v103, v38, v51);
    v52 = v104;
    v53 = sub_218B326E4();
    v54 = v98;
    sub_219BE7594();
    v55 = sub_219BE97D4();
    v56 = v101;
    (*(*(v55 - 8) + 56))(v101, 1, 1, v55);
    v57 = v48;
    if (v53)
    {
      swift_unknownObjectRetain();
      v58 = v95;
      sub_219BE1414();
      v59 = sub_219BE1434();
      v61 = v60;
      swift_unknownObjectRelease();
      (*(v96 + 8))(v58, v97);
    }

    else
    {
      v59 = 0;
      v61 = 0;
    }

    v62 = v102;
    v63 = v103;
    sub_21968E4D8(v103, v56, v59, v61, v102);
    swift_unknownObjectRelease();

    sub_218B58C44(v56, sub_218B58900);
    v93(v54, v100);
    (*(v118 + 8))(v63, v119);
    v57(v62, 0, 1, v46);
    sub_218B58ECC(v62, v94);
  }

  __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_puzzleHistoryService), *(v52 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_puzzleHistoryService + 24));
  v64 = v112;
  v65 = [sub_219BF0AA4() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v66 = sub_219BF3424();
  v119 = v66;

  sub_219BF0AA4();
  swift_getObjectType();
  sub_2194CA7FC(v66, v131);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator), *(v52 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator + 24));
  sub_219BF0A04();
  sub_219BF4774();

  v67 = v124;
  sub_219BDF894();
  v68 = *(v52 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager + 24);
  v69 = __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDismissingManager), v68);
  v70 = sub_219BF0A64();
  v72 = v71;
  v73 = MEMORY[0x28223BE20](v70);
  v75 = &v92 - v74;
  (*(v76 + 16))(&v92 - v74, v69, v68, v73);
  v77 = v127;
  sub_218A75968(v70, v72, v75, v68, v127);
  v118 = *(v52 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v78 = v113;
  (*(v113 + 16))(v121, v131, v132);
  v79 = v115;
  (*(v115 + 16))(v122, v67, v126);
  v80 = v116;
  (*(v116 + 16))(v125, v64, v128);
  sub_218B5A2A4(v77, v123, sub_218B59134);
  v81 = v117;
  (*(v117 + 16))(v129, v120, v130);
  v82 = v78;
  v83 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v84 = (v107 + *(v79 + 80) + v83) & ~*(v79 + 80);
  v85 = (v108 + *(v80 + 80) + v84) & ~*(v80 + 80);
  v86 = (v111 + v85 + 7) & 0xFFFFFFFFFFFFFFF8;
  v87 = (*(v109 + 80) + v86 + 8) & ~*(v109 + 80);
  v120 = (v110 + *(v81 + 80) + v87) & ~*(v81 + 80);
  v88 = swift_allocObject();
  (*(v82 + 32))(v88 + v83, v121, v132);
  v89 = v88 + v84;
  v90 = v126;
  (*(v79 + 32))(v89, v122, v126);
  (*(v80 + 32))(v88 + v85, v125, v128);
  *(v88 + v86) = v105;
  sub_218B5A680(v123, v88 + v87, sub_218B59134);
  (*(v81 + 32))(v88 + v120, v129, v130);

  sub_219BDD154();

  sub_218B58C44(v127, sub_218B59134);
  (*(v79 + 8))(v124, v90);
  (*(v82 + 8))(v131, v132);
  sub_218B58C44(v106, sub_21898BBC4);

  return result;
}

double sub_218B31544(unint64_t a1, uint64_t a2)
{
  v87 = a2;
  v3 = sub_219BF0B74();
  v89 = *(v3 - 8);
  v90 = v3;
  MEMORY[0x28223BE20](v3);
  v86 = v4;
  v88 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A30C(0);
  v6 = v5;
  v85 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v83 = v7;
  v84 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_219BE1444();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v9 - 8);
  v77 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v82 = v11;
  MEMORY[0x28223BE20](v11);
  v78 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v14 = *(v13 - 8);
  v91 = v13;
  v92 = v14;
  MEMORY[0x28223BE20](v13);
  v75 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v79 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v68 - v26;
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v68 - v32;
  sub_219BE7594();
  v81 = v6;
  v93 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v18 + 8))(v20, v17);
  v34 = v91;
  sub_219BEB244();
  v35 = v92;

  v36 = *(v23 + 8);
  v76 = v22;
  v36(v27, v22);
  v80 = swift_allocBox();
  v38 = v37;
  v39 = sub_219BE16D4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v42 = v40 + 56;
  v41(v38, 1, 1, v39);
  v82 = v33;
  sub_218B5A2A4(v33, v30, sub_21898BBC4);
  if ((*(v35 + 48))(v30, 1, v34) == 1)
  {
    sub_218B58C44(v30, sub_21898BBC4);
    v43 = v94;
    v44 = v81;
  }

  else
  {
    v68 = v42;
    v69 = v41;
    v70 = v36;
    v71 = v38;
    v45 = v75;
    (*(v35 + 32))(v75, v30, v34);
    v44 = v81;
    sub_219BE7594();
    v46 = sub_219BE97D4();
    v47 = v77;
    (*(*(v46 - 8) + 56))(v77, 1, 1, v46);
    v48 = v45;
    v43 = v94;
    if (sub_218B326E4())
    {
      v49 = v72;
      sub_219BE1414();
      v50 = sub_219BE1434();
      v52 = v51;
      swift_unknownObjectRelease();
      (*(v73 + 8))(v49, v74);
    }

    else
    {
      v50 = 0;
      v52 = 0;
    }

    v54 = v78;
    v53 = v79;
    sub_21968E4D8(v48, v47, v50, v52, v78);

    sub_218B58C44(v47, sub_218B58900);
    v70(v53, v76);
    (*(v92 + 8))(v48, v91);
    v69(v54, 0, 1, v39);
    sub_218B58ECC(v54, v71);
  }

  __swift_project_boxed_opaque_existential_1((v43 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator), *(v43 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_contentAvailabilityValidator + 24));
  v55 = v87;
  sub_219BF0AF4();
  LODWORD(v91) = sub_219BF4774();

  v92 = *(v43 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_tracker);
  v56 = v84;
  v57 = v85;
  (*(v85 + 16))(v84, v93, v44);
  v58 = v88;
  v59 = v89;
  v60 = v90;
  (*(v89 + 16))(v88, v55, v90);
  v61 = (*(v57 + 80) + 16) & ~*(v57 + 80);
  v62 = (v83 + *(v59 + 80) + v61) & ~*(v59 + 80);
  v93 = (v62 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = v44;
  v64 = (v62 + v86 + 23) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v57 + 32))(v65 + v61, v56, v63);
  (*(v59 + 32))(v65 + v62, v58, v60);
  v66 = v65 + v93;
  *v66 = v94;
  *(v66 + 8) = v91 & 1;
  *(v65 + v64) = v80;

  sub_219BDD154();

  sub_218B58C44(v82, sub_21898BBC4);

  return result;
}

uint64_t sub_218B31E70(uint64_t a1)
{
  v2 = sub_219BE1444();
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x28223BE20](v2);
  v64 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v4 - 8);
  v70 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE16D4();
  v72 = *(v6 - 8);
  v73 = v6;
  MEMORY[0x28223BE20](v6);
  v71 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x28223BE20](v8);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v62 - v11;
  MEMORY[0x28223BE20](v12);
  v63 = &v62 - v13;
  sub_218A1299C(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v78 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v67 = &v62 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v62 - v24;
  v26 = type metadata accessor for TagFeedGroup(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v62 - v31;
  sub_218B5A32C(0, &unk_280EE4278, MEMORY[0x277D6E7A0]);
  v34 = v33;
  v74 = a1;
  sub_219BE9904();
  sub_219BE6934();
  v35 = *(v19 + 8);
  v36 = v25;
  v37 = v18;
  v68 = v19 + 8;
  v77 = v35;
  v35(v36, v18);
  sub_21943EC40(v80, v16);

  if ((*(v27 + 48))(v16, 1, v26) == 1)
  {
    v38 = sub_218A1299C;
    v39 = v16;
LABEL_5:
    sub_218B58C44(v39, v38);
    v41 = v76;
    goto LABEL_6;
  }

  sub_218B5A680(v16, v32, type metadata accessor for TagFeedGroup);
  sub_218B5A2A4(v32, v29, type metadata accessor for TagFeedGroup);
  v40 = swift_getEnumCaseMultiPayload() & 0xFFFFFFFE;
  sub_218B58C44(v29, type metadata accessor for TagFeedGroup);
  if (v40 == 6)
  {
    v38 = type metadata accessor for TagFeedGroup;
    v39 = v32;
    goto LABEL_5;
  }

  v58 = v63;
  MEMORY[0x21CEC06B0](v34);
  v59 = sub_219759E94();
  v41 = v76;
  v60 = *(v75 + 8);
  v60(v58, v76);
  if ((~v59 & 0xF000000000000007) != 0)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_2186F1034(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    sub_219BEE834();
    v61 = v62;
    MEMORY[0x21CEC06B0](v34);
    sub_219BEB1B4();
    v60(v61, v76);
    sub_219BEE364();

    v41 = v76;

    sub_21885AB78(v59);
  }

  sub_218B58C44(v32, type metadata accessor for TagFeedGroup);
LABEL_6:
  v42 = v37;
  v43 = v67;
  sub_219BE9904();
  v44 = sub_218B326E4();
  v77(v43, v42);
  v45 = v69;
  MEMORY[0x21CEC06B0](v34);
  sub_219BE9904();
  v46 = sub_219BE97D4();
  v47 = v70;
  (*(*(v46 - 8) + 56))(v70, 1, 1, v46);
  v48 = v41;
  if (v44)
  {
    swift_unknownObjectRetain();
    v49 = v64;
    sub_219BE1414();
    v50 = sub_219BE1434();
    v52 = v51;
    swift_unknownObjectRelease();
    (*(v65 + 8))(v49, v66);
  }

  else
  {
    v50 = 0;
    v52 = 0;
  }

  v53 = v71;
  v54 = v78;
  sub_21968E4D8(v78, v47, v50, v52, v71);

  sub_218B58C44(v47, sub_218B58900);
  v77(v54, v42);
  (*(v75 + 8))(v45, v48);
  v55 = *(v79 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker + 24);
  v56 = *(v79 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker + 32);
  __swift_project_boxed_opaque_existential_1((v79 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker), v55);
  (*(v56 + 16))(v53, v55, v56);
  swift_unknownObjectRelease();
  return (*(v72 + 8))(v53, v73);
}

id sub_218B326E4()
{
  v0 = type metadata accessor for TopicRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v0 - 8);
  v264 = &v227 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for ChannelRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v2 - 8);
  v263 = &v227 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AffinityTagFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v262 = &v227 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsEventTopicTagFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v261 = &v227 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SportsMastheadTagFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v260 = &v227 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SportsOnboardingTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v259 = &v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for MySportsTopicTagFeedGroup(0);
  MEMORY[0x28223BE20](v255);
  v258 = &v227 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SportsEventArticlesTagFeedGroup(0);
  MEMORY[0x28223BE20](v13 - 8);
  v257 = &v227 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsKeyPlayersTagFeedGroup(0);
  MEMORY[0x28223BE20](v15 - 8);
  v256 = &v227 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SportsInjuryReportsTagFeedGroup(0);
  MEMORY[0x28223BE20](v17 - 8);
  v254 = &v227 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SportsLinksTagFeedGroup(0);
  MEMORY[0x28223BE20](v19 - 8);
  v253 = &v227 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SportsEventInfoTagFeedGroup(0);
  MEMORY[0x28223BE20](v21 - 8);
  v252 = &v227 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for SportsBoxScoresTagFeedGroup(0);
  MEMORY[0x28223BE20](v23 - 8);
  v251 = &v227 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = type metadata accessor for SportsScoresTagFeedGroup(0);
  MEMORY[0x28223BE20](v247);
  v250 = &v227 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for SportsFavoritesTagFeedGroup(0);
  MEMORY[0x28223BE20](v26 - 8);
  v249 = &v227 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = type metadata accessor for SportsTopStoriesTagFeedGroup(0);
  MEMORY[0x28223BE20](v244);
  v248 = &v227 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for SportsBracketTagFeedGroup(0);
  MEMORY[0x28223BE20](v29 - 8);
  v246 = &v227 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SportsStandingsTagFeedGroup(0);
  MEMORY[0x28223BE20](v31 - 8);
  v245 = &v227 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SportsScheduleTagFeedGroup(0);
  MEMORY[0x28223BE20](v33 - 8);
  v243 = &v227 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for SportsNavigationTagFeedGroup(0);
  MEMORY[0x28223BE20](v241);
  v242 = &v227 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BF1904();
  v37 = *(v36 - 8);
  v265 = v36;
  v266 = v37;
  MEMORY[0x28223BE20](v36);
  v240 = &v227 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v239 = &v227 - v40;
  MEMORY[0x28223BE20](v41);
  v238 = &v227 - v42;
  MEMORY[0x28223BE20](v43);
  v237 = &v227 - v44;
  MEMORY[0x28223BE20](v45);
  v236 = &v227 - v46;
  MEMORY[0x28223BE20](v47);
  v235 = &v227 - v48;
  MEMORY[0x28223BE20](v49);
  v234 = &v227 - v50;
  MEMORY[0x28223BE20](v51);
  v233 = &v227 - v52;
  MEMORY[0x28223BE20](v53);
  v232 = &v227 - v54;
  MEMORY[0x28223BE20](v55);
  v231 = &v227 - v56;
  MEMORY[0x28223BE20](v57);
  v230 = &v227 - v58;
  MEMORY[0x28223BE20](v59);
  v229 = &v227 - v60;
  MEMORY[0x28223BE20](v61);
  v228 = &v227 - v62;
  MEMORY[0x28223BE20](v63);
  v65 = &v227 - v64;
  MEMORY[0x28223BE20](v66);
  v68 = &v227 - v67;
  MEMORY[0x28223BE20](v69);
  v71 = &v227 - v70;
  MEMORY[0x28223BE20](v72);
  v74 = &v227 - v73;
  MEMORY[0x28223BE20](v75);
  v77 = &v227 - v76;
  MEMORY[0x28223BE20](v78);
  v80 = &v227 - v79;
  MEMORY[0x28223BE20](v81);
  v83 = &v227 - v82;
  MEMORY[0x28223BE20](v84);
  v86 = &v227 - v85;
  v87 = type metadata accessor for SportsRecordTagFeedGroup(0);
  MEMORY[0x28223BE20](v87 - 8);
  v89 = &v227 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  sub_219BE6934();
  switch((v268 >> 58) & 0x3C | (v268 >> 1) & 3)
  {
    case 0xBuLL:
      v129 = swift_projectBox();
      sub_218B5A2A4(v129, v89, type metadata accessor for SportsRecordTagFeedGroup);
      sub_219BED874();
      v130 = sub_219BF1844();
      (*(v266 + 8))(v86, v265);
      v97 = v130;
      if (v130)
      {
        sub_218B58C44(v89, type metadata accessor for SportsRecordTagFeedGroup);
        goto LABEL_49;
      }

      v195 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v196 = v267;
      swift_beginAccess();
      v197 = *(v196 + v195);
      if (v197)
      {
        swift_endAccess();
        v159 = [v197 backingTag];
        sub_218B58C44(v89, type metadata accessor for SportsRecordTagFeedGroup);
        goto LABEL_95;
      }

      sub_218B58C44(v89, type metadata accessor for SportsRecordTagFeedGroup);
      swift_endAccess();
      goto LABEL_49;
    case 0xCuLL:
      v114 = swift_projectBox();
      v108 = v242;
      sub_218B5A2A4(v114, v242, type metadata accessor for SportsNavigationTagFeedGroup);
      sub_219BED874();
      v115 = sub_219BF1844();
      (*(v266 + 8))(v83, v265);
      v97 = v115;
      if (v115)
      {
        sub_218B58C44(v108, type metadata accessor for SportsNavigationTagFeedGroup);
        goto LABEL_49;
      }

      v177 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v178 = v267;
      swift_beginAccess();
      v179 = *(v178 + v177);
      if (v179)
      {
        swift_endAccess();
        v159 = [v179 backingTag];
        v173 = type metadata accessor for SportsNavigationTagFeedGroup;
        goto LABEL_64;
      }

      sub_218B58C44(v108, type metadata accessor for SportsNavigationTagFeedGroup);
      swift_endAccess();
      goto LABEL_49;
    case 0xDuLL:
      v107 = swift_projectBox();
      v108 = v243;
      sub_218B5A2A4(v107, v243, type metadata accessor for SportsScheduleTagFeedGroup);
      sub_219BED874();
      v109 = sub_219BF1844();
      (*(v266 + 8))(v80, v265);
      v110 = v109;
      if (v109)
      {
        sub_218B58C44(v108, type metadata accessor for SportsScheduleTagFeedGroup);
LABEL_14:

        return v110;
      }

      v170 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v171 = v267;
      swift_beginAccess();
      v172 = *(v171 + v170);
      if (!v172)
      {
        sub_218B58C44(v108, type metadata accessor for SportsScheduleTagFeedGroup);
        swift_endAccess();
        goto LABEL_14;
      }

      swift_endAccess();
      v159 = [v172 backingTag];
      v173 = type metadata accessor for SportsScheduleTagFeedGroup;
LABEL_64:
      sub_218B58C44(v108, v173);
      goto LABEL_95;
    case 0xEuLL:
      v102 = swift_projectBox();
      v94 = v248;
      sub_218B5A2A4(v102, v248, type metadata accessor for SportsTopStoriesTagFeedGroup);
      sub_219BED874();
      v103 = sub_219BF1844();
      (*(v266 + 8))(v71, v265);
      v97 = v103;
      if (v103)
      {
        v98 = type metadata accessor for SportsTopStoriesTagFeedGroup;
        goto LABEL_47;
      }

      v164 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v165 = v267;
      swift_beginAccess();
      v166 = *(v165 + v164);
      if (v166)
      {
        swift_endAccess();
        v159 = [v166 backingTag];
        v160 = type metadata accessor for SportsTopStoriesTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_118;
    case 0xFuLL:
      v140 = swift_projectBox();
      v141 = v249;
      sub_218B5A2A4(v140, v249, type metadata accessor for SportsFavoritesTagFeedGroup);
      sub_219BED874();
      v142 = sub_219BF1844();
      (*(v266 + 8))(v68, v265);
      v97 = v142;
      if (v142)
      {
        v143 = type metadata accessor for SportsFavoritesTagFeedGroup;
        v144 = v141;
        goto LABEL_48;
      }

      v207 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v208 = v267;
      swift_beginAccess();
      v209 = *(v208 + v207);
      if (v209)
      {
        swift_endAccess();
        v159 = [v209 backingTag];
        v210 = type metadata accessor for SportsFavoritesTagFeedGroup;
        v211 = v141;
        goto LABEL_94;
      }

      v225 = type metadata accessor for SportsFavoritesTagFeedGroup;
      v226 = v141;
      goto LABEL_119;
    case 0x10uLL:
      v145 = swift_projectBox();
      v94 = v250;
      sub_218B5A2A4(v145, v250, type metadata accessor for SportsScoresTagFeedGroup);
      sub_219BED874();
      v146 = sub_219BF1844();
      (*(v266 + 8))(v65, v265);
      v97 = v146;
      if (v146)
      {
        v98 = type metadata accessor for SportsScoresTagFeedGroup;
        goto LABEL_47;
      }

      v212 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v213 = v267;
      swift_beginAccess();
      v214 = *(v213 + v212);
      if (v214)
      {
        swift_endAccess();
        v159 = [v214 backingTag];
        v160 = type metadata accessor for SportsScoresTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_118;
    case 0x11uLL:
      v131 = swift_projectBox();
      v94 = v253;
      sub_218B5A2A4(v131, v253, type metadata accessor for SportsLinksTagFeedGroup);
      v132 = v230;
      sub_219BED874();
      v133 = sub_219BF1844();
      (*(v266 + 8))(v132, v265);
      v97 = v133;
      if (v133)
      {
        v98 = type metadata accessor for SportsLinksTagFeedGroup;
        goto LABEL_47;
      }

      v198 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v199 = v267;
      swift_beginAccess();
      v200 = *(v199 + v198);
      if (v200)
      {
        swift_endAccess();
        v159 = [v200 backingTag];
        v160 = type metadata accessor for SportsLinksTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_118;
    case 0x12uLL:
      v123 = swift_projectBox();
      v94 = v258;
      sub_218B5A2A4(v123, v258, type metadata accessor for MySportsTopicTagFeedGroup);
      v124 = v234;
      sub_219BED874();
      v125 = sub_219BF1844();
      (*(v266 + 8))(v124, v265);
      v97 = v125;
      if (v125)
      {
        v98 = type metadata accessor for MySportsTopicTagFeedGroup;
        goto LABEL_47;
      }

      v189 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v190 = v267;
      swift_beginAccess();
      v191 = *(v190 + v189);
      if (v191)
      {
        swift_endAccess();
        v159 = [v191 backingTag];
        v160 = type metadata accessor for MySportsTopicTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_118;
    case 0x13uLL:
      v119 = swift_projectBox();
      v94 = v245;
      sub_218B5A2A4(v119, v245, type metadata accessor for SportsStandingsTagFeedGroup);
      sub_219BED874();
      v120 = sub_219BF1844();
      (*(v266 + 8))(v77, v265);
      v97 = v120;
      if (v120)
      {
        v98 = type metadata accessor for SportsStandingsTagFeedGroup;
        goto LABEL_47;
      }

      v183 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v184 = v267;
      swift_beginAccess();
      v185 = *(v184 + v183);
      if (v185)
      {
        swift_endAccess();
        v159 = [v185 backingTag];
        v160 = type metadata accessor for SportsStandingsTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_118;
    case 0x14uLL:
      v121 = swift_projectBox();
      v94 = v246;
      sub_218B5A2A4(v121, v246, type metadata accessor for SportsBracketTagFeedGroup);
      sub_219BED874();
      v122 = sub_219BF1844();
      (*(v266 + 8))(v74, v265);
      v97 = v122;
      if (v122)
      {
        v98 = type metadata accessor for SportsBracketTagFeedGroup;
        goto LABEL_47;
      }

      v186 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v187 = v267;
      swift_beginAccess();
      v188 = *(v187 + v186);
      if (v188)
      {
        swift_endAccess();
        v159 = [v188 backingTag];
        v160 = type metadata accessor for SportsBracketTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_118;
    case 0x15uLL:
      v116 = swift_projectBox();
      v94 = v251;
      sub_218B5A2A4(v116, v251, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v117 = v228;
      sub_219BED874();
      v118 = sub_219BF1844();
      (*(v266 + 8))(v117, v265);
      v97 = v118;
      if (v118)
      {
        v98 = type metadata accessor for SportsBoxScoresTagFeedGroup;
        goto LABEL_47;
      }

      v180 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v181 = v267;
      swift_beginAccess();
      v182 = *(v181 + v180);
      if (v182)
      {
        swift_endAccess();
        v159 = [v182 backingTag];
        v160 = type metadata accessor for SportsBoxScoresTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_118;
    case 0x16uLL:
      v93 = swift_projectBox();
      v94 = v252;
      sub_218B5A2A4(v93, v252, type metadata accessor for SportsEventInfoTagFeedGroup);
      v95 = v229;
      sub_219BED874();
      v96 = sub_219BF1844();
      (*(v266 + 8))(v95, v265);
      v97 = v96;
      if (v96)
      {
        v98 = type metadata accessor for SportsEventInfoTagFeedGroup;
        goto LABEL_47;
      }

      v156 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v157 = v267;
      swift_beginAccess();
      v158 = *(v157 + v156);
      if (v158)
      {
        swift_endAccess();
        v159 = [v158 backingTag];
        v160 = type metadata accessor for SportsEventInfoTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_118;
    case 0x17uLL:
      v150 = swift_projectBox();
      v94 = v254;
      sub_218B5A2A4(v150, v254, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v151 = v231;
      sub_219BED874();
      v152 = sub_219BF1844();
      (*(v266 + 8))(v151, v265);
      v97 = v152;
      if (v152)
      {
        v98 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
        goto LABEL_47;
      }

      v218 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v219 = v267;
      swift_beginAccess();
      v220 = *(v219 + v218);
      if (v220)
      {
        swift_endAccess();
        v159 = [v220 backingTag];
        v160 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_118;
    case 0x18uLL:
      v134 = swift_projectBox();
      v94 = v256;
      sub_218B5A2A4(v134, v256, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v135 = v232;
      sub_219BED874();
      v136 = sub_219BF1844();
      (*(v266 + 8))(v135, v265);
      v97 = v136;
      if (v136)
      {
        v98 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
        goto LABEL_47;
      }

      v201 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v202 = v267;
      swift_beginAccess();
      v203 = *(v202 + v201);
      if (v203)
      {
        swift_endAccess();
        v159 = [v203 backingTag];
        v160 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_118;
    case 0x19uLL:
      v137 = swift_projectBox();
      v94 = v257;
      sub_218B5A2A4(v137, v257, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v138 = v233;
      sub_219BED874();
      v139 = sub_219BF1844();
      (*(v266 + 8))(v138, v265);
      v97 = v139;
      if (v139)
      {
        v98 = type metadata accessor for SportsEventArticlesTagFeedGroup;
        goto LABEL_47;
      }

      v204 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v205 = v267;
      swift_beginAccess();
      v206 = *(v205 + v204);
      if (v206)
      {
        swift_endAccess();
        v159 = [v206 backingTag];
        v160 = type metadata accessor for SportsEventArticlesTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_118;
    case 0x1CuLL:
      v153 = swift_projectBox();
      v94 = v263;
      sub_218B5A2A4(v153, v263, type metadata accessor for ChannelRecipesTagFeedGroup);
      v154 = v239;
      sub_219BED874();
      v155 = sub_219BF1844();
      (*(v266 + 8))(v154, v265);
      v97 = v155;
      if (v155)
      {
        v98 = type metadata accessor for ChannelRecipesTagFeedGroup;
        goto LABEL_47;
      }

      v221 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v222 = v267;
      swift_beginAccess();
      v223 = *(v222 + v221);
      if (v223)
      {
        swift_endAccess();
        v159 = [v223 backingTag];
        v160 = type metadata accessor for ChannelRecipesTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_118;
    case 0x21uLL:
      v104 = swift_projectBox();
      v94 = v259;
      sub_218B5A2A4(v104, v259, type metadata accessor for SportsOnboardingTagFeedGroup);
      v105 = v235;
      sub_219BED874();
      v106 = sub_219BF1844();
      (*(v266 + 8))(v105, v265);
      v97 = v106;
      if (v106)
      {
        v98 = type metadata accessor for SportsOnboardingTagFeedGroup;
        goto LABEL_47;
      }

      v167 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v168 = v267;
      swift_beginAccess();
      v169 = *(v168 + v167);
      if (v169)
      {
        swift_endAccess();
        v159 = [v169 backingTag];
        v160 = type metadata accessor for SportsOnboardingTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_118;
    case 0x22uLL:
      v126 = swift_projectBox();
      v94 = v260;
      sub_218B5A2A4(v126, v260, type metadata accessor for SportsMastheadTagFeedGroup);
      v127 = v236;
      sub_219BED874();
      v128 = sub_219BF1844();
      (*(v266 + 8))(v127, v265);
      v97 = v128;
      if (v128)
      {
        v98 = type metadata accessor for SportsMastheadTagFeedGroup;
        goto LABEL_47;
      }

      v192 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v193 = v267;
      swift_beginAccess();
      v194 = *(v193 + v192);
      if (v194)
      {
        swift_endAccess();
        v159 = [v194 backingTag];
        v160 = type metadata accessor for SportsMastheadTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_118;
    case 0x23uLL:
      v147 = swift_projectBox();
      v94 = v261;
      sub_218B5A2A4(v147, v261, type metadata accessor for SportsEventTopicTagFeedGroup);
      v148 = v237;
      sub_219BED874();
      v149 = sub_219BF1844();
      (*(v266 + 8))(v148, v265);
      v97 = v149;
      if (v149)
      {
        v98 = type metadata accessor for SportsEventTopicTagFeedGroup;
        goto LABEL_47;
      }

      v215 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v216 = v267;
      swift_beginAccess();
      v217 = *(v216 + v215);
      if (v217)
      {
        swift_endAccess();
        v159 = [v217 backingTag];
        v160 = type metadata accessor for SportsEventTopicTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_118;
    case 0x2AuLL:
      v99 = swift_projectBox();
      v94 = v262;
      sub_218B5A2A4(v99, v262, type metadata accessor for AffinityTagFeedGroup);
      v100 = v238;
      sub_219BED874();
      v101 = sub_219BF1844();
      (*(v266 + 8))(v100, v265);
      v97 = v101;
      if (v101)
      {
        v98 = type metadata accessor for AffinityTagFeedGroup;
        goto LABEL_47;
      }

      v161 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v162 = v267;
      swift_beginAccess();
      v163 = *(v162 + v161);
      if (v163)
      {
        swift_endAccess();
        v159 = [v163 backingTag];
        v160 = type metadata accessor for AffinityTagFeedGroup;
        goto LABEL_93;
      }

      v224 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_118;
    case 0x2FuLL:
      v111 = swift_projectBox();
      v94 = v264;
      sub_218B5A2A4(v111, v264, type metadata accessor for TopicRecipesTagFeedGroup);
      v112 = v240;
      sub_219BED874();
      v113 = sub_219BF1844();
      (*(v266 + 8))(v112, v265);
      v97 = v113;
      if (v113)
      {
        v98 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_47:
        v143 = v98;
        v144 = v94;
LABEL_48:
        sub_218B58C44(v144, v143);
LABEL_49:

        return v97;
      }

      v174 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v175 = v267;
      swift_beginAccess();
      v176 = *(v175 + v174);
      if (!v176)
      {
        v224 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_118:
        v225 = v224;
        v226 = v94;
LABEL_119:
        sub_218B58C44(v226, v225);
        swift_endAccess();
        goto LABEL_49;
      }

      swift_endAccess();
      v159 = [v176 backingTag];
      v160 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_93:
      v210 = v160;
      v211 = v94;
LABEL_94:
      sub_218B58C44(v211, v210);
LABEL_95:

      return v159;
    default:

      v90 = OBJC_IVAR____TtC7NewsUI214TagFeedTracker_feedDescriptor;
      v91 = v267;
      swift_beginAccess();
      result = *(v91 + v90);
      if (result)
      {
        return [result backingTag];
      }

      return result;
  }
}

uint64_t sub_218B346EC(uint64_t a1)
{
  sub_218B5A244(0);
  v4 = v3;
  v66 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v64 = v5;
  v65 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1444();
  v51 = *(v6 - 8);
  v52 = v6;
  MEMORY[0x28223BE20](v6);
  v50 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v58 = v11;
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE16D4();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x28223BE20](v14);
  v59 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v15;
  MEMORY[0x28223BE20](v16);
  v67 = &v50 - v17;
  sub_218954350(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - v24;
  sub_219BE8EF4();
  v68 = v1;
  v26 = sub_218B326E4();
  v27 = *(v20 + 8);
  v54 = v19;
  v28 = v19;
  v29 = v27;
  v27(v25, v28);
  v55 = v13;
  sub_219BE8F04();
  sub_219BE8EF4();
  v60 = v4;
  v63 = a1;
  sub_219BE8F24();
  v53 = v26;
  if (v26)
  {
    swift_unknownObjectRetain();
    v30 = v50;
    sub_219BE1414();
    v31 = sub_219BE1434();
    v33 = v32;
    swift_unknownObjectRelease();
    (*(v51 + 8))(v30, v52);
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = v67;
  v35 = v31;
  v36 = v55;
  sub_21968E4D8(v22, v10, v35, v33, v67);

  sub_218B58C44(v10, sub_218B58900);
  v29(v22, v54);
  (*(v56 + 8))(v36, v58);
  v38 = v65;
  v37 = v66;
  v39 = v60;
  (*(v66 + 16))(v65, v63, v60);
  v40 = v61;
  v41 = v62;
  v42 = v59;
  (*(v61 + 16))(v59, v34, v62);
  v43 = (*(v37 + 80) + 16) & ~*(v37 + 80);
  v44 = (v64 + *(v40 + 80) + v43) & ~*(v40 + 80);
  v45 = swift_allocObject();
  (*(v37 + 32))(v45 + v43, v38, v39);
  (*(v40 + 32))(v45 + v44, v42, v41);
  sub_219BDD154();

  v46 = *(v68 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker + 24);
  v47 = *(v68 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker + 32);
  __swift_project_boxed_opaque_existential_1((v68 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_headlineExposureTracker), v46);
  v48 = v67;
  (*(v47 + 24))(v67, v46, v47);
  swift_unknownObjectRelease();
  return (*(v40 + 8))(v48, v41);
}

uint64_t sub_218B34CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v731 = a3;
  v736 = a1;
  v4 = sub_219BDBD34();
  v734 = *(v4 - 8);
  v735 = v4;
  MEMORY[0x28223BE20](v4);
  v732 = &v639 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TopicRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v724 = &v639 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TrendingRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v723 = &v639 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SavedRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v722 = &v639 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LatestRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v12 - 8);
  v721 = &v639 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AffinityTagFeedGroup(0);
  MEMORY[0x28223BE20](v14 - 8);
  v720 = &v639 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleScoreboardTagFeedGroup(0);
  MEMORY[0x28223BE20](v16 - 8);
  v719 = &v639 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PuzzleFullArchiveTagFeedGroup(0);
  MEMORY[0x28223BE20](v18 - 8);
  v718 = &v639 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PuzzleFeaturedTagFeedGroup(0);
  MEMORY[0x28223BE20](v20 - 8);
  v717 = &v639 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup(0);
  MEMORY[0x28223BE20](v22 - 8);
  v716 = &v639 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for PuzzleArchiveTagFeedGroup(0);
  MEMORY[0x28223BE20](v24 - 8);
  v715 = &v639 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PuzzleListTagFeedGroup(0);
  MEMORY[0x28223BE20](v26 - 8);
  v714 = &v639 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for SportsEventTopicTagFeedGroup(0);
  MEMORY[0x28223BE20](v28 - 8);
  v713 = &v639 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SportsMastheadTagFeedGroup(0);
  MEMORY[0x28223BE20](v30 - 8);
  v712 = &v639 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for SportsOnboardingTagFeedGroup(0);
  MEMORY[0x28223BE20](v32 - 8);
  v711 = &v639 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v682 = type metadata accessor for DateRangeTagFeedGroup(0);
  MEMORY[0x28223BE20](v682);
  v710 = &v639 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v35 - 8);
  v709 = &v639 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for RecentStoriesTagFeedGroup(0);
  MEMORY[0x28223BE20](v37 - 8);
  v708 = &v639 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ForYouRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v39 - 8);
  v707 = &v639 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for ChannelRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v41 - 8);
  v706 = &v639 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v681 = type metadata accessor for ForYouTagFeedGroup(0);
  MEMORY[0x28223BE20](v681);
  v705 = &v639 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for HighlightsTagFeedGroup(0);
  MEMORY[0x28223BE20](v44 - 8);
  v704 = &v639 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v680 = type metadata accessor for MySportsTopicTagFeedGroup(0);
  MEMORY[0x28223BE20](v680);
  v703 = &v639 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for SportsEventArticlesTagFeedGroup(0);
  MEMORY[0x28223BE20](v47 - 8);
  v702 = &v639 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for SportsKeyPlayersTagFeedGroup(0);
  MEMORY[0x28223BE20](v49 - 8);
  v701 = &v639 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for SportsInjuryReportsTagFeedGroup(0);
  MEMORY[0x28223BE20](v51 - 8);
  v700 = &v639 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for SportsLinksTagFeedGroup(0);
  MEMORY[0x28223BE20](v53 - 8);
  v699 = &v639 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for SportsEventInfoTagFeedGroup(0);
  MEMORY[0x28223BE20](v55 - 8);
  v698 = &v639 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for SportsBoxScoresTagFeedGroup(0);
  MEMORY[0x28223BE20](v57 - 8);
  v697 = &v639 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v679 = type metadata accessor for SportsScoresTagFeedGroup(0);
  MEMORY[0x28223BE20](v679);
  v696 = &v639 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SportsFavoritesTagFeedGroup(0);
  MEMORY[0x28223BE20](v60 - 8);
  v695 = &v639 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v678 = type metadata accessor for SportsTopStoriesTagFeedGroup(0);
  MEMORY[0x28223BE20](v678);
  v694 = &v639 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SportsBracketTagFeedGroup(0);
  MEMORY[0x28223BE20](v63 - 8);
  v693 = &v639 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for SportsStandingsTagFeedGroup(0);
  MEMORY[0x28223BE20](v65 - 8);
  v692 = &v639 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for SportsScheduleTagFeedGroup(0);
  MEMORY[0x28223BE20](v67 - 8);
  v691 = &v639 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v677 = type metadata accessor for SportsNavigationTagFeedGroup(0);
  MEMORY[0x28223BE20](v677);
  v690 = &v639 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for SportsRecordTagFeedGroup(0);
  MEMORY[0x28223BE20](v70 - 8);
  v688 = &v639 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for CuratedTagFeedGroup(0);
  MEMORY[0x28223BE20](v72 - 8);
  v689 = &v639 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v676 = type metadata accessor for WeatherTagFeedGroup(0);
  MEMORY[0x28223BE20](v676);
  v687 = &v639 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup(0);
  MEMORY[0x28223BE20](v75 - 8);
  v686 = &v639 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ChannelSectionTagFeedGroup(0);
  MEMORY[0x28223BE20](v77 - 8);
  v685 = &v639 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for PromotedArticleListTagFeedGroup(0);
  MEMORY[0x28223BE20](v79 - 8);
  v684 = &v639 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BE1444();
  v82 = *(v81 - 8);
  v726 = v81;
  v727 = v82;
  MEMORY[0x28223BE20](v81);
  v725 = &v639 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_219BF1904();
  v85 = *(v84 - 8);
  v728 = v84;
  v729 = v85;
  MEMORY[0x28223BE20](v84);
  v675 = &v639 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v674 = &v639 - v88;
  MEMORY[0x28223BE20](v89);
  v673 = &v639 - v90;
  MEMORY[0x28223BE20](v91);
  v672 = &v639 - v92;
  MEMORY[0x28223BE20](v93);
  v671 = &v639 - v94;
  MEMORY[0x28223BE20](v95);
  v670 = &v639 - v96;
  MEMORY[0x28223BE20](v97);
  v669 = &v639 - v98;
  MEMORY[0x28223BE20](v99);
  v668 = &v639 - v100;
  MEMORY[0x28223BE20](v101);
  v667 = &v639 - v102;
  MEMORY[0x28223BE20](v103);
  v666 = &v639 - v104;
  MEMORY[0x28223BE20](v105);
  v665 = &v639 - v106;
  MEMORY[0x28223BE20](v107);
  v664 = &v639 - v108;
  MEMORY[0x28223BE20](v109);
  v663 = &v639 - v110;
  MEMORY[0x28223BE20](v111);
  v662 = &v639 - v112;
  MEMORY[0x28223BE20](v113);
  v661 = &v639 - v114;
  MEMORY[0x28223BE20](v115);
  v660 = &v639 - v116;
  MEMORY[0x28223BE20](v117);
  v659 = &v639 - v118;
  MEMORY[0x28223BE20](v119);
  v658 = &v639 - v120;
  MEMORY[0x28223BE20](v121);
  v657 = &v639 - v122;
  MEMORY[0x28223BE20](v123);
  v656 = &v639 - v124;
  MEMORY[0x28223BE20](v125);
  v655 = &v639 - v126;
  MEMORY[0x28223BE20](v127);
  v654 = &v639 - v128;
  MEMORY[0x28223BE20](v129);
  v653 = &v639 - v130;
  MEMORY[0x28223BE20](v131);
  v652 = &v639 - v132;
  MEMORY[0x28223BE20](v133);
  v651 = &v639 - v134;
  MEMORY[0x28223BE20](v135);
  v650 = &v639 - v136;
  MEMORY[0x28223BE20](v137);
  v649 = &v639 - v138;
  MEMORY[0x28223BE20](v139);
  v648 = &v639 - v140;
  MEMORY[0x28223BE20](v141);
  v647 = &v639 - v142;
  MEMORY[0x28223BE20](v143);
  v646 = &v639 - v144;
  MEMORY[0x28223BE20](v145);
  v645 = &v639 - v146;
  MEMORY[0x28223BE20](v147);
  v644 = &v639 - v148;
  MEMORY[0x28223BE20](v149);
  v643 = &v639 - v150;
  MEMORY[0x28223BE20](v151);
  v642 = &v639 - v152;
  MEMORY[0x28223BE20](v153);
  v641 = &v639 - v154;
  MEMORY[0x28223BE20](v155);
  v640 = &v639 - v156;
  MEMORY[0x28223BE20](v157);
  v159 = &v639 - v158;
  MEMORY[0x28223BE20](v160);
  v162 = &v639 - v161;
  MEMORY[0x28223BE20](v163);
  v165 = &v639 - v164;
  MEMORY[0x28223BE20](v166);
  v168 = &v639 - v167;
  MEMORY[0x28223BE20](v169);
  v171 = &v639 - v170;
  MEMORY[0x28223BE20](v172);
  v174 = &v639 - v173;
  v175 = type metadata accessor for ArticleListTagFeedGroup(0);
  MEMORY[0x28223BE20](v175 - 8);
  v683 = &v639 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v178 = v177;
  v179 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v181 = &v639 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B5A244(0);
  v730 = v182;
  v733 = a2;
  sub_219BE8EF4();
  sub_219BE6934();
  (*(v179 + 8))(v181, v178);
  v183 = v737;
  switch((v183 >> 58) & 0x3C | (v183 >> 1) & 3)
  {
    case 1uLL:
      v184 = MEMORY[0x277CEAD18];
      v185 = swift_projectBox();
      v186 = v683;
      sub_218B5A2A4(v185, v683, type metadata accessor for ArticleListTagFeedGroup);
      sub_219BED874();
      v187 = sub_219BF1844();
      (*(v729 + 8))(v174, v728);
      if (v187)
      {
        v188 = [v187 identifier];
        sub_219BF5414();
        v729 = v183;

        v189 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v190 = sub_219BDCD44();
        v191 = *(v190 - 8);
        v192 = (*(v191 + 80) + 32) & ~*(v191 + 80);
        v193 = swift_allocObject();
        *(v193 + 16) = xmmword_219C09BA0;
        (*(v191 + 104))(v193 + v192, *v184, v190);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v194 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v189, v194);
        v195 = type metadata accessor for ArticleListTagFeedGroup;
        v196 = v683;
        goto LABEL_129;
      }

      v630 = type metadata accessor for ArticleListTagFeedGroup;
      goto LABEL_128;
    case 2uLL:
      v377 = MEMORY[0x277CEAD18];
      v378 = swift_projectBox();
      v379 = v684;
      sub_218B5A2A4(v378, v684, type metadata accessor for PromotedArticleListTagFeedGroup);
      sub_219BED874();
      v380 = sub_219BF1844();
      (*(v729 + 8))(v171, v728);
      if (v380)
      {
        v381 = [v380 identifier];
        sub_219BF5414();
        v729 = v183;

        v382 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v383 = sub_219BDCD44();
        v384 = *(v383 - 8);
        v385 = (*(v384 + 80) + 32) & ~*(v384 + 80);
        v386 = swift_allocObject();
        *(v386 + 16) = xmmword_219C09BA0;
        (*(v384 + 104))(v386 + v385, *v377, v383);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v387 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v382, v387);
        v195 = type metadata accessor for PromotedArticleListTagFeedGroup;
        v196 = v684;
      }

      else
      {
        v195 = type metadata accessor for PromotedArticleListTagFeedGroup;
        v196 = v379;
      }

      goto LABEL_129;
    case 3uLL:
      v388 = MEMORY[0x277CEAD18];
      v389 = swift_projectBox();
      v186 = v687;
      sub_218B5A2A4(v389, v687, type metadata accessor for WeatherTagFeedGroup);
      sub_219BED874();
      v390 = sub_219BF1844();
      (*(v729 + 8))(v162, v728);
      if (v390)
      {
        v391 = [v390 identifier];
        sub_219BF5414();
        v729 = v183;

        v392 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v393 = sub_219BDCD44();
        v394 = *(v393 - 8);
        v395 = (*(v394 + 80) + 32) & ~*(v394 + 80);
        v396 = swift_allocObject();
        *(v396 + 16) = xmmword_219C09BA0;
        (*(v394 + 104))(v396 + v395, *v388, v393);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v397 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v392, v397);
        v195 = type metadata accessor for WeatherTagFeedGroup;
        v196 = v687;
        goto LABEL_129;
      }

      v630 = type metadata accessor for WeatherTagFeedGroup;
      goto LABEL_128;
    case 5uLL:
      v315 = MEMORY[0x277CEAD18];
      v316 = swift_projectBox();
      v186 = v685;
      sub_218B5A2A4(v316, v685, type metadata accessor for ChannelSectionTagFeedGroup);
      sub_219BED874();
      v317 = sub_219BF1844();
      (*(v729 + 8))(v168, v728);
      if (v317)
      {
        v318 = [v317 identifier];
        sub_219BF5414();
        v729 = v183;

        v319 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v320 = sub_219BDCD44();
        v321 = *(v320 - 8);
        v322 = (*(v321 + 80) + 32) & ~*(v321 + 80);
        v323 = swift_allocObject();
        *(v323 + 16) = xmmword_219C09BA0;
        (*(v321 + 104))(v323 + v322, *v315, v320);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v324 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v319, v324);
        v195 = type metadata accessor for ChannelSectionTagFeedGroup;
        v196 = v685;
        goto LABEL_129;
      }

      v630 = type metadata accessor for ChannelSectionTagFeedGroup;
      goto LABEL_128;
    case 6uLL:
      v346 = MEMORY[0x277CEAD18];
      v347 = swift_projectBox();
      v186 = v686;
      sub_218B5A2A4(v347, v686, type metadata accessor for ChannelSectionDirectoryTagFeedGroup);
      sub_219BED874();
      v348 = sub_219BF1844();
      (*(v729 + 8))(v165, v728);
      if (v348)
      {
        v349 = [v348 identifier];
        sub_219BF5414();
        v729 = v183;

        v350 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v351 = sub_219BDCD44();
        v352 = *(v351 - 8);
        v353 = (*(v352 + 80) + 32) & ~*(v352 + 80);
        v354 = swift_allocObject();
        *(v354 + 16) = xmmword_219C09BA0;
        (*(v352 + 104))(v354 + v353, *v346, v351);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v355 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v350, v355);
        v195 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
        v196 = v686;
        goto LABEL_129;
      }

      v630 = type metadata accessor for ChannelSectionDirectoryTagFeedGroup;
      goto LABEL_128;
    case 0xAuLL:
      v398 = MEMORY[0x277CEAD18];
      v399 = swift_projectBox();
      v186 = v689;
      sub_218B5A2A4(v399, v689, type metadata accessor for CuratedTagFeedGroup);
      sub_219BED874();
      v400 = sub_219BF1844();
      (*(v729 + 8))(v159, v728);
      if (v400)
      {
        v401 = [v400 identifier];
        sub_219BF5414();
        v729 = v183;

        v402 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v403 = sub_219BDCD44();
        v404 = *(v403 - 8);
        v405 = (*(v404 + 80) + 32) & ~*(v404 + 80);
        v406 = swift_allocObject();
        *(v406 + 16) = xmmword_219C09BA0;
        (*(v404 + 104))(v406 + v405, *v398, v403);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v407 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v402, v407);
        v195 = type metadata accessor for CuratedTagFeedGroup;
        v196 = v689;
        goto LABEL_129;
      }

      v630 = type metadata accessor for CuratedTagFeedGroup;
      goto LABEL_128;
    case 0xBuLL:
      v439 = MEMORY[0x277CEAD18];
      v440 = swift_projectBox();
      v441 = v688;
      sub_218B5A2A4(v440, v688, type metadata accessor for SportsRecordTagFeedGroup);
      v442 = v640;
      sub_219BED874();
      v443 = sub_219BF1844();
      (*(v729 + 8))(v442, v728);
      if (v443)
      {
        v444 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v445 = sub_219BDCD44();
        v446 = *(v445 - 8);
        v447 = (*(v446 + 80) + 32) & ~*(v446 + 80);
        v448 = swift_allocObject();
        *(v448 + 16) = xmmword_219C09BA0;
        (*(v446 + 104))(v448 + v447, *v439, v445);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v449 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v444, v449);
        sub_218B58C44(v688, type metadata accessor for SportsRecordTagFeedGroup);
      }

      else
      {
        sub_218B58C44(v441, type metadata accessor for SportsRecordTagFeedGroup);
      }

      goto LABEL_130;
    case 0xCuLL:
      v294 = MEMORY[0x277CEAD18];
      v295 = swift_projectBox();
      v186 = v690;
      sub_218B5A2A4(v295, v690, type metadata accessor for SportsNavigationTagFeedGroup);
      v296 = v641;
      sub_219BED874();
      v297 = sub_219BF1844();
      (*(v729 + 8))(v296, v728);
      if (v297)
      {
        v298 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v299 = sub_219BDCD44();
        v300 = *(v299 - 8);
        v301 = (*(v300 + 80) + 32) & ~*(v300 + 80);
        v302 = swift_allocObject();
        v729 = v183;
        *(v302 + 16) = xmmword_219C09BA0;
        (*(v300 + 104))(v302 + v301, *v294, v299);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v303 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v298, v303);
        v195 = type metadata accessor for SportsNavigationTagFeedGroup;
        v196 = v690;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsNavigationTagFeedGroup;
      goto LABEL_128;
    case 0xDuLL:
      v356 = MEMORY[0x277CEAD18];
      v357 = swift_projectBox();
      v186 = v691;
      sub_218B5A2A4(v357, v691, type metadata accessor for SportsScheduleTagFeedGroup);
      v358 = v642;
      sub_219BED874();
      v359 = sub_219BF1844();
      (*(v729 + 8))(v358, v728);
      if (v359)
      {
        v360 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v361 = sub_219BDCD44();
        v362 = *(v361 - 8);
        v363 = (*(v362 + 80) + 32) & ~*(v362 + 80);
        v364 = swift_allocObject();
        v729 = v183;
        *(v364 + 16) = xmmword_219C09BA0;
        (*(v362 + 104))(v364 + v363, *v356, v361);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v365 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v360, v365);
        v195 = type metadata accessor for SportsScheduleTagFeedGroup;
        v196 = v691;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsScheduleTagFeedGroup;
      goto LABEL_128;
    case 0xEuLL:
      v450 = MEMORY[0x277CEAD18];
      v451 = swift_projectBox();
      v186 = v694;
      sub_218B5A2A4(v451, v694, type metadata accessor for SportsTopStoriesTagFeedGroup);
      v452 = v645;
      sub_219BED874();
      v453 = sub_219BF1844();
      (*(v729 + 8))(v452, v728);
      if (v453)
      {
        v454 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v455 = sub_219BDCD44();
        v456 = *(v455 - 8);
        v457 = (*(v456 + 80) + 32) & ~*(v456 + 80);
        v458 = swift_allocObject();
        v729 = v183;
        *(v458 + 16) = xmmword_219C09BA0;
        (*(v456 + 104))(v458 + v457, *v450, v455);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v459 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v454, v459);
        v195 = type metadata accessor for SportsTopStoriesTagFeedGroup;
        v196 = v694;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsTopStoriesTagFeedGroup;
      goto LABEL_128;
    case 0xFuLL:
      v336 = MEMORY[0x277CEAD18];
      v337 = swift_projectBox();
      v186 = v695;
      sub_218B5A2A4(v337, v695, type metadata accessor for SportsFavoritesTagFeedGroup);
      v338 = v646;
      sub_219BED874();
      v339 = sub_219BF1844();
      (*(v729 + 8))(v338, v728);
      if (v339)
      {
        v340 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v341 = sub_219BDCD44();
        v342 = *(v341 - 8);
        v343 = (*(v342 + 80) + 32) & ~*(v342 + 80);
        v344 = swift_allocObject();
        v729 = v183;
        *(v344 + 16) = xmmword_219C09BA0;
        (*(v342 + 104))(v344 + v343, *v336, v341);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v345 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v340, v345);
        v195 = type metadata accessor for SportsFavoritesTagFeedGroup;
        v196 = v695;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsFavoritesTagFeedGroup;
      goto LABEL_128;
    case 0x10uLL:
      v513 = MEMORY[0x277CEAD18];
      v514 = swift_projectBox();
      v186 = v696;
      sub_218B5A2A4(v514, v696, type metadata accessor for SportsScoresTagFeedGroup);
      v515 = v647;
      sub_219BED874();
      v516 = sub_219BF1844();
      (*(v729 + 8))(v515, v728);
      if (v516)
      {
        v517 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v518 = sub_219BDCD44();
        v519 = *(v518 - 8);
        v520 = (*(v519 + 80) + 32) & ~*(v519 + 80);
        v521 = swift_allocObject();
        v729 = v183;
        *(v521 + 16) = xmmword_219C09BA0;
        (*(v519 + 104))(v521 + v520, *v513, v518);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v522 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v517, v522);
        v195 = type metadata accessor for SportsScoresTagFeedGroup;
        v196 = v696;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsScoresTagFeedGroup;
      goto LABEL_128;
    case 0x11uLL:
      v523 = MEMORY[0x277CEAD18];
      v524 = swift_projectBox();
      v186 = v699;
      sub_218B5A2A4(v524, v699, type metadata accessor for SportsLinksTagFeedGroup);
      v525 = v650;
      sub_219BED874();
      v526 = sub_219BF1844();
      (*(v729 + 8))(v525, v728);
      if (v526)
      {
        v527 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v528 = sub_219BDCD44();
        v529 = *(v528 - 8);
        v530 = (*(v529 + 80) + 32) & ~*(v529 + 80);
        v531 = swift_allocObject();
        v729 = v183;
        *(v531 + 16) = xmmword_219C09BA0;
        (*(v529 + 104))(v531 + v530, *v523, v528);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v532 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v527, v532);
        v195 = type metadata accessor for SportsLinksTagFeedGroup;
        v196 = v699;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsLinksTagFeedGroup;
      goto LABEL_128;
    case 0x12uLL:
      v284 = MEMORY[0x277CEAD18];
      v285 = swift_projectBox();
      v186 = v703;
      sub_218B5A2A4(v285, v703, type metadata accessor for MySportsTopicTagFeedGroup);
      v286 = v654;
      sub_219BED874();
      v287 = sub_219BF1844();
      (*(v729 + 8))(v286, v728);
      if (v287)
      {
        v288 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v289 = sub_219BDCD44();
        v290 = *(v289 - 8);
        v291 = (*(v290 + 80) + 32) & ~*(v290 + 80);
        v292 = swift_allocObject();
        v729 = v183;
        *(v292 + 16) = xmmword_219C09BA0;
        (*(v290 + 104))(v292 + v291, *v284, v289);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v293 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v288, v293);
        v195 = type metadata accessor for MySportsTopicTagFeedGroup;
        v196 = v703;
        goto LABEL_129;
      }

      v630 = type metadata accessor for MySportsTopicTagFeedGroup;
      goto LABEL_128;
    case 0x13uLL:
      v471 = MEMORY[0x277CEAD18];
      v472 = swift_projectBox();
      v186 = v692;
      sub_218B5A2A4(v472, v692, type metadata accessor for SportsStandingsTagFeedGroup);
      v473 = v643;
      sub_219BED874();
      v474 = sub_219BF1844();
      (*(v729 + 8))(v473, v728);
      if (v474)
      {
        v475 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v476 = sub_219BDCD44();
        v477 = *(v476 - 8);
        v478 = (*(v477 + 80) + 32) & ~*(v477 + 80);
        v479 = swift_allocObject();
        v729 = v183;
        *(v479 + 16) = xmmword_219C09BA0;
        (*(v477 + 104))(v479 + v478, *v471, v476);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v480 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v475, v480);
        v195 = type metadata accessor for SportsStandingsTagFeedGroup;
        v196 = v692;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsStandingsTagFeedGroup;
      goto LABEL_128;
    case 0x14uLL:
      v481 = MEMORY[0x277CEAD18];
      v482 = swift_projectBox();
      v186 = v693;
      sub_218B5A2A4(v482, v693, type metadata accessor for SportsBracketTagFeedGroup);
      v483 = v644;
      sub_219BED874();
      v484 = sub_219BF1844();
      (*(v729 + 8))(v483, v728);
      if (v484)
      {
        v485 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v486 = sub_219BDCD44();
        v487 = *(v486 - 8);
        v488 = (*(v487 + 80) + 32) & ~*(v487 + 80);
        v489 = swift_allocObject();
        v729 = v183;
        *(v489 + 16) = xmmword_219C09BA0;
        (*(v487 + 104))(v489 + v488, *v481, v486);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v490 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v485, v490);
        v195 = type metadata accessor for SportsBracketTagFeedGroup;
        v196 = v693;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsBracketTagFeedGroup;
      goto LABEL_128;
    case 0x15uLL:
      v544 = MEMORY[0x277CEAD18];
      v545 = swift_projectBox();
      v186 = v697;
      sub_218B5A2A4(v545, v697, type metadata accessor for SportsBoxScoresTagFeedGroup);
      v546 = v648;
      sub_219BED874();
      v547 = sub_219BF1844();
      (*(v729 + 8))(v546, v728);
      if (v547)
      {
        v548 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v549 = sub_219BDCD44();
        v550 = *(v549 - 8);
        v551 = (*(v550 + 80) + 32) & ~*(v550 + 80);
        v552 = swift_allocObject();
        v729 = v183;
        *(v552 + 16) = xmmword_219C09BA0;
        (*(v550 + 104))(v552 + v551, *v544, v549);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v553 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v548, v553);
        v195 = type metadata accessor for SportsBoxScoresTagFeedGroup;
        v196 = v697;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsBoxScoresTagFeedGroup;
      goto LABEL_128;
    case 0x16uLL:
      v598 = MEMORY[0x277CEAD18];
      v599 = swift_projectBox();
      v186 = v698;
      sub_218B5A2A4(v599, v698, type metadata accessor for SportsEventInfoTagFeedGroup);
      v600 = v649;
      sub_219BED874();
      v601 = sub_219BF1844();
      (*(v729 + 8))(v600, v728);
      if (v601)
      {
        v602 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v603 = sub_219BDCD44();
        v604 = *(v603 - 8);
        v605 = (*(v604 + 80) + 32) & ~*(v604 + 80);
        v606 = swift_allocObject();
        v729 = v183;
        *(v606 + 16) = xmmword_219C09BA0;
        (*(v604 + 104))(v606 + v605, *v598, v603);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v607 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v602, v607);
        v195 = type metadata accessor for SportsEventInfoTagFeedGroup;
        v196 = v698;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsEventInfoTagFeedGroup;
      goto LABEL_128;
    case 0x17uLL:
      v418 = MEMORY[0x277CEAD18];
      v419 = swift_projectBox();
      v186 = v700;
      sub_218B5A2A4(v419, v700, type metadata accessor for SportsInjuryReportsTagFeedGroup);
      v420 = v651;
      sub_219BED874();
      v421 = sub_219BF1844();
      (*(v729 + 8))(v420, v728);
      if (v421)
      {
        v422 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v423 = sub_219BDCD44();
        v424 = *(v423 - 8);
        v425 = (*(v424 + 80) + 32) & ~*(v424 + 80);
        v426 = swift_allocObject();
        v729 = v183;
        *(v426 + 16) = xmmword_219C09BA0;
        (*(v424 + 104))(v426 + v425, *v418, v423);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v427 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v422, v427);
        v195 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
        v196 = v700;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsInjuryReportsTagFeedGroup;
      goto LABEL_128;
    case 0x18uLL:
      v408 = MEMORY[0x277CEAD18];
      v409 = swift_projectBox();
      v186 = v701;
      sub_218B5A2A4(v409, v701, type metadata accessor for SportsKeyPlayersTagFeedGroup);
      v410 = v652;
      sub_219BED874();
      v411 = sub_219BF1844();
      (*(v729 + 8))(v410, v728);
      if (v411)
      {
        v412 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v413 = sub_219BDCD44();
        v414 = *(v413 - 8);
        v415 = (*(v414 + 80) + 32) & ~*(v414 + 80);
        v416 = swift_allocObject();
        v729 = v183;
        *(v416 + 16) = xmmword_219C09BA0;
        (*(v414 + 104))(v416 + v415, *v408, v413);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v417 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v412, v417);
        v195 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
        v196 = v701;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsKeyPlayersTagFeedGroup;
      goto LABEL_128;
    case 0x19uLL:
      v252 = MEMORY[0x277CEAD18];
      v253 = swift_projectBox();
      v186 = v702;
      sub_218B5A2A4(v253, v702, type metadata accessor for SportsEventArticlesTagFeedGroup);
      v254 = v653;
      sub_219BED874();
      v255 = sub_219BF1844();
      (*(v729 + 8))(v254, v728);
      if (v255)
      {
        v256 = v725;
        sub_219BE1414();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v257 = sub_219BDCD44();
        v258 = *(v257 - 8);
        v259 = (*(v258 + 80) + 32) & ~*(v258 + 80);
        v260 = swift_allocObject();
        v729 = v183;
        *(v260 + 16) = xmmword_219C09BA0;
        (*(v258 + 104))(v260 + v259, *v252, v257);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v261 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v256, v261);
        v195 = type metadata accessor for SportsEventArticlesTagFeedGroup;
        v196 = v702;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsEventArticlesTagFeedGroup;
      goto LABEL_128;
    case 0x1AuLL:
      v262 = MEMORY[0x277CEAD18];
      v263 = swift_projectBox();
      v186 = v704;
      sub_218B5A2A4(v263, v704, type metadata accessor for HighlightsTagFeedGroup);
      v264 = v655;
      sub_219BED874();
      v265 = sub_219BF1844();
      (*(v729 + 8))(v264, v728);
      if (v265)
      {
        v266 = [v265 identifier];
        sub_219BF5414();
        v729 = v183;

        v267 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v268 = sub_219BDCD44();
        v269 = *(v268 - 8);
        v270 = (*(v269 + 80) + 32) & ~*(v269 + 80);
        v271 = swift_allocObject();
        *(v271 + 16) = xmmword_219C09BA0;
        (*(v269 + 104))(v271 + v270, *v262, v268);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v272 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v267, v272);
        v195 = type metadata accessor for HighlightsTagFeedGroup;
        v196 = v704;
        goto LABEL_129;
      }

      v630 = type metadata accessor for HighlightsTagFeedGroup;
      goto LABEL_128;
    case 0x1BuLL:
      v576 = MEMORY[0x277CEAD18];
      v577 = swift_projectBox();
      v186 = v705;
      sub_218B5A2A4(v577, v705, type metadata accessor for ForYouTagFeedGroup);
      v578 = v656;
      sub_219BED874();
      v579 = sub_219BF1844();
      (*(v729 + 8))(v578, v728);
      if (v579)
      {
        v580 = [v579 identifier];
        sub_219BF5414();
        v729 = v183;

        v581 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v582 = sub_219BDCD44();
        v583 = *(v582 - 8);
        v584 = (*(v583 + 80) + 32) & ~*(v583 + 80);
        v585 = swift_allocObject();
        *(v585 + 16) = xmmword_219C09BA0;
        (*(v583 + 104))(v585 + v584, *v576, v582);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v586 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v581, v586);
        v195 = type metadata accessor for ForYouTagFeedGroup;
        v196 = v705;
        goto LABEL_129;
      }

      v630 = type metadata accessor for ForYouTagFeedGroup;
      goto LABEL_128;
    case 0x1CuLL:
      v587 = MEMORY[0x277CEAD18];
      v588 = swift_projectBox();
      v186 = v706;
      sub_218B5A2A4(v588, v706, type metadata accessor for ChannelRecipesTagFeedGroup);
      v589 = v657;
      sub_219BED874();
      v590 = sub_219BF1844();
      (*(v729 + 8))(v589, v728);
      if (v590)
      {
        v591 = [v590 identifier];
        sub_219BF5414();
        v729 = v183;

        v592 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v593 = sub_219BDCD44();
        v594 = *(v593 - 8);
        v595 = (*(v594 + 80) + 32) & ~*(v594 + 80);
        v596 = swift_allocObject();
        *(v596 + 16) = xmmword_219C09BA0;
        (*(v594 + 104))(v596 + v595, *v587, v593);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v597 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v592, v597);
        v195 = type metadata accessor for ChannelRecipesTagFeedGroup;
        v196 = v706;
        goto LABEL_129;
      }

      v630 = type metadata accessor for ChannelRecipesTagFeedGroup;
      goto LABEL_128;
    case 0x1DuLL:
      v491 = MEMORY[0x277CEAD18];
      v492 = swift_projectBox();
      v186 = v707;
      sub_218B5A2A4(v492, v707, type metadata accessor for ForYouRecipesTagFeedGroup);
      v493 = v658;
      sub_219BED874();
      v494 = sub_219BF1844();
      (*(v729 + 8))(v493, v728);
      if (v494)
      {
        v495 = [v494 identifier];
        sub_219BF5414();
        v729 = v183;

        v496 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v497 = sub_219BDCD44();
        v498 = *(v497 - 8);
        v499 = (*(v498 + 80) + 32) & ~*(v498 + 80);
        v500 = swift_allocObject();
        *(v500 + 16) = xmmword_219C09BA0;
        (*(v498 + 104))(v500 + v499, *v491, v497);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v501 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v496, v501);
        v195 = type metadata accessor for ForYouRecipesTagFeedGroup;
        v196 = v707;
        goto LABEL_129;
      }

      v630 = type metadata accessor for ForYouRecipesTagFeedGroup;
      goto LABEL_128;
    case 0x1EuLL:
      v428 = MEMORY[0x277CEAD18];
      v429 = swift_projectBox();
      v186 = v708;
      sub_218B5A2A4(v429, v708, type metadata accessor for RecentStoriesTagFeedGroup);
      v430 = v659;
      sub_219BED874();
      v431 = sub_219BF1844();
      (*(v729 + 8))(v430, v728);
      if (v431)
      {
        v432 = [v431 identifier];
        sub_219BF5414();
        v729 = v183;

        v433 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v434 = sub_219BDCD44();
        v435 = *(v434 - 8);
        v436 = (*(v435 + 80) + 32) & ~*(v435 + 80);
        v437 = swift_allocObject();
        *(v437 + 16) = xmmword_219C09BA0;
        (*(v435 + 104))(v437 + v436, *v428, v434);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v438 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v433, v438);
        v195 = type metadata accessor for RecentStoriesTagFeedGroup;
        v196 = v708;
        goto LABEL_129;
      }

      v630 = type metadata accessor for RecentStoriesTagFeedGroup;
      goto LABEL_128;
    case 0x1FuLL:
      v502 = MEMORY[0x277CEAD18];
      v503 = swift_projectBox();
      v186 = v709;
      sub_218B5A2A4(v503, v709, type metadata accessor for RecentlyViewedRecipesTagFeedGroup);
      v504 = v660;
      sub_219BED874();
      v505 = sub_219BF1844();
      (*(v729 + 8))(v504, v728);
      if (v505)
      {
        v506 = [v505 identifier];
        sub_219BF5414();
        v729 = v183;

        v507 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v508 = sub_219BDCD44();
        v509 = *(v508 - 8);
        v510 = (*(v509 + 80) + 32) & ~*(v509 + 80);
        v511 = swift_allocObject();
        *(v511 + 16) = xmmword_219C09BA0;
        (*(v509 + 104))(v511 + v510, *v502, v508);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v512 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v507, v512);
        v195 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
        v196 = v709;
        goto LABEL_129;
      }

      v630 = type metadata accessor for RecentlyViewedRecipesTagFeedGroup;
      goto LABEL_128;
    case 0x20uLL:
      v325 = MEMORY[0x277CEAD18];
      v326 = swift_projectBox();
      v186 = v710;
      sub_218B5A2A4(v326, v710, type metadata accessor for DateRangeTagFeedGroup);
      v327 = v661;
      sub_219BED874();
      v328 = sub_219BF1844();
      (*(v729 + 8))(v327, v728);
      if (v328)
      {
        v329 = [v328 identifier];
        sub_219BF5414();
        v729 = v183;

        v330 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v331 = sub_219BDCD44();
        v332 = *(v331 - 8);
        v333 = (*(v332 + 80) + 32) & ~*(v332 + 80);
        v334 = swift_allocObject();
        *(v334 + 16) = xmmword_219C09BA0;
        (*(v332 + 104))(v334 + v333, *v325, v331);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v335 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v330, v335);
        v195 = type metadata accessor for DateRangeTagFeedGroup;
        v196 = v710;
        goto LABEL_129;
      }

      v630 = type metadata accessor for DateRangeTagFeedGroup;
      goto LABEL_128;
    case 0x21uLL:
      v273 = MEMORY[0x277CEAD18];
      v274 = swift_projectBox();
      v186 = v711;
      sub_218B5A2A4(v274, v711, type metadata accessor for SportsOnboardingTagFeedGroup);
      v275 = v662;
      sub_219BED874();
      v276 = sub_219BF1844();
      (*(v729 + 8))(v275, v728);
      if (v276)
      {
        v277 = [v276 identifier];
        sub_219BF5414();
        v729 = v183;

        v278 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v279 = sub_219BDCD44();
        v280 = *(v279 - 8);
        v281 = (*(v280 + 80) + 32) & ~*(v280 + 80);
        v282 = swift_allocObject();
        *(v282 + 16) = xmmword_219C09BA0;
        (*(v280 + 104))(v282 + v281, *v273, v279);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v283 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v278, v283);
        v195 = type metadata accessor for SportsOnboardingTagFeedGroup;
        v196 = v711;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsOnboardingTagFeedGroup;
      goto LABEL_128;
    case 0x22uLL:
      v230 = MEMORY[0x277CEAD18];
      v231 = swift_projectBox();
      v186 = v712;
      sub_218B5A2A4(v231, v712, type metadata accessor for SportsMastheadTagFeedGroup);
      v232 = v663;
      sub_219BED874();
      v233 = sub_219BF1844();
      (*(v729 + 8))(v232, v728);
      if (v233)
      {
        v234 = [v233 identifier];
        sub_219BF5414();
        v729 = v183;

        v235 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v236 = sub_219BDCD44();
        v237 = *(v236 - 8);
        v238 = (*(v237 + 80) + 32) & ~*(v237 + 80);
        v239 = swift_allocObject();
        *(v239 + 16) = xmmword_219C09BA0;
        (*(v237 + 104))(v239 + v238, *v230, v236);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v240 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v235, v240);
        v195 = type metadata accessor for SportsMastheadTagFeedGroup;
        v196 = v712;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsMastheadTagFeedGroup;
      goto LABEL_128;
    case 0x23uLL:
      v241 = MEMORY[0x277CEAD18];
      v242 = swift_projectBox();
      v186 = v713;
      sub_218B5A2A4(v242, v713, type metadata accessor for SportsEventTopicTagFeedGroup);
      v243 = v664;
      sub_219BED874();
      v244 = sub_219BF1844();
      (*(v729 + 8))(v243, v728);
      if (v244)
      {
        v245 = [v244 identifier];
        sub_219BF5414();
        v729 = v183;

        v246 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v247 = sub_219BDCD44();
        v248 = *(v247 - 8);
        v249 = (*(v248 + 80) + 32) & ~*(v248 + 80);
        v250 = swift_allocObject();
        *(v250 + 16) = xmmword_219C09BA0;
        (*(v248 + 104))(v250 + v249, *v241, v247);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v251 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v246, v251);
        v195 = type metadata accessor for SportsEventTopicTagFeedGroup;
        v196 = v713;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SportsEventTopicTagFeedGroup;
      goto LABEL_128;
    case 0x24uLL:
      v208 = MEMORY[0x277CEAD18];
      v209 = swift_projectBox();
      v186 = v714;
      sub_218B5A2A4(v209, v714, type metadata accessor for PuzzleListTagFeedGroup);
      v210 = v665;
      sub_219BED874();
      v211 = sub_219BF1844();
      (*(v729 + 8))(v210, v728);
      if (v211)
      {
        v212 = [v211 identifier];
        sub_219BF5414();
        v729 = v183;

        v213 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v214 = sub_219BDCD44();
        v215 = *(v214 - 8);
        v216 = (*(v215 + 80) + 32) & ~*(v215 + 80);
        v217 = swift_allocObject();
        *(v217 + 16) = xmmword_219C09BA0;
        (*(v215 + 104))(v217 + v216, *v208, v214);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v218 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v213, v218);
        v195 = type metadata accessor for PuzzleListTagFeedGroup;
        v196 = v714;
        goto LABEL_129;
      }

      v630 = type metadata accessor for PuzzleListTagFeedGroup;
      goto LABEL_128;
    case 0x25uLL:
      v608 = MEMORY[0x277CEAD18];
      v609 = swift_projectBox();
      v186 = v715;
      sub_218B5A2A4(v609, v715, type metadata accessor for PuzzleArchiveTagFeedGroup);
      v610 = v666;
      sub_219BED874();
      v611 = sub_219BF1844();
      (*(v729 + 8))(v610, v728);
      if (v611)
      {
        v612 = [v611 identifier];
        sub_219BF5414();
        v729 = v183;

        v613 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v614 = sub_219BDCD44();
        v615 = *(v614 - 8);
        v616 = (*(v615 + 80) + 32) & ~*(v615 + 80);
        v617 = swift_allocObject();
        *(v617 + 16) = xmmword_219C09BA0;
        (*(v615 + 104))(v617 + v616, *v608, v614);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v618 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v613, v618);
        v195 = type metadata accessor for PuzzleArchiveTagFeedGroup;
        v196 = v715;
        goto LABEL_129;
      }

      v630 = type metadata accessor for PuzzleArchiveTagFeedGroup;
      goto LABEL_128;
    case 0x26uLL:
      v554 = MEMORY[0x277CEAD18];
      v555 = swift_projectBox();
      v186 = v716;
      sub_218B5A2A4(v555, v716, type metadata accessor for PuzzleContinuePlayingTagFeedGroup);
      v556 = v667;
      sub_219BED874();
      v557 = sub_219BF1844();
      (*(v729 + 8))(v556, v728);
      if (v557)
      {
        v558 = [v557 identifier];
        sub_219BF5414();
        v729 = v183;

        v559 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v560 = sub_219BDCD44();
        v561 = *(v560 - 8);
        v562 = (*(v561 + 80) + 32) & ~*(v561 + 80);
        v563 = swift_allocObject();
        *(v563 + 16) = xmmword_219C09BA0;
        (*(v561 + 104))(v563 + v562, *v554, v560);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v564 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v559, v564);
        v195 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
        v196 = v716;
        goto LABEL_129;
      }

      v630 = type metadata accessor for PuzzleContinuePlayingTagFeedGroup;
      goto LABEL_128;
    case 0x27uLL:
      v366 = MEMORY[0x277CEAD18];
      v367 = swift_projectBox();
      v186 = v717;
      sub_218B5A2A4(v367, v717, type metadata accessor for PuzzleFeaturedTagFeedGroup);
      v368 = v668;
      sub_219BED874();
      v369 = sub_219BF1844();
      (*(v729 + 8))(v368, v728);
      if (v369)
      {
        v370 = [v369 identifier];
        sub_219BF5414();
        v729 = v183;

        v371 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v372 = sub_219BDCD44();
        v373 = *(v372 - 8);
        v374 = (*(v373 + 80) + 32) & ~*(v373 + 80);
        v375 = swift_allocObject();
        *(v375 + 16) = xmmword_219C09BA0;
        (*(v373 + 104))(v375 + v374, *v366, v372);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v376 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v371, v376);
        v195 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
        v196 = v717;
        goto LABEL_129;
      }

      v630 = type metadata accessor for PuzzleFeaturedTagFeedGroup;
      goto LABEL_128;
    case 0x28uLL:
      v460 = MEMORY[0x277CEAD18];
      v461 = swift_projectBox();
      v186 = v718;
      sub_218B5A2A4(v461, v718, type metadata accessor for PuzzleFullArchiveTagFeedGroup);
      v462 = v669;
      sub_219BED874();
      v463 = sub_219BF1844();
      (*(v729 + 8))(v462, v728);
      if (v463)
      {
        v464 = [v463 identifier];
        sub_219BF5414();
        v729 = v183;

        v465 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v466 = sub_219BDCD44();
        v467 = *(v466 - 8);
        v468 = (*(v467 + 80) + 32) & ~*(v467 + 80);
        v469 = swift_allocObject();
        *(v469 + 16) = xmmword_219C09BA0;
        (*(v467 + 104))(v469 + v468, *v460, v466);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v470 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v465, v470);
        v195 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
        v196 = v718;
        goto LABEL_129;
      }

      v630 = type metadata accessor for PuzzleFullArchiveTagFeedGroup;
      goto LABEL_128;
    case 0x29uLL:
      v565 = MEMORY[0x277CEAD18];
      v566 = swift_projectBox();
      v186 = v719;
      sub_218B5A2A4(v566, v719, type metadata accessor for PuzzleScoreboardTagFeedGroup);
      v567 = v670;
      sub_219BED874();
      v568 = sub_219BF1844();
      (*(v729 + 8))(v567, v728);
      if (v568)
      {
        v569 = [v568 identifier];
        sub_219BF5414();
        v729 = v183;

        v570 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v571 = sub_219BDCD44();
        v572 = *(v571 - 8);
        v573 = (*(v572 + 80) + 32) & ~*(v572 + 80);
        v574 = swift_allocObject();
        *(v574 + 16) = xmmword_219C09BA0;
        (*(v572 + 104))(v574 + v573, *v565, v571);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v575 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v570, v575);
        v195 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
        v196 = v719;
        goto LABEL_129;
      }

      v630 = type metadata accessor for PuzzleScoreboardTagFeedGroup;
      goto LABEL_128;
    case 0x2AuLL:
      v197 = MEMORY[0x277CEAD18];
      v198 = swift_projectBox();
      v186 = v720;
      sub_218B5A2A4(v198, v720, type metadata accessor for AffinityTagFeedGroup);
      v199 = v671;
      sub_219BED874();
      v200 = sub_219BF1844();
      (*(v729 + 8))(v199, v728);
      if (v200)
      {
        v201 = [v200 identifier];
        sub_219BF5414();
        v729 = v183;

        v202 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v203 = sub_219BDCD44();
        v204 = *(v203 - 8);
        v205 = (*(v204 + 80) + 32) & ~*(v204 + 80);
        v206 = swift_allocObject();
        *(v206 + 16) = xmmword_219C09BA0;
        (*(v204 + 104))(v206 + v205, *v197, v203);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v207 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v202, v207);
        v195 = type metadata accessor for AffinityTagFeedGroup;
        v196 = v720;
        goto LABEL_129;
      }

      v630 = type metadata accessor for AffinityTagFeedGroup;
      goto LABEL_128;
    case 0x2CuLL:
      v304 = MEMORY[0x277CEAD18];
      v305 = swift_projectBox();
      v186 = v721;
      sub_218B5A2A4(v305, v721, type metadata accessor for LatestRecipesTagFeedGroup);
      v306 = v672;
      sub_219BED874();
      v307 = sub_219BF1844();
      (*(v729 + 8))(v306, v728);
      if (v307)
      {
        v308 = [v307 identifier];
        sub_219BF5414();
        v729 = v183;

        v309 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v310 = sub_219BDCD44();
        v311 = *(v310 - 8);
        v312 = (*(v311 + 80) + 32) & ~*(v311 + 80);
        v313 = swift_allocObject();
        *(v313 + 16) = xmmword_219C09BA0;
        (*(v311 + 104))(v313 + v312, *v304, v310);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v314 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v309, v314);
        v195 = type metadata accessor for LatestRecipesTagFeedGroup;
        v196 = v721;
        goto LABEL_129;
      }

      v630 = type metadata accessor for LatestRecipesTagFeedGroup;
      goto LABEL_128;
    case 0x2DuLL:
      v533 = MEMORY[0x277CEAD18];
      v534 = swift_projectBox();
      v186 = v722;
      sub_218B5A2A4(v534, v722, type metadata accessor for SavedRecipesTagFeedGroup);
      v535 = v673;
      sub_219BED874();
      v536 = sub_219BF1844();
      (*(v729 + 8))(v535, v728);
      if (v536)
      {
        v537 = [v536 identifier];
        sub_219BF5414();
        v729 = v183;

        v538 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v539 = sub_219BDCD44();
        v540 = *(v539 - 8);
        v541 = (*(v540 + 80) + 32) & ~*(v540 + 80);
        v542 = swift_allocObject();
        *(v542 + 16) = xmmword_219C09BA0;
        (*(v540 + 104))(v542 + v541, *v533, v539);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v543 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v538, v543);
        v195 = type metadata accessor for SavedRecipesTagFeedGroup;
        v196 = v722;
        goto LABEL_129;
      }

      v630 = type metadata accessor for SavedRecipesTagFeedGroup;
      goto LABEL_128;
    case 0x2EuLL:
      v619 = MEMORY[0x277CEAD18];
      v620 = swift_projectBox();
      v186 = v723;
      sub_218B5A2A4(v620, v723, type metadata accessor for TrendingRecipesTagFeedGroup);
      v621 = v674;
      sub_219BED874();
      v622 = sub_219BF1844();
      (*(v729 + 8))(v621, v728);
      if (v622)
      {
        v623 = [v622 identifier];
        sub_219BF5414();
        v729 = v183;

        v624 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v625 = sub_219BDCD44();
        v626 = *(v625 - 8);
        v627 = (*(v626 + 80) + 32) & ~*(v626 + 80);
        v628 = swift_allocObject();
        *(v628 + 16) = xmmword_219C09BA0;
        (*(v626 + 104))(v628 + v627, *v619, v625);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v629 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v624, v629);
        v195 = type metadata accessor for TrendingRecipesTagFeedGroup;
        v196 = v723;
        goto LABEL_129;
      }

      v630 = type metadata accessor for TrendingRecipesTagFeedGroup;
      goto LABEL_128;
    case 0x2FuLL:
      v219 = MEMORY[0x277CEAD18];
      v220 = swift_projectBox();
      v186 = v724;
      sub_218B5A2A4(v220, v724, type metadata accessor for TopicRecipesTagFeedGroup);
      v221 = v675;
      sub_219BED874();
      v222 = sub_219BF1844();
      (*(v729 + 8))(v221, v728);
      if (v222)
      {
        v223 = [v222 identifier];
        sub_219BF5414();
        v729 = v183;

        v224 = v725;
        sub_219BE1424();
        sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
        v225 = sub_219BDCD44();
        v226 = *(v225 - 8);
        v227 = (*(v226 + 80) + 32) & ~*(v226 + 80);
        v228 = swift_allocObject();
        *(v228 + 16) = xmmword_219C09BA0;
        (*(v226 + 104))(v228 + v227, *v219, v225);
        sub_2186F1034(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
        v229 = v726;
        sub_219BDCCC4();
        swift_unknownObjectRelease();

        (*(v727 + 8))(v224, v229);
        v195 = type metadata accessor for TopicRecipesTagFeedGroup;
        v196 = v724;
      }

      else
      {
        v630 = type metadata accessor for TopicRecipesTagFeedGroup;
LABEL_128:
        v195 = v630;
        v196 = v186;
      }

LABEL_129:
      sub_218B58C44(v196, v195);
LABEL_130:

      sub_218747CC8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v631 = sub_219BDCD44();
      v632 = *(v631 - 8);
      v633 = (*(v632 + 80) + 32) & ~*(v632 + 80);
      v634 = swift_allocObject();
      *(v634 + 16) = xmmword_219C09BA0;
      (*(v632 + 104))(v634 + v633, *MEMORY[0x277CEAD18], v631);
      sub_219BE16D4();
      sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
      sub_219BDCCC4();

      sub_219BE0254();
      v635 = v732;
      sub_219BE8F14();
      sub_2186F1034(&qword_280EE8470, MEMORY[0x277D2E3F8], MEMORY[0x277D2E3F0]);
      sub_219BDCC64();
      v636 = v735;
      v637 = *(v734 + 8);
      v637(v635, v735);
      sub_219BE8EE4();
      sub_219BDCC74();
      return (v637)(v635, v636);
    default:
      goto LABEL_130;
  }
}

uint64_t sub_218B3C2F8()
{
  v0 = sub_219BF0AC4();
  v56 = *(v0 - 8);
  v57 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FB04C(0);
  v59 = v3;
  v55 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A127E0(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF1094();
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F7158(0);
  v12 = v11;
  v54 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_219BDD0A4();
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v16 = (&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2186F0DCC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
      v42 = *(v41 + 48);
      v43 = sub_219BF1584();
      (*(*(v43 - 8) + 8))(&v19[v42], v43);
      v44 = type metadata accessor for TagFeedGapLocation;
      goto LABEL_16;
    case 2u:
      sub_218B58C44(v19, type metadata accessor for TagFeedModel);
      goto LABEL_9;
    case 3u:
      v23 = 6775156;
      v24 = 0xE300000000000000;
      goto LABEL_14;
    case 4u:
      v47 = v54;
      (*(v54 + 32))(v14, v19, v12);
      sub_219BF07D4();
      sub_219BF1074();
      (*(v53 + 8))(v10, v8);
      v48 = sub_219BF0F34();
      v49 = (*(*(v48 - 8) + 48))(v7, 1, v48);
      sub_218B58C44(v7, sub_218A127E0);
      if (v49 != 1)
      {
        v50 = v61;
        *v16 = 0x656E696C64616568;
        v16[1] = 0xE800000000000000;
        v51 = v60;
        (*(v50 + 104))(v16, *MEMORY[0x277CEAE48], v60);
        sub_219BDD204();
        (*(v50 + 8))(v16, v51);
      }

      return (*(v47 + 8))(v14, v12);
    case 5u:
    case 6u:
    case 8u:
    case 0xDu:
      goto LABEL_15;
    case 7u:
      sub_2186F0DCC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54, " fallback ");
      v35 = *(v34 + 48);
      sub_2186F0E54(0);
      (*(*(v36 - 8) + 8))(&v19[v35], v36);
      sub_2186EAD48(0);
      (*(*(v37 - 8) + 8))(v19, v37);
LABEL_9:
      v38 = v61;
      *v16 = 0x656E696C64616568;
      v16[1] = 0xE800000000000000;
      v39 = v60;
      (*(v38 + 104))(v16, *MEMORY[0x277CEAE48], v60);
      sub_219BDD204();
      return (*(v38 + 8))(v16, v39);
    case 9u:
      v23 = 0x74496D6F74737563;
      v24 = 0xEA00000000006D65;
      goto LABEL_14;
    case 0xAu:
      v23 = 0x6575737369;
      v24 = 0xE500000000000000;
      goto LABEL_14;
    case 0xBu:
      v25 = v55 + 32;
      v27 = v58;
      v26 = v59;
      (*(v55 + 32))(v58, v19, v59);
      sub_219BF07D4();
      v28 = sub_219BF0A34();
      (*(v56 + 8))(v2, v57);
      v29 = (v61 + 104);
      v30 = (v61 + 8);
      v31 = (v25 - 24);
      if (v28)
      {
        v32 = 0x6554656C7A7A7570;
        v33 = 0xEC00000072657361;
      }

      else
      {
        v32 = 0x656C7A7A7570;
        v33 = 0xE600000000000000;
      }

      *v16 = v32;
      v16[1] = v33;
      v52 = v60;
      (*v29)(v16, *MEMORY[0x277CEAE48], v60);
      sub_219BDD204();
      (*v30)(v16, v52);
      return (*v31)(v27, v26);
    case 0xCu:
      v23 = 0x7954656C7A7A7570;
      v24 = 0xEA00000000006570;
      goto LABEL_14;
    case 0xEu:
      v23 = 0x657069636572;
      v24 = 0xE600000000000000;
LABEL_14:
      *v16 = v23;
      v16[1] = v24;
      v45 = v61;
      v46 = v60;
      (*(v61 + 104))(v16, *MEMORY[0x277CEAE48], v60);
      sub_219BDD204();
      (*(v45 + 8))(v16, v46);
LABEL_15:
      v44 = type metadata accessor for TagFeedModel;
LABEL_16:
      v21 = v44;
      v22 = v19;
      break;
    default:

      sub_2186F0CC0(0);
      v21 = type metadata accessor for TagFeedGapLocation;
      v22 = &v19[*(v20 + 48)];
      break;
  }

  return sub_218B58C44(v22, v21);
}

uint64_t sub_218B3CC28(uint64_t a1, unsigned __int8 *a2)
{
  v106 = a1;
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v4 - 8);
  v105 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDD374();
  v7 = *(v6 - 8);
  v123 = v6;
  v124 = v7;
  MEMORY[0x28223BE20](v6);
  v122 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747CC8(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v101 = &v100 - v10;
  v108 = sub_219BDF584();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v110 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BE16D4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BE16E4();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v109 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v111 = &v100 - v15;
  sub_218A12934(0);
  MEMORY[0x28223BE20](v16 - 8);
  v119 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v116);
  v115 = (&v100 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218954350(0);
  v20 = v19;
  v126 = *(v19 - 1);
  MEMORY[0x28223BE20](v19);
  v125 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v100 - v23;
  MEMORY[0x28223BE20](v25);
  v130 = &v100 - v26;
  sub_218B5B3A0(0);
  v28 = v27 - 8;
  MEMORY[0x28223BE20](v27);
  v30 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v31 - 8);
  v118 = &v100 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v120 = &v100 - v34;
  sub_218954408(0);
  v36 = v35;
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v39 = &v100 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v100 - v41;
  LODWORD(v127) = *a2;
  v114 = v2;
  v131[0] = *(v2 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_blueprintProvider);
  sub_218987644(0);
  sub_2186F1034(&qword_280EE54F0, sub_218987644, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  v117 = v37;
  v43 = *(v37 + 16);
  v121 = v42;
  v43(v39, v42, v36);
  sub_2186F1034(&qword_280EE36E0, sub_218954408, MEMORY[0x277D6EC68]);
  sub_219BF56A4();
  v44 = *(v28 + 44);
  sub_2186F1034(&unk_280EE36D0, sub_218954408, MEMORY[0x277D6EC70]);
  sub_219BF5E84();
  if (*&v30[v44] == v131[0])
  {
LABEL_2:
    sub_218B58C44(v30, sub_218B5B3A0);
    v45 = 1;
    v46 = v120;
    goto LABEL_10;
  }

  v128 = (v126 + 16);
  v129 = (v126 + 32);
  v47 = (v126 + 8);
  while (1)
  {
    v48 = sub_219BF5EC4();
    v49 = v130;
    (*v128)(v130);
    v48(v131, 0);
    v50 = v36;
    sub_219BF5E94();
    v51 = *v129;
    (*v129)(v24, v49, v20);
    sub_219BE6934();
    v52 = (v131[0] >> 58) & 0x3C | (LODWORD(v131[0]) >> 1) & 3;

    if (v52 != 45)
    {
      break;
    }

    if (v127)
    {
      goto LABEL_9;
    }

LABEL_5:
    (*v47)(v24, v20);
    v36 = v50;
    sub_219BF5E84();
    if (*&v30[v44] == v131[0])
    {
      goto LABEL_2;
    }
  }

  if (v52 != 31 || (v127 & 1) != 0)
  {
    goto LABEL_5;
  }

LABEL_9:
  sub_218B58C44(v30, sub_218B5B3A0);
  v46 = v120;
  v51(v120, v24, v20);
  v45 = 0;
  v36 = v50;
LABEL_10:
  v53 = v126;
  (*(v126 + 56))(v46, v45, 1, v20);
  v54 = v118;
  sub_218B5A2A4(v46, v118, sub_21898BBC4);
  v55 = (*(v53 + 48))(v54, 1, v20);
  v56 = v125;
  v57 = v121;
  v58 = v119;
  if (v55 == 1)
  {
    sub_218B58C44(v46, sub_21898BBC4);
    (*(v117 + 8))(v57, v36);
    return sub_218B58C44(v54, sub_21898BBC4);
  }

  (*(v53 + 32))(v125, v54, v20);
  sub_218C874C4(v58);
  sub_21898BF70(0);
  v61 = v60;
  v62 = *(v60 - 8);
  if ((*(v62 + 48))(v58, 1, v60) == 1)
  {
    (*(v53 + 8))(v56, v20);
    sub_218B58C44(v46, sub_21898BBC4);
    (*(v117 + 8))(v57, v36);
    return sub_218B58C44(v58, sub_218A12934);
  }

  v63 = v115;
  sub_219BE5FC4();
  (*(v62 + 8))(v58, v61);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    (*(v53 + 8))(v125, v20);
    sub_218B58C44(v46, sub_21898BBC4);
    (*(v117 + 8))(v57, v36);
    return sub_218B58C44(v63, type metadata accessor for TagFeedModel);
  }

  v128 = *v63;
  sub_218718690(v114 + OBJC_IVAR____TtC7NewsUI214TagFeedTracker_sectionPositionProvider, v131);
  __swift_project_boxed_opaque_existential_1(v131, v131[3]);
  sub_219BE6944();
  sub_2186F7410();
  sub_2186F1034(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
  v64 = sub_219BF00E4();

  __swift_destroy_boxed_opaque_existential_1(v131);
  if (v64 == sub_219BDAF14())
  {

    (*(v53 + 8))(v125, v20);
    goto LABEL_34;
  }

  v127 = v64;
  v65 = v125;
  sub_219BE6934();
  v66 = (v131[0] >> 58) & 0x3C | (LODWORD(v131[0]) >> 1) & 3;

  v67 = v112;
  v68 = MEMORY[0x277D2F610];
  if (v66 != 45)
  {
    v68 = MEMORY[0x277D2F7B8];
  }

  v69 = v111;
  v70 = v113;
  (*(v112 + 104))(v111, *v68, v113);
  v71 = sub_219BE5B64();
  swift_getObjectType();
  v131[0] = v71;
  v72 = sub_219BEB4B4();

  (*(v107 + 104))(v110, *MEMORY[0x277D2DB58], v108);
  (*(v67 + 16))(v109, v69, v70);
  result = sub_219BE6944();
  if (v72 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v127 < 0xFFFFFFFF80000000 || v72 < 0xFFFFFFFF80000000)
  {
    goto LABEL_36;
  }

  if (v127 > 0x7FFFFFFF)
  {
LABEL_37:
    __break(1u);
    return result;
  }

  v116 = v73;
  v118 = result;
  v119 = v72;
  v74 = sub_219BE5B34();
  v75 = *(v74 + 16);
  if (v75)
  {
    v114 = v36;
    v115 = v20;
    v131[0] = MEMORY[0x277D84F90];
    sub_21870B65C(0, v75, 0);
    v76 = v131[0];
    v130 = *(v124 + 16);
    v77 = (*(v124 + 80) + 32) & ~*(v124 + 80);
    v108 = v74;
    v78 = v74 + v77;
    v129 = *(v124 + 72);
    v124 += 16;
    v79 = (v124 - 8);
    do
    {
      v80 = v122;
      v81 = v123;
      (v130)(v122, v78, v123);
      v82 = sub_219BDD364();
      v83 = [v82 identifier];
      v84 = sub_219BF5414();
      v86 = v85;

      (*v79)(v80, v81);
      v131[0] = v76;
      v88 = *(v76 + 16);
      v87 = *(v76 + 24);
      if (v88 >= v87 >> 1)
      {
        sub_21870B65C((v87 > 1), v88 + 1, 1);
        v76 = v131[0];
      }

      *(v76 + 16) = v88 + 1;
      v89 = v76 + 16 * v88;
      *(v89 + 32) = v84;
      *(v89 + 40) = v86;
      v78 += v129;
      --v75;
    }

    while (v75);

    v20 = v115;
    v65 = v125;
    v53 = v126;
    v36 = v114;
  }

  else
  {
  }

  sub_219BE6934();
  v90 = (v131[0] >> 58) & 0x3CLL | (v131[0] >> 1) & 3;

  v91 = **(&unk_278242398 + v90);
  v92 = sub_219BE0674();
  v93 = *(v92 - 8);
  v94 = v101;
  (*(v93 + 104))(v101, v91, v92);
  (*(v93 + 56))(v94, 0, 1, v92);
  sub_219BE6934();
  v95 = sub_21943FD74();

  if (v95)
  {
    v96 = [v95 identifier];
    swift_unknownObjectRelease();
    sub_219BF5414();
  }

  v97 = sub_219BDF474();
  (*(*(v97 - 8) + 56))(v105, 1, 1, v97);
  v98 = v102;
  sub_219BE15E4();
  sub_2186F1034(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  v99 = v104;
  sub_219BDD1F4();

  (*(v103 + 8))(v98, v99);
  (*(v112 + 8))(v111, v113);
  (*(v53 + 8))(v65, v20);
LABEL_34:
  sub_218B58C44(v120, sub_21898BBC4);
  return (*(v117 + 8))(v121, v36);
}