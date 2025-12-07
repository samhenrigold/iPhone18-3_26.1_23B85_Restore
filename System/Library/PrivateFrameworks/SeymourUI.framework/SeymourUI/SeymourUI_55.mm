uint64_t sub_20BB48980(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  MEMORY[0x28223BE20](v10);
  v28 = &v27 - v11;
  v12 = sub_20C13C554();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v15 = sub_20C13D374();
  (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
  v16 = sub_20C13C584();
  result = (*(v13 + 8))(v15, v12);
  if (v16)
  {
    sub_20C02CCD0(v27, v9);
    v18 = swift_allocObject();
    *(v18 + 16) = sub_20BB4A794;
    *(v18 + 24) = v2;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_20B849B38;
    *(v19 + 24) = v18;
    (*(v4 + 16))(v6, v9, v3);
    v20 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v21 = swift_allocObject();
    (*(v4 + 32))(v21 + v20, v6, v3);
    v22 = (v21 + ((v5 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = sub_20B66A8B4;
    v22[1] = v19;

    v23 = v28;
    sub_20C137C94();
    v24 = *(v4 + 8);
    v24(v9, v3);
    v25 = sub_20C137CB4();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v26 + 24) = 0;
    v25(sub_20B5DF6DC, v26);

    return (v24)(v23, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20BB48D30()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_descriptor;
  v4 = sub_20C135E14();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_mediaTagStringBuilder));

  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 32);
  v11[3] = v9;
  sub_20B634408(v11);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_storefrontLocalizer));
  sub_20B8D6184(*(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_titleDisplayStyle), *(v0 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_titleDisplayStyle + 8));
  return v0;
}

uint64_t sub_20BB48E98()
{
  sub_20BB48D30();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EditorialLockupsShelf(uint64_t a1)
{
  result = qword_27C76AB30;
  if (!qword_27C76AB30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BB48F44(uint64_t a1)
{
  result = sub_20C132EE4();
  if (v2 <= 0x3F)
  {
    result = sub_20C135E14();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20BB49068()
{
  v1 = v0;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7643B0, &unk_20C155EB0);
  v2 = *(v51 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v51);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v52 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v53 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = &v47 - v11;
  v50 = v12;
  MEMORY[0x28223BE20](v13);
  v55 = &v47 - v14;
  v15 = sub_20C13C554();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B5E2E18();
  *v18 = sub_20C13D374();
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v19 = sub_20C13C584();
  result = (*(v16 + 8))(v18, v15);
  if (v19)
  {
    v21 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_lazyLockupFetcher);
    v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_lazyLockups);
    v48 = v1;
    v49 = v8;
    v23 = v21[10];
    v24 = v21[11];
    __swift_project_boxed_opaque_existential_1(v21 + 7, v23);
    v25 = v7;
    (*(v24 + 8))(v23, v24);
    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    *(v26 + 24) = v21;
    v27 = v7;
    v28 = v51;
    (*(v2 + 16))(v4, v27, v51);
    v29 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v30 = swift_allocObject();
    (*(v2 + 32))(v30 + v29, v4, v28);
    v31 = (v30 + ((v3 + v29 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v31 = sub_20B9EA780;
    v31[1] = v26;

    v32 = v54;
    sub_20C137C94();
    (*(v2 + 8))(v25, v28);
    v33 = swift_allocObject();
    v34 = v48;
    *(v33 + 16) = sub_20BB4A798;
    *(v33 + 24) = v34;
    v35 = swift_allocObject();
    *(v35 + 16) = sub_20B849B38;
    *(v35 + 24) = v33;
    v37 = v52;
    v36 = v53;
    v38 = v49;
    (*(v52 + 16))(v53, v32, v49);
    v39 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v40 = (v50 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    (*(v37 + 32))(v41 + v39, v36, v38);
    v42 = (v41 + v40);
    *v42 = sub_20B66A8B4;
    v42[1] = v35;

    v43 = v55;
    sub_20C137C94();
    v44 = *(v37 + 8);
    v44(v32, v38);
    v45 = sub_20C137CB4();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    *(v46 + 24) = 0;
    v45(sub_20B5DF6DC, v46);

    v44(v43, v38);
    swift_getObjectType();
    sub_20C13AEC4();
    swift_allocObject();
    swift_weakInit();
    sub_20C13A784();

    __swift_destroy_boxed_opaque_existential_1(v56);
    sub_20C13AFB4();
    swift_allocObject();
    swift_weakInit();
    sub_20C13A784();

    return __swift_destroy_boxed_opaque_existential_1(v56);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_20BB49730(uint64_t a1, uint64_t a2, const char *a3, uint64_t (*a4)(void))
{
  v28 = a3;
  v29 = sub_20C13BB84();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C135E14();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v10 + 16))(v12, Strong + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_descriptor, v9);

    v14 = sub_20C135D64();
    v16 = v15;
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v16 = 0xE300000000000000;
    v14 = 7104878;
  }

  sub_20C13B534();

  v17 = sub_20C13BB74();
  v18 = sub_20C13D1F4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27[1] = a1;
    v21 = a4;
    v22 = v20;
    v30[0] = v20;
    *v19 = 136446210;
    v23 = sub_20B51E694(v14, v16, v30);

    *(v19 + 4) = v23;
    _os_log_impl(&dword_20B517000, v17, v18, v28, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v24 = v22;
    a4 = v21;
    MEMORY[0x20F2F6A40](v24, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  else
  {
  }

  (*(v6 + 8))(v8, v29);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v26 = a4();
    sub_20BB48980(v26);
  }

  return result;
}

uint64_t sub_20BB49A58(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  sub_20C02C77C(a1, v10);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20BB4A798;
  *(v14 + 24) = v2;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B622D08;
  *(v15 + 24) = v14;
  (*(v5 + 16))(v7, v10, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v7, v4);
  v18 = (v17 + ((v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v18 = sub_20B5DF3D4;
  v18[1] = v15;

  sub_20C137C94();
  v19 = *(v5 + 8);
  v19(v10, v4);
  v20 = sub_20C137CB4();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v20(sub_20B52347C, v21);

  return (v19)(v13, v4);
}

uint64_t sub_20BB49D1C()
{
  v1 = v0;
  v2 = type metadata accessor for ShelfMetricAction(0);
  v3 = (v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C136664();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = v3[7];
  v8 = *MEMORY[0x277D51488];
  v9 = sub_20C134F24();
  (*(*(v9 - 8) + 104))(&v5[v7], v8, v9);
  v10 = v3[8];
  v11 = sub_20C132C14();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = sub_20C135D64();
  v14 = v13;
  v15 = v3[10];
  v16 = *MEMORY[0x277D523F0];
  v17 = sub_20C135ED4();
  v18 = *(v17 - 8);
  (*(v18 + 104))(&v5[v15], v16, v17);
  (*(v18 + 56))(&v5[v15], 0, 1, v17);
  v19 = v3[12];
  v20 = *MEMORY[0x277D51788];
  v21 = sub_20C1352E4();
  (*(*(v21 - 8) + 104))(&v5[v19], v20, v21);
  v22 = v3[13];
  v23 = sub_20C136E94();
  (*(*(v23 - 8) + 56))(&v5[v22], 1, 1, v23);
  v24 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v25 = &v5[v3[9]];
  *v25 = v12;
  v25[1] = v14;
  v26 = &v5[v3[11]];
  *v26 = 0;
  *(v26 + 1) = 0;
  *&v5[v3[14]] = v24;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BFA0378(v1, v5, Strong);
    swift_unknownObjectRelease();
  }

  v28 = swift_unknownObjectWeakLoadStrong();
  if (v28)
  {
    v29 = v28;
    v30 = (v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_mediaTagStringBuilder);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_mediaTagStringBuilder), *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_mediaTagStringBuilder + 24));
    sub_20C135D94();
    v31 = sub_20C138544();

    v32 = [v31 string];

    v50 = sub_20C13C954();
    v51 = v33;

    __swift_project_boxed_opaque_existential_1(v30, v30[3]);
    sub_20C135DD4();
    v34 = sub_20C138544();

    v35 = [v34 string];

    v49 = sub_20C13C954();
    v37 = v36;

    v38 = sub_20C135D64();
    v40 = v39;
    v41 = sub_20C135DA4();
    v42 = sub_20C135DC4();
    v43 = v29 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v43 + 8);
      ObjectType = swift_getObjectType();
      v47 = v42;
      (*(v44 + 96))(v29, v50, v51, v49, v37, v38, v40, v41, v47, MEMORY[0x277D84F90], ObjectType, v44);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return sub_20B68D110(v5);
}

uint64_t sub_20BB4A1CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BB4A244@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row + 32);
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

void sub_20BB4A2FC(uint64_t a1)
{
  v2 = sub_20C135184();
  v4 = v3;
  if (v2 == sub_20C135184() && v4 == v5)
  {
  }

  else
  {
    v7 = sub_20C13DFF4();

    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }
}

uint64_t sub_20BB4A46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_canSuggestFocus) = 0;
  v7 = v3 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_row;
  sub_20B5D8060(v23);
  v8 = v23[5];
  *(v7 + 64) = v23[4];
  *(v7 + 80) = v8;
  *(v7 + 160) = v24;
  v9 = v23[9];
  *(v7 + 128) = v23[8];
  *(v7 + 144) = v9;
  v10 = v23[7];
  *(v7 + 96) = v23[6];
  *(v7 + 112) = v10;
  v11 = v23[1];
  *v7 = v23[0];
  *(v7 + 16) = v11;
  v12 = v23[3];
  *(v7 + 32) = v23[2];
  *(v7 + 48) = v12;
  *(v3 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_titleDisplayStyle) = xmmword_20C150190;
  v13 = OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_descriptor;
  v14 = sub_20C135E14();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v4 + v13, a3, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_eventHub) = v22[0];
  *(v4 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_lazyLockups) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0, &qword_20C152E60);
  sub_20C133AA4();
  sub_20B51C710(v22, v4 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10, &unk_20C14FB60);
  sub_20C133AA4();
  sub_20B51C710(v22, v4 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_storefrontLocalizer);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_subscriptionToken) = sub_20C13A914();
  v16 = sub_20C135D74();
  type metadata accessor for ShelfLazyLockupFetcher();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D84F90];
  *(v17 + 152) = MEMORY[0x277D84F90];
  v19 = sub_20B6B0C04(v18);
  v20 = MEMORY[0x277D84FA0];
  *(v17 + 160) = v19;
  *(v17 + 168) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0, &unk_20C151230);
  sub_20C133AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763BD0, &unk_20C1536B0);
  sub_20C133AA4();
  sub_20C133AA4();
  (*(v15 + 8))(a3, v14);
  *(v17 + 136) = 20;
  *(v17 + 144) = v16;
  *(v17 + 145) = 0;
  *(v4 + OBJC_IVAR____TtC9SeymourUI21EditorialLockupsShelf_lazyLockupFetcher) = v17;
  return v4;
}

uint64_t type metadata accessor for WorkoutPlanAlternativeDurationFilterUpdated(uint64_t a1)
{
  result = qword_27C76AB40;
  if (!qword_27C76AB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BB4A810(uint64_t a1)
{
  result = sub_20C1341A4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_20BB4A87C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButtonState;
  if (v0[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButtonState] > 1u)
  {
    return 0;
  }

  if ([v0 tintAdjustmentMode] == 2)
  {
    v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    v5 = 0.0;
    v6[0] = 0.0;
    [v2 getWhite:v6 alpha:&v5];
    v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:v6[0] alpha:v5 * 0.8];

    return v3;
  }

  else if (v0[v1] == 1)
  {
    return [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  }

  else
  {
    return [objc_opt_self() systemGray5Color];
  }
}

char *sub_20BB4A9E0(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_defaultButtonInsets];
  *v12 = xmmword_20C16E7D0;
  v12[1] = xmmword_20C16E7D0;
  v13 = &v5[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_localizer];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  v14 = OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_titleLabel;
  v15 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  [v15 setAdjustsFontForContentSizeCategory_];
  LODWORD(v16) = 1148846080;
  [v15 setContentCompressionResistancePriority:1 forAxis:v16];

  v17 = *MEMORY[0x277D743F8];
  v18 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v20 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v21 = swift_initStackObject();
  v22 = MEMORY[0x277D74430];
  *(v21 + 16) = xmmword_20C14F980;
  v23 = *v22;
  *(v21 + 32) = *v22;
  *(v21 + 40) = v17;
  v24 = v20;
  v25 = v23;
  v26 = sub_20B6B134C(v21);
  swift_setDeallocating();
  sub_20B520158(v21 + 32, &unk_27C773200, qword_20C158A40);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v26;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20BB4CF78(&qword_27C7618A0, type metadata accessor for AttributeName, &unk_20C14D960);
  v27 = sub_20C13C744();

  v28 = [v18 fontDescriptorByAddingAttributes_];

  v104 = objc_opt_self();
  v29 = [v104 fontWithDescriptor:v28 size:0.0];

  [v15 setFont_];
  v30 = objc_opt_self();
  v31 = [v30 whiteColor];
  [v15 setTextColor_];

  [v15 setLineBreakMode_];
  [v15 setNumberOfLines_];
  *&v5[v14] = v15;
  v32 = OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButton;
  type metadata accessor for FilterButton();
  v33 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v33 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v34) = 1148846080;
  [v33 setContentCompressionResistancePriority:0 forAxis:v34];
  LODWORD(v35) = 1148846080;
  [v33 setContentCompressionResistancePriority:1 forAxis:v35];
  v36 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v33 setBackgroundColor_];

  [v33 setClipsToBounds_];
  type metadata accessor for UILayoutPriority(0);
  v108 = 1144750080;
  v107 = 1065353216;
  sub_20BB4CF78(&qword_27C768270, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
  sub_20C13BB94();
  LODWORD(v37) = v109;
  [v33 setContentHuggingPriority:0 forAxis:v37];
  v38 = [v30 blackColor];
  [v33 setTintColor_];

  *&v5[v32] = v33;
  v5[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButtonState] = 2;
  *&v5[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_titleLabelTrailingToFilterButtonLeadingConstraint] = 0;
  v106.receiver = v5;
  v106.super_class = type metadata accessor for FilterHeaderCell(0);
  v39 = objc_msgSendSuper2(&v106, sel_initWithFrame_, a1, a2, a3, a4);
  v40 = [v39 contentView];
  v41 = OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_titleLabel;
  [v40 addSubview_];

  v42 = v39;
  v43 = [v42 contentView];
  v44 = OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButton;
  [v43 addSubview_];

  v45 = *&v42[v44];
  [v45 addTarget:v42 action:sel_tappedFilterButton_ forControlEvents:64];

  v46 = [*&v42[v44] titleLabel];
  v47 = MEMORY[0x277D769D0];
  if (v46)
  {
    v48 = v46;
    v49 = [v104 preferredFontForTextStyle_];
    [v48 setFont_];
  }

  v50 = [*&v42[v44] titleLabel];
  if (v50)
  {
    v51 = v50;
    if (v42[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButtonState])
    {
      if (v42[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButtonState] != 1)
      {
        v53 = 0;
        goto LABEL_10;
      }

      v52 = &selRef_blackColor;
    }

    else
    {
      v52 = &selRef_systemGray2Color;
    }

    v53 = [v30 *v52];
LABEL_10:
    [v51 setTextColor_];
  }

  v103 = v44;
  v54 = *v47;
  v55 = *&v42[v44];
  v56 = [v104 preferredFontForTextStyle_];
  [v56 smu:4.0 scaledValueForValue:?];
  v58 = v57;
  [v56 smu:10.0 scaledValueForValue:?];
  v60 = v59;
  [v56 smu:4.0 scaledValueForValue:?];
  v62 = v61;
  [v56 smu:10.0 scaledValueForValue:?];
  v64 = v63;

  [v55 setContentEdgeInsets_];
  v65 = [*&v39[v41] trailingAnchor];
  v66 = [*&v42[v44] leadingAnchor];
  v67 = [v65 constraintEqualToAnchor_];

  v68 = *&v42[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_titleLabelTrailingToFilterButtonLeadingConstraint];
  *&v42[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_titleLabelTrailingToFilterButtonLeadingConstraint] = v67;
  v105 = v67;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_20C150050;
  v70 = [*&v39[v41] leadingAnchor];
  v71 = [v42 contentView];
  v72 = [v71 leadingAnchor];

  v73 = [v70 constraintEqualToAnchor_];
  *(v69 + 32) = v73;
  v74 = [*&v39[v41] topAnchor];
  v75 = [v42 contentView];
  v76 = [v75 topAnchor];

  v77 = [v74 constraintEqualToAnchor_];
  *(v69 + 40) = v77;
  v78 = [*&v39[v41] bottomAnchor];
  v79 = [v42 contentView];
  v80 = [v79 bottomAnchor];

  v81 = [v78 constraintEqualToAnchor_];
  *(v69 + 48) = v81;
  v82 = [*&v39[v41] trailingAnchor];
  v83 = [v42 contentView];
  v84 = [v83 trailingAnchor];

  v85 = [v82 constraintEqualToAnchor_];
  v107 = 1065353216;
  v108 = 1148846080;
  sub_20C13BBA4();
  LODWORD(v86) = v109;
  [v85 setPriority_];
  *(v69 + 56) = v85;
  *(v69 + 64) = v105;
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_20C151490;
  v88 = *&v42[v103];
  v89 = v105;
  v90 = [v88 trailingAnchor];
  v91 = [v42 contentView];
  v92 = [v91 trailingAnchor];

  v93 = [v90 constraintEqualToAnchor_];
  *(v87 + 32) = v93;
  v94 = [*&v42[v103] centerYAnchor];
  v95 = [v42 &selRef_setMaximumFractionDigits_];
  v96 = [v95 centerYAnchor];

  v97 = [v94 constraintEqualToAnchor_];
  *(v87 + 40) = v97;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  v98 = swift_initStackObject();
  *(v98 + 16) = xmmword_20C14F320;
  *(v98 + 32) = v69;
  *(v98 + 40) = v87;
  v99 = objc_opt_self();
  sub_20BE54D20(v98);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v100 = sub_20C13CC54();

  [v99 activateConstraints_];

  v101 = [objc_opt_self() defaultCenter];
  [v101 addObserver:v42 selector:sel_textSizeChanged_ name:*MEMORY[0x277D76810] object:0];

  return v42;
}

void sub_20BB4B9B4()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for FilterHeaderCell(0);
  objc_msgSendSuper2(&v6, sel_tintColorDidChange);
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButton];
  v2 = sub_20BB4A87C();
  [v1 setBackgroundColor_];

  v3 = v0[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButtonState];
  if (!v0[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButtonState])
  {
    v5 = &selRef_systemGray2Color;
    goto LABEL_5;
  }

  v4 = 0;
  if (v3 == 1)
  {
    v5 = &selRef_blackColor;
LABEL_5:
    v4 = [objc_opt_self() *v5];
  }

  [v1 setTitleColor:v4 forState:0];
}

void sub_20BB4BADC(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButtonState;
  *(v1 + OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButtonState) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_titleLabelTrailingToFilterButtonLeadingConstraint);
  if (v4)
  {
    [v4 setActive_];
  }

  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButton);
  [v5 setHidden_];
  [v5 setEnabled_];
  v6 = sub_20BB4A87C();
  [v5 setBackgroundColor_];

  v7 = [v5 titleLabel];
  if (v7)
  {
    v8 = v7;
    if (*(v1 + v3))
    {
      if (*(v1 + v3) != 1)
      {
        v10 = 0;
        goto LABEL_11;
      }

      v9 = &selRef_blackColor;
    }

    else
    {
      v9 = &selRef_systemGray2Color;
    }

    v10 = [objc_opt_self() *v9];
LABEL_11:
    v11 = v10;
    [v8 setTextColor_];
  }
}

id sub_20BB4BCAC()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButton];
  v2 = [v1 titleLabel];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = *MEMORY[0x277D769D0];
    v6 = [v4 preferredFontForTextStyle_];
    [v3 setFont_];
  }

  else
  {
    v5 = *MEMORY[0x277D769D0];
  }

  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v7 smu:4.0 scaledValueForValue:?];
  v9 = v8;
  [v7 smu:10.0 scaledValueForValue:?];
  v11 = v10;
  [v7 smu:4.0 scaledValueForValue:?];
  v13 = v12;
  [v7 smu:10.0 scaledValueForValue:?];
  v15 = v14;

  [v1 setContentEdgeInsets_];

  return [v0 setNeedsLayout];
}

id sub_20BB4BF10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FilterHeaderCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for FilterHeaderCell(uint64_t a1)
{
  result = qword_281103608;
  if (!qword_281103608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB4C048(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BB4C144(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BB4C190@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BB4C1E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_20BB4C25C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x14)
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
    v9 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    LODWORD(v10) = 1036831949;
    [v9 setHyphenationFactor_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766460, &unk_20C15C490);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    v12 = *MEMORY[0x277D74118];
    *(inited + 32) = *MEMORY[0x277D74118];
    *(inited + 64) = sub_20B51C88C(0, &qword_27C769D08, 0x277D74240);
    *(inited + 40) = v9;
    v13 = v12;
    v4 = v9;
    sub_20B6B1650(inited);
    swift_setDeallocating();
    sub_20B520158(inited + 32, &qword_27C763978, &unk_20C163AF0);
    v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v15 = sub_20C13C914();
    type metadata accessor for Key(0);
    sub_20BB4CF78(&qword_27C761D80, type metadata accessor for Key, &unk_20C14F0C4);
    v16 = sub_20C13C744();

    v7 = [v14 initWithString:v15 attributes:v16];

    [*&v2[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_titleLabel] setAttributedText_];
    sub_20BB4BADC(v8);
    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v2;
    *(v18 + 24) = v5;
    a1 = swift_allocObject();
    v19 = sub_20BB4C7C4;
    *(a1 + 16) = sub_20BB4C7C4;
    *(a1 + 24) = v18;
    aBlock[4] = sub_20B5E4150;
    aBlock[5] = a1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_20BB4C11C;
    aBlock[3] = &block_descriptor_87;
    v20 = _Block_copy(aBlock);
    v21 = v2;
    v22 = v5;

    [v17 performWithoutAnimation_];

    _Block_release(v20);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if ((v17 & 1) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  sub_20C13B534();

  v23 = v2;
  v24 = sub_20C13BB74();
  v25 = sub_20C13D1D4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v38 = v2;
    v28 = v27;
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v26 = 138543874;
    *(v26 + 4) = v23;
    *v28 = v23;
    *(v26 + 12) = 2160;
    *(v26 + 14) = 1752392040;
    *(v26 + 22) = 2080;
    v40 = a1;
    v29 = sub_20B5F66D0();
    v30 = v23;
    v31 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v29);
    v33 = sub_20B51E694(v31, v32, aBlock);

    *(v26 + 24) = v33;
    _os_log_impl(&dword_20B517000, v24, v25, "Attempted to configure %{public}@ with item: %{mask.hash}s", v26, 0x20u);
    sub_20B520158(v28, &unk_27C762E30, &unk_20C150580);
    v34 = v28;
    v2 = v38;
    MEMORY[0x20F2F6A40](v34, -1, -1);
    v35 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x20F2F6A40](v35, -1, -1);
    MEMORY[0x20F2F6A40](v26, -1, -1);
  }

  (v5)[1](v7, v4);
  v19 = 0;
  v18 = 0;
LABEL_7:
  [v2 setNeedsLayout];
  return sub_20B583ECC(v19, v18);
}

id sub_20BB4C7C4()
{
  v1 = *(v0 + 16);
  [*&v1[OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButton] setAttributedTitle:*(v0 + 24) forState:0];

  return [v1 layoutIfNeeded];
}

void sub_20BB4C81C()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_defaultButtonInsets);
  *v4 = xmmword_20C16E7D0;
  v4[1] = xmmword_20C16E7D0;
  v5 = v1 + OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_localizer;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  v6 = OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_titleLabel;
  v7 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  [v7 setAdjustsFontForContentSizeCategory_];
  LODWORD(v8) = 1148846080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v8];

  v9 = *MEMORY[0x277D743F8];
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v12 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_20C14F980;
  v14 = *MEMORY[0x277D74430];
  *(v13 + 32) = *MEMORY[0x277D74430];
  *(v13 + 40) = v9;
  v15 = v12;
  v16 = v14;
  v17 = sub_20B6B134C(v13);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v17;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20BB4CF78(&qword_27C7618A0, type metadata accessor for AttributeName, &unk_20C14D960);
  v18 = sub_20C13C744();

  v19 = [v10 fontDescriptorByAddingAttributes_];

  v20 = [objc_opt_self() fontWithDescriptor:v19 size:0.0];
  [v7 setFont_];

  v21 = objc_opt_self();
  v22 = [v21 whiteColor];
  [v7 setTextColor_];

  [v7 setLineBreakMode_];
  [v7 setNumberOfLines_];
  *(v1 + v6) = v7;
  v23 = OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButton;
  type metadata accessor for FilterButton();
  v24 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v24 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v25) = 1148846080;
  [v24 setContentCompressionResistancePriority:0 forAxis:v25];
  LODWORD(v26) = 1148846080;
  [v24 setContentCompressionResistancePriority:1 forAxis:v26];
  v27 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v24 setBackgroundColor_];

  [v24 setClipsToBounds_];
  type metadata accessor for UILayoutPriority(0);
  sub_20BB4CF78(&qword_27C768270, type metadata accessor for UILayoutPriority, MEMORY[0x277D74E40]);
  sub_20C13BB94();
  LODWORD(v28) = v30;
  [v24 setContentHuggingPriority:0 forAxis:v28];
  v29 = [v21 blackColor];
  [v24 setTintColor_];

  *(v1 + v23) = v24;
  *(v1 + OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_filterButtonState) = 2;
  *(v1 + OBJC_IVAR____TtC9SeymourUI16FilterHeaderCell_titleLabelTrailingToFilterButtonLeadingConstraint) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BB4CD94()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    v11 = MEMORY[0x28223BE20](v10);
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

uint64_t sub_20BB4CF78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20BB4CFD4()
{
  result = qword_27C76AB60;
  if (!qword_27C76AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76AB60);
  }

  return result;
}

uint64_t sub_20BB4D04C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_20C13B0C4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_20C134D04();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AB90, &qword_20C16EAA8);
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  v2[16] = swift_task_alloc();
  v7 = sub_20C135174();
  v2[17] = v7;
  v2[18] = *(v7 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB4D2D8, 0, 0);
}

uint64_t sub_20BB4D2D8()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[3];
  __swift_project_boxed_opaque_existential_1((v4 + 96), *(v4 + 120));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[16], &unk_27C76BC00, &unk_20C1500B0);
    v5 = sub_20C1356F4();
    sub_20BB506A0(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D51B88], v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[19];
    v9 = v0[20];
    v12 = v0[17];
    v11 = v0[18];
    v13 = v0[11];
    v14 = v0[9];
    v15 = v0[10];
    v23 = v0[12];
    v24 = v0[8];
    v25 = v0[7];
    v27 = v0[6];
    v16 = v0[2];
    v26 = v0[3];
    (*(v11 + 32))(v9, v0[16], v12);
    (*(v11 + 16))(v10, v9, v12);
    v17 = *(v13 + 16);
    v17(v23, v16, v15);
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1((v4 + 96), *(v4 + 120));
    v17(v14, v16, v15);
    v18 = *MEMORY[0x277D4F618];
    v19 = sub_20C13B254();
    (*(*(v19 - 8) + 104))(v14, v18, v19);
    (*(v24 + 104))(v14, *MEMORY[0x277D4F518], v25);
    sub_20C13B2A4();
    (*(v24 + 8))(v14, v25);
    __swift_project_boxed_opaque_existential_1((v26 + 56), *(v26 + 80));
    sub_20C1399D4();
    v20 = swift_task_alloc();
    v0[21] = v20;
    *(v20 + 16) = "SeymourUI/RemoteBrowsingSearchClient.swift";
    *(v20 + 24) = 42;
    *(v20 + 32) = 2;
    *(v20 + 40) = 48;
    *(v20 + 48) = v27;
    v21 = swift_task_alloc();
    v0[22] = v21;
    *v21 = v0;
    v21[1] = sub_20BB4D730;
    v22 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v21, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BB506E8, v20, v22);
  }
}

uint64_t sub_20BB4D730()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_20BB4D97C;
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = sub_20BB4D880;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BB4D880()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BB4D97C()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[13];
  (*(v0[5] + 8))(v0[6], v0[4]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20BB4DA90(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_20C13B0C4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v5 = sub_20C134D04();
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AB68, &unk_20C16EA80);
  v2[14] = v6;
  v2[15] = *(v6 - 8);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  v2[17] = swift_task_alloc();
  v7 = sub_20C135174();
  v2[18] = v7;
  v2[19] = *(v7 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB4DD1C, 0, 0);
}

uint64_t sub_20BB4DD1C()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v44 = v0[4];
  __swift_project_boxed_opaque_existential_1((v44 + 96), *(v44 + 120));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[17], &unk_27C76BC00, &unk_20C1500B0);
    v4 = sub_20C1356F4();
    sub_20BB506A0(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[20];
    v8 = v0[21];
    v11 = v0[18];
    v10 = v0[19];
    v12 = v0[12];
    v13 = v0[6];
    v14 = v0[3];
    (*(v10 + 32))(v8, v0[17], v11);
    (*(v10 + 16))(v9, v8, v11);
    v43 = v0;
    v0[2] = v14;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AB70, &qword_20C16EA90);
    sub_20BB50568();
    sub_20BB505EC();
    sub_20C137844();
    v15 = -1;
    v16 = -1 << *(v14 + 32);
    if (-v16 < 64)
    {
      v15 = ~(-1 << -v16);
    }

    v17 = v15 & *(v14 + 56);
    v18 = (63 - v16) >> 6;
    v41 = *MEMORY[0x277D4F618];
    v40 = *MEMORY[0x277D4F520];
    v38 = (v13 + 8);
    v39 = (v13 + 104);
    v42 = v12;

    v27 = 0;
    if (v17)
    {
      while (1)
      {
        v28 = v27;
LABEL_13:
        v29 = v43[13];
        v30 = v43[11];
        v31 = v43[7];
        v45 = v43[5];
        v32 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
        v33 = *(v42 + 16);
        v33(v29, *(v14 + 48) + *(v42 + 72) * (v32 | (v28 << 6)), v30);
        __swift_project_boxed_opaque_existential_1((v44 + 96), *(v44 + 120));
        v33(v31, v29, v30);
        v34 = sub_20C13B254();
        (*(*(v34 - 8) + 104))(v31, v41, v34);
        (*v39)(v31, v40, v45);
        sub_20C13B2A4();
        (*v38)(v31, v45);
        v19 = (*(v42 + 8))(v29, v30);
        if (!v17)
        {
          goto LABEL_9;
        }
      }
    }

    while (1)
    {
LABEL_9:
      v28 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        return MEMORY[0x2822008A0](v19, v20, v21, v22, v23, v24, v25, v26);
      }

      if (v28 >= v18)
      {
        break;
      }

      v17 = *(v14 + 56 + 8 * v28);
      ++v27;
      if (v17)
      {
        v27 = v28;
        goto LABEL_13;
      }
    }

    v35 = v43[10];
    v36 = v43[4];

    __swift_project_boxed_opaque_existential_1((v36 + 56), *(v36 + 80));
    sub_20C1399E4();
    v37 = swift_task_alloc();
    v43[22] = v37;
    *(v37 + 16) = "SeymourUI/RemoteBrowsingSearchClient.swift";
    *(v37 + 24) = 42;
    *(v37 + 32) = 2;
    *(v37 + 40) = 59;
    *(v37 + 48) = v35;
    v19 = swift_task_alloc();
    v43[23] = v19;
    *v19 = v43;
    v19[1] = sub_20BB4E2AC;
    v24 = sub_20BB506E8;
    v23 = 0x800000020C192D10;
    v26 = MEMORY[0x277D84F78] + 8;
    v20 = 0;
    v21 = 0;
    v22 = 0xD000000000000013;
    v25 = v37;

    return MEMORY[0x2822008A0](v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_20BB4E2AC()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {

    v3 = sub_20BB4E500;
  }

  else
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BB4E404;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BB4E404()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BB4E500()
{
  v1 = v0[21];
  v2 = v0[18];
  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  (*(v0[9] + 8))(v0[10], v0[8]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20BB4E614(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v2[4] = swift_task_alloc();
  v3 = sub_20C136C64();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB4E70C, 0, 0);
}

uint64_t sub_20BB4E70C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[3] + 96), *(v0[3] + 120));
  sub_20C13B174();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_20B520158(v0[4], &qword_27C768690, &unk_20C14FD90);
    v4 = sub_20C1356F4();
    sub_20BB506A0(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51B88], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    v11 = v0[2];
    (*(v9 + 32))(v8, v0[4], v10);
    v12 = sub_20C136A74();

    v13 = sub_20BB5013C(v12, v11);

    (*(v9 + 8))(v8, v10);

    v14 = v0[1];

    return v14(v13);
  }
}

uint64_t sub_20BB4E984()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_20BB4EA3C;

  return MEMORY[0x2821AE418](v2, v3);
}

uint64_t sub_20BB4EA3C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_20BB4EB3C(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_20BB4EB64, 0, 0);
}

uint64_t sub_20BB4EB64()
{
  v1 = v0[4];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_20B90C5E8;
  v5 = v0[2];
  v6 = v0[3];

  return MEMORY[0x2821AE420](v5, v6, v2, v3);
}

uint64_t sub_20BB4EC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_20BB4EC4C, 0, 0);
}

uint64_t sub_20BB4EC4C()
{
  v1 = v0[5];
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_20BB4ED10;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x2821AE410](v7, v5, v6, v2, v3);
}

uint64_t sub_20BB4ED10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20BB4EE04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52AC14;

  return sub_20BB4D04C(a1);
}

uint64_t sub_20BB4EE9C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B52A9D4;

  return sub_20BB4DA90(a1);
}

uint64_t sub_20BB4EF34()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52AC14;

  return sub_20BB4F10C();
}

uint64_t sub_20BB4EFD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_20B5ADE04;

  return sub_20BB4E614(a1);
}

unint64_t *sub_20BB4F070(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20BB4FE54(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_20BB4F10C()
{
  v1[3] = v0;
  v2 = sub_20C13B0C4();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_20C134D04();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AB68, &unk_20C16EA80);
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  v1[16] = swift_task_alloc();
  v6 = sub_20C136C64();
  v1[17] = v6;
  v1[18] = *(v6 - 8);
  v1[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  v1[20] = swift_task_alloc();
  v7 = sub_20C135174();
  v1[21] = v7;
  v1[22] = *(v7 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB4F42C, 0, 0);
}

uint64_t sub_20BB4F42C()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  v4 = v0[3];
  __swift_project_boxed_opaque_existential_1((v4 + 96), *(v4 + 120));
  sub_20C13B184();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[20];
    v6 = &unk_27C76BC00;
    v7 = &unk_20C1500B0;
LABEL_5:
    sub_20B520158(v5, v6, v7);
    v14 = sub_20C1356F4();
    sub_20BB506A0(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D51B88], v14);
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }

  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[16];
  (*(v0[22] + 32))(v0[24], v0[20], v0[21]);
  __swift_project_boxed_opaque_existential_1((v4 + 96), *(v4 + 120));
  sub_20C13B174();
  v11 = (*(v9 + 48))(v10, 1, v8);
  v12 = v0[24];
  if (v11 == 1)
  {
    v13 = v0[16];
    (*(v0[22] + 8))(v0[24], v0[21]);
    v6 = &qword_27C768690;
    v7 = &unk_20C14FD90;
    v5 = v13;
    goto LABEL_5;
  }

  v18 = v0[22];
  v19 = v0[23];
  v20 = v0[21];
  v21 = v0[11];
  v22 = v0[5];
  (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
  v23 = sub_20C136A74();
  (*(v18 + 16))(v19, v12, v20);
  v0[2] = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AB70, &qword_20C16EA90);
  sub_20BB50568();
  sub_20BB505EC();
  sub_20C137844();
  v47 = v23 + 56;
  v24 = -1;
  v25 = -1 << *(v23 + 32);
  if (-v25 < 64)
  {
    v24 = ~(-1 << -v25);
  }

  v26 = v24 & *(v23 + 56);
  v27 = (63 - v25) >> 6;
  v51 = *MEMORY[0x277D4F618];
  v50 = *MEMORY[0x277D4F520];
  v48 = (v22 + 8);
  v49 = (v22 + 104);
  v52 = v21;
  v53 = v23;

  v36 = 0;
  if (v26)
  {
    while (1)
    {
      v37 = v36;
LABEL_16:
      v38 = v0[12];
      v39 = v0[10];
      v40 = v0[6];
      v54 = v0[4];
      v41 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v42 = *(v52 + 16);
      v42(v38, *(v53 + 48) + *(v52 + 72) * (v41 | (v37 << 6)), v39);
      __swift_project_boxed_opaque_existential_1((v4 + 96), *(v4 + 120));
      v42(v40, v38, v39);
      v43 = sub_20C13B254();
      (*(*(v43 - 8) + 104))(v40, v51, v43);
      (*v49)(v40, v50, v54);
      sub_20C13B2A4();
      (*v48)(v40, v54);
      v28 = (*(v52 + 8))(v38, v39);
      if (!v26)
      {
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
LABEL_12:
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      return MEMORY[0x2822008A0](v28, v29, v30, v31, v32, v33, v34, v35);
    }

    if (v37 >= v27)
    {
      break;
    }

    v26 = *(v47 + 8 * v37);
    ++v36;
    if (v26)
    {
      v36 = v37;
      goto LABEL_16;
    }
  }

  v44 = v0[9];
  v45 = v0[3];

  __swift_project_boxed_opaque_existential_1((v45 + 56), *(v45 + 80));
  sub_20C1399E4();
  v46 = swift_task_alloc();
  v0[25] = v46;
  *(v46 + 16) = "SeymourUI/RemoteBrowsingSearchClient.swift";
  *(v46 + 24) = 42;
  *(v46 + 32) = 2;
  *(v46 + 40) = 73;
  *(v46 + 48) = v44;
  v28 = swift_task_alloc();
  v0[26] = v28;
  *v28 = v0;
  v28[1] = sub_20BB4FA78;
  v33 = sub_20B526A4C;
  v32 = 0x800000020C192D10;
  v35 = MEMORY[0x277D84F78] + 8;
  v29 = 0;
  v30 = 0;
  v31 = 0xD000000000000013;
  v34 = v46;

  return MEMORY[0x2822008A0](v28, v29, v30, v31, v32, v33, v34, v35);
}

uint64_t sub_20BB4FA78()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {

    v3 = sub_20BB4FD04;
  }

  else
  {
    v5 = v2[8];
    v4 = v2[9];
    v6 = v2[7];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BB4FBD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BB4FBD0()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[18];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_20BB4FD04()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[13];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v10 = v0[1];

  return v10();
}

void sub_20BB4FE54(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v37 = a1;
  v6 = sub_20C134D04();
  v8.n128_f64[0] = MEMORY[0x28223BE20](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = 0;
  v11 = 0;
  v44 = v12;
  v45 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v20 = a4 + 56;
  v42 = v10;
  v43 = v7;
  v40 = (v7 + 8);
  v41 = v7 + 16;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v46 = (v18 - 1) & v18;
LABEL_13:
    v24 = v21 | (v11 << 6);
    v25 = *(v45 + 48);
    v26 = *(v43 + 72);
    v39 = v24;
    (*(v43 + 16))(v10, v25 + v26 * v24, v6, v8);
    sub_20C134CF4();
    if (*(a4 + 16) && (sub_20C13E164(), v27 = sub_20C138104(), MEMORY[0x20F2F58E0](v27), v28 = sub_20C13E1B4(), v29 = -1 << *(a4 + 32), v30 = v28 & ~v29, ((*(v20 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
    {
      v31 = ~v29;
      while (1)
      {
        v32 = sub_20C138104();
        if (v32 == sub_20C138104())
        {
          break;
        }

        v30 = (v30 + 1) & v31;
        if (((*(v20 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v10 = v42;
      v6 = v44;
      (*v40)(v42, v44);
      *(v37 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v33 = __OFADD__(v38++, 1);
      v18 = v46;
      if (v33)
      {
        __break(1u);
LABEL_22:
        v34 = v45;

        sub_20BC11660(v37, v36, v38, v34);
        return;
      }
    }

    else
    {
LABEL_5:
      v10 = v42;
      v6 = v44;
      (*v40)(v42, v44);
      v18 = v46;
    }
  }

  v22 = v11;
  while (1)
  {
    v11 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v11 >= v19)
    {
      goto LABEL_22;
    }

    v23 = *(v14 + 8 * v11);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v46 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_20BB5013C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v47 = *MEMORY[0x277D85DE8];
  v6 = sub_20C134D04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v11 = ((1 << v8) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v35 = v11;
    v36 = v3;
    v34 = &v34;
    MEMORY[0x28223BE20](v13);
    v37 = &v34 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v12);
    v38 = 0;
    v14 = 0;
    v3 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = v15 < 64 ? ~(-1 << v15) : -1;
    v17 = v16 & *(a1 + 56);
    v12 = (v15 + 63) >> 6;
    v11 = a2 + 56;
    v40 = (v7 + 8);
    v41 = v7 + 16;
    v44 = v6;
    v45 = a1;
    v42 = v9;
    v43 = v7;
    while (v17)
    {
      v18 = __clz(__rbit64(v17));
      v46 = (v17 - 1) & v17;
LABEL_14:
      v21 = v18 | (v14 << 6);
      v22 = *(a1 + 48);
      v23 = *(v7 + 72);
      v39 = v21;
      (*(v7 + 16))(v9, v22 + v23 * v21, v6);
      sub_20C134CF4();
      if (*(a2 + 16) && (sub_20C13E164(), v24 = sub_20C138104(), MEMORY[0x20F2F58E0](v24), v25 = sub_20C13E1B4(), v26 = -1 << *(a2 + 32), v27 = v25 & ~v26, ((*(v11 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0))
      {
        v28 = ~v26;
        while (1)
        {
          v29 = sub_20C138104();
          if (v29 == sub_20C138104())
          {
            break;
          }

          v27 = (v27 + 1) & v28;
          if (((*(v11 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v9 = v42;
        v6 = v44;
        (*v40)(v42, v44);
        *&v37[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
        v30 = __OFADD__(v38++, 1);
        a1 = v45;
        v17 = v46;
        v7 = v43;
        if (v30)
        {
          __break(1u);
LABEL_23:
          v31 = sub_20BC11660(v37, v35, v38, a1);

          return v31;
        }
      }

      else
      {
LABEL_6:
        v9 = v42;
        v6 = v44;
        (*v40)(v42, v44);
        a1 = v45;
        v17 = v46;
        v7 = v43;
      }
    }

    v19 = v14;
    while (1)
    {
      v14 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v14 >= v12)
      {
        goto LABEL_23;
      }

      v20 = *(v3 + 8 * v14);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v46 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();

  v31 = sub_20BB4F070(v33, v11, a1, a2);

  MEMORY[0x20F2F6A40](v33, -1, -1);

  return v31;
}

unint64_t sub_20BB50568()
{
  result = qword_27C76AB78;
  if (!qword_27C76AB78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76AB70, &qword_20C16EA90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76AB78);
  }

  return result;
}

unint64_t sub_20BB505EC()
{
  result = qword_27C76AB80;
  if (!qword_27C76AB80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C76AB70, &qword_20C16EA90);
    sub_20BB506A0(&qword_27C76AB88, MEMORY[0x277D51068], MEMORY[0x277D51060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76AB80);
  }

  return result;
}

uint64_t sub_20BB506A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t NavigationRequest.description.getter()
{
  MEMORY[0x20F2F4230](0x656372756F736572, 0xEA0000000000203ALL);
  type metadata accessor for NavigationResource(0);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](8236, 0xE200000000000000);
  MEMORY[0x20F2F4230](0, 0xE000000000000000);

  MEMORY[0x20F2F4230](0x203A746E65746E69, 0xE800000000000000);
  type metadata accessor for NavigationRequest(0);
  type metadata accessor for NavigationIntent(0);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](8236, 0xE200000000000000);

  MEMORY[0x20F2F4230](0, 0xE000000000000000);

  MEMORY[0x20F2F4230](0x203A656372756F73, 0xE800000000000000);
  type metadata accessor for NavigationSource(0);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](8236, 0xE200000000000000);

  MEMORY[0x20F2F4230](0, 0xE000000000000000);

  MEMORY[0x20F2F4230](0x797469726F697270, 0xEA0000000000203ALL);
  sub_20C13DDF4();
  MEMORY[0x20F2F4230](44, 0xE100000000000000);

  MEMORY[0x20F2F4230](0, 0xE000000000000000);

  MEMORY[0x20F2F4230](0x697461746F6E6E61, 0xEC000000203A6E6FLL);
  sub_20C13DDF4();

  MEMORY[0x20F2F4230](0, 0xE000000000000000);

  return 0xD000000000000013;
}

char *sub_20BB50A08(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI15RoundedIconView_imageView;
  v10 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v9] = v10;
  v33.receiver = v4;
  v33.super_class = type metadata accessor for RoundedIconView();
  v11 = objc_msgSendSuper2(&v33, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = OBJC_IVAR____TtC9SeymourUI15RoundedIconView_imageView;
  v13 = *&v11[OBJC_IVAR____TtC9SeymourUI15RoundedIconView_imageView];
  v14 = v11;
  [v13 setContentMode_];
  v15 = *&v11[v12];
  v16 = v14;
  [v16 addSubview_];
  v17 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20C14FE90;
  v19 = [*&v11[v12] centerXAnchor];
  v20 = [v16 centerXAnchor];
  v21 = [v19 constraintEqualToAnchor_];

  *(v18 + 32) = v21;
  v22 = [*&v11[v12] widthAnchor];
  v23 = [v16 widthAnchor];

  v24 = [v22 constraintLessThanOrEqualToAnchor:v23 multiplier:0.7];
  *(v18 + 40) = v24;
  v25 = [*&v11[v12] centerYAnchor];
  v26 = [v16 centerYAnchor];

  v27 = [v25 constraintEqualToAnchor_];
  *(v18 + 48) = v27;
  v28 = [*&v11[v12] heightAnchor];
  v29 = [*&v11[v12] widthAnchor];
  v30 = [v28 constraintLessThanOrEqualToAnchor_];

  *(v18 + 56) = v30;
  sub_20B5E29D0();
  v31 = sub_20C13CC54();

  [v17 activateConstraints_];

  return v16;
}

id sub_20BB50F1C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for RoundedIconView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

char *sub_20BB5101C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_gradientLayer;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v10 = OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_imageView;
  v11 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v10] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v12] = v13;
  v68.receiver = v4;
  v68.super_class = type metadata accessor for PlaybackMetadataGymKitView();
  v14 = objc_msgSendSuper2(&v68, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = *&v14[OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_imageView];
  v16 = OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_imageView;
  v17 = v14;
  v18 = v14;
  v19 = v15;
  v20 = sub_20C13C914();
  v21 = [objc_opt_self() smm:v20 systemImageNamed:?];

  v22 = objc_opt_self();
  v23 = [v22 tintColor];
  v24 = [v23 colorWithAlphaComponent_];

  v25 = [v21 imageWithTintColor:v24 renderingMode:1];
  [v19 setImage_];

  v66 = v16;
  [*&v17[v16] setContentMode_];
  v26 = *&v17[v16];
  v27 = v18;
  [v27 addSubview_];
  v28 = OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_titleLabel;
  v65 = OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_titleLabel;
  LODWORD(v29) = 1148846080;
  [*&v27[OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_titleLabel] setContentCompressionResistancePriority:1 forAxis:v29];
  [v27 addSubview_];
  v30 = *&v27[OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_20C152DF0;
  v32 = v30;
  v33 = [v22 clearColor];
  v34 = [v33 CGColor];

  type metadata accessor for CGColor(0);
  v36 = v35;
  *(v31 + 56) = v35;
  *(v31 + 32) = v34;
  v37 = [v22 whiteColor];
  v38 = [v37 CGColor];

  *(v31 + 88) = v36;
  *(v31 + 64) = v38;
  v39 = [v22 whiteColor];
  v40 = [v39 CGColor];

  *(v31 + 120) = v36;
  *(v31 + 96) = v40;
  v41 = [v22 clearColor];
  v42 = [v41 CGColor];

  *(v31 + 152) = v36;
  *(v31 + 128) = v42;
  v43 = sub_20C13CC54();

  [v32 setColors_];

  v67 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20C151850;
  v45 = [*&v17[v66] leadingAnchor];
  v46 = [v27 leadingAnchor];

  v47 = [v45 constraintEqualToAnchor_];
  *(v44 + 32) = v47;
  v48 = [*&v17[v66] firstBaselineAnchor];
  v49 = [*&v27[v65] firstBaselineAnchor];
  v50 = [v48 constraintEqualToAnchor_];

  *(v44 + 40) = v50;
  v51 = [*&v27[v65] leadingAnchor];
  v52 = [*&v17[v66] trailingAnchor];
  v53 = [v51 constraintEqualToAnchor_];

  *(v44 + 48) = v53;
  v54 = [*&v27[v65] trailingAnchor];
  v55 = [v27 trailingAnchor];

  v56 = [v54 constraintEqualToAnchor_];
  *(v44 + 56) = v56;
  v57 = [*&v27[v65] topAnchor];
  v58 = [v27 topAnchor];

  v59 = [v57 constraintEqualToAnchor_];
  *(v44 + 64) = v59;
  v60 = [*&v27[v65] bottomAnchor];
  v61 = [v27 bottomAnchor];

  v62 = [v60 constraintEqualToAnchor_];
  *(v44 + 72) = v62;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v63 = sub_20C13CC54();

  [v67 activateConstraints_];

  return v27;
}

void sub_20BB5174C(uint64_t a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PlaybackMetadataGymKitView();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v2 = *&v1[OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_gradientLayer];
  [v1 bounds];
  [v2 setFrame_];
  [v1 bounds];
  [v2 setStartPoint_];
  [v1 bounds];
  [v2 setEndPoint_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14FE90;
  sub_20B51C88C(0, &qword_27C765490, 0x277CCABB0);
  *(v3 + 32) = sub_20C13D5C4();
  [v1 bounds];
  *(v3 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v1 bounds];
  v4 = CGRectGetWidth(v10) + -24.0;
  [v1 bounds];
  *(v3 + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  *(v3 + 56) = sub_20C13D5C4();
  v5 = sub_20C13CC54();

  [v2 setLocations_];
}

void sub_20BB51980(uint64_t a1)
{
  [*&v1[OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_titleLabel] setFont_];
  v7 = [objc_opt_self() configurationWithFont_];
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_imageView];
  v4 = [v3 image];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 imageWithConfiguration_];
  }

  else
  {
    v6 = 0;
  }

  [v3 setImage_];

  [v1 invalidateIntrinsicContentSize];
}

void sub_20BB51A84(uint64_t a1)
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_20C132964();

  v5 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v6 = sub_20C13C914();

  v7 = [v5 initWithString_];

  [v7 appendAttributedString_];
  v8 = *&v1[OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_titleLabel];
  [v7 copy];
  sub_20C13DA64();
  swift_unknownObjectRelease();
  sub_20B51C88C(0, &qword_281100520, 0x277CCA898);
  if (swift_dynamicCast())
  {
    v9 = v10;
  }

  else
  {
    v9 = 0;
  }

  [v8 setAttributedText_];

  [v1 invalidateIntrinsicContentSize];
}

id sub_20BB51C4C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlaybackMetadataGymKitView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_20BB51D00()
{
  v1 = OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_gradientLayer;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v2 = OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_imageView;
  v3 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  v4 = OBJC_IVAR____TtC9SeymourUI26PlaybackMetadataGymKitView_titleLabel;
  v5 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v4) = v5;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BB51DF0()
{
  v1 = 0x6954656C62627562;
  if (*v0 != 1)
  {
    v1 = 0x656568536C6C7566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72656E6E6162;
  }
}

uint64_t SessionBurnBarPackPosition.description.getter(unsigned __int8 a1)
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_20C132964();

  return v3;
}

uint64_t sub_20BB51F8C()
{
  v1 = v0;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v2 = *(v55 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v55);
  v54 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v50 - v5;
  MEMORY[0x28223BE20](v6);
  v56 = &v50 - v7;
  v8 = type metadata accessor for NotificationConsentInterceptor.State(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NavigationRequest(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v14);
  v57 = &v50 - v15;
  v16 = sub_20C13BB84();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  sub_20C13BB64();
  (*(v17 + 8))(v19, v16);
  v20 = OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor_state;
  swift_beginAccess();
  sub_20BB54F64(v1 + v20, v10, type metadata accessor for NotificationConsentInterceptor.State);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80, &qword_20C183A00);
  if ((*(*(v21 - 8) + 48))(v10, 1, v21) == 1)
  {
    v22 = type metadata accessor for NotificationConsentInterceptor.State;
    v23 = v10;
  }

  else
  {
    v24 = &v10[*(v21 + 48)];
    v25 = v12;
    v26 = *v24;
    v27 = v24[1];
    v28 = &v10[*(v21 + 64)];
    v50 = *v28;
    v51 = v2;
    v29 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v52 = *(v28 + 1);
    v30 = v52;
    v53 = v26;
    v31 = v10;
    v32 = v57;
    sub_20B75B150(v31, v57);
    sub_20BB5274C(v26, v27);
    sub_20BB54F64(v32, v29, type metadata accessor for NavigationRequest);
    v33 = (*(v25 + 80) + 40) & ~*(v25 + 80);
    v34 = swift_allocObject();
    v35 = v50;
    v34[2] = v1;
    v34[3] = v35;
    v34[4] = v30;
    sub_20B75B150(v29, v34 + v33);
    v36 = swift_allocObject();
    *(v36 + 16) = sub_20BB554F4;
    *(v36 + 24) = v34;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_20B66A8BC;
    *(v37 + 24) = v36;
    v38 = v51;
    v40 = v54;
    v39 = v55;
    v41 = v58;
    (*(v51 + 16))(v54, v58, v55);
    v42 = (*(v38 + 80) + 16) & ~*(v38 + 80);
    v43 = swift_allocObject();
    (*(v38 + 32))(v43 + v42, v40, v39);
    v44 = (v43 + ((v3 + v42 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v44 = sub_20B66A8B4;
    v44[1] = v37;

    v45 = v56;
    sub_20C137C94();
    v46 = *(v38 + 8);
    v46(v41, v39);
    v47 = sub_20C137CB4();
    v48 = swift_allocObject();
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    v47(sub_20B52347C, v48);

    swift_unknownObjectRelease();

    v46(v45, v39);
    v22 = type metadata accessor for NavigationRequest;
    v23 = v57;
  }

  return sub_20BB54FCC(v23, v22);
}

uint64_t sub_20BB52590(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for NotificationConsentInterceptor.State(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80, &qword_20C183A00);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor_state;
  swift_beginAccess();
  sub_20BB552B0(v12, a1 + v14);
  swift_endAccess();
  sub_20BB54F64(a4, v9, type metadata accessor for NavigationRequest);
  swift_storeEnumTagMultiPayload();
  a2(v9);
  return sub_20B520158(v9, &unk_27C76D250, &unk_20C155D00);
}

uint64_t sub_20BB5274C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor_platform) > 1u)
  {
    if (*(v2 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor_platform) == 3)
    {
      ObjectType = swift_getObjectType();
      return (*(a2 + 56))(1, ObjectType, a2);
    }

    else
    {
      result = sub_20C13DE24();
      __break(1u);
    }
  }

  else if (*(v2 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor_platform))
  {
    v16 = v10;
    v17 = swift_getObjectType();
    (*(a2 + 48))(0, v17, a2);
    v18 = swift_allocObject();
    *(v18 + 16) = a1;
    *(v18 + 24) = a2;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_20BA92240;
    *(v19 + 24) = v18;
    (*(v6 + 16))(v8, v12, v16);
    v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v21 = swift_allocObject();
    (*(v6 + 32))(v21 + v20, v8, v16);
    v22 = (v21 + ((v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v22 = sub_20B64B960;
    v22[1] = v19;
    swift_unknownObjectRetain();
    sub_20C137C94();
    return (*(v6 + 8))(v12, v16);
  }

  else
  {
    v13 = swift_getObjectType();
    return (*(a2 + 56))(0, v13, a2);
  }

  return result;
}

uint64_t sub_20BB52A50(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a6;
  v51 = a2;
  v52 = a5;
  v43 = a4;
  v50 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v47 = &v43 - v8;
  v9 = sub_20C135534();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v12);
  v14 = (&v43 - v13);
  v15 = type metadata accessor for NotificationConsentInterceptor.State(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor_state;
  swift_beginAccess();
  sub_20BB54F64(a3 + v21, v20, type metadata accessor for NotificationConsentInterceptor.State);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80, &qword_20C183A00);
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v20, 1, v22);
  sub_20BB54FCC(v20, type metadata accessor for NotificationConsentInterceptor.State);
  if (v24 == 1)
  {
    v25 = &v17[*(v22 + 48)];
    v26 = &v17[*(v22 + 64)];
    sub_20BB54F64(v43, v17, type metadata accessor for NavigationRequest);
    v27 = v46;
    *v25 = v52;
    v25[1] = v27;
    v28 = v51;
    *v26 = v50;
    v26[1] = v28;
    (*(v23 + 56))(v17, 0, 1, v22);
    swift_beginAccess();
    swift_unknownObjectRetain();

    sub_20BB552B0(v17, a3 + v21);
    swift_endAccess();
    (*(v44 + 104))(v11, *MEMORY[0x277D51A28], v45);

    v30 = sub_20BFCBE74(v29, v11);

    v31 = swift_allocObject();
    swift_weakInit();
    v32 = &v30[OBJC_IVAR____TtC9SeymourUI33NotificationConsentViewController_continueButtonHandler];
    swift_beginAccess();
    v33 = *v32;
    v34 = v32[1];
    *v32 = sub_20BB5607C;
    v32[1] = v31;

    sub_20B583ECC(v33, v34);

    if (*(a3 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor_platform) == 1)
    {
      ObjectType = swift_getObjectType();
      v36 = v47;
      (*(v27 + 24))(v30, 1, ObjectType, v27);
      v37 = v49;
      v38 = sub_20C137CB4();
      v39 = swift_allocObject();
      *(v39 + 16) = 0;
      *(v39 + 24) = 0;
      v38(sub_20B5DF6DC, v39);

      return (*(v48 + 8))(v36, v37);
    }

    else
    {
      result = sub_20C13DE24();
      __break(1u);
    }
  }

  else
  {
    sub_20B5D9BA8();
    v41 = swift_allocError();
    *v42 = 9;
    *v14 = v41;
    swift_storeEnumTagMultiPayload();
    v50(v14);
    return sub_20B520158(v14, &unk_27C76D250, &unk_20C155D00);
  }

  return result;
}

double sub_20BB53004(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_20BB51F8C();
  }

  return result;
}

void sub_20BB5305C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = objc_opt_self();

  v8 = [v7 currentNotificationCenter];
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = sub_20B5D9B44;
  v9[4] = v6;
  v11[4] = sub_20BB56084;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_20B762A80;
  v11[3] = &block_descriptor_88;
  v10 = _Block_copy(v11);

  [v8 getNotificationSettingsWithCompletionHandler_];
  _Block_release(v10);
}

uint64_t sub_20BB531A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_20C13C4B4();
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20C13C4F4();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B5E2E18();
  v14 = sub_20C13D374();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;
  aBlock[4] = sub_20BB56090;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_20B7B548C;
  aBlock[3] = &block_descriptor_114_0;
  v16 = _Block_copy(aBlock);
  v17 = a1;

  sub_20C13C4D4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_20BB5609C(&qword_281103AB0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280, &qword_20C15A2D0);
  sub_20B682EA8();
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v13, v10, v16);
  _Block_release(v16);

  (*(v20 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v19);
}

void sub_20BB53480(void *a1, uint64_t a2, void (*a3)(void *, uint64_t))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &aBlock - v9;
  if ([a1 authorizationStatus])
  {
    (*(v7 + 16))(v10, a2 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor__fitnessPlusNotificationSettingsEnabled, v6);
    sub_20C13A344();
    (*(v7 + 8))(v10, v6);
    if (aBlock)
    {
      v11 = 39;
    }

    else
    {
      v11 = 7;
    }

    v12 = [objc_opt_self() currentNotificationCenter];
    v22 = sub_20BB53700;
    v23 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v19 = 1107296256;
    v20 = sub_20B906664;
    v21 = &block_descriptor_117;
    v13 = _Block_copy(&aBlock);
    [v12 requestAuthorizationWithOptions:v11 completionHandler:v13];
    _Block_release(v13);

    sub_20B5D9BA8();
    v14 = swift_allocError();
    *v15 = 9;
    a3(v14, 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80, &unk_20C1512F0);
    sub_20C13E1D4();
    v16 = aBlock;
    v17 = v19;
    a3(aBlock, v19);
    sub_20B583FB8(v16, v17);
  }
}

uint64_t sub_20BB53700(char a1, void *a2)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v8 = a2;
  v9 = sub_20C13BB74();
  v10 = sub_20C13D1F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 67109378;
    *(v11 + 4) = a1 & 1;
    *(v11 + 8) = 2112;
    if (a2)
    {
      v13 = a2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v11 + 10) = v14;
    *v12 = v15;
    _os_log_impl(&dword_20B517000, v9, v10, "Notification re-authorization completed (granted: %{BOOL}d, error: %@", v11, 0x12u);
    sub_20B520158(v12, &unk_27C762E30, &unk_20C150580);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t NotificationConsentInterceptor.deinit()
{
  sub_20BB54FCC(v0 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor_state, type metadata accessor for NotificationConsentInterceptor.State);

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor__notificationConsentShowingEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor__fitnessShouldSkipSplashScreen, v2);
  v3(v0 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor__fitnessPlusNotificationSettingsEnabled, v2);
  return v0;
}

uint64_t NotificationConsentInterceptor.__deallocating_deinit()
{
  sub_20BB54FCC(v0 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor_state, type metadata accessor for NotificationConsentInterceptor.State);

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor__notificationConsentShowingEnabled;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor__fitnessShouldSkipSplashScreen, v2);
  v3(v0 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor__fitnessPlusNotificationSettingsEnabled, v2);

  return swift_deallocClassInstance();
}

uint64_t NotificationConsentInterceptor.interceptRequest(_:display:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a3;
  v86 = a2;
  v106 = a4;
  v107 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v89 = *(v4 - 8);
  v90 = v4;
  MEMORY[0x28223BE20](v4);
  v88 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v5;
  MEMORY[0x28223BE20](v6);
  v98 = &v82 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v92 = *(v8 - 8);
  v93 = v8;
  MEMORY[0x28223BE20](v8);
  v84 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v99 = &v82 - v11;
  v83 = v12;
  MEMORY[0x28223BE20](v13);
  v91 = &v82 - v14;
  v15 = type metadata accessor for NavigationRequest(0);
  v104 = *(v15 - 8);
  v105 = v15;
  v16 = *(v104 + 8);
  MEMORY[0x28223BE20](v15);
  v96 = type metadata accessor for NavigationResource(0);
  MEMORY[0x28223BE20](v96);
  v97 = (&v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0, &unk_20C14F3E0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v82 - v20;
  v22 = sub_20C13BB84();
  v23 = *(v22 - 1);
  MEMORY[0x28223BE20](v22);
  v25 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v82 - v27;
  sub_20C13B534();
  v82 = "BURN_BAR_BEHIND_DESCRIPTION";
  sub_20C13BB64();
  v29 = *(v23 + 8);
  v101 = v23 + 8;
  v102 = v22;
  v100 = v29;
  v29(v28, v22);
  v30 = v103;
  v31 = sub_20C138104();
  if (v31 == sub_20C138104())
  {
    v94 = v16;
    v95 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    v32 = *(v19 + 16);
    v32(v21, v30 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor__notificationConsentShowingEnabled, v18);
    sub_20C13A344();
    v33 = *(v19 + 8);
    v33(v21, v18);
    if (v109 == 1 && (v32(v21, v30 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor__fitnessShouldSkipSplashScreen, v18), sub_20C13A344(), v33(v21, v18), (v108 & 1) == 0))
    {
      v43 = v107;
      v44 = v97;
      sub_20BB54F64(v107, v97, type metadata accessor for NavigationResource);
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        sub_20BB54FCC(v44, type metadata accessor for NavigationResource);
        v49 = v30;

        v50 = v98;
        sub_20C137C94();
        sub_20C13B534();
        sub_20C13BB64();
        (v100)(v28, v102);
        v102 = type metadata accessor for NavigationRequest;
        v51 = v95;
        sub_20BB54F64(v43, v95, type metadata accessor for NavigationRequest);
        v52 = (*(v104 + 80) + 24) & ~*(v104 + 80);
        v101 = *(v104 + 80);
        v53 = (v94 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
        v54 = swift_allocObject();
        *(v54 + 16) = v49;
        sub_20B75B150(v51, v54 + v52);
        v55 = (v54 + v53);
        v56 = v85;
        *v55 = v86;
        v55[1] = v56;

        swift_unknownObjectRetain();
        v57 = v99;
        sub_20C137C94();
        v59 = v92;
        v58 = v93;
        v60 = *(v92 + 16);
        v103 = v92 + 16;
        v104 = v60;
        v61 = v84;
        v60(v84, v57, v93);
        v100 = *(v59 + 80);
        v85 = ((v100 + 16) & ~v100) + v83;
        v62 = (v100 + 16) & ~v100;
        v96 = v62;
        v63 = swift_allocObject();
        v64 = *(v59 + 32);
        v86 = v59 + 32;
        v97 = v64;
        (v64)(v63 + v62, v61, v58);
        v66 = v88;
        v65 = v89;
        v67 = v50;
        v68 = v90;
        (*(v89 + 16))(v88, v67, v90);
        v69 = (*(v65 + 80) + 16) & ~*(v65 + 80);
        v70 = (v87 + v69 + 7) & 0xFFFFFFFFFFFFFFF8;
        v71 = swift_allocObject();
        (*(v65 + 32))(v71 + v69, v66, v68);
        v72 = (v71 + v70);
        *v72 = sub_20BB55160;
        v72[1] = v63;
        v73 = v91;
        sub_20C137C94();
        v74 = *(v59 + 8);
        v75 = v99;
        v74(v99, v58);
        (*(v65 + 8))(v98, v68);
        v76 = v95;
        sub_20BB54F64(v107, v95, v102);
        v77 = (v101 + 16) & ~v101;
        v78 = swift_allocObject();
        sub_20B75B150(v76, v78 + v77);
        v104(v75, v73, v58);
        v79 = (v85 + 7) & 0xFFFFFFFFFFFFFFF8;
        v80 = swift_allocObject();
        (v97)(v80 + v96, v75, v58);
        v81 = (v80 + v79);
        *v81 = sub_20BB55208;
        v81[1] = v78;
        sub_20C137C94();
        return (v74)(v73, v58);
      }

      v45 = sub_20C132C14();
      (*(*(v45 - 8) + 8))(v44, v45);
      v46 = v95;
      sub_20BB54F64(v43, v95, type metadata accessor for NavigationRequest);
      v47 = (*(v104 + 80) + 16) & ~*(v104 + 80);
      v48 = swift_allocObject();
      sub_20B75B150(v46, v48 + v47);
    }

    else
    {
      sub_20C13B534();
      v34 = sub_20C13BB74();
      v35 = sub_20C13D1F4();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_20B517000, v34, v35, "Notification consent showing has been disabled", v36, 2u);
        MEMORY[0x20F2F6A40](v36, -1, -1);
      }

      (v100)(v25, v102);
      v37 = v95;
      sub_20BB54F64(v107, v95, type metadata accessor for NavigationRequest);
      v38 = (*(v104 + 80) + 16) & ~*(v104 + 80);
      v39 = swift_allocObject();
      sub_20B75B150(v37, v39 + v38);
    }
  }

  else
  {
    sub_20BB54F64(v107, &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
    v40 = (*(v104 + 80) + 16) & ~*(v104 + 80);
    v41 = swift_allocObject();
    sub_20B75B150(&v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40);
  }

  return sub_20C137CA4();
}

uint64_t sub_20BB5469C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NavigationRequest(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_20BB54F64(a2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_20B75B150(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  return sub_20C137CA4();
}

uint64_t NotificationConsentInterceptor.cancel()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v48 - v6;
  MEMORY[0x28223BE20](v7);
  v56 = &v48 - v8;
  v9 = type metadata accessor for NotificationConsentInterceptor.State(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v54 = 0x800000020C1A92E0;
  sub_20C13BB64();
  (*(v16 + 8))(v18, v15);
  v19 = OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor_state;
  swift_beginAccess();
  sub_20BB54F64(v2 + v19, v14, type metadata accessor for NotificationConsentInterceptor.State);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80, &qword_20C183A00);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_20BB54FCC(v14, type metadata accessor for NotificationConsentInterceptor.State);
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    v23 = &v14[*(v20 + 48)];
    v25 = *v23;
    v24 = *(v23 + 1);
    v26 = &v14[*(v20 + 64)];
    v27 = *(v26 + 1);
    v51 = *v26;
    v53 = v27;
    sub_20BB54FCC(v14, type metadata accessor for NavigationRequest);
    (*(v21 + 56))(v11, 1, 1, v20);
    swift_beginAccess();
    sub_20BB552B0(v11, v2 + v19);
    swift_endAccess();
    v52 = v25;
    ObjectType = swift_getObjectType();
    v29 = v59;
    (*(v24 + 56))(0, ObjectType, v24);
    v30 = swift_allocObject();
    *(v30 + 16) = v51;
    *(v30 + 24) = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_20BB55314;
    *(v31 + 24) = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_20B5DF3B8;
    *(v32 + 24) = v31;
    v34 = v57;
    v33 = v58;
    v51 = *(v57 + 16);
    v35 = v55;
    v51(v55, v29, v58);
    v36 = *(v34 + 80);
    v50 = (v36 + 16) & ~v36;
    v37 = (v4 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = v37;
    v38 = swift_allocObject();
    v49 = *(v34 + 32);
    v49(v38 + ((v36 + 16) & ~v36), v35, v33);
    v39 = (v38 + v37);
    *v39 = sub_20B5DF3D4;
    v39[1] = v32;

    v40 = v56;
    sub_20C137C94();
    v57 = *(v34 + 8);
    v41 = v59;
    v42 = v33;
    (v57)(v59, v33);
    v43 = swift_allocObject();
    v43[2] = 0xD00000000000002ELL;
    v43[3] = v54;
    v43[4] = 171;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_20B5D9EA0;
    *(v44 + 24) = v43;
    v51(v41, v40, v33);
    v45 = v48;
    v46 = swift_allocObject();
    v49(v46 + v50, v41, v42);
    v47 = (v46 + v45);
    *v47 = sub_20B5D9EC0;
    v47[1] = v44;

    sub_20C137C94();

    swift_unknownObjectRelease();
    return (v57)(v40, v42);
  }
}

uint64_t sub_20BB54E34(void (*a1)(uint64_t *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250, &unk_20C155D00);
  MEMORY[0x28223BE20](v2);
  v4 = (&v8 - v3);
  sub_20B5D9BA8();
  v5 = swift_allocError();
  *v6 = 2;
  *v4 = v5;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_20B520158(v4, &unk_27C76D250, &unk_20C155D00);
}

uint64_t sub_20BB54F64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BB54FCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BB55034(void (*a1)(uint64_t *), uint64_t a2)
{
  v5 = *(type metadata accessor for NavigationRequest(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_20BB52A50(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_20BB550E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_20BB55160@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7641C0, &qword_20C161470);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t sub_20BB55208(uint64_t a1)
{
  v3 = *(type metadata accessor for NavigationRequest(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_20BB5469C(a1, v4);
}

uint64_t sub_20BB552B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationConsentInterceptor.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BB55344(uint64_t a1)
{
  result = sub_20BB5609C(&qword_27C76ABD0, type metadata accessor for NotificationConsentInterceptor, &protocol conformance descriptor for NotificationConsentInterceptor);
  *(a1 + 8) = result;
  return result;
}

void sub_20BB553C4(uint64_t a1)
{
  type metadata accessor for NotificationConsentInterceptor.State(319);
  if (v1 <= 0x3F)
  {
    sub_20B52432C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_20BB554F4()
{
  v1 = *(type metadata accessor for NavigationRequest(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_20BB52590(v2, v3, v4, v5);
}

uint64_t sub_20BB5555C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BB55624(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13A814();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v5 + 104);
  v9(v8, *MEMORY[0x277D4F028], v4, v6);
  LOBYTE(v13) = 1;
  sub_20C13A384();
  (v9)(v8, *MEMORY[0x277D4EFE0], v4);
  LOBYTE(v13) = 0;
  sub_20C13A384();
  (v9)(v8, *MEMORY[0x277D4F070], v4);
  LOBYTE(v13) = 1;
  sub_20C13A384();
  v10 = OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor_state;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80, &qword_20C183A00);
  (*(*(v11 - 8) + 56))(v2 + v10, 1, 1, v11);
  *(v2 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00, &unk_20C14FB50);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor_eventHub) = v13;
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI30NotificationConsentInterceptor_platform) = v13;
  return v2;
}

uint64_t objectdestroyTm_8()
{
  v1 = type metadata accessor for NavigationRequest(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  type metadata accessor for NavigationResource(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v9 = sub_20C132C14();
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      v7 = &unk_27C763FC0;
      v8 = &unk_20C155B00;
      goto LABEL_17;
    case 2u:
      v10 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v17 = sub_20C1387E4();
      (*(*(v17 - 8) + 8))(v0 + v3, v17);
      v7 = &qword_27C7710E0;
      v8 = &unk_20C15F290;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
      v8 = &unk_20C155B10;
LABEL_17:
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7, v8) + 48);
      v19 = sub_20C1388F4();
      (*(*(v19 - 8) + 8))(v5 + v18, v19);
      break;
    case 9u:
      v10 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v10 = sub_20C138204();
LABEL_11:
      (*(*(v10 - 8) + 8))(v0 + v3, v10);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v11 = sub_20C1344C4();
        (*(*(v11 - 8) + 8))(v0 + v3, v11);
        v12 = type metadata accessor for WorkoutSessionConfiguration(0);
        v13 = v12[5];
        v14 = sub_20C137254();
        (*(*(v14 - 8) + 8))(v5 + v13, v14);
        v15 = v12[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v16 = sub_20C137EA4();
          (*(*(v16 - 8) + 8))(v5 + v15, v16);
        }

        else
        {
        }

        v36 = v12[9];
        v37 = sub_20C13BA24();
        v38 = *(v37 - 8);
        if (!(*(v38 + 48))(v5 + v36, 1, v37))
        {
          (*(v38 + 8))(v5 + v36, v37);
        }

        v39 = v12[10];
        v40 = sub_20C134A44();
        v41 = *(v40 - 8);
        if (!(*(v41 + 48))(v5 + v39, 1, v40))
        {
          (*(v41 + 8))(v5 + v39, v40);
        }

        if (*(v5 + v12[11] + 8) >= 0xC)
        {
        }

        v42 = v12[12];
        v43 = sub_20C135C54();
        v44 = *(v43 - 8);
        if (!(*(v44 + 48))(v5 + v42, 1, v43))
        {
          (*(v44 + 8))(v5 + v42, v43);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v20 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0, "\b\b\t") + 80);
      v24 = sub_20C1344C4();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&v20[v23], 1, v24))
      {
        (*(v25 + 8))(&v20[v23], v24);
      }

      break;
    case 4:

      break;
    case 3:
      v22 = sub_20C139144();
      (*(*(v22 - 8) + 8))(v20, v22);
      break;
  }

  v26 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource(0);
  v27 = swift_getEnumCaseMultiPayload();
  if (v27 == 1)
  {
    v35 = sub_20C135024();
    (*(*(v35 - 8) + 8))(v26, v35);
  }

  else if (!v27)
  {
    v46 = v2;
    v28 = (v2 + 16) & ~v2;
    v29 = v0;
    v30 = v4;
    v31 = sub_20C132C14();
    v32 = *(v31 - 8);
    v33 = *(v32 + 8);
    v33(v26, v31);
    v34 = *(type metadata accessor for NavigationSharingURLInfo(0) + 20);
    if (!(*(v32 + 48))(&v26[v34], 1, v31))
    {
      v33(&v26[v34], v31);
    }

    v4 = v30;
    v0 = v29;
    v3 = v28;
    v2 = v46;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_20BB5609C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BB560F8(unsigned __int8 a1)
{
  type metadata accessor for SeymourLocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_20C132964();

  return v3;
}

unint64_t sub_20BB56238()
{
  result = qword_27C76ABF8;
  if (!qword_27C76ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76ABF8);
  }

  return result;
}

void sub_20BB56338(uint64_t a1)
{
  v28.receiver = v1;
  v28.super_class = type metadata accessor for MiniPlayerViewController();
  objc_msgSendSuper2(&v28, sel_viewDidLoad);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI24MiniPlayerViewController_miniPlayerView];
  [v2 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_20C14FE90;
  v6 = [v4 leadingAnchor];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7;
  v9 = [v7 leadingAnchor];

  v10 = [v6 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [v4 trailingAnchor];
  v12 = [v1 view];
  if (!v12)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v12;
  v14 = [v12 trailingAnchor];

  v15 = [v11 constraintEqualToAnchor_];
  *(v5 + 40) = v15;
  v16 = [v4 topAnchor];
  v17 = [v1 view];
  if (!v17)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v5 + 48) = v20;
  v21 = [v4 bottomAnchor];
  v22 = [v1 view];
  if (v22)
  {
    v23 = v22;
    v24 = objc_opt_self();
    v25 = [v23 bottomAnchor];

    v26 = [v21 constraintEqualToAnchor_];
    *(v5 + 56) = v26;
    sub_20B5E29D0();
    v27 = sub_20C13CC54();

    [v24 activateConstraints_];

    return;
  }

LABEL_11:
  __break(1u);
}

id sub_20BB566B8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MiniPlayerViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_20BB5677C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI24MiniPlayerViewController_contentOverlayView);
  v2 = v1;
  return v1;
}

double sub_20BB567AC(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

void *sub_20BB567F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI24MiniPlayerViewController_settingsPopoverSourceView);
  v2 = v1;
  return v1;
}

id sub_20BB56824(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC9SeymourUI24MiniPlayerViewController_contentOverlayView] = 0;
  v1[OBJC_IVAR____TtC9SeymourUI24MiniPlayerViewController_isPictureInPictureActive] = 0;
  *&v1[OBJC_IVAR____TtC9SeymourUI24MiniPlayerViewController_settingsPopoverSourceView] = 0;
  v4 = a1[30];
  v5 = a1[31];
  objc_allocWithZone(type metadata accessor for MiniPlayerView());
  v6 = swift_unknownObjectRetain();
  v7 = sub_20BF47F1C(v6, v5);
  swift_unknownObjectRelease();
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[OBJC_IVAR____TtC9SeymourUI24MiniPlayerViewController_miniPlayerView] = v7;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for MiniPlayerViewController();
  v8 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
  a1[3] = &off_2822CED38;
  swift_unknownObjectWeakAssign();
  if ((*(v4 + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) & 1) == 0)
  {
    v9 = v8;
    sub_20BF73830();
    sub_20BF74170();
  }

  return v8;
}

uint64_t type metadata accessor for ShelfCellItemInfo(uint64_t a1)
{
  result = qword_281103380;
  if (!qword_281103380)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BB569C8(uint64_t a1)
{
  sub_20BB56A74();
  if (v1 <= 0x3F)
  {
    sub_20BB56AD4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_20BB56A74()
{
  result = qword_2811005D0;
  if (!qword_2811005D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2811005D0);
  }

  return result;
}

void sub_20BB56AD4(uint64_t a1)
{
  if (!qword_281103AA8)
  {
    sub_20C13C634();
    v1 = sub_20C13D914();
    if (!v2)
    {
      atomic_store(v1, &qword_281103AA8);
    }
  }
}

uint64_t sub_20BB56B30(void *a1, void *a2)
{
  v4 = sub_20C132EE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  if (*a1 == *a2 && (sub_20B969AA8(a1[1], a2[1]), (v11 & 1) != 0))
  {
    v12 = a1[4];
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(ObjectType, v12);
    v14 = a2[4];
    v15 = swift_getObjectType();
    (*(v14 + 8))(v15, v14);
    v16 = sub_20C132EC4();
    v17 = *(v5 + 8);
    v17(v7, v4);
    v17(v10, v4);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_20BB56CC4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C1332F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v29 = v7;
    v34 = MEMORY[0x277D84F90];
    sub_20C13DD64();
    v32 = a1 + 56;
    v9 = sub_20C13DAA4();
    v10 = 0;
    v33 = *(a1 + 36);
    v27 = v5 + 16;
    v28 = (v5 + 8);
    v25 = a1 + 64;
    v26 = v8;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      v13 = v9 >> 6;
      if ((*(v32 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (v33 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v31 = v10;
      v14 = v29;
      (*(v5 + 16))(v29, *(a1 + 48) + *(v5 + 72) * v9, v4);
      sub_20C1332E4();
      if (v2)
      {
        (*v28)(v14, v4);

        return;
      }

      v30 = 0;
      v15 = v4;
      (*v28)(v14, v4);
      sub_20C13DD34();
      sub_20C13DD74();
      sub_20C13DD84();
      sub_20C13DD44();
      v11 = 1 << *(a1 + 32);
      if (v9 >= v11)
      {
        goto LABEL_25;
      }

      v16 = *(v32 + 8 * v13);
      if ((v16 & (1 << v9)) == 0)
      {
        goto LABEL_26;
      }

      if (v33 != *(a1 + 36))
      {
        goto LABEL_27;
      }

      v17 = v16 & (-2 << (v9 & 0x3F));
      if (v17)
      {
        v11 = __clz(__rbit64(v17)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v26;
      }

      else
      {
        v18 = a1;
        v19 = v13 << 6;
        v20 = v13 + 1;
        v21 = (v25 + 8 * v13);
        v12 = v26;
        while (v20 < (v11 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_20B526EA4(v9, v33, 0);
            v11 = __clz(__rbit64(v22)) + v19;
            goto LABEL_19;
          }
        }

        sub_20B526EA4(v9, v33, 0);
LABEL_19:
        a1 = v18;
      }

      v10 = v31 + 1;
      v9 = v11;
      v4 = v15;
      v2 = v30;
      if (v31 + 1 == v12)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_20BB57004(uint64_t a1)
{
  v35 = sub_20C133314();
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_20C13DB34();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v36 = v4;
  v43 = MEMORY[0x277D84F90];
  sub_20BB5E740(0, v5 & ~(v5 >> 63), 0);
  v6 = v43;
  if (v38)
  {
    result = sub_20C13DAD4();
  }

  else
  {
    result = sub_20C13DAA4();
    v8 = *(a1 + 36);
  }

  v40 = result;
  v41 = v8;
  v42 = v38 != 0;
  v9 = v36;
  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    v33 = v5;
    v34 = v37 + 32;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v11 = a1;
    }

    v31 = a1 + 56;
    v32 = v11;
    v29[1] = v1;
    v30 = a1 + 64;
    while (v10 < v5)
    {
      if (__OFADD__(v10++, 1))
      {
        goto LABEL_38;
      }

      v14 = v40;
      v15 = v41;
      v16 = v42;
      sub_20BB61618(v40, v41, v42, a1, &qword_27C764020, 0x277CE8CC0);
      sub_20C133304();
      v43 = v6;
      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_20BB5E740((v17 > 1), v18 + 1, 1);
        v9 = v36;
        v6 = v43;
      }

      *(v6 + 16) = v18 + 1;
      result = (*(v37 + 32))(v6 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v18, v9, v35);
      if (v38)
      {
        if (!v16)
        {
          goto LABEL_43;
        }

        if (sub_20C13DAF4())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v5 = v33;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC80, &qword_20C16EEC0);
        v12 = sub_20C13CFE4();
        sub_20C13DB94();
        result = v12(v39, 0);
      }

      else
      {
        if (v16)
        {
          goto LABEL_44;
        }

        if ((v14 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        v19 = 1 << *(a1 + 32);
        if (v14 >= v19)
        {
          goto LABEL_39;
        }

        v20 = v14 >> 6;
        v21 = *(v31 + 8 * (v14 >> 6));
        if (((v21 >> v14) & 1) == 0)
        {
          goto LABEL_40;
        }

        if (*(a1 + 36) != v15)
        {
          goto LABEL_41;
        }

        v22 = v21 & (-2 << (v14 & 0x3F));
        if (v22)
        {
          v19 = __clz(__rbit64(v22)) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v23 = v20 << 6;
          v24 = v20 + 1;
          v25 = (v30 + 8 * v20);
          while (v24 < (v19 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              result = sub_20B526EA4(v14, v15, 0);
              v19 = __clz(__rbit64(v26)) + v23;
              goto LABEL_34;
            }
          }

          result = sub_20B526EA4(v14, v15, 0);
        }

LABEL_34:
        v28 = *(a1 + 36);
        v40 = v19;
        v41 = v28;
        v42 = 0;
        v5 = v33;
      }

      v9 = v36;
      if (v10 == v5)
      {
        sub_20B526EA4(v40, v41, v42);
        return v6;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_20BB57420@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_20C13BA64();
  v104 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v103 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C136104();
  v111 = *(v8 - 8);
  v112 = v8;
  MEMORY[0x28223BE20](v8);
  v101 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v110 = &v95 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  MEMORY[0x28223BE20](v12 - 8);
  v105 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v106 = &v95 - v15;
  v16 = sub_20C137094();
  v114 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v102 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v116 = &v95 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v95 - v21;
  v23 = sub_20C136C64();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v115 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v24[7](v22, 1, 1, v23);
    goto LABEL_7;
  }

  v100 = v16;
  sub_20B51CC64(Strong + 56, v121);

  v118 = v24;
  __swift_project_boxed_opaque_existential_1(v121, v122);
  sub_20C13B174();
  v27 = v118;
  __swift_destroy_boxed_opaque_existential_1(v121);
  if ((v27[6])(v22, 1, v23) == 1)
  {
LABEL_7:
    sub_20B520158(v22, &qword_27C768690, &unk_20C14FD90);
    v35 = sub_20C1356F4();
    sub_20BB621EC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51B88], v35);
    return swift_willThrow();
  }

  v96 = v6;
  v97 = a3;
  v28 = v115;
  (v27[4])(v115, v22, v23);
  v29 = v116;
  v30 = v27;
  sub_20C1369C4();
  swift_beginAccess();
  v31 = swift_weakLoadStrong();
  if (!v31)
  {
    v37 = sub_20C1356F4();
    sub_20BB621EC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51BC0], v37);
    swift_willThrow();
    (*(v114 + 8))(v29, v100);
    return v30[1](v28, v23);
  }

  v32 = v31;
  v33 = sub_20BB582AC();
  v98 = v3;
  if (v3)
  {

    (*(v114 + 8))(v116, v100);
    return v118[1](v115, v23);
  }

  v39 = v33;

  v121[0] = MEMORY[0x277D84F90];
  v40 = *(a2 + 16);
  v41 = v39 & 0xFFFFFFFFFFFFFF8;
  v124 = v39 & 0xFFFFFFFFFFFFFF8;
  if (v39 < 0)
  {
    v41 = v39;
  }

  v113 = v23;
  if (!v40)
  {
    v99 = MEMORY[0x277D84F90];
    v32 = v118;
    goto LABEL_41;
  }

  v95 = v41;
  v42 = 0;
  v109 = (a2 + 32);
  v120 = v39 & 0xC000000000000001;
  v99 = MEMORY[0x277D84F90];
  v108 = v39 >> 62;
  v107 = v40;
  do
  {
    v43 = v42;
    while (1)
    {
      if (v43 >= v40)
      {
        goto LABEL_67;
      }

      if (__OFADD__(v43, 1))
      {
        goto LABEL_68;
      }

      v117 = (v43 + 1);
      v44 = &v109[16 * v43];
      v32 = *(v44 + 1);
      v119 = *v44;
      v45 = v108 ? sub_20C13DB34() : *(v124 + 16);

      if (v45)
      {
        break;
      }

LABEL_14:

      v32 = v118;
      v43 = v117;
      v40 = v107;
      v23 = v113;
      if (v117 == v107)
      {
        goto LABEL_41;
      }
    }

    v23 = 0;
    while (1)
    {
      if (v120)
      {
        v46 = MEMORY[0x20F2F5430](v23, v39);
      }

      else
      {
        if (v23 >= *(v124 + 16))
        {
          goto LABEL_65;
        }

        v46 = *(v39 + 8 * v23 + 32);
      }

      v47 = v46;
      v48 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v49 = [v46 uniqueName];
      if (!v49)
      {
        goto LABEL_21;
      }

      v50 = v49;
      v51 = v39;
      v52 = sub_20C13C954();
      v54 = v53;

      if (v52 == v119 && v54 == v32)
      {
        break;
      }

      v56 = sub_20C13DFF4();

      v39 = v51;
      if (v56)
      {
        goto LABEL_36;
      }

LABEL_21:

      ++v23;
      if (v48 == v45)
      {
        goto LABEL_14;
      }
    }

LABEL_36:

    MEMORY[0x20F2F43B0](v57);
    v23 = v113;
    if (*((v121[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v121[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    v99 = v121[0];
    v40 = v107;
    v42 = v117;
    v32 = v118;
    v39 = v51;
  }

  while (v117 != v107);
LABEL_41:

  if (v99 >> 62)
  {
    goto LABEL_69;
  }

  if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) > 0)
  {
    do
    {
      v58 = v106;
      sub_20C136A54();
      v59 = v105;
      sub_20BB61F94(v58, v105);
      v60 = sub_20C133954();
      v61 = *(v60 - 8);
      if ((*(v61 + 48))(v59, 1, v60) == 1)
      {
        sub_20B520158(v59, &unk_27C76A970, &qword_20C14FC10);
        v119 = 0;
      }

      else
      {
        v62 = sub_20C133814();
        (*(v61 + 8))(v59, v60);
        v119 = *(v62 + 16);
      }

      v63 = sub_20C136BC4();
      v64 = v63;
      v65 = v63 + 64;
      v66 = 1 << *(v63 + 32);
      v67 = -1;
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      v68 = v67 & *(v63 + 64);
      v69 = (v66 + 63) >> 6;
      v124 = v111 + 16;
      v70 = (v111 + 8);
      v117 = (v111 + 32);

      v71 = 0;
      v120 = MEMORY[0x277D84F90];
      v32 = v116;
      while (1)
      {
        v72 = v71;
        if (!v68)
        {
          break;
        }

        while (1)
        {
          v71 = v72;
          v23 = v112;
          v73 = v110;
LABEL_55:
          v74 = __clz(__rbit64(v68));
          v68 &= v68 - 1;
          v75 = *(v111 + 72);
          v76 = v73;
          (*(v111 + 16))(v73, *(v64 + 56) + v75 * (v74 | (v71 << 6)), v23);
          if (sub_20C1360F4())
          {
            break;
          }

          (*v70)(v76, v23);
          v72 = v71;
          v32 = v116;
          if (!v68)
          {
            goto LABEL_51;
          }
        }

        v109 = *v117;
        (v109)(v101, v76, v23);
        v77 = v120;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121[0] = v77;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_20BB5DD18(0, *(v77 + 16) + 1, 1);
          v77 = v121[0];
        }

        v32 = v116;
        v80 = *(v77 + 16);
        v79 = *(v77 + 24);
        v81 = v80 + 1;
        if (v80 >= v79 >> 1)
        {
          v83 = v80 + 1;
          v120 = v80;
          sub_20BB5DD18((v79 > 1), v80 + 1, 1);
          v81 = v83;
          v80 = v120;
          v32 = v116;
          v77 = v121[0];
        }

        *(v77 + 16) = v81;
        v82 = *(v111 + 80);
        v120 = v77;
        (v109)(v77 + ((v82 + 32) & ~v82) + v80 * v75, v101);
      }

LABEL_51:
      v23 = v112;
      v73 = v110;
      while (1)
      {
        v71 = v72 + 1;
        if (__OFADD__(v72, 1))
        {
          break;
        }

        if (v71 >= v69)
        {

          v84 = v114;
          v85 = v100;
          (*(v114 + 16))(v102, v32, v100);
          v86 = objc_allocWithZone(sub_20C13B274());
          v87 = v32;
          v88 = sub_20C13B264();
          v122 = sub_20C13B094();
          v123 = MEMORY[0x277D4F508];
          __swift_allocate_boxed_opaque_existential_1(v121);
          v89 = v88;
          sub_20C13AF34();
          v90 = v103;
          sub_20C13BA54();
          v91 = sub_20C13BA44();

          v92 = sub_20B717F18(v91);

          (*(v104 + 8))(v90, v96);
          sub_20B520158(v106, &unk_27C76A970, &qword_20C14FC10);
          (*(v84 + 8))(v87, v85);
          result = v118[1](v115, v113);
          *v97 = v92;
          return result;
        }

        v68 = *(v65 + 8 * v71);
        ++v72;
        if (v68)
        {
          goto LABEL_55;
        }
      }

LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      ;
    }

    while (sub_20C13DB34() > 0);
  }

  v93 = sub_20C1356F4();
  sub_20BB621EC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
  swift_allocError();
  (*(*(v93 - 8) + 104))(v94, *MEMORY[0x277D51BD8], v93);
  swift_willThrow();
  (*(v114 + 8))(v116, v100);
  return v32[1](v115, v23);
}

uint64_t sub_20BB582AC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_20C136C64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_20C13B174();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20B520158(v4, &qword_27C768690, &unk_20C14FD90);
    v9 = sub_20C1356F4();
    sub_20BB621EC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D51B88], v9);
    swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v9 = v8;
    v11 = sub_20C136B04();
    sub_20BB56CC4(v11);
    if (!v1)
    {
      v9 = v12;
    }

    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

uint64_t sub_20BB58540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764000, &qword_20C16EE50);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB58610, 0, 0);
}

uint64_t sub_20BB58610()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 88);
    v2 = *(v0 + 64);
    v3 = swift_allocObject();
    swift_weakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v2;

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC38, &qword_20C16EE58);
    sub_20C137CA4();

    v6 = swift_task_alloc();
    *(v0 + 96) = v6;
    *(v6 + 16) = "SeymourUI/RemoteBrowsingAchievementClient.swift";
    *(v6 + 24) = 47;
    *(v6 + 32) = 2;
    *(v6 + 40) = 67;
    *(v6 + 48) = v1;
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *v7 = v0;
    v7[1] = sub_20BB58834;

    return MEMORY[0x2822008A0](v0 + 40, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20BB62448, v6, v5);
  }

  else
  {
    **(v0 + 48) = MEMORY[0x277D84FA0];

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_20BB58834()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {

    v3 = sub_20BB58A4C;
  }

  else
  {
    v5 = v2[10];
    v4 = v2[11];
    v6 = v2[9];
    v2[15] = v2[5];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BB589AC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BB589AC()
{
  v1 = sub_20BB57004(*(v0 + 120));

  v2 = sub_20B7180A4(v1);

  **(v0 + 48) = v2;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20BB58A4C()
{
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  **(v0 + 48) = MEMORY[0x277D84FA0];

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20BB58AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764000, &qword_20C16EE50);
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC60, &qword_20C16EEA0);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76EAC0, &qword_20C17C1A0);
  v4[22] = swift_task_alloc();
  v7 = sub_20C137094();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20BB58CA4, 0, 0);
}

uint64_t sub_20BB58CA4()
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    v1 = sub_20C134B24();
    sub_20BB621EC(&qword_27C76AC70, MEMORY[0x277D50D38], MEMORY[0x277D50D40]);
    swift_allocError();
    v3 = v2;
    v4 = MEMORY[0x277D50CF0];
    goto LABEL_4;
  }

  v0[26] = sub_20BB582AC();
  v8 = v0[14];
  v7 = v0[15];

  sub_20C13ABB4();
  v9 = sub_20C13AB94();
  if (v9 == v8 && v10 == v7)
  {

LABEL_11:
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v12 = v0[21];
      swift_allocObject();
      swift_weakInit();
      sub_20C137CA4();

      v13 = swift_task_alloc();
      v0[27] = v13;
      *(v13 + 16) = "SeymourUI/RemoteBrowsingAchievementClient.swift";
      *(v13 + 24) = 47;
      *(v13 + 32) = 2;
      *(v13 + 40) = 107;
      *(v13 + 48) = v12;
      v14 = swift_task_alloc();
      v0[28] = v14;
      *v14 = v0;
      v14[1] = sub_20BB592B8;
      v15 = v0[22];
      v16 = v0[23];
      v17 = sub_20BB62234;
      v18 = v13;
LABEL_16:

      return MEMORY[0x2822008A0](v15, 0, 0, 0xD000000000000013, 0x800000020C192D10, v17, v18, v16);
    }

    v19 = v0[23];
    v20 = v0[24];
    v21 = v0[22];

    (*(v20 + 56))(v21, 1, 1, v19);
    sub_20B520158(v21, &unk_27C76EAC0, &qword_20C17C1A0);
    v1 = sub_20C134B24();
    sub_20BB621EC(&qword_27C76AC70, MEMORY[0x277D50D38], MEMORY[0x277D50D40]);
    swift_allocError();
    v3 = v22;
    v4 = MEMORY[0x277D50D28];
    goto LABEL_4;
  }

  v11 = sub_20C13DFF4();

  if (v11)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v23 = v0[18];
    v25 = v0[14];
    v24 = v0[15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0, &qword_20C14FCC0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_20C14F980;
    *(v26 + 32) = v25;
    *(v26 + 40) = v24;
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    *(v28 + 24) = v26;

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC38, &qword_20C16EE58);
    sub_20C137CA4();

    v30 = swift_task_alloc();
    v0[30] = v30;
    *(v30 + 16) = "SeymourUI/RemoteBrowsingAchievementClient.swift";
    *(v30 + 24) = 47;
    *(v30 + 32) = 2;
    *(v30 + 40) = 115;
    *(v30 + 48) = v23;
    v31 = swift_task_alloc();
    v0[31] = v31;
    *v31 = v0;
    v31[1] = sub_20BB5969C;
    v17 = sub_20BB621D4;
    v15 = v0 + 11;
    v18 = v30;
    v16 = v29;
    goto LABEL_16;
  }

  v1 = sub_20C134B24();
  sub_20BB621EC(&qword_27C76AC70, MEMORY[0x277D50D38], MEMORY[0x277D50D40]);
  swift_allocError();
  v3 = v32;
  v4 = MEMORY[0x277D50D08];
LABEL_4:
  (*(*(v1 - 8) + 104))(v3, *v4, v1);
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_20BB592B8()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {

    v3 = sub_20BB595F8;
  }

  else
  {
    v5 = v2[20];
    v4 = v2[21];
    v6 = v2[19];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BB59428;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BB59428()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[22];
  (*(v5 + 56))(v6, 0, 1, v4);
  (*(v5 + 32))(v3, v6, v4);
  sub_20B51C88C(0, &qword_27C76AC68, 0x277CE8CB0);
  sub_20B718244(v2);

  v7 = sub_20C13D224();
  (*(v0[24] + 8))(v0[25], v0[23]);
  if (v1)
  {
  }

  else
  {
    v9 = v0[12];

    v10 = v7;
    sub_20C13D214();
    ACHApplyBadgePropertiesToAchievement();
    v11 = ACHCodableFromAchievement();

    *v9 = v11;
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_20BB595F8()
{
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20BB5969C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {

    v3 = sub_20BB599A4;
  }

  else
  {
    v5 = v2[17];
    v4 = v2[18];
    v6 = v2[16];
    v2[33] = v2[11];

    (*(v5 + 8))(v4, v6);
    v3 = sub_20BB59814;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20BB59814()
{
  v1 = v0[32];
  v2 = v0[26];
  sub_20B51C88C(0, &qword_27C76AC68, 0x277CE8CB0);
  sub_20B718244(v2);

  v3 = sub_20C13D204();
  if (v1)
  {
  }

  else
  {
    v5 = v3;

    v6 = v0[12];

    v7 = v5;
    sub_20C13D214();
    ACHApplyBadgePropertiesToAchievement();
    v8 = ACHCodableFromAchievement();

    *v6 = v8;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_20BB599A4()
{
  (*(v0[17] + 8))(v0[18], v0[16]);

  v1 = v0[1];

  return v1();
}

id sub_20BB59A48(id *a1)
{
  result = [*a1 data];
  if (result)
  {
    v2 = result;
    sub_20C132C54();

    return sub_20C1332A4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_20BB59AC4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2;
  v4 = sub_20C136C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + 56, v12);

    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_20C13B174();
    __swift_destroy_boxed_opaque_existential_1(v12);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_20C1369C4();
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  sub_20B520158(v3, &qword_27C768690, &unk_20C14FD90);
  v10 = sub_20C1356F4();
  sub_20BB621EC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
  swift_allocError();
  (*(*(v10 - 8) + 104))(v11, *MEMORY[0x277D51B88], v10);
  return swift_willThrow();
}

uint64_t sub_20BB59D80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764000, &qword_20C16EE50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC38, &qword_20C16EE58);
  sub_20C137CA4();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_20BB61ED4;
  *(v13 + 24) = v12;
  (*(v4 + 16))(v6, v9, v3);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = (v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + v14, v6, v3);
  v17 = (v16 + v15);
  *v17 = sub_20BB61EF0;
  v17[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC40, &qword_20C16EE60);
  sub_20C137C94();
  return (*(v4 + 8))(v9, v3);
}

void sub_20BB5A01C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;

  sub_20BB61BD4(v5, a2);
  v7 = v6;

  v8 = sub_20B7183D0(v7);

  *a3 = v8;
}

void *sub_20BB5A08C@<X0>(id *a1@<X0>, _OWORD *a3@<X8>)
{
  v59 = a3;
  v4 = sub_20C132E94();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC48, &unk_20C16EE68);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = &v47 - v9;
  v10 = sub_20C136134();
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x28223BE20](v10);
  v55 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C137094();
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x28223BE20](v12);
  v56 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v47 - v15;
  v17 = sub_20C136C64();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [*a1 templateUniqueName];
  v23 = sub_20C13C954();
  v25 = v24;

  sub_20C13ABB4();
  if (v23 == sub_20C13ABA4() && v25 == v26)
  {
  }

  else
  {
    v27 = sub_20C13DFF4();

    if ((v27 & 1) == 0)
    {
      result = sub_20C13D4A4();
      v38 = v61;
      v36 = v59;
      *v59 = v60;
      v36[1] = v38;
      v37 = v62;
      goto LABEL_13;
    }
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_10;
  }

  sub_20B51CC64(Strong + 56, &v60);

  __swift_project_boxed_opaque_existential_1(&v60, *(&v61 + 1));
  sub_20C13B174();
  __swift_destroy_boxed_opaque_existential_1(&v60);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_10:
    result = sub_20B520158(v16, &qword_27C768690, &unk_20C14FD90);
    v36 = v59;
    *v59 = 0u;
    v36[1] = 0u;
    v37 = -1;
    goto LABEL_13;
  }

  (*(v18 + 32))(v21, v16, v17);
  v29 = v56;
  sub_20C1369C4();
  v30 = v52;
  sub_20C137074();
  v32 = v57;
  v31 = v58;
  if ((*(v57 + 48))(v30, 1, v58) == 1)
  {
    sub_20B520158(v30, &qword_27C76AC48, &unk_20C16EE68);
    v33 = sub_20C137084();
    (*(v53 + 8))(v29, v54);
    result = (*(v18 + 8))(v21, v17);
    v35 = v59;
    *v59 = xmmword_20C157520;
    *(v35 + 2) = v33;
    *(v35 + 3) = 0;
    *(v35 + 32) = 1;
    return result;
  }

  (*(v32 + 32))(v55, v30, v31);
  v52 = sub_20C136124();
  v39 = v48;
  sub_20C132E64();
  v40 = v49;
  sub_20C132E24();
  v41 = v51;
  v42 = *(v50 + 8);
  v42(v39, v51);
  sub_20C136114();
  v43 = sub_20C132E34();
  v42(v39, v41);
  v50 = ~v43;
  v44 = v56;
  v45 = sub_20C137084();
  v42(v40, v41);
  (*(v57 + 8))(v55, v58);
  (*(v53 + 8))(v44, v54);
  result = (*(v18 + 8))(v21, v17);
  v46 = v50 & 1;
  v36 = v59;
  *v59 = v52;
  *(v36 + 1) = v46;
  *(v36 + 2) = v45;
  *(v36 + 3) = 0;
  v37 = 1;
LABEL_13:
  *(v36 + 32) = v37;
  return result;
}

void sub_20BB5A724(uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v55 = a3;
  v56 = a2;
  v6 = sub_20C137474();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v58 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC90, &qword_20C16EED0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v42 - v15;
  v17 = sub_20C136C64();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v52 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v18 + 56))(v16, 1, 1, v17);
    goto LABEL_16;
  }

  v53 = v6;
  sub_20B51CC64(Strong + 56, v57);

  __swift_project_boxed_opaque_existential_1(v57, v57[3]);
  sub_20C13B174();
  __swift_destroy_boxed_opaque_existential_1(v57);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
LABEL_16:
    sub_20B520158(v16, &qword_27C768690, &unk_20C14FD90);
    v37 = sub_20C1356F4();
    sub_20BB621EC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51B88], v37);
    swift_willThrow();
    return;
  }

  v45 = v13;
  v46 = a4;
  v47 = v4;
  v43 = v18;
  v21 = *(v18 + 32);
  v44 = v17;
  v21(v52, v16, v17);
  v22 = sub_20C136BE4();
  v23 = v22;
  v24 = v22 + 56;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v22 + 56);
  v28 = (v25 + 63) >> 6;
  v51 = v7 + 32;
  v48 = (v7 + 8);
  v49 = v7 + 16;

  v29 = 0;
  v30 = v53;
  v50 = v7;
  if (v27)
  {
    while (1)
    {
      v31 = v29;
LABEL_10:
      v32 = v23;
      v33 = v54;
      (*(v7 + 16))(v54, *(v23 + 48) + *(v7 + 72) * (__clz(__rbit64(v27)) | (v31 << 6)), v30);
      v34 = *(v7 + 32);
      v34(v58, v33, v30);
      if (sub_20C137464() == v56 && v35 == v55)
      {
        break;
      }

      v36 = sub_20C13DFF4();

      if (v36)
      {
        goto LABEL_19;
      }

      v27 &= v27 - 1;
      v30 = v53;
      (*v48)(v58, v53);
      v29 = v31;
      v7 = v50;
      v23 = v32;
      if (!v27)
      {
        goto LABEL_7;
      }
    }

LABEL_19:
    (*(v43 + 8))(v52, v44);

    v40 = v45;
    v30 = v53;
    v34(v45, v58, v53);
    v39 = 0;
    v7 = v50;
LABEL_20:
    (*(v7 + 56))(v40, v39, 1, v30);

    v41 = (*(v7 + 48))(v40, 1, v30) == 1;
    sub_20B520158(v40, &qword_27C76AC90, &qword_20C16EED0);
    *v46 = v41;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v31 >= v28)
      {
        (*(v43 + 8))(v52, v44);

        v39 = 1;
        v40 = v45;
        goto LABEL_20;
      }

      v27 = *(v24 + 8 * v31);
      ++v29;
      if (v27)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_20BB5AD3C(uint64_t *a2@<X8>)
{
  v4 = sub_20C137474();
  v71 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v69 = &v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC90, &qword_20C16EED0);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v55 - v10;
  v11 = sub_20C137094();
  v62 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v66 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690, &unk_20C14FD90);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v55 - v14;
  v16 = sub_20C136C64();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v67 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    goto LABEL_16;
  }

  v59 = a2;
  v68 = v6;
  sub_20B51CC64(Strong + 56, v70);

  __swift_project_boxed_opaque_existential_1(v70, v70[3]);
  sub_20C13B174();
  __swift_destroy_boxed_opaque_existential_1(v70);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
LABEL_16:
    sub_20B520158(v15, &qword_27C768690, &unk_20C14FD90);
    v42 = sub_20C1356F4();
    sub_20BB621EC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    swift_allocError();
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D51B88], v42);
    swift_willThrow();
    return;
  }

  v55 = v11;
  v56 = v2;
  v57 = v17;
  v58 = v16;
  (*(v17 + 32))(v67, v15, v16);
  sub_20C1369C4();
  v20 = sub_20C136BE4();
  v21 = v20;
  v22 = v20 + 56;
  v23 = 1 << *(v20 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v20 + 56);
  v26 = (v23 + 63) >> 6;
  v63 = v71 + 16;
  v65 = v71 + 32;
  v60 = (v71 + 8);

  v28 = 0;
  v29 = v68;
  v64 = v27;
  if (v25)
  {
    while (1)
    {
      v30 = v28;
LABEL_10:
      v31 = v71;
      v32 = *(v21 + 48) + *(v71 + 72) * (__clz(__rbit64(v25)) | (v30 << 6));
      v33 = v69;
      (*(v71 + 16))(v69, v32, v4);
      v34 = *(v31 + 32);
      v35 = v33;
      v36 = v4;
      v34(v29, v35, v4);
      v37 = sub_20C137464();
      v39 = v38;
      sub_20C13ABB4();
      if (v37 == sub_20C13AB94() && v39 == v40)
      {

        goto LABEL_20;
      }

      v41 = sub_20C13DFF4();

      if (v41)
      {
        break;
      }

      v25 &= v25 - 1;
      v29 = v68;
      v4 = v36;
      (*v60)(v68, v36);
      v28 = v30;
      v21 = v64;
      if (!v25)
      {
        goto LABEL_7;
      }
    }

LABEL_20:
    v4 = v36;
    v48 = v61;
    v34(v61, v68, v36);
    v44 = 0;
    v45 = v56;
    v46 = v55;
    v47 = v62;
LABEL_21:
    (*(v71 + 56))(v48, v44, 1, v4);

    v49 = v66;
    v50 = sub_20C137984();
    if (v45)
    {
      sub_20B520158(v48, &qword_27C76AC90, &qword_20C16EED0);
      (*(v47 + 8))(v49, v46);
      (*(v57 + 8))(v67, v58);
    }

    else
    {
      v52 = v50;
      v53 = v51;
      sub_20B520158(v48, &qword_27C76AC90, &qword_20C16EED0);
      (*(v47 + 8))(v49, v46);
      (*(v57 + 8))(v67, v58);
      v54 = v59;
      *v59 = v52;
      *(v54 + 8) = v53 & 1;
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v30 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v30 >= v26)
      {

        v44 = 1;
        v45 = v56;
        v46 = v55;
        v48 = v61;
        v47 = v62;
        goto LABEL_21;
      }

      v25 = *(v22 + 8 * v30);
      ++v28;
      if (v25)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_20BB5B474@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC28, &unk_20C16EE38);
  v84 = *(v3 - 8);
  v85 = v3;
  MEMORY[0x28223BE20](v3);
  v80 = &v72 - v4;
  v5 = sub_20C13B0C4();
  v81 = *(v5 - 8);
  v82 = v5;
  MEMORY[0x28223BE20](v5);
  v79 = (&v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00, &unk_20C1500B0);
  MEMORY[0x28223BE20](v7 - 8);
  v89 = &v72 - v8;
  v9 = sub_20C135174();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v78 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = &v72 - v13;
  v14 = sub_20C137474();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v72 - v19;
  v87 = sub_20C13BB84();
  v95 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v74 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  sub_20C13B434();
  v88 = v15;
  v25 = *(v15 + 16);
  v83 = a1;
  v26 = v25;
  v25(v20, a1, v14);
  v27 = sub_20C13BB74();
  v28 = sub_20C13D1F4();
  v29 = os_log_type_enabled(v27, v28);
  v91 = v10;
  v92 = v9;
  v76 = v17;
  v77 = v14;
  v75 = v15 + 16;
  v86 = v25;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v96 = v31;
    *v30 = 136315138;
    v26(v17, v20, v14);
    v32 = sub_20C13C9D4();
    v33 = v14;
    v34 = v32;
    v36 = v35;
    v37 = v88;
    v73 = *(v88 + 8);
    v73(v20, v33);
    v38 = sub_20B51E694(v34, v36, &v96);

    *(v30 + 4) = v38;
    _os_log_impl(&dword_20B517000, v27, v28, "Received request to journal AchievementNotificationRecord %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v39 = v31;
    v10 = v91;
    MEMORY[0x20F2F6A40](v39, -1, -1);
    v40 = v30;
    v9 = v92;
    MEMORY[0x20F2F6A40](v40, -1, -1);

    v41 = *(v95 + 8);
    v42 = v87;
    v41(v24, v87);
    v43 = v86;
  }

  else
  {

    v37 = v88;
    v73 = *(v88 + 8);
    v73(v20, v14);
    v41 = *(v95 + 8);
    v42 = v87;
    v41(v24, v87);
    v43 = v26;
  }

  __swift_project_boxed_opaque_existential_1(v94 + 7, v94[10]);
  v44 = v89;
  sub_20C13B184();
  if ((*(v10 + 48))(v44, 1, v9) == 1)
  {
    sub_20B520158(v44, &unk_27C76BC00, &unk_20C1500B0);
    v45 = v74;
    sub_20C13B434();
    v46 = sub_20C13BB74();
    v47 = sub_20C13D1F4();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = v42;
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_20B517000, v46, v47, "No active participant, failed to journal notification record", v49, 2u);
      v50 = v49;
      v42 = v48;
      MEMORY[0x20F2F6A40](v50, -1, -1);
    }

    v41(v45, v42);
    v51 = sub_20C1356F4();
    sub_20BB621EC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
    v52 = swift_allocError();
    (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D51B88], v51);
    *(swift_allocObject() + 16) = v52;
    return sub_20C137CA4();
  }

  else
  {
    (*(v10 + 32))(v90, v44, v9);
    v55 = v94;
    v56 = v94[10];
    v95 = v94[11];
    __swift_project_boxed_opaque_existential_1(v94 + 7, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC30, &qword_20C16EE48);
    v57 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_20C14F980;
    v59 = v83;
    v60 = v77;
    v43(v58 + v57, v83, v77);
    v61 = v55;
    v62 = sub_20B718474(v58);
    swift_setDeallocating();
    v73((v58 + v57), v60);
    swift_deallocClassInstance();
    v63 = v79;
    *v79 = v62;
    v64 = *MEMORY[0x277D4F6B8];
    v65 = sub_20C13B254();
    (*(*(v65 - 8) + 104))(v63, v64, v65);
    v67 = v81;
    v66 = v82;
    (*(v81 + 104))(v63, *MEMORY[0x277D4F518], v82);
    sub_20C13B2A4();
    (*(v67 + 8))(v63, v66);
    v68 = v90;
    v69 = v91;
    v70 = v92;
    (*(v91 + 16))(v78, v90, v92);
    v86(v76, v59, v60);
    v71 = v80;
    sub_20C137844();
    __swift_project_boxed_opaque_existential_1(v61 + 2, v61[5]);
    sub_20C139B44();
    (*(v84 + 8))(v71, v85);
    return (*(v69 + 8))(v68, v70);
  }
}

uint64_t sub_20BB5BE10(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = v4;
  v5[3] = a1;
  v5[4] = a2;

  return sub_20C137CA4();
}

uint64_t sub_20BB5BECC()
{
  swift_allocObject();
  swift_weakInit();

  return sub_20C137CA4();
}

uint64_t sub_20BB5BF50(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = "SeymourUI/RemoteBrowsingAchievementClient.swift";
  *(v4 + 24) = 47;
  *(v4 + 32) = 2;
  *(v4 + 40) = 66;
  *(v4 + 48) = &unk_20C16EEB0;
  *(v4 + 56) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC78, &qword_20C16EEB8);

  return sub_20C137C94();
}

uint64_t sub_20BB5C058(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764038, &qword_20C16EE80);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a1;
  v12[4] = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = "SeymourUI/RemoteBrowsingAchievementClient.swift";
  *(v13 + 24) = 47;
  *(v13 + 32) = 2;
  *(v13 + 40) = 100;
  *(v13 + 48) = &unk_20C16EE90;
  *(v13 + 56) = v12;
  sub_20B51C88C(0, &qword_27C76AC58, 0x277CE8CE0);

  sub_20C137C94();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20BB59A48;
  *(v14 + 24) = 0;
  (*(v5 + 16))(v7, v10, v4);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v15, v7, v4);
  v18 = (v17 + v16);
  *v18 = sub_20BB620D0;
  v18[1] = v14;
  sub_20C1332B4();
  sub_20C137C94();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_20BB5C340()
{
  v0 = sub_20C1356F4();
  sub_20BB621EC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D51B98], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_20C137CA4();
}

uint64_t sub_20BB5C44C()
{
  v0 = sub_20C1356F4();
  sub_20BB621EC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D51B98], v0);
  *(swift_allocObject() + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765218, &qword_20C15F3D0);

  return sub_20C137CA4();
}

uint64_t sub_20BB5C568()
{
  swift_allocObject();
  swift_weakInit();
  sub_20C137094();

  return sub_20C137CA4();
}

uint64_t sub_20BB5C5F0()
{
  v0 = sub_20C1356F4();
  sub_20BB621EC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D51B98], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_20C137CA4();
}

uint64_t sub_20BB5C720()
{
  v0 = sub_20C1356F4();
  sub_20BB621EC(&qword_27C769680, MEMORY[0x277D51BF0], MEMORY[0x277D51BF8]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D51B98], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_20C137CA4();
}

double sub_20BB5C854(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(v9, a5);
  v6 = v9[0];
  v7 = v9[1];
  v10 = 0;
  a1(v9);

  return sub_20B62E744(v6, v7, 0);
}

void sub_20BB5C8F0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = 0x100000000;
  if (!BYTE4(v8))
  {
    v6 = 0;
  }

  v7 = (v6 | v8);
  v8 = v7;
  v9 = 0;
  a1(&v8);

  sub_20B583FB8(v7, 0);
}

uint64_t sub_20BB5C9AC(void (*a1)(char *), uint64_t a2, void (*a3)(uint64_t *, double), uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v23 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v22 - v19;
  v24 = a5;
  a3(&v24, v18);
  swift_storeEnumTagMultiPayload();
  sub_20B5DF134(v13, v16, a6, a7);
  sub_20B5DF134(v16, v20, a6, a7);
  v23(v20);
  return sub_20B520158(v20, a6, a7);
}

uint64_t sub_20BB5CB44(uint64_t a1, uint64_t a2, void (*a3)(double), uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v20[0] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v20 - v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v20 - v17;
  a3(v16);
  swift_storeEnumTagMultiPayload();
  sub_20B5DF134(v11, v14, a5, a6);
  sub_20B5DF134(v14, v18, a5, a6);
  (v20[0])(v18);
  return sub_20B520158(v18, a5, a6);
}

uint64_t sub_20BB5CCE0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, double), uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v22[0] = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v22 - v15;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = v22 - v19;
  a3(a5, v18);
  swift_storeEnumTagMultiPayload();
  sub_20B5DF134(v13, v16, a6, a7);
  sub_20B5DF134(v16, v20, a6, a7);
  (v22[0])(v20);
  return sub_20B520158(v20, a6, a7);
}

double sub_20BB5CE60(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v8, a5);
  v6 = v8;
  v9 = 0;
  a1(&v8);
  return sub_20B71C190(v6, 0);
}

void sub_20BB5CEFC(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_20B71C588(v6);
}

void sub_20BB5CFA4(void (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v7 = v7;
  v8 = 0;
  a1(&v7);

  sub_20B583FB8(v6, 0);
}

uint64_t sub_20BB5D038(void (*a1)(char *), uint64_t a2, void (*a3)(uint64_t *, double), uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764040, &qword_20C155BF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v19 - v16;
  v20 = a5;
  a3(&v20, v15);
  swift_storeEnumTagMultiPayload();
  sub_20B5DF134(v10, v13, &qword_27C764040, &qword_20C155BF0);
  sub_20B5DF134(v13, v17, &qword_27C764040, &qword_20C155BF0);
  a1(v17);
  return sub_20B520158(v17, &qword_27C764040, &qword_20C155BF0);
}

double sub_20BB5D1D0(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(v9, a5);
  v6 = v9[0];
  v7 = v9[1];
  v10 = 0;
  a1(v9);

  return sub_20B71AC68(v6, v7, 0);
}

void sub_20BB5D26C(void (*a1)(void *), uint64_t a2, void (*a3)(void *__return_ptr, uint64_t *), uint64_t a4, uint64_t a5)
{
  v9 = a5;
  a3(v10, &v9);
  v11 = 0;
  a1(v10);
  v6 = v10[0];
  v7 = v10[1];
  v8 = v11;

  sub_20B719794(v6, v7, v8);
}

void sub_20BB5D300(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_20B583FB8(v6, 0);
}

char *sub_20BB5D394(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5F968(a1, a2, a3, *v3, &qword_27C76ACB0, &qword_20C16EF08, &type metadata for ShelfLayoutSection);
  *v3 = result;
  return result;
}

void *sub_20BB5D3CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5FC18(a1, a2, a3, *v3, &unk_27C766A00, &qword_20C1538C0, &unk_27C7675B0, &unk_20C15C100);
  *v3 = result;
  return result;
}

void *sub_20BB5D40C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76ACB8, &qword_20C16EF10, type metadata accessor for ShelfDiffableItemIdentifier);
  *v3 = result;
  return result;
}

char *sub_20BB5D450(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5EBEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20BB5D470(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AF98, &qword_20C16F2B0, type metadata accessor for WorkoutPlanArtworkV2.Day);
  *v3 = result;
  return result;
}

void *sub_20BB5D4B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60FE0(a1, a2, a3, *v3, &unk_27C769A70, &qword_20C169E10, &qword_27C770330, &qword_20C1875B0);
  *v3 = result;
  return result;
}

void *sub_20BB5D4F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AD88, &qword_20C16F008, MEMORY[0x277D50C70]);
  *v3 = result;
  return result;
}

void *sub_20BB5D538(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76ACF8, &qword_20C16EF50, MEMORY[0x277D51130]);
  *v3 = result;
  return result;
}

void *sub_20BB5D57C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76ACF0, &qword_20C16EF48, MEMORY[0x277D50618]);
  *v3 = result;
  return result;
}

void *sub_20BB5D5C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AD00, &qword_20C16EF58, MEMORY[0x277D52AF8]);
  *v3 = result;
  return result;
}

void *sub_20BB5D604(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &unk_27C762A20, &unk_20C15FD50, MEMORY[0x277D52AB0]);
  *v3 = result;
  return result;
}

void *sub_20BB5D648(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76ACD0, &qword_20C16EF28, MEMORY[0x277D53E10]);
  *v3 = result;
  return result;
}

void *sub_20BB5D68C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76ACD8, &qword_20C16EF30, MEMORY[0x277D53E88]);
  *v3 = result;
  return result;
}

void *sub_20BB5D6D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76ACE8, &qword_20C16EF40, MEMORY[0x277D4FE80]);
  *v3 = result;
  return result;
}

void *sub_20BB5D714(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76ACC8, &qword_20C16EF20, MEMORY[0x277D4FF18]);
  *v3 = result;
  return result;
}

void *sub_20BB5D758(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AEC8, &qword_20C16F1B8, MEMORY[0x277D4FFA8]);
  *v3 = result;
  return result;
}

void *sub_20BB5D79C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AED0, &unk_20C16F1C0, MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

void *sub_20BB5D7E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AEC0, &qword_20C16F1B0, type metadata accessor for DatePickerItem);
  *v3 = result;
  return result;
}

void *sub_20BB5D824(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76ACC0, &qword_20C16EF18, MEMORY[0x277D53128]);
  *v3 = result;
  return result;
}

void *sub_20BB5D868(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76ACE0, &qword_20C16EF38, MEMORY[0x277D50278]);
  *v3 = result;
  return result;
}

void *sub_20BB5D8AC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB602E8(a1, a2, a3, *v3, &qword_27C76AEB0, &unk_20C16F190, &qword_27C763188, &unk_20C1538A0);
  *v3 = result;
  return result;
}

char *sub_20BB5D8EC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5EE9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20BB5D90C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5F6BC(a1, a2, a3, *v3, &qword_27C76AD08, &qword_20C16EF60, &qword_27C76AD10, &qword_20C16EF68);
  *v3 = result;
  return result;
}

char *sub_20BB5D94C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB613CC(a1, a2, a3, *v3, &qword_27C76AE40, &qword_20C16F110);
  *v3 = result;
  return result;
}

char *sub_20BB5D97C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5EFA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20BB5D99C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB613CC(a1, a2, a3, *v3, &qword_27C76AED8, &qword_20C16F1D0);
  *v3 = result;
  return result;
}

char *sub_20BB5D9CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60090(a1, a2, a3, *v3, &qword_27C76AD60, &qword_20C16EFD8, &type metadata for StackedContainerNodeBuilder.StackedNodeBuilder);
  *v3 = result;
  return result;
}

char *sub_20BB5DA04(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5F0DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20BB5DA24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C7623B0, &unk_20C14FE40, type metadata accessor for ButtonAction);
  *v3 = result;
  return result;
}

void *sub_20BB5DA68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &unk_27C762240, &qword_20C156F40, type metadata accessor for PageAlertAction);
  *v3 = result;
  return result;
}

void *sub_20BB5DAAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76B010, &unk_20C16F340, MEMORY[0x277D520A0]);
  *v3 = result;
  return result;
}

char *sub_20BB5DAF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB6041C(a1, a2, a3, *v3, &qword_27C76AF30, &qword_20C16F240, &type metadata for LengthPickerItem);
  *v3 = result;
  return result;
}

void *sub_20BB5DB28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AD90, &unk_20C16F010, type metadata accessor for WorkoutPlanCatalogThemePickerOption);
  *v3 = result;
  return result;
}

char *sub_20BB5DB6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB613CC(a1, a2, a3, *v3, &qword_27C76ADD8, &qword_20C16F088);
  *v3 = result;
  return result;
}

void *sub_20BB5DB9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76ACA0, &unk_20C16EEE8, MEMORY[0x277D53428]);
  *v3 = result;
  return result;
}

char *sub_20BB5DBE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB613CC(a1, a2, a3, *v3, &qword_27C76AEA8, &qword_20C16F188);
  *v3 = result;
  return result;
}

void *sub_20BB5DC10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60FE0(a1, a2, a3, *v3, &qword_27C76ADD0, &qword_20C16F078, &qword_27C763A08, &qword_20C16F080);
  *v3 = result;
  return result;
}

void *sub_20BB5DC50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60FE0(a1, a2, a3, *v3, &qword_27C76AF20, &unk_20C16F228, &unk_27C76BAB0, &unk_20C150570);
  *v3 = result;
  return result;
}

void *sub_20BB5DC90(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AF28, &qword_20C16F238, MEMORY[0x277D53A78]);
  *v3 = result;
  return result;
}

void *sub_20BB5DCD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AC98, &unk_20C16EED8, MEMORY[0x277D53250]);
  *v3 = result;
  return result;
}

void *sub_20BB5DD18(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AC50, &qword_20C16EE78, MEMORY[0x277D52698]);
  *v3 = result;
  return result;
}

void *sub_20BB5DD5C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C769650, &unk_20C168BB0, MEMORY[0x277CC95F0]);
  *v3 = result;
  return result;
}

void *sub_20BB5DDA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76B000, &unk_20C16F328, MEMORY[0x277D53070]);
  *v3 = result;
  return result;
}

char *sub_20BB5DDE4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB613CC(a1, a2, a3, *v3, &qword_27C76AE88, &unk_20C16F160);
  *v3 = result;
  return result;
}

void *sub_20BB5DE14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5F588(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20BB5DE34(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5F6BC(a1, a2, a3, *v3, &qword_27C76AD68, &qword_20C16EFE0, &qword_27C76AD70, &qword_20C16EFE8);
  *v3 = result;
  return result;
}

char *sub_20BB5DE74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5F804(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20BB5DE94(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60888(a1, a2, a3, *v3, &qword_27C76AFF8, &qword_20C16F320, &qword_27C762F00, &unk_20C152DE0);
  *v3 = result;
  return result;
}

char *sub_20BB5DED4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5F484(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20BB5DEF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &unk_27C7654A0, &qword_20C158988, type metadata accessor for RemoteParticipantButton);
  *v3 = result;
  return result;
}

void *sub_20BB5DF38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5FC18(a1, a2, a3, *v3, &qword_27C76AD30, &qword_20C16EF90, &qword_27C76AD38, &qword_20C16EF98);
  *v3 = result;
  return result;
}

void *sub_20BB5DF78(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5FC18(a1, a2, a3, *v3, &qword_27C76AD98, &qword_20C16F020, &qword_27C76ADA0, &qword_20C16F028);
  *v3 = result;
  return result;
}

char *sub_20BB5DFB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5F968(a1, a2, a3, *v3, &qword_27C76AF00, &qword_20C16F200, &type metadata for WorkoutPlanScheduleFilterItem);
  *v3 = result;
  return result;
}

char *sub_20BB5DFF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB613CC(a1, a2, a3, *v3, &qword_27C76AF40, &unk_20C16F250);
  *v3 = result;
  return result;
}

void *sub_20BB5E020(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C761F88, &unk_20C16C120, MEMORY[0x277CE9CF0]);
  *v3 = result;
  return result;
}

void *sub_20BB5E064(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60FE0(a1, a2, a3, *v3, &qword_27C76AD40, &unk_20C16EFB0, &qword_27C765E38, &unk_20C15AEF0);
  *v3 = result;
  return result;
}

void *sub_20BB5E0A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AEF8, &unk_20C16F1F0, type metadata accessor for MetricImpressionElement);
  *v3 = result;
  return result;
}

char *sub_20BB5E0E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB613CC(a1, a2, a3, *v3, &qword_27C76AD48, &qword_20C16EFC0);
  *v3 = result;
  return result;
}

void *sub_20BB5E118(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5FC18(a1, a2, a3, *v3, &qword_27C76AD58, &qword_20C16EFC8, &qword_27C769B80, &qword_20C16EFD0);
  *v3 = result;
  return result;
}

void *sub_20BB5E158(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AD80, &qword_20C16F000, type metadata accessor for ShelfIndexedLazyLockup);
  *v3 = result;
  return result;
}

void *sub_20BB5E19C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76CDA0, &qword_20C162E60, MEMORY[0x277D51638]);
  *v3 = result;
  return result;
}

void *sub_20BB5E1E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB602E8(a1, a2, a3, *v3, &qword_27C76AF60, &unk_20C16F280, &qword_27C7679F0, ":P\t");
  *v3 = result;
  return result;
}

void *sub_20BB5E220(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AF48, &qword_20C16F268, MEMORY[0x277CC9AF8]);
  *v3 = result;
  return result;
}

char *sub_20BB5E264(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB613CC(a1, a2, a3, *v3, &qword_27C76AF58, &unk_20C177AA0);
  *v3 = result;
  return result;
}

void *sub_20BB5E294(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60FE0(a1, a2, a3, *v3, &qword_27C767A00, "<P\t", &qword_27C763A18, &qword_20C16F260);
  *v3 = result;
  return result;
}

char *sub_20BB5E2D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5FD74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20BB5E2F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5FE68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20BB5E314(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB602E8(a1, a2, a3, *v3, &qword_27C76AEE0, &qword_20C16F1D8, &qword_27C76AEE8, &qword_20C16F1E0);
  *v3 = result;
  return result;
}

void *sub_20BB5E354(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AE48, &qword_20C16F118, MEMORY[0x277D53A28]);
  *v3 = result;
  return result;
}

char *sub_20BB5E398(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB5FF90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20BB5E3B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C767C60, &qword_20C162F40, MEMORY[0x277D50868]);
  *v3 = result;
  return result;
}

void *sub_20BB5E3FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AE60, &qword_20C16F130, MEMORY[0x277D515D0]);
  *v3 = result;
  return result;
}

char *sub_20BB5E440(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60090(a1, a2, a3, *v3, &qword_27C76AE68, &qword_20C16F138, &type metadata for SessionRoute);
  *v3 = result;
  return result;
}

char *sub_20BB5E478(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB6041C(a1, a2, a3, *v3, &qword_27C76AE80, &unk_20C16F150, &type metadata for QueueMenuElement);
  *v3 = result;
  return result;
}

void *sub_20BB5E4B0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AD18, &qword_20C16EF70, MEMORY[0x277D502D0]);
  *v3 = result;
  return result;
}

void *sub_20BB5E4F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76ADB8, &qword_20C16F040, MEMORY[0x277D510B8]);
  *v3 = result;
  return result;
}

void *sub_20BB5E538(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AE70, &qword_20C16F140, type metadata accessor for ShelfDiffableItemIdentifierX);
  *v3 = result;
  return result;
}

void *sub_20BB5E57C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AE78, &qword_20C16F148, type metadata accessor for ShelfItemX);
  *v3 = result;
  return result;
}

char *sub_20BB5E5C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB601B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20BB5E5E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C7623B8, &unk_20C179880, MEMORY[0x277D53BA0]);
  *v3 = result;
  return result;
}

void *sub_20BB5E624(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C7690A8, &qword_20C1685A0, type metadata accessor for MetadataEntry);
  *v3 = result;
  return result;
}

void *sub_20BB5E668(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB602E8(a1, a2, a3, *v3, &unk_27C768260, &unk_20C1569E0, &qword_27C7677E0, &unk_20C15AA30);
  *v3 = result;
  return result;
}

char *sub_20BB5E6A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB6041C(a1, a2, a3, *v3, &qword_27C76AEA0, &qword_20C16F180, &type metadata for SortMenuElement);
  *v3 = result;
  return result;
}

void *sub_20BB5E6E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20BB5E700(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60670(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20BB5E720(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB6077C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20BB5E740(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AC88, &qword_20C16EEC8, MEMORY[0x277D4FC78]);
  *v3 = result;
  return result;
}

void *sub_20BB5E784(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60FE0(a1, a2, a3, *v3, &qword_27C76AD78, &unk_20C16EFF0, &qword_27C763928, &unk_20C179FE0);
  *v3 = result;
  return result;
}

void *sub_20BB5E7C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AE58, &qword_20C16F128, type metadata accessor for HostedContentIdentifier);
  *v3 = result;
  return result;
}

void *sub_20BB5E808(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60888(a1, a2, a3, *v3, &qword_27C76AF68, &qword_20C16F290, &qword_27C76AF70, &qword_20C16F298);
  *v3 = result;
  return result;
}

char *sub_20BB5E848(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB609CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_20BB5E868(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60AD0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20BB5E888(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AF90, &qword_20C16F2A8, type metadata accessor for WorkoutPlanArtworkV2.Workout);
  *v3 = result;
  return result;
}

void *sub_20BB5E8CC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76ADF8, &qword_20C16F0A8, MEMORY[0x277D504F8]);
  *v3 = result;
  return result;
}

char *sub_20BB5E910(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60D6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20BB5E930(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AF88, &qword_20C16F2A0, type metadata accessor for NavigationRequest);
  *v3 = result;
  return result;
}

char *sub_20BB5E974(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB613CC(a1, a2, a3, *v3, &qword_27C76AE38, &qword_20C16F108);
  *v3 = result;
  return result;
}

void *sub_20BB5E9A4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AE00, &unk_20C16F0B8, MEMORY[0x277D53500]);
  *v3 = result;
  return result;
}

void *sub_20BB5E9E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60FE0(a1, a2, a3, *v3, &qword_27C76AD50, &qword_20C182F00, &qword_27C763870, &unk_20C1547A0);
  *v3 = result;
  return result;
}

void *sub_20BB5EA28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76ADF0, &qword_20C16F0A0, type metadata accessor for WorkoutPlanPreference);
  *v3 = result;
  return result;
}

void *sub_20BB5EA6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76ADB0, &qword_20C16F038, MEMORY[0x277D53920]);
  *v3 = result;
  return result;
}

void *sub_20BB5EAB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60E8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_20BB5EAD0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60FE0(a1, a2, a3, *v3, &qword_27C762368, &unk_20C14FD80, &qword_27C7621E0, &unk_20C150360);
  *v3 = result;
  return result;
}

void *sub_20BB5EB10(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB60FE0(a1, a2, a3, *v3, &qword_27C76ADC0, &qword_20C16F048, &qword_27C7639B0, &unk_20C16F050);
  *v3 = result;
  return result;
}

void *sub_20BB5EB50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB611F0(a1, a2, a3, *v3, &qword_27C76AD28, &unk_20C16EF80, MEMORY[0x277D51FE0]);
  *v3 = result;
  return result;
}

char *sub_20BB5EB94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_20BB613CC(a1, a2, a3, *v3, &qword_27C76ADC8, &unk_20C16F060);
  *v3 = result;
  return result;
}

char *sub_20BB5EBEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76ADA8, &qword_20C16F030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BB5EE9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90, &unk_20C14FD30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BB5EFA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250, &unk_20C16EFA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BB5F0DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AFF0, &qword_20C16F318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 56 * v8);
  }

  return v10;
}

void *sub_20BB5F278(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AF08, &unk_20C16F208);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765840, &qword_20C159400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BB5F484(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768728, &qword_20C16F070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_20BB5F588(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AE20, &unk_20C16F0E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767630, &qword_20C183250);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20BB5F6BC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_0(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_20BB5F804(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AF18, &qword_20C16F220);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BB5F968(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_20BB5FA84(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AFE8, &qword_20C16F308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AA78, &qword_20C16F310);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20BB5FC18(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_0(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_20BB5FD74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AF50, &unk_20C16F270);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_20BB5FE68(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AEF0, &qword_20C16F1E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_20BB5FF90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AE08, &qword_20C16F0C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_20BB60090(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 56);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[56 * v11])
    {
      memmove(v15, v16, 56 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_20BB601B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AEB8, &unk_20C16F1A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20BB602E8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_0(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_20BB6041C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size_0(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_20BB60528(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AE28, &qword_20C16F0F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AE30, &qword_20C16F100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BB60670(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AE90, &qword_20C16F170);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_20BB6077C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AE98, &qword_20C16F178);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_20BB60888(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size_0(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_20BB609CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AF38, &qword_20C16F248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_20BB60AD0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76B008, &qword_20C16F338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_20BB60C24(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AFA0, &qword_20C16F2B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AFA8, &qword_20C16F2C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_20BB60D6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76ADE0, &qword_20C16F090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20BB60E8C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76ACA8, &unk_20C16EEF8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[21 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 168 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762340, &unk_20C150290);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_20BB60FE0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_20BB611F0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size_0(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_20BB613CC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size_0(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_20BB614FC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = *(a3 + 48);
  v6 = v5 + *(*(sub_20C135C84() - 8) + 72) * result;

  return sub_20B747A04(v6, a4);
}

void sub_20BB61618(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x20F2F52C0](a1, a2, v11);
      sub_20B51C88C(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_20B51C88C(0, a5, a6);
    if (sub_20C13DB14() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_20C13DB24();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_20C13D5E4();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_20C13D5F4();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_20BB61860@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

uint64_t sub_20BB6194C(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;
  sub_20C1332B4();

  v7 = v5;

  return sub_20C137C94();
}

uint64_t sub_20BB619F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76AC40, &qword_20C16EE60);

  return sub_20C137C94();
}

double sub_20BB61AA0(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t *), uint64_t a4, uint64_t *a5)
{
  v8 = *a5;
  a3(&v9, &v8);
  v6 = v9;
  v10 = 0;
  a1(&v9);
  return sub_20B71C190(v6, 0);
}

uint64_t sub_20BB61B30(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_20BB61B80(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_20BB61BD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_20C13DAE4();
    sub_20B51C88C(0, &qword_27C764020, 0x277CE8CC0);
    sub_20BB61F2C();
    sub_20C13CFF4();
    v4 = v28;
    v5 = v29;
    v6 = v30;
    v7 = v31;
    v8 = v32;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = MEMORY[0x277D84F90];
  v25 = v4;
  while (v4 < 0)
  {
    v19 = sub_20C13DB64();
    if (!v19 || (v33 = v19, sub_20B51C88C(0, &qword_27C764020, 0x277CE8CC0), swift_dynamicCast(), v18 = *&v26[0], v16 = v7, v17 = v8, !*&v26[0]))
    {
LABEL_26:
      v4 = v25;
LABEL_27:
      sub_20B583EDC(v4);
      return;
    }

LABEL_19:
    v33 = v18;
    sub_20BB5A08C(&v33, v26);
    if (v3)
    {

      sub_20B583EDC(v25);

      return;
    }

    v20 = v27;
    if (v27 != 255)
    {
      v23 = v26[1];
      v24 = v26[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_20BC07FA0(0, *(v12 + 2) + 1, 1, v12);
      }

      v22 = *(v12 + 2);
      v21 = *(v12 + 3);
      if (v22 >= v21 >> 1)
      {
        v12 = sub_20BC07FA0((v21 > 1), v22 + 1, 1, v12);
      }

      *(v12 + 2) = v22 + 1;
      v13 = &v12[40 * v22];
      *(v13 + 2) = v24;
      *(v13 + 3) = v23;
      v13[64] = v20 & 1;
    }

    v4 = v25;
    v7 = v16;
    v8 = v17;
  }

  v14 = v7;
  v15 = v8;
  v16 = v7;
  if (v8)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v4 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= ((v6 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v15 = *(v5 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

unint64_t sub_20BB61F2C()
{
  result = qword_27C764028;
  if (!qword_27C764028)
  {
    sub_20B51C88C(255, &qword_27C764020, 0x277CE8CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C764028);
  }

  return result;
}

uint64_t sub_20BB61F94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A970, &qword_20C14FC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BB62004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20BB58AD8(a1, v4, v5, v6);
}

uint64_t sub_20BB62100(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BB621EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20BB6224C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_20B52AC14;

  return sub_20BB58540(a1, v5, v4);
}