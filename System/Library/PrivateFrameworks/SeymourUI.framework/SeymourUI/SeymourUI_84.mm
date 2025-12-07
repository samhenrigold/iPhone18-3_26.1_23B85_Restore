void sub_20BE9E6C0()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(sub_20C136D44() + 16);

  if (v10)
  {
    v44 = v7;
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_mediaTagStringBuilder + 24));
    sub_20C136D44();
    v11 = sub_20C138544();

    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_storefrontLocalizer), *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_storefrontLocalizer + 24));
    v12 = sub_20C138D34();
    v14 = v13;
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    *(v15 + 24) = v12;
    *(v15 + 32) = v14;
    v16 = v15 | 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20C14F980;
    v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_displaysSeparatorBelow);
    *(v17 + 32) = v16;
    v45 = 0uLL;
    LOBYTE(v46) = 1;
    *(&v46 + 1) = 0;
    *&v47 = 0;
    BYTE8(v47) = 0x80;
    BYTE9(v47) = v18;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    LOBYTE(v51) = 0;
    *(&v51 + 1) = v17;
    *&v52[0] = MEMORY[0x277D84F90];
    *(v52 + 8) = 0u;
    *(&v52[1] + 8) = 0u;
    *(&v52[2] + 1) = 0;
    v53 = 2;
    nullsub_1();
    v19 = v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row;
    v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 144);
    v54[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 128);
    v54[9] = v20;
    v55 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 160);
    v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 80);
    v54[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 64);
    v54[5] = v21;
    v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 112);
    v54[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 96);
    v54[7] = v22;
    v23 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 16);
    v54[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row);
    v54[1] = v23;
    v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 48);
    v54[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 32);
    v54[3] = v24;
    v25 = v52[2];
    *(v19 + 128) = v52[1];
    *(v19 + 144) = v25;
    *(v19 + 160) = v53;
    v26 = v50;
    *(v19 + 64) = v49;
    *(v19 + 80) = v26;
    v27 = v52[0];
    *(v19 + 96) = v51;
    *(v19 + 112) = v27;
    v28 = v46;
    *v19 = v45;
    *(v19 + 16) = v28;
    v29 = v48;
    *(v19 + 32) = v47;
    *(v19 + 48) = v29;
    v30 = v11;

    sub_20B634408(v54);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v32 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      sub_20B61D1B8(v1, Strong);
      if (v34)
      {
        v36 = v34;
        v42 = v33;
        v43 = v35;
        sub_20B5E2E18();
        *v9 = sub_20C13D374();
        v37 = v44;
        (*(v44 + 104))(v9, *MEMORY[0x277D85200], v6);
        v38 = sub_20C13C584();
        (*(v37 + 8))(v9, v6);
        if ((v38 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B62093C(v42, v36, v43, v1, 1, v32);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_20C13B534();
    v39 = sub_20C13BB74();
    v40 = sub_20C13D1F4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_20B517000, v39, v40, "[TVExpandingTextEditorialSectionShelf] Empty summary tags or title. Hiding shelf.", v41, 2u);
      MEMORY[0x20F2F6A40](v41, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_20BE9EB98()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 128);
  v11[9] = v3;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 64);
  v11[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 96);
  v11[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row);
  v11[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 32);
  v11[3] = v7;
  sub_20B634408(v11);
  v8 = OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_item;
  v9 = sub_20C136D64();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_mediaTagStringBuilder));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_storefrontLocalizer));
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVExpandingTextEditorialSectionShelf(uint64_t a1)
{
  result = qword_27C76FFA0;
  if (!qword_27C76FFA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BE9ED30(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    result = sub_20C136D64();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20BE9EE20@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BE9EE98@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BE9EF4C(unint64_t a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShelfMetricAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v52[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 7)
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = sub_20C136664();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = v7[5];
    v13 = *MEMORY[0x277D513E8];
    v14 = sub_20C134F24();
    (*(*(v14 - 8) + 104))(&v9[v12], v13, v14);
    v15 = v7[6];
    v16 = sub_20C132C14();
    (*(*(v16 - 8) + 56))(&v9[v15], 1, 1, v16);
    v17 = v7[8];
    v18 = sub_20C135ED4();
    (*(*(v18 - 8) + 56))(&v9[v17], 1, 1, v18);
    v19 = v7[10];
    v20 = *MEMORY[0x277D51768];
    v21 = sub_20C1352E4();
    (*(*(v21 - 8) + 104))(&v9[v19], v20, v21);
    v22 = v7[11];
    v23 = sub_20C136E94();
    (*(*(v23 - 8) + 56))(&v9[v22], 1, 1, v23);
    v24 = MEMORY[0x277D84F90];
    v25 = sub_20B6B29D4(MEMORY[0x277D84F90]);
    *&v9[v7[7]] = xmmword_20C16AC20;
    v26 = &v9[v7[9]];
    *v26 = 0;
    *(v26 + 1) = 0;
    *&v9[v7[12]] = v25;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_20BF9FD48(v1, v9, Strong);
      swift_unknownObjectRelease();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762240, &qword_20C156F40);
    v28 = (type metadata accessor for PageAlertAction(0) - 8);
    v29 = (*(*v28 + 80) + 32) & ~*(*v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_20C14F980;
    v31 = v30 + v29;
    sub_20C132ED4();
    v32 = (v31 + v28[8]);
    *v32 = 0;
    v32[1] = 0;
    *(v31 + v28[7]) = 2;
    v33 = (v31 + v28[9]);
    *v33 = 0;
    v33[1] = 0;
    v34 = [v10 string];
    v35 = sub_20C13C954();
    v37 = v36;

    v52[0] = v30;
    v52[1] = v24;
    v52[2] = 0;
    v52[3] = 0;
    v52[4] = v35;
    v52[5] = v37;
    v53 = 1;
    v38 = swift_unknownObjectWeakLoadStrong();
    if (v38)
    {
      v39 = v38;
      v40 = v38 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v41 = *(v40 + 8);
        ObjectType = swift_getObjectType();
        (*(v41 + 232))(v39, v52, ObjectType, v41);
        sub_20B76328C(v52);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_20B76328C(v52);
      }

      swift_unknownObjectRelease();
    }

    else
    {
      sub_20B76328C(v52);
    }

    return sub_20B68D110(v9);
  }

  else
  {
    sub_20C13B534();

    v43 = sub_20C13BB74();
    v44 = sub_20C13D1D4();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = a1;
      v52[0] = v46;
      *v45 = 136446210;

      v47 = sub_20C13C9D4();
      v49 = sub_20B51E694(v47, v48, v52);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_20B517000, v43, v44, "TV Expanding text shelf action triggered for item: %{public}s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x20F2F6A40](v46, -1, -1);
      MEMORY[0x20F2F6A40](v45, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_20BE9F518(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v4 = v2 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_row;
  sub_20B5D8060(v15);
  v5 = v15[9];
  *(v4 + 128) = v15[8];
  *(v4 + 144) = v5;
  *(v4 + 160) = v16;
  v6 = v15[5];
  *(v4 + 64) = v15[4];
  *(v4 + 80) = v6;
  v7 = v15[7];
  *(v4 + 96) = v15[6];
  *(v4 + 112) = v7;
  v8 = v15[1];
  *v4 = v15[0];
  *(v4 + 16) = v8;
  v9 = v15[3];
  *(v4 + 32) = v15[2];
  *(v4 + 48) = v9;
  *(v2 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_displaysSeparatorBelow) = 0;
  v10 = OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_item;
  v11 = sub_20C136D64();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v2 + v10, a2, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v14, v2 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  (*(v12 + 8))(a2, v11);
  sub_20B51C710(v14, v2 + OBJC_IVAR____TtC9SeymourUI36TVExpandingTextEditorialSectionShelf_storefrontLocalizer);
  return v2;
}

uint64_t sub_20BE9F71C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 64))(v4, a1, a3);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_20C1392F4();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_20BE9F79C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v43 = sub_20C135ED4();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20C1352E4();
  v32 = *(v38 - 8);
  v6 = v32;
  MEMORY[0x28223BE20](v38);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C134F24();
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C132E94();
  MEMORY[0x28223BE20](v12 - 8);
  v39 = sub_20C138034();
  v37 = *(v39 - 8);
  v13 = v37;
  MEMORY[0x28223BE20](v39);
  v36 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C132E84();
  v15 = a1;
  v16 = a2;
  sub_20C138014();
  (*(v9 + 104))(v11, *MEMORY[0x277D513C0], v8);
  v17 = *(v6 + 104);
  v18 = v35;
  v19 = v38;
  v17(v35, *MEMORY[0x277D51768], v38);
  v20 = v40;
  v21 = v41;
  v22 = v43;
  (*(v41 + 104))(v40, *MEMORY[0x277D52408], v43);
  v23 = v16;
  v24 = v42;
  sub_20BEABA58(v11, v18, v15, v23, v20);
  (*(v21 + 8))(v20, v22);
  (*(v32 + 8))(v18, v19);
  (*(v34 + 8))(v11, v33);
  __swift_project_boxed_opaque_existential_1((v24 + 112), *(v24 + 136));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8, &unk_20C179880);
  v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14F980;
  v27 = v36;
  v28 = v39;
  (*(v13 + 16))(v26 + v25, v36, v39);
  sub_20BE8BBF4(v26);
  swift_setDeallocating();
  v29 = *(v13 + 8);
  v29(v26 + v25, v28);
  swift_deallocClassInstance();
  sub_20C13A1E4();

  return (v29)(v27, v28);
}

uint64_t sub_20BE9FC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a3;
  v43 = sub_20C135ED4();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_20C1352E4();
  v32 = *(v38 - 8);
  v6 = v32;
  MEMORY[0x28223BE20](v38);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C134F24();
  v9 = *(v8 - 8);
  v33 = v8;
  v34 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C132E94();
  MEMORY[0x28223BE20](v12 - 8);
  v39 = sub_20C138034();
  v37 = *(v39 - 8);
  v13 = v37;
  MEMORY[0x28223BE20](v39);
  v36 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C132E84();
  v15 = a1;
  v16 = a2;
  sub_20C138014();
  (*(v9 + 104))(v11, *MEMORY[0x277D513C0], v8);
  v17 = *(v6 + 104);
  v18 = v35;
  v19 = v38;
  v17(v35, *MEMORY[0x277D51768], v38);
  v20 = v40;
  v21 = v41;
  v22 = v43;
  (*(v41 + 104))(v40, *MEMORY[0x277D52408], v43);
  v23 = v16;
  v24 = v42;
  sub_20BEAC790(v11, v18, v15, v23, v20);
  (*(v21 + 8))(v20, v22);
  (*(v32 + 8))(v18, v19);
  (*(v34 + 8))(v11, v33);
  __swift_project_boxed_opaque_existential_1((v24 + 264), *(v24 + 288));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8, &unk_20C179880);
  v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_20C14F980;
  v27 = v36;
  v28 = v39;
  (*(v13 + 16))(v26 + v25, v36, v39);
  sub_20BE8BBF4(v26);
  swift_setDeallocating();
  v29 = *(v13 + 8);
  v29(v26 + v25, v28);
  swift_deallocClassInstance();
  sub_20C13A1E4();

  return (v29)(v27, v28);
}

uint64_t sub_20BEA00F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v51 = a4;
  v49 = a3;
  v50 = a5;
  v44 = a1;
  v52 = a6;
  v7 = sub_20C135ED4();
  v8 = *(v7 - 8);
  v46 = v7;
  v47 = v8;
  MEMORY[0x28223BE20](v7);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C1352E4();
  v38 = *(v10 - 8);
  v11 = v38;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C134F24();
  v15 = *(v14 - 8);
  v39 = v14;
  v40 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20C132E94();
  MEMORY[0x28223BE20](v18 - 8);
  v48 = sub_20C138034();
  v42 = *(v48 - 8);
  v43 = v42;
  MEMORY[0x28223BE20](v48);
  v41 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_20C132E84();
  v20 = v44;
  sub_20C138014();
  (*(v15 + 104))(v17, *MEMORY[0x277D513C0], v14);
  v21 = *(v11 + 104);
  v22 = v13;
  v23 = v10;
  v21(v13, *MEMORY[0x277D51768], v10);
  v24 = v46;
  v25 = v47;
  v26 = v45;
  (*(v47 + 104))(v45, *MEMORY[0x277D52408], v46);
  v27 = v20;
  v28 = a2;
  v29 = v49;
  v30 = v50;
  sub_20BEAE24C(v17, v22, v27, v28, v26, v49, v51, v50);
  (*(v25 + 8))(v26, v24);
  (*(v38 + 8))(v22, v23);
  (*(v40 + 8))(v17, v39);
  (*(v30 + 24))(v53, v29, v30);
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8, &unk_20C179880);
  v31 = v43;
  v32 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_20C14F980;
  v34 = v41;
  v35 = v48;
  (*(v31 + 16))(v33 + v32, v41, v48);
  sub_20BE8BBF4(v33);
  swift_setDeallocating();
  v36 = *(v31 + 8);
  v36(v33 + v32, v35);
  swift_deallocClassInstance();
  sub_20C13A1E4();

  v36(v34, v35);
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_20BEA05D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v72 = a3;
  v5 = sub_20C135ED4();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1352E4();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20C134F24();
  v61 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v60 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8, &unk_20C15E830);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = &v60 - v11;
  v12 = sub_20C138034();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v79 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  v70 = &v60 - v18;
  v19 = OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_bookmarks;
  swift_beginAccess();
  v68 = v3;
  v20 = *(v3 + v19);
  v21 = v12;
  v22 = v20 + 56;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v20 + 56);
  v26 = (v23 + 63) >> 6;
  v76 = v13 + 16;
  v77 = v13 + 32;
  v75 = (v13 + 8);
  result = swift_bridgeObjectRetain_n();
  v28 = 0;
  v74 = v20;
  if (v25)
  {
    while (1)
    {
      v29 = v28;
LABEL_8:
      v30 = v73;
      (*(v13 + 16))(v73, *(v20 + 48) + *(v13 + 72) * (__clz(__rbit64(v25)) | (v29 << 6)), v21);
      v31 = v13;
      v32 = *(v13 + 32);
      v32(v79, v30, v21);
      if (sub_20C138024() == a1 && v33 == v78)
      {

        goto LABEL_16;
      }

      v34 = a1;
      v35 = sub_20C13DFF4();

      if (v35)
      {
        break;
      }

      v25 &= v25 - 1;
      result = (*v75)(v79, v21);
      v28 = v29;
      a1 = v34;
      v13 = v31;
      v20 = v74;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    a1 = v34;
LABEL_16:
    v37 = v69;
    v32(v69, v79, v21);
    v36 = 0;
    v13 = v31;
LABEL_17:
    (*(v13 + 56))(v37, v36, 1, v21);

    if ((*(v13 + 48))(v37, 1, v21) == 1)
    {
      sub_20B520158(v37, &qword_27C763EF8, &unk_20C15E830);
      v38 = sub_20C133D94();
      sub_20BEB3F38(&qword_27C765B10, MEMORY[0x277D50470], MEMORY[0x277D50478]);
      v39 = swift_allocError();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D50458], v38);
      *(swift_allocObject() + 16) = v39;
      return sub_20C137CA4();
    }

    else
    {
      (*(v13 + 32))(v70, v37, v21);
      v41 = v61;
      v42 = v60;
      (*(v61 + 104))(v60, *MEMORY[0x277D51430], v71);
      v43 = *MEMORY[0x277D51768];
      v45 = v62;
      v44 = v63;
      v46 = *(v63 + 104);
      v77 = v13;
      v47 = v64;
      v46(v62, v43, v64);
      v48 = *MEMORY[0x277D52408];
      v50 = v65;
      v49 = v66;
      v51 = *(v66 + 104);
      v79 = v21;
      v52 = v67;
      v51(v65, v48, v67);
      v53 = v68;
      sub_20BEABA58(v42, v45, a1, v78, v50);
      (*(v49 + 8))(v50, v52);
      (*(v44 + 8))(v45, v47);
      (*(v41 + 8))(v42, v71);
      __swift_project_boxed_opaque_existential_1((v53 + 112), *(v53 + 136));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8, &unk_20C179880);
      v54 = v77;
      v55 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_20C14F980;
      v57 = v70;
      v58 = v79;
      (*(v54 + 16))(v56 + v55, v70, v79);
      sub_20BE8BBF4(v56);
      swift_setDeallocating();
      v59 = *(v54 + 8);
      v59(v56 + v55, v58);
      swift_deallocClassInstance();
      sub_20C13A1F4();

      return (v59)(v57, v58);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v26)
      {

        v36 = 1;
        v37 = v69;
        goto LABEL_17;
      }

      v25 = *(v22 + 8 * v29);
      ++v28;
      if (v25)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20BEA0E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v72 = a3;
  v5 = sub_20C135ED4();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v65 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1352E4();
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v62 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_20C134F24();
  v61 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v60 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8, &unk_20C15E830);
  MEMORY[0x28223BE20](v10 - 8);
  v69 = &v60 - v11;
  v12 = sub_20C138034();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v79 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v73 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  v70 = &v60 - v18;
  v19 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_bookmarks;
  swift_beginAccess();
  v68 = v3;
  v20 = *(v3 + v19);
  v21 = v12;
  v22 = v20 + 56;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v20 + 56);
  v26 = (v23 + 63) >> 6;
  v76 = v13 + 16;
  v77 = v13 + 32;
  v75 = (v13 + 8);
  result = swift_bridgeObjectRetain_n();
  v28 = 0;
  v74 = v20;
  if (v25)
  {
    while (1)
    {
      v29 = v28;
LABEL_8:
      v30 = v73;
      (*(v13 + 16))(v73, *(v20 + 48) + *(v13 + 72) * (__clz(__rbit64(v25)) | (v29 << 6)), v21);
      v31 = v13;
      v32 = *(v13 + 32);
      v32(v79, v30, v21);
      if (sub_20C138024() == a1 && v33 == v78)
      {

        goto LABEL_16;
      }

      v34 = a1;
      v35 = sub_20C13DFF4();

      if (v35)
      {
        break;
      }

      v25 &= v25 - 1;
      result = (*v75)(v79, v21);
      v28 = v29;
      a1 = v34;
      v13 = v31;
      v20 = v74;
      if (!v25)
      {
        goto LABEL_5;
      }
    }

    a1 = v34;
LABEL_16:
    v37 = v69;
    v32(v69, v79, v21);
    v36 = 0;
    v13 = v31;
LABEL_17:
    (*(v13 + 56))(v37, v36, 1, v21);

    if ((*(v13 + 48))(v37, 1, v21) == 1)
    {
      sub_20B520158(v37, &qword_27C763EF8, &unk_20C15E830);
      v38 = sub_20C133D94();
      sub_20BEB3F38(&qword_27C765B10, MEMORY[0x277D50470], MEMORY[0x277D50478]);
      v39 = swift_allocError();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D50458], v38);
      *(swift_allocObject() + 16) = v39;
      return sub_20C137CA4();
    }

    else
    {
      (*(v13 + 32))(v70, v37, v21);
      v41 = v61;
      v42 = v60;
      (*(v61 + 104))(v60, *MEMORY[0x277D51430], v71);
      v43 = *MEMORY[0x277D51768];
      v45 = v62;
      v44 = v63;
      v46 = *(v63 + 104);
      v77 = v13;
      v47 = v64;
      v46(v62, v43, v64);
      v48 = *MEMORY[0x277D52408];
      v50 = v65;
      v49 = v66;
      v51 = *(v66 + 104);
      v79 = v21;
      v52 = v67;
      v51(v65, v48, v67);
      v53 = v68;
      sub_20BEAC790(v42, v45, a1, v78, v50);
      (*(v49 + 8))(v50, v52);
      (*(v44 + 8))(v45, v47);
      (*(v41 + 8))(v42, v71);
      __swift_project_boxed_opaque_existential_1((v53 + 264), *(v53 + 288));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8, &unk_20C179880);
      v54 = v77;
      v55 = (*(v77 + 80) + 32) & ~*(v77 + 80);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_20C14F980;
      v57 = v70;
      v58 = v79;
      (*(v54 + 16))(v56 + v55, v70, v79);
      sub_20BE8BBF4(v56);
      swift_setDeallocating();
      v59 = *(v54 + 8);
      v59(v56 + v55, v58);
      swift_deallocClassInstance();
      sub_20C13A1F4();

      return (v59)(v57, v58);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v26)
      {

        v36 = 1;
        v37 = v69;
        goto LABEL_17;
      }

      v25 = *(v22 + 8 * v29);
      ++v28;
      if (v25)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_20BEA1634(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a4;
  v86 = a2;
  v80 = a6;
  v70 = sub_20C135ED4();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_20C1352E4();
  v67 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v66 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_20C134F24();
  v65 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8, &unk_20C15E830);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v64 - v14;
  v15 = sub_20C138034();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v82 = &v64 - v20;
  v22 = MEMORY[0x28223BE20](v21);
  v78 = &v64 - v23;
  v24 = *(a5 + 112);
  v72 = a3;
  v73 = v6;
  v25 = a3;
  v27 = v26;
  v74 = a5;
  v28 = v24(v25, a5, v22);
  v29 = v28;
  v30 = v28 + 56;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v28 + 56);
  v34 = (v31 + 63) >> 6;
  v84 = v16 + 16;
  v85 = v16 + 32;
  v83 = (v16 + 8);

  v35 = 0;
  if (v33)
  {
    while (1)
    {
      v36 = v35;
LABEL_8:
      v37 = v82;
      (*(v16 + 16))(v82, *(v29 + 48) + *(v16 + 72) * (__clz(__rbit64(v33)) | (v36 << 6)), v27);
      v81 = *(v16 + 32);
      v81(v18, v37, v27);
      if (sub_20C138024() == a1 && v38 == v86)
      {

        goto LABEL_16;
      }

      LODWORD(v87) = sub_20C13DFF4();

      if (v87)
      {
        break;
      }

      v33 &= v33 - 1;
      (*v83)(v18, v27);
      v35 = v36;
      if (!v33)
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    v40 = v75;
    v81(v75, v18, v27);
    v39 = 0;
LABEL_17:
    (*(v16 + 56))(v40, v39, 1, v27);

    if ((*(v16 + 48))(v40, 1, v27) == 1)
    {
      sub_20B520158(v40, &qword_27C763EF8, &unk_20C15E830);
      v41 = sub_20C133D94();
      sub_20BEB3F38(&qword_27C765B10, MEMORY[0x277D50470], MEMORY[0x277D50478]);
      v42 = swift_allocError();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D50458], v41);
      *(swift_allocObject() + 16) = v42;
      sub_20C137CA4();
    }

    else
    {
      (*(v16 + 32))(v78, v40, v27);
      v44 = v65;
      v45 = v76;
      (*(v65 + 104))(v76, *MEMORY[0x277D51430], v77);
      v46 = v67;
      v47 = v66;
      (*(v67 + 104))(v66, *MEMORY[0x277D51768], v79);
      v48 = *MEMORY[0x277D52408];
      v49 = v69;
      v50 = *(v69 + 104);
      v87 = v16;
      v51 = v68;
      v52 = v70;
      v50(v68, v48, v70);
      v53 = v45;
      v54 = a1;
      v55 = v27;
      v56 = v72;
      v57 = v74;
      sub_20BEAE24C(v53, v47, v54, v86, v51, v72, v71, v74);
      (*(v49 + 8))(v51, v52);
      (*(v46 + 8))(v47, v79);
      (*(v44 + 8))(v76, v77);
      (*(v57 + 24))(v88, v56, v57);
      __swift_project_boxed_opaque_existential_1(v88, v88[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7623B8, &unk_20C179880);
      v58 = v87;
      v59 = (*(v87 + 80) + 32) & ~*(v87 + 80);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_20C14F980;
      v61 = v78;
      v62 = v55;
      (*(v58 + 16))(v60 + v59, v78, v55);
      sub_20BE8BBF4(v60);
      swift_setDeallocating();
      v63 = *(v58 + 8);
      v63(v60 + v59, v62);
      swift_deallocClassInstance();
      sub_20C13A1F4();

      v63(v61, v62);
      __swift_destroy_boxed_opaque_existential_1(v88);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v34)
      {

        v39 = 1;
        v40 = v75;
        goto LABEL_17;
      }

      v33 = *(v30 + 8 * v36);
      ++v35;
      if (v33)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_20BEA1EE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v33 = a5;
  v34 = a3;
  v39 = a2;
  v40 = a1;
  v41 = sub_20C134D54();
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v32 - v11;
  v12 = *(v5 + *a4);
  v13 = v12 + 56;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 56);
  v17 = (v14 + 63) >> 6;
  v38 = v7 + 32;
  v35 = (v7 + 8);
  v36 = v7 + 16;
  swift_bridgeObjectRetain_n();
  v18 = 0;
  while (v16)
  {
LABEL_10:
    v20 = v12;
    v21 = *(v12 + 48) + *(v7 + 72) * (__clz(__rbit64(v16)) | (v18 << 6));
    v22 = v37;
    v23 = v41;
    (*(v7 + 16))(v37, v21, v41);
    v24 = *(v7 + 32);
    v24(v9, v22, v23);
    if (sub_20C134D24() == v40 && v25 == v39)
    {
    }

    else
    {
      v26 = sub_20C13DFF4();

      if ((v26 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v27 = sub_20C134D14();
    if ((v28 & 1) == 0 && v27 == v34)
    {

      v29 = v33;
      v24(v33, v9, v41);
      v30 = v29;
      v31 = 0;
LABEL_18:
      (*(v7 + 56))(v30, v31, 1, v41);

      return;
    }

LABEL_4:
    v16 &= v16 - 1;
    (*v35)(v9, v41);
    v12 = v20;
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v17)
    {

      v31 = 1;
      v30 = v33;
      goto LABEL_18;
    }

    v16 = *(v13 + 8 * v19);
    ++v18;
    if (v16)
    {
      v18 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_20BEA21AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v36 = a6;
  v37 = a3;
  v42 = a2;
  v43 = a1;
  v44 = sub_20C134D54();
  v8 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v40 = &v35 - v13;
  v14 = (*(a5 + 160))(a4, a5, v12);
  v15 = v14;
  v16 = v14 + 56;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v14 + 56);
  v20 = (v17 + 63) >> 6;
  v41 = v8 + 32;
  v38 = (v8 + 8);
  v39 = v8 + 16;

  v21 = 0;
  while (v19)
  {
LABEL_10:
    v23 = v15;
    v24 = *(v15 + 48) + *(v8 + 72) * (__clz(__rbit64(v19)) | (v21 << 6));
    v25 = v40;
    v26 = v44;
    (*(v8 + 16))(v40, v24, v44);
    v27 = *(v8 + 32);
    v27(v10, v25, v26);
    if (sub_20C134D24() == v43 && v28 == v42)
    {
    }

    else
    {
      v29 = sub_20C13DFF4();

      if ((v29 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v30 = sub_20C134D14();
    if ((v31 & 1) == 0 && v30 == v37)
    {

      v32 = v36;
      v27(v36, v10, v44);
      v33 = v32;
      v34 = 0;
LABEL_18:
      (*(v8 + 56))(v33, v34, 1, v44);

      return;
    }

LABEL_4:
    v19 &= v19 - 1;
    (*v38)(v10, v44);
    v15 = v23;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      v34 = 1;
      v33 = v36;
      goto LABEL_18;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_20BEA2488(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v62 = a1;
  v60 = a3;
  v4 = sub_20C132E94();
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C135ED4();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_20C1352E4();
  v9 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C134B14();
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v61 = v3;
  v63 = *(v3 + OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_upNextQueueItems);
  swift_bridgeObjectRetain_n();
  sub_20BEB2868(&v63);

  v20 = *(v63 + 16);
  if (v20)
  {
    v22 = v53;
    v21 = v54;
    (*(v53 + 16))(v19, v63 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v53 + 72) * (v20 - 1), v54);

    v23 = sub_20C134AD4();
    (*(v22 + 8))(v19, v21);
    if (v23 == -1)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v49 = v23 + 1;
  }

  else
  {

    v49 = 0;
  }

  v24 = *MEMORY[0x277D51380];
  v25 = *(v12 + 104);
  v55 = v11;
  v25(v14, v24, v11);
  v26 = v56;
  v27 = v57;
  (*(v9 + 104))(v56, *MEMORY[0x277D51768], v57);
  v28 = sub_20C133E44();
  v30 = v29;
  v31 = v58;
  v32 = v59;
  (*(v58 + 104))(v8, *MEMORY[0x277D52408], v59);
  sub_20BEABA58(v14, v26, v28, v30, v8);

  (*(v31 + 8))(v8, v32);
  (*(v9 + 8))(v26, v27);
  (*(v12 + 8))(v14, v55);
  v33 = sub_20C133FF4();
  if (v35 == -1)
  {
LABEL_8:
    v40 = sub_20C134E14();
    sub_20BEB3F38(&qword_27C76FFB0, MEMORY[0x277D51150], MEMORY[0x277D51158]);
    v41 = swift_allocError();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51148], v40);
    *(swift_allocObject() + 16) = v41;
    sub_20C137CA4();
    return;
  }

  v36 = v33;
  v37 = v34;
  v38 = v35;
  sub_20C133FE4();
  if (v39)
  {
    sub_20B584078(v36, v37, v38);
    goto LABEL_8;
  }

  sub_20C133E44();
  sub_20C132E64();
  v43 = v50;
  sub_20C134AA4();
  __swift_project_boxed_opaque_existential_1((v61 + 368), *(v61 + 392));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0, &qword_20C162E60);
  v44 = *(sub_20C1351C4() - 8);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C14F980;
  v48 = v53;
  v47 = v54;
  (*(v53 + 16))(v46 + v45, v43, v54);
  swift_storeEnumTagMultiPayload();
  sub_20C139734();

  (*(v48 + 8))(v43, v47);
}

void sub_20BEA2B88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v62 = a1;
  v60 = a3;
  v4 = sub_20C132E94();
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C135ED4();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_20C1352E4();
  v9 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C134B14();
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v61 = v3;
  v63 = *(v3 + OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_upNextQueueItems);
  swift_bridgeObjectRetain_n();
  sub_20BEB2868(&v63);

  v20 = *(v63 + 16);
  if (v20)
  {
    v22 = v53;
    v21 = v54;
    (*(v53 + 16))(v19, v63 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v53 + 72) * (v20 - 1), v54);

    v23 = sub_20C134AD4();
    (*(v22 + 8))(v19, v21);
    if (v23 == -1)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v49 = v23 + 1;
  }

  else
  {

    v49 = 0;
  }

  v24 = *MEMORY[0x277D51380];
  v25 = *(v12 + 104);
  v55 = v11;
  v25(v14, v24, v11);
  v26 = v56;
  v27 = v57;
  (*(v9 + 104))(v56, *MEMORY[0x277D51768], v57);
  v28 = sub_20C133E44();
  v30 = v29;
  v31 = v58;
  v32 = v59;
  (*(v58 + 104))(v8, *MEMORY[0x277D52408], v59);
  sub_20BEAC790(v14, v26, v28, v30, v8);

  (*(v31 + 8))(v8, v32);
  (*(v9 + 8))(v26, v27);
  (*(v12 + 8))(v14, v55);
  v33 = sub_20C133FF4();
  if (v35 == -1)
  {
LABEL_8:
    v40 = sub_20C134E14();
    sub_20BEB3F38(&qword_27C76FFB0, MEMORY[0x277D51150], MEMORY[0x277D51158]);
    v41 = swift_allocError();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51148], v40);
    *(swift_allocObject() + 16) = v41;
    sub_20C137CA4();
    return;
  }

  v36 = v33;
  v37 = v34;
  v38 = v35;
  sub_20C133FE4();
  if (v39)
  {
    sub_20B584078(v36, v37, v38);
    goto LABEL_8;
  }

  sub_20C133E44();
  sub_20C132E64();
  v43 = v50;
  sub_20C134AA4();
  __swift_project_boxed_opaque_existential_1((v61 + 424), *(v61 + 448));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0, &qword_20C162E60);
  v44 = *(sub_20C1351C4() - 8);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C14F980;
  v48 = v53;
  v47 = v54;
  (*(v53 + 16))(v46 + v45, v43, v54);
  swift_storeEnumTagMultiPayload();
  sub_20C139734();

  (*(v48 + 8))(v43, v47);
}

void sub_20BEA3288(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a2;
  v62 = a1;
  v60 = a3;
  v4 = sub_20C132E94();
  MEMORY[0x28223BE20](v4 - 8);
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C135ED4();
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_20C1352E4();
  v9 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C134B14();
  v53 = *(v15 - 8);
  v54 = v15;
  MEMORY[0x28223BE20](v15);
  v50 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v61 = v3;
  v63 = *(v3 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueItems);
  swift_bridgeObjectRetain_n();
  sub_20BEB2868(&v63);

  v20 = *(v63 + 16);
  if (v20)
  {
    v22 = v53;
    v21 = v54;
    (*(v53 + 16))(v19, v63 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v53 + 72) * (v20 - 1), v54);

    v23 = sub_20C134AD4();
    (*(v22 + 8))(v19, v21);
    if (v23 == -1)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v49 = v23 + 1;
  }

  else
  {

    v49 = 0;
  }

  v24 = *MEMORY[0x277D51380];
  v25 = *(v12 + 104);
  v55 = v11;
  v25(v14, v24, v11);
  v26 = v56;
  v27 = v57;
  (*(v9 + 104))(v56, *MEMORY[0x277D51768], v57);
  v28 = sub_20C133E44();
  v30 = v29;
  v31 = v58;
  v32 = v59;
  (*(v58 + 104))(v8, *MEMORY[0x277D52408], v59);
  sub_20BEAD4C8(v14, v26, v28, v30, v8);

  (*(v31 + 8))(v8, v32);
  (*(v9 + 8))(v26, v27);
  (*(v12 + 8))(v14, v55);
  v33 = sub_20C133FF4();
  if (v35 == -1)
  {
LABEL_8:
    v40 = sub_20C134E14();
    sub_20BEB3F38(&qword_27C76FFB0, MEMORY[0x277D51150], MEMORY[0x277D51158]);
    v41 = swift_allocError();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D51148], v40);
    *(swift_allocObject() + 16) = v41;
    sub_20C137CA4();
    return;
  }

  v36 = v33;
  v37 = v34;
  v38 = v35;
  sub_20C133FE4();
  if (v39)
  {
    sub_20B584078(v36, v37, v38);
    goto LABEL_8;
  }

  sub_20C133E44();
  sub_20C132E64();
  v43 = v50;
  sub_20C134AA4();
  __swift_project_boxed_opaque_existential_1((v61 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueClient), *(v61 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueClient + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0, &qword_20C162E60);
  v44 = *(sub_20C1351C4() - 8);
  v45 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_20C14F980;
  v48 = v53;
  v47 = v54;
  (*(v53 + 16))(v46 + v45, v43, v54);
  swift_storeEnumTagMultiPayload();
  sub_20C139734();

  (*(v48 + 8))(v43, v47);
}

void sub_20BEA3994(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v73 = a4;
  v65 = a2;
  v74 = a1;
  v75 = a6;
  v9 = sub_20C132E94();
  MEMORY[0x28223BE20](v9 - 8);
  v64 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_20C135ED4();
  v70 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C1352E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C134F24();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C134B14();
  v66 = *(v20 - 8);
  v67 = v20;
  MEMORY[0x28223BE20](v20);
  v62 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v63 = &v60 - v23;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v60 - v26;
  v28 = *(a5 + 184);
  v76 = a3;
  v77 = v6;
  v78 = a5;
  v79[0] = v28(a3, a5, v25);

  sub_20BEB2868(v79);

  v29 = *(v79[0] + 16);
  if (v29)
  {
    v31 = v66;
    v30 = v67;
    (*(v66 + 16))(v27, v79[0] + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v66 + 72) * (v29 - 1), v67);

    v32 = sub_20C134AD4();
    (*(v31 + 8))(v27, v30);
    if (v32 == -1)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v61 = v32 + 1;
  }

  else
  {

    v61 = 0;
  }

  v33 = *MEMORY[0x277D51380];
  v34 = *(v17 + 104);
  v69 = v16;
  v34(v19, v33, v16);
  v35 = *MEMORY[0x277D51768];
  v36 = *(v13 + 104);
  v68 = v12;
  v36(v15, v35, v12);
  v37 = sub_20C133E44();
  v39 = v38;
  v41 = v70;
  v40 = v71;
  v42 = v72;
  (*(v70 + 104))(v71, *MEMORY[0x277D52408], v72);
  sub_20BEAE24C(v19, v15, v37, v39, v40, v76, v73, v78);

  (*(v41 + 8))(v40, v42);
  (*(v13 + 8))(v15, v68);
  (*(v17 + 8))(v19, v69);
  v43 = sub_20C133FF4();
  if (v45 == -1)
  {
LABEL_8:
    v50 = sub_20C134E14();
    sub_20BEB3F38(&qword_27C76FFB0, MEMORY[0x277D51150], MEMORY[0x277D51158]);
    v51 = swift_allocError();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x277D51148], v50);
    *(swift_allocObject() + 16) = v51;
    sub_20C137CA4();
    return;
  }

  v46 = v43;
  v47 = v44;
  v48 = v45;
  sub_20C133FE4();
  if (v49)
  {
    sub_20B584078(v46, v47, v48);
    goto LABEL_8;
  }

  sub_20C133E44();
  sub_20C132E64();
  v53 = v62;
  sub_20C134AA4();
  v55 = v66;
  v54 = v67;
  v56 = v63;
  (*(v66 + 32))(v63, v53, v67);
  (*(v78 + 80))(v79, v76);
  __swift_project_boxed_opaque_existential_1(v79, v79[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0, &qword_20C162E60);
  v57 = *(sub_20C1351C4() - 8);
  v58 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_20C14F980;
  (*(v55 + 16))(v59 + v58, v56, v54);
  swift_storeEnumTagMultiPayload();
  sub_20C139734();

  (*(v55 + 8))(v56, v54);
  __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t sub_20BEA415C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v59 = a2;
  v54 = sub_20C134014();
  v52 = *(v54 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v57 = *(v3 - 8);
  v58 = v3;
  v56 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v46 - v6;
  v7 = sub_20C135ED4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C1352E4();
  v47 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C134F24();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, *MEMORY[0x277D513A8], v15, v17);
  (*(v12 + 104))(v14, *MEMORY[0x277D51768], v11);
  v20 = sub_20C133E44();
  v22 = v21;
  (*(v8 + 104))(v10, *MEMORY[0x277D52408], v7);
  v23 = v20;
  v24 = v50;
  sub_20BEABA58(v19, v14, v23, v22, v10);

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v47);
  (*(v16 + 8))(v19, v15);
  __swift_project_boxed_opaque_existential_1((v24 + 368), *(v24 + 392));
  v25 = v49;
  sub_20C139724();
  v26 = swift_allocObject();
  swift_weakInit();
  v28 = v51;
  v27 = v52;
  v29 = v54;
  (*(v52 + 16))(v51, v48, v54);
  v30 = v27;
  v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v32 = (v53 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v30 + 32))(v33 + v31, v28, v29);
  *(v33 + v32) = v26;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BEB3FAC;
  *(v34 + 24) = v33;
  v35 = v57;
  v36 = v55;
  v37 = v25;
  v38 = v25;
  v39 = v58;
  (*(v57 + 16))(v55, v37, v58);
  v40 = v35;
  v41 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v42 = (v56 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v40 + 32))(v43 + v41, v36, v39);
  v44 = (v43 + v42);
  *v44 = sub_20B87619C;
  v44[1] = v34;
  sub_20C137C94();
  return (*(v40 + 8))(v38, v39);
}

uint64_t sub_20BEA4718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v59 = a2;
  v54 = sub_20C134014();
  v52 = *(v54 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v57 = *(v3 - 8);
  v58 = v3;
  v56 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v46 - v6;
  v7 = sub_20C135ED4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C1352E4();
  v47 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C134F24();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, *MEMORY[0x277D513A8], v15, v17);
  (*(v12 + 104))(v14, *MEMORY[0x277D51768], v11);
  v20 = sub_20C133E44();
  v22 = v21;
  (*(v8 + 104))(v10, *MEMORY[0x277D52408], v7);
  v23 = v20;
  v24 = v50;
  sub_20BEAC790(v19, v14, v23, v22, v10);

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v47);
  (*(v16 + 8))(v19, v15);
  __swift_project_boxed_opaque_existential_1((v24 + 424), *(v24 + 448));
  v25 = v49;
  sub_20C139724();
  v26 = swift_allocObject();
  swift_weakInit();
  v28 = v51;
  v27 = v52;
  v29 = v54;
  (*(v52 + 16))(v51, v48, v54);
  v30 = v27;
  v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v32 = (v53 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v30 + 32))(v33 + v31, v28, v29);
  *(v33 + v32) = v26;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BEB4004;
  *(v34 + 24) = v33;
  v35 = v57;
  v36 = v55;
  v37 = v25;
  v38 = v25;
  v39 = v58;
  (*(v57 + 16))(v55, v37, v58);
  v40 = v35;
  v41 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v42 = (v56 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v40 + 32))(v43 + v41, v36, v39);
  v44 = (v43 + v42);
  *v44 = sub_20B87619C;
  v44[1] = v34;
  sub_20C137C94();
  return (*(v40 + 8))(v38, v39);
}

uint64_t sub_20BEA4CD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v59 = a2;
  v54 = sub_20C134014();
  v52 = *(v54 - 8);
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v57 = *(v3 - 8);
  v58 = v3;
  v56 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v46 - v6;
  v7 = sub_20C135ED4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C1352E4();
  v47 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C134F24();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v19, *MEMORY[0x277D513A8], v15, v17);
  (*(v12 + 104))(v14, *MEMORY[0x277D51768], v11);
  v20 = sub_20C133E44();
  v22 = v21;
  (*(v8 + 104))(v10, *MEMORY[0x277D52408], v7);
  v23 = v20;
  v24 = v50;
  sub_20BEAD4C8(v19, v14, v23, v22, v10);

  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v47);
  (*(v16 + 8))(v19, v15);
  __swift_project_boxed_opaque_existential_1((v24 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueClient), *(v24 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueClient + 24));
  v25 = v49;
  sub_20C139724();
  v26 = swift_allocObject();
  swift_weakInit();
  v28 = v51;
  v27 = v52;
  v29 = v54;
  (*(v52 + 16))(v51, v48, v54);
  v30 = v27;
  v31 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v32 = (v53 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  (*(v30 + 32))(v33 + v31, v28, v29);
  *(v33 + v32) = v26;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_20BEB4030;
  *(v34 + 24) = v33;
  v35 = v57;
  v36 = v55;
  v37 = v25;
  v38 = v25;
  v39 = v58;
  (*(v57 + 16))(v55, v37, v58);
  v40 = v35;
  v41 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v42 = (v56 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v40 + 32))(v43 + v41, v36, v39);
  v44 = (v43 + v42);
  *v44 = sub_20B87619C;
  v44[1] = v34;
  sub_20C137C94();
  return (*(v40 + 8))(v38, v39);
}

uint64_t sub_20BEA529C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a1;
  v57 = a4;
  v67 = a5;
  v68 = a3;
  v62 = sub_20C134014();
  v60 = *(v62 - 8);
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768680, &unk_20C155C90);
  v65 = *(v7 - 8);
  v66 = v7;
  v64 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v63 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v58 = &v52 - v10;
  v11 = sub_20C135ED4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_20C1352E4();
  v53 = v15;
  v54 = *(v15 - 8);
  v16 = v54;
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_20C134F24();
  v19 = *(v55 - 8);
  v20 = MEMORY[0x28223BE20](v55);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 104))(v22, *MEMORY[0x277D513A8], v20);
  (*(v16 + 104))(v18, *MEMORY[0x277D51768], v15);
  v23 = sub_20C133E44();
  v25 = v24;
  v26 = v14;
  (*(v12 + 104))(v14, *MEMORY[0x277D52408], v11);
  v27 = v14;
  v28 = v57;
  sub_20BEAE24C(v22, v18, v23, v25, v27, a2, v68, v57);

  (*(v12 + 8))(v26, v11);
  (*(v54 + 8))(v18, v53);
  (*(v19 + 8))(v22, v55);
  v29 = v28;
  (*(v28 + 80))(v69, a2, v28);
  __swift_project_boxed_opaque_existential_1(v69, v69[3]);
  v30 = v58;
  sub_20C139724();
  v31 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v33 = v59;
  v32 = v60;
  v34 = v62;
  (*(v60 + 16))(v59, v56, v62);
  v35 = v32;
  v36 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v37 = (v61 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v68;
  *(v38 + 2) = a2;
  *(v38 + 3) = v39;
  *(v38 + 4) = v29;
  (*(v35 + 32))(&v38[v36], v33, v34);
  *&v38[v37] = v31;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_20BEB3E04;
  *(v40 + 24) = v38;
  v41 = v65;
  v42 = v63;
  v43 = v30;
  v44 = v30;
  v45 = v66;
  (*(v65 + 16))(v63, v43, v66);
  v46 = v41;
  v47 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v48 = (v64 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  (*(v46 + 32))(v49 + v47, v42, v45);
  v50 = (v49 + v48);
  *v50 = sub_20B875FF0;
  v50[1] = v40;
  sub_20C137C94();
  (*(v46 + 8))(v44, v45);
  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_20BEA58D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = a2;
  v4 = sub_20C135ED4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C1352E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C134F24();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, *MEMORY[0x277D51488], v12, v14);
  (*(v9 + 104))(v11, *MEMORY[0x277D51768], v8);
  (*(v5 + 104))(v7, *MEMORY[0x277D523D8], v4);
  sub_20BEAE24C(v16, v11, 0x6361745377656956, 0xE90000000000006BLL, v7, a1, v19, v20);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  return (*(v13 + 8))(v16, v12);
}

void *sub_20BEA5B80()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_20C134104();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9SeymourUI40WorkoutPlanWeekdayDetailPageDataProvider_configuration;
  swift_beginAccess();
  sub_20B58C2DC(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20B520158(v3, &qword_27C761800, &qword_20C14FDA0);
    return MEMORY[0x277D84F90];
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = sub_20C133FF4();
  if (v11 == -1)
  {
LABEL_10:
    (*(v5 + 8))(v7, v4);
    return MEMORY[0x277D84F90];
  }

  if ((v11 & 1) == 0)
  {
    sub_20B584078(v9, v10, v11);
    goto LABEL_10;
  }

  v12 = v9;
  v13 = sub_20C133F74();
  MEMORY[0x28223BE20](v13);
  *(&v17 - 2) = v7;
  *(&v17 - 8) = v12;
  if ((v12 & 0xFE) != 0)
  {
    v14 = sub_20BEB45D8;
  }

  else
  {
    v14 = sub_20BEB45F0;
  }

  v15 = sub_20B613908(v14, (&v17 - 4), v13);

  (*(v5 + 8))(v7, v4);
  return v15;
}

void *sub_20BEA5DF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_20C134104();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9SeymourUI35TVWorkoutPlanDetailPageDataProvider_configuration;
  swift_beginAccess();
  sub_20B58C2DC(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20B520158(v3, &qword_27C761800, &qword_20C14FDA0);
    return MEMORY[0x277D84F90];
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = sub_20C133FF4();
  if (v11 == -1)
  {
LABEL_10:
    (*(v5 + 8))(v7, v4);
    return MEMORY[0x277D84F90];
  }

  if ((v11 & 1) == 0)
  {
    sub_20B584078(v9, v10, v11);
    goto LABEL_10;
  }

  v12 = v9;
  v13 = sub_20C133F74();
  MEMORY[0x28223BE20](v13);
  *(&v17 - 2) = v7;
  *(&v17 - 8) = v12;
  if ((v12 & 0xFE) != 0)
  {
    v14 = sub_20BEB45D8;
  }

  else
  {
    v14 = sub_20BEB45F0;
  }

  v15 = sub_20B613908(v14, (&v17 - 4), v13);

  (*(v5 + 8))(v7, v4);
  return v15;
}

void *sub_20BEA6068()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_20C134104();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_configuration;
  swift_beginAccess();
  sub_20B58C2DC(v0 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20B520158(v3, &qword_27C761800, &qword_20C14FDA0);
    return MEMORY[0x277D84F90];
  }

  (*(v5 + 32))(v7, v3, v4);
  v9 = sub_20C133FF4();
  if (v11 == -1)
  {
LABEL_10:
    (*(v5 + 8))(v7, v4);
    return MEMORY[0x277D84F90];
  }

  if ((v11 & 1) == 0)
  {
    sub_20B584078(v9, v10, v11);
    goto LABEL_10;
  }

  v12 = v9;
  v13 = sub_20C133F74();
  MEMORY[0x28223BE20](v13);
  *(&v17 - 2) = v7;
  *(&v17 - 8) = v12;
  if ((v12 & 0xFE) != 0)
  {
    v14 = sub_20BEB45D8;
  }

  else
  {
    v14 = sub_20BEB45F0;
  }

  v15 = sub_20B613908(v14, (&v17 - 4), v13);

  (*(v5 + 8))(v7, v4);
  return v15;
}

void *sub_20BEA62DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C761800, &qword_20C14FDA0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22[-v7];
  v9 = sub_20C134104();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(a4 + 208))(a2, a4, v11);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20B520158(v8, &qword_27C761800, &qword_20C14FDA0);
    return MEMORY[0x277D84F90];
  }

  (*(v10 + 32))(v13, v8, v9);
  v14 = sub_20C133FF4();
  if (v16 == -1)
  {
LABEL_10:
    (*(v10 + 8))(v13, v9);
    return MEMORY[0x277D84F90];
  }

  if ((v16 & 1) == 0)
  {
    sub_20B584078(v14, v15, v16);
    goto LABEL_10;
  }

  v17 = v14;
  v18 = sub_20C133F74();
  MEMORY[0x28223BE20](v18);
  *&v22[-16] = v13;
  v22[-8] = v17;
  if ((v17 & 0xFE) != 0)
  {
    v19 = sub_20B622280;
  }

  else
  {
    v19 = sub_20B6222C8;
  }

  v20 = sub_20B613908(v19, &v22[-32], v18);

  (*(v10 + 8))(v13, v9);
  return v20;
}

uint64_t sub_20BEA6550(uint64_t a1, uint64_t a2, double a3)
{
  v80 = a2;
  v6 = sub_20C137254();
  v77 = *(v6 - 8);
  v78 = v6;
  v79 = *(v77 + 64);
  MEMORY[0x28223BE20](v6);
  v76 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20C134014();
  v88 = *(v74 - 8);
  v75 = *(v88 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v10 = *(v9 - 8);
  v82 = v9;
  v83 = v10;
  MEMORY[0x28223BE20](v9);
  v81 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30, &unk_20C151290);
  v13 = *(v12 - 8);
  v85 = v12;
  v86 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v84 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v62 - v16;
  MEMORY[0x28223BE20](v17);
  v90 = &v62 - v18;
  MEMORY[0x28223BE20](v19);
  v87 = &v62 - v20;
  __swift_project_boxed_opaque_existential_1((v3 + 152), *(v3 + 176));
  v65 = a1;
  sub_20C133E44();
  sub_20C13A0C4();

  v64 = v3;
  __swift_project_boxed_opaque_existential_1((v64 + 152), *(v64 + 176));
  sub_20C133E44();
  v21 = v90;
  sub_20C13A0B4();

  v22 = v86;
  v23 = v86 + 16;
  v24 = *(v86 + 16);
  v25 = v21;
  v26 = v85;
  v24(&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v85);
  v27 = v24;
  v71 = v24;
  v72 = v23;
  v28 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v29 = v28 + v14;
  v68 = *(v22 + 80);
  v30 = swift_allocObject();
  v31 = v22 + 32;
  v32 = *(v22 + 32);
  v33 = v28;
  v69 = v28;
  v34 = v30 + v28;
  v35 = v84;
  v32(v34, v84, v26);
  v67 = v32;
  v70 = v31;
  v27(v35, v87, v26);
  v36 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = v36;
  v37 = swift_allocObject();
  v32(v37 + v33, v35, v26);
  v38 = (v37 + v36);
  *v38 = sub_20BEB45C8;
  v38[1] = v30;
  sub_20C135AE4();
  sub_20C137C94();
  v63 = swift_allocObject();
  swift_weakInit();
  v39 = v88;
  v40 = v73;
  v41 = v74;
  (*(v88 + 16))(v73, v65, v74);
  v42 = v76;
  v43 = v77;
  v44 = v78;
  (*(v77 + 16))(v76, v80, v78);
  v45 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v46 = (v75 + *(v43 + 80) + v45) & ~*(v43 + 80);
  v47 = (v79 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  (*(v88 + 32))(v48 + v45, v40, v41);
  (*(v43 + 32))(v48 + v46, v42, v44);
  *(v48 + v47) = a3;
  *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_20BEB3F80;
  *(v49 + 24) = v48;
  v50 = v84;
  v51 = v85;
  v52 = v89;
  v71(v84, v89, v85);
  v53 = v66;
  v54 = swift_allocObject();
  v67(v54 + v69, v50, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B80E740;
  v55[1] = v49;
  v56 = v81;
  sub_20C137C94();
  v57 = *(v86 + 8);
  v57(v52, v51);
  v58 = v82;
  v59 = sub_20C137CB4();
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  v59(sub_20B5DF6DC, v60);

  (*(v83 + 8))(v56, v58);
  v57(v90, v51);
  return (v57)(v87, v51);
}

uint64_t sub_20BEA6CD0(uint64_t a1, uint64_t a2, double a3)
{
  v80 = a2;
  v6 = sub_20C137254();
  v77 = *(v6 - 8);
  v78 = v6;
  v79 = *(v77 + 64);
  MEMORY[0x28223BE20](v6);
  v76 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20C134014();
  v88 = *(v74 - 8);
  v75 = *(v88 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v10 = *(v9 - 8);
  v82 = v9;
  v83 = v10;
  MEMORY[0x28223BE20](v9);
  v81 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30, &unk_20C151290);
  v13 = *(v12 - 8);
  v85 = v12;
  v86 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v84 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v62 - v16;
  MEMORY[0x28223BE20](v17);
  v90 = &v62 - v18;
  MEMORY[0x28223BE20](v19);
  v87 = &v62 - v20;
  __swift_project_boxed_opaque_existential_1((v3 + 96), *(v3 + 120));
  v65 = a1;
  sub_20C133E44();
  sub_20C13A0C4();

  v64 = v3;
  __swift_project_boxed_opaque_existential_1((v64 + 96), *(v64 + 120));
  sub_20C133E44();
  v21 = v90;
  sub_20C13A0B4();

  v22 = v86;
  v23 = v86 + 16;
  v24 = *(v86 + 16);
  v25 = v21;
  v26 = v85;
  v24(&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v85);
  v27 = v24;
  v71 = v24;
  v72 = v23;
  v28 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v29 = v28 + v14;
  v68 = *(v22 + 80);
  v30 = swift_allocObject();
  v31 = v22 + 32;
  v32 = *(v22 + 32);
  v33 = v28;
  v69 = v28;
  v34 = v30 + v28;
  v35 = v84;
  v32(v34, v84, v26);
  v67 = v32;
  v70 = v31;
  v27(v35, v87, v26);
  v36 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = v36;
  v37 = swift_allocObject();
  v32(v37 + v33, v35, v26);
  v38 = (v37 + v36);
  *v38 = sub_20BEB45C8;
  v38[1] = v30;
  sub_20C135AE4();
  sub_20C137C94();
  v63 = swift_allocObject();
  swift_weakInit();
  v39 = v88;
  v40 = v73;
  v41 = v74;
  (*(v88 + 16))(v73, v65, v74);
  v42 = v76;
  v43 = v77;
  v44 = v78;
  (*(v77 + 16))(v76, v80, v78);
  v45 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v46 = (v75 + *(v43 + 80) + v45) & ~*(v43 + 80);
  v47 = (v79 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  (*(v88 + 32))(v48 + v45, v40, v41);
  (*(v43 + 32))(v48 + v46, v42, v44);
  *(v48 + v47) = a3;
  *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_20BEB3FD8;
  *(v49 + 24) = v48;
  v50 = v84;
  v51 = v85;
  v52 = v89;
  v71(v84, v89, v85);
  v53 = v66;
  v54 = swift_allocObject();
  v67(v54 + v69, v50, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B80E740;
  v55[1] = v49;
  v56 = v81;
  sub_20C137C94();
  v57 = *(v86 + 8);
  v57(v52, v51);
  v58 = v82;
  v59 = sub_20C137CB4();
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  v59(sub_20B5DF6DC, v60);

  (*(v83 + 8))(v56, v58);
  v57(v90, v51);
  return (v57)(v87, v51);
}

uint64_t sub_20BEA7450(uint64_t a1, uint64_t a2, double a3)
{
  v80 = a2;
  v6 = sub_20C137254();
  v77 = *(v6 - 8);
  v78 = v6;
  v79 = *(v77 + 64);
  MEMORY[0x28223BE20](v6);
  v76 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_20C134014();
  v88 = *(v74 - 8);
  v75 = *(v88 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v10 = *(v9 - 8);
  v82 = v9;
  v83 = v10;
  MEMORY[0x28223BE20](v9);
  v81 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30, &unk_20C151290);
  v13 = *(v12 - 8);
  v85 = v12;
  v86 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v84 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v89 = &v62 - v16;
  MEMORY[0x28223BE20](v17);
  v90 = &v62 - v18;
  MEMORY[0x28223BE20](v19);
  v87 = &v62 - v20;
  __swift_project_boxed_opaque_existential_1((v3 + 168), *(v3 + 192));
  v65 = a1;
  sub_20C133E44();
  sub_20C13A0C4();

  v64 = v3;
  __swift_project_boxed_opaque_existential_1((v64 + 168), *(v64 + 192));
  sub_20C133E44();
  v21 = v90;
  sub_20C13A0B4();

  v22 = v86;
  v23 = v86 + 16;
  v24 = *(v86 + 16);
  v25 = v21;
  v26 = v85;
  v24(&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v85);
  v27 = v24;
  v71 = v24;
  v72 = v23;
  v28 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v29 = v28 + v14;
  v68 = *(v22 + 80);
  v30 = swift_allocObject();
  v31 = v22 + 32;
  v32 = *(v22 + 32);
  v33 = v28;
  v69 = v28;
  v34 = v30 + v28;
  v35 = v84;
  v32(v34, v84, v26);
  v67 = v32;
  v70 = v31;
  v27(v35, v87, v26);
  v36 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = v36;
  v37 = swift_allocObject();
  v32(v37 + v33, v35, v26);
  v38 = (v37 + v36);
  *v38 = sub_20BEB45C8;
  v38[1] = v30;
  sub_20C135AE4();
  sub_20C137C94();
  v63 = swift_allocObject();
  swift_weakInit();
  v39 = v88;
  v40 = v73;
  v41 = v74;
  (*(v88 + 16))(v73, v65, v74);
  v42 = v76;
  v43 = v77;
  v44 = v78;
  (*(v77 + 16))(v76, v80, v78);
  v45 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v46 = (v75 + *(v43 + 80) + v45) & ~*(v43 + 80);
  v47 = (v79 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  (*(v88 + 32))(v48 + v45, v40, v41);
  (*(v43 + 32))(v48 + v46, v42, v44);
  *(v48 + v47) = a3;
  *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v63;
  v49 = swift_allocObject();
  *(v49 + 16) = sub_20BEB4384;
  *(v49 + 24) = v48;
  v50 = v84;
  v51 = v85;
  v52 = v89;
  v71(v84, v89, v85);
  v53 = v66;
  v54 = swift_allocObject();
  v67(v54 + v69, v50, v51);
  v55 = (v54 + v53);
  *v55 = sub_20B80E740;
  v55[1] = v49;
  v56 = v81;
  sub_20C137C94();
  v57 = *(v86 + 8);
  v57(v52, v51);
  v58 = v82;
  v59 = sub_20C137CB4();
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  v59(sub_20B5DF6DC, v60);

  (*(v83 + 8))(v56, v58);
  v57(v90, v51);
  return (v57)(v87, v51);
}

uint64_t sub_20BEA7BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v77 = a4;
  v75 = a2;
  v81 = a1;
  v73 = sub_20C137254();
  v72 = *(v73 - 8);
  v74 = *(v72 + 64);
  MEMORY[0x28223BE20](v73);
  v71 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_20C134014();
  v87 = *(v69 - 8);
  v70 = *(v87 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v12 = *(v11 - 8);
  v78 = v11;
  v79 = v12;
  MEMORY[0x28223BE20](v11);
  v76 = &v58 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30, &unk_20C151290);
  v84 = *(v82 - 8);
  v14 = v84[8];
  MEMORY[0x28223BE20](v82);
  v80 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v88 = &v58 - v16;
  MEMORY[0x28223BE20](v17);
  v86 = &v58 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v85 = &v58 - v21;
  v83 = *(a5 + 32);
  v66 = a3;
  v67 = a5;
  v83(&v89, a3, a5, v20);
  __swift_project_boxed_opaque_existential_1(&v89, v90);
  sub_20C133E44();
  sub_20C13A0C4();

  __swift_destroy_boxed_opaque_existential_1(&v89);
  (v83)(&v89, a3, a5);
  __swift_project_boxed_opaque_existential_1(&v89, v90);
  sub_20C133E44();
  v22 = v86;
  sub_20C13A0B4();

  __swift_destroy_boxed_opaque_existential_1(&v89);
  v23 = v84;
  v24 = v84 + 2;
  v83 = v84[2];
  v25 = v80;
  v26 = v82;
  (v83)(v80, v22, v82);
  v65 = v24;
  v27 = v23;
  v28 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v62 = *(v23 + 80);
  v29 = swift_allocObject();
  v30 = v27[4];
  v61 = v28;
  v63 = v30;
  v30(v29 + v28, v25, v26);
  v64 = v27 + 4;
  (v83)(v25, v85, v26);
  v31 = (v28 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = v31;
  v32 = swift_allocObject();
  v30(v32 + v28, v25, v26);
  v33 = (v32 + v31);
  *v33 = sub_20BEB2384;
  v33[1] = v29;
  sub_20C135AE4();
  sub_20C137C94();
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v87;
  v35 = v68;
  v36 = v69;
  (*(v87 + 16))(v68, v81, v69);
  v37 = v72;
  v38 = v71;
  v39 = v73;
  (*(v72 + 16))(v71, v75, v73);
  v40 = (*(v34 + 80) + 40) & ~*(v34 + 80);
  v41 = (v70 + *(v37 + 80) + v40) & ~*(v37 + 80);
  v42 = (v74 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  v44 = v77;
  *(v43 + 2) = v66;
  *(v43 + 3) = v44;
  *(v43 + 4) = v67;
  (*(v87 + 32))(&v43[v40], v35, v36);
  (*(v37 + 32))(&v43[v41], v38, v39);
  *&v43[v42] = a6;
  *&v43[(v42 + 15) & 0xFFFFFFFFFFFFFFF8] = v59;
  v45 = swift_allocObject();
  *(v45 + 16) = sub_20BEB3CA8;
  *(v45 + 24) = v43;
  v46 = v80;
  v47 = v88;
  v48 = v82;
  (v83)(v80, v88, v82);
  v49 = v60;
  v50 = swift_allocObject();
  v63(v50 + v61, v46, v48);
  v51 = (v50 + v49);
  *v51 = sub_20B80E4B0;
  v51[1] = v45;
  v52 = v76;
  sub_20C137C94();
  v53 = v84[1];
  v53(v47, v48);
  v54 = v78;
  v55 = sub_20C137CB4();
  v56 = swift_allocObject();
  *(v56 + 16) = 0;
  *(v56 + 24) = 0;
  v55(sub_20B52347C, v56);

  (*(v79 + 8))(v52, v54);
  v53(v86, v48);
  return (v53)(v85, v48);
}

uint64_t sub_20BEA8450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X4>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a5@<X8>)
{
  v31 = a5;
  v32 = a4;
  v27 = a1;
  v28 = a3;
  v30 = a2;
  v29 = sub_20C135ED4();
  v7 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C1352E4();
  v26 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C134F24();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *v28, v14, v16);
  (*(v11 + 104))(v13, *MEMORY[0x277D51768], v10);
  v19 = v29;
  (*(v7 + 104))(v9, *MEMORY[0x277D52408], v29);
  v20 = a1;
  v21 = v30;
  sub_20BEABA58(v18, v13, v20, v30, v9);
  (*(v7 + 8))(v9, v19);
  (*(v11 + 8))(v13, v26);
  (*(v15 + 8))(v18, v14);
  v22 = v5[12];
  v23 = v5[13];
  __swift_project_boxed_opaque_existential_1(v5 + 9, v22);
  return v32(v27, v21, v22, v23);
}

uint64_t sub_20BEA871C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int *a6@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>)
{
  v36 = a7;
  v37 = a2;
  v31 = a6;
  v32 = a3;
  v33 = a5;
  v34 = a4;
  v29 = a1;
  v35 = a8;
  v9 = sub_20C135ED4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C1352E4();
  v28 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_20C134F24();
  v17 = *(v30 - 8);
  v18 = MEMORY[0x28223BE20](v30);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v20, *v31, v18);
  (*(v14 + 104))(v16, *MEMORY[0x277D51768], v13);
  (*(v10 + 104))(v12, *MEMORY[0x277D52408], v9);
  v21 = a1;
  v23 = v32;
  v22 = v33;
  sub_20BEAE24C(v20, v16, v21, v37, v12, v32, v34, v33);
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v28);
  (*(v17 + 8))(v20, v30);
  (*(v22 + 16))(v38, v23, v22);
  v24 = v39;
  v25 = v40;
  __swift_project_boxed_opaque_existential_1(v38, v39);
  v36(v29, v37, v24, v25);
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_20BEA8A34@<X0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X3>)
{
  v7 = sub_20C133E44();
  sub_20BEA9A28(v7, v8, x1_0, v9, a3);
  v11 = v10;

  v12 = sub_20C133E44();
  sub_20BEB1F9C(v12, v13, x1_0, v14, a3);
  v16 = v15;
  LOBYTE(a3) = v17;

  result = sub_20C133FF4();
  *a2 = v11 & 1;
  *(a2 + 8) = v16;
  *(a2 + 16) = a3;
  *(a2 + 24) = result;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 44) = 0;
  *(a2 + 48) = 1;
  return result;
}

uint64_t sub_20BEA8B08(uint64_t a1)
{
  v2 = type metadata accessor for NavigationRequested(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_20B65FE58(a1, v4);
  sub_20BEB3F38(&unk_27C7706F0, type metadata accessor for NavigationRequested, &protocol conformance descriptor for NavigationRequested);
  sub_20C13A764();
  return sub_20B65FEBC(v4, type metadata accessor for NavigationRequested);
}

uint64_t sub_20BEA8C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for NavigationRequested(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 48))(a2, a4, v8);
  swift_getObjectType();
  sub_20B65FE58(a1, v10);
  sub_20BEB3F38(&unk_27C7706F0, type metadata accessor for NavigationRequested, &protocol conformance descriptor for NavigationRequested);
  sub_20C13A764();
  swift_unknownObjectRelease();
  return sub_20B65FEBC(v10, type metadata accessor for NavigationRequested);
}

uint64_t sub_20BEA8D48(uint64_t a1)
{
  v2 = sub_20C136F94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1((v1 + 280), *(v1 + 304));
  sub_20C13B174();
  v9 = sub_20C136C64();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20B520158(v8, &qword_27C768690, &unk_20C14FD90);
    v11 = 0;
  }

  else
  {
    sub_20C1369E4();
    (*(v10 + 8))(v8, v9);
    sub_20BEB3F38(&qword_27C767AF0, MEMORY[0x277D53030], MEMORY[0x277D53040]);
    v11 = sub_20C13DA74();
    (*(v3 + 8))(v5, v2);
  }

  return v11 & 1;
}

uint64_t sub_20BEA8F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_20C136F94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19[-1] - v12;
  (*(a4 + 56))(v19, a2, a4, v11);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  sub_20C13B174();
  v14 = sub_20C136C64();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    sub_20B520158(v13, &qword_27C768690, &unk_20C14FD90);
    v16 = 0;
  }

  else
  {
    sub_20C1369E4();
    (*(v15 + 8))(v13, v14);
    sub_20BEB3F38(&qword_27C767AF0, MEMORY[0x277D53030], MEMORY[0x277D53040]);
    v16 = sub_20C13DA74();
    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  return v16 & 1;
}

double sub_20BEA92BC@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

uint64_t sub_20BEA932C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v41 = a2;
  v6 = sub_20C138034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8, &unk_20C15E830);
  MEMORY[0x28223BE20](v11 - 8);
  v35 = &v34 - v12;
  v13 = *a3;
  swift_beginAccess();
  v14 = *(v3 + v13);
  v15 = v14 + 56;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 56);
  v19 = (v16 + 63) >> 6;
  v39 = v7 + 32;
  v40 = v7;
  v36 = (v7 + 8);
  v37 = v7 + 16;
  result = swift_bridgeObjectRetain_n();
  v21 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_8:
      v23 = v40;
      v24 = v38;
      (*(v40 + 16))(v38, *(v14 + 48) + *(v40 + 72) * (__clz(__rbit64(v18)) | (v22 << 6)), v6);
      v25 = *(v23 + 32);
      v25(v42, v24, v6);
      if (sub_20C138024() == a1 && v26 == v41)
      {

        goto LABEL_16;
      }

      v27 = v14;
      v28 = a1;
      v29 = sub_20C13DFF4();

      if (v29)
      {
        break;
      }

      v18 &= v18 - 1;
      result = (*v36)(v42, v6);
      v21 = v22;
      a1 = v28;
      v14 = v27;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    v31 = v35;
    v25(v35, v42, v6);
    v30 = 0;
LABEL_17:
    v32 = v40;
    (*(v40 + 56))(v31, v30, 1, v6);

    v33 = (*(v32 + 48))(v31, 1, v6) != 1;
    sub_20B520158(v31, &qword_27C763EF8, &unk_20C15E830);
    return v33;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        v30 = 1;
        v31 = v35;
        goto LABEL_17;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20BEA96A8(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v4 = sub_20C138034();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v36 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8, &unk_20C15E830);
  MEMORY[0x28223BE20](v9 - 8);
  v33 = &v32 - v10;
  v11 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_bookmarks;
  swift_beginAccess();
  v12 = *(v2 + v11);
  v13 = v12 + 56;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 56);
  v17 = (v14 + 63) >> 6;
  v37 = v5 + 32;
  v38 = v5;
  v34 = (v5 + 8);
  v35 = v5 + 16;
  result = swift_bridgeObjectRetain_n();
  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_8:
      v21 = v38;
      v22 = v36;
      (*(v38 + 16))(v36, *(v12 + 48) + *(v38 + 72) * (__clz(__rbit64(v16)) | (v20 << 6)), v4);
      v23 = *(v21 + 32);
      v23(v40, v22, v4);
      if (sub_20C138024() == a1 && v24 == v39)
      {

        goto LABEL_16;
      }

      v25 = v12;
      v26 = a1;
      v27 = sub_20C13DFF4();

      if (v27)
      {
        break;
      }

      v16 &= v16 - 1;
      result = (*v34)(v40, v4);
      v19 = v20;
      a1 = v26;
      v12 = v25;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    v29 = v33;
    v23(v33, v40, v4);
    v28 = 0;
LABEL_17:
    v30 = v38;
    (*(v38 + 56))(v29, v28, 1, v4);

    v31 = (*(v30 + 48))(v29, 1, v4) != 1;
    sub_20B520158(v29, &qword_27C763EF8, &unk_20C15E830);
    return v31;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v17)
      {

        v28 = 1;
        v29 = v33;
        goto LABEL_17;
      }

      v16 = *(v13 + 8 * v20);
      ++v19;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_20BEA9A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a2;
  v8 = sub_20C138034();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763EF8, &unk_20C15E830);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v37 = &v37 - v15;
  v16 = a3;
  v17 = v8;
  v18 = (*(a5 + 112))(v16, a5, v14);
  v19 = v18;
  v20 = v18 + 56;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 56);
  v24 = (v21 + 63) >> 6;
  v41 = v9 + 32;
  v42 = v9;
  v38 = (v9 + 8);
  v39 = v9 + 16;

  v25 = 0;
  if (v23)
  {
    while (1)
    {
      v26 = v25;
LABEL_8:
      v27 = v42;
      v28 = v40;
      (*(v42 + 16))(v40, *(v19 + 48) + *(v42 + 72) * (__clz(__rbit64(v23)) | (v26 << 6)), v17);
      v29 = *(v27 + 32);
      v29(v44, v28, v17);
      if (sub_20C138024() == a1 && v30 == v43)
      {

        goto LABEL_16;
      }

      v31 = v19;
      v32 = a1;
      v33 = sub_20C13DFF4();

      if (v33)
      {
        break;
      }

      v23 &= v23 - 1;
      (*v38)(v44, v17);
      v25 = v26;
      a1 = v32;
      v19 = v31;
      if (!v23)
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    v35 = v37;
    v29(v37, v44, v17);
    v34 = 0;
LABEL_17:
    v36 = v42;
    (*(v42 + 56))(v35, v34, 1, v17);

    (*(v36 + 48))(v35, 1, v17);
    sub_20B520158(v35, &qword_27C763EF8, &unk_20C15E830);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        v34 = 1;
        v35 = v37;
        goto LABEL_17;
      }

      v23 = *(v20 + 8 * v26);
      ++v25;
      if (v23)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

double sub_20BEA9E88@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double sub_20BEA9FC0@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double sub_20BEAA0F8@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double sub_20BEAA230@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double sub_20BEAA368@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double sub_20BEAA4A0@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double sub_20BEAA5D8@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double sub_20BEAA710@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double sub_20BEAA848@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double sub_20BEAA980@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double sub_20BEAAABC@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double sub_20BEAABF4@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

uint64_t sub_20BEAAC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a2;
  v8 = sub_20C134B14();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(a5 + 184))(a3, a5, v10);
  v14 = result;
  v15 = 0;
  v16 = *(result + 16);
  v21[1] = v9 + 16;
  v22 = v16;
  v17 = (v9 + 8);
  while (1)
  {
    v19 = v15;
    if (v22 == v15)
    {
      goto LABEL_8;
    }

    if (v15 >= *(v14 + 16))
    {
      break;
    }

    (*(v9 + 16))(v12, v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v8);
    if (sub_20C134AB4() == a1 && v20 == v23)
    {

      (*v17)(v12, v8);
LABEL_8:

      return v22 != v19;
    }

    ++v15;
    v18 = sub_20C13DFF4();

    result = (*v17)(v12, v8);
    if (v18)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BEAAE38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *((*(a3 + 184))(a1, a3) + 16);

  return v3;
}

uint64_t sub_20BEAAF0C(uint64_t a1, uint64_t a2, void (*a3)(char *, char *, uint64_t, unint64_t, char *))
{
  v18 = a3;
  v3 = sub_20C135ED4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C1352E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C134F24();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x277D51488], v11, v13);
  (*(v8 + 104))(v10, *MEMORY[0x277D51768], v7);
  (*(v4 + 104))(v6, *MEMORY[0x277D523D8], v3);
  v18(v15, v10, 0x6361745377656956, 0xE90000000000006BLL, v6);
  (*(v4 + 8))(v6, v3);
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_20BEAB1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X4>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, uint64_t a5@<X8>)
{
  v31 = a5;
  v32 = a4;
  v27 = a1;
  v28 = a3;
  v30 = a2;
  v29 = sub_20C135ED4();
  v7 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C1352E4();
  v26 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C134F24();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 104))(v18, *v28, v14, v16);
  (*(v11 + 104))(v13, *MEMORY[0x277D51768], v10);
  v19 = v29;
  (*(v7 + 104))(v9, *MEMORY[0x277D52408], v29);
  v20 = a1;
  v21 = v30;
  sub_20BEAC790(v18, v13, v20, v30, v9);
  (*(v7 + 8))(v9, v19);
  (*(v11 + 8))(v13, v26);
  (*(v15 + 8))(v18, v14);
  v22 = v5[31];
  v23 = v5[32];
  __swift_project_boxed_opaque_existential_1(v5 + 28, v22);
  return v32(v27, v21, v22, v23);
}

uint64_t sub_20BEAB4D4@<X0>(uint64_t *a2@<X3>, uint64_t a3@<X8>, uint64_t *x4_0@<X4>)
{
  v7 = sub_20C133E44();
  LOBYTE(a2) = sub_20BEA932C(v7, v8, a2);

  v9 = sub_20C133E44();
  v11 = sub_20BEB1790(v9, v10, x4_0);
  v13 = v12;

  result = sub_20C133FF4();
  *a3 = a2 & 1;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13;
  *(a3 + 24) = result;
  *(a3 + 32) = v15;
  *(a3 + 40) = v16;
  *(a3 + 44) = 0;
  *(a3 + 48) = 1;
  return result;
}

uint64_t sub_20BEAB5A0(uint64_t a1)
{
  v2 = type metadata accessor for NavigationRequested(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_20B65FE58(a1, v4);
  sub_20BEB3F38(&unk_27C7706F0, type metadata accessor for NavigationRequested, &protocol conformance descriptor for NavigationRequested);
  sub_20C13A764();
  return sub_20B65FEBC(v4, type metadata accessor for NavigationRequested);
}

uint64_t sub_20BEAB6B0(uint64_t a1)
{
  v2 = sub_20C136F94();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1((v1 + 344), *(v1 + 368));
  sub_20C13B174();
  v9 = sub_20C136C64();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_20B520158(v8, &qword_27C768690, &unk_20C14FD90);
    v11 = 0;
  }

  else
  {
    sub_20C1369E4();
    (*(v10 + 8))(v8, v9);
    sub_20BEB3F38(&qword_27C767AF0, MEMORY[0x277D53030], MEMORY[0x277D53040]);
    v11 = sub_20C13DA74();
    (*(v3 + 8))(v5, v2);
  }

  return v11 & 1;
}

double sub_20BEAB9BC@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

uint64_t sub_20BEABA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v84 = a2;
  v89 = a4;
  v91 = a3;
  v80 = a1;
  v6 = sub_20C1391E4();
  v7 = *(v6 - 8);
  v95 = v6;
  v96 = v7;
  MEMORY[0x28223BE20](v6);
  v94 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134C44();
  MEMORY[0x28223BE20](v9 - 8);
  v93 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v13 - 8);
  v90 = v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v17 - 8);
  v81 = v70 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v19 - 8);
  v79 = v70 - v20;
  v78 = sub_20C135D24();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C134F74();
  v87 = *(v22 - 8);
  v88 = v22;
  MEMORY[0x28223BE20](v22);
  v85 = v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v82 = v70 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v26 - 8);
  v75 = v70 - v27;
  v74 = sub_20C1352E4();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v70 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v32 - 8);
  v70[0] = v70 - v33;
  v34 = sub_20C134F24();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = v70 - v39;
  v71 = sub_20C133654();
  v98 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v97 = v70 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C132E94();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = v70 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51CC64(*(v5 + 256) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v99);
  __swift_project_boxed_opaque_existential_1(v99, v99[3]);
  sub_20C132E84();
  type metadata accessor for CatalogPageImpressionTracker();
  sub_20BEB3F38(&qword_27C768B80, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167050);
  sub_20C139234();
  (*(v43 + 8))(v45, v42);
  __swift_destroy_boxed_opaque_existential_1(v99);
  v46 = *MEMORY[0x277D52B28];
  v47 = sub_20C136664();
  v48 = *(v47 - 8);
  (*(v48 + 104))(v40, v46, v47);
  (*(v48 + 56))(v40, 0, 1, v47);
  (*(v35 + 16))(v37, v80, v34);
  v49 = sub_20C132C14();
  (*(*(v49 - 8) + 56))(v70[0], 1, 1, v49);
  v50 = sub_20C135ED4();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v31, v83, v50);
  (*(v51 + 56))(v31, 0, 1, v50);
  (*(v73 + 16))(v72, v84, v74);
  v52 = sub_20C136E94();
  (*(*(v52 - 8) + 56))(v75, 1, 1, v52);

  v53 = v97;
  sub_20C133644();
  v54 = v76;
  v55 = v71;
  (*(v98 + 16))(v76, v53, v71);
  (*(v77 + 104))(v54, *MEMORY[0x277D52120], v78);
  v56 = v79;
  sub_20B5893F4(v79);
  v57 = sub_20C1333A4();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  v58 = sub_20C135664();
  (*(*(v58 - 8) + 56))(v81, 1, 1, v58);
  v59 = sub_20C135674();
  (*(*(v59 - 8) + 56))(v86, 1, 1, v59);
  v60 = v90;
  sub_20C134F94();
  v61 = sub_20C134FB4();
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
  (*(*(v62 - 8) + 56))(v92, 1, 1, v62);
  v63 = sub_20C135F14();
  (*(*(v63 - 8) + 56))(v93, 1, 1, v63);
  v64 = v82;
  sub_20C134F54();
  v66 = v87;
  v65 = v88;
  (*(v87 + 16))(v85, v64, v88);
  v67 = v94;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20BEB3F38(&qword_281103B30, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  v68 = v95;
  sub_20C13A764();
  (*(v96 + 8))(v67, v68);
  (*(v66 + 8))(v64, v65);
  return (*(v98 + 8))(v97, v55);
}

uint64_t sub_20BEAC790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v84 = a2;
  v89 = a4;
  v91 = a3;
  v80 = a1;
  v6 = sub_20C1391E4();
  v7 = *(v6 - 8);
  v95 = v6;
  v96 = v7;
  MEMORY[0x28223BE20](v6);
  v94 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134C44();
  MEMORY[0x28223BE20](v9 - 8);
  v93 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v11 - 8);
  v92 = v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v13 - 8);
  v90 = v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v15 - 8);
  v86 = v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v17 - 8);
  v81 = v70 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v19 - 8);
  v79 = v70 - v20;
  v78 = sub_20C135D24();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C134F74();
  v87 = *(v22 - 8);
  v88 = v22;
  MEMORY[0x28223BE20](v22);
  v85 = v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v82 = v70 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v26 - 8);
  v75 = v70 - v27;
  v74 = sub_20C1352E4();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = v70 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = v70 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v32 - 8);
  v70[0] = v70 - v33;
  v34 = sub_20C134F24();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = v70 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v38 - 8);
  v40 = v70 - v39;
  v71 = sub_20C133654();
  v98 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v97 = v70 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C132E94();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = v70 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51CC64(*(v5 + 504) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v99);
  __swift_project_boxed_opaque_existential_1(v99, v99[3]);
  sub_20C132E84();
  type metadata accessor for CatalogPageImpressionTracker();
  sub_20BEB3F38(&qword_27C768B80, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167050);
  sub_20C139234();
  (*(v43 + 8))(v45, v42);
  __swift_destroy_boxed_opaque_existential_1(v99);
  v46 = *MEMORY[0x277D52B28];
  v47 = sub_20C136664();
  v48 = *(v47 - 8);
  (*(v48 + 104))(v40, v46, v47);
  (*(v48 + 56))(v40, 0, 1, v47);
  (*(v35 + 16))(v37, v80, v34);
  v49 = sub_20C132C14();
  (*(*(v49 - 8) + 56))(v70[0], 1, 1, v49);
  v50 = sub_20C135ED4();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v31, v83, v50);
  (*(v51 + 56))(v31, 0, 1, v50);
  (*(v73 + 16))(v72, v84, v74);
  v52 = sub_20C136E94();
  (*(*(v52 - 8) + 56))(v75, 1, 1, v52);

  v53 = v97;
  sub_20C133644();
  v54 = v76;
  v55 = v71;
  (*(v98 + 16))(v76, v53, v71);
  (*(v77 + 104))(v54, *MEMORY[0x277D52120], v78);
  v56 = v79;
  sub_20BE1CF94(v79);
  v57 = sub_20C1333A4();
  (*(*(v57 - 8) + 56))(v56, 0, 1, v57);
  v58 = sub_20C135664();
  (*(*(v58 - 8) + 56))(v81, 1, 1, v58);
  v59 = sub_20C135674();
  (*(*(v59 - 8) + 56))(v86, 1, 1, v59);
  v60 = v90;
  sub_20C134F94();
  v61 = sub_20C134FB4();
  (*(*(v61 - 8) + 56))(v60, 0, 1, v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
  (*(*(v62 - 8) + 56))(v92, 1, 1, v62);
  v63 = sub_20C135F14();
  (*(*(v63 - 8) + 56))(v93, 1, 1, v63);
  v64 = v82;
  sub_20C134F54();
  v66 = v87;
  v65 = v88;
  (*(v87 + 16))(v85, v64, v88);
  v67 = v94;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20BEB3F38(&qword_281103B30, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  v68 = v95;
  sub_20C13A764();
  (*(v96 + 8))(v67, v68);
  (*(v66 + 8))(v64, v65);
  return (*(v98 + 8))(v97, v55);
}

uint64_t sub_20BEAD4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v84 = a5;
  v90 = a4;
  v92 = a3;
  v86 = a2;
  v82 = a1;
  v6 = sub_20C1391E4();
  v7 = *(v6 - 8);
  v97 = v6;
  v98 = v7;
  MEMORY[0x28223BE20](v6);
  v96 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C134C44();
  MEMORY[0x28223BE20](v9 - 8);
  v95 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v11 - 8);
  v94 = v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v13 - 8);
  v93 = v72 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v15 - 8);
  v88 = v72 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v17 - 8);
  v83 = v72 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v19 - 8);
  v81 = v72 - v20;
  v80 = sub_20C135D24();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_20C134F74();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v87 = v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v85 = v72 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v25 - 8);
  v77 = v72 - v26;
  v76 = sub_20C1352E4();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v72 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v31 - 8);
  v72[0] = v72 - v32;
  v33 = sub_20C134F24();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = v72 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v37 - 8);
  v39 = v72 - v38;
  v73 = sub_20C133654();
  v100 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v99 = v72 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C132E94();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = v72 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51CC64(*(v5 + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_page) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v101);
  __swift_project_boxed_opaque_existential_1(v101, v101[3]);
  sub_20C132E84();
  type metadata accessor for CatalogPageImpressionTracker();
  sub_20BEB3F38(&qword_27C768B80, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167050);
  sub_20C139234();
  (*(v42 + 8))(v44, v41);
  __swift_destroy_boxed_opaque_existential_1(v101);
  v45 = *MEMORY[0x277D52B28];
  v46 = sub_20C136664();
  v47 = *(v46 - 8);
  (*(v47 + 104))(v39, v45, v46);
  (*(v47 + 56))(v39, 0, 1, v46);
  (*(v34 + 16))(v36, v82, v33);
  v48 = sub_20C132C14();
  (*(*(v48 - 8) + 56))(v72[0], 1, 1, v48);
  v49 = sub_20C135ED4();
  v50 = *(v49 - 8);
  (*(v50 + 16))(v30, v84, v49);
  (*(v50 + 56))(v30, 0, 1, v49);
  (*(v75 + 16))(v74, v86, v76);
  v51 = sub_20C136E94();
  (*(*(v51 - 8) + 56))(v77, 1, 1, v51);

  v52 = v99;
  sub_20C133644();
  v53 = v78;
  v54 = v73;
  (*(v100 + 16))(v78, v52, v73);
  (*(v79 + 104))(v53, *MEMORY[0x277D52120], v80);
  v55 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_metricPage;
  v56 = sub_20C1333A4();
  v57 = *(v56 - 8);
  v58 = v81;
  (*(v57 + 16))(v81, v72[1] + v55, v56);
  (*(v57 + 56))(v58, 0, 1, v56);
  v59 = sub_20C135664();
  (*(*(v59 - 8) + 56))(v83, 1, 1, v59);
  v60 = sub_20C135674();
  (*(*(v60 - 8) + 56))(v88, 1, 1, v60);
  v61 = v93;
  sub_20C134F94();
  v62 = sub_20C134FB4();
  (*(*(v62 - 8) + 56))(v61, 0, 1, v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
  (*(*(v63 - 8) + 56))(v94, 1, 1, v63);
  v64 = sub_20C135F14();
  (*(*(v64 - 8) + 56))(v95, 1, 1, v64);
  v65 = v85;
  sub_20C134F54();
  v66 = v89;
  v67 = v91;
  (*(v89 + 16))(v87, v65, v91);
  v68 = v96;
  sub_20C1391F4();
  swift_getObjectType();
  sub_20BEB3F38(&qword_281103B30, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  v69 = v68;
  v70 = v97;
  sub_20C13A764();
  (*(v98 + 8))(v69, v70);
  (*(v66 + 8))(v65, v67);
  return (*(v100 + 8))(v99, v54);
}

uint64_t sub_20BEAE24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v101 = a8;
  v105 = a7;
  v77 = a6;
  v88 = a5;
  v94 = a4;
  v97 = a3;
  v90 = a2;
  v86 = a1;
  v10 = sub_20C1391E4();
  v11 = *(v10 - 8);
  v102 = v10;
  v103 = v11;
  MEMORY[0x28223BE20](v10);
  v100 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C134C44();
  MEMORY[0x28223BE20](v13 - 8);
  v99 = v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70, &unk_20C153C40);
  MEMORY[0x28223BE20](v15 - 8);
  v98 = v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0, &unk_20C157210);
  MEMORY[0x28223BE20](v17 - 8);
  v96 = v76 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80, &unk_20C153C50);
  MEMORY[0x28223BE20](v19 - 8);
  v92 = v76 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900, &unk_20C157220);
  MEMORY[0x28223BE20](v21 - 8);
  v87 = v76 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90, &unk_20C153C60);
  MEMORY[0x28223BE20](v23 - 8);
  v85 = v76 - v24;
  v84 = sub_20C135D24();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_20C134F74();
  v93 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v89 = v76 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90, &unk_20C1586D0);
  MEMORY[0x28223BE20](v29 - 8);
  v81 = v76 - v30;
  v80 = sub_20C1352E4();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = v76 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v35 - 8);
  v76[0] = v76 - v36;
  v37 = sub_20C134F24();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = v76 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0, &unk_20C14FCF0);
  MEMORY[0x28223BE20](v41 - 8);
  v43 = v76 - v42;
  v44 = sub_20C133654();
  v106 = *(v44 - 8);
  v107 = v44;
  MEMORY[0x28223BE20](v44);
  v104 = v76 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_20C132E94();
  v47 = *(v46 - 8);
  v48 = MEMORY[0x28223BE20](v46);
  v50 = v76 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = v8;
  v51 = (*(v105 + 8))(a6, v48);
  sub_20B51CC64(v51 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v108);

  __swift_project_boxed_opaque_existential_1(v108, v108[3]);
  sub_20C132E84();
  type metadata accessor for CatalogPageImpressionTracker();
  sub_20BEB3F38(&qword_27C768B80, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167050);
  sub_20C139234();
  (*(v47 + 8))(v50, v46);
  __swift_destroy_boxed_opaque_existential_1(v108);
  v52 = *MEMORY[0x277D52B28];
  v53 = sub_20C136664();
  v54 = *(v53 - 8);
  (*(v54 + 104))(v43, v52, v53);
  (*(v54 + 56))(v43, 0, 1, v53);
  (*(v38 + 16))(v40, v86, v37);
  v55 = sub_20C132C14();
  (*(*(v55 - 8) + 56))(v76[0], 1, 1, v55);
  v56 = sub_20C135ED4();
  v57 = *(v56 - 8);
  (*(v57 + 16))(v34, v88, v56);
  (*(v57 + 56))(v34, 0, 1, v56);
  (*(v79 + 16))(v78, v90, v80);
  v58 = sub_20C136E94();
  (*(*(v58 - 8) + 56))(v81, 1, 1, v58);

  v59 = v104;
  sub_20C133644();
  v60 = v82;
  (*(v106 + 16))(v82, v59, v107);
  (*(v83 + 104))(v60, *MEMORY[0x277D52120], v84);
  v108[0] = v76[1];
  v61 = v85;
  v62 = v77;
  (*(v105 + 16))(v77);
  v63 = sub_20C1333A4();
  (*(*(v63 - 8) + 56))(v61, 0, 1, v63);
  v64 = sub_20C135664();
  (*(*(v64 - 8) + 56))(v87, 1, 1, v64);
  v65 = sub_20C135674();
  (*(*(v65 - 8) + 56))(v92, 1, 1, v65);
  v66 = v96;
  sub_20C134F94();
  v67 = sub_20C134FB4();
  (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0, &qword_20C157230);
  (*(*(v68 - 8) + 56))(v98, 1, 1, v68);
  v69 = sub_20C135F14();
  (*(*(v69 - 8) + 56))(v99, 1, 1, v69);
  v70 = v89;
  sub_20C134F54();
  v71 = v93;
  v72 = v95;
  (*(v93 + 16))(v91, v70, v95);
  v73 = v100;
  sub_20C1391F4();
  (*(v101 + 48))(v62);
  swift_getObjectType();
  sub_20BEB3F38(&qword_281103B30, MEMORY[0x277D542C0], MEMORY[0x277D542B8]);
  v74 = v102;
  sub_20C13A764();
  swift_unknownObjectRelease();
  (*(v103 + 8))(v73, v74);
  (*(v71 + 8))(v70, v72);
  return (*(v106 + 8))(v104, v107);
}

uint64_t sub_20BEAF020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CD98, &unk_20C175C90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = sub_20C134B14();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  sub_20B6B6F58(sub_20BEB45A8, a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_20B520158(v9, &qword_27C76CD98, &unk_20C175C90);
  }

  (*(v11 + 32))(v13, v9, v10);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v11 + 8))(v13, v10);
  }

  sub_20B51CC64(Strong + 368, v25);

  v22[2] = v25[4];
  v22[1] = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0, &qword_20C162E60);
  v16 = *(sub_20C1351C4() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20C14F980;
  (*(v11 + 16))(v18 + v17, v13, v10);
  swift_storeEnumTagMultiPayload();
  sub_20C139734();

  v19 = v26;
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B5DF6DC, v21);

  (*(v23 + 8))(v6, v19);
  (*(v11 + 8))(v13, v10);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20BEAF43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CD98, &unk_20C175C90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = sub_20C134B14();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  sub_20B6B6F58(sub_20BEB45A8, a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_20B520158(v9, &qword_27C76CD98, &unk_20C175C90);
  }

  (*(v11 + 32))(v13, v9, v10);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v11 + 8))(v13, v10);
  }

  sub_20B51CC64(Strong + 424, v25);

  v22[2] = v25[4];
  v22[1] = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0, &qword_20C162E60);
  v16 = *(sub_20C1351C4() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20C14F980;
  (*(v11 + 16))(v18 + v17, v13, v10);
  swift_storeEnumTagMultiPayload();
  sub_20C139734();

  v19 = v26;
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B5DF6DC, v21);

  (*(v23 + 8))(v6, v19);
  (*(v11 + 8))(v13, v10);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20BEAF858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CD98, &unk_20C175C90);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  v10 = sub_20C134B14();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a2;
  sub_20B6B6F58(sub_20BEB45A8, a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_20B520158(v9, &qword_27C76CD98, &unk_20C175C90);
  }

  (*(v11 + 32))(v13, v9, v10);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return (*(v11 + 8))(v13, v10);
  }

  sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_upNextQueueClient, v25);

  v22[2] = v25[4];
  v22[1] = __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0, &qword_20C162E60);
  v16 = *(sub_20C1351C4() - 8);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20C14F980;
  (*(v11 + 16))(v18 + v17, v13, v10);
  swift_storeEnumTagMultiPayload();
  sub_20C139734();

  v19 = v26;
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B5DF6DC, v21);

  (*(v23 + 8))(v6, v19);
  (*(v11 + 8))(v13, v10);
  return __swift_destroy_boxed_opaque_existential_1(v25);
}

uint64_t sub_20BEAFC80(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = a4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v29 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v28 = &v26 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CD98, &unk_20C175C90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = sub_20C134B14();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v30 = a2;
  sub_20B6B6F58(sub_20BEB3EF0, v17, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_20B520158(v12, &qword_27C76CD98, &unk_20C175C90);
  }

  (*(v14 + 32))(v16, v12, v13);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return (*(v14 + 8))(v16, v13);
  }

  (*(a6 + 80))(v31, v27, a6);
  swift_unknownObjectRelease();
  v27 = v31[4];
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76CDA0, &qword_20C162E60);
  v19 = *(sub_20C1351C4() - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20C14F980;
  (*(v14 + 16))(v21 + v20, v16, v13);
  swift_storeEnumTagMultiPayload();
  v22 = v28;
  sub_20C139734();

  v23 = v32;
  v24 = sub_20C137CB4();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v24(sub_20B5DF6DC, v25);

  (*(v29 + 8))(v22, v23);
  (*(v14 + 8))(v16, v13);
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_20BEB00BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == a4() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_20C13DFF4();
  }

  return v10 & 1;
}

uint64_t sub_20BEB0160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v44 = a1;
  v43 = a3;
  v7 = sub_20C135ED4();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20C1352E4();
  v37 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C134F24();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NavigationRequested(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NavigationRequest(0);
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = a2;
  *v19 = sub_20C133E44();
  v19[1] = v20;
  type metadata accessor for WorkoutNavigationResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationResource(0);
  swift_storeEnumTagMultiPayload();
  v21 = v19 + v17[7];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
  *v21 = sub_20C1371C4();
  v21[8] = 0;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a5;
  sub_20C135AA4();
  v23 = sub_20C1344C4();
  (*(*(v23 - 8) + 56))(&v21[v22], 0, 1, v23);
  type metadata accessor for NavigationIntent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource(0);
  swift_storeEnumTagMultiPayload();
  *(v19 + v17[9]) = 0;
  *(v19 + v17[10]) = 0;
  *(v19 + v17[11]) = 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B65FE58(v19, v15);
    sub_20BEB3F38(&unk_27C7706F0, type metadata accessor for NavigationRequested, &protocol conformance descriptor for NavigationRequested);
    sub_20C13A764();
    swift_unknownObjectRelease();
    sub_20B65FEBC(v15, type metadata accessor for NavigationRequested);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v24 = *MEMORY[0x277D513F8];
    v25 = *(v45 + 104);
    v42 = v12;
    v25(v12, v24, v46);
    v26 = v36;
    v27 = v37;
    (*(v37 + 104))(v36, *MEMORY[0x277D51768], v47);
    v28 = sub_20C133E44();
    v30 = v29;
    v32 = v39;
    v31 = v40;
    v33 = v41;
    (*(v40 + 104))(v39, *MEMORY[0x277D52408], v41);
    sub_20BEABA58(v42, v26, v28, v30, v32);

    (*(v31 + 8))(v32, v33);
    (*(v27 + 8))(v26, v47);
    (*(v45 + 8))(v42, v46);
  }

  return sub_20B65FEBC(v19, type metadata accessor for NavigationRequest);
}

uint64_t sub_20BEB06D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v44 = a1;
  v43 = a3;
  v7 = sub_20C135ED4();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20C1352E4();
  v37 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C134F24();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NavigationRequested(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NavigationRequest(0);
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = a2;
  *v19 = sub_20C133E44();
  v19[1] = v20;
  type metadata accessor for WorkoutNavigationResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationResource(0);
  swift_storeEnumTagMultiPayload();
  v21 = v19 + v17[7];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
  *v21 = sub_20C1371C4();
  v21[8] = 0;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a5;
  sub_20C135AA4();
  v23 = sub_20C1344C4();
  (*(*(v23 - 8) + 56))(&v21[v22], 0, 1, v23);
  type metadata accessor for NavigationIntent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource(0);
  swift_storeEnumTagMultiPayload();
  *(v19 + v17[9]) = 0;
  *(v19 + v17[10]) = 0;
  *(v19 + v17[11]) = 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B65FE58(v19, v15);
    sub_20BEB3F38(&unk_27C7706F0, type metadata accessor for NavigationRequested, &protocol conformance descriptor for NavigationRequested);
    sub_20C13A764();
    swift_unknownObjectRelease();
    sub_20B65FEBC(v15, type metadata accessor for NavigationRequested);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v24 = *MEMORY[0x277D513F8];
    v25 = *(v45 + 104);
    v42 = v12;
    v25(v12, v24, v46);
    v26 = v36;
    v27 = v37;
    (*(v37 + 104))(v36, *MEMORY[0x277D51768], v47);
    v28 = sub_20C133E44();
    v30 = v29;
    v32 = v39;
    v31 = v40;
    v33 = v41;
    (*(v40 + 104))(v39, *MEMORY[0x277D52408], v41);
    sub_20BEAC790(v42, v26, v28, v30, v32);

    (*(v31 + 8))(v32, v33);
    (*(v27 + 8))(v26, v47);
    (*(v45 + 8))(v42, v46);
  }

  return sub_20B65FEBC(v19, type metadata accessor for NavigationRequest);
}

uint64_t sub_20BEB0C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v44 = a1;
  v43 = a3;
  v7 = sub_20C135ED4();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20C1352E4();
  v37 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v36 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C134F24();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NavigationRequested(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NavigationRequest(0);
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = a2;
  *v19 = sub_20C133E44();
  v19[1] = v20;
  type metadata accessor for WorkoutNavigationResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationResource(0);
  swift_storeEnumTagMultiPayload();
  v21 = v19 + v17[7];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
  *v21 = sub_20C1371C4();
  v21[8] = 0;
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a5;
  sub_20C135AA4();
  v23 = sub_20C1344C4();
  (*(*(v23 - 8) + 56))(&v21[v22], 0, 1, v23);
  type metadata accessor for NavigationIntent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource(0);
  swift_storeEnumTagMultiPayload();
  *(v19 + v17[9]) = 0;
  *(v19 + v17[10]) = 0;
  *(v19 + v17[11]) = 0;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_20B65FE58(v19, v15);
    sub_20BEB3F38(&unk_27C7706F0, type metadata accessor for NavigationRequested, &protocol conformance descriptor for NavigationRequested);
    sub_20C13A764();
    swift_unknownObjectRelease();
    sub_20B65FEBC(v15, type metadata accessor for NavigationRequested);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v24 = *MEMORY[0x277D513F8];
    v25 = *(v45 + 104);
    v42 = v12;
    v25(v12, v24, v46);
    v26 = v36;
    v27 = v37;
    (*(v37 + 104))(v36, *MEMORY[0x277D51768], v47);
    v28 = sub_20C133E44();
    v30 = v29;
    v32 = v39;
    v31 = v40;
    v33 = v41;
    (*(v40 + 104))(v39, *MEMORY[0x277D52408], v41);
    sub_20BEAD4C8(v42, v26, v28, v30, v32);

    (*(v31 + 8))(v32, v33);
    (*(v27 + 8))(v26, v47);
    (*(v45 + 8))(v42, v46);
  }

  return sub_20B65FEBC(v19, type metadata accessor for NavigationRequest);
}

uint64_t sub_20BEB11C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v43 = a1;
  v40 = a6;
  v46 = a5;
  v42 = a3;
  v41 = sub_20C135ED4();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20C1352E4();
  v37 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v36 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C134F24();
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x28223BE20](v13);
  v48 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NavigationRequested(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for NavigationRequest(0);
  v19 = (v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = a2;
  *v21 = sub_20C133E44();
  v21[1] = v22;
  type metadata accessor for WorkoutNavigationResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationResource(0);
  swift_storeEnumTagMultiPayload();
  v23 = v21 + v19[7];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
  *v23 = sub_20C1371C4();
  v23[8] = 0;
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  *(v23 + 4) = a8;
  sub_20C135AA4();
  v25 = sub_20C1344C4();
  (*(*(v25 - 8) + 56))(&v23[v24], 0, 1, v25);
  type metadata accessor for NavigationIntent(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for NavigationSource(0);
  swift_storeEnumTagMultiPayload();
  *(v21 + v19[9]) = 0;
  *(v21 + v19[10]) = 0;
  *(v21 + v19[11]) = 0;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(a7 + 48))(v46, a7);
    swift_unknownObjectRelease();
    swift_getObjectType();
    sub_20B65FE58(v21, v17);
    sub_20BEB3F38(&unk_27C7706F0, type metadata accessor for NavigationRequested, &protocol conformance descriptor for NavigationRequested);
    sub_20C13A764();
    swift_unknownObjectRelease();
    sub_20B65FEBC(v17, type metadata accessor for NavigationRequested);
  }

  v43 = a7;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    (*(v44 + 104))(v48, *MEMORY[0x277D513F8], v45);
    v26 = v36;
    v27 = v37;
    (*(v37 + 104))(v36, *MEMORY[0x277D51768], v47);
    v28 = sub_20C133E44();
    v30 = v29;
    v31 = v38;
    v32 = v39;
    v33 = v41;
    (*(v39 + 104))(v38, *MEMORY[0x277D52408], v41);
    sub_20BEAE24C(v48, v26, v28, v30, v31, v46, v40, v43);
    swift_unknownObjectRelease();

    (*(v32 + 8))(v31, v33);
    (*(v27 + 8))(v26, v47);
    (*(v44 + 8))(v48, v45);
  }

  return sub_20B65FEBC(v21, type metadata accessor for NavigationRequest);
}

uint64_t sub_20BEB1790(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v44 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A90, &qword_20C169E18);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v37 - v7;
  v8 = sub_20C133524();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v37 - v12;
  MEMORY[0x28223BE20](v13);
  v37 = &v37 - v14;
  v15 = *a3;
  swift_beginAccess();
  v16 = *(v3 + v15);
  v17 = v16 + 56;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 56);
  v21 = (v18 + 63) >> 6;
  v39 = v9 + 16;
  v42 = (v9 + 32);
  v43 = v9;
  v41 = (v9 + 8);
  result = swift_bridgeObjectRetain_n();
  v23 = 0;
  if (v20)
  {
    while (1)
    {
      v24 = v23;
LABEL_8:
      v25 = v43;
      v26 = v40;
      (*(v43 + 16))(v40, *(v16 + 48) + *(v43 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v8);
      v27 = *(v25 + 32);
      v27(v45, v26, v8);
      if (sub_20C133504() == a1 && v28 == v44)
      {

        goto LABEL_16;
      }

      v29 = v16;
      v30 = a1;
      v31 = sub_20C13DFF4();

      if (v31)
      {
        break;
      }

      v20 &= v20 - 1;
      result = (*v41)(v45, v8);
      v23 = v24;
      a1 = v30;
      v16 = v29;
      if (!v20)
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    v33 = v38;
    v27(v38, v45, v8);
    v32 = 0;
LABEL_17:
    v34 = v43;
    (*(v43 + 56))(v33, v32, 1, v8);

    if ((*(v34 + 48))(v33, 1, v8) == 1)
    {
      sub_20B520158(v33, &unk_27C769A90, &qword_20C169E18);
      return 0;
    }

    else
    {
      v35 = v37;
      (*v42)(v37, v33, v8);
      v36 = sub_20C1334E4();
      (*v41)(v35, v8);
      return v36;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v24 >= v21)
      {

        v32 = 1;
        v33 = v38;
        goto LABEL_17;
      }

      v20 = *(v17 + 8 * v24);
      ++v23;
      if (v20)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_20BEB1B94(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A90, &qword_20C169E18);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v35 - v5;
  v6 = sub_20C133524();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v35 - v10;
  MEMORY[0x28223BE20](v11);
  v35 = &v35 - v12;
  v13 = OBJC_IVAR____TtC9SeymourUI26PlaylistDetailDataProvider_assetBundles;
  swift_beginAccess();
  v14 = *(v2 + v13);
  v15 = v14 + 56;
  v16 = 1 << *(v14 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v14 + 56);
  v19 = (v16 + 63) >> 6;
  v37 = v7 + 16;
  v40 = (v7 + 32);
  v41 = v7;
  v39 = (v7 + 8);
  result = swift_bridgeObjectRetain_n();
  v21 = 0;
  if (v18)
  {
    while (1)
    {
      v22 = v21;
LABEL_8:
      v23 = v41;
      v24 = v38;
      (*(v41 + 16))(v38, *(v14 + 48) + *(v41 + 72) * (__clz(__rbit64(v18)) | (v22 << 6)), v6);
      v25 = *(v23 + 32);
      v25(v43, v24, v6);
      if (sub_20C133504() == a1 && v26 == v42)
      {

        goto LABEL_16;
      }

      v27 = v14;
      v28 = a1;
      v29 = sub_20C13DFF4();

      if (v29)
      {
        break;
      }

      v18 &= v18 - 1;
      result = (*v39)(v43, v6);
      v21 = v22;
      a1 = v28;
      v14 = v27;
      if (!v18)
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    v31 = v36;
    v25(v36, v43, v6);
    v30 = 0;
LABEL_17:
    v32 = v41;
    (*(v41 + 56))(v31, v30, 1, v6);

    if ((*(v32 + 48))(v31, 1, v6) == 1)
    {
      sub_20B520158(v31, &unk_27C769A90, &qword_20C169E18);
      return 0;
    }

    else
    {
      v33 = v35;
      (*v40)(v35, v31, v6);
      v34 = sub_20C1334E4();
      (*v39)(v33, v6);
      return v34;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        v30 = 1;
        v31 = v36;
        goto LABEL_17;
      }

      v18 = *(v15 + 8 * v22);
      ++v21;
      if (v18)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_20BEB1F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a2;
  v45 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A90, &qword_20C169E18);
  MEMORY[0x28223BE20](v7 - 8);
  v38 = &v36 - v8;
  v9 = sub_20C133524();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v40 = &v36 - v14;
  v16 = MEMORY[0x28223BE20](v15);
  v37 = &v36 - v17;
  v18 = (*(a5 + 88))(a3, a5, v16);
  v19 = v18;
  v20 = v18 + 56;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 56);
  v24 = (v21 + 63) >> 6;
  v39 = v10 + 16;
  v42 = (v10 + 32);
  v43 = v10;
  v41 = (v10 + 8);

  v25 = 0;
  if (v23)
  {
    while (1)
    {
      v26 = v25;
LABEL_8:
      v27 = v43;
      v28 = v40;
      (*(v43 + 16))(v40, *(v19 + 48) + *(v43 + 72) * (__clz(__rbit64(v23)) | (v26 << 6)), v9);
      v29 = *(v27 + 32);
      v29(v12, v28, v9);
      if (sub_20C133504() == v45 && v30 == v44)
      {

        goto LABEL_16;
      }

      v31 = sub_20C13DFF4();

      if (v31)
      {
        break;
      }

      v23 &= v23 - 1;
      (*v41)(v12, v9);
      v25 = v26;
      if (!v23)
      {
        goto LABEL_5;
      }
    }

LABEL_16:
    v33 = v38;
    v29(v38, v12, v9);
    v32 = 0;
LABEL_17:
    v34 = v43;
    (*(v43 + 56))(v33, v32, 1, v9);

    if ((*(v34 + 48))(v33, 1, v9) == 1)
    {
      sub_20B520158(v33, &unk_27C769A90, &qword_20C169E18);
    }

    else
    {
      v35 = v37;
      (*v42)(v37, v33, v9);
      sub_20C1334E4();
      (*v41)(v35, v9);
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v26 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v26 >= v24)
      {

        v32 = 1;
        v33 = v38;
        goto LABEL_17;
      }

      v23 = *(v20 + 8 * v26);
      ++v25;
      if (v23)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

double sub_20BEB2468@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double sub_20BEB25A0@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double sub_20BEB26D8@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

double sub_20BEB2810@<D0>(uint64_t a2@<X8>, uint64_t x1_0@<X1>, uint64_t a3@<X2>)
{
  sub_20BEA8A34(v7, x1_0, a3);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v5;
  result = *&v8;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  return result;
}

void sub_20BEB2868(uint64_t *a1)
{
  v2 = *(sub_20C134B14() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0DBC(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20BEB2910(v5);
  *a1 = v3;
}

void sub_20BEB2910(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C134B14();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C134B14() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_20BEB2CE4(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20BEB2A3C(0, v2, 1, a1);
  }
}

void sub_20BEB2A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_20C134B14();
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v48 = &v33 - v11;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v47 = &v33 - v15;
  v35 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v18 = *(v13 + 16);
    v17 = v13 + 16;
    v19 = *(v17 + 56);
    v44 = (v17 - 8);
    v45 = v18;
    v46 = v17;
    v41 = (v17 + 16);
    v42 = v16;
    v20 = (v16 + v19 * (a3 - 1));
    v40 = -v19;
    v21 = a1 - a3;
    v34 = v19;
    v22 = v16 + v19 * a3;
LABEL_5:
    v38 = v20;
    v39 = a3;
    v36 = v22;
    v37 = v21;
    v49 = v21;
    v23 = v20;
    while (1)
    {
      v24 = v47;
      v25 = v45;
      (v45)(v47, v22, v8, v14);
      v26 = v48;
      v25(v48, v23, v8);
      v27 = sub_20C134AD4();
      v28 = sub_20C134AD4();
      v29 = *v44;
      (*v44)(v26, v8);
      v29(v24, v8);
      if (v27 >= v28)
      {
LABEL_4:
        a3 = v39 + 1;
        v20 = &v38[v34];
        v21 = v37 - 1;
        v22 = v36 + v34;
        if (v39 + 1 == v35)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v30 = *v41;
      v31 = v43;
      (*v41)(v43, v22, v8);
      swift_arrayInitWithTakeFrontToBack();
      v30(v23, v31, v8);
      v23 += v40;
      v22 += v40;
      if (__CFADD__(v49++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20BEB2CE4(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v118 = a1;
  v9 = sub_20C134B14();
  MEMORY[0x28223BE20](v9);
  v122 = &v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v115 - v12;
  MEMORY[0x28223BE20](v13);
  v138 = &v115 - v14;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v137 = &v115 - v18;
  v19 = a3[1];
  v127 = v16;
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_94:
    v5 = *v118;
    if (!*v118)
    {
      goto LABEL_132;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v127;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_126:
      v21 = sub_20B6A07A0(v21);
    }

    v140 = v21;
    v111 = *(v21 + 2);
    if (v111 >= 2)
    {
      while (*a3)
      {
        v112 = *&v21[16 * v111];
        v113 = *&v21[16 * v111 + 24];
        sub_20BEB36C8(*a3 + *(v9 + 72) * v112, *a3 + *(v9 + 72) * *&v21[16 * v111 + 16], *a3 + *(v9 + 72) * v113, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v113 < v112)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v111 - 2 >= *(v21 + 2))
        {
          goto LABEL_120;
        }

        v114 = &v21[16 * v111];
        *v114 = v112;
        *(v114 + 1) = v113;
        v140 = v21;
        sub_20B6A0714(v111 - 1);
        v21 = v140;
        v111 = *(v140 + 2);
        if (v111 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v20 = 0;
  v135 = (v16 + 8);
  v136 = v16 + 16;
  v134 = (v16 + 32);
  v21 = MEMORY[0x277D84F90];
  v120 = a3;
  v139 = v9;
  while (1)
  {
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v129 = v19;
      v117 = v6;
      v22 = *a3;
      v119 = v20;
      v23 = v127[9];
      v5 = &v22[v23 * (v20 + 1)];
      v24 = v22;
      v133 = v22;
      v25 = v9;
      v26 = v127[2];
      v27 = v137;
      v26(v137, v5, v25, v17);
      v28 = &v24[v23 * v20];
      v29 = v138;
      v125 = v26;
      (v26)(v138, v28, v25);
      v130 = sub_20C134AD4();
      v126 = sub_20C134AD4();
      v30 = v127[1];
      v30(v29, v25);
      v124 = v30;
      v30(v27, v25);
      v31 = v119 + 2;
      v131 = v23;
      v32 = &v133[v23 * (v119 + 2)];
      while (1)
      {
        v33 = v129;
        if (v129 == v31)
        {
          break;
        }

        v34 = v125;
        LODWORD(v133) = v130 < v126;
        v35 = v137;
        v36 = v139;
        (v125)(v137, v32, v139);
        v37 = v138;
        v34(v138, v5, v36);
        v38 = sub_20C134AD4();
        v39 = sub_20C134AD4();
        v40 = v124;
        (v124)(v37, v36);
        v40(v35, v36);
        v21 = v128;
        ++v31;
        v32 += v131;
        v5 += v131;
        if (((v133 ^ (v38 >= v39)) & 1) == 0)
        {
          v33 = v31 - 1;
          break;
        }
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v9 = v139;
      if (v130 < v126)
      {
        if (v33 < v119)
        {
          goto LABEL_123;
        }

        if (v119 < v33)
        {
          v41 = v131 * (v33 - 1);
          v5 = v33 * v131;
          v129 = v33;
          v42 = v33;
          v43 = v119;
          v44 = v119 * v131;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!v45)
              {
                goto LABEL_129;
              }

              v46 = *v134;
              (*v134)(v122, &v45[v44], v9);
              if (v44 < v41 || &v45[v44] >= &v45[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v44 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v46(&v45[v41], v122, v9);
              a3 = v120;
              v21 = v128;
            }

            ++v43;
            v41 -= v131;
            v5 -= v131;
            v44 += v131;
          }

          while (v43 < v42);
          v6 = v117;
          v20 = v119;
          v33 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v33 < v47)
    {
      if (__OFSUB__(v33, v20))
      {
        goto LABEL_122;
      }

      if (v33 - v20 < v116)
      {
        if (__OFADD__(v20, v116))
        {
          goto LABEL_124;
        }

        if (v20 + v116 >= v47)
        {
          v5 = a3[1];
        }

        else
        {
          v5 = v20 + v116;
        }

        if (v5 < v20)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v33 != v5)
        {
          break;
        }
      }
    }

    v5 = v33;
    if (v33 < v20)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_20BC05740(0, *(v21 + 2) + 1, 1, v21);
    }

    v49 = *(v21 + 2);
    v48 = *(v21 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v21 = sub_20BC05740((v48 > 1), v49 + 1, 1, v21);
    }

    *(v21 + 2) = v50;
    v51 = &v21[16 * v49];
    *(v51 + 4) = v20;
    *(v51 + 5) = v5;
    v52 = *v118;
    if (!*v118)
    {
      goto LABEL_131;
    }

    v123 = v5;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v21 + 4);
          v54 = *(v21 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_52:
          if (v56)
          {
            goto LABEL_110;
          }

          v69 = &v21[16 * v50];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_113;
          }

          v75 = &v21[16 * v5 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_117;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v79 = &v21[16 * v50];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_66:
        if (v74)
        {
          goto LABEL_112;
        }

        v82 = &v21[16 * v5];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_115;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_73:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v91 = *&v21[16 * v90 + 32];
        v92 = *&v21[16 * v5 + 40];
        sub_20BEB36C8(*a3 + v127[9] * v91, *a3 + v127[9] * *&v21[16 * v5 + 32], *a3 + v127[9] * v92, v52);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v92 < v91)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_20B6A07A0(v21);
        }

        if (v90 >= *(v21 + 2))
        {
          goto LABEL_107;
        }

        v93 = &v21[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        v140 = v21;
        sub_20B6A0714(v5);
        v21 = v140;
        v50 = *(v140 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v21[16 * v50 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_108;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_109;
      }

      v64 = &v21[16 * v50];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_111;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_114;
      }

      if (v68 >= v60)
      {
        v86 = &v21[16 * v5 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_118;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v123;
    if (v123 >= v19)
    {
      goto LABEL_94;
    }
  }

  v117 = v6;
  v94 = *a3;
  v95 = v127[9];
  v133 = v127[2];
  v96 = &v94[v95 * (v33 - 1)];
  v130 = -v95;
  v131 = v94;
  v119 = v20;
  v97 = (v20 - v33);
  v121 = v95;
  v98 = &v94[v33 * v95];
  v123 = v5;
LABEL_85:
  v129 = v33;
  v124 = v98;
  v125 = v97;
  v126 = v96;
  v99 = v96;
  while (1)
  {
    v100 = v137;
    v101 = v133;
    (v133)(v137, v98, v9, v17);
    v102 = v138;
    v101(v138, v99, v139);
    v103 = sub_20C134AD4();
    v104 = sub_20C134AD4();
    v105 = *v135;
    v106 = v102;
    v9 = v139;
    (*v135)(v106, v139);
    v105(v100, v9);
    if (v103 >= v104)
    {
LABEL_84:
      v33 = v129 + 1;
      v96 = v126 + v121;
      v97 = v125 - 1;
      v5 = v123;
      v98 = &v124[v121];
      if (v129 + 1 != v123)
      {
        goto LABEL_85;
      }

      v6 = v117;
      v20 = v119;
      a3 = v120;
      v21 = v128;
      if (v123 < v119)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    v107 = *v134;
    v108 = v132;
    (*v134)(v132, v98, v9);
    swift_arrayInitWithTakeFrontToBack();
    v107(v99, v108, v9);
    v99 += v130;
    v98 += v130;
    if (__CFADD__(v97++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

void sub_20BEB36C8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v61 = sub_20C134B14();
  v8 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v47 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v64 = a1;
  v63 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v31 = a4 + v17;
    if (v17 >= 1)
    {
      v32 = -v13;
      v51 = a4;
      v52 = (v8 + 16);
      v50 = (v8 + 8);
      v33 = v31;
      v60 = a1;
      v53 = v32;
      do
      {
        v48 = v31;
        v34 = a2;
        v35 = a2 + v32;
        v36 = a3;
        v54 = v34;
        v55 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v64 = v34;
            v62 = v48;
            goto LABEL_58;
          }

          v37 = v36;
          v49 = v31;
          v59 = v36 + v32;
          v38 = v33 + v32;
          v39 = *v52;
          v40 = v57;
          v41 = v33 + v32;
          v42 = v33;
          v43 = v61;
          (*v52)(v57, v41, v61);
          v44 = v58;
          (v39)(v58, v35, v43);
          v56 = sub_20C134AD4();
          v45 = sub_20C134AD4();
          v46 = *v50;
          (*v50)(v44, v43);
          v46(v40, v43);
          if (v56 < v45)
          {
            break;
          }

          v31 = v38;
          v36 = v59;
          if (v37 < v42 || v59 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v55;
            a1 = v60;
          }

          else
          {
            v35 = v55;
            a1 = v60;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v33 = v38;
          v32 = v53;
          v34 = v54;
          if (v38 <= v51)
          {
            a2 = v54;
            goto LABEL_57;
          }
        }

        v33 = v42;
        if (v37 < v54 || v59 >= v54)
        {
          a3 = v59;
          a2 = v55;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v60;
          v31 = v49;
          v32 = v53;
        }

        else
        {
          a3 = v59;
          a2 = v55;
          a1 = v60;
          v31 = v49;
          v32 = v53;
          if (v37 != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v33 > v51);
    }

LABEL_57:
    v64 = a2;
    v62 = v31;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v56 = a4 + v16;
    v62 = a4 + v16;
    v59 = a3;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v54 = v13;
      v55 = v8 + 16;
      v52 = (v8 + 8);
      v53 = v19;
      do
      {
        v60 = a1;
        v20 = v57;
        v21 = v61;
        v22 = v53;
        v53(v57, a2, v61);
        v23 = v58;
        v22(v58, a4, v21);
        v24 = a2;
        v25 = sub_20C134AD4();
        v26 = sub_20C134AD4();
        v27 = *v52;
        (*v52)(v23, v21);
        v27(v20, v21);
        if (v25 >= v26)
        {
          v28 = v54;
          v30 = a4 + v54;
          v29 = v60;
          if (v60 < a4 || v60 >= v30)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v24;
          }

          else
          {
            a2 = v24;
            if (v60 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v63 = v30;
          a4 += v28;
        }

        else
        {
          v28 = v54;
          a2 = v24 + v54;
          v29 = v60;
          if (v60 < v24 || v60 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v60 != v24)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v29 + v28;
        v64 = a1;
      }

      while (a4 < v56 && a2 < v59);
    }
  }

LABEL_58:
  sub_20B6A07B4(&v64, &v63, &v62);
}

uint64_t sub_20BEB3CA8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(sub_20C134014() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_20C137254() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_20BEB11C8(a1, v1 + v7, v1 + v10, *(v1 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), v3, v4, v5, *(v1 + v11));
}

uint64_t sub_20BEB3E04(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(sub_20C134014() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  return sub_20BEAFC80(a1, v1 + v7, *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4, v5);
}

uint64_t sub_20BEB3F38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BEB405C(void *a1, uint64_t (*a2)(void, unint64_t, void))
{
  v5 = *(sub_20C134014() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return a2(*a1, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroyTm_15()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30, &unk_20C151290);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_20BEB41A0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A30, &unk_20C151290);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t objectdestroy_52Tm_0()
{
  v1 = sub_20C134014();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_20C137254();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_20BEB43B0(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, unint64_t, void, double))
{
  v5 = *(sub_20C134014() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C137254() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, v2 + v6, v2 + v9, *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + v10));
}

uint64_t sub_20BEB44D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

char *sub_20BEB4608(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = sub_20C13C0B4();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_20C13C0D4();
  v125 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC9SeymourUI24MeditationPlayButtonView_blurView;
  v15 = [objc_opt_self() smu:5.0 effectWithBlurRadius:?];
  v16 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v17 = v16;
  [v17 setClipsToBounds_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v5[v14] = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI24MeditationPlayButtonView_playButton;
  v19 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v18] = v19;
  if (_UISolariumEnabled())
  {
    v20 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v20 setTranslatesAutoresizingMaskIntoConstraints_];
    [v20 setClipsToBounds_];
    *&v5[OBJC_IVAR____TtC9SeymourUI24MeditationPlayButtonView_tintView] = v20;
    v21 = v20;
    sub_20C13C084();
    sub_20C13C0E4();
    v22 = [objc_allocWithZone(MEMORY[0x277D75348]) &selRef:0.317647059 setSmu:0.960784314 allowsInteractiveDismissWhenFullScreen:{0.698039216, 0.12}];
    v23 = [v22 colorWithAlphaComponent_];

    v126[3] = v11;
    v126[4] = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v126);
    sub_20C13C0C4();

    (*(v125 + 8))(v13, v11);
    sub_20C13D564();

    v24 = &unk_20C181000;
    v25 = &selRef_setDescriptionTextHighlightColor_;
  }

  else
  {
    v26 = [objc_allocWithZone(type metadata accessor for SessionPlayButtonTintView()) initWithFrame_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C151490;
    *(inited + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.317647059 green:0.960784314 blue:0.698039216 alpha:0.12];
    *(inited + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.156862745 green:0.639215686 blue:0.705882353 alpha:0.3];
    sub_20B898F44(inited);
    [v26 setClipsToBounds_];
    [v26 setTranslatesAutoresizingMaskIntoConstraints_];
    *&v5[OBJC_IVAR____TtC9SeymourUI24MeditationPlayButtonView_tintView] = v26;
    v24 = &unk_20C181000;
    v25 = &selRef_setDescriptionTextHighlightColor_;
  }

  v28 = type metadata accessor for MeditationPlayButtonView();
  v127.receiver = v5;
  v127.super_class = v28;
  v29 = objc_msgSendSuper2(&v127, v25[219], a1, a2, a3, a4);
  v30 = OBJC_IVAR____TtC9SeymourUI24MeditationPlayButtonView_playButton;
  v31 = *&v29[OBJC_IVAR____TtC9SeymourUI24MeditationPlayButtonView_playButton];
  v32 = v29;
  v33 = v31;
  v34 = sub_20C13C914();
  [v33 setAccessibilityIdentifier_];

  [*&v29[v30] setContentMode_];
  type metadata accessor for SessionIntroSequenceView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v36 = [objc_opt_self() bundleForClass_];
  v37 = sub_20C13C914();
  v38 = [objc_opt_self() imageNamed:v37 inBundle:v36 compatibleWithTraitCollection:0];

  if (v38)
  {
    v39 = [v38 imageWithRenderingMode_];
  }

  else
  {
    v39 = 0;
  }

  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_20C151490;
  *(v40 + 32) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.317647059 green:0.960784314 blue:0.698039216 alpha:1.0];
  *(v40 + 40) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.156862745 green:0.639215686 blue:v24[326] alpha:1.0];
  v41 = *&v29[v30];
  v42 = v41;
  if (v39)
  {
    v43 = v39;
    v44 = sub_20BA02094(v40);

    v123 = v43;
  }

  else
  {

    v123 = 0;
    v44 = 0;
  }

  [v41 setImage:v44 forState:0];

  v45 = *&v29[v30];
  v118 = v29;
  [v45 setUserInteractionEnabled_];
  v46 = OBJC_IVAR____TtC9SeymourUI24MeditationPlayButtonView_blurView;
  v47 = *&v32[OBJC_IVAR____TtC9SeymourUI24MeditationPlayButtonView_blurView];
  v48 = v32;
  [v48 addSubview_];
  v119 = OBJC_IVAR____TtC9SeymourUI24MeditationPlayButtonView_tintView;
  [v48 addSubview_];
  [v48 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  v125 = swift_initStackObject();
  *(v125 + 16) = xmmword_20C1517D0;
  v49 = *MEMORY[0x277D768C8];
  v50 = *(MEMORY[0x277D768C8] + 8);
  v52 = *(MEMORY[0x277D768C8] + 16);
  v51 = *(MEMORY[0x277D768C8] + 24);
  v53 = *&v32[v46];
  v54 = [v53 leadingAnchor];
  v55 = [v48 leadingAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:v50];
  v120 = v30;
  v57 = v56;

  LODWORD(v58) = 1148846080;
  [v57 setPriority_];
  v59 = v57;
  v60 = [v53 trailingAnchor];
  v61 = [v48 trailingAnchor];
  v62 = -v51;
  v63 = [v60 constraintEqualToAnchor:v61 constant:v62];

  LODWORD(v64) = 1148846080;
  [v63 &selRef_meterUnit];
  v65 = v63;
  v66 = [v53 topAnchor];
  v67 = [v48 &selRef_setLineBreakMode_];
  v68 = [v66 constraintEqualToAnchor:v67 constant:v49];

  LODWORD(v69) = 1148846080;
  [v68 &selRef_meterUnit];
  v70 = [v53 bottomAnchor];
  v71 = [v48 &selRef_secondaryLabel + 5];
  v72 = -v52;
  v73 = [v70 constraintEqualToAnchor:v71 constant:v72];

  LODWORD(v74) = 1148846080;
  [v73 &selRef_meterUnit];
  v75 = swift_allocObject();
  v124 = xmmword_20C14FE90;
  *(v75 + 16) = xmmword_20C14FE90;
  *(v75 + 32) = v59;
  *(v75 + 40) = v65;
  *(v75 + 48) = v68;
  *(v75 + 56) = v73;
  v76 = v68;

  v77 = v125;
  *(v125 + 32) = v75;
  v121 = v77 + 32;
  v78 = *&v48[v119];
  v79 = [v78 leadingAnchor];
  v80 = [v48 leadingAnchor];
  v81 = [v79 constraintEqualToAnchor:v80 constant:v50];

  LODWORD(v82) = 1148846080;
  [v81 &selRef_meterUnit];
  v83 = v81;
  v84 = [v78 trailingAnchor];
  v85 = [v48 trailingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:v62];

  LODWORD(v87) = 1148846080;
  [v86 &selRef_meterUnit];
  v88 = v86;
  v89 = [v78 topAnchor];
  v90 = [v48 topAnchor];
  v91 = [v89 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v92) = 1148846080;
  [v91 &selRef_meterUnit];
  v93 = [v78 bottomAnchor];
  v94 = [v48 bottomAnchor];
  v95 = [v93 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v96) = 1148846080;
  [v95 &selRef_meterUnit];
  v97 = swift_allocObject();
  *(v97 + 16) = v124;
  *(v97 + 32) = v83;
  *(v97 + 40) = v88;
  *(v97 + 48) = v91;
  *(v97 + 56) = v95;
  v98 = v91;

  v99 = v125;
  *(v125 + 40) = v97;
  v100 = swift_allocObject();
  *(v100 + 16) = v124;
  v101 = v120;
  v102 = v118;
  v103 = [*&v118[v120] centerXAnchor];
  v104 = [v48 centerXAnchor];

  v105 = [v103 constraintEqualToAnchor_];
  *(v100 + 32) = v105;
  v106 = [*&v102[v101] centerYAnchor];
  v107 = [v48 centerYAnchor];

  v108 = [v106 constraintEqualToAnchor_];
  *(v100 + 40) = v108;
  v109 = [*&v102[v101] widthAnchor];
  v110 = [v48 widthAnchor];

  v111 = [v109 constraintEqualToAnchor:v110 multiplier:0.68];
  *(v100 + 48) = v111;
  v112 = [*&v102[v101] heightAnchor];
  v113 = [*&v102[v101] widthAnchor];
  v114 = [v112 constraintEqualToAnchor_];

  *(v100 + 56) = v114;
  *(v99 + 48) = v100;
  v115 = objc_opt_self();
  sub_20BE54D20(v99);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B5E29D0();
  v116 = sub_20C13CC54();

  [v115 activateConstraints_];

  return v48;
}

void sub_20BEB5498(uint64_t a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for MeditationPlayButtonView();
  objc_msgSendSuper2(&v8, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI24MeditationPlayButtonView_blurView];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];

  v5 = *&v1[OBJC_IVAR____TtC9SeymourUI24MeditationPlayButtonView_tintView];
  v6 = [v5 layer];
  [v5 bounds];
  [v6 setCornerRadius_];
}

id sub_20BEB55CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MeditationPlayButtonView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_20BEB5680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR____TtC9SeymourUI24MeditationPlayButtonView_playButton);
  sub_20B68E264(a1, v15);
  v7 = v16;
  if (v16)
  {
    v8 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x28223BE20](v8);
    v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_20C13DFD4();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    v13 = 0;
  }

  [v6 addTarget:v13 action:a2 forControlEvents:a3];
  swift_unknownObjectRelease();
  return result;
}

void sub_20BEB5800()
{
  v1 = OBJC_IVAR____TtC9SeymourUI24MeditationPlayButtonView_blurView;
  v2 = [objc_opt_self() smu:5.0 effectWithBlurRadius:?];
  v3 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v4 = v3;
  [v4 setClipsToBounds_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];

  *(v0 + v1) = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI24MeditationPlayButtonView_playButton;
  v6 = [objc_allocWithZone(MEMORY[0x277D75220]) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v5) = v6;
  sub_20C13DE24();
  __break(1u);
}

double sub_20BEB5940(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BEB5D58(v2);
  }

  return result;
}

uint64_t sub_20BEB59A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762710, &qword_20C176710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = sub_20C134EC4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BodyFocusFilterUpdated(0);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(result + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_coordinator);

    v24[1] = *(v16 + 24);
    swift_unknownObjectRetain();

    v17 = *(v9 + 16);
    v25 = v8;
    v17(v11, a3, v8);
    sub_20B52F9E8(a1, v7, &qword_27C762710, &qword_20C176710);
    v18 = sub_20C138244();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v7, 1, v18) == 1)
    {
      sub_20B520158(v7, &qword_27C762710, &qword_20C176710);
      v20 = 0;
      v21 = 0;
    }

    else
    {
      v20 = sub_20C138224();
      v21 = v22;
      (*(v19 + 8))(v7, v18);
    }

    swift_getObjectType();
    (*(v9 + 32))(v14, v11, v25);
    v23 = &v14[*(v12 + 20)];
    *v23 = v20;
    v23[1] = v21;
    sub_20BEB6C70(&qword_27C7667A8, type metadata accessor for BodyFocusFilterUpdated, &unk_20C183CD0);
    sub_20C13A764();
    swift_unknownObjectRelease();
    return sub_20BEB6C14(v14);
  }

  return result;
}

double sub_20BEB5CD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      sub_20BF9FE14(v5, a1, v6);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_20BEB5D58(int a1)
{
  v86 = sub_20C13BB84();
  v3 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13C554();
  v82 = *(v6 - 8);
  v83 = v6;
  MEMORY[0x28223BE20](v6);
  v81 = (&v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_20C132EE4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v70 - v13;
  if ((sub_20BF7A8FC(1, v1 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_rootModality) & 1) == 0)
  {
    sub_20C13B534();
    v25 = sub_20C13BB74();
    v26 = sub_20C13D1F4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v102[0] = v28;
      *v27 = 141558274;
      *(v27 + 4) = 1752392040;
      *(v27 + 12) = 2080;
      v29 = sub_20C1368A4();
      v31 = sub_20B51E694(v29, v30, v102);

      *(v27 + 14) = v31;
      _os_log_impl(&dword_20B517000, v25, v26, "Unsupported property type: %{mask.hash}s. Aborting row creation.", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x20F2F6A40](v28, -1, -1);
      MEMORY[0x20F2F6A40](v27, -1, -1);
    }

    (*(v3 + 8))(v5, v86);
    return;
  }

  v72 = a1;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_coordinator);
  v16 = *(*(v15 + *(*v15 + 224)) + 16);
  v86 = v1;
  v17 = (v1 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v18 = sub_20C138D34();
  sub_20BC74F68(v18, v19, 0x732E657275676966, 0xEC000000646E6174, v15, v16);
  v21 = v20;

  if ((*(v15 + *(*v15 + 200)) & 8) != 0)
  {
    v22 = 0;
    v24 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v22 = sub_20C138D34();
    v24 = v23;
  }

  v92 = 0uLL;
  LOBYTE(v93) = 1;
  *(&v93 + 1) = 0;
  *&v94 = 0;
  WORD4(v94) = 128;
  v95 = 0uLL;
  v96 = xmmword_20C1505B0;
  *&v97 = v22;
  *(&v97 + 1) = v24;
  LOBYTE(v98) = 0;
  *(&v98 + 1) = v21;
  v99 = MEMORY[0x277D84F90];
  *&v100 = 0;
  *(&v100 + 1) = v22;
  *v101 = v24;
  *&v101[8] = xmmword_20C150190;
  nullsub_1();
  v32 = v86 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row;
  v33 = *(v86 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 144);
  v102[8] = *(v86 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 128);
  v102[9] = v33;
  v103 = *(v86 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 160);
  v34 = *(v86 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 80);
  v102[4] = *(v86 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 64);
  v102[5] = v34;
  v35 = *(v86 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 112);
  v102[6] = *(v86 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 96);
  v102[7] = v35;
  v36 = *(v86 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 16);
  v102[0] = *(v86 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row);
  v102[1] = v36;
  v37 = *(v86 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 48);
  v102[2] = *(v86 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 32);
  v102[3] = v37;
  v38 = *v101;
  *(v32 + 128) = v100;
  *(v32 + 144) = v38;
  *(v32 + 160) = *&v101[16];
  v39 = v97;
  *(v32 + 64) = v96;
  *(v32 + 80) = v39;
  v40 = v99;
  *(v32 + 96) = v98;
  *(v32 + 112) = v40;
  v41 = v93;
  *v32 = v92;
  *(v32 + 16) = v41;
  v42 = v95;
  *(v32 + 32) = v94;
  *(v32 + 48) = v42;

  sub_20B520158(v102, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {
LABEL_28:
    swift_unknownObjectRelease();
    return;
  }

  v71 = Strong;
  if (![*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource])
  {
LABEL_27:
    sub_20C0C2D50(0);
    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v44 = v85;
  v45 = sub_20C13BE74();
  (*(v84 + 8))(v14, v44);
  v79 = *(v45 + 16);
  v80 = v45;
  if (!v79)
  {
LABEL_25:

    goto LABEL_27;
  }

  v46 = 0;
  v77 = v80 + 32;
  v78 = OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_identifier;
  v75 = (v9 + 8);
  v76 = (v9 + 16);
  while (2)
  {
    if (v46 < *(v80 + 16))
    {
      v47 = (v77 + 24 * v46);
      v48 = v47[1];
      v74 = *v47;
      v49 = v47[2];
      v84 = v46 + 1;
      (*v76)(v11, v86 + v78, v8);
      v50 = *(v48 + 16);

      v85 = v49;

      v51 = 0;
      do
      {
        if (v50 == v51)
        {
          (*v75)(v11, v8);
          goto LABEL_15;
        }

        v52 = v51 + 1;
        sub_20BEB6C70(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v53 = sub_20C13C894();
        v51 = v52;
      }

      while ((v53 & 1) == 0);
      (*v75)(v11, v8);
      v54 = *(v32 + 128);
      v55 = *(v32 + 144);
      v56 = *(v32 + 96);
      v88[7] = *(v32 + 112);
      v89 = v54;
      v90 = v55;
      v91 = *(v32 + 160);
      v57 = *(v32 + 80);
      v88[4] = *(v32 + 64);
      v88[5] = v57;
      v88[6] = v56;
      v58 = *(v32 + 16);
      v88[0] = *v32;
      v88[1] = v58;
      v59 = *(v32 + 48);
      v88[2] = *(v32 + 32);
      v88[3] = v59;
      v60 = sub_20B5EAF8C(v88);
      if (v60 == 1)
      {
        v61 = 0;
        v62 = 0;
      }

      else
      {
        v61 = *(&v89 + 1);
        v62 = v90;
      }

      v63 = v85;
      v73 = &v70;
      v87[0] = v61;
      v87[1] = v62;
      MEMORY[0x28223BE20](v60);
      *(&v70 - 2) = v87;
      v64 = sub_20B796758(sub_20B5EAFA4, (&v70 - 4), v63);

      if ((v64 & 1) == 0)
      {
LABEL_15:

        v46 = v84;
        if (v84 == v79)
        {
          goto LABEL_25;
        }

        continue;
      }

      sub_20B5E2E18();
      v65 = sub_20C13D374();
      v67 = v81;
      v66 = v82;
      *v81 = v65;
      v68 = v83;
      (*(v66 + 104))(v67, *MEMORY[0x277D85200], v83);
      v69 = sub_20C13C584();
      (*(v66 + 8))(v67, v68);
      if ((v69 & 1) == 0)
      {
        goto LABEL_36;
      }

      if ((v72 & 0x80) != 0)
      {
        sub_20C10CC88(v86, v74, v72 & 1, v71);
      }

      else
      {
        sub_20B61F758(v74, v48, v85, v86, v72 & 1, v71);
      }

      goto LABEL_28;
    }

    break;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_20BEB6700()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_rootModality, &unk_27C7710A0, &unk_20C156800);
  v3 = OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_filterRoot;
  v4 = sub_20C134EC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 32);
  v11[3] = v9;
  sub_20B520158(v11, &qword_27C762340, &unk_20C150290);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_storefrontLocalizer));
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BodyFocusFilterOptionsShelf(uint64_t a1)
{
  result = qword_27C76FFD0;
  if (!qword_27C76FFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BEB68C8(uint64_t a1)
{
  sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    sub_20B723EF4(319);
    if (v2 <= 0x3F)
    {
      sub_20C134EC4();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_20BEB69F8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BEB6A70@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI27BodyFocusFilterOptionsShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340, &unk_20C150290);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BEB6C14(uint64_t a1)
{
  v2 = type metadata accessor for BodyFocusFilterUpdated(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20BEB6C70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BEB6CB8(uint64_t a1)
{
  v35 = sub_20C133524();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_20C13DAA4();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_20C133504();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_20B526D44((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_20B526EA4(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_20B526EA4(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_20BEB6FC0(uint64_t a1)
{
  v3 = sub_20C13C554();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = (&v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110, &unk_20C152460);
  MEMORY[0x28223BE20](v5 - 8);
  v73 = &v63 - v6;
  v72 = sub_20C134014();
  MEMORY[0x28223BE20](v72);
  v71 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  v66 = v1;
  if (v9)
  {
    v70 = (v1 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_mediaTagStringBuilder);
    v81 = *(v7 + 16);
    v82 = v7 + 16;
    v11 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v12 = *(v7 + 72);
    v68 = (v7 + 8);
    v69 = v12;
    v67 = xmmword_20C157520;
    do
    {
      v79 = v10;
      v80 = v9;
      v13 = v71;
      v14 = v72;
      v78 = v11;
      v81(v71);
      v15 = v70[3];
      v16 = v70[4];
      __swift_project_boxed_opaque_existential_1(v70, v15);
      v17 = sub_20C136194();
      v18 = v73;
      (*(*(v17 - 8) + 56))(v73, 1, 1, v17);
      MediaTagStringBuilding.makeAttributedTagStrings(for:preferredAudioLanguage:)(v18, v15, v16, &v93);
      sub_20B520158(v18, &unk_27C765110, &unk_20C152460);
      v75 = v94;
      v76 = v93;
      v74 = v95;
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250, &unk_20C150590);
      v77 = swift_allocBox();
      v21 = v20;
      v22 = v19[12];
      v23 = (v20 + v19[16]);
      v24 = v20 + v19[20];
      v25 = v20 + v19[24];
      v26 = v19[28];
      v27 = v19[32];
      (v81)(v20, v13, v14);
      *(v21 + v22) = 23;
      v28 = v75;
      *v23 = v76;
      v23[1] = v28;
      v23[2] = v74;
      *v24 = v67;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      *(v24 + 16) = 0;
      *(v24 + 40) = 0;
      *v25 = 0;
      *(v25 + 8) = 1;
      *(v21 + v26) = 0;
      *(v21 + v27) = sub_20B6B2348(MEMORY[0x277D84F90]);
      v29 = v14;
      v10 = v79;
      (*v68)(v13, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_20BC05D3C(0, *(v10 + 2) + 1, 1, v10);
      }

      v31 = *(v10 + 2);
      v30 = *(v10 + 3);
      v32 = v80;
      if (v31 >= v30 >> 1)
      {
        v10 = sub_20BC05D3C((v30 > 1), v31 + 1, 1, v10);
      }

      v33 = v78;
      v34 = v77 | 0x4000000000000000;
      *(v10 + 2) = v31 + 1;
      *&v10[8 * v31 + 32] = v34;
      v11 = v33 + v69;
      v9 = v32 - 1;
    }

    while (v9);
  }

  v35 = v66;
  __swift_project_boxed_opaque_existential_1((v66 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_storefrontLocalizer), *(v66 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_storefrontLocalizer + 24));
  v36 = sub_20C138D34();
  v83 = 0uLL;
  LOBYTE(v84) = 1;
  *(&v84 + 1) = 0;
  *&v85 = 0;
  WORD4(v85) = 128;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  LOBYTE(v89) = 0;
  *(&v89 + 1) = v10;
  v90 = MEMORY[0x277D84F90];
  *&v91 = 0;
  *(&v91 + 1) = v36;
  *v92 = v37;
  *&v92[8] = xmmword_20C150190;
  nullsub_1();
  v38 = v35 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row;
  v39 = *(v35 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 144);
  v101 = *(v35 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 128);
  v102 = v39;
  v103 = *(v35 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 160);
  v40 = *(v35 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 80);
  v97 = *(v35 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 64);
  v98 = v40;
  v41 = *(v35 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 112);
  v99 = *(v35 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 96);
  v100 = v41;
  v42 = *(v35 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 16);
  v93 = *(v35 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row);
  v94 = v42;
  v43 = *(v35 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 48);
  v95 = *(v35 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 32);
  v96 = v43;
  v44 = *v92;
  *(v38 + 128) = v91;
  *(v38 + 144) = v44;
  *(v38 + 160) = *&v92[16];
  v45 = v88;
  *(v38 + 64) = v87;
  *(v38 + 80) = v45;
  v46 = v90;
  *(v38 + 96) = v89;
  *(v38 + 112) = v46;
  v47 = v84;
  *v38 = v83;
  *(v38 + 16) = v47;
  v48 = v86;
  *(v38 + 32) = v85;
  *(v38 + 48) = v48;
  sub_20B520158(&v93, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v51 = v35;
      sub_20B61DF40(v35, Strong);
      if (v53)
      {
        v55 = v52;
        v56 = v53;
        v57 = v54;
        sub_20B5E2E18();
        v58 = sub_20C13D374();
        v60 = v63;
        v59 = v64;
        *v63 = v58;
        v61 = v65;
        (*(v59 + 104))(v60, *MEMORY[0x277D85200], v65);
        v62 = sub_20C13C584();
        (*(v59 + 8))(v60, v61);
        if ((v62 & 1) == 0)
        {
          __break(1u);
          return;
        }

        sub_20B6217D8(v55, v56, v57, v51, 0, v50);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    swift_unknownObjectRelease();
  }
}

uint64_t sub_20BEB7614()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340, &unk_20C150290);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_assetClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_storefrontLocalizer));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_mediaTagStringBuilder));
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OfflineWorkoutsGalleryShelf(uint64_t a1)
{
  result = qword_27C76FFF8;
  if (!qword_27C76FFF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BEB779C(uint64_t a1)
{
  result = sub_20C132EE4();
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

uint64_t sub_20BEB7850()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80, &unk_20C155CB0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764358, &qword_20C1713C0);
  v9 = *(v39 - 8);
  v37 = *(v9 + 64);
  MEMORY[0x28223BE20](v39);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v35 = &v34 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  MEMORY[0x28223BE20](v13);
  v38 = &v34 - v15;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_assetClient), *(v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_assetClient + 24));
  sub_20C139DF4();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20BEB7F24;
  *(v16 + 24) = v1;
  (*(v3 + 16))(v5, v8, v2);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  (*(v3 + 32))(v18 + v17, v5, v2);
  v19 = (v18 + ((v4 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_20B6331FC;
  v19[1] = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7670B8, &qword_20C181BF0);
  v20 = v35;
  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v21 = swift_allocObject();
  *(v21 + 16) = sub_20BEB7F54;
  *(v21 + 24) = v1;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20B63EEAC;
  *(v22 + 24) = v21;
  v23 = v36;
  v24 = v39;
  (*(v9 + 16))(v36, v20, v39);
  v25 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v26 = (v37 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v9 + 32))(v27 + v25, v23, v24);
  v28 = (v27 + v26);
  *v28 = sub_20BD1757C;
  v28[1] = v22;

  v29 = v38;
  sub_20C137C94();
  (*(v9 + 8))(v20, v24);
  v30 = v40;
  v31 = sub_20C137CB4();
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  v31(sub_20B52347C, v32);

  return (*(v41 + 8))(v29, v30);
}

double sub_20BEB7D68(uint64_t a1, uint64_t a2)
{
  sub_20BEB6CB8(a1);
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_catalogClient), *(a2 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_catalogClient + 24));
  sub_20C13A0D4();

  return result;
}

uint64_t sub_20BEB7DFC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BEB7E74@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BEB7F58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C137C94();
}

uint64_t sub_20BEB8024(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BEB80EC()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_row;
  sub_20B5D8060(v9);
  v2 = v9[9];
  *(v1 + 128) = v9[8];
  *(v1 + 144) = v2;
  *(v1 + 160) = v10;
  v3 = v9[5];
  *(v1 + 64) = v9[4];
  *(v1 + 80) = v3;
  v4 = v9[7];
  *(v1 + 96) = v9[6];
  *(v1 + 112) = v4;
  v5 = v9[1];
  *v1 = v9[0];
  *(v1 + 16) = v5;
  v6 = v9[3];
  *(v1 + 32) = v9[2];
  *(v1 + 48) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590, &unk_20C152E50);
  sub_20C133AA4();
  sub_20B51C710(v8, v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_assetClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(v8, v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v8, v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v8, v0 + OBJC_IVAR____TtC9SeymourUI27OfflineWorkoutsGalleryShelf_mediaTagStringBuilder);
  return v0;
}

void sub_20BEB8290(char a1)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_20B51CC64(v3 + 40 * v4 - 8, v7);
    v5 = v8;
    v6 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v6 + 16))(a1 & 1, v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    *(v1 + 88) = a1 & 1;
  }
}

uint64_t sub_20BEB833C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_20BEB83C8()
{
  swift_getObjectType();
  type metadata accessor for BodyFocusFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C7667A8, type metadata accessor for BodyFocusFilterUpdated, &unk_20C183CD0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for DurationFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C764990, type metadata accessor for DurationFilterUpdated, &unk_20C18AEE0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for EquipmentFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C7667B0, type metadata accessor for EquipmentFilterUpdated, &unk_20C1602F0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for GenreFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C7667B8, type metadata accessor for GenreFilterUpdated, &unk_20C167170);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for ModalityFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&unk_27C765CE0, type metadata accessor for ModalityFilterUpdated, &unk_20C17F640);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for SkillLevelFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C765B58, type metadata accessor for SkillLevelFilterUpdated, &unk_20C161900);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for ThemeFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C7667C0, type metadata accessor for ThemeFilterUpdated, &unk_20C18B110);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for TipCategoryFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C7667C8, type metadata accessor for TipCategoryFilterUpdated, &unk_20C18F5B0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for TrainerFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C7667D0, type metadata accessor for TrainerFilterUpdated, &unk_20C17D0E0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for ClearAllSelected(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C7649C8, type metadata accessor for ClearAllSelected, &unk_20C170640);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_20BEB8B64()
{
  swift_getObjectType();
  type metadata accessor for BodyFocusFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C7667A8, type metadata accessor for BodyFocusFilterUpdated, &unk_20C183CD0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for DurationFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C764990, type metadata accessor for DurationFilterUpdated, &unk_20C18AEE0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for EquipmentFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C7667B0, type metadata accessor for EquipmentFilterUpdated, &unk_20C1602F0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for GenreFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C7667B8, type metadata accessor for GenreFilterUpdated, &unk_20C167170);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for ModalityFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&unk_27C765CE0, type metadata accessor for ModalityFilterUpdated, &unk_20C17F640);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for SkillLevelFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C765B58, type metadata accessor for SkillLevelFilterUpdated, &unk_20C161900);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for ThemeFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C7667C0, type metadata accessor for ThemeFilterUpdated, &unk_20C18B110);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for TipCategoryFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C7667C8, type metadata accessor for TipCategoryFilterUpdated, &unk_20C18F5B0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for TrainerFilterUpdated(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C7667D0, type metadata accessor for TrainerFilterUpdated, &unk_20C17D0E0);
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  type metadata accessor for ClearAllSelected(0);
  swift_allocObject();
  swift_weakInit();
  sub_20BEBFB54(&qword_27C7649C8, type metadata accessor for ClearAllSelected, &unk_20C170640);

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);

  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A784();

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

void sub_20BEB92F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v1 - 8);
  v39 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - v4;
  MEMORY[0x28223BE20](v5);
  v41 = &v39 - v6;
  MEMORY[0x28223BE20](v7);
  v42 = &v39 - v8;
  MEMORY[0x28223BE20](v9);
  v43 = &v39 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v20 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_bodyFocusProperty;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v20, v19, &unk_27C7629B0, &unk_20C1510C0);
  v21 = sub_20C135C84();
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v19, 1, v21);
  sub_20B520158(v19, &unk_27C7629B0, &unk_20C1510C0);
  if (v23 == 1 && (v24 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_durationProperty, swift_beginAccess(), sub_20B52F9E8(v0 + v24, v16, &unk_27C7629B0, &unk_20C1510C0), LODWORD(v24) = v22(v16, 1, v21), sub_20B520158(v16, &unk_27C7629B0, &unk_20C1510C0), v24 == 1) && (v25 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_equipmentProperty, swift_beginAccess(), sub_20B52F9E8(v0 + v25, v13, &unk_27C7629B0, &unk_20C1510C0), LODWORD(v25) = v22(v13, 1, v21), sub_20B520158(v13, &unk_27C7629B0, &unk_20C1510C0), v25 == 1) && (v26 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_genreProperty, swift_beginAccess(), v27 = v43, sub_20B52F9E8(v0 + v26, v43, &unk_27C7629B0, &unk_20C1510C0), LODWORD(v26) = v22(v27, 1, v21), sub_20B520158(v27, &unk_27C7629B0, &unk_20C1510C0), v26 == 1) && (v28 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_modalityProperty, swift_beginAccess(), v29 = v42, sub_20B52F9E8(v0 + v28, v42, &unk_27C7629B0, &unk_20C1510C0), LODWORD(v28) = v22(v29, 1, v21), sub_20B520158(v29, &unk_27C7629B0, &unk_20C1510C0), v28 == 1) && (v30 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_skillLevelProperty, swift_beginAccess(), v31 = v41, sub_20B52F9E8(v0 + v30, v41, &unk_27C7629B0, &unk_20C1510C0), LODWORD(v30) = v22(v31, 1, v21), sub_20B520158(v31, &unk_27C7629B0, &unk_20C1510C0), v30 == 1) && (v32 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_themeProperty, swift_beginAccess(), v33 = v40, sub_20B52F9E8(v0 + v32, v40, &unk_27C7629B0, &unk_20C1510C0), LODWORD(v32) = v22(v33, 1, v21), sub_20B520158(v33, &unk_27C7629B0, &unk_20C1510C0), v32 == 1))
  {
    v34 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_trainerProperty;
    swift_beginAccess();
    v35 = v0 + v34;
    v36 = v39;
    sub_20B52F9E8(v35, v39, &unk_27C7629B0, &unk_20C1510C0);
    v37 = v22(v36, 1, v21) == 1;
    sub_20B520158(v36, &unk_27C7629B0, &unk_20C1510C0);
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  sub_20BF2922C(v38);
}

void sub_20BEB9864()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v1 - 8);
  v39 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - v4;
  MEMORY[0x28223BE20](v5);
  v41 = &v39 - v6;
  MEMORY[0x28223BE20](v7);
  v42 = &v39 - v8;
  MEMORY[0x28223BE20](v9);
  v43 = &v39 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  v20 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_bodyFocusProperty;
  swift_beginAccess();
  sub_20B52F9E8(v0 + v20, v19, &unk_27C7629B0, &unk_20C1510C0);
  v21 = sub_20C135C84();
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v19, 1, v21);
  sub_20B520158(v19, &unk_27C7629B0, &unk_20C1510C0);
  if (v23 == 1 && (v24 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_durationProperty, swift_beginAccess(), sub_20B52F9E8(v0 + v24, v16, &unk_27C7629B0, &unk_20C1510C0), LODWORD(v24) = v22(v16, 1, v21), sub_20B520158(v16, &unk_27C7629B0, &unk_20C1510C0), v24 == 1) && (v25 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_equipmentProperty, swift_beginAccess(), sub_20B52F9E8(v0 + v25, v13, &unk_27C7629B0, &unk_20C1510C0), LODWORD(v25) = v22(v13, 1, v21), sub_20B520158(v13, &unk_27C7629B0, &unk_20C1510C0), v25 == 1) && (v26 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_genreProperty, swift_beginAccess(), v27 = v43, sub_20B52F9E8(v0 + v26, v43, &unk_27C7629B0, &unk_20C1510C0), LODWORD(v26) = v22(v27, 1, v21), sub_20B520158(v27, &unk_27C7629B0, &unk_20C1510C0), v26 == 1) && (v28 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_modalityProperty, swift_beginAccess(), v29 = v42, sub_20B52F9E8(v0 + v28, v42, &unk_27C7629B0, &unk_20C1510C0), LODWORD(v28) = v22(v29, 1, v21), sub_20B520158(v29, &unk_27C7629B0, &unk_20C1510C0), v28 == 1) && (v30 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_skillLevelProperty, swift_beginAccess(), v31 = v41, sub_20B52F9E8(v0 + v30, v41, &unk_27C7629B0, &unk_20C1510C0), LODWORD(v30) = v22(v31, 1, v21), sub_20B520158(v31, &unk_27C7629B0, &unk_20C1510C0), v30 == 1) && (v32 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_themeProperty, swift_beginAccess(), v33 = v40, sub_20B52F9E8(v0 + v32, v40, &unk_27C7629B0, &unk_20C1510C0), LODWORD(v32) = v22(v33, 1, v21), sub_20B520158(v33, &unk_27C7629B0, &unk_20C1510C0), v32 == 1))
  {
    v34 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_trainerProperty;
    swift_beginAccess();
    v35 = v0 + v34;
    v36 = v39;
    sub_20B52F9E8(v35, v39, &unk_27C7629B0, &unk_20C1510C0);
    v37 = v22(v36, 1, v21) == 1;
    sub_20B520158(v36, &unk_27C7629B0, &unk_20C1510C0);
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  sub_20BF2922C(v38);
}

uint64_t sub_20BEB9DB0(uint64_t *a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0, qword_20C1510D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_20C133244();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = *a1;
  swift_beginAccess();
  sub_20B5DF2D4(v9, v3 + v11, &unk_27C7629C0, qword_20C1510D0);
  swift_endAccess();
  v12 = v3 + *a2;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    sub_20B52F9E8(v3 + v11, v9, &unk_27C7629C0, qword_20C1510D0);
    (*(v14 + 8))(v3, a3, v9, ObjectType, v14);
    swift_unknownObjectRelease();
    return sub_20B520158(v9, &unk_27C7629C0, qword_20C1510D0);
  }

  return result;
}

uint64_t sub_20BEB9F54(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(void))
{
  v47 = a4;
  v49 = a2;
  v50 = a3;
  v5 = sub_20C135C84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7667D8, &unk_20C15D480);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7627B8, &unk_20C170A90);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v14 - 8);
  v46 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v48 = &v45 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v45 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v45 - v22;
  v24 = type metadata accessor for DurationFilterUpdated(0);
  sub_20B52F9E8(a1 + *(v24 + 20), v13, &qword_27C7627B8, &unk_20C170A90);
  v25 = sub_20C1341A4();
  v26 = *(v25 - 8);
  v27 = 1;
  if ((*(v26 + 48))(v13, 1, v25) != 1)
  {
    (*(v26 + 32))(v23, v13, v25);
    swift_storeEnumTagMultiPayload();
    v27 = 0;
  }

  v28 = *(v6 + 56);
  v28(v23, v27, 1, v5);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = *v50;
    v31 = Strong;
    swift_beginAccess();
    sub_20B52F9E8(v31 + v30, v20, &unk_27C7629B0, &unk_20C1510C0);
  }

  else
  {
    v28(v20, 1, 1, v5);
  }

  v32 = *(v8 + 48);
  sub_20B52F9E8(v20, v10, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B52F9E8(v23, &v10[v32], &unk_27C7629B0, &unk_20C1510C0);
  v33 = *(v6 + 48);
  if (v33(v10, 1, v5) == 1)
  {
    sub_20B520158(v20, &unk_27C7629B0, &unk_20C1510C0);
    if (v33(&v10[v32], 1, v5) == 1)
    {
      sub_20B520158(v10, &unk_27C7629B0, &unk_20C1510C0);
      return sub_20B520158(v23, &unk_27C7629B0, &unk_20C1510C0);
    }
  }

  else
  {
    v34 = v48;
    sub_20B52F9E8(v10, v48, &unk_27C7629B0, &unk_20C1510C0);
    if (v33(&v10[v32], 1, v5) != 1)
    {
      v39 = &v10[v32];
      v40 = v45;
      sub_20B7479A0(v39, v45);
      v41 = MEMORY[0x20F2ED3D0](v34, v40);
      v42 = v34;
      v43 = MEMORY[0x277D52060];
      sub_20B66EE10(v40, MEMORY[0x277D52060]);
      sub_20B520158(v20, &unk_27C7629B0, &unk_20C1510C0);
      sub_20B66EE10(v42, v43);
      sub_20B520158(v10, &unk_27C7629B0, &unk_20C1510C0);
      if (v41)
      {
        return sub_20B520158(v23, &unk_27C7629B0, &unk_20C1510C0);
      }

      goto LABEL_12;
    }

    sub_20B520158(v20, &unk_27C7629B0, &unk_20C1510C0);
    sub_20B66EE10(v34, MEMORY[0x277D52060]);
  }

  sub_20B520158(v10, &qword_27C7667D8, &unk_20C15D480);
LABEL_12:
  swift_beginAccess();
  v35 = swift_weakLoadStrong();
  if (v35)
  {
    v36 = v35;
    v37 = v46;
    sub_20B52F9E8(v23, v46, &unk_27C7629B0, &unk_20C1510C0);
    v38 = *v50;
    swift_beginAccess();
    sub_20B5DF2D4(v37, v36 + v38, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v47();
  }

  return sub_20B520158(v23, &unk_27C7629B0, &unk_20C1510C0);
}

uint64_t sub_20BEBA580(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, double), uint64_t a4, uint64_t *a5, void (*a6)(void))
{
  v45 = a6;
  v46 = a5;
  v47 = a2;
  v8 = sub_20C135C84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7667D8, &unk_20C15D480);
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v14 - 8);
  v44 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v42 - v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v42 - v24;
  v26 = (a1 + *(a3(0, v23) + 20));
  v27 = v26[1];
  if (v27)
  {
    *v25 = *v26;
    *(v25 + 1) = v27;
    swift_storeEnumTagMultiPayload();
    v28 = *(v9 + 56);
    v28(v25, 0, 1, v8);
  }

  else
  {
    v28 = *(v9 + 56);
    v28(v25, 1, 1, v8);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v30 = *v46;
    v31 = Strong;
    swift_beginAccess();
    sub_20B52F9E8(v31 + v30, v21, &unk_27C7629B0, &unk_20C1510C0);
  }

  else
  {
    v28(v21, 1, 1, v8);
  }

  v32 = *(v11 + 48);
  sub_20B52F9E8(v21, v13, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B52F9E8(v25, &v13[v32], &unk_27C7629B0, &unk_20C1510C0);
  v33 = *(v9 + 48);
  if (v33(v13, 1, v8) == 1)
  {
    sub_20B520158(v21, &unk_27C7629B0, &unk_20C1510C0);
    if (v33(&v13[v32], 1, v8) == 1)
    {
      sub_20B520158(v13, &unk_27C7629B0, &unk_20C1510C0);
      return sub_20B520158(v25, &unk_27C7629B0, &unk_20C1510C0);
    }
  }

  else
  {
    sub_20B52F9E8(v13, v18, &unk_27C7629B0, &unk_20C1510C0);
    if (v33(&v13[v32], 1, v8) != 1)
    {
      v38 = v43;
      sub_20B7479A0(&v13[v32], v43);
      v39 = MEMORY[0x20F2ED3D0](v18, v38);
      v40 = MEMORY[0x277D52060];
      sub_20B66EE10(v38, MEMORY[0x277D52060]);
      sub_20B520158(v21, &unk_27C7629B0, &unk_20C1510C0);
      sub_20B66EE10(v18, v40);
      sub_20B520158(v13, &unk_27C7629B0, &unk_20C1510C0);
      if (v39)
      {
        return sub_20B520158(v25, &unk_27C7629B0, &unk_20C1510C0);
      }

      goto LABEL_13;
    }

    sub_20B520158(v21, &unk_27C7629B0, &unk_20C1510C0);
    sub_20B66EE10(v18, MEMORY[0x277D52060]);
  }

  sub_20B520158(v13, &qword_27C7667D8, &unk_20C15D480);
LABEL_13:
  swift_beginAccess();
  v34 = swift_weakLoadStrong();
  if (v34)
  {
    v35 = v34;
    v36 = v44;
    sub_20B52F9E8(v25, v44, &unk_27C7629B0, &unk_20C1510C0);
    v37 = *v46;
    swift_beginAccess();
    sub_20B5DF2D4(v36, v35 + v37, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v45();
  }

  return sub_20B520158(v25, &unk_27C7629B0, &unk_20C1510C0);
}

double sub_20BEBAB08(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v37[-v2];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_20C135C84();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_bodyFocusProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v5 + v7, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = sub_20C135C84();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_durationProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v9 + v11, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = sub_20C135C84();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    v15 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_equipmentProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v13 + v15, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = sub_20C135C84();
    (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
    v19 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_genreProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v17 + v19, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = sub_20C135C84();
    (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
    v23 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_modalityProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v21 + v23, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  v24 = swift_weakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = sub_20C135C84();
    (*(*(v26 - 8) + 56))(v3, 1, 1, v26);
    v27 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_skillLevelProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v25 + v27, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (v28)
  {
    v29 = v28;
    v30 = sub_20C135C84();
    (*(*(v30 - 8) + 56))(v3, 1, 1, v30);
    v31 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_themeProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v29 + v31, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  v32 = swift_weakLoadStrong();
  if (v32)
  {
    v33 = v32;
    v34 = sub_20C135C84();
    (*(*(v34 - 8) + 56))(v3, 1, 1, v34);
    v35 = OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_trainerProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v33 + v35, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BEB92F8();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BEB9DB0(&OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_lastFocusedIndexPath, &OBJC_IVAR____TtC9SeymourUI44TVModalityDetailFilterResultPageDataProvider_delegate, &off_28229B950);
  }

  return result;
}

double sub_20BEBB184(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v37[-v2];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = sub_20C135C84();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_bodyFocusProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v5 + v7, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = sub_20C135C84();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    v11 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_durationProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v9 + v11, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = sub_20C135C84();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    v15 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_equipmentProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v13 + v15, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = sub_20C135C84();
    (*(*(v18 - 8) + 56))(v3, 1, 1, v18);
    v19 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_genreProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v17 + v19, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = sub_20C135C84();
    (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
    v23 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_modalityProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v21 + v23, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  v24 = swift_weakLoadStrong();
  if (v24)
  {
    v25 = v24;
    v26 = sub_20C135C84();
    (*(*(v26 - 8) + 56))(v3, 1, 1, v26);
    v27 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_skillLevelProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v25 + v27, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  v28 = swift_weakLoadStrong();
  if (v28)
  {
    v29 = v28;
    v30 = sub_20C135C84();
    (*(*(v30 - 8) + 56))(v3, 1, 1, v30);
    v31 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_themeProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v29 + v31, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  v32 = swift_weakLoadStrong();
  if (v32)
  {
    v33 = v32;
    v34 = sub_20C135C84();
    (*(*(v34 - 8) + 56))(v3, 1, 1, v34);
    v35 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_trainerProperty;
    swift_beginAccess();
    sub_20B5DF2D4(v3, v33 + v35, &unk_27C7629B0, &unk_20C1510C0);
    swift_endAccess();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BEB9864();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BEB9DB0(&OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_lastFocusedIndexPath, &OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_delegate, &off_2822F2AB8);
  }

  return result;
}

double sub_20BEBB7E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3();
  }

  return result;
}

void sub_20BEBB840()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_shelves);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 40);
      swift_unknownObjectRetain();
      v8(v13, ObjectType, v6);
      v18 = v13[8];
      v19 = v13[9];
      v20 = v14;
      v15[4] = v13[4];
      v15[5] = v13[5];
      v16 = v13[6];
      v17 = v13[7];
      v15[0] = v13[0];
      v15[1] = v13[1];
      v15[2] = v13[2];
      v15[3] = v13[3];
      if (sub_20B5EAF8C(v15) == 1)
      {
        v9 = 1;
      }

      else
      {
        v10 = *(&v16 + 1);
        v21[0] = *(&v16 + 1);
        sub_20B52F9E8(v21, &v12, &qword_27C763188, &unk_20C1538A0);
        sub_20B520158(v13, &qword_27C762340, &unk_20C150290);
        v11 = *(v10 + 16);
        sub_20B520158(v21, &qword_27C763188, &unk_20C1538A0);
        v9 = v11 == 0;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2() && v5)
      {
        swift_unknownObjectRelease();
        if (!v9)
        {
          return;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v3;
      v4 += 2;
      if (v2 == v3)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20BEBBA08()
{

  v1 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_lastFocusedIndexPath, &unk_27C7629C0, qword_20C1510D0);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_delegate);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_archivedSessionClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_assetClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_bookmarkClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_catalogClient));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_configurationClient));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_remoteBrowsingSource));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_subscriptionCache));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_upNextQueueClient));
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_trainerDetail, &qword_27C770028, L"B\b\a");

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_configuration, &qword_27C761800, &qword_20C14FDA0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_bodyFocusProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_durationProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_equipmentProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_genreProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_modalityProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_skillLevelProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_themeProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_tipCategoryProperty, &unk_27C7629B0, &unk_20C1510C0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_trainerProperty, &unk_27C7629B0, &unk_20C1510C0);
  return v0;
}

uint64_t sub_20BEBBD0C()
{
  sub_20BEBBA08();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TVTrainerDetailFilterResultPageDataProvider(uint64_t a1)
{
  result = qword_27C770010;
  if (!qword_27C770010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BEBBDB8(uint64_t a1)
{
  sub_20C1333A4();
  if (v1 <= 0x3F)
  {
    sub_20BEBC030(319, &qword_281103E20, MEMORY[0x277CC9AF8]);
    if (v2 <= 0x3F)
    {
      sub_20BEBC030(319, &qword_27C770020, MEMORY[0x277D50708]);
      if (v3 <= 0x3F)
      {
        sub_20BEBC030(319, &qword_281103BF0, MEMORY[0x277D50560]);
        if (v4 <= 0x3F)
        {
          sub_20BEBC030(319, &qword_27C763150, MEMORY[0x277D52060]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_20BEBC030(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_20BEBC084()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764218, &qword_20C155D60);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v8 = *(v41 - 8);
  v39 = *(v8 + 64);
  MEMORY[0x28223BE20](v41);
  v38 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v37 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320, &unk_20C153880);
  v13 = *(v12 - 8);
  v42 = v12;
  v43 = v13;
  MEMORY[0x28223BE20](v12);
  v40 = &v36 - v14;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_catalogClient), *(v0 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_catalogClient + 24));
  sub_20C13A054();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_20BEBDF2C;
  *(v16 + 24) = v15;
  (*(v2 + 16))(v4, v7, v1);
  v17 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v18 = swift_allocObject();
  (*(v2 + 32))(v18 + v17, v4, v1);
  v19 = (v18 + ((v3 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_20BEBDF48;
  v19[1] = v16;
  v20 = v37;
  sub_20C137C94();
  (*(v2 + 8))(v7, v1);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = sub_20BEBDF78;
  *(v22 + 24) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_20B5D9CB0;
  *(v23 + 24) = v22;
  v24 = v38;
  v25 = v41;
  (*(v8 + 16))(v38, v20, v41);
  v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v27 = (v39 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v8 + 32))(v28 + v26, v24, v25);
  v29 = (v28 + v27);
  *v29 = sub_20B5D9CCC;
  v29[1] = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70, &unk_20C14FD20);
  v30 = v40;
  sub_20C137C94();
  (*(v8 + 8))(v20, v25);
  v31 = v42;
  v32 = v30;
  v33 = sub_20C137CB4();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v33(sub_20B52347C, v34);

  return (*(v43 + 8))(v32, v31);
}

double sub_20BEBC5E4(char *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BEBC658(a1);
  }

  return result;
}

void sub_20BEBC658(char *a1)
{
  v2 = sub_20C13C554();
  v174 = *(v2 - 8);
  v175 = v2;
  MEMORY[0x28223BE20](v2);
  v173 = (&v171 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = sub_20C132EE4();
  v203 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v204 = &v171 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AB0, &unk_20C1502A0);
  v177 = *(v5 - 8);
  v178 = v5;
  MEMORY[0x28223BE20](v5);
  v176 = &v171 - v6;
  v184 = type metadata accessor for TVFilterRootPropertyUpdated(0);
  MEMORY[0x28223BE20](v184);
  v183 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0, &unk_20C156800);
  MEMORY[0x28223BE20](v8 - 8);
  v182 = &v171 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623C0, &unk_20C14FE50);
  MEMORY[0x28223BE20](v10 - 8);
  v201 = &v171 - v11;
  v193 = sub_20C137C24();
  v197 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v200 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_20C136CD4();
  v202 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v189 = &v171 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v191 = &v171 - v15;
  v16 = sub_20C134E44();
  MEMORY[0x28223BE20](v16 - 8);
  v194 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v171 - v19;
  v21 = sub_20C137F24();
  v196 = v21;
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v181 = &v171 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  *&v187 = &v171 - v25;
  MEMORY[0x28223BE20](v26);
  v186 = &v171 - v27;
  MEMORY[0x28223BE20](v28);
  v185 = &v171 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v171 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770028, L"B\b\a");
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v171 - v34;
  v36 = sub_20C134214();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v35, a1, v36);
  (*(v37 + 56))(v35, 0, 1, v36);
  v38 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_trainerDetail;
  v39 = v198;
  swift_beginAccess();
  sub_20B5DF2D4(v35, v39 + v38, &qword_27C770028, L"B\b\a");
  swift_endAccess();
  v40 = *(v39 + 24);
  sub_20C134204();
  v199 = sub_20C137F04();
  v192 = v41;
  v42 = *(v22 + 8);
  v195 = v22 + 8;
  v42(v32, v21);
  v43 = a1;
  sub_20C1341F4();
  v44 = v191;
  sub_20C134E34();
  v45 = MEMORY[0x277D51268];
  sub_20B66EE10(v20, MEMORY[0x277D51268]);
  sub_20C136CB4();
  v46 = v202[1];
  ++v202;
  v47 = v190;
  v46(v44, v190);
  v48 = v194;
  sub_20C1341F4();
  v49 = v189;
  sub_20C134E34();
  sub_20B66EE10(v48, v45);
  v194 = sub_20C136CC4();
  v191 = v50;
  v46(v49, v47);
  v51 = v185;
  sub_20C134204();
  v52 = sub_20C137EF4();
  v189 = v53;
  v190 = v52;
  v54 = v51;
  v55 = v196;
  v42(v54, v196);
  v56 = v186;
  sub_20C134204();
  v57 = v201;
  sub_20C137F14();
  v58 = v56;
  v59 = v55;
  v42(v58, v55);
  v60 = v187;
  v185 = v43;
  sub_20C134204();
  v61 = v60;
  v62 = sub_20C137EB4();
  v64 = v63;
  v180 = v42;
  v42(v61, v59);
  v65 = OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_preview;
  swift_beginAccess();
  sub_20B66D534(v57, v40 + v65);
  swift_endAccess();
  v66 = (v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_contentIdentifier);
  *v66 = v62;
  v66[1] = v64;
  v179 = v64;

  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763168, &unk_20C153890);
  v68 = *(sub_20C138094() - 8);
  v69 = *(v68 + 72);
  v70 = *(v68 + 80);
  v71 = ((v70 + 32) & ~v70);
  v186 = v67;
  *&v187 = v70;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_20C1517D0;
  v202 = v71;
  v73 = (v71 + v72);
  *v73 = 0xD00000000000001FLL;
  v73[1] = 0x800000020C195AC0;
  swift_storeEnumTagMultiPayload();
  *(v73 + v69) = 3;
  swift_storeEnumTagMultiPayload();
  v74 = (v73 + 2 * v69);
  v75 = (v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_storefrontLocalizer), *(v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_storefrontLocalizer + 24));
  *v74 = sub_20C138D34();
  v74[1] = v76;
  swift_storeEnumTagMultiPayload();
  v77 = sub_20C134284();
  if ((*(*(v77 - 8) + 48))(v201, 1, v77) == 1)
  {

    v78 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_mediaTagStringBuilder), *(v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_mediaTagStringBuilder + 24));
    v78 = sub_20C138544();
  }

  v79 = v202;
  v80 = swift_allocObject();
  v187 = xmmword_20C14F980;
  *(v80 + 16) = xmmword_20C14F980;
  v81 = (v79 + v80);
  v82 = v192;
  *v81 = v199;
  v81[1] = v82;
  swift_storeEnumTagMultiPayload();
  __swift_project_boxed_opaque_existential_1((v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_mediaTagStringBuilder), *(v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_mediaTagStringBuilder + 24));
  v83 = sub_20C138544();

  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763170, &qword_20C15CF10);
  v192 = swift_allocBox();
  v86 = v85;
  v186 = v84[20];
  v87 = (v85 + v84[24]);
  v88 = (v85 + v84[28]);
  *v85 = v83;
  v85[1] = v78;
  __swift_project_boxed_opaque_existential_1(v75, v75[3]);
  v199 = v78;
  v202 = v83;
  v86[2] = sub_20C138D34();
  v86[3] = v89;
  v90 = v86 + v186;
  v92 = v192;
  v91 = v193;
  (*(v197 + 16))(v90, v200, v193);
  v94 = v190;
  v93 = v191;
  *v87 = v194;
  v87[1] = v93;
  v95 = v189;
  *v88 = v94;
  v88[1] = v95;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
  v96 = swift_allocObject();
  *(v96 + 16) = v187;
  *(v96 + 32) = v92 | 0x2000000000000006;
  v210 = 0uLL;
  LOBYTE(v211) = 1;
  *(&v211 + 1) = *v209;
  DWORD1(v211) = *&v209[3];
  *&v212 = 0;
  *(&v211 + 1) = 0;
  WORD4(v212) = 128;
  *(&v212 + 10) = *&v207[7];
  HIWORD(v212) = v208;
  v213 = 0uLL;
  *&v214 = 0xD000000000000014;
  *(&v214 + 1) = 0x800000020C195B00;
  v215 = 0uLL;
  LOBYTE(v216) = 0;
  *(&v216 + 1) = *v207;
  DWORD1(v216) = *&v207[3];
  *(&v216 + 1) = v96;
  *&v217[0] = MEMORY[0x277D84F90];
  *(v217 + 8) = 0u;
  *(&v217[1] + 8) = 0u;
  *(&v217[2] + 1) = 0;
  v218 = 2;
  nullsub_1();
  v97 = *(v40 + 64);
  v98 = *(v40 + 80);
  v99 = *(v40 + 112);
  v219[5] = *(v40 + 96);
  v219[6] = v99;
  v219[3] = v97;
  v219[4] = v98;
  v100 = *(v40 + 128);
  v101 = *(v40 + 144);
  v102 = *(v40 + 160);
  v220 = *(v40 + 176);
  v219[8] = v101;
  v219[9] = v102;
  v219[7] = v100;
  v103 = *(v40 + 32);
  v219[0] = *(v40 + 16);
  v219[1] = v103;
  v219[2] = *(v40 + 48);
  *(v40 + 112) = v216;
  *(v40 + 48) = v212;
  v104 = v218;
  v105 = v217[2];
  v106 = v217[1];
  *(v40 + 128) = v217[0];
  *(v40 + 144) = v106;
  *(v40 + 160) = v105;
  *(v40 + 176) = v104;
  v107 = v215;
  v108 = v214;
  *(v40 + 64) = v213;
  *(v40 + 80) = v108;
  *(v40 + 96) = v107;
  v109 = v211;
  *(v40 + 16) = v210;
  *(v40 + 32) = v109;

  sub_20B520158(v219, &qword_27C762340, &unk_20C150290);
  v110 = *(v40 + 16);
  v111 = *(v40 + 32);
  v112 = *(v40 + 48);
  v113 = *(v40 + 64);
  v114 = *(v40 + 96);
  v225 = *(v40 + 80);
  v226 = v114;
  v223 = v112;
  v224 = v113;
  v115 = *(v40 + 112);
  v116 = *(v40 + 128);
  v117 = *(v40 + 144);
  v118 = *(v40 + 160);
  v231 = *(v40 + 176);
  v229 = v117;
  v230 = v118;
  v227 = v115;
  v228 = v116;
  v221 = v110;
  v222 = v111;
  v119 = v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow;
  v121 = *(v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 16);
  v120 = *(v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 32);
  v232[0] = *(v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow);
  v232[1] = v121;
  v232[2] = v120;
  v122 = *(v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 80);
  v124 = *(v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 48);
  v123 = *(v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 64);
  v232[6] = *(v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 96);
  v232[5] = v122;
  v232[3] = v124;
  v232[4] = v123;
  v126 = *(v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 128);
  v125 = *(v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 144);
  v127 = *(v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 112);
  v233 = *(v40 + OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_lastUpdatedRow + 160);
  v232[9] = v125;
  v232[7] = v127;
  v232[8] = v126;
  v128 = v221;
  v129 = v223;
  *(v119 + 16) = v222;
  *(v119 + 32) = v129;
  *v119 = v128;
  v130 = v224;
  v131 = v225;
  v132 = v227;
  *(v119 + 80) = v226;
  *(v119 + 96) = v132;
  *(v119 + 48) = v130;
  *(v119 + 64) = v131;
  v133 = v228;
  v134 = v229;
  v135 = v230;
  *(v119 + 160) = v231;
  *(v119 + 128) = v134;
  *(v119 + 144) = v135;
  *(v119 + 112) = v133;
  sub_20B52F9E8(&v221, v206, &qword_27C762340, &unk_20C150290);
  sub_20B520158(v232, &qword_27C762340, &unk_20C150290);
  Strong = swift_unknownObjectWeakLoadStrong();
  v137 = v188;
  if (!Strong)
  {

    goto LABEL_8;
  }

  if (*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount])
  {

    swift_unknownObjectRelease();
LABEL_8:

LABEL_27:
    v157 = v198;
LABEL_28:
    (*(v197 + 8))(v200, v91);
    sub_20B520158(v201, &unk_27C7623C0, &unk_20C14FE50);
    v158 = v181;
    sub_20C134204();
    v159 = sub_20C137F04();
    v161 = v160;
    v180(v158, v196);
    v162 = sub_20C134734();
    v163 = v182;
    (*(*(v162 - 8) + 56))(v182, 1, 1, v162);
    sub_20B8437C4(v159, v161, v163);

    sub_20B520158(v163, &unk_27C7710A0, &unk_20C156800);
    swift_getObjectType();
    v164 = v183;
    sub_20C134204();
    type metadata accessor for TVFilterRootPropertyUpdated.PropertyType(0);
    swift_storeEnumTagMultiPayload();
    sub_20BEBFB54(&qword_27C763178, type metadata accessor for TVFilterRootPropertyUpdated, &unk_20C183350);
    sub_20C13A764();
    sub_20B66EE10(v164, type metadata accessor for TVFilterRootPropertyUpdated);
    v165 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_shouldPublishPageEventWhenAvailable;
    if (*(v157 + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_shouldPublishPageEventWhenAvailable))
    {
      v206[0] = v157;
      type metadata accessor for TVTrainerDetailFilterResultPageDataProvider(0);
      sub_20BEBFB54(&qword_27C770030, type metadata accessor for TVTrainerDetailFilterResultPageDataProvider, &unk_20C181D00);
      sub_20C138C54();
      *(v157 + v165) = 0;
    }

    return;
  }

  v172 = Strong;
  v138 = [*&Strong[OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView] dataSource];
  v139 = v199;
  v140 = v202;
  if (!v138)
  {
LABEL_26:
    sub_20C0C2D50(0);

    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762AA0, &unk_20C1502B0);
  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v141 = v176;
  sub_20C13BFA4();
  swift_unknownObjectRelease();
  v142 = v178;
  v143 = sub_20C13BE74();
  v144 = v141;
  v140 = v202;
  (*(v177 + 8))(v144, v142);
  v190 = *(v143 + 16);
  v191 = v143;
  if (!v190)
  {
LABEL_24:

    v91 = v193;
    goto LABEL_26;
  }

  v145 = 0;
  v189 = OBJC_IVAR____TtC9SeymourUI25TVFilterDetailHeaderShelf_identifier;
  v186 = v203 + 16;
  *&v187 = v191 + 32;
  v178 = (v203 + 8);
  while (2)
  {
    if (v145 < *(v191 + 2))
    {
      v146 = (v187 + 24 * v145);
      v147 = v146[1];
      v177 = *v146;
      v148 = v146[2];
      ++v145;
      (*v186)(v204, &v189[v40], v137);
      v149 = *(v147 + 16);

      v194 = v148;

      v150 = 0;
      do
      {
        if (v149 == v150)
        {
          (*v178)(v204, v137);
          goto LABEL_14;
        }

        v151 = v150 + 1;
        sub_20BEBFB54(&qword_27C7641A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v152 = sub_20C13C894();
        v150 = v151;
      }

      while ((v152 & 1) == 0);
      (*v178)(v204, v137);
      memmove(v206, (v40 + 16), 0xA8uLL);
      v153 = sub_20B5EAF8C(v206);
      if (v153 == 1)
      {
        v154 = 0;
        v155 = 0;
      }

      else
      {
        v154 = v206[17];
        v155 = v206[18];
      }

      v176 = &v171;
      v205[0] = v154;
      v205[1] = v155;
      MEMORY[0x28223BE20](v153);
      *(&v171 - 2) = v205;
      v156 = sub_20B796758(sub_20B5EAFA4, (&v171 - 4), v194);

      if ((v156 & 1) == 0)
      {
LABEL_14:

        v139 = v199;
        v140 = v202;
        if (v145 == v190)
        {
          goto LABEL_24;
        }

        continue;
      }

      sub_20B5E2E18();
      v166 = sub_20C13D374();
      v168 = v173;
      v167 = v174;
      *v173 = v166;
      v169 = v175;
      (*(v167 + 104))(v168, *MEMORY[0x277D85200], v175);
      v170 = sub_20C13C584();
      (*(v167 + 8))(v168, v169);
      if ((v170 & 1) == 0)
      {
        goto LABEL_34;
      }

      sub_20B61EB94(v177, v147, v194, v40, 1, v172);

      swift_unknownObjectRelease();

      v157 = v198;
      v91 = v193;
      goto LABEL_28;
    }

    break;
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

BOOL sub_20BEBDADC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - v3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v6 = Strong;
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_catalogClient, v10);

    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_20C135E34();
    sub_20C139FB4();
    v7 = sub_20C137CB4();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    v7(sub_20B52347C, v8);

    (*(v2 + 8))(v4, v1);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  return v6 == 0;
}

uint64_t sub_20BEBDC90@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20BEBDE8C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_configuration;
  swift_beginAccess();
  return sub_20B52F9E8(v1 + v3, a1, &qword_27C761800, &qword_20C14FDA0);
}

uint64_t sub_20BEBDFA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

char *sub_20BEBE070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v189 = a7;
  v190 = a4;
  v179 = a5;
  v180 = a6;
  v175 = a2;
  v176 = a3;
  v10 = sub_20C135524();
  v182 = *(v10 - 8);
  v183 = v10;
  MEMORY[0x28223BE20](v10);
  v181 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629C0, qword_20C1510D0);
  MEMORY[0x28223BE20](v12 - 8);
  v184 = &v153 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0, &unk_20C151A00);
  MEMORY[0x28223BE20](v14 - 8);
  v178 = &v153 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0, &unk_20C14D9B0);
  MEMORY[0x28223BE20](v16 - 8);
  v177 = &v153 - v17;
  v18 = sub_20C137F24();
  v158 = *(v18 - 8);
  v159 = v18;
  MEMORY[0x28223BE20](v18);
  v157 = &v153 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C134214();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v156 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0, &unk_20C151A10);
  MEMORY[0x28223BE20](v23 - 8);
  v174 = &v153 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0, &unk_20C14D9C0);
  MEMORY[0x28223BE20](v25 - 8);
  v188 = &v153 - v26;
  v27 = sub_20C1333A4();
  v172 = *(v27 - 8);
  v173 = v27;
  MEMORY[0x28223BE20](v27);
  v171 = &v153 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v29 - 8);
  *&v191 = &v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7629B0, &unk_20C1510C0);
  MEMORY[0x28223BE20](v31 - 8);
  v155 = &v153 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v165 = &v153 - v34;
  v35 = sub_20C134EC4();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v38 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_lastFocusedIndexPath;
  v40 = sub_20C133244();
  v41 = *(v40 - 8);
  v169 = *(v41 + 56);
  v170 = v40;
  v168 = v41 + 56;
  v169(&v8[v39], 1, 1);
  *&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v185 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_trainerDetail;
  v186 = v21;
  v42 = *(v21 + 56);
  v187 = v20;
  v42(&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_trainerDetail], 1, 1, v20);
  v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_shouldPublishPageEventWhenAvailable] = 0;
  v43 = MEMORY[0x277D84FA0];
  *&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_assetBundles] = MEMORY[0x277D84FA0];
  *&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_bookmarks] = v43;
  *&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_playlists] = v43;
  *&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_resumableSessions] = v43;
  *&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_upNextQueueItems] = MEMORY[0x277D84F90];
  v44 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_configuration;
  v45 = sub_20C134104();
  (*(*(v45 - 8) + 56))(&v8[v44], 1, 1, v45);
  v46 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_bodyFocusProperty;
  v47 = sub_20C135C84();
  v166 = *(v47 - 8);
  v48 = *(v166 + 56);
  v48(&v8[v46], 1, 1, v47);
  v48(&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_durationProperty], 1, 1, v47);
  v48(&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_equipmentProperty], 1, 1, v47);
  v48(&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_genreProperty], 1, 1, v47);
  v48(&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_modalityProperty], 1, 1, v47);
  v48(&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_skillLevelProperty], 1, 1, v47);
  v48(&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_themeProperty], 1, 1, v47);
  v48(&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_tipCategoryProperty], 1, 1, v47);
  v167 = v47;
  v48(&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_trainerProperty], 1, 1, v47);
  *&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A40, &unk_20C14D9E0);
  sub_20C133AA4();
  sub_20B51C710(&v202, &v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_archivedSessionClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590, &unk_20C152E50);
  sub_20C133AA4();
  sub_20B51C710(&v202, &v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_assetClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50, &unk_20C14D9F0);
  sub_20C133AA4();
  sub_20B51C710(&v202, &v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_bookmarkClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  sub_20B51C710(&v202, &v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_catalogClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60, &unk_20C14DA00);
  sub_20C133AA4();
  sub_20B51C710(&v202, &v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_configurationClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_eventHub] = v202;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70, &unk_20C14DA10);
  sub_20C133AA4();
  sub_20B51C710(&v202, &v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_remoteBrowsingSource]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360, &unk_20C1538B0);
  sub_20C133AA4();
  sub_20B51C710(&v202, &v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_subscriptionCache]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_subscriptionToken] = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80, &unk_20C14DA20);
  sub_20C133AA4();
  sub_20B51C710(&v202, &v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_upNextQueueClient]);
  v49 = &v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_trainerIdentifier];
  v50 = v176;
  *v49 = v175;
  v49[1] = v50;
  v175 = v36;
  v51 = *(v36 + 16);
  v52 = v190;
  v51(v38, v190, v35);

  LOBYTE(v44) = sub_20C133E14();
  type metadata accessor for FilterHeaderShelf(0);
  swift_allocObject();
  v53 = sub_20C10A874(a1, v38, v44);

  *(v8 + 2) = v53;
  type metadata accessor for TVFilterDetailHeaderShelf(0);
  swift_allocObject();

  v54 = sub_20BF29A00();

  *(v8 + 3) = v54;
  v176 = v35;
  v51(v38, v52, v35);

  LODWORD(v54) = sub_20C133E14();
  type metadata accessor for FilterResultShelf(0);
  swift_allocObject();
  v55 = sub_20B84152C(a1, v38, v54);
  *(v8 + 4) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00, &qword_20C1538C0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_20C1517D0;
  v57 = *(v8 + 3);
  *(v56 + 32) = *(v8 + 2);
  *(v56 + 40) = &off_282309798;
  *(v56 + 48) = v57;
  *(v56 + 56) = &off_2822F7718;
  *(v56 + 64) = v55;
  *(v56 + 72) = &off_2822AC930;
  v58 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_shelves;
  *&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_shelves] = v56;

  v59 = 0x5F72656E69617274;
  v60 = 0xEC00000073706974;
  if (sub_20C134EB4())
  {
    v61 = v165;
    sub_20C134E84();
    if ((*(v166 + 48))(v61, 1, v167) == 1)
    {
      v59 = 0x6F5F7265746C6966;
      sub_20B520158(v61, &unk_27C7629B0, &unk_20C1510C0);
      v60 = 0xEE00736E6F697470;
    }

    else
    {
      v59 = sub_20B9492AC();
      v60 = v62;
      sub_20B66EE10(v61, MEMORY[0x277D52060]);
    }
  }

  v164 = v60;
  v165 = v59;
  v63 = *&v8[v58];

  v163 = sub_20C1380F4();
  v64 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v162 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v64 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v65 = sub_20C13C724();
  v66 = type metadata accessor for CatalogPageImpressionTracker();
  v67 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v68 = MEMORY[0x277D221C0];
  v67[2] = sub_20C13C6D4();
  v67[3] = v65;
  v67[4] = v68;
  v203 = v66;
  v69 = sub_20BEBFB54(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker, &unk_20C167088);
  v204 = v69;
  *&v202 = v67;
  v70 = type metadata accessor for MetricLocationStore();
  v71 = swift_allocObject();
  v72 = MEMORY[0x277D84F98];
  v73 = MEMORY[0x277D84F90];
  *(v71 + 16) = MEMORY[0x277D84F90];
  *(v71 + 24) = v72;
  v74 = __swift_mutable_project_boxed_opaque_existential_1(&v202, v66);
  v161 = &v153;
  v75 = MEMORY[0x28223BE20](v74);
  v77 = (&v153 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77, v75);
  v79 = *v77;
  v160 = v69;
  v201[3] = v66;
  v201[4] = v69;
  v201[0] = v79;
  v200[3] = v70;
  v200[4] = &off_2822B6968;
  v200[0] = v71;
  v80 = *(v63 + 16);
  if (v80)
  {
    v153 = v70;
    v154 = v66;
    v199[0] = v73;
    sub_20BB5D394(0, v80, 0);
    v81 = 32;
    v82 = v199[0];
    do
    {
      v83 = *(v63 + v81);
      v199[0] = v82;
      v85 = *(v82 + 16);
      v84 = *(v82 + 24);
      v191 = v83;
      swift_unknownObjectRetain();
      if (v85 >= v84 >> 1)
      {
        sub_20BB5D394((v84 > 1), v85 + 1, 1);
        v82 = v199[0];
      }

      *(v82 + 16) = v85 + 1;
      v86 = v82 + 24 * v85;
      *(v86 + 32) = v191;
      *(v86 + 48) = 0;
      v81 += 16;
      --v80;
    }

    while (v80);

    v70 = v153;
    v66 = v154;
  }

  else
  {

    v82 = MEMORY[0x277D84F90];
  }

  sub_20B51CC64(v201, v199);
  sub_20B51CC64(v200, v198);
  v87 = __swift_mutable_project_boxed_opaque_existential_1(v199, v199[3]);
  *&v191 = &v153;
  v88 = MEMORY[0x28223BE20](v87);
  v90 = (&v153 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v91 + 16))(v90, v88);
  v92 = __swift_mutable_project_boxed_opaque_existential_1(v198, v198[3]);
  v93 = MEMORY[0x28223BE20](v92);
  v95 = (&v153 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v96 + 16))(v95, v93);
  v97 = *v90;
  v98 = *v95;
  v196 = v66;
  v197 = v160;
  v195[0] = v97;
  v193 = v70;
  v194 = &off_2822B6968;
  v192[0] = v98;
  v99 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v100 = __swift_mutable_project_boxed_opaque_existential_1(v195, v196);
  v101 = MEMORY[0x28223BE20](v100);
  v103 = (&v153 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v104 + 16))(v103, v101);
  v105 = __swift_mutable_project_boxed_opaque_existential_1(v192, v193);
  v106 = MEMORY[0x28223BE20](v105);
  v108 = (&v153 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v109 + 16))(v108, v106);
  v110 = sub_20BE3AA74(v165, v164, v82, v163, v162, *v103, *v108, 2, v99);
  __swift_destroy_boxed_opaque_existential_1(v200);
  __swift_destroy_boxed_opaque_existential_1(v201);
  __swift_destroy_boxed_opaque_existential_1(v192);
  __swift_destroy_boxed_opaque_existential_1(v195);
  __swift_destroy_boxed_opaque_existential_1(v198);
  __swift_destroy_boxed_opaque_existential_1(v199);
  __swift_destroy_boxed_opaque_existential_1(&v202);
  *(v8 + 5) = v110;
  v111 = sub_20C134EB4();
  v112 = v189;
  v113 = 0x5F72656E69617274;
  v114 = 0xEC00000073706974;
  v115 = v174;
  v116 = v185;
  if (v111)
  {
    v117 = v155;
    sub_20C134E84();
    if ((*(v166 + 48))(v117, 1, v167) == 1)
    {
      v113 = 0x6F5F7265746C6966;
      sub_20B520158(v117, &unk_27C7629B0, &unk_20C1510C0);
      v114 = 0xEE00736E6F697470;
    }

    else
    {
      v113 = sub_20B9492AC();
      v114 = v118;
      sub_20B66EE10(v117, MEMORY[0x277D52060]);
    }
  }

  v167 = v114;
  *&v191 = v113;
  v119 = sub_20C133E24();
  v120 = *(v119 - 8);
  v121 = v188;
  (*(v120 + 16))(v188, v112, v119);
  v122 = *MEMORY[0x277D51858];
  v123 = sub_20C1352F4();
  v124 = *(v123 - 8);
  (*(v124 + 104))(v121, v122, v123);
  v125 = 1;
  (*(v124 + 56))(v121, 0, 1, v123);
  swift_beginAccess();
  v126 = v187;
  v127 = *(v186 + 48);
  if (!v127(&v8[v116], 1, v187))
  {
    v128 = v186;
    v129 = v156;
    (*(v186 + 16))(v156, &v8[v185], v126);
    v130 = v157;
    sub_20C134204();
    v131 = v128;
    v116 = v185;
    (*(v131 + 8))(v129, v187);
    sub_20C137EC4();
    v132 = v130;
    v126 = v187;
    (*(v158 + 8))(v132, v159);
    v125 = 0;
  }

  v133 = sub_20C132C14();
  (*(*(v133 - 8) + 56))(v115, v125, 1, v133);
  if (!v127(&v8[v116], 1, v126))
  {
    v134 = v186;
    v135 = v156;
    (*(v186 + 16))(v156, &v8[v116], v126);
    v136 = v157;
    sub_20C134204();
    (*(v134 + 8))(v135, v126);
    sub_20C137F04();
    (*(v158 + 8))(v136, v159);
  }

  v137 = sub_20C135ED4();
  v138 = 1;
  (*(*(v137 - 8) + 56))(v177, 1, 1, v137);
  v139 = sub_20C136914();
  (*(*(v139 - 8) + 56))(v178, 1, 1, v139);
  v140 = v171;
  sub_20C133384();
  (*(v172 + 32))(&v8[OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_metricPage], v140, v173);
  sub_20BE13514();
  v141 = *(v8 + 4);
  v142 = OBJC_IVAR____TtC9SeymourUI17FilterResultShelf_filterResult;
  swift_beginAccess();
  v143 = v182;
  v144 = v141 + v142;
  v145 = v181;
  v146 = v183;
  v147 = (*(v182 + 16))(v181, v144, v183);
  v148 = sub_20BB110D4(v147);
  (*(v143 + 8))(v145, v146);
  v149 = v184;
  if (!v148)
  {
    sub_20BEBB840();
    MEMORY[0x20F2EA980](0, v150);
    v138 = 0;
  }

  (v169)(v149, v138, 1, v170);
  v151 = OBJC_IVAR____TtC9SeymourUI43TVTrainerDetailFilterResultPageDataProvider_lastFocusedIndexPath;
  swift_beginAccess();
  sub_20B5DF2D4(v149, &v8[v151], &unk_27C7629C0, qword_20C1510D0);
  swift_endAccess();
  sub_20BEB8B64();
  (*(v120 + 8))(v189, v119);
  (*(v175 + 8))(v190, v176);
  return v8;
}

uint64_t sub_20BEBFB54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_20BEBFEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  result = [v6 view];
  if (result)
  {
    v14 = result;
    [result frame];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v27.origin.x = v16;
    v27.origin.y = v18;
    v27.size.width = v20;
    v27.size.height = v22;
    v23.n128_f64[0] = CGRectGetWidth(v27);
    v24 = *(a5 + 8);
    v25.n128_f64[0] = a6;

    return v24(a1, a2, a3, a4, a5, v23, v25);
  }

  else
  {
    __break(1u);
  }

  return result;
}