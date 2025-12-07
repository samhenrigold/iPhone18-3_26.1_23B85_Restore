uint64_t type metadata accessor for MagazineCatalogModel(uint64_t a1)
{
  result = qword_27CC0EA98;
  if (!qword_27CC0EA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218BB3A9C(uint64_t a1)
{
  sub_218BB398C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for MagazineGridItemModel(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

uint64_t sub_218BB3B6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_218BB4780(&qword_27CC0EAC0, &unk_219C20308);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_218BB3BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  sub_218BB4828(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 56);
  sub_218BB47C4(a1, v12);
  sub_218BB47C4(a2, &v12[v14]);
  sub_2189F5020(v12, v9);
  sub_2189F5020(&v12[v14], v6);
  LOBYTE(a2) = sub_218EFB304(v9, v6, v15);
  sub_21897C080(v6);
  sub_21897C080(v9);
  return a2 & 1;
}

uint64_t sub_218BB3D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB47C4(v2, v5);
  sub_21897C080(v5);
  v6 = sub_219BEAF84();
  return (*(*(v6 - 8) + 56))(a2, 1, 1, v6);
}

uint64_t sub_218BB3E28(uint64_t a1)
{
  MEMORY[0x28223BE20](a1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB47C4(v1, v3);
  sub_21897C080(v3);
  return 1;
}

uint64_t sub_218BB3ED0@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MagazineCatalogModel(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB47C4(v3, v12);
  sub_2189F5020(v12, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v9;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      sub_2189E93F4(0);
      v16 = &v9[*(v23 + 48)];
      v24 = *&v9[*(v23 + 64) + 32];

      v25 = *a1;
      v26 = a2(0);
      (*(*(v26 - 8) + 104))(a3, v25, v26);
      v22 = sub_219BF0444();
      return (*(*(v22 - 8) + 8))(v16, v22);
    }

    sub_2189E9530(*(v9 + 4), *(v9 + 5), *(v9 + 6));
    sub_2189E9570(0);
    v16 = &v9[*(v15 + 64)];
    v17 = *(v15 + 80);
  }

  else
  {

    sub_2189E96A0(0);
    v16 = &v9[*(v18 + 48)];
    v17 = *(v18 + 64);
  }

  v19 = *&v9[v17 + 32];

  v20 = *a1;
  v21 = a2(0);
  (*(*(v21 - 8) + 104))(a3, v20, v21);
  v22 = sub_219BF0744();
  return (*(*(v22 - 8) + 8))(v16, v22);
}

uint64_t sub_218BB4180()
{
  v1 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB47C4(v0, v6);
  sub_2189F5020(v6, v3);
  v7 = sub_218EF6CE0();
  sub_21897C080(v3);
  return v7;
}

uint64_t sub_218BB4290@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB47C4(v1, v8);
  sub_2189F5020(v8, v5);
  sub_218EF8CE0(v5, a1);
  sub_21897C080(v5);
  v9 = *MEMORY[0x277D32CF8];
  v10 = sub_219BF0614();
  return (*(*(v10 - 8) + 104))(a1, v9, v10);
}

uint64_t sub_218BB43CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB47C4(v3, v10);
  v11 = sub_2189F5020(v10, v7);
  v12 = a3(v11);
  sub_21897C080(v7);
  return v12;
}

uint64_t sub_218BB44B8()
{
  v1 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MagazineCatalogModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB47C4(v0, v6);
  sub_2189F5020(v6, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *v3;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      sub_2189E93F4(0);
      v10 = &v3[*(v15 + 48)];
      v16 = *&v3[*(v15 + 64) + 32];

      v14 = sub_219BF0444();
      goto LABEL_7;
    }

    sub_2189E9530(*(v3 + 4), *(v3 + 5), *(v3 + 6));
    sub_2189E9570(0);
    v10 = &v3[*(v9 + 64)];
    v11 = *(v9 + 80);
  }

  else
  {

    sub_2189E96A0(0);
    v10 = &v3[*(v12 + 48)];
    v11 = *(v12 + 64);
  }

  v13 = *&v3[v11 + 32];

  v14 = sub_219BF0744();
LABEL_7:
  (*(*(v14 - 8) + 8))(v10, v14);
  return 1;
}

uint64_t sub_218BB4780(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineCatalogModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218BB47C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCatalogModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218BB4828(uint64_t a1)
{
  if (!qword_27CC0EAD0)
  {
    type metadata accessor for MagazineCatalogModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0EAD0);
    }
  }
}

uint64_t sub_218BB488C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  sub_218BB4828(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 56);
  sub_218BB47C4(a1, v12);
  sub_218BB47C4(a2, &v12[v14]);
  sub_2189F5020(v12, v9);
  sub_2189F5020(&v12[v14], v6);
  sub_218EF7D18();
  sub_219BF54D4();

  v15 = sub_219BF5494();
  v17 = v16;

  sub_218EF7D18();
  sub_219BF54D4();

  v18 = sub_219BF5494();
  v20 = v19;

  if (v15 == v18 && v17 == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_219BF78F4();
  }

  sub_21897C080(v6);
  sub_21897C080(v9);
  return v22 & 1;
}

void sub_218BB4A78()
{
  v0 = sub_219BED224();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  *v3 = sub_219BF66A4();
  (*(v1 + 104))(v3, *MEMORY[0x277D85200], v0);
  v4 = sub_219BED254();
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    sub_21874B7FC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218BB4BA4()
{
  sub_218BB52B0(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store + 24);
  v7 = *(v0 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store), v6);
  (*(v7 + 16))(v6, v7);
  sub_219BE1A44();

  sub_219BE2184();

  v8 = (*(v3 + 88))(v5, v2);
  if (v8 == *MEMORY[0x277D6C9F0])
  {
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    if (v8 == *MEMORY[0x277D6C9E8])
    {
      (*(v3 + 96))(v5, v2);
      return *v5;
    }

    if (v8 != *MEMORY[0x277D6C9E0])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_218BB4E48()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_218806FD0(&v12);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v2 = v9;
  v3 = [v9 integerValue];
  if (v3 == -1)
  {

    goto LABEL_21;
  }

  v4 = v3;
LABEL_10:
  if (objc_getAssociatedObject(v1, ~v4))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_218806FD0(&v12);
LABEL_18:

    if ((v4 & 1) == 0)
    {
      return 0;
    }

LABEL_21:
    v7 = *(sub_218BB4BA4() + 16);

    return v7;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v5 = v9;
  v6 = [v5 integerValue];

  if ((v6 ^ v4))
  {
    goto LABEL_21;
  }

  return 0;
}

void sub_218BB503C()
{
  v1 = v0;
  v2 = sub_218BB4BA4();
  v3 = 0;
  v4 = v2 + 56;
  v5 = 1 << *(v2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v2 + 56);
  v8 = OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_issueReadingHistory;
  v9 = (v5 + 63) >> 6;
  if (v7)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v10 >= v9)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v3;
    if (v7)
    {
      v3 = v10;
      do
      {
LABEL_9:
        v7 &= v7 - 1;
        v11 = *(v0 + v8);

        v12 = sub_219BF53D4();

        [v11 markIssueAsBadgedWithID_];
      }

      while (v7);
      continue;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v14 = Strong;
  v15 = [Strong tabBarItem];

  if (!v15)
  {
LABEL_21:
    __break(1u);
    return;
  }

  [v15 setBadgeValue_];

LABEL_14:
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 _uip_tabElement];

    if (v18)
    {
      [v18 _setBadgeValue_];
    }
  }

  v19 = *(v1 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store), *(v1 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store + 24));
  sub_2194B2E44(&unk_282A22A10);
  (*(v19 + 32))();

  sub_21874B7FC();
}

uint64_t sub_218BB5260(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_218BB52B0(uint64_t a1)
{
  if (!qword_280EE7ED0)
  {
    sub_2186E2394();
    v1 = sub_219BE1A34();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7ED0);
    }
  }
}

uint64_t sub_218BB5310()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 24))(v2, v3);
}

uint64_t sub_218BB5378()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218BB5474(uint64_t a1)
{
  sub_218718690(*v1 + 16, &v11);
  v3 = *(a1 + 48);
  v9[2] = *(a1 + 32);
  v9[3] = v3;
  v10 = *(a1 + 64);
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  sub_218BB595C(v9, v8);
  sub_218BB5768(0);
  swift_allocObject();
  sub_218BB59B8(a1, v7);
  sub_218BB5A14();
  v5 = sub_219BE6E64();
  sub_218BB5A68(v9);
  return v5;
}

uint64_t sub_218BB5528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementMoveBlueprintModifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  sub_2189525B0(0);
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = *(v4 + 20);
  v12 = sub_219BDC104();
  (*(*(v12 - 8) + 16))(&v9[v11], a2, v12);
  sub_218BB5854(v9, v6);
  sub_218BB5768(0);
  swift_allocObject();
  sub_218BB58B8(&qword_27CC0EB10, type metadata accessor for SportsManagementMoveBlueprintModifier, &unk_219C31890);
  v13 = sub_219BE6E64();
  sub_218BB5900(v9);
  return v13;
}

uint64_t sub_218BB56C4(unint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(v4 + 80);
  swift_unknownObjectRetain();

  sub_218BA19F4(v5, v6, a1);

  sub_218BB5768(0);
  swift_allocObject();
  sub_218BA1F90();
  return sub_219BE6E64();
}

void sub_218BB5768(uint64_t a1)
{
  if (!qword_27CC0EB08)
  {
    type metadata accessor for SportsManagementSectionDescriptor(255);
    type metadata accessor for SportsManagementModel(255);
    sub_218BB58B8(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor, &unk_219C21994);
    sub_218BB58B8(&qword_27CC0AF90, type metadata accessor for SportsManagementModel, &unk_219CB52F8);
    v1 = sub_219BE6E74();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0EB08);
    }
  }
}

uint64_t sub_218BB5854(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsManagementMoveBlueprintModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218BB58B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218BB5900(uint64_t a1)
{
  v2 = type metadata accessor for SportsManagementMoveBlueprintModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218BB5A14()
{
  result = qword_27CC0EB18;
  if (!qword_27CC0EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB18);
  }

  return result;
}

uint64_t sub_218BB5ABC(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_219BDB734();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  sub_219BDBE34();
  v2[11] = swift_task_alloc();
  sub_219BF53C4();
  v2[12] = swift_task_alloc();
  sub_219BDB744();
  v2[13] = swift_task_alloc();
  v4 = sub_219BF09E4();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218BB5C68, 0, 0);
}

uint64_t sub_218BB5C68()
{
  v1 = sub_218845E04();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_219BF7214();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    v13 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v26 = MEMORY[0x277D84F90];
  v4 = sub_21870B65C(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return MEMORY[0x2822007B8](v4, v5, v6, v7, v8, v9, v10, v11);
  }

  v25 = v0;
  v12 = 0;
  v13 = v26;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x21CECE0F0](v12, v2);
    }

    else
    {
      v14 = *(v2 + 8 * v12 + 32);
    }

    v15 = [*(v14 + 16) identifier];
    v16 = sub_219BF5414();
    v18 = v17;

    v20 = *(v26 + 16);
    v19 = *(v26 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_21870B65C((v19 > 1), v20 + 1, 1);
    }

    ++v12;
    *(v26 + 16) = v20 + 1;
    v21 = v26 + 16 * v20;
    *(v21 + 32) = v16;
    *(v21 + 40) = v18;
  }

  while (v3 != v12);

  v0 = v25;
LABEL_14:
  v0[18] = v13;
  v22 = swift_task_alloc();
  v0[19] = v22;
  sub_218BB6FAC(0, &qword_27CC0CC58, type metadata accessor for HeadlineModel, MEMORY[0x277D83940]);
  v11 = v23;
  *v22 = v0;
  v22[1] = sub_218BB5EE0;
  v10 = v0[7];
  v9 = sub_218BB6D98;
  v7 = 0x6369747241746567;
  v8 = 0xED0000292873656CLL;
  v4 = (v0 + 4);
  v5 = 0;
  v6 = 0;

  return MEMORY[0x2822007B8](v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_218BB5EE0()
{

  return MEMORY[0x2822009F8](sub_218BB5FDC, 0, 0);
}

uint64_t sub_218BB5FDC()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v3 = 0;
    v33 = v1 & 0xFFFFFFFFFFFFFF8;
    v35 = v1 & 0xC000000000000001;
    v29 = v0[15];
    v30 = (v29 + 32);
    v36 = MEMORY[0x277D84F90];
    v31 = i;
    v32 = v1;
    while (v35)
    {
      v4 = MEMORY[0x21CECE0F0](v3, v1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v6 = [*(v4 + 16) sourceChannel];
      if (v6)
      {
        v7 = v0[18];
        v8 = [v6 identifier];
        v9 = sub_219BF5414();
        v11 = v10;

        v0[2] = v9;
        v0[3] = v11;
        v12 = swift_task_alloc();
        *(v12 + 16) = v0 + 2;
        LOBYTE(v7) = sub_2186D128C(sub_2186D1338, v12, v7);

        if (v7)
        {

          swift_unknownObjectRelease();
          v1 = v32;
        }

        else
        {
          v14 = v0[16];
          v13 = v0[17];
          v15 = v0[14];
          swift_unknownObjectRetain();
          sub_219BF09D4();

          swift_unknownObjectRelease();
          v16 = *v30;
          (*v30)(v13, v14, v15);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_2191F7EC4(0, *(v36 + 2) + 1, 1, v36);
          }

          v18 = *(v36 + 2);
          v17 = *(v36 + 3);
          v1 = v32;
          if (v18 >= v17 >> 1)
          {
            v36 = sub_2191F7EC4((v17 > 1), v18 + 1, 1, v36);
          }

          v19 = v0[17];
          v20 = v0[14];
          *(v36 + 2) = v18 + 1;
          v16(&v36[((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v18], v19, v20);
        }

        i = v31;
      }

      else
      {
      }

      ++v3;
      if (v5 == i)
      {
        goto LABEL_24;
      }
    }

    if (v3 >= *(v33 + 16))
    {
      goto LABEL_21;
    }

    v4 = *(v1 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_24:
  v21 = v0[10];
  v22 = v0[9];
  v34 = v0[8];
  v23 = v0[7];

  v0[5] = v36;
  sub_218BB6FAC(0, &qword_27CC0EB20, MEMORY[0x277D32FA8], MEMORY[0x277D83940]);
  sub_218BB6DA0();
  v24 = sub_219BF56E4();

  v25 = sub_218BB64F4(v23, v24);

  sub_219BF53B4();
  sub_219BDBDF4();
  (*(v22 + 104))(v21, *MEMORY[0x277CC9110], v34);
  sub_219BDB754();
  if (*(v25 + 2) >= 0xBuLL)
  {
    v26 = *(v0[15] + 80);
    sub_218B66A70(v25, &v25[(v26 + 32) & ~v26], 0, 0x15uLL);
  }

  sub_218BB6E28();
  sub_219BDAE04();

  v27 = v0[1];

  return v27();
}

uint64_t sub_218BB64B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BF09C4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

char *sub_218BB64F4(uint64_t a1, uint64_t a2)
{
  v49 = sub_219BF09E4();
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = &v41 - v5;
  sub_218E93D80();
  v7 = v6;
  if (v6 >> 62)
  {
    v8 = sub_219BF7214();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:

    v11 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v50 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    return result;
  }

  v10 = 0;
  v11 = v50;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x21CECE0F0](v10, v7);
    }

    else
    {
      v12 = *(v7 + 8 * v10 + 32);
    }

    v13 = [*(v12 + 16) identifier];
    v14 = sub_219BF5414();
    v16 = v15;

    v50 = v11;
    v18 = *(v11 + 16);
    v17 = *(v11 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_21870B65C((v17 > 1), v18 + 1, 1);
      v11 = v50;
    }

    ++v10;
    *(v11 + 16) = v18 + 1;
    v19 = v11 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
  }

  while (v8 != v10);

LABEL_14:
  v20 = sub_218845F78(v11);

  v45 = *(a2 + 16);
  if (v45)
  {
    v21 = 0;
    v22 = *(v46 + 16);
    v42 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v43 = a2 + v42;
    v44 = v22;
    v23 = *(v46 + 72);
    v24 = v20 + 56;
    v41 = (v46 + 8);
    v46 += 16;
    v25 = (v46 + 16);
    v26 = MEMORY[0x277D84F90];
    v22(v48, v43, v49);
    while (1)
    {
      v27 = sub_219BF09C4();
      v29 = v28;
      if (*(v20 + 16) && (v30 = v27, sub_219BF7AA4(), sub_219BF5524(), v31 = sub_219BF7AE4(), v32 = -1 << *(v20 + 32), v33 = v31 & ~v32, ((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
      {
        v34 = ~v32;
        while (1)
        {
          v35 = (*(v20 + 48) + 16 * v33);
          v36 = *v35 == v30 && v35[1] == v29;
          if (v36 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v24 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        (*v41)(v48, v49);
      }

      else
      {
LABEL_28:

        v37 = *v25;
        (*v25)(v47, v48, v49);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C34F70(0, *(v26 + 16) + 1, 1);
          v26 = v51;
        }

        v40 = *(v26 + 16);
        v39 = *(v26 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_218C34F70((v39 > 1), v40 + 1, 1);
          v26 = v51;
        }

        *(v26 + 16) = v40 + 1;
        v37((v26 + v42 + v40 * v23), v47, v49);
      }

      if (++v21 == v45)
      {
        break;
      }

      v44(v48, v43 + v23 * v21, v49);
    }
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  return v26;
}

double sub_218BB6934(uint64_t a1, uint64_t a2)
{
  sub_218BB6E80(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
  (*(v6 + 16))(v8, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_2193EC1BC(0, sub_218BB6F18, v10);

  return result;
}

uint64_t sub_218BB6A80(void *a1, uint64_t a2)
{
  if ((a2 & 0x100) != 0)
  {
    if (qword_27CC08648 != -1)
    {
      swift_once();
    }

    v4 = sub_219BE5434();
    __swift_project_value_buffer(v4, qword_27CCD8BE8);
    v5 = a1;
    v6 = sub_219BE5414();
    v7 = sub_219BF61F4();
    sub_218BB6FA0(a1, a2, 1);
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v6, v7, "RecentlyReadFactory could not fetch history. Error: %@", v8, 0xCu);
    sub_218962D30(v9);
    MEMORY[0x21CECF960](v9, -1, -1);
    v12 = v8;
    goto LABEL_12;
  }

  if (a2 > 1u)
  {
    if (qword_27CC08648 != -1)
    {
      swift_once();
    }

    v13 = sub_219BE5434();
    __swift_project_value_buffer(v13, qword_27CCD8BE8);
    v6 = sub_219BE5414();
    v14 = sub_219BF61F4();
    if (!os_log_type_enabled(v6, v14))
    {
      goto LABEL_13;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_2186C1000, v6, v14, "RecentlyReadFactory could not fetch history. No Batch.", v15, 2u);
    v12 = v15;
LABEL_12:
    MEMORY[0x21CECF960](v12, -1, -1);
LABEL_13:

    sub_218BB6E80(0);
    return sub_219BF5B64();
  }

  sub_218BB6E80(0);

  return sub_219BF5B64();
}

uint64_t sub_218BB6CFC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_218BB5ABC(a1);
}

unint64_t sub_218BB6DA0()
{
  result = qword_27CC0EB28;
  if (!qword_27CC0EB28)
  {
    sub_218BB6FAC(255, &qword_27CC0EB20, MEMORY[0x277D32FA8], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB28);
  }

  return result;
}

unint64_t sub_218BB6E28()
{
  result = qword_27CC0EB30;
  if (!qword_27CC0EB30)
  {
    sub_219BF09E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB30);
  }

  return result;
}

void sub_218BB6E80(uint64_t a1)
{
  if (!qword_27CC0EB38)
  {
    sub_218BB6FAC(255, &qword_27CC0CC58, type metadata accessor for HeadlineModel, MEMORY[0x277D83940]);
    v1 = sub_219BF5B74();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0EB38);
    }
  }
}

uint64_t sub_218BB6F18(void *a1, __int16 a2)
{
  sub_218BB6E80(0);

  return sub_218BB6A80(a1, a2 & 0x1FF);
}

double sub_218BB6FA0(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

void sub_218BB6FAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218BB7010()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218BB70E8(uint64_t a1)
{
  v3 = type metadata accessor for MagazineFeedExpandBlueprintModifier(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  sub_218BB7CEC(a1, &v12 - v7, type metadata accessor for MagazineFeedExpandResult);
  sub_218718690(v9 + 16, &v8[*(v3 + 20)]);
  sub_218BB7CEC(v8, v5, type metadata accessor for MagazineFeedExpandBlueprintModifier);
  sub_218BB78F0(0);
  swift_allocObject();
  sub_2186EBF60(&unk_280E9D578, type metadata accessor for MagazineFeedExpandBlueprintModifier, &unk_219C8DB58);
  v10 = sub_219BE6E64();
  sub_218BB7D54(v8, type metadata accessor for MagazineFeedExpandBlueprintModifier);
  return v10;
}

uint64_t sub_218BB725C(uint64_t a1)
{
  sub_218718690(*v1 + 16, &v7);
  v6 = a1;
  sub_218BB7BE8(&v6, &v5);
  sub_218BB78F0(0);
  swift_allocObject();
  sub_218BB7C44();

  v3 = sub_219BE6E64();
  sub_218BB7C98(&v6);
  return v3;
}

uint64_t sub_218BB72FC(uint64_t a1)
{
  refreshed = type metadata accessor for MagazineFeedRefreshBlueprintModifier(0);
  MEMORY[0x28223BE20](refreshed);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  sub_218BB7CEC(a1, &v12 - v7, type metadata accessor for MagazineFeedExpandResult);
  sub_218718690(v9 + 16, &v8[*(refreshed + 20)]);
  sub_218BB7CEC(v8, v5, type metadata accessor for MagazineFeedRefreshBlueprintModifier);
  sub_218BB78F0(0);
  swift_allocObject();
  sub_2186EBF60(&qword_280E9B3B8, type metadata accessor for MagazineFeedRefreshBlueprintModifier, &unk_219C67430);
  v10 = sub_219BE6E64();
  sub_218BB7D54(v8, type metadata accessor for MagazineFeedRefreshBlueprintModifier);
  return v10;
}

uint64_t sub_218BB7470(uint64_t a1)
{
  sub_218BB78F0(0);
  swift_allocObject();
  sub_218BB7B94();

  return sub_219BE6E64();
}

uint64_t sub_218BB74E0()
{

  sub_218845F78(v0);

  sub_218BB78F0(0);
  swift_allocObject();
  sub_218BB7B40();
  return sub_219BE6E64();
}

uint64_t sub_218BB756C(uint64_t a1, uint64_t a2)
{
  sub_218BB78F0(0);
  swift_allocObject();
  sub_218BB7AEC();

  return sub_219BE6E64();
}

uint64_t sub_218BB75EC(uint64_t a1)
{
  v2 = type metadata accessor for MagazineFeedFailedBlueprintModifier(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_218BB7CEC(a1, &v10 - v6, type metadata accessor for MagazineFeedFailedData);
  sub_218BB7CEC(v7, v4, type metadata accessor for MagazineFeedFailedBlueprintModifier);
  sub_218BB78F0(0);
  swift_allocObject();
  sub_2186EBF60(&qword_27CC0EB40, type metadata accessor for MagazineFeedFailedBlueprintModifier, &unk_219C6854C);
  v8 = sub_219BE6E64();
  sub_218BB7D54(v7, type metadata accessor for MagazineFeedFailedBlueprintModifier);
  return v8;
}

uint64_t sub_218BB7748(unint64_t a1, void *a2, char a3)
{
  sub_218BB78F0(0);
  swift_allocObject();

  sub_2189F5084(a1);
  sub_218B88068(a2, a3);
  sub_218BB7A98();
  return sub_219BE6E64();
}

uint64_t sub_218BB77EC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  sub_218718690(*v2 + 16, &v10);
  v8 = a1;
  v9 = v3;
  sub_218BB7894(&v8, &v7);
  sub_218BB78F0(0);
  swift_allocObject();
  sub_218BB79DC(a1, v3);
  sub_218BB79F0();
  v5 = sub_219BE6E64();
  sub_218BB7A44(&v8);
  return v5;
}

void sub_218BB78F0(uint64_t a1)
{
  if (!qword_280EE5610)
  {
    type metadata accessor for MagazineFeedSectionDescriptor(255);
    type metadata accessor for MagazineFeedModel(255);
    sub_2186EBF60(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    sub_2186EBF60(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v1 = sub_219BE6E74();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5610);
    }
  }
}

double sub_218BB79DC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return result;
}

unint64_t sub_218BB79F0()
{
  result = qword_280E9D2D8;
  if (!qword_280E9D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D2D8);
  }

  return result;
}

unint64_t sub_218BB7A98()
{
  result = qword_280EA6020;
  if (!qword_280EA6020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6020);
  }

  return result;
}

unint64_t sub_218BB7AEC()
{
  result = qword_27CC0EB48;
  if (!qword_27CC0EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB48);
  }

  return result;
}

unint64_t sub_218BB7B40()
{
  result = qword_280E961E8[0];
  if (!qword_280E961E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E961E8);
  }

  return result;
}

unint64_t sub_218BB7B94()
{
  result = qword_280E99588[0];
  if (!qword_280E99588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E99588);
  }

  return result;
}

unint64_t sub_218BB7C44()
{
  result = qword_280E9B3C8;
  if (!qword_280E9B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9B3C8);
  }

  return result;
}

uint64_t sub_218BB7CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218BB7D54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218BB7DB4()
{
  v28 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v28);
  v1 = (&v24 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218953870(0);
  v3 = v2;
  v27 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB87C8(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB8698(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_218951DB0(0);
  sub_219BE6974();
  v30 = MEMORY[0x277D84F90];
  v25 = v17;
  v26 = v12;
  (*(v12 + 16))(v14, v17, v11);
  sub_218BB885C(&qword_280EE7500, sub_218BB8698, MEMORY[0x277D6CC40]);
  sub_219BF56A4();
  v18 = *(v7 + 44);
  sub_218BB885C(&qword_280EE74F8, sub_218BB8698, MEMORY[0x277D6CC48]);
  sub_219BF5E84();
  v19 = MEMORY[0x277D84F90];
  if (*&v9[v18] != v29[0])
  {
    v20 = (v27 + 16);
    v21 = (v27 + 8);
    do
    {
      v27 = v19;
      while (1)
      {
        v22 = sub_219BF5EC4();
        (*v20)(v5);
        v22(v29, 0);
        sub_219BF5E94();
        sub_219BE5FC4();
        (*v21)(v5, v3);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          break;
        }

        sub_218BB88A4(v1, type metadata accessor for MagazineFeedModel);
        sub_219BF5E84();
        if (*&v9[v18] == v29[0])
        {
          v19 = v27;
          goto LABEL_10;
        }
      }

      v27 = *v1;
      MEMORY[0x21CECC690]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v24 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_219BF5A14();
      }

      sub_219BF5A54();
      v27 = v30;
      sub_219BF5E84();
      v19 = v27;
    }

    while (*&v9[v18] != v29[0]);
  }

LABEL_10:
  sub_218BB88A4(v9, sub_218BB87C8);
  (*(v26 + 8))(v25, v11);
  return v19;
}

uint64_t sub_218BB8230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v33 = a2;
  v32 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v32);
  v31 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BDBD64();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v27);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218953870(0);
  v25 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB8698(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v26 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_218BB885C(&qword_280EE5BB8, sub_218953870, MEMORY[0x277D6D408]);
  sub_218BB885C(&unk_280EE5BC0, sub_218953870, MEMORY[0x277D6D3F8]);
  sub_219BE2444();
  sub_2186F6F00(0);
  v19 = *(v18 + 48);
  sub_219BDBD54();
  v20 = sub_219BDBD44();
  v22 = v21;
  (*(v3 + 8))(v5, v29);
  *v7 = v20;
  v7[1] = v22;
  sub_218BB8764(v30, v7 + v19);
  swift_storeEnumTagMultiPayload();
  sub_218BB885C(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
  sub_219BE5FB4();
  sub_219BE2404();
  (*(v28 + 8))(v10, v25);
  swift_storeEnumTagMultiPayload();
  (*(v13 + 16))(v26, v17, v12);
  sub_218BB885C(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
  sub_219BE6924();
  return (*(v13 + 8))(v17, v12);
}

void sub_218BB8698(uint64_t a1)
{
  if (!qword_280EE74F0)
  {
    sub_218953870(255);
    sub_218BB885C(&qword_280EE5BB8, sub_218953870, MEMORY[0x277D6D408]);
    sub_218BB885C(&unk_280EE5BC0, sub_218953870, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE74F0);
    }
  }
}

uint64_t sub_218BB8764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedGapLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218BB87C8(uint64_t a1)
{
  if (!qword_280E8D528)
  {
    sub_218BB8698(255);
    sub_218BB885C(&qword_280EE74F8, sub_218BB8698, MEMORY[0x277D6CC48]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D528);
    }
  }
}

uint64_t sub_218BB885C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218BB88A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218BB8928@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE4584();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_218BB8994@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BE4314();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_218BB8A10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BF4A04();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_218BB8A8C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v38 = a3;
  v39 = a2;
  sub_218BBB928(0, &qword_27CC0C928, MEMORY[0x277D6DF88]);
  v37 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  sub_218BBB928(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  v14 = *(v10 + 16);
  v35 = a1;
  v36 = v15;
  v34 = v14;
  (v14)(v13, a1, v11);
  v16 = *(*v3 + 16);
  if (v16)
  {
    v17 = (*v3 + 40);
    do
    {
      v19 = *(v17 - 1);
      v20 = *v17 >> 6;
      if (v20 > 1)
      {
        if (v20 == 2)
        {

          sub_218BB9EB8(v18, v13);
        }

        else
        {

          sub_218BBAC98(v22, v13);
        }
      }

      else
      {
        if (v20)
        {
          goto LABEL_5;
        }

        sub_218BB8E0C(v21, v13);
      }

      j__swift_release(v19);
LABEL_5:
      v17 += 16;
      --v16;
    }

    while (v16);
  }

  sub_218BBB82C();
  sub_21878D8D8();
  sub_21878D92C();
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v40, v40[3]);
  if (sub_219BE6E54())
  {
    v23 = MEMORY[0x277D6DF80];
    v24 = v39;
    v26 = v36;
    v25 = v37;
  }

  else
  {
    sub_218BBB880(0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 64);
    v26 = v36;
    v34(v8, v13, v36);
    sub_218718690(v40, &v8[v28]);
    v30 = *MEMORY[0x277D6D868];
    v31 = sub_219BE6DF4();
    (*(*(v31 - 8) + 104))(&v8[v29], v30, v31);
    v23 = MEMORY[0x277D6DF78];
    v24 = v39;
    v25 = v37;
  }

  (*(v6 + 104))(v8, *v23, v25);
  v24(v8);
  (*(v6 + 8))(v8, v25);
  (*(v10 + 8))(v13, v26);
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_218BB8E0C(uint64_t a1, uint64_t a2)
{
  v140 = a2;
  sub_218A25E40(0);
  MEMORY[0x28223BE20](v4 - 8);
  v121 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A2625C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v124 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v126 = &v117 - v9;
  MEMORY[0x28223BE20](v10);
  v127 = &v117 - v11;
  sub_218A25EF0(0);
  v138 = *(v12 - 8);
  v139 = v12;
  MEMORY[0x28223BE20](v12);
  v118 = &v117 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v119 = &v117 - v15;
  MEMORY[0x28223BE20](v16);
  v136 = &v117 - v17;
  MEMORY[0x28223BE20](v18);
  v122 = &v117 - v19;
  sub_218A25F90(0);
  MEMORY[0x28223BE20](v20 - 8);
  v129 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v128 = &v117 - v23;
  MEMORY[0x28223BE20](v24);
  v130 = &v117 - v25;
  MEMORY[0x28223BE20](v26);
  v133 = &v117 - v27;
  sub_218BBB928(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v131 = v28;
  v132 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v120 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v123 = &v117 - v31;
  MEMORY[0x28223BE20](v32);
  v125 = &v117 - v33;
  MEMORY[0x28223BE20](v34);
  v135 = &v117 - v35;
  MEMORY[0x28223BE20](v36);
  v134 = &v117 - v37;
  v38 = sub_219BF2CB4();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = (&v117 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = sub_219BF2634();
  v42 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v44 = &v117 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 8), *(v2 + 32));
  *v41 = *(a1 + 16);
  (*(v39 + 104))(v41, *MEMORY[0x277D33B98], v38);
  swift_unknownObjectRetain();
  v45 = v131;
  sub_219BF4794();
  (*(v39 + 8))(v41, v38);
  v46 = sub_219BF2614();
  (*(v42 + 8))(v44, v137);
  v47 = v132;
  type metadata accessor for FollowingTagModel();
  v48 = swift_allocObject();
  *(v48 + 16) = 0;
  *(v48 + 24) = a1;
  *(v48 + 32) = v46 & 1;
  sub_218BBB928(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v50 = v49;
  v51 = v133;

  sub_219BEB354();
  v52 = *(v47 + 48);
  v53 = (v52)(v51, 1, v45);
  v137 = v50;
  if (v53 == 1)
  {
    sub_218BBBA00(v51, sub_218A25F90);
    v54 = v138;
  }

  else
  {
    (*(v47 + 32))(v134, v51, v45);
    v55 = *(v48 + 16);
    v56 = *(v48 + 24);
    v142 = 0;
    v143 = 0xE000000000000000;
    v141 = v55;
    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v57 = [*(v56 + 16) identifier];
    v58 = sub_219BF5414();
    v59 = v47;
    v60 = v45;
    v62 = v61;

    MEMORY[0x21CECC330](v58, v62);
    v45 = v60;

    v63 = v127;
    sub_219BE6A64();

    v54 = v138;
    v64 = v139;
    if ((*(v138 + 48))(v63, 1, v139) != 1)
    {
      v97 = v122;
      (*(v54 + 32))(v122, v63, v64);
      v99 = v134;
      v98 = v135;
      (*(v59 + 16))(v135, v134, v45);
LABEL_18:
      v142 = v48;
      v144 = 0;
      sub_21878D92C();

      v104 = v136;
      sub_219BE5FB4();
      sub_219BE69E4();
      sub_219BEB234();

      v105 = *(v54 + 8);
      v106 = v104;
      v107 = v139;
      v105(v106, v139);
      v108 = *(v59 + 8);
      v108(v98, v45);
      v105(v97, v107);
      return (v108)(v99, v45);
    }

    (*(v59 + 8))(v134, v60);
    sub_218BBBA00(v63, sub_218A2625C);
    v47 = v59;
  }

  v65 = v130;
  sub_219BEB354();
  if ((v52)(v65, 1, v45) == 1)
  {
    sub_218BBBA00(v65, sub_218A25F90);
    v66 = v129;
    goto LABEL_9;
  }

  v134 = v52;
  v67 = v125;
  (*(v47 + 32))(v125, v65, v45);
  v68 = *(v48 + 16);
  v69 = *(v48 + 24);
  v142 = 0;
  v143 = 0xE000000000000000;
  v141 = v68;
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v70 = [*(v69 + 16) identifier];
  v71 = sub_219BF5414();
  v59 = v47;
  v72 = v45;
  v74 = v73;

  MEMORY[0x21CECC330](v71, v74);
  v45 = v72;
  v75 = v67;

  v76 = v126;
  sub_219BE6A64();
  v77 = v139;

  if ((*(v54 + 48))(v76, 1, v77) != 1)
  {
    v97 = v119;
    (*(v54 + 32))(v119, v76, v77);
    v99 = v75;
    v98 = v135;
    (*(v59 + 16))(v135, v75, v45);
    goto LABEL_18;
  }

  (*(v59 + 8))(v67, v72);
  sub_218BBBA00(v76, sub_218A2625C);
  v47 = v59;
  v66 = v129;
  v52 = v134;
LABEL_9:
  v78 = v128;
  sub_219BEB354();
  if ((v52)(v78, 1, v45) == 1)
  {
    sub_218BBBA00(v78, sub_218A25F90);
    v79 = v138;
    goto LABEL_13;
  }

  v80 = v123;
  (*(v47 + 32))(v123, v78, v45);
  v81 = *(v48 + 16);
  v82 = *(v48 + 24);
  v142 = 0;
  v143 = 0xE000000000000000;
  v141 = v81;
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v83 = [*(v82 + 16) identifier];
  v84 = sub_219BF5414();
  v85 = v47;
  v86 = v45;
  v88 = v87;

  MEMORY[0x21CECC330](v84, v88);
  v45 = v86;
  v89 = v80;

  v90 = v124;
  sub_219BE6A64();

  v79 = v138;
  v91 = v139;
  if ((*(v138 + 48))(v90, 1, v139) == 1)
  {
    (*(v85 + 8))(v89, v86);
    sub_218BBBA00(v90, sub_218A2625C);
    v47 = v85;
    v66 = v129;
LABEL_13:
    sub_219BEB354();
    if ((v52)(v66, 1, v45) == 1)
    {
      sub_218BBBA00(v66, sub_218A25F90);
      sub_2197EBCE8(&v142);
      v145 = 1;
      v92 = sub_218A25F4C(&qword_27CC0C8C8, MEMORY[0x277D6D408]);
      v93 = sub_218A25F4C(&qword_27CC0C8D0, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v139, v92, v93);
      sub_21878D8D8();
      sub_21878D92C();
      v94 = v135;
      sub_219BE6924();
      v142 = v48;
      v144 = 0;

      v95 = v136;
      sub_219BE5FB4();
      sub_219BE6994();
      sub_218A26130();
      sub_219BEB324();

      (*(v79 + 8))(v95, v139);
      return (*(v47 + 8))(v94, v45);
    }

    else
    {
      v100 = v120;
      (*(v47 + 32))(v120, v66, v45);
      v101 = v135;
      (*(v47 + 16))(v135, v100, v45);
      v142 = v48;
      v144 = 0;
      sub_21878D92C();

      v102 = v136;
      sub_219BE5FB4();
      sub_218BBB9AC();
      sub_219BE6A44();
      (*(v79 + 8))(v102, v139);
      sub_219BEB234();

      v103 = *(v47 + 8);
      v103(v101, v45);
      return (v103)(v100, v45);
    }
  }

  v109 = v118;
  (*(v79 + 32))(v118, v90, v91);
  v110 = v89;
  v111 = v135;
  (*(v85 + 16))(v135, v89, v45);
  v142 = v48;
  v144 = 0;
  sub_21878D92C();

  v112 = v136;
  sub_219BE5FB4();
  sub_219BE69E4();
  sub_219BEB234();

  v113 = *(v79 + 8);
  v114 = v112;
  v115 = v139;
  v113(v114, v139);
  v116 = *(v85 + 8);
  v116(v111, v45);
  v113(v109, v115);
  return (v116)(v110, v45);
}

void sub_218BB9EB8(uint64_t a1, uint64_t a2)
{
  v128 = a2;
  sub_218A2625C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v113 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v115 = &v108 - v7;
  MEMORY[0x28223BE20](v8);
  v116 = &v108 - v9;
  sub_218A25EF0(0);
  v126 = *(v10 - 8);
  v127 = v10;
  MEMORY[0x28223BE20](v10);
  v109 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v110 = &v108 - v13;
  MEMORY[0x28223BE20](v14);
  v119 = &v108 - v15;
  MEMORY[0x28223BE20](v16);
  v111 = &v108 - v17;
  sub_218A25F90(0);
  MEMORY[0x28223BE20](v18 - 8);
  v117 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v120 = &v108 - v21;
  MEMORY[0x28223BE20](v22);
  v123 = &v108 - v23;
  sub_218BBB928(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v121 = *(v24 - 8);
  v122 = v24;
  MEMORY[0x28223BE20](v24);
  v112 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v114 = &v108 - v27;
  MEMORY[0x28223BE20](v28);
  v118 = &v108 - v29;
  MEMORY[0x28223BE20](v30);
  v124 = &v108 - v31;
  v32 = sub_219BF2CB4();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = (&v108 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = sub_219BF2634();
  v36 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v38 = &v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 8), *(v2 + 32));
  *v35 = *(a1 + 16);
  (*(v33 + 104))(v35, *MEMORY[0x277D33B98], v32);
  swift_unknownObjectRetain();
  sub_219BF4794();
  (*(v33 + 8))(v35, v32);
  v39 = sub_219BF2614();
  v40 = v122;
  (*(v36 + 8))(v38, v125);
  type metadata accessor for FollowingTagModel();
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  v42 = a1;
  v43 = v121;
  *(v41 + 24) = v42;
  *(v41 + 32) = v39 & 1;
  sub_218BBB928(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v45 = v44;
  v46 = v123;

  sub_219BEB354();
  v47 = *(v43 + 48);
  v48 = v47(v46, 1, v40);
  v125 = v45;
  if (v48 == 1)
  {
    sub_218BBBA00(v46, sub_218A25F90);
    v49 = v126;
  }

  else
  {
    v108 = v47;
    (*(v43 + 32))(v124, v46, v40);
    v50 = *(v41 + 16);
    v51 = *(v41 + 24);
    v129 = 0;
    v130 = 0xE000000000000000;
    v132 = v50;
    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v52 = [*(v51 + 16) identifier];
    v53 = v43;
    v54 = sub_219BF5414();
    v56 = v55;

    MEMORY[0x21CECC330](v54, v56);

    v57 = v116;
    sub_219BE6A64();

    v49 = v126;
    v58 = v127;
    if ((*(v126 + 48))(v57, 1, v127) != 1)
    {
      v85 = v111;
      (*(v49 + 32))(v111, v57, v58);
      v86 = v118;
      v87 = v124;
      (*(v53 + 16))(v118, v124, v40);
      v129 = v41;
      v131 = 0;
      sub_21878D92C();

      v88 = v119;
      sub_219BE5FB4();
      sub_219BE69E4();
      sub_219BEB234();

      v89 = *(v49 + 8);
      v90 = v88;
      v91 = v127;
      v89(v90, v127);
      v92 = *(v53 + 8);
      v92(v86, v40);
      v89(v85, v91);
      v92(v87, v40);
      return;
    }

    (*(v53 + 8))(v124, v40);
    sub_218BBBA00(v57, sub_218A2625C);
    v43 = v53;
    v47 = v108;
  }

  v59 = v120;
  sub_219BEB354();
  if (v47(v59, 1, v40) == 1)
  {
    sub_218BBBA00(v59, sub_218A25F90);
    v60 = v117;
  }

  else
  {
    v61 = v114;
    (*(v43 + 32))(v114, v59, v40);
    v62 = *(v41 + 16);
    v63 = *(v41 + 24);
    v129 = 0;
    v130 = 0xE000000000000000;
    v132 = v62;
    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v64 = [*(v63 + 16) identifier];
    v65 = v43;
    v66 = sub_219BF5414();
    v68 = v67;

    MEMORY[0x21CECC330](v66, v68);

    v69 = v115;
    sub_219BE6A64();
    v70 = v126;

    v71 = v127;
    if ((*(v70 + 48))(v69, 1, v127) != 1)
    {
      v93 = v110;
      (*(v70 + 32))(v110, v69, v71);
      v94 = v118;
      (*(v65 + 16))(v118, v61, v40);
      v129 = v41;
      v131 = 0;
      sub_21878D92C();

      v95 = v119;
      sub_219BE5FB4();
      sub_219BE69E4();
      sub_219BEB234();

      v96 = *(v70 + 8);
      v97 = v95;
      v98 = v127;
      v96(v97, v127);
      v99 = *(v65 + 8);
      v99(v94, v40);
      v96(v93, v98);
      v99(v61, v40);
      return;
    }

    (*(v65 + 8))(v61, v40);
    sub_218BBBA00(v69, sub_218A2625C);
    v43 = v65;
    v60 = v117;
    v49 = v70;
  }

  sub_219BEB354();
  if (v47(v60, 1, v40) == 1)
  {

    sub_218BBBA00(v60, sub_218A25F90);
  }

  else
  {
    v72 = v112;
    (*(v43 + 32))(v112, v60, v40);
    v73 = *(v41 + 16);
    v74 = *(v41 + 24);
    v129 = 0;
    v130 = 0xE000000000000000;
    v132 = v73;
    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v75 = [*(v74 + 16) identifier];
    v76 = v40;
    v77 = v43;
    v78 = sub_219BF5414();
    v80 = v79;

    v81 = v78;
    v82 = v76;
    MEMORY[0x21CECC330](v81, v80);

    v83 = v113;
    sub_219BE6A64();

    v84 = v127;
    if ((*(v49 + 48))(v83, 1, v127) == 1)
    {
      (*(v77 + 8))(v72, v76);

      sub_218BBBA00(v83, sub_218A2625C);
    }

    else
    {
      v100 = v72;
      v101 = v109;
      (*(v49 + 32))(v109, v83, v84);
      v102 = v118;
      (*(v77 + 16))(v118, v100, v82);
      v129 = v41;
      v131 = 0;
      sub_21878D92C();

      v103 = v119;
      sub_219BE5FB4();
      sub_219BE69E4();
      sub_219BEB234();

      v104 = *(v49 + 8);
      v105 = v103;
      v106 = v127;
      v104(v105, v127);
      v107 = *(v77 + 8);
      v107(v102, v82);
      v104(v101, v106);
      v107(v100, v82);
    }
  }
}

void sub_218BBAC98(uint64_t a1, uint64_t a2)
{
  v88 = a2;
  sub_218A25EF0(0);
  v86 = v4;
  v81 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v74 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v79 = &v73 - v7;
  sub_218A2625C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v73 - v11;
  sub_218A25F90(0);
  MEMORY[0x28223BE20](v12 - 8);
  v80 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v85 = &v73 - v15;
  sub_218BBB928(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v83 = *(v16 - 8);
  v84 = v16;
  MEMORY[0x28223BE20](v16);
  v73 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v76 = &v73 - v19;
  MEMORY[0x28223BE20](v20);
  v75 = &v73 - v21;
  MEMORY[0x28223BE20](v22);
  v87 = &v73 - v23;
  v24 = sub_219BF2CB4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = (&v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = sub_219BF2634();
  v28 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 8), *(v2 + 32));
  *v27 = *(a1 + 16);
  (*(v25 + 104))(v27, *MEMORY[0x277D33B98], v24);
  swift_unknownObjectRetain();
  sub_219BF4794();
  (*(v25 + 8))(v27, v24);
  v31 = sub_219BF2614();
  v32 = v83;
  (*(v28 + 8))(v30, v82);
  v33 = v84;
  type metadata accessor for FollowingTagModel();
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  v35 = a1;
  v36 = v34;
  *(v34 + 24) = v35;
  *(v34 + 32) = v31 & 1;
  sub_218BBB928(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v38 = v37;

  v39 = v85;
  sub_219BEB354();
  v40 = *(v32 + 48);
  if (v40(v39, 1, v33) == 1)
  {
    v41 = v86;
    sub_218BBBA00(v39, sub_218A25F90);
  }

  else
  {
    v82 = v38;
    (*(v32 + 32))(v87, v39, v33);
    v42 = v36[16];
    v43 = *(v36 + 3);
    v90 = 0;
    v91 = 0xE000000000000000;
    LOBYTE(v89) = v42;
    sub_219BF7484();
    MEMORY[0x21CECC330](58, 0xE100000000000000);
    v44 = *(v43 + 16);
    v85 = v36;
    v45 = [v44 identifier];
    v46 = sub_219BF5414();
    v48 = v47;

    MEMORY[0x21CECC330](v46, v48);

    v49 = v78;
    sub_219BE6A64();

    v41 = v86;
    if ((*(v81 + 48))(v49, 1, v86) != 1)
    {
      sub_218BBBA00(v49, sub_218A2625C);
      v61 = v75;
      (*(v32 + 16))(v75, v87, v33);
      v62 = v85[16];
      v63 = *(v85 + 3);
      v90 = 0;
      v91 = 0xE000000000000000;
      LOBYTE(v89) = v62;
      sub_219BF7484();
      MEMORY[0x21CECC330](58, 0xE100000000000000);
      v64 = [*(v63 + 16) &_OBJC_LABEL_PROTOCOL___FCPrivateChannelMembershipObserving];
      v65 = sub_219BF5414();
      v67 = v66;

      MEMORY[0x21CECC330](v65, v67);

      sub_219BE69C4();

      sub_218BBBA60();
      sub_219BF5DF4();
      sub_219BF5E84();
      if (v90 == v89)
      {
        sub_219BE6944();
        sub_219BEB214();
      }

      else
      {
        sub_219BEB234();
      }

      v72 = *(v32 + 8);
      v72(v61, v33);
      v72(v87, v33);
      return;
    }

    (*(v32 + 8))(v87, v33);
    sub_218BBBA00(v49, sub_218A2625C);
    v38 = v82;
    v36 = v85;
  }

  v50 = v80;
  sub_219BEB354();
  if (v40(v50, 1, v33) == 1)
  {

    v51 = sub_218A25F90;
LABEL_9:
    sub_218BBBA00(v50, v51);
    return;
  }

  v82 = v38;
  v52 = v76;
  (*(v32 + 32))(v76, v50, v33);
  v53 = v36[16];
  v54 = *(v36 + 3);
  v90 = 0;
  v91 = 0xE000000000000000;
  LOBYTE(v89) = v53;
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v55 = [*(v54 + 16) identifier];
  v56 = sub_219BF5414();
  v58 = v57;

  MEMORY[0x21CECC330](v56, v58);

  v50 = v77;
  sub_219BE6A64();

  v59 = v81;
  v60 = v41;
  if ((*(v81 + 48))(v50, 1, v41) == 1)
  {
    (*(v32 + 8))(v52, v33);

    v51 = sub_218A2625C;
    goto LABEL_9;
  }

  (*(v59 + 32))(v79, v50, v41);
  v68 = v73;
  (*(v32 + 16))(v73, v52, v33);
  v90 = v36;
  v92 = 0;
  sub_21878D92C();

  v69 = v74;
  sub_219BE5FB4();
  sub_219BE69E4();
  sub_219BEB234();

  v70 = *(v59 + 8);
  v70(v69, v60);
  v71 = *(v32 + 8);
  v71(v68, v33);
  v70(v79, v60);
  v71(v52, v33);
}

uint64_t sub_218BBB798(uint64_t a1)
{
  v2 = sub_218BBBAD4();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218BBB7D8()
{
  result = qword_27CC0EB50;
  if (!qword_27CC0EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB50);
  }

  return result;
}

unint64_t sub_218BBB82C()
{
  result = qword_27CC0EB58;
  if (!qword_27CC0EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB58);
  }

  return result;
}

void sub_218BBB880(uint64_t a1)
{
  if (!qword_27CC0EB60)
  {
    sub_218BBB928(255, &qword_27CC0C900, MEMORY[0x277D6EC60]);
    sub_218A7BBF4();
    sub_219BE6DF4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC0EB60);
    }
  }
}

void sub_218BBB928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingNotificationsDescriptor;
    v8[1] = &type metadata for FollowingNotificationsModel;
    v8[2] = sub_21878D8D8();
    v8[3] = sub_21878D92C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218BBB9AC()
{
  result = qword_27CC0EB68;
  if (!qword_27CC0EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB68);
  }

  return result;
}

uint64_t sub_218BBBA00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218BBBA60()
{
  result = qword_27CC0AEC8;
  if (!qword_27CC0AEC8)
  {
    sub_218BBB928(255, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0AEC8);
  }

  return result;
}

unint64_t sub_218BBBAD4()
{
  result = qword_27CC0EB70;
  if (!qword_27CC0EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB70);
  }

  return result;
}

uint64_t sub_218BBBB50@<X0>(uint64_t a2@<X8>)
{
  v21 = type metadata accessor for CuratedAudioFeedGroup(0);
  MEMORY[0x28223BE20](v21);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioFeedGroup(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  type metadata accessor for AudioFeedServiceConfig(0);
  sub_2186E71FC(&unk_280EC8DD0, type metadata accessor for AudioFeedServiceConfig, &unk_219C207D8);
  result = sub_219BEF3B4();
  v13 = result;
  v14 = *(result + 16);
  if (v14)
  {
    v20 = a2;
    v15 = 0;
    v16 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (v15 < *(v13 + 16))
    {
      sub_218BBD9C0(v16 + *(v6 + 72) * v15, v11, type metadata accessor for AudioFeedGroup);
      sub_218BBD9C0(v11, v8, type metadata accessor for AudioFeedGroup);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        sub_218BBD6D8(v8, v4, type metadata accessor for CuratedAudioFeedGroup);
        v18 = sub_219BF7614();
        sub_218BBD844(v4, type metadata accessor for CuratedAudioFeedGroup);
        v17 = v11;
        if (!v18)
        {

          a2 = v20;
          sub_218BBD6D8(v11, v20, type metadata accessor for AudioFeedGroup);
          v19 = 0;
          return (*(v6 + 56))(a2, v19, 1, v5);
        }
      }

      else
      {
        sub_218BBD844(v11, type metadata accessor for AudioFeedGroup);
        v17 = v8;
      }

      ++v15;
      result = sub_218BBD844(v17, type metadata accessor for AudioFeedGroup);
      if (v14 == v15)
      {

        v19 = 1;
        a2 = v20;
        return (*(v6 + 56))(a2, v19, 1, v5);
      }
    }

    __break(1u);
  }

  else
  {

    v19 = 1;
    return (*(v6 + 56))(a2, v19, 1, v5);
  }

  return result;
}

double sub_218BBBE6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v36 = sub_219BEEA84();
  v33 = *(v36 - 8);
  v5 = v33;
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AudioFeedContentConfig(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AudioFeedServiceContext(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for AudioFeedServiceContext;
  v34 = v12;
  sub_218BBD9C0(v3, v12, type metadata accessor for AudioFeedServiceContext);
  sub_218BBD9C0(a1, v9, type metadata accessor for AudioFeedContentConfig);
  v13 = type metadata accessor for AudioFeedServiceConfig(0);
  v14 = v13[7];
  v31 = *(v3 + v13[6]);
  v15 = *(v3 + v13[8]);
  v16 = *(v3 + v14);
  v17 = *(v5 + 16);
  v18 = v3 + v13[9];
  v19 = v35;
  v20 = v36;
  v17(v35, v18, v36);
  v21 = v12;
  v22 = v37;
  sub_218BBD9C0(v21, v37, v32);
  sub_218BBD9C0(v9, v22 + v13[5], type metadata accessor for AudioFeedContentConfig);
  v23 = v22;
  v24 = v31;
  *(v23 + v13[6]) = v31;
  *(v23 + v13[8]) = v15;
  *(v23 + v13[7]) = v16;
  v25 = v20;
  v17((v23 + v13[9]), v19, v20);
  v26 = v24;
  v27 = v15;
  v28 = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
  (*(v33 + 8))(v19, v25);
  sub_218BBD844(v9, type metadata accessor for AudioFeedContentConfig);
  sub_218BBD844(v34, type metadata accessor for AudioFeedServiceContext);
  result = v28;
  *(v37 + v13[10]) = v28;
  return result;
}

uint64_t sub_218BBC1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_219BEEA84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_218BBC27C@<X0>(unsigned int *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_218BBC330@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v49 = sub_219BEEA84();
  v46 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BBD740(0);
  v52 = v4;
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BBD798(0, &unk_280EE66F0, &qword_280E8DE40, 0x277D31330);
  v55 = v6;
  v50 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v54 = &v42 - v7;
  sub_218BBD798(0, &unk_280EE66C0, &qword_280E8DDC0, 0x277D311C0);
  v57 = v8;
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v56 = &v42 - v9;
  v10 = type metadata accessor for AudioFeedContentConfig(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioFeedServiceContext(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BBD900(0, &qword_27CC0EB78, MEMORY[0x277D844C8]);
  v58 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  v20 = a1[3];
  v61 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_218BBD7F0();
  v59 = v19;
  v21 = v60;
  sub_219BF7B34();
  if (!v21)
  {
    v22 = v56;
    v23 = v57;
    v44 = v12;
    v60 = v17;
    LOBYTE(v65) = 0;
    sub_2186E71FC(&unk_27CC0EB88, type metadata accessor for AudioFeedServiceContext, &unk_219C19B88);
    v24 = v58;
    sub_219BF7734();
    v43 = v15;
    LOBYTE(v65) = 1;
    sub_2186E71FC(&qword_280EC8F50, type metadata accessor for AudioFeedContentConfig, &unk_219C11058);
    sub_219BF7734();
    LOBYTE(v65) = 2;
    sub_218BBD964(&qword_280EE66D0, MEMORY[0x277D6CF98]);
    sub_219BF7734();
    sub_219BE3384();
    (*(v53 + 8))(v22, v23);
    v25 = v65;
    LOBYTE(v64) = 3;
    sub_218BBD8A4(&qword_280EE6700, MEMORY[0x277D6CF98]);
    v26 = v54;
    v27 = v55;
    sub_219BF7734();
    sub_219BE3384();
    (*(v50 + 8))(v26, v27);
    v29 = v64;
    LOBYTE(v63) = 4;
    sub_2186E71FC(&qword_280EE6730, sub_218BBD740, MEMORY[0x277D6CF98]);
    v31 = v51;
    v30 = v52;
    sub_219BF7734();
    v32 = v60;
    v57 = v25;
    sub_219BE3384();
    (*(v47 + 8))(v31, v30);
    v33 = v63;
    v62 = 5;
    sub_2186E71FC(&qword_280E91980, MEMORY[0x277D32228], MEMORY[0x277D32238]);
    v35 = v48;
    v34 = v49;
    sub_219BF7734();
    v36 = v45;
    sub_218BBD9C0(v43, v45, type metadata accessor for AudioFeedServiceContext);
    v37 = type metadata accessor for AudioFeedServiceConfig(0);
    sub_218BBD9C0(v44, v36 + v37[5], type metadata accessor for AudioFeedContentConfig);
    *(v36 + v37[6]) = v57;
    *(v36 + v37[8]) = v29;
    *(v36 + v37[7]) = v33;
    v38 = v46;
    (*(v46 + 16))(v36 + v37[9], v35, v34);
    v39 = [v33 autoRefreshMinimumInterval];
    v40 = v34;
    v41 = v39;
    (*(v38 + 8))(v35, v40);
    sub_218BBD844(v44, type metadata accessor for AudioFeedContentConfig);
    sub_218BBD844(v43, type metadata accessor for AudioFeedServiceContext);
    (*(v32 + 8))(v59, v24);
    *(v36 + v37[10]) = v41;
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t sub_218BBCC64(void *a1)
{
  sub_218BBD740(0);
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  MEMORY[0x28223BE20](v2);
  v34 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BBD798(0, &unk_280EE66F0, &qword_280E8DE40, 0x277D31330);
  v6 = *(v5 - 8);
  v37 = v5;
  v38 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  sub_218BBD798(0, &unk_280EE66C0, &qword_280E8DDC0, 0x277D311C0);
  v10 = v9;
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - v11;
  sub_218BBD900(0, &qword_27CC0EB98, MEMORY[0x277D84538]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BBD7F0();
  v18 = v40;
  sub_219BF7B44();
  v48 = 0;
  type metadata accessor for AudioFeedServiceContext(0);
  sub_2186E71FC(&qword_27CC0EBA0, type metadata accessor for AudioFeedServiceContext, &unk_219C19B60);
  v42 = v14;
  v19 = v17;
  v20 = v41;
  sub_219BF7834();
  if (v20)
  {
    return (*(v15 + 8))(v17, v42);
  }

  v41 = v10;
  v33 = v8;
  v21 = type metadata accessor for AudioFeedServiceConfig(0);
  v47 = 1;
  type metadata accessor for AudioFeedContentConfig(0);
  v22 = v19;
  sub_2186E71FC(&qword_27CC0EBA8, type metadata accessor for AudioFeedContentConfig, &unk_219C11030);
  sub_219BF7834();
  v23 = *(v18 + *(v21 + 24));
  sub_2186C6148(0, &qword_280E8DDC0, 0x277D311C0);
  v24 = v23;
  sub_219BE3454();
  v46 = 2;
  sub_218BBD964(&qword_280EE66E0, MEMORY[0x277D6CF90]);
  v25 = v41;
  sub_219BF7834();
  (*(v39 + 8))(v12, v25);
  v41 = v21;
  v26 = *(v18 + *(v21 + 32));
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  v27 = v26;
  v28 = v33;
  sub_219BE3444();
  v45 = 3;
  sub_218BBD8A4(&qword_280EE6710, MEMORY[0x277D6CF90]);
  v29 = v37;
  sub_219BF7834();
  (*(v38 + 8))(v28, v29);
  sub_2186C61E4();
  swift_unknownObjectRetain();
  v31 = v34;
  sub_219BE3424();
  v44 = 4;
  sub_2186E71FC(&qword_280EE6740, sub_218BBD740, MEMORY[0x277D6CF90]);
  v32 = v35;
  sub_219BF7834();
  (*(v36 + 8))(v31, v32);
  v43 = 5;
  sub_219BEEA84();
  sub_2186E71FC(&qword_280E91988, MEMORY[0x277D32228], MEMORY[0x277D32230]);
  sub_219BF7834();
  return (*(v15 + 8))(v22, v42);
}

double sub_218BBD2F8(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

unint64_t sub_218BBD414@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218BBDB40(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_218BBD444(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x747865746E6F63;
  v5 = 0x8000000219CD6AC0;
  v6 = 0xD000000000000016;
  v7 = 0xE900000000000067;
  v8 = 0x69666E6F43707061;
  if (v2 != 4)
  {
    v8 = 0x6C6F506568636163;
    v7 = 0xEB00000000796369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xED00006769666E6FLL;
  v10 = 0x43746E65746E6F63;
  if (v2 != 1)
  {
    v10 = 0xD000000000000010;
    v9 = 0x8000000219CD6AA0;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_218BBD528()
{
  v1 = *v0;
  v2 = 0x747865746E6F63;
  v3 = 0xD000000000000016;
  v4 = 0x69666E6F43707061;
  if (v1 != 4)
  {
    v4 = 0x6C6F506568636163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x43746E65746E6F63;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

unint64_t sub_218BBD608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218BBDB40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218BBD630(uint64_t a1)
{
  v2 = sub_218BBD7F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218BBD66C(uint64_t a1)
{
  v2 = sub_218BBD7F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218BBD6D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218BBD740(uint64_t a1)
{
  if (!qword_280EE6720)
  {
    sub_2186C61E4();
    v1 = sub_219BE3474();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6720);
    }
  }
}

void sub_218BBD798(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2186C6148(255, a3, a4);
    v5 = sub_219BE3474();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_218BBD7F0()
{
  result = qword_27CC0EB80;
  if (!qword_27CC0EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EB80);
  }

  return result;
}

uint64_t sub_218BBD844(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218BBD8A4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_218BBD798(255, &unk_280EE66F0, &qword_280E8DE40, 0x277D31330);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218BBD900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218BBD7F0();
    v7 = a3(a1, &type metadata for AudioFeedServiceConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218BBD964(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_218BBD798(255, &unk_280EE66C0, &qword_280E8DDC0, 0x277D311C0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218BBD9C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_218BBDA3C()
{
  result = qword_27CC0EBB0;
  if (!qword_27CC0EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EBB0);
  }

  return result;
}

unint64_t sub_218BBDA94()
{
  result = qword_27CC0EBB8;
  if (!qword_27CC0EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EBB8);
  }

  return result;
}

unint64_t sub_218BBDAEC()
{
  result = qword_27CC0EBC0;
  if (!qword_27CC0EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0EBC0);
  }

  return result;
}

unint64_t sub_218BBDB40(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

void *sub_218BBDB8C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v137 = a4;
  v149 = a3;
  v130 = a1;
  v133 = sub_219BEB084();
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v134 = (&v127 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218BBF1A8(0);
  MEMORY[0x28223BE20](v5 - 8);
  v131 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_219BE8B34();
  v151 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v147 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v136 = &v127 - v9;
  v135 = v10;
  MEMORY[0x28223BE20](v11);
  v150 = &v127 - v12;
  v139 = sub_219BE71C4();
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v14 = (&v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = sub_219BF3E14();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v127 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MagazineSectionBarLayoutAttributes(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v127 - v20;
  v22 = sub_219BF0DE4();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v146 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v129 = &v127 - v26;
  MEMORY[0x28223BE20](v27);
  v140 = &v127 - v28;
  MEMORY[0x28223BE20](v29);
  v128 = &v127 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v127 - v32;
  v34 = type metadata accessor for MagazineSectionBarLayoutModel(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189512E4(0);
  sub_219BE75E4();
  sub_218BBF200(0);
  v38 = *(v37 + 48);
  v153 = v23;
  v39 = *(v23 + 32);
  v155 = v33;
  v156 = v22;
  v142 = v23 + 32;
  v141 = v39;
  v39(v33, v36, v22);
  sub_218BBF274(&v36[v38], v21);
  sub_218BBF2D8(v21, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v148 = v21;
  if (EnumCaseMultiPayload == 1)
  {
    v41 = v151[4];
    v140 = (v151 + 4);
    v143 = v41;
    (v41)(v150, v18, v154);
    sub_218BBF33C(0);
    v42 = sub_219BF6434();
    sub_218BBF39C(0);
    v44 = v43;
    v45 = swift_allocBox();
    v47 = v46;
    v48 = *(v44 + 48);
    sub_219BE71A4();
    v49 = swift_allocObject();
    *(v49 + 16) = 0x3FE999999999999ALL;
    *(v47 + v48) = v49;
    v50 = *(v138 + 104);
    v51 = v47 + v48;
    v52 = v139;
    v50(v51, *MEMORY[0x277D6D918], v139);
    *v14 = v45;
    v50(v14, *MEMORY[0x277D6D930], v52);
    sub_219BE7304();
    [v42 setFocusEffect_];
    v53 = v155;
    sub_219BF0DA4();
    v54 = sub_2189A6E68(v131);
    v55 = MEMORY[0x21CECCDE0](v54);
    v56 = v134;
    *v134 = v55;
    *(v56 + 1) = v57;
    *(v56 + 2) = v58;
    *(v56 + 3) = v59;
    (*(v132 + 104))(v56, *MEMORY[0x277D6EC30], v133);
    sub_219BE6064();
    swift_allocObject();
    v139 = sub_219BE6044();
    __swift_project_boxed_opaque_existential_1(v152 + 7, v152[10]);
    v149 = v42;
    v60 = sub_219BE7314();
    v138 = v24;
    v61 = v150;
    sub_219BE7A14();

    v145 = swift_allocObject();
    swift_weakInit();
    v62 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v63 = v153 + 16;
    v64 = *(v153 + 16);
    v65 = v129;
    v66 = v156;
    v64(v129, v53, v156);
    v67 = v151 + 2;
    v68 = v151[2];
    v69 = v136;
    v70 = v154;
    v68(v136, v61, v154);
    v64(v146, v65, v66);
    v68(v147, v69, v70);
    v71 = (*(v63 + 64) + 32) & ~*(v63 + 64);
    v72 = (v138 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
    v73 = (*(v67 + 64) + v72 + 8) & ~*(v67 + 64);
    v74 = swift_allocObject();
    *(v74 + 16) = v145;
    *(v74 + 24) = v62;
    v141(v74 + v71, v65, v66);
    *(v74 + v72) = v139;
    (v143)(v74 + v73, v69, v70);

    v144 = v62;

    v75 = sub_219BE7334();
    v76 = swift_allocObject();
    *(v76 + 16) = sub_218BBF404;
    *(v76 + 24) = v74;

    v77 = sub_219BE72F4();
    v78 = swift_allocObject();
    *(v78 + 16) = sub_218BBF404;
    *(v78 + 24) = v74;

    v79 = swift_allocObject();
    *(v79 + 16) = sub_218BBF404;
    *(v79 + 24) = v74;

    sub_219BE20F4();

    __swift_project_boxed_opaque_existential_1(v157, v158);
    v80 = sub_219BE7324();
    sub_219BE1A04();

    __swift_destroy_boxed_opaque_existential_1(v157);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v82 = v156;
    v83 = v154;
    if (Strong)
    {
      v84 = Strong;
      swift_beginAccess();
      v85 = swift_unknownObjectWeakLoadStrong();
      if (v85)
      {
        v86 = v85;
        v87 = v146;
        sub_218BBEF78(v84);
        v88 = v84[10];
        v152 = v84[11];
        __swift_project_boxed_opaque_existential_1(v84 + 7, v88);
        v89 = sub_219BE7314();
        v90 = v147;
        v91 = v87;
        sub_219BE7A04();

        v83 = v154;
        v82 = v156;
      }

      else
      {

        v90 = v147;
        v91 = v146;
      }
    }

    else
    {

      v90 = v147;
      v91 = v146;
    }

    v124 = v151[1];
    v124(v90, v83);
    v125 = *(v153 + 8);
    v125(v91, v82);
    v124(v150, v83);
    sub_218BBF6D4(v148, type metadata accessor for MagazineSectionBarLayoutAttributes);
    v125(v155, v82);
  }

  else
  {
    (*(v144 + 32))(v143, v18, v145);
    sub_218BBF4E4(0);
    v92 = sub_219BF6434();
    sub_218BBF39C(0);
    v94 = v93;
    v95 = swift_allocBox();
    v97 = v96;
    v98 = *(v94 + 48);
    sub_219BE71A4();
    v99 = swift_allocObject();
    *(v99 + 16) = 0x3FE999999999999ALL;
    *(v97 + v98) = v99;
    v100 = *(v138 + 104);
    v101 = v97 + v98;
    v102 = v139;
    v100(v101, *MEMORY[0x277D6D918], v139);
    *v14 = v95;
    v100(v14, *MEMORY[0x277D6D930], v102);
    sub_219BE7304();
    [v92 setFocusEffect_];
    sub_218BBF5C0(0);
    sub_219BE5FC4();
    sub_2196C8ED0();
    sub_218BBF61C(v157);
    __swift_project_boxed_opaque_existential_1(v152 + 2, v152[5]);
    v103 = sub_219BE7314();
    v104 = v155;
    sub_219BF3564();

    v105 = swift_allocObject();
    swift_weakInit();
    v106 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v107 = v153;
    v108 = *(v153 + 16);
    v109 = v128;
    v110 = v104;
    v111 = v156;
    v108(v128, v110, v156);
    v108(v140, v109, v111);
    v112 = (*(v107 + 80) + 32) & ~*(v107 + 80);
    v113 = swift_allocObject();
    *(v113 + 16) = v105;
    *(v113 + 24) = v106;
    v154 = v106;
    v141(v113 + v112, v109, v111);

    v114 = sub_219BE7334();
    v115 = swift_allocObject();
    *(v115 + 16) = sub_218BBF670;
    *(v115 + 24) = v113;

    v116 = sub_219BE72F4();
    v117 = swift_allocObject();
    *(v117 + 16) = sub_218BBF670;
    *(v117 + 24) = v113;

    v118 = swift_allocObject();
    *(v118 + 16) = sub_218BBF670;
    *(v118 + 24) = v113;

    sub_219BE20F4();

    __swift_project_boxed_opaque_existential_1(v157, v158);
    v149 = v92;
    v119 = sub_219BE7324();
    sub_219BE1A04();

    __swift_destroy_boxed_opaque_existential_1(v157);
    v120 = v140;
    sub_218BBED68(v105, v154, v140);

    v121 = *(v107 + 8);
    v122 = v120;
    v123 = v156;
    v121(v122, v156);
    (*(v144 + 8))(v143, v145);
    sub_218BBF6D4(v148, type metadata accessor for MagazineSectionBarLayoutAttributes);
    v121(v155, v123);
  }

  return v149;
}

double sub_218BBED68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_beginAccess();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      sub_218BBEF78(v5);
      __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
      v8 = sub_219BE7314();
      sub_219BF3554();
    }

    else
    {
    }
  }

  return result;
}

double sub_218BBEE6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      sub_218BBEF78(v7);
      __swift_project_boxed_opaque_existential_1((v7 + 56), *(v7 + 80));
      v10 = sub_219BE7314();
      sub_219BE7A04();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_218BBEF78(uint64_t a1)
{
  sub_219BE20E4();
  if (*(&v4[0] + 1))
  {
    v6[8] = v4[8];
    v7[0] = v5[0];
    *(v7 + 9) = *(v5 + 9);
    v6[4] = v4[4];
    v6[5] = v4[5];
    v6[6] = v4[6];
    v6[7] = v4[7];
    v6[0] = v4[0];
    v6[1] = v4[1];
    v6[2] = v4[2];
    v6[3] = v4[3];
    if (sub_219BF0D94() == *&v4[0] && v1 == *(&v6[0] + 1))
    {

LABEL_7:
      sub_218BBF734(v6);
      return 1;
    }

    v2 = sub_219BF78F4();

    if (v2)
    {
      goto LABEL_7;
    }

    sub_218BBF734(v6);
  }

  else
  {
    sub_218BBF6D4(v4, sub_218703F50);
  }

  return 0;
}

uint64_t sub_218BBF070()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_218BBF128()
{
  sub_218BBF4E4(0);
  sub_219BF6454();
  sub_218BBF33C(0);
  return sub_219BF6454();
}

void *sub_218BBF178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  result = sub_218BBDB8C(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

void sub_218BBF1A8(uint64_t a1)
{
  if (!qword_280EE5B08)
  {
    sub_219BE6034();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5B08);
    }
  }
}

void sub_218BBF200(uint64_t a1)
{
  if (!qword_280E90AC8)
  {
    sub_219BF0DE4();
    type metadata accessor for MagazineSectionBarLayoutAttributes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E90AC8);
    }
  }
}

uint64_t sub_218BBF274(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineSectionBarLayoutAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218BBF2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineSectionBarLayoutAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218BBF33C(uint64_t a1)
{
  if (!qword_280EE5208)
  {
    sub_219BEB094();
    v1 = sub_219BE7344();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5208);
    }
  }
}

void sub_218BBF39C(uint64_t a1)
{
  if (!qword_280EE5370)
  {
    sub_219BE71C4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE5370);
    }
  }
}

double sub_218BBF404()
{
  v1 = *(sub_219BF0DE4() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_219BE8B34() - 8);
  v5 = *(v0 + v3);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return sub_218BBEE6C(v6, v7, v0 + v2, v5, v8);
}

void sub_218BBF4E4(uint64_t a1)
{
  if (!qword_280EE5210)
  {
    sub_219BF1424();
    sub_218BBF578(&unk_280E908A8, MEMORY[0x277D33388], MEMORY[0x277D33380]);
    v1 = sub_219BE7344();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5210);
    }
  }
}

uint64_t sub_218BBF578(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218BBF5C0(uint64_t a1)
{
  if (!qword_280EE5B78)
  {
    sub_218951108();
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5B78);
    }
  }
}

double sub_218BBF670()
{
  v1 = *(sub_219BF0DE4() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_218BBED68(v2, v3, v4);
}

uint64_t sub_218BBF6D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_218BBF78C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_218BBF7EC()
{
  sub_218BBF78C();

  return swift_deallocClassInstance();
}

double sub_218BBF848()
{
  v0 = sub_219BDDA14();
  v2 = v1;
  if (qword_27CC08598 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_27CCD8A98);

  v4 = sub_219BE5414();
  v5 = sub_219BF6214();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2186D1058(v0, v2, &v10);
    _os_log_impl(&dword_2186C1000, v4, v5, "Feed loaded view session id=%{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x21CECF960](v7, -1, -1);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  *(v8 + 24) = v2;
  sub_219BDD154();

  return result;
}

double sub_218BBF9F8(uint64_t a1, unint64_t a2)
{
  if (sub_219BDDA14() == a1 && v4 == a2)
  {
  }

  else
  {
    v6 = sub_219BF78F4();

    if ((v6 & 1) == 0)
    {

      sub_219BDDA24();
      if (qword_27CC08598 != -1)
      {
        swift_once();
      }

      v8 = sub_219BE5434();
      __swift_project_value_buffer(v8, qword_27CCD8A98);

      v9 = sub_219BE5414();
      v10 = sub_219BF6214();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v14 = v12;
        *v11 = 136446210;
        *(v11 + 4) = sub_2186D1058(a1, a2, &v14);
        _os_log_impl(&dword_2186C1000, v9, v10, "Updating view session id=%{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v12);
        MEMORY[0x21CECF960](v12, -1, -1);
        MEMORY[0x21CECF960](v11, -1, -1);
      }

      v13 = swift_allocObject();
      *(v13 + 16) = a1;
      *(v13 + 24) = a2;

      sub_219BDD154();
    }
  }

  return result;
}

uint64_t sub_218BBFC40()
{
  v0 = sub_219BDD0A4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_219BDD7A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3378(0);
  sub_219BE5FC4();
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 != *MEMORY[0x277D2FAC8])
  {
    if (v8 == *MEMORY[0x277D2FAD8])
    {
      *v3 = 0x656E696C64616568;
      v9 = 0xE800000000000000;
LABEL_8:
      v3[1] = v9;
      (*(v1 + 104))(v3, *MEMORY[0x277CEAE48], v0);
      sub_219BDD204();
      (*(v1 + 8))(v3, v0);
      return (*(v5 + 8))(v7, v4);
    }

    if (v8 == *MEMORY[0x277D2FAD0])
    {
      *v3 = 0x657069636572;
      v9 = 0xE600000000000000;
      goto LABEL_8;
    }

    if (v8 == *MEMORY[0x277D2FAB0])
    {
      *v3 = 6775156;
      v9 = 0xE300000000000000;
      goto LABEL_8;
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218BBFEAC(uint64_t a1)
{
  v26 = a1;
  v25 = sub_219BE9C04();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDF074();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v29 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE1544();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDBD64();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE1524();
  v27 = *(v15 - 8);
  v28 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[2] = *(v1 + 16);
  sub_219BDBD54();
  v18 = sub_219BDBD44();
  v24[0] = v19;
  v24[1] = v18;
  (*(v12 + 8))(v14, v11);
  (*(v8 + 104))(v10, *MEMORY[0x277D2F3D0], v7);
  sub_219BE9934();
  v20 = (*(v2 + 88))(v4, v25);
  if (v20 == *MEMORY[0x277D6E830])
  {
    v21 = MEMORY[0x277D2D868];
LABEL_6:
    (*(v30 + 104))(v29, *v21, v31);
    sub_219BE1514();
    sub_218BD31D8(&qword_280EE7FE0, 255, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
    v22 = v28;
    sub_219BDD1F4();
    (*(v27 + 8))(v17, v22);
    return sub_219BDD134();
  }

  v21 = MEMORY[0x277D2D810];
  if (v20 == *MEMORY[0x277D6E840] || v20 == *MEMORY[0x277D6E848] || v20 == *MEMORY[0x277D6E838])
  {
    goto LABEL_6;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_218BC034C(uint64_t a1)
{
  v2 = v1;
  v74 = a1;
  v3 = sub_219BDBD34();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_219BE1574();
  v57 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_219BE9C04();
  v49 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v52 = &v47 - v8;
  v9 = sub_219BDF244();
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_219BDEFE4();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_219BE12E4();
  v62 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_219BDF104();
  v59 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDDA34();
  v16 = [v15 sourceChannel];

  sub_219BE01F4();
  swift_unknownObjectRelease();
  v17 = [*(v2 + 168) cachedSubscription];
  sub_219BE12D4();
  v69 = *(v2 + 16);
  v18 = sub_219BDDA34();
  v19 = [v18 identifier];
  sub_219BF5414();

  [v18 isPaid];
  v20 = [v18 totalTime];
  sub_219BF5414();

  sub_219BDEFB4();
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v68 = v21;
  v22 = sub_219BDCD44();
  v23 = *(v22 - 8);
  v66 = *(v23 + 72);
  v24 = *(v23 + 80);
  v25 = (v24 + 32) & ~v24;
  v26 = swift_allocObject();
  v75 = xmmword_219C09BA0;
  *(v26 + 16) = xmmword_219C09BA0;
  v27 = *MEMORY[0x277CEAD18];
  v48 = *(v23 + 104);
  v67 = v27;
  v48(v26 + v25, v27, v22);
  sub_218BD31D8(&qword_280EE8900, 255, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
  v28 = v50;
  sub_219BDD1F4();

  (*(v51 + 8))(v12, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = v75;
  v30 = v27;
  v31 = v48;
  v48(v29 + v25, v30, v22);
  sub_218BD31D8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  sub_219BDD1F4();

  v50 = v24;
  v32 = swift_allocObject();
  *(v32 + 16) = v75;
  v51 = v25;
  v31(v32 + v25, v67, v22);
  sub_218BD31D8(&qword_280EE8090, 255, MEMORY[0x277D2F130], MEMORY[0x277D2F128]);
  sub_219BDD1F4();

  v33 = v52;
  sub_219BE8F44();
  v34 = v54;
  v35 = v49;
  v36 = v53;
  (*(v49 + 32))(v53, v33, v54);
  v37 = (*(v35 + 88))(v36, v34);
  if (v37 == *MEMORY[0x277D6E830])
  {
    (*(v57 + 104))(v55, *MEMORY[0x277D2F428], v56);
  }

  else
  {
    v38 = *(v57 + 104);
    if (v37 == *MEMORY[0x277D6E840] || v37 == *MEMORY[0x277D6E848] || v37 == *MEMORY[0x277D6E838])
    {
      v38(v55, *MEMORY[0x277D2F420], v56);
    }

    else
    {
      v38(v55, *MEMORY[0x277D2F430], v56);
      (*(v35 + 8))(v36, v34);
    }
  }

  v39 = v51;
  v40 = v58;
  sub_219BDF234();
  v41 = swift_allocObject();
  *(v41 + 16) = v75;
  v31(v41 + v39, v67, v22);
  sub_218BD31D8(&qword_280EE8810, 255, MEMORY[0x277D2D9A8], MEMORY[0x277D2D9A0]);
  v42 = v61;
  sub_219BDD1F4();

  (*(v60 + 8))(v40, v42);
  sub_219BDFC64();
  v43 = v63;
  sub_219BE8F64();
  sub_218BD31D8(&qword_27CC0EC50, 255, MEMORY[0x277D2E008], MEMORY[0x277D2E000]);
  sub_219BDD174();
  v44 = v65;
  v45 = *(v64 + 8);
  v45(v43, v65);
  sub_219BE8F54();
  sub_219BDD194();
  v45(v43, v44);
  (*(v62 + 8))(v72, v73);
  return (*(v59 + 8))(v70, v71);
}

void sub_218BC0E6C(unint64_t a1)
{
  sub_218B59134(0);
  v175 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v177 = v170 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = v3;
  MEMORY[0x28223BE20](v4);
  v184 = v170 - v5;
  v174 = sub_219BF04A4();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v172 = v170 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v183 = v7;
  v182 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v181 = v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_219BF0B74();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v178 = v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v192 = v10;
  v191 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v190 = v170 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3734(0);
  v237 = v12;
  v195 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v193 = v13;
  v194 = v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_219BF0F34();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v185 = v170 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v209 = v15;
  v215 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v189 = v170 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v16;
  MEMORY[0x28223BE20](v17);
  v208 = v170 - v18;
  v219 = sub_219BDD7A4();
  v230 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v220 = v170 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3220(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8);
  v198 = v170 - v21;
  v212 = sub_219BE16E4();
  v211 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v217 = v170 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_219BDE814();
  v213 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v205 = v170 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v203 = v170 - v25;
  MEMORY[0x28223BE20](v26);
  v232 = v170 - v27;
  MEMORY[0x28223BE20](v28);
  v210 = v170 - v29;
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v30 - 8);
  v207 = v170 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v229 = v170 - v33;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v34 - 8);
  v225 = v170 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_219BDF584();
  v224 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v216 = v170 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v221 = v170 - v38;
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v39);
  v206 = v170 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3378(0);
  v42 = v41;
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v223 = v170 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = v170 - v46;
  sub_218BD3284(0);
  v49 = v48;
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v222 = v170 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = v170 - v53;
  sub_218BD3828(0);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = v170 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD34A8(0);
  v59 = v58;
  v234 = *(v58 - 1);
  MEMORY[0x28223BE20](v58);
  v236 = v170 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = swift_allocBox();
  v62 = v61;
  v63 = sub_219BE16D4();
  v64 = *(v63 - 8);
  v65 = *(v64 + 56);
  v197 = v62;
  v201 = v63;
  v200 = v65;
  v199 = v64 + 56;
  (v65)(v62, 1, 1);
  sub_219BE7594();
  v235 = a1;
  sub_219BE7564();
  sub_219BE5F84();
  v66 = *(v43 + 8);
  v226 = v42;
  v228 = v43 + 8;
  v218 = v66;
  v66(v47, v42);
  sub_219BEB244();

  v67 = *(v50 + 8);
  v68 = v54;
  v69 = v234;
  v204 = v49;
  v70 = v49;
  v71 = v59;
  v202 = v50 + 8;
  v67(v68, v70);
  if ((*(v69 + 48))(v57, 1, v59) == 1)
  {
    sub_218BD359C(v57, sub_218BD3828);
    v72 = v237;
    v73 = v233;
    v74 = v220;
    v75 = v219;
    v76 = v235;
    v77 = v218;
    goto LABEL_20;
  }

  v171 = v67;
  v78 = v236;
  (*(v69 + 32))(v236, v57, v59);
  sub_219BE7594();
  v79 = v224;
  v80 = v221;
  v81 = v227;
  (*(v224 + 104))(v221, *MEMORY[0x277D2DB48], v227);
  v82 = sub_219BE97D4();
  v83 = v225;
  (*(*(v82 - 8) + 56))(v225, 1, 1, v82);
  v84 = sub_219BDF474();
  (*(*(v84 - 8) + 56))(v229, 1, 1, v84);
  v196 = sub_218E65F90(v78);
  if ((v85 & 1) == 0)
  {
    v170[1] = sub_21968FE54(v83, v78);
    (*(v79 + 16))(v216, v80, v81);
    v86 = v210;
    sub_219BE6934();
    v87 = v213;
    v88 = *(v213 + 32);
    v89 = v232;
    v90 = v86;
    v91 = v214;
    v88(v232, v90, v214);
    v92 = *(v87 + 88);
    v93 = v92(v89, v91);
    v94 = *MEMORY[0x277D30158];
    if (v93 == *MEMORY[0x277D30158])
    {
      (*(v211 + 104))(v217, *MEMORY[0x277D2F608], v212);
    }

    else if (v93 == *MEMORY[0x277D30150])
    {
      (*(v211 + 104))(v217, *MEMORY[0x277D2F6E8], v212);
    }

    else
    {
      if (v93 == *MEMORY[0x277D30168])
      {
        v95 = MEMORY[0x277D2F6C8];
      }

      else
      {
        v95 = MEMORY[0x277D2F818];
      }

      (*(v211 + 104))(v217, *v95, v212);
    }

    v96 = *(v87 + 8);
    v96(v232, v91);
    v97 = sub_219BE6944();
    if (v196 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v196 <= 0x7FFFFFFF)
    {
      v212 = v98;
      v213 = v97;
      v99 = v71;
      v100 = v203;
      v232 = v99;
      sub_219BE6934();
      v101 = v205;
      v88(v205, v100, v91);
      v102 = v92(v101, v91);
      if (v102 == v94 || v102 == *MEMORY[0x277D30150] || v102 == *MEMORY[0x277D30168])
      {
        v96(v101, v91);
        v107 = *MEMORY[0x277D2E6B0];
        v105 = sub_219BE0674();
        v106 = v198;
        (*(*(v105 - 8) + 104))(v198, v107, v105);
      }

      else
      {
        v103 = *MEMORY[0x277D2E6C0];
        v104 = v101;
        v105 = sub_219BE0674();
        v106 = v198;
        (*(*(v105 - 8) + 104))(v198, v103, v105);
        v96(v104, v91);
      }

      v76 = v235;
      v72 = v237;
      v74 = v220;
      v75 = v219;
      v108 = v197;
      v77 = v218;
      sub_219BE0674();
      (*(*(v105 - 8) + 56))(v106, 0, 1, v105);
      v109 = v229;
      sub_218BD7CF0(v229, v207, sub_218B58F30);
      v110 = v206;
      sub_219BE15E4();
      sub_218BD359C(v109, sub_218B58F30);
      sub_218BD359C(v225, sub_218B58900);
      (*(v224 + 8))(v221, v227);
      v171(v222, v204);
      (*(v234 + 8))(v236, v232);
      v200(v110, 0, 1, v201);
      sub_218B58ECC(v110, v108);
      v73 = v233;
LABEL_20:
      v111 = v223;
      sub_219BE7564();
      v112 = v226;
      sub_219BE5FC4();
      v77(v111, v112);
      v113 = v230;
      v114 = (*(v230 + 88))(v74, v75);
      if (v114 != *MEMORY[0x277D2FAC8])
      {
        if (v114 == *MEMORY[0x277D2FAD8])
        {
          (*(v113 + 96))(v74, v75);
          v115 = *(v215 + 32);
          v234 = v215 + 32;
          v236 = v115;
          v116 = v208;
          (v115)(v208, v74, v209);
          v117 = v185;
          sub_219BF07D4();
          v118 = sub_219BF0F14();
          v232 = v118;
          (*(v186 + 8))(v117, v187);
          v119 = v76;
          __swift_project_boxed_opaque_existential_1((v73 + 88), *(v73 + 112));
          v120 = v73;
          v121 = [v118 identifier];
          sub_219BF5414();

          LODWORD(v229) = sub_219BF4774();

          v230 = *(v120 + 16);
          v122 = v195;
          v123 = v72;
          v124 = v194;
          (*(v195 + 16))(v194, v119, v123);
          v125 = v215;
          v126 = v189;
          v127 = v209;
          (*(v215 + 16))(v189, v116, v209);
          v128 = (*(v122 + 80) + 16) & ~*(v122 + 80);
          v129 = (v193 + v128 + 7) & 0xFFFFFFFFFFFFFFF8;
          v235 = (v129 + 15) & 0xFFFFFFFFFFFFFFF8;
          v130 = (v129 + 31) & 0xFFFFFFFFFFFFFFF8;
          v131 = (*(v125 + 80) + v130 + 8) & ~*(v125 + 80);
          v132 = swift_allocObject();
          (*(v122 + 32))(v132 + v128, v124, v123);
          v133 = v231;
          *(v132 + v129) = v232;
          v134 = v132 + v235;
          *v134 = v233;
          *(v134 + 8) = v229 & 1;
          *(v132 + v130) = v133;
          (v236)(v132 + v131, v126, v127);
          swift_unknownObjectRetain();

          sub_219BDD154();
          swift_unknownObjectRelease();

          (*(v215 + 8))(v208, v127);
          goto LABEL_32;
        }

        if (v114 == *MEMORY[0x277D2FAD0])
        {
          (*(v113 + 96))(v74, v75);
          (*(v191 + 32))(v190, v74, v192);
          v135 = v178;
          sub_219BF07D4();
          v136 = sub_219BF0B44();
          (*(v179 + 8))(v135, v180);
          __swift_project_boxed_opaque_existential_1((v73 + 88), *(v73 + 112));
          v137 = v73;
          v138 = [v136 identifier];
          sub_219BF5414();

          LODWORD(v234) = sub_219BF4774();

          v236 = *(v137 + 16);
          v139 = v195;
          v140 = v194;
          (*(v195 + 16))(v194, v76, v72);
          v141 = (*(v139 + 80) + 16) & ~*(v139 + 80);
          v142 = (v193 + v141 + 7) & 0xFFFFFFFFFFFFFFF8;
          v143 = swift_allocObject();
          (*(v139 + 32))(v143 + v141, v140, v72);
          *(v143 + v142) = v136;
          v144 = v143 + ((v142 + 15) & 0xFFFFFFFFFFFFFFF8);
          *v144 = v137;
          *(v144 + 8) = v234 & 1;
          *(v143 + ((v142 + 31) & 0xFFFFFFFFFFFFFFF8)) = v231;

          v145 = v136;
          sub_219BDD154();

          (*(v191 + 8))(v190, v192);
          goto LABEL_32;
        }

        if (v114 == *MEMORY[0x277D2FAB0])
        {
          (*(v113 + 96))(v74, v75);
          (*(v182 + 32))(v181, v74, v183);
          v146 = v172;
          sub_219BF07D4();
          v147 = sub_219BF0404();
          (*(v173 + 8))(v146, v174);
          sub_218718690(v73 + 128, &v238);
          v148 = v239;
          v149 = __swift_project_boxed_opaque_existential_1(&v238, v239);
          v236 = v147;
          v150 = [v147 dismissingIdentifier];
          if (v150)
          {
            v151 = v150;
            v152 = sub_219BF5414();
            v154 = v153;
          }

          else
          {
            v152 = 0;
            v154 = 0;
          }

          v155 = MEMORY[0x28223BE20](v150);
          v157 = v170 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v158 + 16))(v157, v149, v148, v155);
          v159 = v184;
          sub_218A75968(v152, v154, v157, v148, v184);
          __swift_destroy_boxed_opaque_existential_1(&v238);
          v160 = v195;
          v161 = v194;
          v162 = v237;
          (*(v195 + 16))(v194, v235, v237);
          v163 = v159;
          v164 = v177;
          sub_218BD7CF0(v163, v177, sub_218B59134);
          v165 = (*(v160 + 80) + 16) & ~*(v160 + 80);
          v166 = (v193 + v165 + 7) & 0xFFFFFFFFFFFFFFF8;
          v167 = (v166 + 15) & 0xFFFFFFFFFFFFFFF8;
          v168 = (*(v175 + 80) + v167 + 8) & ~*(v175 + 80);
          v169 = swift_allocObject();
          (*(v160 + 32))(v169 + v165, v161, v162);
          *(v169 + v166) = v236;
          *(v169 + v167) = v231;
          sub_218BD385C(v164, v169 + v168);

          swift_unknownObjectRetain();
          sub_219BDD154();
          swift_unknownObjectRelease();

          sub_218BD359C(v184, sub_218B59134);
          (*(v182 + 8))(v181, v183);
          goto LABEL_32;
        }
      }

      (*(v113 + 8))(v74, v75);
LABEL_32:

      return;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_218BC29E4(uint64_t a1)
{
  sub_218BD30E4(0);
  v3 = v2;
  v209 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v206 = v4;
  v207 = &v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_219BDEFE4();
  v208 = *(v225 - 8);
  MEMORY[0x28223BE20](v225);
  v205 = &v189 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = v5;
  MEMORY[0x28223BE20](v6);
  v224 = &v189 - v7;
  sub_218BD3220(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v201 = &v189 - v9;
  v213 = sub_219BE16E4();
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v228 = &v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_219BDE814();
  v241 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v196 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v195 = &v189 - v13;
  MEMORY[0x28223BE20](v14);
  v211 = &v189 - v15;
  MEMORY[0x28223BE20](v16);
  v210 = &v189 - v17;
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v18 - 8);
  v199 = &v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v233 = &v189 - v21;
  v232 = sub_219BDF584();
  v231 = *(v232 - 8);
  MEMORY[0x28223BE20](v232);
  v227 = &v189 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v230 = &v189 - v24;
  sub_218BD3284(0);
  v198 = v25;
  v197 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v229 = &v189 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_219BE16D4();
  v202 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v221 = &v189 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = v27;
  MEMORY[0x28223BE20](v28);
  v222 = &v189 - v29;
  v278 = sub_219BDD374();
  v258 = *(v278 - 8);
  MEMORY[0x28223BE20](v278);
  v277 = &v189 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_219BDEE04();
  v257 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v255 = &v189 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_219BF04A4();
  v279 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v214 = &v189 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v239 = v33;
  v276 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v238 = &v189 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_219BF0B74();
  v275 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v236 = &v189 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v251 = v36;
  v274 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v250 = &v189 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_219BF0F34();
  v267 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v248 = &v189 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v247 = v39;
  v264 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v246 = &v189 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BDD7A4();
  v266 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = (&v189 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218BD3378(0);
  v273 = v44;
  v270 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v272 = &v189 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3410(0);
  v47 = v46 - 8;
  MEMORY[0x28223BE20](v46);
  v49 = &v189 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v50 - 8);
  v52 = &v189 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD34A8(0);
  v54 = v53;
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v57 = &v189 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8EF4();
  v226 = v52;
  v235 = v3;
  v234 = a1;
  sub_219BE8F24();
  v58 = MEMORY[0x277D84F90];
  v281 = MEMORY[0x277D84F90];
  v282 = MEMORY[0x277D84F90];
  v194 = v55;
  v59 = v49;
  (*(v55 + 16))(v49, v57, v54);
  v60 = *(v47 + 44);
  v61 = sub_218BD31D8(&qword_27CC0EC18, 255, sub_218BD34A8, MEMORY[0x277D6D730]);
  v240 = v57;
  sub_219BF5DF4();
  sub_219BF5E84();
  v62 = *(v59 + v60);
  v254 = v58;
  v265 = v54;
  if (v62 != v280)
  {
    v81 = v270++;
    v271 = (v81 + 2);
    v269 = (v266 + 11);
    v268 = *MEMORY[0x277D2FAC8];
    v259 = *MEMORY[0x277D2FAD8];
    v245 = *MEMORY[0x277D2FAD0];
    v193 = v266 + 1;
    v266 += 12;
    v192 = (v276 + 32);
    v191 = (v279 + 8);
    v190 = (v276 + 8);
    v219 = (v274 + 32);
    v218 = (v275 + 8);
    v217 = (v274 + 8);
    v216 = *MEMORY[0x277D2FAB0];
    v244 = (v264 + 32);
    v243 = (v267 + 8);
    v242 = (v264 + 8);
    v253 = v257 + 16;
    v252 = (v257 + 8);
    v275 = (v258 + 8);
    v276 = v258 + 16;
    v254 = MEMORY[0x277D84F90];
    v264 = v41;
    v263 = v43;
    v267 = v59;
    v261 = v60;
    v260 = v61;
    do
    {
      v82 = sub_219BF5EC4();
      v83 = v272;
      v84 = v273;
      (*v271)(v272);
      v82(&v280, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      (*v270)(v83, v84);
      v85 = (*v269)(v43, v41);
      if (v85 == v268)
      {
        (*v266)(v43, v41);
        v86 = *v43;
        v87 = sub_219BE5B44();
        v88 = *(v87 + 16);
        v274 = v86;
        if (v88)
        {
          v280 = MEMORY[0x277D84F90];
          sub_219BF73F4();
          v89 = (*(v257 + 80) + 32) & ~*(v257 + 80);
          v262 = v87;
          v90 = v87 + v89;
          v279 = *(v257 + 72);
          v91 = *(v257 + 16);
          v92 = v256;
          v93 = v255;
          v94 = v252;
          do
          {
            v91(v93, v90, v92);
            sub_219BDEDF4();
            (*v94)(v93, v92);
            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            v90 += v279;
            --v88;
          }

          while (v88);

          v95 = v280;
          v41 = v264;
          v43 = v263;
        }

        else
        {

          v95 = MEMORY[0x277D84F90];
        }

        sub_2191ED6C8(v95);
        v110 = sub_219BE5B34();
        v111 = *(v110 + 16);
        if (v111)
        {
          v280 = MEMORY[0x277D84F90];
          sub_21870B65C(0, v111, 0);
          v112 = v280;
          v113 = (*(v258 + 80) + 32) & ~*(v258 + 80);
          v262 = v110;
          v114 = v110 + v113;
          v279 = *(v258 + 72);
          v115 = *(v258 + 16);
          do
          {
            v117 = v277;
            v116 = v278;
            v115(v277, v114, v278);
            v118 = sub_219BDD364();
            v119 = [v118 identifier];
            v120 = sub_219BF5414();
            v122 = v121;

            (*v275)(v117, v116);
            v280 = v112;
            v124 = *(v112 + 16);
            v123 = *(v112 + 24);
            if (v124 >= v123 >> 1)
            {
              sub_21870B65C((v123 > 1), v124 + 1, 1);
              v112 = v280;
            }

            *(v112 + 16) = v124 + 1;
            v125 = v112 + 16 * v124;
            *(v125 + 32) = v120;
            *(v125 + 40) = v122;
            v114 += v279;
            --v111;
          }

          while (v111);

          v41 = v264;
          v43 = v263;
        }

        else
        {

          v112 = MEMORY[0x277D84F90];
        }

        sub_2191ED3E8(v112);

        v59 = v267;
        v60 = v261;
      }

      else if (v85 == v259)
      {
        (*v266)(v43, v41);
        v96 = v246;
        v97 = v247;
        (*v244)(v246, v43, v247);
        v98 = v248;
        sub_219BF07D4();
        sub_219BF0F14();
        v99 = (*v243)(v98, v249);
        MEMORY[0x21CECC690](v99);
        if (*((v282 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v282 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        (*v242)(v96, v97);
        v59 = v267;
      }

      else if (v85 == v245)
      {
        (*v266)(v43, v41);
        (*v219)(v250, v43, v251);
        v100 = v236;
        sub_219BF07D4();
        v101 = sub_219BF0B44();
        (*v218)(v100, v237);
        v102 = [v101 identifier];

        v103 = sub_219BF5414();
        v105 = v104;

        v106 = v281;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = sub_218840D24(0, *(v106 + 2) + 1, 1, v106);
        }

        v108 = *(v106 + 2);
        v107 = *(v106 + 3);
        if (v108 >= v107 >> 1)
        {
          v106 = sub_218840D24((v107 > 1), v108 + 1, 1, v106);
        }

        (*v217)(v250, v251);
        *(v106 + 2) = v108 + 1;
        v109 = &v106[16 * v108];
        *(v109 + 4) = v103;
        *(v109 + 5) = v105;
        v281 = v106;
        v59 = v267;
      }

      else if (v85 == v216)
      {
        (*v266)(v43, v41);
        (*v192)(v238, v43, v239);
        v126 = v214;
        sub_219BF07D4();
        v127 = sub_219BF0404();
        (*v191)(v126, v215);
        v128 = [v127 identifier];
        swift_unknownObjectRelease();
        v129 = sub_219BF5414();
        v131 = v130;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v254 = sub_218840D24(0, *(v254 + 2) + 1, 1, v254);
        }

        v133 = *(v254 + 2);
        v132 = *(v254 + 3);
        if (v133 >= v132 >> 1)
        {
          v254 = sub_218840D24((v132 > 1), v133 + 1, 1, v254);
        }

        (*v190)(v238, v239);
        v134 = v254;
        *(v254 + 2) = v133 + 1;
        v135 = &v134[16 * v133];
        *(v135 + 4) = v129;
        *(v135 + 5) = v131;
        v59 = v267;
      }

      else
      {
        (*v193)(v43, v41);
      }

      sub_219BF5E84();
    }

    while (*(v59 + v60) != v280);
  }

  sub_218BD359C(v59, sub_218BD3410);
  sub_219BE8F04();
  v63 = v231;
  v64 = v230;
  v65 = v232;
  (*(v231 + 104))(v230, *MEMORY[0x277D2DB48], v232);
  v67 = v281;
  v66 = v282;
  v68 = sub_219BDF474();
  (*(*(v68 - 8) + 56))(v233, 1, 1, v68);
  v69 = v240;
  result = sub_218E65F90(v240);
  if (v71)
  {
    goto LABEL_74;
  }

  v72 = result;
  LODWORD(v279) = sub_21968FE54(v226, v69);
  (*(v63 + 16))(v227, v64, v65);
  v73 = v210;
  sub_219BE6934();
  v74 = v241;
  v75 = (v241 + 32);
  v76 = *(v241 + 32);
  v77 = v211;
  v78 = v73;
  v79 = v220;
  v76(v211, v78, v220);
  v277 = *(v74 + 88);
  v278 = v74 + 88;
  v80 = (v277)(v77, v79);
  LODWORD(v276) = *MEMORY[0x277D30158];
  if (v80 == v276)
  {
    (*(v212 + 104))(v228, *MEMORY[0x277D2F608], v213);
  }

  else if (v80 == *MEMORY[0x277D30150])
  {
    (*(v212 + 104))(v228, *MEMORY[0x277D2F6E8], v213);
  }

  else
  {
    if (v80 == *MEMORY[0x277D30168])
    {
      v136 = MEMORY[0x277D2F6C8];
    }

    else
    {
      v136 = MEMORY[0x277D2F818];
    }

    (*(v212 + 104))(v228, *v136, v213);
  }

  v138 = *(v74 + 8);
  v137 = v74 + 8;
  v275 = v138;
  (v138)(v77, v79);
  v139 = sub_219BE6944();
  if (v72 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_71;
  }

  if (v72 > 0x7FFFFFFF)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v272 = v76;
  v241 = v137;
  v273 = v140;
  v274 = v139;
  if (!(v66 >> 62))
  {
    v141 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_48;
  }

LABEL_72:
  v141 = sub_219BF7214();
LABEL_48:
  if (v141)
  {
    v280 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v141 & ~(v141 >> 63), 0);
    if ((v141 & 0x8000000000000000) == 0)
    {
      v269 = v75;
      v270 = v72;
      v271 = v67;
      v142 = v280;
      if ((v66 & 0xC000000000000001) != 0)
      {
        v143 = 0;
        do
        {
          MEMORY[0x21CECE0F0](v143, v66);
          v144 = [swift_unknownObjectRetain() articleID];
          v145 = sub_219BF5414();
          v147 = v146;
          swift_unknownObjectRelease_n();

          v280 = v142;
          v149 = *(v142 + 16);
          v148 = *(v142 + 24);
          if (v149 >= v148 >> 1)
          {
            sub_21870B65C((v148 > 1), v149 + 1, 1);
            v142 = v280;
          }

          ++v143;
          *(v142 + 16) = v149 + 1;
          v150 = v142 + 16 * v149;
          *(v150 + 32) = v145;
          *(v150 + 40) = v147;
        }

        while (v141 != v143);
      }

      else
      {
        v152 = v66 + 32;
        do
        {
          v153 = [swift_unknownObjectRetain_n() articleID];
          v154 = sub_219BF5414();
          v156 = v155;
          swift_unknownObjectRelease_n();

          v280 = v142;
          v158 = *(v142 + 16);
          v157 = *(v142 + 24);
          if (v158 >= v157 >> 1)
          {
            sub_21870B65C((v157 > 1), v158 + 1, 1);
            v142 = v280;
          }

          *(v142 + 16) = v158 + 1;
          v159 = v142 + 16 * v158;
          *(v159 + 32) = v154;
          *(v159 + 40) = v156;
          v152 += 8;
          --v141;
        }

        while (v141);
      }

      v151 = v201;
      v79 = v220;
      goto LABEL_62;
    }

    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  v151 = v201;
LABEL_62:
  v160 = v195;
  sub_219BE6934();
  v161 = v196;
  (v272)(v196, v160, v79);
  v162 = (v277)(v161, v79);
  if (v162 == v276 || (v162 != *MEMORY[0x277D30150] ? (v163 = v162 == *MEMORY[0x277D30168]) : (v163 = 1), v163))
  {
    (v275)(v161, v79);
    v167 = *MEMORY[0x277D2E6B0];
    v166 = sub_219BE0674();
    (*(*(v166 - 8) + 104))(v151, v167, v166);
  }

  else
  {
    v164 = *MEMORY[0x277D2E6C0];
    v165 = v161;
    v166 = sub_219BE0674();
    (*(*(v166 - 8) + 104))(v151, v164, v166);
    (v275)(v165, v79);
  }

  sub_219BE0674();
  (*(*(v166 - 8) + 56))(v151, 0, 1, v166);
  v168 = v233;
  sub_218BD7CF0(v233, v199, sub_218B58F30);
  v169 = v222;
  sub_219BE15E4();

  sub_218BD359C(v168, sub_218B58F30);
  (*(v231 + 8))(v230, v232);
  (*(v197 + 8))(v229, v198);
  v170 = v204;
  v171 = sub_219BDDA34();
  v172 = [v171 identifier];
  sub_219BF5414();

  [v171 isPaid];
  v173 = [v171 totalTime];
  sub_219BF5414();

  v174 = v224;
  sub_219BDEFB4();

  v279 = *(v170 + 16);
  v175 = v202;
  (*(v202 + 16))(v221, v169, v223);
  v176 = v208;
  v177 = v205;
  (*(v208 + 16))(v205, v174, v225);
  v178 = v209;
  v179 = v207;
  v180 = v235;
  (*(v209 + 16))(v207, v234, v235);
  v181 = (*(v175 + 80) + 16) & ~*(v175 + 80);
  v182 = (v200 + *(v176 + 80) + v181) & ~*(v176 + 80);
  v183 = (v203 + *(v178 + 80) + v182) & ~*(v178 + 80);
  v184 = swift_allocObject();
  v185 = v184 + v181;
  v186 = v223;
  (*(v175 + 32))(v185, v221, v223);
  v187 = v184 + v182;
  v188 = v225;
  (*(v176 + 32))(v187, v177, v225);
  (*(v178 + 32))(v184 + v183, v179, v180);
  sub_219BDD154();

  (*(v176 + 8))(v224, v188);
  (*(v175 + 8))(v222, v186);
  sub_218BD359C(v226, sub_218B58900);
  return (*(v194 + 8))(v240, v265);
}

void sub_218BC4A78(uint64_t a1, char *a2, uint64_t a3)
{
  v383 = a3;
  v380 = a2;
  v342 = a1;
  sub_218B58D38(0);
  v343 = v4;
  v295 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v294 = v5;
  v299 = &v276 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  v291 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v289 = &v276 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v293 = &v276 - v9;
  v292 = v10;
  MEMORY[0x28223BE20](v11);
  v297 = &v276 - v12;
  v332 = sub_219BF0614();
  v333 = *(v332 - 8);
  MEMORY[0x28223BE20](v332);
  v331 = &v276 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v327 = v14;
  v326 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v325 = &v276 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3220(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8);
  v311 = &v276 - v17;
  v314 = sub_219BE16E4();
  v313 = *(v314 - 8);
  MEMORY[0x28223BE20](v314);
  v320 = &v276 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v319 = sub_219BDE814();
  v348 = *(v319 - 8);
  MEMORY[0x28223BE20](v319);
  v308 = &v276 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v307 = &v276 - v21;
  MEMORY[0x28223BE20](v22);
  v335 = &v276 - v23;
  MEMORY[0x28223BE20](v24);
  v312 = &v276 - v25;
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v26 - 8);
  v310 = &v276 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v324 = &v276 - v29;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v30 - 8);
  v340 = &v276 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = sub_219BDF584();
  v322 = *(v323 - 8);
  MEMORY[0x28223BE20](v323);
  v318 = &v276 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v321 = &v276 - v34;
  sub_218B58D58(0);
  v379 = v35;
  MEMORY[0x28223BE20](v35);
  v309 = &v276 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v382 = sub_219BDD374();
  v361 = *(v382 - 1);
  MEMORY[0x28223BE20](v382);
  v381 = &v276 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v359 = sub_219BDEE04();
  v360 = *(v359 - 8);
  MEMORY[0x28223BE20](v359);
  v358 = &v276 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_219BF04A4();
  v305 = *(v316 - 8);
  MEMORY[0x28223BE20](v316);
  v288 = &v276 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v290 = &v276 - v41;
  v287 = v42;
  MEMORY[0x28223BE20](v43);
  v315 = &v276 - v44;
  sub_2186EB018(0);
  v338 = v45;
  v373 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v337 = &v276 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v357 = sub_219BF0F34();
  v306 = *(v357 - 8);
  MEMORY[0x28223BE20](v357);
  v296 = &v276 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v356 = &v276 - v49;
  sub_2186EAB88(0);
  v364 = v50;
  v363 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v355 = &v276 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v339 = sub_219BF0B74();
  v304 = *(v339 - 8);
  MEMORY[0x28223BE20](v339);
  v286 = &v276 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v334 = &v276 - v54;
  v285 = v55;
  MEMORY[0x28223BE20](v56);
  v336 = &v276 - v57;
  sub_2186EB308(0);
  v354 = v58;
  v351 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v353 = &v276 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v365 = sub_219BDD7A4();
  v366 = *(v365 - 8);
  MEMORY[0x28223BE20](v365);
  v376 = (&v276 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218BD3378(0);
  v375 = v61;
  v369 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v374 = &v276 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3410(0);
  v64 = v63;
  MEMORY[0x28223BE20](v63);
  v377 = &v276 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD34A8(0);
  v67 = v66;
  v68 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v70 = &v276 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3828(0);
  MEMORY[0x28223BE20](v71 - 8);
  v73 = &v276 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74);
  v76 = &v276 - v75;
  sub_218BD3284(0);
  v78 = v77;
  v330 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v80 = &v276 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = v3;
  v386 = v3[5];
  sub_218BD5CD4(0);
  sub_218BD31D8(&qword_27CC0EC68, 255, sub_218BD5CD4, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  v329 = v78;
  v349 = v80;
  sub_219BEB244();
  v81 = v68;
  v341 = swift_allocBox();
  v83 = v82;
  v84 = sub_219BE16D4();
  v85 = *(v84 - 8);
  v86 = *(v85 + 56);
  v87 = v85 + 56;
  v86(v83, 1, 1, v84);
  v328 = v76;
  sub_218BD7CF0(v76, v73, sub_218BD3828);
  if ((*(v81 + 48))(v73, 1, v67) == 1)
  {
    sub_218BD359C(v73, sub_218BD3828);
    goto LABEL_73;
  }

  v280 = v87;
  v281 = v86;
  v282 = v84;
  v283 = v83;
  (*(v81 + 32))(v70, v73, v67);
  v88 = MEMORY[0x277D84F90];
  v384 = MEMORY[0x277D84F90];
  v385 = MEMORY[0x277D84F90];
  v284 = v81;
  v89 = v377;
  (*(v81 + 16))(v377, v70, v67);
  v90 = *(v64 + 36);
  v91 = sub_218BD31D8(&qword_27CC0EC18, 255, sub_218BD34A8, MEMORY[0x277D6D730]);
  v317 = v70;
  sub_219BF5DF4();
  v92 = v89;
  sub_219BF5E84();
  v93 = *&v90[v89];
  v352 = v88;
  v378 = v67;
  v94 = v364;
  v95 = v365;
  v96 = v376;
  if (v93 != v386)
  {
    v370 = (v369 + 2);
    ++v369;
    v368 = (v366 + 11);
    v279 = v366 + 1;
    v367 = *MEMORY[0x277D2FAC8];
    v362 = *MEMORY[0x277D2FAD8];
    v347 = *MEMORY[0x277D2FAD0];
    v366 += 12;
    v278 = (v373 + 32);
    v277 = (v305 + 8);
    v276 = (v373 + 8);
    v303 = (v351 + 32);
    v302 = (v304 + 8);
    v301 = (v351 + 8);
    v346 = (v363 + 32);
    v300 = *MEMORY[0x277D2FAB0];
    v345 = (v306 + 8);
    v344 = (v363 + 8);
    v379 = (v361 + 8);
    v380 = (v361 + 16);
    v352 = MEMORY[0x277D84F90];
    v371 = v91;
    v372 = v90;
    v351 = v360 + 16;
    v350 = (v360 + 8);
    do
    {
      v117 = v94;
      v118 = sub_219BF5EC4();
      v120 = v374;
      v119 = v375;
      (*v370)(v374);
      v118(&v386, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      (*v369)(v120, v119);
      v121 = (*v368)(v96, v95);
      if (v121 == v367)
      {
        (*v366)(v96, v95);
        v122 = *v96;
        v123 = sub_219BE5B44();
        v124 = *(v123 + 16);
        v373 = v122;
        if (v124)
        {
          v386 = MEMORY[0x277D84F90];
          sub_219BF73F4();
          v125 = (*(v360 + 80) + 32) & ~*(v360 + 80);
          v363 = v123;
          v126 = v123 + v125;
          v383 = *(v360 + 72);
          v127 = *(v360 + 16);
          v128 = v359;
          v129 = v358;
          v130 = v350;
          do
          {
            v127(v129, v126, v128);
            sub_219BDEDF4();
            (*v130)(v129, v128);
            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            v126 += v383;
            --v124;
          }

          while (v124);

          v131 = v386;
        }

        else
        {

          v131 = MEMORY[0x277D84F90];
        }

        sub_2191ED6C8(v131);
        v145 = sub_219BE5B34();
        v146 = *(v145 + 16);
        if (v146)
        {
          v386 = MEMORY[0x277D84F90];
          sub_21870B65C(0, v146, 0);
          v147 = v386;
          v148 = (*(v361 + 80) + 32) & ~*(v361 + 80);
          v363 = v145;
          v149 = v145 + v148;
          v383 = *(v361 + 72);
          v150 = *(v361 + 16);
          do
          {
            v151 = v381;
            v152 = v382;
            v150(v381, v149, v382);
            v153 = sub_219BDD364();
            v154 = [v153 identifier];
            v155 = sub_219BF5414();
            v157 = v156;

            (*v379)(v151, v152);
            v386 = v147;
            v159 = *(v147 + 16);
            v158 = *(v147 + 24);
            if (v159 >= v158 >> 1)
            {
              sub_21870B65C((v158 > 1), v159 + 1, 1);
              v147 = v386;
            }

            *(v147 + 16) = v159 + 1;
            v160 = v147 + 16 * v159;
            *(v160 + 32) = v155;
            *(v160 + 40) = v157;
            v149 += v383;
            --v146;
          }

          while (v146);
        }

        else
        {

          v147 = MEMORY[0x277D84F90];
        }

        sub_2191ED3E8(v147);

        v94 = v364;
        v95 = v365;
        v96 = v376;
        v92 = v377;
        v116 = v372;
        goto LABEL_9;
      }

      if (v121 == v362)
      {
        (*v366)(v96, v95);
        v94 = v117;
        v132 = v355;
        (*v346)();
        v133 = v356;
        sub_219BF07D4();
        sub_219BF0F14();
        v134 = (*v345)(v133, v357);
        MEMORY[0x21CECC690](v134);
        if (*((v384 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v384 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        (*v344)(v132, v94);
        v96 = v376;
      }

      else
      {
        v94 = v117;
        if (v121 == v347)
        {
          (*v366)(v96, v95);
          (*v303)(v353, v96, v354);
          v135 = v336;
          sub_219BF07D4();
          v136 = sub_219BF0B44();
          (*v302)(v135, v339);
          v137 = [v136 identifier];

          v138 = sub_219BF5414();
          v140 = v139;

          v141 = v385;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v141 = sub_218840D24(0, *(v141 + 2) + 1, 1, v141);
          }

          v143 = *(v141 + 2);
          v142 = *(v141 + 3);
          if (v143 >= v142 >> 1)
          {
            v141 = sub_218840D24((v142 > 1), v143 + 1, 1, v141);
          }

          (*v301)(v353, v354);
          *(v141 + 2) = v143 + 1;
          v144 = &v141[16 * v143];
          *(v144 + 4) = v138;
          *(v144 + 5) = v140;
          v385 = v141;
LABEL_40:
          v95 = v365;
          v96 = v376;
          v92 = v377;
          v116 = v372;
          goto LABEL_9;
        }

        if (v121 == v300)
        {
          (*v366)(v96, v95);
          (*v278)(v337, v96, v338);
          v161 = v315;
          sub_219BF07D4();
          v162 = sub_219BF0404();
          (*v277)(v161, v316);
          v163 = [v162 identifier];
          swift_unknownObjectRelease();
          v164 = sub_219BF5414();
          v166 = v165;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v352 = sub_218840D24(0, *(v352 + 2) + 1, 1, v352);
          }

          v168 = *(v352 + 2);
          v167 = *(v352 + 3);
          if (v168 >= v167 >> 1)
          {
            v352 = sub_218840D24((v167 > 1), v168 + 1, 1, v352);
          }

          (*v276)(v337, v338);
          v169 = v352;
          *(v352 + 2) = v168 + 1;
          v170 = &v169[16 * v168];
          *(v170 + 4) = v164;
          *(v170 + 5) = v166;
          goto LABEL_40;
        }

        (*v279)(v96, v95);
      }

      v92 = v377;
      v116 = v372;
LABEL_9:
      sub_219BF5E84();
    }

    while (*&v116[v92] != v386);
  }

  sub_218BD359C(v92, sub_218BD3410);
  v97 = v322;
  v98 = v321;
  v99 = v323;
  (*(v322 + 104))(v321, *MEMORY[0x277D2DB48], v323);
  v100 = v384;
  v382 = v385;
  v101 = sub_219BE97D4();
  v102 = v340;
  (*(*(v101 - 8) + 56))(v340, 1, 1, v101);
  v103 = sub_219BDF474();
  (*(*(v103 - 8) + 56))(v324, 1, 1, v103);
  v104 = v317;
  v105 = sub_218E65F90(v317);
  if ((v106 & 1) == 0)
  {
    v107 = v105;
    LODWORD(v381) = sub_21968FE54(v102, v104);
    (*(v97 + 16))(v318, v98, v99);
    v108 = v312;
    sub_219BE6934();
    v109 = v348;
    v111 = v348 + 32;
    v110 = *(v348 + 4);
    v112 = v335;
    v113 = v108;
    v114 = v319;
    v110(v335, v113, v319);
    v379 = *(v109 + 11);
    v380 = v109 + 88;
    v115 = v379(v112, v114);
    LODWORD(v377) = *MEMORY[0x277D30158];
    if (v115 == v377)
    {
      (*(v313 + 104))(v320, *MEMORY[0x277D2F608], v314);
    }

    else if (v115 == *MEMORY[0x277D30150])
    {
      (*(v313 + 104))(v320, *MEMORY[0x277D2F6E8], v314);
    }

    else
    {
      if (v115 == *MEMORY[0x277D30168])
      {
        v171 = MEMORY[0x277D2F6C8];
      }

      else
      {
        v171 = MEMORY[0x277D2F818];
      }

      (*(v313 + 104))(v320, *v171, v314);
    }

    v173 = *(v109 + 1);
    v172 = v109 + 8;
    v376 = v173;
    (v173)(v335, v114);
    v174 = sub_219BE6944();
    if (v107 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v107 <= 0x7FFFFFFF)
    {
      v114 = v174;
      v104 = v175;
      v373 = v110;
      v348 = v172;
      if (!(v100 >> 62))
      {
        v176 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_52:
        v383 = v107;
        v374 = v104;
        v375 = v114;
        if (v176)
        {
          v386 = MEMORY[0x277D84F90];
          v177 = &v386;
          v178 = sub_21870B65C(0, v176 & ~(v176 >> 63), 0);
          if (v176 < 0)
          {
            __break(1u);
            goto LABEL_103;
          }

          v372 = v111;
          v179 = v386;
          if ((v100 & 0xC000000000000001) != 0)
          {
            v180 = 0;
            do
            {
              MEMORY[0x21CECE0F0](v180, v100);
              v181 = [swift_unknownObjectRetain() articleID];
              v182 = sub_219BF5414();
              v184 = v183;
              swift_unknownObjectRelease_n();

              v386 = v179;
              v186 = *(v179 + 16);
              v185 = *(v179 + 24);
              if (v186 >= v185 >> 1)
              {
                sub_21870B65C((v185 > 1), v186 + 1, 1);
                v179 = v386;
              }

              ++v180;
              *(v179 + 16) = v186 + 1;
              v187 = v179 + 16 * v186;
              *(v187 + 32) = v182;
              *(v187 + 40) = v184;
            }

            while (v176 != v180);
          }

          else
          {
            v188 = v100 + 32;
            do
            {
              v189 = [swift_unknownObjectRetain_n() articleID];
              v190 = sub_219BF5414();
              v192 = v191;
              swift_unknownObjectRelease_n();

              v386 = v179;
              v194 = *(v179 + 16);
              v193 = *(v179 + 24);
              if (v194 >= v193 >> 1)
              {
                sub_21870B65C((v193 > 1), v194 + 1, 1);
                v179 = v386;
              }

              *(v179 + 16) = v194 + 1;
              v195 = v179 + 16 * v194;
              *(v195 + 32) = v190;
              *(v195 + 40) = v192;
              v188 += 8;
              --v176;
            }

            while (v176);
          }

          v102 = v340;
        }

        v196 = v307;
        sub_219BE6934();
        v197 = v308;
        v198 = v319;
        (v373)(v308, v196, v319);
        v199 = v379(v197, v198);
        v200 = v322;
        v201 = v321;
        if (v199 == v377 || (v199 != *MEMORY[0x277D30150] ? (v202 = v199 == *MEMORY[0x277D30168]) : (v202 = 1), v202))
        {
          (v376)(v197, v198);
          v210 = *MEMORY[0x277D2E6B0];
          v205 = sub_219BE0674();
          v209 = v311;
          (*(*(v205 - 8) + 104))(v311, v210, v205);
        }

        else
        {
          v203 = *MEMORY[0x277D2E6C0];
          v204 = v197;
          v205 = sub_219BE0674();
          v206 = v201;
          v207 = v311;
          (*(*(v205 - 8) + 104))(v311, v203, v205);
          v208 = v198;
          v209 = v207;
          v201 = v206;
          v102 = v340;
          (v376)(v204, v208);
        }

        sub_219BE0674();
        (*(*(v205 - 8) + 56))(v209, 0, 1, v205);
        v211 = v324;
        sub_218BD7CF0(v324, v310, sub_218B58F30);
        v212 = v309;
        sub_219BE15E4();

        sub_218BD359C(v211, sub_218B58F30);
        sub_218BD359C(v102, sub_218B58900);
        (*(v200 + 8))(v201, v323);
        (*(v284 + 8))(v317, v378);
        v281(v212, 0, 1, v282);
        sub_218B58ECC(v212, v283);
LABEL_73:
        v172 = v331;
        v213 = v334;
        v214 = v325;
        sub_219BE7564();
        v215 = v327;
        sub_219BE5FD4();
        (*(v326 + 8))(v214, v215);
        v100 = v333;
        v177 = v332;
        v178 = (*(v333 + 88))(v172, v332);
        if (v178 == *MEMORY[0x277D32DB8] || v178 == *MEMORY[0x277D32D10] || v178 == *MEMORY[0x277D32E00])
        {
          goto LABEL_76;
        }

        if (v178 == *MEMORY[0x277D32E10])
        {
          (*(v100 + 96))(v172, v177);
          (*(v306 + 32))(v296, v172, v357);
          v216 = sub_219BF0F14();
          sub_218718690((v298 + 16), &v386);
          v217 = v387;
          v218 = __swift_project_boxed_opaque_existential_1(&v386, v387);
          v219 = [v216 respondsToSelector_];
          v383 = v216;
          if ((v219 & 1) != 0 && (v219 = [v216 dismissingIdentifier]) != 0)
          {
            v220 = v219;
            v221 = sub_219BF5414();
            v223 = v222;
          }

          else
          {
            v221 = 0;
            v223 = 0;
          }

          v231 = MEMORY[0x28223BE20](v219);
          v233 = &v276 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v234 + 16))(v233, v218, v217, v231);
          v235 = v297;
          sub_218A75968(v221, v223, v233, v217, v297);
          __swift_destroy_boxed_opaque_existential_1(&v386);
          v236 = v298;
          v382 = v298[2];
          v237 = v295;
          v238 = v343;
          (*(v295 + 16))(v299, v342, v343);
          v239 = v235;
          v240 = v293;
          sub_218BD7CF0(v239, v293, sub_218B59134);
          v241 = (*(v237 + 80) + 24) & ~*(v237 + 80);
          v242 = (v294 + v241 + 7) & 0xFFFFFFFFFFFFFFF8;
          v243 = (*(v291 + 80) + v242 + 8) & ~*(v291 + 80);
          v244 = (v292 + v243 + 7) & 0xFFFFFFFFFFFFFFF8;
          v245 = swift_allocObject();
          *(v245 + 16) = v383;
          (*(v237 + 32))(v245 + v241, v299, v238);
          *(v245 + v242) = v236;
          sub_218BD385C(v240, v245 + v243);
          *(v245 + v244) = v341;
          swift_unknownObjectRetain();

          sub_219BDD154();
          swift_unknownObjectRelease();

          sub_218BD359C(v297, sub_218B59134);
          (*(v306 + 8))(v296, v357);
          goto LABEL_90;
        }

        if (v178 == *MEMORY[0x277D32E18] || v178 == *MEMORY[0x277D32DD8] || v178 == *MEMORY[0x277D32CF8])
        {
          goto LABEL_76;
        }

        if (v178 == *MEMORY[0x277D32DC0])
        {
          (*(v100 + 96))(v172, v177);
          v382 = *(v305 + 32);
          v383 = v305 + 32;
          (v382)(v290, v172, v316);
          sub_218718690((v298 + 16), &v386);
          v224 = v387;
          v225 = __swift_project_boxed_opaque_existential_1(&v386, v387);
          v226 = [sub_219BF0404() dismissingIdentifier];
          v227 = swift_unknownObjectRelease();
          if (v226)
          {
            v228 = sub_219BF5414();
            v230 = v229;
          }

          else
          {
            v228 = 0;
            v230 = 0;
          }

          v258 = MEMORY[0x28223BE20](v227);
          v260 = &v276 - ((v259 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v261 + 16))(v260, v225, v224, v258);
          v262 = v289;
          sub_218A75968(v228, v230, v260, v224, v289);
          __swift_destroy_boxed_opaque_existential_1(&v386);
          v381 = v298[2];
          v263 = v295;
          v264 = v343;
          (*(v295 + 16))(v299, v342, v343);
          v265 = v305;
          v266 = v288;
          (*(v305 + 16))(v288, v290, v316);
          v267 = v293;
          sub_218BD7CF0(v262, v293, sub_218B59134);
          v268 = (*(v263 + 80) + 16) & ~*(v263 + 80);
          v269 = (v294 + *(v265 + 80) + v268) & ~*(v265 + 80);
          v270 = (v287 + *(v291 + 80) + v269) & ~*(v291 + 80);
          v271 = (v292 + v270 + 7) & 0xFFFFFFFFFFFFFFF8;
          v272 = swift_allocObject();
          (*(v263 + 32))(v272 + v268, v299, v264);
          v273 = v316;
          (v382)(v272 + v269, v266, v316);
          sub_218BD385C(v267, v272 + v270);
          *(v272 + v271) = v341;

          sub_219BDD154();

          sub_218BD359C(v289, sub_218B59134);
          (*(v265 + 8))(v290, v273);
          goto LABEL_90;
        }

        if (v178 == *MEMORY[0x277D32CF0] || v178 == *MEMORY[0x277D32E08] || v178 == *MEMORY[0x277D32DB0] || v178 == *MEMORY[0x277D32DE0])
        {
LABEL_76:
          sub_218BD359C(v328, sub_218BD3828);
          (*(v330 + 8))(v349, v329);
          (*(v100 + 8))(v172, v177);
          goto LABEL_77;
        }

        if (v178 == *MEMORY[0x277D32DF0])
        {
          (*(v100 + 96))(v172, v177);
          v246 = v304;
          v247 = *(v304 + 32);
          v382 = (v304 + 32);
          v383 = v247;
          v247(v213, v172, v339);
          v248 = v298;
          __swift_project_boxed_opaque_existential_1(v298 + 11, v298[14]);
          sub_219BF0AF4();
          LODWORD(v380) = sub_219BF4774();

          v381 = v248[2];
          v249 = v295;
          v250 = v343;
          (*(v295 + 16))(v299, v342, v343);
          v251 = v286;
          v252 = v339;
          (*(v246 + 16))(v286, v213, v339);
          v253 = (*(v249 + 80) + 16) & ~*(v249 + 80);
          v254 = (v294 + *(v246 + 80) + v253) & ~*(v246 + 80);
          v379 = ((v254 + v285 + 7) & 0xFFFFFFFFFFFFFFF8);
          v255 = (v254 + v285 + 23) & 0xFFFFFFFFFFFFFFF8;
          v256 = swift_allocObject();
          (*(v249 + 32))(v256 + v253, v299, v250);
          (v383)(v256 + v254, v251, v252);
          v257 = v379 + v256;
          *v257 = v248;
          v257[8] = v380 & 1;
          *(v256 + v255) = v341;

          sub_219BDD154();

          (*(v246 + 8))(v334, v252);
LABEL_90:
          sub_218BD359C(v328, sub_218BD3828);
          (*(v330 + 8))(v349, v329);
          goto LABEL_77;
        }

LABEL_103:
        if (v178 != *MEMORY[0x277D32D38])
        {
          if (v178 == *MEMORY[0x277D32DE8] || (v274 = v178, v178 == *MEMORY[0x277D32D18]) || v178 == *MEMORY[0x277D32DA8] || v178 == *MEMORY[0x277D32DF8])
          {
            sub_218BD359C(v328, sub_218BD3828);
            (*(v330 + 8))(v349, v329);
          }

          else
          {
            v275 = *MEMORY[0x277D32DD0];
            sub_218BD359C(v328, sub_218BD3828);
            (*(v330 + 8))(v349, v329);
            if (v274 == v275)
            {
              goto LABEL_77;
            }
          }

          (*(v333 + 8))(v331, v332);
LABEL_77:

          return;
        }

        goto LABEL_76;
      }

LABEL_101:
      v176 = sub_219BF7214();
      goto LABEL_52;
    }

    __break(1u);
    goto LABEL_101;
  }

  __break(1u);
}

uint64_t sub_218BC7944(uint64_t a1, uint64_t a2)
{
  sub_218B58900(0);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE16D4();
  v7 = *(v6 - 8);
  v46 = v6;
  v47 = v7;
  MEMORY[0x28223BE20](v6);
  v48 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3284(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3828(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD34A8(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v50 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v2;
  v49 = v2[5];
  v51 = v49;
  sub_218BD5CD4(0);
  v22 = v21;
  sub_218BD31D8(&qword_27CC0EC68, 255, sub_218BD5CD4, MEMORY[0x277D6D8C8]);
  v43 = v22;
  sub_219BE7B94();
  v45 = a2;
  sub_219BF4B14();
  sub_219BEB244();

  v23 = *(v11 + 8);
  v23(v13, v10);
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    return sub_218BD359C(v16, sub_218BD3828);
  }

  v40 = v18;
  v41 = v19;
  v25 = *(v19 + 32);
  v39 = v23;
  v25();
  v26 = v42[9];
  v38[2] = v42[10];
  v42 = __swift_project_boxed_opaque_existential_1(v42 + 6, v26);
  v38[1] = sub_219BE6944();
  v51 = v49;
  sub_219BE7B94();
  sub_219BDE814();
  sub_219BDD7A4();
  sub_218BD31D8(&unk_27CC0EBE0, 255, MEMORY[0x277D30170], MEMORY[0x277D30160]);
  sub_218BD31D8(&qword_27CC14C40, 255, MEMORY[0x277D2FAE0], MEMORY[0x277D2FAC0]);
  v27 = sub_219BF00E4();

  v28 = v39;
  v39(v13, v10);
  v51 = v49;
  sub_219BE7B94();
  v29 = sub_219BE97D4();
  v30 = v44;
  (*(*(v29 - 8) + 56))(v44, 1, 1, v29);
  v31 = v48;
  v32 = v50;
  sub_218BCCA8C(v50, v27, v48);
  sub_218BD359C(v30, sub_218B58900);
  v28(v13, v10);
  sub_219BF4B54();
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v33 = sub_219BDCD44();
  v34 = *(v33 - 8);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_219C09BA0;
  (*(v34 + 104))(v36 + v35, *MEMORY[0x277CEAD18], v33);
  sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  v37 = v46;
  sub_219BDD1F4();

  (*(v47 + 8))(v31, v37);
  return (*(v41 + 8))(v32, v40);
}

uint64_t sub_218BC8020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[0] = a3;
  v17[1] = a2;
  v3 = sub_219BDF774();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE14C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE14A4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x277D2F2F0], v7, v13);
  sub_219BE1484();
  sub_218BD31D8(&qword_280EE8010, 255, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
  sub_219BDCCC4();
  (*(v12 + 8))(v15, v11);

  sub_219BDF764();
  sub_218BD31D8(&qword_27CC0EC58, 255, MEMORY[0x277D2DD38], MEMORY[0x277D2DD30]);
  sub_219BDCCC4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218BC8324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_219BDF774();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BDF764();
  sub_218BD31D8(&qword_27CC0EC58, 255, MEMORY[0x277D2DD38], MEMORY[0x277D2DD30]);
  sub_219BDCCC4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218BC8474(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v176 = a7;
  v169 = a5;
  v182 = a4;
  v191 = a3;
  v201 = a1;
  v177 = sub_219BF0F34();
  v174 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v173 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_219BDBD34();
  v178 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v175 = &v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3B80(0);
  MEMORY[0x28223BE20](v10 - 8);
  v183 = &v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_219BDF754();
  v172 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v138 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_219BE09E4();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_219BDF104();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v139 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v15 - 8);
  v181 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_219BE0724();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v137 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_219BE1774();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v133 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v19 - 8);
  v166 = &v132 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_219BE16D4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v22 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_219BDF8A4();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v163 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_219BEFBD4();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v156 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_219BDF1A4();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v132 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_219BE0D44();
  v190 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v185 = &v132 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BDF0E4();
  v154 = *(v155 - 1);
  MEMORY[0x28223BE20](v155);
  v153 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_219BE0444();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = &v132 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3378(0);
  v189 = v29;
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3284(0);
  v34 = v33;
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v37 = &v132 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_219BDFCE4();
  v38 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v40 = &v132 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = swift_projectBox();
  sub_218BD3734(0);
  v42 = v41;
  sub_219BE7594();
  v187 = v42;
  v188 = a2;
  sub_219BE7564();
  v43 = sub_218BD31D8(&qword_27CC0EC48, 255, MEMORY[0x277D2FAE0], MEMORY[0x277D2FAB8]);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v136 = v22;
  sub_219BDFCD4();
  v45 = *(v30 + 8);
  v148 = v30 + 8;
  v146 = v45;
  v45(v32, v189);
  v46 = *(v35 + 8);
  v147 = v35 + 8;
  v145 = v46;
  v46(v37, v34);
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v48 = v47;
  v49 = sub_219BDCD44();
  v50 = *(v49 - 8);
  v149 = v43;
  v51 = v50;
  v52 = *(v50 + 72);
  v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v194 = *(v51 + 80);
  v195 = v53 + v52;
  v200 = v48;
  v54 = swift_allocObject();
  v202 = xmmword_219C09BA0;
  *(v54 + 16) = xmmword_219C09BA0;
  v55 = *MEMORY[0x277CEAD18];
  v56 = *(v51 + 104);
  v196 = v53;
  v197 = v55;
  v198 = v51 + 104;
  v199 = v49;
  v193 = v56;
  (v56)(v54 + v53);
  sub_218BD31D8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v57 = v180;
  sub_219BDCCC4();

  (*(v38 + 8))(v40, v57);
  sub_219BE7594();
  sub_219BE7564();
  result = sub_219BEB314();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v58 = v150;
  sub_219BE0434();
  v146(v32, v189);
  v145(v37, v34);
  v59 = swift_allocObject();
  *(v59 + 16) = v202;
  v60 = v197;
  v61 = v193;
  v193(v59 + v196, v197, v199);
  v192 = "dOfRecipeCoordinator";
  v62 = v61;
  sub_218BD31D8(&unk_280EE8400, 255, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
  v63 = v152;
  sub_219BDCCC4();

  (*(v151 + 8))(v58, v63);
  ObjectType = swift_getObjectType();
  v65 = v153;
  v189 = ObjectType;
  sub_219BF67F4();
  v66 = swift_allocObject();
  *(v66 + 16) = v202;
  v67 = v196;
  v68 = v60;
  v69 = v199;
  v62(v66 + v196, v68, v199);
  sub_218BD31D8(&qword_280EE88B0, 255, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  v70 = v155;
  sub_219BDCCC4();

  (*(v154 + 8))(v65, v70);
  v71 = v185;
  sub_219BF6834();
  v72 = swift_allocObject();
  *(v72 + 16) = v202;
  v193(v72 + v67, v197, v69);
  v180 = sub_218BD31D8(&qword_280EE8190, 255, MEMORY[0x277D2ECA0], MEMORY[0x277D2EC98]);
  v73 = v186;
  sub_219BDCCC4();

  v74 = *(v190 + 8);
  v190 += 8;
  v155 = v74;
  (v74)(v71, v73);
  v75 = v158;
  v76 = v156;
  v77 = v159;
  (*(v158 + 104))(v156, *MEMORY[0x277D329E0], v159);
  v78 = v160;
  sub_219BE02C4();
  (*(v75 + 8))(v76, v77);
  v79 = swift_allocObject();
  *(v79 + 16) = v202;
  v80 = v197;
  v81 = v199;
  v82 = v193;
  v193(v79 + v196, v197, v199);
  sub_218BD31D8(&unk_280EE8850, 255, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v83 = v162;
  sub_219BDCCC4();

  (*(v161 + 8))(v78, v83);
  v84 = v185;
  sub_219BF6834();
  v85 = swift_allocObject();
  *(v85 + 16) = v202;
  v86 = v196;
  v82(v85 + v196, v80, v81);
  v87 = v84;
  v88 = v186;
  sub_219BDCCC4();

  (v155)(v87, v88);
  v89 = v163;
  sub_219BDF894();
  v90 = swift_allocObject();
  *(v90 + 16) = v202;
  v82(v90 + v86, v80, v199);
  sub_218BD31D8(&qword_280EE8640, 255, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v91 = v165;
  sub_219BDCCC4();

  (*(v164 + 8))(v89, v91);
  v92 = v157;
  swift_beginAccess();
  v93 = v92;
  v94 = v166;
  sub_218BD7CF0(v93, v166, sub_218B58D58);
  v95 = v167;
  v96 = v168;
  if ((*(v167 + 48))(v94, 1, v168) == 1)
  {
    sub_218BD359C(v94, sub_218B58D58);
    v97 = v184;
    v98 = v171;
    v99 = v181;
    v100 = v199;
  }

  else
  {
    v101 = v136;
    (*(v95 + 32))(v136, v94, v96);
    v102 = swift_allocObject();
    *(v102 + 16) = v202;
    v103 = v102 + v86;
    v100 = v199;
    v82(v103, v197, v199);
    sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v95 + 8))(v101, v96);
    v97 = v184;
    v98 = v171;
    v99 = v181;
  }

  v104 = v191;
  v105 = [v191 scoreProfile];
  if (v105)
  {
    v106 = v105;
    if ([v105 hasShadowScores])
    {
      [v106 shadowTabiScore];
      [v106 shadowAgedPersonalizationScore];
      v107 = v133;
      sub_219BE1764();
      v108 = swift_allocObject();
      *(v108 + 16) = v202;
      v193(v108 + v196, v197, v199);
      sub_218BD31D8(&unk_280EE7F40, 255, MEMORY[0x277D2F8F0], MEMORY[0x277D2F8E8]);
      v109 = v135;
      sub_219BDCCC4();

      v99 = v181;

      v110 = v107;
      v100 = v199;
      (*(v134 + 8))(v110, v109);
    }

    else
    {
    }
  }

  sub_219BF6824();
  v111 = v170;
  if ((*(v170 + 48))(v99, 1, v98) == 1)
  {
    sub_218BD359C(v99, sub_218B58FEC);
  }

  else
  {
    v112 = v137;
    (*(v111 + 32))(v137, v99, v98);
    v113 = swift_allocObject();
    *(v113 + 16) = v202;
    v193(v113 + v196, v197, v100);
    sub_218BD31D8(&unk_27CC0DC50, 255, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();

    (*(v111 + 8))(v112, v98);
  }

  v114 = v183;
  v115 = [v104 sourceChannel];
  if (v115)
  {
    v190 = *(v182 + 24);
    v116 = v139;
    v186 = v115;
    sub_219BE01F4();
    v117 = swift_allocObject();
    *(v117 + 16) = v202;
    v118 = v196;
    v119 = v193;
    v193(v117 + v196, v197, v199);
    sub_218BD31D8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v120 = v141;
    sub_219BDCCC4();

    (*(v140 + 8))(v116, v120);
    v121 = v142;
    sub_219BE01E4();
    v122 = swift_allocObject();
    *(v122 + 16) = v202;
    v123 = v122 + v118;
    v100 = v199;
    v119(v123, v197, v199);
    sub_218BD31D8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v124 = v144;
    v97 = v184;
    sub_219BDCCC4();
    v114 = v183;
    swift_unknownObjectRelease();

    (*(v143 + 8))(v121, v124);
  }

  sub_219BF6804();
  v125 = v172;
  if ((*(v172 + 48))(v114, 1, v97) == 1)
  {
    sub_218BD359C(v114, sub_218BD3B80);
  }

  else
  {
    v126 = v138;
    (*(v125 + 32))(v138, v114, v97);
    v127 = swift_allocObject();
    *(v127 + 16) = v202;
    v193(v127 + v196, v197, v100);
    sub_218BD31D8(&unk_280EE86A0, 255, MEMORY[0x277D2DD28], MEMORY[0x277D2DD20]);
    sub_219BDCCC4();

    (*(v125 + 8))(v126, v97);
  }

  sub_219BE0834();
  v128 = v175;
  sub_219BE75A4();
  sub_218BD31D8(&qword_280EE82C0, 255, MEMORY[0x277D2E858], MEMORY[0x277D2E840]);
  sub_219BDCC64();
  v129 = *(v178 + 8);
  v130 = v179;
  v129(v128, v179);
  sub_219BE7574();
  sub_2186EAB88(0);
  v131 = v173;
  sub_219BF07D4();
  sub_219BF0F14();
  (*(v174 + 8))(v131, v177);
  v203[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v203);
  sub_219BDF4C4();
  sub_219BDCC84();
  v129(v128, v130);
  return sub_218BD359C(v203, sub_21880702C);
}

uint64_t sub_218BCA194(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v106 = a5;
  v111 = a4;
  v115 = a3;
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v12 - 8);
  v107 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE16D4();
  v108 = *(v14 - 8);
  v109 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_219BDF8A4();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BE09E4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_219BDF104();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_219BEF9C4();
  v90 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v89 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_219BDFFE4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v80 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_219BDEFE4();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BDFCE4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = swift_projectBox();
  sub_218BD3734(0);
  v28 = v27;
  sub_218BD31D8(&qword_27CC0EC48, 255, MEMORY[0x277D2FAE0], MEMORY[0x277D2FAB8]);
  v103 = v28;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v81 = v16;
  v82 = v11;
  v83 = a2;
  v84 = v9;
  v85 = v8;
  sub_219BDFCD4();
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v112 = v30;
  v31 = sub_219BDCD44();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v119 = *(v32 + 80);
  v120 = v33;
  v34 = v32;
  v35 = (v119 + 32) & ~v119;
  v36 = swift_allocObject();
  v122 = xmmword_219C09BA0;
  *(v36 + 16) = xmmword_219C09BA0;
  v118 = *MEMORY[0x277CEAD18];
  v37 = *(v34 + 104);
  v116 = v31;
  v117 = v37;
  v114 = v34 + 104;
  v37(v36 + v35);
  v121 = "dOfRecipeCoordinator";
  sub_218BD31D8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  sub_219BDCCC4();

  (*(v24 + 8))(v26, v23);
  v38 = v115;
  v39 = [v115 identifier];
  sub_219BF5414();

  [v38 isPaid];
  v40 = [v38 totalTime];
  sub_219BF5414();

  v41 = v86;
  v113 = a1;
  sub_219BDEFB4();
  v110 = v35;
  v42 = swift_allocObject();
  *(v42 + 16) = v122;
  v43 = v118;
  v117(v42 + v35, v118, v31);
  sub_218BD31D8(&qword_280EE8900, 255, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
  v44 = v88;
  sub_219BDCCC4();

  (*(v87 + 8))(v41, v44);
  v45 = v90;
  v46 = v89;
  v47 = v91;
  (*(v90 + 104))(v89, *MEMORY[0x277D32840], v91);
  v48 = v92;
  v49 = v115;
  sub_219BE02B4();
  (*(v45 + 8))(v46, v47);
  v50 = v110;
  v51 = swift_allocObject();
  *(v51 + 16) = v122;
  v52 = v117;
  v117(v51 + v50, v43, v116);
  sub_218BD31D8(&unk_280EE84E0, 255, MEMORY[0x277D2E2C0], MEMORY[0x277D2E2B8]);
  v53 = v94;
  sub_219BDCCC4();

  (*(v93 + 8))(v48, v53);
  v111 = *(v111 + 24);
  v54 = [v49 sourceChannel];
  v55 = v95;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v56 = v110;
  v57 = swift_allocObject();
  *(v57 + 16) = v122;
  v58 = v116;
  v52(v57 + v56, v118, v116);
  sub_218BD31D8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  v59 = v97;
  sub_219BDCCC4();

  (*(v96 + 8))(v55, v59);
  v60 = [v115 sourceChannel];
  v61 = v99;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v62 = swift_allocObject();
  *(v62 + 16) = v122;
  v63 = v118;
  v64 = v117;
  v117(v62 + v56, v118, v58);
  sub_218BD31D8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
  v65 = v101;
  sub_219BDCCC4();

  (*(v100 + 8))(v61, v65);
  v66 = v102;
  sub_219BDF894();
  v67 = swift_allocObject();
  *(v67 + 16) = v122;
  v64(v67 + v56, v63, v116);
  sub_218BD31D8(&qword_280EE8640, 255, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v68 = v105;
  sub_219BDCCC4();

  (*(v104 + 8))(v66, v68);
  v69 = v98;
  swift_beginAccess();
  v70 = v69;
  v71 = v107;
  sub_218BD7CF0(v70, v107, sub_218B58D58);
  v73 = v108;
  v72 = v109;
  if ((*(v108 + 48))(v71, 1, v109) == 1)
  {
    sub_218BD359C(v71, sub_218B58D58);
  }

  else
  {
    v74 = v81;
    (*(v73 + 32))(v81, v71, v72);
    v75 = swift_allocObject();
    *(v75 + 16) = v122;
    v117(v75 + v56, v118, v116);
    sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v73 + 8))(v74, v72);
  }

  v76 = v84;
  sub_219BE04C4();
  v77 = v82;
  sub_219BE75A4();
  sub_218BD31D8(&unk_280EE83D0, 255, MEMORY[0x277D2E570], MEMORY[0x277D2E568]);
  sub_219BDCC64();
  v78 = *(v76 + 8);
  v79 = v85;
  v78(v77, v85);
  sub_219BE7574();
  sub_219BDCC74();
  return (v78)(v77, v79);
}

uint64_t sub_218BCB15C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v137 = a5;
  v146 = a3;
  v149 = a1;
  v119 = sub_219BDBD34();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v102 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_219BDF1E4();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_219BDFCE4();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE1444();
  v142 = *(v9 - 8);
  v143 = v9;
  MEMORY[0x28223BE20](v9);
  v141 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v11 - 8);
  v133 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDF4A4();
  v135 = *(v13 - 8);
  *&v136 = v13;
  MEMORY[0x28223BE20](v13);
  v134 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v15 - 8);
  v130 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_219BE16D4();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v105 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_219BF1904();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_219BDE814();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v20 - 8);
  v123 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_219BDF474();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v104 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3378(0);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3284(0);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v32 = &v102 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3828(0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD34A8(0);
  v37 = v36;
  v148 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v147 = &v102 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = swift_projectBox();
  sub_218BD3734(0);
  v40 = v39;
  sub_219BE7594();
  v144 = v40;
  v145 = a2;
  sub_219BE7564();
  sub_219BE5F84();
  v41 = *(v25 + 8);
  v140 = v27;
  v110 = v24;
  v109 = v25 + 8;
  v107 = v41;
  v41(v27, v24);
  sub_219BEB244();
  v42 = v148;

  v43 = *(v30 + 8);
  v138 = v32;
  v139 = v29;
  v108 = v30 + 8;
  v43(v32, v29);
  if ((*(v42 + 48))(v35, 1, v37) == 1)
  {
    return sub_218BD359C(v35, sub_218BD3828);
  }

  (*(v42 + 32))(v147, v35, v37);
  v45 = v120;
  v106 = v37;
  sub_219BE6934();
  v46 = v125;
  sub_219BDE804();
  (*(v121 + 8))(v45, v122);
  v47 = [v146 identifier];
  sub_219BF5414();

  v48 = v123;
  sub_219BF17B4();

  (*(v126 + 8))(v46, v127);
  v49 = v128;
  v50 = v129;
  v51 = (*(v128 + 48))(v48, 1, v129);
  v52 = MEMORY[0x277CEAD18];
  v103 = v43;
  if (v51 == 1)
  {
    sub_218BD359C(v48, sub_218B58F30);
  }

  else
  {
    v53 = v104;
    (*(v49 + 32))(v104, v48, v50);
    sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v54 = sub_219BDCD44();
    v55 = *(v54 - 8);
    v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_219C09BA0;
    (*(v55 + 104))(v57 + v56, *v52, v54);
    sub_218BD31D8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
    sub_219BDCCC4();

    (*(v49 + 8))(v53, v50);
  }

  v58 = v132;
  v59 = v131;
  v60 = v124;
  swift_beginAccess();
  v61 = v60;
  v62 = v130;
  sub_218BD7CF0(v61, v130, sub_218B58D58);
  if ((*(v59 + 48))(v62, 1, v58) == 1)
  {
    sub_218BD359C(v62, sub_218B58D58);
  }

  else
  {
    v63 = v105;
    (*(v59 + 32))(v105, v62, v58);
    sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v64 = sub_219BDCD44();
    v65 = *(v64 - 8);
    v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_219C09BA0;
    (*(v65 + 104))(v67 + v66, *MEMORY[0x277CEAD18], v64);
    sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v59 + 8))(v63, v58);
  }

  v68 = v135;
  v69 = v133;
  sub_218BD7CF0(v137, v133, sub_218B59134);
  v70 = v136;
  if ((*(v68 + 48))(v69, 1, v136) == 1)
  {
    sub_218BD359C(v69, sub_218B59134);
    v71 = *MEMORY[0x277CEAD18];
    v72 = &unk_219C09000;
  }

  else
  {
    (*(v68 + 32))(v134, v69, v70);
    sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v73 = sub_219BDCD44();
    v74 = *(v73 - 8);
    v75 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_219C09BA0;
    v77 = *MEMORY[0x277CEAD18];
    (*(v74 + 104))(v76 + v75, v77, v73);
    v71 = v77;
    v72 = &unk_219C09000;
    sub_218BD31D8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    v78 = v134;
    sub_219BDCCC4();

    (*(v68 + 8))(v78, v70);
  }

  v79 = [v146 identifier];
  sub_219BF5414();

  v80 = v141;
  sub_219BE1424();
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v81 = sub_219BDCD44();
  v82 = *(v81 - 8);
  v83 = *(v82 + 72);
  v84 = (*(v82 + 80) + 32) & ~*(v82 + 80);
  v134 = *(v82 + 80);
  v146 = (v84 + v83);
  v85 = swift_allocObject();
  v136 = v72[186];
  *(v85 + 16) = v136;
  v87 = *(v82 + 104);
  v86 = v82 + 104;
  v135 = v84;
  v137 = v87;
  v87(v85 + v84, v71, v81);
  sub_218BD31D8(&unk_280EE8030, 255, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v88 = v143;
  sub_219BDCCC4();

  (*(v142 + 8))(v80, v88);
  v89 = v138;
  sub_219BE7594();
  v90 = v140;
  sub_219BE7564();
  sub_218BD31D8(&qword_27CC0EC48, 255, MEMORY[0x277D2FAE0], MEMORY[0x277D2FAB8]);
  v91 = v139;
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v92 = v111;
  sub_219BDFCD4();
  v107(v90, v110);
  v103(v89, v91);
  v93 = swift_allocObject();
  *(v93 + 16) = v136;
  v133 = v86;
  v94 = v135;
  v137(v93 + v135, v71, v81);
  sub_218BD31D8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v95 = v113;
  sub_219BDCCC4();

  (*(v112 + 8))(v92, v95);
  sub_219BE6944();
  v96 = v114;
  sub_219BDF1C4();
  v97 = swift_allocObject();
  *(v97 + 16) = v136;
  v137(v97 + v94, v71, v81);
  sub_218BD31D8(&unk_280EE8840, 255, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
  v98 = v116;
  sub_219BDCCC4();

  (*(v115 + 8))(v96, v98);
  sub_219BDFEC4();
  v99 = v117;
  sub_219BE75A4();
  sub_218BD31D8(&unk_280EE8520, 255, MEMORY[0x277D2E1D0], MEMORY[0x277D2E1C8]);
  sub_219BDCC64();
  v100 = *(v118 + 8);
  v101 = v119;
  v100(v99, v119);
  sub_219BE7574();
  sub_219BDCC74();
  v100(v99, v101);
  return (*(v148 + 8))(v147, v106);
}

uint64_t sub_218BCC6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v4 = sub_219BDBD34();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v23 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v21 = v6;
  v7 = sub_219BDCD44();
  v8 = *(v7 - 8);
  v20 = *(v8 + 72);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  v19 = xmmword_219C09BA0;
  *(v10 + 16) = xmmword_219C09BA0;
  v11 = *MEMORY[0x277CEAD18];
  v12 = *(v8 + 104);
  v12(v10 + v9, v11, v7);
  v18[1] = "dOfRecipeCoordinator";
  sub_219BE16D4();
  sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  sub_219BDCCC4();

  v13 = swift_allocObject();
  *(v13 + 16) = v19;
  v12(v13 + v9, v11, v7);
  sub_219BDEFE4();
  sub_218BD31D8(&qword_280EE8900, 255, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
  sub_219BDCCC4();

  sub_219BE07A4();
  sub_218BD30E4(0);
  v14 = v23;
  sub_219BE8F14();
  sub_218BD31D8(&unk_27CC0EC20, 255, MEMORY[0x277D2E800], MEMORY[0x277D2E7F8]);
  sub_219BDCC64();
  v15 = v27;
  v16 = *(v26 + 8);
  v16(v14, v27);
  sub_219BE8EE4();
  sub_219BDCC74();
  return (v16)(v14, v15);
}

uint64_t sub_218BCCA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  v158 = a2;
  v144 = a3;
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v4 - 8);
  v143 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3220(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v142 = &v136 - v7;
  v151 = sub_219BE16E4();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v160 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_219BDE814();
  v171 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v157 = &v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v141 = &v136 - v11;
  MEMORY[0x28223BE20](v12);
  v165 = &v136 - v13;
  MEMORY[0x28223BE20](v14);
  v149 = &v136 - v15;
  v148 = sub_219BDF584();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v159 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_219BDD374();
  v178 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v203 = &v136 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = sub_219BDEE04();
  v177 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v201 = &v136 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_219BF04A4();
  v205 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v145 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v164 = v20;
  v200 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v163 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_219BF0F34();
  v199 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v174 = &v136 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v183 = v23;
  v198 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v182 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_219BF0B74();
  v197 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v161 = &v136 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v173 = v26;
  v196 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v172 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BDD7A4();
  v189 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = (&v136 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218BD3378(0);
  v195 = v31;
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v194 = &v136 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3410(0);
  v35 = v34 - 8;
  MEMORY[0x28223BE20](v34);
  v37 = &v136 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x277D84F90];
  v207 = MEMORY[0x277D84F90];
  v208 = MEMORY[0x277D84F90];
  sub_218BD34A8(0);
  v40 = v39;
  (*(*(v39 - 8) + 16))(v37, a1, v39);
  v41 = *(v35 + 44);
  v42 = sub_218BD31D8(&qword_27CC0EC18, 255, sub_218BD34A8, MEMORY[0x277D6D730]);
  v152 = a1;
  sub_219BF5DF4();
  sub_219BF5E84();
  v43 = *&v37[v41];
  v176 = v38;
  v187 = v40;
  v185 = v42;
  if (v43 != v206)
  {
    v192 = (v32 + 16);
    v53 = (v32 + 8);
    v191 = (v189 + 11);
    v140 = v189 + 1;
    v190 = *MEMORY[0x277D2FAC8];
    v179 = *MEMORY[0x277D2FAD8];
    v169 = *MEMORY[0x277D2FAD0];
    v189 += 12;
    v139 = (v200 + 32);
    v138 = (v205 + 8);
    v137 = (v200 + 8);
    v156 = (v196 + 32);
    v155 = v197 + 1;
    v154 = (v196 + 8);
    v168 = (v198 + 32);
    v153 = *MEMORY[0x277D2FAB0];
    v167 = v199 + 1;
    v166 = (v198 + 8);
    v199 = (v177 + 8);
    v200 = v177 + 16;
    v197 = (v178 + 8);
    v198 = v178 + 16;
    v176 = MEMORY[0x277D84F90];
    v186 = v30;
    v188 = v37;
    v181 = v28;
    v193 = v41;
    v180 = v53;
    do
    {
      v55 = sub_219BF5EC4();
      v56 = v194;
      v57 = v195;
      (*v192)(v194);
      v55(&v206, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      (*v53)(v56, v57);
      v58 = (*v191)(v30, v28);
      if (v58 == v190)
      {
        (*v189)(v30, v28);
        v59 = *v30;
        v60 = sub_219BE5B44();
        v61 = *(v60 + 16);
        v196 = v59;
        if (v61)
        {
          v206 = MEMORY[0x277D84F90];
          sub_21870B65C(0, v61, 0);
          v62 = v206;
          v63 = *(v177 + 80);
          v205 = v60;
          v64 = v60 + ((v63 + 32) & ~v63);
          v65 = *(v177 + 72);
          v66 = *(v177 + 16);
          do
          {
            v67 = v201;
            v68 = v202;
            v66(v201, v64, v202);
            v69 = sub_219BDEDA4();
            v71 = v70;
            (*v199)(v67, v68);
            v206 = v62;
            v73 = *(v62 + 16);
            v72 = *(v62 + 24);
            if (v73 >= v72 >> 1)
            {
              sub_21870B65C((v72 > 1), v73 + 1, 1);
              v62 = v206;
            }

            *(v62 + 16) = v73 + 1;
            v74 = v62 + 16 * v73;
            *(v74 + 32) = v69;
            *(v74 + 40) = v71;
            v64 += v65;
            --v61;
          }

          while (v61);

          v30 = v186;
        }

        else
        {

          v62 = MEMORY[0x277D84F90];
        }

        sub_2191ED3E8(v62);
        v95 = sub_219BE5B34();
        v96 = *(v95 + 16);
        if (v96)
        {
          v206 = MEMORY[0x277D84F90];
          sub_21870B65C(0, v96, 0);
          v97 = v206;
          v98 = (*(v178 + 80) + 32) & ~*(v178 + 80);
          v184 = v95;
          v99 = v95 + v98;
          v205 = *(v178 + 72);
          v100 = *(v178 + 16);
          do
          {
            v101 = v203;
            v102 = v204;
            v100(v203, v99, v204);
            v103 = sub_219BDD364();
            v104 = [v103 identifier];
            v105 = sub_219BF5414();
            v107 = v106;

            (*v197)(v101, v102);
            v206 = v97;
            v109 = *(v97 + 16);
            v108 = *(v97 + 24);
            if (v109 >= v108 >> 1)
            {
              sub_21870B65C((v108 > 1), v109 + 1, 1);
              v97 = v206;
            }

            *(v97 + 16) = v109 + 1;
            v110 = v97 + 16 * v109;
            *(v110 + 32) = v105;
            *(v110 + 40) = v107;
            v99 += v205;
            --v96;
          }

          while (v96);

          v30 = v186;
        }

        else
        {

          v97 = MEMORY[0x277D84F90];
        }

        sub_2191ED3E8(v97);

        v28 = v181;
        v37 = v188;
        v54 = v193;
        v53 = v180;
        goto LABEL_6;
      }

      if (v58 == v179)
      {
        (*v189)(v30, v28);
        (*v168)(v182, v30, v183);
        v75 = v174;
        sub_219BF07D4();
        v76 = sub_219BF0F14();
        (*v167)(v75, v175);
        v77 = [v76 identifier];
        swift_unknownObjectRelease();
        v78 = sub_219BF5414();
        v80 = v79;

        v81 = v207;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v81 = sub_218840D24(0, *(v81 + 2) + 1, 1, v81);
        }

        v83 = *(v81 + 2);
        v82 = *(v81 + 3);
        if (v83 >= v82 >> 1)
        {
          v81 = sub_218840D24((v82 > 1), v83 + 1, 1, v81);
        }

        (*v166)(v182, v183);
        *(v81 + 2) = v83 + 1;
        v84 = &v81[16 * v83];
        *(v84 + 4) = v78;
        *(v84 + 5) = v80;
        v207 = v81;
      }

      else
      {
        if (v58 != v169)
        {
          if (v58 == v153)
          {
            (*v189)(v30, v28);
            (*v139)(v163, v30, v164);
            v111 = v145;
            sub_219BF07D4();
            v112 = sub_219BF0404();
            (*v138)(v111, v146);
            v113 = [v112 identifier];
            swift_unknownObjectRelease();
            v114 = sub_219BF5414();
            v116 = v115;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v176 = sub_218840D24(0, *(v176 + 2) + 1, 1, v176);
            }

            v118 = *(v176 + 2);
            v117 = *(v176 + 3);
            if (v118 >= v117 >> 1)
            {
              v176 = sub_218840D24((v117 > 1), v118 + 1, 1, v176);
            }

            (*v137)(v163, v164);
            v119 = v176;
            *(v176 + 2) = v118 + 1;
            v120 = &v119[16 * v118];
            *(v120 + 4) = v114;
            *(v120 + 5) = v116;
          }

          else
          {
            (*v140)(v30, v28);
          }

          goto LABEL_27;
        }

        (*v189)(v30, v28);
        (*v156)(v172, v30, v173);
        v85 = v161;
        sub_219BF07D4();
        v86 = sub_219BF0B44();
        (*v155)(v85, v162);
        v87 = [v86 identifier];

        v88 = sub_219BF5414();
        v90 = v89;

        v91 = v208;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_218840D24(0, *(v91 + 2) + 1, 1, v91);
        }

        v93 = *(v91 + 2);
        v92 = *(v91 + 3);
        if (v93 >= v92 >> 1)
        {
          v91 = sub_218840D24((v92 > 1), v93 + 1, 1, v91);
        }

        (*v154)(v172, v173);
        *(v91 + 2) = v93 + 1;
        v94 = &v91[16 * v93];
        *(v94 + 4) = v88;
        *(v94 + 5) = v90;
        v208 = v91;
      }

      v37 = v188;
LABEL_27:
      v54 = v193;
LABEL_6:
      sub_219BF5E84();
    }

    while (*&v37[v54] != v206);
  }

  sub_218BD359C(v37, sub_218BD3410);
  (*(v147 + 104))(v159, *MEMORY[0x277D2DB58], v148);
  v44 = v149;
  sub_219BE6934();
  v45 = v171;
  v46 = *(v171 + 32);
  v47 = v165;
  v48 = v44;
  v49 = v170;
  v46(v165, v48, v170);
  v50 = *(v45 + 88);
  v51 = v50(v47, v49);
  v52 = *MEMORY[0x277D30158];
  if (v51 == *MEMORY[0x277D30158])
  {
    (*(v150 + 104))(v160, *MEMORY[0x277D2F608], v151);
  }

  else if (v51 == *MEMORY[0x277D30150])
  {
    (*(v150 + 104))(v160, *MEMORY[0x277D2F6E8], v151);
  }

  else
  {
    if (v51 == *MEMORY[0x277D30168])
    {
      v121 = MEMORY[0x277D2F6C8];
    }

    else
    {
      v121 = MEMORY[0x277D2F818];
    }

    (*(v150 + 104))(v160, *v121, v151);
  }

  v122 = *(v171 + 8);
  v171 += 8;
  v122(v165, v170);
  v123 = sub_219BE6944();
  v205 = v124;
  sub_219BF5DF4();
  sub_219BF5E84();
  result = sub_219BF5E74();
  if (result > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v158 < 0xFFFFFFFF80000000 || result < 0xFFFFFFFF80000000)
  {
    goto LABEL_60;
  }

  if (v158 > 0x7FFFFFFF)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v203 = v207;
  v204 = v123;
  v202 = v208;
  v126 = v141;
  sub_219BE6934();
  v127 = v157;
  v128 = v170;
  v46(v157, v126, v170);
  v129 = v50(v127, v128);
  if (v129 == v52 || v129 == *MEMORY[0x277D30150] || v129 == *MEMORY[0x277D30168])
  {
    v122(v157, v170);
    v133 = *MEMORY[0x277D2E6B0];
    v131 = sub_219BE0674();
    v132 = v142;
    (*(*(v131 - 8) + 104))(v142, v133, v131);
  }

  else
  {
    v130 = *MEMORY[0x277D2E6C0];
    v131 = sub_219BE0674();
    v132 = v142;
    (*(*(v131 - 8) + 104))(v142, v130, v131);
    v122(v157, v170);
  }

  v134 = v143;
  sub_219BE0674();
  (*(*(v131 - 8) + 56))(v132, 0, 1, v131);
  v135 = sub_219BDF474();
  (*(*(v135 - 8) + 56))(v134, 1, 1, v135);
  return sub_219BE15E4();
}

uint64_t sub_218BCE2C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v170 = a5;
  v195 = a4;
  v199 = a3;
  v202 = a1;
  v168 = sub_219BDBD34();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v166 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v8 - 8);
  v163 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = sub_219BE16D4();
  v164 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v151 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v11 - 8);
  v169 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_219BDF4A4();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v150 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_219BF1904();
  v146 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v145 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF33A4();
  MEMORY[0x28223BE20](v15 - 8);
  v143 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v17 - 8);
  v144 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_219BDF474();
  v147 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v135 = &v134 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_219BE0444();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v134 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F64(0);
  MEMORY[0x28223BE20](v21 - 8);
  v153 = &v134 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v196 = *(v23 - 8);
  v197 = v23;
  MEMORY[0x28223BE20](v23);
  v188 = &v134 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD7A90(0);
  v190 = *(v25 - 8);
  v191 = v25;
  MEMORY[0x28223BE20](v25);
  v187 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v27 - 8);
  v189 = &v134 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v30 = *(v29 - 8);
  v192 = v29;
  v193 = v30;
  MEMORY[0x28223BE20](v29);
  v154 = &v134 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_219BE09E4();
  v159 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v158 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_219BDF104();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v155 = &v134 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FEC(0);
  MEMORY[0x28223BE20](v34 - 8);
  *&v184 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_219BE0724();
  v185 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v152 = &v134 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BE1774();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_219BEFBD4();
  v179 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v176 = &v134 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_219BDF1A4();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v180 = &v134 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_219BDFCE4();
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v173 = &v134 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_219BE0D44();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v44 = &v134 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BDF0E4();
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v48 = &v134 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = swift_projectBox();
  ObjectType = swift_getObjectType();
  sub_219BF67F4();
  sub_218BD31D8(&qword_280EE88B0, 255, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  sub_219BDCCC4();
  (*(v46 + 8))(v48, v45);
  v198 = ObjectType;
  v200 = a2;
  sub_219BF6834();
  sub_218BD31D8(&qword_280EE8190, 255, MEMORY[0x277D2ECA0], MEMORY[0x277D2EC98]);
  v201 = "dOfRecipeCoordinator";
  sub_219BDCCC4();
  v50 = *(v42 + 8);
  v178 = v41;
  v177 = v42 + 8;
  v50(v44, v41);
  sub_218B58D38(0);
  v52 = v51;
  v53 = sub_218BD31D8(&qword_280E908F0, 255, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v139 = v53;
  v194 = v52;
  v55 = v173;
  sub_219BDFCD4();
  sub_218BD31D8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v161 = v50;
  v56 = v175;
  sub_219BDCCC4();
  (*(v174 + 8))(v55, v56);
  v57 = v179;
  v58 = v176;
  v59 = v181;
  (*(v179 + 104))(v176, *MEMORY[0x277D329E0], v181);
  v60 = v180;
  v61 = v200;
  sub_219BE02C4();
  (*(v57 + 8))(v58, v59);
  sub_218BD31D8(&unk_280EE8850, 255, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v62 = v183;
  sub_219BDCCC4();
  (*(v182 + 8))(v60, v62);
  sub_219BF6834();
  v63 = v178;
  sub_219BDCCC4();
  v161(v44, v63);
  v64 = [v61 scoreProfile];
  v65 = v196;
  v66 = v185;
  v67 = v184;
  if (v64)
  {
    v68 = v64;
    if ([v64 hasShadowScores])
    {
      [v68 shadowTabiScore];
      [v68 shadowAgedPersonalizationScore];
      v69 = v136;
      sub_219BE1764();
      sub_218BD31D8(&unk_280EE7F40, 255, MEMORY[0x277D2F8F0], MEMORY[0x277D2F8E8]);
      v70 = v138;
      sub_219BDCCC4();

      (*(v137 + 8))(v69, v70);
    }

    else
    {
    }
  }

  sub_219BF6824();
  v71 = v186;
  if ((*(v66 + 48))(v67, 1, v186) == 1)
  {
    sub_218BD359C(v67, sub_218B58FEC);
  }

  else
  {
    v72 = v152;
    (*(v66 + 32))(v152, v67, v71);
    sub_218BD31D8(&unk_27CC0DC50, 255, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();
    (*(v66 + 8))(v72, v71);
  }

  v73 = [v200 sourceChannel];
  v74 = MEMORY[0x277CEAD18];
  v75 = v197;
  if (v73)
  {
    v198 = *(v195 + 24);
    v76 = v155;
    v186 = v73;
    sub_219BE01F4();
    sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v195 = v77;
    v78 = sub_219BDCD44();
    v79 = *(v78 - 8);
    v185 = *(v79 + 72);
    v80 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v81 = swift_allocObject();
    v184 = xmmword_219C09BA0;
    *(v81 + 16) = xmmword_219C09BA0;
    v82 = *v74;
    v83 = *(v79 + 104);
    v83(v81 + v80, v82, v78);
    sub_218BD31D8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v84 = v157;
    sub_219BDCCC4();

    (*(v156 + 8))(v76, v84);
    v85 = v158;
    sub_219BE01E4();
    v86 = swift_allocObject();
    *(v86 + 16) = v184;
    v83(v86 + v80, v82, v78);
    v65 = v196;
    sub_218BD31D8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v87 = v160;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    v88 = v85;
    v75 = v197;
    (*(v159 + 8))(v88, v87);
  }

  v89 = v187;
  sub_219BE7594();
  v90 = v188;
  sub_219BE7564();
  sub_219BE5F84();
  (*(v65 + 8))(v90, v75);
  v91 = v189;
  v92 = v191;
  sub_219BEB244();

  (*(v190 + 8))(v89, v92);
  v94 = v192;
  v93 = v193;
  if ((*(v193 + 48))(v91, 1, v192) != 1)
  {
    v99 = *(v93 + 32);
    v100 = v75;
    v101 = v154;
    v99(v154, v91, v94);
    v102 = v153;
    sub_219BE7564();
    (*(v65 + 56))(v102, 0, 1, v100);
    v103 = sub_219BE6A34();
    result = sub_218BD359C(v102, sub_218B58F64);
    if (v103 >= 0xFFFFFFFF80000000)
    {
      if (v103 <= 0x7FFFFFFF)
      {
        v104 = v140;
        sub_219BE0434();
        sub_218BD31D8(&unk_280EE8400, 255, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
        v105 = v142;
        sub_219BDCCC4();
        (*(v141 + 8))(v104, v105);
        v106 = v143;
        sub_219BE6934();
        v107 = v101;
        v108 = v145;
        sub_219BF3394();
        sub_218BD359C(v106, MEMORY[0x277D33DA8]);
        v109 = [v200 identifier];
        sub_219BF5414();
        v110 = v94;

        v111 = v144;
        sub_219BF17B4();

        (*(v146 + 8))(v108, v148);
        v112 = v147;
        v113 = v149;
        if ((*(v147 + 48))(v111, 1, v149) == 1)
        {
          (*(v193 + 8))(v107, v110);
          sub_218BD359C(v111, sub_218B58F30);
        }

        else
        {
          v114 = v135;
          (*(v112 + 32))(v135, v111, v113);
          sub_218BD31D8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
          sub_219BDCCC4();
          (*(v112 + 8))(v114, v113);
          (*(v193 + 8))(v107, v110);
        }

        v95 = v172;
        v96 = v171;
        v97 = v170;
        v98 = v169;
        goto LABEL_20;
      }

LABEL_30:
      __break(1u);
      return result;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  sub_218BD359C(v91, sub_218B58F98);
  v95 = v172;
  v96 = v171;
  v97 = v170;
  v98 = v169;
LABEL_20:
  sub_218BD7CF0(v97, v98, sub_218B59134);
  v115 = (*(v96 + 48))(v98, 1, v95);
  v116 = MEMORY[0x277CEAD18];
  if (v115 == 1)
  {
    sub_218BD359C(v98, sub_218B59134);
  }

  else
  {
    v120 = v150;
    (*(v96 + 32))(v150, v98, v95);
    sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v121 = sub_219BDCD44();
    v122 = *(v121 - 8);
    v123 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_219C09BA0;
    (*(v122 + 104))(v124 + v123, *v116, v121);
    sub_218BD31D8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v96 + 8))(v120, v95);
  }

  v117 = v165;
  v118 = v164;
  v119 = v163;
  v125 = v162;
  swift_beginAccess();
  sub_218BD7CF0(v125, v119, sub_218B58D58);
  if ((*(v118 + 48))(v119, 1, v117) == 1)
  {
    sub_218BD359C(v119, sub_218B58D58);
  }

  else
  {
    v126 = v151;
    (*(v118 + 32))(v151, v119, v117);
    sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v127 = sub_219BDCD44();
    v128 = *(v127 - 8);
    v129 = (*(v128 + 80) + 32) & ~*(v128 + 80);
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_219C09BA0;
    (*(v128 + 104))(v130 + v129, *MEMORY[0x277CEAD18], v127);
    sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v118 + 8))(v126, v117);
  }

  sub_219BE0834();
  v131 = v166;
  sub_219BE75A4();
  sub_218BD31D8(&qword_280EE82C0, 255, MEMORY[0x277D2E858], MEMORY[0x277D2E840]);
  sub_219BDCC64();
  v132 = *(v167 + 8);
  v133 = v168;
  v132(v131, v168);
  sub_219BE7574();
  sub_219BDCC74();
  return (v132)(v131, v133);
}

uint64_t sub_218BD0140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v107 = a4;
  v139 = a3;
  v146 = a1;
  v113 = sub_219BDBD34();
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v7 - 8);
  v108 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_219BE16D4();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v101 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B59134(0);
  MEMORY[0x28223BE20](v10 - 8);
  v104 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_219BDF4A4();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v100 = &v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_219BF1904();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF33A4();
  MEMORY[0x28223BE20](v14 - 8);
  v123 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v16 - 8);
  v124 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_219BDF474();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v99 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_219BDF1E4();
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v120 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_219BDFCE4();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BE1444();
  v131 = *(v21 - 8);
  v132 = v21;
  MEMORY[0x28223BE20](v21);
  v130 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v27 = &v96 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD7A90(0);
  v29 = v28;
  v143 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F98(0);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v36 = v35;
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v145 = &v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = swift_projectBox();
  sub_218B58D38(0);
  v40 = v39;
  sub_219BE7594();
  v144 = v40;
  v137 = a2;
  sub_219BE7564();
  sub_219BE5F84();
  v41 = *(v25 + 8);
  v116 = v24;
  v42 = v24;
  v43 = v25 + 8;
  v44 = v29;
  v45 = v143;
  v46 = v31;
  v115 = v43;
  v114 = v41;
  v41(v27, v42);
  sub_219BEB244();
  v47 = v37;

  v48 = *(v45 + 8);
  v138 = v44;
  v48(v31, v44);
  if ((*(v47 + 48))(v34, 1, v36) == 1)
  {
    return sub_218BD359C(v34, sub_218B58F98);
  }

  v97 = v48;
  v98 = v47;
  v50 = *(v47 + 32);
  v136 = v36;
  v50(v145, v34, v36);
  v51 = [sub_219BF0404() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v52 = v130;
  sub_219BE1424();
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v54 = v53;
  v55 = sub_219BDCD44();
  v56 = *(v55 - 8);
  v57 = *(v56 + 80);
  v58 = (v57 + 32) & ~v57;
  v142 = v58 + *(v56 + 72);
  v143 = v57;
  v134 = v54;
  v59 = swift_allocObject();
  v140 = xmmword_219C09BA0;
  *(v59 + 16) = xmmword_219C09BA0;
  v61 = *(v56 + 104);
  v60 = v56 + 104;
  v133 = *MEMORY[0x277CEAD18];
  v135 = v55;
  v141 = v61;
  (v61)(v59 + v58);
  sub_218BD31D8(&unk_280EE8030, 255, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v102 = "dOfRecipeCoordinator";
  v62 = v132;
  sub_219BDCCC4();

  (*(v131 + 8))(v52, v62);
  sub_219BE7594();
  sub_219BE7564();
  sub_218BD31D8(&qword_280E908F0, 255, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v63 = v117;
  sub_219BDFCD4();
  v114(v27, v116);
  v97(v46, v138);
  v64 = swift_allocObject();
  *(v64 + 16) = v140;
  v65 = v64 + v58;
  v66 = v58;
  v67 = v133;
  v141(v65, v133, v135);
  sub_218BD31D8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v138 = v60;
  v68 = v119;
  sub_219BDCCC4();

  (*(v118 + 8))(v63, v68);
  sub_219BE6944();
  v69 = v120;
  sub_219BDF1C4();
  v70 = swift_allocObject();
  *(v70 + 16) = v140;
  v132 = v66;
  v71 = v67;
  v72 = v135;
  v141(v70 + v66, v71, v135);
  sub_218BD31D8(&unk_280EE8840, 255, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
  v73 = v122;
  sub_219BDCCC4();

  (*(v121 + 8))(v69, v73);
  v74 = v123;
  sub_219BE6934();
  v75 = v125;
  sub_219BF3394();
  sub_218BD359C(v74, MEMORY[0x277D33DA8]);
  sub_219BF03E4();
  v76 = v124;
  sub_219BF17B4();

  (*(v126 + 8))(v75, v127);
  v77 = v128;
  v78 = v129;
  if ((*(v128 + 48))(v76, 1, v129) == 1)
  {
    sub_218BD359C(v76, sub_218B58F30);
  }

  else
  {
    v79 = v99;
    (*(v77 + 32))(v99, v76, v78);
    v80 = swift_allocObject();
    *(v80 + 16) = v140;
    v141(v80 + v132, v133, v72);
    sub_218BD31D8(&unk_280EE87B0, 255, MEMORY[0x277D2DAB8], MEMORY[0x277D2DAB0]);
    sub_219BDCCC4();

    (*(v77 + 8))(v79, v78);
  }

  v81 = v112;
  v82 = v111;
  v83 = v110;
  v84 = v109;
  v85 = v106;
  v86 = v105;
  v87 = v104;
  sub_218BD7CF0(v107, v104, sub_218B59134);
  if ((*(v86 + 48))(v87, 1, v85) == 1)
  {
    sub_218BD359C(v87, sub_218B59134);
  }

  else
  {
    v90 = v100;
    (*(v86 + 32))(v100, v87, v85);
    v91 = swift_allocObject();
    *(v91 + 16) = v140;
    v141(v91 + v132, v133, v135);
    sub_218BD31D8(&unk_280EE8790, 255, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    sub_219BDCCC4();

    (*(v86 + 8))(v90, v85);
  }

  v88 = v108;
  v89 = v103;
  swift_beginAccess();
  sub_218BD7CF0(v89, v88, sub_218B58D58);
  if ((*(v84 + 48))(v88, 1, v83) == 1)
  {
    sub_218BD359C(v88, sub_218B58D58);
  }

  else
  {
    v92 = v101;
    (*(v84 + 32))(v101, v88, v83);
    v93 = swift_allocObject();
    *(v93 + 16) = v140;
    v141(v93 + v132, v133, v135);
    sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v84 + 8))(v92, v83);
  }

  v94 = v113;
  sub_219BDFEC4();
  sub_219BE75A4();
  sub_218BD31D8(&unk_280EE8520, 255, MEMORY[0x277D2E1D0], MEMORY[0x277D2E1C8]);
  sub_219BDCC64();
  v95 = *(v81 + 8);
  v95(v82, v94);
  sub_219BE7574();
  sub_219BDCC74();
  v95(v82, v94);
  return (*(v98 + 8))(v145, v136);
}

uint64_t sub_218BD149C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v112 = a5;
  v116 = a4;
  v119 = a3;
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v12 - 8);
  v113 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE16D4();
  v114 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v86 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_219BDF8A4();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_219BE09E4();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_219BDF104();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_219BEF9C4();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v95 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BDFFE4();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_219BDEFE4();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BDFCE4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = swift_projectBox();
  sub_218B58D38(0);
  v27 = v26;
  sub_218BD31D8(&qword_280E908F0, 255, MEMORY[0x277D33320], MEMORY[0x277D33308]);
  v109 = v27;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v88 = v11;
  v89 = a2;
  v90 = v9;
  v91 = v8;
  sub_219BDFCD4();
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v30 = v29;
  v118 = sub_219BDCD44();
  v31 = *(v118 - 8);
  v122 = *(v31 + 72);
  v126 = *(v31 + 80);
  v32 = v31;
  v33 = (v126 + 32) & ~v126;
  v34 = swift_allocObject();
  v127 = xmmword_219C09BA0;
  *(v34 + 16) = xmmword_219C09BA0;
  v121 = *MEMORY[0x277CEAD18];
  v35 = *(v32 + 104);
  v124 = v32 + 104;
  v120 = v35;
  v35(v34 + v33);
  v123 = "dOfRecipeCoordinator";
  sub_218BD31D8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  sub_219BDCCC4();

  (*(v23 + 8))(v25, v22);
  v36 = sub_219BF0B44();
  v37 = [v36 identifier];
  sub_219BF5414();

  [v36 isPaid];
  v38 = [v36 totalTime];
  v87 = v14;
  v39 = v38;
  sub_219BF5414();
  v125 = a1;

  v40 = v92;
  v117 = v30;
  sub_219BDEFB4();

  v115 = v33;
  v41 = swift_allocObject();
  *(v41 + 16) = v127;
  v42 = v121;
  v120(v41 + v33, v121, v118);
  sub_218BD31D8(&qword_280EE8900, 255, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
  v43 = v94;
  sub_219BDCCC4();

  (*(v93 + 8))(v40, v43);
  v44 = sub_219BF0B44();
  v45 = v96;
  v46 = v95;
  v47 = v97;
  (*(v96 + 104))(v95, *MEMORY[0x277D32840], v97);
  v48 = v98;
  sub_219BE02B4();

  (*(v45 + 8))(v46, v47);
  v49 = v115;
  v50 = swift_allocObject();
  *(v50 + 16) = v127;
  v51 = v118;
  v52 = v120;
  v120(v50 + v49, v42, v118);
  sub_218BD31D8(&unk_280EE84E0, 255, MEMORY[0x277D2E2C0], MEMORY[0x277D2E2B8]);
  v53 = v100;
  sub_219BDCCC4();

  (*(v99 + 8))(v48, v53);
  v116 = *(v116 + 24);
  v54 = sub_219BF0B44();
  v55 = [v54 sourceChannel];

  v56 = v101;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v57 = swift_allocObject();
  *(v57 + 16) = v127;
  v58 = v121;
  v52(v57 + v49, v121, v51);
  sub_218BD31D8(&unk_280EE8890, 255, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  v59 = v103;
  sub_219BDCCC4();

  (*(v102 + 8))(v56, v59);
  v60 = sub_219BF0B44();
  v61 = [v60 sourceChannel];

  v62 = v105;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v63 = swift_allocObject();
  *(v63 + 16) = v127;
  v64 = v58;
  v65 = v118;
  v66 = v120;
  v120(v63 + v49, v64, v118);
  sub_218BD31D8(&qword_280EE8270, 255, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
  v67 = v107;
  sub_219BDCCC4();

  v68 = v62;
  v69 = v65;
  (*(v106 + 8))(v68, v67);
  v70 = v108;
  sub_219BDF894();
  v71 = swift_allocObject();
  *(v71 + 16) = v127;
  v66(v71 + v49, v121, v69);
  sub_218BD31D8(&qword_280EE8640, 255, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v72 = v111;
  sub_219BDCCC4();

  (*(v110 + 8))(v70, v72);
  v73 = v104;
  swift_beginAccess();
  v74 = v73;
  v75 = v113;
  sub_218BD7CF0(v74, v113, sub_218B58D58);
  v76 = v114;
  v77 = v87;
  if ((*(v114 + 48))(v75, 1) == 1)
  {
    sub_218BD359C(v75, sub_218B58D58);
  }

  else
  {
    v78 = v86;
    (*(v76 + 32))(v86, v75, v77);
    v79 = v115;
    v80 = swift_allocObject();
    *(v80 + 16) = v127;
    v120(v80 + v79, v121, v69);
    sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v76 + 8))(v78, v77);
  }

  v81 = v90;
  sub_219BE04C4();
  v82 = v88;
  sub_219BE75A4();
  sub_218BD31D8(&unk_280EE83D0, 255, MEMORY[0x277D2E570], MEMORY[0x277D2E568]);
  sub_219BDCC64();
  v83 = *(v81 + 8);
  v84 = v91;
  v83(v82, v91);
  sub_219BE7574();
  sub_219BDCC74();
  return (v83)(v82, v84);
}

uint64_t sub_218BD24C0(uint64_t a1)
{
  sub_218B58900(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE97D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD7CF0(a1, v4, sub_218B58900);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_218BD359C(v4, sub_218B58900);
    sub_218B58FCC(0);
    v5 = sub_218BD31D8(&qword_27CC0EC88, 255, sub_218B58FCC, MEMORY[0x277D6D730]);
    sub_219BF5DF4();
    sub_219BF5E84();
    result = sub_219BF5E74();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_9;
    }

    v4 = result;
    if (result <= 0x7FFFFFFF)
    {
      return v4;
    }

    __break(1u);
  }

  (*(v6 + 32))(v8, v4, v5);
  v4 = sub_219BE97A4();
  result = (*(v6 + 8))(v8, v5);
  if (v4 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 <= 0x7FFFFFFF)
  {
    return v4;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_218BD2724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[0] = a2;
  v16[1] = a3;
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3220(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v7 = sub_219BDCD44();
  v8 = *(v7 - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09EC0;
  v12 = v11 + v10;
  v13 = *(v8 + 104);
  v13(v12, *MEMORY[0x277CEAD18], v7);
  v13(v12 + v9, *MEMORY[0x277CEAD08], v7);
  sub_219BE16D4();
  sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  sub_219BDCCC4();

  sub_219BE07A4();
  sub_218BD799C(0);
  sub_219BE8F14();
  sub_218BD31D8(&unk_27CC0EC20, 255, MEMORY[0x277D2E800], MEMORY[0x277D2E7F8]);
  sub_219BDCC64();
  v14 = *(v4 + 8);
  v14(v6, v3);
  sub_219BE8EE4();
  sub_219BDCC74();
  return (v14)(v6, v3);
}

uint64_t sub_218BD2A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v38 = a2;
  v39 = a3;
  v40 = a1;
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v4 - 8);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE16D4();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x28223BE20](v6);
  v31 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE0444();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDFCE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE14C4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BE14A4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = swift_projectBox();
  (*(v16 + 104))(v18, *MEMORY[0x277D2F2F0], v15);
  sub_219BE1484();
  sub_218BD31D8(&qword_280EE8010, 255, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
  sub_219BDCCC4();
  (*(v20 + 8))(v22, v19);
  sub_218BD3284(0);
  sub_218BD31D8(&qword_27CC0EC48, 255, MEMORY[0x277D2FAE0], MEMORY[0x277D2FAB8]);
  result = sub_219BEB304();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_219BDFCD4();
  sub_218BD31D8(&unk_280EE8590, 255, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  sub_219BDCCC4();
  (*(v12 + 8))(v14, v11);
  result = sub_219BEB314();
  if (result < 0xFFFFFFFF80000000)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_219BE0434();
  sub_218BD31D8(&unk_280EE8400, 255, MEMORY[0x277D2E530], MEMORY[0x277D2E528]);
  v24 = v33;
  sub_219BDCCC4();
  (*(v32 + 8))(v10, v24);
  v25 = v37;
  swift_beginAccess();
  v26 = v34;
  sub_218BD7CF0(v25, v34, sub_218B58D58);
  v28 = v35;
  v27 = v36;
  if ((*(v35 + 48))(v26, 1, v36) == 1)
  {
    return sub_218BD359C(v26, sub_218B58D58);
  }

  v29 = v31;
  (*(v28 + 32))(v31, v26, v27);
  sub_218BD31D8(&unk_280EE7FB0, 255, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  sub_219BDCCC4();
  return (*(v28 + 8))(v29, v27);
}

void sub_218BD30E4(uint64_t a1)
{
  if (!qword_27CC0EBD8)
  {
    sub_219BDE814();
    sub_219BDD7A4();
    sub_218BD31D8(&unk_27CC0EBE0, 255, MEMORY[0x277D30170], MEMORY[0x277D30160]);
    sub_218BD31D8(&qword_27CC14C40, 255, MEMORY[0x277D2FAE0], MEMORY[0x277D2FAC0]);
    v1 = sub_219BE8F34();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0EBD8);
    }
  }
}

uint64_t sub_218BD31D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218BD3220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218BD3284(uint64_t a1)
{
  if (!qword_27CC0EBF0)
  {
    sub_219BDE814();
    sub_219BDD7A4();
    sub_218BD31D8(&unk_27CC0EBE0, 255, MEMORY[0x277D30170], MEMORY[0x277D30160]);
    sub_218BD31D8(&qword_27CC14C40, 255, MEMORY[0x277D2FAE0], MEMORY[0x277D2FAC0]);
    v1 = sub_219BEB334();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0EBF0);
    }
  }
}

void sub_218BD3378(uint64_t a1)
{
  if (!qword_27CC0EC00)
  {
    sub_219BDD7A4();
    sub_218BD31D8(&qword_27CC14C40, 255, MEMORY[0x277D2FAE0], MEMORY[0x277D2FAC0]);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0EC00);
    }
  }
}

void sub_218BD3410(uint64_t a1)
{
  if (!qword_27CC0EC08)
  {
    sub_218BD34A8(255);
    sub_218BD31D8(&qword_27CC0EC18, 255, sub_218BD34A8, MEMORY[0x277D6D730]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0EC08);
    }
  }
}

void sub_218BD34A8(uint64_t a1)
{
  if (!qword_27CC0EC10)
  {
    sub_219BDE814();
    sub_219BDD7A4();
    sub_218BD31D8(&unk_27CC0EBE0, 255, MEMORY[0x277D30170], MEMORY[0x277D30160]);
    sub_218BD31D8(&qword_27CC14C40, 255, MEMORY[0x277D2FAE0], MEMORY[0x277D2FAC0]);
    v1 = sub_219BE6A54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0EC10);
    }
  }
}

uint64_t sub_218BD359C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218BD35FC(uint64_t a1)
{
  v3 = *(sub_219BE16D4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BDEFE4() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_218BD30E4(0);
  v10 = v1 + ((v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80));

  return sub_218BCC6BC(a1, v1 + v4, v1 + v7, v10);
}

void sub_218BD3734(uint64_t a1)
{
  if (!qword_27CC0EC30)
  {
    sub_219BDE814();
    sub_219BDD7A4();
    sub_218BD31D8(&unk_27CC0EBE0, 255, MEMORY[0x277D30170], MEMORY[0x277D30160]);
    sub_218BD31D8(&qword_27CC14C40, 255, MEMORY[0x277D2FAE0], MEMORY[0x277D2FAC0]);
    v1 = sub_219BE75C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0EC30);
    }
  }
}

uint64_t sub_218BD385C(uint64_t a1, uint64_t a2)
{
  sub_218B59134(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218BD38C0(uint64_t a1)
{
  sub_218BD3734(0);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_218B59134(0);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = (v1 + ((v6 + *(*(v7 - 8) + 80) + 8) & ~*(*(v7 - 8) + 80)));

  return sub_218BCB15C(a1, v1 + v4, v8, v9, v10);
}

uint64_t sub_218BD39B8(uint64_t a1)
{
  sub_218BD3734(0);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + ((v6 + 31) & 0xFFFFFFFFFFFFFFF8));

  return sub_218BCA194(a1, v1 + v5, v7, v9, v10, v11);
}

uint64_t sub_218BD3A74(uint64_t a1)
{
  sub_218BD3734(0);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 31) & 0xFFFFFFFFFFFFFFF8;
  sub_2186EAB88(0);
  v9 = *(v1 + v5);
  v10 = *(v1 + v6);
  v11 = *(v1 + v6 + 8);
  v12 = *(v1 + v7);
  v13 = v1 + ((v7 + *(*(v8 - 8) + 80) + 8) & ~*(*(v8 - 8) + 80));

  return sub_218BC8474(a1, v1 + v4, v9, v10, v11, v12, v13);
}

void sub_218BD3BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v254 = a2;
  v236 = a1;
  sub_218BD3284(0);
  v5 = v4;
  v234 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v231 = v6;
  v233 = &v193 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3220(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v211 = &v193 - v8;
  v215 = sub_219BE16E4();
  v214 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v221 = &v193 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_219BDE814();
  v246 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v208 = &v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v207 = &v193 - v12;
  MEMORY[0x28223BE20](v13);
  v213 = &v193 - v14;
  MEMORY[0x28223BE20](v15);
  v212 = &v193 - v16;
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v17 - 8);
  v210 = &v193 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v230 = &v193 - v20;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v21 - 8);
  v228 = &v193 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_219BDF584();
  v227 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v220 = &v193 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v226 = &v193 - v25;
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v26);
  v209 = &v193 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_219BDD374();
  v258 = *(v280 - 8);
  MEMORY[0x28223BE20](v280);
  v279 = &v193 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_219BDEE04();
  v257 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v255 = &v193 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_219BF04A4();
  v281 = *(v217 - 8);
  MEMORY[0x28223BE20](v217);
  v216 = &v193 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v240 = v31;
  v278 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v239 = &v193 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_219BF0B74();
  v277 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v237 = &v193 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v253 = v34;
  v273 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v252 = &v193 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = sub_219BF0F34();
  v260 = *(v251 - 8);
  MEMORY[0x28223BE20](v251);
  v250 = &v193 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v262 = v37;
  v248 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v263 = &v193 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v264 = sub_219BDD7A4();
  v266 = *(v264 - 8);
  MEMORY[0x28223BE20](v264);
  v275 = (&v193 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218BD3378(0);
  v41 = v40;
  v241 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v225 = &v193 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = v42;
  MEMORY[0x28223BE20](v43);
  v274 = &v193 - v44;
  sub_218BD3410(0);
  v46 = v45;
  MEMORY[0x28223BE20](v45);
  v276 = &v193 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD34A8(0);
  v49 = v48;
  v50 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v52 = &v193 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3828(0);
  MEMORY[0x28223BE20](v53 - 8);
  v55 = &v193 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v58 = &v193 - v57;
  v265 = v41;
  v232 = a3;
  sub_219BE5F84();
  v235 = v5;
  sub_219BEB244();

  v59 = v49;
  v222 = swift_allocBox();
  v61 = v60;
  v62 = sub_219BE16D4();
  v63 = *(v62 - 8);
  v64 = *(v63 + 56);
  v206 = v61;
  v205 = v62;
  v204 = v64;
  v203 = v63 + 56;
  v64(v61, 1, 1);
  v223 = v58;
  sub_218BD7CF0(v58, v55, sub_218BD3828);
  if ((*(v50 + 48))(v55, 1, v49) == 1)
  {
    sub_218BD359C(v55, sub_218BD3828);
    v65 = v265;
LABEL_73:
    v184 = v234;
    v185 = v233;
    v186 = v235;
    (*(v234 + 16))(v233, v254, v235);
    v187 = v241;
    v188 = v225;
    (*(v241 + 16))(v225, v232, v65);
    v189 = (*(v184 + 80) + 16) & ~*(v184 + 80);
    v190 = (v231 + *(v187 + 80) + v189) & ~*(v187 + 80);
    v191 = (v224 + v190 + 7) & 0xFFFFFFFFFFFFFFF8;
    v192 = swift_allocObject();
    (*(v184 + 32))(v192 + v189, v185, v186);
    (*(v187 + 32))(v192 + v190, v188, v65);
    *(v192 + v191) = v222;

    sub_219BDD154();

    sub_219BDD134();
    sub_218BD359C(v223, sub_218BD3828);

    return;
  }

  (*(v50 + 32))(v52, v55, v49);
  v66 = MEMORY[0x277D84F90];
  v283 = MEMORY[0x277D84F90];
  v284 = MEMORY[0x277D84F90];
  v198 = v50;
  v67 = v276;
  (*(v50 + 16))(v276, v52, v59);
  v68 = *(v46 + 36);
  v69 = sub_218BD31D8(&qword_27CC0EC18, 255, sub_218BD34A8, MEMORY[0x277D6D730]);
  v218 = v52;
  v70 = v69;
  sub_219BF5DF4();
  v71 = v67;
  sub_219BF5E84();
  v72 = *&v67[v68];
  v249 = v66;
  v65 = v265;
  v73 = v262;
  v74 = v263;
  v75 = v264;
  v261 = v59;
  if (v72 != v282)
  {
    v269 = (v241 + 8);
    v270 = (v241 + 16);
    v268 = (v266 + 11);
    v197 = v266 + 1;
    v267 = *MEMORY[0x277D2FAC8];
    v259 = *MEMORY[0x277D2FAD8];
    v245 = *MEMORY[0x277D2FAD0];
    v266 += 12;
    v196 = (v278 + 32);
    v195 = (v281 + 8);
    v194 = (v278 + 8);
    v202 = (v273 + 32);
    v201 = (v277 + 8);
    v200 = (v273 + 8);
    v244 = (v248 + 32);
    v199 = *MEMORY[0x277D2FAB0];
    v243 = (v260 + 8);
    v242 = (v248 + 8);
    v277 = (v258 + 8);
    v278 = v258 + 16;
    v249 = MEMORY[0x277D84F90];
    v271 = v70;
    v272 = v68;
    v248 = v257 + 16;
    v247 = (v257 + 8);
    while (1)
    {
      v94 = sub_219BF5EC4();
      v95 = v274;
      (*v270)(v274);
      v94(&v282, 0);
      sub_219BF5E94();
      v96 = v275;
      sub_219BE5FC4();
      (*v269)(v95, v65);
      v97 = (*v268)(v96, v75);
      if (v97 == v267)
      {
        (*v266)(v96, v75);
        v98 = *v96;
        v99 = sub_219BE5B44();
        v100 = *(v99 + 16);
        v273 = v98;
        if (v100)
        {
          v282 = MEMORY[0x277D84F90];
          sub_219BF73F4();
          v101 = (*(v257 + 80) + 32) & ~*(v257 + 80);
          v260 = v99;
          v102 = v99 + v101;
          v281 = *(v257 + 72);
          v103 = *(v257 + 16);
          v104 = v256;
          v105 = v255;
          v106 = v247;
          do
          {
            v103(v105, v102, v104);
            sub_219BDEDF4();
            (*v106)(v105, v104);
            sub_219BF73D4();
            sub_219BF7414();
            sub_219BF7424();
            sub_219BF73E4();
            v102 += v281;
            --v100;
          }

          while (v100);

          v107 = v282;
          v65 = v265;
        }

        else
        {

          v107 = MEMORY[0x277D84F90];
        }

        sub_2191ED6C8(v107);
        v120 = sub_219BE5B34();
        v121 = *(v120 + 16);
        if (v121)
        {
          v282 = MEMORY[0x277D84F90];
          sub_21870B65C(0, v121, 0);
          v122 = v282;
          v123 = (*(v258 + 80) + 32) & ~*(v258 + 80);
          v260 = v120;
          v124 = v120 + v123;
          v281 = *(v258 + 72);
          v125 = *(v258 + 16);
          do
          {
            v127 = v279;
            v126 = v280;
            v125(v279, v124, v280);
            v128 = sub_219BDD364();
            v129 = [v128 identifier];
            v130 = sub_219BF5414();
            v132 = v131;

            (*v277)(v127, v126);
            v282 = v122;
            v134 = *(v122 + 16);
            v133 = *(v122 + 24);
            if (v134 >= v133 >> 1)
            {
              sub_21870B65C((v133 > 1), v134 + 1, 1);
              v122 = v282;
            }

            *(v122 + 16) = v134 + 1;
            v135 = v122 + 16 * v134;
            *(v135 + 32) = v130;
            *(v135 + 40) = v132;
            v124 += v281;
            --v121;
          }

          while (v121);

          v65 = v265;
        }

        else
        {

          v122 = MEMORY[0x277D84F90];
        }

        sub_2191ED3E8(v122);

        v73 = v262;
        v74 = v263;
        v75 = v264;
        v71 = v276;
        v93 = v272;
        goto LABEL_10;
      }

      if (v97 == v259)
      {
        (*v266)(v96, v75);
        (*v244)(v74, v96, v73);
        v108 = v250;
        sub_219BF07D4();
        sub_219BF0F14();
        v109 = (*v243)(v108, v251);
        MEMORY[0x21CECC690](v109);
        if (*((v284 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v284 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        (*v242)(v74, v73);
        goto LABEL_9;
      }

      if (v97 == v245)
      {
        break;
      }

      if (v97 == v199)
      {
        (*v266)(v96, v75);
        (*v196)(v239, v96, v240);
        v136 = v216;
        sub_219BF07D4();
        v137 = sub_219BF0404();
        (*v195)(v136, v217);
        v138 = [v137 identifier];
        swift_unknownObjectRelease();
        v139 = sub_219BF5414();
        v141 = v140;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v249 = sub_218840D24(0, *(v249 + 2) + 1, 1, v249);
        }

        v143 = *(v249 + 2);
        v142 = *(v249 + 3);
        if (v143 >= v142 >> 1)
        {
          v249 = sub_218840D24((v142 > 1), v143 + 1, 1, v249);
        }

        (*v194)(v239, v240);
        v144 = v249;
        *(v249 + 2) = v143 + 1;
        v145 = &v144[16 * v143];
        *(v145 + 4) = v139;
        *(v145 + 5) = v141;
        goto LABEL_41;
      }

      (*v197)(v96, v75);
LABEL_9:
      v71 = v276;
      v93 = v272;
LABEL_10:
      sub_219BF5E84();
      if (*(v71 + v93) == v282)
      {
        goto LABEL_5;
      }
    }

    (*v266)(v96, v75);
    (*v202)(v252, v96, v253);
    v110 = v237;
    sub_219BF07D4();
    v111 = sub_219BF0B44();
    (*v201)(v110, v238);
    v112 = [v111 identifier];

    v113 = sub_219BF5414();
    v115 = v114;

    v116 = v283;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v116 = sub_218840D24(0, *(v116 + 2) + 1, 1, v116);
    }

    v118 = *(v116 + 2);
    v117 = *(v116 + 3);
    if (v118 >= v117 >> 1)
    {
      v116 = sub_218840D24((v117 > 1), v118 + 1, 1, v116);
    }

    (*v200)(v252, v253);
    *(v116 + 2) = v118 + 1;
    v119 = &v116[16 * v118];
    *(v119 + 4) = v113;
    *(v119 + 5) = v115;
    v283 = v116;
    v74 = v263;
LABEL_41:
    v75 = v264;
    goto LABEL_9;
  }

LABEL_5:
  sub_218BD359C(v71, sub_218BD3410);
  v76 = v227;
  v77 = v226;
  v78 = v229;
  (*(v227 + 104))(v226, *MEMORY[0x277D2DB60], v229);
  v80 = v283;
  v79 = v284;
  v81 = sub_219BE97D4();
  v82 = v228;
  (*(*(v81 - 8) + 56))(v228, 1, 1, v81);
  v83 = sub_219BDF474();
  (*(*(v83 - 8) + 56))(v230, 1, 1, v83);
  v84 = v218;
  v281 = sub_218E65F90(v218);
  if (v85)
  {
    goto LABEL_78;
  }

  LODWORD(v280) = sub_21968FE54(v82, v84);
  (*(v76 + 16))(v220, v77, v78);
  v86 = v212;
  sub_219BE6934();
  v87 = v246;
  v88 = v246 + 32;
  v89 = v213;
  v90 = v86;
  v91 = v219;
  v279 = *(v246 + 32);
  (v279)(v213, v90, v219);
  v277 = *(v87 + 88);
  v278 = v87 + 88;
  v92 = (v277)(v89, v91);
  LODWORD(v276) = *MEMORY[0x277D30158];
  if (v92 == v276)
  {
    (*(v214 + 104))(v221, *MEMORY[0x277D2F608], v215);
  }

  else if (v92 == *MEMORY[0x277D30150])
  {
    (*(v214 + 104))(v221, *MEMORY[0x277D2F6E8], v215);
  }

  else
  {
    if (v92 == *MEMORY[0x277D30168])
    {
      v146 = MEMORY[0x277D2F6C8];
    }

    else
    {
      v146 = MEMORY[0x277D2F818];
    }

    (*(v214 + 104))(v221, *v146, v215);
  }

  v148 = *(v87 + 8);
  v147 = v87 + 8;
  v275 = v148;
  (v148)(v89, v91);
  v149 = sub_219BE6944();
  if (v281 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_75;
  }

  if (v281 > 0x7FFFFFFF)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v89 = v149;
  v84 = v150;
  v274 = v80;
  if (v79 >> 62)
  {
LABEL_76:
    v151 = sub_219BF7214();
    goto LABEL_52;
  }

  v151 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_52:
  v246 = v147;
  v272 = v84;
  v273 = v89;
  if (!v151)
  {
LABEL_65:
    v169 = v207;
    sub_219BE6934();
    v170 = v208;
    (v279)(v208, v169, v91);
    v171 = (v277)(v170, v91);
    v172 = v211;
    v173 = v229;
    v174 = v228;
    if (v171 == v276 || (v171 != *MEMORY[0x277D30150] ? (v175 = v171 == *MEMORY[0x277D30168]) : (v175 = 1), v175))
    {
      (v275)(v170, v91);
      v181 = *MEMORY[0x277D2E6B0];
      v178 = sub_219BE0674();
      (*(*(v178 - 8) + 104))(v172, v181, v178);
      v180 = v227;
    }

    else
    {
      v176 = *MEMORY[0x277D2E6C0];
      v177 = v170;
      v178 = sub_219BE0674();
      (*(*(v178 - 8) + 104))(v172, v176, v178);
      v179 = v177;
      v65 = v265;
      v180 = v227;
      (v275)(v179, v91);
    }

    sub_219BE0674();
    (*(*(v178 - 8) + 56))(v172, 0, 1, v178);
    v182 = v230;
    sub_218BD7CF0(v230, v210, sub_218B58F30);
    v183 = v209;
    sub_219BE15E4();

    sub_218BD359C(v182, sub_218B58F30);
    sub_218BD359C(v174, sub_218B58900);
    (*(v180 + 8))(v226, v173);
    (*(v198 + 8))(v218, v261);
    v204(v183, 0, 1, v205);
    sub_218B58ECC(v183, v206);
    goto LABEL_73;
  }

  v282 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v151 & ~(v151 >> 63), 0);
  if ((v151 & 0x8000000000000000) == 0)
  {
    v271 = v88;
    v152 = v282;
    if ((v79 & 0xC000000000000001) != 0)
    {
      v153 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v153, v79);
        v154 = [swift_unknownObjectRetain() articleID];
        v155 = sub_219BF5414();
        v157 = v156;
        swift_unknownObjectRelease_n();

        v282 = v152;
        v159 = *(v152 + 16);
        v158 = *(v152 + 24);
        if (v159 >= v158 >> 1)
        {
          sub_21870B65C((v158 > 1), v159 + 1, 1);
          v152 = v282;
        }

        ++v153;
        *(v152 + 16) = v159 + 1;
        v160 = v152 + 16 * v159;
        *(v160 + 32) = v155;
        *(v160 + 40) = v157;
      }

      while (v151 != v153);
    }

    else
    {
      v161 = v79 + 32;
      do
      {
        v162 = [swift_unknownObjectRetain_n() articleID];
        v163 = sub_219BF5414();
        v165 = v164;
        swift_unknownObjectRelease_n();

        v282 = v152;
        v167 = *(v152 + 16);
        v166 = *(v152 + 24);
        if (v167 >= v166 >> 1)
        {
          sub_21870B65C((v166 > 1), v167 + 1, 1);
          v152 = v282;
        }

        *(v152 + 16) = v167 + 1;
        v168 = v152 + 16 * v167;
        *(v168 + 32) = v163;
        *(v168 + 40) = v165;
        v161 += 8;
        --v151;
      }

      while (v151);
    }

    v91 = v219;
    v65 = v265;
    goto LABEL_65;
  }

  __break(1u);
LABEL_78:
  __break(1u);
}

uint64_t sub_218BD5BC4(uint64_t a1)
{
  sub_218BD3284(0);
  v4 = (*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80);
  v5 = *(*(v3 - 8) + 64);
  sub_218BD3378(0);
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_218BD2A40(a1, v1 + v4, v1 + v8, v9);
}

void sub_218BD5CD4(uint64_t a1)
{
  if (!qword_27CC0EC60)
  {
    sub_219BDE814();
    sub_219BDD7A4();
    sub_218BD31D8(&unk_27CC0EBE0, 255, MEMORY[0x277D30170], MEMORY[0x277D30160]);
    sub_218BD31D8(&qword_27CC14C40, 255, MEMORY[0x277D2FAE0], MEMORY[0x277D2FAC0]);
    v1 = sub_219BE6FA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0EC60);
    }
  }
}

uint64_t sub_218BD5DC8(uint64_t a1)
{
  sub_218BD799C(0);
  v3 = v2;
  v193 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v191 = v4;
  v192 = &v135 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58F30(0);
  MEMORY[0x28223BE20](v5 - 8);
  v188 = &v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD3220(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v187 = &v135 - v8;
  v197 = sub_219BE16E4();
  v196 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v198 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_219BDF584();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v209 = &v135 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_219BE16D4();
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v186 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = v11;
  MEMORY[0x28223BE20](v12);
  v207 = &v135 - v13;
  sub_218BD7A90(0);
  v203 = v14;
  v202 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v201 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_219BF0B74();
  v199 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v167 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_219BDD374();
  v181 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v171 = &v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = sub_219BDEE04();
  v180 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v169 = &v135 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_219BF04A4();
  v183 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v173 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_219BF07A4();
  v176 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v178 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_219BF0F34();
  v175 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v212 = &v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_219BF0614();
  v182 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v200 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF13A4();
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v135 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58CA4(0);
  v224 = v26;
  v222 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = &v135 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BD7B84(0);
  v30 = v29 - 8;
  MEMORY[0x28223BE20](v29);
  v32 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v135 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58FCC(0);
  v37 = v36;
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v40 = &v135 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8EF4();
  v208 = v35;
  v41 = v25;
  v210 = a1;
  v211 = v3;
  v42 = v37;
  sub_219BE8F24();
  v43 = MEMORY[0x277D84F90];
  v226 = MEMORY[0x277D84F90];
  v227 = MEMORY[0x277D84F90];
  v184 = v38;
  v44 = v38;
  v45 = v204;
  (*(v44 + 16))(v32, v40, v37);
  v46 = *(v30 + 44);
  sub_218BD31D8(&qword_27CC0EC88, 255, sub_218B58FCC, MEMORY[0x277D6D730]);
  v215 = v40;
  sub_219BF5DF4();
  sub_219BF5E84();
  v47 = *&v32[v46];
  v214 = v43;
  v206 = v43;
  v48 = v200;
  v216 = v42;
  if (v47 != v225)
  {
    v69 = v222++;
    v223 = (v69 + 2);
    v221 = *MEMORY[0x277D32DB8];
    v220 = (v182 + 11);
    v218 = *MEMORY[0x277D32D10];
    v217 = *MEMORY[0x277D32E00];
    v205 = *MEMORY[0x277D32E10];
    v177 = *MEMORY[0x277D32E18];
    v166 = *MEMORY[0x277D32DD8];
    v165 = *MEMORY[0x277D32CF8];
    v162 = *MEMORY[0x277D32DC0];
    v157 = *MEMORY[0x277D32CF0];
    v154 = *MEMORY[0x277D32E08];
    v153 = *MEMORY[0x277D32DB0];
    v152 = *MEMORY[0x277D32DE0];
    v151 = *MEMORY[0x277D32DF0];
    v219 = v182 + 1;
    v182 += 12;
    v150 = (v199 + 32);
    v149 = *MEMORY[0x277D32D38];
    v148 = (v199 + 8);
    v156 = (v183 + 32);
    v155 = (v183 + 8);
    v147 = *MEMORY[0x277D32DE8];
    v164 = v176 + 4;
    v163 = (v176 + 1);
    v146 = *MEMORY[0x277D32D18];
    v176 = (v175 + 4);
    ++v175;
    v145 = *MEMORY[0x277D32DA8];
    v144 = *MEMORY[0x277D32DF8];
    v143 = *MEMORY[0x277D32DD0];
    v161 = v180 + 16;
    v160 = (v180 + 8);
    v159 = v181 + 16;
    v158 = (v181 + 8);
    v206 = MEMORY[0x277D84F90];
    v214 = MEMORY[0x277D84F90];
    v183 = v41;
    do
    {
      v70 = sub_219BF5EC4();
      v71 = v224;
      (*v223)(v28);
      v70(&v225, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      (*v222)(v28, v71);
      sub_219BF1394();
      sub_218BD359C(v41, MEMORY[0x277D33320]);
      v72 = (*v220)(v48, v45);
      if (v72 != v221 && v72 != v218 && v72 != v217)
      {
        if (v72 == v205)
        {
          (*v182)(v48, v45);
          (*v176)(v212, v48, v213);
          v73 = [sub_219BF0F14() articleID];
          swift_unknownObjectRelease();
          v74 = sub_219BF5414();
          v199 = v75;

          v76 = v227;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v76 = sub_218840D24(0, *(v76 + 2) + 1, 1, v76);
          }

          v78 = *(v76 + 2);
          v77 = *(v76 + 3);
          if (v78 >= v77 >> 1)
          {
            v76 = sub_218840D24((v77 > 1), v78 + 1, 1, v76);
          }

          (*v175)(v212, v213);
          *(v76 + 2) = v78 + 1;
          v79 = &v76[16 * v78];
          v80 = v199;
          *(v79 + 4) = v74;
          *(v79 + 5) = v80;
          v227 = v76;
          goto LABEL_27;
        }

        if (v72 != v177)
        {
          if (v72 == v166)
          {
            (*v182)(v48, v45);
            (*v164)(v178, v48, v179);
            v81 = sub_219BF06B4();
            v82 = [v81 identifier];

            v83 = sub_219BF5414();
            v199 = v84;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v214 = sub_218840D24(0, *(v214 + 2) + 1, 1, v214);
            }

            v86 = *(v214 + 2);
            v85 = *(v214 + 3);
            v87 = v86 + 1;
            if (v86 >= v85 >> 1)
            {
              v214 = sub_218840D24((v85 > 1), v86 + 1, 1, v214);
            }

            (*v163)(v178, v179);
            v88 = v214;
            goto LABEL_26;
          }

          if (v72 != v165)
          {
            if (v72 == v162)
            {
              (*v182)(v48, v45);
              (*v156)(v173, v48, v174);
              v91 = [sub_219BF0404() identifier];
              swift_unknownObjectRelease();
              v83 = sub_219BF5414();
              v199 = v92;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v206 = sub_218840D24(0, *(v206 + 2) + 1, 1, v206);
              }

              v86 = *(v206 + 2);
              v93 = *(v206 + 3);
              v87 = v86 + 1;
              if (v86 >= v93 >> 1)
              {
                v206 = sub_218840D24((v93 > 1), v86 + 1, 1, v206);
              }

              (*v155)(v173, v174);
              v88 = v206;
LABEL_26:
              *(v88 + 2) = v87;
              v89 = &v88[16 * v86];
              v90 = v199;
              *(v89 + 4) = v83;
              *(v89 + 5) = v90;
LABEL_27:
              v41 = v183;
              goto LABEL_11;
            }

            if (v72 != v157 && v72 != v154 && v72 != v153)
            {
              if (v72 == v152)
              {
                (*v182)(v48, v45);
                v94 = *v48;
                v95 = sub_219BE5B44();
                v96 = *(v95 + 16);
                v137 = v94;
                if (v96)
                {
                  v225 = MEMORY[0x277D84F90];
                  v97 = v95;
                  v199 = v96;
                  sub_21870B65C(0, v96, 0);
                  v98 = v225;
                  v99 = (*(v180 + 80) + 32) & ~*(v180 + 80);
                  v136 = v97;
                  v100 = v97 + v99;
                  v139 = *(v180 + 72);
                  v138 = *(v180 + 16);
                  do
                  {
                    v101 = v169;
                    v142 = v100;
                    v102 = v170;
                    v138(v169, v100, v170);
                    v103 = [sub_219BDEDF4() articleID];
                    v141 = sub_219BF5414();
                    v140 = v104;
                    swift_unknownObjectRelease();

                    (*v160)(v101, v102);
                    v225 = v98;
                    v106 = *(v98 + 16);
                    v105 = *(v98 + 24);
                    if (v106 >= v105 >> 1)
                    {
                      sub_21870B65C((v105 > 1), v106 + 1, 1);
                      v98 = v225;
                    }

                    *(v98 + 16) = v106 + 1;
                    v107 = v98 + 16 * v106;
                    v108 = v140;
                    *(v107 + 32) = v141;
                    *(v107 + 40) = v108;
                    v109 = v199-- == 1;
                    v100 = v142 + v139;
                  }

                  while (!v109);

                  v45 = v204;
                  v41 = v183;
                  v118 = v98;
                }

                else
                {

                  v118 = MEMORY[0x277D84F90];
                }

                sub_2191ED3E8(v118);
                v119 = sub_219BE5B34();
                v120 = *(v119 + 16);
                if (v120)
                {
                  v225 = MEMORY[0x277D84F90];
                  v121 = v119;
                  v199 = v120;
                  sub_21870B65C(0, v120, 0);
                  v122 = v225;
                  v123 = (*(v181 + 80) + 32) & ~*(v181 + 80);
                  v136 = v121;
                  v124 = v121 + v123;
                  v139 = *(v181 + 72);
                  v138 = *(v181 + 16);
                  do
                  {
                    v125 = v171;
                    v142 = v124;
                    v126 = v172;
                    v138(v171, v124, v172);
                    v127 = sub_219BDD364();
                    v128 = [v127 identifier];
                    v141 = sub_219BF5414();
                    v140 = v129;

                    (*v158)(v125, v126);
                    v225 = v122;
                    v131 = *(v122 + 16);
                    v130 = *(v122 + 24);
                    if (v131 >= v130 >> 1)
                    {
                      sub_21870B65C((v130 > 1), v131 + 1, 1);
                      v122 = v225;
                    }

                    *(v122 + 16) = v131 + 1;
                    v132 = v122 + 16 * v131;
                    v133 = v140;
                    *(v132 + 32) = v141;
                    *(v132 + 40) = v133;
                    v109 = v199-- == 1;
                    v124 = v142 + v139;
                  }

                  while (!v109);

                  v45 = v204;
                  v41 = v183;
                  v134 = v122;
                }

                else
                {

                  v134 = MEMORY[0x277D84F90];
                }

                sub_2191ED3E8(v134);

                goto LABEL_11;
              }

              if (v72 == v151)
              {
                (*v182)(v48, v45);
                (*v150)(v167, v48, v168);
                v110 = sub_219BF0B44();
                v111 = [v110 identifier];

                v142 = sub_219BF5414();
                v199 = v112;

                v113 = v226;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v113 = sub_218840D24(0, *(v113 + 2) + 1, 1, v113);
                }

                v115 = *(v113 + 2);
                v114 = *(v113 + 3);
                if (v115 >= v114 >> 1)
                {
                  v113 = sub_218840D24((v114 > 1), v115 + 1, 1, v113);
                }

                (*v148)(v167, v168);
                *(v113 + 2) = v115 + 1;
                v116 = &v113[16 * v115];
                v117 = v199;
                *(v116 + 4) = v142;
                *(v116 + 5) = v117;
                v226 = v113;
                goto LABEL_27;
              }

              if (v72 != v149 && v72 != v147 && v72 != v146 && v72 != v145 && v72 != v144 && v72 == v143)
              {
                goto LABEL_11;
              }
            }
          }
        }
      }

      (*v219)(v48, v45);
LABEL_11:
      sub_219BF5E84();
    }

    while (*&v32[v46] != v225);
  }

  sub_218BD359C(v32, sub_218BD7B84);
  v49 = v201;
  sub_219BE8F04();
  v50 = sub_218E66208(v215);
  v52 = v51;
  result = (*(v202 + 8))(v49, v203);
  if ((v52 & 1) == 0)
  {
    sub_218BD24C0(v208);
    (*(v194 + 104))(v209, *MEMORY[0x277D2DB48], v195);
    (*(v196 + 104))(v198, *MEMORY[0x277D2F818], v197);
    result = sub_219BE6944();
    v224 = result;
    if (v50 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v50 <= 0x7FFFFFFF)
    {
      v54 = *MEMORY[0x277D2E6C0];
      v55 = sub_219BE0674();
      v56 = *(v55 - 8);
      v57 = v187;
      (*(v56 + 104))(v187, v54, v55);
      (*(v56 + 56))(v57, 0, 1, v55);
      v58 = sub_219BDF474();
      (*(*(v58 - 8) + 56))(v188, 1, 1, v58);
      v59 = v207;
      sub_219BE15E4();
      v60 = v189;
      v61 = v186;
      v62 = v190;
      (*(v189 + 16))(v186, v59, v190);
      v63 = v193;
      v64 = v192;
      v65 = v211;
      (*(v193 + 16))(v192, v210, v211);
      v66 = (*(v60 + 80) + 16) & ~*(v60 + 80);
      v67 = (v185 + *(v63 + 80) + v66) & ~*(v63 + 80);
      v68 = swift_allocObject();
      (*(v60 + 32))(v68 + v66, v61, v62);
      (*(v63 + 32))(v68 + v67, v64, v65);
      sub_219BDD154();

      (*(v60 + 8))(v207, v62);
      sub_218BD359C(v208, sub_218B58900);
      return (*(v184 + 8))(v215, v216);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}