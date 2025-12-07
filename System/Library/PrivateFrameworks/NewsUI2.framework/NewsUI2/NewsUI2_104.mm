uint64_t sub_21925E6E4(uint64_t a1, uint64_t a2)
{
  sub_21925E9AC(0, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21925E778(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleArchiveFetchResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21925E7D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21925E864(uint64_t a1)
{
  sub_21925E9AC(319, &qword_27CC17138, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_21925E9AC(319, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2186DEEA0(319, &qword_280E8F860, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_2186DEEA0(319, &qword_280E8E900, MEMORY[0x277D83B88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21925E9AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21925EA30(uint64_t a1)
{
  v2 = *(v1 + 16);
  type metadata accessor for RecipeBoxFeedPool.SavedRecipes();
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F90];
  *v2 = v3;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_21925EAB0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_21925EB18()
{
  result = qword_27CC0C460;
  if (!qword_27CC0C460)
  {
    type metadata accessor for RecipeBoxFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0C460);
  }

  return result;
}

uint64_t sub_21925EB70(unint64_t a1)
{
  v29[1] = *v1;
  v30 = v1;
  sub_218760638(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v29[0] = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v7 = 0;
    v31 = a1 & 0xC000000000000001;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v31)
      {
        v9 = MEMORY[0x21CECE0F0](v7, a1, v4);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v9 = *(a1 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = [v9 identifier];
      v13 = sub_219BF5414();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_218840D24(0, *(v8 + 2) + 1, 1, v8);
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      if (v17 >= v16 >> 1)
      {
        v8 = sub_218840D24((v16 > 1), v17 + 1, 1, v8);
      }

      *(v8 + 2) = v17 + 1;
      v18 = &v8[16 * v17];
      *(v18 + 4) = v13;
      *(v18 + 5) = v15;
      ++v7;
      if (v11 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_19:
  v19 = sub_218845F78(v8);

  v20 = sub_219BF5BF4();
  v21 = v29[0];
  (*(*(v20 - 8) + 56))(v29[0], 1, 1, v20);
  v22 = swift_allocObject();
  v23 = v30;
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v22;
  v24[5] = v19;
  v25 = sub_2195E76DC(0, 0, v21, &unk_219C6A118, v24);
  v26 = v23[3];
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;

  return v27;
}

uint64_t sub_21925EE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  return MEMORY[0x2822009F8](sub_21925EE74, 0, 0);
}

uint64_t sub_21925EE74()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = *(Strong + 16);
    v3 = swift_task_alloc();
    v0[10] = v3;
    v4 = type metadata accessor for RecipeBoxFeedPool.SavedRecipes();
    v0[11] = v4;
    v5 = sub_218A450F0();
    *v3 = v0;
    v3[1] = sub_21925EFC4;
    v6 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v0 + 5, v2, v4, v5, v6);
  }

  else
  {
    type metadata accessor for RecipeBoxFeedPool.SavedRecipes();
    v7 = v0[6];
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x277D84F90];
    *v7 = v8;
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_21925EFC4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21925F378;
  }

  else
  {
    v2 = sub_21925F0D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21925F0D8()
{
  v1 = *(v0[5] + 16);
  v27 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {

    if (!i)
    {
      break;
    }

    v23 = v0;
    v3 = 0;
    v4 = v0[8];
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v26 = v1 & 0xC000000000000001;
    v24 = v1;
    v1 += 32;
    v0 = (v4 + 56);
    while (1)
    {
      if (v26)
      {
        v5 = MEMORY[0x21CECE0F0](v3, v24);
      }

      else
      {
        if (v3 >= *(v25 + 16))
        {
          goto LABEL_29;
        }

        v5 = *(v1 + 8 * v3);
      }

      v6 = v5;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v8 = [v5 identifier];
      v9 = sub_219BF5414();
      v11 = v10;

      if (*(v4 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v12 = sub_219BF7AE4(), v13 = -1 << *(v4 + 32), v14 = v12 & ~v13, ((*(v0 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (1)
        {
          v16 = (*(v4 + 48) + 16 * v14);
          v17 = *v16 == v9 && v16[1] == v11;
          if (v17 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v0 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
LABEL_5:

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      if (v3 == i)
      {
        v18 = v27;
        v0 = v23;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_25:

  v19 = v0[6];
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *v19 = v20;
  v21 = v0[1];

  return v21();
}

uint64_t sub_21925F378()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21925F3DC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for RecipeListRecipeBoxFeedGroup(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RecipeBoxFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A5D7D4(a1, v10);
  sub_218A5D838(v10, v7);
  v11 = *&v7[*(v5 + 32)];

  sub_2189E4E08(v7);
  v12 = sub_21925EB70(v11);

  *a2 = v12;
}

uint64_t sub_21925F4EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187608D4;

  return sub_21925EE50(a1, v4, v5, v7, v6);
}

void sub_21925F5AC(uint64_t a1, uint64_t a2)
{
  sub_219268588(0, &qword_280E90778, sub_2186FB6D4, &type metadata for SearchOfflineModel, MEMORY[0x277D33530]);
  if (sub_219BF1B44())
  {
    swift_unownedRetainStrong();
    Strong = swift_unknownObjectWeakLoadStrong();

    if (Strong)
    {
      swift_unownedRetainStrong();

      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        *(swift_allocObject() + 16) = v3;
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    swift_unownedRetainStrong();
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      swift_unownedRetainStrong();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_218DA2700();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  swift_unownedRetainStrong();
  v5 = swift_unknownObjectWeakLoadStrong();

  if (v5)
  {
    swift_unownedRetainStrong();

    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      sub_219266FB8(v6);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }
}

void *sub_21925F770@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
    result = sub_219BE1E34();
    if (v9)
    {
      v6 = type metadata accessor for SearchModule();
      v7 = swift_allocObject();
      sub_2186CB1F0(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_2186CB1F0(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &off_282A75F38;
      *a2 = v7;
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

uint64_t sub_21925F884@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for EmptySearchFilterProvider();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &off_282A88510;
  return result;
}

uint64_t sub_21925F8C4()
{
  type metadata accessor for RecipeSearchFeedConfigResourceIDProvider();

  return swift_allocObject();
}

double sub_21925F8F8()
{
  type metadata accessor for SearchViewController();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280ED7970, &protocol descriptor for SearchStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EC6C18, &protocol descriptor for SearchHeaderStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280ED7978, &protocol descriptor for SearchRouterType, 1);
  sub_219BE2914();
  type metadata accessor for SearchRouter();
  sub_219BE19C4();

  sub_2186C709C(0, qword_280EC6C20, &protocol descriptor for SearchEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280ECD240, &protocol descriptor for SearchInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ED5398, &protocol descriptor for SearchTrackerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ECA1A8, &protocol descriptor for SearchDataManagerType, 0);
  sub_219BE2914();

  type metadata accessor for SearchModelFactory();
  sub_219BE2904();

  sub_2189871A8(0);
  sub_219BE2904();

  type metadata accessor for SearchBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EC0430, &protocol descriptor for SearchSectionFactoryType, 1);
  sub_219BE2914();

  sub_2192670D8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2192677A8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21873683C(0, &qword_280EE4118, sub_218E0DC14, sub_219267590, MEMORY[0x277D6E7C8]);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_219267194(0);
  sub_219BE2904();

  sub_2192678C8(0, &qword_280EE41C8, sub_219267968, sub_2192675C4, MEMORY[0x277D6E7B0]);
  sub_219BE2904();

  sub_218E0DC14(0);
  sub_219BE2904();

  type metadata accessor for SearchBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_219267A58(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  sub_219BE2904();

  sub_2192672A0(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879ABB8(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21926741C(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2192675F8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2192676E8(0);
  sub_219BE2904();

  type metadata accessor for SearchBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SearchBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21873683C(0, &qword_280EE48A0, sub_2192672A0, sub_219267774, MEMORY[0x277D6E068]);
  sub_219BE2904();

  sub_219267B34(0);
  sub_219BE2904();

  sub_21873683C(0, &unk_280EE4668, sub_2189871A8, sub_21926755C, MEMORY[0x277D6E388]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_219267BF0(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  sub_219BE2914();

  sub_219BE9534();
  sub_219BE2904();

  sub_219BE9564();
  sub_219BE2904();

  sub_219267CAC(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280E901A0, MEMORY[0x277D33D90], 0);
  sub_219BE2914();

  sub_219267D84(0);
  sub_219BE2904();

  return result;
}

void *sub_2192606A4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED7970, &protocol descriptor for SearchStylerType, 1);
  sub_219BE1E34();
  v2 = v73;
  if (!v73)
  {
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC6C20, &protocol descriptor for SearchEventHandlerType, 0);
  sub_219BE1E34();
  v2 = v70;
  v55 = v70;
  if (!v70)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = v71;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219267A58(0);
  v4 = sub_219BE1E24();
  if (!v4)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  if (!sub_219BE1E24())
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD80, MEMORY[0x277D345A0], 1);
  sub_219BE1E34();
  v2 = v69;
  if (!v69)
  {
    goto LABEL_21;
  }

  sub_219BF4FF4();
  swift_allocObject();
  v54 = sub_219BF4FE4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE73A0, MEMORY[0x277D6CD90], 1);
  sub_219BE1E34();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1E34();
  v2 = v67;
  if (v67)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5974();
  v53 = sub_219BE1E24();
  if (!v53)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872F37C();
  v52 = sub_219BE1E24();
  if (!v52)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  sub_219BE1E34();
  v2 = v65;
  if (!v65)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v50 = v66;
  v51 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC04E8, &protocol descriptor for SearchFilterProviderType, 0);
  sub_219BE1E34();
  v6 = v62;
  if (!v62)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v49[0] = v63;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
  v49[2] = v49;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = *v10;
  v13 = type metadata accessor for SearchStyler();
  v60 = v13;
  v61 = &off_282A5DDA8;
  v59[0] = v12;
  v14 = type metadata accessor for SearchViewController();
  v15 = objc_allocWithZone(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  v49[1] = v49;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v58[3] = v13;
  v58[4] = &off_282A5DDA8;
  v58[0] = v21;
  swift_unknownObjectWeakInit();
  v22 = OBJC_IVAR____TtC7NewsUI220SearchViewController_searchAction;
  sub_218803FE0();
  v24 = v23;
  *&v15[v22] = [objc_allocWithZone(v23) init];
  v25 = OBJC_IVAR____TtC7NewsUI220SearchViewController_clearAction;
  *&v15[v25] = [objc_allocWithZone(v24) init];
  v15[OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshQueryParam] = 0;
  v15[OBJC_IVAR____TtC7NewsUI220SearchViewController_refreshRecentSearch] = 0;
  sub_218718690(v58, &v15[OBJC_IVAR____TtC7NewsUI220SearchViewController_styler]);
  v26 = &v15[OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler];
  v27 = v54;
  *v26 = v55;
  v26[1] = v3;
  v28 = v51;
  *&v15[OBJC_IVAR____TtC7NewsUI220SearchViewController_blueprintViewController] = v51;
  *&v15[OBJC_IVAR____TtC7NewsUI220SearchViewController_sharingActivityProviderFactory] = v27;
  sub_218718690(v68, &v15[OBJC_IVAR____TtC7NewsUI220SearchViewController_sceneStateManager]);
  *&v15[OBJC_IVAR____TtC7NewsUI220SearchViewController_origination] = v50;
  v29 = v52;
  *&v15[OBJC_IVAR____TtC7NewsUI220SearchViewController_tipManager] = v53;
  *&v15[OBJC_IVAR____TtC7NewsUI220SearchViewController_featureAvailability] = v29;
  sub_218718690(v64, &v15[OBJC_IVAR____TtC7NewsUI220SearchViewController_offlineProvider]);
  v30 = &v15[OBJC_IVAR____TtC7NewsUI220SearchViewController_filterProvider];
  v31 = v49[0];
  *v30 = v6;
  v30[1] = v31;
  v57.receiver = v15;
  v57.super_class = v14;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v32 = v28;
  swift_unknownObjectRetain();
  v33 = objc_msgSendSuper2(&v57, sel_initWithNibName_bundle_, 0, 0);
  *(*(v33 + OBJC_IVAR____TtC7NewsUI220SearchViewController_eventHandler) + 24) = &off_282A47080;
  swift_unknownObjectWeakAssign();
  v34 = OBJC_IVAR____TtC7NewsUI220SearchViewController_blueprintViewController;
  v35 = *(v33 + OBJC_IVAR____TtC7NewsUI220SearchViewController_blueprintViewController);
  v36 = v33;
  v37 = v35;
  sub_219BE8744();

  v38 = *(v33 + v34);
  sub_219BE8664();

  v39 = sub_219BE7BC4();

  v2 = *(v36 + OBJC_IVAR____TtC7NewsUI220SearchViewController_origination);
  if (v2 >= 0xA)
  {
LABEL_28:
    v56[0] = v2;
    result = sub_219BF7974();
    __break(1u);
    return result;
  }

  [v39 setAllowsSelection_];

  v40 = *(v36 + OBJC_IVAR____TtC7NewsUI220SearchViewController_searchAction);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v41 = v40;

  v42 = *(v36 + OBJC_IVAR____TtC7NewsUI220SearchViewController_clearAction);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v42;

  if ([v29 useOfflineMode])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v45 = Strong;
      v46 = [Strong searchTextField];

      __swift_project_boxed_opaque_existential_1(v64, v65);
      [v46 setEnabled_];
    }
  }

  __swift_project_boxed_opaque_existential_1(v68, v69);
  sub_2186D77C0(&qword_280ECD198, type metadata accessor for SearchViewController, &unk_219C370B8);
  v47 = v36;
  sub_219BE29A4();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v56);
  __swift_destroy_boxed_opaque_existential_1(v58);
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v72);
  return v47;
}

void *sub_21926103C(void **a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280E91810, MEMORY[0x277D32340], 0);
  result = sub_219BE1E34();
  if (v5)
  {
    swift_getObjectType();
    v4 = v2;
    sub_219BEECC4();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219261128@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v26)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for BaseStyler(0);
    v24[3] = v14;
    v15 = sub_2186D77C0(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v24[4] = v15;
    v24[0] = v13;
    v16 = a2(0);
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v24, v14);
    v19 = MEMORY[0x28223BE20](v18);
    v21 = (v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21, v19);
    v23 = *v21;
    v17[5] = v14;
    v17[6] = v15;
    v17[2] = v23;
    __swift_destroy_boxed_opaque_existential_1(v24);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    a4[3] = v16;
    a4[4] = a3;
    *a4 = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219261394@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE8E98, MEMORY[0x277D2F9B8], 1);
  result = sub_219BE1E34();
  if (!v14)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_218718690(a1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219268588(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872F37C();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for SearchRouter();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(&v13, (v9 + 15));
    sub_2186CB1F0(v12, (v9 + 3));
    v9[8] = v5;
    result = sub_2186CB1F0(&v10, (v9 + 9));
    v9[14] = v6;
    v9[20] = v7;
    a2[3] = v8;
    a2[4] = &off_282A8BA50;
    *a2 = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_2192615C8(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_219261648@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECD240, &protocol descriptor for SearchInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v43;
  if (!v43)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v44;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED7978, &protocol descriptor for SearchRouterType, 1);
  result = sub_219BE1E34();
  if (!v42)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED5398, &protocol descriptor for SearchTrackerType, 0);
  result = sub_219BE1E34();
  v7 = v39;
  if (!v39)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC3D88, &protocol descriptor for RecentSearchManagerType, 0);
  result = sub_219BE1E34();
  v8 = v37;
  if (!v37)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v32 = v40;
  v33 = a2;
  v31 = v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if ((v36 & 1) == 0)
  {
    v9 = v35[5];
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v30 = &v30;
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (&v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v16 = type metadata accessor for SearchRouter();
    v35[3] = v16;
    v35[4] = &off_282A8BA50;
    v35[0] = v15;
    type metadata accessor for SearchEventHandler();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v35, v16);
    v19 = MEMORY[0x28223BE20](v18);
    v21 = (&v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21, v19);
    v23 = *v21;
    v34[3] = v16;
    v34[4] = &off_282A8BA50;
    v34[0] = v23;
    v17[3] = 0;
    swift_unknownObjectWeakInit();
    v17[4] = v5;
    v17[5] = v6;
    sub_218718690(v34, (v17 + 6));
    v24 = v32;
    v17[11] = v7;
    v17[12] = v24;
    v25 = v31;
    v17[13] = v8;
    v17[14] = v25;
    v17[15] = v9;
    ObjectType = swift_getObjectType();
    v27 = *(v6 + 16);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    v27(v28, &off_282A76F20, ObjectType, v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v34);
    *(v17[11] + 24) = &off_282A76F10;
    swift_unknownObjectWeakAssign();
    __swift_destroy_boxed_opaque_existential_1(v35);
    result = __swift_destroy_boxed_opaque_existential_1(v41);
    v29 = v33;
    *v33 = v17;
    v29[1] = &off_282A76F78;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_219261AB8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA1A8, &protocol descriptor for SearchDataManagerType, 0);
  sub_219BE1E34();
  if (!v20)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219268588(0, &unk_280E906B0, sub_2186FB6D4, &type metadata for SearchOfflineModel, MEMORY[0x277D33538]);
  v4 = sub_219BE1E24();
  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192670D8(0);
  v6 = sub_219BE1E24();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchBlueprintModifierFactory();
  v8 = sub_219BE1E24();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E0DC14(0);
  v10 = sub_219BE1E24();
  if (!v10)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v10;
  v19 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872F37C();
  v12 = sub_219BE1E24();
  if (!v12)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219267D84(0);
  v14 = sub_219BE1E24();
  if (v14)
  {
    v15 = v14;
    sub_21879ABB8(0, qword_280ED7990, type metadata accessor for SearchBlueprintModifierFactory, &off_282A4A588, type metadata accessor for SearchInteractor);
    v16 = swift_allocObject();
    *(v16 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v16 + 113) = 0u;
    *(v16 + 104) = 0u;
    *(v16 + 88) = 0u;
    *(v16 + 48) = v20;
    *(v16 + 56) = v21;
    *(v16 + 32) = v7;
    *(v16 + 40) = v9;
    *(v16 + 64) = v5;
    *(v16 + 72) = v11;
    *(v16 + 80) = v13;
    *(v16 + 136) = v15;
    *(v20 + OBJC_IVAR____TtC7NewsUI217SearchDataManager_delegate + 8) = &off_282A49DF0;
    swift_unknownObjectWeakAssign();
    swift_unownedRetainStrong();
    swift_unknownObjectRetain();
    v17 = v5;

    swift_unknownObjectRetain();

    swift_unownedRetain();

    *(swift_allocObject() + 16) = v16;
    v18 = sub_219BF1AF4();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    *v19 = v16;
    v19[1] = &off_282A49E20;
    return;
  }

LABEL_15:
  __break(1u);
}

void *sub_219261E5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BE14C4();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v24 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE14A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  v22 = v4;
  v23 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = result;
  v20 = v6;
  v21 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872F37C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (v26[3])
  {
    type metadata accessor for SearchTracker();
    v16 = swift_allocObject();
    v16[3] = 0;
    swift_unknownObjectWeakInit();
    sub_219268588(0, &unk_280EE7E08, sub_21926852C, &type metadata for SearchTracker.Event, MEMORY[0x277D6CAA0]);
    swift_allocObject();
    v16[14] = sub_219BE1D34();
    v16[4] = v11;
    v16[5] = v12;
    v16[6] = v13;
    v16[7] = v14;
    v16[8] = v15;
    sub_218718690(v26, (v16 + 9));
    (*(v25 + 104))(v24, *MEMORY[0x277D2F318], v22);

    sub_219BE1484();
    sub_2186D77C0(&qword_280EE8010, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
    v17 = v20;
    sub_219BDD1F4();

    (*(v23 + 8))(v9, v17);
    __swift_destroy_boxed_opaque_existential_1(v26);
    result = sub_2186D77C0(&qword_280EDD9C8, type metadata accessor for SearchTracker, &unk_219CAF768);
    v18 = v21;
    *v21 = v16;
    v18[1] = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_2192622C0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = sub_219BE1BF4();
  v41 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BED184();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F10, &protocol descriptor for SearchServiceType, 1);
  result = sub_219BE1E34();
  if (!v48[3])
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  v11 = v46;
  if (!v46)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v39 = v4;
  v37 = v47;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0, &protocol descriptor for SubscriptionServiceType, 0);
  result = sub_219BE1E34();
  v38 = v44;
  if (!v44)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v36 = v45;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186F7FD0(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  v34 = v11;
  v35 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21873683C(0, &qword_280E90B40, sub_218713104, sub_219268458, MEMORY[0x277D33010]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21872F37C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v14 = result;
  v33 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219267CAC(0);
  result = sub_219BE1E24();
  if (result)
  {
    v15 = result;
    v32 = type metadata accessor for SearchDataManager();
    v16 = objc_allocWithZone(v32);
    *&v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v17 = OBJC_IVAR____TtC7NewsUI217SearchDataManager_accessQueue;
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v18 = v40;
    (*(v7 + 104))(v9, *MEMORY[0x277D851B8], v40);
    v19 = sub_219BF66E4();
    (*(v7 + 8))(v9, v18);
    *&v16[v17] = v19;
    sub_218718690(v48, &v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_searchService]);
    v20 = &v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_tagService];
    v21 = v37;
    v22 = v38;
    *v20 = v34;
    *(v20 + 1) = v21;
    v23 = &v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_subscriptionService];
    v24 = v36;
    *v23 = v22;
    *(v23 + 1) = v24;
    *&v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_feedServiceConfigFetcher] = v12;
    *&v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_feedService] = v13;
    v25 = MEMORY[0x277D6CA70];
    sub_2192684C8(0, &qword_280E8C0D8, MEMORY[0x277D6CA70], MEMORY[0x277D84560]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_219C09BA0;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    sub_219BE1BE4();
    v43 = v26;
    sub_2186D77C0(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_2192684C8(0, &qword_280E8F610, v25, MEMORY[0x277D83940]);
    sub_218711654();
    sub_219BF7164();
    sub_2192684C8(0, &unk_280EE7198, sub_219268494, MEMORY[0x277D6CEE8]);
    swift_allocObject();

    *&v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_feedServiceConfig] = sub_219BE2D14();
    *&v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_featureAvailability] = v14;
    *&v16[OBJC_IVAR____TtC7NewsUI217SearchDataManager_feedPluginManager] = v15;
    v42.receiver = v16;
    v42.super_class = v32;
    swift_unknownObjectRetain();

    v27 = objc_msgSendSuper2(&v42, sel_init);
    v28 = *(v27 + OBJC_IVAR____TtC7NewsUI217SearchDataManager_subscriptionService);
    v29 = v27;
    swift_unknownObjectRetain();
    sub_219274F04(v29, v28);
    swift_unknownObjectRelease();
    sub_2186D77C0(qword_280ED5518, type metadata accessor for SearchDataManager, &unk_219CA2560);

    sub_219BEE504();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    result = __swift_destroy_boxed_opaque_existential_1(v48);
    v30 = v33;
    *v33 = v29;
    v30[1] = &off_282A865C0;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_2192629F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEE244();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for SearchModelFactory();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219262A94(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20, &protocol descriptor for HeadlineModelFactoryType, 1);
  result = sub_219BE1E34();
  if (!v47)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  if (!v44)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v35 = result;
  v36 = v45;
  v37 = v44;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC0430, &protocol descriptor for SearchSectionFactoryType, 1);
  result = sub_219BE1E34();
  if (v43)
  {
    v3 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    v34[1] = v34;
    v4 = MEMORY[0x28223BE20](v3);
    v6 = (v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6, v4);
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
    v34[0] = v34;
    v9 = MEMORY[0x28223BE20](v8);
    v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v11, v9);
    v13 = *v6;
    v14 = type metadata accessor for HeadlineModelFactory();
    v41[3] = v14;
    v41[4] = &off_282A8B8E8;
    v41[0] = v13;
    v39 = &type metadata for SearchSectionFactory;
    v40 = &off_282A5F548;
    v15 = swift_allocObject();
    v38[0] = v15;
    v16 = *(v11 + 3);
    *(v15 + 48) = *(v11 + 2);
    *(v15 + 64) = v16;
    *(v15 + 80) = *(v11 + 8);
    v17 = *(v11 + 1);
    *(v15 + 16) = *v11;
    *(v15 + 32) = v17;
    type metadata accessor for SearchBlueprintModifierFactory();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v41, v14);
    v20 = MEMORY[0x28223BE20](v19);
    v22 = (v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    v25 = MEMORY[0x28223BE20](v24);
    v27 = v34 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27, v25);
    v29 = *v22;
    v18[5] = v14;
    v18[6] = &off_282A8B8E8;
    v18[2] = v29;
    v18[13] = &type metadata for SearchSectionFactory;
    v18[14] = &off_282A5F548;
    v30 = swift_allocObject();
    v31 = *(v27 + 3);
    *(v30 + 48) = *(v27 + 2);
    *(v30 + 64) = v31;
    *(v30 + 80) = *(v27 + 8);
    v32 = *(v27 + 1);
    *(v30 + 16) = *v27;
    *(v30 + 32) = v32;
    v33 = v36;
    v18[7] = v37;
    v18[8] = v33;
    v18[9] = v35;
    v18[10] = v30;
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v42);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return v18;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_219262FC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20, &protocol descriptor for HeadlineModelFactoryType, 1);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEE244();
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = &type metadata for SearchSectionFactory;
    a2[4] = &off_282A5F548;
    v7 = swift_allocObject();
    *a2 = v7;
    v7[2] = v5;
    result = sub_2186CB1F0(&v10, (v7 + 3));
    v7[8] = v8;
    v7[9] = v9;
    v7[10] = v6;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21926315C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219267194(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2192670D8(0);
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

void sub_219263234(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2192677A8(0);
  if (sub_219BE1E24())
  {
    sub_2192682D8(0, &qword_280EE4598, MEMORY[0x277D6E3B8]);
    swift_allocObject();
    sub_2186D77C0(&qword_280EE3B98, sub_2192677A8, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219263334(void *a1)
{
  sub_2192684C8(0, &qword_280EE3A90, MEMORY[0x277D6EB30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192678C8(0, &qword_280EE41C8, sub_219267968, sub_2192675C4, MEMORY[0x277D6E7B0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21873683C(0, &qword_280EE4118, sub_218E0DC14, sub_219267590, MEMORY[0x277D6E7C8]);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2192677A8(0);
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_219263550(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_219BE9534();
  v4 = sub_219BE1DE4();
  if (v4)
  {
    v11 = v3;
    v12 = MEMORY[0x277D6E678];
    *&v10 = v4;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v10);
    v5 = sub_219BE99D4();
    swift_allocObject();
    v6 = sub_219BE99C4();
    v11 = v5;
    v12 = MEMORY[0x277D6E7D8];
    *&v10 = v6;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v10);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v7 = sub_219BF0214();
    sub_218718690(a2, &v10);
    v8 = swift_allocObject();
    sub_2186CB1F0(&v10, v8 + 16);
    v9 = sub_219BE1E04();

    if (v9)
    {
      v11 = v7;
      v12 = sub_2186D77C0(&unk_280E90FE0, MEMORY[0x277D32C00], MEMORY[0x277D32BF8]);
      *&v10 = v9;
      sub_219BEA494();
      __swift_destroy_boxed_opaque_existential_1(&v10);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void *sub_219263720(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E0DC14(0);
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
    sub_21873683C(0, &qword_280EE4118, sub_218E0DC14, sub_219267590, MEMORY[0x277D6E7C8]);
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2192638F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192672A0(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_219267194(0);
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

uint64_t sub_2192639F8(__n128 a1)
{
  sub_2192678C8(0, &qword_280EE41C8, sub_219267968, sub_2192675C4, MEMORY[0x277D6E7B0]);
  swift_allocObject();
  return sub_219BE9964();
}

uint64_t sub_219263AA0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void *sub_219263AE4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (!v24)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879ABB8(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF44C4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if ((v22 & 1) == 0)
  {
    v5 = v21[5];
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for BaseStyler(0);
    v21[3] = v12;
    v13 = sub_2186D77C0(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v21[4] = v13;
    v21[0] = v11;
    type metadata accessor for SearchBlueprintLayoutBuilder();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    v16 = MEMORY[0x28223BE20](v15);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v14[5] = v12;
    v14[6] = v13;
    v14[2] = v20;
    v14[7] = v3;
    v14[8] = v4;
    v14[9] = v5;
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v23);
    return v14;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_219263E30(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192672A0(0);
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
  sub_21873683C(0, &unk_280EE4668, sub_2189871A8, sub_21926755C, MEMORY[0x277D6E388]);
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
    sub_2186D77C0(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_219267A58(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_21926416C(uint64_t *a1, void *a2)
{
  v3 = sub_219BE8FC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_2186D77C0(&qword_280E8FF80, MEMORY[0x277D34268], MEMORY[0x277D34260]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21873683C(0, &qword_280EE48A0, sub_2192672A0, sub_219267774, MEMORY[0x277D6E068]);
  v8 = v7;
  v9 = sub_219BE1E24();
  v10 = v9;
  if (v9)
  {
    v9 = sub_21926823C();
  }

  else
  {
    v8 = 0;
    v19 = 0;
    v20 = 0;
  }

  v18 = v10;
  v21 = v8;
  v22 = v9;
  sub_219BE86F4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21873683C(0, &qword_280EE4118, sub_218E0DC14, sub_219267590, MEMORY[0x277D6E7C8]);
  v12 = v11;
  v13 = sub_219BE1E24();
  v14 = v13;
  if (v13)
  {
    v13 = sub_2192681A0();
  }

  else
  {
    v12 = 0;
    v19 = 0;
    v20 = 0;
  }

  v18 = v14;
  v21 = v12;
  v22 = v13;
  sub_219BE8724();
  (*(v4 + 104))(v6, *MEMORY[0x277D6E3C8], v3);
  sub_219BE86C4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70, MEMORY[0x277D34270], 0);
  sub_219BE1E34();
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_218E0DC14(0);
    v15 = sub_219BE1E24();
    if (v15)
    {
      v16 = v15;
      swift_getObjectType();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = v16;
      sub_219BF35C4();
      swift_allocObject();
      sub_219267590();

      sub_219BF35A4();
      sub_219BF3EC4();
      swift_unknownObjectRelease();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21926455C(uint64_t a1, uint64_t a2)
{
  sub_2192684C8(0, &qword_27CC18130, sub_218AF3D74, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  sub_218AF3D74(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_219BE86A4();

    v18 = v17[1];
    sub_2189871A8(0);
    sub_21926755C();
    sub_219BE7B94();

    v12 = sub_218B13AC4();
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v12 = 0xF000000000000007;
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = v13;
    sub_219BE86A4();

    v17[0] = v18;
    sub_2189871A8(0);
    sub_21926755C();
    sub_219BE7B94();

    (*(v7 + 56))(v4, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v4, 1, 1, v6);
  }

  sub_219BE6684();
  type metadata accessor for SearchSectionDescriptor(0);
  type metadata accessor for SearchModel(0);
  sub_2186D77C0(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
  sub_2186D77C0(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
  sub_219BF44D4();
  sub_2192683CC(v4);
  type metadata accessor for SearchFeedServiceConfig(0);
  sub_2186D77C0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
  v15 = sub_219BE6624();

  sub_21885AB78(v12);
  return v15;
}

id sub_2192648E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879ABB8(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
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

uint64_t sub_2192649C0(void *a1)
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
  sub_21926741C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192675F8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192676E8(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2192672A0(0);
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219264B24@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192672A0(0);
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

uint64_t sub_219264BDC()
{
  v0 = sub_219BE80A4();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v1);
  return sub_219BE9574();
}

uint64_t sub_219264CAC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21879ABB8(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219264D6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8(0);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E0DC14(0);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchBlueprintViewCellProvider();
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
  type metadata accessor for SearchBlueprintViewSupplementaryViewProvider();
  if (sub_219BE1E24())
  {
    *&v8[0] = v3;
    sub_21926741C(0);
    v7 = objc_allocWithZone(v6);
    sub_219BE9B64();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_219264F08(void *a1, void *a2)
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

void *sub_219265010(uint64_t a1, void *a2)
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

void *sub_2192650DC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E0DC14(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21873683C(0, &unk_280EE4668, sub_2189871A8, sub_21926755C, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186D77C0(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_2192675F8(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE9754();
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_21926530C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219267BF0(0);
  if (sub_219BE1E24())
  {
    sub_2186D77C0(&qword_280EE4080, sub_219267BF0, MEMORY[0x277D6E7F8]);
  }

  sub_219BE9774();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219267A58(0);
  sub_219BE1E24();
  sub_219BE9714();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE9564();
  sub_219BE1DE4();
  sub_219BE9784();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219267CAC(0);
  if (!sub_219BE1E24())
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_219BE9724();
  v3 = sub_219BE9704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchViewController();
  v4 = sub_219BE1E24();
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v5 = v4;
  sub_219BE9244();
}

uint64_t sub_219265528(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218E0DC14(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2192676E8(0);
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

void *sub_2192655E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810, MEMORY[0x277D32340], 0);
  result = sub_219BE1E34();
  if (v3)
  {
    type metadata accessor for SearchBlueprintViewCellProvider();
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

void sub_219265694(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A47070;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void sub_219265728(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0, MEMORY[0x277D32C08], 1);
  sub_218718690(a1, v4);
  v2 = swift_allocObject();
  sub_2186CB1F0(v4, v2 + 16);
  sub_219BE1E14();

  if (v6)
  {
    type metadata accessor for SearchBlueprintViewSupplementaryViewProvider();
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(&v5, v3 + 32);
  }

  else
  {
    __break(1u);
  }
}

void sub_21926583C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C3070C(0, &qword_280E8B8A8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219267B34(0);
  v5 = v4;
  v6 = sub_219BE1E24();
  if (v6)
  {
    v7 = v6;
    *(v3 + 56) = v5;
    *(v3 + 64) = sub_2186D77C0(&unk_280E91908, sub_219267B34, MEMORY[0x277D32298]);
    *(v3 + 32) = v7;
    sub_218C3070C(0, &qword_280E8EF20, MEMORY[0x277D83940]);
    sub_219BE1BA4();
  }

  else
  {
    __break(1u);
  }
}

void sub_219265994(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchViewController();
  v3 = sub_219BE1E24();
  if (v3)
  {
    *(v2 + 24) = &off_282A47060;
    v4 = v3;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219265A28(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192672A0(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_21873683C(0, &qword_280EE48A0, sub_2192672A0, sub_219267774, MEMORY[0x277D6E068]);
    swift_allocObject();
    return sub_219BE8914();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219265AE4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219267B34(0);
    swift_allocObject();
    return sub_219BEEB34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219265B7C(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_21873683C(0, &qword_280EE4700, sub_2189871A8, sub_21926755C, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_21873683C(0, &unk_280EE4668, sub_2189871A8, sub_21926755C, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219265E5C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218E0DC14(0);
  if (sub_219BE1E24())
  {
    sub_2186D77C0(&unk_280EE4BF0, sub_218E0DC14, MEMORY[0x277D6DF30]);
    sub_219BE8E94();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280E90FB0, MEMORY[0x277D32C40], 1);
    sub_219BE1E34();
    sub_219267FCC(0);
    swift_allocObject();
    sub_219BEFCE4();
    sub_2186D77C0(&unk_280E91158, sub_219267FCC, MEMORY[0x277D32A40]);
    sub_219BE8EA4();

    sub_219268074(0);
    swift_allocObject();
    sub_219BF0074();
    sub_2186D77C0(&unk_280E91048, sub_219268074, MEMORY[0x277D32B90]);
    sub_219BE8EA4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219266084(void *a1)
{
  sub_2187F2110(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219267BF0(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_2186D77C0(&qword_280EE4088, sub_219267BF0, MEMORY[0x277D6E800]);
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

void *sub_2192661B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192672A0(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189871A8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186D77C0(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_219267BF0(0);
    swift_allocObject();
    return sub_219BE9AB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219266390(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192672A0(0);
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

uint64_t sub_219266444(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219267A58(0);
  v6 = sub_219BE1E24();
  if (v6)
  {
    v7 = v6;
    v8 = a3();
    v6 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a4(v6, v8);
}

uint64_t sub_2192664D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219267A58(0);
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_2186D77C0(&qword_280EE4A68, sub_219267A58, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21926657C(void *a1)
{
  sub_2192684C8(0, &unk_280EE3E00, MEMORY[0x277D6E8E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v14 - v3);
  v5 = sub_219BE9524();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_219BE9564();
  result = sub_219BE1DE4();
  if (result)
  {
    v14[4] = v9;
    v14[5] = MEMORY[0x277D6E680];
    v14[1] = result;
    *v8 = 5;
    (*(v6 + 104))(v8, *MEMORY[0x277D6E670], v5);
    *v4 = 10;
    v11 = *MEMORY[0x277D6E8D8];
    v12 = sub_219BE9D64();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v4, v11, v12);
    (*(v13 + 56))(v4, 0, 1, v12);
    sub_219BE9534();
    swift_allocObject();
    return sub_219BE9514();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2192667D8()
{
  sub_2192684C8(0, &unk_280EE3E00, MEMORY[0x277D6E8E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_219BE8944();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE8544();
  MEMORY[0x28223BE20](v7 - 8);
  sub_219BE9564();
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v8 = qword_280F61720;
  (*(v4 + 104))(v6, *MEMORY[0x277D6E080], v3);
  v9 = sub_219BE9D64();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = v8;
  sub_219BE8534();
  return sub_219BE9554();
}

void *sub_219266A0C(void *a1)
{
  v2 = sub_219BF0634();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEDA24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925B0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F61890);
  (*(v7 + 16))(v9, v10, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D32EA8], v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E901A0, MEMORY[0x277D33D90], 0);
  result = sub_219BE1DF4();
  if (v12)
  {
    sub_219267CAC(0);
    return sub_219BEE4F4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219266C44(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219267A58(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186D77C0(&unk_280EE4A80, sub_219267A58, MEMORY[0x277D6DFB0]);
    return sub_219BEE4B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219266CE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_21873683C(0, &qword_280E90498, type metadata accessor for SearchModelFactory, sub_219267E94, MEMORY[0x277D33858]);
  swift_allocObject();
  sub_219BF2444();
  sub_219267EC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED5398, &protocol descriptor for SearchTrackerType, 0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF1D64();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BF26E4();
    swift_allocObject();
    result = sub_219BF26D4();
    v5 = MEMORY[0x277D339B8];
    *a2 = result;
    a2[1] = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219266EC8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E0DC14(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8E350, 0x277D31340);
    result = sub_219BE1E24();
    if (result)
    {
      sub_219267D84(0);
      swift_allocObject();
      return sub_219BDEB44();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219266FB8(uint64_t a1)
{
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  [v2 reloadData];

  if ([*(a1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_featureAvailability) useOfflineMode])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [Strong searchTextField];

      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_offlineProvider), *(a1 + OBJC_IVAR____TtC7NewsUI220SearchViewController_offlineProvider + 24));
      [v5 setEnabled_];
    }
  }
}

void sub_2192670D8(uint64_t a1)
{
  if (!qword_280EE55E0)
  {
    sub_2189871A8(255);
    sub_219267194(255);
    sub_21926755C();
    sub_2186D77C0(&qword_280EE52D8, sub_219267194, MEMORY[0x277D6D960]);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE55E0);
    }
  }
}

void sub_219267194(uint64_t a1)
{
  if (!qword_280EE52D0)
  {
    type metadata accessor for SearchSectionDescriptor(255);
    type metadata accessor for SearchModel(255);
    sub_2192672A0(255);
    sub_2186D77C0(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
    sub_2186D77C0(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
    sub_219267774();
    v1 = sub_219BE72E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE52D0);
    }
  }
}

void sub_2192672A0(uint64_t a1)
{
  if (!qword_280EE4F18)
  {
    sub_2186C6148(255, &qword_280E8E4C0, 0x277D752A0);
    sub_21926741C(255);
    sub_2192675F8(255);
    sub_2192676E8(255);
    type metadata accessor for SearchViewController();
    sub_2186D77C0(&unk_280EE3F00, sub_21926741C, MEMORY[0x277D6E820]);
    sub_2186D77C0(&unk_280EE4390, sub_2192675F8, MEMORY[0x277D6E738]);
    sub_2186D77C0(&unk_280EE3D90, sub_2192676E8, MEMORY[0x277D6E918]);
    v1 = sub_219BE7BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4F18);
    }
  }
}

void sub_21926741C(uint64_t a1)
{
  if (!qword_280EE3EF8)
  {
    sub_2189871A8(255);
    sub_218E0DC14(255);
    type metadata accessor for SearchBlueprintViewCellProvider();
    type metadata accessor for SearchBlueprintViewSupplementaryViewProvider();
    sub_21926755C();
    sub_219267590();
    sub_2186D77C0(qword_280EA82C0, type metadata accessor for SearchBlueprintViewCellProvider, &unk_219C102B0);
    sub_2186D77C0(qword_280EE2290, type metadata accessor for SearchBlueprintViewSupplementaryViewProvider, &unk_219CAB370);
    sub_2192675C4();
    v1 = sub_219BE9B94();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3EF8);
    }
  }
}

void sub_2192675F8(uint64_t a1)
{
  if (!qword_280EE4388)
  {
    sub_2189871A8(255);
    sub_218E0DC14(255);
    type metadata accessor for SearchViewController();
    sub_21926755C();
    sub_219267590();
    sub_2186D77C0(&qword_280ECD190, type metadata accessor for SearchViewController, &unk_219C37158);
    sub_2192675C4();
    v1 = sub_219BE9794();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4388);
    }
  }
}

void sub_2192676E8(uint64_t a1)
{
  if (!qword_280EE3D88)
  {
    sub_2189871A8(255);
    sub_218E0DC14(255);
    sub_21926755C();
    sub_219267590();
    v1 = sub_219BE9F34();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3D88);
    }
  }
}

void sub_2192677A8(uint64_t a1)
{
  if (!qword_280EE3B90)
  {
    sub_218E0DC14(255);
    type metadata accessor for SearchBlueprintLayoutBuilder();
    sub_2192678C8(255, &qword_280EE41C8, sub_219267968, sub_2192675C4, MEMORY[0x277D6E7B0]);
    sub_219267590();
    sub_2186D77C0(&unk_280EB3100, type metadata accessor for SearchBlueprintLayoutBuilder, &unk_219C83678);
    sub_2192679BC();
    v1 = sub_219BEA4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3B90);
    }
  }
}

void sub_2192678C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v12[0] = &type metadata for SearchLayoutSectionDescriptor;
    v12[1] = type metadata accessor for SearchLayoutModel(255);
    v12[2] = a3();
    v12[3] = a4();
    v10 = a5(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_219267968()
{
  result = qword_280EAEF88;
  if (!qword_280EAEF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEF88);
  }

  return result;
}

unint64_t sub_2192679BC()
{
  result = qword_280EE41D0;
  if (!qword_280EE41D0)
  {
    sub_2192678C8(255, &qword_280EE41C8, sub_219267968, sub_2192675C4, MEMORY[0x277D6E7B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE41D0);
  }

  return result;
}

void sub_219267A58(uint64_t a1)
{
  if (!qword_280EE4A60)
  {
    sub_2189871A8(255);
    sub_2192672A0(255);
    type metadata accessor for SearchViewController();
    sub_21926755C();
    sub_219267774();
    sub_2186D77C0(&qword_280ECD190, type metadata accessor for SearchViewController, &unk_219C37158);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4A60);
    }
  }
}

void sub_219267B34(uint64_t a1)
{
  if (!qword_280E91900)
  {
    type metadata accessor for SearchFeedServiceConfig(255);
    sub_2189871A8(255);
    sub_2186D77C0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
    sub_21926755C();
    v1 = sub_219BEEB44();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91900);
    }
  }
}

void sub_219267BF0(uint64_t a1)
{
  if (!qword_280EE4078)
  {
    sub_2192672A0(255);
    sub_2189871A8(255);
    sub_219267774();
    sub_2186D77C0(&qword_280EE5518, sub_2189871A8, MEMORY[0x277D6D8C0]);
    v1 = sub_219BE9AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4078);
    }
  }
}

void sub_219267CAC(uint64_t a1)
{
  if (!qword_280E91BB8)
  {
    type metadata accessor for SearchFeedServiceConfig(255);
    sub_2186D77C0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
    sub_2186D77C0(&qword_280ED9BA8, type metadata accessor for SearchFeedGroup, &unk_219C44AE8);
    v1 = sub_219BEE514();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91BB8);
    }
  }
}

void sub_219267D84(uint64_t a1)
{
  if (!qword_280EE8A40)
  {
    sub_218E0DC14(255);
    sub_219267590();
    sub_2186D77C0(qword_280ED5460, type metadata accessor for SearchLayoutModel, &unk_219C3250C);
    sub_2186D77C0(&qword_280ED5458, type metadata accessor for SearchLayoutModel, &unk_219C3258C);
    sub_2186D77C0(&qword_280ED5440, type metadata accessor for SearchLayoutModel, &unk_219C32564);
    v1 = sub_219BDEB74();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE8A40);
    }
  }
}

unint64_t sub_219267EC8()
{
  result = qword_280E904A0;
  if (!qword_280E904A0)
  {
    sub_21873683C(255, &qword_280E90498, type metadata accessor for SearchModelFactory, sub_219267E94, MEMORY[0x277D33858]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E904A0);
  }

  return result;
}

void sub_219267FCC(uint64_t a1)
{
  if (!qword_280E91150)
  {
    sub_2189871A8(255);
    sub_21926755C();
    sub_2186D77C0(&qword_280EDF4A0, type metadata accessor for SearchModel, &unk_219C18E48);
    v1 = sub_219BEFCF4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91150);
    }
  }
}

void sub_219268074(uint64_t a1)
{
  if (!qword_280E91040)
  {
    sub_2189871A8(255);
    type metadata accessor for SearchFeedServiceConfig(255);
    sub_21926755C();
    sub_2186D77C0(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
    sub_2186D77C0(&qword_280EDF4A0, type metadata accessor for SearchModel, &unk_219C18E48);
    v1 = sub_219BF0084();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91040);
    }
  }
}

unint64_t sub_2192681A0()
{
  result = qword_280EE4120;
  if (!qword_280EE4120)
  {
    sub_21873683C(255, &qword_280EE4118, sub_218E0DC14, sub_219267590, MEMORY[0x277D6E7C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4120);
  }

  return result;
}

unint64_t sub_21926823C()
{
  result = qword_280EE48A8;
  if (!qword_280EE48A8)
  {
    sub_21873683C(255, &qword_280EE48A0, sub_2192672A0, sub_219267774, MEMORY[0x277D6E068]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE48A8);
  }

  return result;
}

void sub_2192682D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchSectionDescriptor(255);
    v8[1] = type metadata accessor for SearchModel(255);
    v8[2] = sub_2186D77C0(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
    v8[3] = sub_2186D77C0(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2192683CC(uint64_t a1)
{
  sub_2192684C8(0, &qword_27CC18130, sub_218AF3D74, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2192684C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21926852C()
{
  result = qword_280EDD9E0[0];
  if (!qword_280EDD9E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EDD9E0);
  }

  return result;
}

void sub_219268588(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_21926861C(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = [*(a1 + 16) name];
  v6 = sub_219BF5414();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_219BF5454();

  return v9;
}

uint64_t sub_219268778()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_219268848@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD08];
  v3 = sub_219BE7C94();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2192688BC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_21926897C()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

id sub_219268A64(void *a1)
{
  v2 = sub_219BEB394();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEB384();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 view];
  if (result)
  {
    v12 = result;
    v13 = [result window];

    if (v13)
    {

      v14 = MEMORY[0x277D6ECA8];
    }

    else
    {
      v14 = MEMORY[0x277D6ECB0];
    }

    (*(v7 + 104))(v10, *v14, v6);
    sub_219BE8644();
    (*(v3 + 104))(v5, *MEMORY[0x277D6EC88], v2);
    sub_219BE6BD4();

    (*(v3 + 8))(v5, v2);
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219268C9C(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BE61B4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 != *MEMORY[0x277D6D520])
  {
    if (v8 == *MEMORY[0x277D6D518])
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_219268A64(Strong);
        swift_unknownObjectRelease();
      }
    }

    else if (v8 == *MEMORY[0x277D6D510])
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        *(swift_allocObject() + 16) = v10;
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_219BF7514();
      __break(1u);
    }
  }
}

void sub_219268F50(uint64_t a1)
{
  if (!qword_280E91F90)
  {
    type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData(255);
    sub_21926C2C0(&qword_280E93C48, type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData, &unk_219C24568);
    sub_21926C2C0(&qword_280E93C50, type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData, &unk_219C24540);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91F90);
    }
  }
}

uint64_t type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280E950B0;
  if (!qword_280E950B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21926907C(uint64_t a1)
{
  sub_219268F50(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510, MEMORY[0x277D33778], 1);
      if (v3 <= 0x3F)
      {
        sub_2186C709C(319, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_219269160(uint64_t a1)
{
  type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  v1 = sub_219BEE964();
  sub_21926BF00(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  sub_218DAADD4(0, &qword_280E91240, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v6 + v5) = sub_219BEFB94();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D32308], v3);
  sub_2191EDA0C(v6);
  return v1;
}

uint64_t sub_219269354(uint64_t a1)
{
  v3 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v23 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter;
  v24 = v1;
  sub_21926BFD4(v1, v6, type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v25 = v7 + v5;
  v8 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  sub_21926BB0C(v6, v9 + v7);
  *(v9 + v8) = a1;

  v10 = sub_219BE2E54();
  sub_21926BC08(0);
  sub_219BE2F64();

  v11 = v23;
  sub_21926BFD4(v1, v6, v23);
  v12 = swift_allocObject();
  sub_21926BB0C(v6, v12 + v7);
  *(v12 + v8) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_21926BCA8;
  *(v13 + 24) = v12;

  v14 = sub_219BE2E54();
  sub_219BF1904();
  sub_219BE2F64();

  v15 = v24;
  sub_21926BFD4(v24, v6, v11);
  v16 = swift_allocObject();
  sub_21926BB0C(v6, v16 + v7);
  *(v16 + v8) = a1;

  v17 = sub_219BE2E54();
  sub_218DAADD4(0, &qword_280E91720, type metadata accessor for TagFeedGroup, sub_21877D2B0, MEMORY[0x277D324E8]);
  sub_219BE2F74();

  sub_21926BFD4(v15, v6, v11);
  v18 = swift_allocObject();
  sub_21926BB0C(v6, v18 + v7);
  v19 = sub_219BE2E54();
  v20 = sub_219BE3064();

  return v20;
}

uint64_t sub_219269700(id *a1)
{
  v2 = [*a1 backingChannel];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21926C03C(v2);
    if (v1)
    {
      return swift_unknownObjectRelease();
    }

    else
    {
      v8 = v4;
      type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter(0);
      v9 = off_282A4D758;
      type metadata accessor for TagService();
      v9(v8);

      v10 = sub_219BE2E54();
      sub_21926C200();
      sub_219BE30F4();

      *(swift_allocObject() + 16) = v3;
      swift_unknownObjectRetain();
      v11 = sub_219BE2E54();
      sub_21926BC08(0);
      v12 = sub_219BE2F74();
      swift_unknownObjectRelease();

      return v12;
    }
  }

  else
  {
    v6 = sub_219BEEDD4();
    sub_21926C2C0(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, *MEMORY[0x277D323B8], v6);
    return swift_willThrow();
  }
}

void *sub_219269928(uint64_t a1, void *a2, unint64_t a3)
{
  v96 = a2;
  v102 = a1;
  v4 = sub_219BEF9C4();
  v116 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v115 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BEF564();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v114 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_219BEFBD4();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v111 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_21926BF00(0, &unk_280E90FA0, MEMORY[0x277D32C48], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v108 = &v91 - v10;
  v11 = sub_219BF0BD4();
  MEMORY[0x28223BE20](v11 - 8);
  v99 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21926BF00(0, &qword_280E90300, MEMORY[0x277D33AA8], v8);
  MEMORY[0x28223BE20](v13 - 8);
  v103 = &v91 - v14;
  sub_21926BF00(0, &qword_280E90380, MEMORY[0x277D339F0], v8);
  MEMORY[0x28223BE20](v15 - 8);
  v107 = &v91 - v16;
  sub_21926BF00(0, &qword_280E90150, MEMORY[0x277D33EC8], v8);
  MEMORY[0x28223BE20](v17 - 8);
  v98 = &v91 - v18;
  sub_21926BF00(0, &qword_280E91A70, sub_2189AD5C8, v8);
  MEMORY[0x28223BE20](v19 - 8);
  v97 = &v91 - v20;
  v106 = sub_219BF2AB4();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v104 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21926BF00(0, &unk_280E8FF30, sub_218A42400, v8);
  MEMORY[0x28223BE20](v22 - 8);
  v95 = &v91 - v23;
  v92 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v92);
  v94 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_219BF1934();
  v125 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v122 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21926BF00(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v8);
  MEMORY[0x28223BE20](v26 - 8);
  v93 = &v91 - v27;
  v28 = sub_219BF2034();
  v100 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v121 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_219BF3C84();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = (&v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v36 = (&v91 - v35);
  v37 = sub_219BF3E84();
  v119 = *(v37 - 8);
  v120 = v37;
  MEMORY[0x28223BE20](v37);
  v118 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    v39 = sub_219BF7214();
  }

  else
  {
    v39 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = MEMORY[0x277D84F90];
  v117 = v4;
  v101 = v28;
  if (v39)
  {
    v129 = a3;
    v130[0] = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v39 & ~(v39 >> 63), 0);
    if (v39 < 0)
    {
      __break(1u);
      return result;
    }

    v42 = v130[0];
    if ((v129 & 0xC000000000000001) != 0)
    {
      v43 = 0;
      LODWORD(v128) = *MEMORY[0x277D34100];
      v127 = (v31 + 32);
      do
      {
        v44 = *(MEMORY[0x21CECE0F0](v43, v129) + 16);
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        *v36 = v44;
        (*(v31 + 104))(v36, v128, v30);
        v130[0] = v42;
        v46 = *(v42 + 16);
        v45 = *(v42 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_218C34A88((v45 > 1), v46 + 1, 1);
          v42 = v130[0];
        }

        ++v43;
        *(v42 + 16) = v46 + 1;
        (*(v31 + 32))(v42 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v46, v36, v30);
      }

      while (v39 != v43);
    }

    else
    {
      v47 = v129 + 32;
      LODWORD(v129) = *MEMORY[0x277D34100];
      v127 = *(v31 + 104);
      *&v128 = v31 + 104;
      v126 = (v31 + 32);
      do
      {
        *v33 = *(*v47 + 16);
        (v127)(v33, v129, v30);
        v130[0] = v42;
        v48 = *(v42 + 16);
        v49 = *(v42 + 24);
        swift_unknownObjectRetain();
        if (v48 >= v49 >> 1)
        {
          sub_218C34A88((v49 > 1), v48 + 1, 1);
          v42 = v130[0];
        }

        *(v42 + 16) = v48 + 1;
        (*(v31 + 32))(v42 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v48, v33, v30);
        v47 += 8;
        --v39;
      }

      while (v39);
    }

    v40 = MEMORY[0x277D84F90];
  }

  v50 = v40;
  sub_218F0B984(v40);
  sub_218F0BA7C(v50);
  sub_218F0BB90(v50);
  v51 = v118;
  sub_219BF3E74();
  v127 = MEMORY[0x277D84560];
  sub_21926BF00(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v52 = v119;
  v53 = (*(v119 + 80) + 32) & ~*(v119 + 80);
  v54 = swift_allocObject();
  v128 = xmmword_219C09BA0;
  *(v54 + 16) = xmmword_219C09BA0;
  (*(v52 + 16))(v54 + v53, v51, v120);
  v91 = sub_219BEC004();
  v55 = *(v91 - 8);
  v126 = *(v55 + 56);
  v129 = v55 + 56;
  v56 = v93;
  v126(v93, 1, 1, v91);
  sub_219A95188(v50);
  sub_219A95188(v50);
  sub_219A951A0(v50);
  sub_219A951B8(v50);
  sub_219A952CC(v50);
  sub_219A952E4(v50);
  sub_219A953F8(v50);
  sub_219BF2024();
  sub_219268F50(0);
  v57 = v94;
  sub_219BEDD14();
  v58 = *(v92 + 20);
  sub_219BEDCA4();
  v59 = [v96 identifier];
  sub_219BF5414();

  v60 = v56;
  v126(v56, 1, 1, v91);
  sub_218A42400(0);
  v62 = v95;
  (*(*(v61 - 8) + 56))(v95, 1, 1, v61);
  sub_219BF1764();

  sub_21926BF64(v62, &unk_280E8FF30, sub_218A42400);
  sub_21926BF64(v60, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v63 = *(v125 + 8);
  v125 += 8;
  v129 = v63;
  v63(&v57[v58], v123);
  v64 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter(0);
  v65 = v124;
  v66 = (v124 + *(v64 + 24));
  v67 = v66[3];
  v126 = v66[4];
  v96 = __swift_project_boxed_opaque_existential_1(v66, v67);
  v68 = *(v64 + 20);
  sub_2189AD5C8(0);
  v70 = v69;
  v71 = *(v69 - 8);
  v72 = v97;
  (*(v71 + 16))(v97, v65 + v68, v69);
  (*(v71 + 56))(v72, 0, 1, v70);
  sub_219BEF0B4();
  v73 = *(v130[0] + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v74 = sub_219BF35D4();
  (*(*(v74 - 8) + 56))(v98, 1, 1, v74);
  LOBYTE(v131) = 4;
  sub_218DAADD4(0, &qword_280E90090, type metadata accessor for TagFeedServiceConfig, sub_2186F7CA4, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v75 = *(v131 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  sub_219BEF134();
  v130[3] = type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs(0);
  v130[4] = sub_21926C2C0(&qword_27CC18170, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs, &unk_219CC973C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v130);
  sub_21926BFD4(v65 + v68, boxed_opaque_existential_1, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
  v77 = v103;
  sub_219BF2AC4();
  v78 = sub_219BF2AD4();
  (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
  sub_21926BF00(0, &unk_280E8B7B0, MEMORY[0x277D33FB8], v127);
  v79 = sub_219BF3924();
  v80 = *(v79 - 8);
  v81 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v82 = swift_allocObject();
  *(v82 + 16) = v128;
  (*(v80 + 104))(v82 + v81, *MEMORY[0x277D33FA8], v79);
  sub_2194B2A30(v82);
  swift_setDeallocating();
  (*(v80 + 8))(v82 + v81, v79);
  swift_deallocClassInstance();
  v83 = sub_219BF02F4();
  (*(*(v83 - 8) + 56))(v108, 1, 1, v83);
  (*(v109 + 104))(v111, *MEMORY[0x277D329E0], v110);
  (*(v112 + 104))(v114, *MEMORY[0x277D32670], v113);
  (*(v116 + 104))(v115, *MEMORY[0x277D32840], v117);
  v84 = v107;
  sub_219BF2764();
  v85 = sub_219BF2774();
  (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
  v86 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v86 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v87 = v104;
  sub_219BF2A84();
  v89 = v121;
  v88 = v122;
  v90 = sub_219BF2194();
  (*(v105 + 8))(v87, v106);
  (v129)(v88, v123);
  (*(v100 + 8))(v89, v101);
  (*(v119 + 8))(v118, v120);
  return v90;
}

uint64_t sub_21926ADB0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  sub_21926BF00(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v23 = v21 - v5;
  v6 = sub_219BEF554();
  MEMORY[0x28223BE20](v6 - 8);
  v21[0] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = sub_219BF1904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BED8D4();
  v13 = *(v22 - 8);
  v14 = MEMORY[0x28223BE20](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a2, v9, v14);
  sub_219268F50(0);
  v17 = sub_219BEDCB4();
  v21[1] = v18;
  v21[2] = v17;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v19 = sub_219BEE5D4();
  (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
  sub_219BED854();
  (*(v13 + 32))(v24, v16, v22);
  type metadata accessor for TagFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21926B154(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter(0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup(0);
  sub_21877D2B0();
  return sub_219BEF194();
}

uint64_t sub_21926B218(uint64_t *a1)
{
  v1 = *a1;
  if (![objc_opt_self() isTagAllowed_])
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v7 = qword_280F61708;
    sub_2186F20D4(0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_219C09EC0;
    v9 = [*(v1 + 16) identifier];
    v10 = sub_219BF5414();
    v12 = v11;

    v13 = MEMORY[0x277D837D0];
    *(v8 + 56) = MEMORY[0x277D837D0];
    v14 = sub_2186FC3BC();
    *(v8 + 64) = v14;
    *(v8 + 32) = v10;
    *(v8 + 40) = v12;
    v15 = [*(v1 + 16) name];
    v16 = sub_219BF5414();
    v18 = v17;

    *(v8 + 96) = v13;
    *(v8 + 104) = v14;
    *(v8 + 72) = v16;
    *(v8 + 80) = v18;
    v19 = sub_219BF6214();
    sub_219BE5314("Channel sections directory tag %{public}@ not allowed, %@", 57, 2, &dword_2186C1000, v7, v19, v8);
    goto LABEL_13;
  }

  v2 = swift_dynamicCastObjCProtocolConditional();
  if (!v2)
  {
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v20 = qword_280F61708;
    sub_2186F20D4(0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_219C09EC0;
    v22 = [*(v1 + 16) identifier];
    v23 = sub_219BF5414();
    v25 = v24;

    v26 = MEMORY[0x277D837D0];
    *(v21 + 56) = MEMORY[0x277D837D0];
    v27 = sub_2186FC3BC();
    *(v21 + 64) = v27;
    *(v21 + 32) = v23;
    *(v21 + 40) = v25;
    v28 = [*(v1 + 16) name];
    v29 = sub_219BF5414();
    v31 = v30;

    *(v21 + 96) = v26;
    *(v21 + 104) = v27;
    *(v21 + 72) = v29;
    *(v21 + 80) = v31;
    v32 = sub_219BF6214();
    sub_219BE5314("Channel sections directory tag %{public}@ is not a section, %@", 62, 2, &dword_2186C1000, v20, v32, v21);
LABEL_13:

    return 0;
  }

  v3 = v2;
  swift_unknownObjectRetain();
  v4 = [v3 supergroupKnobs];
  if (!v4)
  {
LABEL_6:
    swift_unknownObjectRelease();
    return 1;
  }

  v5 = v4;
  if ([v4 isEligible])
  {

    goto LABEL_6;
  }

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v45 = qword_280F61708;
  sub_2186F20D4(0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_219C09EC0;
  v34 = [v3 identifier];
  v35 = sub_219BF5414();
  v37 = v36;

  v38 = MEMORY[0x277D837D0];
  *(v33 + 56) = MEMORY[0x277D837D0];
  v39 = sub_2186FC3BC();
  *(v33 + 64) = v39;
  *(v33 + 32) = v35;
  *(v33 + 40) = v37;
  v40 = [*(v1 + 16) name];
  v41 = sub_219BF5414();
  v43 = v42;

  *(v33 + 96) = v38;
  *(v33 + 104) = v39;
  *(v33 + 72) = v41;
  *(v33 + 80) = v43;
  v44 = sub_219BF6214();
  sub_219BE5314("Channel sections directory tag %{public}@ is not super group eligible, %@", 73, 2, &dword_2186C1000, v45, v44, v33);

  swift_unknownObjectRelease();

  return 0;
}

uint64_t sub_21926B624()
{
  sub_21926BF00(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21926B6A4@<X0>(uint64_t *a1@<X8>)
{
  sub_219268F50(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x1000000000000000;
  return result;
}

uint64_t sub_21926B71C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs(0);
  a2[4] = sub_21926C2C0(qword_280E96640, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs, &unk_219CC97A4);
  a2[5] = sub_21926C2C0(&qword_27CC18178, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs, &unk_219CC977C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21926BFD4(v2 + v4, boxed_opaque_existential_1, type metadata accessor for ChannelSectionDirectoryTagFeedGroupKnobs);
}

uint64_t sub_21926B7E4()
{
  sub_219268F50(0);

  return sub_219BEDCA4();
}

uint64_t sub_21926B810@<X0>(uint64_t *a2@<X8>)
{
  sub_21926BF00(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_219268F50(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A426AC(inited + 32);
  sub_21926BF00(0, &qword_27CC18180, type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_21926C308();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21926B980(uint64_t a1)
{
  sub_21926C2C0(&unk_27CC18148, type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter, &unk_219C6A404);

  return sub_219BE2324();
}

uint64_t sub_21926BB0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21926BC08(uint64_t a1)
{
  if (!qword_27CC18168)
  {
    sub_2186D80B0();
    sub_21926BF00(255, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC18168);
    }
  }
}

uint64_t sub_21926BD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter(0);
  sub_21926ADB0(a1, a2);
  sub_218DAADD4(0, &qword_280E91720, type metadata accessor for TagFeedGroup, sub_21877D2B0, MEMORY[0x277D324E8]);
  return swift_storeEnumTagMultiPayload();
}

void sub_21926BF00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21926BF64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21926BF00(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21926BFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21926C03C(void *a1)
{
  v1 = [a1 sectionIDs];
  if (v1)
  {
    v2 = v1;
    v3 = sub_219BF5924();

    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    sub_2186F20D4(0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_219C09BA0;
    v5 = *(v3 + 16);
    v6 = MEMORY[0x277D83C10];
    *(v4 + 56) = MEMORY[0x277D83B88];
    *(v4 + 64) = v6;
    *(v4 + 32) = v5;
    sub_219BF6214();
    sub_219BE5314("Channel sections directory %ld sections", v9);
  }

  else
  {
    v3 = sub_219BEEDD4();
    sub_21926C2C0(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    *v7 = 0xD000000000000017;
    v7[1] = 0x8000000219D14D30;
    (*(*(v3 - 8) + 104))(v7, *MEMORY[0x277D323D8], v3);
    swift_willThrow();
  }

  return v3;
}

unint64_t sub_21926C200()
{
  result = qword_280E8EFC0;
  if (!qword_280E8EFC0)
  {
    sub_21926BF00(255, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EFC0);
  }

  return result;
}

double sub_21926C288@<D0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  *a3 = *(v3 + 16);
  a3[1] = v4;
  swift_unknownObjectRetain();

  return result;
}

uint64_t sub_21926C2C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21926C308()
{
  result = qword_27CC18188;
  if (!qword_27CC18188)
  {
    sub_21926BF00(255, &qword_27CC18180, type metadata accessor for ChannelSectionDirectoryTagFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18188);
  }

  return result;
}

uint64_t AudioArticleOptionsProvider.results()()
{
  v1[4] = v0;
  sub_218AC1C94(0);
  v1[5] = swift_task_alloc();
  v2 = sub_219BF1634();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_219BE1B34();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  type metadata accessor for AudioFeedContentConfig(0);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21926C504, 0, 0);
}

uint64_t sub_21926C504()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 72);
  *(v0 + 16) = *__swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  (*(v2 + 104))(v1, *MEMORY[0x277D6CA28], v3);
  v4 = off_282A71798;
  type metadata accessor for AudioFeedConfigManager();
  *(v0 + 104) = v4();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_21926C64C;
  v6 = *(v0 + 96);

  return MEMORY[0x2821D23D8](v6);
}

uint64_t sub_21926C64C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_21926CBE4;
  }

  else
  {

    v2 = sub_21926C768;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21926C768()
{
  v1 = v0[12];
  v2 = __swift_project_boxed_opaque_existential_1((v0[4] + 40), *(v0[4] + 64));
  v0[16] = sub_21926CDEC(v1, *v2);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_21926C828;

  return MEMORY[0x2821D23D8](v0 + 3);
}

uint64_t sub_21926C828()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_21926CC78;
  }

  else
  {
    v2 = sub_21926C958;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21926C958(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v5 = 0;
    v6 = v2[7];
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    v24 = v3 & 0xC000000000000001;
    v7 = (v6 + 48);
    v21 = v6;
    v8 = (v6 + 32);
    v9 = MEMORY[0x277D84F90];
    v22 = v3;
    while (v24)
    {
      MEMORY[0x21CECE0F0](v5, v3);
      v10 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v12 = v2[5];
      v11 = v2[6];
      sub_219BF1624();
      if ((*v7)(v12, 1, v11) == 1)
      {
        sub_21926D5C4(v2[5], sub_218AC1C94);
      }

      else
      {
        v13 = *v8;
        (*v8)(v2[8], v2[5], v2[6]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2191FA570(0, *(v9 + 2) + 1, 1, v9);
        }

        v15 = *(v9 + 2);
        v14 = *(v9 + 3);
        if (v15 >= v14 >> 1)
        {
          v9 = sub_2191FA570((v14 > 1), v15 + 1, 1, v9);
        }

        v16 = v2[8];
        v17 = v2[6];
        *(v9 + 2) = v15 + 1;
        v13(&v9[((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v15], v16, v17);
        v3 = v22;
      }

      ++v5;
      if (v10 == i)
      {
        goto LABEL_21;
      }
    }

    if (v5 >= *(v23 + 16))
    {
      goto LABEL_18;
    }

    swift_unknownObjectRetain();
    v10 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_21:
  v18 = v2[12];

  sub_21926D5C4(v18, type metadata accessor for AudioFeedContentConfig);

  v19 = v2[1];

  return v19(v9);
}

uint64_t sub_21926CBE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21926CC78()
{
  sub_21926D5C4(*(v0 + 96), type metadata accessor for AudioFeedContentConfig);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21926CD20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2191A1F80;

  return AudioArticleOptionsProvider.results()();
}

uint64_t sub_21926CDEC(uint64_t a1, uint64_t a2)
{
  v59 = type metadata accessor for AudioFeedConfig(0);
  MEMORY[0x28223BE20](v59);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21926D560(a1, v5);
  v6 = sub_2186C66AC();
  v7 = sub_219BF6F74();
  v8 = sub_219BF6214();
  v9 = MEMORY[0x277D84F90];
  sub_219BE5314("AudioHeroStore: Loading daily briefing and hero headlines", 57, 2, &dword_2186C1000, v7, v8, MEMORY[0x277D84F90]);

  v10 = sub_218FA2584();
  v58 = v6;
  v11 = sub_219BF6F74();
  v12 = sub_219BF6214();
  sub_21926D678(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v57 = v13;
  v14 = swift_allocObject();
  v56 = xmmword_219C09BA0;
  *(v14 + 16) = xmmword_219C09BA0;
  v15 = MEMORY[0x277D837D0];
  v16 = MEMORY[0x21CECC6D0](v10, MEMORY[0x277D837D0]);
  v18 = v17;
  *(v14 + 56) = v15;
  v55 = sub_2186FC3BC();
  *(v14 + 64) = v55;
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  sub_219BE5314("AudioHeroStore: Found configured daily briefing and hero candidates: %{public}@", 79, 2, &dword_2186C1000, v11, v12, v14);

  v19 = off_282A54608();
  v20 = *(a2 + 56);
  v21 = [objc_msgSend(v20 configurationManager)];
  result = swift_unknownObjectRelease();
  if (v21)
  {
    v23 = objc_opt_self();
    sub_21926D5C4(v5, type metadata accessor for AudioFeedConfig);
    v59 = [v23 transformationWithFilterOptions:v19 configuration:v21 context:v20];
    swift_unknownObjectRelease();
    v63 = v9;
    v24 = *(v10 + 2);
    if (v24)
    {
      v25 = 0;
      v26 = v10 + 40;
      v53 = v24 - 1;
      v54 = v10 + 40;
      do
      {
        v27 = &v26[16 * v25];
        v28 = v25;
        while (1)
        {
          if (v28 >= *(v10 + 2))
          {
            __break(1u);
            goto LABEL_19;
          }

          v25 = v28 + 1;
          v29 = *v27;
          v60 = *(v27 - 1);
          v61 = v29;

          sub_219BE2DD4();

          if (v62)
          {
            break;
          }

          v27 += 16;
          ++v28;
          if (v24 == v25)
          {
            goto LABEL_12;
          }
        }

        MEMORY[0x21CECC690](v30);
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v9 = v63;
        v26 = v54;
      }

      while (v53 != v28);
    }

LABEL_12:
    if (v9 >> 62)
    {
LABEL_19:
      v31 = sub_219BF7214();
    }

    else
    {
      v31 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v32 = v59;
    if (v31 == *(v10 + 2))
    {

      v33 = sub_219BF6F74();
      v34 = sub_219BF6214();
      sub_219BE5314("AudioHeroStore: Found all non-expired daily briefing and hero headlines in cache", 80, 2, &dword_2186C1000, v33, v34, MEMORY[0x277D84F90]);

      sub_218731D50();
      v35 = sub_219BF5904();

      v36 = [v32 transformHeadlines_];

      v37 = sub_219BF5924();
      v60 = v37;
      sub_21926D678(0, &unk_280EE6A40, sub_2187E7248, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v38 = sub_219BE3014();
    }

    else
    {

      sub_219BE2DB4();
      sub_218731D50();
      v39 = MEMORY[0x277D837D0];
      v40 = sub_219BE2814();

      v41 = sub_219BF6F74();
      v42 = sub_219BF6214();
      v43 = swift_allocObject();
      *(v43 + 16) = v56;
      v44 = MEMORY[0x21CECC6D0](v40, v39);
      v45 = v55;
      *(v43 + 56) = v39;
      *(v43 + 64) = v45;
      *(v43 + 32) = v44;
      *(v43 + 40) = v46;
      sub_219BE5314("AudioHeroStore: Missing daily briefing and hero articles %{public}@", 67, 2, &dword_2186C1000, v41, v42, v43);

      MEMORY[0x28223BE20](v47);
      *(&v52 - 2) = a2;
      *(&v52 - 1) = v40;
      sub_2187E7248(0);
      sub_219BE3204();

      v48 = swift_allocObject();
      *(v48 + 16) = a2;
      *(v48 + 24) = v10;

      v49 = sub_219BE2E54();
      sub_219BE2F74();

      *(swift_allocObject() + 16) = v32;
      v50 = v32;
      v51 = sub_219BE2E54();
      v38 = sub_219BE2F74();
    }

    return v38;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21926D4A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21926D4EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21926D560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21926D5C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21926D678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_21926D6DC()
{
  v1 = sub_219BEA3D4();
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider____lazy_storage___regularContainerTitleView;
  v7 = *(v0 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider____lazy_storage___regularContainerTitleView);
  if (v7)
  {
    v8 = *(v0 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider____lazy_storage___regularContainerTitleView);
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView);
    (*(v2 + 104))(v5, *MEMORY[0x277D6EA70], v3);
    objc_allocWithZone(sub_219BE9C84());
    v10 = v9;
    v11 = v0;
    v12 = sub_219BE9C64();
    v13 = *(v0 + v6);
    *(v11 + v6) = v12;
    v8 = v12;

    v7 = 0;
  }

  v14 = v7;
  return v8;
}

void sub_21926D80C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = objc_opt_self();
    v5 = [v4 feedTitleViewUpdateCheckingForNewStoriesForType_];
    [*(*&v3[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView] + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView) applyFeedTitleViewUpdate:v5 animation:2 force:1];
    v6 = [v4 feedTitleViewUpdateCheckingForNewStoriesForType_];
    [*&v3[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView] applyFeedTitleViewUpdate:v6 animation:2 force:1];
  }
}

void sub_21926D910(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = objc_opt_self();
    v5 = [v4 feedTitleViewUpdateNewStoriesWithStoryForType:1 storyCount:2 linger:0];
    [*(*&v3[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView] + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView) applyFeedTitleViewUpdate:v5 animation:2 force:1];
    v6 = [v4 feedTitleViewUpdateNewStoriesWithStoryForType:0 storyCount:2 linger:0];
    [*&v3[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView] applyFeedTitleViewUpdate:v6 animation:2 force:1];
  }
}

void sub_21926DA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(*(Strong + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView) + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView);
    v8 = sub_219AFC4A4(a4, 1);
    v9 = objc_opt_self();
    v10 = [v9 feedTitleViewUpdateForAttributedText:v8 forType:1];

    [v7 applyFeedTitleViewUpdate:v10 animation:2];
    v11 = *&v6[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView];
    v12 = sub_219AFC4A4(a4, 2);
    v13 = [v9 feedTitleViewUpdateForAttributedText:v12 forType:0];

    [v11 applyFeedTitleViewUpdate:v13 animation:2];
  }
}

id sub_21926DB7C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = type metadata accessor for MiniMastheadModel(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v31 - v16;
  result = [a1 horizontalSizeClass];
  if (result)
  {
    v19 = result == 2;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    v20 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_model;
    swift_beginAccess();
    sub_21926F214(v5 + v20, v13, type metadata accessor for MiniMastheadModel);
    v21 = *(v5 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView);
    v22 = sub_219AFC4A4(v13, 2);
    v23 = [objc_opt_self() feedTitleViewUpdateForAttributedText:v22 forType:0];

    [v21 applyFeedTitleViewUpdate:v23 animation:3];
    v17 = v13;
  }

  else
  {
    if (result != 1)
    {
      return result;
    }

    v24 = *(v5 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView);
    v32.origin.x = a2;
    v32.origin.y = a3;
    v32.size.width = a4;
    v32.size.height = a5;
    Width = CGRectGetWidth(v32);
    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    Height = CGRectGetHeight(v33);
    [v24 setFrame_];
    v27 = OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView;
    [*&v24[OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView] setFrame_];
    v28 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_model;
    swift_beginAccess();
    sub_21926F214(v5 + v28, v17, type metadata accessor for MiniMastheadModel);
    v29 = *&v24[v27];
    v30 = sub_219AFC4A4(v17, 1);
    v23 = [objc_opt_self() feedTitleViewUpdateForAttributedText:v30 forType:1];

    [v29 applyFeedTitleViewUpdate:v23 animation:3];
  }

  return sub_21926F1B4(v17, type metadata accessor for MiniMastheadModel);
}

uint64_t type metadata accessor for MiniMastheadViewProvider(uint64_t a1)
{
  result = qword_280EC1050;
  if (!qword_280EC1050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21926DFA8(uint64_t a1)
{
  result = type metadata accessor for MiniMastheadModel(319);
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

uint64_t sub_21926E0C8(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21926E138(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_delegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_218A5FF2C;
}

id sub_21926E1DC(void *a1)
{
  v2 = *v1;
  v3 = [a1 horizontalSizeClass];
  if (v3)
  {
    v4 = v3 == 2;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    return sub_21926D6DC();
  }

  if (v3 == 1)
  {
    v6 = *(v2 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView);

    return v6;
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

uint64_t sub_21926E2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MastheadModelContext(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for MiniMastheadModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_model;
  swift_beginAccess();
  sub_21926F214(a1 + v12, v11, type metadata accessor for MiniMastheadModel);
  sub_21895F570();
  v14 = v13;
  v15 = *(v13 - 8);
  if ((*(v15 + 48))(v11, 1, v13) == 1)
  {
    return sub_21926F214(a1 + v12, a3, type metadata accessor for MiniMastheadModel);
  }

  if ([*(a1 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_featureAvailability) useOfflineMode])
  {
    sub_21926F214(a2, a3, type metadata accessor for MastheadModelContext);
  }

  else
  {
    v26 = *(a2 + 1);
    v17 = *(a2 + 2);
    v18 = *(v6 + 28);
    v19 = *MEMORY[0x277D32EF0];
    v20 = sub_219BF0644();
    (*(*(v20 - 8) + 104))(&v8[v18], v19, v20);
    v21 = *MEMORY[0x277D331F8];
    v22 = sub_219BF11C4();
    (*(*(v22 - 8) + 104))(&v8[v18], v21, v22);
    v23 = *(v6 + 32);
    v24 = *(a2 + v23);
    *v8 = 0;
    v8[1] = v26;
    v8[2] = v17;
    v8[v23] = v24;
    sub_21926F150(v8, a3);
  }

  (*(v15 + 56))(a3, 0, 1, v14);
  return sub_21926F1B4(v11, type metadata accessor for MastheadModelContext);
}

void sub_21926E69C(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [a1 traitCollection];
  v6 = [v5 horizontalSizeClass];

  v7 = &OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView;
  if (v6 != 1)
  {
    v7 = &OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView;
  }

  v8 = *&v2[*v7];
  if (*&v2[OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_refreshStateMachine] && (sub_219BE1EA4(), LOBYTE(v10[0]) == 2) || (swift_beginAccess(), !swift_unknownObjectWeakLoadStrong()))
  {
  }

  else
  {
    swift_getObjectType();
    v10[3] = ObjectType;
    v10[4] = sub_21926F27C();
    v10[0] = v2;
    v9 = v2;
    sub_219BE9AE4();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v10);
  }
}

uint64_t sub_21926E848(void *a1)
{
  v3 = type metadata accessor for MiniMastheadModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  sub_21926EA60(v1, a1, &v18 - v7);
  v9 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_model;
  swift_beginAccess();
  sub_21926F0EC(v8, v1 + v9);
  swift_endAccess();
  sub_21926F214(v1 + v9, v8, type metadata accessor for MiniMastheadModel);
  v10 = *(*(v1 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView) + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView);
  v11 = sub_219AFC4A4(v8, 1);
  v12 = objc_opt_self();
  v13 = [v12 feedTitleViewUpdateForAttributedText:v11 forType:1];

  [v10 applyFeedTitleViewUpdate:v13 animation:2];
  sub_21926F1B4(v8, type metadata accessor for MiniMastheadModel);
  sub_21926F214(v1 + v9, v5, type metadata accessor for MiniMastheadModel);
  v14 = *(v1 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView);
  v15 = sub_219AFC4A4(v5, 2);
  v16 = [v12 feedTitleViewUpdateForAttributedText:v15 forType:0];

  [v14 applyFeedTitleViewUpdate:v16 animation:2];
  return sub_21926F1B4(v5, type metadata accessor for MiniMastheadModel);
}

uint64_t sub_21926EA60@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MastheadModelContext(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for MiniMastheadModel(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_model;
  swift_beginAccess();
  sub_21926F214(a1 + v15, v14, type metadata accessor for MiniMastheadModel);
  sub_21895F570();
  v17 = v16;
  v18 = *(v16 - 8);
  if ((*(v18 + 48))(v14, 1, v16) == 1)
  {
    return sub_21926F214(a1 + v15, a3, type metadata accessor for MiniMastheadModel);
  }

  sub_21926F150(v14, v11);
  if ([*(a1 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_featureAvailability) useOfflineMode])
  {
    v20 = *v11;
    v21 = [a2 isSubscribed];
    v22 = v11[2];
    v23 = *(v6 + 28);
    v24 = sub_219BF11C4();
    (*(*(v24 - 8) + 16))(&v8[v23], &v11[v23], v24);
    LOBYTE(v23) = v11[*(v6 + 32)];
    sub_21926F1B4(v11, type metadata accessor for MastheadModelContext);
    *v8 = v20;
    v8[1] = v21;
    v8[2] = v22;
    v8[*(v6 + 32)] = v23;
  }

  else
  {
    v25 = [a2 isSubscribed];
    v26 = v11[2];
    v27 = *(v6 + 28);
    v28 = *MEMORY[0x277D32EF0];
    v29 = sub_219BF0644();
    (*(*(v29 - 8) + 104))(&v8[v27], v28, v29);
    v30 = *MEMORY[0x277D331F8];
    v31 = sub_219BF11C4();
    (*(*(v31 - 8) + 104))(&v8[v27], v30, v31);
    LOBYTE(v30) = v11[*(v6 + 32)];
    sub_21926F1B4(v11, type metadata accessor for MastheadModelContext);
    *v8 = 0;
    v8[1] = v25;
    v8[2] = v26;
    v8[*(v6 + 32)] = v30;
  }

  sub_21926F150(v8, a3);
  return (*(v18 + 56))(a3, 0, 1, v17);
}

double sub_21926EDEC()
{
  swift_beginAccess();
  v0 = 0.0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v1 = sub_219BE64C4();
      swift_unknownObjectRelease();
      if (v1)
      {
        v2 = [v1 navigationBar];

        [v2 transform];
        v0 = v4;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  return v0;
}

uint64_t sub_21926EED4(uint64_t a1)
{
  v3 = type metadata accessor for MiniMastheadModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  sub_21926E2E8(v1, a1, &v18 - v7);
  v9 = OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_model;
  swift_beginAccess();
  sub_21926F0EC(v8, v1 + v9);
  swift_endAccess();
  sub_21926F214(v1 + v9, v8, type metadata accessor for MiniMastheadModel);
  v10 = *(*(v1 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_compactMiniMastheadView) + OBJC_IVAR____TtC7NewsUI216MiniMastheadView_titleView);
  v11 = sub_219AFC4A4(v8, 1);
  v12 = objc_opt_self();
  v13 = [v12 feedTitleViewUpdateForAttributedText:v11 forType:1];

  [v10 applyFeedTitleViewUpdate:v13 animation:2];
  sub_21926F1B4(v8, type metadata accessor for MiniMastheadModel);
  sub_21926F214(v1 + v9, v5, type metadata accessor for MiniMastheadModel);
  v14 = *(v1 + OBJC_IVAR____TtC7NewsUI224MiniMastheadViewProvider_regularMiniMastheadView);
  v15 = sub_219AFC4A4(v5, 2);
  v16 = [v12 feedTitleViewUpdateForAttributedText:v15 forType:0];

  [v14 applyFeedTitleViewUpdate:v16 animation:2];
  return sub_21926F1B4(v5, type metadata accessor for MiniMastheadModel);
}

uint64_t sub_21926F0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MiniMastheadModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21926F150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MastheadModelContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21926F1B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21926F214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21926F27C()
{
  result = qword_280EC1060;
  if (!qword_280EC1060)
  {
    type metadata accessor for MiniMastheadViewProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC1060);
  }

  return result;
}

uint64_t sub_21926F2DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_219BE3794();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = *(v4 + 16);
  v11(&v33 - v9, v1, v3, v8);
  v12 = (*(v4 + 88))(v10, v3);
  if (v12 == *MEMORY[0x277D31670] || v12 == *MEMORY[0x277D31660])
  {
    v14 = sub_219BE1324();
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  if (v12 == *MEMORY[0x277D31668])
  {
    v16 = MEMORY[0x277D2F158];
LABEL_11:
    v17 = *v16;
    v18 = sub_219BE1324();
    v19 = *(v18 - 8);
    (*(v19 + 104))(a1, v17, v18);
    return (*(v19 + 56))(a1, 0, 1, v18);
  }

  if (v12 == *MEMORY[0x277D31678])
  {
    v16 = MEMORY[0x277D2F160];
    goto LABEL_11;
  }

  if (qword_280EE60A0 != -1)
  {
    swift_once();
  }

  v20 = sub_219BE5434();
  __swift_project_value_buffer(v20, qword_280F627F0);
  (v11)(v6, v1, v3);
  v21 = sub_219BE5414();
  v22 = sub_219BF61F4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v33 = v23;
    v35 = swift_slowAlloc();
    v36 = v35;
    *v23 = 136315138;
    v34 = v22;
    v24 = sub_219BE3784();
    v26 = v25;
    v27 = *(v4 + 8);
    v27(v6, v3);
    v28 = sub_2186D1058(v24, v26, &v36);

    v29 = v33;
    *(v33 + 1) = v28;
    v30 = v27;
    _os_log_impl(&dword_2186C1000, v21, v34, "Unknown EngagementPlacementSource type= %s", v29, 0xCu);
    v31 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x21CECF960](v31, -1, -1);
    MEMORY[0x21CECF960](v29, -1, -1);
  }

  else
  {

    v30 = *(v4 + 8);
    v30(v6, v3);
  }

  v32 = sub_219BE1324();
  (*(*(v32 - 8) + 56))(a1, 1, 1, v32);
  return (v30)(v10, v3);
}

uint64_t sub_21926F730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v5, &off_282A66150, a3, a4, a5, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21926F7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v28[1] = a1;
  v5 = type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer(0);
  v28[0] = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE9834();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189518E0(0);
  sub_219BE8184();
  v16 = v35;
  v17 = v36;
  sub_219BE95F4();
  v18 = (*(v13 + 88))(v15, v12);
  if (v18 == *MEMORY[0x277D6E758])
  {
    v19 = sub_219BE9604();
    if ((v19 & 0x8000000000000000) == 0)
    {
      if (v19 < *(v16 + 16))
      {
        sub_2192707D8(v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19, v11, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header);
        sub_218951864(0);
        sub_219BE6934();
        v37[2] = v32;
        v37[3] = v33;
        v38[0] = v34[0];
        *(v38 + 9) = *(v34 + 9);
        v37[0] = v30;
        v37[1] = v31;
        v20 = sub_21926FC08(v11, v29, v37, a4);
        sub_218EE7884(v37);

        v21 = type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header;
        v22 = v11;
LABEL_10:
        sub_219270C10(v22, v21);
        return v20;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v18 == *MEMORY[0x277D6E750])
  {
    v23 = sub_219BE9604();
    v24 = *(v16 + 16);
    v25 = __OFSUB__(v23, v24);
    v26 = v23 - v24;
    if (!v25)
    {
      if ((v26 & 0x8000000000000000) == 0)
      {
        if (v26 < *(v17 + 16))
        {
          sub_2192707D8(v17 + ((*(v28[0] + 80) + 32) & ~*(v28[0] + 80)) + *(v28[0] + 72) * v26, v7, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer);
          v20 = sub_219270308(v7, v29, a4);

          v21 = type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer;
          v22 = v7;
          goto LABEL_10;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    goto LABEL_12;
  }

LABEL_16:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_21926FC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v45 = a3;
  v50 = a2;
  v5 = type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A5310C(0, &qword_280EE3C68, sub_218A52E68);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v44 - v8;
  v48 = sub_219BDC104();
  v9 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_219BE9834();
  v12 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192707D8(a1, v20, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Header);
  v21 = (v12 + 104);
  v22 = (v9 + 8);
  v23 = (v12 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v20;
    sub_219270AA8(0, &qword_27CC13328, type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes, &type metadata for FollowingNotificationsDisabledViewModel);
    v26 = v46;
    sub_219270B14(&v20[*(v25 + 48)], v46, type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes);
    sub_219270840(0);
    v27 = v47;
    (*v21)(v14, *MEMORY[0x277D6E758], v47);
    sub_219BE9614();
    v28 = sub_219BF6424();
    (*v22)(v11, v48);
    (*v23)(v14, v27);
    v29 = sub_219BE9494();
    sub_2194653F0(v24, v29, v26);

    v30 = sub_219BE9494();
    v31 = *&v30[OBJC_IVAR____TtC7NewsUI234FollowingNotificationsDisabledView_onButtonTap];

    v32 = sub_219BEA814();
    swift_allocObject();
    swift_weakInit();

    v33 = type metadata accessor for FollowingNotificationsDisabledViewLayoutAttributes;
    v34 = v26;
LABEL_6:
    sub_219270C10(v34, v33);
    return v28;
  }

  v35 = v51;
  v36 = *(v20 + 3);
  v54[2] = *(v20 + 2);
  v54[3] = v36;
  v55 = *(v20 + 8);
  v37 = *(v20 + 1);
  v54[0] = *v20;
  v54[1] = v37;
  sub_219270AA8(0, &qword_27CC10B88, type metadata accessor for TitleViewLayoutAttributes, &type metadata for TitleModel);
  sub_219270B14(&v20[*(v38 + 48)], v17, type metadata accessor for TitleViewLayoutAttributes);
  sub_218A52F60(0);
  v39 = v47;
  (*v21)(v14, *MEMORY[0x277D6E758], v47);
  sub_219BE9614();
  v28 = sub_219BF6424();
  (*v22)(v11, v48);
  (*v23)(v14, v39);
  if (*(v45 + 88) - 1 < 5)
  {
    __swift_project_boxed_opaque_existential_1(v35 + 2, v35[5]);
    sub_218A52E68(0);
    v41 = v44;
    (*(*(v40 - 8) + 56))(v44, 1, 1, v40);
    v53 = 0;
    memset(v52, 0, sizeof(v52));
    sub_21913770C(v54, v28, v17, v41);
    sub_218967CDC(v54);
    sub_218D31880(v52, &qword_280ECFCE8, sub_218A53160);
    sub_218D31880(v41, &qword_280EE3C68, sub_218A52E68);
LABEL_5:
    v33 = type metadata accessor for TitleViewLayoutAttributes;
    v34 = v17;
    goto LABEL_6;
  }

  if (!*(v45 + 88))
  {
    __swift_project_boxed_opaque_existential_1(v35 + 17, v35[20]);
    v43 = sub_219BE9494();
    sub_219357FA0(v54, v43, v17);
    sub_218967CDC(v54);

    goto LABEL_5;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_219270308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v30 = a3;
  v31 = sub_219BDC104();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE9834();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2192707D8(a1, v17, type metadata accessor for FollowingNotificationsSupplementaryLayoutAttributes.Footer);
  v18 = v17[1];
  v29 = *v17;
  sub_219270AA8(0, &qword_27CC13338, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes, &type metadata for FollowingNotificationsSectionFooterModel);
  sub_219270B14(v17 + *(v19 + 48), v14, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);
  sub_219270B7C(0);
  (*(v8 + 104))(v10, *MEMORY[0x277D6E750], v7);
  sub_219BE9614();
  v20 = sub_219BF6424();
  (*(v4 + 8))(v6, v31);
  (*(v8 + 8))(v10, v7);
  v21 = __swift_project_boxed_opaque_existential_1((v33 + 56), *(v33 + 80));
  v22 = sub_219BE9494();
  v23 = *v21;
  v24 = OBJC_IVAR____TtC7NewsUI239FollowingNotificationsSectionFooterView_textLabel;
  [*&v22[OBJC_IVAR____TtC7NewsUI239FollowingNotificationsSectionFooterView_textLabel] setFrame_];
  __swift_project_boxed_opaque_existential_1((v23 + 16), *(v23 + 40));
  v25 = *&v22[v24];
  v26 = off_282A4F000;
  type metadata accessor for FollowingNotificationsSectionFooterViewStyler();
  v26(v25, v29, v18);

  sub_219270C10(v14, type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes);

  return v20;
}

double sub_21927069C(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(*(Strong + OBJC_IVAR____TtC7NewsUI236FollowingNotificationsViewController_eventHandler) + 40);
      ObjectType = swift_getObjectType();
      (*(v3 + 80))(ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21927074C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  sub_218774F78((v0 + 22));

  return swift_deallocClassInstance();
}

uint64_t sub_2192707D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_219270840(uint64_t a1)
{
  if (!qword_27CC18270)
  {
    type metadata accessor for FollowingNotificationsDisabledView();
    sub_2186D5894(&qword_27CC18278, type metadata accessor for FollowingNotificationsDisabledView, &unk_219C9262C);
    v1 = sub_219BE94A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC18270);
    }
  }
}

uint64_t sub_2192708D4()
{
  v0 = sub_219BE9834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A52F60(0);
  v4 = *MEMORY[0x277D6E758];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BF6444();
  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_219270840(0);
  v5(v3, v4, v0);
  sub_219BF6444();
  v6(v3, v0);
  sub_219270B7C(0);
  v5(v3, *MEMORY[0x277D6E750], v0);
  sub_219BF6444();
  return (v6)(v3, v0);
}

void sub_219270AA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_219270B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_219270B7C(uint64_t a1)
{
  if (!qword_27CC18280)
  {
    type metadata accessor for FollowingNotificationsSectionFooterView();
    sub_2186D5894(&qword_27CC18288, type metadata accessor for FollowingNotificationsSectionFooterView, &unk_219CBE6C0);
    v1 = sub_219BE94A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC18280);
    }
  }
}

uint64_t sub_219270C10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219270DFC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a3;
  v9 = a1;
  sub_219BDCDE4();
  *(swift_allocObject() + 16) = v8;
  v10 = v8;
  sub_219BDD154();

  *(swift_allocObject() + 16) = v10;
  v11 = v10;
  sub_219BDCD84();
}

uint64_t sub_219270F10(void *a1, uint64_t a2, char *a3)
{
  v101 = a1;
  sub_218846D60(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = &v94 - v7;
  v106 = sub_219BF3344();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v107 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDCAF4();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&a3[OBJC_IVAR____TtC7NewsUI214ChannelTagView_iconImageView];
  [v14 setImage_];
  v102 = *&a3[OBJC_IVAR____TtC7NewsUI214ChannelTagView_nameLabel];
  [v102 setAttributedText_];
  sub_218718690(a1, &v115);
  [a3 setIsAccessibilityElement_];
  [v14 setIsAccessibilityElement_];
  v103 = *&a3[OBJC_IVAR____TtC7NewsUI214ChannelTagView_accessoryButton];
  [v103 setIsAccessibilityElement_];
  [a3 setFrame_];
  [v14 &selRef_minShortcutsOnboardCount];
  v15 = [v14 layer];
  v16 = sub_219BF0CD4();
  v110 = *MEMORY[0x277D6D198];
  v17 = *(v10 + 104);
  v108 = v10 + 104;
  v109 = v17;
  v99 = v9;
  v17(v13);
  v98 = v16;
  sub_219BF0CC4();
  v19 = v18;
  v100 = *(v10 + 8);
  v100(v13, v9);
  [v15 setCornerRadius_];

  v95 = v14;
  v20 = [v14 layer];
  [v20 setCornerCurve_];

  v111 = a3;
  v21 = *&a3[OBJC_IVAR____TtC7NewsUI214ChannelTagView_separatorView];
  v22 = objc_opt_self();
  v23 = [v22 separatorColor];
  sub_219BE60D4();
  [v21 setFrame_];
  v24 = v101[6];
  v112 = v101[5];
  v97 = v24;
  sub_218846D60(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v26 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v27 = v26;
  v94 = v22;
  v28 = [v22 labelColor];
  v29 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 40) = v28;
  v30 = *MEMORY[0x277D740A8];
  *(inited + 64) = v29;
  *(inited + 72) = v30;
  v31 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v32 = v30;
  v33 = sub_219BF6BD4();
  v34 = v99;
  v109(v13, v110, v99);
  v35 = sub_219BF0CB4();

  v36 = v100;
  v100(v13, v34);
  *(inited + 104) = v31;
  *(inited + 80) = v35;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  v37 = v97;
  swift_arrayDestroy();
  v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v39 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_219272358(&qword_280E8E118, type metadata accessor for Key, &unk_219C09A8C);
  v40 = sub_219BF5204();

  v41 = [v38 initWithString:v39 attributes:v40];

  v42 = v104;
  v43 = v102;
  [v102 setAttributedText_];

  [v43 setFrame_];
  v101 = *(v42 + 16);
  v44 = *(*__swift_project_boxed_opaque_existential_1(&v115, v116) + 16);
  v109(v13, v110, v34);
  swift_unknownObjectRetain();
  sub_219BF0CC4();
  v46 = v45;
  v36(v13, v34);
  v47 = [v43 text];
  if (v47)
  {
    v48 = v47;
    v49 = sub_219BF5414();
    v37 = v50;
  }

  else
  {

    v49 = v112;
  }

  v51 = [*(*__swift_project_boxed_opaque_existential_1(&v115 v116) + 16)];
  v52 = v111;
  v53 = v106;
  v54 = v105;
  if (v51)
  {
    v55 = 0;
  }

  else
  {
    v55 = [v94 secondarySystemFillColor];
  }

  if ([v44 tagType] - 1 >= 2)
  {

    swift_unknownObjectRelease();
  }

  else
  {
    v112 = v49;
    v56 = [v44 groupTitleColor];
    v57 = v101[7];
    swift_unknownObjectRetain();
    v58 = v37;
    if (v56)
    {
      v59 = [v56 ne_color];

      type metadata accessor for TopicColorFeedNavImageStyler();
      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      *(v60 + 24) = v57;
      v57 = v60;
    }

    swift_unknownObjectRetain();
    v61 = v95;
    v62 = [v95 traitCollection];
    [v62 displayScale];
    v64 = v63;

    v65 = type metadata accessor for FeedNavImageAssetHandle();
    v66 = objc_allocWithZone(v65);
    v67 = &v66[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
    *v67 = 0;
    *(v67 + 1) = 0;
    *&v66[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
    *&v66[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = v44;
    v68 = swift_unknownObjectRetain();
    v69 = sub_219352488(v68);
    v70 = &v66[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
    *v70 = v69;
    v70[1] = v71;
    v72 = &v66[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
    *v72 = v46;
    v72[1] = v46;
    *&v66[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v57;
    *&v66[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v64;
    *&v66[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = v55;
    v113.receiver = v66;
    v113.super_class = v65;
    v55 = v55;
    v73 = objc_msgSendSuper2(&v113, sel_init);
    sub_218A462FC(v73, v61, v112, v58, 1, v46, v46, 1.0);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v52 = v111;
    v53 = v106;
  }

  v74 = v103;
  [v103 setFrame_];
  [v74 accessibilityActivationPoint];
  [v52 setAccessibilityActivationPoint_];
  v75 = *MEMORY[0x277D765D0];
  v76 = [v52 accessibilityTraits];
  if ((v75 & ~v76) != 0)
  {
    v77 = v75;
  }

  else
  {
    v77 = 0;
  }

  [v52 setAccessibilityTraits_];
  v78 = *(a2 + 128);
  v79 = v107;
  if (v78 == 5)
  {
    [v74 setHidden_];
  }

  else
  {
    v80 = v53;
    v81 = qword_280EDB508;
    v82 = v74[qword_280EDB508];
    v74[qword_280EDB508] = v78;
    sub_219BE61D4();
    if (v82 != v74[v81] || !*&v74[qword_280F620E8] || !*&v74[qword_280F620E0])
    {
      sub_218EC2D64(0);
    }

    [v74 setHidden_];
    __swift_project_boxed_opaque_existential_1(&v115, v116);
    swift_unknownObjectRetain();
    sub_219BF3324();
    sub_219BEAF14();
    v83 = *(v54 + 16);
    v84 = v96;
    v83(v96, v79, v53);
    v85 = *(v54 + 56);
    v86 = v53;
    v85(v84, 0, 1, v53);
    sub_219BE89C4();

    sub_218AD7DC0(v84);
    v87 = v111;
    v88 = sub_219271F60(v114[0]);
    if (*(a2 + 129))
    {
      sub_219BEAF14();
      v83(v84, v107, v80);
      v85(v84, 0, 1, v80);
      v89 = swift_allocObject();
      swift_weakInit();
      v90 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v91 = swift_allocObject();
      *(v91 + 16) = v89;
      *(v91 + 24) = v90;
      sub_218E14F94();
      sub_219BE89B4();

      sub_218AD7DC0(v84);
      __swift_project_boxed_opaque_existential_1(v114, v114[3]);
      v92 = *&v87[OBJC_IVAR____TtC7NewsUI214ChannelTagView_token];
      sub_219BE1A04();

      (*(v105 + 8))(v107, v86);
      __swift_destroy_boxed_opaque_existential_1(v114);
    }

    else
    {
      (*(v105 + 8))(v107, v80, v88);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(&v115);
}

double sub_219271C98(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      sub_219271F60(v3);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_219271D3C(void *a1, uint64_t a2)
{
  sub_218846D60(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-v4];
  v6 = sub_219BF3344();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unknownObjectRetain();
  sub_219BF3324();
  sub_219BEAF14();
  (*(v7 + 16))(v5, v9, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_219BE89C4();

  sub_218AD7DC0(v5);
  v10 = v14 == 2 || (v14 & 1) != 0;
  v11 = sub_219271F60(v10);
  return (*(v7 + 8))(v9, v6, v11);
}

double sub_219271F60(unsigned __int8 a1)
{
  v2 = a1;
  v3 = sub_219BE5C64();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v2 == 2 || (a1 & 1) != 0)
  {
    (*(v4 + 104))(v7, *MEMORY[0x277D6D340], v3, v5);
    type metadata accessor for AccessoryButton(0);
    sub_219272358(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
    sub_219BEB694();
    (*(v4 + 8))(v7, v3);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = objc_opt_self();
    v10 = [v9 bundleForClass_];
    sub_219BDB5E4();

    v11 = [v9 bundleForClass_];
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277D6D338], v3, v5);
    type metadata accessor for AccessoryButton(0);
    sub_219272358(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
    sub_219BEB694();
    (*(v4 + 8))(v7, v3);
    type metadata accessor for Localized();
    v12 = swift_getObjCClassFromMetadata();
    v13 = objc_opt_self();
    v14 = [v13 bundleForClass_];
    sub_219BDB5E4();

    v11 = [v13 bundleForClass_];
  }

  sub_219BDB5E4();

  return result;
}

uint64_t sub_219272358(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_enum_tag_for_layout_string_7NewsUI237MagazineTodayFeedGroupConfigProcessorOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2192723C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_219272414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = ~a2;
    }
  }

  return result;
}

uint64_t sub_219272468(void *a1, uint64_t a2, char a3)
{
  sub_21927298C(0, &qword_280E8C340, MEMORY[0x277D84538]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192728E4();
  sub_219BF7B44();
  v12 = a2;
  v13 = a3;
  sub_2192729F0();
  sub_219BF77E4();
  return (*(v8 + 8))(v10, v7);
}

void sub_2192725EC(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F737365636F7270 && a2 == 0xE900000000000072)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_21927267C(uint64_t a1)
{
  v2 = sub_2192728E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2192726B8(uint64_t a1)
{
  v2 = sub_2192728E4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_2192726F4@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_219272744(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

void *sub_219272744(void *a1)
{
  sub_21927298C(0, &qword_280E8CA38, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2192728E4();
  sub_219BF7B34();
  if (!v1)
  {
    sub_219272938();
    sub_219BF76E4();
    (*(v5 + 8))(v7, v4);
    v8 = v10;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_2192728E4()
{
  result = qword_280EA5FD0;
  if (!qword_280EA5FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5FD0);
  }

  return result;
}

unint64_t sub_219272938()
{
  result = qword_280E99450;
  if (!qword_280E99450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99450);
  }

  return result;
}

void sub_21927298C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2192728E4();
    v7 = a3(a1, &type metadata for MagazineTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2192729F0()
{
  result = qword_280E99458;
  if (!qword_280E99458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E99458);
  }

  return result;
}

unint64_t sub_219272A58()
{
  result = qword_27CC18290;
  if (!qword_27CC18290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18290);
  }

  return result;
}

unint64_t sub_219272AB0()
{
  result = qword_280EA5FC0;
  if (!qword_280EA5FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5FC0);
  }

  return result;
}

unint64_t sub_219272B08()
{
  result = qword_280EA5FC8;
  if (!qword_280EA5FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA5FC8);
  }

  return result;
}

void *sub_219272BB4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE81F0, MEMORY[0x277D2EB98], 1);
    result = sub_219BE1E34();
    if (v14)
    {
      v10 = a2(0);
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      v12 = sub_21875F93C(&v13, v11 + 24);
      a4[3] = v10;
      result = a3(v12);
      a4[4] = result;
      *a4 = v11;
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

uint64_t sub_219272D58@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v12 = result;
    v13 = a2(0);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    a6[3] = v13;
    result = sub_2186CBC0C(a3, a4, a5);
    a6[4] = result;
    *a6 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219272E54(void *a1, unsigned int *a2, uint64_t (*a3)(void))
{
  v6 = sub_219BDF604();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v11 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE81F0, MEMORY[0x277D2EB98], 1);
    result = sub_219BE1E34();
    if (v15)
    {
      (*(v7 + 104))(v9, *a2, v6);
      a3(0);
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      sub_21875F93C(&v14, v12 + 24);
      (*(v7 + 32))(v12 + qword_280EA7470, v9, v6);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_219273098@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3490, MEMORY[0x277D2D160], 1);
  result = sub_219BE1E34();
  if (!v12[3])
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EBAD0(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6654(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEF334();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_218718690(a1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for FeedVideoAdProviderFactory(0);
    v8 = objc_allocWithZone(v7);
    sub_218718690(v11, &v8[qword_280EBB6E8]);
    *&v8[qword_280EBB6F0] = v5;
    *&v8[qword_280EBB6F8] = v6;
    sub_218718690(v12, v10);
    v9 = sub_219BEC2F4();
    __swift_destroy_boxed_opaque_existential_1(v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
    a2[3] = v7;
    result = sub_2186CBC0C(&qword_280EBB6E0, type metadata accessor for FeedVideoAdProviderFactory, &unk_219CC3770);
    a2[4] = result;
    *a2 = v9;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_21927335C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for BundleSubscriberAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v5 = result;
  if (qword_280EE3530 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(&qword_280EA3CB0, type metadata accessor for BundleSubscriberAdSegmentProvider, &unk_219CC63F0);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ConfigurationAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_39;
  }

  v6 = result;
  if (qword_280EE3548 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(qword_280EAD308, type metadata accessor for ConfigurationAdSegmentProvider, &unk_219C72A38);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for FollowerAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_40;
  }

  if (qword_280EE3508 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(qword_280EBEC90, type metadata accessor for FollowerAdSegmentProvider, &unk_219CBE1AC);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for NotificationAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_41;
  }

  if (qword_280EE3550 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(qword_280EAFBC8, type metadata accessor for NotificationAdSegmentProvider, &unk_219C8F4F0);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for OfferAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_42;
  }

  if (qword_280EE3518 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(qword_280EC75D0, type metadata accessor for OfferAdSegmentProvider, &unk_219C675C0);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_43;
  }

  v7 = [result possiblyUnfetchedAppConfiguration];
  if ([v7 respondsToSelector_])
  {
    v8 = [v7 enableTabiAdSegments];
    swift_unknownObjectRelease();
    if ((v8 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      sub_219274F40(0, v9);
      result = sub_219BE1E24();
      if (!result)
      {
LABEL_48:
        __break(1u);
        return result;
      }

      v10 = result;
      if (qword_280EE3510 != -1)
      {
        swift_once();
      }

      v11 = &unk_280EC3D98;
      v12 = sub_219274F40;
      goto LABEL_28;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219274FD4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v10 = result;
  if (qword_280EE3510 != -1)
  {
    swift_once();
  }

  v11 = &unk_27CC18298;
  v12 = sub_219274FD4;
LABEL_28:
  sub_2186CBC0C(v11, v12, &unk_219CCBF28);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SubscriberAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (qword_280EE3558 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(qword_280EB6790, type metadata accessor for SubscriberAdSegmentProvider, &unk_219CB8E7C);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for ExternalSubscriberAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_45;
  }

  if (qword_280EE3520 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(qword_280E9DCE8, type metadata accessor for ExternalSubscriberAdSegmentProvider, &unk_219C12444);
  sub_219BEC154();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WebAccessOptInAdSegmentProvider();
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_46;
  }

  if (qword_280EE3540 != -1)
  {
    swift_once();
  }

  sub_2186CBC0C(qword_280EA7560, type metadata accessor for WebAccessOptInAdSegmentProvider, &unk_219C67510);
  sub_219BEC154();

  return swift_unknownObjectRelease();
}

void sub_219273D54(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SubscriberStatusConditionProvider();
  v3 = sub_219BE1E24();
  if (v3)
  {
    sub_2186CBC0C(&qword_280EA1788, type metadata accessor for SubscriberStatusConditionProvider, &unk_219C9BF18);
    sub_219BEC414();
  }

  else
  {
    __break(1u);
  }
}

void sub_219273F6C(uint64_t a1, void *a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  a3(0);
  if (sub_219BE1E24())
  {
    sub_2186CBC0C(a4, a5, &unk_219C8CB98);
    sub_219BEC444();
  }

  else
  {
    __break(1u);
  }
}

double sub_21927403C()
{
  type metadata accessor for BundleSubscriberAdSegmentProvider();
  sub_219BE2904();

  type metadata accessor for ConfigurationAdSegmentProvider();
  sub_219BE2904();

  type metadata accessor for ExternalSubscriberAdSegmentProvider();
  sub_219BE2904();

  type metadata accessor for FollowerAdSegmentProvider();
  sub_219BE2904();

  type metadata accessor for NotificationAdSegmentProvider();
  sub_219BE2904();

  type metadata accessor for OfferAdSegmentProvider();
  sub_219BE2904();

  sub_219274F40(0, v0);
  sub_219BE2904();

  type metadata accessor for AggregateAdSegmentProvider();
  sub_219BE2904();

  sub_219274FD4(0);
  sub_219BE2904();

  type metadata accessor for SubscriberAdSegmentProvider();
  sub_219BE2904();

  type metadata accessor for WebAccessOptInAdSegmentProvider();
  sub_219BE2904();

  type metadata accessor for SubscriberStatusConditionProvider();
  sub_219BE2904();

  return result;
}

void *sub_2192742D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for BundleSubscriberAdSegmentProvider();
    v4 = objc_allocWithZone(v3);
    v5 = OBJC_IVAR____TtC7NewsUI233BundleSubscriberAdSegmentProvider_needsUpdate;
    v8 = 1;
    sub_219275068();
    swift_allocObject();
    *&v4[v5] = sub_219BE2174();
    *&v4[OBJC_IVAR____TtC7NewsUI233BundleSubscriberAdSegmentProvider_subscriptionManager] = v2;
    v7.receiver = v4;
    v7.super_class = v3;
    swift_unknownObjectRetain();
    v6 = objc_msgSendSuper2(&v7, sel_init);
    [v2 addObserver_];

    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2192743F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for ConfigurationAdSegmentProvider();
    v4 = objc_allocWithZone(v3);
    v5 = OBJC_IVAR____TtC7NewsUI230ConfigurationAdSegmentProvider_needsUpdate;
    v8 = 1;
    sub_219275068();
    swift_allocObject();
    *&v4[v5] = sub_219BE2174();
    *&v4[OBJC_IVAR____TtC7NewsUI230ConfigurationAdSegmentProvider_appConfigurationManager] = v2;
    v7.receiver = v4;
    v7.super_class = v3;
    swift_unknownObjectRetain();
    v6 = objc_msgSendSuper2(&v7, sel_init);
    [v2 addAppConfigObserver_];

    swift_unknownObjectRelease();
    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219274584(void *a1, uint64_t (*a2)(void), unint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  if (v11)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EC30E0, &protocol descriptor for SubscriptionServiceType, 0);
    result = sub_219BE1E34();
    if (v9)
    {
      a2(0);
      v7 = swift_allocObject();
      sub_219275068();
      swift_allocObject();
      v7[2] = sub_219BE2174();
      v7[3] = v11;
      v7[4] = v12;
      v7[5] = v9;
      v7[6] = v10;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      sub_218711DA4(v8, v9, a3);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

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

void *sub_219274700(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480, MEMORY[0x277D34EA8], 0);
  result = sub_219BE1E34();
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      type metadata accessor for OfferAdSegmentProvider();
      v4 = swift_allocObject();
      sub_219275068();
      swift_allocObject();
      v4[2] = sub_219BE2174();
      v4[3] = v5;
      v4[4] = v6;
      v4[5] = v3;
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_219274848(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &unk_280E8DB88, &protocolRef_FCReadonlyAggregateStoreProviderType);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      v5 = type metadata accessor for AggregateAdSegmentProvider();
      v6 = objc_allocWithZone(v5);
      v7 = OBJC_IVAR____TtC7NewsUI226AggregateAdSegmentProvider_needsUpdate;
      v10 = 1;
      sub_219275068();
      swift_allocObject();
      *&v6[v7] = sub_219BE2174();
      v8 = &v6[OBJC_IVAR____TtC7NewsUI226AggregateAdSegmentProvider_readerAdSegmentLastUpdatedKey];
      *v8 = 0xD00000000000001DLL;
      *(v8 + 1) = 0x8000000219D153E0;
      *&v6[OBJC_IVAR____TtC7NewsUI226AggregateAdSegmentProvider_appConfigurationManager] = v3;
      *&v6[OBJC_IVAR____TtC7NewsUI226AggregateAdSegmentProvider_aggregateStoreProvider] = v4;
      v9.receiver = v6;
      v9.super_class = v5;
      return objc_msgSendSuper2(&v9, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2192749D8(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    a2(0);
    result = sub_219BE1E24();
    if (result)
    {
      v8 = result;
      v9 = a3(0);
      v10 = objc_allocWithZone(v9);
      v11 = MEMORY[0x277D85000];
      v12 = &v10[*((*MEMORY[0x277D85000] & *v10) + 0x68)];
      *v12 = 0xD00000000000001DLL;
      *(v12 + 1) = 0x8000000219D153E0;
      *&v10[*((*v11 & *v10) + 0x60)] = v7;
      *&v10[*((*v11 & *v10) + 0x70)] = v8;
      v13.receiver = v10;
      v13.super_class = v9;
      return objc_msgSendSuper2(&v13, sel_init);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_219274B78(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E1C0, 0x277D31210);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
    result = sub_219BE1E34();
    if (v9)
    {
      a2(0);
      swift_allocObject();
      v8 = (a3)(v7);

      swift_unknownObjectRelease();
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_219274CA0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E1C0, 0x277D31210);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for WebAccessOptInAdSegmentProvider();
    v3 = swift_allocObject();
    sub_219275068();
    swift_allocObject();
    *(v3 + 16) = sub_219BE2174();
    *(v3 + 24) = v2;
    v4 = objc_opt_self();
    v5 = v2;
    v6 = [v4 defaultCenter];
    [v6 addObserver:v3 selector:sel_webAccessOptInListChanged name:*MEMORY[0x277D30D48] object:0];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_219274DBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      v5 = objc_allocWithZone(type metadata accessor for SubscriberStatusConditionProvider());
      return sub_2196CE088(v3, v4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219274F40(uint64_t a1, __n128 a2)
{
  if (!qword_280EC3D90)
  {
    v3 = type metadata accessor for AggregateAdSegmentProvider();
    v4 = sub_2186CBC0C(qword_280EBC7A8, type metadata accessor for AggregateAdSegmentProvider, &unk_219CCBEE8);
    v6 = type metadata accessor for ReaderAdSegmentProvider(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_280EC3D90);
    }
  }
}

void sub_219274FD4(uint64_t a1)
{
  if (!qword_280EC3DA0[0])
  {
    v2 = sub_219BE4FC4();
    v3 = sub_2186CBC0C(&unk_280EE6128, MEMORY[0x277D34BB8], MEMORY[0x277D34BB0]);
    v5 = type metadata accessor for ReaderAdSegmentProvider(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_280EC3DA0);
    }
  }
}

void sub_219275068()
{
  if (!qword_280EE7AB8)
  {
    v0 = sub_219BE21C4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7AB8);
    }
  }
}

void __swiftcall SearchMoreModule.createViewController()(UIViewController *__return_ptr retstr)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for SearchMoreViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE1E04();

  swift_unownedRelease();
  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_2192751EC(void *a1, void *a2)
{
  v4 = sub_219BE15B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  (*(v5 + 104))(v7, *MEMORY[0x277D2F480], v4);
  sub_219BDD0F4();
  (*(v5 + 8))(v7, v4);

  sub_219BDD274();
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  __swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
  sub_219BEC134();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  if (qword_27CC08670 != -1)
  {
    swift_once();
  }

  v8 = sub_219BEBC84();
  __swift_project_value_buffer(v8, qword_27CCD8C90);
  sub_21927560C();
  sub_219BEC144();

  sub_218BDE5B0();
  sub_219BE1BA4();
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t SearchMoreModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  return v0;
}

uint64_t SearchMoreModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_2192754F0()
{
  v1 = *v0;
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  type metadata accessor for SearchMoreViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE1E04();

  result = swift_unownedRelease();
  if (v2)
  {
    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_21927560C()
{
  result = qword_280EE34B8;
  if (!qword_280EE34B8)
  {
    sub_219BEBC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE34B8);
  }

  return result;
}

double sub_21927568C(uint64_t a1, double a2, double a3, double a4)
{
  v8 = type metadata accessor for ChannelTagLayoutOptions(0);
  v9 = *(a1 + v8[5]);
  sub_219BE7FF4();
  sub_219BF6034();
  v11 = a2 - v10;
  if (v9 == 5)
  {
    v12 = v11 - a3;
    v13 = *(a1 + v8[9]);
  }

  else
  {
    v13 = *(a1 + v8[9]);
    v12 = v11 - *(a1 + v8[8]) - v13 - a3;
  }

  return v12 - v13 - a4;
}

CGFloat sub_219275728@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v6 = COERCE_DOUBLE(sub_219BDCAF4());
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = COERCE_DOUBLE(sub_219BF0CD4());
  v11 = *(v7 + 104);
  LODWORD(width) = *MEMORY[0x277D6D198];
  *&y = v7 + 104;
  height = *&v11;
  v11(v9);
  v106 = *&v10;
  sub_219BF0CC4();
  v13 = v12;
  v14 = *(v7 + 8);
  v107 = *&v6;
  x = *&v14;
  v14(v9, v6);
  sub_219BE8004();
  v16 = v15;
  sub_219BE7FF4();
  v18 = v16 - v17;
  v19 = sub_21927568C(a2, v16 - v17, v13, 0.0);
  v20 = type metadata accessor for ChannelTagLayoutOptions(0);
  v93 = *(a2 + v20[9]);
  v98 = v13;
  v21 = v13 + v93;
  v22 = *(a2 + v20[5]);
  if (v22 != 5)
  {
    sub_219BE7FF4();
    v21 = v21 + v23 + *(a2 + v20[8]);
  }

  v104 = v20;
  v105 = v22;
  v24 = COERCE_DOUBLE([*(*__swift_project_boxed_opaque_existential_1(a1 a1[3]) + 16)]);
  if (v24 == 0.0)
  {
    sub_219BF5414();
    v24 = COERCE_DOUBLE(sub_219BF53D4());
  }

  v97 = v24;
  sub_21899E550(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v26 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v27 = objc_opt_self();
  v28 = v26;
  v29 = [v27 labelColor];
  v30 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 40) = v29;
  v31 = *MEMORY[0x277D740A8];
  *(inited + 64) = v30;
  *(inited + 72) = v31;
  v32 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v33 = v31;
  v34 = sub_219BF6BD4();
  v35 = v107;
  (*&height)(v9, LODWORD(width), *&v107);
  v36 = sub_219BF0CB4();

  (*&x)(v9, COERCE_DOUBLE(*&v35));
  *(inited + 104) = v32;
  *(inited + 80) = v36;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v37 = objc_allocWithZone(MEMORY[0x277CCA898]);
  type metadata accessor for Key(0);
  sub_21899E604();
  v38 = sub_219BF5204();

  v39 = v97;
  v40 = [v37 initWithString:*&v97 attributes:v38];

  [v40 boundingRectWithSize:3 options:0 context:{v19, 1.79769313e308}];
  v41 = v104;
  v42 = *(a2 + v104[10]);
  v108.origin.x = v21;
  v108.origin.y = v42;
  v109 = CGRectIntegral(v108);
  x = v109.origin.x;
  y = v109.origin.y;
  width = v109.size.width;
  height = v109.size.height;
  v110.size.height = v42 + CGRectGetMaxY(v109);
  v110.origin.x = 0.0;
  v110.origin.y = 0.0;
  v110.size.width = v18;
  v111 = CGRectIntegral(v110);
  v43 = v111.origin.x;
  v44 = v111.origin.y;
  v45 = v111.size.width;
  v46 = v111.size.height;
  v47 = v105;
  v99 = v18;
  if (v105 == 5)
  {
    v97 = 0.0;
    sub_219BE7FF4();
    v49 = v48;
    v96 = 0.0;
    v95 = 0.0;
    v94 = 0.0;
  }

  else
  {
    MaxY = CGRectGetMaxY(v111);
    v51 = (a2 + v41[8]);
    v112.size.width = *v51;
    v112.size.height = v51[1];
    v112.origin.y = MaxY * 0.5 - v112.size.height * 0.5;
    v112.origin.x = 0.0;
    v113 = CGRectIntegral(v112);
    v52 = v113.origin.x;
    v53 = v113.origin.y;
    v54 = v113.size.width;
    v55 = v113.size.height;
    sub_219BE7FF4();
    v107 = v56;
    v94 = v52;
    v114.origin.x = v52;
    v95 = v53;
    v114.origin.y = v53;
    v96 = v54;
    v114.size.width = v54;
    v97 = v55;
    v114.size.height = v55;
    v49 = v107 + CGRectGetMaxX(v114);
  }

  v57 = v43;
  v115.origin.x = v43;
  v58 = v44;
  v115.origin.y = v44;
  v106 = v45;
  v115.size.width = v45;
  v107 = v46;
  v115.size.height = v46;
  v59 = CGRectGetMaxY(v115);
  v116.size.width = v98;
  v116.origin.y = v59 * 0.5 - v98 * 0.5;
  v116.origin.x = v49;
  v116.size.height = v98;
  v117 = CGRectIntegral(v116);
  v60 = v117.origin.x;
  v61 = v117.origin.y;
  v62 = v117.size.width;
  v63 = v117.size.height;
  if (*(a2 + v41[7]) == 1)
  {
    sub_219BE7FF4();
    v65 = v93 * 0.5 + v64 + *(a2 + v41[8]);
  }

  else
  {
    MinX = CGRectGetMinX(v117);
    sub_219BE7FF4();
    v65 = MinX - v67;
  }

  v98 = v65;
  v118.origin.x = v60;
  v118.origin.y = v61;
  v118.size.width = v62;
  v118.size.height = v63;
  v68 = CGRectGetMinX(v118);
  v119.origin.x = v57;
  v69 = v58;
  v119.origin.y = v58;
  v119.size.width = v106;
  v119.size.height = v107;
  v70 = CGRectGetHeight(v119) + -0.5;
  v120.origin.x = v60;
  v120.origin.y = v61;
  v120.size.width = v62;
  v120.size.height = v63;
  v71 = v99 - CGRectGetMinX(v120);
  v72 = *(a2 + v41[11]) == 0;
  if (*(a2 + v41[11]))
  {
    v73 = 0.0;
  }

  else
  {
    v73 = v68;
  }

  v99 = v73;
  if (v72)
  {
    v74 = v70;
  }

  else
  {
    v74 = 0.0;
  }

  v93 = v74;
  if (!v72)
  {
    v71 = 0.0;
  }

  v92 = v71;
  v75 = 0.5;
  if (!v72)
  {
    v75 = 0.0;
  }

  v91 = v75;
  v76 = *(a2 + v41[6]);
  sub_219BF6014();
  v104 = v77;
  v79 = v78;
  v81 = v80;
  v98 = v82;

  *a3 = v57;
  *(a3 + 8) = v69;
  v83 = v107;
  *(a3 + 16) = v106;
  *(a3 + 24) = v83;
  *(a3 + 32) = v60;
  *(a3 + 40) = v61;
  *(a3 + 48) = v62;
  *(a3 + 56) = v63;
  v84 = y;
  *(a3 + 64) = x;
  *(a3 + 72) = v84;
  v85 = height;
  *(a3 + 80) = width;
  *(a3 + 88) = v85;
  v86 = v95;
  *(a3 + 96) = v94;
  *(a3 + 104) = v86;
  v87 = v97;
  *(a3 + 112) = v96;
  *(a3 + 120) = v87;
  *(a3 + 128) = v47;
  *(a3 + 129) = v76;
  v88 = v93;
  *(a3 + 136) = v99;
  *(a3 + 144) = v88;
  v89 = v91;
  *(a3 + 152) = v92;
  *(a3 + 160) = v89;
  *(a3 + 168) = v104;
  *(a3 + 176) = v79;
  result = v98;
  *(a3 + 184) = v81;
  *(a3 + 192) = result;
  return result;
}

void sub_219275F48(uint64_t a1@<X8>)
{
  v2 = v1;
  v72 = a1;
  v3 = sub_219BE4894();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE4904();
  v63 = *(v5 - 8);
  v64 = v5;
  MEMORY[0x28223BE20](v5);
  v70 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE4034();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v69 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE3F94();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v66 = (&v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_219BE3D54();
  v67 = *(v11 - 8);
  v68 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v71 = &v55 - v14;
  v15 = sub_219BE3D64();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21883ECD4(0, &qword_280EE6200, MEMORY[0x277D35380]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v55 - v20;
  v22 = sub_219BE48F4();
  v23 = *(v22 - 8);
  *&v24 = MEMORY[0x28223BE20](v22).n128_u64[0];
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [*(v2 + 16) cachedSubscription];
  v28 = [v27 isSubscribed];

  if ((v28 & 1) == 0)
  {
    (*(v63 + 104))(v26, *MEMORY[0x277D35398], v64);
    v33 = *MEMORY[0x277D35390];
    v34 = *(v23 + 104);
    v64 = v26;
    v34(v26, v33, v22);
    swift_getObjectType();
    (*(v16 + 104))(v18, *MEMORY[0x277D34D60], v15);
    sub_219BE3F44();
    (*(v16 + 8))(v18, v15);
    v35 = *(v2 + 80);
    v36 = [v35 configuration];
    if (!v36)
    {
      __break(1u);
      goto LABEL_20;
    }

    v37 = v36;
    v63 = v23;
    v38 = v21;
    if ([v36 respondsToSelector_])
    {
      v39 = [v37 paidBundleConfig];
      swift_unknownObjectRelease();
      v40 = [v39 offeredBundlePurchaseIDs];

      if (v40)
      {
        v41 = sub_219BF5924();

        goto LABEL_11;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v41 = MEMORY[0x277D84F90];
LABEL_11:
    v42 = v71;
    sub_219276848(v38, v41, v71);
    sub_219BF5414();
    v43 = objc_allocWithZone(MEMORY[0x277D31348]);
    v44 = sub_219BF53D4();

    v45 = sub_219BF53D4();
    v46 = [v43 initWithTagType:0 identifier:v44 name:v45];

    if (v46)
    {
      *v66 = v46;
      (*(v59 + 104))();
      (*(v67 + 16))(v65, v42, v68);
      v47 = v64;
      sub_219BE48D4();
      sub_219BE48B4();
      (*(v61 + 104))(v69, *MEMORY[0x277D34EF0], v62);
      sub_219BE48E4();
      v48 = [v35 &selRef_shadowAgedPersonalizationScore];
      if (v48)
      {
        v49 = v48;

        if ([v49 respondsToSelector_])
        {
          v50 = v63;
          v51 = [v49 paidBundleConfig];
          swift_unknownObjectRelease();
          v52 = [v51 offeredBundlePurchaseIDsMap];

          v53 = v72;
          if (v52)
          {
            sub_219BF5214();

LABEL_18:
            (*(v57 + 104))(v56, *MEMORY[0x277D35388], v58);
            sub_219BE3CD4();
            (*(v67 + 8))(v71, v68);
            sub_219276ED0(v38, &qword_280EE6200, MEMORY[0x277D35380]);
            (*(v50 + 8))(v47, v22);
            v54 = sub_219BE3D34();
            (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
            return;
          }
        }

        else
        {
          v50 = v63;
          swift_unknownObjectRelease();
          v53 = v72;
        }

        sub_2194B0E30(MEMORY[0x277D84F90]);
        goto LABEL_18;
      }

LABEL_21:
      __break(1u);
      return;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v29 = sub_219BE3D34();
  v30 = *(*(v29 - 8) + 56);
  v31 = v29;
  v32 = v72;

  v30(v32, 1, 1, v31);
}

uint64_t sub_219276848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v39 = a2;
  sub_21883ECD4(0, &qword_280EE6370, MEMORY[0x277D35050]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  sub_21883ECD4(0, &qword_280EE6200, MEMORY[0x277D35380]);
  MEMORY[0x28223BE20](v8 - 8);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = sub_219BE4864();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  sub_219276DD4(a1, v15);
  v21 = *(v17 + 48);
  if (v21(v15, 1, v16) == 1)
  {
    sub_219276ED0(v15, &qword_280EE6200, MEMORY[0x277D35380]);
LABEL_5:
    v24 = v20;
    goto LABEL_6;
  }

  v38 = a3;
  v37 = *(v17 + 32);
  v37(v19, v15, v16);
  sub_219BE47F4();
  v22 = sub_219BE4304();
  v23 = (*(*(v22 - 8) + 48))(v7, 1, v22);
  sub_219276ED0(v7, &qword_280EE6370, MEMORY[0x277D35050]);
  if (v23 == 1)
  {
    (*(v17 + 8))(v19, v16);
    a3 = v38;
    goto LABEL_5;
  }

  if ((sub_219BE47C4() & 1) == 0)
  {
    v34 = v38;
    v37(v38, v19, v16);
    v35 = *MEMORY[0x277D34D48];
    v36 = sub_219BE3D54();
    return (*(*(v36 - 8) + 104))(v34, v35, v36);
  }

  v24 = v20;
  (*(v17 + 8))(v19, v16);
  a3 = v38;
LABEL_6:
  *a3 = v39;
  sub_219276DD4(v24, v12);
  v25 = v21(v12, 1, v16);

  v26 = v40;
  if (v25 == 1)
  {
    sub_219276ED0(v12, &qword_280EE6200, MEMORY[0x277D35380]);
    v27 = 0;
  }

  else
  {
    v28 = sub_219BE47A4();
    (*(v17 + 8))(v12, v16);
    v27 = v28 & 1;
  }

  a3[8] = v27;
  sub_219276E54(0);
  v30 = *(v29 + 64);
  sub_219276DD4(v24, v26);
  if (v21(v26, 1, v16) == 1)
  {
    sub_219BE47B4();
    if (v21(v26, 1, v16) != 1)
    {
      sub_219276ED0(v26, &qword_280EE6200, MEMORY[0x277D35380]);
    }
  }

  else
  {
    (*(v17 + 32))(&a3[v30], v26, v16);
  }

  v31 = *MEMORY[0x277D34D50];
  v32 = sub_219BE3D54();
  return (*(*(v32 - 8) + 104))(a3, v31, v32);
}

uint64_t sub_219276D68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE3D34();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_219276DD4(uint64_t a1, uint64_t a2)
{
  sub_21883ECD4(0, &qword_280EE6200, MEMORY[0x277D35380]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_219276E54(uint64_t a1)
{
  if (!qword_280E8EE30)
  {
    sub_2186D0BA8();
    sub_219BE4864();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280E8EE30);
    }
  }
}

uint64_t sub_219276ED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21883ECD4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t FCChannelUpsellTriggerMethod.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0xD000000000000010;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000012;
  if (a1 != 5)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (a1 != 4)
  {
    v3 = v4;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  if (a1 == 2)
  {
    v1 = 0xD000000000000010;
  }

  if (a1 == 1)
  {
    v1 = 0x6C6C6F4664726168;
  }

  if (a1 <= 2)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219277008(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  sub_2186DCF58(0);
  v3[17] = swift_task_alloc();
  v3[18] = type metadata accessor for ForYouTagFeedGroupKnobs(0);
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2192770CC, 0, 0);
}

void sub_2192770CC()
{
  if ([*(*(v0 + 14) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability) useFood] && (v1 = objc_msgSend(objc_msgSend(*(*(v0 + 14) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor), sel_backingTag), sel_isFoodHub), swift_unknownObjectRelease(), v1))
  {
    v2 = *(v0 + 19);
    v3 = *(v0 + 17);
    v4 = *(v0 + 14);
    sub_219BF6394();
    swift_getObjectType();
    sub_219BF6274();
    swift_unknownObjectRelease();
    sub_218A42648(*(*(*(v4 + 24) + 24) + 16) + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_forYouKnobs, v2);
    sub_219BEF524();
    v5 = *(v0 + 11);
    sub_219BDBD24();
    v6 = sub_219BDBD34();
    v7 = *(v6 - 8);
    (*(v7 + 56))(v3, 0, 1, v6);
    sub_219BEF524();
    v8 = v0[12];
    v9 = 0;
    if ((*(v7 + 48))(v3, 1, v6) != 1)
    {
      v10 = *(v0 + 17);
      v9 = sub_219BDBC04();
      (*(v7 + 8))(v10, v6);
    }

    v11 = [objc_allocWithZone(MEMORY[0x277D30F38]) initWithStartDate:v9 timeInterval:v8];
    *(v0 + 20) = v11;

    if (v11)
    {
      v12 = sub_219BEEA74();
      if (!v12)
      {
        v12 = [objc_opt_self() defaultCachePolicy];
      }

      v13 = v12;
      v14 = *MEMORY[0x277D30BC0];
      *(v0 + 21) = v12;
      *(v0 + 22) = v14;
      v15 = qword_280E8D7F8;
      v16 = v14;
      if (v15 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 16);
      v18 = qword_280F61708;
      *(v0 + 23) = qword_280F61708;
      v19 = v17[60];
      v20 = v17[61];
      __swift_project_boxed_opaque_existential_1(v17 + 57, v19);
      *(v0 + 2) = v5;
      *(v0 + 3) = v11;
      *(v0 + 4) = 1;
      *(v0 + 5) = v13;
      *(v0 + 6) = 135486;
      *(v0 + 7) = v16;
      *(v0 + 8) = v18;
      v21 = *(v20 + 16);
      v22 = v18;
      v26 = (v21 + *v21);
      v23 = swift_task_alloc();
      *(v0 + 24) = v23;
      *v23 = v0;
      v23[1] = sub_219277508;

      v26(v0 + 2, v19, v20);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v24 = *(v0 + 1);
    v25 = MEMORY[0x277D84F90];

    v24(v25);
  }
}

uint64_t sub_219277508(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = sub_2192776CC;
  }

  else
  {
    *(v4 + 208) = a1;
    v5 = sub_219277630;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219277630()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v3 = *(v0 + 168);

  v4 = *(v0 + 208);
  sub_219277848(*(v0 + 152));

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_2192776CC()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);

  v5 = sub_219BF61F4();
  sub_2186F20D4(0);
  v6 = swift_allocObject();
  *(v0 + 72) = 0;
  *(v6 + 16) = xmmword_219C09BA0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 104) = v1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = v7;
  *(v6 + 40) = v8;
  sub_219BE5314("ForYou emitter failed to fetch local food headlines, error=%{public}@", 69, 2, &dword_2186C1000, v2, v5, v6);

  sub_219277848(*(v0 + 152));

  v9 = *(v0 + 8);
  v10 = MEMORY[0x277D84F90];

  return v9(v10);
}

uint64_t sub_219277848(uint64_t a1)
{
  v2 = type metadata accessor for ForYouTagFeedGroupKnobs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PuzzleFeaturedTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E9AC50;
  if (!qword_280E9AC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219277918@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219277E48(0, &qword_280E8C850, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219277DF4();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 38;
    v13 = type metadata accessor for PuzzleFeaturedTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219277B80(void *a1)
{
  v3 = v1;
  sub_219277E48(0, &qword_27CC182A0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219277DF4();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for PuzzleFeaturedTagFeedGroupConfigData(0);
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219277D4C(uint64_t a1)
{
  v2 = sub_219277DF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219277D88(uint64_t a1)
{
  v2 = sub_219277DF4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219277DF4()
{
  result = qword_280E9AC88;
  if (!qword_280E9AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9AC88);
  }

  return result;
}

void sub_219277E48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219277DF4();
    v7 = a3(a1, &type metadata for PuzzleFeaturedTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219277EC0()
{
  result = qword_27CC182A8;
  if (!qword_27CC182A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC182A8);
  }

  return result;
}

unint64_t sub_219277F18()
{
  result = qword_280E9AC78;
  if (!qword_280E9AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9AC78);
  }

  return result;
}

unint64_t sub_219277F70()
{
  result = qword_280E9AC80;
  if (!qword_280E9AC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9AC80);
  }

  return result;
}

uint64_t sub_219277FC4(uint64_t a1, uint64_t a2)
{
  sub_218718690(v2 + 16, v10);
  v5 = *(v2 + 56);
  sub_218718690(v2 + 64, &v11);
  sub_218718690(v2 + 104, &v12);
  sub_218718690(v2 + 144, &v13);
  v9[0] = 0x657461647055;
  v9[1] = 0xE600000000000000;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = v5;
  sub_21927827C(v9, &v8);
  sub_2191396F0(0);
  swift_allocObject();
  sub_2192782D8();
  swift_unknownObjectRetain();

  v6 = sub_219BE6E64();
  sub_21927832C(v9);
  return v6;
}

uint64_t sub_2192780BC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  return swift_deallocClassInstance();
}

unint64_t sub_21927813C()
{
  result = qword_280EBAB50;
  if (!qword_280EBAB50)
  {
    type metadata accessor for PuzzleContinuePlayingModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBAB50);
  }

  return result;
}

uint64_t sub_219278194(uint64_t a1, uint64_t a2)
{
  sub_218718690(*v2 + 16, v9);
  v8[0] = 0x6D726177657250;
  v8[1] = 0xE700000000000000;
  v9[5] = a1;
  v9[6] = a2;
  sub_219278380(v8, &v7);
  sub_2191396F0(0);
  swift_allocObject();
  sub_2192783DC();

  v5 = sub_219BE6E64();
  sub_219278430(v8);
  return v5;
}

unint64_t sub_2192782D8()
{
  result = qword_27CC182B0;
  if (!qword_27CC182B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC182B0);
  }

  return result;
}

unint64_t sub_2192783DC()
{
  result = qword_280E93AC8[0];
  if (!qword_280E93AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E93AC8);
  }

  return result;
}

uint64_t sub_2192784AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2192789D8(0, &qword_27CC182B8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219278984();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for TagsSearchMoreFeedGroupConfigData(0) + 20)) = 2;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219278710(void *a1)
{
  v3 = v1;
  sub_2192789D8(0, &qword_27CC182C8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219278984();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for TagsSearchMoreFeedGroupConfigData(0) + 20));
    v11[13] = 1;
    sub_21897C858();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2192788DC(uint64_t a1)
{
  v2 = sub_219278984();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219278918(uint64_t a1)
{
  v2 = sub_219278984();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219278984()
{
  result = qword_27CC182C0;
  if (!qword_27CC182C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC182C0);
  }

  return result;
}

void sub_2192789D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219278984();
    v7 = a3(a1, &type metadata for TagsSearchMoreFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219278A50()
{
  result = qword_27CC182D0;
  if (!qword_27CC182D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC182D0);
  }

  return result;
}

unint64_t sub_219278AA8()
{
  result = qword_27CC182D8;
  if (!qword_27CC182D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC182D8);
  }

  return result;
}

unint64_t sub_219278B00()
{
  result = qword_27CC182E0;
  if (!qword_27CC182E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC182E0);
  }

  return result;
}

uint64_t sub_219278B54()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC934();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v9[1] = 0;
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC182E8 = result;
  return result;
}

uint64_t sub_219278D44()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC934();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D098], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A8], v0);
  v9[15] = 0;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC182F0 = result;
  return result;
}

uint64_t sub_219278F34()
{
  sub_219BDC984();
  swift_allocObject();
  result = sub_219BDC974();
  qword_27CC182F8 = result;
  return result;
}

uint64_t sub_219278F94(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (qword_27CC084A0 != -1)
  {
    swift_once();
  }

  return sub_219BDC924();
}

uint64_t sub_219279054()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[1] = MEMORY[0x277D84F90];
  sub_21876BDF8(0);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC18300 = result;
  return result;
}

uint64_t sub_219279234()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ShortcutsConfigResource.init(categories:)(MEMORY[0x277D84F90]);
  v8 = *MEMORY[0x277D6D0A8];
  v9 = *(v5 + 104);
  v11[0] = v11[2];
  v9(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v11[1] = v11[0];
  sub_219279FB8(0, &qword_27CC18360, sub_21927A018, &type metadata for ShortcutsConfigResource);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC18308 = result;
  return result;
}

uint64_t sub_219279458()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[1] = MEMORY[0x277D84F90];
  sub_21876BDF8(0);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC18310 = result;
  return result;
}

uint64_t sub_219279638()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219279FB8(0, &qword_27CC18338, sub_219279E94, &type metadata for ShortcutsCustomizeAffordance.Position);
  v10[15] = 1;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_219279EE8(0);
  sub_21876BEFC(0, &qword_27CC18350, &type metadata for ShortcutsCustomizeAffordance.Position, MEMORY[0x277D6D0B0]);
  *(swift_allocObject() + 16) = xmmword_219C09EC0;
  v10[14] = 1;
  sub_219BDC954();
  v10[13] = 0;
  sub_219BDC954();
  sub_219279F64();
  result = sub_219BDC9B4();
  qword_27CC18318 = result;
  return result;
}

uint64_t static Settings.Shortcuts.ConfigOverrides.customizeAffordancePosition.getter()
{
  if (qword_27CC084C8 != -1)
  {
    swift_once();
  }
}

uint64_t Settings.Shortcuts.ConfigOverrides.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_219BDC934();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v8, a4, v5);
  v9 = sub_219BDC824();
  (*(v6 + 8))(a4, v5);
  return v9;
}

uint64_t Settings.Shortcuts.ConfigOverrides.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_219BDC934();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  (*(v6 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5, v7);
  v9 = sub_219BDC824();
  (*(v6 + 8))(a4, v5);
  return v9;
}

uint64_t Settings.Shortcuts.ConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C7NewsUI2E7ModulesV10SearchFeedV15ConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_219279C08()
{
  v0 = sub_219BDC944();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDC934();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.Shortcuts.ConfigOverrides(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D098], v4);
  *v3 = sub_219BF5414();
  v3[1] = v8;
  (*(v1 + 104))(v3, *MEMORY[0x277D6D0A0], v0);
  result = sub_219BDC814();
  qword_27CC18320 = result;
  return result;
}

uint64_t type metadata accessor for Settings.Shortcuts.ConfigOverrides(uint64_t a1)
{
  result = qword_27CC18328;
  if (!qword_27CC18328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_219279E94()
{
  result = qword_27CC18340;
  if (!qword_27CC18340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18340);
  }

  return result;
}

void sub_219279EE8(uint64_t a1)
{
  if (!qword_27CC18348)
  {
    sub_21876BEFC(255, &qword_27CC18350, &type metadata for ShortcutsCustomizeAffordance.Position, MEMORY[0x277D6D0B0]);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC18348);
    }
  }
}

unint64_t sub_219279F64()
{
  result = qword_27CC18358;
  if (!qword_27CC18358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18358);
  }

  return result;
}

void sub_219279FB8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_219BDC9E4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_21927A018()
{
  result = qword_27CC18368;
  if (!qword_27CC18368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18368);
  }

  return result;
}

id sub_21927A06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21927A2DC(0);
  sub_219BE75E4();
  sub_21904E4DC(&v14, v17);
  sub_21904E4DC(v17, &v18);
  v15[10] = v29;
  v15[11] = v30;
  v5 = v18;
  v16 = v31;
  v15[6] = v25;
  v15[7] = v26;
  v15[8] = v27;
  v15[9] = v28;
  v15[2] = v21;
  v15[3] = v22;
  v15[4] = v23;
  v15[5] = v24;
  v15[0] = v19;
  v15[1] = v20;
  sub_218C94EE0(0);
  v6 = sub_219BF5FA4();
  __swift_project_boxed_opaque_existential_1(v4 + 11, v4[14]);
  v7 = sub_219BE6134();
  sub_218E13964(v5, v15, v7);

  v8 = v4[9];
  v9 = *(&v29 + 1);
  v10 = v30;
  v11 = v31;
  v12 = v6;
  [v12 setSeparatorInset_];
  [v12 setBackgroundColor_];
  [v12 setAccessoryType_];
  sub_21927A338(v17);

  return v12;
}

uint64_t sub_21927A238()
{
  sub_218774F78(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return swift_deallocClassInstance();
}

id sub_21927A2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_21927A06C(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

void sub_21927A2DC(uint64_t a1)
{
  if (!qword_27CC0AF70)
  {
    sub_21895221C();
    v1 = sub_219BE75F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0AF70);
    }
  }
}

unint64_t sub_21927A38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ChannelIssuesLayoutSectionDescriptor.Header(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953058(0);
  sub_219BE8184();
  v11 = v21[1];
  result = sub_219BE9604();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *(v11 + 16))
  {
    sub_2190A7080(v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * result, v10, type metadata accessor for ChannelIssuesLayoutSectionDescriptor.Header);

    sub_2190A6FC4(v10, v6);
    sub_21927B148(0);
    v13 = sub_219BF6414();
    v14 = (v6 + *(v4 + 28));
    v15 = *v14;
    v16 = v14[1];
    v17 = sub_219BE8204();
    sub_219605968(v15, v16, v6, v17);

    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;

    sub_219BE81F4();

    sub_21927B23C(v6, type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes);

    return v13;
  }

  __break(1u);
  return result;
}

void sub_21927A630(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_21927B1E4(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v35 = a1;
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (!v18)
    {

      return;
    }

    v19 = v18;
    sub_219BE5824();
    if (!v37)
    {

      sub_218806FD0(aBlock);
      (*(v10 + 56))(v8, 1, 1, v9);
      goto LABEL_8;
    }

    v20 = swift_dynamicCast();
    (*(v10 + 56))(v8, v20 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

LABEL_8:
      sub_21927B23C(v8, sub_21927B1E4);
      return;
    }

    sub_2190A6FC4(v8, v15);
    v21 = *(v17 + 56);
    if (v21)
    {

      if ((sub_219BEA374() & 1) == 0)
      {
        sub_21927B23C(v15, type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes);

        goto LABEL_15;
      }

      v34 = objc_opt_self();
      sub_2190A7080(v15, v12, type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes);
      v22 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v33 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
      v24 = swift_allocObject();
      v25 = v35;
      *(v24 + 16) = v17;
      *(v24 + 24) = v25;
      sub_2190A6FC4(v12, v24 + v22);
      *(v24 + v33) = v21;
      *(v24 + v23) = v19;
      *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
      v26 = swift_allocObject();
      *(v26 + 16) = sub_21927B29C;
      *(v26 + 24) = v24;
      v38 = sub_218807D50;
      v39 = v26;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218807CE4;
      v37 = &block_descriptor_108;
      v27 = _Block_copy(aBlock);

      v28 = v35;
      v29 = v19;
      v30 = a2;

      [v34 performWithoutAnimation_];
      _Block_release(v27);

      sub_21927B23C(v15, type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    sub_21927B23C(v15, type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes);
LABEL_15:
  }
}

void sub_21927AB00(uint64_t a1, uint64_t a2, double *a3)
{
  sub_21927B148(0);
  sub_219BF5044();
  v4 = (a3 + *(type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes(0) + 28));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_219BE8204();
  sub_219605968(v5, v6, a3, v7);
}

void sub_21927AC28(uint64_t a1, void *a2)
{
  v3 = sub_219BDC014();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDC104();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = MEMORY[0x277D83B88];
    sub_2186F83B8(0, &qword_280E8B660, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    v15 = [a2 indexPath];
    sub_219BDC0B4();

    v16 = sub_219BDC0F4();
    (*(v8 + 8))(v10, v7);
    *(v14 + 32) = v16;
    v18 = v14;
    sub_21927AFA8(&qword_27CC10BB8, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
    sub_2186F83B8(0, &unk_280E8ED80, v13, MEMORY[0x277D83940]);
    sub_218CB84C0();
    sub_219BF7164();
    v17 = sub_219BDBFC4();
    (*(v4 + 8))(v6, v3);
    [v12 reloadSections_];
  }
}

uint64_t sub_21927AFA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_21927AFF0()
{
  v1 = sub_219BE9834();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_21927B148(0);
  (*(v2 + 104))(v4, *MEMORY[0x277D6E758], v1);
  sub_219BF6444();
  (*(v2 + 8))(v4, v1);
  *(v5 + 56) = sub_219BF63F4();

  return result;
}

void sub_21927B148(uint64_t a1)
{
  if (!qword_27CC18370)
  {
    type metadata accessor for ChannelIssuesGroupTitleView();
    sub_21927AFA8(&qword_27CC168B0, type metadata accessor for ChannelIssuesGroupTitleView, &unk_219C5FD04);
    v1 = sub_219BE8224();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC18370);
    }
  }
}

void sub_21927B1E4(uint64_t a1)
{
  if (!qword_27CC18378)
  {
    type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC18378);
    }
  }
}

uint64_t sub_21927B23C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21927B29C()
{
  v1 = *(type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = (v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  sub_21927AB00(v2, v3, v4);
}

unint64_t sub_21927B34C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C(0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218783DA0();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for PaywallRouter();
      v8 = swift_allocObject();
      sub_21875F93C(v9, (v8 + 2));
      v8[7] = v5;
      v8[8] = v6;
      v8[9] = 1;
      a2[3] = v7;
      result = sub_2187F60AC();
      a2[4] = result;
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

char *sub_21927B444(uint64_t *a1, uint64_t a2)
{
  sub_21927C248(0, &qword_27CC13BD0, MEMORY[0x277D33E48], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v46 - v5;
  v7 = sub_219BF34F4();
  v54 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v52 = v12;
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v46 - v15;
  v17 = *a1;
  v51 = a2;
  v18 = *(a2 + 16);
  v19 = [v18 identifier];
  sub_219BF5414();

  v50 = v17;
  v20 = v54;
  sub_219BF29A4();

  if ((*(v20 + 48))(v6, 1, v7) == 1)
  {
    sub_21927C08C(v6);
    sub_21927C118();
    swift_allocError();
    *v21 = v18;
    swift_willThrow();
    swift_unknownObjectRetain();
  }

  else
  {
    v47 = *(v20 + 32);
    v48 = v20 + 32;
    v47(v16, v6, v7);
    v49 = v16;
    v22 = sub_219BF34A4();
    v23 = *(v22 + 16);
    if (v23)
    {
      v25 = *(v20 + 16);
      v24 = v20 + 16;
      v26 = *(v24 + 64);
      v46 = v22;
      v27 = v22 + ((v26 + 32) & ~v26);
      v56 = *(v24 + 56);
      v57 = v25;
      v58 = v24;
      v28 = (v24 - 8);
      v29 = MEMORY[0x277D84F90];
      v55 = v7;
      v25(v11, v27, v7);
      while (1)
      {
        v31 = sub_219BF34D4();
        v33 = v32;
        (*v28)(v11, v7);
        if (v33)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_218840D24(0, *(v29 + 2) + 1, 1, v29);
          }

          v35 = *(v29 + 2);
          v34 = *(v29 + 3);
          if (v35 >= v34 >> 1)
          {
            v29 = sub_218840D24((v34 > 1), v35 + 1, 1, v29);
          }

          *(v29 + 2) = v35 + 1;
          v30 = &v29[16 * v35];
          *(v30 + 4) = v31;
          *(v30 + 5) = v33;
          v7 = v55;
        }

        v27 += v56;
        if (!--v23)
        {
          break;
        }

        v57(v11, v27, v7);
      }

      v20 = v54;
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
    }

    v59 = v29;
    sub_21870F4C4(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218ACCAC0();
    v6 = sub_219BF56E4();

    if (*(v6 + 2))
    {
      v37 = v20;
      MEMORY[0x28223BE20](v36);
      *(&v46 - 2) = v51;
      *(&v46 - 1) = v6;
      sub_21927C248(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
      sub_219BE3204();

      v38 = v53;
      v39 = v49;
      (*(v20 + 16))(v53, v49, v7);
      v40 = (*(v37 + 80) + 24) & ~*(v37 + 80);
      v41 = swift_allocObject();
      *(v41 + 16) = v50;
      v47((v41 + v40), v38, v7);

      v42 = v7;
      v43 = sub_219BE2E54();
      sub_21927BFE8(0);
      v6 = sub_219BE2F64();

      (*(v37 + 8))(v39, v42);
    }

    else
    {

      sub_21927C118();
      swift_allocError();
      *v44 = 0;
      swift_willThrow();
      (*(v20 + 8))(v49, v7);
    }
  }

  return v6;
}

uint64_t sub_21927BA38(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for TagModel();

  sub_219BF3494();
  sub_21927C248(0, &unk_27CC183B0, sub_21927BFE8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21927BB04(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = [*(*a1 + 16) displayName];
  v4 = sub_219BF5414();
  v6 = v5;

  v7 = [*(v2 + 16) displayName];
  v8 = sub_219BF5414();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_219BF78F4();
  }

  return v12 & 1;
}

uint64_t sub_21927BBD0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  v17 = *a1;
  sub_218718690(a2 + 80, v19);
  v14 = v21;
  v15 = v20;
  v13 = __swift_project_boxed_opaque_existential_1(v19, v20);
  v22 = MEMORY[0x277D84F90];
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
  v18 = MEMORY[0x277D84F90];
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

    v7 = [*(v5 + 16) asSports];

    ++v4;
    if (v7)
    {
      MEMORY[0x21CECC690](v8);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v18 = v22;
      v4 = v6;
    }
  }

  v9 = (*(v14 + 16))(v18, v15);
  v11 = v10;

  __swift_destroy_boxed_opaque_existential_1(v19);
  v19[0] = *(a2 + 16);
  v19[1] = v17;
  v19[2] = v2;
  v20 = v9;
  v21 = v11;
  sub_21870F4C4(0, &unk_27CC18398, &type metadata for SportsNavigationPrewarmFetchResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  swift_unknownObjectRetain();

  return sub_219BE3014();
}

uint64_t sub_21927BE0C()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_21927BE80()
{
  sub_219BF29D4();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_21927BFE8(0);
  sub_219BE2F84();

  v1 = sub_219BE2E54();
  v2 = sub_219BE2F84();

  return v2;
}

void sub_21927BFE8(uint64_t a1)
{
  if (!qword_27CC18388)
  {
    sub_219BF29D4();
    sub_21927C248(255, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC18388);
    }
  }
}

uint64_t sub_21927C08C(uint64_t a1)
{
  sub_21927C248(0, &qword_27CC13BD0, MEMORY[0x277D33E48], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21927C118()
{
  result = qword_27CC183A8;
  if (!qword_27CC183A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC183A8);
  }

  return result;
}

uint64_t sub_21927C16C()
{
  v1 = *(v0 + 24);
  v2 = off_282A4D758;
  type metadata accessor for TagService();
  return v2(v1);
}

void sub_21927C248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_21927C2BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = 0;
  if (v6(a1, 1, v4) != 1)
  {
    v7 = sub_219BDBC04();
    (*(v5 + 8))(a1, v4);
  }

  if (v6(a2, 1, v4) == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_219BDBC04();
    (*(v5 + 8))(a2, v4);
  }

  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEarlierDate:v7 laterDate:v8];

  return v9;
}

uint64_t sub_21927C414@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  sub_2187E71A0(a1, v8);
  sub_21875F93C(v8, v7);
  sub_219BF29D4();
  sub_219BE3204();

  v4 = sub_219BE2E54();
  sub_21927D3F0(0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);
  v5 = sub_219BE2F64();

  *a3 = v5;
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_21927C524(uint64_t *a1, uint64_t a2)
{
  sub_21927D3F0(0, &qword_280E8ED00, &qword_280E8E680, &protocolRef_FCTagProviding, sub_2186D6710);
  sub_219BE3204();

  v2 = sub_219BE2E54();
  sub_21927D3F0(0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);
  v3 = sub_219BE2F64();

  return v3;
}

uint64_t sub_21927C640(uint64_t result)
{
  if (*(result + 120))
  {

    sub_219BE2CF4();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_21927C694(id *a1, uint64_t a2)
{
  v3 = [*a1 articleID];
  v4 = sub_219BF5414();
  v6 = v5;

  LOBYTE(a2) = sub_2188537B8(v4, v6, a2);

  return (a2 & 1) == 0;
}

unint64_t *sub_21927C71C@<X0>(unint64_t *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_31;
  }

  v5 = a2;
  v4 = *result;
  v7 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v16 = a3;
  if (a2)
  {
    v3 = v4 & 0xFFFFFFFFFFFFFF8;
    v6 = v4 >> 62;
    if (v4 >> 62)
    {
      goto LABEL_32;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = result)
    {
      v9 = 0;
      v10 = v4 & 0xC000000000000001;
      v15 = v4;
      v7 = MEMORY[0x277D84F90];
      while (v9 < v5)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_27;
        }

        if (i)
        {
          if (v6)
          {
            v4 = sub_219BF7214();
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v4 = *(v3 + 16);
          }

          if (!v4)
          {
            goto LABEL_29;
          }

          v17 = 0;
          MEMORY[0x21CECF980](&v17, 8);
          v12 = (v17 * v4) >> 64;
          if (v4 > v17 * v4)
          {
            v13 = -v4 % v4;
            if (v13 > v17 * v4)
            {
              do
              {
                v17 = 0;
                MEMORY[0x21CECF980](&v17, 8);
              }

              while (v13 > v17 * v4);
              v12 = (v17 * v4) >> 64;
            }
          }

          if (v10)
          {
            v14 = MEMORY[0x21CECE0F0](v12, v15);
          }

          else
          {
            if (v12 >= *(v3 + 16))
            {
              goto LABEL_30;
            }

            v14 = swift_unknownObjectRetain();
          }

          MEMORY[0x21CECC690](v14);
          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          v4 = &v18;
          result = sub_219BF5A54();
          v7 = v18;
        }

        if (v9 == v5)
        {
          goto LABEL_25;
        }
      }

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
      result = sub_219BF7214();
    }
  }

LABEL_25:
  *v16 = v7;
  return result;
}