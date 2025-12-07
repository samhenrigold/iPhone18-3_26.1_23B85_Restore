uint64_t sub_218D35CD4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD10];
  v3 = sub_219BE7C94();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_218D35D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_219BDB5E4();

  return v6;
}

uint64_t sub_218D35E34()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218D35F28(uint64_t a1)
{
  sub_218D35F98(0);
  swift_allocObject();
  sub_2189323B4();

  return sub_219BE6E64();
}

void sub_218D35F98(uint64_t a1)
{
  if (!qword_280EE5638)
  {
    sub_218931D04();
    sub_218931D5C();
    v1 = sub_219BE6E74();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5638);
    }
  }
}

uint64_t sub_218D36018()
{
  sub_2186E2AFC(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0D34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  sub_218D37D3C(v0 + *(v8 + 28), v3, sub_2186E2AFC);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_218D37C24(v3, sub_2186E2AFC);
    return MEMORY[0x277D84FA0];
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_2186E2A98(0, &qword_280E8B878, MEMORY[0x277D33130], MEMORY[0x277D84560]);
    v10 = sub_219BF10D4();
    v11 = *(v10 - 8);
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_219C09BA0;
    (*(v5 + 16))(v13 + v12, v7, v4);
    (*(v11 + 104))(v13 + v12, *MEMORY[0x277D33128], v10);
    v14 = sub_2194AD438(v13);
    swift_setDeallocating();
    (*(v11 + 8))(v13 + v12, v10);
    swift_deallocClassInstance();
    (*(v5 + 8))(v7, v4);
    return v14;
  }
}

void sub_218D36318(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  sub_218D37AE4(0);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E2AFC(0);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D37B4C(0);
  v50 = v7;
  v46 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E2B30(0, &unk_280EE6770, &qword_280E8E390, &protocolRef_FCChannelProviding, MEMORY[0x277D6CF88]);
  v51 = v9;
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v55 = sub_219BED8D4();
  v52 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = (&v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218D37DA4(0, &qword_280E8CFD0, MEMORY[0x277D844C8]);
  v14 = v13;
  v53 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  v17 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D37BD0();
  v20 = v56;
  sub_219BF7B34();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v56 = v17;
    v21 = v19;
    LOBYTE(v57) = 0;
    sub_218D37950(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    v22 = v55;
    sub_219BF7734();
    (*(v52 + 32))(v21, v54, v22);
    LOBYTE(v57) = 1;
    sub_218D37E08(&unk_280EE6780, MEMORY[0x277D6CF98]);
    v23 = v11;
    v24 = v51;
    sub_219BF7734();
    v25 = v16;
    sub_219BE3384();
    (*(v48 + 8))(v23, v24);
    *(v21 + v56[5]) = v57;
    LOBYTE(v57) = 2;
    sub_218D37950(&unk_280EE6800, sub_218D37B4C, MEMORY[0x277D6CF98]);
    v27 = v49;
    v26 = v50;
    v51 = 0;
    sub_219BF7734();
    v54 = a1;
    v28 = v14;
    sub_219BE3384();
    (*(v46 + 8))(v27, v26);
    *(v21 + v56[6]) = v57;
    sub_218D37B18(0);
    v30 = v29;
    LOBYTE(v57) = 3;
    sub_218D37950(&qword_280EE6840, sub_218D37B18, MEMORY[0x277D6CF98]);
    v31 = v47;
    sub_219BF76E4();
    v49 = v25;
    v50 = v28;
    v32 = *(v30 - 8);
    if ((*(v32 + 48))(v31, 1, v30) == 1)
    {
      sub_218D37C24(v31, sub_218D37AE4);
      v33 = 1;
      v35 = v44;
      v34 = v45;
    }

    else
    {
      v34 = v45;
      sub_219BE3384();
      (*(v32 + 8))(v31, v30);
      v33 = 0;
      v35 = v44;
    }

    v36 = sub_219BF0D34();
    (*(*(v36 - 8) + 56))(v34, v33, 1, v36);
    v37 = v56;
    sub_218D37C84(v34, v21 + v56[7]);
    sub_2186D0BA8();
    v59 = 4;
    sub_2187531B0(&qword_280E8EDD0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    v38 = v50;
    v39 = v49;
    sub_219BF76E4();
    v40 = v53;
    *(v21 + v37[8]) = v57;
    v59 = 5;
    sub_218D37CE8();
    sub_219BF7734();
    (*(v40 + 8))(v39, v38);
    v41 = v58;
    v42 = v21 + v37[9];
    *v42 = v57;
    *(v42 + 8) = v41;
    sub_218D37D3C(v21, v35, type metadata accessor for LocalNewsTodayFeedGroup);
    __swift_destroy_boxed_opaque_existential_1(v54);
    sub_218D37C24(v21, type metadata accessor for LocalNewsTodayFeedGroup);
  }
}

uint64_t sub_218D36D1C(void *a1)
{
  sub_2186E2AFC(0);
  MEMORY[0x28223BE20](v2 - 8);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D37AE4(0);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D37B4C(0);
  v7 = v6;
  v30 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E2B30(0, &unk_280EE6770, &qword_280E8E390, &protocolRef_FCChannelProviding, MEMORY[0x277D6CF88]);
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  sub_218D37DA4(0, &qword_280E8C6A0, MEMORY[0x277D84538]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v26 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D37BD0();
  v18 = v33;
  sub_219BF7B44();
  LOBYTE(v36) = 0;
  sub_219BED8D4();
  sub_218D37950(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  v35 = v17;
  v19 = v34;
  sub_219BF7834();
  if (v19)
  {
    return (*(v15 + 8))(v35, v14);
  }

  v21 = v31;
  v34 = v15;
  v27 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  sub_2186D6710(0, &qword_280E8E390, &protocolRef_FCChannelProviding);
  swift_unknownObjectRetain();
  sub_219BE3404();
  LOBYTE(v36) = 1;
  sub_218D37E08(&unk_280EE6790, MEMORY[0x277D6CF90]);
  v22 = v32;
  sub_219BF7834();
  (*(v21 + 8))(v12, v22);
  v36 = *(v18 + v27[6]);
  sub_2186E2B30(0, &qword_280E8EC20, &qword_280E8E360, &protocolRef_FCSectionProviding, MEMORY[0x277D83940]);
  sub_218D37E78();

  sub_219BE33B4();
  LOBYTE(v36) = 2;
  sub_218D37950(&qword_280EE6810, sub_218D37B4C, MEMORY[0x277D6CF90]);
  sub_219BF7834();
  (*(v30 + 8))(v9, v7);
  sub_218D37D3C(v18 + v27[7], v29, sub_2186E2AFC);
  v23 = v28;
  sub_219BE33A4();
  LOBYTE(v36) = 3;
  sub_218D37B18(0);
  sub_218D37950(&qword_280EE6848, sub_218D37B18, MEMORY[0x277D6CF90]);
  sub_219BF77E4();
  sub_218D37C24(v23, sub_218D37AE4);
  v36 = *(v18 + v27[8]);
  v38 = 4;
  sub_2186D0BA8();
  sub_2187531B0(&unk_280E8EE00, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_219BF77E4();
  v24 = (v18 + v27[9]);
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  v36 = v25;
  v37 = v24;
  v38 = 5;
  sub_218D37EFC();
  sub_219BF7834();
  return (*(v34 + 8))(v35, v14);
}

uint64_t sub_218D37414(uint64_t a1)
{
  v2 = sub_218D37950(&unk_280EE1918, type metadata accessor for LocalNewsTodayFeedGroup, &unk_219C330E8);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218D3749C(uint64_t a1)
{
  v2 = [*(v1 + *(a1 + 20)) name];
  v3 = sub_219BF5414();

  return v3;
}

double sub_218D3750C(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

unint64_t sub_218D3761C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218D38068(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_218D3764C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000070756FLL;
  v4 = 0x724774616D726F66;
  v5 = 0xE700000000000000;
  v6 = 0x72656874616577;
  v7 = 0x8000000219CD7220;
  v8 = 0xD00000000000001BLL;
  if (v2 != 4)
  {
    v8 = 0x656C65536F726568;
    v7 = 0xED00006E6F697463;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6C656E6E616863;
  if (v2 != 1)
  {
    v10 = 0x736E6F6974636573;
    v9 = 0xE800000000000000;
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

uint64_t sub_218D37724()
{
  v1 = *v0;
  v2 = 0x724774616D726F66;
  v3 = 0x72656874616577;
  v4 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v4 = 0x656C65536F726568;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C656E6E616863;
  if (v1 != 1)
  {
    v5 = 0x736E6F6974636573;
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

unint64_t sub_218D377F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218D38068(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218D37820(uint64_t a1)
{
  v2 = sub_218D37BD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D3785C(uint64_t a1)
{
  v2 = sub_218D37BD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218D37950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218D379E0(uint64_t a1)
{
  result = sub_218D37950(&unk_280EE18D0, type metadata accessor for LocalNewsTodayFeedGroup, &unk_219C33204);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218D37A38(void *a1)
{
  a1[1] = sub_218D37950(&unk_280EE1918, type metadata accessor for LocalNewsTodayFeedGroup, &unk_219C330E8);
  a1[2] = sub_218D37950(&unk_280EE18E0, type metadata accessor for LocalNewsTodayFeedGroup, &unk_219C331DC);
  result = sub_218D37950(&unk_280EE18F8, type metadata accessor for LocalNewsTodayFeedGroup, &unk_219C331B4);
  a1[3] = result;
  return result;
}

void sub_218D37B4C(uint64_t a1)
{
  if (!qword_280EE67F0)
  {
    sub_2186E2B30(255, &qword_280E8EC20, &qword_280E8E360, &protocolRef_FCSectionProviding, MEMORY[0x277D83940]);
    v1 = sub_219BE3474();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE67F0);
    }
  }
}

unint64_t sub_218D37BD0()
{
  result = qword_280EE1948;
  if (!qword_280EE1948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE1948);
  }

  return result;
}

uint64_t sub_218D37C24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D37C84(uint64_t a1, uint64_t a2)
{
  sub_2186E2AFC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218D37CE8()
{
  result = qword_280ECF208;
  if (!qword_280ECF208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF208);
  }

  return result;
}

uint64_t sub_218D37D3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218D37DA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D37BD0();
    v7 = a3(a1, &type metadata for LocalNewsTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218D37E08(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2186E2B30(255, &unk_280EE6770, &qword_280E8E390, &protocolRef_FCChannelProviding, MEMORY[0x277D6CF88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218D37E78()
{
  result = qword_280E8EC10;
  if (!qword_280E8EC10)
  {
    sub_2186E2B30(255, &qword_280E8EC20, &qword_280E8E360, &protocolRef_FCSectionProviding, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EC10);
  }

  return result;
}

unint64_t sub_218D37EFC()
{
  result = qword_280ECF218;
  if (!qword_280ECF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECF218);
  }

  return result;
}

unint64_t sub_218D37F64()
{
  result = qword_27CC11670;
  if (!qword_27CC11670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11670);
  }

  return result;
}

unint64_t sub_218D37FBC()
{
  result = qword_280EE1928;
  if (!qword_280EE1928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE1928);
  }

  return result;
}

unint64_t sub_218D38014()
{
  result = qword_280EE1930[0];
  if (!qword_280EE1930[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EE1930);
  }

  return result;
}

unint64_t sub_218D38068(uint64_t a1, uint64_t a2)
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

uint64_t sub_218D380C4(void *a1, uint64_t a2)
{
  sub_218D39DE8(0, &qword_280E8C698, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D38390();
  sub_219BF7B44();
  v10[1] = a2;
  sub_218D383E4(0);
  sub_218D3844C();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

void sub_218D3823C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7365707974627573 && a2 == 0xE800000000000000)
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

uint64_t sub_218D382C4(uint64_t a1)
{
  v2 = sub_218D38390();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D38300(uint64_t a1)
{
  v2 = sub_218D38390();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_218D3833C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_218D39C58(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_218D38390()
{
  result = qword_280EE1808;
  if (!qword_280EE1808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE1808);
  }

  return result;
}

void sub_218D383E4(uint64_t a1)
{
  if (!qword_280E8FBA8)
  {
    type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs(255);
    v1 = sub_219BF52A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8FBA8);
    }
  }
}

unint64_t sub_218D3844C()
{
  result = qword_280E8FBA0;
  if (!qword_280E8FBA0)
  {
    sub_218D383E4(255);
    sub_218D39EFC(&qword_280EE1478, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs, &unk_219C3ED74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FBA0);
  }

  return result;
}

uint64_t sub_218D384FC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v103 = a3;
  v106 = a2;
  v98 = a1;
  v108 = a4;
  v4 = MEMORY[0x277D32318];
  sub_218D396B8(0, &qword_280E91860, MEMORY[0x277D32318]);
  v6 = v5;
  v110 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v97 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v102 = &v96 - v9;
  v10 = MEMORY[0x277D321A0];
  sub_218D396B8(0, &qword_280E91A20, MEMORY[0x277D321A0]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v99 = &v96 - v17;
  v107 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs(0);
  v109 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v101 = &v96 - v21;
  sub_218D39754(0, &unk_280E91850, &qword_280E91860, v4);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v96 - v26;
  MEMORY[0x28223BE20](v28);
  v100 = &v96 - v29;
  MEMORY[0x28223BE20](v30);
  v104 = &v96 - v31;
  sub_218D39754(0, &unk_280E91A10, &qword_280E91A20, v10);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v96 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v96 - v39;
  MEMORY[0x28223BE20](v41);
  v105 = &v96 - v42;
  sub_218D397AC(0);
  v46 = MEMORY[0x28223BE20](v43 - 8);
  v47 = &v96 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v44)
  {
    v105 = v15;
    v106 = v24;
    (*(v13 + 56))(v37, 1, 1, v12, v46);
    v66 = v110;
    (*(v110 + 56))(v27, 1, 1, v6);
    sub_218D39804(v37, v34, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    v67 = *(v13 + 48);
    v68 = v67(v34, 1, v12);
    v109 = v6;
    if (v68 == 1)
    {
      v69 = v19;
      if (qword_280E91AC8 != -1)
      {
        swift_once();
      }

      v70 = __swift_project_value_buffer(v12, qword_280F61830);
      v71 = v105;
      (*(v13 + 16))(v105, v70, v12);
      v72 = v67(v34, 1, v12);
      v73 = v71;
      v74 = v106;
      if (v72 != 1)
      {
        sub_218D39874(v34, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      }
    }

    else
    {
      v73 = v105;
      (*(v13 + 32))(v105, v34, v12);
      v69 = v19;
      v74 = v106;
    }

    (*(v13 + 32))(v69, v73, v12);
    sub_218D39804(v27, v74, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    v85 = *(v66 + 48);
    v86 = v109;
    if (v85(v74, 1, v109) == 1)
    {
      type metadata accessor for TodayFeedServiceConfig(0);
      sub_218D39EFC(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
      v87 = v97;
      v86 = v109;
      sub_219BEEC74();
      if (v85(v74, 1, v86) != 1)
      {
        sub_218D39874(v74, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      }
    }

    else
    {
      v87 = v97;
      (*(v66 + 32))(v97, v74, v86);
    }

    v88 = v107;
    (*(v66 + 32))(&v69[*(v107 + 20)], v87, v86);
    sub_219BF5CF4();
    *&v111 = v89 * 12.0;
    sub_2186ECA28();
    swift_allocObject();
    *&v69[v88[6]] = sub_219BEF534();
    LOBYTE(v111) = 1;
    sub_2186F95C4();
    swift_allocObject();
    *&v69[v88[7]] = sub_219BEF534();
    LOBYTE(v111) = 0;
    swift_allocObject();
    *&v69[v88[8]] = sub_219BEF534();
    LOBYTE(v111) = 0;
    swift_allocObject();
    *&v69[v88[9]] = sub_219BEF534();
    sub_219BF5D04();
    v111 = v90;
    swift_allocObject();
    *&v69[v88[10]] = sub_219BEF534();
    sub_218D39A04(0, &qword_280E8BAF0, MEMORY[0x277D84560]);
    v91 = swift_allocObject();
    *(v91 + 16) = xmmword_219C09EC0;
    if (qword_280EB0610 != -1)
    {
      v95 = v91;
      swift_once();
      v91 = v95;
    }

    v92 = byte_280F61A98 | 0x80;
    *(v91 + 32) = qword_280F61A90;
    *(v91 + 40) = v92;
    *(v91 + 48) = 5;
    *(v91 + 56) = 0;
    v111 = v91;
    sub_218D398D0(0);
    swift_allocObject();
    *&v69[v88[11]] = sub_219BEF534();
    v111 = 1;
    sub_2186F9548();
    swift_allocObject();
    *&v69[v88[12]] = sub_219BEF534();
    v111 = 1;
    swift_allocObject();
    *&v69[v88[13]] = sub_219BEF534();
    v111 = 1;
    swift_allocObject();
    *&v69[v88[14]] = sub_219BEF534();
    v111 = 3;
    swift_allocObject();
    *&v69[v88[15]] = sub_219BEF534();
    *&v111 = 0.0;
    swift_allocObject();
    *&v69[v88[16]] = sub_219BEF534();
    v111 = 4;
    swift_allocObject();
    v93 = sub_219BEF534();
    sub_218D39874(v27, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    sub_218D39874(v37, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    *&v69[v88[17]] = v93;
    v54 = v69;
    return sub_218D39B34(v54, v108);
  }

  v48 = v6;
  v49 = v103;
  if (*(v103 + 16))
  {
    v50 = &v96 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = sub_21870F700(v98, v44);
    v47 = v50;
    if (v52)
    {
      v53 = v109;
      sub_218D39BF4(*(v49 + 56) + *(v109 + 72) * v51, v50);
      (*(v53 + 56))(v50, 0, 1, v107);
      v54 = v50;
      return sub_218D39B34(v54, v108);
    }
  }

  v55 = *(v109 + 56);
  v106 = v47;
  v56 = v107;
  v55(v47, 1, 1, v107, v46);
  v57 = v105;
  (*(v13 + 56))(v105, 1, 1, v12);
  v58 = v104;
  (*(v110 + 56))(v104, 1, 1, v6);
  sub_218D39804(v57, v40, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
  v59 = *(v13 + 48);
  if (v59(v40, 1, v12) == 1)
  {
    v61 = v101;
    v60 = v102;
    if (qword_280E91AC8 != -1)
    {
      swift_once();
    }

    v62 = __swift_project_value_buffer(v12, qword_280F61830);
    v63 = v99;
    (*(v13 + 16))(v99, v62, v12);
    v64 = v59(v40, 1, v12);
    v65 = v63;
    v58 = v104;
    if (v64 != 1)
    {
      sub_218D39874(v40, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
    }
  }

  else
  {
    v65 = v99;
    (*(v13 + 32))(v99, v40, v12);
    v61 = v101;
    v60 = v102;
  }

  (*(v13 + 32))(v61, v65, v12);
  v75 = v100;
  sub_218D39804(v58, v100, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
  v76 = v110;
  v77 = *(v110 + 48);
  if (v77(v75, 1, v48) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_218D39EFC(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    sub_219BEEC74();
    if (v77(v75, 1, v48) != 1)
    {
      sub_218D39874(v75, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
    }
  }

  else
  {
    (*(v76 + 32))(v60, v75, v48);
  }

  (*(v76 + 32))(v61 + v56[5], v60, v48);
  sub_219BF5CF4();
  *&v111 = v78 * 12.0;
  sub_2186ECA28();
  swift_allocObject();
  *(v61 + v56[6]) = sub_219BEF534();
  LOBYTE(v111) = 1;
  sub_2186F95C4();
  swift_allocObject();
  *(v61 + v56[7]) = sub_219BEF534();
  LOBYTE(v111) = 0;
  swift_allocObject();
  *(v61 + v56[8]) = sub_219BEF534();
  LOBYTE(v111) = 0;
  swift_allocObject();
  *(v61 + v56[9]) = sub_219BEF534();
  sub_219BF5D04();
  v111 = v79;
  swift_allocObject();
  *(v61 + v56[10]) = sub_219BEF534();
  sub_218D39A04(0, &qword_280E8BAF0, MEMORY[0x277D84560]);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_219C09EC0;
  if (qword_280EB0610 != -1)
  {
    v94 = v80;
    swift_once();
    v80 = v94;
  }

  v81 = byte_280F61A98 | 0x80;
  *(v80 + 32) = qword_280F61A90;
  *(v80 + 40) = v81;
  *(v80 + 48) = 5;
  *(v80 + 56) = 0;
  v111 = v80;
  sub_218D398D0(0);
  swift_allocObject();
  *(v61 + v56[11]) = sub_219BEF534();
  v111 = 1;
  sub_2186F9548();
  swift_allocObject();
  *(v61 + v56[12]) = sub_219BEF534();
  v111 = 1;
  swift_allocObject();
  *(v61 + v56[13]) = sub_219BEF534();
  v111 = 1;
  swift_allocObject();
  *(v61 + v56[14]) = sub_219BEF534();
  v111 = 3;
  swift_allocObject();
  *(v61 + v56[15]) = sub_219BEF534();
  *&v111 = 0.0;
  swift_allocObject();
  *(v61 + v56[16]) = sub_219BEF534();
  v111 = 4;
  swift_allocObject();
  v82 = sub_219BEF534();
  sub_218D39874(v58, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
  sub_218D39874(v105, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
  *(v61 + v56[17]) = v82;
  sub_218D39B34(v61, v108);
  v83 = v106;
  result = (*(v109 + 48))(v106, 1, v56);
  if (result != 1)
  {
    return sub_218D39B98(v83);
  }

  return result;
}

void sub_218D396B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig(255);
    v7 = sub_218D39EFC(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_218D39754(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_218D396B8(255, a3, a4);
    v5 = sub_219BF6FB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_218D397AC(uint64_t a1)
{
  if (!qword_280EE1400)
  {
    type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE1400);
    }
  }
}

uint64_t sub_218D39804(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_218D39754(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_218D39874(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_218D39754(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_218D398D0(uint64_t a1)
{
  if (!qword_280E91408)
  {
    sub_218D39A04(255, &qword_280E8F220, MEMORY[0x277D83940]);
    sub_218D39A58(&qword_280E8F208, sub_218B824E4, MEMORY[0x277D83978]);
    sub_218D39A58(&qword_280E8F218, sub_218B827C8, MEMORY[0x277D83948]);
    sub_218D39A58(&qword_280E8F210, sub_218D39AE0, MEMORY[0x277D83968]);
    v1 = sub_219BEF544();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91408);
    }
  }
}

void sub_218D39A04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for HeroSelectionStrategy);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_218D39A58(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_218D39A04(255, &qword_280E8F220, MEMORY[0x277D83940]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218D39AE0()
{
  result = qword_280ECADC8;
  if (!qword_280ECADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECADC8);
  }

  return result;
}

uint64_t sub_218D39B34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D39B98(uint64_t a1)
{
  sub_218D397AC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218D39BF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_218D39C58(void *a1)
{
  sub_218D39DE8(0, &qword_280E8CFC8, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D38390();
  sub_219BF7B34();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_218D383E4(0);
    sub_218D39E4C();
    sub_219BF7674();
    v8 = v11;
    if (!v11)
    {
      v8 = sub_2194AFFC8(MEMORY[0x277D84F90]);
    }

    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

void sub_218D39DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D38390();
    v7 = a3(a1, &type metadata for LocalNewsTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218D39E4C()
{
  result = qword_280E8FB98;
  if (!qword_280E8FB98)
  {
    sub_218D383E4(255);
    sub_218D39EFC(&qword_280EE1470, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs, &unk_219C3ED4C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FB98);
  }

  return result;
}

uint64_t sub_218D39EFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218D39F58()
{
  result = qword_27CC11678;
  if (!qword_27CC11678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11678);
  }

  return result;
}

unint64_t sub_218D39FB0()
{
  result = qword_280EE17F8;
  if (!qword_280EE17F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE17F8);
  }

  return result;
}

unint64_t sub_218D3A008()
{
  result = qword_280EE1800;
  if (!qword_280EE1800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE1800);
  }

  return result;
}

uint64_t type metadata accessor for LocalNewsTodayFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EE17A0;
  if (!qword_280EE17A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D3A0D0(uint64_t a1)
{
  sub_2186DF3DC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510, MEMORY[0x277D33778]);
      if (v3 <= 0x3F)
      {
        sub_2186CFDE4(319, qword_280EBC190, &protocol descriptor for ChannelHeadlineServiceType);
        if (v4 <= 0x3F)
        {
          sub_2186CFDE4(319, qword_280EE1810, &protocol descriptor for LocalNewsChannelServiceType);
          if (v5 <= 0x3F)
          {
            sub_2186D6710(319, &unk_280E8FF60, &protocolRef_TSLocationDetectionManagerType);
            if (v6 <= 0x3F)
            {
              sub_2186D6710(319, &unk_280E8E250, &protocolRef_FCLocalAreasManager);
              if (v7 <= 0x3F)
              {
                sub_2186C6148(319, &qword_280E8DE40, 0x277D31330);
                if (v8 <= 0x3F)
                {
                  sub_2186CFDE4(319, &unk_280E915D0, MEMORY[0x277D32590]);
                  if (v9 <= 0x3F)
                  {
                    sub_2186CFDE4(319, qword_280E9C090, &protocol descriptor for TodayFeedEngagementEventHandlerType);
                    if (v10 <= 0x3F)
                    {
                      sub_219BE5434();
                      if (v11 <= 0x3F)
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
      }
    }
  }
}

void sub_218D3A2B8(_OWORD *a1@<X8>)
{
  sub_218D45728(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE3514();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v29 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalNewsTodayFeedGroupConfigData(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF3DC(0);
  sub_219BEDD14();
  v12 = *&v11[*(v9 + 92)];

  sub_218D3BD28(v11, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  if (!v12)
  {
    goto LABEL_15;
  }

  v28 = *(v12 + 16);
  if (!v28)
  {

LABEL_15:
    *a1 = 0u;
    a1[1] = 0u;
    return;
  }

  v24 = v1;
  v25 = a1;
  v13 = 0;
  v14 = (v27 + 48);
  v15 = (v27 + 32);
  v16 = v12 + 40;
  v17 = MEMORY[0x277D84F90];
  v26 = v12;
  while (v13 < *(v12 + 16))
  {

    sub_219BE34E4();
    if ((*v14)(v5, 1, v6) == 1)
    {
      sub_218D3BD28(v5, sub_218D45728);
    }

    else
    {
      v18 = *v15;
      (*v15)(v29, v5, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2191F7D30(0, *(v17 + 2) + 1, 1, v17);
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = sub_2191F7D30((v19 > 1), v20 + 1, 1, v17);
      }

      *(v17 + 2) = v20 + 1;
      v18(&v17[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v20], v29, v6);
      v12 = v26;
    }

    ++v13;
    v16 += 16;
    if (v28 == v13)
    {

      v21 = type metadata accessor for LocalNewsTodayFeedGroupEmitter(0);
      v22 = *__swift_project_boxed_opaque_existential_1((v24 + *(v21 + 52)), *(v24 + *(v21 + 52) + 24));
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      *(v23 + 24) = v17;

      sub_219BE3494();

      a1 = v25;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_218D3A638(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218D3A6E0(a1, a2);
}

uint64_t sub_218D3A6E0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = type metadata accessor for LocalNewsTodayFeedGroupEmitter(0);
  v3[7] = swift_task_alloc();
  sub_2186D8FA8(0);
  v3[8] = swift_task_alloc();
  type metadata accessor for LocalNewsTodayFeedGroupConfigData(0);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D3A7D0, 0, 0);
}

uint64_t sub_218D3A7D0()
{
  v2 = v0[8];
  v1 = v0[9];
  sub_2186DF3DC(0);
  sub_219BEDD14();
  sub_218D4575C(v1, v2, sub_2186D8FA8);
  sub_218D3BD28(v1, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  v3 = sub_219BF1934();
  v4 = (*(*(v3 - 8) + 48))(v2, 1, v3);
  sub_218D3BD28(v2, sub_2186D8FA8);
  if (v4 == 1)
  {
    v5 = sub_219BEEDD4();
    sub_2186DF73C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    *v6 = 0xD000000000000013;
    v6[1] = 0x8000000219CF4870;
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D323D8], v5);
    swift_willThrow();

    v7 = v0[1];

    return v7();
  }

  else
  {
    v9 = v0[5];
    v10 = swift_task_alloc();
    v0[10] = v10;
    *(v10 + 16) = v9;
    v11 = swift_task_alloc();
    v0[11] = v11;
    *v11 = v0;
    v11[1] = sub_218D3AA74;

    return MEMORY[0x282190858](v0 + 2, &type metadata for LocalNewsTodayFeedGroupEmitterCursor, &unk_219C336C8, v10, &type metadata for LocalNewsTodayFeedGroupEmitterCursor);
  }
}

uint64_t sub_218D3AA74()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_218D3B2FC;
  }

  else
  {

    v2 = sub_218D3AB90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_218D3AB90(__n128 a1)
{
  v55 = v1;
  v2 = v1[2];
  sub_219BEF0A4();
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2186DF73C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
  v3 = sub_219BEDC44();

  if (v3 >> 62)
  {
    v4 = sub_219BF7214();
    v51 = v1;
    v52 = v2;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = v1;
    v52 = v2;
    if (v4)
    {
LABEL_3:
      v54[0] = MEMORY[0x277D84F90];
      sub_21870B65C(0, v4 & ~(v4 >> 63), 0);
      if (v4 < 0)
      {
        goto LABEL_42;
      }

      v5 = 0;
      v6 = v54[0];
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x21CECE0F0](v5, v3);
        }

        else
        {
          v7 = *(v3 + 8 * v5 + 32);
          swift_unknownObjectRetain();
        }

        v8 = [v7 identifier];
        v9 = sub_219BF5414();
        v11 = v10;

        swift_unknownObjectRelease();
        v54[0] = v6;
        v13 = *(v6 + 16);
        v12 = *(v6 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_21870B65C((v12 > 1), v13 + 1, 1);
          v6 = v54[0];
        }

        ++v5;
        *(v6 + 16) = v13 + 1;
        v14 = v6 + 16 * v13;
        *(v14 + 32) = v9;
        *(v14 + 40) = v11;
      }

      while (v4 != v5);

      v2 = v52;
      goto LABEL_14;
    }
  }

  v6 = MEMORY[0x277D84F90];
LABEL_14:
  v15 = sub_218845F78(v6);

  v16 = *(v2 + 16);

  if (!v16)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_35:
    v32 = v51;
    v51[13] = v19;
    v33 = v51[7];
    v34 = v51[5];

    sub_218D4575C(v34, v33, type metadata accessor for LocalNewsTodayFeedGroupEmitter);

    v35 = sub_219BE5414();
    v36 = sub_219BF61D4();
    v37 = os_log_type_enabled(v35, v36);
    v38 = v51[7];
    if (v37)
    {
      v39 = v51[6];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54[0] = v41;
      *v40 = 136446722;
      v42 = (v38 + *(v39 + 56));
      v43 = *v42;
      v44 = v42[1];

      sub_218D3BD28(v38, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
      v45 = v43;
      v32 = v51;
      v46 = sub_2186D1058(v45, v44, v54);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2048;
      v47 = *(v2 + 16);

      *(v40 + 14) = v47;

      *(v40 + 22) = 2048;
      *(v40 + 24) = *(v19 + 16);

      _os_log_impl(&dword_2186C1000, v35, v36, "%{public}s filtered channels from %ld to %ld based on seen tags", v40, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x21CECF960](v41, -1, -1);
      MEMORY[0x21CECF960](v40, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      sub_218D3BD28(v38, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    }

    v48 = swift_task_alloc();
    v32[14] = v48;
    *v48 = v32;
    v48[1] = sub_218D3B15C;
    v49 = v32[4];
    v50 = v32[3];

    sub_218D3C684(v50, v49, v19);
    return;
  }

  v17 = 0;
  v53 = v2 + 32;
  v18 = v15 + 56;
  v19 = MEMORY[0x277D84F90];
  while (v17 < *(v2 + 16))
  {
    v20 = (v53 + 16 * v17);
    v22 = *v20;
    v21 = v20[1];
    ++v17;
    if (!*(v15 + 16))
    {

      goto LABEL_27;
    }

    sub_219BF7AA4();

    sub_219BF5524();
    v23 = sub_219BF7AE4();
    v24 = -1 << *(v15 + 32);
    v25 = v23 & ~v24;
    if ((*(v18 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25))
    {
      v26 = ~v24;
      while (1)
      {
        v27 = (*(v15 + 48) + 16 * v25);
        v28 = *v27 == v22 && v27[1] == v21;
        if (v28 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v25 = (v25 + 1) & v26;
        if (((*(v18 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      if (v17 == v16)
      {
        goto LABEL_35;
      }
    }

    else
    {
LABEL_27:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_218C34E50(0, *(v19 + 16) + 1, 1);
      }

      v30 = *(v19 + 16);
      v29 = *(v19 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_218C34E50((v29 > 1), v30 + 1, 1);
      }

      *(v19 + 16) = v30 + 1;
      v31 = v19 + 16 * v30;
      *(v31 + 32) = v22;
      *(v31 + 40) = v21;
      v2 = v52;
      if (v17 == v16)
      {
        goto LABEL_35;
      }
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_218D3B15C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_218D3B384;
  }

  else
  {
    v2 = sub_218D3B270;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D3B270()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3B2FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3B384()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3B40C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_218D3B4BC(a1, a2, a3);
}

uint64_t sub_218D3B4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_218D3BC60(0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D3B5AC, 0, 0);
}

uint64_t sub_218D3B5AC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_218D3BC94(0);
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_218D3BD28(*(v0 + 48), sub_218D3BC60);
  }

  else
  {
    sub_218D452AC(*(v0 + 48), *(v0 + 72), type metadata accessor for TodayFeedGroup);
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_218D3BD28(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_218D4575C(*(v0 + 40), *(v0 + 24), sub_218D3BC94);
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 1;
LABEL_4:
  (*(*(v5 - 8) + 56))(*(v0 + 24), v6, 1, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_218D3B79C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 56));

  return v2;
}

double sub_218D3B7D4@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs(0);
  a2[4] = sub_2186DF73C(&qword_280EE1470, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs, &unk_219C3ED4C);
  a2[5] = sub_2186DF73C(&qword_280EE1478, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs, &unk_219C3ED74);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  sub_218D4575C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs);
  return result;
}

uint64_t sub_218D3B898(uint64_t a1)
{
  sub_2189AE994(0);
  v2 = sub_219BEE964();
  sub_2191EE478(MEMORY[0x277D84F90]);
  return v2;
}

uint64_t sub_218D3B908@<X0>(uint64_t *a2@<X8>)
{
  sub_2186D89EC(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186DF3DC(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218D3BD28(inited + 32, sub_2188317B0);
  sub_218D457C4(0);
  a2[3] = v6;
  a2[4] = sub_2186DF73C(&qword_280EE7A68, sub_218D457C4, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_218D3BA8C(uint64_t a1)
{
  sub_2186DF73C(&qword_280EE17C0, type metadata accessor for LocalNewsTodayFeedGroupEmitter, &unk_219C33588);

  return sub_219BE2324();
}

void sub_218D3BC94(uint64_t a1)
{
  if (!qword_280E91120)
  {
    type metadata accessor for TodayFeedGroup(255);
    sub_2186DF73C(&qword_280EDB780, type metadata accessor for TodayFeedGroup, &unk_219C0DEC8);
    v1 = sub_219BEFDB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91120);
    }
  }
}

uint64_t sub_218D3BD28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D3BD88(uint64_t a1, uint64_t a2)
{
  v2[100] = a2;
  v2[99] = a1;
  v2[101] = type metadata accessor for LocalNewsTodayFeedGroupConfigData(0);
  v2[102] = swift_task_alloc();
  v3 = *(type metadata accessor for LocalNewsTodayFeedGroupEmitter(0) - 8);
  v2[103] = v3;
  v2[104] = *(v3 + 64);
  v2[105] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D3BE80, 0, 0);
}

uint64_t sub_218D3BE80()
{
  v1 = v0[105];
  v2 = v0[103];
  v3 = v0[102];
  v4 = v0[101];
  sub_218D4575C(v0[100], v1, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v0[106] = v6;
  sub_218D452AC(v1, v6 + v5, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  v7 = MEMORY[0x277D83940];
  sub_2186F84A8(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  swift_asyncLet_begin();
  sub_2186DF3DC(0);
  sub_219BEDD14();
  v8 = *(v3 + *(v4 + 28));

  sub_218D3BD28(v3, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  v0[93] = v8;
  sub_2186F84A8(0, &qword_280E8F400, &type metadata for LocalNewsTodayFeedGroupConfigData.Channel, v7);
  sub_218B8BDA8();
  sub_218B8BE24();
  v0[107] = sub_219BF56C4();

  return MEMORY[0x282200930](v0 + 2, v0 + 87, sub_218D3C05C, v0 + 82);
}

uint64_t sub_218D3C05C()
{
  *(v1 + 864) = v0;
  if (v0)
  {
    v2 = sub_218D3C2FC;
  }

  else
  {
    v2 = sub_218D3C090;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D3C090()
{
  v1 = v0[87];
  v2 = *(v1 + 16);

  if (v2)
  {
    v8 = 0;
    v9 = v0[107];
    v10 = -v2;
    v11 = v1 + 40;
    v12 = MEMORY[0x277D84F90];
    while (1)
    {
      v13 = (v11 + 16 * v8++);
      while (1)
      {
        if ((v8 - 1) >= *(v1 + 16))
        {
          __break(1u);
          return MEMORY[0x282200920](isUniquelyReferenced_nonNull_native, v4, v5, v6, v7);
        }

        if (*(v9 + 16))
        {
          break;
        }

LABEL_4:
        ++v8;
        v13 += 2;
        if (v10 + v8 == 1)
        {
          goto LABEL_16;
        }
      }

      v15 = *(v13 - 1);
      v14 = *v13;

      v16 = sub_21870F700(v15, v14);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = (*(v9 + 56) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_2191F7D64(0, *(v12 + 16) + 1, 1, v12);
        v12 = isUniquelyReferenced_nonNull_native;
      }

      v22 = *(v12 + 16);
      v21 = *(v12 + 24);
      if (v22 >= v21 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_2191F7D64((v21 > 1), v22 + 1, 1, v12);
        v12 = isUniquelyReferenced_nonNull_native;
      }

      *(v12 + 16) = v22 + 1;
      v23 = v12 + 16 * v22;
      *(v23 + 32) = v20;
      *(v23 + 40) = v19;
      v11 = v1 + 40;
      if (!(v10 + v8))
      {
        goto LABEL_16;
      }
    }

    goto LABEL_4;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_16:
  v24 = v0[99];

  *v24 = v12;
  v5 = sub_218D3C264;
  isUniquelyReferenced_nonNull_native = (v0 + 2);
  v4 = v0 + 87;
  v6 = v0 + 94;

  return MEMORY[0x282200920](isUniquelyReferenced_nonNull_native, v4, v5, v6, v7);
}

uint64_t sub_218D3C280()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3C2FC()
{

  return MEMORY[0x282200920](v0 + 16, v0 + 696, sub_218D3C368, v0 + 704, v1);
}

uint64_t sub_218D3C384()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3C400(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_218D3C420, 0, 0);
}

uint64_t sub_218D3C420()
{
  v1 = v0[3];
  v2 = type metadata accessor for LocalNewsTodayFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 32)), *(v1 + *(v2 + 32) + 24));
  v0[4] = sub_2193C4AC4();
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_218D3C4E4;
  v4 = v0[2];

  return MEMORY[0x2821D23D8](v4);
}

uint64_t sub_218D3C4E4()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218D3C620, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_218D3C620()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3C684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for LocalNewsTodayFeedGroupEmitter(0);
  v4[7] = swift_task_alloc();
  type metadata accessor for TodayFeedGroup(0);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D3C748, 0, 0);
}

uint64_t sub_218D3C748(__n128 a1)
{
  v2 = v1[4];
  v3 = v2[2];
  v1[9] = v3;
  if (v3)
  {
    v4 = v2[4];
    v1[10] = v4;
    v5 = v2[5];
    v1[11] = v5;

    v6 = swift_task_alloc();
    v1[12] = v6;
    *v6 = v1;
    v6[1] = sub_218D3C908;
    v7 = v1[3];

    return sub_218D3D490(v4, v5, v7);
  }

  else
  {
    v9 = sub_219BEEDD4();
    sub_2186DF73C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D323C8], v9);
    swift_willThrow();

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_218D3C908(char a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_218D3CA08, 0, 0);
}

uint64_t sub_218D3CA08()
{
  if (*(v0 + 168) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_218D3CB58;
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 24);

    return sub_218D3DE20(v5, v3, v4, v6, v2);
  }

  else
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 32);

    sub_218B66968(v9, v9 + 32, 1, (2 * v8) | 1);
    v11 = v10;
    *(v0 + 120) = v10;
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    v12[1] = sub_218D3CDC0;
    v13 = *(v0 + 16);
    v14 = *(v0 + 24);

    return sub_218D3C684(v13, v14, v11);
  }
}

uint64_t sub_218D3CB58()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_218D3CF84;
  }

  else
  {

    v2 = sub_218D3CC74;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D3CC74()
{
  sub_218B66968(v0[4], v0[4] + 32, 1, (2 * v0[9]) | 1);
  v2 = v1;
  v3 = v0[8];
  v4 = v0[2];
  if (*(v1 + 16))
  {
    sub_218B8B468(0);
    v6 = (v4 + *(v5 + 48));
    sub_218D4575C(v3, v4, type metadata accessor for TodayFeedGroup);
    v6[3] = &type metadata for LocalNewsTodayFeedGroupEmitterCursor;
    *v6 = v2;
    sub_218D3BD28(v3, type metadata accessor for TodayFeedGroup);
  }

  else
  {

    sub_218D452AC(v3, v4, type metadata accessor for TodayFeedGroup);
  }

  sub_218B8B124(0);
  swift_storeEnumTagMultiPayload();

  v7 = v0[1];

  return v7();
}

uint64_t sub_218D3CDC0()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218D3CF10, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_218D3CF10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3CF84()
{
  v28 = v0;
  v1 = v0[14];
  sub_218D4575C(v0[5], v0[7], type metadata accessor for LocalNewsTodayFeedGroupEmitter);

  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v25 = v0[10];
    v26 = v0[14];
    v6 = v0[6];
    v7 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v8 = 136446722;
    v11 = (v7 + *(v6 + 56));
    v13 = *v11;
    v12 = v11[1];

    sub_218D3BD28(v7, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    v14 = sub_2186D1058(v13, v12, &v27);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2082;
    v15 = sub_2186D1058(v25, v5, &v27);

    *(v8 + 14) = v15;
    *(v8 + 22) = 2114;
    v16 = v26;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v17;
    *v9 = v17;
    _os_log_impl(&dword_2186C1000, v3, v4, "%{public}s failed to form group for channel.  Trying the next one.  channel=%{public}s, error=%{public}@", v8, 0x20u);
    sub_218D3BD28(v9, sub_2189B3F3C);
    MEMORY[0x21CECF960](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  else
  {
    v18 = v0[7];

    sub_218D3BD28(v18, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  }

  sub_218B66968(v0[4], v0[4] + 32, 1, (2 * v0[9]) | 1);
  v20 = v19;
  v0[18] = v19;
  v21 = swift_task_alloc();
  v0[19] = v21;
  *v21 = v0;
  v21[1] = sub_218D3D280;
  v22 = v0[2];
  v23 = v0[3];

  return sub_218D3C684(v22, v23, v20);
}

uint64_t sub_218D3D280()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_218D3D410;
  }

  else
  {

    v2 = sub_218D3D39C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D3D39C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3D410()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218D3D490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[7] = type metadata accessor for LocalNewsTodayFeedGroupEmitter(0);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D3D528, 0, 0);
}

uint64_t sub_218D3D528()
{
  v37 = v0;
  v1 = *(v0[6] + *(v0[7] + 44));
  v2 = sub_219BF53D4();
  v3 = [v1 hasSubscriptionToTagID_];

  if (v3 & 1) != 0 || (sub_219BEF0B4(), , v4 = NewsCoreUserDefaults(), v5 = [v4 BOOLForKey_], v4, (v5))
  {
LABEL_3:

    v6 = v0[1];

    return v6(v3);
  }

  v8 = [*(v0[6] + *(v0[7] + 36)) mostFrequentLocation];
  v0[9] = v8;
  if (!v8)
  {
    v16 = sub_219BEEDD4();
    sub_2186DF73C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    v17 = swift_allocError();
    *v18 = 0xD000000000000016;
    v18[1] = 0x8000000219CF48D0;
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D323D8], v16);
    swift_willThrow();
    sub_218D4575C(v0[6], v0[8], type metadata accessor for LocalNewsTodayFeedGroupEmitter);

    v19 = v17;
    v20 = sub_219BE5414();
    v21 = sub_219BF61F4();

    v22 = os_log_type_enabled(v20, v21);
    v23 = v0[8];
    if (v22)
    {
      v24 = v0[7];
      v33 = v0[3];
      v34 = v0[4];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36[0] = v35;
      *v25 = 136446722;
      v27 = (v23 + *(v24 + 56));
      v29 = *v27;
      v28 = v27[1];

      sub_218D3BD28(v23, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
      v30 = sub_2186D1058(v29, v28, v36);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_2186D1058(v33, v34, v36);
      *(v25 + 22) = 2114;
      v31 = v17;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 24) = v32;
      *v26 = v32;
      _os_log_impl(&dword_2186C1000, v20, v21, "%{public}s failed location check for channel.  channel=%{public}s, error=%{public}@", v25, 0x20u);
      sub_218D3BD28(v26, sub_2189B3F3C);
      MEMORY[0x21CECF960](v26, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v35, -1, -1);
      MEMORY[0x21CECF960](v25, -1, -1);
    }

    else
    {

      sub_218D3BD28(v23, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    }

    goto LABEL_3;
  }

  v9 = v8;
  v10 = v0[6];
  v12 = v0[3];
  v11 = v0[4];
  v13 = swift_task_alloc();
  v0[10] = v13;
  v13[2] = v10;
  v13[3] = v9;
  v13[4] = v12;
  v13[5] = v11;
  v14 = swift_task_alloc();
  v0[11] = v14;
  *v14 = v0;
  v14[1] = sub_218D3D9F4;
  v15 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](v0 + 13, 0, 0, 0xD00000000000002BLL, 0x8000000219CF48F0, sub_218D4550C, v13, v15);
}

uint64_t sub_218D3D9F4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_218D3DB80;
  }

  else
  {

    v2 = sub_218D3DB10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D3DB10()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_218D3DB80()
{
  v22 = v0;

  v1 = *(v0 + 96);
  sub_218D4575C(*(v0 + 48), *(v0 + 64), type metadata accessor for LocalNewsTodayFeedGroupEmitter);

  v2 = v1;
  v3 = sub_219BE5414();
  v4 = sub_219BF61F4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 64);
  if (v5)
  {
    v7 = *(v0 + 56);
    v19 = *(v0 + 24);
    v20 = *(v0 + 32);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v8 = 136446722;
    v11 = (v6 + *(v7 + 56));
    v12 = *v11;
    v13 = v11[1];

    sub_218D3BD28(v6, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    v14 = sub_2186D1058(v12, v13, &v21);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_2186D1058(v19, v20, &v21);
    *(v8 + 22) = 2114;
    v15 = v1;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 24) = v16;
    *v9 = v16;
    _os_log_impl(&dword_2186C1000, v3, v4, "%{public}s failed location check for channel.  channel=%{public}s, error=%{public}@", v8, 0x20u);
    sub_218D3BD28(v9, sub_2189B3F3C);
    MEMORY[0x21CECF960](v9, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  else
  {

    sub_218D3BD28(v6, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  }

  v17 = *(v0 + 8);

  return v17(0);
}

uint64_t sub_218D3DE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6[203] = v5;
  v6[197] = a4;
  v6[191] = a3;
  v6[185] = a2;
  v6[179] = a1;
  v6[209] = *(type metadata accessor for ChannelSectionsGroupSectionModel(0) - 8);
  v6[215] = swift_task_alloc();
  v6[221] = type metadata accessor for LocalNewsTodayFeedGroupConfigData(0);
  v6[222] = swift_task_alloc();
  v7 = sub_219BF0BD4();
  v6[223] = v7;
  v6[224] = *(v7 - 8);
  v6[225] = swift_task_alloc();
  sub_2186D89EC(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v6[226] = swift_task_alloc();
  sub_219BEF554();
  v6[227] = swift_task_alloc();
  v6[228] = swift_task_alloc();
  v8 = sub_219BED8D4();
  v6[229] = v8;
  v6[230] = *(v8 - 8);
  v6[231] = swift_task_alloc();
  v9 = sub_219BF1904();
  v6[232] = v9;
  v6[233] = *(v9 - 8);
  v6[234] = swift_task_alloc();
  sub_2186FE720(0);
  v6[235] = swift_task_alloc();
  v10 = sub_219BF2034();
  v6[236] = v10;
  v11 = *(v10 - 8);
  v6[237] = v11;
  v6[238] = *(v11 + 64);
  v6[239] = swift_task_alloc();
  v6[240] = swift_task_alloc();
  v12 = sub_219BF47F4();
  v6[241] = v12;
  v6[242] = *(v12 - 8);
  v6[243] = swift_task_alloc();
  v13 = sub_219BF3E84();
  v6[244] = v13;
  v6[245] = *(v13 - 8);
  v6[246] = swift_task_alloc();
  v14 = type metadata accessor for LocalNewsTodayFeedGroupEmitter(0);
  v6[247] = v14;
  v15 = *(v14 - 8);
  v6[248] = v15;
  v6[249] = *(v15 + 64);
  v6[250] = swift_task_alloc();
  v6[251] = swift_task_alloc();
  sub_2186E2AFC(0);
  v6[252] = v16;
  v6[253] = swift_task_alloc();
  v6[254] = swift_task_alloc();
  v17 = type metadata accessor for ChannelHeadlineServiceResult(0);
  v6[255] = v17;
  v18 = *(v17 - 8);
  v6[256] = v18;
  v6[257] = *(v18 + 64);
  v6[258] = swift_task_alloc();
  v6[259] = swift_task_alloc();
  v6[260] = swift_task_alloc();
  type metadata accessor for ChannelHeadlineServiceRequest(0);
  v6[261] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D3E36C, 0, 0);
}

uint64_t sub_218D3E36C()
{
  sub_218D40240(v0[185], v0[191], v0[197], v0[261]);
  v1 = (v0[203] + *(v0[247] + 28));
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v2 = swift_task_alloc();
  v0[262] = v2;
  *v2 = v0;
  v2[1] = sub_218D3E5B4;
  v3 = v0[261];
  v4 = v0[260];

  return sub_219363BE0(v4, v3);
}

uint64_t sub_218D3E5B4()
{
  *(*v1 + 2104) = v0;

  if (v0)
  {
    v2 = sub_218D3ED70;
  }

  else
  {
    v2 = sub_218D3E6C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D3E6C8()
{
  v1 = *(v0 + 2080);
  v2 = *(v0 + 2072);
  v3 = *(v0 + 2048);
  v47 = *(v0 + 2104);
  v4 = *(v0 + 2008);
  v5 = *(v0 + 1992);
  v6 = *(v0 + 1984);
  v44 = *(v0 + 1968);
  sub_218D4575C(*(v0 + 1624), v4, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  sub_218D4575C(v1, v2, type metadata accessor for ChannelHeadlineServiceResult);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v7 + v5;
  v9 = *(v3 + 80);
  v10 = swift_allocObject();
  *(v0 + 2112) = v10;
  sub_218D452AC(v4, v10 + v7, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  sub_218D452AC(v2, v10 + ((v8 + v9) & ~v9), type metadata accessor for ChannelHeadlineServiceResult);
  swift_asyncLet_begin();
  sub_218D41AC8(v1, v44);
  *(v0 + 2120) = v47;
  if (v47)
  {
    v12 = *(v0 + 2032);

    return MEMORY[0x282200920](v0 + 16, v12, sub_218D3FB58, v0 + 1296, v11);
  }

  else
  {
    v48 = v8;
    sub_218D420B4(*(v0 + 2080), *(v0 + 1944), v11);
    *(v0 + 2128) = 0;
    v13 = *(v0 + 2080);
    v35 = v13;
    v43 = *(v0 + 2064);
    v14 = *(v0 + 2040);
    v41 = *(v0 + 2000);
    v46 = v7;
    v15 = *(v0 + 1968);
    v16 = *(v0 + 1960);
    v17 = *(v0 + 1952);
    v32 = *(v0 + 1944);
    v18 = *(v0 + 1936);
    v19 = *(v0 + 1928);
    v36 = *(v0 + 1920);
    v40 = *(v0 + 1912);
    v42 = *(v0 + 1904);
    v38 = *(v0 + 1896);
    v39 = *(v0 + 1888);
    v33 = *(v0 + 1880);
    v37 = *(v0 + 1624);
    v45 = *(v0 + 1576);
    sub_2186F84A8(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_219C146A0;
    v20 = *(v14 + 24);
    *(v0 + 2168) = v20;
    *(v34 + 32) = *(v13 + v20);
    v21 = MEMORY[0x277D84560];
    sub_2186D89EC(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_219C09BA0;
    (*(v16 + 16))(v23 + v22, v15, v17);
    sub_2186D89EC(0, &unk_280E8B780, MEMORY[0x277D34500], v21);
    v24 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_219C09BA0;
    (*(v18 + 16))(v25 + v24, v32, v19);
    v26 = sub_219BEC004();
    (*(*(v26 - 8) + 56))(v33, 1, 1, v26);
    swift_unknownObjectRetain();
    v27 = MEMORY[0x277D84F90];
    sub_219A95188(MEMORY[0x277D84F90]);
    sub_219A95188(v27);
    sub_219A951A0(v27);
    sub_219A951B8(v27);
    sub_219A952CC(v27);
    sub_219A952E4(v27);
    sub_219A953F8(v27);
    sub_219BF2024();
    sub_218D4575C(v37, v41, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    (*(v38 + 16))(v40, v36, v39);
    sub_218D4575C(v35, v43, type metadata accessor for ChannelHeadlineServiceResult);
    v28 = (v48 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = (v28 + *(v38 + 80) + 8) & ~*(v38 + 80);
    v30 = swift_allocObject();
    *(v0 + 2136) = v30;
    sub_218D452AC(v41, v30 + v46, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    *(v30 + v28) = v45;
    (*(v38 + 32))(v30 + v29, v40, v39);
    sub_218D452AC(v43, v30 + ((v42 + v9 + v29) & ~v9), type metadata accessor for ChannelHeadlineServiceResult);

    sub_219BF2754();
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 656, v0 + 1336, sub_218D3EF20, v0 + 1392);
  }
}

uint64_t sub_218D3ED70()
{
  sub_218D3BD28(*(v0 + 2088), type metadata accessor for ChannelHeadlineServiceRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218D3EF20(__n128 a1)
{
  v2[268] = v1;
  if (v1)
  {

    return MEMORY[0x282200920](v2 + 82, v2 + 167, sub_218D3FF48, v2 + 180, a1);
  }

  else
  {
    v2[269] = v2[167];

    v3 = v2[254];

    return MEMORY[0x282200928](v2 + 2, v3, sub_218D3EFD4, v2 + 192);
  }
}

uint64_t sub_218D3EFF0()
{
  v1 = *(v0 + 1872);
  v2 = *(v0 + 1864);
  v3 = *(v0 + 1856);
  sub_218D4575C(*(v0 + 2032), *(v0 + 2024), sub_2186E2AFC);
  sub_219BF2734();
  v4 = sub_219BF1844();
  (*(v2 + 8))(v1, v3);
  if (!v4)
  {
    goto LABEL_9;
  }

  *(v0 + 1384) = &unk_282B7DDA8;
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (!v5)
  {
    swift_unknownObjectRelease();
LABEL_9:
    v31 = *(v0 + 2024);
    v32 = sub_219BEEDD4();
    sub_2186DF73C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    *(v0 + 2160) = swift_allocError();
    *v33 = 0xD00000000000001BLL;
    v33[1] = 0x8000000219CF4890;
    (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D323D8], v32);
    swift_willThrow();

    sub_218D3BD28(v31, sub_2186E2AFC);
    v27 = sub_218D3F860;
    v28 = v0 + 656;
    v29 = v0 + 1336;
    v30 = v0 + 1584;
    goto LABEL_10;
  }

  v40 = v5;
  v6 = *(v0 + 1800);
  v7 = *(v0 + 1792);
  v35 = *(v0 + 1784);
  v38 = *(v0 + 2080) + *(v0 + 2168);
  sub_2186DF3DC(0);

  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs(0);
  sub_219BEF134();
  sub_2189AE9B4(0);
  sub_219BEEC94();
  (*(v7 + 8))(v6, v35);
  sub_219BED844();
  v8 = *(v38 + *(type metadata accessor for ChannelSectionsGroupModel(0) + 24));
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = *(v0 + 1672);
    v41 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v12 = v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    do
    {
      v14 = *(v0 + 1720);
      sub_218D4575C(v12, v14, type metadata accessor for ChannelSectionsGroupSectionModel);
      swift_unknownObjectRetain();
      sub_218D3BD28(v14, type metadata accessor for ChannelSectionsGroupSectionModel);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v12 += v13;
      --v9;
    }

    while (v9);
    v10 = v41;
  }

  v37 = *(v0 + 1848);
  v39 = *(v0 + 2024);
  v15 = *(v0 + 1840);
  v36 = *(v0 + 1832);
  v16 = *(v0 + 1776);
  v17 = *(v0 + 1768);
  v18 = *(v0 + 1432);
  sub_219BEDD14();
  v19 = *(v16 + *(v17 + 84));

  sub_218D3BD28(v16, type metadata accessor for LocalNewsTodayFeedGroupConfigData);

  v21 = sub_21959DB3C(v20);
  v23 = v22;

  (*(v15 + 32))(v18, v37, v36);
  v24 = type metadata accessor for LocalNewsTodayFeedGroup(0);
  *(v18 + v24[5]) = v40;
  *(v18 + v24[6]) = v10;
  sub_218D452AC(v39, v18 + v24[7], sub_2186E2AFC);
  *(v18 + v24[8]) = v19;
  v25 = v18 + v24[9];
  *v25 = v21;
  *(v25 + 8) = v23 & 1;
  type metadata accessor for TodayFeedGroup(0);
  swift_storeEnumTagMultiPayload();
  v27 = sub_218D3F56C;
  v28 = v0 + 656;
  v29 = v0 + 1336;
  v30 = v0 + 1680;
LABEL_10:

  return MEMORY[0x282200920](v28, v29, v27, v30, v26);
}

uint64_t sub_218D3F588()
{
  v1 = v0[246];
  v2 = v0[245];
  v3 = v0[244];
  v4 = v0[243];
  v5 = v0[242];
  v6 = v0[241];
  (*(v0[237] + 8))(v0[240], v0[236]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v8 = v0[254];

  return MEMORY[0x282200920](v0 + 2, v8, sub_218D3F660, v0 + 216, v7);
}

uint64_t sub_218D3F67C()
{
  v1 = v0[260];
  sub_218D3BD28(v0[261], type metadata accessor for ChannelHeadlineServiceRequest);
  sub_218D3BD28(v1, type metadata accessor for ChannelHeadlineServiceResult);

  v2 = v0[1];

  return v2();
}

uint64_t sub_218D3F87C()
{
  v1 = v0[246];
  v2 = v0[245];
  v3 = v0[244];
  v4 = v0[243];
  v5 = v0[242];
  v6 = v0[241];
  (*(v0[237] + 8))(v0[240], v0[236]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v8 = v0[254];

  return MEMORY[0x282200920](v0 + 2, v8, sub_218D3F954, v0 + 204, v7);
}

uint64_t sub_218D3F970()
{
  v1 = v0[260];
  sub_218D3BD28(v0[261], type metadata accessor for ChannelHeadlineServiceRequest);
  sub_218D3BD28(v1, type metadata accessor for ChannelHeadlineServiceResult);

  v2 = v0[1];

  return v2();
}

uint64_t sub_218D3FB74()
{
  v1 = v0[260];
  sub_218D3BD28(v0[261], type metadata accessor for ChannelHeadlineServiceRequest);
  sub_218D3BD28(v1, type metadata accessor for ChannelHeadlineServiceResult);

  v2 = v0[1];

  return v2();
}

uint64_t sub_218D3FD6C()
{
  v1 = v0[260];
  sub_218D3BD28(v0[261], type metadata accessor for ChannelHeadlineServiceRequest);
  sub_218D3BD28(v1, type metadata accessor for ChannelHeadlineServiceResult);

  v2 = v0[1];

  return v2();
}

uint64_t sub_218D3FF64()
{
  v1 = v0[246];
  v2 = v0[245];
  v3 = v0[244];
  v4 = v0[243];
  v5 = v0[242];
  v6 = v0[241];
  (*(v0[237] + 8))(v0[240], v0[236]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v8 = v0[254];

  return MEMORY[0x282200920](v0 + 2, v8, sub_218D4003C, v0 + 186, v7);
}

uint64_t sub_218D40058()
{
  v1 = v0[260];
  sub_218D3BD28(v0[261], type metadata accessor for ChannelHeadlineServiceRequest);
  sub_218D3BD28(v1, type metadata accessor for ChannelHeadlineServiceResult);

  v2 = v0[1];

  return v2();
}

void sub_218D40240(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v77 = a1;
  v75 = a4;
  v76 = a2;
  v6 = sub_219BF0BD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D435F8(a3);
  v79 = v10;
  v11 = v4 + *(type metadata accessor for LocalNewsTodayFeedGroupEmitter(0) + 20);
  v12 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v13 = v15;
  v15(v9, v6);
  v74 = v90;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v73 = v89;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v72 = v88;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v71 = v87;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v70 = v86;
  sub_219BEF134();
  sub_219BEF524();
  v15(v9, v6);
  v16 = v85;
  v17 = v78;
  sub_219BEF164();
  if (v17)
  {

    return;
  }

  v66 = v12;
  v67 = v13;
  v68 = v11;
  v69 = v6;
  v18 = *(v84 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);

  sub_219BEF164();
  v19 = a3;
  v65 = v16;
  v20 = *(v83 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 24);

  sub_219BEF134();
  sub_219BEF524();
  v67(v9, v69);
  v21 = v82;
  sub_219BEF164();
  v60[1] = v19;
  v62 = v20;
  v63 = v18;
  v22 = *(v81 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines);

  v23 = v22;
  if (v22 >> 62)
  {
    v58 = sub_219BF7214();
    v59 = v22;
    v24 = v58;
    v23 = v59;
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = v77;
  v64 = 0;
  v61 = v21;
  if (v24)
  {
    v26 = v23;
    v80 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v24 & ~(v24 >> 63), 0);
    v60[0] = v14;
    if (v24 < 0)
    {
      __break(1u);
      return;
    }

    v27 = 0;
    v28 = v80;
    v29 = v26;
    v78 = v26 & 0xC000000000000001;
    v30 = v24;
    v31 = v26;
    do
    {
      if (v78)
      {
        v32 = MEMORY[0x21CECE0F0](v27, v29);
      }

      else
      {
        v32 = *(v29 + 8 * v27 + 32);
        swift_unknownObjectRetain();
      }

      v33 = [v32 identifier];
      v34 = sub_219BF5414();
      v36 = v35;
      swift_unknownObjectRelease();

      v80 = v28;
      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_21870B65C((v37 > 1), v38 + 1, 1);
        v28 = v80;
      }

      ++v27;
      *(v28 + 16) = v38 + 1;
      v39 = v28 + 16 * v38;
      *(v39 + 32) = v34;
      *(v39 + 40) = v36;
      v29 = v31;
    }

    while (v30 != v27);

    v25 = v77;
    v40 = v69;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
    v40 = v69;
  }

  v78 = sub_218845F78(v28);

  sub_219BEF134();
  sub_219BEF524();
  v67(v9, v40);
  v41 = v80;
  v42 = type metadata accessor for ChannelHeadlineServiceRequest(0);
  v43 = v42[17];
  v44 = *MEMORY[0x277D32928];
  v45 = sub_219BEFBD4();
  v46 = v75;
  (*(*(v45 - 8) + 104))(v75 + v43, v44, v45);
  sub_219BEF0B4();
  v47 = *(v81 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v48 = qword_280F616D8;
  v49 = *MEMORY[0x277D30BC8];
  v50 = v76;
  *v46 = v25;
  *(v46 + 8) = v50;
  v51 = v73;
  v52 = v74;
  *(v46 + 16) = v79;
  *(v46 + 24) = v52;
  *(v46 + 32) = 0;
  *(v46 + 40) = v51;
  v53 = v71;
  *(v46 + 48) = v72;
  *(v46 + 56) = v53;
  v54 = v65;
  *(v46 + 64) = v70;
  *(v46 + 72) = v54;
  v55 = v62;
  *(v46 + 80) = v63;
  *(v46 + 88) = v55;
  *(v46 + 96) = v61;
  *(v46 + 104) = v78;
  *(v46 + 112) = v41;
  *(v46 + v42[18]) = v47;
  *(v46 + v42[19]) = v48;
  *(v46 + v42[20]) = v49;
  v56 = v48;
  v57 = v49;
}

uint64_t sub_218D40994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_218D409B8, 0, 0);
}

uint64_t sub_218D409B8()
{
  v1 = v0[4];
  v2 = *(v1 + *(type metadata accessor for ChannelHeadlineServiceResult(0) + 24));
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_218C1CD8C;
  v4 = v0[2];

  return sub_218D40A64(v4, v2);
}

uint64_t sub_218D40A64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for LocalNewsTodayFeedGroupEmitter(0);
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  sub_218D45314(0);
  v3[8] = v4;
  v3[9] = swift_task_alloc();
  v5 = sub_219BF1404();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D40B94, 0, 0);
}

uint64_t sub_218D40B94()
{
  v38 = v0;
  v1 = [*(*(v0 + 32) + *(*(v0 + 40) + 36)) mostFrequentLocation];
  *(v0 + 104) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    v3[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
    v3[2].i64[0] = v2;
    v4 = swift_task_alloc();
    *(v0 + 120) = v4;
    *v4 = v0;
    v4[1] = sub_218D41070;
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);

    return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000011, 0x8000000219CF48B0, sub_218D45348, v3, v6);
  }

  else
  {
    sub_218D44610(*(v0 + 24), *(v0 + 72));
    v7 = *(v0 + 80);
    v8 = *(v0 + 88);
    v9 = *(v0 + 72);
    v10 = (*(v8 + 48))(v9, 1, v7);
    v11 = *(v0 + 32);
    v12 = *(v0 + 40);
    if (v10 == 1)
    {
      v13 = *(v0 + 56);
      sub_218D3BD28(v9, sub_218D45314);
      sub_218D4575C(v11, v13, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
      swift_unknownObjectRetain();
      v14 = sub_219BE5414();
      v15 = sub_219BF61D4();
      swift_unknownObjectRelease();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v0 + 56);
      if (v16)
      {
        v18 = *(v0 + 40);
        v19 = *(v0 + 24);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v37 = v21;
        *v20 = 136446466;
        v22 = (v17 + *(v18 + 56));
        v23 = *v22;
        v24 = v22[1];

        sub_218D3BD28(v17, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
        v25 = sub_2186D1058(v23, v24, &v37);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2082;
        v26 = [v19 identifier];
        v27 = sub_219BF5414();
        v29 = v28;

        v30 = sub_2186D1058(v27, v29, &v37);

        *(v20 + 14) = v30;
        _os_log_impl(&dword_2186C1000, v14, v15, "%{public}s found no geo location for channel.  Skipping weather.  channel=%{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v21, -1, -1);
        MEMORY[0x21CECF960](v20, -1, -1);
      }

      else
      {

        sub_218D3BD28(v17, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
      }

      v33 = *(v0 + 16);
      v34 = sub_219BF0D34();
      (*(*(v34 - 8) + 56))(v33, 1, 1, v34);

      v35 = *(v0 + 8);

      return v35();
    }

    else
    {
      (*(v8 + 32))(*(v0 + 96), v9, v7);
      __swift_project_boxed_opaque_existential_1((v11 + *(v12 + 48)), *(v11 + *(v12 + 48) + 24));
      *(v0 + 128) = sub_219BEF404();
      v31 = swift_task_alloc();
      *(v0 + 136) = v31;
      *v31 = v0;
      v31[1] = sub_218D4155C;
      v32 = *(v0 + 16);

      return MEMORY[0x2821D23D8](v32);
    }
  }
}

uint64_t sub_218D41070()
{

  return MEMORY[0x2822009F8](sub_218D41188, 0, 0);
}

uint64_t sub_218D41188()
{
  v32 = v0;

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = (*(v2 + 48))(v3, 1, v1);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  if (v4 == 1)
  {
    v7 = *(v0 + 56);
    sub_218D3BD28(v3, sub_218D45314);
    sub_218D4575C(v5, v7, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    swift_unknownObjectRetain();
    v8 = sub_219BE5414();
    v9 = sub_219BF61D4();
    swift_unknownObjectRelease();
    v10 = os_log_type_enabled(v8, v9);
    v11 = *(v0 + 56);
    if (v10)
    {
      v12 = *(v0 + 40);
      v13 = *(v0 + 24);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v15;
      *v14 = 136446466;
      v16 = (v11 + *(v12 + 56));
      v17 = *v16;
      v18 = v16[1];

      sub_218D3BD28(v11, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
      v19 = sub_2186D1058(v17, v18, &v31);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2082;
      v20 = [v13 identifier];
      v21 = sub_219BF5414();
      v23 = v22;

      v24 = sub_2186D1058(v21, v23, &v31);

      *(v14 + 14) = v24;
      _os_log_impl(&dword_2186C1000, v8, v9, "%{public}s found no geo location for channel.  Skipping weather.  channel=%{public}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v15, -1, -1);
      MEMORY[0x21CECF960](v14, -1, -1);
    }

    else
    {

      sub_218D3BD28(v11, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    }

    v27 = *(v0 + 16);
    v28 = sub_219BF0D34();
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    (*(v2 + 32))(*(v0 + 96), v3, v1);
    __swift_project_boxed_opaque_existential_1((v5 + *(v6 + 48)), *(v5 + *(v6 + 48) + 24));
    *(v0 + 128) = sub_219BEF404();
    v25 = swift_task_alloc();
    *(v0 + 136) = v25;
    *v25 = v0;
    v25[1] = sub_218D4155C;
    v26 = *(v0 + 16);

    return MEMORY[0x2821D23D8](v26);
  }
}

uint64_t sub_218D4155C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_218D4177C;
  }

  else
  {
    v2 = sub_218D4168C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218D4168C()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[2];
  v2 = sub_219BF0D34();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_218D4177C()
{
  v31 = v0;
  v1 = v0[18];
  v2 = v0[6];
  v3 = v0[4];
  (*(v0[11] + 8))(v0[12], v0[10]);
  sub_218D4575C(v3, v2, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  swift_unknownObjectRetain();
  v4 = v1;
  v5 = sub_219BE5414();
  v6 = sub_219BF61F4();
  swift_unknownObjectRelease();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[18];
  v9 = v0[6];
  if (v7)
  {
    v10 = v0[5];
    v29 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v30 = v13;
    *v11 = 136446722;
    v14 = (v9 + *(v10 + 56));
    v16 = *v14;
    v15 = v14[1];

    sub_218D3BD28(v9, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    v17 = sub_2186D1058(v16, v15, &v30);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2082;
    v18 = [v29 identifier];
    v19 = sub_219BF5414();
    v21 = v20;

    v22 = sub_2186D1058(v19, v21, &v30);

    *(v11 + 14) = v22;
    *(v11 + 22) = 2114;
    v23 = v8;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v24;
    *v12 = v24;
    _os_log_impl(&dword_2186C1000, v5, v6, "%{public}s failed to get weather for channel.  channel=%{public}s, error=%{public}@", v11, 0x20u);
    sub_218D3BD28(v12, sub_2189B3F3C);
    MEMORY[0x21CECF960](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v13, -1, -1);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  else
  {

    sub_218D3BD28(v9, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  }

  v25 = v0[2];
  v26 = sub_219BF0D34();
  (*(*(v26 - 8) + 56))(v25, 1, 1, v26);

  v27 = v0[1];

  return v27();
}

void sub_218D41AC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v50 = a1;
  v46 = sub_219BF3C84();
  v51 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0BD4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + *(type metadata accessor for LocalNewsTodayFeedGroupEmitter(0) + 20);
  v9 = type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  v10 = *(v5 + 8);
  v10(v7, v4);
  v49 = v52;
  v11 = *(v8 + *(v9 + 52));
  sub_219BEF134();
  sub_219BEF524();
  v10(v7, v4);
  v12 = v52;
  v13 = *(v50 + *(type metadata accessor for ChannelHeadlineServiceResult(0) + 28));
  v14 = *(v13 + 16);
  if (v14 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v16 = v49;
    if (i < v49)
    {
      break;
    }

    if (v12 < 0)
    {
      __break(1u);
    }

    else
    {
      v13 = *(v13 + 16);
      v11 = v13 >> 62;
      if (!(v13 >> 62))
      {
        v22 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v22 >= v12)
        {
          v23 = v12;
        }

        else
        {
          v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v12)
        {
          v24 = v23;
        }

        else
        {
          v24 = 0;
        }

        if (v22 < v24)
        {
          goto LABEL_51;
        }

        goto LABEL_16;
      }
    }

    v42 = sub_219BF7214();
    if (sub_219BF7214() < 0)
    {
      goto LABEL_54;
    }

    if (v42 >= v12)
    {
      v43 = v12;
    }

    else
    {
      v43 = v42;
    }

    if (v42 < 0)
    {
      v43 = v12;
    }

    if (v12)
    {
      v24 = v43;
    }

    else
    {
      v24 = 0;
    }

    if (sub_219BF7214() < v24)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return;
    }

LABEL_16:
    if ((v13 & 0xC000000000000001) != 0 && v24)
    {
      sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
      swift_bridgeObjectRetain_n();
      v25 = 0;
      do
      {
        v26 = v25 + 1;
        sub_219BF7334();
        v25 = v26;
      }

      while (v24 != v26);
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (v11)
    {
      v28 = sub_219BF7564();
      v29 = v30;
      v27 = v31;
      v33 = v32;

      v24 = v33 >> 1;
    }

    else
    {
      v27 = 0;
      v28 = v13 & 0xFFFFFFFFFFFFFF8;
      v29 = (v13 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v11 = v24 - v27;
    if (__OFSUB__(v24, v27))
    {
      goto LABEL_52;
    }

    if (!v11)
    {
LABEL_36:
      swift_unknownObjectRelease();
      v40 = MEMORY[0x277D84F90];
      sub_218F0B984(MEMORY[0x277D84F90]);
      sub_218F0BA7C(v40);
      sub_218F0BB90(v40);
      sub_219BF3E74();
      return;
    }

    v52 = MEMORY[0x277D84F90];
    sub_218C34A88(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      goto LABEL_53;
    }

    v44[1] = v28;
    v13 = v52;
    LODWORD(v50) = *MEMORY[0x277D34128];
    v48 = v51 + 32;
    v49 = (v51 + 104);
    if (v24 <= v27)
    {
      v34 = v27;
    }

    else
    {
      v34 = v24;
    }

    v35 = v34 - v27;
    v36 = (v29 + 8 * v27);
    v12 = v45;
    v37 = v46;
    while (v35)
    {
      *v12 = *v36;
      (*v49)(v12, v50, v37);
      v52 = v13;
      v39 = *(v13 + 16);
      v38 = *(v13 + 24);
      swift_unknownObjectRetain();
      if (v39 >= v38 >> 1)
      {
        sub_218C34A88((v38 > 1), v39 + 1, 1);
        v13 = v52;
      }

      *(v13 + 16) = v39 + 1;
      (*(v51 + 32))(v13 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v39, v12, v37);
      --v35;
      ++v36;
      if (!--v11)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_38:
    ;
  }

  v17 = sub_219BEEDD4();
  sub_2186DF73C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
  swift_allocError();
  v19 = v18;
  v20 = *(v13 + 16);
  if (v20 >> 62)
  {
    v41 = v18;
    v21 = sub_219BF7214();
    v19 = v41;
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *v19 = v16;
  v19[1] = v21;
  (*(*(v17 - 8) + 104))();
  swift_willThrow();
}

char *sub_218D420B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v41[1] = a2;
  sub_218D45240(0, a3);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = (v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v46 = v41 - v8;
  v45 = sub_219BF3E84();
  v49 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ChannelHeadlineServiceResult(0);
  v12 = *(*(a1 + *(v11 + 28)) + 16);
  if (v12 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v14 = MEMORY[0x277D84F90];
    if (!i)
    {
      v17 = MEMORY[0x277D84F90];
      goto LABEL_14;
    }

    v50 = MEMORY[0x277D84F90];

    result = sub_21870B65C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v42 = v11;
    v43 = a1;
    v44 = v10;
    v16 = 0;
    v17 = v50;
    v18 = v12;
    v48 = v12 & 0xC000000000000001;
    v19 = i;
    do
    {
      if (v48)
      {
        v20 = MEMORY[0x21CECE0F0](v16, v18);
      }

      else
      {
        v20 = *(v18 + 8 * v16 + 32);
        swift_unknownObjectRetain();
      }

      v21 = [v20 identifier];
      v22 = sub_219BF5414();
      v24 = v23;
      swift_unknownObjectRelease();

      v50 = v17;
      v26 = *(v17 + 16);
      v25 = *(v17 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_21870B65C((v25 > 1), v26 + 1, 1);
        v17 = v50;
      }

      ++v16;
      *(v17 + 16) = v26 + 1;
      v27 = v17 + 16 * v26;
      *(v27 + 32) = v22;
      *(v27 + 40) = v24;
    }

    while (v19 != v16);

    a1 = v43;
    v10 = v44;
    v11 = v42;
    v14 = MEMORY[0x277D84F90];
LABEL_14:
    v28 = sub_218845F78(v17);

    v29 = a1 + *(v11 + 24);
    a1 = *(v29 + *(type metadata accessor for ChannelSectionsGroupModel(0) + 24));
    v12 = *(a1 + 16);
    if (!v12)
    {
LABEL_21:

      return sub_219BF47E4();
    }

    v48 = v28;
    v50 = v14;
    sub_218C35610(0, v12, 0);
    v30 = v50;
    v44 = *(a1 + 16);
    v31 = 0;
    v32 = *(type metadata accessor for ChannelSectionsGroupSectionModel(0) - 8);
    v42 = a1 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v43 = v32;
    v41[3] = v49 + 32;
    while (v44 != v31)
    {
      if (v31 >= *(a1 + 16))
      {
        goto LABEL_23;
      }

      v33 = a1;
      v34 = v47;
      v35 = *(v47 + 48);
      v36 = v10;
      v37 = v46;
      sub_218D4575C(v42 + *(v43 + 72) * v31, &v46[v35], type metadata accessor for ChannelSectionsGroupSectionModel);
      *v6 = v31;
      v38 = *(v34 + 48);
      v39 = &v37[v35];
      v10 = v36;
      sub_218D452AC(v39, v6 + v38, type metadata accessor for ChannelSectionsGroupSectionModel);
      sub_218D43C3C(v31, v6 + v38, v48, v36);
      sub_218D3BD28(v6, sub_218D45240);
      v50 = v30;
      v11 = *(v30 + 16);
      v40 = *(v30 + 24);
      if (v11 >= v40 >> 1)
      {
        sub_218C35610((v40 > 1), v11 + 1, 1);
        v30 = v50;
      }

      ++v31;
      *(v30 + 16) = v11 + 1;
      (*(v49 + 32))(v30 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v11, v36, v45);
      a1 = v33;
      if (v12 == v31)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_218D42578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = *(type metadata accessor for ChannelHeadlineServiceResult(0) + 24);
  v10 = swift_task_alloc();
  *(v5 + 24) = v10;
  *v10 = v5;
  v10[1] = sub_218D42644;

  return sub_218D427B4(a3, a4, a5 + v9);
}

uint64_t sub_218D42644(uint64_t a1)
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
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_218D42790, 0, 0);
  }
}

uint64_t sub_218D427B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186D89EC(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[6] = swift_task_alloc();
  sub_2186D89EC(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[7] = swift_task_alloc();
  sub_2186D89EC(0, &unk_280E91A10, sub_2189AE994, v5);
  v4[8] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  sub_218A89A94(0);
  v4[12] = swift_task_alloc();
  sub_2186FE720(0);
  v4[13] = swift_task_alloc();
  v7 = sub_219BDBD64();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  sub_2186D8FA8(0);
  v4[17] = swift_task_alloc();
  type metadata accessor for LocalNewsTodayFeedGroupConfigData(0);
  v4[18] = swift_task_alloc();
  v8 = sub_219BF1934();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218D42AE4, 0, 0);
}

uint64_t sub_218D42AE4()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  sub_2186DF3DC(0);
  sub_219BEDD14();
  sub_218D4575C(v3, v4, sub_2186D8FA8);
  sub_218D3BD28(v3, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    sub_218D3BD28(*(v0 + 136), sub_2186D8FA8);
    v5 = sub_219BEEDD4();
    sub_2186DF73C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    *v6 = 0xD000000000000013;
    v6[1] = 0x8000000219CF4870;
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x277D323D8], v5);
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 128);
    v10 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 96);
    v12 = *(v0 + 104);
    v42 = *(v0 + 64);
    v43 = *(v0 + 56);
    v44 = *(v0 + 48);
    v41 = *(v0 + 40);
    v14 = *(v0 + 32);
    (*(*(v0 + 160) + 32))();
    sub_219BF7314();

    v15 = *v14;
    v16 = [*v14 identifier];
    v17 = sub_219BF5414();
    v19 = v18;

    MEMORY[0x21CECC330](v17, v19);

    MEMORY[0x21CECC330](14906, 0xE200000000000000);
    sub_219BDBD54();
    v20 = sub_219BDBD44();
    v22 = v21;
    (*(v11 + 8))(v9, v10);
    MEMORY[0x21CECC330](v20, v22);

    v23 = [v15 identifier];
    sub_219BF5414();

    v24 = sub_219BEC004();
    (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
    sub_218A42400(0);
    (*(*(v25 - 8) + 56))(v13, 1, 1, v25);
    sub_219BF1764();

    sub_218D3BD28(v13, sub_218A89A94);
    sub_218D3BD28(v12, sub_2186FE720);
    v26 = type metadata accessor for LocalNewsTodayFeedGroupEmitter(0);
    v27 = (v41 + *(v26 + 24));
    v28 = v27[3];
    v29 = v27[4];
    __swift_project_boxed_opaque_existential_1(v27, v28);
    v30 = *(v26 + 20);
    sub_2189AE994(0);
    v32 = v31;
    v33 = *(v31 - 8);
    (*(v33 + 16))(v42, v41 + v30, v31);
    (*(v33 + 56))(v42, 0, 1, v32);
    v34 = sub_219BF35D4();
    (*(*(v34 - 8) + 56))(v43, 1, 1, v34);
    *(v0 + 208) = 2;
    sub_218D451AC(0);
    swift_allocObject();

    sub_219BF38D4();
    v35 = sub_219BF2774();
    (*(*(v35 - 8) + 56))(v44, 1, 1, v35);
    v36 = qword_280E8D7A0;
    *MEMORY[0x277D30BC8];
    if (v36 != -1)
    {
      swift_once();
    }

    qword_280F616D8;
    sub_219BF2A84();
    v37 = swift_task_alloc();
    *(v0 + 184) = v37;
    *v37 = v0;
    v37[1] = sub_218D43218;
    v38 = *(v0 + 168);
    v39 = *(v0 + 88);
    v40 = *(v0 + 24);

    return MEMORY[0x2821921B8](v38, v40, v39, v28, v29);
  }
}

uint64_t sub_218D43218(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v4[24] = v1;

  v6 = (v5 + 8);
  v7 = v4[11];
  v8 = v4[9];
  if (v1)
  {
    (*v6)(v7, v8);
    v9 = sub_218D434D4;
  }

  else
  {
    v4[25] = a1;
    (*v6)(v7, v8);
    v9 = sub_218D433A4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_218D433A4()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = *(v0[20] + 8);
  v3(v0[21], v2);
  v3(v1, v2);

  v4 = v0[1];
  v5 = v0[25];

  return v4(v5);
}

uint64_t sub_218D434D4()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = *(v0[20] + 8);
  v3(v0[21], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_218D435F8(uint64_t a1)
{
  v2 = sub_219BEE3D4();
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0C04();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_219BF0BD4();
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D89EC(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v35 - v10;
  v12 = type metadata accessor for TodayFeedServiceContext(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_219BDBD34();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v35 - v20;
  v45 = a1;
  sub_219BEF0B4();
  sub_218D4575C(*&v46 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v14, type metadata accessor for TodayFeedServiceContext);

  v22 = v14[1];
  sub_218D3BD28(v14, type metadata accessor for TodayFeedServiceContext);
  v23 = [v22 startDate];

  if (!v23)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_219BDBCA4();

  (*(v16 + 32))(v21, v18, v15);
  v24 = *(v16 + 16);
  v42 = v21;
  v24(v11, v21, v15);
  (*(v16 + 56))(v11, 0, 1, v15);
  type metadata accessor for LocalNewsTodayFeedGroupEmitter(0);
  type metadata accessor for LocalNewsTodayFeedGroupSubtypeKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  v25 = *(v6 + 8);
  v26 = v6 + 8;
  v27 = v43;
  v44 = v26;
  v25(v8);
  v28 = v46;
  v29 = 0;
  if ((*(v16 + 48))(v11, 1, v15) != 1)
  {
    v29 = sub_219BDBC04();
    (*(v16 + 8))(v11, v15);
  }

  v30 = [objc_allocWithZone(MEMORY[0x277D30F38]) initWithStartDate:v29 timeInterval:v28];

  if (!v30)
  {
    goto LABEL_10;
  }

  sub_219BEF134();
  sub_219BEF524();
  (v25)(v8, v27);
  if (LOBYTE(v46) != 1)
  {
    (*(v16 + 8))(v42, v15);
    return;
  }

  sub_219BEF134();
  v31 = v37;
  sub_219BF0BB4();
  (v25)(v8, v27);
  v32 = v36;
  v33 = v42;
  sub_219BEE3C4();
  (*(v40 + 8))(v31, v41);
  v34 = sub_219BF0BF4();
  (*(v38 + 8))(v32, v39);
  if ([v30 intersectionWithDateRange_])
  {
    (*(v16 + 8))(v33, v15);

    return;
  }

LABEL_11:
  __break(1u);
}

void *sub_218D43C3C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_219BF2124();
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF3C84();
  v54 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  v14 = *(a2 + 48);
  v57 = MEMORY[0x277D84F90];
  v48 = a4;
  if (v14 >> 62)
  {
LABEL_39:
    v15 = sub_219BF7214();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = MEMORY[0x277D84F90];
  v47 = v13;
  if (v15)
  {
    v45 = v14;
    v46 = a1;
    v17 = 0;
    v52 = v14 & 0xFFFFFFFFFFFFFF8;
    v53 = v14 & 0xC000000000000001;
    v51 = v14 + 32;
    v14 = a3 + 56;
    while (1)
    {
      if (v53)
      {
        a1 = MEMORY[0x21CECE0F0](v17, v45, v11);
        v18 = __OFADD__(v17++, 1);
        if (v18)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          v28 = v57;
          a1 = v46;
          v16 = MEMORY[0x277D84F90];
          goto LABEL_26;
        }
      }

      else
      {
        if (v17 >= *(v52 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        a1 = *(v51 + 8 * v17);
        swift_unknownObjectRetain();
        v18 = __OFADD__(v17++, 1);
        if (v18)
        {
          goto LABEL_23;
        }
      }

      v19 = [a1 identifier];
      v20 = sub_219BF5414();
      v22 = v21;

      if (*(a3 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v23 = sub_219BF7AE4(), v24 = -1 << *(a3 + 32), v13 = v23 & ~v24, ((*(v14 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v25 = ~v24;
        while (1)
        {
          v26 = (*(a3 + 48) + 16 * v13);
          v27 = *v26 == v20 && v26[1] == v22;
          if (v27 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v13 = (v13 + 1) & v25;
          if (((*(v14 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        swift_unknownObjectRelease();

        if (v17 == v15)
        {
          goto LABEL_24;
        }
      }

      else
      {
LABEL_5:

        v13 = &v57;
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        if (v17 == v15)
        {
          goto LABEL_24;
        }
      }
    }
  }

  v28 = MEMORY[0x277D84F90];
LABEL_26:
  v55 = 0x2D6E6F6974636573;
  v56 = 0xE800000000000000;
  v57 = a1;
  v29 = sub_219BF7894();
  MEMORY[0x21CECC330](v29);

  v30 = v55;
  v31 = v56;
  if ((v28 & 0x8000000000000000) == 0 && (v28 & 0x4000000000000000) == 0)
  {
    v32 = *(v28 + 16);
    if (v32)
    {
      goto LABEL_29;
    }

LABEL_41:

    sub_2186D89EC(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
    sub_219BF14C4();
    *(swift_allocObject() + 16) = xmmword_219C09EC0;
    sub_219BF20F4();
    sub_219BF14A4();
    type metadata accessor for ChannelSectionsGroupSectionModel(0);
    sub_219BF20E4();
    sub_219BF14A4();
    v43 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v43);
    sub_218F0BB90(v43);
    return sub_219BF3E74();
  }

  v32 = sub_219BF7214();
  if (!v32)
  {
    goto LABEL_41;
  }

LABEL_29:
  v55 = v16;
  result = sub_218C34A88(0, v32 & ~(v32 >> 63), 0);
  if ((v32 & 0x8000000000000000) == 0)
  {
    v53 = v32;
    v46 = v31;
    v51 = v30;
    v34 = 0;
    v52 = v28 & 0xC000000000000001;
    v35 = *MEMORY[0x277D34128];
    v36 = v55;
    v37 = (v54 + 104);
    v38 = v47;
    do
    {
      if (v52)
      {
        v39 = MEMORY[0x21CECE0F0](v34, v28);
      }

      else
      {
        v39 = swift_unknownObjectRetain();
      }

      *v38 = v39;
      (*v37)(v38, v35, v10);
      v55 = v36;
      v40 = v10;
      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_218C34A88((v41 > 1), v42 + 1, 1);
        v38 = v47;
        v36 = v55;
      }

      ++v34;
      *(v36 + 16) = v42 + 1;
      (*(v54 + 32))(v36 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v42, v38, v40);
      v10 = v40;
    }

    while (v53 != v34);
    goto LABEL_41;
  }

  __break(1u);
  return result;
}

void sub_218D44284(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_218D45518(0);
  v11 = v10;
  v12 = *(v10 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 + *(type metadata accessor for LocalNewsTodayFeedGroupEmitter(0) + 40));
  (*(v12 + 16))(v14, a1, v11);
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = (v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v12 + 32))(v17 + v15, v14, v11);
  *(v17 + v16) = a3;
  v18 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v18 = a4;
  v18[1] = a5;
  aBlock[4] = sub_218D45590;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218C1CBB4;
  aBlock[3] = &block_descriptor_49;
  v19 = _Block_copy(aBlock);
  v20 = a3;

  [v22 fetchLocalAreasProvider_];
  _Block_release(v19);
}

uint64_t sub_218D44480(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v9 = [swift_unknownObjectRetain() autoFavoriteTagIDsForLocation_];
    v10 = sub_219BF5D44();

    sub_2188537B8(a6, a7, v10);

    sub_218D45518(0);
    sub_219BF5B64();
    return swift_unknownObjectRelease();
  }

  else
  {
    v12 = sub_219BEEDD4();
    sub_2186DF73C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    *v13 = 0xD000000000000016;
    v13[1] = 0x8000000219CF4920;
    (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277D323D8], v12);
    sub_218D45518(0);
    return sub_219BF5B54();
  }
}

uint64_t sub_218D44610@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_218D454D8(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LocalNewsTodayFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4575C(v2, v10, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  swift_unknownObjectRetain();
  v11 = sub_219BE5414();
  v12 = sub_219BF61D4();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136446466;
    v15 = &v10[*(v8 + 56)];
    v16 = *v15;
    v17 = v15[1];

    sub_218D3BD28(v10, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
    v18 = sub_2186D1058(v16, v17, &v28);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    v19 = [a1 identifier];
    v20 = sub_219BF5414();
    v22 = v21;

    v23 = sub_2186D1058(v20, v22, &v28);

    *(v13 + 14) = v23;
    _os_log_impl(&dword_2186C1000, v11, v12, "%{public}s will use channel fallback location.  channel=%{public}s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v14, -1, -1);
    MEMORY[0x21CECF960](v13, -1, -1);
  }

  else
  {

    sub_218D3BD28(v10, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  }

  swift_getObjectType();
  sub_218F998B0(v7);
  v24 = type metadata accessor for ChannelSupergroupConfig(0);
  if ((*(*(v24 - 8) + 48))(v7, 1, v24) == 1)
  {
    sub_218D3BD28(v7, sub_218D454D8);
    v25 = sub_219BF1404();
    return (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
  }

  else
  {
    sub_218D4575C(&v7[*(v24 + 24)], a2, sub_218D45314);
    return sub_218D3BD28(v7, type metadata accessor for ChannelSupergroupConfig);
  }
}

void sub_218D44998(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v24 = a3;
  v25 = a4;
  v6 = type metadata accessor for LocalNewsTodayFeedGroupEmitter(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D45354(0);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v11);
  v16 = *(a2 + *(v7 + 48));
  (*(v13 + 16))(&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12, v15);
  sub_218D4575C(a2, v10, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  v17 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v18 = (v14 + *(v8 + 80) + v17) & ~*(v8 + 80);
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  (*(v13 + 32))(v20 + v17, &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  sub_218D452AC(v10, v20 + v18, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
  v21 = v25;
  *(v20 + v19) = v24;
  *(v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8)) = v21;
  aBlock[4] = sub_218D453BC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218C1CBB4;
  aBlock[3] = &block_descriptor_56;
  v22 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v23 = v21;

  [v16 fetchLocalAreasProvider_];
  _Block_release(v22);
}

uint64_t sub_218D44C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  sub_218D45314(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v22 - v11;
  if (a1)
  {
    v13 = [swift_unknownObjectRetain() autoFavoriteTagIDsForLocation_];
    v14 = sub_219BF5D44();

    v15 = [a5 identifier];
    v16 = sub_219BF5414();
    v18 = v17;

    LOBYTE(v15) = sub_2188537B8(v16, v18, v14);

    if (v15)
    {
      v19 = a6;
      sub_219BF13F4();
      v20 = sub_219BF1404();
      (*(*(v20 - 8) + 56))(v12, 0, 1, v20);
    }

    else
    {
      sub_218D44610(a5, v12);
    }

    sub_218D45354(0);
    sub_219BF5B64();
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_218D44610(a5, &v22 - v11);
    sub_218D45354(0);
    return sub_219BF5B64();
  }
}

uint64_t sub_218D44E1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218D3BD88(a1, v4);
}

uint64_t sub_218D44EBC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocalNewsTodayFeedGroupEmitter(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ChannelHeadlineServiceResult(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2187609C8;

  return sub_218D40994(a1, v1 + v6, v1 + v9);
}

uint64_t sub_218D44FF8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for LocalNewsTodayFeedGroupEmitter(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_219BF2034() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(type metadata accessor for ChannelHeadlineServiceResult(0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2187608D4;

  return sub_218D42578(a1, v1 + v6, v13, v1 + v9, v1 + v12);
}

void sub_218D451AC(uint64_t a1)
{
  if (!qword_280E90070)
  {
    type metadata accessor for TodayFeedServiceConfig(255);
    sub_2186DF73C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v1 = sub_219BF38F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90070);
    }
  }
}

void sub_218D45240(uint64_t a1, __n128 a2)
{
  if (!qword_280E8E930)
  {
    type metadata accessor for ChannelSectionsGroupSectionModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E930);
    }
  }
}

uint64_t sub_218D452AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218D45354(uint64_t a1)
{
  if (!qword_280E8EAE0)
  {
    sub_218D45314(255);
    v1 = sub_219BF5B74();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EAE0);
    }
  }
}

uint64_t sub_218D453BC(uint64_t a1, uint64_t a2)
{
  sub_218D45354(0);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for LocalNewsTodayFeedGroupEmitter(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v10);
  v12 = *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_218D44C48(a1, a2, v2 + v6, v2 + v9, v11, v12);
}

void sub_218D45518(uint64_t a1)
{
  if (!qword_280E8EAC8)
  {
    sub_2186CFDE4(255, &qword_280E8B580, MEMORY[0x277D84948]);
    v1 = sub_219BF5B74();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EAC8);
    }
  }
}

uint64_t sub_218D45590(uint64_t a1, uint64_t a2)
{
  sub_218D45518(0);
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v9);
  v11 = (v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v11;
  v13 = v11[1];

  return sub_218D44480(a1, a2, v5, v2 + v8, v10, v12, v13);
}

uint64_t sub_218D4564C(uint64_t a1)
{
  v4 = *(type metadata accessor for LocalNewsTodayFeedGroupEmitter(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187609C8;

  return sub_218D3C400(a1, v1 + v5);
}

uint64_t sub_218D4575C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for TagFeedExpandRequest(uint64_t a1)
{
  result = qword_280ECCC38;
  if (!qword_280ECCC38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218D45870(uint64_t a1)
{
  result = type metadata accessor for TagFeedGapLocation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218D458F4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_219BF7314();
  MEMORY[0x21CECC330](0x3D6761747BLL, 0xE500000000000000);
  MEMORY[0x21CECC330](v1, v2);
  MEMORY[0x21CECC330](0x657269707865202CLL, 0xEE003D7265746641);
  sub_219BF5CB4();
  MEMORY[0x21CECC330](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_218D45A00@<X0>(uint64_t a1@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v17[1] = a1;
  v17[2] = a3;
  v18 = a4;
  v4 = sub_219BEF2A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEF974();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SportsFavoritesLayoutModel(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F7A0(0);
  sub_219BE75E4();
  (*(v9 + 32))(v11, v14, v8);
  swift_getObjectType();
  sub_219BEED04();
  v15 = sub_219BEF294();
  (*(v5 + 8))(v7, v4);
  result = (*(v9 + 8))(v11, v8);
  *v18 = v15;
  return result;
}

uint64_t sub_218D45C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BF1A44();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 16);
  if (v31)
  {
    v28 = v7;
    v29 = a3;
    v11 = 0;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v33 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v34 = v13;
    v14 = a2 + 56;
    v30 = (v12 - 8);
    v32 = *(v12 + 56);
    v13(v10, v33, v6, v8);
    while (1)
    {
      v16 = sub_219BF1A14();
      v18 = v17;
      if (*(a2 + 16))
      {
        v19 = v16;
        sub_219BF7AA4();
        sub_219BF5524();
        v20 = sub_219BF7AE4();
        v21 = -1 << *(a2 + 32);
        v22 = v20 & ~v21;
        if ((*(v14 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          break;
        }
      }

LABEL_3:
      ++v11;

      (*v30)(v10, v6);
      if (v11 == v31)
      {
        v26 = 1;
        v7 = v28;
        a3 = v29;
        return (*(v7 + 56))(a3, v26, 1, v6);
      }

      v34(v10, v33 + v32 * v11, v6, v15);
    }

    v23 = ~v21;
    while (1)
    {
      v24 = (*(a2 + 48) + 16 * v22);
      v25 = *v24 == v19 && v24[1] == v18;
      if (v25 || (sub_219BF78F4() & 1) != 0)
      {
        break;
      }

      v22 = (v22 + 1) & v23;
      if (((*(v14 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v7 = v28;
    a3 = v29;
    (*(v28 + 32))(v29, v10, v6);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  return (*(v7 + 56))(a3, v26, 1, v6);
}

uint64_t sub_218D45EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_219BF1A44();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(a1 + 16);
  if (v31)
  {
    v28 = v7;
    v29 = a3;
    v11 = 0;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v33 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v34 = v13;
    v14 = a2 + 56;
    v30 = (v12 - 8);
    v32 = *(v12 + 56);
    v13(v10, v33, v6, v8);
    while (1)
    {
      v16 = sub_219BF1A14();
      v18 = v17;
      if (*(a2 + 16))
      {
        v19 = v16;
        sub_219BF7AA4();
        sub_219BF5524();
        v20 = sub_219BF7AE4();
        v21 = -1 << *(a2 + 32);
        v22 = v20 & ~v21;
        if ((*(v14 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          break;
        }
      }

LABEL_3:
      ++v11;

      (*v30)(v10, v6);
      if (v11 == v31)
      {
        v26 = 1;
        v7 = v28;
        a3 = v29;
        return (*(v7 + 56))(a3, v26, 1, v6);
      }

      v34(v10, v33 + v32 * v11, v6, v15);
    }

    v23 = ~v21;
    while (1)
    {
      v24 = (*(a2 + 48) + 16 * v22);
      v25 = *v24 == v19 && v24[1] == v18;
      if (v25 || (sub_219BF78F4() & 1) != 0)
      {
        break;
      }

      v22 = (v22 + 1) & v23;
      if (((*(v14 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v7 = v28;
    a3 = v29;
    (*(v28 + 32))(v29, v10, v6);
    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  return (*(v7 + 56))(a3, v26, 1, v6);
}

uint64_t sub_218D4611C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_218D46798(0, &qword_280E8C508, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D46744();
  sub_219BF7B44();
  v15 = a2;
  v14 = 0;
  sub_2186E2394();
  sub_218B9F868(&unk_280E8E9D0, MEMORY[0x277D837D8], MEMORY[0x277D83B50]);
  sub_219BF7834();
  if (!v3)
  {
    v15 = a3;
    v14 = 1;
    sub_219BF7834();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_218D462E4()
{
  if (*v0)
  {
    return 0x656C746974627573;
  }

  else
  {
    return 0x656C746974;
  }
}

void sub_218D4631C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_218D463F4(uint64_t a1)
{
  v2 = sub_218D46744();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D46430(uint64_t a1)
{
  v2 = sub_218D46744();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218D4646C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_218D464B4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_218D464B4(void *a1)
{
  sub_218D46798(0, &qword_280E8CD40, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v11[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_218D46744();
  sub_219BF7B34();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_2186E2394();
    LOBYTE(v12) = 0;
    sub_218B9F868(&qword_280E8E9B8, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_219BF76E4();
    v8 = v13;
    v11[7] = 1;
    sub_219BF76E4();
    v10 = v12;
    if (!v8)
    {
      v8 = sub_2194AD74C(&unk_282A24130);
      swift_arrayDestroy();
    }

    if (!v10)
    {
      sub_2194AD74C(&unk_282A24170);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v7, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

unint64_t sub_218D46744()
{
  result = qword_280EBCDD8;
  if (!qword_280EBCDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDD8);
  }

  return result;
}

void sub_218D46798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D46744();
    v7 = a3(a1, &type metadata for TagFeedCurationSearchKeys.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218D46810()
{
  result = qword_27CC11680;
  if (!qword_27CC11680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11680);
  }

  return result;
}

unint64_t sub_218D46868()
{
  result = qword_280EBCDC8;
  if (!qword_280EBCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDC8);
  }

  return result;
}

unint64_t sub_218D468C0()
{
  result = qword_280EBCDD0;
  if (!qword_280EBCDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDD0);
  }

  return result;
}

uint64_t MagazineFeedModule.createMagazineSectionViewController()()
{
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___TSMagazineFeedModule_resolver), *(v0 + OBJC_IVAR___TSMagazineFeedModule_resolver + 24));
  type metadata accessor for MagazineFeedViewController();
  swift_allocObject();
  swift_unknownObjectUnownedInit();

  v1 = sub_219BE1E04();

  if (v1)
  {
    sub_218D4713C(&qword_280EBB290, type metadata accessor for MagazineFeedViewController, &unk_219C2A3F8);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_218D46A18(void *a1, uint64_t a2)
{
  v4 = sub_219BE14C4();
  v23 = *(v4 - 8);
  v24 = v4;
  MEMORY[0x28223BE20](v4);
  v22 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE14A4();
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v25 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BE15B4();
  v8 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[3];
  v19[2] = a1[4];
  v19[1] = __swift_project_boxed_opaque_existential_1(a1, v11);
  v21 = a2;
  Strong = swift_unknownObjectUnownedLoadStrong();
  __swift_project_boxed_opaque_existential_1(&Strong[OBJC_IVAR___TSMagazineFeedModule_contextBuilder], *&Strong[OBJC_IVAR___TSMagazineFeedModule_contextBuilder + 24]);
  sub_219BEC134();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  if (qword_280EE34E0 != -1)
  {
    swift_once();
  }

  v13 = sub_219BEBC84();
  __swift_project_value_buffer(v13, qword_280F62380);
  sub_218D4713C(&qword_280EE34B8, MEMORY[0x277D2D120], MEMORY[0x277D2D118]);
  sub_219BEC144();

  sub_218BDE5B0();
  sub_219BE1BA4();
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = swift_unknownObjectUnownedLoadStrong();
  v15 = v20;
  (*(v8 + 104))(v10, *MEMORY[0x277D2F468], v20);
  sub_219BDD0F4();
  (*(v8 + 8))(v10, v15);
  (*(v23 + 104))(v22, *MEMORY[0x277D2F348], v24);
  v16 = v25;
  sub_219BE1484();
  sub_218D4713C(&qword_280EE8010, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
  v17 = v27;
  sub_219BDD1F4();

  (*(v26 + 8))(v16, v17);
  sub_219BDD274();
  sub_219BE1B94();

  return result;
}

id MagazineFeedModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MagazineFeedModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_218D46FE8()
{
  __swift_project_boxed_opaque_existential_1((*v0 + OBJC_IVAR___TSMagazineFeedModule_resolver), *(*v0 + OBJC_IVAR___TSMagazineFeedModule_resolver + 24));
  type metadata accessor for MagazineFeedViewController();
  swift_allocObject();
  swift_unknownObjectUnownedInit();

  v1 = sub_219BE1E04();

  if (v1)
  {
    sub_218D4713C(&qword_280EBB290, type metadata accessor for MagazineFeedViewController, &unk_219C2A3F8);
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218D4713C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_218D47188(uint64_t a1)
{
  result = [objc_opt_self() currentRequest];
  if (result)
  {
    v2 = result;
    v3 = [result technology];

    v4 = sub_219BF5414();
    v6 = v5;
    if (v4 == sub_219BF5414() && v6 == v7)
    {
    }

    else
    {
      v9 = sub_219BF78F4();

      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }

    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v10 = result;
    v11 = *&result[OBJC_IVAR____TtC7NewsUI211WelcomeView_footer];

    v12 = *&v11[OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink];
    v13 = [v12 text];

    if (v13)
    {
      v14 = sub_219BF5414();

      return v14;
    }

    return 0;
  }

  return result;
}

uint64_t sub_218D47350(void *a1, __int16 a2, CGFloat *a3, char *a4)
{
  v123 = sub_219BDB5A4();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_218C00EEC(a2 & 0xFF01, v143);
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = a3[3];
  v145.origin.x = *a3;
  v145.origin.y = v11;
  v145.size.width = v12;
  v145.size.height = v13;
  Width = CGRectGetWidth(v145);
  v140 = v10;
  v146.origin.x = v10;
  v139 = v11;
  v146.origin.y = v11;
  v138 = v12;
  v146.size.width = v12;
  v137 = v13;
  v146.size.height = v13;
  [a4 setFrame_];
  [a4 frame];
  v15 = CGRectGetWidth(v147);
  [a4 frame];
  [a4 setBounds_];
  v16 = __swift_project_boxed_opaque_existential_1(v143, v144);
  [a4 setBackgroundColor_];
  v17 = *&a4[OBJC_IVAR____TtC7NewsUI211WelcomeView_scrollView];
  v141 = a4;
  [v17 &selRef_minShortcutsOnboardCount];
  v18 = a3[8];
  v19 = a3[9];
  v136 = v17;
  [v17 setContentSize_];
  v20 = *&a4[OBJC_IVAR____TtC7NewsUI211WelcomeView_titleGroup];
  v21 = a3[10];
  v22 = a3[11];
  v23 = a3[12];
  v24 = a3[13];
  v25 = a3[14];
  v26 = a3[15];
  v27 = a3[16];
  v28 = a3[17];
  v29 = a3[18];
  v30 = a3[19];
  v31 = a3[20];
  v32 = a3[21];
  v33 = a3[23];
  v135 = a3[22];
  v134 = v33;
  v34 = a3[25];
  v133 = a3[24];
  v132 = v34;
  [v20 &selRef_minShortcutsOnboardCount];
  v35 = OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_appIcon;
  [*&v20[OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_appIcon] &selRef_minShortcutsOnboardCount];
  [*&v20[v35] setImage_];
  v36 = OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeTitleLabel;
  [*&v20[OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeTitleLabel] &selRef_minShortcutsOnboardCount];
  v37 = *&v20[v36];
  __swift_project_boxed_opaque_existential_1(v143, v144);
  v38 = a1[1];
  v39 = a1[2];
  v41 = a1[3];
  v40 = a1[4];
  v42 = v37;
  v43 = sub_21900EE8C(v38, v39, v41, v40);
  [v42 setAttributedText_];

  v44 = *&v20[v36];
  sub_2190103A8(v44);

  v45 = OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeSubTitleLabel;
  [*&v20[OBJC_IVAR____TtCC7NewsUI211WelcomeView10TitleGroup_welcomeSubTitleLabel] setFrame_];
  v46 = *&v20[v45];
  __swift_project_boxed_opaque_existential_1(v143, v144);
  v48 = a1[5];
  v47 = a1[6];
  v49 = v46;
  v50 = sub_21900F270(v48, v47);
  [v49 setAttributedText_];

  v51 = *&v20[v45];
  [v51 setNumberOfLines_];
  [v51 setLineBreakMode_];

  v52 = *&v141[OBJC_IVAR____TtC7NewsUI211WelcomeView_footer];
  v53 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_activityIndicator;
  v54 = *&v52[OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_activityIndicator];
  v55 = a3[28];
  v135 = a3[27];
  v134 = v55;
  v56 = a3[30];
  v133 = a3[29];
  v132 = v56;
  v57 = a3[32];
  v58 = a3[33];
  v59 = a3[34];
  v60 = a3[35];
  v61 = a3[36];
  v62 = a3[37];
  v63 = a3[38];
  v64 = a3[39];
  v65 = a3[40];
  v66 = a3[41];
  v67 = a3[42];
  v68 = a3[43];
  v69 = a3[45];
  v127 = a3[44];
  v126 = v69;
  v70 = a3[47];
  v125 = a3[46];
  v124 = v70;
  v71 = a3[50];
  v131 = a3[49];
  v130 = v71;
  v72 = a3[52];
  v129 = a3[51];
  v128 = v72;
  [v54 setFrame_];
  v73 = __swift_project_boxed_opaque_existential_1(v143, v144);
  [*&v52[v53] setColor_];
  v74 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyIcon;
  [*&v52[OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyIcon] setFrame_];
  v75 = a1[7];
  v76 = *&v52[v74];
  v77 = [v75 imageWithRenderingMode_];
  [v76 setImage_];

  v78 = *&v52[v74];
  v79 = objc_opt_self();
  v80 = v78;
  v81 = [v79 systemPinkColor];
  [v80 setTintColor_];

  [*&v52[v74] setIsAccessibilityElement_];
  v82 = *&v52[v74];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v84 = objc_opt_self();
  v85 = v82;
  v86 = [v84 bundleForClass_];
  sub_219BDB5E4();

  v87 = sub_219BF53D4();

  [v85 setAccessibilityLabel_];

  v88 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink;
  [*&v52[OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink] setFrame_];
  v89 = *&v52[v88];
  __swift_project_boxed_opaque_existential_1(v143, v144);
  v90 = a1[8];
  v91 = v89;
  sub_21900F554(v90);
  v93 = v92;
  [v91 setAttributedText_];

  v94 = *&v52[v88];
  v95 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_218D47DF8;
  aBlock[5] = v95;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218C94FBC;
  aBlock[3] = &block_descriptor_57;
  v96 = _Block_copy(aBlock);
  v97 = v94;

  [v97 setAccessibilityLabelBlock_];
  _Block_release(v96);

  v98 = *&v52[v88];
  sub_219010540(v98);

  v99 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton;
  [*&v52[OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton] setFrame_];
  if (sub_219BED0C4())
  {
    __swift_project_boxed_opaque_existential_1(v143, v144);
    v100 = v121;
    sub_21900FB70(a1[9], a1[10]);
    v101 = *&v52[v99];
    sub_2190106C4(v101, v100);

    (*(v122 + 8))(v100, v123);
  }

  else
  {
    v102 = *&v52[v99];
    __swift_project_boxed_opaque_existential_1(v143, v144);
    v104 = a1[9];
    v103 = a1[10];
    v105 = v102;
    v106 = sub_21900F920(v104, v103);
    [v105 setAttributedTitle:v106 forState:0];

    v107 = *&v52[v99];
    v108 = [v107 layer];
    [v108 setCornerRadius_];

    [v107 setClipsToBounds_];
  }

  v109 = OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_offlineMessage;
  [*&v52[OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_offlineMessage] setFrame_];
  v110 = *&v52[v109];
  __swift_project_boxed_opaque_existential_1(v143, v144);
  v112 = a1[11];
  v111 = a1[12];
  v113 = v110;
  v114 = sub_21900FC90(v112, v111);
  [v113 setAttributedText_];

  v115 = *&v52[v109];
  [v115 setNumberOfLines_];
  [v115 setLineBreakMode_];

  [*&v52[v109] setAlpha_];
  [v52 setFrame_];
  [v136 contentSize];
  v117 = v116;
  v149.origin.x = v140;
  v149.origin.y = v139;
  v149.size.width = v138;
  v149.size.height = v137;
  v118 = CGRectGetHeight(v149) < v117;
  sub_219010A58(v52, v118);
  return __swift_destroy_boxed_opaque_existential_1(v143);
}

uint64_t type metadata accessor for FollowingNotificationsSectionFooterViewLayoutOptions(uint64_t a1)
{
  result = qword_27CC116A8;
  if (!qword_27CC116A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218D47E74(uint64_t a1)
{
  result = sub_219BE8164();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218D47F18(void *a1)
{
  v1 = *(*a1 + OBJC_IVAR___TSNotificationSettings_authorizationStatus);
  if ((v1 - 1) >= 2 && v1)
  {
    result = sub_219BF7974();
    __break(1u);
  }

  else
  {
    sub_21874D974();
    swift_allocObject();
    return sub_219BE3014();
  }

  return result;
}

void sub_218D47FD8(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + OBJC_IVAR____TtC7NewsUI234NotificationAuthorizationRequester_notificationService + 24);
    v7 = *(Strong + OBJC_IVAR____TtC7NewsUI234NotificationAuthorizationRequester_notificationService + 32);
    v8 = Strong;
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC7NewsUI234NotificationAuthorizationRequester_notificationService), v6);
    (*(v7 + 32))(0, v6, v7);
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;

    v10 = sub_219BE2E54();
    sub_219BE2F74();

    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;

    v12 = sub_219BE2E54();
    sub_219BE2FD4();
  }

  else
  {
    v13 = sub_219BE8B44();
    sub_218D484B0();
    v14 = swift_allocError();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D6E188], v13);
    a1(v14, 1);
  }
}

uint64_t sub_218D481E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v4 = qword_280F61750;
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  v6 = sub_219BF6214();
  sub_219BE5314("Failed to present TCC: %{public}@.", 34, 2, &dword_2186C1000, v4, v6, v5);

  return a2(a1, 1);
}

uint64_t sub_218D483AC()
{
  type metadata accessor for NotificationSettings();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  v1 = sub_219BE2F64();

  return v1;
}

void (*sub_218D4844C())(void (*a1)(void *, uint64_t), uint64_t a2)
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  return sub_218D484A8;
}

unint64_t sub_218D484B0()
{
  result = qword_27CC127C0;
  if (!qword_27CC127C0)
  {
    sub_219BE8B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC127C0);
  }

  return result;
}

uint64_t sub_218D48548()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7NewsUI234NotificationAuthorizationRequester_notificationService);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 24))(v2, v3);
}

id sub_218D485D4(char *a1)
{
  v2 = [a1 maskView];
  if (v2)
  {
    v3 = v2;
    [a1 bounds];
    [v3 setFrame_];
  }

  [a1 bounds];
  if (v4 <= 300.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 300.0;
  }

  [a1 bounds];
  v7 = v6;
  v8 = *&a1[OBJC_IVAR____TtC7NewsUI220InterludeContentView_titleLabel];
  [v8 sizeThatFits_];
  v10 = v9;
  v11 = *&a1[OBJC_IVAR____TtC7NewsUI220InterludeContentView_subtitleLabel];
  [v11 sizeThatFits_];
  v13 = v10 + 99.0 + 13.0 + v12;
  [a1 bounds];
  v14 = CGRectGetMidX(v29) - v5 * 0.5;
  [a1 bounds];
  v15 = CGRectGetMidY(v30) - v13 * 0.5;
  v16 = *&a1[OBJC_IVAR____TtC7NewsUI220InterludeContentView_iconContainer];
  [v16 bounds];
  [v16 setBounds_];
  v31.origin.x = v14;
  v31.origin.y = v15;
  v31.size.width = v5;
  v31.size.height = v13;
  MidX = CGRectGetMidX(v31);
  v32.origin.x = v14;
  v32.origin.y = v15;
  v32.size.width = v5;
  v32.size.height = v13;
  [v16 setCenter_];
  v18 = sub_2194DC078();
  [v18 bounds];
  [v18 setBounds_];

  v19 = OBJC_IVAR____TtC7NewsUI220InterludeContentView____lazy_storage___iconImageView;
  v20 = *&a1[OBJC_IVAR____TtC7NewsUI220InterludeContentView____lazy_storage___iconImageView];
  [v16 bounds];
  sub_219BF6B44();
  [v20 setCenter_];

  v21 = sub_2194DC06C();
  [*&a1[v19] frame];
  [a1 convertRect:v16 fromCoordinateSpace:?];
  [v21 setFrame_];

  [v8 bounds];
  [v8 setBounds_];
  v33.origin.x = v14;
  v33.origin.y = v15;
  v33.size.width = v5;
  v33.size.height = v13;
  v22 = CGRectGetMidX(v33);
  [v16 frame];
  v23 = CGRectGetMaxY(v34) + 22.0;
  [v8 bounds];
  [v8 setCenter_];
  [v11 bounds];
  [v11 setBounds_];
  v36.origin.x = v14;
  v36.origin.y = v15;
  v36.size.width = v5;
  v36.size.height = v13;
  v24 = CGRectGetMidX(v36);
  v37.origin.x = v14;
  v37.origin.y = v15;
  v37.size.width = v5;
  v37.size.height = v13;
  MaxY = CGRectGetMaxY(v37);
  [v11 bounds];
  v26 = MaxY - CGRectGetMidY(v38);

  return [v11 setCenter_];
}

uint64_t sub_218D48984(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_218D489D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_218D48A44()
{
  result = qword_27CC116C8;
  if (!qword_27CC116C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC116C8);
  }

  return result;
}

uint64_t sub_218D48A98(uint64_t a1)
{
  v2 = sub_218D48B50();

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_218D48AD4@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6E758];
  v3 = sub_219BE9834();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

unint64_t sub_218D48B50()
{
  result = qword_27CC116D0;
  if (!qword_27CC116D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC116D0);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_218D48BD8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218D48BF8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = (a2 - 1);
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

  *(result + 136) = v3;
  return result;
}

unint64_t sub_218D48C54()
{
  v1 = 0x776F68537473616CLL;
  v2 = 0x656761676E457369;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_218D48CF4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_218D49984(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_218D48D1C(uint64_t a1)
{
  v2 = sub_218D48FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D48D58(uint64_t a1)
{
  v2 = sub_218D48FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SportsUpsellState.encode(to:)(void *a1)
{
  sub_218D4938C(0, &qword_27CC116D8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D48FA4();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BF7824();
  if (!v1)
  {
    type metadata accessor for SportsUpsellState(0);
    v9[14] = 1;
    sub_219BDBD34();
    sub_218D493F0(&qword_280EE9CA0, MEMORY[0x277CC9580]);
    sub_219BF7834();
    v9[13] = 2;
    sub_219BF7804();
    v9[12] = 3;
    sub_219BF7824();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_218D48FA4()
{
  result = qword_27CC116E0;
  if (!qword_27CC116E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC116E0);
  }

  return result;
}

uint64_t SportsUpsellState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_219BDBD34();
  v22 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4938C(0, &qword_27CC116E8, MEMORY[0x277D844C8]);
  v24 = v6;
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for SportsUpsellState(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D48FA4();
  v23 = v8;
  v12 = v25;
  sub_219BF7B34();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v21;
  v14 = v22;
  v29 = 0;
  v15 = sub_219BF7724();
  v25 = v11;
  *v11 = v15;
  v28 = 1;
  sub_218D493F0(&unk_280EE9C70, MEMORY[0x277CC95A0]);
  sub_219BF7734();
  (*(v14 + 32))(v25 + v9[5], v5, v3);
  v27 = 2;
  v16 = sub_219BF7704();
  v17 = v25;
  *(v25 + v9[6]) = v16 & 1;
  v26 = 3;
  v18 = sub_219BF7724();
  (*(v13 + 8))(v23, v24);
  *(v17 + v9[7]) = v18;
  sub_218D49434(v17, v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_218D49498(v17);
}

void sub_218D4938C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D48FA4();
    v7 = a3(a1, &type metadata for SportsUpsellState.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218D493F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_219BDBD34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218D49434(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsUpsellState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D49498(uint64_t a1)
{
  v2 = type metadata accessor for SportsUpsellState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void SportsUpsellState.incrementingArticleReadCount()(char *a1@<X8>)
{
  v3 = *v1 + 1;
  if (__OFADD__(*v1, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = type metadata accessor for SportsUpsellState(0);
    v5 = v4[5];
    v6 = sub_219BDBD34();
    (*(*(v6 - 8) + 16))(&a1[v5], &v1[v5], v6);
    v7 = v1[v4[6]];
    v8 = *&v1[v4[7]];
    *a1 = v3;
    a1[v4[6]] = v7;
    *&a1[v4[7]] = v8;
  }
}

uint64_t SportsUpsellState.resettingArticleReadCount()@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for SportsUpsellState(0);
  v4 = v3[5];
  v5 = sub_219BDBD34();
  result = (*(*(v5 - 8) + 16))(&a1[v4], v1 + v4, v5);
  v7 = *(v1 + v3[6]);
  v8 = *(v1 + v3[7]);
  *a1 = 0;
  a1[v3[6]] = v7;
  *&a1[v3[7]] = v8;
  return result;
}

uint64_t SportsUpsellState.updatingLastShownDate(to:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for SportsUpsellState(0);
  v7 = v6[5];
  v8 = sub_219BDBD34();
  result = (*(*(v8 - 8) + 16))(&a2[v7], a1, v8);
  v10 = *(v2 + v6[6]);
  v11 = *(v2 + v6[7]);
  *a2 = v5;
  a2[v6[6]] = v10;
  *&a2[v6[7]] = v11;
  return result;
}

uint64_t SportsUpsellState.updatingEngagedUser(to:)@<X0>(char a1@<W0>, char *a2@<X8>)
{
  v5 = *v2;
  v6 = type metadata accessor for SportsUpsellState(0);
  v7 = v6[5];
  v8 = sub_219BDBD34();
  result = (*(*(v8 - 8) + 16))(&a2[v7], &v2[v7], v8);
  v10 = *&v2[v6[7]];
  *a2 = v5;
  a2[v6[6]] = a1;
  *&a2[v6[7]] = v10;
  return result;
}

uint64_t SportsUpsellState.incrementingPresentedCount()@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for SportsUpsellState(0);
  v5 = v4[5];
  v6 = sub_219BDBD34();
  result = (*(*(v6 - 8) + 16))(&a1[v5], &v1[v5], v6);
  v8 = *&v1[v4[7]];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v11 = v1[v4[6]];
    *a1 = v3;
    a1[v4[6]] = v11;
    *&a1[v4[7]] = v10;
  }

  return result;
}

unint64_t sub_218D49880()
{
  result = qword_27CC116F0;
  if (!qword_27CC116F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC116F0);
  }

  return result;
}

unint64_t sub_218D498D8()
{
  result = qword_27CC116F8;
  if (!qword_27CC116F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC116F8);
  }

  return result;
}

unint64_t sub_218D49930()
{
  result = qword_27CC11700;
  if (!qword_27CC11700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11700);
  }

  return result;
}

uint64_t sub_218D49984(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000219CF4BF0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776F68537473616CLL && a2 == 0xED0000657461446ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656761676E457369 && a2 == 0xED00007265735564 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CF4C10 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_219BF78F4();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_218D49B08(id *a1, void *a2)
{
  v3 = *a1;
  if (([*a1 respondsToSelector_] & 1) != 0 && (v4 = objc_msgSend(v3, sel_channelPickerConfigurationResourceId)) != 0)
  {
    v5 = v4;
    v6 = sub_219BF5414();
    v8 = v7;

    if (qword_27CC08558 != -1)
    {
      swift_once();
    }

    v9 = qword_27CCD8A18;
    sub_2186F20D4(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_2186FC3BC();
    *(v10 + 32) = v6;
    *(v10 + 40) = v8;

    v11 = sub_219BF6214();
    sub_219BE5314("Fetching channel picker config resource %{public}@", 50, 2, &dword_2186C1000, v9, v11, v10);

    __swift_project_boxed_opaque_existential_1(a2 + 4, a2[7]);
    v12 = sub_219BF2964();

    return v12;
  }

  else
  {
    sub_218D4A05C();
    swift_allocError();
    *v14 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_218D49CAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = v21 - v11;
  v13 = [*a1 fileURL];
  if (v13)
  {
    v14 = v13;
    sub_219BDB8B4();

    (*(v6 + 32))(v12, v8, v5);
    v15 = sub_219BDB974();
    if (v2)
    {
      return (*(v6 + 8))(v12, v5);
    }

    else
    {
      v19 = v15;
      v20 = v16;
      sub_218D4A0B0();
      sub_219BE1974();
      (*(v6 + 8))(v12, v5);
      result = sub_2186C6190(v19, v20);
      *a2 = v21[1];
    }
  }

  else
  {
    sub_218D4A05C();
    swift_allocError();
    *v18 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_218D49ED8()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_218D49F28(uint64_t a1)
{
  sub_2186C61E4();
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_2186E9518();
  sub_219BE2F84();

  v2 = sub_219BE2E54();
  v3 = sub_219BE2F94();

  return v3;
}

unint64_t sub_218D4A05C()
{
  result = qword_27CC11708;
  if (!qword_27CC11708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11708);
  }

  return result;
}

unint64_t sub_218D4A0B0()
{
  result = qword_27CC11710;
  if (!qword_27CC11710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11710);
  }

  return result;
}

unint64_t sub_218D4A118()
{
  result = qword_27CC11720;
  if (!qword_27CC11720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11720);
  }

  return result;
}

uint64_t sub_218D4A16C()
{

  sub_218D4B094(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

void sub_218D4A208(uint64_t a1)
{
  v2 = sub_219BE9414();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_219BDE294();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDEE04();
  v52 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDD944();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF2484();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v18 + 16);
  v51 = a1;
  v22(v21, a1, v17, v19);
  v23 = (*(v18 + 88))(v21, v17);
  if (v23 == *MEMORY[0x277D33878])
  {
    (*(v18 + 96))(v21, v17);
    v24 = *v21;
    v25 = swift_allocObject();
    LOBYTE(v58[0]) = 0;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
    *(v25 + 32) = v24;
    *(v25 + 56) = 0;
    *(v25 + 63) = 0;
    *(v25 + 61) = 0;
    *(v25 + 64) = &unk_282A24200;
    v26 = v25 | 0x5000000000000000;
    *(v25 + 57) = 0;
  }

  else if (v23 == *MEMORY[0x277D33888])
  {
    (*(v18 + 96))(v21, v17);
    swift_unknownObjectRetain();
    sub_219BDEDE4();
    v27 = sub_219BDB954();
    (*(*(v27 - 8) + 56))(v10, 1, 1, v27);
    v29 = v53;
    v28 = v54;
    (*(v53 + 104))(v7, *MEMORY[0x277D2FF08], v54);
    sub_219BDD904();
    (*(v29 + 8))(v7, v28);
    sub_2187BC514(v10, sub_21873F65C);
    (*(v52 + 8))(v13, v11);
    sub_2187B2C48(0);
    v31 = v30;
    v32 = swift_allocBox();
    v34 = v33;
    v35 = *(v31 + 48);
    sub_2187B2DA0(0);
    v37 = *(v36 + 48);
    sub_218A38FE0(v16, v34);
    *(v34 + v37) = &unk_282A24200;
    swift_unknownObjectRelease();
    sub_2187BC514(v16, MEMORY[0x277D2FB40]);
    *(v34 + v35) = MEMORY[0x277D84F90];
    v26 = v32 | 2;
  }

  else
  {
    if (v23 != *MEMORY[0x277D33870])
    {
      v58[0] = 0;
      v58[1] = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0x206E776F6E6B6E55, 0xED00002065736163);
      sub_219BF7484();
      MEMORY[0x21CECC330](0xD000000000000049, 0x8000000219CF4D40);
      sub_219BF7514();
      __break(1u);
      return;
    }

    (*(v18 + 96))(v21, v17);
    v38 = *(v21 + 1);
    v39 = [*v21 identifier];
    v40 = sub_219BF5414();
    v42 = v41;

    v43 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
    swift_unknownObjectRelease();
    v44 = swift_allocObject();
    *(v44 + 16) = v40;
    *(v44 + 24) = v42;
    *(v44 + 32) = v43;
    *(v44 + 40) = &unk_282A24200;
    *(v44 + 48) = 1;
    *(v44 + 56) = v38;
    *(v44 + 64) = 0u;
    *(v44 + 80) = 0u;
    v26 = v44 | 0x2000000000000004;
    *(v44 + 96) = -1;
  }

  v45 = v55;
  v60 = v26;
  sub_218D4B004(v55 + 24, v58);
  v46 = v59;
  if (v59)
  {
    __swift_project_boxed_opaque_existential_1(v58, v59);
    sub_2189EB264(v26);
    v46 = sub_219BE7144();
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    sub_2189EB264(v26);
    sub_218D4B094(v58);
  }

  sub_218D4B004(v45 + 24, v58);
  if (v59)
  {
    __swift_project_boxed_opaque_existential_1(v58, v59);
    v47 = sub_219BE7154();
    __swift_destroy_boxed_opaque_existential_1(v58);
  }

  else
  {
    sub_218D4B094(v58);
    v47 = 0;
  }

  *v4 = v46;
  v4[1] = v47;
  v48 = v57;
  v49 = v56 + 104;
  (*(v56 + 104))(v4, *MEMORY[0x277D6E590], v57);
  sub_219BE6474();
  v50 = sub_218932F9C(v26);
  (*(v49 - 96))(v4, v48, v50);
  sub_218932F9C(v60);
}

uint64_t sub_218D4AADC(uint64_t a1)
{
  v3 = sub_219BF2CB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_219BF2634();
  v30 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF2484();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  v15 = (*(v11 + 88))(v14, v10);
  if (v15 == *MEMORY[0x277D33878])
  {
    (*(v11 + 96))(v14, v10);
    v16 = *v14;
    __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
    *v6 = v16;
    (*(v4 + 104))(v6, *MEMORY[0x277D33BA0], v3);
    v17 = v16;
    sub_219BF4794();
    (*(v4 + 8))(v6, v3);
    v18 = sub_219BF2614();

LABEL_7:
    (*(v30 + 8))(v9, v7);
    return v18 & 1;
  }

  if (v15 == *MEMORY[0x277D33888])
  {
    (*(v11 + 96))(v14, v10);
    v19 = *v14;
    __swift_project_boxed_opaque_existential_1(v1 + 8, v1[11]);
    *v6 = v19;
    (*(v4 + 104))(v6, *MEMORY[0x277D33BC0], v3);
    swift_unknownObjectRetain();
    sub_219BF4794();
    (*(v4 + 8))(v6, v3);
    v18 = sub_219BF2614();
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v29 = v7;
  if (v15 == *MEMORY[0x277D33870])
  {
    (*(v11 + 96))(v14, v10);
    v21 = *v14;
    v20 = *(v14 + 1);
    v22 = v1[11];
    v28[0] = v1[12];
    v28[1] = v21;
    __swift_project_boxed_opaque_existential_1(v1 + 8, v22);
    v23 = [v21 identifier];
    v24 = sub_219BF5414();
    v26 = v25;

    *v6 = v24;
    v6[1] = v26;
    v6[2] = v20;
    (*(v4 + 104))(v6, *MEMORY[0x277D33B88], v3);
    sub_219BF4794();
    (*(v4 + 8))(v6, v3);
    v18 = sub_219BF2614();
    swift_unknownObjectRelease();
    v7 = v29;
    goto LABEL_7;
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0x206E776F6E6B6E55, 0xED00002065736163);
  sub_219BF7484();
  MEMORY[0x21CECC330](0xD000000000000049, 0x8000000219CF4D40);
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_218D4B004(uint64_t a1, uint64_t a2)
{
  sub_2187B1B90(0, &unk_280EE5380, &qword_280EE5390, MEMORY[0x277D6D908], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D4B094(uint64_t a1)
{
  sub_2187B1B90(0, &unk_280EE5380, &qword_280EE5390, MEMORY[0x277D6D908], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218D4B11C()
{
  v1 = [objc_msgSend(*v0 sourceChannel)];
  swift_unknownObjectRelease();
  v2 = sub_219BF5414();

  return v2;
}

uint64_t sub_218D4B1A8@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 publicationDate];
  sub_219BDBCA4();

  v4 = sub_219BDBD34();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, 0, 1, v4);
}

uint64_t sub_218D4B23C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *a2;
  v4 = *(a2 + 16);
  v5 = [*a1 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  v9 = [v3 identifier];
  v10 = sub_219BF5414();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {

    goto LABEL_8;
  }

  v14 = sub_219BF78F4();

  result = 0;
  if (v14)
  {
LABEL_8:
    sub_2189666A0();
    return sub_219BF6DD4() & (v2 == v4);
  }

  return result;
}

unint64_t sub_218D4B35C()
{
  result = qword_280ECA890;
  if (!qword_280ECA890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA890);
  }

  return result;
}

uint64_t sub_218D4B3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v103 = a3;
  v104 = a4;
  v96 = a1;
  v5 = type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader(0);
  v94 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v91 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BF00D4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer(0);
  v98 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v9 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v95 = v84 - v11;
  v99 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header(0);
  v12 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v88 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v89 = v84 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v84 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v84 - v20;
  MEMORY[0x28223BE20](v22);
  v87 = v84 - v23;
  v24 = sub_219BE9834();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v97 = v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = v84 - v28;
  sub_218951E9C(0);
  v84[1] = a2;
  sub_219BE8184();
  v30 = v112;
  v101 = v114;
  v102 = v113;
  if (v115)
  {
    v85 = v25;
    v87 = v24;
    if (v115 != 1)
    {
LABEL_53:
      v112 = 0;
      v113 = 0xE000000000000000;
      sub_219BF7314();
      v110 = v112;
      v111 = v113;
      sub_219BE8184();
      v79 = v112;
      v80 = v113;
      v81 = v114;
      v82 = v115;
      v106 = v112;
      v107 = v113;
      v108 = v114;
      v109 = v115;
      sub_219BF7484();
      v83 = sub_218D4CA9C(v79, v80, v81, v82);
      MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE1A00, v83);
      goto LABEL_54;
    }

    v40 = *(v112 + 16);
    v41 = MEMORY[0x277D84F90];
    v42 = v103;
    v86 = v112;
    if (v40)
    {
      v106 = MEMORY[0x277D84F90];
      sub_218C356B0(0, v40, 0);
      v43 = v106;
      v44 = v30 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
      v45 = *(v94 + 72);
      do
      {
        sub_218D4CAF0(v44, v18, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
        swift_storeEnumTagMultiPayload();
        v106 = v43;
        v47 = *(v43 + 16);
        v46 = *(v43 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_218C356B0((v46 > 1), v47 + 1, 1);
          v43 = v106;
        }

        *(v43 + 16) = v47 + 1;
        sub_218D4CB58(v18, v43 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v47, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header);
        v44 += v45;
        --v40;
      }

      while (v40);
      v42 = v103;
      v48 = v104;
      v41 = MEMORY[0x277D84F90];
    }

    else
    {
      v48 = v104;
      v43 = MEMORY[0x277D84F90];
    }

    v56 = v102;
    v57 = *(v102 + 16);
    if (v57)
    {
      v106 = v41;
      sub_218C35660(0, v57, 0);
      v58 = v106;
      v59 = *(type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0) - 8);
      v60 = v56 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
      v61 = *(v59 + 72);
      v62 = v98;
      do
      {
        sub_218D4CAF0(v60, v9, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
        swift_storeEnumTagMultiPayload();
        v106 = v58;
        v64 = *(v58 + 16);
        v63 = *(v58 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_218C35660((v63 > 1), v64 + 1, 1);
          v62 = v98;
          v58 = v106;
        }

        *(v58 + 16) = v64 + 1;
        sub_218D4CB58(v9, v58 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v64, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer);
        v60 += v61;
        --v57;
      }

      while (v57);

      v42 = v103;
      v48 = v104;
    }

    else
    {

      v58 = MEMORY[0x277D84F90];
    }

    v65 = v97;
    sub_219BE95F4();
    v66 = (*(v85 + 88))(v65, v87);
    if (v66 == *MEMORY[0x277D6E758])
    {

      v67 = sub_219BE9604();
      if ((v67 & 0x8000000000000000) == 0)
      {
        if (v67 < *(v43 + 16))
        {
          v68 = v89;
          sub_218D4CAF0(v43 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v67, v89, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header);

          v69 = v88;
          sub_218D4CAF0(v68, v88, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v70 = v91;
            sub_218D4CB58(v69, v91, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
            v37 = sub_218F6B774(v70, v42, v48);
            sub_218D4CC24(v70, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
LABEL_41:
            v38 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header;
            v39 = v68;
            goto LABEL_42;
          }

          v74 = v92;
          v75 = v90;
          v77 = v93;
          (*(v92 + 32))(v90, v69, v93);
          __swift_project_boxed_opaque_existential_1((v100 + 32), *(v100 + 56));
          v37 = sub_219BF0234();
LABEL_40:
          (*(v74 + 8))(v75, v77);
          goto LABEL_41;
        }

        goto LABEL_49;
      }

      goto LABEL_45;
    }

    if (v66 == *MEMORY[0x277D6E750])
    {
      v71 = sub_219BE9604();
      v72 = *(v43 + 16);

      v73 = v71 - v72;
      if (__OFSUB__(v71, v72))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if ((v73 & 0x8000000000000000) != 0)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (v73 >= *(v58 + 16))
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v55 = v95;
      sub_218D4CAF0(v58 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v73, v95, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer);

      v37 = sub_218D4C0FC(v55, v42, v96, v48);
      goto LABEL_37;
    }
  }

  else
  {
    v31 = v104;
    sub_219BE95F4();
    v32 = (*(v25 + 88))(v29, v24);
    if (v32 == *MEMORY[0x277D6E758])
    {
      v33 = sub_219BE9604();
      v34 = v103;
      if ((v33 & 0x8000000000000000) == 0)
      {
        if (v33 < *(v30 + 16))
        {
          v35 = v87;
          sub_218D4CAF0(v30 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v33, v87, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header);
          sub_218D4CAF0(v35, v21, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v36 = v91;
            sub_218D4CB58(v21, v91, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
            v37 = sub_218F6B774(v36, v34, v31);

            sub_218D4CC24(v36, type metadata accessor for MagazineFeedEmbeddedSupplementaryHeader);
            v38 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Header;
            v39 = v35;
LABEL_42:
            sub_218D4CC24(v39, v38);
            return v37;
          }

          v74 = v92;
          v75 = v90;
          v76 = v21;
          v68 = v35;
          v77 = v93;
          (*(v92 + 32))(v90, v76, v93);
          __swift_project_boxed_opaque_existential_1((v100 + 32), *(v100 + 56));
          v37 = sub_219BF0234();

          goto LABEL_40;
        }

        goto LABEL_47;
      }

      __break(1u);
      goto LABEL_44;
    }

    v49 = v102;
    v50 = v103;
    if (v32 == *MEMORY[0x277D6E750])
    {
      v51 = sub_219BE9604();
      v52 = *(v30 + 16);
      v53 = __OFSUB__(v51, v52);
      v54 = v51 - v52;
      if (v53)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if ((v54 & 0x8000000000000000) != 0)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v54 >= *(v49 + 16))
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v55 = v95;
      sub_218D4CAF0(v49 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v54, v95, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer);
      v37 = sub_218D4C0FC(v55, v50, v96, v31);

LABEL_37:
      v38 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer;
      v39 = v55;
      goto LABEL_42;
    }
  }

LABEL_54:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

id sub_218D4C0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a2;
  v42 = a4;
  v36 = a3;
  v40 = a1;
  sub_218951DB0(0);
  v38 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v37 = type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter(0);
  MEMORY[0x28223BE20](v37);
  v39 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = sub_219BF00D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4CAF0(v40, v18, type metadata accessor for MagazineFeedLayoutSectionDescriptor.Footer);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_218D4CB58(v18, v11, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
    v40 = v4[9];
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = v38;
    (*(v6 + 16))(&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v36, v38);
    v21 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    (*(v6 + 32))(v22 + v21, &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20);
    v23 = v39;
    sub_218D4CAF0(v11, v39, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_218D4CC24(v23, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
      sub_2188074E4(0);
      v24 = sub_219BF6414();
      sub_2186EBFA8(&qword_27CC0FD48, sub_2188074E4, MEMORY[0x277D6DE98]);
    }

    else
    {
      sub_2187DE694(0);
      v27 = *(v26 + 48);
      sub_218807484(0);

      v24 = sub_219BF6414();
      sub_2186EBFA8(&qword_27CC0FD50, sub_218807484, MEMORY[0x277D6DE98]);
      v28 = sub_219BE9CC4();
      (*(*(v28 - 8) + 8))(v23 + v27, v28);
      v29 = sub_219BE8434();
      (*(*(v29 - 8) + 8))(v23, v29);
    }

    swift_getObjectType();
    v25 = v24;
    v30 = v11;
    sub_218F6C1C4(v25, v11, sub_218D4CBC0, v22);

    v43 = v25;
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v31;
    v33[3] = v32;
    v33[4] = sub_218D4CBC0;
    v33[5] = v22;

    sub_219BE5834();

    sub_218D4CC24(v30, type metadata accessor for MagazineFeedEmbeddedSupplementaryFooter);
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    __swift_project_boxed_opaque_existential_1(v4 + 4, v4[7]);
    v25 = sub_219BF0234();
    (*(v13 + 8))(v15, v12);
  }

  return v25;
}

double sub_218D4C764(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_218CA01F0();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_218D4C8F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MagazineFeedLayoutModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  sub_218C3ED68(0);
  sub_219BE75E4();
  (*(v6 + 32))(v8, v11, v5);
  __swift_project_boxed_opaque_existential_1((v12 + 32), *(v12 + 56));
  v13 = sub_219BF0224();
  (*(v6 + 8))(v8, v5);
  return v13;
}

double sub_218D4CA9C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_218D4CAF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D4CB58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_218D4CBC0()
{
  sub_218951DB0(0);
  v1 = *(v0 + 16);

  return sub_218D4C764(v1);
}

uint64_t sub_218D4CC24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218D4CC84(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v37 = a2;
  v8 = sub_219BE1444();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_219BDFEE4();
  v33 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4D0C0(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BDCC14();
  v18 = MEMORY[0x28223BE20](v17);
  (*(v20 + 16))(&v32 - v19, a1, v17, v18);
  if (swift_dynamicCast())
  {
    (*(v14 + 8))(v16, v13);
    v21 = sub_219BDCC04();
    v22 = sub_219BDD084();
    v24 = v23;

    if (!v5)
    {
      sub_218D4D154(&qword_27CC11730, MEMORY[0x277D2E1E0], MEMORY[0x277D2E1E8]);
      v25 = v38;
      sub_219BE1974();
      v27 = v34;
      sub_219BDFED4();
      v28 = sub_219BE1434();
      v30 = v29;
      sub_2186C6190(v22, v24);
      (*(v35 + 8))(v27, v36);
      (*(v33 + 8))(v11, v25);
      *a5 = v28;
      a5[1] = v30;
      v31 = type metadata accessor for EngagementEvent(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v31 - 8) + 56))(a5, 0, 1, v31);
    }
  }

  else
  {
    v26 = type metadata accessor for EngagementEvent(0);
    (*(*(v26 - 8) + 56))(a5, 1, 1, v26);
  }
}

void sub_218D4D0C0(uint64_t a1)
{
  if (!qword_280EE8F98)
  {
    sub_219BDFEF4();
    sub_218D4D154(&unk_280EE8510, MEMORY[0x277D2E1F0], MEMORY[0x277D2E1D8]);
    v1 = sub_219BDCC14();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE8F98);
    }
  }
}

uint64_t sub_218D4D154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218D4D19C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AudioHistoryFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218700938(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v27 - v16;
  v18 = type metadata accessor for AudioHistoryFeedGroupConfig(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4D544(a1, v20, type metadata accessor for AudioHistoryFeedGroupConfig);
  v21 = *(v12 + 32);
  v21(v17, v20, v11);
  (*(v12 + 16))(v14, v17, v11);
  sub_218D4D544(a2, v9, type metadata accessor for AudioHistoryFeedGroupKnobs);
  v22 = v9;
  v23 = v6;
  sub_218D4D5AC(v22, v6);
  sub_218718690(v27 + 16, v28);
  type metadata accessor for ArticleListAudioHistoryFeedGroupEmitter(0);
  v24 = swift_allocObject();
  v21((v24 + OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_config), v14, v11);
  sub_218D4D5AC(v23, v24 + OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_knobs);
  sub_2186CB1F0(v28, v24 + OBJC_IVAR____TtC7NewsUI239ArticleListAudioHistoryFeedGroupEmitter_formatService);
  *&v28[0] = v24;
  sub_218D4D610(0);
  swift_allocObject();
  sub_218700508(&qword_27CC11740, type metadata accessor for ArticleListAudioHistoryFeedGroupEmitter, &unk_219C5CF60);
  v25 = sub_219BEDF84();
  (*(v12 + 8))(v17, v11);
  return v25;
}

uint64_t sub_218D4D544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D4D5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218D4D610(uint64_t a1)
{
  if (!qword_27CC11738)
  {
    type metadata accessor for AudioHistoryFeedServiceConfig(255);
    sub_218700508(&qword_280EB13F0, type metadata accessor for AudioHistoryFeedServiceConfig, &unk_219CA2BD8);
    v1 = sub_219BEDFA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11738);
    }
  }
}

uint64_t type metadata accessor for MagazineGridItemTraitChangeModifier(uint64_t a1)
{
  result = qword_27CC11748;
  if (!qword_27CC11748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D4D718(uint64_t a1)
{
  sub_21897BFEC(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_218D4D7A0()
{
  result = qword_27CC11758;
  if (!qword_27CC11758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11758);
  }

  return result;
}

uint64_t sub_218D4D7F4(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    sub_219BF0744();
    sub_218D4F4D8(&qword_27CC117A0, MEMORY[0x277D32F30], MEMORY[0x277D32F28]);
    sub_219BEE304();
  }

  sub_218D4F328(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218D4D8C0(unsigned __int8 a1, __n128 a3)
{
  if (a1 <= 2u)
  {
    sub_219BF0444();
    sub_218D4F4D8(&qword_27CC11790, MEMORY[0x277D32CB0], MEMORY[0x277D32CA8]);
    sub_219BEE304();
  }

  sub_218D4F27C(0, a3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218D4D98C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v55 = a3;
  v56 = a2;
  v62 = a1;
  sub_218D4F064(0, &qword_27CC11768, MEMORY[0x277D6DF88]);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v47 - v5;
  sub_218D4F064(0, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
  v7 = v6;
  v60 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = &v47 - v8;
  sub_218D4F41C(0, &qword_27CC11770, sub_21897BFEC);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  sub_21897BFEC(0);
  v13 = v12;
  v61 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v59 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v58 = &v47 - v16;
  sub_2189E97D4(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4F064(0, &qword_27CC0AE58, MEMORY[0x277D6D710]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v57 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - v25;
  v27 = v3;
  sub_219BE5F84();
  v51 = v7;
  sub_219BEB244();

  if ((*(v22 + 48))(v19, 1, v21) == 1)
  {
    return sub_218D4F3BC(v19, sub_2189E97D4);
  }

  (*(v22 + 32))(v26, v19, v21);
  sub_219BE5F84();
  sub_219BE6A64();

  v29 = v61;
  if ((*(v61 + 48))(v11, 1, v13) == 1)
  {
    (*(v22 + 8))(v26, v21);
    return sub_218D4F124(v11, &qword_27CC11770, sub_21897BFEC);
  }

  else
  {
    v30 = *(v29 + 32);
    v49 = v13;
    v31.n128_f64[0] = v30(v58, v11, v13);
    sub_218D4E8D4(v27, v59, v31);
    (*(v22 + 16))(v57, v26, v21);
    sub_219BE69E4();
    v33 = v50;
    v32 = v51;
    v48 = *(v60 + 16);
    v48(v50, v62, v51);
    sub_219BEB234();
    type metadata accessor for MagazineGridItemModel(0);
    sub_218D4F180();
    sub_21895164C();
    sub_218D4F4D8(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
    sub_219BE78F4();
    __swift_project_boxed_opaque_existential_1(v63, v63[3]);
    if (sub_219BE6E54())
    {
      v34 = MEMORY[0x277D6DF80];
      v35 = v52;
    }

    else
    {
      sub_218D4F1D4(0);
      v37 = *(v36 + 48);
      v38 = *(v36 + 64);
      v39 = v52;
      v48(v52, v33, v32);
      v35 = v39;
      sub_218718690(v63, &v39[v37]);
      v40 = *MEMORY[0x277D6D868];
      v41 = sub_219BE6DF4();
      (*(*(v41 - 8) + 104))(&v39[v38], v40, v41);
      v34 = MEMORY[0x277D6DF78];
    }

    v43 = v53;
    v42 = v54;
    (*(v53 + 104))(v35, *v34, v54);
    v56(v35);
    (*(v43 + 8))(v35, v42);
    (*(v60 + 8))(v33, v32);
    v44 = *(v22 + 8);
    v44(v57, v21);
    v45 = *(v61 + 8);
    v46 = v49;
    v45(v59, v49);
    v45(v58, v46);
    v44(v26, v21);
    return __swift_destroy_boxed_opaque_existential_1(v63);
  }
}

uint64_t sub_218D4E0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a3;
  sub_218D4F41C(0, &qword_280E90EB0, MEMORY[0x277D32F30]);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v30 - v5;
  v6 = sub_219BF0744();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v30 - v20;
  sub_218D4F328(0);
  MEMORY[0x28223BE20](v22);
  v24 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4F470(a2, v24, sub_218D4F328);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *(v7 + 32);
      v26(v12, v24, v6);
      (*(v7 + 16))(v9, v32, v6);
      sub_218D4F4D8(&qword_280E90EB8, MEMORY[0x277D32F30], MEMORY[0x277D32F48]);
      if (sub_219BF7124())
      {
        v27 = v31;
        sub_219BF7104();
        sub_218D4F124(v27, &qword_280E90EB0, MEMORY[0x277D32F30]);
      }

      (*(v7 + 8))(v12, v6);
      return (v26)(v33, v9, v6);
    }

    else
    {
      return (*(v7 + 16))(v33, v32, v6);
    }
  }

  else
  {
    (*(v7 + 32))(v21, v24, v6);
    v29 = *(v7 + 16);
    v29(v18, v32, v6);
    v29(v15, v21, v6);
    sub_218D4F4D8(&qword_280E90EB8, MEMORY[0x277D32F30], MEMORY[0x277D32F48]);
    sub_219BF70F4();
    return (*(v7 + 8))(v21, v6);
  }
}

uint64_t sub_218D4E4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v34 = a3;
  sub_218D4F41C(0, &qword_27CC0E9F8, MEMORY[0x277D32CB0]);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = &v31 - v5;
  v6 = sub_219BF0444();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v31 - v21;
  sub_218D4F27C(0, v20);
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D4F470(a2, v25, sub_218D4F27C);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = *(v7 + 32);
      v27(v12, v25, v6);
      (*(v7 + 16))(v9, v33, v6);
      sub_218D4F4D8(&qword_280E90F40, MEMORY[0x277D32CB0], MEMORY[0x277D32CC8]);
      if (sub_219BF7124())
      {
        v28 = v32;
        sub_219BF7104();
        sub_218D4F124(v28, &qword_27CC0E9F8, MEMORY[0x277D32CB0]);
      }

      (*(v7 + 8))(v12, v6);
      return (v27)(v34, v9, v6);
    }

    else
    {
      return (*(v7 + 16))(v34, v33, v6);
    }
  }

  else
  {
    (*(v7 + 32))(v22, v25, v6);
    v30 = *(v7 + 16);
    v30(v18, v33, v6);
    v30(v15, v22, v6);
    sub_218D4F4D8(&qword_280E90F40, MEMORY[0x277D32CB0], MEMORY[0x277D32CC8]);
    sub_219BF70F4();
    return (*(v7 + 8))(v22, v6);
  }
}

uint64_t sub_218D4E8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v80 = a2;
  sub_218D4F27C(0, a3);
  MEMORY[0x28223BE20](v4 - 8);
  v78 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF0444();
  *&v77 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  *&v76 = &v73 - v10;
  sub_218D4F328(0);
  MEMORY[0x28223BE20](v11 - 8);
  v79 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF0744();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v73 - v18;
  v20 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v73 - v24;
  sub_21897BFEC(0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v81[0] = *v25;
    *(v81 + 9) = *(v25 + 9);
    sub_2189E96A0(0);
    v42 = v41;
    v43 = *(v41 + 48);
    v44 = &v25[*(v41 + 64)];
    v45 = *(v44 + 4);
    v78 = *(v44 + 5);
    v46 = *(v14 + 32);
    v47 = *v44;
    v76 = *(v44 + 1);
    v77 = v47;
    v46(v19, &v25[v43], v13);
    v48 = *(a1 + *(type metadata accessor for MagazineGridItemTraitChangeModifier(0) + 20));
    v36 = v79;
    sub_218D4D7F4(v48);
    sub_218D4E0DC(v19, v36, v16);
    v49 = *(v42 + 48);
    v50 = &v22[*(v42 + 64)];
    *v22 = v81[0];
    *(v22 + 9) = *(v81 + 9);
    (*(v14 + 16))(&v22[v49], v16, v13);
    v51 = v76;
    *v50 = v77;
    *(v50 + 1) = v51;
    v52 = v78;
    *(v50 + 4) = v45;
    *(v50 + 5) = v52;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v81[0] = *v25;
    *(v81 + 9) = *(v25 + 9);
    v76 = *(v25 + 2);
    v27 = *(v25 + 6);
    LODWORD(v75) = v25[56];
    sub_2189E9570(0);
    v29 = v28;
    v30 = *(v28 + 64);
    v31 = &v25[*(v28 + 80)];
    v32 = *(v31 + 5);
    v78 = *(v31 + 4);
    *&v77 = v32;
    v33 = *(v14 + 32);
    v34 = *v31;
    v73 = *(v31 + 1);
    v74 = v34;
    v33(v19, &v25[v30], v13);
    v35 = *(a1 + *(type metadata accessor for MagazineGridItemTraitChangeModifier(0) + 20));
    v36 = v79;
    sub_218D4D7F4(v35);
    sub_218D4E0DC(v19, v36, v16);
    v37 = *(v29 + 64);
    v38 = &v22[*(v29 + 80)];
    *v22 = v81[0];
    *(v22 + 9) = *(v81 + 9);
    *(v22 + 2) = v76;
    *(v22 + 6) = v27;
    v22[56] = v75;
    (*(v14 + 16))(&v22[v37], v16, v13);
    v39 = v73;
    *v38 = v74;
    *(v38 + 1) = v39;
    v40 = v77;
    *(v38 + 4) = v78;
    *(v38 + 5) = v40;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    sub_218D4F4D8(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
    sub_219BE5FB4();
    v53 = *(v14 + 8);
    v53(v16, v13);
    sub_218D4F3BC(v36, sub_218D4F328);
    return (v53)(v19, v13);
  }

  v55 = *v25;
  sub_2189E93F4(0);
  v57 = v56;
  v58 = *(v56 + 48);
  v59 = &v25[*(v56 + 64)];
  v60 = *(v59 + 5);
  v79 = *(v59 + 4);
  v75 = v60;
  v61 = v77;
  v62 = *(v77 + 32);
  v63 = *v59;
  v73 = *(v59 + 1);
  v74 = v63;
  v64 = v76;
  v62(v76, &v25[v58], v6);
  v65 = type metadata accessor for MagazineGridItemTraitChangeModifier(0);
  v66 = v78;
  sub_218D4D8C0(*(a1 + *(v65 + 20)), v67);
  sub_218D4E4D8(v64, v66, v8);
  v68 = *(v57 + 48);
  v69 = &v22[*(v57 + 64)];
  *v22 = v55;
  (*(v61 + 16))(&v22[v68], v8, v6);
  v70 = v73;
  *v69 = v74;
  *(v69 + 1) = v70;
  v71 = v75;
  *(v69 + 4) = v79;
  *(v69 + 5) = v71;
  swift_storeEnumTagMultiPayload();
  sub_218D4F4D8(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
  sub_219BE5FB4();
  v72 = *(v61 + 8);
  v72(v8, v6);
  sub_218D4F3BC(v66, sub_218D4F27C);
  return (v72)(v64, v6);
}

uint64_t sub_218D4EF68(uint64_t a1)
{
  v2 = sub_218D4F4D8(qword_27CC117A8, type metadata accessor for MagazineGridItemTraitChangeModifier, &unk_219C34550);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_218D4F064(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineGridSectionDescriptor;
    v8[1] = type metadata accessor for MagazineGridItemModel(255);
    v8[2] = sub_21895164C();
    v8[3] = sub_218D4F4D8(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218D4F124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218D4F41C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_218D4F180()
{
  result = qword_27CC11778;
  if (!qword_27CC11778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11778);
  }

  return result;
}

void sub_218D4F1D4(uint64_t a1)
{
  if (!qword_27CC11780)
  {
    sub_218D4F064(255, &qword_27CC11EA0, MEMORY[0x277D6EC60]);
    sub_218A7BBF4();
    sub_219BE6DF4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC11780);
    }
  }
}

void sub_218D4F27C(uint64_t a1, __n128 a2)
{
  if (!qword_27CC11788)
  {
    v3 = sub_219BF0444();
    v4 = sub_218D4F4D8(&qword_27CC11790, MEMORY[0x277D32CB0], MEMORY[0x277D32CA8]);
    v6 = type metadata accessor for MagazineGridItemTraitChangeModifier.Modification(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27CC11788);
    }
  }
}

void sub_218D4F328(uint64_t a1)
{
  if (!qword_27CC11798)
  {
    v2 = sub_219BF0744();
    v3 = sub_218D4F4D8(&qword_27CC117A0, MEMORY[0x277D32F30], MEMORY[0x277D32F28]);
    v5 = type metadata accessor for MagazineGridItemTraitChangeModifier.Modification(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27CC11798);
    }
  }
}

uint64_t sub_218D4F3BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218D4F41C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_218D4F470(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D4F4D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218D4F528(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218D4F58C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_218D4F698(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

void sub_218D4F844(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v179 = a3;
  v180 = a2;
  sub_218D51D18(0, &qword_280EE4AF0, MEMORY[0x277D6DF88]);
  v178 = v3;
  v177 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v176 = &v175 - v4;
  v205 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v205);
  v199 = &v175 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_219BDBD64();
  v230 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v197 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v204);
  v196 = (&v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218953870(0);
  v195 = v8;
  v223 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v194 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BB8698(0);
  v193 = v10;
  v219 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v192 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v191 = &v175 - v13;
  v14 = type metadata accessor for MagazineFeedGapLocation(0);
  MEMORY[0x28223BE20](v14 - 8);
  v203 = (&v175 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v243 = sub_219BF0BD4();
  v241 = *(v243 - 8);
  MEMORY[0x28223BE20](v243);
  v17 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D51CC0(0);
  MEMORY[0x28223BE20](v18 - 8);
  v213 = &v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v234 = &v175 - v21;
  MEMORY[0x28223BE20](v22);
  v233 = &v175 - v23;
  MEMORY[0x28223BE20](v24);
  v190 = &v175 - v25;
  MEMORY[0x28223BE20](v26);
  v189 = &v175 - v27;
  sub_218951DB0(0);
  v29 = v28;
  v236 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v211 = &v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v222 = &v175 - v32;
  MEMORY[0x28223BE20](v33);
  v221 = &v175 - v34;
  MEMORY[0x28223BE20](v35);
  v182 = &v175 - v36;
  MEMORY[0x28223BE20](v37);
  v188 = &v175 - v38;
  MEMORY[0x28223BE20](v39);
  v181 = &v175 - v40;
  v41 = type metadata accessor for MagazineFeedGroup(0);
  v200 = *(v41 - 8);
  MEMORY[0x28223BE20](v41 - 8);
  v224 = &v175 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v232 = &v175 - v44;
  MEMORY[0x28223BE20](v45);
  v231 = &v175 - v46;
  MEMORY[0x28223BE20](v47);
  v209 = &v175 - v48;
  MEMORY[0x28223BE20](v49);
  v208 = &v175 - v50;
  v220 = type metadata accessor for MagazineFeedExpandResult.Result(0);
  MEMORY[0x28223BE20](v220);
  v228 = (&v175 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v229 = type metadata accessor for MagazineFeedExpandResult(0);
  v215 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v53 = &v175 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D521BC(0, &qword_280E8E940, type metadata accessor for MagazineFeedExpandResult, MEMORY[0x277D83B88], "offset element ");
  v55 = v54;
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v214 = (&v175 - v57);
  sub_218D51E0C(0);
  MEMORY[0x28223BE20](v58 - 8);
  v60 = &v175 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v227 = (&v175 - v62);
  sub_218D51E90(0);
  MEMORY[0x28223BE20](v63 - 8);
  sub_218D51D18(0, &qword_280EE3600, MEMORY[0x277D6EC60]);
  v238 = v64;
  v175 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v66 = &v175 - v65;
  v67 = sub_2186EBFF0(&qword_280EE5950, sub_218951DB0, MEMORY[0x277D6D720]);
  v68 = sub_2186EBFF0(&qword_280EE5960, sub_218951DB0, MEMORY[0x277D6D718]);
  v69 = v67;
  v70 = v60;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v29, v69, v68);
  v71 = sub_2186EBFF0(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
  v72 = sub_2186EBFF0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
  v237 = v66;
  v73 = v29;
  v202 = v71;
  v201 = v72;
  sub_219BEB2D4();
  v74 = 0;
  v75 = *v244;
  v242 = v244 + 1;
  v76 = *(v75 + 16);
  v226 = (v56 + 56);
  v225 = (v56 + 48);
  v240 = (v236 + 6);
  ++v241;
  v235 = (v236 + 4);
  ++v236;
  v187 = *MEMORY[0x277D33090];
  v186 = (v230 + 8);
  v185 = (v223 + 8);
  v184 = (v219 + 16);
  v183 = (v219 + 8);
  v239 = v73;
  v216 = v53;
  v218 = v55;
  v219 = v70;
  v212 = v75;
  v223 = v76;
  while (v74 == v76)
  {
    v77 = 1;
    v230 = v76;
    v78 = v228;
    v79 = v229;
LABEL_10:
    v84 = v227;
    (*v226)(v70, v77, 1, v55);
    sub_218D51FEC(v70, v84, sub_218D51E0C);
    if ((*v225)(v84, 1, v55) == 1)
    {
      v173 = v176;
      v174 = v237;
      sub_219BE85C4();
      v180(v173);
      (*(v177 + 8))(v173, v178);
      (*(v175 + 8))(v174, v238);
      return;
    }

    v85 = *v84;
    sub_218D51FEC(v84 + *(v55 + 48), v53, type metadata accessor for MagazineFeedExpandResult);
    sub_218D5222C(&v53[*(v79 + 20)], v78, type metadata accessor for MagazineFeedExpandResult.Result);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v86 = v75;
      sub_218D52054(0);
      v87 = v224;
      sub_218D51FEC(v78, v224, type metadata accessor for MagazineFeedGroup);
      __swift_project_boxed_opaque_existential_1(v242, v244[4]);
      v88 = *&v53[*(v79 + 24)];
      type metadata accessor for TodayFeedServiceConfig(0);
      sub_2186EBFF0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
      sub_219BEE7A4();
      v89 = v87;
      v90 = v213;
      sub_21997FEC4(v89, v88, v17, v213);
      (*v241)(v17, v243);
      if ((*v240)(v90, 1, v73) == 1)
      {
        sub_218D520C8(v90, sub_218D51CC0);
      }

      else
      {
        v102 = v211;
        (*v235)(v211, v90, v73);
        sub_219BEB1E4();
        (*v236)(v102, v73);
      }

      sub_219BEEFF4();
      sub_219BEEFE4();
      v103 = sub_219BEEFC4();

      v75 = v86;
      if (v103)
      {
        *(&v246 + 1) = sub_219BEDC74();
        *&v245 = v103;
      }

      else
      {
        v245 = 0u;
        v246 = 0u;
      }

      v55 = v218;
      v70 = v219;
      sub_219BEB2C4();

      sub_218D520C8(v224, type metadata accessor for MagazineFeedGroup);
      sub_218D520C8(v53, type metadata accessor for MagazineFeedExpandResult);
LABEL_4:
      v76 = v223;
      v74 = v230;
    }

    else
    {
      v217 = v85;
      v91 = *v78;
      v92 = *v78 >> 61;
      if (v92 <= 1)
      {
        if (v92)
        {
          v122 = *((v91 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v123 = *((v91 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
          v210 = v91 & 0x1FFFFFFFFFFFFFFFLL;
          v124 = *(v122 + 16);
          if (v124)
          {
            v125 = *&v216[*(v229 + 24)];
            v126 = v122 + ((*(v200 + 80) + 32) & ~*(v200 + 80));
            v127 = *(v200 + 72);
            do
            {
              v129 = v231;
              sub_218D5222C(v126, v231, type metadata accessor for MagazineFeedGroup);
              __swift_project_boxed_opaque_existential_1(v242, v244[4]);
              type metadata accessor for MagazineFeedServiceConfig(0);
              sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
              sub_219BEE7A4();
              v130 = v233;
              sub_21997FEC4(v129, v125, v17, v233);
              sub_218D520C8(v129, type metadata accessor for MagazineFeedGroup);
              (*v241)(v17, v243);
              v131 = v239;
              if ((*v240)(v130, 1, v239) == 1)
              {
                sub_218D520C8(v130, sub_218D51CC0);
              }

              else
              {
                v128 = v221;
                (*v235)(v221, v130, v131);
                sub_219BEB1E4();
                (*v236)(v128, v131);
              }

              v126 += v127;
              --v124;
            }

            while (v124);
          }

          v75 = v212;
          if (v217 == *(v212 + 16) - 1)
          {
            v132 = swift_allocObject();
            sub_218D52128(0);
            swift_allocObject();
            v217 = v123 & 0x7FFFFFFFFFFFFFFFLL;

            *(v132 + 16) = sub_219BEE874();
            v133 = v203;
            *v203 = v132;
            sub_2186EBE2C(0);
            v135 = v134;
            v136 = *(v134 - 8);
            (*(v136 + 104))(v133, v187, v134);
            (*(v136 + 56))(v133, 0, 1, v135);
            sub_2186EBFF0(&qword_280EE5BB8, sub_218953870, MEMORY[0x277D6D408]);
            sub_2186EBFF0(&unk_280EE5BC0, sub_218953870, MEMORY[0x277D6D3F8]);
            v137 = v191;
            v138 = v195;
            sub_219BE2444();
            sub_218D521BC(0, &qword_280E8F9A0, type metadata accessor for MagazineFeedGapLocation, MEMORY[0x277D837D0], "identifier location ");
            v140 = *(v139 + 48);
            v141 = v197;
            sub_219BDBD54();
            v142 = sub_219BDBD44();
            v144 = v143;
            (*v186)(v141, v198);
            v145 = v196;
            *v196 = v142;
            v145[1] = v144;
            sub_218D5222C(v133, v145 + v140, type metadata accessor for MagazineFeedGapLocation);
            swift_storeEnumTagMultiPayload();
            v146 = v194;
            sub_219BE5FB4();
            v147 = v193;
            sub_219BE2404();
            (*v185)(v146, v138);
            swift_storeEnumTagMultiPayload();
            (*v184)(v192, v137, v147);
            v148 = v188;
            v75 = v212;
            sub_219BE6924();
            (*v183)(v137, v147);
            sub_218D520C8(v203, type metadata accessor for MagazineFeedGapLocation);
            sub_219BEB1E4();
            v73 = v239;
            (*v236)(v148, v239);
          }

          else
          {
            v73 = v239;
          }

          sub_219BEEFF4();

          sub_219BEEFE4();
          type metadata accessor for MagazineFeedServiceConfig(0);
          sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
          v172 = sub_219BEEFC4();

          v53 = v216;
          v55 = v218;
          if (v172)
          {
            *(&v246 + 1) = sub_219BEDC74();
            *&v245 = v172;
          }

          else
          {
            v245 = 0u;
            v246 = 0u;
          }

          v70 = v219;
          v76 = v223;
          sub_219BEB2C4();

          sub_218D520C8(v53, type metadata accessor for MagazineFeedExpandResult);
        }

        else
        {
          sub_218D52294(0);
          v105 = v104;
          v106 = swift_projectBox();
          v107 = *(v106 + *(v105 + 48));
          v108 = v208;
          sub_218D5222C(v106, v208, type metadata accessor for MagazineFeedGroup);
          __swift_project_boxed_opaque_existential_1(v242, v244[4]);
          v109 = *&v216[*(v79 + 24)];
          v110 = type metadata accessor for MagazineFeedServiceConfig(0);
          v111 = sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);

          v210 = v107;
          v73 = v239;
          v207 = v110;
          v206 = v111;
          sub_219BEE7A4();
          v112 = v189;
          sub_21997FEC4(v108, v109, v17, v189);
          (*v241)(v17, v243);
          if ((*v240)(v112, 1, v73) == 1)
          {
            sub_218D520C8(v112, sub_218D51CC0);
          }

          else
          {
            v151 = v181;
            (*v235)(v181, v112, v73);
            sub_219BEB1E4();
            (*v236)(v151, v73);
          }

          v75 = v212;
          if (v217 == *(v212 + 16) - 1)
          {
            v152 = swift_allocObject();
            sub_218D52128(0);
            swift_allocObject();

            *(v152 + 16) = sub_219BEE874();
            v153 = v203;
            *v203 = v152;
            sub_2186EBE2C(0);
            v155 = v154;
            v156 = *(v154 - 8);
            (*(v156 + 104))(v153, v187, v154);
            (*(v156 + 56))(v153, 0, 1, v155);
            sub_2186EBFF0(&qword_280EE5BB8, sub_218953870, MEMORY[0x277D6D408]);
            sub_2186EBFF0(&unk_280EE5BC0, sub_218953870, MEMORY[0x277D6D3F8]);
            v157 = v191;
            v158 = v195;
            sub_219BE2444();
            sub_218D521BC(0, &qword_280E8F9A0, type metadata accessor for MagazineFeedGapLocation, MEMORY[0x277D837D0], "identifier location ");
            v217 = v91;
            v160 = *(v159 + 48);
            v161 = v197;
            sub_219BDBD54();
            v162 = sub_219BDBD44();
            v164 = v163;
            (*v186)(v161, v198);
            v165 = v196;
            *v196 = v162;
            v165[1] = v164;
            sub_218D5222C(v153, v165 + v160, type metadata accessor for MagazineFeedGapLocation);
            swift_storeEnumTagMultiPayload();
            v166 = v194;
            sub_219BE5FB4();
            v167 = v193;
            sub_219BE2404();
            (*v185)(v166, v158);
            swift_storeEnumTagMultiPayload();
            (*v184)(v192, v157, v167);
            v168 = v188;
            v70 = v219;
            v75 = v212;
            sub_219BE6924();
            v169 = v157;
            v73 = v239;
            (*v183)(v169, v167);
            v170 = v153;
            v55 = v218;
            sub_218D520C8(v170, type metadata accessor for MagazineFeedGapLocation);
            sub_219BEB1E4();
            (*v236)(v168, v73);
          }

          sub_219BEEFF4();
          sub_219BEEFE4();
          v171 = sub_219BEEFC4();

          v53 = v216;
          if (v171)
          {
            *(&v246 + 1) = sub_219BEDC74();
            *&v245 = v171;
          }

          else
          {
            v245 = 0u;
            v246 = 0u;
          }

          v76 = v223;
          sub_219BEB2C4();

          sub_218D520C8(v208, type metadata accessor for MagazineFeedGroup);
          sub_218D520C8(v53, type metadata accessor for MagazineFeedExpandResult);
        }

        v74 = v230;
      }

      else
      {
        if (v92 == 2)
        {
          sub_218D52294(0);
          v113 = swift_projectBox();
          v114 = v53;
          v115 = v209;
          sub_218D5222C(v113, v209, type metadata accessor for MagazineFeedGroup);
          __swift_project_boxed_opaque_existential_1(v242, v244[4]);
          v116 = *&v114[*(v79 + 24)];
          v117 = type metadata accessor for MagazineFeedServiceConfig(0);
          sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);

          v217 = v117;
          sub_219BEE7A4();
          v118 = v190;
          sub_21997FEC4(v115, v116, v17, v190);
          v119 = v118;
          v73 = v239;
          (*v241)(v17, v243);
          if ((*v240)(v119, 1, v73) == 1)
          {
            sub_218D520C8(v119, sub_218D51CC0);
          }

          else
          {
            v149 = v182;
            (*v235)(v182, v119, v73);
            sub_219BEB1E4();
            (*v236)(v149, v73);
          }

          sub_219BEEFF4();
          sub_219BEEFE4();
          v150 = sub_219BEEFC4();

          v53 = v216;
          if (v150)
          {
            *(&v246 + 1) = sub_219BEDC74();
            *&v245 = v150;
          }

          else
          {
            v245 = 0u;
            v246 = 0u;
          }

          v70 = v219;
          sub_219BEB2C4();

          sub_218D520C8(v209, type metadata accessor for MagazineFeedGroup);
          sub_218D520C8(v53, type metadata accessor for MagazineFeedExpandResult);
          goto LABEL_58;
        }

        if (v92 != 3)
        {
          sub_219BEEFF4();

          sub_219BEEFE4();
          type metadata accessor for MagazineFeedServiceConfig(0);
          sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
          v120 = sub_219BEEFC4();

          if (v120)
          {
            *(&v246 + 1) = sub_219BEDC74();
            *&v245 = v120;
          }

          else
          {
            v245 = 0u;
            v246 = 0u;
          }

          v70 = v219;
          sub_219BEB2C4();

          sub_218D520C8(v53, type metadata accessor for MagazineFeedExpandResult);
LABEL_58:

          goto LABEL_4;
        }

        v93 = *((v91 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v217 = v91 & 0x1FFFFFFFFFFFFFFFLL;
        v94 = *(v93 + 16);
        if (v94)
        {
          v95 = *&v216[*(v229 + 24)];
          v96 = v93 + ((*(v200 + 80) + 32) & ~*(v200 + 80));
          v97 = *(v200 + 72);
          do
          {
            v99 = v232;
            sub_218D5222C(v96, v232, type metadata accessor for MagazineFeedGroup);
            __swift_project_boxed_opaque_existential_1(v242, v244[4]);
            type metadata accessor for MagazineFeedServiceConfig(0);
            sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
            sub_219BEE7A4();
            v100 = v234;
            sub_21997FEC4(v99, v95, v17, v234);
            sub_218D520C8(v99, type metadata accessor for MagazineFeedGroup);
            (*v241)(v17, v243);
            v101 = v239;
            if ((*v240)(v100, 1, v239) == 1)
            {
              sub_218D520C8(v100, sub_218D51CC0);
            }

            else
            {
              v98 = v222;
              (*v235)(v222, v100, v101);
              sub_219BEB1E4();
              (*v236)(v98, v101);
            }

            v96 += v97;
            --v94;
          }

          while (v94);
        }

        sub_219BEEFF4();

        sub_219BEEFE4();
        type metadata accessor for MagazineFeedServiceConfig(0);
        sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
        v121 = sub_219BEEFC4();

        if (v121)
        {
          *(&v246 + 1) = sub_219BEDC74();
          *&v245 = v121;
        }

        else
        {
          v245 = 0u;
          v246 = 0u;
        }

        v73 = v239;
        v53 = v216;
        v55 = v218;
        v75 = v212;
        v76 = v223;
        sub_219BEB2C4();

        sub_218D520C8(v53, type metadata accessor for MagazineFeedExpandResult);

        v70 = v219;
        v74 = v230;
      }
    }
  }

  if ((v74 & 0x8000000000000000) == 0)
  {
    v79 = v229;
    if (v74 >= *(v75 + 16))
    {
      goto LABEL_68;
    }

    v80 = v74 + 1;
    v81 = v75 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v74;
    v82 = *(v55 + 48);
    v83 = v214;
    *v214 = v74;
    sub_218D5222C(v81, v83 + v82, type metadata accessor for MagazineFeedExpandResult);
    sub_218D51F5C(v83, v70);
    v77 = 0;
    v230 = v80;
    v78 = v228;
    goto LABEL_10;
  }

  __break(1u);
LABEL_68:
  __break(1u);
}

uint64_t sub_218D51B9C(uint64_t a1)
{
  v2 = sub_218BB7C44();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218D51BDC()
{
  result = qword_280E9B3C0;
  if (!qword_280E9B3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9B3C0);
  }

  return result;
}

void sub_218D51CC0(uint64_t a1)
{
  if (!qword_280EE5920)
  {
    sub_218951DB0(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5920);
    }
  }
}

void sub_218D51D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186EBFF0(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    v8[3] = sub_2186EBFF0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218D51E0C(uint64_t a1)
{
  if (!qword_280E8E938)
  {
    sub_218D521BC(255, &qword_280E8E940, type metadata accessor for MagazineFeedExpandResult, MEMORY[0x277D83B88], "offset element ");
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8E938);
    }
  }
}

void sub_218D51E90(uint64_t a1)
{
  if (!qword_280EE74C0)
  {
    sub_218951DB0(255);
    sub_2186EBFF0(&qword_280EE5950, sub_218951DB0, MEMORY[0x277D6D720]);
    sub_2186EBFF0(&qword_280EE5960, sub_218951DB0, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE74C0);
    }
  }
}

uint64_t sub_218D51F5C(uint64_t a1, uint64_t a2)
{
  sub_218D521BC(0, &qword_280E8E940, type metadata accessor for MagazineFeedExpandResult, MEMORY[0x277D83B88], "offset element ");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D51FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218D52054(uint64_t a1)
{
  if (!qword_280ED5D18[0])
  {
    type metadata accessor for MagazineFeedGroup(255);
    sub_218ADF8DC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280ED5D18);
    }
  }
}

uint64_t sub_218D520C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218D52128(uint64_t a1)
{
  if (!qword_280E91AD0)
  {
    type metadata accessor for MagazineFeedServiceConfig(255);
    sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v1 = sub_219BEE884();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91AD0);
    }
  }
}

void sub_218D521BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_218D5222C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218D52294(uint64_t a1)
{
  if (!qword_280ED5D10)
  {
    type metadata accessor for MagazineFeedGroup(255);
    sub_218D52304(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280ED5D10);
    }
  }
}

void sub_218D52304(uint64_t a1)
{
  if (!qword_280E91B00)
  {
    type metadata accessor for MagazineFeedServiceConfig(255);
    sub_2186EBFF0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v1 = sub_219BEE864();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91B00);
    }
  }
}

uint64_t type metadata accessor for IntroToSportsTodayFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA6618;
  if (!qword_280EA6618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218D5241C(uint64_t a1)
{
  sub_2189AE994(319);
  if (v1 <= 0x3F)
  {
    sub_2189AE9B4(319);
    if (v2 <= 0x3F)
    {
      sub_2186F9548();
      if (v3 <= 0x3F)
      {
        sub_2186ECA28();
        if (v4 <= 0x3F)
        {
          sub_2186F95C4();
          if (v5 <= 0x3F)
          {
            sub_218D525A0(319);
            if (v6 <= 0x3F)
            {
              sub_218D52720(319);
              if (v7 <= 0x3F)
              {
                sub_218D528A0(319);
                if (v8 <= 0x3F)
                {
                  sub_219BEF244();
                  if (v9 <= 0x3F)
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
  }
}

void sub_218D525A0(uint64_t a1)
{
  if (!qword_280E914F0)
  {
    sub_218D52624();
    sub_218D52678();
    sub_218D526CC();
    v1 = sub_219BEF544();
    if (!v2)
    {
      atomic_store(v1, &qword_280E914F0);
    }
  }
}

unint64_t sub_218D52624()
{
  result = qword_280ECCE78;
  if (!qword_280ECCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCE78);
  }

  return result;
}

unint64_t sub_218D52678()
{
  result = qword_280ECCE88;
  if (!qword_280ECCE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCE88);
  }

  return result;
}

unint64_t sub_218D526CC()
{
  result = qword_280ECCE80;
  if (!qword_280ECCE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCE80);
  }

  return result;
}

void sub_218D52720(uint64_t a1)
{
  if (!qword_280E914D0)
  {
    sub_218D527A4();
    sub_218D527F8();
    sub_218D5284C();
    v1 = sub_219BEF544();
    if (!v2)
    {
      atomic_store(v1, &qword_280E914D0);
    }
  }
}

unint64_t sub_218D527A4()
{
  result = qword_280EBCDE0;
  if (!qword_280EBCDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDE0);
  }

  return result;
}

unint64_t sub_218D527F8()
{
  result = qword_280EBCDF0;
  if (!qword_280EBCDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDF0);
  }

  return result;
}

unint64_t sub_218D5284C()
{
  result = qword_280EBCDE8;
  if (!qword_280EBCDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCDE8);
  }

  return result;
}

void sub_218D528A0(uint64_t a1)
{
  if (!qword_280E914A0)
  {
    sub_218D52924();
    sub_218D52978();
    sub_218D0EB9C();
    v1 = sub_219BEF544();
    if (!v2)
    {
      atomic_store(v1, &qword_280E914A0);
    }
  }
}

unint64_t sub_218D52924()
{
  result = qword_280EAC350;
  if (!qword_280EAC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAC350);
  }

  return result;
}

unint64_t sub_218D52978()
{
  result = qword_280EAC370[0];
  if (!qword_280EAC370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAC370);
  }

  return result;
}

uint64_t sub_218D529CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a2;
  v3 = sub_219BEF244();
  v176 = *(v3 - 8);
  v177 = v3;
  MEMORY[0x28223BE20](v3);
  v170 = v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE9B4(0);
  v175 = v5;
  v168 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v167 = v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v8 = *(v7 - 8);
  v173 = v7;
  v174 = v8;
  MEMORY[0x28223BE20](v7);
  v166 = v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for IntroToSportsTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v182);
  v183 = v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D55324(0);
  MEMORY[0x28223BE20](v11 - 8);
  v169 = v128 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v178 = v128 - v14;
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v128 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v181 = v128 - v19;
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v20 - 8);
  v172 = v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v180 = v128 - v23;
  sub_218D55398(0, &qword_280E8CA48, MEMORY[0x277D844C8]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = v128 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D5527C();
  v29 = v179;
  sub_219BF7B34();
  if (v29)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v134 = a1;
  v135 = v17;
  v133 = 0;
  v137 = v26;
  LOBYTE(v192) = 0;
  sub_2186DFAB8(&qword_280E91A28, sub_2189AE994, MEMORY[0x277D321B0]);
  sub_219BF7674();
  LOBYTE(v192) = 1;
  sub_2186DFAB8(&qword_280E91868, sub_2189AE9B4, MEMORY[0x277D32328]);
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v192) = 2;
  v31 = MEMORY[0x277D32620];
  sub_2186DFAB8(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  sub_219BF7674();
  v157 = v215;
  LOBYTE(v192) = 3;
  sub_219BF7674();
  v156 = v214;
  LOBYTE(v192) = 4;
  sub_219BF7674();
  v132 = v213;
  LOBYTE(v192) = 5;
  sub_219BF7674();
  v155 = v212;
  LOBYTE(v192) = 6;
  sub_219BF7674();
  v154 = v211;
  sub_2186ECA28();
  v33 = v32;
  LOBYTE(v192) = 7;
  v159 = sub_2186DFAB8(&qword_280E913D8, sub_2186ECA28, v31);
  v136 = v33;
  sub_219BF7674();
  v153 = v210;
  sub_2186F95C4();
  v35 = v34;
  LOBYTE(v192) = 8;
  sub_2186DFAB8(&qword_280E913F8, sub_2186F95C4, v31);
  sub_219BF7674();
  v152 = v209;
  LOBYTE(v192) = 9;
  sub_219BF7674();
  v151 = v208;
  sub_218D525A0(0);
  v37 = v36;
  LOBYTE(v192) = 10;
  sub_2186DFAB8(&qword_280E914F8, sub_218D525A0, v31);
  v128[0] = v37;
  sub_219BF7674();
  v150 = v207;
  sub_218D52720(0);
  v39 = v38;
  LOBYTE(v192) = 11;
  sub_2186DFAB8(&qword_280E914D8, sub_218D52720, v31);
  v128[1] = v39;
  sub_219BF7674();
  v149 = v206;
  LOBYTE(v192) = 12;
  sub_219BF7674();
  v148 = v205;
  LOBYTE(v192) = 13;
  sub_219BF7674();
  v147 = v204;
  sub_218D528A0(0);
  v41 = v40;
  LOBYTE(v192) = 14;
  sub_2186DFAB8(&qword_280E914A8, sub_218D528A0, v31);
  v128[2] = v41;
  sub_219BF7674();
  v146 = v203;
  LOBYTE(v192) = 15;
  sub_219BF7674();
  v145 = v202;
  LOBYTE(v192) = 16;
  sub_219BF7674();
  v144 = v201;
  LOBYTE(v192) = 17;
  sub_219BF7674();
  v143 = v200;
  LOBYTE(v192) = 18;
  sub_219BF7674();
  v142 = v199;
  LOBYTE(v192) = 19;
  sub_219BF7674();
  v141 = v198;
  LOBYTE(v192) = 20;
  sub_219BF7674();
  v140 = v197;
  LOBYTE(v192) = 21;
  sub_219BF7674();
  v139 = v196;
  LOBYTE(v188) = 22;
  sub_218D553FC();
  sub_219BF7674();
  v138 = v192;
  v163 = v193;
  v164 = v194;
  v165 = v195;
  LOBYTE(v187) = 23;
  sub_219BF7674();
  v179 = v188;
  v160 = v189;
  v161 = v190;
  v162 = v191;
  LOBYTE(v187) = 24;
  sub_2186DFAB8(&qword_280E916D8, MEMORY[0x277D324F0], MEMORY[0x277D32500]);
  sub_219BF7674();
  LOBYTE(v186) = 25;
  sub_219BF7674();
  v158 = v187;
  LOBYTE(v185) = 26;
  sub_219BF7674();
  v129 = v186;
  LOBYTE(v184) = 27;
  v159 = v35;
  v42 = v28;
  sub_219BF7674();
  v131 = v185;
  v43 = v172;
  sub_218D55894(v180, v172, sub_2189AF720);
  v44 = v173;
  v45 = *(v174 + 6);
  v46 = v45(v43, 1, v173);
  v130 = v25;
  if (v46 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFAB8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v47 = v166;
    sub_219BEE974();
    v48 = v45(v43, 1, v44);
    v49 = v47;
    v50 = v182;
    v51 = v168;
    v52 = v135;
    v53 = v174;
    if (v48 != 1)
    {
      sub_218D55450(v172, sub_2189AF720);
    }
  }

  else
  {
    v53 = v174;
    v49 = v166;
    (*(v174 + 4))(v166, v43, v44);
    v50 = v182;
    v51 = v168;
    v52 = v135;
  }

  (*(v53 + 4))(v183, v49, v44);
  sub_218D55894(v181, v52, sub_2189AF700);
  v54 = *(v51 + 48);
  v55 = v175;
  v56 = v54(v52, 1, v175);
  v174 = v42;
  if (v56 == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFAB8(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v57 = v167;
    v58 = v135;
    sub_219BEEC74();
    if (v54(v58, 1, v55) != 1)
    {
      sub_218D55450(v58, sub_2189AF700);
    }
  }

  else
  {
    v57 = v167;
    (*(v51 + 32))(v167, v52, v55);
  }

  v59 = v183;
  (*(v51 + 32))(&v183[v50[5]], v57, v55);
  if (v157)
  {
    v60 = v157;
  }

  else
  {
    v184 = 0;
    swift_allocObject();
    v60 = sub_219BEF534();
  }

  *&v59[v50[6]] = v60;
  v61 = v156;
  if (v156)
  {

    v62 = v61;
  }

  else
  {
    v184 = 5;
    swift_allocObject();

    v62 = sub_219BEF534();
  }

  *&v59[v50[7]] = v62;
  v63 = v132;
  if (v132)
  {

    v64 = v63;
  }

  else
  {
    v184 = 0;
    swift_allocObject();

    v64 = sub_219BEF534();
  }

  *&v59[v50[8]] = v64;
  v65 = v155;
  if (v155)
  {

    v66 = v65;
  }

  else
  {
    v184 = 1;
    swift_allocObject();

    v66 = sub_219BEF534();
  }

  *&v59[v50[9]] = v66;
  v67 = v154;
  if (v154)
  {

    v68 = v67;
  }

  else
  {
    v184 = 1;
    swift_allocObject();

    v68 = sub_219BEF534();
  }

  *&v59[v50[10]] = v68;
  v69 = v169;
  v70 = v153;
  if (v153)
  {

    v71 = v70;
  }

  else
  {
    v184 = 0x40F5180000000000;
    swift_allocObject();

    v71 = sub_219BEF534();
  }

  *&v59[v50[11]] = v71;
  v72 = v152;
  if (v152)
  {

    v73 = v72;
  }

  else
  {
    LOBYTE(v184) = 1;
    swift_allocObject();

    v73 = sub_219BEF534();
  }

  *&v59[v50[12]] = v73;
  v74 = v151;
  if (v151)
  {

    v75 = v74;
  }

  else
  {
    v184 = 30;
    swift_allocObject();

    v75 = sub_219BEF534();
  }

  *&v59[v50[13]] = v75;
  v76 = v150;
  if (v150)
  {

    v77 = v76;
  }

  else
  {
    LOBYTE(v184) = 1;
    swift_allocObject();

    v77 = sub_219BEF534();
  }

  *&v59[v50[14]] = v77;
  v78 = v149;
  if (v149)
  {

    v79 = v78;
  }

  else
  {
    LOBYTE(v184) = 1;
    swift_allocObject();

    v79 = sub_219BEF534();
  }

  *&v59[v50[15]] = v79;
  v80 = v148;
  if (v148)
  {

    v81 = v80;
  }

  else
  {
    v184 = 1;
    swift_allocObject();

    v81 = sub_219BEF534();
  }

  *&v59[v50[16]] = v81;
  v82 = v147;
  if (v147)
  {

    v83 = v82;
  }

  else
  {
    v184 = 3;
    swift_allocObject();

    v83 = sub_219BEF534();
  }

  *&v59[v50[17]] = v83;
  v84 = v146;
  if (v146)
  {

    v85 = v84;
  }

  else
  {
    LOBYTE(v184) = 1;
    swift_allocObject();

    v85 = sub_219BEF534();
  }

  *&v59[v50[18]] = v85;
  v86 = v145;
  if (v145)
  {

    v87 = v86;
  }

  else
  {
    v184 = 7;
    swift_allocObject();

    v87 = sub_219BEF534();
  }

  *&v59[v50[19]] = v87;
  v88 = v144;
  if (v144)
  {

    v89 = v88;
  }

  else
  {
    v184 = 7;
    swift_allocObject();

    v89 = sub_219BEF534();
  }

  *&v59[v50[20]] = v89;
  v90 = v143;
  if (v143)
  {

    v91 = v90;
  }

  else
  {
    LOBYTE(v184) = 1;
    swift_allocObject();

    v91 = sub_219BEF534();
  }

  *&v59[v50[21]] = v91;
  v92 = v142;
  if (v142)
  {

    v93 = v92;
  }

  else
  {
    v184 = 1;
    swift_allocObject();

    v93 = sub_219BEF534();
  }

  *&v59[v50[22]] = v93;
  v94 = v141;
  if (v141)
  {

    v95 = v94;
  }

  else
  {
    v184 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();

    v95 = sub_219BEF534();
  }

  *&v59[v50[23]] = v95;
  v96 = v140;
  if (v140)
  {

    v97 = v96;
  }

  else
  {
    v184 = 1;
    swift_allocObject();

    v97 = sub_219BEF534();
  }

  *&v59[v50[24]] = v97;
  v98 = v139;
  if (v139)
  {

    v99 = v98;
  }

  else
  {
    v184 = 1;
    swift_allocObject();

    v99 = sub_219BEF534();
  }

  *&v59[v50[25]] = v99;
  v100 = v138;
  if (v138)
  {

    v101 = v100;
    v103 = v163;
    v102 = v164;
    v104 = v165;
  }

  else
  {
    sub_218D554B0(0);
    swift_allocObject();

    v101 = sub_219BEF274();
    sub_218D55534(0);
    swift_allocObject();
    v103 = sub_219BEF274();
    v184 = 0;
    sub_218D556B4(0);
    swift_allocObject();
    v102 = sub_219BEF534();
    LOBYTE(v184) = 1;
    swift_allocObject();
    v59 = v183;
    v104 = sub_219BEF534();
  }

  v105 = &v59[v182[26]];
  *v105 = v101;
  v105[1] = v103;
  v105[2] = v102;
  v105[3] = v104;
  v106 = v179;
  if (v179)
  {
    sub_218D55834(v100);
    v108 = v160;
    v107 = v161;
    v109 = v162;
  }

  else
  {
    sub_218D554B0(0);
    swift_allocObject();
    sub_218D55834(v100);
    v106 = sub_219BEF274();
    sub_218D55534(0);
    swift_allocObject();
    v108 = sub_219BEF274();
    v184 = 0;
    sub_218D556B4(0);
    swift_allocObject();
    v107 = sub_219BEF534();
    LOBYTE(v184) = 1;
    swift_allocObject();
    v59 = v183;
    v109 = sub_219BEF534();
  }

  v110 = &v59[v182[27]];
  *v110 = v106;
  v110[1] = v108;
  v110[2] = v107;
  v110[3] = v109;
  v111 = v178;
  sub_218D55894(v178, v69, sub_218D55324);
  v113 = v176;
  v112 = v177;
  v114 = *(v176 + 48);
  if (v114(v69, 1, v177) == 1)
  {
    sub_218D55834(v179);
    v115 = v170;
    sub_219BEF1C4();
    v116 = v114(v69, 1, v112) == 1;
    v117 = v69;
    v118 = v181;
    v119 = v137;
    v120 = v129;
    if (!v116)
    {
      sub_218D55450(v117, sub_218D55324);
    }
  }

  else
  {
    v115 = v170;
    (*(v113 + 32))(v170, v69, v112);
    sub_218D55834(v179);
    v118 = v181;
    v119 = v137;
    v120 = v129;
  }

  v121 = v182;
  (*(v176 + 32))(&v183[v182[28]], v115, v112);
  if (v158)
  {
    v122 = v158;
  }

  else
  {
    LOBYTE(v184) = 1;
    swift_allocObject();
    v122 = sub_219BEF534();
    v119 = v137;
  }

  v123 = v131;
  *&v183[v121[29]] = v122;
  if (v120)
  {
  }

  else
  {
    v184 = 0;
    swift_allocObject();

    v124 = sub_219BEF534();
    v119 = v137;
    v120 = v124;
  }

  *&v183[v121[30]] = v120;
  if (v123)
  {

    sub_218D558FC(v179, v160, v161, v162);
    sub_218D558FC(v138, v163, v164, v165);

    sub_218D55450(v111, sub_218D55324);
    sub_218D55450(v118, sub_2189AF700);
    sub_218D55450(v180, sub_2189AF720);
    (*(v119 + 8))(v174, v130);
  }

  else
  {
    LOBYTE(v184) = 1;
    swift_allocObject();
    v125 = v119;
    v126 = sub_219BEF534();

    sub_218D558FC(v179, v160, v161, v162);
    sub_218D558FC(v138, v163, v164, v165);

    v123 = v126;

    sub_218D55450(v111, sub_218D55324);
    sub_218D55450(v118, sub_2189AF700);
    sub_218D55450(v180, sub_2189AF720);
    (*(v125 + 8))(v174, v130);
  }

  v127 = v183;
  *&v183[v121[31]] = v123;
  sub_218D5595C(v127, v171);
  return __swift_destroy_boxed_opaque_existential_1(v134);
}