uint64_t sub_2193BEDDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2193BEE24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2193BEE78()
{
  result = qword_280EDFE08;
  if (!qword_280EDFE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDFE08);
  }

  return result;
}

uint64_t sub_2193BEECC(void *a1)
{
  v1 = [a1 identifier];
  v2 = sub_219BF5414();

  return v2;
}

uint64_t sub_2193BEF20(uint64_t a1, uint64_t a2)
{
  v2 = 256;
  if (*(a1 + 9))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFFFELL | *(a1 + 8) & 1;
  v5 = 0x10000;
  if (*(a1 + 10))
  {
    v6 = 0x10000;
  }

  else
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if (*(a1 + 11))
  {
    v8 = 0x1000000;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 | v6 | v8;
  if (*(a1 + 12))
  {
    v10 = 0x100000000;
  }

  else
  {
    v10 = 0;
  }

  if ((*(a2 + 9) & 1) == 0)
  {
    v2 = 0;
  }

  v11 = v2 & 0xFFFFFFFFFFFFFFFELL | *(a2 + 8) & 1;
  if ((*(a2 + 10) & 1) == 0)
  {
    v5 = 0;
  }

  if ((*(a2 + 11) & 1) == 0)
  {
    v7 = 0;
  }

  v12 = v11 | v5 | v7;
  if (*(a2 + 12))
  {
    v13 = 0x100000000;
  }

  else
  {
    v13 = 0;
  }

  return sub_2193BF548(*a1, v9 | v10, *(a1 + 16), *(a1 + 24) & 1, *a2, v12 | v13, *(a2 + 16), *(a2 + 24) & 1);
}

uint64_t sub_2193BEFE0(uint64_t a1, uint64_t a2)
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2193BF04C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2193BF49C();

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2193BF098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219BF7AA4();
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2193BF100@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v19 - v10;
  v12 = [a1 identifier];
  if (!v12)
  {
    sub_219BF5414();
    v12 = sub_219BF53D4();
  }

  v13 = [objc_opt_self() nss:v12 NewsURLForIssueID:?];

  if (v13)
  {
    sub_219BDB8B4();

    (*(v5 + 32))(v11, v7, v4);
    sub_219BDB854();
    v14 = [a1 title];
    sub_219BF5414();

    sub_219BEAF74();
    (*(v5 + 8))(v11, v4);
    v15 = sub_219BEAF84();
    return (*(*(v15 - 8) + 56))(a2, 0, 1, v15);
  }

  else
  {
    v17 = sub_219BEAF84();
    v18 = *(*(v17 - 8) + 56);

    return v18(a2, 1, 1, v17);
  }
}

unint64_t sub_2193BF3EC()
{
  result = qword_27CC19A98;
  if (!qword_27CC19A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19A98);
  }

  return result;
}

unint64_t sub_2193BF444()
{
  result = qword_280EDFE10;
  if (!qword_280EDFE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDFE10);
  }

  return result;
}

unint64_t sub_2193BF49C()
{
  result = qword_27CC19AA0;
  if (!qword_27CC19AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19AA0);
  }

  return result;
}

unint64_t sub_2193BF4F4()
{
  result = qword_27CC19AA8;
  if (!qword_27CC19AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19AA8);
  }

  return result;
}

uint64_t sub_2193BF548(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  sub_2189666A0();
  v12 = sub_219BF6DD4();
  result = 0;
  if ((v12 & 1) != 0 && ((a2 ^ a6) & 1) == 0)
  {
    return sub_219BF6DD4() & (((a6 & 0x10000) == 0) ^ WORD1(a2)) & (((a6 & 0x1000000) == 0) ^ BYTE3(a2)) & (BYTE4(a2) & 1 ^ ((a6 & 0x100000000) == 0)) & (a4 ^ a8 ^ 1);
  }

  return result;
}

unint64_t sub_2193BF670()
{
  result = qword_27CC19AB0;
  if (!qword_27CC19AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19AB0);
  }

  return result;
}

unint64_t sub_2193BF6C8()
{
  result = qword_27CC19AB8;
  if (!qword_27CC19AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19AB8);
  }

  return result;
}

unint64_t sub_2193BF720()
{
  result = qword_27CC19AC0;
  if (!qword_27CC19AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19AC0);
  }

  return result;
}

unint64_t sub_2193BF778()
{
  result = qword_27CC19AC8;
  if (!qword_27CC19AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19AC8);
  }

  return result;
}

unint64_t sub_2193BF7D0()
{
  result = qword_27CC19AD0;
  if (!qword_27CC19AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19AD0);
  }

  return result;
}

BOOL sub_2193BF84C()
{
  sub_218747C64(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v34 = *(v1 - 8);
  v2 = *(v34 + 8);
  MEMORY[0x28223BE20](v1 - 8);
  v35 = v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v33 - v4;
  v6 = sub_219BE22B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE22F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218747C64(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v11 + 8))(v13, v10);
  sub_219BE22C4();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  if (v15)
  {
    sub_219BE4964();
    sub_219BE4954();
    v16 = *(v0 + 24);
    sub_219BEC544();
    v17 = swift_allocBox();
    sub_219BEC524();
    v33[1] = v17;
    v18 = v17 | 0x4000000000000006;
    v19 = sub_219BDFA44();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    v41 = v16;
    sub_2187B15C0(v42, &v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    v33[0] = v15;
    if (*(&v38 + 1))
    {
      sub_21875F93C(&v37, v39);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v21 = qword_280ED32D8;
      v20 = qword_280ED32E0;
      v22 = qword_280ED32E8;

      sub_2188202A8(v20);
      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    else
    {
      sub_2187449F0(&v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v21 = qword_280ED32D8;
      v20 = qword_280ED32E0;
      v22 = qword_280ED32E8;

      sub_2188202A8(v20);
    }

    v36 = v18;
    v38 = 0u;
    v37 = 0u;
    v23 = v35;
    sub_2187B15C0(v5, v35, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
    sub_2187B15C0(v44, v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    v24 = (v34[80] + 24) & ~v34[80];
    v25 = (v2 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
    v34 = v5;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    sub_2189B4EAC(v23, v27 + v24);
    v28 = v27 + v25;
    v29 = v39[1];
    *v28 = v39[0];
    *(v28 + 16) = v29;
    *(v28 + 32) = v40;
    v30 = (v27 + v26);
    v31 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v30 = 0;
    v30[1] = 0;
    *v31 = v21;
    v31[1] = v20;
    v31[2] = v22;

    sub_2188202A8(v20);
    sub_2186CF94C(0);
    sub_2193C01CC(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB464();

    sub_2187FABEC(v20, v22);
    sub_2187449F0(v42, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187449F0(v44, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_2187449F0(v34, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218747C64);
    sub_2187449F0(&v37, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

    v15 = v33[0];
  }

  return v15 != 0;
}

uint64_t sub_2193C01CC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2193C0214@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193C0A24(0, &qword_27CC19B08, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PuzzleFeaturedTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193C096C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_2193C0A88(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_2193C09C0(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2193C04C0(uint64_t a1)
{
  v2 = sub_2193C096C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193C04FC(uint64_t a1)
{
  v2 = sub_2193C096C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2193C0578(void *a1)
{
  sub_2193C0A24(0, &qword_27CC19B18, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193C096C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_2193C0A88(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2193C07D8(uint64_t a1)
{
  result = sub_2193C0A88(&unk_27CC1C5C0, type metadata accessor for PuzzleFeaturedTagFeedGroup, &unk_219C77950);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2193C0830(void *a1)
{
  a1[1] = sub_2193C0A88(&qword_27CC19AF0, type metadata accessor for PuzzleFeaturedTagFeedGroup, &unk_219C7787C);
  a1[2] = sub_2193C0A88(&qword_27CC19AF8, type metadata accessor for PuzzleFeaturedTagFeedGroup, &unk_219C77928);
  result = sub_2193C0A88(&qword_27CC19B00, type metadata accessor for PuzzleFeaturedTagFeedGroup, &unk_219C77900);
  a1[3] = result;
  return result;
}

uint64_t sub_2193C08DC(uint64_t a1)
{
  v2 = sub_2193C0A88(&qword_27CC19AF0, type metadata accessor for PuzzleFeaturedTagFeedGroup, &unk_219C7787C);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_2193C096C()
{
  result = qword_27CC19B10;
  if (!qword_27CC19B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19B10);
  }

  return result;
}

uint64_t sub_2193C09C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleFeaturedTagFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2193C0A24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2193C096C();
    v7 = a3(a1, &type metadata for PuzzleFeaturedTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2193C0A88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2193C0AE4()
{
  result = qword_27CC19B20;
  if (!qword_27CC19B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19B20);
  }

  return result;
}

unint64_t sub_2193C0B3C()
{
  result = qword_27CC19B28;
  if (!qword_27CC19B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19B28);
  }

  return result;
}

unint64_t sub_2193C0B94()
{
  result = qword_27CC19B30;
  if (!qword_27CC19B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19B30);
  }

  return result;
}

void *sub_2193C0BF8(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v104 = a5;
  v94 = a3;
  v95 = a2;
  v96 = a1;
  v5 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v5);
  v98 = (&v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v102 = &v74 - v8;
  sub_218953870(0);
  v99 = v9;
  v103 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v106 = (&v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v105 = &v74 - v12;
  v87 = sub_219BE6DF4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193C1A3C(0, &qword_280EE4AF0, MEMORY[0x277D6DF88]);
  v92 = *(v14 - 8);
  v93 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = (&v74 - v15);
  sub_2193C1A3C(0, &qword_280EE3600, MEMORY[0x277D6EC60]);
  v18 = v17;
  v84 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v83 = &v74 - v19;
  v82 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v82);
  v79 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v81 = (&v74 - v22);
  sub_218BB8698(0);
  v88 = v23;
  v78 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v80 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v74 - v26;
  sub_218D51CC0(0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193C1A3C(0, &qword_280EE5930, MEMORY[0x277D6D710]);
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v90 = &v74 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v74 - v36;
  sub_219BEA8B4();
  v91 = v18;
  sub_219BEB244();

  if ((*(v33 + 48))(v30, 1, v32) == 1)
  {
    sub_2193C1B84(v30, sub_218D51CC0);
    sub_2193C1B30();
    *v16 = swift_allocError();
    v39 = v92;
    v38 = v93;
    (*(v92 + 104))(v16, *MEMORY[0x277D6DF68], v93);
    v95(v16);
    return (*(v39 + 8))(v16, v38);
  }

  v76 = v16;
  (*(v33 + 32))(v37, v30, v32);
  v77 = v32;
  v89 = v37;
  sub_219BE6974();
  v41 = sub_2186EC080(&qword_280EE74F8, sub_218BB8698, MEMORY[0x277D6CC48]);
  v42 = v88;
  v43 = sub_219BF5E44();
  v44 = v27;
  v75 = v33;
  if (v43)
  {
    v45 = v43;
    v108 = MEMORY[0x277D84F90];
    sub_218C35700(0, v43 & ~(v43 >> 63), 0);
    v46 = v108;
    result = sub_219BF5DF4();
    v47 = v99;
    if ((v45 & 0x8000000000000000) == 0)
    {
      v100 = (v103 + 16);
      v101 = v41;
      v48 = (v103 + 32);
      v97 = (v103 + 8);
      while (1)
      {
        v49 = v44;
        v50 = v42;
        v51 = sub_219BF5EC4();
        (*v100)(v106);
        v51(v107, 0);
        v52 = v102;
        sub_219BE5FC4();
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v53 = v5;
          v54 = sub_219BE5B24();
          v56 = v55;

          if (v54 == sub_219BE5B24() && v56 == v57)
          {

LABEL_16:
            *v98 = v104;
            v5 = v53;
            swift_storeEnumTagMultiPayload();
            sub_2186EC080(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
            sub_219BE5FB4();

            v47 = v99;
            (*v97)(v106, v99);
            goto LABEL_17;
          }

          v59 = sub_219BF78F4();

          if (v59)
          {
            goto LABEL_16;
          }

          v5 = v53;
          v47 = v99;
        }

        else
        {
          sub_2193C1B84(v52, type metadata accessor for MagazineFeedModel);
        }

        (*v48)(v105, v106, v47);
LABEL_17:
        v108 = v46;
        v61 = *(v46 + 16);
        v60 = *(v46 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_218C35700((v60 > 1), v61 + 1, 1);
          v46 = v108;
        }

        *(v46 + 16) = v61 + 1;
        (*(v103 + 32))(v46 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v61, v105, v47);
        v44 = v49;
        v42 = v50;
        sub_219BF5E94();
        if (!--v45)
        {
          (*(v78 + 8))(v49, v50);
          goto LABEL_22;
        }
      }
    }

    __break(1u);
  }

  else
  {
    (*(v78 + 8))(v27, v42);
    v46 = MEMORY[0x277D84F90];
    v47 = v99;
LABEL_22:
    v62 = v84;
    v63 = v79;
    sub_219BE6934();
    v64 = sub_219BE5B94();
    sub_2193AFACC(v64, v81);
    sub_2193C1B84(v63, type metadata accessor for MagazineFeedSectionDescriptor);
    v65 = sub_2186EC080(&qword_280EE5BB8, sub_218953870, MEMORY[0x277D6D408]);
    v66 = sub_2186EC080(&unk_280EE5BC0, sub_218953870, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9170](v46, v47, v65, v66);
    v106 = type metadata accessor for MagazineFeedSectionDescriptor;
    sub_2186EC080(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    sub_2186EC080(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    sub_219BE6924();
    v67 = v83;
    (*(v62 + 16))(v83, v96, v91);
    sub_219BEB234();
    v68 = v86;
    v69 = v85;
    v70 = v87;
    (*(v86 + 104))(v85, *MEMORY[0x277D6D868], v87);
    sub_2186EC080(&unk_280EB0340, v106, &unk_219C76C70);
    v71 = v76;
    sub_219BE85E4();
    (*(v68 + 8))(v69, v70);
    v95(v71);
    (*(v92 + 8))(v71, v93);
    (*(v62 + 8))(v67, v91);
    v72 = *(v75 + 8);
    v73 = v77;
    v72(v90, v77);
    return (v72)(v89, v73);
  }

  return result;
}

uint64_t sub_2193C1918(uint64_t a1)
{
  v2 = sub_218BB7AEC();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2193C1958()
{
  result = qword_27CC19B38;
  if (!qword_27CC19B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19B38);
  }

  return result;
}

void sub_2193C1A3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186EC080(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    v8[3] = sub_2186EC080(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2193C1B30()
{
  result = qword_27CC19B40;
  if (!qword_27CC19B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19B40);
  }

  return result;
}

uint64_t sub_2193C1B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2193C1BF8()
{
  result = qword_27CC19B48;
  if (!qword_27CC19B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19B48);
  }

  return result;
}

uint64_t sub_2193C1C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v44 = a3;
  sub_2193C2B9C(0, qword_280ECD3E8, type metadata accessor for SearchFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v37 - v5;
  sub_2193C2B9C(0, qword_280EC9FB0, type metadata accessor for SearchFeedKnobsConfig);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - v7;
  v9 = type metadata accessor for SearchFeedKnobsConfig(0);
  v39 = *(v9 - 8);
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193C2B9C(0, &qword_280E91B80, MEMORY[0x277D32028]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  sub_2193C2B9C(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - v15;
  sub_2193C2B9C(0, qword_280ED7D40, type metadata accessor for SearchFeedConfig);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v37 - v18;
  v20 = type metadata accessor for SearchFeedConfig(0);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1;
  sub_2193C2C58(a1, v19, qword_280ED7D40, type metadata accessor for SearchFeedConfig);
  v24 = *(v21 + 48);
  if (v24(v19, 1, v20) == 1)
  {
    v25 = sub_219BDBD34();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
    v26 = sub_219BEE5B4();
    (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
    sub_21870ED28(v16, v23, &qword_280EE9C40, MEMORY[0x277CC9578]);
    *&v23[*(v20 + 20)] = MEMORY[0x277D84F90];
    sub_21870ED28(v13, &v23[*(v20 + 24)], &qword_280E91B80, MEMORY[0x277D32028]);
    if (v24(v19, 1, v20) != 1)
    {
      sub_2193C2CC4(v19, qword_280ED7D40, type metadata accessor for SearchFeedConfig);
    }
  }

  else
  {
    sub_2193C2BF0(v19, v23, type metadata accessor for SearchFeedConfig);
  }

  v27 = v44;
  sub_2193C2BF0(v23, v44, type metadata accessor for SearchFeedConfig);
  v28 = v41;
  sub_2193C2C58(v41, v8, qword_280EC9FB0, type metadata accessor for SearchFeedKnobsConfig);
  v29 = v40;
  v30 = *(v39 + 48);
  v31 = v30(v8, 1, v40);
  v32 = v42;
  if (v31 == 1)
  {
    v33 = type metadata accessor for SearchFeedGroupKnobs(0);
    v34 = v38;
    (*(*(v33 - 8) + 56))(v38, 1, 1, v33);
    sub_219B41524(v34, 0, 1, v32);
    sub_2193C2CC4(v28, qword_280EC9FB0, type metadata accessor for SearchFeedKnobsConfig);
    sub_2193C2CC4(v43, qword_280ED7D40, type metadata accessor for SearchFeedConfig);
    if (v30(v8, 1, v29) != 1)
    {
      sub_2193C2CC4(v8, qword_280EC9FB0, type metadata accessor for SearchFeedKnobsConfig);
    }
  }

  else
  {
    sub_2193C2CC4(v28, qword_280EC9FB0, type metadata accessor for SearchFeedKnobsConfig);
    sub_2193C2CC4(v43, qword_280ED7D40, type metadata accessor for SearchFeedConfig);
    sub_2193C2BF0(v8, v32, type metadata accessor for SearchFeedKnobsConfig);
  }

  v35 = type metadata accessor for SearchFeedContentConfig(0);
  return sub_2193C2BF0(v32, v27 + *(v35 + 20), type metadata accessor for SearchFeedKnobsConfig);
}

uint64_t sub_2193C230C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_2193C2B9C(0, qword_280EC9FB0, type metadata accessor for SearchFeedKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_2193C2B9C(0, qword_280ED7D40, type metadata accessor for SearchFeedConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_2193C2DDC(0, &qword_280E8CDE0, MEMORY[0x277D844C8]);
  v11 = v10;
  v15 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193C2D88();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for SearchFeedConfig(0);
    v19 = 0;
    sub_2193C2E40(&qword_280ED7D88, type metadata accessor for SearchFeedConfig, &unk_219CC745C);
    sub_219BF7674();
    type metadata accessor for SearchFeedKnobsConfig(0);
    v18 = 1;
    v17 = 2;
    sub_2193C2E40(&qword_280EC9FF0, type metadata accessor for SearchFeedKnobsConfig, &unk_219CCEE10);
    sub_219BF7664();
    sub_2193C1C74(v9, v6, v16);
    (*(v15 + 8))(v13, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2193C25F8(void *a1)
{
  sub_2193C2DDC(0, &qword_27CC19B50, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193C2D88();
  sub_219BF7B44();
  v9[15] = 0;
  type metadata accessor for SearchFeedConfig(0);
  sub_2193C2E40(&qword_27CC19B58, type metadata accessor for SearchFeedConfig, &unk_219CC7434);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for SearchFeedContentConfig(0);
    v9[14] = 1;
    type metadata accessor for SearchFeedKnobsConfig(0);
    sub_2193C2E40(&qword_27CC19B60, type metadata accessor for SearchFeedKnobsConfig, &unk_219CCEDE8);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2193C2808@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2193C2FA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2193C2830(uint64_t a1)
{
  v2 = sub_2193C2D88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2193C286C(uint64_t a1)
{
  v2 = sub_2193C2D88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2193C2914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2193C2B9C(0, qword_280EC9FB0, type metadata accessor for SearchFeedKnobsConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  sub_2193C2B9C(0, qword_280ED7D40, type metadata accessor for SearchFeedConfig);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_2193C2D20(a1, &v16 - v11, type metadata accessor for SearchFeedConfig);
  v13 = type metadata accessor for SearchFeedConfig(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_2193C2D20(v3 + *(a2 + 20), v9, type metadata accessor for SearchFeedKnobsConfig);
  v14 = type metadata accessor for SearchFeedKnobsConfig(0);
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  return sub_2193C1C74(v12, v9, a3);
}

void sub_2193C2B9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2193C2BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2193C2C58(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2193C2B9C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2193C2CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2193C2B9C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2193C2D20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2193C2D88()
{
  result = qword_280EC3868;
  if (!qword_280EC3868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC3868);
  }

  return result;
}

void sub_2193C2DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2193C2D88();
    v7 = a3(a1, &type metadata for SearchFeedContentConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2193C2E40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2193C2E9C()
{
  result = qword_27CC19B68;
  if (!qword_27CC19B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19B68);
  }

  return result;
}

unint64_t sub_2193C2EF4()
{
  result = qword_280EC3858;
  if (!qword_280EC3858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC3858);
  }

  return result;
}

unint64_t sub_2193C2F4C()
{
  result = qword_280EC3860;
  if (!qword_280EC3860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC3860);
  }

  return result;
}

uint64_t sub_2193C2FA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x666E6F4364656566 && a2 == 0xEA00000000006769;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F4373626F6E6BLL && a2 == 0xEB00000000676966 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CD6A50 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t type metadata accessor for EngagementAction(uint64_t a1)
{
  result = qword_280ED89E8;
  if (!qword_280ED89E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2193C3140(uint64_t a1)
{
  sub_219BE3514();
  if (v1 <= 0x3F)
  {
    sub_219BDB954();
    if (v2 <= 0x3F)
    {
      sub_219BE3794();
      if (v3 <= 0x3F)
      {
        sub_2186E3374();
        if (v4 <= 0x3F)
        {
          sub_21922CB44(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2193C3214(uint64_t a1)
{
  result = swift_checkMetadataState();
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

double sub_2193C32D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*v3 + 88) + 40))(a1, *(*v3 + 80));
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_2193C3554(0);
  sub_2193C35D0();

  sub_219BE6EF4();

  return result;
}

uint64_t sub_2193C33EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE6DF4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D6D850], v4, v6);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_219BE6F34();

  return (*(v5 + 8))(v8, v4);
}

void sub_2193C3554(uint64_t a1)
{
  if (!qword_280EE56D8)
  {
    sub_2189510B4();
    sub_218951108();
    v1 = sub_219BE6E74();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE56D8);
    }
  }
}

unint64_t sub_2193C35D0()
{
  result = qword_280EE56E0;
  if (!qword_280EE56E0)
  {
    sub_2193C3554(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE56E0);
  }

  return result;
}

unint64_t sub_2193C3650()
{
  result = qword_280EDBD58;
  if (!qword_280EDBD58)
  {
    type metadata accessor for SavedFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDBD58);
  }

  return result;
}

uint64_t sub_2193C36A8(unint64_t a1, uint64_t a2)
{
  v22 = v2;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CECE0F0](v5, a1);
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_15;
      }

LABEL_7:
      v9 = [v7 identifier];
      v10 = sub_219BF5414();
      v12 = v11;
      swift_unknownObjectRelease();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_218840D24(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_218840D24((v13 > 1), v14 + 1, 1, v6);
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[16 * v14];
      *(v15 + 4) = v10;
      *(v15 + 5) = v12;
      ++v5;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v7 = *(a1 + 8 * v5 + 32);
    swift_unknownObjectRetain();
    v8 = v5 + 1;
    if (!__OFADD__(v5, 1))
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_19:
  v16 = sub_218845F78(v6);

  *(swift_allocObject() + 16) = v16;
  v17 = sub_219BE2E54();
  type metadata accessor for SavedFeedPool.SavedHeadlines();
  v18 = sub_219BE2F74();

  v19 = *(v22 + 24);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;

  return v20;
}

uint64_t sub_2193C3900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v5 = *(*a1 + 16);
  v26 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_25:
    v6 = sub_219BF7214();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v22 = a3;
      v7 = 0;
      v24 = v5 & 0xFFFFFFFFFFFFFF8;
      v25 = v5 & 0xC000000000000001;
      v21 = v5;
      v23 = v5 + 32;
      v8 = a2 + 56;
      while (1)
      {
        if (v25)
        {
          v9 = MEMORY[0x21CECE0F0](v7, v21);
          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v19 = v26;
            a3 = v22;
            goto LABEL_27;
          }
        }

        else
        {
          if (v7 >= *(v24 + 16))
          {
            __break(1u);
            goto LABEL_25;
          }

          v9 = *(v23 + 8 * v7);
          swift_unknownObjectRetain();
          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_22;
          }
        }

        v11 = [v9 identifier];
        v5 = sub_219BF5414();
        v13 = v12;

        if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v14 = sub_219BF7AE4(), v15 = -1 << *(a2 + 32), v16 = v14 & ~v15, ((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
        {
          a3 = ~v15;
          while (1)
          {
            v17 = (*(a2 + 48) + 16 * v16);
            v18 = *v17 == v5 && v17[1] == v13;
            if (v18 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v16 = (v16 + 1) & a3;
            if (((*(v8 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

          swift_unknownObjectRelease();

          if (v7 == v6)
          {
            goto LABEL_23;
          }
        }

        else
        {
LABEL_4:

          sub_219BF73D4();
          v5 = *(v26 + 16);
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          if (v7 == v6)
          {
            goto LABEL_23;
          }
        }
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_27:
  type metadata accessor for SavedFeedPool.SavedHeadlines();
  result = swift_allocObject();
  *(result + 16) = v19;
  *a3 = result;
  return result;
}

void sub_2193C3B58(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ArticleListSavedFeedGroup(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SavedFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193C3C68(a1, v10);
  sub_218CB12E8(v10, v7);
  v11 = *&v7[*(v5 + 32)];

  sub_218FC1534(v7);
  v13 = sub_2193C36A8(v11, v12);

  *a2 = v13;
}

uint64_t sub_2193C3C68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2193C3CF8()
{
  v1 = v0[1];
  v2 = sub_218ACE90C(*v0);
  v3 = sub_218ACEB00(v1);
  sub_2191ED57C(v3);
  return v2;
}

uint64_t sub_2193C3D40(uint64_t a1)
{
  v2 = sub_2193C41C4();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_2193C3D7C(uint64_t a1)
{
  v2 = sub_2193C3E1C();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_2193C3DC4()
{
  result = qword_27CC19B70;
  if (!qword_27CC19B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19B70);
  }

  return result;
}

unint64_t sub_2193C3E1C()
{
  result = qword_27CC19B78;
  if (!qword_27CC19B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19B78);
  }

  return result;
}

uint64_t sub_2193C3E70(uint64_t a1)
{
  v2 = type metadata accessor for MagazineFeedEmbeddedDecoration(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = sub_219BE94B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v30 = MEMORY[0x277D84F90];
    sub_218C35B30(0, v12, 0);
    v13 = v30;
    v14 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v15 = *(v3 + 72);
    v24 = (v9 + 32);
    v25 = v15;
    v16 = (v9 + 16);
    v17 = (v9 + 8);
    do
    {
      sub_2193C4104(v14, v7);
      v18 = v26;
      sub_2193C4104(v7, v26);
      (*v24)(v11, v18, v8);
      sub_2193C4168(v7);
      v30 = v13;
      v20 = *(v13 + 16);
      v19 = *(v13 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_218C35B30((v19 > 1), v20 + 1, 1);
      }

      v28 = v8;
      v29 = MEMORY[0x277D6E618];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
      (*v16)(boxed_opaque_existential_1, v11, v8);
      v13 = v30;
      *(v30 + 16) = v20 + 1;
      sub_21875F93C(&v27, v13 + 40 * v20 + 32);
      (*v17)(v11, v8);
      v14 += v25;
      --v12;
    }

    while (v12);
  }

  return v13;
}

uint64_t sub_2193C4104(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedEmbeddedDecoration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2193C4168(uint64_t a1)
{
  v2 = type metadata accessor for MagazineFeedEmbeddedDecoration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2193C41C4()
{
  result = qword_27CC19B80;
  if (!qword_27CC19B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19B80);
  }

  return result;
}

char *sub_2193C4218(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC7NewsUI227FollowingSettingsButtonView_onTap;
  sub_218ABA298(0, &qword_280EE39E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB8]);
  *&v5[v11] = [objc_allocWithZone(v12) init];
  v13 = OBJC_IVAR____TtC7NewsUI227FollowingSettingsButtonView_isEditing;
  sub_218ABA298(0, &qword_280EE3A58, MEMORY[0x277D839B0], MEMORY[0x277D6EB40]);
  swift_allocObject();
  *&v5[v13] = sub_219BEA604();
  v14 = OBJC_IVAR____TtC7NewsUI227FollowingSettingsButtonView_deviceOffline;
  v21 = 0;
  swift_allocObject();
  *&v5[v14] = sub_219BEA604();
  v20.receiver = v5;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = *&v15[OBJC_IVAR____TtC7NewsUI227FollowingSettingsButtonView_onTap];
  v17 = v15;
  v18 = v16;
  sub_219BEA854();

  return v17;
}

void sub_2193C4534(uint64_t a1)
{
  v1 = sub_219BEA814();
}

id sub_2193C4574()
{
  v1 = *v0;
  sub_219BEA624();
  if (v5)
  {
    v2 = 0;
  }

  else
  {
    sub_219BEA624();
    v2 = v4 ^ 1;
  }

  return [v1 setEnabled_];
}

void sub_2193C45F0()
{
  sub_2193C467C(&qword_280EB8B18, &unk_219C781A4);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_2193C467C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FollowingSettingsButtonView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2193C46BC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7NewsUI227FollowingSettingsButtonView_onTap;
  sub_218ABA298(0, &qword_280EE39E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB8]);
  *(v1 + v2) = [objc_allocWithZone(v3) init];
  v4 = OBJC_IVAR____TtC7NewsUI227FollowingSettingsButtonView_isEditing;
  sub_218ABA298(0, &qword_280EE3A58, MEMORY[0x277D839B0], MEMORY[0x277D6EB40]);
  swift_allocObject();
  *(v1 + v4) = sub_219BEA604();
  v5 = OBJC_IVAR____TtC7NewsUI227FollowingSettingsButtonView_deviceOffline;
  swift_allocObject();
  *(v1 + v5) = sub_219BEA604();
  sub_219BF7514();
  __break(1u);
}

void sub_2193C47F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_218C37270(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_219BF7174();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_218C37270((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 24 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      *(v12 + 48) = 1065353216;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_2187BC250(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_2187BC250(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_2193C4A28(uint64_t a1)
{
  FCCurrentQoSOrUtilityIfMain();
  sub_21874E780(0, &qword_280EE69B0, sub_218B21FF0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_2193C4AC4()
{
  v1 = sub_219BED174();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED1D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BDC8E4();

  if (LOBYTE(aBlock[0]) != 1)
  {
    return sub_2193C4E3C(0);
  }

  v14 = *(v0 + 96);
  aBlock[4] = sub_2193C7098;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_121;
  v12 = _Block_copy(aBlock);
  v13 = v5;

  sub_219BED1A4();
  v15 = MEMORY[0x277D84F90];
  sub_2193C70FC(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v9 = MEMORY[0x277D85198];
  sub_21874E780(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21875B210(&qword_280E8EFA0, &qword_280E8EFB0, v9);
  sub_219BF7164();
  v10 = v12;
  MEMORY[0x21CECD460](0, v8, v4, v12);
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v13);

  sub_219BDC8E4();

  sub_21874E780(0, &qword_280EE6AA0, sub_2186D0BA8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2193C4E3C(char a1)
{
  v3 = a1 ^ 1;
  sub_218B21FF0();
  sub_219BE3204();
  *(swift_allocObject() + 16) = v3;
  v4 = sub_219BE2E54();
  sub_218A354D8(0);
  sub_219BE2F74();

  v5 = sub_219BE2E54();
  sub_2193C70FC(&qword_280E8ECF0, sub_218A354D8, MEMORY[0x277D83970]);
  sub_219BE30F4();

  sub_2193C714C(0);
  swift_allocObject();
  sub_219BE30B4();
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v6 = sub_219BEFFE4();
  sub_2193C7220(0);
  sub_219BE3204();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2193C72BC;
  *(v8 + 24) = v7;

  v9 = sub_219BE2E54();
  sub_2186D0BA8();
  sub_219BE2F64();

  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;

  v11 = sub_219BE2E54();
  v12 = sub_219BE2F64();

  return v12;
}

uint64_t sub_2193C516C(uint64_t *a1)
{
  v1 = *a1;
  v2 = off_282A4D758;
  type metadata accessor for TagService();
  return v2(v1);
}

void sub_2193C51D8(uint64_t *a2@<X8>)
{
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    swift_unknownObjectRetain();
  }

  *a2 = v3;
}

uint64_t sub_2193C5240()
{
  v1 = sub_219BED174();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED1D4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BDC8E4();

  if (LOBYTE(aBlock[0]) != 1)
  {
    return sub_2193C4E3C(1);
  }

  v14 = *(v0 + 96);
  aBlock[4] = sub_2193C7CA8;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_32_3;
  v12 = _Block_copy(aBlock);
  v13 = v5;

  sub_219BED1A4();
  v15 = MEMORY[0x277D84F90];
  sub_2193C70FC(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v9 = MEMORY[0x277D85198];
  sub_21874E780(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21875B210(&qword_280E8EFA0, &qword_280E8EFB0, v9);
  sub_219BF7164();
  v10 = v12;
  MEMORY[0x21CECD460](0, v8, v4, v12);
  _Block_release(v10);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v13);

  sub_219BDC8E4();

  sub_21874E780(0, &qword_280EE6AA0, sub_2186D0BA8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2193C56A4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v8 = sub_219BF7214();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  v55 = a4;
  if (v8)
  {
    v56 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
      goto LABEL_31;
    }

    v54 = a2;
    v9 = v56;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v10, a1);
        v11 = [swift_unknownObjectRetain() identifier];
        v12 = sub_219BF5414();
        v14 = v13;
        swift_unknownObjectRelease_n();

        v56 = v9;
        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_21870B65C((v15 > 1), v16 + 1, 1);
          v9 = v56;
        }

        ++v10;
        *(v9 + 16) = v16 + 1;
        v17 = v9 + 16 * v16;
        *(v17 + 32) = v12;
        *(v17 + 40) = v14;
      }

      while (v8 != v10);
    }

    else
    {
      v18 = a1 + 32;
      v19 = v8;
      do
      {
        v20 = [swift_unknownObjectRetain_n() identifier];
        v21 = sub_219BF5414();
        v23 = v22;
        swift_unknownObjectRelease_n();

        v56 = v9;
        v25 = *(v9 + 16);
        v24 = *(v9 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_21870B65C((v24 > 1), v25 + 1, 1);
          v9 = v56;
        }

        *(v9 + 16) = v25 + 1;
        v26 = v9 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
        v18 += 8;
        --v19;
      }

      while (v19);
    }

    a2 = v54;
  }

  v27 = sub_2194B1FF0(v9, a2);

  v28 = *(v27 + 16);
  if (v28)
  {
    v4 = sub_21947D1C0(*(v27 + 16), 0);
    v29 = sub_2194ABD64(&v56, v4 + 4, v28, v27);
    sub_21892DE98(v56);
    if (v29 == v28)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_20:
  sub_219BE1CC4();
  if (sub_219BE1CB4())
  {
    if (qword_280E8D958 == -1)
    {
LABEL_22:
      v30 = qword_280F617F0;
      sub_21874E780(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_219C09BA0;
      v32 = MEMORY[0x277D837D0];
      v33 = a2;
      v34 = sub_219BF5D54();
      v36 = v35;
      *(v31 + 56) = v32;
      v37 = sub_2186FC3BC();
      *(v31 + 64) = v37;
      *(v31 + 32) = v34;
      *(v31 + 40) = v36;
      v38 = sub_219BF6214();
      sub_219BE5314("Local news channel service auto favorite local channels %{public}@", 66, 2, &dword_2186C1000, v30, v38, v31);

      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_219C09BA0;
      v40 = sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
      v41 = MEMORY[0x21CECC6D0](a1, v40);
      *(v39 + 56) = v32;
      *(v39 + 64) = v37;
      *(v39 + 32) = v41;
      *(v39 + 40) = v42;
      v43 = sub_219BF6214();
      a2 = v33;
      sub_219BE5314("Local news channel service subscribed local channels %{public}@", 63, 2, &dword_2186C1000, v30, v43, v39, 1);
      goto LABEL_26;
    }

LABEL_31:
    swift_once();
    goto LABEL_22;
  }

  if (qword_280E8D958 != -1)
  {
    swift_once();
  }

  sub_21874E780(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_219C0B8C0;
  v45 = v4[2];
  v46 = MEMORY[0x277D83B88];
  v47 = MEMORY[0x277D83C10];
  *(v44 + 56) = MEMORY[0x277D83B88];
  *(v44 + 64) = v47;
  *(v44 + 32) = v45;
  v48 = *(a2 + 16);
  *(v44 + 96) = v46;
  *(v44 + 104) = v47;
  *(v44 + 72) = v48;
  *(v44 + 136) = v46;
  *(v44 + 144) = v47;
  *(v44 + 112) = v8;
  sub_219BF6214();
  sub_219BE5314("Local news channel service found %lu unique local channels (%lu geographically local channels and %lu other local channels)", 123, 2, &dword_2186C1000);
LABEL_26:

  if (v4[2] < 2uLL)
  {
    v56 = v4;
    sub_21874E780(0, &qword_280EE6AA0, sub_2186D0BA8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    v49 = swift_allocObject();
    v49[2] = v4;
    v49[3] = v55;
    v49[4] = a2;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_2193C73B8;
    *(v50 + 24) = v49;

    v51 = sub_219BE2E54();
    sub_2186D0BA8();
    v52 = sub_219BE2F74();

    return v52;
  }
}

uint64_t sub_2193C5C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_280E8D958 != -1)
  {
LABEL_49:
    swift_once();
  }

  sub_21874E780(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D83C10];
  *(v5 + 56) = MEMORY[0x277D83B88];
  *(v5 + 64) = v7;
  *(v5 + 32) = v6;
  sub_219BF6214();
  sub_219BE5314("Local news channel service will personalize %lu channels", v41);

  a1 = sub_2193C60EC(a1);
  v8 = *(a1 + 16);
  v44 = a1 + 32;
  v9 = a3 + 56;
  if (!v8)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_25;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  do
  {
    v12 = v10;
    while (1)
    {
      if (v12 >= *(a1 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v10 = v12 + 1;
      if (*(a3 + 16))
      {
        break;
      }

LABEL_6:
      v12 = v10;
      if (v10 == v8)
      {
        goto LABEL_25;
      }
    }

    v13 = (v44 + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_219BF7AA4();

    sub_219BF5524();
    v16 = sub_219BF7AE4();
    v17 = -1 << *(a3 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_5:

      goto LABEL_6;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a3 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_219BF78F4() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v45 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21870B65C(0, *(v11 + 16) + 1, 1);
    }

    v22 = v11;
    v23 = *(v11 + 16);
    v24 = *(v22 + 24);
    if (v23 >= v24 >> 1)
    {
      sub_21870B65C((v24 > 1), v23 + 1, 1);
      v22 = v45;
    }

    *(v22 + 16) = v23 + 1;
    v25 = v22 + 16 * v23;
    *(v25 + 32) = v15;
    *(v25 + 40) = v14;
    v11 = v22;
  }

  while (v10 != v8);
LABEL_25:
  v42 = v11;
  if (v8)
  {
    v26 = 0;
    v27 = MEMORY[0x277D84F90];
    v43 = v8;
    while (1)
    {
      if (v26 >= *(a1 + 16))
      {
        goto LABEL_48;
      }

      v28 = (v44 + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      ++v26;
      if (*(a3 + 16))
      {
        sub_219BF7AA4();

        sub_219BF5524();
        v31 = sub_219BF7AE4();
        v32 = -1 << *(a3 + 32);
        v33 = v31 & ~v32;
        if ((*(v9 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
        {
          v34 = ~v32;
          while (1)
          {
            v35 = (*(a3 + 48) + 16 * v33);
            v36 = *v35 == v30 && v35[1] == v29;
            if (v36 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v33 = (v33 + 1) & v34;
            if (((*(v9 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_28;
        }
      }

      else
      {
      }

LABEL_39:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21870B65C(0, *(v27 + 16) + 1, 1);
      }

      v38 = *(v27 + 16);
      v37 = *(v27 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_21870B65C((v37 > 1), v38 + 1, 1);
      }

      *(v27 + 16) = v38 + 1;
      v39 = v27 + 16 * v38;
      *(v39 + 32) = v30;
      *(v39 + 40) = v29;
      v8 = v43;
LABEL_28:
      if (v26 == v8)
      {
        goto LABEL_46;
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_46:

  sub_2191ED3E8(v27);
  return v42;
}

uint64_t sub_2193C60EC(uint64_t a1)
{
  v3 = sub_219BF11F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v7 = sub_219BEFFF4();
  v42 = *(v7 + 16);
  if (!v42)
  {

    v9 = MEMORY[0x277D84F98];
LABEL_18:
    MEMORY[0x28223BE20](v34);
    v37[-2] = v9;
    v35 = sub_219BF5964();

    return v35;
  }

  v37[1] = a1;
  v8 = 0;
  v41 = v7 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v39 = (v4 + 8);
  v40 = v4 + 16;
  v9 = MEMORY[0x277D84F98];
  v38 = v7;
  while (v8 < *(v7 + 16))
  {
    v11 = v41 + *(v4 + 72) * v8;
    v12 = v4;
    v13 = *(v4 + 16);
    v14 = v3;
    v13(v6, v11, v3);
    v15 = sub_219BF11E4();
    v17 = v16;
    v18 = v6;
    sub_219BF11D4();
    v20 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v9;
    v22 = sub_21870F700(v15, v17);
    v24 = v9[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      goto LABEL_20;
    }

    v28 = v23;
    if (v9[3] < v27)
    {
      sub_219484390(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_21870F700(v15, v17);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if (v28)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v33 = v22;
    sub_2194943C0();
    v22 = v33;
    if (v28)
    {
LABEL_3:
      v10 = v22;

      v9 = v43;
      *(v43[7] + 8 * v10) = v20;
      v6 = v18;
      v3 = v14;
      (*v39)(v18, v14);
      goto LABEL_4;
    }

LABEL_12:
    v9 = v43;
    v43[(v22 >> 6) + 8] |= 1 << v22;
    v30 = (v9[6] + 16 * v22);
    *v30 = v15;
    v30[1] = v17;
    *(v9[7] + 8 * v22) = v20;
    v6 = v18;
    v3 = v14;
    (*v39)(v18, v14);
    v31 = v9[2];
    v26 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v26)
    {
      goto LABEL_21;
    }

    v9[2] = v32;
LABEL_4:
    ++v8;
    v4 = v12;
    v7 = v38;
    if (v42 == v8)
    {

      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_2193C646C(uint64_t *a1)
{

  sub_219BDC8F4();

  sub_219BDC8F4();

  sub_21874E780(0, &qword_280EE6AA0, sub_2186D0BA8, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

void sub_2193C6584(void (*a1)(void *, double), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = qword_280E8D958;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_280F617F0;
  v13 = sub_219BF6214();
  v14 = [*(a5 + 48) mostFrequentLocation];
  if (v14)
  {
    v15 = v14;
    v16 = sub_219BF6214();
    sub_219BE5314("Local news channel service has user location to check for fetching local areas", 78, 2, &dword_2186C1000, v12, v16, MEMORY[0x277D84F90]);
    v17 = *(a5 + 40);
    v18 = swift_allocObject();
    v18[2] = sub_218846958;
    v18[3] = v10;
    v18[4] = v15;
    v18[5] = a6;
    v18[6] = a5;
    v23[4] = sub_2193C7454;
    v23[5] = v18;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_218C1CBB4;
    v23[3] = &block_descriptor_28_2;
    v19 = _Block_copy(v23);
    v20 = v15;

    [v17 fetchLocalAreasProvider_];
    _Block_release(v19);
  }

  else
  {

    v21 = sub_219BF6214();
    v22 = sub_219BE5314("Local news channel service failed to get user location to fetch local areas", 75, 2, &dword_2186C1000, v12, v21, MEMORY[0x277D84F90]);
    v23[0] = MEMORY[0x277D84FA0];
    a1(v23, v22);
  }
}

void sub_2193C67D8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_280E8D958 != -1)
  {
    swift_once();
  }

  sub_21874E780(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  v13 = MEMORY[0x277D839F0];
  *(v12 + 56) = MEMORY[0x277D839B0];
  *(v12 + 64) = v13;
  *(v12 + 32) = a1 != 0;
  sub_219BF6214();
  sub_219BE5314("Local news channel service did fetch local areas, hasProvider=%d", v17);

  if (a1)
  {
    v14 = [swift_unknownObjectRetain() autoFavoriteTagIDsForLocation:a5 searchOption:a6];
    v15 = sub_219BF5D44();

    v16 = sub_2193C77DC(v15, a7);

    a3(v16);
    swift_unknownObjectRelease();
  }

  else
  {
    a3(MEMORY[0x277D84FA0]);
  }
}

uint64_t sub_2193C69CC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return v0;
}

uint64_t sub_2193C6A34()
{
  sub_2193C69CC();

  return swift_deallocClassInstance();
}

uint64_t sub_2193C6A68(uint64_t a1)
{
  sub_2186D0BA8();
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_21874E780(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
  sub_219BE2F84();

  v2 = sub_219BE2E54();
  sub_2186D6710(0, &qword_280E8E390, &protocolRef_FCChannelProviding);
  sub_21875B210(&qword_280E8EFC0, &qword_280E8EFD0, type metadata accessor for TagModel);
  v3 = sub_219BE30C4();

  return v3;
}

uint64_t sub_2193C6BC4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_219BE5034();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2193C6C88, 0, 0);
}

uint64_t sub_2193C6C88()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  sub_219BE5044();
  v5 = sub_219BE5024();
  (*(v2 + 8))(v1, v3);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;
  sub_2193C714C(0);
  swift_allocObject();
  v0[9] = sub_219BE30B4();

  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_2193C6DBC;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_2193C6DBC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2193C6F80;
  }

  else
  {

    v2 = sub_2193C6ED8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2193C6ED8()
{
  sub_2193C47F4(*(v0 + 16));

  sub_219BE4E84();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2193C6F80()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2193C6FEC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_2193C6BC4(a1, a2);
}

double sub_2193C7098()
{
  sub_2193C4E3C(0);

  return result;
}

uint64_t sub_2193C70FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2193C714C(uint64_t a1)
{
  if (!qword_280EE69E0)
  {
    sub_21876C204(255, &qword_280E8E9E0, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D83B48]);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE69E0);
    }
  }
}

uint64_t sub_2193C71D0(uint64_t a1)
{
  v1 = sub_219BE2E54();
  v2 = sub_219BE2E34();

  return v2;
}

void sub_2193C7220(uint64_t a1)
{
  if (!qword_280E8ECD8)
  {
    sub_218A354D8(255);
    sub_21876C204(255, &qword_280E8E9E0, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D83B48]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8ECD8);
    }
  }
}

unint64_t *sub_2193C731C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    sub_2193C7464(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_2193C73C4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t *sub_2193C7404@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = 0;
  if (*(v4 + 16))
  {
    result = sub_21870F700(*result, result[1]);
    if (v6)
    {
      v5 = *(*(v4 + 56) + 8 * result);
    }
  }

  *a2 = v5;
  return result;
}

void sub_2193C7464(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a2;
  v31 = 0;
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v13 = __clz(__rbit64(v8));
    v34 = (v8 - 1) & v8;
LABEL_15:
    v16 = v13 | (v4 << 6);
    v17 = (*(a3 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(a4 + 32);

    v21 = sub_219BF53D4();
    v22 = [v20 hasMutedSubscriptionForTagID_];

    if (v22)
    {
      if (qword_280E8D958 != -1)
      {
        swift_once();
      }

      v10 = qword_280F617F0;
      sub_21874E780(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_219C09BA0;
      *(v11 + 56) = MEMORY[0x277D837D0];
      *(v11 + 64) = sub_2186FC3BC();
      *(v11 + 32) = v18;
      *(v11 + 40) = v19;

      v12 = sub_219BF6214();
      sub_219BE5314("Local news channel service did filter location %{private}@ because its muted", 76, 2, &dword_2186C1000, v10, v12, v11);
LABEL_7:
      v8 = v34;
    }

    else
    {
      v23 = sub_219BF53D4();
      v24 = [v20 hasIgnoredSubscriptionForTagID_];

      if (v24)
      {
        if (qword_280E8D958 != -1)
        {
          swift_once();
        }

        v25 = qword_280F617F0;
        sub_21874E780(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_219C09BA0;
        *(v26 + 56) = MEMORY[0x277D837D0];
        *(v26 + 64) = sub_2186FC3BC();
        *(v26 + 32) = v18;
        *(v26 + 40) = v19;

        v27 = sub_219BF6214();
        sub_219BE5314("Local news channel service did filter location %{private}@ because its ignored", 78, 2, &dword_2186C1000, v25, v27, v26);
        goto LABEL_7;
      }

      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v28 = __OFADD__(v31++, 1);
      v8 = v34;
      if (v28)
      {
        goto LABEL_25;
      }
    }
  }

  v14 = v4;
  while (1)
  {
    v4 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v4 >= v9)
    {

      sub_21987C7C8(a1, v29, v31, a3);
      return;
    }

    v15 = *(v5 + 8 * v4);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v34 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_2193C77DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v45 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v43 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_27;
  }

  while (2)
  {
    v37 = v7;
    v38 = v3;
    v36[1] = v36;
    MEMORY[0x28223BE20](v9);
    v39 = v36 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v39, v8);
    v40 = 0;
    v7 = 0;
    v10 = v4 + 56;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v8 = v12 & *(v4 + 56);
    v3 = (v11 + 63) >> 6;
    v41 = xmmword_219C09BA0;
    v42 = v4;
    while (v8)
    {
      v16 = __clz(__rbit64(v8));
      v44 = (v8 - 1) & v8;
LABEL_16:
      v19 = v16 | (v7 << 6);
      v20 = (*(v4 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(v43 + 32);

      v24 = sub_219BF53D4();
      v25 = [v23 hasMutedSubscriptionForTagID_];

      if (v25)
      {
        if (qword_280E8D958 != -1)
        {
          swift_once();
        }

        v13 = qword_280F617F0;
        sub_21874E780(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v14 = swift_allocObject();
        *(v14 + 16) = v41;
        *(v14 + 56) = MEMORY[0x277D837D0];
        *(v14 + 64) = sub_2186FC3BC();
        *(v14 + 32) = v21;
        *(v14 + 40) = v22;

        v15 = sub_219BF6214();
        sub_219BE5314("Local news channel service did filter location %{private}@ because its muted", 76, 2, &dword_2186C1000, v13, v15, v14);
        v4 = v42;
LABEL_8:
        v8 = v44;
      }

      else
      {
        v26 = sub_219BF53D4();
        v27 = [v23 hasIgnoredSubscriptionForTagID_];

        if (v27)
        {
          v4 = v42;
          if (qword_280E8D958 != -1)
          {
            swift_once();
          }

          v28 = qword_280F617F0;
          sub_21874E780(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
          v29 = swift_allocObject();
          *(v29 + 16) = v41;
          *(v29 + 56) = MEMORY[0x277D837D0];
          *(v29 + 64) = sub_2186FC3BC();
          *(v29 + 32) = v21;
          *(v29 + 40) = v22;

          v30 = sub_219BF6214();
          sub_219BE5314("Local news channel service did filter location %{private}@ because its ignored", 78, 2, &dword_2186C1000, v28, v30, v29);
          goto LABEL_8;
        }

        *&v39[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        v31 = __OFADD__(v40++, 1);
        v4 = v42;
        v8 = v44;
        if (v31)
        {
          __break(1u);
        }
      }
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v3)
      {
        v32 = sub_21987C7C8(v39, v37, v40, v4);

        return v32;
      }

      v18 = *(v10 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v44 = (v18 - 1) & v18;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_27:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v34 = swift_slowAlloc();
  v35 = v43;

  v32 = sub_2193C731C(v34, v7, v4, v35);

  MEMORY[0x21CECF960](v34, -1, -1);

  return v32;
}

double sub_2193C7CA8()
{
  sub_2193C4E3C(1);

  return result;
}

uint64_t sub_2193C7D0C(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_2193C9A44(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v40 - v5;
  sub_2193C9A44(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v40 - v7;
  sub_2193C9A44(0, &qword_27CC19C10, sub_2193C9AA8, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v43 = &v40 - v9;
  sub_2193C9AC8(0, &qword_27CC19C20, MEMORY[0x277D31C68]);
  v42 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v41 = &v40 - v12;
  v13 = sub_219BF2AB4();
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x28223BE20](v13);
  v52 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F97D4(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BEF554();
  v50 = *(v18 - 8);
  v51 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v40 - v22;
  v24 = type metadata accessor for ArticlesSearchMoreFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + OBJC_IVAR____TtC7NewsUI234ArticlesSearchMoreFeedGroupEmitter_formatService + 24);
  v44 = *(a1 + OBJC_IVAR____TtC7NewsUI234ArticlesSearchMoreFeedGroupEmitter_formatService + 32);
  v45 = v27;
  v47 = __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI234ArticlesSearchMoreFeedGroupEmitter_formatService), v27);
  sub_218714064(0);
  sub_219BEDD14();
  sub_219BEDCC4();
  v28 = v46;
  sub_219BEDCC4();
  v29 = sub_219BEE5D4();
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);
  (*(v11 + 16))(v41, v49, v42);
  sub_2193C9AA8(0);
  (*(*(v30 - 8) + 56))(v43, 1, 1, v30);
  v31 = sub_219BF35D4();
  (*(*(v31 - 8) + 56))(v48, 1, 1, v31);
  v55 = 0;
  sub_2193C9AC8(0, &qword_27CC19C28, MEMORY[0x277D33F88]);
  swift_allocObject();
  sub_219BF38E4();
  v32 = sub_219BF2774();
  (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
  v33 = qword_27CC08540;
  *MEMORY[0x277D30B98];
  if (v33 != -1)
  {
    swift_once();
  }

  qword_27CCD8A08;
  v34 = v52;
  sub_219BF2A84();
  v35 = sub_218F0AF50(v26, 0x73656C6369747261, 0xE800000000000000, v23, v20, MEMORY[0x277D84F90], v17, v34, v45, v44);
  (*(v53 + 8))(v34, v54);
  sub_2193C9B64(v17, sub_2186F97D4);
  v36 = v51;
  v37 = *(v50 + 8);
  v37(v20, v51);
  v37(v23, v36);
  v38 = sub_219BF1934();
  (*(*(v38 - 8) + 8))(v26, v38);
  return v35;
}

uint64_t sub_2193C8434(uint64_t a1)
{
  v2 = sub_219BED8D4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup, v6, v2);
  v10[3] = v7;
  v10[0] = v8;
  sub_2193C9A44(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2193C85A8(uint64_t a1)
{
  type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
  sub_219BE3204();

  v2 = sub_219BE2E54();
  sub_2193C96EC(0);
  sub_219BE2F64();

  v3 = swift_allocObject();
  *(v3 + 16) = sub_2193C9754;
  *(v3 + 24) = v1;

  v4 = sub_219BE2E54();
  sub_2193C9834(0, &qword_27CC19BE8, sub_21880702C, type metadata accessor for SearchMoreFeedGroup);
  sub_219BE2F64();

  v5 = sub_219BE2E54();
  sub_2193C97A0(0);
  sub_219BE2F64();

  v6 = sub_219BE2E54();
  v7 = sub_219BE3054();

  return v7;
}

uint64_t sub_2193C8790(uint64_t *a1)
{
  sub_219BEF0C4();
  v1 = sub_219BE2E54();
  sub_219BE2F64();

  v2 = sub_219BE2E54();
  sub_2193C96EC(0);
  v3 = sub_219BE2F74();

  return v3;
}

void sub_2193C886C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *a3 = a2;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  v7 = *(a1 + 32);
  *(a3 + 40) = v7;

  sub_2189651EC(v4, v3, v5, v6, v7);
}

uint64_t sub_2193C88DC(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  sub_2193C9834(0, &qword_27CC19BE8, sub_21880702C, type metadata accessor for SearchMoreFeedGroup);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (&v35 - v4);
  v6 = sub_219BDBD64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = v14 >> 6;
  if (v14 >> 6 > 1)
  {
    if (v15 != 2)
    {
      v13 = 1;
      v14 = 1;
    }

    v18 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
LABEL_11:
      if (!sub_219BF7214())
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else if (v15)
  {
    v18 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = *(a2 + 8);
    v17 = *(a2 + 16);
    v18 = *a2;
    sub_2189651EC(v18, v16, v17, v13, v14);
    if (v18 >> 62)
    {
      goto LABEL_11;
    }
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    v32 = sub_219BEEDD4();
    sub_2186FFF58(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D323A8], v32);
    swift_willThrow();
    return v32;
  }

LABEL_9:
  v37 = v14;
  sub_2193C9918(0);
  v20 = *(v19 + 48);
  v38 = v10;
  v21 = &v12[v20];
  sub_219BDBD54();
  v22 = sub_219BDBD44();
  v35 = v23;
  v36 = v22;
  (*(v7 + 8))(v9, v6);
  v24 = v40;
  v25 = OBJC_IVAR____TtC7NewsUI233FormatGroupFeedGroupEmitterCursor_formatGroup;
  v26 = type metadata accessor for ArticlesSearchMoreFeedGroup(0);
  v27 = *(v26 + 20);
  v28 = sub_219BED8D4();
  (*(*(v28 - 8) + 16))(&v12[v27], v24 + v25, v28);
  v29 = v35;
  *v12 = v36;
  *(v12 + 1) = v29;
  *&v12[*(v26 + 24)] = v18;
  *v21 = v13;
  v21[8] = v37 & 1;
  swift_storeEnumTagMultiPayload();
  v30 = type metadata accessor for FormatGroupFeedGroupEmitterCursor(0);
  v31 = *(v39 + 48);
  *v5 = v24;
  v5[3] = v30;
  sub_2193C98B0(v12, v5 + v31, type metadata accessor for SearchMoreFeedGroup);
  sub_2193C9984(0);
  swift_allocObject();

  v32 = sub_219BE3014();
  sub_2193C9B64(v12, type metadata accessor for SearchMoreFeedGroup);
  return v32;
}

uint64_t sub_2193C8D34(uint64_t a1)
{
  sub_2193C97A0(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193C9834(0, &qword_27CC19BE8, sub_21880702C, type metadata accessor for SearchMoreFeedGroup);
  v6 = *(v5 + 48);
  sub_2193C9834(0, &qword_27CC19C00, type metadata accessor for SearchMoreFeedGroup, sub_21880702C);
  v8 = *(v7 + 48);
  sub_2193C98B0(a1 + v6, v4, type metadata accessor for SearchMoreFeedGroup);
  sub_2193C98B0(a1, &v4[v8], sub_21880702C);
  swift_storeEnumTagMultiPayload();
  sub_2193C9A44(0, &qword_27CC19BF8, sub_2193C97A0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2193C8EC8(uint64_t a1)
{
  sub_2193C97A0(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = 0;
  v8 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000028, 0x8000000219D12130);
  v9 = a1;
  sub_218A450F0();
  sub_219BF7484();
  v5 = v8;
  *v4 = v7;
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();
  sub_2193C9A44(0, &qword_27CC19BF8, sub_2193C97A0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2193C9020()
{
  v1 = OBJC_IVAR____TtC7NewsUI234ArticlesSearchMoreFeedGroupEmitter_config;
  sub_218714064(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234ArticlesSearchMoreFeedGroupEmitter_formatService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ArticlesSearchMoreFeedGroupEmitter(uint64_t a1)
{
  result = qword_27CC19BB0;
  if (!qword_27CC19BB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2193C9120(uint64_t a1)
{
  sub_218714064(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2193C91B8(uint64_t a1)
{
  sub_219BED8D4();
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_21880702C();
  v2 = sub_219BE2F64();

  return v2;
}

uint64_t sub_2193C9284@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI234ArticlesSearchMoreFeedGroupEmitter_config;
  sub_218714064(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for SearchMoreFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_2193C9318(void *a1@<X8>)
{
  v1 = MEMORY[0x277D83808];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v1;
  a1[5] = MEMORY[0x277D837D8];
  *a1 = 0;
  a1[1] = 0xE000000000000000;
}

uint64_t sub_2193C937C@<X0>(uint64_t *a2@<X8>)
{
  sub_2193C9A44(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218714064(0);
  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2193C9B64(inited + 32, sub_2188317B0);
  sub_2193C9BC4(0);
  a2[3] = v6;
  a2[4] = sub_2186FFF58(&unk_27CC19C38, sub_2193C9BC4, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2193C94FC(uint64_t a1)
{
  sub_2186FFF58(&qword_27CC19BD0, type metadata accessor for ArticlesSearchMoreFeedGroupEmitter, &unk_219C78328);

  return sub_219BE2324();
}

void sub_2193C96EC(uint64_t a1)
{
  if (!qword_27CC19BE0)
  {
    type metadata accessor for FormatGroupFeedGroupEmitterCursor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC19BE0);
    }
  }
}

void sub_2193C97A0(uint64_t a1)
{
  if (!qword_27CC19BF0)
  {
    type metadata accessor for SearchMoreFeedGroup(255);
    sub_2186FFF58(&qword_27CC0B320, type metadata accessor for SearchMoreFeedGroup, &unk_219C56620);
    v1 = sub_219BEF1A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC19BF0);
    }
  }
}

void sub_2193C9834(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2193C98B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2193C9918(uint64_t a1)
{
  if (!qword_27CC0D1E0)
  {
    type metadata accessor for ArticlesSearchMoreFeedGroup(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC0D1E0);
    }
  }
}

void sub_2193C9984(uint64_t a1)
{
  if (!qword_27CC19C08)
  {
    sub_2193C9834(255, &qword_27CC19BE8, sub_21880702C, type metadata accessor for SearchMoreFeedGroup);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC19C08);
    }
  }
}

void sub_2193C9A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2193C9AC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SearchMoreFeedServiceConfig(255);
    v7 = sub_2186FFF58(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig, &unk_219C731D0);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2193C9B64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2193C9BF8(uint64_t a1, char *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = sub_2193C9D8C(a1, a2);
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v12 = v7;
      sub_2186C66AC();

      v13 = sub_219BF6F74();
      sub_2186F20D4(0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_219C09EC0;
      v15 = MEMORY[0x277D83A80];
      *(v14 + 56) = MEMORY[0x277D839F8];
      *(v14 + 64) = v15;
      *(v14 + 32) = v12;
      *(v14 + 96) = MEMORY[0x277D837D0];
      *(v14 + 104) = sub_2186FC3BC();
      *(v14 + 72) = v10;
      *(v14 + 80) = v11;

      v16 = sub_219BF6214();
      sub_219BE5314("AudioListeningProgressRecorder: saving listening progress %.1f for %{public}@", 77, 2, &dword_2186C1000, v13, v16, v14);

      __swift_project_boxed_opaque_existential_1(a4, a4[3]);
      sub_219BDECE4();
      swift_bridgeObjectRelease_n();
    }
  }
}

uint64_t sub_2193C9D8C(uint64_t a1, char *a2)
{
  v104 = a2;
  sub_21883F194(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v99 - v7;
  MEMORY[0x28223BE20](v9);
  v103 = (&v99 - v10);
  sub_2193AA1E0(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v20 = (&v99 - v19);
  MEMORY[0x28223BE20](v21);
  v23 = (&v99 - v22);
  MEMORY[0x28223BE20](v24);
  v102 = &v99 - v25;
  v26 = *(v12 + 56);
  sub_2193AA244(a1, v14);
  sub_2193AA244(v104, &v14[v26]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v102 = v15;
    v103 = v17;
    v104 = v5;
    sub_2193AA244(&v14[v26], v8);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_2193CA87C(v8, sub_218A6E5D0);
      goto LABEL_22;
    }

    v101 = v26;
    v99 = v14;
    v48 = v104;
    sub_2193AA244(v14, v104);
    sub_218A6E5D0(0);
    v30 = *(v48 + *(v49 + 48));
    v100 = *(v49 + 64);
    v50 = v20;
    sub_218C162E4(v48, v20);
    v51 = v103;
    sub_218C162E4(v8, v103);
    v52 = *v20;
    v53 = [*v20 identifier];
    v54 = sub_219BF5414();
    v56 = v55;

    v57 = [*v51 identifier];
    v58 = sub_219BF5414();
    v60 = v59;

    if (v54 == v58 && v56 == v60)
    {

      v61 = v103;
    }

    else
    {
      v73 = sub_219BF78F4();

      v61 = v103;
      if ((v73 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    if (sub_2198DB278((v50 + *(v102 + 32)), (v61 + *(v102 + 32))))
    {
      sub_2193CA87C(v61, type metadata accessor for AudioFeedTrack);
      sub_2193CA87C(v50, type metadata accessor for AudioFeedTrack);
      v74 = sub_219BDD9E4();
      v75 = *(*(v74 - 8) + 8);
      v76 = v100;
      v75(&v8[v100], v74);
      v75(&v104[v76], v74);
      v26 = v101;
      v14 = v99;
      goto LABEL_22;
    }

LABEL_31:
    v82 = v104;
    if ((*(v50 + 24) & 2) != 0)
    {
      v93 = [v52 identifier];
      sub_219BF5414();

      sub_2193CA87C(v61, type metadata accessor for AudioFeedTrack);
      sub_2193CA87C(v50, type metadata accessor for AudioFeedTrack);
      v94 = sub_219BDD9E4();
      v95 = v8;
      v96 = *(*(v94 - 8) + 8);
      v97 = v100;
      v96(&v95[v100], v94);
      v96((v82 + v97), v94);
      v98 = v99;
      sub_2193CA87C(&v99[v101], sub_21883F194);
      sub_2193CA87C(v98, sub_21883F194);
      return v30;
    }

    sub_2186C66AC();
    v83 = sub_219BF6F74();
    sub_2186F20D4(0);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_219C09BA0;
    v85 = [v52 identifier];
    v86 = sub_219BF5414();
    v88 = v87;

    *(v84 + 56) = MEMORY[0x277D837D0];
    *(v84 + 64) = sub_2186FC3BC();
    *(v84 + 32) = v86;
    *(v84 + 40) = v88;
    v89 = sub_219BF6214();
    sub_219BE5314("AudioListeningProgressRecorder: not saving listening progress for %{public}@ because it's disabled", 98, 2, &dword_2186C1000, v83, v89, v84);

    sub_2193CA87C(v61, type metadata accessor for AudioFeedTrack);
    sub_2193CA87C(v50, type metadata accessor for AudioFeedTrack);
    v90 = sub_219BDD9E4();
    v91 = *(*(v90 - 8) + 8);
    v92 = v100;
    v91(&v8[v100], v90);
    v91((v82 + v92), v90);
    v33 = v99;
    v42 = &v99[v101];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v44 = swift_getEnumCaseMultiPayload();
    if (!v44)
    {
      sub_218A6E5D0(0);
      goto LABEL_16;
    }

    if (v44 == 1)
    {
      sub_218A6E554(0);
LABEL_16:
      v30 = *&v14[*(v45 + 48)];
      v62 = *(v45 + 64);
      v63 = v102;
      sub_218C162E4(v14, v102);
      v64 = sub_219BDD9E4();
      (*(*(v64 - 8) + 8))(&v14[v62], v64);
      sub_2193CA87C(&v14[v26], sub_21883F194);
      if ((*(v63 + 24) & 2) == 0)
      {
        sub_2186C66AC();
        v65 = sub_219BF6F74();
        sub_2186F20D4(0);
        v66 = swift_allocObject();
        *(v66 + 16) = xmmword_219C09BA0;
        v67 = [*v63 identifier];
        v68 = sub_219BF5414();
        v70 = v69;

        sub_2193CA87C(v63, type metadata accessor for AudioFeedTrack);
        *(v66 + 56) = MEMORY[0x277D837D0];
        *(v66 + 64) = sub_2186FC3BC();
        *(v66 + 32) = v68;
        *(v66 + 40) = v70;
        v71 = sub_219BF6214();
        sub_219BE5314("AudioListeningProgressRecorder: not saving listening progress for %{public}@ because it's disabled", 98, 2, &dword_2186C1000, v65, v71, v66);

        return 0;
      }

      v72 = [*v63 identifier];
      sub_219BF5414();

      sub_2193CA87C(v63, type metadata accessor for AudioFeedTrack);
      return v30;
    }

LABEL_22:
    v77 = swift_getEnumCaseMultiPayload();
    if (v77)
    {
      if (v77 != 1)
      {
LABEL_27:
        v43 = &v14[v26];
        goto LABEL_28;
      }

      sub_218A6E554(0);
    }

    else
    {
      sub_218A6E5D0(0);
    }

    v79 = *(v78 + 64);
    v80 = sub_219BDD9E4();
    (*(*(v80 - 8) + 8))(&v14[v79], v80);
    sub_2193CA87C(v14, type metadata accessor for AudioFeedTrack);
    goto LABEL_27;
  }

  v28 = v103;
  sub_2193AA244(&v14[v26], v103);
  sub_218A6E554(0);
  v30 = *(v28 + *(v29 + 48));
  v31 = *(v29 + 64);
  sub_218C162E4(v28, v23);
  v32 = v26;
  v33 = v14;
  if ((v23[3] & 2) == 0)
  {
    sub_2186C66AC();
    v34 = sub_219BF6F74();
    sub_2186F20D4(0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_219C09BA0;
    v36 = [*v23 identifier];
    v37 = sub_219BF5414();
    v39 = v38;

    *(v35 + 56) = MEMORY[0x277D837D0];
    *(v35 + 64) = sub_2186FC3BC();
    *(v35 + 32) = v37;
    *(v35 + 40) = v39;
    v40 = sub_219BF6214();
    sub_219BE5314("AudioListeningProgressRecorder: not saving listening progress for %{public}@ because it's disabled", 98, 2, &dword_2186C1000, v34, v40, v35);

    sub_2193CA87C(v23, type metadata accessor for AudioFeedTrack);
    v41 = sub_219BDD9E4();
    (*(*(v41 - 8) + 8))(v28 + v31, v41);
    v42 = v33 + v32;
LABEL_5:
    sub_2193CA87C(v42, sub_21883F194);
    v43 = v33;
LABEL_28:
    sub_2193CA87C(v43, sub_21883F194);
    return 0;
  }

  v46 = [*v23 identifier];
  sub_219BF5414();

  sub_2193CA87C(v23, type metadata accessor for AudioFeedTrack);
  v47 = sub_219BDD9E4();
  (*(*(v47 - 8) + 8))(v28 + v31, v47);
  sub_2193CA87C(v33 + v26, sub_21883F194);
  sub_2193CA87C(v33, sub_21883F194);
  return v30;
}

uint64_t sub_2193CA87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2193CA8FC(uint64_t a1)
{
  sub_2193CA970(319);
  if (v1 <= 0x3F)
  {
    sub_218D52054(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2193CA970(uint64_t a1)
{
  if (!qword_280E915E0)
  {
    type metadata accessor for MagazineFeedServiceConfig(255);
    sub_2186EC8C0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v1 = sub_219BEF3F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E915E0);
    }
  }
}

void sub_2193CAA4C(uint64_t a1)
{
  type metadata accessor for MagazineFeedExpandResult.Result(319);
  if (v1 <= 0x3F)
  {
    sub_2187DD810(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2193CAAE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_218D42644;

  return sub_2193CAB80(a3);
}

uint64_t sub_2193CAB80(uint64_t a1)
{
  v2[269] = v1;
  v2[263] = a1;
  v3 = sub_219BEEA84();
  v2[275] = v3;
  v2[281] = *(v3 - 8);
  v2[287] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2193CAC44, 0, 0);
}

uint64_t sub_2193CAC44()
{
  v1 = v0[269];
  v2 = v0[263];

  type metadata accessor for FCSportsOnboardingState(0);
  swift_asyncLet_begin();
  v3 = swift_allocObject();
  v0[293] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  swift_asyncLet_begin();

  sub_2193D00AC();
  swift_asyncLet_begin();
  v4 = swift_task_alloc();
  v0[299] = v4;
  *v4 = v0;
  v4[1] = sub_2193CADC4;
  v5 = v0[263];

  return sub_2193CDBD4(v5);
}

uint64_t sub_2193CADC4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(*v2 + 2440) = a2;

  return MEMORY[0x282200930](v3 + 656, v3 + 1976, sub_2193CAED4, v3 + 1936);
}

uint64_t sub_2193CAED4()
{
  v1[311] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2193CB418, 0, 0);
  }

  else
  {
    v1[317] = v1[247];
    v1[323] = v1[248];
    v1[329] = v1[249];
    v1[335] = v1[250];
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    return MEMORY[0x282200930](v1 + 162, v1 + 257, sub_2193CAFD0, v1 + 270);
  }
}

uint64_t sub_2193CAFD0()
{
  *(v1 + 2688) = v0;
  if (v0)
  {
    v2 = sub_2193CB5A0;
  }

  else
  {
    v2 = sub_2193CB004;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2193CB004()
{
  v1 = v0[287];
  v2 = v0[281];
  v3 = v0[275];
  v4 = v0[269];
  v5 = v0[257];
  v0[337] = v5;
  v6 = *(v4 + 32);
  v7 = v5;
  v0[338] = [v6 appConfiguration];
  (*(v2 + 104))(v1, *MEMORY[0x277D32220], v3);

  return MEMORY[0x282200930](v0 + 2, v0 + 251, sub_2193CB0D0, v0 + 294);
}

uint64_t sub_2193CB0D0()
{
  v1[339] = v0;
  if (v0)
  {
    v2 = v1[337];
    (*(v1[281] + 8))(v1[287], v1[275]);

    swift_unknownObjectRelease();

    v3 = sub_2193CB770;
  }

  else
  {
    v1[340] = type metadata accessor for TagFeedServiceConfig(0);
    v3 = sub_2193CB1C4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2193CB1C4()
{
  v16 = v0[337];
  v17 = v0[338];
  v15 = v0[335];
  v1 = v0[329];
  v2 = v0[323];
  v3 = v0[317];
  v4 = v0[305];
  v13 = v0[340];
  v14 = v0[287];
  v5 = v0[269];
  v6 = v0[263];
  v7 = v0[251];
  v9 = *(v5 + 136);
  v8 = *(v5 + 144);
  swift_getObjectType();

  v10 = v8;
  swift_unknownObjectRetain();
  v0[341] = sub_218CBAC4C(v6, v3, v2, v1, v15, v16, v17, v14, v7, v10, v9, v4, v13);

  return MEMORY[0x282200920](v0 + 162, v0 + 257, sub_2193CB300, v0 + 318, v11);
}

uint64_t sub_2193CB394()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 2728);

  return v1(v2);
}

uint64_t sub_2193CB418()
{

  return MEMORY[0x282200920](v0 + 1296, v0 + 2056, sub_2193CB484, v0 + 2016, v1);
}

uint64_t sub_2193CB518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2193CB5A0()
{

  return MEMORY[0x282200920](v0 + 1296, v0 + 2056, sub_2193CB654, v0 + 2208, v1);
}

uint64_t sub_2193CB6E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2193CB770()
{

  return MEMORY[0x282200920](v0 + 1296, v0 + 2056, sub_2193CB814, v0 + 2400, v1);
}

uint64_t sub_2193CB8A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2193CB930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_218E5F004;

  return sub_2193CB9D0(a3);
}

uint64_t sub_2193CB9D0(uint64_t a1)
{
  v2[357] = v1;
  v2[351] = a1;
  v3 = sub_219BEEA84();
  v2[363] = v3;
  v2[369] = *(v3 - 8);
  v2[375] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2193CBA94, 0, 0);
}

uint64_t sub_2193CBA94()
{
  if (qword_280EE95E8 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {

    v1 = swift_task_alloc();
    v0[420] = v1;
    v2 = type metadata accessor for TagFeedServiceContext(0);
    v3 = type metadata accessor for TagFeedServiceConfig(0);
    *v1 = v0;
    v1[1] = sub_2193CC3E4;
    v4 = v0[357];
    v5 = v0[351];

    return MEMORY[0x2821D2620](v5, &unk_219C78648, v4, v2, v3);
  }

  else
  {
    v6 = v0[357];
    v7 = v0[351];
    v0[381] = [*(v6 + 32) appConfiguration];
    v8 = swift_allocObject();
    v0[387] = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;

    sub_2193D1510(0);
    swift_asyncLet_begin();

    sub_2193D00AC();
    swift_asyncLet_begin();

    type metadata accessor for FCSportsOnboardingState(0);
    swift_asyncLet_begin();
    v9 = swift_allocObject();
    v0[393] = v9;
    *(v9 + 16) = v6;
    *(v9 + 24) = v7;

    sub_2193D1790(0);
    swift_asyncLet_begin();

    return MEMORY[0x282200928](v0 + 162, v0 + 333, sub_2193CBD58, v0 + 328);
  }
}

uint64_t sub_2193CBD58()
{
  *(v0 + 3192) = *(v0 + 2664);

  return MEMORY[0x282200930](v0 + 1936, v0 + 2712, sub_2193CBDC8, v0 + 2672);
}

uint64_t sub_2193CBDC8()
{
  v1[405] = v0;
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2193CC5B0, 0, 0);
  }

  else
  {
    v2 = v1[339];
    v1[411] = v2;
    v3 = v2;

    return MEMORY[0x282200930](v1 + 2, v1 + 327, sub_2193CBE78, v1 + 364);
  }
}

uint64_t sub_2193CBE78()
{
  v1[417] = v0;
  if (v0)
  {
    return MEMORY[0x2822009F8](sub_2193CC788, 0, 0);
  }

  v1[418] = v1[327];
  return MEMORY[0x282200928](v1 + 82, v1 + 345, sub_2193CBEC4, v1 + 394);
}

uint64_t sub_2193CBEE0()
{
  v39 = *(v0 + 3192);
  v37 = *(v0 + 2856);
  v1 = *(v0 + 2760);
  v2 = MEMORY[0x277D84F90];
  v47 = MEMORY[0x277D84F90];
  v33 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);
  v32 = (63 - v4) >> 6;
  v36 = *MEMORY[0x277D32220];
  v35 = (*(v0 + 2952) + 104);
  v38 = *(v0 + 2760);
  v6 = swift_bridgeObjectRetain_n();
  v11 = 0;
  v34 = v0;
  *(v0 + 3352) = v2;
  if (v5)
  {
    while (1)
    {
LABEL_8:
      v13 = __clz(__rbit64(v5)) | (v11 << 6);
      v14 = *(*(v38 + 48) + 8 * v13);
      v15 = (*(v38 + 56) + 32 * v13);
      v17 = *v15;
      v16 = v15[1];
      v18 = v15[2];
      v19 = v15[3];
      (*v35)(*(v0 + 3000), v36, *(v0 + 2904));
      v20 = *(v37 + 136);
      v21 = *(v37 + 144);
      v40 = *(v39 + 16);
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      v42 = v21;
      v43 = v20;
      swift_unknownObjectRetain();
      v45 = v17;
      v46 = v16;
      v44 = v18;
      if (v40)
      {

        v22 = sub_21931F2C4(v14);
        if ((v23 & 1) == 0)
        {
          v24 = v14;
          v41 = 0;
          goto LABEL_14;
        }

        v41 = *(*(v39 + 56) + 8 * v22);
      }

      else
      {
        v41 = 0;
      }

      v24 = v14;

LABEL_14:
      v25 = *(v0 + 3344);
      v26 = *(v0 + 3288);
      v27 = *(v0 + 3048);
      v28 = *(v0 + 3000);
      v29 = type metadata accessor for TagFeedServiceConfig(0);
      swift_getObjectType();
      v30 = v26;

      swift_unknownObjectRetain();
      sub_218CBAC4C(v24, v45, v46, v44, v19, v30, v27, v28, v25, v42, v43, v41, v29);
      MEMORY[0x21CECC690]();
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      v5 &= v5 - 1;
      sub_219BF5A54();

      v0 = v34;
      *(v34 + 3352) = v47;
      if (!v5)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return MEMORY[0x282200920](v6, v7, v8, v9, v10);
    }

    if (v12 >= v32)
    {
      break;
    }

    v5 = *(v33 + 8 * v12);
    ++v11;
    if (v5)
    {
      v11 = v12;
      goto LABEL_8;
    }
  }

  v8 = sub_2193CC270;
  v6 = v0 + 1296;
  v7 = v0 + 2664;
  v9 = v0 + 3200;

  return MEMORY[0x282200920](v6, v7, v8, v9, v10);
}

uint64_t sub_2193CC340()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 3352);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2193CC3E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 3368) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2193CC544, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_2193CC544()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2193CC5B0()
{

  return MEMORY[0x282200920](v0 + 1296, v0 + 2664, sub_2193CC61C, v0 + 2720, v1);
}

uint64_t sub_2193CC6EC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2193CC788()
{

  return MEMORY[0x282200920](v0 + 1296, v0 + 2664, sub_2193CC800, v0 + 2960, v1);
}

uint64_t sub_2193CC8D0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2193CC96C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2193CC98C, 0, 0);
}

uint64_t sub_2193CC98C()
{
  v1 = v0[3];
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v0[4] = (*(v3 + 8))(v2, v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_218D3C4E4;
  v5 = v0[2];

  return MEMORY[0x2821D23D8](v5);
}

uint64_t sub_2193CCA68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2193CCA8C, 0, 0);
}

uint64_t sub_2193CCA8C()
{
  v1 = [*(v0[3] + 32) appConfiguration];
  v0[5] = v1;
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_2193CCB48;
  v3 = v0[4];

  return sub_2193CCD28(v3, v1);
}

uint64_t sub_2193CCB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 56) = v4;

  if (v4)
  {
    v11 = sub_2193CCCC4;
  }

  else
  {
    swift_unknownObjectRelease();
    v10[8] = a4;
    v10[9] = a3;
    v10[10] = a2;
    v10[11] = a1;
    v11 = sub_2193CCC98;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_2193CCC98()
{
  v1 = *(v0 + 16);
  v2 = vextq_s8(*(v0 + 64), *(v0 + 64), 8uLL);
  *v1 = vextq_s8(*(v0 + 80), *(v0 + 80), 8uLL);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_2193CCCC4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2193CCD28(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  sub_2193D01B8(0);
  v3[11] = v4;
  v3[12] = swift_task_alloc();
  sub_2193D024C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v5 = sub_219BDB954();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2193CCEB4, 0, 0);
}

uint64_t sub_2193CCEB4()
{
  v1 = *(v0 + 72);
  v2 = *(*(v0 + 64) + 32);
  swift_unknownObjectRetain();
  v3 = sub_2193D02FC(v2, v1, 1);
  *(v0 + 176) = v3;
  *(v0 + 216) = v4;
  if (v4 != 0xFF)
  {
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = *(v0 + 136);
    v8 = v3;
    v9 = v4;
    v10 = sub_2193CF1FC(v3, v4);
    v11 = *(v6 + 48);
    if (v11(v7, 1, v5, v10) == 1)
    {
      sub_218838478(*(v0 + 136));
      sub_2193D0164();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();
      sub_2193D0CB4(v8, v9);

      v13 = *(v0 + 8);

      return v13();
    }

    v17 = *(v0 + 168);
    v18 = *(v0 + 144);
    v19 = *(v0 + 152);
    v20 = *(v0 + 120);
    v21 = *(v0 + 72);
    v54 = *(v19 + 32);
    v54(v17, *(v0 + 136), v18);
    v22 = v2;
    swift_unknownObjectRetain();
    v23 = sub_2193D02FC(v22, v21, 0);
    v25 = v24;
    LODWORD(v22) = ~v24;
    *(v0 + 184) = v23;
    *(v0 + 217) = v24;
    (*(v19 + 16))(v20, v17, v18);
    v26 = *(v19 + 56);
    v26(v20, 0, 1, v18);
    v56 = v23;
    v57 = v26;
    v55 = v25;
    if (v22)
    {
      v27 = v23;
      sub_2193CF1FC(v23, v25);
      sub_2193D0CB4(v23, v25);
    }

    else
    {
      v26(*(v0 + 112), 1, 1, *(v0 + 144));
    }

    v28 = *(v0 + 144);
    v29 = *(v0 + 112);
    v30 = *(v0 + 96);
    v31 = *(*(v0 + 88) + 48);
    sub_2188383F8(*(v0 + 120), v30);
    sub_2188383F8(v29, v30 + v31);
    v32 = (v11)(v30, 1, v28);
    v33 = *(v0 + 144);
    if (v32 == 1)
    {
      v34 = *(v0 + 120);
      sub_218838478(*(v0 + 112));
      sub_218838478(v34);
      if ((v11)(v30 + v31, 1, v33) == 1)
      {
        sub_218838478(*(v0 + 96));
        v57(*(v0 + 128), 1, 1, *(v0 + 144));
LABEL_22:
        v50 = swift_task_alloc();
        *(v0 + 192) = v50;
        *v50 = v0;
        v50[1] = sub_2193CD450;
        v51 = *(v0 + 168);
        v52 = *(v0 + 128);
        v53 = *(v0 + 64);

        return sub_21930C338(v53, v51, v52);
      }
    }

    else
    {
      sub_2188383F8(*(v0 + 96), *(v0 + 104));
      if ((v11)(v30 + v31, 1, v33) != 1)
      {
        v42 = *(v0 + 152);
        v41 = *(v0 + 160);
        v43 = *(v0 + 144);
        v45 = *(v0 + 112);
        v44 = *(v0 + 120);
        v46 = *(v0 + 96);
        v47 = *(v0 + 104);
        v54(v41, v30 + v31, v43);
        sub_21877CAB0(&qword_280EE9D20, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v48 = sub_219BF53A4();
        v49 = *(v42 + 8);
        v49(v41, v43);
        sub_218838478(v45);
        sub_218838478(v44);
        v49(v47, v43);
        sub_218838478(v46);
        v23 = v56;
        v39 = v57;
        if (v48)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }

      v35 = *(v0 + 144);
      v36 = *(v0 + 152);
      v37 = *(v0 + 120);
      v38 = *(v0 + 104);
      sub_218838478(*(v0 + 112));
      sub_218838478(v37);
      (*(v36 + 8))(v38, v35);
    }

    sub_2193D0CC8(*(v0 + 96));
    v39 = v57;
LABEL_18:
    if (v55 != 0xFF)
    {
      v40 = v23;
      sub_2193CF1FC(v23, v55);
      sub_2193D0CB4(v23, v55);
      goto LABEL_22;
    }

LABEL_21:
    v39(*(v0 + 128), 1, 1, *(v0 + 144));
    goto LABEL_22;
  }

  v15 = swift_task_alloc();
  *(v0 + 208) = v15;
  *v15 = v0;
  v15[1] = sub_2193CD7A0;
  v16 = *(v0 + 64);

  return sub_21930E6A4(v16);
}

uint64_t sub_2193CD450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[2] = v5;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a3;
  v6[6] = a4;
  v6[7] = v4;
  v6[25] = v4;

  if (v4)
  {
    v7 = sub_2193CD698;
  }

  else
  {
    v7 = sub_2193CD570;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2193CD570()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 217);
  sub_2193D0CB4(*(v0 + 176), *(v0 + 216));
  sub_2193D0CB4(v1, v6);
  sub_218838478(v5);
  (*(v4 + 8))(v2, v3);
  v11 = *(v0 + 32);
  v12 = *(v0 + 24);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);

  v9 = *(v0 + 8);

  return v9(v12, v11, v7, v8);
}

uint64_t sub_2193CD698()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 217);
  sub_2193D0CB4(*(v0 + 176), *(v0 + 216));
  sub_2193D0CB4(v1, v6);
  sub_218838478(v5);
  (*(v4 + 8))(v2, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2193CD7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;

  v11 = *(v6 + 8);
  if (!v4)
  {
    v7 = a1;
    v8 = a2;
    v9 = a3;
    v10 = a4;
  }

  return v11(v7, v8, v9, v10);
}

uint64_t sub_2193CD9B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2193CD9D0, 0, 0);
}

uint64_t sub_2193CD9D0()
{
  v1 = *(v0 + 24);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_2193CDA88;

  return MEMORY[0x282193090](v2, v3);
}

uint64_t sub_2193CDA88(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_2190738D0, 0, 0);
  }
}

uint64_t sub_2193CDBD4(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_219BF4264();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = sub_219BF37F4();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2193CDCFC, 0, 0);
}

uint64_t sub_2193CDCFC()
{
  v1 = *(*(v0 + 40) + 32);
  if ([v1 feedConfiguration] == 8 && (v2 = objc_msgSend(objc_msgSend(v1, sel_backingTag), sel_asSportsEvent), *(v0 + 112) = v2, swift_unknownObjectRelease(), v2))
  {
    (*(*(v0 + 96) + 104))(*(v0 + 104), **(&unk_278242C68 + *(*(v0 + 40) + 56)), *(v0 + 88));
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v3 = qword_280F61708;
    *(v0 + 120) = qword_280F61708;
    sub_2186F20D4(0);
    *(v0 + 128) = v4;
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_219C09EC0;
    v6 = [v2 identifier];
    v7 = sub_219BF5414();
    v9 = v8;

    v10 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v11 = sub_2186FC3BC();
    *(v0 + 136) = v11;
    *(v5 + 64) = v11;
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    v12 = sub_219BF37E4();
    *(v5 + 96) = v10;
    *(v5 + 104) = v11;
    *(v5 + 72) = v12;
    *(v5 + 80) = v13;
    v14 = sub_219BF6214();
    sub_219BE5314("Will fetch sports event visualization results for %{public}@ for sports data context %{public}@", 95, 2, &dword_2186C1000, v3, v14, v5);

    *(v0 + 144) = CACurrentMediaTime();
    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *v15 = v0;
    v15[1] = sub_2193CDFB0;
    v16 = *(v0 + 104);
    v17 = *(v0 + 80);
    v18 = *(v0 + 48);

    return sub_2193CF328(v17, v18, v2, v16);
  }

  else
  {

    v20 = *(v0 + 8);
    v21 = *(v0 + 40);

    return v20(v21, 0);
  }
}

uint64_t sub_2193CDFB0()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_2193CE2C8;
  }

  else
  {
    v2 = sub_2193CE0C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2193CE0C4()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[12];
  v22 = v0[13];
  v21 = v0[11];
  v19 = v0[15];
  v20 = v0[10];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09EC0;
  v8 = [v2 identifier];
  v9 = sub_219BF5414();
  v11 = v10;

  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = v1;
  *(v7 + 32) = v9;
  *(v7 + 40) = v11;
  sub_219BF5CD4();
  v12 = MEMORY[0x277D83A80];
  *(v7 + 96) = MEMORY[0x277D839F8];
  *(v7 + 104) = v12;
  *(v7 + 72) = v13;
  v14 = sub_219BF6214();
  sub_219BE5314("Finished fetching visualizations for event %{public}@, time=%fms", 64, 2, &dword_2186C1000, v19, v14, v7);

  (*(v5 + 16))(v4, v20, v6);
  sub_219BF4424();
  swift_allocObject();
  v15 = sub_219BF43C4();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v20, v6);
  (*(v3 + 8))(v22, v21);

  v16 = v0[1];
  v17 = v0[5];

  return v16(v17, v15);
}

uint64_t sub_2193CE2C8(uint64_t a1)
{
  if (qword_280E8D818 != -1)
  {
    swift_once();
  }

  v2 = v1[20];
  v3 = v1[17];
  v4 = v1[14];
  v5 = v1[12];
  v21 = v1[11];
  v22 = v1[13];
  v20 = qword_280F61718;
  v19 = sub_219BF61F4();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C0B8C0;
  v7 = [v4 identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  v11 = MEMORY[0x277D837D0];
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = v3;
  *(v6 + 32) = v8;
  *(v6 + 40) = v10;
  sub_219BF5CD4();
  v12 = MEMORY[0x277D83A80];
  *(v6 + 96) = MEMORY[0x277D839F8];
  *(v6 + 104) = v12;
  v1[2] = 0;
  *(v6 + 72) = v13;
  v1[3] = 0xE000000000000000;
  v1[4] = v2;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v14 = v1[2];
  v15 = v1[3];
  *(v6 + 136) = v11;
  *(v6 + 144) = v3;
  *(v6 + 112) = v14;
  *(v6 + 120) = v15;
  sub_219BE5314("Failed to fetch sport event visualization result in tag feed service config, event=%{public}@, time=%fms, error=%{public}@", 122, 2, &dword_2186C1000, v20, v19, v6);

  swift_unknownObjectRelease();
  (*(v5 + 8))(v22, v21);

  v16 = v1[1];
  v17 = v1[5];

  return v16(v17, 0);
}

uint64_t sub_2193CE504(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_218E5F004;

  return sub_2193CAB80(v3);
}

uint64_t sub_2193CE5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2193CE5C4, 0, 0);
}

uint64_t sub_2193CE5C4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2193CE660;
  v2 = *(v0 + 32);

  return sub_21930A11C(v2);
}

uint64_t sub_2193CE660(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_218C4B1D8, 0, 0);
}

uint64_t sub_2193CE760(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2193CE780, 0, 0);
}

uint64_t sub_2193CE780()
{
  v1 = *(v0 + 24);
  v2 = v1[10];
  v3 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v2);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_2193CE838;

  return MEMORY[0x282193090](v2, v3);
}

uint64_t sub_2193CE838(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_2193D1B58, 0, 0);
  }
}

uint64_t sub_2193CE984(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2193CE9A4, 0, 0);
}

uint64_t sub_2193CE9A4()
{
  v1 = v0[3];
  v2 = v1[15];
  v3 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v2);
  v0[4] = (*(v3 + 8))(v2, v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2193CEA80;
  v5 = v0[2];

  return MEMORY[0x2821D23D8](v5);
}

uint64_t sub_2193CEA80()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2193D1B5C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2193CEBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_2193CEC5C;

  return sub_2193CED5C(a3);
}

uint64_t sub_2193CEC5C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_218E63F1C, 0, 0);
}

uint64_t sub_2193CED5C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2193CED7C, 0, 0);
}

uint64_t sub_2193CED7C()
{
  v0[2] = v0[3];

  v1 = swift_task_alloc();
  v0[5] = v1;
  sub_2193D024C(0, &qword_280E8F178, type metadata accessor for TagFeedServiceContext, MEMORY[0x277D83940]);
  v3 = v2;
  sub_2193D19C4(0);
  v5 = v4;
  v6 = sub_2193D1A68();
  *v1 = v0;
  v1[1] = sub_2193CEE9C;
  v7 = v0[4];

  return MEMORY[0x2821D2738](&unk_219C78660, v7, v3, v5, v6);
}

uint64_t sub_2193CEE9C(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2193CEFBC, 0, 0);
}

void sub_2193CEFBC()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    v5 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return;
      }

      v7 = *(v4 - 1);
      v6 = *v4;
      swift_retain_n();
      swift_retain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = sub_21931F2C4(v7);
      v11 = v5[2];
      v12 = (v10 & 1) == 0;
      v13 = __OFADD__(v11, v12);
      v14 = v11 + v12;
      if (v13)
      {
        goto LABEL_25;
      }

      v15 = v10;
      if (v5[3] < v14)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_11;
      }

      v19 = v9;
      sub_219495728();
      v9 = v19;
      if (v15)
      {
LABEL_3:
        *(v5[7] + 8 * v9) = v6;

        goto LABEL_4;
      }

LABEL_12:
      v5[(v9 >> 6) + 8] |= 1 << v9;
      *(v5[6] + 8 * v9) = v7;
      *(v5[7] + 8 * v9) = v6;

      v17 = v5[2];
      v13 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v13)
      {
        goto LABEL_26;
      }

      v5[2] = v18;
LABEL_4:
      ++v3;
      v4 += 2;
      if (v2 == v3)
      {
        v0 = v21;
        goto LABEL_18;
      }
    }

    sub_2194863A4(v14, isUniquelyReferenced_nonNull_native);
    v9 = sub_21931F2C4(v7);
    if ((v15 & 1) != (v16 & 1))
    {
      type metadata accessor for TagFeedServiceContext(0);

      sub_219BF79A4();
      return;
    }

LABEL_11:
    if (v15)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  v5 = MEMORY[0x277D84F98];
LABEL_18:

  v20 = *(v0 + 8);

  v20(v5);
}

double sub_2193CF1FC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_27CC07FC0 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  sub_219BDC8B4();
  sub_2193D0D24(a1, v2);

  sub_219BDC8A4();

  MEMORY[0x21CECC330]();

  sub_219BDB914();

  return result;
}

uint64_t sub_2193CF328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  sub_219BF4CF4();
  v4[9] = swift_task_alloc();
  v5 = sub_219BF43B4();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2193CF418, 0, 0);
}

uint64_t sub_2193CF418()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_219BF4CE4();
  sub_219BF4C04();
  (*(v2 + 104))(v1, *MEMORY[0x277D343F8], v3);
  v0[13] = sub_219BF2F54();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_2193CF570;
  v5 = v0[5];

  return MEMORY[0x2821D23D8](v5);
}

uint64_t sub_2193CF570()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_2193CF94C;
  }

  else
  {

    v2 = sub_2193CF68C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2193CF68C()
{
  v1 = sub_219BF4234();
  if (v1 >> 62)
  {
    v4 = sub_219BF7214();

    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v2)
    {
LABEL_3:

      v3 = v0[1];
      goto LABEL_8;
    }
  }

  v5 = v0[5];
  sub_2193D0164();
  v6 = swift_allocError();
  *v7 = 2;
  swift_willThrow();
  v8 = sub_219BF4264();
  (*(*(v8 - 8) + 8))(v5, v8);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v9 = v0[7];
  v10 = qword_280F61708;
  v11 = sub_219BF61F4();
  sub_2186F20D4(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  v13 = [v9 identifier];
  v14 = sub_219BF5414();
  v16 = v15;

  v17 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v18 = sub_2186FC3BC();
  *(v12 + 64) = v18;
  v0[2] = 0;
  *(v12 + 32) = v14;
  *(v12 + 40) = v16;
  v0[3] = 0xE000000000000000;
  v0[4] = v6;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v19 = v0[2];
  v20 = v0[3];
  *(v12 + 96) = v17;
  *(v12 + 104) = v18;
  *(v12 + 72) = v19;
  *(v12 + 80) = v20;
  sub_219BE5314("Failed to fetch sport event visualization for event %{public}@, error=%{public}@", 80, 2, &dword_2186C1000, v10, v11, v12);

  swift_willThrow();

  v3 = v0[1];
LABEL_8:

  return v3();
}

uint64_t sub_2193CF94C()
{

  v1 = v0[15];
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = qword_280F61708;
  v4 = sub_219BF61F4();
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  v6 = [v2 identifier];
  v7 = sub_219BF5414();
  v9 = v8;

  v10 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v11 = sub_2186FC3BC();
  *(v5 + 64) = v11;
  v0[2] = 0;
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v12 = v0[2];
  v13 = v0[3];
  *(v5 + 96) = v10;
  *(v5 + 104) = v11;
  *(v5 + 72) = v12;
  *(v5 + 80) = v13;
  sub_219BE5314("Failed to fetch sport event visualization for event %{public}@, error=%{public}@", 80, 2, &dword_2186C1000, v3, v4, v5);

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_2193CFB3C(uint64_t a1, uint64_t *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2193CFBD8;

  return sub_2193CDBD4(v3);
}

uint64_t sub_2193CFBD8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 32) = a1;
  *(v3 + 40) = a2;

  return MEMORY[0x2822009F8](sub_2193CFCD8, 0, 0);
}

uint64_t sub_2193CFCD8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 32);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_2193CFCF8()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2193CFD50()
{
  sub_2193CFCF8();

  return swift_deallocClassInstance();
}

uint64_t sub_2193CFD84(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  sub_2193D024C(0, &qword_280EE6E58, type metadata accessor for TagFeedServiceConfig, MEMORY[0x277D6CF30]);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;

  return sub_219BE2F54();
}

uint64_t sub_2193CFEC8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_2193CC96C(a1, v1);
}

uint64_t sub_2193CFF64(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_2193CCA68(a1, v5, v4);
}

uint64_t sub_2193D0010(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_2193CD9B0(a1, v1);
}

unint64_t sub_2193D00AC()
{
  result = qword_280E8DDC0;
  if (!qword_280E8DDC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DDC0);
  }

  return result;
}

uint64_t sub_2193D00F8()
{
  v0 = sub_218845F78(&unk_282A27290);
  result = sub_2189AD3D8(&unk_282A272B0);
  qword_27CCD89E8 = v0;
  return result;
}

uint64_t sub_2193D0138(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_219BF7214();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_2193D0164()
{
  result = qword_27CC19C48;
  if (!qword_27CC19C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19C48);
  }

  return result;
}

void sub_2193D01B8(uint64_t a1)
{
  if (!qword_280EE9CF0)
  {
    sub_2193D024C(255, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE9CF0);
    }
  }
}

void sub_2193D024C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2193D02B0(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

void *sub_2193D02FC(void *a1, void *a2, char a3)
{
  if (qword_280EE95E8 != -1)
  {
    swift_once();
  }

  if ((sub_219BDC834() & 1) == 0)
  {

    swift_unknownObjectRelease();
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    v7 = [a1 feedConfiguration];
    v6 = 0;
LABEL_11:
    v9 = 0;
    v10 = 1;
    if (v7 == 8)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v6 = [a1 alternativeFeedDescriptor];
  v7 = [a1 feedConfiguration];
  if (!v6)
  {
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v6 feedConfiguration];
  v7 = v8;
  v10 = 0;
  if (v7 == 8)
  {
    goto LABEL_7;
  }

LABEL_12:
  if (!v7)
  {
    if (v10)
    {
      goto LABEL_14;
    }

    if (v9 > 5)
    {
      if (v9 == 6)
      {
        v24 = [objc_msgSend(a1 backingTag)];
        swift_unknownObjectRelease();
        if (v24)
        {
          [v24 sportsType];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          return a1;
        }

        goto LABEL_7;
      }

      if (v9 == 7)
      {
LABEL_7:
        swift_unknownObjectRelease();

        return a1;
      }
    }

    else
    {
      if (v9 == 4)
      {
        goto LABEL_7;
      }

      if (v9 == 5)
      {
LABEL_26:
        v20 = [objc_msgSend(v6 backingTag)];
        swift_unknownObjectRelease();
        v21 = sub_219BF5414();
        v23 = v22;

        sub_2193D02B0(v21, v23);
        swift_unknownObjectRelease();
        return a1;
      }
    }

LABEL_14:
    v12 = [a2 puzzlesConfig];
    v13 = [v12 puzzleTypes];

    v14 = sub_219BF5924();
    v15 = [objc_msgSend(a1 backingTag)];
    swift_unknownObjectRelease();
    v16 = sub_219BF5414();
    v18 = v17;

    v45[0] = v16;
    v45[1] = v18;
    MEMORY[0x28223BE20](v19);
    v44[2] = v45;
    LOBYTE(v16) = sub_2186D128C(sub_2186D1338, v44, v14);

    if (v16)
    {
      goto LABEL_77;
    }

LABEL_54:
    v28 = [a1 backingChannel];
    if (v28)
    {
      v29 = v28;
      if ([v28 isLocal])
      {
        v30 = [objc_msgSend(a1 backingTag)];
        swift_unknownObjectRelease();
        if (v30)
        {
          goto LABEL_57;
        }
      }

      if ([swift_unknownObjectRetain() isNewspaper])
      {
        goto LABEL_62;
      }

      if (qword_27CC08518 != -1)
      {
        swift_once();
      }

      v31 = qword_27CCD89E8;
      v32 = [v29 identifier];
      v33 = sub_219BF5414();
      v35 = v34;

      LOBYTE(v31) = sub_2188537B8(v33, v35, v31);

      if (v31)
      {
LABEL_62:
        v36 = [objc_msgSend(a1 backingTag)];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v36)
        {
LABEL_57:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          return a1;
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      if (![v29 isPuzzleType])
      {
        [v29 isRecipeCatalog];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        return a1;
      }

      swift_unknownObjectRelease();
LABEL_77:
      swift_unknownObjectRelease();

      return a1;
    }

    v37 = [objc_msgSend(a1 backingTag)];
    swift_unknownObjectRelease();
    if (v37)
    {
      v38 = [v37 sportsType];
      swift_unknownObjectRelease();
      if (v38 <= 2)
      {
        if (v38)
        {
          goto LABEL_77;
        }
      }

      else if ((v38 - 4) >= 7)
      {
        goto LABEL_77;
      }
    }

    [objc_msgSend(a1 backingTag)];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return a1;
  }

  if ((v10 & 1) == 0)
  {
    if (v9 == 6)
    {
      if (v7 > 2)
      {
        if (v7 == 12 || v7 == 9 || v7 == 3)
        {
          goto LABEL_7;
        }

        goto LABEL_54;
      }

      if (v7 != 1)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }

    if (v9 == 5)
    {
      goto LABEL_26;
    }
  }

  if (v7 > 8)
  {
    switch(v7)
    {
      case 9:
        goto LABEL_7;
      case 10:
        if (v9 == 11)
        {
          v25 = v10;
        }

        else
        {
          v25 = 1;
        }

        if ((v25 & 1) == 0)
        {
          goto LABEL_7;
        }

        break;
      case 12:
        goto LABEL_7;
    }

    goto LABEL_54;
  }

  if (v7 != 1)
  {
    if (v7 == 3)
    {
      goto LABEL_7;
    }

    goto LABEL_54;
  }

LABEL_50:
  if (![a1 backingChannel])
  {
    goto LABEL_54;
  }

  swift_unknownObjectRelease();
  v26 = [a1 backingChannel];
  if (!v26)
  {
    goto LABEL_7;
  }

  v27 = v26;
  if ([v26 isLocal] || objc_msgSend(v27, sel_isNewspaper))
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_27CC08518 != -1)
    {
      swift_once();
    }

    v39 = qword_27CCD89E8;
    v40 = [v27 identifier];
    v41 = sub_219BF5414();
    v43 = v42;

    sub_2188537B8(v41, v43, v39);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return a1;
}

void sub_2193D0CB4(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

uint64_t sub_2193D0CC8(uint64_t a1)
{
  sub_2193D01B8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2193D0D24(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      if (qword_27CC07FE0 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13718;
      break;
    case 2:
      if (qword_27CC07FE8 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13720;
      break;
    case 3:
      if (qword_27CC07FF0 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13728;
      break;
    case 4:
      if (qword_27CC07FF8 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13730;
      break;
    case 5:
      if (qword_27CC08000 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13738;
      break;
    case 6:
      if (qword_27CC08008 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13740;
      break;
    case 7:
      if (qword_27CC08010 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13748;
      break;
    case 8:
      if (qword_27CC08018 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13750;
      break;
    case 9:
      if (qword_27CC07FD0 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13708;
      break;
    case 10:
      if (qword_27CC07FD8 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13710;
      break;
    case 11:
      if (qword_27CC08020 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13758;
      break;
    case 12:
      if (qword_27CC08028 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13760;
      break;
    case 13:
      if (qword_27CC08030 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13768;
      break;
    case 14:
      if (qword_27CC08038 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13770;
      break;
    case 15:
      if (qword_27CC08050 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13788;
      break;
    case 16:
      if (qword_27CC08058 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13790;
      break;
    case 17:
      if (qword_27CC08060 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13798;
      break;
    case 18:
      if (qword_27CC08068 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC137A0;
      break;
    case 19:
      if (qword_27CC08070 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC137A8;
      break;
    case 20:
      if (qword_27CC08078 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC137B0;
      break;
    case 21:
      if (qword_27CC08080 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC137B8;
      break;
    case 22:
      if (qword_27CC08088 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC137C0;
      break;
    case 23:
      if (qword_27CC08090 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC137C8;
      break;
    case 24:
      if (qword_27CC08098 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC137D0;
      break;
    case 25:
      if (qword_27CC080A0 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC137D8;
      break;
    case 26:
      if (qword_27CC080A8 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC137E0;
      break;
    case 27:
      if (qword_27CC080B0 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC137E8;
      break;
    case 28:
      if (qword_27CC08040 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13778;
      break;
    case 29:
      if (qword_27CC08048 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13780;
      break;
    default:
      if (qword_27CC07FC8 != -1)
      {
        swift_once();
      }

      v2 = &qword_27CC13700;
      break;
  }

  return *v2;
}

uint64_t sub_2193D1464(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187609C8;

  return sub_2193CE5A0(a1, v5, v4);
}

void sub_2193D1510(uint64_t a1)
{
  if (!qword_280E8FC48)
  {
    type metadata accessor for TagFeedServiceContext(255);
    sub_21877CAB0(&unk_280EC9720, type metadata accessor for TagFeedServiceContext, &unk_219C7A2EC);
    v1 = sub_219BF52A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8FC48);
    }
  }
}

uint64_t sub_2193D15AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_2193CE760(a1, v1);
}

uint64_t sub_2193D1648(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609C8;

  return sub_2193CE984(a1, v1);
}

uint64_t sub_2193D16E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187609C8;

  return sub_2193CEBBC(a1, v5, v4);
}

void sub_2193D1790(uint64_t a1)
{
  if (!qword_280E8FC58)
  {
    type metadata accessor for TagFeedServiceContext(255);
    sub_2193D024C(255, &unk_280E8FE30, MEMORY[0x277D34410], MEMORY[0x277D83D88]);
    sub_21877CAB0(&unk_280EC9720, type metadata accessor for TagFeedServiceContext, &unk_219C7A2EC);
    v1 = sub_219BF52A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8FC58);
    }
  }
}

uint64_t sub_2193D186C(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2193CE504(a1, a2);
}

uint64_t sub_2193D1918(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_2193CFB3C(a1, a2);
}

void sub_2193D19C4(uint64_t a1)
{
  if (!qword_280EC9740)
  {
    type metadata accessor for TagFeedServiceContext(255);
    sub_2193D024C(255, &unk_280E8FE30, MEMORY[0x277D34410], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EC9740);
    }
  }
}

unint64_t sub_2193D1A68()
{
  result = qword_280E8F168;
  if (!qword_280E8F168)
  {
    sub_2193D024C(255, &qword_280E8F178, type metadata accessor for TagFeedServiceContext, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F168);
  }

  return result;
}

unint64_t sub_2193D1B04()
{
  result = qword_27CC19C50;
  if (!qword_27CC19C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC19C50);
  }

  return result;
}

uint64_t sub_2193D1B60(uint64_t a1)
{
  sub_2193D4D6C(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v4 = v3;
  v5 = *(v3 - 1);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v8 = v26 - v7;
  v9 = sub_219BE40B4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2193D1F0C())
  {
    v28 = v4;
    __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
    v27 = a1;
    (*(v10 + 104))(v12, *MEMORY[0x277D34F40], v9);
    v26[1] = v1;
    sub_219BE42B4();
    (*(v10 + 8))(v12, v9);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = v28;
    (*(v5 + 16))(v8, v27, v28);
    v15 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    (*(v5 + 32))(v16 + v15, v8, v14);
    v17 = sub_219BE2E54();
    sub_219BE2F74();
  }

  else
  {
    v28 = __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
    type metadata accessor for AlertMagazineContentUnavailableInStoreFront();
    v18 = swift_allocObject();
    (*(v5 + 16))(v8, a1, v4);
    v19 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v20 = v4;
    v21 = v19 + v6;
    v22 = (v19 + v6) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    (*(v5 + 32))(v23 + v19, v8, v20);
    *(v23 + v21) = 0;
    *(v23 + v22 + 8) = v1;
    v24 = *v28;

    sub_218C4E47C(a1, v18, sub_2193D4A0C, v23, v24);
  }

  return 1;
}

BOOL sub_2193D1F0C()
{
  v0 = sub_219BE22B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE22F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D4D6C(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  sub_219BE2594();
  sub_219BE22D4();
  (*(v5 + 8))(v7, v4);
  v8 = sub_219BE22C4();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  if (!v10)
  {
    return 0;
  }

  v13[2] = v8;
  v13[3] = v10;
  v13[0] = 0x7562746365726964;
  v13[1] = 0xE900000000000079;
  sub_2187F3BD4();
  v11 = sub_219BF7054();

  return v11 == 0;
}

uint64_t sub_2193D2144(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v85 = a3;
  v78 = sub_219BE3D64();
  v5 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v7 = &v73[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2193D4D6C(0, &qword_280EE6200, MEMORY[0x277D35380], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v73[-v9];
  v11 = sub_219BE4864();
  v80 = *(v11 - 8);
  v81 = v11;
  MEMORY[0x28223BE20](v11);
  v77 = &v73[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2193D4D6C(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v82 = v13;
  v14 = *(v13 - 8);
  v83 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v84 = &v73[-v15];
  v16 = sub_219BE40F4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v73[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = a1;
  v23 = v22;
  (*(v17 + 16))(v20, v21, v22, v18);
  v24 = *(v17 + 88);
  v86 = v20;
  v25 = v24(v20, v23);
  if (v25 != *MEMORY[0x277D34F58])
  {
    v79 = a2;
    if (v25 != *MEMORY[0x277D34F50])
    {
      result = sub_219BF78E4();
      __break(1u);
      return result;
    }

    v76 = v23;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v75 = v14;
      swift_unknownObjectRetain();

      swift_getObjectType();
      v43 = v78;
      (*(v5 + 104))(v7, *MEMORY[0x277D34D60], v78);
      v14 = v75;
      sub_219BE3F44();
      swift_unknownObjectRelease();
      (*(v5 + 8))(v7, v43);
      v45 = v80;
      v44 = v81;
      if ((*(v80 + 48))(v10, 1, v81) != 1)
      {
        v46 = v77;
        (*(v45 + 32))();
        v47 = sub_219BE47A4();
        swift_beginAccess();
        Strong = swift_weakLoadStrong();
        if (!Strong)
        {
          (*(v45 + 8))(v46, v44);
          return (*(v17 + 8))(v86, v76);
        }

        v49 = Strong;
        v79 = __swift_project_boxed_opaque_existential_1((Strong + 24), *(Strong + 48));
        type metadata accessor for AlertMagazineContentUnavailableInStoreFront();
        v78 = swift_allocObject();
        v50 = *(v14 + 16);
        v74 = v47;
        v51 = v82;
        v50(v84, v85, v82);
        v52 = (*(v14 + 80) + 16) & ~*(v14 + 80);
        v53 = v52 + v83;
        v54 = (v52 + v83) & 0xFFFFFFFFFFFFFFF8;
        v55 = swift_allocObject();
        (*(v14 + 32))(v55 + v52, v84, v51);
        *(v55 + v53) = v74 & 1;
        *(v55 + v54 + 8) = v49;
        v56 = *v79;

        sub_218C4E47C(v85, v78, sub_2193D4E18, v55, v56);

        (*(v80 + 8))(v46, v81);
LABEL_17:

        return (*(v17 + 8))(v86, v76);
      }
    }

    else
    {
      (*(v80 + 56))(v10, 1, 1, v81);
    }

    sub_2193D4C0C(v10, &qword_280EE6200, MEMORY[0x277D35380]);
    if (qword_27CC085F0 != -1)
    {
      swift_once();
    }

    v57 = sub_219BE5434();
    __swift_project_value_buffer(v57, qword_27CCD8B40);
    v58 = sub_219BE5414();
    v59 = sub_219BF61F4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2186C1000, v58, v59, "Could not get best offer. Ignoring isDirectBuy request.", v60, 2u);
      MEMORY[0x21CECF960](v60, -1, -1);
    }

    swift_beginAccess();
    v61 = swift_weakLoadStrong();
    if (!v61)
    {
      return (*(v17 + 8))(v86, v76);
    }

    v62 = v61;
    v81 = __swift_project_boxed_opaque_existential_1((v61 + 24), *(v61 + 48));
    type metadata accessor for AlertMagazineContentUnavailableInStoreFront();
    v63 = swift_allocObject();
    v64 = v84;
    v65 = v82;
    (*(v14 + 16))(v84, v85, v82);
    v66 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v67 = v66 + v83;
    v68 = (v66 + v83) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    v70 = v14;
    v71 = v69;
    (*(v70 + 32))(v69 + v66, v64, v65);
    *(v71 + v67) = 0;
    *(v71 + v68 + 8) = v62;
    v72 = *v81;

    sub_218C4E47C(v85, v63, sub_2193D4E18, v71, v72);

    goto LABEL_17;
  }

  (*(v17 + 96))(v86, v23);

  swift_beginAccess();
  v26 = swift_weakLoadStrong();
  if (v26)
  {
    v27 = v26;
    v81 = __swift_project_boxed_opaque_existential_1((v26 + 24), *(v26 + 48));
    type metadata accessor for AlertMagazineContentUnavailableInStoreFront();
    v28 = swift_allocObject();
    v29 = v84;
    v30 = v85;
    v31 = v82;
    (*(v14 + 16))(v84, v85, v82);
    v32 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v33 = v32 + v83;
    v34 = (v32 + v83) & 0xFFFFFFFFFFFFFFF8;
    v35 = swift_allocObject();
    v36 = v14;
    v37 = v35;
    (*(v36 + 32))(v35 + v32, v29, v31);
    *(v37 + v33) = 1;
    *(v37 + v34 + 8) = v27;
    v38 = *v81;

    sub_218C4E47C(v30, v28, sub_2193D4E18, v37, v38);
  }

  sub_2193D4BA0(0);
  v40 = *(v39 + 48);
  v41 = sub_219BE40D4();
  return (*(*(v41 - 8) + 8))(&v86[v40], v41);
}

uint64_t sub_2193D2ACC@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v174 = a3;
  v172 = a2;
  v189 = a4;
  v153 = sub_219BE4414();
  v171 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v160 = &v150 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2193D4D6C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v159 = &v150 - v8;
  v157 = sub_219BE40A4();
  v156 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v170 = &v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_219BE3EE4();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v161 = &v150 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_219BE4574();
  v167 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v166 = &v150 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v165 = &v150 - v13;
  v188 = sub_219BDE924();
  v192 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v155 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v182 = &v150 - v16;
  v154 = sub_219BDB954();
  v152 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v179 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D4D6C(0, &unk_280EE8E70, MEMORY[0x277D2F9F0], v6);
  MEMORY[0x28223BE20](v18 - 8);
  v175 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v180 = &v150 - v21;
  sub_2193D4D6C(0, &qword_280EE8AE0, MEMORY[0x277D30210], v6);
  MEMORY[0x28223BE20](v22 - 8);
  v164 = &v150 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v191 = &v150 - v25;
  v185 = type metadata accessor for CampaignRouteModel(0);
  MEMORY[0x28223BE20](v185);
  v173 = &v150 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v158 = &v150 - v28;
  MEMORY[0x28223BE20](v29);
  v178 = &v150 - v30;
  MEMORY[0x28223BE20](v31);
  v184 = &v150 - v32;
  v187 = sub_219BE22B4();
  v33 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v35 = &v150 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BE22F4();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v176 = &v150 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v150 - v40;
  sub_2193D4D6C(0, &qword_280EE6350, MEMORY[0x277D35078], v6);
  MEMORY[0x28223BE20](v42 - 8);
  v151 = &v150 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v168 = &v150 - v45;
  MEMORY[0x28223BE20](v46);
  v150 = &v150 - v47;
  MEMORY[0x28223BE20](v48);
  v181 = &v150 - v49;
  MEMORY[0x28223BE20](v50);
  v52 = &v150 - v51;
  MEMORY[0x28223BE20](v53);
  v55 = &v150 - v54;
  v190 = sub_219BE2574();
  sub_219BE2584();
  LODWORD(v186) = sub_2193D40B4(v55);
  sub_2193D4D6C(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v183 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  v56 = *(v37 + 8);
  v177 = v36;
  v56(v41, v36);
  v57 = sub_219BE22C4();
  v59 = v58;
  (*(v33 + 8))(v35, v187);
  if (!v59)
  {
    v191 = v55;
    v76 = v166;
    v77 = v165;
    v78 = v167;
    v79 = v169;
    v80 = v175;
    v81 = v170;
    v82 = v171;
    v83 = v192;
    v84 = v188;
    if ((v172 & 1) == 0)
    {
      v108 = v164;
      v192[7](v164, 1, 1, v188);
      sub_2193D4C7C(v191, v168, &qword_280EE6350, MEMORY[0x277D35078]);
      v110 = sub_2193D4DD0(&unk_27CC19C60, v109, type metadata accessor for BundleSubscriptionURLHandler, &unk_219C78778);
      v111 = sub_219BDD4D4();
      (*(*(v111 - 8) + 56))(v80, 1, 1, v111);
      v112 = v185;
      v113 = v173;
      v114 = &v173[*(v185 + 56)];
      *(v114 + 1) = 0;
      swift_unknownObjectWeakInit();
      v115 = v83[6];
      *v113 = 0;
      v113[1] = 0;
      if ((v115)(v108, 1, v84) == 1)
      {
        v116 = *MEMORY[0x277D301F8];
        v117 = sub_219BDE914();
        v118 = v155;
        (*(*(v117 - 8) + 104))(v155, v116, v117);
        (v83[13])(v118, *MEMORY[0x277D30200], v84);
        v119 = (v115)(v108, 1, v84);
        v120 = v118;
        v121 = v158;
        if (v119 != 1)
        {
          sub_2193D4C0C(v108, &qword_280EE8AE0, MEMORY[0x277D30210]);
        }
      }

      else
      {
        v120 = v155;
        (v83[4])(v155, v108, v84);
        v121 = v158;
      }

      v122 = v84;
      v123 = v173;
      (v83[4])(&v173[v112[5]], v120, v122);
      v124 = (v123 + v112[6]);
      *v124 = 0;
      v124[1] = 0;
      v125 = (v123 + v112[7]);
      *v125 = 0;
      v125[1] = 0;
      *(v123 + v112[8]) = v190;
      *(v123 + v112[9]) = 0;
      *(v123 + v112[11]) = 1;
      *(v114 + 1) = v110;
      swift_unknownObjectWeakAssign();
      v126 = sub_219BE4394();
      v127 = *(v126 - 8);
      v128 = *(v127 + 48);
      v129 = v168;
      if (v128(v168, 1, v126) == 1)
      {
        v130 = *MEMORY[0x277D34D80];
        v131 = sub_219BE3D74();
        v132 = v151;
        (*(*(v131 - 8) + 104))(v151, v130, v131);
        (*(v127 + 104))(v132, *MEMORY[0x277D35068], v126);
        if (v128(v129, 1, v126) != 1)
        {
          sub_2193D4C0C(v129, &qword_280EE6350, MEMORY[0x277D35078]);
        }
      }

      else
      {
        v132 = v151;
        (*(v127 + 32))(v151, v129, v126);
      }

      v103 = 0x1000000000000006;
      (*(v127 + 56))(v132, 0, 1, v126);
      sub_2193D4C7C(v132, v123 + v112[10], &qword_280EE6350, MEMORY[0x277D35078]);
      *(v123 + v112[13]) = v186 & 1;
      sub_2193D4C7C(v175, v123 + v112[12], &unk_280EE8E70, MEMORY[0x277D2F9F0]);
      sub_21899068C(v123, v121);
      v106 = swift_allocBox();
      v107 = v121;
      goto LABEL_24;
    }

    v85 = v174;
    v192 = sub_2193D44E0(v174);
    v188 = v86;
    v87 = sub_219BF59E4();
    v88 = v79;
    v89 = v78;
    v90 = v77;
    v91 = v157;
    if (v87)
    {
      if (sub_219BF59F4())
      {
        v92 = MEMORY[0x277D351E0];
LABEL_29:
        (*(v89 + 104))(v77, *v92, v88);
        v187 = sub_2193D45E0(v85);
        v134 = sub_219BF5414();
        v185 = v135;
        v186 = v134;
        (*(v89 + 16))(v76, v77, v88);
        (*(v156 + 104))(v81, *MEMORY[0x277D34F38], v91);
        v136 = *MEMORY[0x277D34D90];
        v137 = sub_219BE3D74();
        v138 = v150;
        (*(*(v137 - 8) + 104))(v150, v136, v137);
        v139 = *MEMORY[0x277D35068];
        v140 = sub_219BE4394();
        v141 = *(v140 - 8);
        (*(v141 + 104))(v138, v139, v140);
        (*(v141 + 56))(v138, 0, 1, v140);
        (*(v152 + 56))(v159, 1, 1, v154);
        (*(v82 + 104))(v160, *MEMORY[0x277D350C0], v153);
        v142 = v161;
        sub_219BE3E64();
        (*(v89 + 8))(v90, v88);
        sub_2193D4C0C(v191, &qword_280EE6350, MEMORY[0x277D35078]);
        sub_2193D4CFC(0);
        v144 = v143;
        v106 = swift_allocBox();
        v146 = v145;
        v147 = *(v144 + 48);
        (*(v162 + 32))(v145, v142, v163);
        v148 = *MEMORY[0x277D34D08];
        v149 = sub_219BE3CB4();
        result = (*(*(v149 - 8) + 104))(v146 + v147, v148, v149);
        v103 = 0xD000000000000004;
        goto LABEL_25;
      }

      if (sub_219BF5A04())
      {
        v92 = MEMORY[0x277D35170];
        goto LABEL_29;
      }
    }

    v92 = MEMORY[0x277D351D0];
    goto LABEL_29;
  }

  v60 = v191;
  v61 = v188;
  v192[7](v191, 1, 1, v188);
  v187 = v52;
  sub_2192583B4(v55, v52);
  v62 = v176;
  v175 = v57;
  sub_219BE2594();
  sub_219BE22A4();
  v56(v62, v177);
  v63 = v180;
  sub_219BDD4C4();
  sub_2193D4C0C(v55, &qword_280EE6350, MEMORY[0x277D35078]);
  v64 = sub_219BDD4D4();
  (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
  v65 = v185;
  v66 = v178;
  v67 = &v178[*(v185 + 56)];
  *(v67 + 1) = 0;
  swift_unknownObjectWeakInit();
  *v66 = v175;
  *(v66 + 1) = v59;
  v68 = v192;
  v69 = v192[6];
  v70 = (v69)(v60, 1, v61);
  v71 = v65;
  v72 = v68;
  if (v70 == 1)
  {
    v73 = *MEMORY[0x277D301F8];
    v74 = sub_219BDE914();
    v75 = v182;
    (*(*(v74 - 8) + 104))(v182, v73, v74);
    (v72[13])(v75, *MEMORY[0x277D30200], v61);
    if ((v69)(v191, 1, v61) != 1)
    {
      sub_2193D4C0C(v191, &qword_280EE8AE0, MEMORY[0x277D30210]);
    }
  }

  else
  {
    v75 = v182;
    (v68[4])(v182, v191, v61);
  }

  (v72[4])(&v66[v71[5]], v75, v61);
  v93 = &v66[v71[6]];
  *v93 = 0;
  *(v93 + 1) = 0;
  v94 = &v66[v71[7]];
  *v94 = 0;
  *(v94 + 1) = 0;
  *&v66[v71[8]] = v190;
  *&v66[v71[9]] = 0;
  v95 = v66;
  v66[v71[11]] = 1;
  *(v67 + 1) = 0;
  swift_unknownObjectWeakAssign();
  v96 = sub_219BE4394();
  v97 = *(v96 - 8);
  v98 = *(v97 + 48);
  v99 = v187;
  if (v98(v187, 1, v96) == 1)
  {
    v100 = *MEMORY[0x277D34D80];
    v101 = sub_219BE3D74();
    v102 = v181;
    (*(*(v101 - 8) + 104))(v181, v100, v101);
    (*(v97 + 104))(v102, *MEMORY[0x277D35068], v96);
    if (v98(v99, 1, v96) != 1)
    {
      sub_2193D4C0C(v99, &qword_280EE6350, MEMORY[0x277D35078]);
    }
  }

  else
  {
    v102 = v181;
    (*(v97 + 32))(v181, v99, v96);
  }

  v103 = 0x1000000000000006;
  (*(v97 + 56))(v102, 0, 1, v96);
  sub_2193D4C7C(v102, v95 + v71[10], &qword_280EE6350, MEMORY[0x277D35078]);
  *(v95 + v71[13]) = v186 & 1;
  sub_2193D4C7C(v63, v95 + v71[12], &unk_280EE8E70, MEMORY[0x277D2F9F0]);
  v104 = v184;
  sub_21899068C(v95, v184);
  v106 = swift_allocBox();
  v107 = v104;
LABEL_24:
  result = sub_21899068C(v107, v105);
LABEL_25:
  *v189 = v103 | v106;
  return result;
}

uint64_t sub_2193D40B4(uint64_t a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_2193D4D6C(0, &qword_280EE6350, MEMORY[0x277D35078], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  sub_2193D4D6C(0, &qword_27CC19C70, MEMORY[0x277D34D98], v2);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  v9 = sub_219BE3D74();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v22 - v14;
  sub_2192583B4(a1, v5);
  v16 = sub_219BE4394();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v5, 1, v16) == 1)
  {
    sub_2193D4C0C(v5, &qword_280EE6350, MEMORY[0x277D35078]);
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_4:
    sub_2193D4C0C(v8, &qword_27CC19C70, MEMORY[0x277D34D98]);
    return 0;
  }

  sub_219BE4384();
  (*(v17 + 8))(v5, v16);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  (*(v10 + 32))(v15, v8, v9);
  (*(v10 + 104))(v12, *MEMORY[0x277D34D88], v9);
  sub_2193D4DD0(&qword_27CC19C78, 255, MEMORY[0x277D34D98], MEMORY[0x277D34DA0]);
  sub_219BF5874();
  sub_219BF5874();
  if (v22[2] == v22[0] && v22[3] == v22[1])
  {
    v19 = *(v10 + 8);
    v19(v12, v9);
    v19(v15, v9);
  }

  else
  {
    v20 = sub_219BF78F4();
    v21 = *(v10 + 8);
    v21(v12, v9);
    v21(v15, v9);

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_2193D44E0(uint64_t a1)
{
  result = [*(a1 + 64) configuration];
  if (result)
  {
    v2 = result;
    if ([result respondsToSelector_])
    {
      v3 = [v2 paidBundleConfig];
      swift_unknownObjectRelease();
      v4 = [v3 offeredBundlePurchaseIDs];
      if (v4)
      {
        v5 = v4;
        v6 = sub_219BF5924();

        if (*(v6 + 16))
        {
          v7 = *(v6 + 32);

          return v7;
        }
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193D45E0(uint64_t a1)
{
  v1 = sub_219BE3D64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2193D4D6C(0, &qword_280EE6200, MEMORY[0x277D35380], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_219BE4864();
  v17 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  (*(v2 + 104))(v4, *MEMORY[0x277D34D60], v1);
  sub_219BE3F44();
  v11 = v1;
  v12 = v8;
  v13 = v17;
  (*(v2 + 8))(v4, v11);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_2193D4C0C(v7, &qword_280EE6200, MEMORY[0x277D35380]);
    return 1;
  }

  else
  {
    (*(v13 + 32))(v10, v7, v12);
    if (sub_219BE47C4())
    {
      v15 = sub_219BE47A4();
      (*(v13 + 8))(v10, v12);
      if (v15)
      {
        return 4;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      (*(v13 + 8))(v10, v12);
      return 5;
    }
  }
}

uint64_t sub_2193D48C8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2193D4AC0@<X0>(unint64_t *a1@<X8>)
{
  sub_2193D4D6C(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = *(v1 + v6);
  v8 = *(v1 + (v6 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_2193D2ACC(v1 + v5, v7, v8, a1);
}

void sub_2193D4BA0(uint64_t a1)
{
  if (!qword_280E8FA08)
  {
    sub_219BE40D4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8FA08);
    }
  }
}

uint64_t sub_2193D4C0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2193D4D6C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2193D4C7C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2193D4D6C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_2193D4CFC(uint64_t a1)
{
  if (!qword_27CC1DF70)
  {
    sub_219BE3EE4();
    sub_219BE3CB4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1DF70);
    }
  }
}

void sub_2193D4D6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2193D4DD0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *sub_2193D4E1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
      v6 = type metadata accessor for HistoryFeedModule();
      v7 = swift_allocObject();
      sub_2186CB1F0(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_2186CB1F0(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &protocol witness table for HistoryFeedModule;
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

uint64_t sub_2193D4F30@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for HistoryFeedDataProvider();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A93E90;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_2193D4FC8()
{
  v0 = sub_219BE3344();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HistoryFeedViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280ECAB18, &protocol descriptor for HistoryFeedStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280ECAB20, &protocol descriptor for HistoryFeedRouterType, 1);
  sub_219BE2914();
  type metadata accessor for HistoryFeedRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_280EB8758, &protocol descriptor for HistoryFeedEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EBE3E0, &protocol descriptor for HistoryFeedInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EC7FB8, &protocol descriptor for HistoryFeedTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280EBB6A0, &protocol descriptor for HistoryFeedDataManagerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  sub_219BE2914();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CF70], v0);
  sub_219BE19A4();

  (*(v1 + 8))(v3, v0);
  sub_2189860B4(0);
  sub_219BE2904();

  type metadata accessor for HistoryFeedBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, qword_280EB0508, &protocol descriptor for HistoryFeedSectionFactoryType, 1);
  sub_219BE2914();

  sub_2193DB1C0(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2193DBA58(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2193DBC4C(0);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_2193DB2AC(0);
  sub_219BE2904();

  sub_2193DBB94(0);
  sub_219BE2904();

  sub_2193DB734(0);
  sub_219BE2904();

  type metadata accessor for HistoryFeedBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2193DBCE0(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8E74();
  sub_219BE2904();

  sub_2193DB3E8(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2193DB564(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2193DB7EC(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2193DB96C(0);
  sub_219BE2904();

  type metadata accessor for HistoryFeedBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for HistoryFeedBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_2193DBE1C(0);
  sub_219BE2904();

  sub_2193DBEB0(0);
  sub_219BE2904();

  sub_2193DBF9C(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_2193DC030(0);
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

  sub_2193DC11C(0);
  sub_219BE2904();

  sub_2193DC25C(0);
  sub_219BE2904();

  return result;
}

char *sub_2193D5C54(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECAB18, &protocol descriptor for HistoryFeedStylerType, 1);
  result = sub_219BE1E34();
  if (!v49)
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EB8758, &protocol descriptor for HistoryFeedEventHandlerType, 0);
  result = sub_219BE1E34();
  if (!v46)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DBCE0(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD80, MEMORY[0x277D345A0], 1);
  result = sub_219BE1E34();
  if (!v44)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_219BF4FF4();
  swift_allocObject();
  v5 = sub_219BF4FE4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5150, MEMORY[0x277D6DA40], 0);
  result = sub_219BE1E34();
  if (!v41)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v38 = v47;
  v36 = v42;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218716B60(0);
  result = sub_219BE1E24();
  v37 = result;
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = v41;
  v34 = v3;
  v35 = v46;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v40[0])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v44 = v4;
    v45 = sub_2186FF954(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v43[0] = v7;
    sub_219BE6AE4();
    swift_allocObject();
    v33[0] = sub_219BE6AC4();
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v48, v49);
    v33[2] = v33;
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for HistoryFeedStyler();
    v44 = v14;
    v45 = &off_282A88B40;
    v43[0] = v13;
    v15 = type metadata accessor for HistoryFeedViewController();
    v16 = objc_allocWithZone(v15);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
    v33[1] = v33;
    v18 = MEMORY[0x28223BE20](v17);
    v20 = (v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v40[3] = v14;
    v40[4] = &off_282A88B40;
    v40[0] = v22;
    *&v16[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController____lazy_storage___clearButton] = 0;
    sub_218718690(v40, &v16[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_styler]);
    v23 = &v16[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler];
    v24 = v38;
    *v23 = v35;
    *(v23 + 1) = v24;
    v25 = v34;
    *&v16[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_blueprintViewController] = v34;
    *&v16[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_sharingActivityProviderFactory] = v5;
    v26 = &v16[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_toolbarManager];
    v27 = v36;
    *v26 = v6;
    *(v26 + 1) = v27;
    *&v16[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_newsActivityManager] = v37;
    *&v16[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_commandContainer] = v33[0];
    v39.receiver = v16;
    v39.super_class = v15;
    swift_unknownObjectRetain();
    v28 = v25;

    swift_unknownObjectRetain();

    v29 = objc_msgSendSuper2(&v39, sel_initWithNibName_bundle_, 0, 0);
    *(*(v29 + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_eventHandler) + 24) = &off_282A97AC8;
    swift_unknownObjectWeakAssign();
    v30 = *(v29 + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_blueprintViewController);
    v31 = v29;
    v32 = v30;
    sub_219BE8744();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v40);
    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v48);
    return v31;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_2193D6320@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v11 = sub_2186FF954(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for HistoryFeedStyler();
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
    a2[4] = &off_282A88B40;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2193D6580@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v11);
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
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  result = sub_219BE1E34();
  if (!v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DCBCC(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for HistoryFeedRouter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v11, v8 + 24);
    *(v8 + 64) = v5;
    result = sub_2186CB1F0(&v9, v8 + 72);
    *(v8 + 112) = v6;
    a2[3] = v7;
    a2[4] = &off_282A5B3D0;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2193D6714(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for HistoryFeedViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_2193D6794@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBE3E0, &protocol descriptor for HistoryFeedInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECAB20, &protocol descriptor for HistoryFeedRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC7FB8, &protocol descriptor for HistoryFeedTrackerType, 1);
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
    v17 = sub_2193DC9C0(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A4ECF8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2193D6A44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BED184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBB6A0, &protocol descriptor for HistoryFeedDataManagerType, 0);
  result = sub_219BE1E34();
  v9 = v31;
  if (!v31)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DCBCC(0, &unk_280E906A0, sub_2186F16B4, &type metadata for HistoryFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  v29 = v10;
  v30 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB1C0(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = result;
  v28 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HistoryFeedBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = result;
  v14 = v5;
  v27 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB734(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = result;
  v26 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DC11C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DC25C(0);
  result = sub_219BE1E24();
  if (result)
  {
    v18 = result;
    sub_2193DC834(0, v17);
    v19 = swift_allocObject();
    v19[3] = 0;
    swift_unknownObjectWeakInit();
    v19[10] = 0;
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v20 = v27;
    (*(v14 + 104))(v7, *MEMORY[0x277D851B8], v27);
    v21 = sub_219BF66E4();
    (*(v14 + 8))(v7, v20);
    v19[13] = v21;
    v22 = v29;
    v23 = v30;
    v19[6] = v30;
    v19[7] = v22;
    v19[4] = v12;
    v19[5] = v13;
    v19[8] = v28;
    v19[9] = v15;
    v19[11] = v16;
    v19[12] = v18;
    *(v23 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_delegate + 8) = &off_282A2ECD0;
    result = swift_unknownObjectWeakAssign();
    v24 = v26;
    *v26 = v19;
    v24[1] = &off_282A2ECE8;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_2193D6DE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (v11)
  {
    v8 = type metadata accessor for HistoryFeedTracker();
    v9 = swift_allocObject();
    v9[3] = v7;
    v9[4] = v6;
    v9[2] = v5;
    result = sub_2186CB1F0(&v10, (v9 + 5));
    a2[3] = v8;
    a2[4] = &off_282A346F8;
    *a2 = v9;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_2193D6F58@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v4 = sub_219BED184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HistoryFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  v36 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218713C3C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218713BA8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC2520, &protocol descriptor for ClearUserDataManagerType, 1);
  result = sub_219BE1E34();
  if (!v39[3])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218716B60(0);
  result = sub_219BE1E24();
  v35 = result;
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  result = sub_219BE1DF4();
  if (!v38[3])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v34 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E2A280();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = result;
  v32 = v9;
  v33 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v13 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E740, 0x277D31288);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = result;
  v29 = v13;
  v30 = v12;
  v31 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E140, 0x277D311D0);
  result = sub_219BE1E24();
  if (result)
  {
    v15 = result;
    v16 = type metadata accessor for HistoryFeedDataManager();
    v17 = objc_allocWithZone(v16);
    *&v17[OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v18 = OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_accessQueue;
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v19 = v36;
    (v36[13])(v7, *MEMORY[0x277D851B8], v4);
    v20 = sub_219BF66E4();
    v19[1](v7, v4);
    *&v17[v18] = v20;
    v21 = v33;
    *&v17[OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_feedServiceContextFactory] = v32;
    *&v17[OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_feedServiceConfigFetcher] = v21;
    *&v17[OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_feedService] = v34;
    sub_218718690(v39, &v17[OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_clearUserDataManager]);
    *&v17[OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_userActivityManager] = v35;
    sub_218718690(v38, &v17[OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_headlineService]);
    v22 = v29;
    *&v17[OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_newsletterManager] = v30;
    *&v17[OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_readingHistory] = v22;
    *&v17[OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_readingList] = v14;
    *&v17[OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_personalizationData] = v15;
    v37.receiver = v17;
    v37.super_class = v16;

    swift_unknownObjectRetain();
    v36 = v22;
    v29 = v14;
    v23 = v15;
    v24 = objc_msgSendSuper2(&v37, sel_init);
    v25 = *(v24 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_readingHistory);
    v26 = v24;
    [v25 addObserver_];
    [*(v26 + OBJC_IVAR____TtC7NewsUI222HistoryFeedDataManager_readingList) addObserver_];

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v38);
    result = __swift_destroy_boxed_opaque_existential_1(v39);
    v27 = v31;
    *v31 = v26;
    v27[1] = &off_282A92890;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *sub_2193D7540(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20, &protocol descriptor for HeadlineModelFactoryType, 1);
  result = sub_219BE1E34();
  if (!v44)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB0508, &protocol descriptor for HistoryFeedSectionFactoryType, 1);
  result = sub_219BE1E34();
  if (!v42)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730, MEMORY[0x277D324C8], 0);
  result = sub_219BE1E34();
  v3 = v39;
  if (v39)
  {
    v33 = v40;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
    v34 = &v32;
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (&v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v32 = &v32;
    v10 = MEMORY[0x28223BE20](v9);
    v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = *v7;
    v15 = *v12;
    v16 = type metadata accessor for HeadlineModelFactory();
    v38[3] = v16;
    v38[4] = &off_282A8B8E8;
    v38[0] = v14;
    v17 = type metadata accessor for HistoryFeedSectionFactory();
    v36 = v17;
    v37 = &off_282A7B048;
    v35[0] = v15;
    type metadata accessor for HistoryFeedBlueprintModifierFactory();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v38, v16);
    v20 = MEMORY[0x28223BE20](v19);
    v22 = (&v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
    v25 = MEMORY[0x28223BE20](v24);
    v27 = (&v32 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27, v25);
    v29 = *v22;
    v30 = *v27;
    v18[5] = v16;
    v18[6] = &off_282A8B8E8;
    v18[7] = v30;
    v18[2] = v29;
    v18[10] = v17;
    v18[11] = &off_282A7B048;
    v31 = v33;
    v18[12] = v3;
    v18[13] = v31;
    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2193D79C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20, &protocol descriptor for HeadlineModelFactoryType, 1);
  result = sub_219BE1E34();
  if (v26)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
    result = sub_219BE1E34();
    v5 = v23;
    if (v23)
    {
      v6 = v24;
      v7 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      v8 = MEMORY[0x28223BE20](v7);
      v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v11 + 16))(v10, v8);
      v12 = *v10;
      v13 = type metadata accessor for HeadlineModelFactory();
      v22[3] = v13;
      v22[4] = &off_282A8B8E8;
      v22[0] = v12;
      v14 = type metadata accessor for HistoryFeedSectionFactory();
      v15 = swift_allocObject();
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v22, v13);
      v17 = MEMORY[0x28223BE20](v16);
      v19 = (v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v20 + 16))(v19, v17);
      v21 = *v19;
      v15[5] = v13;
      v15[6] = &off_282A8B8E8;
      v15[2] = v21;
      v15[7] = v5;
      v15[8] = v6;
      __swift_destroy_boxed_opaque_existential_1(v22);
      result = __swift_destroy_boxed_opaque_existential_1(v25);
      a2[3] = v14;
      a2[4] = &off_282A7B048;
      *a2 = v15;
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

uint64_t sub_2193D7C5C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189860B4(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2193DB2AC(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2193DB1C0(0);
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

void sub_2193D7D40(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2193DBA58(0);
  if (sub_219BE1E24())
  {
    sub_2193DC748(0);
    swift_allocObject();
    sub_2186FF954(&qword_280EE3C18, sub_2193DBA58, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2193D7E24(void *a1)
{
  sub_2193DC6F4(0, &qword_280EE3A90, MEMORY[0x277D6EB30]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HistoryFeedBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DBB94(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DBC4C(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2193DBA58(0);
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2193D7FA4(uint64_t a1, void *a2)
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
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v5 = sub_219BF0214();
    sub_218718690(a2, &v10);
    v6 = swift_allocObject();
    sub_2186CB1F0(&v10, v6 + 16);
    v7 = sub_219BE1E04();

    if (v7)
    {
      v11 = v5;
      v12 = sub_2186FF954(&unk_280E90FE0, MEMORY[0x277D32C00], MEMORY[0x277D32BF8]);
      *&v10 = v7;
      sub_219BEA494();
      __swift_destroy_boxed_opaque_existential_1(&v10);
      v8 = sub_219BE99D4();
      swift_allocObject();
      v9 = sub_219BE99C4();
      v11 = v8;
      v12 = MEMORY[0x277D6E7D8];
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

void *sub_2193D8180(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB734(0);
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
    sub_2193DBC4C(0);
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2193D8324(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB3E8(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_2193DB2AC(0);
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

uint64_t sub_2193D847C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_2193D84C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BF44C4();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for HistoryFeedBlueprintLayoutBuilder();
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

void *sub_2193D85AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189860B4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB3E8(0);
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
  sub_2193DBF9C(0);
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
    sub_2186FF954(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_2193DBCE0(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_2193D88B4(uint64_t *a1, void *a2)
{
  v3 = sub_219BE8FC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_2186FF954(&qword_280E8FF80, MEMORY[0x277D34268], MEMORY[0x277D34260]);
  }

  sub_219BE8704();
  (*(v4 + 104))(v6, *MEMORY[0x277D6E3C8], v3);
  sub_219BE86C4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2193DBE1C(0);
  v8 = v7;
  v9 = sub_219BE1E24();
  v10 = v9;
  if (v9)
  {
    v9 = sub_2186FF954(&qword_280EE4860, sub_2193DBE1C, MEMORY[0x277D6E070]);
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
  sub_2193DBC4C(0);
  v12 = v11;
  v13 = sub_219BE1E24();
  v14 = v13;
  if (v13)
  {
    v13 = sub_2186FF954(&qword_280EE4178, sub_2193DBC4C, MEMORY[0x277D6E7D0]);
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
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70, MEMORY[0x277D34270], 0);
  sub_219BE1E34();
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2193DB734(0);
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
      sub_2186FF954(&qword_280EE4CB8, sub_2193DB734, MEMORY[0x277D6DF38]);

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

uint64_t sub_2193D8CA4(uint64_t a1, uint64_t a2)
{
  sub_2193DC6F4(0, &qword_27CC19C80, sub_218954264);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  sub_218954264(0);
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
    sub_2189860B4(0);
    sub_2186FF954(&qword_280EE5440, sub_2189860B4, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    v12 = sub_2195CF9D4();
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
    sub_2189860B4(0);
    sub_2186FF954(&qword_280EE5440, sub_2189860B4, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    (*(v7 + 56))(v4, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v4, 1, 1, v6);
  }

  sub_219BE6684();
  type metadata accessor for HistoryFeedSectionDescriptor(0);
  type metadata accessor for HistoryFeedModel(0);
  sub_2186FF954(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor, &unk_219C7A558);
  sub_2186FF954(&qword_280ED8650, type metadata accessor for HistoryFeedModel, &unk_219C441A0);
  sub_219BF44D4();
  sub_2193DC67C(v4);
  type metadata accessor for HistoryFeedServiceConfig(0);
  sub_2186FF954(&qword_280EC18D0, type metadata accessor for HistoryFeedServiceConfig, &unk_219C4C2E8);
  v15 = sub_219BE6624();

  sub_21885AB78(v12);
  return v15;
}

void *sub_2193D907C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  result = sub_219BE1DE4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE73A0, MEMORY[0x277D6CD90], 1);
    result = sub_219BE1E34();
    if (v4)
    {
      v3 = objc_allocWithZone(sub_219BE8E74());
      return sub_219BE8E64();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2193D91B8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE8E74();
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB564(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB7EC(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB96C(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2193DB3E8(0);
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2193D9318@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB3E8(0);
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

uint64_t sub_2193D93D0()
{
  v0 = sub_219BE80A4();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v1);
  return sub_219BE9574();
}

uint64_t sub_2193D94A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2193D956C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189860B4(0);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB734(0);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for HistoryFeedBlueprintViewCellProvider();
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
  type metadata accessor for HistoryFeedBlueprintViewSupplementaryViewProvider();
  if (sub_219BE1E24())
  {
    *&v8[0] = v3;
    sub_2193DB564(0);
    v7 = objc_allocWithZone(v6);
    sub_219BE9B64();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2193D9708(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE8E74();
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

void *sub_2193D980C(uint64_t a1, void *a2)
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

void *sub_2193D98E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189860B4(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB734(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DBF9C(0);
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

  sub_2186FF954(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800, MEMORY[0x277D6E170], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_2193DB7EC(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2193D9B34(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE9564();
  sub_219BE1DE4();
  sub_219BE9784();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2193DC030(0);
  if (sub_219BE1E24())
  {
    sub_2186FF954(&qword_280EE3FE0, sub_2193DC030, MEMORY[0x277D6E7F8]);
  }

  sub_219BE9774();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2193DBCE0(0);
  sub_219BE1E24();
  return sub_219BE9714();
}

uint64_t sub_2193D9CBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189860B4(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2193DB734(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2193DB96C(0);
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

void *sub_2193D9D7C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810, MEMORY[0x277D32340], 0);
  result = sub_219BE1E34();
  if (v3)
  {
    type metadata accessor for HistoryFeedBlueprintViewCellProvider();
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

void sub_2193D9E28(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for HistoryFeedViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A97AB8;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void sub_2193D9EBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0, MEMORY[0x277D32C08], 1);
  sub_218718690(a1, v4);
  v2 = swift_allocObject();
  sub_2186CB1F0(v4, v2 + 16);
  sub_219BE1E14();

  if (v6)
  {
    type metadata accessor for HistoryFeedBlueprintViewSupplementaryViewProvider();
    v3 = swift_allocObject();
    sub_2186CB1F0(&v5, v3 + 16);
  }

  else
  {
    __break(1u);
  }
}

void sub_2193D9FC0(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C3070C(0, &qword_280E8B8A8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2193DBEB0(0);
  v5 = v4;
  v6 = sub_219BE1E24();
  if (v6)
  {
    v7 = v6;
    *(v3 + 56) = v5;
    *(v3 + 64) = sub_2186FF954(&qword_280E918F8, sub_2193DBEB0, MEMORY[0x277D32298]);
    *(v3 + 32) = v7;
    sub_218C3070C(0, &qword_280E8EF20, MEMORY[0x277D83940]);
    sub_219BE1BA4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2193DA118(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB3E8(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2193DBE1C(0);
    swift_allocObject();
    return sub_219BE8914();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193DA190(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189860B4(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2193DBEB0(0);
    swift_allocObject();
    return sub_219BEEB34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193DA228(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2193DC5BC(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189860B4(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_2193DBF9C(0);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2193DA480(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2193DB734(0);
  if (sub_219BE1E24())
  {
    sub_2186FF954(&qword_280EE4CC0, sub_2193DB734, MEMORY[0x277D6DF30]);
    sub_219BE8E94();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280E90FB0, MEMORY[0x277D32C40], 1);
    sub_219BE1E34();
    sub_2193DC3B4(0);
    swift_allocObject();
    sub_219BEFCE4();
    sub_2186FF954(&qword_280E911B0, sub_2193DC3B4, MEMORY[0x277D32A40]);
    sub_219BE8EA4();

    sub_2193DC48C(0);
    swift_allocObject();
    sub_219BF0074();
    sub_2186FF954(&qword_280E91080, sub_2193DC48C, MEMORY[0x277D32B90]);
    sub_219BE8EA4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2193DA6A8(void *a1)
{
  sub_2187F2110(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DC030(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_2186FF954(&qword_280EE3FE8, sub_2193DC030, MEMORY[0x277D6E800]);
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

void *sub_2193DA7E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB3E8(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189860B4(0);
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
    sub_2186FF954(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_2193DC030(0);
    swift_allocObject();
    return sub_219BE9AB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2193DA9C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB3E8(0);
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

uint64_t sub_2193DAA84(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2193DBCE0(0);
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    v10 = sub_2186FF954(a3, sub_2193DBCE0, a4);
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  return a5(v8, v10);
}

uint64_t sub_2193DAB38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DBCE0(0);
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_2186FF954(&unk_280EE4990, sub_2193DBCE0, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2193DABE0(void *a1)
{
  sub_2193DC6F4(0, &unk_280EE3E00, MEMORY[0x277D6E8E0]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v12 - v3;
  v5 = sub_219BE9524();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_219BE9564();
  result = sub_219BE1DE4();
  if (result)
  {
    v12[4] = v9;
    v12[5] = MEMORY[0x277D6E680];
    v12[1] = result;
    *v8 = 2;
    (*(v6 + 104))(v8, *MEMORY[0x277D6E670], v5);
    v11 = sub_219BE9D64();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
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

uint64_t sub_2193DADEC()
{
  sub_2193DC6F4(0, &unk_280EE3E00, MEMORY[0x277D6E8E0]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_219BE8944();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE8544();
  MEMORY[0x28223BE20](v7 - 8);
  sub_219BE9564();
  if (qword_280E8D930 != -1)
  {
    swift_once();
  }

  v8 = qword_280F617D8;
  (*(v4 + 104))(v6, *MEMORY[0x277D6E080], v3);
  v9 = sub_219BE9D64();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = v8;
  sub_219BE8534();
  return sub_219BE9554();
}

uint64_t sub_2193DB00C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2193DB734(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8E350, 0x277D31340);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2193DC11C(0);
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

uint64_t sub_2193DB0FC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189860B4(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2193DB734(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2193DC25C(0);
      swift_allocObject();
      return sub_219BDEC54();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2193DB1C0(uint64_t a1)
{
  if (!qword_280EE55A0)
  {
    sub_2189860B4(255);
    sub_2193DB2AC(255);
    sub_2186FF954(&qword_280EE5440, sub_2189860B4, MEMORY[0x277D6D8C8]);
    sub_2186FF954(&qword_280EE5270, sub_2193DB2AC, MEMORY[0x277D6D960]);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE55A0);
    }
  }
}

void sub_2193DB2AC(uint64_t a1)
{
  if (!qword_280EE5268)
  {
    type metadata accessor for HistoryFeedSectionDescriptor(255);
    type metadata accessor for HistoryFeedModel(255);
    sub_2193DB3E8(255);
    sub_2186FF954(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor, &unk_219C7A558);
    sub_2186FF954(&qword_280ED8650, type metadata accessor for HistoryFeedModel, &unk_219C441A0);
    sub_2186FF954(&qword_280EE4EA8, sub_2193DB3E8, MEMORY[0x277D6DC88]);
    v1 = sub_219BE72E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5268);
    }
  }
}

void sub_2193DB3E8(uint64_t a1)
{
  if (!qword_280EE4EA0)
  {
    sub_2186C6148(255, &qword_280E8E4C0, 0x277D752A0);
    sub_2193DB564(255);
    sub_2193DB7EC(255);
    sub_2193DB96C(255);
    type metadata accessor for HistoryFeedViewController();
    sub_2186FF954(&qword_280EE3E90, sub_2193DB564, MEMORY[0x277D6E820]);
    sub_2186FF954(&qword_280EE4318, sub_2193DB7EC, MEMORY[0x277D6E738]);
    sub_2186FF954(&qword_280EE3D30, sub_2193DB96C, MEMORY[0x277D6E918]);
    v1 = sub_219BE7BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4EA0);
    }
  }
}

void sub_2193DB564(uint64_t a1)
{
  if (!qword_280EE3E80)
  {
    sub_2189860B4(255);
    sub_2193DB734(255);
    type metadata accessor for HistoryFeedBlueprintViewCellProvider();
    type metadata accessor for HistoryFeedBlueprintViewSupplementaryViewProvider();
    sub_2186FF954(&qword_280EE5440, sub_2189860B4, MEMORY[0x277D6D8C8]);
    sub_2186FF954(&qword_280EE4CB8, sub_2193DB734, MEMORY[0x277D6DF38]);
    sub_2186FF954(&qword_280E9B620, type metadata accessor for HistoryFeedBlueprintViewCellProvider, &unk_219C74628);
    sub_2186FF954(qword_280EE1DC8, type metadata accessor for HistoryFeedBlueprintViewSupplementaryViewProvider, &unk_219CCE6A4);
    sub_2186FF954(&qword_280EC8140, type metadata accessor for HistoryFeedLayoutModel, &unk_219C9D060);
    v1 = sub_219BE9B94();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3E80);
    }
  }
}

void sub_2193DB734(uint64_t a1)
{
  if (!qword_280EE4CA8)
  {
    type metadata accessor for HistoryFeedLayoutModel(255);
    sub_218C3EAC8();
    sub_2186FF954(&unk_280EC8148, type metadata accessor for HistoryFeedLayoutModel, &unk_219C9D028);
    v1 = sub_219BE8564();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4CA8);
    }
  }
}

void sub_2193DB7EC(uint64_t a1)
{
  if (!qword_280EE4308)
  {
    sub_2189860B4(255);
    sub_2193DB734(255);
    type metadata accessor for HistoryFeedViewController();
    sub_2186FF954(&qword_280EE5440, sub_2189860B4, MEMORY[0x277D6D8C8]);
    sub_2186FF954(&qword_280EE4CB8, sub_2193DB734, MEMORY[0x277D6DF38]);
    sub_2186FF954(&qword_280EBE310, type metadata accessor for HistoryFeedViewController, &unk_219CC02D8);
    sub_2186FF954(&qword_280EC8140, type metadata accessor for HistoryFeedLayoutModel, &unk_219C9D060);
    v1 = sub_219BE9794();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4308);
    }
  }
}

void sub_2193DB96C(uint64_t a1)
{
  if (!qword_280EE3D28)
  {
    sub_2189860B4(255);
    sub_2193DB734(255);
    sub_2186FF954(&qword_280EE5440, sub_2189860B4, MEMORY[0x277D6D8C8]);
    sub_2186FF954(&qword_280EE4CB8, sub_2193DB734, MEMORY[0x277D6DF38]);
    v1 = sub_219BE9F34();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3D28);
    }
  }
}

void sub_2193DBA58(uint64_t a1)
{
  if (!qword_280EE3C08)
  {
    sub_2193DB734(255);
    type metadata accessor for HistoryFeedBlueprintLayoutBuilder();
    sub_2193DBB94(255);
    sub_2186FF954(&qword_280EE4CB8, sub_2193DB734, MEMORY[0x277D6DF38]);
    sub_2186FF954(qword_280EA3610, type metadata accessor for HistoryFeedBlueprintLayoutBuilder, &unk_219C45790);
    sub_2186FF954(&qword_280EE4258, sub_2193DBB94, MEMORY[0x277D6E7B8]);
    v1 = sub_219BEA4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3C08);
    }
  }
}