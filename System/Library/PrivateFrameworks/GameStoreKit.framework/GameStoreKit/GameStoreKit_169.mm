uint64_t sub_24F7ABE60()
{
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD88();

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);

  return v1;
}

BOOL sub_24F7ABF28()
{
  v1 = v0;
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD88();

  swift_beginAccess();
  if (*(*(v0 + 64) + 16))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_24F91FD88();

  if (*(v0 + 72))
  {
    v3 = sub_24F92CE08();

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  else
  {
  }

  swift_getKeyPath();
  sub_24F91FD88();

  return *(v1 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID + 8) != 0;
}

void sub_24F7AC0B8(unsigned __int8 *a1)
{
  v2 = *a1;
  if (*(v1 + 72))
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x746E65636572;
  }

  if (*(v1 + 72))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (v2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x746E65636572;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v11 = v1;
      sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
      sub_24F91FD78();

      return;
    }
  }

  v10 = *(v1 + 72);
  *(v1 + 72) = v2;
  LOBYTE(v11) = v10;
  sub_24F7ADD10(&v11);
}

double sub_24F7AC248(unsigned __int8 *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    swift_getKeyPath();
    sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
    sub_24F91FD88();

    v9 = v2;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24ED7D6EC(v8, v3);
  }

  else
  {
    swift_getKeyPath();
    sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
    sub_24F91FD88();

    v9 = v2;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24F7A5EE4(v3, v8);
  }

  swift_endAccess();
  v9 = v2;
  swift_getKeyPath();
  sub_24F91FD98();

  v9 = v2;
  sub_24F9280C8();
  swift_getKeyPath();
  v9 = v2;
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD88();

  swift_beginAccess();
  v4 = v2[8];
  swift_getKeyPath();
  v8[0] = v2;

  sub_24F91FD88();

  v8[0] = v2;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  v5 = v2[5];
  v6 = v2[6];
  __swift_mutable_project_boxed_opaque_existential_1((v2 + 2), v5);
  (*(v6 + 16))(v4, v5, v6);
  swift_endAccess();
  v8[0] = v2;
  swift_getKeyPath();
  sub_24F91FD98();

  return result;
}

uint64_t sub_24F7AC5B8()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = v1 == 1;
    if (v1 == 1)
    {
      v3 = "trollerSupport.Text";
    }

    else
    {
      v3 = "_genresFilterOptions";
    }

    if (v2)
    {
      v4 = 0xD000000000000028;
    }

    else
    {
      v4 = 0xD000000000000033;
    }
  }

  else
  {
    v5 = [objc_opt_self() currentDevice];
    v6 = [v5 userInterfaceIdiom];

    v3 = "f.FilterMenu.Arcade.Text";
    if (v6)
    {
      v4 = 0xD000000000000030;
    }

    else
    {
      v3 = "talled.iPad.Text";
      v4 = 0xD000000000000032;
    }
  }

  v8 = 0;
  v9 = 0xE000000000000000;

  v7 = v3 | 0x8000000000000000;
  return localizedString(_:comment:)(*&v4, *&v8)._countAndFlagsBits;
}

double sub_24F7AC698()
{
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD88();

  return result;
}

uint64_t sub_24F7AC744@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  swift_beginAccess();
  return sub_24F7AF388(v5 + v3, a1);
}

uint64_t sub_24F7AC80C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8, &qword_24FA29910);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  swift_getKeyPath();
  v13 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider___observationRegistrar;
  v29 = v2;
  v26[0] = sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  v26[1] = v13;
  sub_24F91FD88();

  v15 = *(v2 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);
  v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID + 8);
  v27 = a1;
  sub_24F7AF388(a1, v12);
  v16 = sub_24F920678();
  v17 = *(v16 - 8);
  LODWORD(v13) = (*(v17 + 48))(v12, 1, v16);

  if (v13 == 1)
  {
    sub_24E601704(v12, &qword_27F2501E8, &qword_24FA29910);
    if (!v14)
    {
      goto LABEL_14;
    }

LABEL_11:
    v22 = 0;
    goto LABEL_17;
  }

  v18 = sub_24F920658();
  v20 = v19;
  (*(v17 + 8))(v12, v16);
  if (v14)
  {
    if (v20)
    {
      if (v15 == v18 && v14 == v20)
      {
        v22 = 1;
      }

      else
      {
        v22 = sub_24F92CE08();
      }

      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if (!v20)
  {
LABEL_14:
    v22 = 1;
    goto LABEL_18;
  }

  v22 = 0;
LABEL_17:

LABEL_18:
  sub_24F7AF388(v27, v9);
  v23 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  swift_beginAccess();
  sub_24F7AF388(v2 + v23, v6);
  LOBYTE(v23) = sub_24F7AF3F8(v6, v9);
  sub_24E601704(v6, &qword_27F2501E8, &qword_24FA29910);
  if (v23)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v26[-2] = v2;
    v26[-1] = v9;
    v28 = v2;
    sub_24F91FD78();
  }

  else
  {
    sub_24F7AF388(v9, v6);
    sub_24F7AE0EC(v6);
  }

  result = sub_24E601704(v9, &qword_27F2501E8, &qword_24FA29910);
  if ((v22 & 1) == 0)
  {
    v28 = v2;
    return sub_24F9280C8();
  }

  return result;
}

uint64_t sub_24F7ACBB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8, &qword_24FA29910);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  swift_getKeyPath();
  v18 = v0;
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD88();

  v18 = v0;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  v8 = MEMORY[0x277D84FA0];
  v0[8] = MEMORY[0x277D84FA0];

  v17 = v0;
  swift_getKeyPath();
  sub_24F91FD98();

  swift_getKeyPath();
  v17 = v0;
  sub_24F91FD88();

  v17 = v0;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  v10 = v0[5];
  v9 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  (*(v9 + 16))(v8, v10, v9);
  swift_endAccess();
  v17 = v0;
  swift_getKeyPath();
  sub_24F91FD98();

  v11 = sub_24F920678();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  swift_beginAccess();
  sub_24F7AF388(v1 + v12, v4);
  LOBYTE(v12) = sub_24F7AF3F8(v4, v7);
  sub_24E601704(v4, &qword_27F2501E8, &qword_24FA29910);
  if (v12)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v15 - 2) = v1;
    *(&v15 - 1) = v7;
    v16 = v1;
    sub_24F91FD78();
  }

  else
  {
    sub_24F7AF388(v7, v4);
    sub_24F7AE0EC(v4);
  }

  sub_24E601704(v7, &qword_27F2501E8, &qword_24FA29910);
  v16 = v1;
  return sub_24F9280C8();
}

uint64_t GameSortOption.id.getter()
{
  if (*v0)
  {
    return 1701667182;
  }

  else
  {
    return 0x746E65636572;
  }
}

GameStoreKit::GameSortOption_optional __swiftcall GameSortOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24F7AD03C@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

unint64_t GameFilterOption.id.getter()
{
  v1 = 0x6E4F656461637261;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C6C6174736E69;
  }
}

GameStoreKit::GameFilterOption_optional __swiftcall GameFilterOption.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_24F7AD25C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E4F656461637261;
  v4 = 0xEA0000000000796CLL;
  v5 = 0x800000024FA3F9F0;
  if (v2 != 1)
  {
    v3 = 0xD000000000000015;
    v4 = 0x800000024FA3F9F0;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x656C6C6174736E69;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xED0000796C6E4F64;
  }

  v8 = 0x6E4F656461637261;
  if (*a2 == 1)
  {
    v5 = 0xEA0000000000796CLL;
  }

  else
  {
    v8 = 0xD000000000000015;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C6C6174736E69;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xED0000796C6E4F64;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

void sub_24F7AD374(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED0000796C6E4F64;
  v4 = 0xEA0000000000796CLL;
  v5 = 0x6E4F656461637261;
  if (v2 != 1)
  {
    v5 = 0xD000000000000015;
    v4 = 0x800000024FA3F9F0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C6C6174736E69;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_24F7AD4DC()
{
  result = qword_27F2502D0;
  if (!qword_27F2502D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2502D0);
  }

  return result;
}

uint64_t sub_24F7AD530()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F7AD5E8(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F7AD68C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F7AD740@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD88();

  swift_beginAccess();
  return sub_24E615E00(v1 + 16, a1);
}

uint64_t sub_24F7AD800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD88();

  swift_beginAccess();
  return sub_24E615E00(v3 + 16, a2);
}

uint64_t sub_24F7AD8C0(uint64_t a1, uint64_t *a2)
{
  sub_24E615E00(a1, v3);
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD78();

  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_24F7AD9A0(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1((a1 + 16), a2);
  return swift_endAccess();
}

uint64_t sub_24F7ADA04(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_24EDD4630(v3, a1);

  if (v4)
  {
    *(v1 + 64) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
    sub_24F91FD78();
  }
}

uint64_t sub_24F7ADB4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genresFilterOptions;

  v5 = sub_24EA18098(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
    sub_24F91FD78();
  }
}

uint64_t sub_24F7ADCA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 64) = a2;
}

double sub_24F7ADD10(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  swift_getKeyPath();
  v14 = v1;
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD88();

  if (v3)
  {
    v4 = 1701667182;
  }

  else
  {
    v4 = 0x746E65636572;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*(v1 + 72))
  {
    v6 = 1701667182;
  }

  else
  {
    v6 = 0x746E65636572;
  }

  if (*(v1 + 72))
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
  }

  else
  {
    v9 = sub_24F92CE08();

    if ((v9 & 1) == 0)
    {
      sub_24F9280C8();
      swift_getKeyPath();
      v14 = v2;
      sub_24F91FD88();

      v10 = *(v2 + 72);
      swift_getKeyPath();
      sub_24F91FD88();

      v14 = v2;
      swift_getKeyPath();
      sub_24F91FDA8();

      swift_beginAccess();
      v11 = *(v2 + 40);
      v12 = *(v2 + 48);
      __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, v11);
      v13 = v10;
      (*(v12 + 40))(&v13, v11, v12);
      swift_endAccess();
      v14 = v2;
      swift_getKeyPath();
      sub_24F91FD98();
    }
  }

  return result;
}

void sub_24F7ADF6C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);
  v6 = *(v2 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_24F92CE08() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
    sub_24F91FD78();

    return;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  sub_24F7AE734();
}

uint64_t sub_24F7AE0EC(uint64_t a1)
{
  v3 = sub_24F920678();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8, &qword_24FA29910);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  swift_beginAccess();
  sub_24F7AF70C(a1, v1 + v10);
  swift_endAccess();
  swift_getKeyPath();
  v18 = v1;
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD88();

  sub_24F7AF388(v1 + v10, v9);
  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_24E601704(v9, &qword_27F2501E8, &qword_24FA29910);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    (*(v4 + 16))(v6, v9, v3);
    sub_24E601704(v9, &qword_27F2501E8, &qword_24FA29910);
    v13 = sub_24F920658();
    v15 = v14;
    (*(v4 + 8))(v6, v3);
    v12 = v15;
    v11 = v13;
  }

  sub_24F7ADF6C(v11, v12);
  return sub_24E601704(a1, &qword_27F2501E8, &qword_24FA29910);
}

uint64_t sub_24F7AE374@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  swift_beginAccess();
  return sub_24F7AF388(v3 + v4, a2);
}

uint64_t sub_24F7AE43C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8, &qword_24FA29910);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24F7AF388(a1, &v6 - v3);
  return sub_24F7AE4D0(v4);
}

uint64_t sub_24F7AE4D0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8, &qword_24FA29910);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v9 - v4;
  v6 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter;
  swift_beginAccess();
  sub_24F7AF388(v1 + v6, v5);
  LOBYTE(v6) = sub_24F7AF3F8(v5, a1);
  sub_24E601704(v5, &qword_27F2501E8, &qword_24FA29910);
  if (v6)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v9[-2] = v1;
    v9[-1] = a1;
    v9[2] = v1;
    sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
    sub_24F91FD78();
  }

  else
  {
    sub_24F7AF388(a1, v5);
    sub_24F7AE0EC(v5);
  }

  return sub_24E601704(a1, &qword_27F2501E8, &qword_24FA29910);
}

uint64_t sub_24F7AE698(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8, &qword_24FA29910);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  sub_24F7AF388(a2, &v7 - v4);
  return sub_24F7AE0EC(v5);
}

double sub_24F7AE734()
{
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD88();

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID + 8);
  swift_getKeyPath();

  sub_24F91FD88();

  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, v3);
  (*(v4 + 64))(v1, v2, v3, v4);
  swift_endAccess();
  swift_getKeyPath();
  sub_24F91FD98();

  return result;
}

double sub_24F7AE8E4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F7AA2B0(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD88();

  v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);
  a2[1] = v4;

  return result;
}

void sub_24F7AE99C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_24F7ADF6C(v1, v2);
}

double sub_24F7AE9DC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilter, &qword_27F2501E8, &qword_24FA29910);

  v1 = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_24F7AEAD4()
{
  v1 = sub_24F92B098();
  v2 = [v0 arrayForKey_];

  if (!v2 || (v3 = sub_24F92B5A8(), v2, v4 = sub_24E9E2340(v3), result = , !v4))
  {

    v4 = MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = *(v4 + 16);
  v8 = MEMORY[0x277D84F90];
LABEL_5:
  v9 = v4 + 40 + 16 * v6;
  while (1)
  {
    if (v7 == v6)
    {

      v14 = sub_24F45D990(v8);

      return v14;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    ++v6;
    v10 = v9 + 16;

    v11 = sub_24F92CB88();

    v9 = v10;
    if (v11 < 3)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24E617978(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        result = sub_24E617978((v12 > 1), v13 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v13 + 1;
      *(v8 + v13 + 32) = v11;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void sub_24F7AEC9C(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    v4 = (v2 & 1) == 0;
    v5 = 1701667182;
    if (v4)
    {
      v5 = 0x746E65636572;
    }

    v6 = 0xE600000000000000;
    if (!v4)
    {
      v6 = 0xE400000000000000;
    }

    v8[0] = v5;
    v8[1] = v6;
    v3 = sub_24F92CDE8();
    sub_24EB715C4(v8);
  }

  v7 = sub_24F92B098();
  [v1 setObject:v3 forKey:v7];
  swift_unknownObjectRelease();
}

void sub_24F7AED8C(uint64_t a1)
{
  v2 = *v1;
  sub_24F7AB424(a1);

  v3 = sub_24F92B588();

  v4 = sub_24F92B098();
  [v2 setObject:v3 forKey:v4];
}

void sub_24F7AEE40(char *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_24F92B098();
  v5 = [v3 stringForKey_];

  if (v5)
  {
    sub_24F92B0D8();

    v6 = sub_24F92CB88();

    if (v6 == 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    if (!v6)
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 2;
  }

  *a1 = v7;
}

uint64_t sub_24F7AEF40()
{
  v1 = *v0;
  v2 = sub_24F92B098();
  v3 = [v1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_24F92B0D8();

  return v4;
}

void sub_24F7AEFD8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_24F92B098();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_24F92B098();
  [v3 setObject:v4 forKey:v5];
  swift_unknownObjectRelease();
}

uint64_t type metadata accessor for GameLibraryOptionProvider(uint64_t a1)
{
  result = qword_27F2502F8;
  if (!qword_27F2502F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7AF0F0(uint64_t a1)
{
  sub_24F7AF1F4(319);
  if (v1 <= 0x3F)
  {
    sub_24F91FDC8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24F7AF1F4(uint64_t a1)
{
  if (!qword_27F250308)
  {
    sub_24F920678();
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F250308);
    }
  }
}

double sub_24F7AF254()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 72);
  *(v1 + 72) = *(v0 + 24);
  v4 = v2;
  return sub_24F7ADD10(&v4);
}

void sub_24F7AF2EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  sub_24F7ADF6C(v1, v2);
}

void sub_24F7AF32C()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genreFilterID);
  *v2 = v0[3];
  v2[1] = v1;

  sub_24F7AE734();
}

uint64_t sub_24F7AF388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8, &qword_24FA29910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7AF3F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F920678();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8, &qword_24FA29910);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250310, &qword_24FA29940);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_24F7AF388(a1, &v21 - v12);
  sub_24F7AF388(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_24F7AF388(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_24F7AA2B0(&qword_27F2252D0, MEMORY[0x277D0CDA0], MEMORY[0x277D0CDB8]);
      v18 = sub_24F92AFF8();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_24E601704(v13, &qword_27F2501E8, &qword_24FA29910);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_24E601704(v13, &qword_27F250310, &qword_24FA29940);
    v17 = 1;
    return v17 & 1;
  }

  sub_24E601704(v13, &qword_27F2501E8, &qword_24FA29910);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_24F7AF70C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2501E8, &qword_24FA29910);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7AF784()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider__genresFilterOptions) = *(v0 + 24);
}

unint64_t sub_24F7AF7C8()
{
  result = qword_27F250318;
  if (!qword_27F250318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250318);
  }

  return result;
}

unint64_t sub_24F7AF81C()
{
  result = qword_27F250320;
  if (!qword_27F250320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250320);
  }

  return result;
}

uint64_t sub_24F7AF8B8(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_24F7AFA50(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for PlayerAvatar(0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for LargePlayerLockup(uint64_t a1)
{
  result = qword_27F250328;
  if (!qword_27F250328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7AFC20(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlayerAvatar(319);
    if (v2 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
          if (v5 <= 0x3F)
          {
            sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F7AFD3C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2503D0, &qword_24FA29C68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7B1B08();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for LargePlayerLockup(0);
    v8[14] = 1;
    type metadata accessor for PlayerAvatar(0);
    sub_24F7B1C24(&qword_27F218A38, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    sub_24F92CCA8();
    v8[11] = 4;
    sub_24F929608();
    sub_24F7B1C24(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v8[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v8[9] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
    sub_24E65CD0C();
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7B00F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v42);
  v43 = v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = v40 - v5;
  v6 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v6);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2503C0, &qword_24FA29C60);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  v12 = type metadata accessor for LargePlayerLockup(0);
  MEMORY[0x28223BE20](v12);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 32);
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v50 = v16;
  v18(&v14[v16], 1, 1, v17);
  v19 = &v14[v12[9]];
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 32) = 0;
  v49 = v19;
  sub_24E61DA68(&v53, v19, qword_27F21B590, &unk_24F93BE30);
  v20 = v12[10];
  v21 = sub_24F92A6D8();
  v22 = *(*(v21 - 8) + 56);
  v51 = v20;
  v22(&v14[v20], 1, 1, v21);
  v23 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F7B1B08();
  v47 = v11;
  v24 = v48;
  sub_24F92D108();
  if (v24)
  {
    v26 = v50;
    __swift_destroy_boxed_opaque_existential_1(v52);
    v27 = v49;
    sub_24E601704(&v14[v26], &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v27, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v14[v51], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v48 = v17;
    v25 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v56 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v28 = v54;
    *v14 = v53;
    *(v14 + 1) = v28;
    *(v14 + 4) = v55;
    LOBYTE(v53) = 1;
    sub_24F7B1C24(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CC68();
    v29 = v50;
    sub_24E72FFFC(v8, &v14[v12[5]]);
    LOBYTE(v53) = 2;
    v30 = sub_24F92CC28();
    v31 = v12[6];
    *v31 = v30;
    v31[1] = v32;
    LOBYTE(v53) = 3;
    v33 = sub_24F92CBC8();
    v34 = v49;
    v35 = &v14[v12[7]];
    *v35 = v33;
    v35[1] = v36;
    v40[1] = v36;
    LOBYTE(v53) = 4;
    sub_24F7B1C24(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E61DA68(v25, &v14[v29], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v56 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    v37 = v45;
    sub_24E61DA68(&v53, v34, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v53) = 6;
    sub_24E65CAA0();
    v38 = v43;
    sub_24F92CC68();
    (*(v37 + 8))(v47, v46);
    sub_24E61DA68(v38, &v14[v51], &qword_27F215440, &unk_24F942BD0);
    sub_24F7B1B5C(v14, v41, type metadata accessor for LargePlayerLockup);
    __swift_destroy_boxed_opaque_existential_1(v52);
    return sub_24F7B1BC4(v14, type metadata accessor for LargePlayerLockup);
  }
}

uint64_t sub_24F7B0904()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  if (v1 != 5)
  {
    v3 = 0x4D747865746E6F63;
  }

  v4 = 0x656C746974627573;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x726174617661;
  if (v1 != 1)
  {
    v5 = 0x656C746974;
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

uint64_t sub_24F7B09D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F7B1DE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F7B09FC(uint64_t a1)
{
  v2 = sub_24F7B1B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7B0A38(uint64_t a1)
{
  v2 = sub_24F7B1B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7B0A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 40), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F7B0BB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250348, &qword_24FA29B18);
  MEMORY[0x28223BE20](v2);
  v4 = &v20[-v3 - 8];
  *v4 = sub_24F924C88();
  *(v4 + 1) = 0x4028000000000000;
  v4[16] = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250350, &qword_24FA29B20);
  sub_24F7B0DA8(a1, &v4[*(v5 + 44)]);
  v6 = sub_24F925808();
  sub_24F923318();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250358, &qword_24FA29B28) + 36)];
  *v15 = v6;
  *(v15 + 1) = v8;
  *(v15 + 2) = v10;
  *(v15 + 3) = v12;
  *(v15 + 4) = v14;
  v15[40] = 0;
  v4[*(v2 + 36)] = 0;
  v16 = type metadata accessor for LargePlayerLockup(0);
  sub_24E60169C(a1 + *(v16 + 36), v20, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v20, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v17 = sub_24F9248C8();
  __swift_project_value_buffer(v17, qword_27F39F078);
  sub_24F7B1978();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v4, &qword_27F250348, &qword_24FA29B18);
}

uint64_t sub_24F7B0DA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250380, &qword_24FA29B40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250388, &qword_24FA29B48);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  v19 = type metadata accessor for LargePlayerLockup(0);
  sub_24F7B1B5C(a1 + *(v19 + 20), v11, type metadata accessor for PlayerAvatar);
  v30 = 7;
  sub_24F8319B8(v11, &v30, v18);
  v20 = sub_24F927618();
  v22 = v21;
  KeyPath = swift_getKeyPath();
  v24 = &v18[*(v13 + 44)];
  *v24 = KeyPath;
  v24[8] = 0;
  *(v24 + 2) = v20;
  *(v24 + 3) = v22;
  *v8 = sub_24F924C88();
  *(v8 + 1) = 0x4000000000000000;
  v8[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250390, &qword_24FA29B80);
  sub_24F7B1084(a1, &v8[*(v25 + 44)]);
  sub_24E60169C(v18, v15, &qword_27F250388, &qword_24FA29B48);
  sub_24E60169C(v8, v5, &qword_27F250380, &qword_24FA29B40);
  v26 = v29;
  sub_24E60169C(v15, v29, &qword_27F250388, &qword_24FA29B48);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250398, &unk_24FA29B88);
  sub_24E60169C(v5, v26 + *(v27 + 48), &qword_27F250380, &qword_24FA29B40);
  sub_24E601704(v8, &qword_27F250380, &qword_24FA29B40);
  sub_24E601704(v18, &qword_27F250388, &qword_24FA29B48);
  sub_24E601704(v5, &qword_27F250380, &qword_24FA29B40);
  return sub_24E601704(v15, &qword_27F250388, &qword_24FA29B48);
}

uint64_t sub_24F7B1084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a1;
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F246980, &unk_24FA041B0);
  MEMORY[0x28223BE20](v3);
  v5 = &v64 - v4;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2503A0, &qword_24FA29B98);
  MEMORY[0x28223BE20](v82);
  v77 = &v64 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2503A8, &qword_24FA29BA0);
  MEMORY[0x28223BE20](v75);
  v80 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v76 = &v64 - v9;
  MEMORY[0x28223BE20](v10);
  v79 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2503B0, &qword_24FA29BA8);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v78 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v64 - v16;
  v69 = type metadata accessor for LargePlayerLockup(0);
  v18 = (a1 + *(v69 + 24));
  v19 = v18[1];
  v83 = *v18;
  v84 = v19;
  v20 = sub_24E600AEC();

  v73 = v20;
  v65 = sub_24F925E18();
  v66 = v21;
  v23 = v22;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v74 = v3;
  v27 = &v17[*(v3 + 36)];
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23CDC0, &qword_24FA04220);
  v28 = *(v72 + 28);
  v29 = *MEMORY[0x277CE0B28];
  v30 = sub_24F925C38();
  v31 = *(v30 - 8);
  v32 = *(v31 + 104);
  v71 = v29;
  v67 = v31 + 104;
  v68 = v32;
  v32(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  *v17 = v65;
  *(v17 + 1) = v23;
  v17[16] = v25 & 1;
  *(v17 + 3) = v66;
  *(v17 + 4) = KeyPath;
  *(v17 + 5) = 1;
  v17[48] = 0;
  sub_24F9258D8();
  v33 = sub_24F9258E8();

  v34 = swift_getKeyPath();
  v35 = &v17[*(v82 + 36)];
  *v35 = v34;
  v35[1] = v33;
  *&v17[*(v13 + 44)] = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v36 = (v70 + *(v69 + 28));
  v37 = v36[1];
  if (v37)
  {
    v38 = *v36;
    v39 = v37;
  }

  else
  {
    v39 = 0xE100000000000000;
    v38 = 32;
  }

  v83 = v38;
  v84 = v39;

  v40 = sub_24F925E18();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = swift_getKeyPath();
  v48 = &v5[*(v74 + 36)];
  v68(v48 + *(v72 + 28), v71, v30);
  *v48 = swift_getKeyPath();
  *v5 = v40;
  *(v5 + 1) = v42;
  v5[16] = v44 & 1;
  *(v5 + 3) = v46;
  *(v5 + 4) = v47;
  *(v5 + 5) = 1;
  v5[48] = 0;
  sub_24F925A18();
  sub_24F925938();
  v49 = sub_24F9259A8();

  v50 = swift_getKeyPath();
  v51 = v77;
  sub_24E6009C8(v5, v77, &qword_27F246980, &unk_24FA041B0);
  v52 = (v51 + *(v82 + 36));
  *v52 = v50;
  v52[1] = v49;
  LODWORD(v50) = sub_24F9251C8();
  v53 = v76;
  v54 = &v76[*(v75 + 36)];
  v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
  v56 = *MEMORY[0x277CE13B8];
  v57 = sub_24F927748();
  (*(*(v57 - 8) + 104))(&v54[v55], v56, v57);
  *v54 = v50;
  sub_24E6009C8(v51, v53, &qword_27F2503A0, &qword_24FA29B98);
  v58 = v79;
  sub_24E6009C8(v53, v79, &qword_27F2503A8, &qword_24FA29BA0);
  v59 = v78;
  sub_24E60169C(v17, v78, &qword_27F2503B0, &qword_24FA29BA8);
  v60 = v80;
  sub_24E60169C(v58, v80, &qword_27F2503A8, &qword_24FA29BA0);
  v61 = v81;
  sub_24E60169C(v59, v81, &qword_27F2503B0, &qword_24FA29BA8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2503B8, &unk_24FA29C50);
  sub_24E60169C(v60, v61 + *(v62 + 48), &qword_27F2503A8, &qword_24FA29BA0);
  sub_24E601704(v58, &qword_27F2503A8, &qword_24FA29BA0);
  sub_24E601704(v17, &qword_27F2503B0, &qword_24FA29BA8);
  sub_24E601704(v60, &qword_27F2503A8, &qword_24FA29BA0);
  return sub_24E601704(v59, &qword_27F2503B0, &qword_24FA29BA8);
}

uint64_t sub_24F7B1690@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_24F924258();
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v9 = *(v8 + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_24F924B38();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  __asm { FMOV            V0.2D, #26.0 }

  *v7 = _Q0;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v17 = sub_24F926D08();

  v18 = MEMORY[0x277CDFC08];
  sub_24F7B1B5C(v7, v4, MEMORY[0x277CDFC08]);
  sub_24F7B1C24(&qword_27F229928, MEMORY[0x277CDFC08], MEMORY[0x277CDFBF8]);
  v19 = sub_24F927348();
  result = sub_24F7B1BC4(v7, v18);
  *(a1 + 40) = v19;
  *(a1 + 48) = v17;
  return result;
}

uint64_t sub_24F7B1830(uint64_t a1)
{
  sub_24F47D5A8();

  return sub_24F9218E8();
}

unint64_t sub_24F7B18C0()
{
  result = qword_27F250340;
  if (!qword_27F250340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250340);
  }

  return result;
}

unint64_t sub_24F7B1978()
{
  result = qword_27F250360;
  if (!qword_27F250360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250348, &qword_24FA29B18);
    sub_24F7B1A30();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250360);
  }

  return result;
}

unint64_t sub_24F7B1A30()
{
  result = qword_27F250368;
  if (!qword_27F250368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250358, &qword_24FA29B28);
    sub_24E602068(&qword_27F250370, &qword_27F250378, &unk_24FA29B30, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250368);
  }

  return result;
}

unint64_t sub_24F7B1B08()
{
  result = qword_27F2503C8;
  if (!qword_27F2503C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2503C8);
  }

  return result;
}

uint64_t sub_24F7B1B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7B1BC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7B1C24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F7B1C7C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250348, &qword_24FA29B18);
  sub_24F7B1978();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F7B1CE4()
{
  result = qword_27F2503D8;
  if (!qword_27F2503D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2503D8);
  }

  return result;
}

unint64_t sub_24F7B1D3C()
{
  result = qword_27F2503E0;
  if (!qword_27F2503E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2503E0);
  }

  return result;
}

unint64_t sub_24F7B1D94()
{
  result = qword_27F2503E8[0];
  if (!qword_27F2503E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F2503E8);
  }

  return result;
}

uint64_t sub_24F7B1DE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726174617661 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_24F7B2044()
{
  result = qword_27F216360;
  if (!qword_27F216360)
  {
    type metadata accessor for ResetRequestReviewPropertiesIfNeededAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216360);
  }

  return result;
}

uint64_t sub_24F7B209C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ResetRequestReviewPropertiesIfNeededAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24EA8880C(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24F7B3088(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24FA29E30;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24F7B22CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a1;
  v3[16] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FAD8, &qword_24F961870);
  v3[17] = swift_task_alloc();
  type metadata accessor for ResetRequestReviewPropertiesIfNeededAction(0);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();
  v5 = type metadata accessor for ASKBagContract(0);
  v6 = swift_task_alloc();
  v3[25] = v6;
  *v6 = v3;
  v6[1] = sub_24F7B2470;

  return MEMORY[0x28217F228](v3 + 14, v5, v5);
}

uint64_t sub_24F7B2470()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_24F7B2EE0;
  }

  else
  {
    v2 = sub_24F7B2584;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7B2584()
{
  v76 = v0;
  if (qword_27F210A70 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  sub_24F92A448();
  sub_24F92A408();
  (*(v2 + 8))(v1, v3);
  v4 = v0[3];
  v74 = v0[2];
  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v5 = v0[20];
  v6 = v0[21];
  v7 = v0[16];
  v8 = sub_24F9220D8();
  __swift_project_value_buffer(v8, qword_27F39E8E0);
  sub_24EA8880C(v7, v6);
  sub_24EA8880C(v7, v5);

  v9 = sub_24F9220B8();
  v10 = sub_24F92BD98();

  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[20];
  v12 = v0[21];
  if (v11)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v75 = v15;
    *v14 = 136315650;
    v16 = *(v12 + 16);
    v17 = *(v12 + 24);

    sub_24EA88870(v12);
    v18 = sub_24E7620D4(v16, v17, &v75);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = v13[1];
    v0[12] = *v13;
    v0[13] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
    v20 = sub_24F92B188();
    v22 = v21;
    sub_24EA88870(v13);
    v23 = sub_24E7620D4(v20, v22, &v75);

    *(v14 + 14) = v23;
    *(v14 + 22) = 2080;
    v24 = v74;
    *(v14 + 24) = sub_24E7620D4(v74, v4, &v75);
    _os_log_impl(&dword_24E5DD000, v9, v10, "ResetAppDefaults: \n    currentAppVersion: %s\n    requestReviewPropertiesLastResetAppVersion: %s\n    requestReviewResetAppVersion: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v15, -1, -1);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  else
  {

    sub_24EA88870(v13);
    sub_24EA88870(v12);
    v24 = v74;
  }

  v25 = v0[16];
  v26 = v0[17];
  v27 = *(v25 + 24);
  v73 = *(v25 + 16);
  v0[4] = v73;
  v0[5] = v27;
  v0[6] = v24;
  v0[7] = v4;
  v28 = sub_24F91F7C8();
  v29 = *(*(v28 - 8) + 56);
  v29(v26, 1, 1, v28);
  sub_24E600AEC();

  v30 = sub_24F92C5E8();
  sub_24ECB88E4(v26);

  if (v30 == -1)
  {
    sub_24EA8880C(v0[16], v0[18]);

    v40 = sub_24F9220B8();
    v41 = sub_24F92BD98();

    v42 = os_log_type_enabled(v40, v41);
    v43 = v0[18];
    if (!v42)
    {

      sub_24EA88870(v43);
      goto LABEL_25;
    }

    v44 = v24;
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v75 = v46;
    *v45 = 136315394;
    v47 = *(v43 + 16);
    v48 = *(v43 + 24);

    sub_24EA88870(v43);
    v49 = sub_24E7620D4(v47, v48, &v75);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2080;
    v50 = sub_24E7620D4(v44, v4, &v75);

    *(v45 + 14) = v50;
    _os_log_impl(&dword_24E5DD000, v40, v41, "ResetAppDefaults: No. Because app version %s is older than reset version %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v46, -1, -1);
    v51 = v45;
    goto LABEL_20;
  }

  v31 = v0[16];
  v32 = v31[1];
  if (!v32)
  {
    sub_24EA8880C(v31, v0[19]);

    v52 = sub_24F9220B8();
    v53 = sub_24F92BD98();

    v54 = os_log_type_enabled(v52, v53);
    v55 = v0[19];
    if (v54)
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v75 = v57;
      *v56 = 136315394;
      v59 = *(v55 + 16);
      v58 = *(v55 + 24);

      sub_24EA88870(v55);
      v60 = sub_24E7620D4(v59, v58, &v75);

      *(v56 + 4) = v60;
      *(v56 + 12) = 2080;
      v61 = sub_24E7620D4(v74, v4, &v75);

      *(v56 + 14) = v61;
      _os_log_impl(&dword_24E5DD000, v52, v53, "ResetAppDefaults: Yes. The counters are never reset. And app version %s is the same or newer than reset version %s.", v56, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v57, -1, -1);
      MEMORY[0x2530542D0](v56, -1, -1);
    }

    else
    {

      sub_24EA88870(v55);
    }

    sub_24F7B3228(v73, v27);

    goto LABEL_25;
  }

  v33 = *v31;
  v34 = v24;
  v35 = v0[17];
  v0[8] = v34;
  v0[9] = v4;
  v72 = v33;
  v0[10] = v33;
  v0[11] = v32;
  v29(v35, 1, 1, v28);
  v36 = sub_24F92C5E8();
  sub_24ECB88E4(v35);
  if (v36 != 1)
  {

    v40 = sub_24F9220B8();
    v62 = sub_24F92BD98();

    if (!os_log_type_enabled(v40, v62))
    {

      goto LABEL_25;
    }

    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v75 = v64;
    *v63 = 136315394;
    v65 = sub_24E7620D4(v74, v4, &v75);

    *(v63 + 4) = v65;
    *(v63 + 12) = 2080;
    v66 = sub_24E7620D4(v72, v32, &v75);

    *(v63 + 14) = v66;
    _os_log_impl(&dword_24E5DD000, v40, v62, "ResetAppDefaults: No. Reset version %s must be newer than last reset version %s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v64, -1, -1);
    v51 = v63;
LABEL_20:
    MEMORY[0x2530542D0](v51, -1, -1);

    goto LABEL_25;
  }

  v37 = sub_24F9220B8();
  v38 = sub_24F92BD98();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_24E5DD000, v37, v38, "ResetAppDefaults: Yes.", v39, 2u);
    MEMORY[0x2530542D0](v39, -1, -1);
  }

  sub_24F7B3228(v73, v27);

LABEL_25:
  v67 = v0[15];
  v68 = *MEMORY[0x277D21CA8];
  v69 = sub_24F928AE8();
  (*(*(v69 - 8) + 104))(v67, v68, v69);

  v70 = v0[1];

  return v70();
}

uint64_t sub_24F7B2EE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7B2F90()
{
  v1 = (type metadata accessor for ResetRequestReviewPropertiesIfNeededAction(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[8];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F7B3088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResetRequestReviewPropertiesIfNeededAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7B30EC(uint64_t a1)
{
  v4 = *(type metadata accessor for ResetRequestReviewPropertiesIfNeededAction(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 24);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F7B22CC(a1, v6, v1 + v5);
}

uint64_t sub_24F7B31E0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_24F7B3228(uint64_t a1, unint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 standardUserDefaults];
  NSUserDefaults.appLaunchCount.setter(1);

  if (qword_27F211430 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E8E0);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_24E5DD000, v7, v8, "appLaunchCount set to 1", v9, 2u);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  v10 = [v4 standardUserDefaults];
  sub_24F008CB4(0);

  v11 = sub_24F9220B8();
  v12 = sub_24F92BD98();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_24E5DD000, v11, v12, "gameLaunchCount set to 0", v13, 2u);
    MEMORY[0x2530542D0](v13, -1, -1);
  }

  v14 = [v4 standardUserDefaults];

  sub_24F00940C(a1, a2);

  oslog = sub_24F9220B8();
  v15 = sub_24F92BD98();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19 = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_24E7620D4(a1, a2, &v19);
    _os_log_impl(&dword_24E5DD000, oslog, v15, "requestReviewPropertiesLastResetAppVersion set to %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x2530542D0](v17, -1, -1);
    MEMORY[0x2530542D0](v16, -1, -1);
  }
}

uint64_t sub_24F7B3518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F7B3668(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardSetCard(uint64_t a1)
{
  result = qword_27F250470;
  if (!qword_27F250470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7B37F0(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      sub_24E67D9A0(319, &qword_27F213FD0, MEMORY[0x277D21C48]);
      if (v3 <= 0x3F)
      {
        sub_24E61C8D4(319);
        if (v4 <= 0x3F)
        {
          sub_24E67D9A0(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F7B38FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250530, &qword_24FA2A0B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7B5F8C();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CCA8();
    type metadata accessor for LeaderboardSetCard(0);
    v8[12] = 3;
    sub_24F9289E8();
    sub_24F7B60A8(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CCF8();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v8[10] = 5;
    sub_24F929608();
    sub_24F7B60A8(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7B3C88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250520, &qword_24FA2A0B0);
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v33 - v9;
  v11 = type metadata accessor for LeaderboardSetCard(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v12[9];
  v16 = sub_24F9289E8();
  v17 = *(*(v16 - 8) + 56);
  v42 = v15;
  v17(&v14[v15], 1, 1, v16);
  v18 = &v14[v12[10]];
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v40 = v18;
  sub_24E61DA68(&v44, v18, qword_27F21B590, &unk_24F93BE30);
  v19 = v12[11];
  v20 = sub_24F929608();
  v21 = *(*(v20 - 8) + 56);
  v41 = v19;
  v21(&v14[v19], 1, 1, v20);
  v22 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24F7B5F8C();
  v38 = v10;
  v23 = v39;
  sub_24F92D108();
  if (v23)
  {
    v26 = v40;
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_24E601704(&v14[v42], &qword_27F213FB0, &qword_24F93E6B0);
    sub_24E601704(v26, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v14[v41], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v39 = v16;
    v33[1] = v20;
    v24 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v47 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    v25 = v37;
    sub_24F92CC68();
    v27 = v45;
    *v14 = v44;
    *(v14 + 1) = v27;
    *(v14 + 4) = v46;
    LOBYTE(v44) = 1;
    *(v14 + 5) = sub_24F92CC28();
    *(v14 + 6) = v28;
    LOBYTE(v44) = 2;
    *(v14 + 7) = sub_24F92CBC8();
    *(v14 + 8) = v29;
    v33[0] = v29;
    LOBYTE(v44) = 3;
    sub_24F7B60A8(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    sub_24F92CC18();
    sub_24E61DA68(v7, &v14[v42], &qword_27F213FB0, &qword_24F93E6B0);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v47 = 4;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    v30 = v38;
    sub_24F92CC68();
    sub_24E61DA68(&v44, v40, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v44) = 5;
    sub_24F7B60A8(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v31 = v35;
    sub_24F92CC18();
    (*(v24 + 8))(v30, v25);
    sub_24E61DA68(v31, &v14[v41], &qword_27F213E68, &unk_24F93BC80);
    sub_24F7B5FE0(v14, v34, type metadata accessor for LeaderboardSetCard);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return sub_24F7B6048(v14, type metadata accessor for LeaderboardSetCard);
  }
}

uint64_t sub_24F7B4380()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6B726F77747261;
  v4 = 0x6575676573;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
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

uint64_t sub_24F7B442C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F7B627C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F7B4454(uint64_t a1)
{
  v2 = sub_24F7B5F8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7B4490(uint64_t a1)
{
  v2 = sub_24F7B5F8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7B454C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v46 = a1;
  v49 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40, &qword_24F984790);
  MEMORY[0x28223BE20](v47);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250490, &qword_24FA2A020);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250498, &qword_24FA2A028);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v46 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504A0, &qword_24FA2A030);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v46 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504A8, &qword_24FA2A038);
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  *v13 = sub_24F924C88();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504B0, &unk_24FA2A040);
  sub_24F7B4B20(a1, &v13[*(v25 + 44)]);
  sub_24F927618();
  sub_24F9242E8();
  sub_24E6009C8(v13, v17, &qword_27F250490, &qword_24FA2A020);
  v26 = &v17[*(v15 + 44)];
  v27 = v60;
  *(v26 + 4) = v59;
  *(v26 + 5) = v27;
  *(v26 + 6) = v61;
  v28 = v56;
  *v26 = v55;
  *(v26 + 1) = v28;
  v29 = v58;
  *(v26 + 2) = v57;
  *(v26 + 3) = v29;
  v30 = &v21[*(v19 + 44)];
  v31 = *(sub_24F924258() + 20);
  v32 = *MEMORY[0x277CE0118];
  v33 = sub_24F924B38();
  (*(*(v33 - 8) + 104))(v30 + v31, v32, v33);
  *v30 = a4;
  v30[1] = a4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48, &qword_24F9570D0);
  v35 = *(v34 + 36);
  v36 = type metadata accessor for GradientBackground(0);
  (*(*(v36 - 8) + 56))(v30 + v35, 1, 1, v36);
  *(v30 + *(v34 + 40)) = 0.0;
  sub_24E6009C8(v17, v21, &qword_27F250498, &qword_24FA2A028);
  v37 = sub_24F927618();
  v39 = v38;
  v48 = v22;
  v40 = &v24[*(v22 + 36)];
  v41 = sub_24E6A4C1C();
  sub_24F924B68();
  v50 = a3;
  v51 = a4;
  v52 = a5;
  v53 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E810, &qword_24F9996C0);
  v54[0] = &type metadata for GameOverlayViewPredicate;
  v54[1] = v41;
  swift_getOpaqueTypeConformance2();
  sub_24F0C1E88();
  sub_24F927578();
  v42 = &v40[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238ED8, &unk_24F9C6FF0) + 36)];
  *v42 = v37;
  v42[1] = v39;
  sub_24E6009C8(v21, v24, &qword_27F2504A0, &qword_24FA2A030);
  v43 = type metadata accessor for LeaderboardSetCard(0);
  sub_24E60169C(v46 + *(v43 + 32), v54, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v54, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v44 = sub_24F9248C8();
  __swift_project_value_buffer(v44, qword_27F39F078);
  sub_24F7B5D64();
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  return sub_24E601704(v24, &qword_27F2504A8, &qword_24FA2A038);
}

uint64_t sub_24F7B4B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504D8, &qword_24FA2A050);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504E0, &unk_24FA2A058);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  v21 = type metadata accessor for LeaderboardSetCard(0);
  sub_24E60169C(a1 + *(v21 + 28), v20, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24F927618();
  sub_24F9238C8();
  v22 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F238F18, &qword_24F9C7010) + 36)];
  v23 = v33;
  *v22 = v32;
  *(v22 + 1) = v23;
  *(v22 + 2) = v34;
  *&v20[*(v15 + 44)] = 0;
  *v13 = sub_24F924C88();
  *(v13 + 1) = 0;
  v13[16] = 1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504E8, &qword_24FA2A068);
  sub_24F7B4E44(a1, &v13[*(v24 + 44)]);
  sub_24F927618();
  sub_24F9238C8();
  v25 = &v13[*(v8 + 44)];
  v26 = v36;
  *v25 = v35;
  *(v25 + 1) = v26;
  *(v25 + 2) = v37;
  sub_24E60169C(v20, v17, &qword_27F2504E0, &unk_24FA2A058);
  sub_24E60169C(v13, v10, &qword_27F2504D8, &qword_24FA2A050);
  v27 = v31;
  sub_24E60169C(v17, v31, &qword_27F2504E0, &unk_24FA2A058);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504F0, &qword_24FA2A070);
  sub_24E60169C(v10, v27 + *(v28 + 48), &qword_27F2504D8, &qword_24FA2A050);
  sub_24E601704(v13, &qword_27F2504D8, &qword_24FA2A050);
  sub_24E601704(v20, &qword_27F2504E0, &unk_24FA2A058);
  sub_24E601704(v10, &qword_27F2504D8, &qword_24FA2A050);
  return sub_24E601704(v17, &qword_27F2504E0, &unk_24FA2A058);
}

uint64_t sub_24F7B4E44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2504F8, &qword_24FA2A078);
  MEMORY[0x28223BE20](v103);
  v104 = &v101 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250500, &qword_24FA2A080);
  v116 = *(v5 - 8);
  v117 = v5;
  MEMORY[0x28223BE20](v5);
  v106 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v101 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250508, &qword_24FA2A088);
  MEMORY[0x28223BE20](v9 - 8);
  v118 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v120 = &v101 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v109 = *(v13 - 8);
  v110 = v13;
  MEMORY[0x28223BE20](v13);
  v107 = &v101 - v14;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177A8, &unk_24F946390);
  MEMORY[0x28223BE20](v108);
  v112 = &v101 - v15;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250510, &unk_24FA2A090);
  MEMORY[0x28223BE20](v111);
  v115 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v113 = &v101 - v18;
  MEMORY[0x28223BE20](v19);
  v121 = &v101 - v20;
  v114 = a1;
  v21 = *(a1 + 40);
  v22 = *(a1 + 48);
  *&v131 = v21;
  *(&v131 + 1) = v22;
  v23 = sub_24E600AEC();

  v102 = v23;
  v24 = sub_24F925E18();
  v26 = v25;
  v28 = v27;
  sub_24F9258D8();
  v29 = sub_24F925C98();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v107;

  sub_24E600B40(v24, v26, v28 & 1);

  *&v131 = v29;
  *(&v131 + 1) = v31;
  LOBYTE(v132) = v33 & 1;
  *(&v132 + 1) = v35;
  sub_24F9268B8();
  sub_24E600B40(v29, v31, v33 & 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
  inited = swift_initStackObject();
  v101 = xmmword_24F93A400;
  *(inited + 16) = xmmword_24F93A400;
  LOBYTE(v26) = sub_24F925818();
  *(inited + 32) = v26;
  v38 = sub_24F9257F8();
  *(inited + 33) = v38;
  v39 = sub_24F925848();
  sub_24F925848();
  if (sub_24F925848() != v26)
  {
    v39 = sub_24F925848();
  }

  sub_24F925848();
  if (sub_24F925848() != v38)
  {
    v39 = sub_24F925848();
  }

  v40 = v120;
  sub_24F923318();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v112;
  (*(v109 + 32))(v112, v36, v110);
  v50 = v49 + *(v108 + 36);
  *v50 = v39;
  *(v50 + 8) = v42;
  *(v50 + 16) = v44;
  *(v50 + 24) = v46;
  *(v50 + 32) = v48;
  *(v50 + 40) = 0;
  sub_24F9275A8();
  sub_24F9242E8();
  v51 = v113;
  sub_24E6009C8(v49, v113, &qword_27F2177A8, &unk_24F946390);
  v52 = (v51 + *(v111 + 36));
  v53 = v129;
  v52[4] = v128;
  v52[5] = v53;
  v52[6] = v130;
  v54 = v125;
  *v52 = v124;
  v52[1] = v54;
  v55 = v127;
  v52[2] = v126;
  v52[3] = v55;
  sub_24E6009C8(v51, v121, &qword_27F250510, &unk_24FA2A090);
  v56 = *(v114 + 64);
  if (v56)
  {
    *&v131 = *(v114 + 56);
    *(&v131 + 1) = v56;

    v57 = sub_24F925E18();
    v59 = v58;
    v61 = v60;
    sub_24F925A18();
    v114 = sub_24F925C98();
    v63 = v62;
    v65 = v64;
    v67 = v66;

    sub_24E600B40(v57, v59, v61 & 1);

    v68 = swift_initStackObject();
    *(v68 + 16) = v101;
    v69 = sub_24F925828();
    *(v68 + 32) = v69;
    v70 = sub_24F9257F8();
    *(v68 + 33) = v70;
    v71 = sub_24F925848();
    sub_24F925848();
    if (sub_24F925848() != v69)
    {
      v71 = sub_24F925848();
    }

    sub_24F925848();
    if (sub_24F925848() != v70)
    {
      v71 = sub_24F925848();
    }

    sub_24F923318();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v79 = v78;
    v80 = v65 & 1;
    v123 = v65 & 1;
    v122 = 0;
    v81 = sub_24F9251C8();
    v82 = v104;
    v83 = &v104[*(v103 + 36)];
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
    v85 = *MEMORY[0x277CE13B8];
    v86 = sub_24F927748();
    (*(*(v86 - 8) + 104))(&v83[v84], v85, v86);
    *v83 = v81;
    *v82 = v114;
    *(v82 + 8) = v63;
    *(v82 + 16) = v80;
    *(v82 + 24) = v67;
    *(v82 + 32) = v71;
    *(v82 + 40) = v73;
    *(v82 + 48) = v75;
    *(v82 + 56) = v77;
    *(v82 + 64) = v79;
    *(v82 + 72) = 0;
    sub_24F9275C8();
    sub_24F9242E8();
    v87 = v106;
    sub_24E6009C8(v82, v106, &qword_27F2504F8, &qword_24FA2A078);
    v88 = v117;
    v89 = (v87 + *(v117 + 36));
    v90 = v136;
    v89[4] = v135;
    v89[5] = v90;
    v89[6] = v137;
    v91 = v132;
    *v89 = v131;
    v89[1] = v91;
    v92 = v134;
    v89[2] = v133;
    v89[3] = v92;
    v93 = v87;
    v94 = v105;
    sub_24E6009C8(v93, v105, &qword_27F250500, &qword_24FA2A080);
    v40 = v120;
    sub_24E6009C8(v94, v120, &qword_27F250500, &qword_24FA2A080);
    (*(v116 + 56))(v40, 0, 1, v88);
  }

  else
  {
    (*(v116 + 56))(v40, 1, 1, v117);
  }

  v95 = v121;
  v96 = v115;
  sub_24E60169C(v121, v115, &qword_27F250510, &unk_24FA2A090);
  v97 = v118;
  sub_24E60169C(v40, v118, &qword_27F250508, &qword_24FA2A088);
  v98 = v119;
  sub_24E60169C(v96, v119, &qword_27F250510, &unk_24FA2A090);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250518, &unk_24FA2A0A0);
  sub_24E60169C(v97, v98 + *(v99 + 48), &qword_27F250508, &qword_24FA2A088);
  sub_24E601704(v40, &qword_27F250508, &qword_24FA2A088);
  sub_24E601704(v95, &qword_27F250510, &unk_24FA2A090);
  sub_24E601704(v97, &qword_27F250508, &qword_24FA2A088);
  return sub_24E601704(v96, &qword_27F250510, &unk_24FA2A090);
}

uint64_t sub_24F7B5830@<X0>(uint64_t a1@<X8>, double a2@<D1>)
{
  v4 = sub_24F924258();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v7 + 28);
  v9 = *MEMORY[0x277CE0118];
  v10 = sub_24F924B38();
  (*(*(v10 - 8) + 104))(v6 + v8, v9, v10);
  *v6 = a2;
  v6[1] = a2;
  LODWORD(v9) = sub_24F925188();
  sub_24F923658();
  v11 = MEMORY[0x277CDFC08];
  sub_24F7B5FE0(v6, a1, MEMORY[0x277CDFC08]);
  v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E7F8, &qword_24FA00310) + 36);
  v13 = v24;
  *v12 = *&v23[8];
  *(v12 + 16) = v13;
  *(v12 + 32) = v25;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E800, &qword_24F9996B0);
  *(a1 + *(v14 + 52)) = v9;
  *(a1 + *(v14 + 56)) = 256;
  v15 = sub_24F927618();
  v17 = v16;
  sub_24F7B6048(v6, v11);
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E808, &qword_24F9996B8) + 36));
  *v18 = v15;
  v18[1] = v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E810, &qword_24F9996C0) + 36);
  v20 = *MEMORY[0x277CE13B8];
  v21 = sub_24F927748();
  return (*(*(v21 - 8) + 104))(a1 + v19, v20, v21);
}

uint64_t sub_24F7B5A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F924B38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 8);
  sub_24E60169C(a1, v15, &qword_27F213F18, &qword_24F93BE20);
  v10 = v15[1];
  *a2 = v15[0];
  *(a2 + 16) = v10;
  *(a2 + 32) = v16;
  (*(v6 + 104))(v8, *MEMORY[0x277CE0118], v5);
  v11 = sub_24F924258();
  *(a2 + 64) = v11;
  *(a2 + 72) = sub_24F7B60A8(&qword_27F212868, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a2 + 40));
  (*(v6 + 16))(boxed_opaque_existential_1 + *(v11 + 20), v8, v5);
  *boxed_opaque_existential_1 = v9;
  boxed_opaque_existential_1[1] = v9;
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24F7B5CA0()
{
  result = qword_27F250488;
  if (!qword_27F250488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250488);
  }

  return result;
}

unint64_t sub_24F7B5D64()
{
  result = qword_27F2504B8;
  if (!qword_27F2504B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2504A8, &qword_24FA2A038);
    sub_24F7B5E1C();
    sub_24E602068(&qword_27F238F00, &qword_27F238ED8, &unk_24F9C6FF0, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2504B8);
  }

  return result;
}

unint64_t sub_24F7B5E1C()
{
  result = qword_27F2504C0;
  if (!qword_27F2504C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2504A0, &qword_24FA2A030);
    sub_24F7B5ED4();
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48, &qword_24F9570D0, &unk_24FA0D350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2504C0);
  }

  return result;
}

unint64_t sub_24F7B5ED4()
{
  result = qword_27F2504C8;
  if (!qword_27F2504C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250498, &qword_24FA2A028);
    sub_24E602068(&qword_27F2504D0, &qword_27F250490, &qword_24FA2A020, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2504C8);
  }

  return result;
}

unint64_t sub_24F7B5F8C()
{
  result = qword_27F250528;
  if (!qword_27F250528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250528);
  }

  return result;
}

uint64_t sub_24F7B5FE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7B6048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7B60A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F7B6110()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2504A8, &qword_24FA2A038);
  sub_24F7B5D64();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24F7B6178()
{
  result = qword_27F250538;
  if (!qword_27F250538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250538);
  }

  return result;
}

unint64_t sub_24F7B61D0()
{
  result = qword_27F250540;
  if (!qword_27F250540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250540);
  }

  return result;
}

unint64_t sub_24F7B6228()
{
  result = qword_27F250548;
  if (!qword_27F250548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250548);
  }

  return result;
}

uint64_t sub_24F7B627C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6B726F77747261 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t ClearCachesDebugAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F928AD8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_24F7B64D8(uint64_t a1)
{
  v2 = sub_24F7B66B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7B6514(uint64_t a1)
{
  v2 = sub_24F7B66B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ClearCachesDebugAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250550, &qword_24FA2A200);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7B66B4();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F7B66B4()
{
  result = qword_27F250558;
  if (!qword_27F250558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250558);
  }

  return result;
}

uint64_t ClearCachesDebugAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_24F928AD8();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v18 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250560, &qword_24FA2A208);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ClearCachesDebugAction(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7B66B4();
  v12 = v19;
  sub_24F92D108();
  if (!v12)
  {
    v13 = v17;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    (*(v13 + 32))(v11, v18, v3);
    sub_24F7B69C0(v11, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for ClearCachesDebugAction(uint64_t a1)
{
  result = qword_27F250568;
  if (!qword_27F250568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F7B69C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClearCachesDebugAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7B6A3C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250550, &qword_24FA2A200);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7B66B4();
  sub_24F92D128();
  sub_24F928AD8();
  sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_24F7B6BB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F7B6C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F7B6CB8()
{
  result = qword_27F250578;
  if (!qword_27F250578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250578);
  }

  return result;
}

unint64_t sub_24F7B6D10()
{
  result = qword_27F250580;
  if (!qword_27F250580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250580);
  }

  return result;
}

unint64_t sub_24F7B6D68()
{
  result = qword_27F250588;
  if (!qword_27F250588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250588);
  }

  return result;
}

uint64_t sub_24F7B6DD0(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_13:
    v15 = *(v10 + 48);

    return v15(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_13;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_13;
  }

  v14 = sub_24F9289E8();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270, &unk_24F950890);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[12];

  return v17(v18, a2, v16);
}

uint64_t sub_24F7B7004(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_11:
    v15 = *(v10 + 56);

    return v15(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_11;
  }

  v14 = sub_24F9289E8();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270, &unk_24F950890);
  v17 = *(*(v16 - 8) + 56);
  v18 = v5 + a4[12];

  return v17(v18, a2, a2, v16);
}

uint64_t type metadata accessor for FriendRequestCard(uint64_t a1)
{
  result = qword_27F250590;
  if (!qword_27F250590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7B7270(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24F7B73E8(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v5 <= 0x3F)
          {
            sub_24F9289E8();
            if (v6 <= 0x3F)
            {
              sub_24F7B73E8(319, &qword_27F21B288, type metadata accessor for CardPrimaryActionType);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24F7B73E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F7B743C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 25705;
    v6 = 0x4D747865746E6F63;
    v7 = 0xD000000000000011;
    if (a1 != 3)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x6575676573;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000017;
    if (a1 == 9)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 == 8)
    {
      v1 = 0xD000000000000010;
    }

    v2 = 0xD000000000000011;
    v3 = 0x4172657469766E69;
    if (a1 != 6)
    {
      v3 = 0x634165726F6E6769;
    }

    if (a1 != 5)
    {
      v2 = v3;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24F7B75B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21B270, &unk_24F950890);
  MEMORY[0x28223BE20](v3 - 8);
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v51 = &v48 - v6;
  MEMORY[0x28223BE20](v7);
  v52 = &v48 - v8;
  v9 = sub_24F9289E8();
  v65 = *(v9 - 8);
  v66 = v9;
  MEMORY[0x28223BE20](v9);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v54 = &v48 - v12;
  v56 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v56);
  v55 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v14 - 8);
  v57 = &v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2505B0, &unk_24FA2A488);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v20 = &v48 - v19;
  v21 = type metadata accessor for FriendRequestCard(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v23 + 40) = 0u;
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  *(v23 + 56) = 0u;
  *(v23 + 9) = 0;
  v68 = v23 + 40;
  sub_24E61DA68(&v70, (v23 + 40), qword_27F21B590, &unk_24F93BE30);
  v24 = *(v21 + 24);
  v25 = sub_24F92A6D8();
  v26 = *(*(v25 - 8) + 56);
  v67 = v24;
  v26(&v23[v24], 1, 1, v25);
  v27 = *(v21 + 44);
  v69 = v23;
  v28 = &v23[v27];
  v72 = 0;
  v70 = 0u;
  v71 = 0u;
  *v28 = 0u;
  *(v28 + 1) = 0u;
  *(v28 + 4) = 0;
  v63 = v21;
  v64 = &v23[v27];
  sub_24E61DA68(&v70, &v23[v27], qword_27F21B590, &unk_24F93BE30);
  v29 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_24F7B8554();
  v59 = v20;
  v30 = v61;
  sub_24F92D108();
  if (v30)
  {
    __swift_destroy_boxed_opaque_existential_1(v62);
    v32 = v69;
    sub_24E601704(v68, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(v32 + v67, &qword_27F215440, &unk_24F942BD0);
    return sub_24E601704(v64, qword_27F24EC90, &unk_24F93C1D0);
  }

  else
  {
    v31 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v73 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v33 = v71;
    v34 = v69;
    *v69 = v70;
    v34[1] = v33;
    *(v34 + 4) = v72;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v73 = 1;
    v36 = sub_24E61D970();
    sub_24F92CC68();
    v37 = v63;
    v61 = v36;
    sub_24E61DA68(&v70, v68, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v70) = 2;
    sub_24E65CAA0();
    v38 = v18;
    sub_24F92CC68();
    v48 = v35;
    v39 = v69;
    sub_24E61DA68(v38, v69 + v67, &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v70) = 3;
    sub_24F7B85A8(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E6009C8(v31, &v39[v37[7]], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v70) = 4;
    sub_24F7B85A8(&qword_27F219690, type metadata accessor for CommonCardAttributes, &unk_24F9600E0);
    v40 = v55;
    sub_24F92CC68();
    sub_24E706B90(v40, &v39[v37[8]]);
    LOBYTE(v70) = 5;
    sub_24F7B85A8(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    v41 = v54;
    v42 = v66;
    sub_24F92CC68();
    v43 = *(v65 + 32);
    v43(&v39[v37[9]], v41, v42);
    LOBYTE(v70) = 6;
    v44 = v53;
    sub_24F92CC68();
    v43(&v39[v37[10]], v44, v42);
    v73 = 7;
    sub_24F92CC68();
    sub_24E61DA68(&v70, v64, qword_27F24EC90, &unk_24F93C1D0);
    type metadata accessor for CardPrimaryActionType(0);
    LOBYTE(v70) = 8;
    sub_24F7B85A8(&qword_27F21F648, type metadata accessor for CardPrimaryActionType, &unk_24F939AF8);
    v45 = v52;
    sub_24F92CC18();
    sub_24E6009C8(v45, &v39[v37[12]], &qword_27F21B270, &unk_24F950890);
    LOBYTE(v70) = 9;
    sub_24F92CC18();
    sub_24E6009C8(v51, v69 + v63[13], &qword_27F21B270, &unk_24F950890);
    LOBYTE(v70) = 10;
    sub_24F92CC18();
    (*(v58 + 8))(v59, v60);
    v46 = v69;
    sub_24E6009C8(v50, v69 + v63[14], &qword_27F21B270, &unk_24F950890);
    sub_24F7B85F0(v46, v49, type metadata accessor for FriendRequestCard);
    __swift_destroy_boxed_opaque_existential_1(v62);
    return sub_24F7B8658(v46, type metadata accessor for FriendRequestCard);
  }
}

uint64_t sub_24F7B82D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F7B87D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F7B8300(uint64_t a1)
{
  v2 = sub_24F7B8554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7B833C(uint64_t a1)
{
  v2 = sub_24F7B8554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7B83B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F7B8488(uint64_t a1)
{
  *(a1 + 8) = sub_24F7B85A8(&qword_27F21AB98, type metadata accessor for FriendRequestCard, &unk_24FA2A444);
  result = sub_24F7B85A8(&qword_27F2505A0, type metadata accessor for FriendRequestCard, &unk_24FA2A400);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F7B8554()
{
  result = qword_27F2505B8;
  if (!qword_27F2505B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2505B8);
  }

  return result;
}

uint64_t sub_24F7B85A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F7B85F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7B8658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F7B86CC()
{
  result = qword_27F2505C0;
  if (!qword_27F2505C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2505C0);
  }

  return result;
}

unint64_t sub_24F7B8724()
{
  result = qword_27F2505C8;
  if (!qword_27F2505C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2505C8);
  }

  return result;
}

unint64_t sub_24F7B877C()
{
  result = qword_27F2505D0;
  if (!qword_27F2505D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2505D0);
  }

  return result;
}

uint64_t sub_24F7B87D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA464C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4172657469766E69 && a2 == 0xED00007261746176 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x634165726F6E6769 && a2 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA7DD80 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x800000024FA7DDA0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA7DDC0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

unint64_t RecentSearches.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x4449726579616C70;
  v7 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v7;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 88) = 0x736D726574;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  *(inited + 136) = sub_24E61B71C(&qword_27F213798, v7, MEMORY[0x277D22590]);
  *(inited + 104) = v5;

  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

uint64_t sub_24F7B8CC4()
{
  if (*v0)
  {
    return 0x736D726574;
  }

  else
  {
    return 0x4449726579616C70;
  }
}

uint64_t sub_24F7B8CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449726579616C70 && a2 == 0xE800000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736D726574 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

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

uint64_t sub_24F7B8DD4(uint64_t a1)
{
  v2 = sub_24F7B9408();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7B8E10(uint64_t a1)
{
  v2 = sub_24F7B9408();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecentSearches.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2505D8, &qword_24FA2A5B0);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7B9408();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
    sub_24E61B71C(&qword_27F2137A0, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_24F92CD48();
  }

  return (*(v10 + 8))(v6, v4);
}

uint64_t RecentSearches.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2505E8, &qword_24FA2A5B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7B9408();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  v16 = 1;
  sub_24E61B71C(&qword_27F216420, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F7B9260@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x4449726579616C70;
  v7 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v7;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  *(inited + 88) = 0x736D726574;
  *(inited + 96) = 0xE500000000000000;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  *(inited + 136) = sub_24E61B71C(&qword_27F213798, v7, MEMORY[0x277D22590]);
  *(inited + 104) = v5;

  v8 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v8;
  return result;
}

unint64_t sub_24F7B9408()
{
  result = qword_27F2505E0;
  if (!qword_27F2505E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2505E0);
  }

  return result;
}

unint64_t sub_24F7B945C(uint64_t a1)
{
  *(a1 + 8) = sub_24F3A4A40();
  result = sub_24F3A49EC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F7B94B0()
{
  result = qword_27F2505F0;
  if (!qword_27F2505F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2505F0);
  }

  return result;
}

unint64_t sub_24F7B9508()
{
  result = qword_27F2505F8;
  if (!qword_27F2505F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2505F8);
  }

  return result;
}

unint64_t sub_24F7B9560()
{
  result = qword_27F250600[0];
  if (!qword_27F250600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F250600);
  }

  return result;
}

void sub_24F7B95BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v5 = type metadata accessor for CallAction(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for VirtualCall(0);
  v47 = *(v8 - 1);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8);
  v48 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  v46 = objc_opt_self();
  v50 = [v46 sharedInstance];
  v13 = [v50 providerManager];
  v15 = *a1;
  v14 = *(a1 + 8);

  v16 = sub_24F92B098();
  v49 = v13;
  v17 = [v13 providerWithIdentifier_];

  if (v17)
  {

    sub_24F7BADC4(a1, v7, type metadata accessor for CallAction);
    v18 = v17;
    sub_24F85F2F8(v7, v17, v12);
    v19 = v12;
    if (qword_27F210FD0 != -1)
    {
      swift_once();
    }

    OverlayCallCenter.addVirtualCall(_:timeout:)(v12, 0x8AC7230489E80000, 0);
    v20 = [objc_allocWithZone(MEMORY[0x277D6EED0]) initWithProvider_];
    [v20 setVideo_];
    v21 = v48;
    if ((a3 & 0xC000000000000001) != 0)
    {
      if (sub_24F92C738() != 1)
      {
        goto LABEL_17;
      }
    }

    else if (*(a3 + 16) != 1)
    {
      goto LABEL_17;
    }

    v40 = sub_24ECD0CFC(a3);
    if (v40)
    {
      v41 = v40;
      [v20 setHandle_];
LABEL_18:

      [v20 setShowUIPrompt_];
      [v20 setOriginatingUIType_];
      [v20 setLaunchInBackground_];
      v42 = [v46 sharedInstance];
      sub_24F7BADC4(v19, v21, type metadata accessor for VirtualCall);
      v43 = (*(v47 + 80) + 16) & ~*(v47 + 80);
      v44 = swift_allocObject();
      sub_24F7BAE44(v21, v44 + v43, type metadata accessor for VirtualCall);
      *(v44 + ((v9 + v43 + 7) & 0xFFFFFFFFFFFFFFF8)) = v51;
      aBlock[4] = sub_24F7BAEAC;
      aBlock[5] = v44;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24E9FABA0;
      aBlock[3] = &block_descriptor_10_1;
      v45 = _Block_copy(aBlock);

      [v42 launchAppForDialRequest:v20 completion:v45];

      _Block_release(v45);
      sub_24F7BAD64(v19, type metadata accessor for VirtualCall);
      return;
    }

LABEL_17:
    sub_24E69A5C4(0, &unk_27F2376E0, 0x277D6EEE8);
    sub_24EAEAB48();
    v41 = sub_24F92BA98();
    [v20 setHandles_];
    goto LABEL_18;
  }

  v22 = v15;
  if (qword_27F2113B0 != -1)
  {
    swift_once();
  }

  v23 = sub_24F9220D8();
  __swift_project_value_buffer(v23, qword_27F39E760);

  v24 = sub_24F9220B8();
  v25 = sub_24F92BDB8();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v48;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    aBlock[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_24E7620D4(v22, v14, aBlock);
    _os_log_impl(&dword_24E5DD000, v24, v25, "No call provider for %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x2530542D0](v29, -1, -1);
    MEMORY[0x2530542D0](v28, -1, -1);
  }

  sub_24F7BADC4(a1, v7, type metadata accessor for CallAction);
  v30 = v8[7];
  sub_24F91F6A8();
  v31 = v7[1];
  v32 = (v27 + v8[8]);
  *v32 = *v7;
  v32[1] = v31;
  *(v27 + v8[9]) = v7[2];
  v33 = *(v7 + 24);
  *(v27 + v8[10]) = v33;
  v34 = (v27 + v8[5]);
  *v34 = 0;
  v34[1] = 0xE000000000000000;
  v35 = (v27 + v8[6]);
  *v35 = 0;
  v35[1] = 0;

  sub_24F7BAD64(v7, type metadata accessor for CallAction);
  *(v27 + v8[11]) = v33;
  *(v27 + v8[12]) = 0;
  *(v27 + v30) = 0;
  if (qword_27F210FD0 != -1)
  {
    swift_once();
  }

  sub_24F1D9EA0();
  v36 = swift_allocError();
  *v37 = v22;
  v37[1] = v14;

  OverlayCallCenter.virtualCallFailed(_:withError:)(v27, v36);

  v38 = swift_allocError();
  *v39 = v22;
  v39[1] = v14;
  sub_24F92A9A8();

  sub_24F7BAD64(v27, type metadata accessor for VirtualCall);
}

void sub_24F7B9CEC(void *a1, uint64_t a2, uint64_t a3)
{
  v34 = a2;
  v5 = sub_24F927D88();
  v37 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F927DC8();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VirtualCall(0);
  v33 = *(v11 - 8);
  v12 = *(v33 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_24F928AE8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v32 = a3;
    v18 = a1;
    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v19 = sub_24F9220D8();
    __swift_project_value_buffer(v19, qword_27F39E760);
    v20 = a1;
    v21 = sub_24F9220B8();
    v22 = sub_24F92BDB8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      v25 = a1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&dword_24E5DD000, v21, v22, "Unable to launchApp for TUDialRequest: %@", v23, 0xCu);
      sub_24E6D44CC(v24);
      MEMORY[0x2530542D0](v24, -1, -1);
      MEMORY[0x2530542D0](v23, -1, -1);
    }

    sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    v27 = sub_24F92BEF8();
    sub_24F7BADC4(v34, &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for VirtualCall);
    v28 = (*(v33 + 80) + 16) & ~*(v33 + 80);
    v29 = swift_allocObject();
    sub_24F7BAE44(&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28, type metadata accessor for VirtualCall);
    *(v29 + ((v12 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
    aBlock[4] = sub_24F7BB0A0;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_16_1;
    v30 = _Block_copy(aBlock);
    v31 = a1;

    sub_24F927DA8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24F7BAD1C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E8582A8();
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v10, v7, v30);
    _Block_release(v30);

    (*(v37 + 8))(v7, v5);
    (*(v35 + 8))(v10, v36);
    sub_24F92A9A8();
  }

  else
  {
    (*(v14 + 104))(v17, *MEMORY[0x277D21CA8], v13, v15);
    sub_24F92A9C8();
    (*(v14 + 8))(v17, v13);
  }
}

void sub_24F7BA274(uint64_t a1, void *a2)
{
  if (qword_27F210FD0 != -1)
  {
    v2 = a1;
    v3 = a2;
    swift_once();
    a1 = v2;
    a2 = v3;
  }

  OverlayCallCenter.virtualCallFailed(_:withError:)(a1, a2);
}

uint64_t sub_24F7BA2F0(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_24F927D88();
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927DC8();
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CallAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v13 = sub_24F92A9E8();
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v21 = sub_24F92BEF8();
  sub_24F7BADC4(a1, v12, type metadata accessor for CallAction);
  v14 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v15 = (v11 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  sub_24F7BAE44(v12, v16 + v14, type metadata accessor for CallAction);
  *(v16 + v15) = v13;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v22;
  aBlock[4] = sub_24F7BAC6C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_177;
  v17 = _Block_copy(aBlock);

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24F7BAD1C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  sub_24F92C6A8();
  v18 = v21;
  MEMORY[0x2530518B0](0, v8, v5, v17);
  _Block_release(v17);

  (*(v25 + 8))(v5, v3);
  (*(v23 + 8))(v8, v24);
  return v13;
}

uint64_t sub_24F7BA6B8(uint64_t a1)
{
  v2 = sub_24F928AE8();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v25 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 16);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v28 = MEMORY[0x277D84F90];
    sub_24F92C978();
    v7 = v4 + 48;
    do
    {
      v8 = *(v7 - 16);
      v9 = objc_allocWithZone(MEMORY[0x277D6EEE8]);

      v10 = sub_24F92B098();
      [v9 initWithType:v8 + 1 value:v10];

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      sub_24F92C958();
      v7 += 24;
      --v5;
    }

    while (v5);
    v6 = v28;
  }

  v11 = sub_24F45E240(v6);

  if ((v11 & 0xC000000000000001) != 0)
  {
    if (sub_24F92C738() < 2)
    {
      goto LABEL_16;
    }
  }

  else if (*(v11 + 16) < 2)
  {
LABEL_16:
    v19 = sub_24F7BA2F0(a1, v11);

    return v19;
  }

  v12 = sub_24F92B098();
  v13 = [objc_opt_self() providerForIdentifier_];

  v14 = objc_allocWithZone(MEMORY[0x277D6EEF0]);
  sub_24E69A5C4(0, &unk_27F2376E0, 0x277D6EEE8);
  sub_24EAEAB48();
  v15 = v13;
  v16 = sub_24F92BA98();
  v17 = [v14 initWithProvider:v15 remoteMemberHandles:v16];

  [v17 setVideoEnabled_];
  [v17 setShowUIPrompt_];
  [v17 setOriginatingUIType_];
  [v17 setLaunchInBackground_];
  v18 = [objc_opt_self() sharedInstance];
  LODWORD(v16) = [v18 launchAppForJoinRequest_];

  if (!v16)
  {
    if (qword_27F2113B0 != -1)
    {
      swift_once();
    }

    v20 = sub_24F9220D8();
    __swift_project_value_buffer(v20, qword_27F39E760);
    v21 = sub_24F9220B8();
    v22 = sub_24F92BDB8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_24E5DD000, v21, v22, "Unable to launchApp for TUJoinConversationRequest", v23, 2u);
      MEMORY[0x2530542D0](v23, -1, -1);
    }

    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  (*(v26 + 104))(v25, *MEMORY[0x277D21CA8], v27);
  v19 = sub_24F92A988();

  return v19;
}

uint64_t sub_24F7BAB58()
{
  v1 = (type metadata accessor for CallAction(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[9];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

void sub_24F7BAC6C()
{
  v1 = *(type metadata accessor for CallAction(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24F7B95BC(v0 + v2, v4, v5);
}

uint64_t block_copy_helper_177(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F7BAD1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F7BAD64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F7BADC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7BAE44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24F7BAEAC(void *a1)
{
  v3 = *(type metadata accessor for VirtualCall(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24F7B9CEC(a1, v1 + v4, v5);
}

uint64_t objectdestroy_6Tm_4(void (*a1)(void))
{
  v3 = (type metadata accessor for VirtualCall(0) - 8);
  v4 = (*(*v3 + 80) + 16) & ~*(*v3 + 80);
  v5 = (*(*v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v1 + v4;
  v7 = sub_24F91F6B8();
  (*(*(v7 - 8) + 8))(v6, v7);

  a1(*(v1 + v5));

  return swift_deallocObject();
}

void sub_24F7BB0A0()
{
  v1 = *(type metadata accessor for VirtualCall(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_24F7BA274(v0 + v2, v3);
}

uint64_t sub_24F7BB170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1836213620 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F7BB1F8(uint64_t a1)
{
  v2 = sub_24F7BB630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7BB234(uint64_t a1)
{
  v2 = sub_24F7BB630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F7BB290@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250688, &qword_24FA2A9C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7BB630();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_24F92CC28();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_24F7BB40C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250698, &unk_24FA2A9C8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7BB630();
  sub_24F92D128();
  sub_24F92CD08();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F7BB548@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 1836213620;
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;

  v7 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v7;
  return result;
}

unint64_t sub_24F7BB630()
{
  result = qword_27F250690;
  if (!qword_27F250690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250690);
  }

  return result;
}

unint64_t sub_24F7BB698()
{
  result = qword_27F2506A0;
  if (!qword_27F2506A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2506A0);
  }

  return result;
}

unint64_t sub_24F7BB6F0()
{
  result = qword_27F2506A8;
  if (!qword_27F2506A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2506A8);
  }

  return result;
}

unint64_t sub_24F7BB748()
{
  result = qword_27F2506B0;
  if (!qword_27F2506B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2506B0);
  }

  return result;
}

uint64_t sub_24F7BB7AC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2506C8, &qword_24FA2ABE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7BBD1C();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_24F92CD08();
  v8[13] = 2;
  sub_24F92CD08();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F7BB94C()
{
  v1 = 0x4449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x4449726579616C70;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6272656461656CLL;
  }
}

uint64_t sub_24F7BB9B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F7BBE88(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F7BB9DC(uint64_t a1)
{
  v2 = sub_24F7BBD1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7BBA18(uint64_t a1)
{
  v2 = sub_24F7BBD1C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24F7BBA74@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_24F7BBAD0(a2, v6);
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

uint64_t sub_24F7BBAD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2506B8, &qword_24FA2ABD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7BBD1C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24F92CC28();
  v21 = v12;
  v23 = 2;
  v13 = sub_24F92CC28();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_24F7BBD1C()
{
  result = qword_27F2506C0;
  if (!qword_27F2506C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2506C0);
  }

  return result;
}

unint64_t sub_24F7BBD84()
{
  result = qword_27F2506D0;
  if (!qword_27F2506D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2506D0);
  }

  return result;
}

unint64_t sub_24F7BBDDC()
{
  result = qword_27F2506D8;
  if (!qword_27F2506D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2506D8);
  }

  return result;
}

unint64_t sub_24F7BBE34()
{
  result = qword_27F2506E0;
  if (!qword_27F2506E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2506E0);
  }

  return result;
}

uint64_t sub_24F7BBE88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6272656461656CLL && a2 == 0xED00004449647261;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t OverlayHighlightsShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0, &unk_24F94D8A0);
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C048, &qword_24F9762B0);
  v3[26] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v3[27] = v7;
  v3[28] = *(v7 - 8);
  v3[29] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2506E8, &unk_24FA2AD10);
  v3[30] = v8;
  v3[31] = *(v8 - 8);
  v3[32] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v10 = swift_task_alloc();
  v3[33] = v10;
  *v10 = v3;
  v10[1] = sub_24F7BC2B8;

  return MEMORY[0x28217F228](v3 + 7, v9, v9);
}

uint64_t sub_24F7BC2B8()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_24F7BC7E8;
  }

  else
  {
    v2 = sub_24F7BC3CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7BC3CC()
{
  v1 = v0[26];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v2 = v0[5];
  v13 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  type metadata accessor for OverlayHighlightsShelfIntent(0);

  sub_24F920FC8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234790, &unk_24F9B3620);
  v3 = sub_24F920878();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  v0[35] = v6;
  *(v6 + 16) = xmmword_24F93DE60;

  sub_24F920EF8();
  (*(v4 + 104))(v6 + v5, *MEMORY[0x277D0CF80], v3);
  v7 = sub_24F921038();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_task_alloc();
  v0[36] = v8;
  *v8 = v0;
  v8[1] = sub_24F7BC62C;
  v9 = v0[32];
  v10 = v0[29];
  v11 = v0[26];

  return MEMORY[0x282165170](v9, v10, v6, v11, v2, v13);
}

uint64_t sub_24F7BC62C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = v2[29];
  v4 = v2[28];
  v5 = v2[27];
  v6 = v2[26];

  sub_24E601704(v6, &qword_27F21C048, &qword_24F9762B0);
  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v7 = sub_24F7BD0A0;
  }

  else
  {
    v7 = sub_24F7BC8A4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_24F7BC7E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7BC8A4(__n128 a1)
{
  v47 = v1;
  v2 = v1[31];
  v3 = v1[32];
  v4 = v1[30];
  v5 = sub_24F921028();
  (*(v2 + 8))(v3, v4);
  v6 = *(v5 + 16);
  if (!v6)
  {

    v18 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v7 = v1[24];
  v8 = *(v7 + 16);
  v7 += 16;
  v9 = (*(v7 + 64) + 32) & ~*(v7 + 64);
  v44 = v8;
  v45 = *(v7 + 56);
  v10 = (v7 - 8);
  v11 = v1[37];
  v43 = v5;
  v8(v1[25], v5 + v9, v1[23]);
  v13 = sub_24F921008();
  v14 = v11;
  v15 = v1[25];
  v16 = v1[23];
  if (!v14)
  {
    v20 = v12;
    v17 = *v10;
    (*v10)(v15, v16);
    v18 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_24E615CF4(0, *(v18 + 2) + 1, 1, v18);
    }

    v22 = *(v18 + 2);
    v21 = *(v18 + 3);
    if (v22 >= v21 >> 1)
    {
      v18 = sub_24E615CF4((v21 > 1), v22 + 1, 1, v18);
    }

    *(v18 + 2) = v22 + 1;
    v23 = &v18[16 * v22];
    *(v23 + 4) = v13;
    *(v23 + 5) = v20;
    v19 = v6 - 1;
    if (v6 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v17 = *v10;
  (*v10)(v15, v16);
  v18 = MEMORY[0x277D84F90];
  v19 = v6 - 1;
  if (v6 != 1)
  {
LABEL_19:
    v35 = v43 + v45 + v9;
    do
    {
      v44(v1[25], v35, v1[23]);
      v36 = sub_24F921008();
      v38 = v37;
      v17(v1[25], v1[23]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_24E615CF4(0, *(v18 + 2) + 1, 1, v18);
      }

      v40 = *(v18 + 2);
      v39 = *(v18 + 3);
      if (v40 >= v39 >> 1)
      {
        v18 = sub_24E615CF4((v39 > 1), v40 + 1, 1, v18);
      }

      *(v18 + 2) = v40 + 1;
      v41 = &v18[16 * v40];
      *(v41 + 4) = v36;
      *(v41 + 5) = v38;
      v35 += v45;
      --v19;
    }

    while (v19);
  }

LABEL_11:

LABEL_12:
  v24 = sub_24F45D828(v18);

  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v25 = sub_24F9220D8();
  __swift_project_value_buffer(v25, qword_27F39E778);

  v26 = sub_24F9220B8();
  v27 = sub_24F92BD98();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v46 = v29;
    *v28 = 136315138;
    v30 = sub_24F92BAC8();
    v32 = sub_24E7620D4(v30, v31, &v46);

    *(v28 + 4) = v32;
    _os_log_impl(&dword_24E5DD000, v26, v27, "OverlayHighlightsShelfIntent listed current challenges %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x2530542D0](v29, -1, -1);
    MEMORY[0x2530542D0](v28, -1, -1);
  }

  v1[38] = v24;
  updated = type metadata accessor for ChallengesUpdateNotifier(0);
  v34 = swift_task_alloc();
  v1[39] = v34;
  *v34 = v1;
  v34[1] = sub_24F7BCD2C;

  return MEMORY[0x28217F228](v1 + 12, updated, updated);
}

uint64_t sub_24F7BCD2C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {

    v2 = sub_24F7BD2A8;
  }

  else
  {
    v2 = sub_24F7BCE48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7BCE48()
{
  v1 = v0[38];
  v13 = v0[22];
  v14 = v0[21];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  v7 = v0[14];
  v15 = v0[19];
  v16 = v0[13];
  v8 = v0[12];
  v9 = swift_task_alloc();
  v9[2] = v7;
  v9[3] = v8;
  v9[4] = v1;
  v9[5] = v6;
  type metadata accessor for GSKShelf(0);
  (*(v3 + 104))(v4, *MEMORY[0x277D85778], v5);
  sub_24F92B928();

  (*(v2 + 16))(v14, v13, v15);
  sub_24E602068(&qword_27F22D120, &qword_27F213760, qword_24F93AF80, MEMORY[0x277D857C0]);
  sub_24F9280F8();

  (*(v2 + 8))(v13, v15);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v10 - 8) + 56))(v16, 0, 1, v10);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F7BD0A0()
{
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[37];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v4, v5, "OverlayHighlightsShelfIntent received error %@ listing challenges, continuing with []", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v0[38] = MEMORY[0x277D84FA0];
  updated = type metadata accessor for ChallengesUpdateNotifier(0);
  v13 = swift_task_alloc();
  v0[39] = v13;
  *v13 = v0;
  v13[1] = sub_24F7BCD2C;

  return MEMORY[0x28217F228](v0 + 12, updated, updated);
}

uint64_t sub_24F7BD2A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7BD36C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a5;
  v56 = a4;
  v53 = a3;
  v68 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v62 = *(v6 - 8);
  v63 = v6;
  v64 = *(v62 + 64);
  MEMORY[0x28223BE20](v6);
  v61 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = &v48 - v9;
  v10 = type metadata accessor for OverlayHighlightsShelfIntent(0);
  v55 = *(v10 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x28223BE20](v12);
  v49 = &v48 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250750, &unk_24FA2ADF8);
  v66 = *(v59 - 8);
  v58 = *(v66 + 64);
  MEMORY[0x28223BE20](v59);
  v57 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v65 = &v48 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0, &unk_24F948490);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_24F92C888();
  v21 = *a2;
  v22 = a2[1];

  v69 = v21;
  v70 = v22;
  MEMORY[0x253050C20](0xD000000000000011, 0x800000024FA7DEB0);
  v23 = v69;
  v24 = v70;
  v48 = a2;
  v26 = a2[2];
  v25 = a2[3];
  type metadata accessor for OverlayHighlightsShelfUpdater(0);
  v27 = swift_allocObject();

  sub_24F91F6A8();
  *(v27 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengesUpdateNotifier) = v53;
  v28 = (v27 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_streamID);
  *v28 = v23;
  v28[1] = v24;
  v29 = (v27 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_bundleID);
  *v29 = v26;
  v29[1] = v25;
  *(v27 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengeIDs) = v56;
  (*(v18 + 104))(v20, *MEMORY[0x277D85778], v17);

  sub_24F92B868();
  (*(v18 + 8))(v20, v17);
  (*(v50 + 16))(v49, v27 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_updateStream, v51);
  v30 = v52;
  sub_24F7C3124(v48, v52, type metadata accessor for OverlayHighlightsShelfIntent);
  v31 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v32 = (v54 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  sub_24F7C30BC(v30, v33 + v31, type metadata accessor for OverlayHighlightsShelfIntent);
  *(v33 + v32) = v60;
  v34 = swift_allocObject();
  *(v34 + 16) = &unk_24FA2AE10;
  *(v34 + 24) = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  sub_24E602068(&qword_27F250758, &qword_27F218350, &unk_24F957210, MEMORY[0x277D857C0]);
  sub_24E602068(&qword_27F21EDE0, &qword_27F213768, &unk_24F93F770, MEMORY[0x277D21AD8]);
  v35 = v65;
  sub_24F92CEA8();
  v36 = sub_24F92B858();
  (*(*(v36 - 8) + 56))(v67, 1, 1, v36);
  v37 = v66;
  v38 = v57;
  v39 = v59;
  (*(v66 + 16))(v57, v35, v59);
  v41 = v61;
  v40 = v62;
  v42 = v63;
  (*(v62 + 16))(v61, v68, v63);
  v43 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v44 = v40;
  v45 = (v58 + *(v40 + 80) + v43) & ~*(v40 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  (*(v37 + 32))(v46 + v43, v38, v39);
  (*(v44 + 32))(v46 + v45, v41, v42);
  sub_24F1D3DA4(0, 0, v67, &unk_24FA2AE30, v46);

  sub_24F92B898();
  sub_24F7C0A60();

  return (*(v66 + 8))(v65, v39);
}

uint64_t sub_24F7BDB50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v3[10] = type metadata accessor for OverlayHighlightsShelfConstructionIntent(0);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7BDBE8, 0, 0);
}

uint64_t sub_24F7BDBE8()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v5 = *v3;
  v4 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = type metadata accessor for OverlayHighlightsShelfIntent(0);
  sub_24F7C3124(v3 + *(v8 + 24), v1 + *(v2 + 24), type metadata accessor for Player);
  *v1 = v5;
  v1[1] = v4;
  v1[2] = v7;
  v1[3] = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);

  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_24F7BDD18;

  return MEMORY[0x28217F228](v0 + 2, v9, v9);
}

uint64_t sub_24F7BDD18()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_24F7BE03C;
  }

  else
  {
    v2 = sub_24F7BDE2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7BDE2C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  v4 = sub_24F7C318C(&qword_27F21D4F8, type metadata accessor for OverlayHighlightsShelfConstructionIntent, &protocol conformance descriptor for OverlayHighlightsShelfConstructionIntent);
  *v3 = v0;
  v3[1] = sub_24F7BDF28;
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x28217F4B0](v8, v5, v7, v6, v4, v1, v2);
}

uint64_t sub_24F7BDF28()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_24F7BE124;
  }

  else
  {
    v2 = sub_24F7BE0AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7BE03C()
{
  sub_24E876EBC(*(v0 + 88));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7BE0AC()
{
  v1 = v0[11];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24E876EBC(v1);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F7BE124()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24E876EBC(v0[11]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F7BE19C(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_24E6541E4;

  return v7(a1);
}

uint64_t sub_24F7BE294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for GSKShelf(0);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8, &qword_24F95C7D0);
  v5[10] = swift_task_alloc();
  v5[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218358, &qword_24F9484A0);
  v5[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250760, &qword_24FA2AE50);
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7BE4D0, 0, 0);
}

uint64_t sub_24F7BE4D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250750, &unk_24FA2ADF8);
  MEMORY[0x2530527A0]();
  sub_24E602068(&qword_27F250758, &qword_27F218350, &unk_24F957210, MEMORY[0x277D857C0]);
  sub_24F92B9B8();
  sub_24F92CE78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  sub_24E602068(&qword_27F21EDE0, &qword_27F213768, &unk_24F93F770, MEMORY[0x277D21AD8]);
  sub_24F92CE88();
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_24F7BE6A0;
  v2 = *(v0 + 80);

  return sub_24F7BEA6C(v2, 0, 0);
}

uint64_t sub_24F7BE6A0()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_24F7BE9A8;
  }

  else
  {
    v2 = sub_24F7BE7B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F7BE7B4()
{
  v1 = v0[10];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = v0[7];
    sub_24F7C30BC(v1, v0[6], type metadata accessor for GSKShelf);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
    sub_24F92B8C8();
    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_24F7BE6A0;
    v8 = v0[10];

    return sub_24F7BEA6C(v8, 0, 0);
  }
}

uint64_t sub_24F7BE9A8()
{
  (*(v0[15] + 8))(v0[16], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F7BEA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E5E8, &qword_24F95C7D0);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v7 = type metadata accessor for GSKShelf(0);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250768, &qword_24FA2AE60);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250770, &qword_24FA2AE68);
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_24F92B778();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v4[29] = v9;
  v4[30] = v11;

  return MEMORY[0x2822009F8](sub_24F7BECF4, v9, v11);
}

uint64_t sub_24F7BECF4()
{
  v0[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250760, &qword_24FA2AE50);
  if (sub_24F92CE58())
  {
    (*(v0[20] + 56))(v0[8], 1, 1, v0[19]);

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[25];
    v4 = v0[26];
    v5 = v0[24];
    MEMORY[0x2530527C0](v0[31]);
    if ((*(v4 + 48))(v5, 1, v3) == 1)
    {
      sub_24E601704(v0[24], &qword_27F250768, &qword_24FA2AE60);
      v0[35] = sub_24F92CE28();
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218358, &qword_24F9484A0);
      v7 = sub_24E602068(&qword_27F250778, &qword_27F218358, &qword_24F9484A0, MEMORY[0x277D857B0]);
      v9 = swift_task_alloc();
      v0[36] = v9;
      *v9 = v0;
      v9[1] = sub_24F7BF158;
      v10 = v0[9];
      v11 = v0[10];
      v12 = v0 + 41;
      v13 = v6;
    }

    else
    {
      v14 = v0[28];
      v15 = v0[25];
      v16 = v0[26];
      v17 = v0[24];
      v18 = *(v16 + 32);
      v0[32] = v18;
      v0[33] = (v16 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v18(v14, v17, v15);
      v7 = sub_24E602068(&qword_27F250780, &qword_27F250770, &qword_24FA2AE68, MEMORY[0x277D21AC0]);
      v19 = swift_task_alloc();
      v0[34] = v19;
      *v19 = v0;
      v19[1] = sub_24F7BF030;
      v13 = v0[25];
      v12 = v0[18];
      v10 = v0[9];
      v11 = v0[10];
      v8 = v0 + 7;
    }

    return MEMORY[0x282200310](v12, v10, v11, v8, v13, v7);
  }
}

uint64_t sub_24F7BF030()
{
  v2 = *v1;

  if (v0)
  {
    (*(v2[26] + 8))(v2[28], v2[25]);
    v3 = v2[29];
    v4 = v2[30];
    v5 = sub_24F7BF6E0;
  }

  else
  {
    v3 = v2[29];
    v4 = v2[30];
    v5 = sub_24F7BF280;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F7BF158()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_24F7BFA14;
  }

  else
  {
    (*(v2 + 280))();
    v3 = *(v2 + 232);
    v4 = *(v2 + 240);
    v5 = sub_24F7BF814;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F7BF280()
{
  v1 = v0[18];
  if ((*(v0[20] + 48))(v1, 1, v0[19]) == 1)
  {
    v2 = v0[31];
    v3 = v0[25];
    v4 = v0[26];
    v5 = v0[23];
    (*(v4 + 8))(v0[28], v3);
    sub_24E601704(v1, &qword_27F21E5E8, &qword_24F95C7D0);
    v6 = 1;
    (*(v4 + 56))(v5, 1, 1, v3);
    MEMORY[0x2530527D0](v5, v2);
    if ((sub_24F92CE58() & 1) == 0)
    {
      v7 = v0[25];
      v8 = v0[26];
      v9 = v0[24];
      MEMORY[0x2530527C0](v0[31]);
      if ((*(v8 + 48))(v9, 1, v7) == 1)
      {
        sub_24E601704(v0[24], &qword_27F250768, &qword_24FA2AE60);
        v0[35] = sub_24F92CE28();
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218358, &qword_24F9484A0);
        v11 = sub_24E602068(&qword_27F250778, &qword_27F218358, &qword_24F9484A0, MEMORY[0x277D857B0]);
        v13 = swift_task_alloc();
        v0[36] = v13;
        *v13 = v0;
        v13[1] = sub_24F7BF158;
        v14 = v0[9];
        v15 = v0[10];
        v16 = v0 + 41;
        v17 = v10;
      }

      else
      {
        v26 = v0[28];
        v27 = v0[25];
        v28 = v0[26];
        v29 = v0[24];
        v30 = *(v28 + 32);
        v0[32] = v30;
        v0[33] = (v28 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v30(v26, v29, v27);
        v11 = sub_24E602068(&qword_27F250780, &qword_27F250770, &qword_24FA2AE68, MEMORY[0x277D21AC0]);
        v31 = swift_task_alloc();
        v0[34] = v31;
        *v31 = v0;
        v31[1] = sub_24F7BF030;
        v17 = v0[25];
        v16 = v0[18];
        v14 = v0[9];
        v15 = v0[10];
        v12 = v0 + 7;
      }

      return MEMORY[0x282200310](v16, v14, v15, v12, v17, v11);
    }
  }

  else
  {
    v18 = v0[32];
    v19 = v0[28];
    v20 = v0[25];
    v21 = v0[26];
    v23 = v0[22];
    v22 = v0[23];
    v32 = v0[8];
    v33 = v0[31];
    sub_24F7C30BC(v1, v23, type metadata accessor for GSKShelf);
    v18(v22, v19, v20);
    (*(v21 + 56))(v22, 0, 1, v20);
    MEMORY[0x2530527D0](v22, v33);
    sub_24F7C30BC(v23, v32, type metadata accessor for GSKShelf);
    v6 = 0;
  }

  (*(v0[20] + 56))(v0[8], v6, 1, v0[19]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_24F7BF6E0()
{
  v1 = *(v0 + 56);
  sub_24F92CE68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  swift_allocError();
  *v2 = v1;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_24F7BF814()
{
  if (*(v0 + 328))
  {
    (*(*(v0 + 160) + 56))(*(v0 + 64), 1, 1, *(v0 + 152));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = sub_24F92CE78();
    *(v0 + 296) = v4;
    v7 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 304) = v5;
    *v5 = v0;
    v5[1] = sub_24F7BFB3C;
    v6 = *(v0 + 120);

    return v7(v6);
  }
}

uint64_t sub_24F7BFA14()
{
  v1 = *(v0 + 280);
  swift_allocError();
  v1(v0 + 16, 1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F7BFB3C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 240);
  v4 = *(v2 + 232);
  if (v0)
  {
    v5 = sub_24F7BFF4C;
  }

  else
  {
    v5 = sub_24F7BFC90;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F7BFC90()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  (*(v3 + 32))(v1, v0[15], v4);
  (*(v3 + 16))(v2, v1, v4);
  sub_24E602068(&qword_27F21EDE0, &qword_27F213768, &unk_24F93F770, MEMORY[0x277D21AD8]);
  sub_24F92B9B8();
  v5 = sub_24E602068(&qword_27F250780, &qword_27F250770, &qword_24FA2AE68, MEMORY[0x277D21AC0]);
  v6 = swift_task_alloc();
  v0[40] = v6;
  *v6 = v0;
  v6[1] = sub_24F7BFE0C;
  v7 = v0[25];
  v8 = v0[17];
  v9 = v0[9];
  v10 = v0[10];

  return MEMORY[0x282200310](v8, v9, v10, v0 + 6, v7, v5);
}

uint64_t sub_24F7BFE0C()
{
  v2 = *v1;

  if (v0)
  {
    (*(v2[26] + 8))(v2[27], v2[25]);
    v3 = v2[29];
    v4 = v2[30];
    v5 = sub_24F7C050C;
  }

  else
  {
    (*(v2[13] + 8))(v2[16], v2[12]);
    v3 = v2[29];
    v4 = v2[30];
    v5 = sub_24F7C00AC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24F7BFF4C()
{
  v1 = v0[39];
  v2 = v0[31];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[23];
  sub_24F92CE68();
  (*(v3 + 56))(v5, 1, 1, v4);
  MEMORY[0x2530527D0](v5, v2);
  swift_willThrow();
  if (!v1)
  {
    (*(v0[13] + 8))(v0[16], v0[12]);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_24F7C00AC()
{
  v1 = v0[17];
  v2 = (*(v0[20] + 48))(v1, 1, v0[19]);
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  if (v2 == 1)
  {
    v6 = v0[31];
    (*(v4 + 8))(v0[27], v0[25]);
    sub_24E601704(v1, &qword_27F21E5E8, &qword_24F95C7D0);
    v7 = 1;
    (*(v4 + 56))(v5, 1, 1, v3);
    MEMORY[0x2530527D0](v5, v6);
    if ((sub_24F92CE58() & 1) == 0)
    {
      v8 = v0[25];
      v9 = v0[26];
      v10 = v0[24];
      MEMORY[0x2530527C0](v0[31]);
      if ((*(v9 + 48))(v10, 1, v8) == 1)
      {
        sub_24E601704(v0[24], &qword_27F250768, &qword_24FA2AE60);
        v0[35] = sub_24F92CE28();
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218358, &qword_24F9484A0);
        v12 = sub_24E602068(&qword_27F250778, &qword_27F218358, &qword_24F9484A0, MEMORY[0x277D857B0]);
        v14 = swift_task_alloc();
        v0[36] = v14;
        *v14 = v0;
        v14[1] = sub_24F7BF158;
        v15 = v0[9];
        v16 = v0[10];
        v17 = v0 + 41;
        v18 = v11;
      }

      else
      {
        v24 = v0[28];
        v25 = v0[25];
        v26 = v0[26];
        v27 = v0[24];
        v28 = *(v26 + 32);
        v0[32] = v28;
        v0[33] = (v26 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v28(v24, v27, v25);
        v12 = sub_24E602068(&qword_27F250780, &qword_27F250770, &qword_24FA2AE68, MEMORY[0x277D21AC0]);
        v29 = swift_task_alloc();
        v0[34] = v29;
        *v29 = v0;
        v29[1] = sub_24F7BF030;
        v18 = v0[25];
        v17 = v0[18];
        v15 = v0[9];
        v16 = v0[10];
        v13 = v0 + 7;
      }

      return MEMORY[0x282200310](v17, v15, v16, v13, v18, v12);
    }
  }

  else
  {
    v19 = v0[31];
    v20 = v0[27];
    v21 = v0[21];
    v30 = v0[8];
    sub_24F7C30BC(v1, v21, type metadata accessor for GSKShelf);
    (*(v4 + 32))(v5, v20, v3);
    (*(v4 + 56))(v5, 0, 1, v3);
    MEMORY[0x2530527D0](v5, v19);
    sub_24F7C30BC(v21, v30, type metadata accessor for GSKShelf);
    v7 = 0;
  }

  (*(v0[20] + 56))(v0[8], v7, 1, v0[19]);

  v22 = v0[1];

  return v22();
}

uint64_t sub_24F7C050C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F228600, &qword_24F93B7C0);
  swift_allocError();
  *v1 = v0[6];
  v2 = v0[39];
  v3 = v0[31];
  v4 = v0[25];
  v5 = v0[26];
  v6 = v0[23];
  sub_24F92CE68();
  (*(v5 + 56))(v6, 1, 1, v4);
  MEMORY[0x2530527D0](v6, v3);
  swift_willThrow();
  if (!v2)
  {
    (*(v0[13] + 8))(v0[16], v0[12]);
  }

  v7 = v0[1];

  return v7();
}

double sub_24F7C06A0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_24F92B858();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_24EA998B8(0, 0, v5, &unk_24FA2AE40, v7);

  return result;
}

uint64_t sub_24F7C07AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return OverlayHighlightsShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24F7C087C()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengesUpdateNotifier);
  v0[3] = v2;
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_streamID;
  v0[4] = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_streamID);
  v0[5] = *(v3 + 8);
  v4 = (v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_bundleID);
  v0[6] = *v4;
  v0[7] = v4[1];
  return MEMORY[0x2822009F8](sub_24F7C08E0, v2, 0);
}

uint64_t sub_24F7C08E0()
{
  sub_24F5EA3E0(v0[4], v0[5], v0[6], v0[7]);

  return MEMORY[0x2822009F8](sub_24F7C0950, 0, 0);
}

uint64_t sub_24F7C0950()
{
  *(v0 + 64) = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengesStreamUUID;
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = qword_27F252DD0;
  *(v0 + 72) = qword_27F252DD0;

  return MEMORY[0x2822009F8](sub_24F7C09F4, v1, 0);
}

uint64_t sub_24F7C09F4()
{
  sub_24F840910(v0[2] + v0[8], 0);
  v1 = v0[1];

  return v1();
}

uint64_t sub_24F7C0A60()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E500, qword_24F9C03B0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_24F92B858();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v0;

  sub_24EA998B8(0, 0, v7, &unk_24FA2ADD0, v10);

  v9(v7, 1, 1, v8);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v0;

  sub_24EA998B8(0, 0, v7, &unk_24FA2ADE0, v11);

  sub_24F92B8B8();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_24F7C0CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E500, qword_24F9C03B0);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213780, &unk_24F9FCA40);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213788, &unk_24F93B040);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7C0E3C, 0, 0);
}

uint64_t sub_24F7C0E3C()
{
  v1 = v0[7];
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengesUpdateNotifier);
  v0[17] = v2;
  v3 = v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_streamID;
  v0[18] = *(v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_streamID);
  v0[19] = *(v3 + 8);
  v4 = (v1 + OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_bundleID);
  v0[20] = *v4;
  v0[21] = v4[1];
  return MEMORY[0x2822009F8](sub_24F7C0EA0, v2, 0);
}

uint64_t sub_24F7C0EA0()
{
  sub_24F5E9B3C(v0[18], v0[19], v0[20], v0[21], v0[13]);

  return MEMORY[0x2822009F8](sub_24F7C0F14, 0, 0);
}

uint64_t sub_24F7C0F14()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v0[22] = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_updateContinuation;
  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = sub_24F7C0FFC;
  v5 = v0[14];

  return MEMORY[0x2822003E8](v0 + 2, 0, 0, v5);
}

uint64_t sub_24F7C0FFC()
{

  return MEMORY[0x2822009F8](sub_24F7C10F8, 0, 0);
}

uint64_t sub_24F7C10F8()
{
  v1 = v0[4];
  if (v1)
  {
    sub_24E614F20(v0[2], v0[3], v1, v0[5], v0[6]);
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v2 = sub_24F9220D8();
    __swift_project_value_buffer(v2, qword_27F39E778);
    v3 = sub_24F9220B8();
    v4 = sub_24F92BD98();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_24E5DD000, v3, v4, "OverlayHighlightsShelfUpdater received hub event, yielding update", v5, 2u);
      MEMORY[0x2530542D0](v5, -1, -1);
    }

    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];

    sub_24F92B8B8();
    (*(v7 + 8))(v6, v8);
    v9 = swift_task_alloc();
    v0[23] = v9;
    *v9 = v0;
    v9[1] = sub_24F7C0FFC;
    v10 = v0[14];

    return MEMORY[0x2822003E8](v0 + 2, 0, 0, v10);
  }

  else
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_24F7C132C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E500, qword_24F9C03B0);
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0, &unk_24F94D8A0);
  v4[30] = v6;
  v4[31] = *(v6 - 8);
  v4[32] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F252E40, &unk_24F95C720);
  v4[33] = v7;
  v4[34] = *(v7 - 8);
  v4[35] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E508, &unk_24F9C0390);
  v4[36] = v8;
  v4[37] = *(v8 - 8);
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F7C1530, 0, 0);
}

uint64_t sub_24F7C1530()
{
  *(v0 + 312) = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengesStreamUUID;
  *(v0 + 320) = sub_24E802CE0(&unk_2861C2828);
  if (qword_27F211920 != -1)
  {
    swift_once();
  }

  v1 = qword_27F252DD0;
  *(v0 + 328) = qword_27F252DD0;
  *(v0 + 368) = 1;

  return MEMORY[0x2822009F8](sub_24F7C15EC, v1, 0);
}

uint64_t sub_24F7C15EC()
{
  sub_24F83EC44(*(v0 + 320), *(v0 + 208) + *(v0 + 312), (v0 + 368));

  return MEMORY[0x2822009F8](sub_24F7C1674, 0, 0);
}

uint64_t sub_24F7C1674()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  sub_24F92B8F8();
  (*(v2 + 8))(v1, v3);
  v4 = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_updateContinuation;
  v0[42] = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengeIDs;
  v0[43] = v4;
  swift_beginAccess();
  v0[44] = 0;
  v5 = swift_task_alloc();
  v0[45] = v5;
  *v5 = v0;
  v5[1] = sub_24F7C1780;
  v6 = v0[36];

  return MEMORY[0x2822003E8](v0 + 17, 0, 0, v6);
}

uint64_t sub_24F7C1780()
{

  return MEMORY[0x2822009F8](sub_24F7C187C, 0, 0);
}

uint64_t sub_24F7C187C()
{
  v50 = v0;
  v1 = v0[18];
  if (!v1)
  {
    (*(v0[37] + 8))(v0[38], v0[36]);

    v27 = v0[1];

    return v27();
  }

  v0[19] = 7562345;
  v0[20] = 0xE300000000000000;
  sub_24F92C7F8();
  if (!*(v1 + 16) || (v2 = sub_24E76D934((v0 + 2)), (v3 & 1) == 0))
  {

    sub_24E6585F8((v0 + 2));
    goto LABEL_21;
  }

  sub_24E643A9C(*(v1 + 56) + 32 * v2, (v0 + 7));
  sub_24E6585F8((v0 + 2));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_21:
    v10 = v0[44];
    goto LABEL_22;
  }

  v4 = sub_24F45D828(v0[23]);

  v5 = v4 + 56;
  v6 = -1;
  v7 = -1 << *(v4 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v4 + 56);
  v9 = (63 - v7) >> 6;
  v10 = v0[44];

  v11 = 0;
  v48 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v11;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v8 &= v8 - 1;
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F249DF8, &qword_24FA2ADF0);
    sub_24F920EC8();
    v13 = sub_24F921008();
    v15 = v0[32];
    v16 = v0[30];
    v17 = (v0[31] + 8);
    if (v10)
    {

      (*v17)(v15, v16);
      v10 = 0;
    }

    else
    {
      v18 = v14;
      v47 = v13;
      (*v17)(v15, v16);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_24E615CF4(0, *(v48 + 2) + 1, 1, v48);
      }

      v20 = *(v48 + 2);
      v19 = *(v48 + 3);
      v21 = v47;
      if (v20 >= v19 >> 1)
      {
        v24 = sub_24E615CF4((v19 > 1), v20 + 1, 1, v48);
        v22 = v18;
        v48 = v24;
        v21 = v47;
      }

      else
      {
        v22 = v18;
      }

      v10 = 0;
      *(v48 + 2) = v20 + 1;
      v23 = &v48[16 * v20];
      *(v23 + 4) = v21;
      *(v23 + 5) = v22;
    }
  }

  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_39:
      swift_once();
      goto LABEL_34;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v12;
    if (v8)
    {
      goto LABEL_12;
    }
  }

  v28 = v0[42];
  v29 = v0[26];

  v0[24] = *(v29 + v28);
  v0[25] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21E480, &unk_24F944D20);
  sub_24E602068(&qword_27F250740, &unk_27F21E480, &unk_24F944D20, MEMORY[0x277D83B78]);
  sub_24E602068(&qword_27F250748, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83988]);
  if (sub_24F92BB98())
  {

    goto LABEL_22;
  }

  v30 = *(v48 + 2);
  if (v30)
  {
    v31 = (v48 + 40);
    do
    {
      v32 = *(v31 - 1);
      v33 = *v31;
      swift_beginAccess();

      sub_24ED7C5F0(v0 + 21, v32, v33);
      swift_endAccess();

      v31 += 2;
      --v30;
    }

    while (v30);
  }

  if (qword_27F2113B8 != -1)
  {
    goto LABEL_39;
  }

LABEL_34:
  v34 = sub_24F9220D8();
  __swift_project_value_buffer(v34, qword_27F39E778);

  v35 = sub_24F9220B8();
  v36 = sub_24F92BD98();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v49 = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x253050F40](v48, MEMORY[0x277D837D0]);
    v41 = v40;

    v42 = sub_24E7620D4(v39, v41, &v49);

    *(v37 + 4) = v42;
    _os_log_impl(&dword_24E5DD000, v35, v36, "OverlayHighlightsShelfUpdater received novel challenge IDs: %s, yielding update", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x2530542D0](v38, -1, -1);
    MEMORY[0x2530542D0](v37, -1, -1);
  }

  else
  {
  }

  v44 = v0[28];
  v43 = v0[29];
  v45 = v0[27];
  sub_24F92B8B8();
  (*(v44 + 8))(v43, v45);
LABEL_22:
  v0[44] = v10;
  v25 = swift_task_alloc();
  v0[45] = v25;
  *v25 = v0;
  v25[1] = sub_24F7C1780;
  v26 = v0[36];

  return MEMORY[0x2822003E8](v0 + 17, 0, 0, v26);
}

double sub_24F7C1F3C()
{
  v1 = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_updateStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_updateContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E4F0, &unk_24F9C03A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC12GameStoreKitP33_18A9B06BA40BECAAC1F040B6CF55096129OverlayHighlightsShelfUpdater_challengesStreamUUID;
  v6 = sub_24F91F6B8();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  swift_deallocClassInstance();
  return result;
}

uint64_t type metadata accessor for OverlayHighlightsShelfUpdater(uint64_t a1)
{
  result = qword_27F250728;
  if (!qword_27F250728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7C2164(uint64_t a1)
{
  sub_24F7C22C4(319, &qword_27F21CBB8, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_24F7C22C4(319, &qword_27F250738, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      sub_24F91F6B8();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24F7C22C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D84F78] + 8);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F7C2320(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F7C0CA0(a1, v4, v5, v6);
}

uint64_t sub_24F7C23D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24F7C132C(a1, v4, v5, v6);
}

uint64_t sub_24F7C2488()
{
  v1 = (type metadata accessor for OverlayHighlightsShelfIntent(0) - 8);
  v2 = *(*v1 + 80);

  v3 = v0 + ((v2 + 16) & ~v2) + v1[8];

  v4 = type metadata accessor for Player(0);
  v5 = v4[6];
  v6 = sub_24F9289E8();
  v29 = *(*(v6 - 8) + 8);
  v30 = *(v6 - 8);
  v29(v3 + v5, v6);

  if (*(v3 + v4[9] + 8) != 1)
  {
  }

  v7 = v3 + v4[13];
  v8 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = type metadata accessor for CallProviderConversationHandle(0);
    v10 = *(*(v9 - 8) + 48);
    if (!v10(v7, 1, v9))
    {

      v11 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v30 + 48))(v7 + v11, 1, v6))
      {
        v29(v7 + v11, v6);
      }
    }

    v12 = v7 + *(v8 + 20);
    if (!v10(v12, 1, v9))
    {

      v13 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v30 + 48))(v12 + v13, 1, v6))
      {
        v29(v12 + v13, v6);
      }
    }
  }

  if (*(v3 + v4[15] + 8))
  {
  }

  v14 = v3 + v4[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v14, 1, PlayedTogetherInfo))
  {

    v16 = type metadata accessor for Game(0);
    v29(v14 + v16[18], v6);
    v17 = v16[19];
    if (!(*(v30 + 48))(v14 + v17, 1, v6))
    {
      v29(v14 + v17, v6);
    }

    v18 = v16[21];
    v19 = sub_24F920818();
    v20 = *(v19 - 8);
    if (!(*(v20 + 48))(v14 + v18, 1, v19))
    {
      (*(v20 + 8))(v14 + v18, v19);
    }
  }

  v21 = v3 + v4[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v21, 1, ChallengeInfo))
  {

    v23 = type metadata accessor for Game(0);
    v29(v21 + v23[18], v6);
    v24 = v23[19];
    if (!(*(v30 + 48))(v21 + v24, 1, v6))
    {
      v29(v21 + v24, v6);
    }

    v25 = v23[21];
    v26 = sub_24F920818();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v21 + v25, 1, v26))
    {
      (*(v27 + 8))(v21 + v25, v26);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_24F7C2B24(uint64_t a1)
{
  v4 = *(type metadata accessor for OverlayHighlightsShelfIntent(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F7BDB50(a1, v1 + v5, v6);
}

uint64_t sub_24F7C2C30()
{

  return swift_deallocObject();
}

uint64_t sub_24F7C2C68(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E6541E4;

  return sub_24F7BE19C(a1, a2, v6);
}

uint64_t sub_24F7C2D30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250750, &unk_24FA2ADF8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_24F7C2E98(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250750, &unk_24FA2ADF8) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_24E6541E4;

  return sub_24F7BE294(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_24F7C3008(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F7C085C(a1, v4, v5, v6);
}

uint64_t sub_24F7C30BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7C3124(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7C318C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F7C3250@<X0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_24F4E9558(a2, v8);
      sub_24F7C361C(v8, a3);
      *(a3 + v6[17]) = 0;

      *(a3 + v6[13]) = 1;
      *(a3 + v6[30]) = 0x403A000000000000;
      *(a3 + v6[19]) = 2;
      *(a3 + v6[28]) = 2;
      *(a3 + v6[21]) = 1;
      v13 = 10.0;
      goto LABEL_24;
    }

    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v9 = __swift_project_value_buffer(v6, qword_27F39E610);
      sub_24F4E2488(v9, a3);
      v10 = 0;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v6, qword_27F39E658);
      sub_24F4E2488(v15, a3);
      v10 = 1;
    }
  }

  else
  {
    if (a1)
    {
      if (a1 == 1)
      {
        sub_24F4E9E44(a2, v8);
        sub_24F7C361C(v8, a3);
      }

      else
      {
        if (qword_27F2112F8 != -1)
        {
          swift_once();
        }

        v14 = __swift_project_value_buffer(v6, qword_27F39E628);
        sub_24F4E2488(v14, a3);
      }
    }

    else
    {
      if (qword_27F211300 != -1)
      {
        swift_once();
      }

      v11 = __swift_project_value_buffer(v6, qword_27F39E640);
      sub_24F4E2488(v11, a3);
    }

    v10 = 1;
  }

  *(a3 + v6[17]) = v10;
  v16 = sub_24F92CE08();

  *(a3 + v6[13]) = v16 & 1;
  *(a3 + v6[30]) = 0x403A000000000000;
  *(a3 + v6[19]) = 2;
  *(a3 + v6[28]) = 2;
  if (a1 == 4)
  {
    *(a3 + v6[21]) = 2;
    v13 = 8.0;
  }

  else
  {
    v13 = *(a3 + v6[16]);
  }

LABEL_24:
  *(a3 + v6[16]) = v13;
  return result;
}

uint64_t sub_24F7C35A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(v5 + 8);
  v11 = a2 + *(type metadata accessor for AppEventSearchCard(0) + 60);

  return sub_24F66F8EC(a1, v11, a3, a4, v10, a5);
}

uint64_t sub_24F7C361C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardLayoutMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7C36C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_24F7C3740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F7C37F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for GameActivityDraftBuilder();
  sub_24F928F28();
  v6 = v16[0];
  swift_beginAccess();
  v7 = *(v16[0] + 16);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v16[0] = v7;
    sub_24F7C3A18(&qword_27F212898, type metadata accessor for GameActivityDraft, &protocol conformance descriptor for GameActivityDraft);

    sub_24F91FD78();

    if (*(v6 + 16))
    {

      sub_24F34EC58(v9);

      if (*(v6 + 16))
      {

        sub_24F34ED4C(v10);
      }
    }
  }

  sub_24E7CBB7C((a1 + 3), v15);
  sub_24E612C80(v15, v16);
  type metadata accessor for UpdateChallengePlayersToInviteActionImplementation(0, a3, v11, v12);
  swift_getWitnessTable();
  v13 = sub_24F1489C4(v16, a2);

  __swift_destroy_boxed_opaque_existential_1(v16);
  return v13;
}

uint64_t sub_24F7C3A18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F7C3A74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

id sub_24F7C3AFC()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator____lazy_storage___pageControlProgress;
  v2 = *(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator____lazy_storage___pageControlProgress);
  v3 = v2;
  if (v2 == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollConfiguration) == 2)
    {
      v3 = 0;
      v4 = 1;
    }

    else
    {
      v3 = [objc_allocWithZone(MEMORY[0x277D757E8]) initWithPreferredDuration_];
      [v3 setDelegate_];
      v4 = *(v0 + v1);
    }

    *(v0 + v1) = v3;
    v5 = v3;
    sub_24ED8F464(v4);
  }

  sub_24ED8F454(v2);
  return v3;
}

uint64_t sub_24F7C3BC8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return sub_24F7C648C(v7, v8) & 1;
}

id sub_24F7C3C88(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for HeroCarouselItemStateCoordinator.PageControlTimerDelegate();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_24F7C3CFC(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_24F9270C8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9270B8();
  v9 = MEMORY[0x25304D070](v8, 0.0);
  result = (*(v6 + 8))(v8, v5);
  *a4 = v9;
  return result;
}

uint64_t sub_24F7C3DFC()
{
  result = sub_24F927648();
  qword_27F250820 = result;
  return result;
}

void sub_24F7C3E3C()
{
  sub_24F927648();
  v0 = sub_24F927698();

  qword_27F250828 = v0;
}

void sub_24F7C3EA0(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v49 = *(v4 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_items);
  v5 = *(v49 + 16);
  if (!v5)
  {
    return;
  }

  v8 = *(a3 + 40);
  if ((v8 | a4))
  {
    v9 = 0.0;
  }

  else
  {
    v9 = *(a3 + 32);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E020, &qword_24F93B450);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  v11 = a1 - 1;
  if (__OFSUB__(a1, 1))
  {
    goto LABEL_101;
  }

  if (__OFADD__(v5, v11))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  *(inited + 32) = (v5 + v11) % v5;
  *(inited + 40) = a1;
  if (__OFADD__(a1, 1))
  {
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

  *(inited + 48) = (a1 + 1) % v5;
  v12 = sub_24F06951C(inited, &v52);
  v5 = v52;
  v45 = a1 + 1;
  v47 = a1 - 1;
  if (a4)
  {
    if (qword_27F211840 == -1)
    {
LABEL_10:
      v13 = qword_27F211848;
      v14 = qword_27F250810;

      if (v13 != -1)
      {
        swift_once();
      }

      v15 = qword_27F250818;

      goto LABEL_17;
    }

LABEL_104:
    swift_once();
    goto LABEL_10;
  }

  if (v8)
  {
    v15 = 0;
  }

  else
  {
    v15 = MEMORY[0x25304D060](v12, 0.15, 0.85, 0.25);
  }

  v14 = 0;
LABEL_17:
  v16 = *(v5 + 16);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v52 = MEMORY[0x277D84F90];
    sub_24F45871C(0, v16, 0);
    v18 = 0;
    v17 = v52;
    v48 = v16;
    v46 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_viewWidth;
    v19 = *(v5 + 16);
    do
    {
      if (v18 >= v19)
      {
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      v20 = *(v5 + 32 + 8 * v18);
      v21 = *(v49 + 16);
      v22 = 1.0 - v9;
      if (v20 != a1)
      {
        v23 = v21 + v47;
        if (__OFADD__(v21, v47))
        {
          goto LABEL_92;
        }

        if (!v21)
        {
          goto LABEL_93;
        }

        if (v20 == v23 % v21 && a2 == 2)
        {
          v26 = *(v51 + v46) * 0.25;
          v22 = v9;
          goto LABEL_47;
        }

        if (a2 == 1 && v20 == v45 % v21)
        {
          v22 = v9;
        }

        else
        {
          v22 = 0.0;
        }
      }

      if (!a2)
      {
        v27 = 0.0;
        goto LABEL_54;
      }

      v26 = *(v51 + v46) * 0.25;
      if (a2 == 1)
      {
        if (v20 == a1)
        {
          v27 = -(v26 * v9);
          goto LABEL_54;
        }

        if (__OFADD__(v21, v47))
        {
          goto LABEL_99;
        }

        if (!v21)
        {
          goto LABEL_100;
        }

        if (v20 == (v21 + v47) % v21)
        {
          v27 = -v26;
          goto LABEL_54;
        }

        v28 = v45 % v21;
        v26 = (1.0 - v9) * v26;
        goto LABEL_51;
      }

      if (v20 == a1)
      {
        v27 = v9 * v26;
        goto LABEL_54;
      }

      v23 = v21 + v47;
      if (__OFADD__(v21, v47))
      {
        goto LABEL_94;
      }

      if (!v21)
      {
        goto LABEL_95;
      }

LABEL_47:
      if (v20 == v23 % v21)
      {
        v27 = (v9 + -1.0) * v26;
        goto LABEL_54;
      }

      v28 = v45 % v21;
LABEL_51:
      if (v20 == v28)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0.0;
      }

LABEL_54:
      v52 = v17;
      v30 = *(v17 + 2);
      v29 = *(v17 + 3);

      if (v30 >= v29 >> 1)
      {
        sub_24F45871C((v29 > 1), v30 + 1, 1);
        v17 = v52;
      }

      *(v17 + 2) = v30 + 1;
      v31 = &v17[48 * v30];
      *(v31 + 4) = v20;
      v31[40] = v20 == a1;
      v31[41] = v20 == a1;
      *(v31 + 6) = v22;
      *(v31 + 7) = v14;
      *(v31 + 8) = v27;
      *(v31 + 9) = v15;
      v19 = *(v5 + 16);
      if (v18 >= v19)
      {
        goto LABEL_89;
      }

      ++v18;
    }

    while (v48 != v18);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v17;

  sub_24F9230A8();
  v32 = *(v5 + 16);
  if (v32)
  {
    v52 = MEMORY[0x277D84F90];
    sub_24F4586FC(0, v32, 0);
    v33 = 0;
    v34 = v52;
    v35 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_isDragging;
    v36 = *(v5 + 16);
    v9 = 1.0;
    while (1)
    {
      if (v33 >= v36)
      {
        goto LABEL_90;
      }

      v37 = *(v5 + 8 * v33 + 32);
      if (*(v51 + v35) == 1)
      {
        break;
      }

      if (a2)
      {
        v38 = *(v49 + 16);
        if (a2 == 1)
        {
          if (__OFADD__(v38, v47))
          {
            goto LABEL_97;
          }

          if (!v38)
          {
            goto LABEL_98;
          }

          if (v37 == (v38 + v47) % v38)
          {
            break;
          }
        }

        else
        {
          if (!v38)
          {
            goto LABEL_96;
          }

          if (v37 == v45 % v38)
          {
            break;
          }
        }
      }

      if (v37 != a1)
      {
        v40 = 0;
        goto LABEL_76;
      }

      v39 = &qword_27F250828;
      if (qword_27F211858 != -1)
      {
        swift_once();
        v39 = &qword_27F250828;
      }

LABEL_75:
      v40 = *v39;

LABEL_76:
      if ((v37 != a1) | *(v51 + v35) & 1)
      {
        v41 = 0.0;
      }

      else
      {
        v41 = 1.0;
      }

      v52 = v34;
      v43 = *(v34 + 2);
      v42 = *(v34 + 3);
      if (v43 >= v42 >> 1)
      {
        sub_24F4586FC((v42 > 1), v43 + 1, 1);
        v34 = v52;
      }

      *(v34 + 2) = v43 + 1;
      v44 = &v34[32 * v43];
      *(v44 + 4) = v37;
      v44[40] = v37 == a1;
      *(v44 + 6) = v41;
      *(v44 + 7) = v40;
      v36 = *(v5 + 16);
      if (v33 >= v36)
      {
        goto LABEL_91;
      }

      if (v32 == ++v33)
      {

        goto LABEL_86;
      }
    }

    if (qword_27F211850 != -1)
    {
      swift_once();
    }

    v39 = &qword_27F250820;
    goto LABEL_75;
  }

  v34 = MEMORY[0x277D84F90];
LABEL_86:
  swift_getKeyPath();
  swift_getKeyPath();
  v52 = v34;

  sub_24F9230A8();
}

void sub_24F7C4598()
{
  v1 = v0;
  type metadata accessor for VideoPlaybackCoordinator(0);
  sub_24F928FD8();
  sub_24F92A758();
  v2 = v11[0];
  v3 = *(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_items);
  v4 = *(v3 + 16);
  if (!v4)
  {
LABEL_12:

    return;
  }

  v5 = 0;
  v9 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_verticalScrollState;
  while (v5 < *(v3 + 16))
  {
    v7 = *(v3 + 32 + 8 * v5);
    if (!v7)
    {
      goto LABEL_6;
    }

    if (*(v1 + v9) > 1u)
    {
      swift_retain_n();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      swift_retain_n();
      sub_24F923098();

      if (v5 == v11[0])
      {
        v8 = OBJC_IVAR____TtC12GameStoreKit5Video_playbackId;
        swift_beginAccess();
        sub_24F7A58DC(v7 + v8, v11);
        sub_24E601704(v11, &qword_27F235830, &qword_24F93B8C0);
        swift_endAccess();
        goto LABEL_5;
      }
    }

    v6 = OBJC_IVAR____TtC12GameStoreKit5Video_playbackId;
    sub_24E65864C(v7 + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, v10);
    swift_beginAccess();
    sub_24ED7D5A0(v11, v10);
    sub_24E6585F8(v11);
    swift_endAccess();
    sub_24EEC6CF8(v7 + v6);
LABEL_5:
    sub_24EEC6054();
    sub_24EEC66B8();

LABEL_6:
    if (v4 == ++v5)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_24F7C47AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_24F92CA08();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_24F92B7F8();
  v4[6] = sub_24F92B7E8();
  v7 = sub_24F92B778();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x2822009F8](sub_24F7C48A0, v7, v6);
}

uint64_t sub_24F7C48A0()
{
  v1 = sub_24F92D1A8();
  v3 = v2;
  sub_24F92CFB8();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_24F7C4980;

  return sub_24E70C87C(v1, v3, 0, 0, 1);
}

uint64_t sub_24F7C4980()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_24F7C4B90;
  }

  else
  {
    v8 = sub_24F7C4B18;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_24F7C4B18()
{

  sub_24F7C4BFC(0.0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F7C4B90()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_24F7C4BFC(double a1)
{
  if (*(*(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_items) + 16))
  {
    if (*(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_isDragging) & 1) != 0 || *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_verticalScrollState) || (v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollConfiguration), v2 == 2) || (v2 & 1) == 0 || (v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollConfiguration + 8), (sub_24F7C5268()))
    {

      sub_24F7C5030(0);
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimerIndex);
      v6 = *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimerIndex + 8);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      if ((v6 & 1) != 0 || v5 != v18[0])
      {
        v8 = v4 + a1;
        v9 = swift_allocObject();
        swift_weakInit();
        v18[4] = sub_24F7C6DC8;
        v18[5] = v9;
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 1107296256;
        v18[2] = sub_24ECAEFC8;
        v18[3] = &block_descriptor_178;
        v10 = _Block_copy(v18);
        v11 = objc_opt_self();

        v12 = [v11 timerWithTimeInterval:0 repeats:v10 block:v8];
        _Block_release(v10);

        v7 = v12;
        sub_24F7C5030(v12);
        v13 = [objc_opt_self() currentRunLoop];
        [v13 addTimer:v7 forMode:*MEMORY[0x277CBE738]];

        v14 = sub_24F7C3AFC();
        if (v14)
        {
          v15 = v14;
          swift_getKeyPath();
          swift_getKeyPath();
          sub_24F923098();

          [v15 setDuration:v18[0] forPage:v8];
        }

        v16 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator____lazy_storage___pageControlProgress;
        [*(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator____lazy_storage___pageControlProgress) resumeTimer];
        v17 = *(v1 + v16);
        if (v17)
        {
          [v17 setCurrentProgress_];

          sub_24ED8F464(v17);
          return;
        }
      }

      else
      {
        v7 = sub_24F7C3AFC();
        [v7 resumeTimer];
      }
    }
  }
}

void sub_24F7C4F38(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

void sub_24F7C4FB8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  sub_24F7C4598();
}

void sub_24F7C5030(void *a1)
{
  v2 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimer;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimer);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimer) = a1;
  v4 = a1;
  [v3 invalidate];
  v5 = *(v1 + v2);
  if (v5)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v6 = v8;
  }

  else
  {

    v6 = 0;
  }

  v7 = v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimerIndex;
  *v7 = v6;
  *(v7 + 8) = v5 == 0;
}

void sub_24F7C5110()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if (__OFADD__(*&v3[0], 1))
  {
    __break(1u);
  }

  else
  {
    v1 = *(*(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_items) + 16);
    if (v1)
    {
      v2 = (*&v3[0] + 1) % v1;
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      v5 = 1;
      swift_getKeyPath();
      swift_getKeyPath();

      sub_24F9230A8();
      sub_24F7C4598();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      sub_24F7C3EA0(v2, 1, v3, 1u);
      return;
    }
  }

  __break(1u);
}

uint64_t sub_24F7C5268()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F468, &qword_24F962020);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F250970, &unk_24FA2B3B0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v38 - v8;
  v10 = *(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_items);
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  sub_24F923098();

  if ((aBlock[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (aBlock[0] >= *(v10 + 16))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
    goto LABEL_7;
  }

  v12 = *(v10 + 8 * aBlock[0] + 32);
  if (!v12)
  {
    v16 = v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex;
    *v16 = 0;
    *(v16 + 8) = 1;
    v17 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_videoSubscriptions;
    swift_beginAccess();
    *(v2 + v17) = MEMORY[0x277D84FA0];

    KeyPath = *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer) = 0;
    [KeyPath invalidate];
    v15 = 0;
    goto LABEL_14;
  }

  type metadata accessor for VideoPlaybackCoordinator(0);
  sub_24F928FD8();

  sub_24F92A758();
  KeyPath = aBlock[0];
  sub_24E65864C(v12 + OBJC_IVAR____TtC12GameStoreKit5Video_playbackId, aBlock);
  v1 = sub_24EEC9884(aBlock);
  sub_24E601704(aBlock, &qword_27F235830, &qword_24F93B8C0);
  if (!v1)
  {
LABEL_13:
    v18 = v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex;
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_videoSubscriptions;
    swift_beginAccess();
    *(v2 + v19) = MEMORY[0x277D84FA0];

    v20 = *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer) = 0;
    [v20 invalidate];

    v15 = 0;
    KeyPath = v20;
    goto LABEL_14;
  }

  v13 = v1 + OBJC_IVAR____TtC12GameStoreKit14VideoViewModel_configuration;
  if (*(v13 + *(type metadata accessor for VideoConfiguration(0) + 36)) != 1)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (qword_27F2110D0 != -1)
  {
    goto LABEL_20;
  }

LABEL_7:
  if ((sub_24F2DAE78() & 1) == 0)
  {
    goto LABEL_12;
  }

  v44 = *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex);
  v42 = v7;
  v43 = (v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex);
  v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  if ((v14 & 1) != 0 || v44 != aBlock[0])
  {
    v22 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_videoSubscriptions;
    swift_beginAccess();
    v44 = v22;
    *(v2 + v22) = MEMORY[0x277D84FA0];

    v23 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer;
    v24 = *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer);
    *(v2 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer) = 0;
    [v24 invalidate];

    v25 = *(v1 + 24);
    if (v25)
    {
      aBlock[0] = *(v25 + OBJC_IVAR____TtC12GameStoreKit11VideoPlayer__events);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F250980, &qword_24F962040);
      v39 = v23;
      sub_24E602068(&qword_27F21FEB8, &unk_27F250980, &qword_24F962040, MEMORY[0x277CBCE20]);
      v41 = sub_24F9230C8();
      aBlock[0] = v41;
      sub_24E74EC40();
      v40 = sub_24F92BEF8();
      aBlock[6] = v40;
      v26 = sub_24F92BEB8();
      (*(*(v26 - 8) + 56))(v5, 1, 1, v26);
      v38[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC0, &qword_24F962048);
      sub_24E602068(&unk_27F250990, &qword_27F21FEC0, &qword_24F962048, MEMORY[0x277CBCD90]);
      sub_24EA9B900();
      v23 = v39;
      sub_24F923118();
      sub_24E601704(v5, &qword_27F21F468, &qword_24F962020);

      swift_allocObject();
      swift_weakInit();
      sub_24E602068(&unk_27F2509A0, &unk_27F250970, &unk_24FA2B3B0, MEMORY[0x277CBCD60]);
      sub_24F923148();

      (*(v42 + 8))(v9, v6);
      swift_beginAccess();
      sub_24F922F58();
      swift_endAccess();

      v27 = *(v2 + v23);
      *(v2 + v23) = 0;
      [v27 invalidate];
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24F923098();

    v28 = v43;
    *v43 = aBlock[0];
    *(v28 + 8) = 0;
    v29 = sub_24F7C3AFC();
    [v29 pauseTimer];

    v30 = objc_opt_self();
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = v32;
    aBlock[4] = sub_24F7C6E30;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24ECAEFC8;
    aBlock[3] = &block_descriptor_44_0;
    v34 = _Block_copy(aBlock);

    v15 = 1;
    v35 = [v30 scheduledTimerWithTimeInterval:1 repeats:v34 block:0.1];
    _Block_release(v34);
    v36 = *(v2 + v23);
    *(v2 + v23) = v35;
    v37 = v35;
    [v36 invalidate];

    KeyPath = v36;
  }

  else
  {

    v15 = 1;
  }

LABEL_14:

  return v15;
}

double sub_24F7C5AE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_isDragging) & 1) == 0 && !*(Strong + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_verticalScrollState))
    {
      v3 = *(Strong + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollConfiguration);
      if (v3 != 2 && (v3 & 1) != 0)
      {
        sub_24F7C5110();
        sub_24F7C4BFC(0.0);
        goto LABEL_10;
      }
    }
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return result;
  }

  sub_24F7C5030(0);
LABEL_10:

  return result;
}

void sub_24F7C5BB0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8, &unk_24FA2B3C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v14[-v7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if ((*(Strong + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_isDragging) & 1) == 0 && !*(Strong + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_verticalScrollState))
    {
      v10 = *(Strong + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollConfiguration);
      if (v10 != 2 && (v10 & 1) != 0)
      {
        sub_24F7C6E38(a1, v8);
        v11 = type metadata accessor for VideoPlayer.Event(0);
        if ((*(*(v11 - 8) + 48))(v8, 1, v11) != 1)
        {
          sub_24F7C6E38(v8, v5);
          if (swift_getEnumCaseMultiPayload() != 2)
          {

            sub_24F7C6EA8(v5);
            goto LABEL_15;
          }

          sub_24F7C5110();
          sub_24F7C4BFC(0.0);
        }

LABEL_15:
        sub_24E601704(v8, &qword_27F21FEC8, &unk_24FA2B3C0);
        return;
      }
    }
  }

  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = v12 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex;
    *v13 = 0;
    *(v13 + 8) = 1;
  }
}

void sub_24F7C5DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 24);
    if (v4)
    {
      v5 = v4;

      v6 = [v5 currentItem];

      if (v6)
      {
        [v6 duration];
        Seconds = CMTimeGetSeconds(&v12);
        [v6 currentTime];
        v8 = CMTimeGetSeconds(&v12) / Seconds;
        if (v8 > 0.0)
        {
          v9 = v8;
        }

        else
        {
          v9 = 0.0;
        }

        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          v10 = sub_24F7C3AFC();

          if (v10)
          {
            *&v11 = v9;
            [v10 setCurrentProgress_];
          }
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_24F7C5F20()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator__selectedIndex;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23DC08, &qword_24FA2B330);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24ED8F464(*(v0 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator____lazy_storage___pageControlProgress));

  v3 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator__backgroundStates;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250960, &qword_24FA2B338);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator__overlayStates;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250968, &unk_24FA2B340);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_layoutDirection;
  v8 = sub_24F923F78();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return v0;
}

double sub_24F7C60CC()
{
  sub_24F7C5F20();

  swift_deallocClassInstance();
  return result;
}

uint64_t type metadata accessor for HeroCarouselItemStateCoordinator(uint64_t a1)
{
  result = qword_27F2508A0;
  if (!qword_27F2508A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F7C6178(uint64_t a1)
{
  sub_24F7C6370();
  if (v1 <= 0x3F)
  {
    sub_24EEFCB4C(319, &qword_27F2508B8, &qword_27F2508C0, &qword_24FA2B078);
    if (v2 <= 0x3F)
    {
      sub_24EEFCB4C(319, &qword_27F2508C8, &unk_27F2508D0, &qword_24FA2B080);
      if (v3 <= 0x3F)
      {
        sub_24F923F78();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_24F7C6370()
{
  if (!qword_27F2508B0)
  {
    v0 = sub_24F9230B8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2508B0);
    }
  }
}

unint64_t sub_24F7C6438()
{
  result = qword_27F250940;
  if (!qword_27F250940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250940);
  }

  return result;
}

uint64_t sub_24F7C648C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || ((*(a1 + 8) ^ *(a2 + 8)) & 1) != 0 || ((*(a1 + 9) ^ *(a2 + 9)) & 1) != 0)
  {
    return 0;
  }

  v15 = v2;
  v16 = v3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v14 = *(a2 + 16);
  if (v5 != *&v14)
  {
    return 0;
  }

  if (v6)
  {
    if (!*(&v14 + 1))
    {
      return 0;
    }

    v7 = a1;
    v8 = a2;

    v9 = sub_24F927688();
    sub_24E601704(&v14, &unk_27F250950, &qword_24FA2B328);
    a1 = v7;
    a2 = v8;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(&v14 + 1))
  {
    return 0;
  }

  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a2 + 32);
  if (v10 == *&v13)
  {
    if (v11)
    {
      if (*(&v13 + 1))
      {

        v12 = sub_24F927688();
        sub_24E601704(&v13, &qword_27F250948, &qword_24FA2B320);
        if (v12)
        {
          return 1;
        }
      }
    }

    else if (!*(&v13 + 1))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_24F7C65D4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, double a7, double a8)
{
  result = 0;
  if (a1 == a4 && ((a2 ^ a5) & 1) == 0)
  {
    if (a7 == a8)
    {
      if (a3)
      {
        if (a6)
        {

          v10 = sub_24F927688();

          if (v10)
          {
            return 1;
          }
        }
      }

      else if (!a6)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_24F7C6654(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v50 = a4;
  v53 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v46 - v9;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250968, &unk_24FA2B340);
  v10 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250960, &qword_24FA2B338);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v46 - v15;
  v49 = *a3;
  v17 = a3[1];
  v47 = a3[2];
  v48 = v17;
  v46 = a3[3];
  *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator____lazy_storage___pageControlProgress) = 1;
  v18 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_pageControlTimerDelegate;
  *(v5 + v18) = [objc_allocWithZone(type metadata accessor for HeroCarouselItemStateCoordinator.PageControlTimerDelegate()) init];
  *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_isDragging) = 0;
  v19 = (v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_dragState);
  memset(v56, 0, 40);
  v56[40] = 1;
  *(v19 + 25) = *&v56[25];
  v20 = *&v56[16];
  *v19 = *v56;
  v19[1] = v20;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_viewWidth) = 0;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_verticalScrollState) = 0;
  v21 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator__backgroundStates;
  v22 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2508C0, &qword_24FA2B078);
  sub_24F923058();
  v23 = v5 + v21;
  v24 = v22;
  (*(v14 + 32))(v23, v16, v13);
  v25 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator__overlayStates;
  v55 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2508D0, &qword_24FA2B080);
  sub_24F923058();
  (*(v10 + 32))(v5 + v25, v12, v52);
  v26 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_layoutDirection;
  v27 = *MEMORY[0x277CDFA88];
  v28 = sub_24F923F78();
  (*(*(v28 - 8) + 104))(v5 + v26, v27, v28);
  *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimer) = 0;
  v29 = v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimerIndex;
  *v29 = 0;
  *(v29 + 8) = 1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_videoSubscriptions) = MEMORY[0x277D84FA0];
  v30 = v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex;
  *v30 = 0;
  *(v30 + 8) = 1;
  *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer) = 0;
  v31 = v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_visibleHeaderHeight;
  *v31 = 0;
  *(v31 + 8) = 1;
  swift_beginAccess();
  v54 = v53;
  sub_24F923058();
  swift_endAccess();
  if (!(a2 >> 62))
  {
    v32 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_3;
    }

LABEL_12:

    v37 = MEMORY[0x277D84F90];
LABEL_13:
    *(v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_items) = v37;
    v38 = (v5 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollConfiguration);
    v39 = v48;
    *v38 = v49;
    v38[1] = v39;
    v40 = v46;
    v38[2] = v47;
    v38[3] = v40;
    *(v5 + 16) = v50;
    swift_getKeyPath();
    swift_getKeyPath();

    sub_24F923098();

    sub_24F7C3EA0(v55, 1, v56, 0);
    sub_24F7C4598();
    v41 = sub_24F92B858();
    v42 = v51;
    (*(*(v41 - 8) + 56))(v51, 1, 1, v41);
    sub_24F92B7F8();

    v43 = sub_24F92B7E8();
    v44 = swift_allocObject();
    v45 = MEMORY[0x277D85700];
    v44[2] = v43;
    v44[3] = v45;
    v44[4] = v5;
    sub_24F1D3DA4(0, 0, v42, &unk_24FA2B3A0, v44);

    return v5;
  }

  v32 = sub_24F92C738();
  if (!v32)
  {
    goto LABEL_12;
  }

LABEL_3:
  v55 = v24;
  result = sub_24F92C978();
  if ((v32 & 0x8000000000000000) == 0)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v34 = 0;
      do
      {
        v35 = v34 + 1;
        MEMORY[0x253052270]();

        swift_unknownObjectRelease();
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        v34 = v35;
      }

      while (v32 != v35);
    }

    else
    {
      v36 = 32;
      do
      {

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
        v36 += 8;
        --v32;
      }

      while (v32);
    }

    v37 = v55;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F7C6C9C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F7C6CDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24F7C47AC(a1, v4, v5, v6);
}

uint64_t sub_24F7C6D90()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_178(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F7C6DF0()
{

  return swift_deallocObject();
}

uint64_t sub_24F7C6E38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21FEC8, &unk_24FA2B3C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F7C6EA8(uint64_t a1)
{
  v2 = type metadata accessor for VideoPlayer.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F7C6FA4(uint64_t a1)
{
  v25 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250968, &unk_24FA2B340);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250960, &qword_24FA2B338);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator____lazy_storage___pageControlProgress) = 1;
  v10 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_pageControlTimerDelegate;
  *(v1 + v10) = [objc_allocWithZone(type metadata accessor for HeroCarouselItemStateCoordinator.PageControlTimerDelegate()) init];
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_isDragging) = 0;
  v11 = (v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_dragState);
  memset(v28, 0, 40);
  v28[40] = 1;
  *(v11 + 25) = *&v28[25];
  v12 = *&v28[16];
  *v11 = *v28;
  v11[1] = v12;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_viewWidth) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_verticalScrollState) = 0;
  v13 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator__backgroundStates;
  v14 = MEMORY[0x277D84F90];
  v27 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2508C0, &qword_24FA2B078);
  sub_24F923058();
  (*(v7 + 32))(v1 + v13, v9, v6);
  v15 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator__overlayStates;
  v27 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2508D0, &qword_24FA2B080);
  sub_24F923058();
  (*(v3 + 32))(v1 + v15, v5, v2);
  v16 = OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_layoutDirection;
  v17 = *MEMORY[0x277CDFA88];
  v18 = sub_24F923F78();
  (*(*(v18 - 8) + 104))(v1 + v16, v17, v18);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimer) = 0;
  v19 = v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollTimerIndex;
  *v19 = 0;
  *(v19 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_videoSubscriptions) = MEMORY[0x277D84FA0];
  v20 = v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_currentVideoSubscriptionIndex;
  *v20 = 0;
  *(v20 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_playerProgressTimer) = 0;
  v21 = v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_visibleHeaderHeight;
  *v21 = 0;
  *(v21 + 8) = 1;
  swift_beginAccess();
  v26 = 0;
  sub_24F923058();
  swift_endAccess();
  *(v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_items) = &unk_2861C0A00;
  v22 = (v1 + OBJC_IVAR____TtC12GameStoreKit32HeroCarouselItemStateCoordinator_autoScrollConfiguration);
  *v22 = 2;
  v22[1] = 0;
  v22[2] = 0;
  v22[3] = 0;
  *(v1 + 16) = v25;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F923098();

  sub_24F7C3EA0(v27, 1, v28, 0);
  sub_24F7C4598();
  return v1;
}

unint64_t LibraryPageIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93DE60;
  *(inited + 32) = 0x726579616C70;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = type metadata accessor for Player(0);
  *(inited + 80) = sub_24E61C064(&qword_27F215388, &protocol conformance descriptor for Player);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E70D960(v2, boxed_opaque_existential_1);
  v6 = sub_24E607E40(inited);
  swift_setDeallocating();
  sub_24E6383E8(inited + 32);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v6;
  return result;
}

uint64_t sub_24F7C7514(uint64_t a1)
{
  v2 = sub_24F7C7AEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F7C7550(uint64_t a1)
{
  v2 = sub_24F7C7AEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LibraryPageIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250A10, &qword_24FA2B480);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7C7AEC();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

uint64_t LibraryPageIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250A20, &qword_24FA2B488);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for LibraryPageIntent(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7C7AEC();
  sub_24F92D108();
  if (!v2)
  {
    v12 = v16;
    sub_24E61C064(&qword_27F213E38, &protocol conformance descriptor for Player);
    v13 = v17;
    sub_24F92CC68();
    (*(v15 + 8))(v8, v6);
    sub_24F7C7B8C(v13, v11, type metadata accessor for Player);
    sub_24F7C7B8C(v11, v12, type metadata accessor for LibraryPageIntent);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24F7C7988(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250A10, &qword_24FA2B480);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F7C7AEC();
  sub_24F92D128();
  type metadata accessor for Player(0);
  sub_24E61C064(&qword_27F213E28, &protocol conformance descriptor for Player);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F7C7AEC()
{
  result = qword_27F250A18;
  if (!qword_27F250A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250A18);
  }

  return result;
}

uint64_t type metadata accessor for LibraryPageIntent(uint64_t a1)
{
  result = qword_27F250A28;
  if (!qword_27F250A28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F7C7B8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F7C7C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F7C7C88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_24F7C7D0C()
{
  result = qword_27F250A38;
  if (!qword_27F250A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250A38);
  }

  return result;
}

unint64_t sub_24F7C7D64()
{
  result = qword_27F250A40;
  if (!qword_27F250A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F250A40);
  }

  return result;
}

unint64_t sub_24F7C7DBC()
{
  result = qword_27F250A48[0];
  if (!qword_27F250A48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F250A48);
  }

  return result;
}

void sub_24F7C7E10(uint64_t a1)
{
  type metadata accessor for ASKBagContract(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocalPlayerProvider(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ArcadeSubscription(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for NetworkConnectionMonitor(319);
        if (v4 <= 0x3F)
        {
          sub_24F923648();
          if (v5 <= 0x3F)
          {
            sub_24E6C55A0(319);
            if (v6 <= 0x3F)
            {
              sub_24E654514();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F7C7F3C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

void *sub_24F7C800C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A8, &qword_24F943480);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F7C8120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v74 = a2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40, &qword_24F984790);
  v73 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v72 = v54 - v3;
  v69 = *(a1 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v4);
  v68 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = *(a1 + 16);
  v6 = v66;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250AD0, &qword_24FA2B720);
  v8 = *(a1 + 32);
  v65 = v8;
  v9 = sub_24F7CBA74();
  v80 = v6;
  v81 = v7;
  v82 = v8;
  v83 = v9;
  type metadata accessor for BaseShelfPageView(255, &v80);
  sub_24F924038();
  sub_24F924E38();
  sub_24F926DC8();
  sub_24F924038();
  sub_24F924038();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250B20, &unk_24FA2B748);
  v10 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_24E667ED0();
  v95 = WitnessTable;
  v96 = v12;
  v93 = swift_getWitnessTable();
  v94 = WitnessTable;
  v92 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = MEMORY[0x277CE0790];
  v90 = v13;
  v91 = MEMORY[0x277CE0790];
  v88 = swift_getWitnessTable();
  v89 = v14;
  v15 = swift_getWitnessTable();
  v16 = sub_24E602068(&qword_27F250B28, &qword_27F250B20, &unk_24FA2B748, MEMORY[0x277CE0868]);
  v86 = v15;
  v87 = v16;
  v17 = swift_getWitnessTable();
  v80 = v10;
  v81 = v17;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = OpaqueTypeMetadata2;
  v80 = v10;
  v81 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v66;
  v80 = v66;
  v81 = OpaqueTypeMetadata2;
  v20 = v65;
  v82 = v65;
  v83 = OpaqueTypeConformance2;
  v21 = type metadata accessor for PageView(255, &v80);
  v22 = swift_getWitnessTable();
  v23 = MEMORY[0x277D839B0];
  v80 = v21;
  v81 = MEMORY[0x277D839B0];
  v24 = MEMORY[0x277D839C8];
  v82 = v22;
  v83 = MEMORY[0x277D839C8];
  v25 = v22;
  v59 = v22;
  v26 = swift_getOpaqueTypeMetadata2();
  v54[2] = v26;
  v56 = sub_24E6A4C1C();
  v80 = &type metadata for GameOverlayViewPredicate;
  v81 = v56;
  v27 = swift_getOpaqueTypeConformance2();
  v58 = v27;
  v54[1] = v21;
  v80 = v21;
  v81 = v23;
  v82 = v25;
  v83 = v24;
  v55 = swift_getOpaqueTypeConformance2();
  v80 = v21;
  v81 = v75;
  v82 = v26;
  v83 = v25;
  v84 = v27;
  v85 = v55;
  v62 = MEMORY[0x277CE0E68];
  v63 = swift_getOpaqueTypeMetadata2();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v54[0] = v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v57 = v54 - v30;
  v31 = v71;
  sub_24F923628();
  v32 = v69;
  v33 = v68;
  v34 = v67;
  (*(v69 + 16))(v68, v31, v67);
  v35 = (*(v32 + 80) + 40) & ~*(v32 + 80);
  v36 = swift_allocObject();
  v37 = *(v34 + 24);
  *(v36 + 2) = v19;
  *(v36 + 3) = v37;
  *(v36 + 4) = v20;
  (*(v32 + 32))(&v36[v35], v33, v34);
  swift_checkMetadataState();
  sub_24F6A9290();
  v70 = v38;
  v80 = v38;
  v81 = v39;
  v82 = v40;
  LOBYTE(v83) = v41 & 1;
  v42 = v72;
  sub_24F924B68();
  v76 = v19;
  v77 = v37;
  v78 = v20;
  v79 = v31;
  v43 = swift_checkMetadataState();
  v44 = swift_checkMetadataState();
  v45 = v55;
  v46 = v54[0];
  v47 = v75;
  v48 = v59;
  v49 = v58;
  sub_24F926B08();
  (*(v73 + 8))(v42, v47);

  swift_unknownObjectRelease();
  v80 = v43;
  v81 = v47;
  v82 = v44;
  v83 = v48;
  v84 = v49;
  v85 = v45;
  swift_getOpaqueTypeConformance2();
  v50 = v57;
  v51 = v63;
  sub_24E7896B8();
  v52 = *(v64 + 8);
  v52(v46, v51);
  sub_24E7896B8();
  return (v52)(v50, v51);
}

uint64_t sub_24F7C8960@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v126 = a3;
  v92 = a1;
  v121 = a5;
  v120 = sub_24F929888();
  v119 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v118 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = a2;
  v85 = a4;
  v123 = type metadata accessor for EditorialPageView(0, a2, a3, a4);
  v127 = *(v123 - 8);
  v125 = *(v127 + 64);
  MEMORY[0x28223BE20](v123);
  v122 = &v78 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325E8, &unk_24F9C3400);
  MEMORY[0x28223BE20](v10 - 8);
  v101 = &v78 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250AD0, &qword_24FA2B720);
  v108 = v12;
  v107 = sub_24F7CBA74();
  *&v128 = a2;
  *(&v128 + 1) = v12;
  *&v129 = a4;
  *(&v129 + 1) = v107;
  v13 = type metadata accessor for BaseShelfPageView(0, &v128);
  v113 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v124 = (&v78 - v14);
  sub_24F924038();
  v94 = v13;
  sub_24F924E38();
  v15 = sub_24F926DC8();
  v115 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v109 = &v78 - v16;
  v93 = v15;
  v17 = sub_24F924038();
  v114 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v111 = &v78 - v18;
  v96 = v17;
  v19 = sub_24F924038();
  v116 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v110 = &v78 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F250B20, &unk_24FA2B748);
  v99 = v19;
  v21 = sub_24F924038();
  v117 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v112 = &v78 - v22;
  WitnessTable = swift_getWitnessTable();
  v24 = sub_24E667ED0();
  v140 = WitnessTable;
  v141 = v24;
  v90 = WitnessTable;
  v138 = swift_getWitnessTable();
  v139 = WitnessTable;
  v137 = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  v25 = MEMORY[0x277CE0790];
  v135 = v91;
  v136 = MEMORY[0x277CE0790];
  v95 = swift_getWitnessTable();
  v133 = v95;
  v134 = v25;
  v26 = swift_getWitnessTable();
  v97 = v26;
  v27 = sub_24E602068(&qword_27F250B28, &qword_27F250B20, &unk_24FA2B748, MEMORY[0x277CE0868]);
  v131 = v26;
  v132 = v27;
  v103 = v21;
  v102 = swift_getWitnessTable();
  *&v128 = v21;
  *(&v128 + 1) = v102;
  v104 = MEMORY[0x277D7EDF8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v106 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v98 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v100 = &v78 - v30;
  v31 = v92;
  v32 = *(v92 + 40);
  v81 = *(v92 + 32);
  v80 = v32;
  v82 = *(v92 + 48);
  v33 = v85;
  v34 = v86;
  v79 = sub_24F923628();
  v35 = sub_24F9234D8();
  v36 = v101;
  (*(*(v35 - 8) + 56))(v101, 1, 1, v35);
  v37 = v127;
  v38 = *(v127 + 16);
  v88 = v127 + 16;
  v89 = v38;
  v39 = v122;
  v40 = v123;
  v38(v122, v31, v123);
  v87 = *(v37 + 80);
  v41 = (v87 + 40) & ~v87;
  v84 = v41;
  v42 = swift_allocObject();
  v43 = v126;
  *(v42 + 2) = v34;
  *(v42 + 3) = v43;
  *(v42 + 4) = v33;
  v83 = *(v37 + 32);
  v127 = v37 + 32;
  v83(&v42[v41], v39, v40);
  v44 = v34;
  v45 = v33;
  sub_24F06AF60(v36, sub_24F7CC4F4, v42, v34, v108, v33, v107, v124);
  v46 = v31;
  v47 = v31[1];
  v108 = *v31;
  v107 = v47;
  v48 = v31[3];
  v101 = v31[2];
  v79 = v48;
  v49 = sub_24F923628();
  v50 = v31[7];
  v51 = v31[8];
  v52 = v31[9];
  v53 = v31[10];
  LOBYTE(v42) = *(v46 + 88);
  *(&v129 + 1) = type metadata accessor for PageViewModelToolbarProvider(0, v34, v45, v54);
  v130 = &off_286237370;
  v55 = swift_allocObject();
  *&v128 = v55;
  *(v55 + 16) = v49;
  *(v55 + 24) = v50;
  *(v55 + 32) = v51;
  *(v55 + 40) = v52;
  *(v55 + 48) = v53;
  *(v55 + 56) = v42;

  v56 = v109;
  v57 = v94;
  v58 = v124;
  sub_24F67B57C(v108, v107, v101, v79, &v128, v94);
  (*(v113 + 8))(v58, v57);
  __swift_destroy_boxed_opaque_existential_1(&v128);
  v59 = v122;
  v60 = v123;
  v89(v122, v46, v123);
  v61 = v84;
  v62 = swift_allocObject();
  v63 = v126;
  *(v62 + 2) = v44;
  *(v62 + 3) = v63;
  *(v62 + 4) = v45;
  v83(&v62[v61], v59, v60);
  v64 = v111;
  v65 = v93;
  sub_24F926AA8();

  (*(v115 + 8))(v56, v65);
  v66 = v110;
  v67 = v96;
  sub_24F9261E8();
  (*(v114 + 8))(v64, v67);
  swift_getKeyPath();
  *&v128 = sub_24F927778();
  BYTE8(v128) = 0;
  v68 = v112;
  v69 = v99;
  sub_24F9261B8();

  (*(v116 + 8))(v66, v69);
  sub_24F7CA708(v60);
  v128 = 0u;
  v129 = 0u;
  v70 = v118;
  sub_24F929838();

  sub_24E601704(&v128, &qword_27F2129B0, &unk_24F945320);
  v71 = v98;
  v72 = v103;
  v73 = v102;
  sub_24F925EE8();
  (*(v119 + 8))(v70, v120);
  (*(v117 + 8))(v68, v72);
  *&v128 = v72;
  *(&v128 + 1) = v73;
  swift_getOpaqueTypeConformance2();
  v74 = v100;
  v75 = OpaqueTypeMetadata2;
  sub_24E7896B8();
  v76 = *(v106 + 8);
  v76(v71, v75);
  sub_24E7896B8();
  return (v76)(v74, v75);
}

uint64_t sub_24F7C9680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254F40, &qword_24F984790);
  MEMORY[0x28223BE20](v4);
  sub_24E6A4C1C();
  sub_24F924B68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250AE8, &qword_24FA2B728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B08, &qword_24FA2B738);
  swift_getOpaqueTypeConformance2();
  sub_24F7CBB40();
  sub_24F7CBBF8();
  return sub_24F927568();
}

uint64_t sub_24F7C9818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v26 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B08, &qword_24FA2B738);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B40, &qword_24FA2B7D8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250AF8, &qword_24FA2B730);
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v15 = *(a1 + 24);
  swift_getKeyPath();
  v27 = v15;
  sub_24F7CBE34(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
  sub_24F91FD88();

  if (*(v15 + 16) == 2)
  {
    *v14 = sub_24F924C88();
    *(v14 + 1) = 0;
    v14[16] = 1;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B48, &unk_24FA2B7E0);
    sub_24F7C9B5C(a1, v23, v24, v25, &v14[*(v16 + 44)]);
    v17 = &qword_27F250AF8;
    v18 = &qword_24FA2B730;
    sub_24E60169C(v14, v11, &qword_27F250AF8, &qword_24FA2B730);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F250AF0, &qword_27F250AF8, &qword_24FA2B730, MEMORY[0x277CE1198]);
    sub_24F7CBBF8();
    sub_24F924E28();
    v19 = v14;
  }

  else
  {
    v20 = type metadata accessor for EditorialPageView(0, v23, v24, v25);
    sub_24F7C9D7C(v20, v8);
    v17 = &qword_27F250B08;
    v18 = &qword_24FA2B738;
    sub_24E60169C(v8, v11, &qword_27F250B08, &qword_24FA2B738);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F250AF0, &qword_27F250AF8, &qword_24FA2B730, MEMORY[0x277CE1198]);
    sub_24F7CBBF8();
    sub_24F924E28();
    v19 = v8;
  }

  return sub_24E601704(v19, v17, v18);
}

uint64_t sub_24F7C9B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24[1] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229128, &unk_24FA27BA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B08, &qword_24FA2B738);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v24 - v19;
  v21 = type metadata accessor for EditorialPageView(0, a2, a3, a4);
  sub_24F7C9D7C(v21, v20);
  sub_24F6A94D4(v14);
  sub_24E60169C(v20, v17, &qword_27F250B08, &qword_24FA2B738);
  sub_24E60169C(v14, v11, &qword_27F229128, &unk_24FA27BA0);
  sub_24E60169C(v17, a5, &qword_27F250B08, &qword_24FA2B738);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F250B50, &qword_24FA2B7F0);
  sub_24E60169C(v11, a5 + *(v22 + 48), &qword_27F229128, &unk_24FA27BA0);
  sub_24E601704(v14, &qword_27F229128, &unk_24FA27BA0);
  sub_24E601704(v20, &qword_27F250B08, &qword_24FA2B738);
  sub_24E601704(v11, &qword_27F229128, &unk_24FA27BA0);
  return sub_24E601704(v17, &qword_27F250B08, &qword_24FA2B738);
}

uint64_t sub_24F7C9D7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DefaultPageHeaderView(0);
  MEMORY[0x28223BE20](v5);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B30, &qword_24FA2B7C0);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v49 - v8;
  v9 = type metadata accessor for GamesPageHeader(0);
  v62 = *(v9 - 8);
  v63 = v9;
  MEMORY[0x28223BE20](v9);
  v49 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B38, &qword_24FA2B7C8);
  MEMORY[0x28223BE20](v54);
  v55 = &v49 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24FD88, &qword_24FA2B7D0);
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v52 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24AAA8, &qword_24FA13DD0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - v14;
  v16 = type metadata accessor for GamesHeroCarousel(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v51 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + 32);
  v20 = *(v2 + 48);
  v21 = *(a1 + 16);
  v22 = *(a1 + 32);
  v23 = *(v22 + 8);
  v60 = *(v2 + 40);
  v61 = v19;
  v59 = v20;
  v58 = v23;
  sub_24F923628();
  v57 = *(v22 + 120);
  v24 = v57(v21, v22);
  swift_unknownObjectRelease();
  if (!v24)
  {
    (*(v17 + 56))(v15, 1, 1, v16);
LABEL_5:
    sub_24E601704(v15, &qword_27F24AAA8, &qword_24FA13DD0);
    sub_24F923628();
    v37 = v57(v21, v22);
    swift_unknownObjectRelease();
    if (v37)
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v40 = v64;
      sub_24F7CB8A0(AssociatedTypeWitness, AssociatedConformanceWitness, type metadata accessor for GamesPageHeader, v64);
      swift_unknownObjectRelease();
      if ((*(v62 + 48))(v40, 1, v63) != 1)
      {
        v41 = v40;
        v42 = v49;
        sub_24F7CC970(v41, v49, type metadata accessor for GamesPageHeader);
        v43 = v50;
        sub_24F7CC908(v42, v50, type metadata accessor for HeaderPresentation);
        v44 = type metadata accessor for HeaderPresentation(0);
        (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
        *(v43 + *(v5 + 20)) = 0;
        *(v43 + *(v5 + 24)) = 1;
        sub_24F7CC908(v43, v55, type metadata accessor for DefaultPageHeaderView);
        swift_storeEnumTagMultiPayload();
        v45 = sub_24EAB4870();
        v65 = &type metadata for GamesHeroCarouselComponent;
        v66 = v45;
        swift_getOpaqueTypeConformance2();
        sub_24F7CBE34(&qword_27F220F60, type metadata accessor for DefaultPageHeaderView, &unk_24F9DD8E8);
        sub_24F924E28();
        sub_24F7CC9D8(v43, type metadata accessor for DefaultPageHeaderView);
        v35 = type metadata accessor for GamesPageHeader;
        v36 = v42;
        goto LABEL_8;
      }
    }

    else
    {
      v40 = v64;
      (*(v62 + 56))(v64, 1, 1, v63);
    }

    sub_24E601704(v40, &qword_27F250B30, &qword_24FA2B7C0);
    v46 = 1;
    goto LABEL_11;
  }

  v25 = v5;
  v26 = a2;
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedConformanceWitness();
  v29 = v27;
  a2 = v26;
  v5 = v25;
  sub_24F7CB8A0(v29, v28, type metadata accessor for GamesHeroCarousel, v15);
  swift_unknownObjectRelease();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    goto LABEL_5;
  }

  v30 = v51;
  sub_24F7CC970(v15, v51, type metadata accessor for GamesHeroCarousel);
  LOBYTE(v65) = 0;
  v31 = sub_24EAB4870();
  v32 = v52;
  sub_24F921D38();
  v33 = v53;
  v34 = v56;
  (*(v53 + 16))(v55, v32, v56);
  swift_storeEnumTagMultiPayload();
  v65 = &type metadata for GamesHeroCarouselComponent;
  v66 = v31;
  swift_getOpaqueTypeConformance2();
  sub_24F7CBE34(&qword_27F220F60, type metadata accessor for DefaultPageHeaderView, &unk_24F9DD8E8);
  sub_24F924E28();
  (*(v33 + 8))(v32, v34);
  v35 = type metadata accessor for GamesHeroCarousel;
  v36 = v30;
LABEL_8:
  sub_24F7CC9D8(v36, v35);
  v46 = 0;
LABEL_11:
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F250B18, &qword_24FA2B740);
  return (*(*(v47 - 8) + 56))(a2, v46, 1, v47);
}