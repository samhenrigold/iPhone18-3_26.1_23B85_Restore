uint64_t sub_218CA86C0()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

void sub_218CA8710(void *a1, uint64_t a2)
{
  v5 = [a1 articleID];
  sub_219BF5414();

  swift_unknownObjectRetain();
  sub_219BE2DE4();
  v6 = *(v2 + 24);
  v7 = [a1 articleID];
  if (!v7)
  {
    sub_219BF5414();
    v7 = sub_219BF53D4();
  }

  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    [v6 insertArticleID:v7 atIndex:a2];
  }
}

uint64_t sub_218CA87FC(uint64_t a1)
{
  sub_21879D924();
  swift_allocObject();
  return sub_219BE30B4();
}

double sub_218CA8880(uint64_t a1)
{

  sub_219BE20C4();

  return result;
}

uint64_t sub_218CA8974()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = v1[7];
  v4 = v1[8];
  __swift_project_boxed_opaque_existential_1(v1 + 4, v3);
  return MEMORY[0x21CEC9610](v2, *MEMORY[0x277D30B50], v3, v4);
}

uint64_t type metadata accessor for ChannelSectionTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E9BB98;
  if (!qword_280E9BB98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218CA8A78@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA8FA8(0, &qword_27CC10A30, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CA8F54();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 3;
    v13 = type metadata accessor for ChannelSectionTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218CA8CE0(void *a1)
{
  v3 = v1;
  sub_218CA8FA8(0, &qword_27CC10A40, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CA8F54();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for ChannelSectionTagFeedGroupConfigData(0);
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218CA8EAC(uint64_t a1)
{
  v2 = sub_218CA8F54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CA8EE8(uint64_t a1)
{
  v2 = sub_218CA8F54();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218CA8F54()
{
  result = qword_27CC10A38;
  if (!qword_27CC10A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10A38);
  }

  return result;
}

void sub_218CA8FA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218CA8F54();
    v7 = a3(a1, &type metadata for ChannelSectionTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218CA9020()
{
  result = qword_27CC10A48;
  if (!qword_27CC10A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10A48);
  }

  return result;
}

unint64_t sub_218CA9078()
{
  result = qword_27CC10A50;
  if (!qword_27CC10A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10A50);
  }

  return result;
}

unint64_t sub_218CA90D0()
{
  result = qword_27CC10A58;
  if (!qword_27CC10A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10A58);
  }

  return result;
}

uint64_t ShortcutCategory.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ShortcutCategory.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShortcutCategory.init(title:identifier:icon:feedNavImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for ShortcutCategory(0);
  sub_218CA92A8(a5, a7 + *(v10 + 24), sub_21873EF74);
  return sub_218CA92A8(a6, a7 + *(v10 + 28), type metadata accessor for ShortcutIcon);
}

uint64_t sub_218CA92A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218CA9314()
{
  v1 = 0x656C746974;
  v2 = 1852793705;
  if (*v0 != 2)
  {
    v2 = 0x4976614E64656566;
  }

  if (*v0)
  {
    v1 = 0x696669746E656469;
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

uint64_t sub_218CA9390@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_218CAA0B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_218CA93B8(uint64_t a1)
{
  v2 = sub_218CA9E0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CA93F4(uint64_t a1)
{
  v2 = sub_218CA9E0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShortcutCategory.encode(to:)(void *a1)
{
  sub_218CA9E60(0, &qword_27CC10A60, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CA9E0C();
  sub_219BF7B44();
  v13 = 0;
  sub_219BF77F4();
  if (!v1)
  {
    v12 = 1;
    sub_219BF77F4();
    type metadata accessor for ShortcutCategory(0);
    v11 = 2;
    type metadata accessor for ShortcutIcon(0);
    sub_218CA9EC4(&qword_27CC10A70, &protocol conformance descriptor for ShortcutIcon);
    sub_219BF77E4();
    v10 = 3;
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

void ShortcutCategory.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = type metadata accessor for ShortcutIcon(0);
  MEMORY[0x28223BE20](v21);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873EF74(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CA9E60(0, &qword_27CC10A78, MEMORY[0x277D844C8]);
  v23 = v8;
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  v11 = type metadata accessor for ShortcutCategory(0);
  MEMORY[0x28223BE20](v11);
  v13 = (v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CA9E0C();
  v22 = v10;
  v14 = v24;
  sub_219BF7B34();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v15 = v20;
    v28 = 0;
    *v13 = sub_219BF76F4();
    v13[1] = v16;
    v24 = v16;
    v27 = 1;
    v13[2] = sub_219BF76F4();
    v13[3] = v17;
    v26 = 2;
    v18[0] = sub_218CA9EC4(&qword_27CC10A80, &protocol conformance descriptor for ShortcutIcon);
    v18[1] = 0;
    sub_219BF76E4();
    sub_218CA92A8(v7, v13 + *(v11 + 24), sub_21873EF74);
    v25 = 3;
    sub_219BF7734();
    (*(v15 + 8))(v22, v23);
    sub_218CA92A8(v4, v13 + *(v11 + 28), type metadata accessor for ShortcutIcon);
    sub_218CA9F08(v13, v19, type metadata accessor for ShortcutCategory);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_218CAA280(v13, type metadata accessor for ShortcutCategory);
  }
}

BOOL _s7NewsUI216ShortcutCategoryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ShortcutIcon(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873EF74(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CAA21C(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_219BF78F4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v22 = type metadata accessor for ShortcutCategory(0);
  v15 = *(v22 + 24);
  v16 = *(v12 + 48);
  sub_218CA9F08(a1 + v15, v14, sub_21873EF74);
  sub_218CA9F08(a2 + v15, &v14[v16], sub_21873EF74);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_218CAA280(v14, sub_21873EF74);
      return _s7NewsUI212ShortcutIconO2eeoiySbAC_ACtFZ_0(a1 + *(v22 + 28), a2 + *(v22 + 28));
    }

    goto LABEL_11;
  }

  sub_218CA9F08(v14, v10, sub_21873EF74);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    sub_218CAA280(v10, type metadata accessor for ShortcutIcon);
LABEL_11:
    sub_218CAA280(v14, sub_218CAA21C);
    return 0;
  }

  sub_218CA92A8(&v14[v16], v7, type metadata accessor for ShortcutIcon);
  v19 = _s7NewsUI212ShortcutIconO2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_218CAA280(v7, type metadata accessor for ShortcutIcon);
  sub_218CAA280(v10, type metadata accessor for ShortcutIcon);
  sub_218CAA280(v14, sub_21873EF74);
  if (v19)
  {
    return _s7NewsUI212ShortcutIconO2eeoiySbAC_ACtFZ_0(a1 + *(v22 + 28), a2 + *(v22 + 28));
  }

  return 0;
}

unint64_t sub_218CA9E0C()
{
  result = qword_27CC10A68;
  if (!qword_27CC10A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10A68);
  }

  return result;
}

void sub_218CA9E60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218CA9E0C();
    v7 = a3(a1, &type metadata for ShortcutCategory.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218CA9EC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShortcutIcon(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218CA9F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_218CA9FAC()
{
  result = qword_27CC10A88;
  if (!qword_27CC10A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10A88);
  }

  return result;
}

unint64_t sub_218CAA004()
{
  result = qword_27CC10A90;
  if (!qword_27CC10A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10A90);
  }

  return result;
}

unint64_t sub_218CAA05C()
{
  result = qword_27CC10A98;
  if (!qword_27CC10A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10A98);
  }

  return result;
}

uint64_t sub_218CAA0B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4976614E64656566 && a2 == 0xEC0000006567616DLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

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

void sub_218CAA21C(uint64_t a1)
{
  if (!qword_27CC10AA0)
  {
    sub_21873EF74(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC10AA0);
    }
  }
}

uint64_t sub_218CAA280(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218CAA334(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t sub_218CAA3C4(uint64_t a1)
{
  v2 = sub_218CABF94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CAA400(uint64_t a1)
{
  v2 = sub_218CABF94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218CAA43C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_218CABFE8(0, &qword_280E8C998, sub_218CABF94, &type metadata for NewspaperTodayFeedGroupConfigData.Channel.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CABF94();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = sub_219BF76F4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t sub_218CAA5EC(void *a1)
{
  sub_218CABFE8(0, &qword_280E8C2F8, sub_218CABF94, &type metadata for NewspaperTodayFeedGroupConfigData.Channel.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CABF94();
  sub_219BF7B44();
  sub_219BF77F4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218CAA754@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v4 = type metadata accessor for NewspaperTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2186DEB60(0, &qword_280E903B0, MEMORY[0x277D339D0]);
  MEMORY[0x28223BE20](v7 - 8);
  v74 = &v39[-v8];
  sub_2186DEB60(0, &unk_280E8FD50, sub_2186DEE0C);
  MEMORY[0x28223BE20](v9 - 8);
  v73 = &v39[-v10];
  sub_2186DEB60(0, &qword_280E90800, MEMORY[0x277D33478]);
  MEMORY[0x28223BE20](v11 - 8);
  v106 = &v39[-v12];
  sub_218CABFE8(0, &qword_280E8C9A0, sub_218CABCDC, &type metadata for NewspaperTodayFeedGroupConfigData.CodingKeys, MEMORY[0x277D844C8]);
  v14 = v13;
  v71 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39[-v15];
  v17 = a1[3];
  v75 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_218CABCDC();
  sub_219BF7B34();
  if (!v2)
  {
    sub_219BF1934();
    v70 = 0;
    LOBYTE(v104) = 0;
    sub_2186DEC5C(&qword_280E90808, MEMORY[0x277D33478], MEMORY[0x277D33488]);
    sub_219BF7674();
    sub_2186DEE0C(0);
    LOBYTE(v104) = 1;
    sub_2186DEC5C(&qword_280E8FD68, sub_2186DEE0C, MEMORY[0x277D345F8]);
    sub_219BF7674();
    LOBYTE(v102) = 2;
    sub_219BF7674();
    v69 = v104;
    v68 = v105;
    LOBYTE(v96) = 5;
    sub_219BF7674();
    v67 = v102;
    v66 = v103;
    sub_219BF26F4();
    LOBYTE(v96) = 6;
    sub_2186DEC5C(&qword_280E903B8, MEMORY[0x277D339D0], MEMORY[0x277D339E0]);
    sub_219BF7674();
    LOBYTE(v96) = 7;
    sub_219BF7674();
    v65 = v101;
    LOBYTE(v96) = 8;
    sub_219BF7674();
    v64 = v100;
    v52 = MEMORY[0x277D83940];
    sub_2186DF080(0, &unk_280E8F000, &type metadata for NewspaperTodayFeedGroupConfigData.Channel, MEMORY[0x277D83940]);
    LOBYTE(v96) = 3;
    v50 = MEMORY[0x277D83978];
    sub_218CABEB0(&qword_280E8EFE8, sub_218CABD30, MEMORY[0x277D83978]);
    sub_219BF7674();
    v62 = v99;
    LOBYTE(v96) = 4;
    sub_219BF7674();
    v59 = v98;
    LOBYTE(v94) = 9;
    sub_219BF7674();
    v63 = v96;
    v61 = v97;
    LOBYTE(v92) = 10;
    sub_219BF7674();
    v60 = v94;
    v58 = v95;
    LOBYTE(v90) = 11;
    sub_219BF7674();
    v57 = v92;
    v56 = v93;
    LOBYTE(v88) = 12;
    sub_219BF7674();
    v55 = v90;
    v54 = v91;
    LOBYTE(v86) = 13;
    sub_219BF7674();
    v53 = v88;
    v51 = v89;
    LOBYTE(v84) = 14;
    sub_219BF7674();
    v49 = v86;
    v48 = v87;
    LOBYTE(v82) = 15;
    sub_219BF7674();
    v47 = v84;
    v46 = v85;
    LOBYTE(v80) = 16;
    sub_219BF7674();
    v45 = v82;
    v44 = v83;
    LOBYTE(v78) = 17;
    sub_219BF7674();
    v43 = v80;
    v42 = v81;
    LOBYTE(v77) = 18;
    sub_219BF7674();
    v41 = v78;
    v40 = v79;
    sub_2186DF080(0, &qword_280E8EE20, MEMORY[0x277D837D0], v52);
    v76 = 19;
    sub_218753210(&qword_280E8EDD0, MEMORY[0x277D83808], v50);
    sub_219BF7674();
    v52 = v77;
    v50 = MEMORY[0x277D33478];
    sub_218CABD84(v106, v6, &qword_280E90800, MEMORY[0x277D33478]);
    v18 = v73;
    sub_218CABD84(v73, &v6[v4[5]], &unk_280E8FD50, sub_2186DEE0C);
    v19 = &v6[v4[6]];
    v20 = v68;
    *v19 = v69;
    v19[1] = v20;
    v21 = &v6[v4[9]];
    v22 = v66;
    *v21 = v67;
    v21[1] = v22;
    v23 = MEMORY[0x277D339D0];
    v24 = v74;
    sub_218CABD84(v74, &v6[v4[10]], &qword_280E903B0, MEMORY[0x277D339D0]);
    v6[v4[11]] = v65 & 1;
    v6[v4[12]] = v64 & 1;
    v25 = MEMORY[0x277D84F90];
    v26 = v62;
    if (!v62)
    {
      v26 = MEMORY[0x277D84F90];
    }

    *&v6[v4[7]] = v26;
    if (v59)
    {
      v27 = v59;
    }

    else
    {
      v27 = v25;
    }

    sub_218CABDF0(v24, &qword_280E903B0, v23);
    sub_218CABDF0(v18, &unk_280E8FD50, sub_2186DEE0C);
    sub_218CABDF0(v106, &qword_280E90800, v50);
    (*(v71 + 8))(v16, v14);
    *&v6[v4[8]] = v27;
    v28 = 2;
    if (!v61)
    {
      v28 = v63;
    }

    *&v6[v4[13]] = v28;
    v29 = 5;
    if (!v58)
    {
      v29 = v60;
    }

    *&v6[v4[14]] = v29;
    v30 = v57;
    if (v56)
    {
      v30 = 1;
    }

    *&v6[v4[15]] = v30;
    v31 = v55;
    if (v54)
    {
      v31 = 1;
    }

    *&v6[v4[16]] = v31;
    v32 = 3;
    if (!v51)
    {
      v32 = v53;
    }

    *&v6[v4[17]] = v32;
    v33 = 4;
    if (!v48)
    {
      v33 = v49;
    }

    *&v6[v4[18]] = v33;
    v34 = &v6[v4[19]];
    *v34 = v47;
    v34[8] = v46;
    v35 = &v6[v4[20]];
    *v35 = v45;
    v35[8] = v44;
    v36 = &v6[v4[21]];
    *v36 = v43;
    v36[8] = v42;
    v37 = &v6[v4[22]];
    *v37 = v41;
    v37[8] = v40;
    *&v6[v4[23]] = v52;
    sub_218CABE4C(v6, v72);
  }

  return __swift_destroy_boxed_opaque_existential_1(v75);
}

unint64_t sub_218CAB348(char a1)
{
  result = 0x746E65746E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x65707974627573;
      break;
    case 3:
      result = 0x736C656E6E616863;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x62755370756F7267;
      break;
    case 6:
    case 13:
    case 14:
      result = 0xD000000000000013;
      break;
    case 7:
    case 19:
      result = 0xD00000000000001BLL;
      break;
    case 8:
      result = 0xD00000000000001FLL;
      break;
    case 9:
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
    case 12:
      result = 0xD000000000000017;
      break;
    case 15:
      result = 0xD000000000000024;
      break;
    case 16:
      result = 0xD000000000000024;
      break;
    case 17:
      result = 0xD000000000000024;
      break;
    case 18:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_218CAB548(void *a1)
{
  v3 = v1;
  sub_218CABFE8(0, &qword_280E8C300, sub_218CABCDC, &type metadata for NewspaperTodayFeedGroupConfigData.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CABCDC();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_219BF1934();
  sub_2186DEC5C(&qword_280E90810, MEMORY[0x277D33478], MEMORY[0x277D33480]);
  sub_219BF77E4();
  if (!v2)
  {
    v10 = type metadata accessor for NewspaperTodayFeedGroupConfigData(0);
    LOBYTE(v14) = 1;
    sub_2186DEE0C(0);
    sub_2186DEC5C(&qword_280E8FD70, sub_2186DEE0C, MEMORY[0x277D345F0]);
    sub_219BF77E4();
    LOBYTE(v14) = 2;
    sub_219BF7794();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186DF080(0, &unk_280E8F000, &type metadata for NewspaperTodayFeedGroupConfigData.Channel, MEMORY[0x277D83940]);
    sub_218CABEB0(&unk_280E8EFF0, sub_218CABF40, MEMORY[0x277D83948]);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_219BF7834();
    LOBYTE(v14) = 5;
    sub_219BF7794();
    LOBYTE(v14) = 6;
    sub_219BF26F4();
    sub_2186DEC5C(&unk_280E903C0, MEMORY[0x277D339D0], MEMORY[0x277D339D8]);
    sub_219BF77E4();
    LOBYTE(v14) = 7;
    sub_219BF7804();
    LOBYTE(v14) = 8;
    sub_219BF7804();
    LOBYTE(v14) = 9;
    sub_219BF7824();
    LOBYTE(v14) = 10;
    sub_219BF7824();
    LOBYTE(v14) = 11;
    sub_219BF7824();
    LOBYTE(v14) = 12;
    sub_219BF7824();
    LOBYTE(v14) = 13;
    sub_219BF7824();
    LOBYTE(v14) = 14;
    sub_219BF7824();
    LOBYTE(v14) = 15;
    sub_219BF77C4();
    LOBYTE(v14) = 16;
    sub_219BF77C4();
    LOBYTE(v14) = 17;
    sub_219BF77C4();
    LOBYTE(v14) = 18;
    sub_219BF77C4();
    v14 = *(v3 + v10[23]);
    v13 = 19;
    sub_2186DF080(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_218753210(&unk_280E8EE00, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218CABC00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_218CAC3C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_218CABC34(uint64_t a1)
{
  v2 = sub_218CABCDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CABC70(uint64_t a1)
{
  v2 = sub_218CABCDC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218CABCDC()
{
  result = qword_280EA2E60[0];
  if (!qword_280EA2E60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA2E60);
  }

  return result;
}

unint64_t sub_218CABD30()
{
  result = qword_280EA2E28;
  if (!qword_280EA2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA2E28);
  }

  return result;
}

uint64_t sub_218CABD84(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186DEB60(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218CABDF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186DEB60(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218CABE4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewspaperTodayFeedGroupConfigData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218CABEB0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_2186DF080(255, &unk_280E8F000, &type metadata for NewspaperTodayFeedGroupConfigData.Channel, MEMORY[0x277D83940]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218CABF40()
{
  result = qword_280EA2E30;
  if (!qword_280EA2E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA2E30);
  }

  return result;
}

unint64_t sub_218CABF94()
{
  result = qword_280EA2E48;
  if (!qword_280EA2E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA2E48);
  }

  return result;
}

void sub_218CABFE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for NewspaperTodayFeedGroupConfigData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NewspaperTodayFeedGroupConfigData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_218CAC1B4()
{
  result = qword_27CC10AA8;
  if (!qword_27CC10AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10AA8);
  }

  return result;
}

unint64_t sub_218CAC20C()
{
  result = qword_27CC10AB0;
  if (!qword_27CC10AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10AB0);
  }

  return result;
}

unint64_t sub_218CAC264()
{
  result = qword_280EA2E38;
  if (!qword_280EA2E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA2E38);
  }

  return result;
}

unint64_t sub_218CAC2BC()
{
  result = qword_280EA2E40;
  if (!qword_280EA2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA2E40);
  }

  return result;
}

unint64_t sub_218CAC314()
{
  result = qword_280EA2E50;
  if (!qword_280EA2E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA2E50);
  }

  return result;
}

unint64_t sub_218CAC36C()
{
  result = qword_280EA2E58;
  if (!qword_280EA2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA2E58);
  }

  return result;
}

uint64_t sub_218CAC3C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CD7EE0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65707974627573 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736C656E6E616863 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CF0830 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x62755370756F7267 && a2 == 0xED0000656C746974 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CF0850 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD9420 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000219CF0870 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000219CF0890 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000219CF08B0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF08D0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF08F0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CF0910 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CF0930 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000219CF0950 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000219CF0980 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000219CF09B0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000219CF09E0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD7220 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

double sub_218CACA24()
{
  sub_21896FA3C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v27 - v6;
  v8 = *(v0 + 72);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = *(v0 + 80);
  v29 = *(v0 + 96);
  *(v9 + 24) = v29;
  v28 = v10;
  *(v9 + 40) = v10;
  v40 = v9;
  v11 = v9 | 0x8000000000000006;
  v12 = sub_219BDFA44();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v35 = v8;
  sub_2187B14CC(v36, &v31, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v32 + 1))
  {
    sub_21875F93C(&v31, v33);
    v13 = qword_280ED32D0;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain_n();
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = qword_280ED32D8;
    v14 = qword_280ED32E0;
    v16 = qword_280ED32E8;

    sub_2188202A8(v14);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    swift_unknownObjectRetain_n();
    swift_unknownObjectRetain_n();
    sub_2187448D0(&v31, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v15 = qword_280ED32D8;
    v14 = qword_280ED32E0;
    v16 = qword_280ED32E8;

    sub_2188202A8(v14);
  }

  v30 = v11;
  v32 = 0u;
  v31 = 0u;
  sub_2189B4E2C(v7, v4);
  sub_2187B14CC(v38, v33, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v17 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v18 = (v3 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27[0] = v7;
  v19 = (v18 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  sub_2189B4EAC(v4, v20 + v17);
  v21 = v20 + v18;
  v22 = v33[1];
  *v21 = v33[0];
  *(v21 + 16) = v22;
  *(v21 + 32) = v34;
  v23 = (v20 + v19);
  v24 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v23 = 0;
  v23[1] = 0;
  *v24 = v15;
  v24[1] = v14;
  v24[2] = v16;

  sub_2188202A8(v14);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  v25 = v27[1];
  sub_219BEB464();

  if (v25)
  {
    sub_2187448D0(&v31, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
    sub_2186F8278(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE2FF4();

    sub_2187FABEC(v14, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_2187448D0(v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(v38, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218A42D80(v27[0]);
  }

  else
  {

    sub_2187FABEC(v14, v16);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_2187448D0(v36, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    sub_2187448D0(v38, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
    sub_218A42D80(v27[0]);
    sub_2187448D0(&v31, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  }

  return result;
}

uint64_t sub_218CAD090()
{
  MEMORY[0x21CECFA80](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_218CAD138(uint64_t *a1)
{
  v2 = v1;
  sub_21875FAFC(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = a1[2];
  sub_219B5F1FC(*a1, a1[1], v7, 5);
  if (v7 && *(v7 + 16))
  {
    v8 = sub_219BF5BF4();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    sub_219BF5BD4();

    v9 = v2;
    v10 = sub_219BF5BC4();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    v11[5] = v7;
    sub_218AB3D80(0, 0, v6, &unk_219C2B3E0, v11);
  }

  else
  {
    v13 = *&v2[OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_recipeFilterSelectionManager + 8];
    ObjectType = swift_getObjectType();
    (*(*(v13 + 8) + 48))(ObjectType);
  }
}

id sub_218CAD360()
{
  ObjectType = swift_getObjectType();
  v2 = *(*&v0[OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_recipeFilterSelectionManager] + 24);
  swift_unknownObjectRetain();
  v3 = v0;
  os_unfair_lock_lock(v2 + 6);
  sub_2189B0840(&v2[4]);
  os_unfair_lock_unlock(v2 + 6);
  swift_unknownObjectRelease();

  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_218CAD540()
{
  v31.receiver = v0;
  v31.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v31, sel_viewDidLoad);
  v1 = [v0 traitCollection];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v2;

  v4 = [objc_opt_self() systemBackgroundColor];
  [v3 setBackgroundColor_];

  sub_21875FAFC(0, &qword_280E8BD50, sub_2187C4338, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C0B8C0;
  v6 = sub_219BEBA34();
  v7 = MEMORY[0x277D74C50];
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  v8 = sub_219BEB874();
  v9 = MEMORY[0x277D74BB8];
  *(v5 + 48) = v8;
  *(v5 + 56) = v9;
  v10 = sub_219BEB8B4();
  v11 = MEMORY[0x277D74BF0];
  *(v5 + 64) = v10;
  *(v5 + 72) = v11;
  sub_219BF6604();
  swift_unknownObjectRelease();

  v12 = *&v0[OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_searchHomeContainerController];
  [v0 addChildViewController_];
  v13 = [v0 view];
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = v13;
  v15 = [v12 view];
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v16 = v15;
  [v14 addSubview_];

  [v12 didMoveToParentViewController_];
  v17 = [v12 view];
  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v18 = v17;
  v19 = [v0 view];
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v20 = v19;
  [v19 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v18 setFrame_];
  v29 = [v12 view];
  if (v29)
  {
    v30 = v29;
    [v29 setAutoresizingMask_];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_218CAD9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  sub_219BF5BD4();
  v5[11] = sub_219BF5BC4();
  v7 = sub_219BF5B44();
  v5[12] = v7;
  v5[13] = v6;

  return MEMORY[0x2822009F8](sub_218CADA58, v7, v6);
}

uint64_t sub_218CADA88()
{
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_218CADB28;
  v2 = *(v0 + 80);

  return sub_218CAF99C(v2);
}

uint64_t sub_218CADB28(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 128) = a1;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);

  return MEMORY[0x2822009F8](sub_218CADC50, v4, v3);
}

uint64_t sub_218CADC50()
{
  v7 = v0;
  v1 = *(v0 + 128);

  sub_218CAE0A0();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v3 = sub_218C3D608(v1);

  *(inited + 32) = 0x6E6569736E617274;
  *(inited + 40) = 0xE900000000000074;
  *(inited + 48) = v3;
  RecipeFilterSelection.init(sections:)(inited);
  sub_2189AFEE4(&v6);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_218CADDC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_recipeFilterSelectionManager + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 8) + 8))(ObjectType);
}

uint64_t sub_218CADE0C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_recipeFilterSelectionManager + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 8) + 16))(ObjectType) & 1;
}

uint64_t sub_218CADE5C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_recipeFilterSelectionManager + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v5 + 8) + 24))(a1, a2, ObjectType);
}

uint64_t sub_218CADEC4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_recipeFilterSelectionManager + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v5 + 8) + 32))(a1, a2, ObjectType);
}

uint64_t sub_218CADF2C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_recipeFilterSelectionManager + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v5 + 8) + 40))(a1, a2, ObjectType);
}

uint64_t sub_218CADF94()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_recipeFilterSelectionManager + 8);
  ObjectType = swift_getObjectType();
  return (*(*(v1 + 8) + 48))(ObjectType);
}

uint64_t sub_218CADFE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187608D4;

  return sub_218CAD9C0(a1, v4, v5, v7, v6);
}

void sub_218CAE0A0()
{
  if (!qword_27CC1A8B0)
  {
    v0 = sub_219BF78A4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1A8B0);
    }
  }
}

void sub_218CAE0F0(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [a1 view];
  if (v3)
  {
    v4 = v3;

    v5 = [objc_opt_self() systemBackgroundColor];
    [v4 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218CAE21C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for RecipeCatalogSearchModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &off_282A411E0;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218CAE2CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F10, &protocol descriptor for SearchServiceType, 1);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for RecipeCatalogSearchFilterResultsProvider();
    v2 = swift_allocObject();
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(&v3, v2 + 32);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218CAE37C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for RecipeFilterSelectionManager();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_218CAF8A4(0);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F90];
  *(v2 + 24) = result;
  *a1 = v2;
  a1[1] = &off_282A2FD80;
  return result;
}

double sub_218CAE3EC()
{
  type metadata accessor for RecipeCatalogSearchViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC10AE0, &protocol descriptor for RecipeCatalogSearchStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC10AE8, &protocol descriptor for RecipeCatalogSearchRouterType, 1);
  sub_219BE2914();
  type metadata accessor for RecipeCatalogSearchRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC10AF0, &protocol descriptor for RecipeCatalogSearchEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC10AF8, &protocol descriptor for RecipeCatalogSearchInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC10B00, &protocol descriptor for RecipeCatalogSearchTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC10B08, &protocol descriptor for RecipeCatalogSearchDataManagerType, 0);
  sub_219BE2914();

  return result;
}

void sub_218CAE638(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA5230, &protocol descriptor for RecipeFilterSelectionManagerType, 0);
  sub_219BE1DF4();
  v2 = v17[0];
  if (!v17[0])
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v17[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECD260, &protocol descriptor for SearchHomeModuleType, 1);
  v4 = swift_allocObject();
  *(v4 + 16) = v17[0];
  *(v4 + 24) = v3;
  swift_unknownObjectRetain();
  sub_219BE1E14();

  if (!v16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_2186CB1F0(&v15, v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC10AE0, &protocol descriptor for RecipeCatalogSearchStylerType, 1);
  sub_219BE1E34();
  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC10AF0, &protocol descriptor for RecipeCatalogSearchEventHandlerType, 0);
  sub_219BE1E34();
  v5 = v14[0];
  if (v14[0])
  {
    v6 = v14[1];
    __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    sub_2189EEC54();
    v8 = v7;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(&v15, v16);
    v10 = MEMORY[0x28223BE20](v9);
    v12 = (v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    sub_218CAF63C(*v12, v5, v6, v8, v2, v3);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&v15);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_218CAE92C(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC04E8, &protocol descriptor for SearchFilterProviderType, 0);
  return sub_219BE1BA4();
}

void *sub_218CAE9F0@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v11 = sub_218725FE8();
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for RecipeCatalogSearchStyler();
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
    a2[4] = &off_282A411F8;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218CAEC20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v12);
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
  sub_2186CF94C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA5230, &protocol descriptor for RecipeFilterSelectionManagerType, 0);
  result = sub_219BE1DF4();
  if (!v10)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeCatalogSearchFilterResultsProvider();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = type metadata accessor for RecipeCatalogSearchRouter();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    result = sub_2186CB1F0(v12, (v9 + 3));
    v9[8] = v5;
    v9[9] = v6;
    v9[10] = v10;
    v9[11] = v11;
    v9[12] = v7;
    v9[13] = &off_282A8E5D8;
    a2[3] = v8;
    a2[4] = &off_282A410A0;
    *a2 = v9;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_218CAEDE0(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for RecipeCatalogSearchViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_218CAEE60@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC10AF8, &protocol descriptor for RecipeCatalogSearchInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC10AE8, &protocol descriptor for RecipeCatalogSearchRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC10B00, &protocol descriptor for RecipeCatalogSearchTrackerType, 1);
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
    v17 = sub_218CAF3D8(v5, v6, *v10, *v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A41110;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218CAF108@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC10B08, &protocol descriptor for RecipeCatalogSearchDataManagerType, 0);
  result = sub_219BE1E34();
  if (v5)
  {
    type metadata accessor for RecipeCatalogSearchInteractor();
    v4 = swift_allocObject();
    v4[3] = 0;
    swift_unknownObjectWeakInit();
    v4[4] = v5;
    v4[5] = v6;
    *(v5 + 112) = &off_282A41230;
    result = swift_unknownObjectWeakAssign();
    *a2 = v4;
    a2[1] = &off_282A41240;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218CAF1D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for RecipeCatalogSearchTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A411F0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218CAF260@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F10, &protocol descriptor for SearchServiceType, 1);
  result = sub_219BE1E34();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620, MEMORY[0x277D33550], 1);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for RecipeCatalogSearchFilterResultsProvider();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    type metadata accessor for RecipeCatalogSearchDataManager();
    v6 = swift_allocObject();
    *(v6 + 112) = 0;
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(&v9, v6 + 16);
    sub_2186CB1F0(&v7, v6 + 64);
    *(v6 + 56) = v5;
    v5[3] = &off_282A41268;
    result = swift_unknownObjectWeakAssign();
    *a2 = v6;
    a2[1] = &off_282A41278;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218CAF3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for RecipeCatalogSearchRouter();
  v34[3] = v9;
  v34[4] = &off_282A410A0;
  v34[0] = a3;
  v32 = v8;
  v33 = &off_282A411F0;
  v31[0] = a4;
  type metadata accessor for RecipeCatalogSearchEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v29 = v9;
  v30 = &off_282A410A0;
  v27 = &off_282A411F0;
  *&v28 = v21;
  v26 = v8;
  *&v25 = v22;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_2186CB1F0(&v28, (v10 + 6));
  sub_2186CB1F0(&v25, (v10 + 11));
  *(a1 + 24) = &off_282A41100;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v10;
}

char *sub_218CAF63C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for RecipeCatalogSearchStyler();
  v36[3] = v12;
  v36[4] = &off_282A411F8;
  v36[0] = a1;
  v13 = type metadata accessor for RecipeCatalogSearchViewController();
  v14 = objc_allocWithZone(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v36, v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v28[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v19 + 16))(v18, v16);
  v20 = *v18;
  v35[3] = v12;
  v35[4] = &off_282A411F8;
  v35[0] = v20;
  *&v14[OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  sub_218718690(v35, &v14[OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_styler]);
  v21 = &v14[OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_eventHandler];
  *v21 = a2;
  *(v21 + 1) = a3;
  *&v14[OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_searchHomeContainerController] = a4;
  v22 = &v14[OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_recipeFilterSelectionManager];
  *v22 = a5;
  *(v22 + 1) = a6;
  a4[OBJC_IVAR____TtC7NewsUI229SearchHomeContainerController_shouldUpdateWindowTitle] = 0;
  v34.receiver = v14;
  v34.super_class = v13;
  swift_unknownObjectRetain();
  v23 = a4;
  swift_unknownObjectRetain();
  v24 = objc_msgSendSuper2(&v34, sel_initWithNibName_bundle_, 0, 0);
  *(*&v24[OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_eventHandler] + 24) = &off_282A41188;
  swift_unknownObjectWeakAssign();
  v32 = v24;
  v33 = &off_282A41198;
  v25 = *(a5 + 24);
  v29 = sub_218CAF89C;
  v30 = &v31;
  v26 = v24;
  os_unfair_lock_lock(v25 + 6);
  sub_2189B0840(&v25[4]);
  os_unfair_lock_unlock(v25 + 6);

  __swift_destroy_boxed_opaque_existential_1(v35);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v26;
}

void sub_218CAF8A4(uint64_t a1)
{
  if (!qword_27CC22C60)
  {
    sub_218CAF90C(255);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_219BF73A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC22C60);
    }
  }
}

void sub_218CAF90C(uint64_t a1)
{
  if (!qword_27CC10B10)
  {
    sub_2186C709C(255, &unk_27CC0F2C0, &protocol descriptor for RecipeFilterSelectionObserverProxyType, 0);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC10B10);
    }
  }
}

uint64_t sub_218CAF99C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for SearchFilterItem(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218CAFA5C, 0, 0);
}

uint64_t sub_218CAFA5C()
{
  __swift_project_boxed_opaque_existential_1((v0[4] + 64), *(v0[4] + 88));
  v0[8] = sub_219BF1C34();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_218CAFB30;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_218CAFB30()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_218CAFED4;
  }

  else
  {

    v2 = sub_218CAFC4C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_218CAFC4C()
{
  v1 = v0;
  v2 = v0[2];
  if (v2 >> 62)
  {
    v25 = v0[2];
    v3 = sub_219BF7214();
    v2 = v25;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:

    v8 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = v2;
  v33 = MEMORY[0x277D84F90];
  result = sub_218C352E0(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = v4;
  v28 = v4 & 0xC000000000000001;
  v29 = v1[7];
  v27 = v1[6];
  v8 = v33;
  v30 = v3;
  v31 = v4;
  do
  {
    v32 = v8;
    if (v28)
    {
      v9 = MEMORY[0x21CECE0F0](v6, v7);
    }

    else
    {
      v9 = *(v7 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    v10 = v1[7];
    swift_getObjectType();
    v11 = sub_219BF6274();
    v12 = &selRef_displayName;
    if ((v11 & 1) == 0)
    {
      v12 = &selRef_compactDisplayName;
    }

    v13 = [v9 *v12];
    v14 = sub_219BF5414();
    v16 = v15;

    v17 = sub_219BF6274();
    v18 = [v9 identifier];
    v19 = sub_219BF5414();
    v21 = v20;

    sub_219BDBCB4();
    swift_unknownObjectRelease();
    *(v29 + 16) = v19;
    *(v29 + 24) = v21;
    *(v29 + 32) = v17 & 1;
    *v10 = v14;
    *(v29 + 8) = v16;
    v8 = v32;
    v23 = *(v32 + 16);
    v22 = *(v32 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_218C352E0((v22 > 1), v23 + 1, 1);
      v8 = v32;
    }

    v24 = v1[7];
    ++v6;
    *(v8 + 16) = v23 + 1;
    sub_218CAFFC4(v24, v8 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23);
    v7 = v31;
  }

  while (v30 != v6);

LABEL_16:

  v26 = v1[1];

  return v26(v8);
}

uint64_t sub_218CAFED4()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);
  v3 = MEMORY[0x277D84F90];

  return v2(v3);
}

uint64_t sub_218CAFF50()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  sub_218774F78(v0 + 104);

  return swift_deallocClassInstance();
}

uint64_t sub_218CAFFC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFilterItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_218CB0028(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEEBB4();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    v3 = type metadata accessor for DiagnosticFileProvider();
    v4 = objc_allocWithZone(v3);
    v5 = OBJC_IVAR____TtC7NewsUI222DiagnosticFileProvider_feedCursorExportContexts;
    *&v4[v5] = sub_2194AFD8C(MEMORY[0x277D84F90]);
    *&v4[OBJC_IVAR____TtC7NewsUI222DiagnosticFileProvider_feedDatabaseExporter] = v2;
    v6.receiver = v4;
    v6.super_class = v3;
    return objc_msgSendSuper2(&v6, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218CB00D4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for DiagnosticFileProvider();
  v2 = sub_219BE1E24();
  if (v2)
  {
    sub_218CB0164();
    sub_219BE2AE4();
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_218CB0164()
{
  result = qword_27CC10B18;
  if (!qword_27CC10B18)
  {
    type metadata accessor for DiagnosticFileProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10B18);
  }

  return result;
}

uint64_t sub_218CB01C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_218CB0210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218CB0270(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v4 = v3;
  v34 = a3;
  v35 = a2;
  v33 = sub_219BE6DF4();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CB113C(0, &qword_280EE4B10, MEMORY[0x277D6DF88]);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  sub_218C249EC(0);
  MEMORY[0x28223BE20](v10 - 8);
  sub_218CB113C(0, &qword_280EE3668, MEMORY[0x277D6EC60]);
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v37 = v4;
  v32 = a1;
  v14 = sub_218F8CA54(sub_218CB1230, v36);
  sub_218953D48(0);
  v16 = v15;
  v17 = sub_2186E8A2C(&qword_280EE57A0, sub_218953D48, MEMORY[0x277D6D720]);
  v18 = sub_2186E8A2C(&unk_280EE57B0, sub_218953D48, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9170](v14, v16, v17, v18);
  type metadata accessor for SavedFeedSectionDescriptor(0);
  type metadata accessor for SavedFeedModel(0);
  sub_2186E8A2C(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor, &unk_219C85ADC);
  sub_2186E8A2C(&unk_280EDBC60, type metadata accessor for SavedFeedModel, &unk_219C73440);
  sub_219BEB2D4();
  type metadata accessor for SavedFeedServiceConfig(0);
  sub_2186E8A2C(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig, &unk_219CAA790);
  sub_219BEF3D4();
  sub_219BEEFF4();
  sub_219BEEFE4();
  v19 = sub_219BEEFC4();

  v20 = 0;
  if (v19)
  {
    v20 = sub_219BEDC74();
  }

  else
  {
    v39 = 0;
    v40 = 0;
  }

  v38 = v19;
  v41 = v20;
  v21 = v27;
  sub_219BEB2C4();

  v23 = v30;
  v22 = v31;
  v24 = v33;
  (*(v31 + 104))(v30, *MEMORY[0x277D6D868], v33);
  sub_2186E8A2C(&unk_280EBA590, type metadata accessor for SavedFeedSectionDescriptor, &unk_219C85AB4);
  sub_219BE85E4();
  (*(v22 + 8))(v23, v24);
  v35(v9);
  (*(v28 + 8))(v9, v29);
  return (*(v26 + 8))(v13, v21);
}

double sub_218CB07A8@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v5 = type metadata accessor for SavedFeedGapLocation(0);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_219BF0BD4();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SavedFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ArticleListSavedFeedGroup(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for SavedFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953D48(0);
  v48 = v22;
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_218CB12E8(v21, v18);
    v45 = a2[2];
    v28 = sub_2196883F4(v45);
    v29 = *(v18 + 1);
    v44 = *v18;
    v30 = *(v13 + 20);
    v31 = sub_219BED8D4();
    (*(*(v31 - 8) + 16))(&v15[v30], &v18[v30], v31);
    v50 = *&v18[*(v13 + 24)];

    sub_2191ED6C8(v28);
    v32 = v50;
    *v15 = v44;
    *(v15 + 1) = v29;
    *&v15[*(v13 + 24)] = v32;
    __swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
    sub_218CB134C(v15, v12);
    type metadata accessor for SavedFeedServiceConfig(0);
    sub_2186E8A2C(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig, &unk_219CAA790);
    sub_219BEF3D4();
    sub_219BEE7A4();

    v33 = v49;
    sub_219B52314(v12, v9, v49);
    (*(v46 + 8))(v9, v47);
    sub_218CB13B0(v12, type metadata accessor for SavedFeedGroup);
    sub_218CB13B0(v15, type metadata accessor for ArticleListSavedFeedGroup);
    sub_218CB13B0(v18, type metadata accessor for ArticleListSavedFeedGroup);
    (*(*(v48 - 8) + 56))(v33, 0, 1);
    return result;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_218CB13B0(v21, type metadata accessor for SavedFeedSectionDescriptor);
    v25 = v48;
    v24 = v49;
    v26 = *(v48 - 8);
    (*(v26 + 16))(v49, a1, v48);
    (*(v26 + 56))(v24, 0, 1, v25);
    return result;
  }

  type metadata accessor for SavedFeedServiceConfig(0);
  sub_2186E8A2C(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig, &unk_219CAA790);
  sub_219BEF3D4();
  if (sub_219BEF394())
  {
    if ((sub_219BEE854() & 1) == 0)
    {
      (*(*(v48 - 8) + 56))(v49, 1, 1);

      return result;
    }

    v34 = swift_allocObject();
    sub_218CB124C(0, &qword_280E91AE8, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v34 + 16) = sub_219BEE874();
    v35 = v45;
    *v45 = v34;
    v36 = MEMORY[0x277D33068];
  }

  else
  {
    v37 = swift_allocObject();
    sub_218CB124C(0, &qword_280E91AE8, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v37 + 16) = sub_219BEE874();
    v35 = v45;
    *v45 = v37;
    v36 = MEMORY[0x277D33090];
  }

  v38 = *v36;
  sub_218CB124C(0, &qword_280E90A10, MEMORY[0x277D33098]);
  v40 = v39;
  v41 = *(v39 - 8);
  (*(v41 + 104))(v35, v38, v39);
  (*(v41 + 56))(v35, 0, 1, v40);
  v42 = v49;
  sub_21991D760(v35, v49);

  sub_218CB13B0(v35, type metadata accessor for SavedFeedGapLocation);
  (*(*(v48 - 8) + 56))(v42, 0, 1);
  return result;
}

uint64_t sub_218CB0EF8()
{
  sub_218B7F184(0);
  v0 = sub_219BE81C4();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE38], v0);
  v4 = sub_218847E58(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_218CB1018(uint64_t a1)
{
  v2 = sub_218CB1410();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_218CB1058()
{
  result = qword_280EA4FB8;
  if (!qword_280EA4FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4FB8);
  }

  return result;
}

void sub_218CB113C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SavedFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for SavedFeedModel(255);
    v8[2] = sub_2186E8A2C(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor, &unk_219C85ADC);
    v8[3] = sub_2186E8A2C(&unk_280EDBC60, type metadata accessor for SavedFeedModel, &unk_219C73440);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218CB124C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SavedFeedServiceConfig(255);
    v7 = sub_2186E8A2C(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig, &unk_219CAA790);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218CB12E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListSavedFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218CB134C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListSavedFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218CB13B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218CB1410()
{
  result = qword_280EA4FC0;
  if (!qword_280EA4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4FC0);
  }

  return result;
}

uint64_t sub_218CB1464(uint64_t a1)
{
  v2 = sub_219BDB954();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x28223BE20](v2);
  v47 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = v46 - v5;
  v52 = sub_219BE22B4();
  v6 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE22F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v46 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v46 - v17;
  sub_218CB31A4(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v20 = v19;
  v48 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  v21 = *(v10 + 8);
  v21(v18, v9);
  v22 = sub_219BE22C4();
  v24 = v23;
  (*(v6 + 8))(v8, v52);
  if (!v24)
  {
    v52 = v12;
    v46[1] = v20;
    sub_219BE2594();
    v25 = v49;
    sub_219BE22A4();
    v21(v15, v9);
    v26 = sub_219BDB8F4();
    v28 = v27;
    v29 = *(v50 + 8);
    v30 = v25;
    v31 = v51;
    v29(v30, v51);
    if (v26 == 0xD000000000000012 && 0x8000000219CD8D60 == v28)
    {

LABEL_7:
      sub_218CB2068();
      return 1;
    }

    v32 = sub_219BF78F4();

    if (v32)
    {
      goto LABEL_7;
    }

    v34 = v52;
    sub_219BE2594();
    v35 = v47;
    sub_219BE22A4();
    v21(v34, v9);
    v36 = sub_219BDB8F4();
    v38 = v37;
    v29(v35, v31);
    if (v36 == 0xD000000000000012 && 0x8000000219CD8D80 == v38)
    {

      v39 = v53;
    }

    else
    {
      v40 = sub_219BF78F4();

      v39 = v53;
      if ((v40 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v41 = v39[8];
    v42 = v39[9];
    __swift_project_boxed_opaque_existential_1(v39 + 5, v41);
    EmailSignupModelFactoryType.model(from:)(v39[4], v41, v42);
    v43 = v54;

    if (v43)
    {
      v44 = v39[13];
      v45 = v39[14];
      __swift_project_boxed_opaque_existential_1(v39 + 10, v44);
      (*(v45 + 16))(v44, v45);
      return 1;
    }

LABEL_15:
    sub_218CB2750();
    return 1;
  }

  sub_218CB1968(v22, v24);

  return 1;
}

double sub_218CB1968(uint64_t a1, uint64_t a2)
{
  sub_218CB31A4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = *(v2 + 24);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = v13 | 0xE000000000000000;
  v15 = sub_219BDFA44();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = v12;
  sub_2187B17A0(v37, &v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  if (*(&v33 + 1))
  {
    sub_21875F93C(&v32, v34);
    v16 = qword_280ED32D0;

    if (v16 != -1)
    {
      swift_once();
    }

    v18 = qword_280ED32D8;
    v17 = qword_280ED32E0;
    v19 = qword_280ED32E8;

    sub_2188202A8(v17);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {

    sub_218744F2C(&v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v18 = qword_280ED32D8;
    v17 = qword_280ED32E0;
    v19 = qword_280ED32E8;

    sub_2188202A8(v17);
  }

  v31 = v14;
  v33 = 0u;
  v32 = 0u;
  sub_2187B17A0(v11, v8, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218CB31A4);
  sub_2187B17A0(v39, v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v20 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v21 = (v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = v11;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  sub_2189B4EAC(v8, v23 + v20);
  v24 = v23 + v21;
  v25 = v34[1];
  *v24 = v34[0];
  *(v24 + 16) = v25;
  *(v24 + 32) = v35;
  v26 = (v23 + v22);
  v27 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v26 = 0;
  v26[1] = 0;
  *v27 = v18;
  v27[1] = v17;
  v27[2] = v19;

  sub_2188202A8(v17);
  sub_2186CF94C(0);
  sub_218CB320C(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v17, v19);
  sub_218744F2C(v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_218744F2C(v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218744F2C(v30, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218CB31A4);
  sub_218744F2C(&v32, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return result;
}

double sub_218CB2068()
{
  sub_218CB31A4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = *(v0 + 24);
  v9 = swift_allocObject();
  v10 = sub_219BDFA44();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v30 = v8;
  sub_2187B17A0(v31, &v26, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  if (*(&v27 + 1))
  {
    sub_21875F93C(&v26, v28);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v11 = qword_280ED32E0;
    v13 = qword_280ED32E8;

    sub_2188202A8(v11);
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    sub_218744F2C(&v26, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v11 = qword_280ED32E0;
    v13 = qword_280ED32E8;

    sub_2188202A8(v11);
  }

  v25 = v9 | 0xE000000000000000;
  v27 = 0u;
  v26 = 0u;
  sub_2187B17A0(v7, v4, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218CB31A4);
  sub_2187B17A0(v33, v28, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v14 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v15 = (v3 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = (v15 + 47) & 0xFFFFFFFFFFFFFFF8;
  v24 = v7;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  sub_2189B4EAC(v4, v17 + v14);
  v18 = v17 + v15;
  v19 = v28[1];
  *v18 = v28[0];
  *(v18 + 16) = v19;
  *(v18 + 32) = v29;
  v20 = (v17 + v16);
  v21 = (v17 + ((v16 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v20 = 0;
  v20[1] = 0;
  *v21 = v12;
  v21[1] = v11;
  v21[2] = v13;

  sub_2188202A8(v11);
  sub_2186CF94C(0);
  sub_218CB320C(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v11, v13);
  sub_218744F2C(v31, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_218744F2C(v33, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218744F2C(v24, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218CB31A4);
  sub_218744F2C(&v26, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return result;
}

double sub_218CB2750()
{
  v1 = v0;
  sub_218CB31A4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v34 = *(v2 - 8);
  v3 = *(v34 + 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v5 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v7 = &v33 - v6;
  v8 = [*(v0 + 120) useFineGrainedNewsletterManagement];
  v9 = *(v0 + 64);
  v10 = *(v0 + 72);
  __swift_project_boxed_opaque_existential_1((v0 + 40), v9);
  (*(v10 + 8))(&v46, *(v0 + 32), v8, 0, v9, v10);
  v11 = v46;
  v12 = v47;
  v13 = BYTE1(v47);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  *(v15 + 24) = v14;
  v16 = *(v1 + 24);
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  *(v17 + 32) = v12;
  *(v17 + 33) = v13;
  *(v17 + 40) = sub_218CB3254;
  *(v17 + 48) = v15;
  v18 = v17 | 0x2000000000000002;
  v19 = sub_219BDFA44();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  v43 = v16;
  sub_2187B17A0(v44, &v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  v37 = v11;
  v36 = v15;
  if (*(&v40 + 1))
  {
    sub_21875F93C(&v39, v41);

    sub_2188202A8(sub_218CB3254);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v20 = qword_280ED32D8;
    v21 = qword_280ED32E0;
    v22 = qword_280ED32E8;

    sub_2188202A8(v21);
    __swift_destroy_boxed_opaque_existential_1(v41);
  }

  else
  {

    sub_2188202A8(sub_218CB3254);
    sub_218744F2C(&v39, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v20 = qword_280ED32D8;
    v21 = qword_280ED32E0;
    v22 = qword_280ED32E8;

    sub_2188202A8(v21);
  }

  v38 = v18;
  v40 = 0u;
  v39 = 0u;
  v23 = v35;
  sub_2187B17A0(v7, v35, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218CB31A4);
  sub_2187B17A0(&v46, v41, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v24 = (v34[80] + 24) & ~v34[80];
  v25 = (v3 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 47) & 0xFFFFFFFFFFFFFFF8;
  v34 = v7;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  sub_2189B4EAC(v23, v27 + v24);
  v28 = v27 + v25;
  v29 = v41[1];
  *v28 = v41[0];
  *(v28 + 16) = v29;
  *(v28 + 32) = v42;
  v30 = (v27 + v26);
  v31 = (v27 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v30 = 0;
  v30[1] = 0;
  *v31 = v20;
  v31[1] = v21;
  v31[2] = v22;

  sub_2188202A8(v21);
  sub_2186CF94C(0);
  sub_218CB320C(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v21, v22);

  sub_2187FABEC(sub_218CB3254, v36);
  sub_218744F2C(v44, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_218744F2C(&v46, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218744F2C(v34, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218CB31A4);
  sub_218744F2C(&v39, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return result;
}

uint64_t sub_218CB3000(uint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    v3 = result;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_218718690(result + 80, v6);

      v4 = v7;
      v5 = v8;
      __swift_project_boxed_opaque_existential_1(v6, v7);
      (*(v5 + 8))(v3, v4, v5);
      return __swift_destroy_boxed_opaque_existential_1(v6);
    }
  }

  return result;
}

uint64_t sub_218CB30B0()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_218CB31A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218CB320C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t objectdestroy_3Tm_3()
{
  sub_218CB31A4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = (*(*(v1 - 8) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;

  v4 = sub_219BDFA44();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  if (*(v0 + v3 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + v3));
  }

  swift_unknownObjectRelease();

  if (*(v0 + ((((v3 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_218CB33FC(void *a1)
{
  sub_218CB31A4(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_218CB34FC()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t sub_218CB3564(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_218CB35AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218CB360C(void *a1)
{
  v3 = v1;
  sub_218CB41B0(0, &qword_27CC10B38, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CB4020();
  sub_219BF7B44();
  v12[0] = 0;
  sub_219BF77F4();
  if (!v2)
  {
    memcpy(v13, (v3 + 16), 0x148uLL);
    memcpy(v12, (v3 + 16), sizeof(v12));
    v13[351] = 1;
    sub_218CB4214(v13, v11);
    sub_218CB4278();
    sub_219BF77E4();
    memcpy(v11, v12, sizeof(v11));
    sub_218CB40B0(v11);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218CB37E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x617461646174656DLL;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x617461646174656DLL;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218CB387C()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_218CB38F4(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_218CB3958(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_218CB39CC(char *a2@<X8>)
{
  v3 = sub_219BF7614();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_218CB3A2C(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x617461646174656DLL;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_218CB3A60()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 25705;
  }
}

void sub_218CB3A90(char *a3@<X8>)
{
  v4 = sub_219BF7614();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_218CB3AF4(uint64_t a1)
{
  v2 = sub_218CB4020();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CB3B30(uint64_t a1)
{
  v2 = sub_218CB4020();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_218CB3B6C@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  result = sub_218CB3BD0(a2, v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x160uLL);
  }

  return result;
}

void *sub_218CB3BD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a1;
  v29 = a2;
  v3 = sub_219BF5474();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CB41B0(0, &qword_27CC10B20, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CB4020();
  v11 = v30;
  sub_219BF7B34();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v12 = v5;
  v26 = v3;
  v13 = v29;
  sub_218CB4074(v34);
  v32[0] = 1;
  v30 = v7;
  v27 = v10;
  sub_219BF76F4();
  sub_219BF5464();
  v14 = sub_219BF5424();
  v16 = v15;

  (*(v28 + 8))(v12, v26);
  v17 = v13;
  v18 = v8;
  if (v16 >> 60 == 15)
  {
    memcpy(v33, v34, sizeof(v33));
    v19 = v30;
    v20 = v27;
  }

  else
  {
    sub_219BE1994();
    swift_allocObject();
    sub_219BE1984();
    sub_218CB415C();
    v25 = v14;
    sub_219BE1974();
    v19 = v30;
    v20 = v27;

    sub_218822A58(v25, v16);
    memcpy(v31, v32, sizeof(v31));
    nullsub_1();
    memcpy(v33, v31, sizeof(v33));
  }

  v31[0] = 0;
  v21 = sub_219BF76F4();
  v23 = v22;
  (*(v18 + 8))(v20, v19);
  memcpy(v32, v33, sizeof(v32));
  __swift_destroy_boxed_opaque_existential_1(v35);
  *v17 = v21;
  v17[1] = v23;
  result = memcpy(v17 + 2, v32, 0x148uLL);
  v17[43] = 0;
  return result;
}

unint64_t sub_218CB4020()
{
  result = qword_27CC10B28;
  if (!qword_27CC10B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10B28);
  }

  return result;
}

double sub_218CB4074(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_219C14A10;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  return result;
}

uint64_t sub_218CB40B0(uint64_t a1)
{
  sub_218CB410C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218CB410C()
{
  if (!qword_27CC233F0)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC233F0);
    }
  }
}

unint64_t sub_218CB415C()
{
  result = qword_27CC10B30;
  if (!qword_27CC10B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10B30);
  }

  return result;
}

void sub_218CB41B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218CB4020();
    v7 = a3(a1, &type metadata for RecipeSearchResultItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218CB4214(uint64_t a1, uint64_t a2)
{
  sub_218CB410C();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_218CB4278()
{
  result = qword_27CC10B40;
  if (!qword_27CC10B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10B40);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI220SearchRecipeMetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_218CB4308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
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

uint64_t sub_218CB4350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_218CB4400()
{
  result = qword_27CC10B48;
  if (!qword_27CC10B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10B48);
  }

  return result;
}

unint64_t sub_218CB4458()
{
  result = qword_27CC10B50;
  if (!qword_27CC10B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10B50);
  }

  return result;
}

unint64_t sub_218CB44B0()
{
  result = qword_27CC10B58;
  if (!qword_27CC10B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10B58);
  }

  return result;
}

uint64_t sub_218CB4504()
{
  v1 = [*(v0 + 24) appConfiguration];
  if (([v1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_historyFeedConfigurationResourceId)) != 0)
  {
    v3 = v2;
    sub_219BF5414();

    MEMORY[0x28223BE20](v4);
    sub_2186E9518();
    sub_219BE3204();

    v5 = sub_219BE2E54();
    type metadata accessor for HistoryFeedConfigFetchResult(0);
    sub_219BE2F84();

    v6 = sub_219BE2E54();
    v7 = sub_219BE2FD4();
    swift_unknownObjectRelease();

    return v7;
  }

  else
  {
    sub_218CB50E0();
    swift_allocError();
    *v9 = 1;
    sub_218CB5274(0, &unk_280EE6D18, type metadata accessor for HistoryFeedConfigFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v10 = sub_219BE2FF4();
    swift_unknownObjectRelease();
    return v10;
  }
}

uint64_t sub_218CB4748(void *a1, uint64_t a2, uint64_t a3)
{
  sub_218CB5274(0, &qword_280EE7E80, MEMORY[0x277D6CA50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v13 - v5);
  __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
  sub_219BF5CE4();
  *v6 = v7;
  v8 = *MEMORY[0x277D6CA48];
  v9 = sub_219BE1B34();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6, v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = sub_219BF2944();
  sub_21897DAD8(v6);
  return v11;
}

char *sub_218CB48E4(void **a1, unint64_t a2)
{
  v36 = a2;
  v34 = type metadata accessor for HistoryFeedConfigFetchResult(0);
  MEMORY[0x28223BE20](v34);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = type metadata accessor for HistoryFeedContentConfig(0);
  MEMORY[0x28223BE20](v8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v31 - v16;
  v18 = *a1;
  v19 = [v18 fileURL];
  if (v19)
  {
    v20 = v19;
    sub_219BDB8B4();

    (*(v11 + 32))(v17, v13, v10);
    v21 = sub_219BDB974();
    if (!v2)
    {
      v32 = v7;
      v24 = v22;
      v25 = v21;
      sub_218CB5154();
      v33 = v25;
      v36 = v24;
      sub_219BE1974();
      v27 = v37;
      v28 = v32;
      sub_218CB51AC(v37, v32, type metadata accessor for HistoryFeedContentConfig);
      v29 = v35;
      *(v28 + *(v34 + 20)) = v18;
      sub_218CB51AC(v28, v29, type metadata accessor for HistoryFeedConfigFetchResult);
      sub_218CB5274(0, &unk_280EE6D18, type metadata accessor for HistoryFeedConfigFetchResult, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v30 = v18;
      v7 = sub_219BE3014();
      sub_2186C6190(v33, v36);
      sub_218CB5214(v28, type metadata accessor for HistoryFeedConfigFetchResult);
      sub_218CB5214(v27, type metadata accessor for HistoryFeedContentConfig);
    }

    (*(v11 + 8))(v17, v10);
  }

  else
  {
    sub_218CB50E0();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  return v7;
}

double sub_218CB4CC4(uint64_t a1)
{
  if (qword_280E8D930 != -1)
  {
    swift_once();
  }

  v1 = qword_280F617D8;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("Failed to fetch history feed service config. Error=%{public}@)", 62, 2, &dword_2186C1000, v1, v2, v3);

  return result;
}

void *sub_218CB4DF0@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HistoryFeedContentConfig(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CB5154();
  result = sub_219BE1974();
  if (!v2)
  {
    sub_218CB52D8(v6, a2);
    result = type metadata accessor for HistoryFeedConfigFetchResult(0);
    *(a2 + *(result + 5)) = 0;
  }

  return result;
}

uint64_t sub_218CB4ED8(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_219BDAF64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v6, a1, v3, v9);
  sub_219BDAF44();
  v16 = v11;
  sub_219BE3204();
  v12 = sub_219BE2E54();
  type metadata accessor for HistoryFeedConfigFetchResult(0);
  v13 = sub_219BE2F94();

  (*(v8 + 8))(v11, v7);
  return v13;
}

unint64_t sub_218CB50E0()
{
  result = qword_27CC10B60;
  if (!qword_27CC10B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10B60);
  }

  return result;
}

unint64_t sub_218CB5154()
{
  result = qword_280EC1A08;
  if (!qword_280EC1A08)
  {
    type metadata accessor for HistoryFeedContentConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC1A08);
  }

  return result;
}

uint64_t sub_218CB51AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218CB5214(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218CB5274(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218CB52D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryFeedContentConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_218CB5350()
{
  result = qword_27CC10B68;
  if (!qword_27CC10B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10B68);
  }

  return result;
}

uint64_t sub_218CB53B4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v82 = type metadata accessor for SportsFavoritesModel(0);
  MEMORY[0x28223BE20](v82);
  v79 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218972E2C(0);
  v78 = v9;
  v83 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v77 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A407C(0);
  v80 = *(v11 - 8);
  v81 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE6DF4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v70 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A3EF0(0, &qword_27CC0BBB8, MEMORY[0x277D6DF88]);
  v68 = *(v17 - 8);
  v69 = v17;
  MEMORY[0x28223BE20](v17);
  v67 = v58 - v18;
  sub_2189A3E04(0);
  MEMORY[0x28223BE20](v19 - 8);
  v63 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A3FB0(0);
  MEMORY[0x28223BE20](v21 - 8);
  v62 = v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189A3EF0(0, &qword_27CC0BBE0, MEMORY[0x277D6EC60]);
  v65 = *(v23 - 8);
  v66 = v23;
  MEMORY[0x28223BE20](v23);
  v64 = v58 - v24;
  v25 = *(v4 + 56);
  if (v25 >> 62)
  {
    v26 = sub_219BF7214();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v73 = a1;
  v74 = a3;
  v71 = v15;
  v72 = v14;
  if (v26)
  {
    v85 = MEMORY[0x277D84F90];
    result = sub_219BF73F4();
    if (v26 < 0)
    {
      __break(1u);
      return result;
    }

    v28 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v28, v25);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v28;
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v26 != v28);
    v29 = v85;
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v30 = *(v4 + 64);
  sub_219A011EC(v29, v30);
  v32 = v31;

  sub_2189A4158(0);
  sub_2189A3ED0(0);
  v34 = v33;
  v35 = (*(*(v33 - 8) + 80) + 32) & ~*(*(v33 - 8) + 80);
  v36 = swift_allocObject();
  v37 = v36;
  *(v36 + 16) = xmmword_219C09BA0;
  v85 = v30;
  v38 = *(v32 + 16);
  if (v38)
  {
    v58[1] = v35;
    v59 = v36;
    v60 = v34;
    v61 = a2;
    v84 = MEMORY[0x277D84F90];

    sub_218C342F8(0, v38, 0);
    v39 = v84;
    v40 = *(v83 + 16);
    v41 = (*(v83 + 80) + 32) & ~*(v83 + 80);
    v58[0] = v32;
    v42 = v32 + v41;
    v43 = *(v83 + 72);
    v83 += 16;
    v44 = (v83 - 8);
    v75 = v80 + 32;
    v76 = v43;
    do
    {
      v45 = v77;
      v46 = v78;
      v40(v77, v42, v78);
      v40(v79, v45, v46);
      sub_2189A4110(&qword_27CC0FAD0, type metadata accessor for SportsFavoritesModel, &unk_219C0B9A8);
      sub_219BE5FB4();
      (*v44)(v45, v46);
      v84 = v39;
      v48 = *(v39 + 16);
      v47 = *(v39 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_218C342F8((v47 > 1), v48 + 1, 1);
        v39 = v84;
      }

      *(v39 + 16) = v48 + 1;
      (*(v80 + 32))(v39 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v48, v13, v81);
      v42 += v76;
      --v38;
    }

    while (v38);

    a2 = v61;
    v34 = v60;
    v37 = v59;
  }

  else
  {

    v39 = MEMORY[0x277D84F90];
  }

  v49 = sub_2189A4110(&qword_27CC0BBF8, sub_2189A407C, MEMORY[0x277D6D408]);
  v50 = sub_2189A4110(&qword_27CC0BC00, sub_2189A407C, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v39, v81, v49, v50);
  sub_2189A3D68();
  sub_2189A4110(&qword_27CC0FAD0, type metadata accessor for SportsFavoritesModel, &unk_219C0B9A8);
  sub_219BE6924();
  v51 = sub_2189A4110(&qword_27CC0BBD0, sub_2189A3ED0, MEMORY[0x277D6D720]);
  v52 = sub_2189A4110(&qword_27CC0BBD8, sub_2189A3ED0, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9150](v37, v34, v51, v52);
  v53 = v64;
  sub_219BEB2D4();
  v55 = v70;
  v54 = v71;
  v56 = v72;
  (*(v71 + 104))(v70, *MEMORY[0x277D6D868], v72);
  sub_218CB5DB4();
  v57 = v67;
  sub_219BE85E4();
  (*(v54 + 8))(v55, v56);
  a2(v57);
  (*(v68 + 8))(v57, v69);
  return (*(v65 + 8))(v53, v66);
}

unint64_t sub_218CB5D60()
{
  result = qword_27CC10B70;
  if (!qword_27CC10B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10B70);
  }

  return result;
}

unint64_t sub_218CB5DB4()
{
  result = qword_27CC10B78;
  if (!qword_27CC10B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10B78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PuzzleContinuePlayingSectionDescriptor(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for PuzzleContinuePlayingSectionDescriptor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218CB5E9C(uint64_t a1)
{
  v2 = type metadata accessor for FollowingDislikedSupplementaryLayoutAttributes.Header(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v23 = &v21 - v7;
  v22 = type metadata accessor for TitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v22);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v28 = MEMORY[0x277D84F90];
    sub_218C34270(0, v10, 0);
    v11 = v28;
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v21 = *(v3 + 72);
    do
    {
      v24 = v10;
      v13 = v23;
      sub_218CB6338(v12, v23, type metadata accessor for FollowingDislikedSupplementaryLayoutAttributes.Header);
      sub_218CB6338(v13, v5, type metadata accessor for FollowingDislikedSupplementaryLayoutAttributes.Header);
      v14 = v9;
      v15 = *(v5 + 6);

      v9 = v14;

      sub_218CB6278(0);
      sub_218A52EFC(&v5[*(v16 + 48)], v14);
      sub_218CB63A0(v13, type metadata accessor for FollowingDislikedSupplementaryLayoutAttributes.Header);
      v28 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_218C34270((v17 > 1), v18 + 1, 1);
        v11 = v28;
      }

      v26 = v22;
      v27 = sub_218CB62E0();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
      sub_218CB6338(v14, boxed_opaque_existential_1, type metadata accessor for TitleViewLayoutAttributes);
      *(v11 + 16) = v18 + 1;
      sub_2186CB1F0(&v25, v11 + 40 * v18 + 32);
      sub_218CB63A0(v14, type metadata accessor for TitleViewLayoutAttributes);
      v12 += v21;
      v10 = v24 - 1;
    }

    while (v24 != 1);
  }

  return v11;
}

uint64_t sub_218CB6158(uint64_t a1)
{
  v2 = sub_218CB6400();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_218CB6194(uint64_t a1)
{
  v2 = sub_218CB61D8();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_218CB61D8()
{
  result = qword_27CC10B80;
  if (!qword_27CC10B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10B80);
  }

  return result;
}

uint64_t type metadata accessor for FollowingDislikedSupplementaryLayoutAttributes.Header(uint64_t a1)
{
  result = qword_27CC10B98;
  if (!qword_27CC10B98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218CB6278(uint64_t a1)
{
  if (!qword_27CC10B88)
  {
    type metadata accessor for TitleViewLayoutAttributes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC10B88);
    }
  }
}

unint64_t sub_218CB62E0()
{
  result = qword_280EBCC28;
  if (!qword_280EBCC28)
  {
    type metadata accessor for TitleViewLayoutAttributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBCC28);
  }

  return result;
}

uint64_t sub_218CB6338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218CB63A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218CB6400()
{
  result = qword_27CC10B90;
  if (!qword_27CC10B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10B90);
  }

  return result;
}

uint64_t sub_218CB6454(uint64_t a1, uint64_t a2)
{
  sub_218CB6278(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218CB64C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218CB6278(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_218CB653C(uint64_t a1)
{
  sub_218CB6278(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for TitleViewLayoutAttributes(319);
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

id sub_218CB6620(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_218951594(0);
  sub_219BE6934();
  v6 = v59;
  v7 = v60;
  v9 = v61;
  v8 = v62;
  sub_2189516A0(0);
  sub_219BE8184();
  if (v63 <= 1u)
  {
    if (!v63)
    {
      v49 = v57;
      v50[0] = v58[0];
      *(v50 + 9) = *(v58 + 9);
      v45 = v53;
      v46 = v54;
      v47 = v55;
      v48 = v56;
      v43 = v51;
      v44 = v52;
      if (!sub_218CB826C(&v43))
      {
        nullsub_1();
        v11 = v10[7];
        v70 = v10[6];
        v71 = v11;
        v72 = *(v10 + 16);
        v12 = v10[3];
        v66 = v10[2];
        v67 = v12;
        v13 = v10[5];
        v68 = v10[4];
        v69 = v13;
        v14 = v10[1];
        v64 = *v10;
        v65 = v14;
        v15 = sub_218CB6A0C(a3, a4, a1, &v64, v6, v7);

        return v15;
      }

      goto LABEL_22;
    }

    v49 = v57;
    v50[0] = v58[0];
    *(v50 + 9) = *(v58 + 9);
    v45 = v53;
    v46 = v54;
    v47 = v55;
    v48 = v56;
    v43 = v51;
    v44 = v52;
    if (sub_218CB826C(&v43) == 1)
    {
      nullsub_1();
      v23 = v22[7];
      v70 = v22[6];
      v71 = v23;
      v72 = *(v22 + 16);
      v24 = v22[3];
      v66 = v22[2];
      v67 = v24;
      v25 = v22[5];
      v68 = v22[4];
      v69 = v25;
      v26 = v22[1];
      v64 = *v22;
      v65 = v26;
      v15 = sub_218CB6A0C(a3, a4, a1, &v64, v6, v7);
      v27 = v6;
      v28 = v7;
      v29 = v9;
      v30 = v8;
      v31 = 1;
LABEL_15:
      sub_218CB81E4(v27, v28, v29, v30, v31);
      return v15;
    }

    v37 = v6;
    v38 = v7;
    v39 = v9;
    v40 = v8;
    v41 = 1;
LABEL_21:
    sub_218CB81E4(v37, v38, v39, v40, v41);
    goto LABEL_22;
  }

  if (v63 != 2)
  {
    if (v63 == 3)
    {
      v49 = v57;
      v50[0] = v58[0];
      *(v50 + 9) = *(v58 + 9);
      v45 = v53;
      v46 = v54;
      v47 = v55;
      v48 = v56;
      v43 = v51;
      v44 = v52;
      if (sub_218CB826C(&v43) == 3)
      {
        nullsub_1();
        v33 = v32[7];
        v70 = v32[6];
        v71 = v33;
        v72 = *(v32 + 16);
        v34 = v32[3];
        v66 = v32[2];
        v67 = v34;
        v35 = v32[5];
        v68 = v32[4];
        v69 = v35;
        v36 = v32[1];
        v64 = *v32;
        v65 = v36;
        v15 = sub_218CB6A0C(a3, a4, a1, &v64, v6, v7);
        v27 = v6;
        v28 = v7;
        v29 = v9;
        v30 = v8;
        v31 = 3;
        goto LABEL_15;
      }

      v37 = v6;
      v38 = v7;
      v39 = v9;
      v40 = v8;
      v41 = 3;
    }

    else
    {
      v37 = v59;
      v38 = v60;
      v39 = v61;
      v40 = v62;
      v41 = 4;
    }

    goto LABEL_21;
  }

  v49 = v57;
  v50[0] = v58[0];
  *(v50 + 9) = *(v58 + 9);
  v45 = v53;
  v46 = v54;
  v47 = v55;
  v48 = v56;
  v43 = v51;
  v44 = v52;
  if (sub_218CB826C(&v43) != 2)
  {
LABEL_22:
    result = sub_219BF7514();
    __break(1u);
    return result;
  }

  nullsub_1();
  v17 = v16[7];
  v70 = v16[6];
  v71 = v17;
  v72 = *(v16 + 16);
  v18 = v16[3];
  v66 = v16[2];
  v67 = v18;
  v19 = v16[5];
  v68 = v16[4];
  v69 = v19;
  v20 = v16[1];
  v64 = *v16;
  v65 = v20;
  if (qword_27CC08240 != -1)
  {
    swift_once();
  }

  return sub_218CB6A0C(a3, a4, a1, &v64, qword_27CCD86D0, byte_27CCD86D8);
}

id sub_218CB6A0C(void *a1, uint64_t a2, uint64_t a3, double *a4, uint64_t a5, int a6)
{
  v81 = a6;
  v63 = a4;
  sub_218951594(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v65 = v12;
  v66 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CB8284(0);
  v64 = a1;
  v13 = sub_219BF6414();
  v14 = v13;
  v15 = *(a5 + 16);
  v16 = MEMORY[0x277D84F90];
  v67 = a3;
  if (v15)
  {
    v60 = v13;
    v61 = v11;
    v62 = v10;
    v86[0] = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v70 = sub_2186C6148(0, &qword_280E8DAF0, 0x277D75710);
    v17 = 0;
    v69 = a5 + 32;
    v80 = 0x8000000219CF10E0;
    v79 = "o select items for bulk editing";
    v78 = 0x8000000219CF0F80;
    v77 = "annels by publish date";
    v76 = 0x8000000219CF0FE0;
    v75 = "here are no new issues";
    v74 = 0x8000000219CF1060;
    v73 = 0x8000000219CF10B0;
    v18 = v15;
    v68 = v15;
    do
    {
      v19 = *(v69 + 8 * v17);
      v20 = *(v19 + 16);
      if (v20)
      {
        v72 = v17;
        *&v83 = v16;

        sub_219BF73F4();
        sub_2186C6148(0, &qword_280E8D9D0, 0x277D750C8);
        v71 = v19;
        v21 = (v19 + 40);
        do
        {
          v29 = *(v21 - 1);
          v30 = *v21;
          if (v30 == 1)
          {
            type metadata accessor for Localized();
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
            v32 = [objc_opt_self() bundleForClass_];
            sub_219BDB5E4();
            v33 = v81;

            if (v33 != 4)
            {
              v34 = 0xEB00000000657461;
              v35 = 0x7974697669746361;
              v36 = 0x6465727574616566;
              if (v29 > 1u)
              {
                if (v29 == 2)
                {
                  v37 = 0x7974697669746361;
                }

                else
                {
                  v37 = 0x446873696C627570;
                }

                if (v29 == 2)
                {
                  v38 = 0xE800000000000000;
                }

                else
                {
                  v38 = 0xEB00000000657461;
                }
              }

              else
              {
                if (v29)
                {
                  v37 = 0x6465727574616566;
                }

                else
                {
                  v37 = 1701667182;
                }

                if (v29)
                {
                  v38 = 0xE800000000000000;
                }

                else
                {
                  v38 = 0xE400000000000000;
                }
              }

              if (v81 == 2)
              {
                v34 = 0xE800000000000000;
              }

              else
              {
                v35 = 0x446873696C627570;
              }

              if (v81)
              {
                v39 = 0xE800000000000000;
              }

              else
              {
                v36 = 1701667182;
                v39 = 0xE400000000000000;
              }

              if (v81 <= 1u)
              {
                v40 = v36;
              }

              else
              {
                v40 = v35;
              }

              if (v81 <= 1u)
              {
                v41 = v39;
              }

              else
              {
                v41 = v34;
              }

              if (v37 == v40 && v38 == v41)
              {
              }

              else
              {
                sub_219BF78F4();
              }
            }
          }

          else
          {
            type metadata accessor for Localized();
            v22 = swift_getObjCClassFromMetadata();
            v23 = objc_opt_self();

            v24 = [v23 bundleForClass_];
            sub_219BDB5E4();

            v25 = sub_219BF53D4();
            v26 = [objc_opt_self() systemImageNamed_];
          }

          v27 = swift_allocObject();
          swift_weakInit();
          v28 = swift_allocObject();
          *(v28 + 16) = v27;
          *(v28 + 24) = v29;
          *(v28 + 32) = v30;
          sub_219BF6E14();
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          v21 += 16;
          --v20;
        }

        while (v20);
        v16 = MEMORY[0x277D84F90];
        v18 = v68;
        v17 = v72;
      }

      else
      {
      }

      ++v17;
      sub_219BF6C04();

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v17 != v18);
    v16 = v86[0];
    v10 = v62;
    v11 = v61;
    v14 = v60;
  }

  v42 = sub_219BE8204();
  v43 = *&v42[OBJC_IVAR____TtC7NewsUI231MagazineV2GridSectionHeaderView_sortByButton];

  if (v16 >> 62)
  {
    v44 = sub_219BF7214();
  }

  else
  {
    v44 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v43 setHidden_];

  v45 = sub_219BE8204();
  v46 = *&v45[OBJC_IVAR____TtC7NewsUI231MagazineV2GridSectionHeaderView_sortByButton];

  sub_2186C6148(0, &qword_280E8DAF0, 0x277D75710);
  v47 = sub_219BF6BF4();
  [v46 setMenu_];

  v48 = sub_219BE8204();
  v49 = *&v48[OBJC_IVAR____TtC7NewsUI231MagazineV2GridSectionHeaderView_sortByButton];

  [v49 setShowsMenuAsPrimaryAction_];
  __swift_project_boxed_opaque_existential_1((v82 + 72), *(v82 + 96));
  sub_219BE6934();
  v91[0] = v83;
  v91[1] = v84;
  v92 = v85;
  sub_21906D640(v86);
  sub_218CB8324(v91);
  v50 = sub_219BE8204();
  v51 = [v64 traitCollection];
  sub_219B3B0F0(v86[0], v86[1], v88, v89, v63, v50, v51);

  v90 = v87;
  sub_2189AD3D8(&v90);

  v52 = v14;
  sub_219BE20E4();
  [v52 setHidden_];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE20F4();

  __swift_project_boxed_opaque_existential_1(&v83, *(&v84 + 1));
  v53 = sub_219BE8214();
  sub_219BE1A04();

  __swift_destroy_boxed_opaque_existential_1(&v83);
  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v56 = v66;
  (*(v11 + 16))(v66, v67, v10);
  v57 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v58 = swift_allocObject();
  *(v58 + 16) = v54;
  *(v58 + 24) = v55;
  (*(v11 + 32))(v58 + v57, v56, v10);

  sub_219BE81F4();

  return v52;
}

double sub_218CB7528(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2196F3F08(a3, a4 & 1);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_218CB75C0(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong setHidden_];
  }
}

void sub_218CB7624(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218951594(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v39 = a1;
    swift_beginAccess();
    v15 = swift_unknownObjectWeakLoadStrong();
    if (!v15)
    {
LABEL_9:

      return;
    }

    v16 = v15;
    sub_219BE5824();
    if (v49[3])
    {
      if ((swift_dynamicCast() & 1) != 0 && (v38 = a2, v56 = v46, v57 = v47, v58 = v48, v52 = v42, v53 = v43, v54 = v44, v55 = v45, v50 = v40, v51 = v41, (v17 = *(v14 + 120)) != 0))
      {

        if ((sub_219BEA374() & 1) == 0)
        {

          goto LABEL_9;
        }

        v37 = objc_opt_self();
        (*(v10 + 16))(&v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v9);
        v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        v33 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
        v36 = (v33 + 143) & 0xFFFFFFFFFFFFFFF8;
        v35 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
        v34 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
        v19 = swift_allocObject();
        *(v19 + 16) = v39;
        *(v19 + 24) = v14;
        (*(v10 + 32))(v19 + v18, v12, v9);
        v20 = v19 + v33;
        v21 = v57;
        *(v20 + 96) = v56;
        *(v20 + 112) = v21;
        *(v20 + 128) = v58;
        v22 = v53;
        *(v20 + 32) = v52;
        *(v20 + 48) = v22;
        v23 = v55;
        *(v20 + 64) = v54;
        *(v20 + 80) = v23;
        v24 = v51;
        *v20 = v50;
        *(v20 + 16) = v24;
        v25 = v35;
        *(v19 + v36) = v16;
        *(v19 + v25) = v17;
        v26 = v38;
        *(v19 + v34) = v38;
        v27 = swift_allocObject();
        *(v27 + 16) = sub_218CB8404;
        *(v27 + 24) = v19;
        *&v42 = sub_218807D50;
        *(&v42 + 1) = v27;
        *&v40 = MEMORY[0x277D85DD0];
        *(&v40 + 1) = 1107296256;
        *&v41 = sub_218807CE4;
        *(&v41 + 1) = &block_descriptor_48;
        v28 = _Block_copy(&v40);

        v29 = v39;

        v30 = v16;
        v31 = v26;

        [v37 performWithoutAnimation_];

        _Block_release(v28);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    else
    {

      sub_218806FD0(v49);
    }
  }
}

double sub_218CB7A44(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, void *a5)
{
  sub_218CB8284(0);
  sub_219BF5044();
  v8 = v15[0];
  __swift_project_boxed_opaque_existential_1((a2 + 72), *(a2 + 96));
  sub_218951594(0);
  sub_219BE6934();
  v20[0] = v12;
  v20[1] = v13;
  v21 = v14;
  sub_21906D640(v15);
  sub_218CB8324(v20);
  v9 = sub_219BE8204();
  v10 = [a5 traitCollection];
  sub_219B3B0F0(v15[0], v15[1], v17, v18, a4, v9, v10);

  v19 = v16;
  sub_2189AD3D8(&v19);

  return result;
}

void sub_218CB7C04(uint64_t a1, void *a2)
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
    sub_218CB7FE0(&qword_27CC10BB8, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
    sub_2186F83B8(0, &unk_280E8ED80, v13, MEMORY[0x277D83940]);
    sub_218CB84C0();
    sub_219BF7164();
    v17 = sub_219BDBFC4();
    (*(v4 + 8))(v6, v3);
    [v12 reloadSections_];
  }
}

uint64_t sub_218CB7ECC()
{
  sub_218774F78(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_218CB7FE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_218CB8028()
{
  v1 = sub_219BE9834();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_218CB853C(0);
  v6 = *MEMORY[0x277D6E758];
  v7 = *(v2 + 104);
  v7(v4, v6, v1);
  sub_219BF6444();
  v8 = *(v2 + 8);
  v8(v4, v1);
  sub_218CB8284(0);
  v7(v4, v6, v1);
  sub_219BF6444();
  v8(v4, v1);
  *(v5 + 120) = sub_219BF63F4();

  return result;
}

double sub_218CB81E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 2u)
  {
    if (a5 == 3)
    {
      goto LABEL_4;
    }

    if (a5 == 4)
    {

      goto LABEL_6;
    }
  }

  else
  {
    if (!a5)
    {

      goto LABEL_6;
    }

    if (a5 == 1)
    {
LABEL_4:

LABEL_6:
    }
  }

  return result;
}

uint64_t sub_218CB826C(uint64_t a1)
{
  if (*(a1 + 136) <= 3u)
  {
    return *(a1 + 136);
  }

  else
  {
    return (*a1 + 4);
  }
}

void sub_218CB8284(uint64_t a1)
{
  if (!qword_27CC10BA8)
  {
    type metadata accessor for MagazineV2GridSectionHeaderView();
    sub_218CB7FE0(&qword_27CC10BB0, type metadata accessor for MagazineV2GridSectionHeaderView, &unk_219C6C948);
    v1 = sub_219BE8224();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC10BA8);
    }
  }
}

void sub_218CB8380(void *a1, void *a2)
{
  sub_218951594(0);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));

  sub_218CB7624(a1, a2, v6, v7, v8);
}

double sub_218CB8404()
{
  sub_218951594(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + ((v4 + 143) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  return sub_218CB7A44(v6, v7, v0 + v3, (v0 + v4), v5);
}

unint64_t sub_218CB84C0()
{
  result = qword_27CC10BC0;
  if (!qword_27CC10BC0)
  {
    sub_2186F83B8(255, &unk_280E8ED80, MEMORY[0x277D83B88], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10BC0);
  }

  return result;
}

void sub_218CB853C(uint64_t a1)
{
  if (!qword_27CC10BC8)
  {
    type metadata accessor for MagazineGridSectionHeaderView();
    sub_218CB7FE0(&unk_27CC10BD0, type metadata accessor for MagazineGridSectionHeaderView, &unk_219C75D48);
    v1 = sub_219BE8224();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC10BC8);
    }
  }
}

uint64_t sub_218CB85D0(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1 + 3, a1[6]);
  v2 = [objc_opt_self() defaultCachePolicy];
  v3 = sub_219BF27D4();

  return v3;
}

uint64_t sub_218CB8678(uint64_t *a1)
{
  v1 = *a1;
  type metadata accessor for SavedFeedPool.SavedHeadlines();
  *(swift_allocObject() + 16) = v1;
  sub_218CB8C58(0, qword_280EE6F60, type metadata accessor for SavedFeedPool.SavedHeadlines, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_218CB8720@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_218CB88B0(a1[1], *a1);
  *a2 = result;
  return result;
}

void sub_218CB8750(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SavedFeedServiceConfig(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF08B4();
  if (!v1)
  {
    v6 = v10[1];
    sub_219BF0944();
    v7 = *(v5 + 1);

    sub_218CB8854(v5);
    v8 = *(v6 + 24);

    v9 = sub_218CB88B0(v7, v8);

    *a1 = v9;
  }
}

uint64_t sub_218CB8854(uint64_t a1)
{
  v2 = type metadata accessor for SavedFeedServiceConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218CB88B0(uint64_t a1, uint64_t a2)
{
  v7 = sub_219A79734();
  v8 = v6 >> 1;
  if (v5 == v6 >> 1)
  {
    type metadata accessor for SavedFeedPool.SavedHeadlines();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D84F90];
    *(v9 + 16) = MEMORY[0x277D84F90];
    sub_218CB8C58(0, qword_280EE6F60, type metadata accessor for SavedFeedPool.SavedHeadlines, MEMORY[0x277D6CF30]);
    swift_allocObject();

    v11 = sub_219BE3014();
  }

  else
  {
    v12 = v5;
    v13 = v6;
    v30 = v4;
    v14 = sub_219BC7A48(a1, a2);
    v29 = v15;
    v17 = v16;
    v19 = v18;
    if (v13)
    {
      sub_219BF7934();
      swift_unknownObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v20 = swift_dynamicCastClass();
      if (!v20)
      {
        swift_unknownObjectRelease();
        v20 = MEMORY[0x277D84F90];
      }

      v21 = *(v20 + 16);

      if (__OFSUB__(v8, v12))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v21 != v8 - v12)
      {
        goto LABEL_24;
      }

      v22 = swift_dynamicCastClass();
      v23 = swift_unknownObjectRelease();
      if (v22)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    while (1)
    {
      sub_218B666EC(v7, v30, v12, v13);
LABEL_11:
      v23 = swift_unknownObjectRelease();
LABEL_12:
      MEMORY[0x28223BE20](v23);
      sub_218CB8C58(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
      sub_219BE3204();

      v24 = sub_219BE2E54();
      type metadata accessor for SavedFeedPool.SavedHeadlines();
      v11 = sub_219BE2F64();

      if ((v19 & 1) == 0)
      {
        goto LABEL_13;
      }

      sub_219BF7934();
      swift_unknownObjectRetain_n();
      v26 = swift_dynamicCastClass();
      if (!v26)
      {
        swift_unknownObjectRelease();
        v26 = MEMORY[0x277D84F90];
      }

      v27 = *(v26 + 16);

      if (!__OFSUB__(v19 >> 1, v17))
      {
        break;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      swift_unknownObjectRelease();
    }

    if (v27 != (v19 >> 1) - v17)
    {
      swift_unknownObjectRelease_n();
LABEL_13:
      sub_218B666EC(v14, v29, v17, v19);
      v10 = v25;
      goto LABEL_20;
    }

    v10 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v10)
    {
      goto LABEL_21;
    }

    v10 = MEMORY[0x277D84F90];
LABEL_20:
    swift_unknownObjectRelease();
  }

LABEL_21:
  swift_unknownObjectRelease();
  type metadata accessor for SavedFeedPool();
  result = swift_allocObject();
  *(result + 16) = v11;
  *(result + 24) = v10;
  return result;
}

void sub_218CB8C58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_218CB8D00(uint64_t a1)
{
  v2 = v1;
  v47 = a1;
  v3 = sub_219BF4AC4();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x28223BE20](v3);
  v37 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEEA84();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 2);
  v11 = *(v1 + 4);
  v12 = *(v2 + 5);
  v42 = *(v2 + 6);
  v43 = v12;
  v13 = *(v2 + 7);
  v14 = *(v2 + 8);
  v40 = v11;
  v41 = v13;
  v50 = v6;
  v15 = *(v6 + 16);
  v15(v9, &v2[OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_cachePolicy], v5, v7);
  v48 = *&v2[OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsOnboardingState];
  v16 = *&v2[OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability];
  v44 = *&v2[OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_subscriptionController];
  v45 = v16;
  v46 = *&v2[OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult];
  v17 = swift_allocObject();
  *(v17 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_canCache) = 0;
  v18 = v47;
  v17[2] = v10;
  v17[3] = v18;
  v17[4] = v11;
  v17[5] = v12;
  v19 = v41;
  v17[6] = v42;
  v17[7] = v19;
  v17[8] = v14;
  v49 = v9;
  v51 = v5;
  (v15)(v17 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_cachePolicy, v9, v5);
  v20 = *(v10 + 32);
  *(v17 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor) = v20;
  sub_2186C6148(0, &qword_280E8E860, 0x277D30F38);

  v21 = v19;
  v22 = v44;
  v23 = v45;
  swift_unknownObjectRetain();

  swift_unknownObjectRetain();
  v24 = v20;

  v25 = sub_219BF5F34();
  v26 = v46;
  *(v17 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_dateRange) = v25;
  v27 = [v14 autoRefreshMinimumInterval];
  *(v17 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_refreshInterval) = v27;
  *(v17 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsOnboardingState) = v48;
  *(v17 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_subscriptionController) = v22;
  *(v17 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability) = v23;
  *(v17 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult) = v26;
  if (v26)
  {

    sub_219BF4404();
    v28 = v37;
    sub_219BF3FA4();

    sub_219BF4A64();
    (*(v38 + 8))(v28, v39);
    v29 = sub_219BF1F74();
  }

  else
  {
    v29 = MEMORY[0x277D84FA0];
  }

  v55 = v29;
  v30 = [sub_219BF6394() asSportsEvent];
  swift_unknownObjectRelease();
  if (!v30)
  {
    goto LABEL_10;
  }

  v31 = [v30 eventCompetitorTags];
  if (!v31)
  {
    swift_unknownObjectRelease();
LABEL_10:
    (*(v50 + 8))(v49, v51);
    goto LABEL_11;
  }

  v32 = v31;
  sub_2186D6710(0, &qword_280E8E420, &protocolRef_FCSportsProviding);
  v33 = sub_219BF5924();

  v53 = 0;
  v54 = 0xE000000000000000;
  sub_219BF7314();

  v53 = 0xD00000000000001FLL;
  v54 = 0x8000000219CF11D0;
  if (v33 >> 62)
  {
    v34 = sub_219BF7214();
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v52 = v34;
  v35 = sub_219BF7894();
  MEMORY[0x21CECC330](v35);

  sub_219497B60(&v53, v53, v54);
  swift_unknownObjectRelease();
  (*(v50 + 8))(v49, v51);

LABEL_11:
  *(v17 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_selectors) = v55;
  return v17;
}

id sub_218CB9214@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  sub_2186DD304(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v64 = &v57 - v3;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  v65 = v4;
  v66 = v5;
  MEMORY[0x28223BE20](v4);
  v58 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - v8;
  sub_2186DD304(0, &qword_27CC10BE0, MEMORY[0x277D32548], MEMORY[0x277D84560]);
  v10 = *(sub_219BEF2B4() - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0EE30;
  v61 = v12;
  v13 = v12 + v11;
  v14 = *(v1 + 32);
  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  v17 = MEMORY[0x277D837D0];
  v18 = MEMORY[0x277D83838];
  *(&v68 + 1) = MEMORY[0x277D837D0];
  v69 = MEMORY[0x277D83838];
  *&v67 = v16;
  *(&v67 + 1) = v15;

  sub_219BEF2C4();
  if (*(v14 + 32))
  {
    v19 = 0x656764457377656ELL;
  }

  else
  {
    v19 = 0x74694B64756F6C63;
  }

  *(&v68 + 1) = v17;
  v69 = v18;
  *&v67 = v19;
  *(&v67 + 1) = 0xE800000000000000;
  sub_219BEF2C4();
  v20 = *(v1 + 48);
  if (v20)
  {
    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    *(&v68 + 1) = v17;
    v69 = v18;
    *&v67 = v22;
    *(&v67 + 1) = v21;

    sub_219BEF2C4();
    if (*(v20 + 32))
    {
      v23 = 0x656764457377656ELL;
    }

    else
    {
      v23 = 0x74694B64756F6C63;
    }

    v24 = 0xE800000000000000;
  }

  else
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
    sub_219BEF2C4();
    v23 = 0;
    v24 = 0;
    v17 = 0;
    v18 = 0;
    *&v68 = 0;
  }

  *&v67 = v23;
  *(&v67 + 1) = v24;
  *(&v68 + 1) = v17;
  v69 = v18;
  sub_219BEF2C4();
  v63 = sub_219BEED34();
  v25 = sub_219BEED14();
  v26 = *(v1 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_dateRange);
  result = [v26 startDate];
  v28 = v66;
  if (!result)
  {
    __break(1u);
    goto LABEL_20;
  }

  v29 = result;
  v60 = v13;
  sub_219BDBCA4();

  v30 = sub_219BDBC04();
  v31 = v65;
  v57 = *(v28 + 8);
  v57(v9, v65);
  v32 = [v25 stringFromDate_];

  v33 = sub_219BF5414();
  v35 = v34;

  v36 = MEMORY[0x277D837D0];
  *(&v68 + 1) = MEMORY[0x277D837D0];
  v69 = MEMORY[0x277D83838];
  *&v67 = v33;
  *(&v67 + 1) = v35;
  sub_219BEF2C4();
  v37 = [v26 endDate];
  v59 = v26;
  if (!v37)
  {
    v49 = v64;
    (*(v28 + 56))(v64, 1, 1, v31);
    sub_2189DD39C(v49);
    v47 = 0xE800000000000000;
    v45 = 0x6574696E69666E49;
    v48 = MEMORY[0x277D83838];
    goto LABEL_15;
  }

  v38 = v64;
  v39 = v37;
  sub_219BDBCA4();

  (*(v28 + 56))(v38, 0, 1, v31);
  sub_2189DD39C(v38);
  v40 = sub_219BEED14();
  result = [v26 endDate];
  if (!result)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v41 = result;
  v42 = v58;
  sub_219BDBCA4();

  v43 = sub_219BDBC04();
  v57(v42, v31);
  v44 = [v40 stringFromDate_];

  v45 = sub_219BF5414();
  v47 = v46;

  v48 = MEMORY[0x277D83838];
LABEL_15:
  *(&v68 + 1) = v36;
  v69 = v48;
  *&v67 = v45;
  *(&v67 + 1) = v47;
  sub_219BEF2C4();
  v50 = sub_219BEED24();
  [v59 absoluteTimeInterval];
  v51 = [v50 stringFromTimeInterval_];

  if (v51)
  {
    v52 = sub_219BF5414();
    v54 = v53;

    v55 = MEMORY[0x277D83838];
    v56 = MEMORY[0x277D837D0];
  }

  else
  {
    v52 = 0;
    v54 = 0;
    v56 = 0;
    v55 = 0;
    *&v68 = 0;
  }

  *&v67 = v52;
  *(&v67 + 1) = v54;
  *(&v68 + 1) = v56;
  v69 = v55;
  sub_219BEF2C4();
  return sub_219BEE414();
}

uint64_t sub_218CB9900()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_cachePolicy;
  v2 = sub_219BEEA84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_218CB99F8()
{
  sub_218CB9900();

  return swift_deallocClassInstance();
}

uint64_t sub_218CB9A58@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_cachePolicy;
  v5 = sub_219BEEA84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_218CB9AD4()
{
  v1 = *(*(*v0 + 16) + 16);

  return v1;
}

uint64_t sub_218CB9B34@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D32A20];
  v3 = sub_219BEFC54();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void *sub_218CB9BD8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_218CB8D00(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_218CB9C38(void *a1)
{
  v2 = sub_219BE1EF4();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CBC130(0, &unk_280EE6850, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType, sub_2186D6710);
  v40 = v4;
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v35 - v5;
  sub_218CBC130(0, &unk_280EE66F0, &qword_280E8DE40, 0x277D31330, sub_2186C6148);
  v47 = v6;
  v43 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v42 = &v35 - v7;
  sub_218CBC130(0, &qword_280EE6720, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration, sub_2186D6710);
  v46 = v8;
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  sub_218CBC130(0, &unk_280EE66C0, &qword_280E8DDC0, 0x277D311C0, sub_2186C6148);
  v12 = v11;
  v45 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - v13;
  sub_218CBC3F0(0, &qword_27CC10C18, MEMORY[0x277D84538]);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CBC18C();
  sub_219BF7B44();
  v51 = v49[2];
  v50 = 0;
  type metadata accessor for TagFeedServiceContext(0);
  sub_2186F7110(&qword_27CC10C20, type metadata accessor for TagFeedServiceContext, &unk_219C7A29C);
  v20 = v48;
  sub_219BF7834();
  if (!v20)
  {
    v48 = v14;
    v35 = v10;
    v22 = v46;
    v23 = v47;
    v51 = v49[3];
    v50 = 1;
    type metadata accessor for TagFeedContentConfig();
    sub_2186F7110(&qword_27CC10C28, type metadata accessor for TagFeedContentConfig, &unk_219C1E4D0);
    sub_219BF7834();
    v51 = v49[4];
    v50 = 2;
    type metadata accessor for TagFeedConfigData(0);
    sub_2186F7110(&qword_27CC10C30, type metadata accessor for TagFeedConfigData, &unk_219CB6B20);
    sub_219BF7834();
    v51 = v49[5];
    v50 = 3;
    sub_2186DD304(0, &qword_27CC10C38, type metadata accessor for TagFeedContentConfig, MEMORY[0x277D83D88]);
    sub_218CBC454();
    sub_219BF7834();
    v51 = v49[6];
    v50 = 4;
    sub_2186DD304(0, &qword_27CC10C48, type metadata accessor for TagFeedConfigData, MEMORY[0x277D83D88]);
    sub_218CBC52C();
    sub_219BF7834();
    v24 = v49[7];
    sub_2186C6148(0, &qword_280E8DDC0, 0x277D311C0);
    v25 = v24;
    v26 = v48;
    sub_219BE3454();
    LOBYTE(v51) = 5;
    sub_218CBC604();
    sub_219BF7834();
    (*(v45 + 8))(v26, v12);
    sub_2186D6710(0, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration);
    swift_unknownObjectRetain();
    v27 = v35;
    sub_219BE3424();
    LOBYTE(v51) = 6;
    sub_218CBC688();
    sub_219BF7834();
    (*(v44 + 8))(v27, v22);
    LOBYTE(v51) = 7;
    sub_219BEEA84();
    sub_2186F7110(&qword_280E91988, MEMORY[0x277D32228], MEMORY[0x277D32230]);
    sub_219BF7834();
    v51 = *(v49 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsOnboardingState);
    v50 = 9;
    type metadata accessor for FCSportsOnboardingState(0);
    sub_2186F7110(&unk_280E8DF10, type metadata accessor for FCSportsOnboardingState, &protocol conformance descriptor for FCSportsOnboardingState);
    sub_219BF7834();
    v28 = *(v49 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_subscriptionController);
    sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
    v29 = v28;
    v30 = v42;
    sub_219BE3444();
    LOBYTE(v51) = 8;
    sub_218CBC70C();
    sub_219BF7834();
    (*(v43 + 8))(v30, v23);
    v31 = v49;
    v51 = *(v49 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability);
    v32 = qword_280EE7C40;
    swift_unknownObjectRetain();
    if (v32 != -1)
    {
      swift_once();
    }

    v33 = v38;
    v34 = __swift_project_value_buffer(v38, qword_280EE7C48);
    (*(v37 + 16))(v39, v34, v33);
    sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
    sub_219BE3364();
    LOBYTE(v51) = 10;
    sub_218CBC790();
    sub_219BF7834();
    (*(v36 + 8))(v41, v40);
    v51 = *(v31 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult);
    v50 = 11;
    sub_2186DD304(0, &unk_280E8FE30, MEMORY[0x277D34410], MEMORY[0x277D83D88]);
    sub_218CBC814();
    sub_219BF7834();
  }

  return (*(v17 + 8))(v19, v16);
}

uint64_t sub_218CBA7A0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000015;
    v6 = 0xD00000000000001ELL;
    if (a1 == 10)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000016;
    if (a1 == 7)
    {
      v7 = 0x6C6F506568636163;
    }

    if (a1 == 6)
    {
      v7 = 0x69666E6F43707061;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x747865746E6F63;
    v2 = 0xD000000000000017;
    if (a1 != 4)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 == 3)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000011;
    if (a1 == 1)
    {
      v3 = 0x43746E65746E6F63;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_218CBA944(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_218CBA7A0(*a1);
  v5 = v4;
  if (v3 == sub_218CBA7A0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218CBA9CC()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_218CBA7A0(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_218CBAA30(uint64_t a1)
{
  sub_218CBA7A0(*v1);
  sub_219BF5524();

  return result;
}

uint64_t sub_218CBAA84(uint64_t a1)
{
  v2 = *v1;
  sub_219BF7AA4();
  sub_218CBA7A0(v2);
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_218CBAAE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218CBCA04(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_218CBAB14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_218CBA7A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_218CBAB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_218CBCA04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_218CBAB84(uint64_t a1)
{
  v2 = sub_218CBC18C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218CBABC0(uint64_t a1)
{
  v2 = sub_218CBC18C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_218CBABFC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_218CBB07C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void *sub_218CBAC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v46 = a10;
  v47 = a11;
  v45 = a9;
  v21 = sub_219BF4AC4();
  v43 = *(v21 - 8);
  v44 = v21;
  MEMORY[0x28223BE20](v21);
  v42 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  *(v23 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_canCache) = 0;
  v23[2] = a1;
  v23[3] = a2;
  v23[4] = a3;
  v23[5] = a4;
  v23[6] = a5;
  v23[7] = a6;
  v23[8] = a7;
  v24 = OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_cachePolicy;
  v25 = sub_219BEEA84();
  v26 = *(v25 - 8);
  v27 = *(v26 + 16);
  v48 = a8;
  v27(v23 + v24, a8, v25);
  v28 = *(a1 + 32);
  *(v23 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor) = v28;
  sub_2186C6148(0, &qword_280E8E860, 0x277D30F38);

  swift_unknownObjectRetain();
  v29 = v28;
  *(v23 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_dateRange) = sub_219BF5F34();
  v30 = [a7 autoRefreshMinimumInterval];
  swift_unknownObjectRelease();
  *(v23 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_refreshInterval) = v30;
  v31 = v46;
  *(v23 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsOnboardingState) = v45;
  *(v23 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_subscriptionController) = v31;
  *(v23 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability) = v47;
  *(v23 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult) = a12;
  if (a12)
  {

    sub_219BF4404();

    v32 = v42;
    sub_219BF3FA4();

    sub_219BF4A64();
    (*(v43 + 8))(v32, v44);
    v33 = sub_219BF1F74();
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
  }

  v52 = v33;
  v34 = [sub_219BF6394() asSportsEvent];
  swift_unknownObjectRelease();

  if (!v34)
  {
    goto LABEL_10;
  }

  v35 = [v34 eventCompetitorTags];
  if (!v35)
  {
    swift_unknownObjectRelease();
LABEL_10:
    (*(v26 + 8))(v48, v25);
    goto LABEL_11;
  }

  v36 = v35;
  sub_2186D6710(0, &qword_280E8E420, &protocolRef_FCSportsProviding);
  v37 = sub_219BF5924();

  v50 = 0;
  v51 = 0xE000000000000000;
  sub_219BF7314();

  v50 = 0xD00000000000001FLL;
  v51 = 0x8000000219CF11D0;
  if (v37 >> 62)
  {
    v38 = sub_219BF7214();
  }

  else
  {
    v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = v38;
  v39 = sub_219BF7894();
  MEMORY[0x21CECC330](v39);

  sub_219497B60(&v50, v50, v51);
  swift_unknownObjectRelease();
  (*(v26 + 8))(v48, v25);

LABEL_11:
  *(v23 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_selectors) = v52;
  return v23;
}

void *sub_218CBB07C(void *a1)
{
  v62 = sub_219BF4AC4();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CBC130(0, &unk_280EE6850, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType, sub_2186D6710);
  v65 = v3;
  v63 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v66 = &v55 - v4;
  sub_218CBC130(0, &unk_280EE66F0, &qword_280E8DE40, 0x277D31330, sub_2186C6148);
  v67 = v5;
  v64 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v68 = &v55 - v6;
  v71 = sub_219BEEA84();
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v72 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CBC130(0, &qword_280EE6720, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration, sub_2186D6710);
  v75 = v8;
  v70 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v74 = &v55 - v9;
  sub_218CBC130(0, &unk_280EE66C0, &qword_280E8DDC0, 0x277D311C0, sub_2186C6148);
  v11 = v10;
  v73 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - v12;
  sub_218CBC3F0(0, &qword_27CC10BE8, MEMORY[0x277D844C8]);
  v15 = v14;
  v16 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v18 = &v55 - v17;
  v19 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_218CBC18C();
  v20 = v76;
  sub_219BF7B34();
  if (!v20)
  {
    v59 = v16;
    type metadata accessor for TagFeedServiceContext(0);
    LOBYTE(v79) = 0;
    sub_2186F7110(&unk_27CC10BF8, type metadata accessor for TagFeedServiceContext, &unk_219C7A2C4);
    sub_219BF7734();
    v21 = v92;
    type metadata accessor for TagFeedContentConfig();
    LOBYTE(v79) = 1;
    v22 = sub_2186F7110(&qword_280ECCCF0, type metadata accessor for TagFeedContentConfig, &unk_219C1E4F8);
    sub_219BF7734();
    v57 = v22;
    v58 = v21;
    v76 = v91;
    type metadata accessor for TagFeedConfigData(0);
    LOBYTE(v79) = 2;
    v23 = sub_2186F7110(&qword_27CC10C08, type metadata accessor for TagFeedConfigData, &unk_219CB6B48);
    sub_219BF7734();
    v56 = v23;
    v24 = v90;
    LOBYTE(v79) = 1;
    sub_219BF76E4();
    v26 = v89;
    LOBYTE(v79) = 2;
    sub_219BF76E4();
    v57 = v26;
    v56 = v24;
    v27 = v88;
    LOBYTE(v79) = 5;
    sub_218CBC1E0();
    sub_219BF7734();
    v55 = v27;
    sub_219BE3384();
    (*(v73 + 8))(v13, v11);
    v28 = v87;
    LOBYTE(v79) = 6;
    sub_218CBC264();
    v30 = v74;
    v29 = v75;
    sub_219BF7734();
    sub_219BE3384();
    (*(v70 + 8))(v30, v29);
    v31 = v86;
    LOBYTE(v79) = 7;
    sub_2186F7110(&qword_280E91980, MEMORY[0x277D32228], MEMORY[0x277D32238]);
    sub_219BF7734();
    type metadata accessor for FCSportsOnboardingState(0);
    LOBYTE(v79) = 9;
    sub_2186F7110(&qword_280E8DEF8, type metadata accessor for FCSportsOnboardingState, &protocol conformance descriptor for FCSportsOnboardingState);
    sub_219BF7734();
    v32 = v85;
    LOBYTE(v79) = 8;
    sub_218CBC2E8();
    v75 = v15;
    v33 = v18;
    sub_219BF7734();
    v34 = v67;
    v35 = v68;
    sub_219BE3384();
    (*(v64 + 8))(v35, v34);
    v36 = v84;
    LOBYTE(v79) = 10;
    sub_218CBC36C();
    sub_219BF7734();
    v37 = v65;
    v38 = v66;
    sub_219BE3384();
    (*(v63 + 8))(v38, v37);
    v74 = v83;
    sub_219BF4424();
    LOBYTE(v79) = 11;
    sub_2186F7110(&qword_27CC10C10, MEMORY[0x277D34410], MEMORY[0x277D34420]);
    sub_219BF76E4();
    v73 = v82;
    type metadata accessor for TagFeedServiceConfig(0);
    v15 = swift_allocObject();
    *(v15 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_canCache) = 0;
    v39 = v58;
    v40 = v76;
    v15[2] = v58;
    v15[3] = v40;
    v41 = v57;
    v15[4] = v56;
    v15[5] = v41;
    v15[6] = v55;
    v15[7] = v28;
    v42 = v31;
    v15[8] = v31;
    (*(v69 + 16))(v15 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_cachePolicy, v72, v71);
    v43 = *(v39 + 32);
    *(v15 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor) = v43;
    sub_2186C6148(0, &qword_280E8E860, 0x277D30F38);

    swift_unknownObjectRetain();
    v44 = v43;
    *(v15 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_dateRange) = sub_219BF5F34();
    v45 = [v42 autoRefreshMinimumInterval];
    swift_unknownObjectRelease();
    *(v15 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_refreshInterval) = v45;
    *(v15 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsOnboardingState) = v32;
    *(v15 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_subscriptionController) = v36;
    v46 = v73;
    *(v15 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_featureAvailability) = v74;
    *(v15 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_sportsEventVisualizationResult) = v46;
    if (v46)
    {

      sub_219BF4404();

      v47 = v60;
      sub_219BF3FA4();

      sub_219BF4A64();
      (*(v61 + 8))(v47, v62);
      v48 = sub_219BF1F74();
    }

    else
    {
      v48 = MEMORY[0x277D84FA0];
    }

    v81 = v48;
    v49 = [sub_219BF6394() asSportsEvent];
    swift_unknownObjectRelease();

    if (v49)
    {
      v50 = [v49 eventCompetitorTags];
      if (v50)
      {
        v51 = v50;
        sub_2186D6710(0, &qword_280E8E420, &protocolRef_FCSportsProviding);
        v52 = sub_219BF5924();

        v79 = 0;
        v80 = 0xE000000000000000;
        sub_219BF7314();

        v79 = 0xD00000000000001FLL;
        v80 = 0x8000000219CF11D0;
        if (v52 >> 62)
        {
          v53 = sub_219BF7214();
        }

        else
        {
          v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v78 = v53;
        v54 = sub_219BF7894();
        MEMORY[0x21CECC330](v54);

        sub_219497B60(&v79, v79, v80);
        swift_unknownObjectRelease();
        (*(v69 + 8))(v72, v71);
        (*(v59 + 8))(v33, v75);

        goto LABEL_15;
      }

      swift_unknownObjectRelease();
    }

    (*(v69 + 8))(v72, v71);
    (*(v59 + 8))(v33, v75);
LABEL_15:
    *(v15 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_selectors) = v81;
    __swift_destroy_boxed_opaque_existential_1(v77);
    return v15;
  }

  __swift_destroy_boxed_opaque_existential_1(v77);
  return v15;
}

void sub_218CBC130(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BE3474();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218CBC18C()
{
  result = qword_27CC10BF0;
  if (!qword_27CC10BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10BF0);
  }

  return result;
}

unint64_t sub_218CBC1E0()
{
  result = qword_280EE66D0;
  if (!qword_280EE66D0)
  {
    sub_218CBC130(255, &unk_280EE66C0, &qword_280E8DDC0, 0x277D311C0, sub_2186C6148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE66D0);
  }

  return result;
}

unint64_t sub_218CBC264()
{
  result = qword_280EE6730;
  if (!qword_280EE6730)
  {
    sub_218CBC130(255, &qword_280EE6720, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration, sub_2186D6710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE6730);
  }

  return result;
}

unint64_t sub_218CBC2E8()
{
  result = qword_280EE6700;
  if (!qword_280EE6700)
  {
    sub_218CBC130(255, &unk_280EE66F0, &qword_280E8DE40, 0x277D31330, sub_2186C6148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE6700);
  }

  return result;
}

unint64_t sub_218CBC36C()
{
  result = qword_280EE6860;
  if (!qword_280EE6860)
  {
    sub_218CBC130(255, &unk_280EE6850, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType, sub_2186D6710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE6860);
  }

  return result;
}

void sub_218CBC3F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218CBC18C();
    v7 = a3(a1, &type metadata for TagFeedServiceConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218CBC454()
{
  result = qword_27CC10C40;
  if (!qword_27CC10C40)
  {
    sub_2186DD304(255, &qword_27CC10C38, type metadata accessor for TagFeedContentConfig, MEMORY[0x277D83D88]);
    sub_2186F7110(&qword_27CC10C28, type metadata accessor for TagFeedContentConfig, &unk_219C1E4D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10C40);
  }

  return result;
}

unint64_t sub_218CBC52C()
{
  result = qword_27CC10C50;
  if (!qword_27CC10C50)
  {
    sub_2186DD304(255, &qword_27CC10C48, type metadata accessor for TagFeedConfigData, MEMORY[0x277D83D88]);
    sub_2186F7110(&qword_27CC10C30, type metadata accessor for TagFeedConfigData, &unk_219CB6B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10C50);
  }

  return result;
}

unint64_t sub_218CBC604()
{
  result = qword_280EE66E0;
  if (!qword_280EE66E0)
  {
    sub_218CBC130(255, &unk_280EE66C0, &qword_280E8DDC0, 0x277D311C0, sub_2186C6148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE66E0);
  }

  return result;
}

unint64_t sub_218CBC688()
{
  result = qword_280EE6740;
  if (!qword_280EE6740)
  {
    sub_218CBC130(255, &qword_280EE6720, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration, sub_2186D6710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE6740);
  }

  return result;
}

unint64_t sub_218CBC70C()
{
  result = qword_280EE6710;
  if (!qword_280EE6710)
  {
    sub_218CBC130(255, &unk_280EE66F0, &qword_280E8DE40, 0x277D31330, sub_2186C6148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE6710);
  }

  return result;
}

unint64_t sub_218CBC790()
{
  result = qword_280EE6870;
  if (!qword_280EE6870)
  {
    sub_218CBC130(255, &unk_280EE6850, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType, sub_2186D6710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE6870);
  }

  return result;
}

unint64_t sub_218CBC814()
{
  result = qword_27CC10C60;
  if (!qword_27CC10C60)
  {
    sub_2186DD304(255, &unk_280E8FE30, MEMORY[0x277D34410], MEMORY[0x277D83D88]);
    sub_2186F7110(&qword_27CC10C68, MEMORY[0x277D34410], MEMORY[0x277D34418]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10C60);
  }

  return result;
}

unint64_t sub_218CBC900()
{
  result = qword_27CC10C70;
  if (!qword_27CC10C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10C70);
  }

  return result;
}

unint64_t sub_218CBC958()
{
  result = qword_27CC10C78;
  if (!qword_27CC10C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10C78);
  }

  return result;
}

unint64_t sub_218CBC9B0()
{
  result = qword_27CC10C80;
  if (!qword_27CC10C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC10C80);
  }

  return result;
}

unint64_t sub_218CBCA04(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_218CBCA50(void *a1)
{
  v2 = sub_219BDEED4();
  v3 = *(v2 - 8);
  v16 = v2;
  v17 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE14C4();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE14A4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21999FD58(v8);
  v13 = [a1 identifier];
  sub_219BF5414();

  sub_219BE1484();
  sub_218CBCD58(&qword_280EE8010, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
  sub_219BDD1F4();
  (*(v10 + 8))(v12, v9);
  sub_21999FD58(v8);
  sub_219BDEEC4();
  sub_218CBCD58(&unk_280EE8930, MEMORY[0x277D2D750], MEMORY[0x277D2D748]);
  v14 = v16;
  sub_219BDD1F4();
  return (*(v17 + 8))(v5, v14);
}

uint64_t sub_218CBCD58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of StreamingTagResults.expand(location:transform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 24))(a1, a2, a3, a4);
}

{
  return (*(a5 + 32))(a1, a2, a3, a4);
}

uint64_t sub_218CBCE10()
{
  v1 = objc_opt_self();
  v0[32] = v1;
  v2 = [v1 currentNotificationCenter];
  v0[33] = v2;
  v0[2] = v0;
  v0[7] = v0 + 29;
  v0[3] = sub_218CBCF48;
  v3 = swift_continuation_init();
  sub_218CBDB74(0);
  v0[25] = v4;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_218CBD530;
  v0[21] = &block_descriptor_49;
  v0[22] = v3;
  [v2 getNotificationSettingsWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_218CBCF48()
{

  return MEMORY[0x2822009F8](sub_218CBD028, 0, 0);
}

uint64_t sub_218CBD028()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 264);
  *(v0 + 272) = v1;

  if ([v1 authorizationStatus] - 1 > 1 || objc_msgSend(v1, sel_badgeSetting))
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 248);
    v6 = [*(v0 + 256) currentNotificationCenter];
    *(v0 + 280) = v6;
    v7 = *(v5 + 16);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 232;
    *(v0 + 88) = sub_218CBD1DC;
    v8 = swift_continuation_init();
    sub_218CBDC28(0);
    *(v0 + 200) = v9;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_218CBD594;
    *(v0 + 168) = &block_descriptor_12_2;
    *(v0 + 176) = v8;
    [v6 requestAuthorizationWithOptions:v7 completionHandler:v0 + 144];

    return MEMORY[0x282200938](v0 + 80);
  }
}

uint64_t sub_218CBD1DC()
{
  v1 = *(*v0 + 112);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_218CBD350;
  }

  else
  {
    v2 = sub_218CBD2EC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218CBD2EC()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_218CBD350(uint64_t a1)
{
  v19 = v1;
  v2 = v1[35];
  swift_willThrow();

  if (qword_280EE5FC8 != -1)
  {
    swift_once();
  }

  v3 = v1[36];
  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F62670);
  v5 = v3;
  v6 = sub_219BE5414();
  v7 = sub_219BF61F4();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[36];
  v10 = v1[34];
  if (v8)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = sub_219BF7A04();
    v15 = sub_2186D1058(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2186C1000, v6, v7, "Failed to request fixed notification authorization with error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x21CECF960](v12, -1, -1);
    MEMORY[0x21CECF960](v11, -1, -1);
  }

  else
  {
  }

  v16 = v1[1];

  return v16();
}

uint64_t sub_218CBD530(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x282200948](v4);
}

uint64_t sub_218CBD594(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_218A450F0();
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

double sub_218CBD664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218760638(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = sub_219BF5BF4();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v13[5] = sub_2187A913C;
  v13[6] = v10;

  sub_218AB3D80(0, 0, v9, &unk_219C2C5E0, v13);

  return result;
}

uint64_t sub_218CBD7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  return MEMORY[0x2822009F8](sub_218CBD7F0, 0, 0);
}

uint64_t sub_218CBD7F0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_218CBD8E4;

    return sub_218CBCDF0();
  }

  else
  {
    (*(v0 + 48))();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_218CBD8E4()
{

  return MEMORY[0x2822009F8](sub_218CBD9E0, 0, 0);
}

uint64_t sub_218CBD9E0()
{
  (*(v0 + 48))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218CBDA50()
{
  sub_21879D924();
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218CBDAAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187608D4;

  return sub_218CBD7CC(a1, v4, v5, v6, v7, v8);
}

void sub_218CBDB74(uint64_t a1)
{
  if (!qword_280E8EA50)
  {
    sub_218CBDBDC();
    v1 = sub_219BF5C44();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EA50);
    }
  }
}

unint64_t sub_218CBDBDC()
{
  result = qword_280E8DF88;
  if (!qword_280E8DF88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DF88);
  }

  return result;
}

void sub_218CBDC28(uint64_t a1)
{
  if (!qword_27CC10C90)
  {
    sub_218A450F0();
    v1 = sub_219BF5C44();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC10C90);
    }
  }
}

void sub_218CBDCC0(uint64_t a1)
{
  sub_219BED0C4();
  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v1 = sub_219BF6BB4();
  v2 = [objc_opt_self() configurationWithFont_];

  v3 = sub_219BF53D4();
  v4 = [objc_opt_self() systemImageNamed:v3 withConfiguration:v2];

  if (v4)
  {
    [v4 imageWithRenderingMode_];
  }

  else
  {
    __break(1u);
  }
}

void *sub_218CBDDF4()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t sub_218CBDE84(uint64_t a1, uint64_t a2)
{
  v4 = sub_218CBDFF0(&qword_27CC10CB0, &unk_219C2C704);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_218CBDFF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FollowingAudioModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_218CBE060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218CBE09C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 26) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = -a2;
    }
  }

  return result;
}

uint64_t sub_218CBE0E8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 41) = a2;
  return result;
}

void *sub_218CBE120@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
  type metadata accessor for TagFeedViewerViewControllerFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for TagFeedViewerModule();
    v8 = swift_allocObject();
    sub_2186CB1F0(v11, v8 + 16);
    *(v8 + 56) = v5;
    result = sub_2186CB1F0(&v9, v8 + 64);
    *(v8 + 104) = v6;
    a2[3] = v7;
    a2[4] = &protocol witness table for TagFeedViewerModule;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218CBE270@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EE4FA0, &protocolRef_TSSharedImageCacheType);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BF30C4();
    swift_allocObject();
    sub_219BF30B4();
    sub_218CC4D74(&qword_280E901E8, MEMORY[0x277D33CA0], MEMORY[0x277D33C98]);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE5010, MEMORY[0x277D6DB20], 1);
    result = sub_219BE1E34();
    if (v7)
    {
      v5 = sub_219BE58C4();
      swift_allocObject();
      result = sub_219BE58B4();
      v6 = MEMORY[0x277D6D2B0];
      a2[3] = v5;
      a2[4] = v6;
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

double sub_218CBE3E0()
{
  type metadata accessor for TagFeedViewerViewController(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280EC2F28, &protocol descriptor for TagFeedViewerStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280EC2F30, &protocol descriptor for TagFeedViewerRouterType, 1);
  sub_219BE2914();
  type metadata accessor for TagFeedViewerRouter();
  sub_219BE19C4();

  sub_2186C709C(0, qword_280EAE518, &protocol descriptor for TagFeedViewerEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EB6530, &protocol descriptor for TagFeedViewerInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EBFE38, &protocol descriptor for TagFeedViewerTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EB2180, &protocol descriptor for TagFeedViewerDataManagerType, 0);
  sub_219BE2914();
  type metadata accessor for TagFeedViewerDataManager();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_280E98828, &protocol descriptor for TagFeedViewerBarButtonItemFactoryType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280EE5170, MEMORY[0x277D6D9F8], 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EA4468, &protocol descriptor for TagFeedViewerTitleViewStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280E9E5A0, &protocol descriptor for TagFeedViewerTitleViewRendererType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280E94058, &protocol descriptor for TagFeedViewerSportsEventTitleViewStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E93970, &protocol descriptor for TagFeedViewerSportsEventTitleViewRendererType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E93188, &protocol descriptor for TagFeedViewerPuzzleFullArchiveTitleViewStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280E930B0, &protocol descriptor for TagFeedViewerPuzzleFullArchiveTitleViewRendererType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E9E5C0, &protocol descriptor for TagFeedViewerTitleViewProviderType, 1);
  sub_219BE2914();

  sub_219BE6DB4();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE7A84();
  sub_219BE2904();

  return result;
}

char *sub_218CBE9D4(void *a1)
{
  v2 = MEMORY[0x277D83D88];
  sub_218CC4A34(0, qword_280EAE4D0, type metadata accessor for TagFeedViewerLinkPresentation, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v132 = &v114 - v4;
  sub_218CC4A34(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v2);
  MEMORY[0x28223BE20](v5 - 8);
  v149 = &v114 - v6;
  v7 = sub_219BE7784();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_219BE8DD4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_36;
  }

  v14 = result;
  (*(v9 + 104))(v11, *MEMORY[0x277D6E318], v8);
  v15 = MEMORY[0x277D6CB60];
  sub_218CC4A34(0, &unk_280EE7BA0, MEMORY[0x277D6E330], MEMORY[0x277D6CB60]);
  swift_allocObject();
  v16 = sub_219BE20D4();
  sub_219BE7774();
  sub_218CC4A34(0, &qword_280EE7BC8, MEMORY[0x277D6DB58], v15);
  swift_allocObject();
  v17 = sub_219BE20D4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E560, 0x277D30FB0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v137 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  v146 = result;
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC2F28, &protocol descriptor for TagFeedViewerStylerType, 1);
  result = sub_219BE1E34();
  if (!v178[3])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EAE518, &protocol descriptor for TagFeedViewerEventHandlerType, 0);
  result = sub_219BE1E34();
  v145 = v176;
  if (!v176)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v131 = v177;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED4A68, &protocol descriptor for TagFeedModuleType, 1);
  result = sub_219BE1E34();
  if (!v175)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC7AF0, &protocol descriptor for MagazineGridModuleType, 1);
  result = sub_219BE1E34();
  if (!v173)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v150 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E98828, &protocol descriptor for TagFeedViewerBarButtonItemFactoryType, 1);
  result = sub_219BE1E34();
  if (!v171)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9E5C0, &protocol descriptor for TagFeedViewerTitleViewProviderType, 1);
  result = sub_219BE1E34();
  if (!v169[3])
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187E0FB8(0);
  result = sub_219BE1E24();
  v144 = result;
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5150, MEMORY[0x277D6DA40], 0);
  result = sub_219BE1E34();
  v136 = v167;
  if (!v167)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v130 = v168;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE50, MEMORY[0x277D343D8], 1);
  result = sub_219BE1E34();
  if (!v165)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  sub_219BF4E04();
  swift_allocObject();

  v148 = sub_219BF4DF4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v161)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v165 = v12;
  v166 = sub_218CC4D74(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  *&v164 = v14;
  sub_219BE6AE4();
  swift_allocObject();

  v147 = sub_219BE6AC4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedViewContext(0);
  result = sub_219BE1E24();
  v18 = v150;
  v143 = result;
  if (!result)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  result = sub_219BE1E24();
  v142 = result;
  if (!result)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890, 0x277D31390);
  result = sub_219BE1E24();
  v141 = result;
  if (!result)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE7A84();
  result = sub_219BE1E24();
  v140 = result;
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (!v165)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (!v162)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  type metadata accessor for TagFeedViewerBarAnimationCoordinator();
  v19 = swift_allocObject();
  v19[3] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for TagFeedViewerTitleViewAnimator();
  v19[16] = swift_allocObject();
  v20 = *MEMORY[0x277CDA7B8];
  v21 = objc_opt_self();

  v22 = [v21 functionWithName_];
  v23 = [objc_allocWithZone(MEMORY[0x277D6ED38]) initWithTimingFunction:v22 startValue:0.0 endValue:1.0 speed:2.0];

  v19[17] = v23;
  sub_2186CB1F0(&v164, (v19 + 6));
  sub_2186CB1F0(&v161, (v19 + 11));
  v19[4] = v17;
  v19[5] = v18;
  v129 = v19;
  sub_218718690(a1, &v164);
  type metadata accessor for TagFeedViewerMastheadViewProviderFactory();
  v24 = swift_allocObject();
  sub_2186CB1F0(&v164, v24 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  v25 = v159;
  if (!v159)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v128 = v160;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CC4A34(0, &qword_280E8F4E0, MEMORY[0x277D6DBB8], MEMORY[0x277D83940]);
  result = sub_219BE1DF4();
  v26 = v158;
  if (!v158)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  v133 = result;
  if (!result)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v126 = v26;
  v127 = v14;
  v138 = v25;
  v139 = v17;
  v134 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5974();
  result = sub_219BE1E24();
  if (result)
  {
    v135 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BEC004();
    sub_219BE1E34();
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v174, v175);
    v125 = &v114;
    v28 = MEMORY[0x28223BE20](v27);
    v30 = (&v114 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30, v28);
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v172, v173);
    v124 = &v114;
    v33 = MEMORY[0x28223BE20](v32);
    v35 = (&v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35, v33);
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v170, v171);
    v123 = &v114;
    v38 = MEMORY[0x28223BE20](v37);
    v40 = (&v114 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))(v40, v38);
    v42 = *v30;
    v43 = *v35;
    v44 = *v40;
    v45 = type metadata accessor for TagFeedModule();
    v166 = &off_282A766D8;
    v165 = v45;
    *&v164 = v42;
    v46 = type metadata accessor for MagazineGridModule();
    v163 = &off_282A9B468;
    v162 = v46;
    *&v161 = v43;
    v47 = type metadata accessor for TagFeedViewerBarButtonItemFactory();
    v156 = v47;
    v157 = &off_282A52F50;
    v155[0] = v44;
    v48 = objc_allocWithZone(type metadata accessor for TagFeedViewerViewController(0));
    v49 = __swift_mutable_project_boxed_opaque_existential_1(&v164, v165);
    v122 = &v114;
    v50 = MEMORY[0x28223BE20](v49);
    v52 = (&v114 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52, v50);
    v54 = __swift_mutable_project_boxed_opaque_existential_1(&v161, v162);
    v121 = &v114;
    v55 = MEMORY[0x28223BE20](v54);
    v57 = (&v114 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v58 + 16))(v57, v55);
    v59 = __swift_mutable_project_boxed_opaque_existential_1(v155, v156);
    v120 = &v114;
    v60 = MEMORY[0x28223BE20](v59);
    v62 = (&v114 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v63 + 16))(v62, v60);
    v64 = *v52;
    v65 = *v57;
    v66 = *v62;
    v154[3] = v45;
    v154[4] = &off_282A766D8;
    v154[0] = v64;
    v153[3] = v46;
    v153[4] = &off_282A9B468;
    v153[0] = v65;
    v152[3] = v47;
    v152[4] = &off_282A52F50;
    v152[0] = v66;
    v67 = &v48[qword_280EB6470];
    *v67 = 0;
    v67[1] = 0;
    v68 = &v48[qword_280EB6508];
    v69 = type metadata accessor for TagFeedViewerLinkPresentation(0);
    v70 = 1;
    v115 = *(*(v69 - 8) + 56);
    v115(v68, 1, 1, v69);
    v71 = qword_280EB6490;
    sub_218CC4A98();
    swift_allocObject();
    *&v48[v71] = sub_219BE3284();
    *&v48[qword_280EB6410] = 0;
    *&v48[qword_280EB6458] = 0;
    *&v48[qword_280EB63E0] = 1;
    *&v48[qword_280EB63D8] = 1;
    *&v48[qword_280EB63D0] = 1;
    *&v48[qword_280EB63C8] = 1;
    v72 = qword_280EB64E8;
    sub_219BE6C14();
    swift_allocObject();
    *&v48[v72] = sub_219BE6C04();
    v73 = qword_280EB64A0;
    sub_218CC4AF8(0, &qword_280EE7DF8, sub_218CC4B60, &type metadata for TagFeedViewerViewController.Event, MEMORY[0x277D6CAA0]);
    swift_allocObject();
    *&v48[v73] = sub_219BE1D34();
    *&v48[qword_280EB6400] = 0;
    v48[qword_280EB63E8] = 0;
    sub_218718690(v152, &v48[qword_280EB6438]);
    *&v48[qword_280EB6408] = v146;
    sub_218718690(v178, &v48[qword_280EB63A0]);
    v74 = &v48[qword_280EB64A8];
    v75 = v131;
    *v74 = v145;
    v74[1] = v75;
    sub_218718690(v154, &v48[qword_280EB6500]);
    sub_218718690(v153, &v48[qword_280EB6468]);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v137 = v137;
    v76 = sub_219047A64(v137);
    v78 = v77;
    v80 = v79;
    LODWORD(v57) = v81;
    v82 = &v48[qword_280EB6510];
    *v82 = v76;
    *(v82 + 1) = v77;
    *(v82 + 2) = v79;
    *(v82 + 12) = v81;
    v116 = BYTE1(v81);
    sub_218CC4BB4(v76, v77, v79, v81, BYTE1(v81));
    v131 = v76;
    v118 = v80;
    v119 = v78;
    v117 = v57;
    v83 = sub_2190478F8(v76);
    v84 = v132;
    if (v83)
    {
      sub_2199F3AD8(MEMORY[0x277D84F90], v132);
      v70 = 0;
    }

    v115(v84, v70, 1, v69);
    swift_beginAccess();
    sub_218CC4CE0(v84, v68);
    swift_endAccess();
    sub_218718690(v169, &v48[qword_280EB64D8]);
    *&v48[qword_280EB6440] = v144;
    v85 = v147;
    *&v48[qword_280EB63F8] = v148;
    *&v48[qword_280EB6390] = v85;
    v86 = v142;
    *&v48[qword_280EB64F8] = v143;
    *&v48[qword_280EB6520] = v86;
    v87 = v140;
    *&v48[qword_280EB6388] = v141;
    *&v48[qword_280EB6420] = v87;
    v88 = v87;
    v89 = v138;
    *&v48[qword_280EB6450] = v139;
    *&v48[qword_280EB6478] = v150;
    v90 = v133;
    *&v48[qword_280EB64C8] = v134;
    v91 = &v48[qword_280EB64C0];
    v92 = v128;
    *v91 = v89;
    v91[1] = v92;
    *&v48[qword_280EB6430] = v126;
    *&v48[qword_280EB6460] = v90;
    *&v48[qword_280EB64B8] = v135;
    sub_21881AC1C(v149, &v48[qword_280EB6488]);
    v93 = v88;

    v132 = v93;

    v143 = v143;
    v142 = v142;
    v141 = v141;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    v94 = sub_219BE7E64();
    sub_218CC4D74(qword_280E9A2F8, type metadata accessor for TagFeedViewerBarAnimationCoordinator, &unk_219C284C0);
    v95 = v94;
    sub_219BE7EE4();
    *(*&v95[qword_280EB64A8] + 24) = &off_282A98740;
    swift_unknownObjectWeakAssign();
    sub_218CC4D74(&qword_280EB6370, type metadata accessor for TagFeedViewerViewController, &unk_219CC14A0);
    v96 = v95;
    sub_219BE7E24();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_219BE2104();

    __swift_destroy_boxed_opaque_existential_1(v151);
    if ((sub_219BED0C4() & 1) == 0)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      goto LABEL_33;
    }

    if ([v137 feedConfiguration] == 3)
    {
      v97 = [v137 alternativeFeedDescriptor];
      if (!v97)
      {
        v107 = sub_219BE7E54();
        [v107 setImage_];

        v108 = sub_219BE7E54();
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v110 = objc_opt_self();
        v111 = [v110 bundleForClass_];
        sub_219BDB5E4();

        v112 = sub_219BF53D4();

        [v108 setTitle_];

        v104 = sub_219BE7E54();
        v113 = [v110 bundleForClass_];
        sub_219BDB5E4();

        v106 = sub_219BF53D4();

        [v104 setAccessibilityLabel_];

        swift_unknownObjectRelease();
        goto LABEL_31;
      }
    }

    v98 = sub_219BE7E54();
    [v98 setImage_];

    v99 = sub_219BE7E54();
    type metadata accessor for Localized();
    v100 = swift_getObjCClassFromMetadata();
    v101 = objc_opt_self();
    v102 = [v101 bundleForClass_];
    sub_219BDB5E4();

    v103 = sub_219BF53D4();

    [v99 setTitle_];

    v104 = sub_219BE7E54();
    v105 = [v101 bundleForClass_];
    sub_219BDB5E4();

    v106 = sub_219BF53D4();

    [v104 setAccessibilityLabel_];

    swift_unknownObjectRelease();
LABEL_31:
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

LABEL_33:

    sub_218B09E88(v131, v119, v118, v117, v116);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    sub_218BFB694(v149);
    __swift_destroy_boxed_opaque_existential_1(v169);
    __swift_destroy_boxed_opaque_existential_1(v178);
    __swift_destroy_boxed_opaque_existential_1(v152);
    __swift_destroy_boxed_opaque_existential_1(v153);
    __swift_destroy_boxed_opaque_existential_1(v154);
    __swift_destroy_boxed_opaque_existential_1(v155);
    __swift_destroy_boxed_opaque_existential_1(&v161);
    __swift_destroy_boxed_opaque_existential_1(&v164);

    __swift_destroy_boxed_opaque_existential_1(v170);
    __swift_destroy_boxed_opaque_existential_1(v172);
    __swift_destroy_boxed_opaque_existential_1(v174);
    return v96;
  }

LABEL_57:
  __break(1u);
  return result;
}

void sub_218CC04B8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  v4 = sub_219BE1E24();
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  [v4 addObserver_];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E890, 0x277D31390);
  v6 = sub_219BE1E24();
  if (!v6)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 addObserver_];
}

void *sub_218CC05C0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BED0C4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v4)
  {
    sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
    result = sub_219BE1E34();
    if (v57)
    {
      v49 = a2;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_2186C709C(0, qword_280EA4468, &protocol descriptor for TagFeedViewerTitleViewStylerType, 1);
      result = sub_219BE1E34();
      if (v55)
      {
        v6 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
        v48[3] = v48;
        v7 = MEMORY[0x28223BE20](v6);
        v9 = (v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v10 + 16))(v9, v7);
        v11 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
        v48[2] = v48;
        v12 = MEMORY[0x28223BE20](v11);
        v14 = (v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v15 + 16))(v14, v12);
        v16 = *v9;
        v17 = *v14;
        v18 = type metadata accessor for BaseStyler(0);
        v53[3] = v18;
        v19 = sub_218CC4D74(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
        v53[4] = v19;
        v53[0] = v16;
        v20 = type metadata accessor for TagFeedViewerTitleViewStyler();
        v51 = v20;
        v21 = sub_218CC4D74(&qword_280EB2168, type metadata accessor for TagFeedViewerTitleViewStyler, &unk_219C8F2F8);
        v52 = v21;
        v50[0] = v17;
        v22 = type metadata accessor for TagFeedViewerModernStyler();
        v23 = swift_allocObject();
        v24 = __swift_mutable_project_boxed_opaque_existential_1(v53, v18);
        v48[1] = v48;
        v25 = MEMORY[0x28223BE20](v24);
        v27 = (v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v28 + 16))(v27, v25);
        v29 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
        v30 = MEMORY[0x28223BE20](v29);
        v32 = (v48 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v33 + 16))(v32, v30);
        v34 = *v27;
        v35 = *v32;
        v23[5] = v18;
        v23[6] = v19;
        v23[2] = v34;
        v23[10] = v20;
        v23[11] = v21;
        v23[7] = v35;
        __swift_destroy_boxed_opaque_existential_1(v50);
        __swift_destroy_boxed_opaque_existential_1(v53);
        __swift_destroy_boxed_opaque_existential_1(v54);
        result = __swift_destroy_boxed_opaque_existential_1(v56);
        v36 = &off_282A965B0;
        a2 = v49;
LABEL_9:
        a2[3] = v22;
        a2[4] = v36;
        *a2 = v23;
        return result;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (!v57)
  {
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA4468, &protocol descriptor for TagFeedViewerTitleViewStylerType, 1);
  result = sub_219BE1E34();
  if (!v55)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NavigationBarBackgroundImageProviderFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v37 = result;
    v38 = __swift_mutable_project_boxed_opaque_existential_1(v56, v57);
    v39 = MEMORY[0x28223BE20](v38);
    v41 = (v48 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41, v39);
    v43 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
    v44 = MEMORY[0x28223BE20](v43);
    v46 = (v48 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46, v44);
    v23 = sub_218CC3FE0(*v41, *v46, v37);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v56);
    result = type metadata accessor for TagFeedViewerStyler();
    v22 = result;
    v36 = &off_282A96610;
    goto LABEL_9;
  }

LABEL_14:
  __break(1u);
  return result;
}

void *sub_218CC0CA0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
  sub_218CC4AF8(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  result = sub_219BE1E34();
  if (v10)
  {
    v7 = type metadata accessor for TagFeedViewerRouter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v11, v8 + 24);
    *(v8 + 64) = v6;
    *(v8 + 72) = v5;
    result = sub_2186CB1F0(&v9, v8 + 80);
    a2[3] = v7;
    a2[4] = &off_282A6C9B0;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_218CC0E38(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TagFeedViewerViewController(0);
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_218CC0EB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6530, &protocol descriptor for TagFeedViewerInteractorType, 0);
  result = sub_219BE1E34();
  if (!v76)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC2F30, &protocol descriptor for TagFeedViewerRouterType, 1);
  result = sub_219BE1E34();
  if (!v75)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBFE38, &protocol descriptor for TagFeedViewerTrackerType, 1);
  result = sub_219BE1E34();
  if (!v73)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED4520, &protocol descriptor for UpsellManagerType, 1);
  result = sub_219BE1E34();
  if (!v71)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v49 = v77;
  v50 = v76;
  v51 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6340, MEMORY[0x277D35080], 1);
  result = sub_219BE1E34();
  if (v69)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
    v48[5] = v48;
    v6 = MEMORY[0x28223BE20](v5);
    v8 = (v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
    v48[4] = v48;
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
    v48[3] = v48;
    v16 = MEMORY[0x28223BE20](v15);
    v18 = (v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v8;
    v21 = *v13;
    v22 = *v18;
    v23 = type metadata accessor for TagFeedViewerRouter();
    v67[3] = v23;
    v67[4] = &off_282A6C9B0;
    v67[0] = v20;
    v24 = type metadata accessor for TagFeedViewerTracker();
    v65 = v24;
    v66 = &off_282A41A00;
    v64[0] = v21;
    v25 = type metadata accessor for UpsellManager();
    v62 = v25;
    v63 = &off_282A95970;
    v61[0] = v22;
    type metadata accessor for TagFeedViewerEventHandler();
    v26 = swift_allocObject();
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v67, v23);
    v48[2] = v48;
    v28 = MEMORY[0x28223BE20](v27);
    v30 = (v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30, v28);
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v64, v65);
    v48[1] = v48;
    v33 = MEMORY[0x28223BE20](v32);
    v35 = (v48 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35, v33);
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
    v38 = MEMORY[0x28223BE20](v37);
    v40 = (v48 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))(v40, v38);
    v42 = *v30;
    v43 = *v35;
    v44 = *v40;
    v59 = v23;
    v60 = &off_282A6C9B0;
    *&v58 = v42;
    v56 = v24;
    v57 = &off_282A41A00;
    *&v55 = v43;
    v53 = v25;
    v54 = &off_282A95970;
    *&v52 = v44;
    v26[3] = 0;
    swift_unknownObjectWeakInit();
    v45 = v49;
    v46 = v50;
    v26[4] = v50;
    v26[5] = v45;
    sub_2186CB1F0(&v58, (v26 + 6));
    sub_2186CB1F0(&v55, (v26 + 11));
    sub_2186CB1F0(&v52, (v26 + 16));
    sub_2186CB1F0(&v68, (v26 + 21));
    *(v46 + 24) = &off_282A51F60;
    swift_unknownObjectWeakAssign();
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v64);
    __swift_destroy_boxed_opaque_existential_1(v67);
    __swift_destroy_boxed_opaque_existential_1(v70);
    __swift_destroy_boxed_opaque_existential_1(v72);
    result = __swift_destroy_boxed_opaque_existential_1(v74);
    v47 = v51;
    *v51 = v26;
    v47[1] = &off_282A51FB0;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_218CC15D8(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218CC4A34(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB2180, &protocol descriptor for TagFeedViewerDataManagerType, 0);
  sub_219BE1E34();
  v7 = v26;
  if (!v26)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for FeedViewContext(0);
  v9 = sub_219BE1E24();
  if (!v9)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v10 = v9;
  v23 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  v11 = sub_219BE1E24();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v12 = v11;
  v13 = NewsCoreUserDefaults();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FFC0, MEMORY[0x277D34188], 0);
  sub_219BE1E34();
  v14 = v24;
  if (v24)
  {
    v15 = v25;
    type metadata accessor for TagFeedViewerInteractor();
    v16 = swift_allocObject();
    *(v16 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v16 + 120) = 0;
    *(v16 + 104) = 0u;
    *(v16 + 88) = 0u;
    *(v16 + 128) = -256;
    *(v16 + 32) = v7;
    *(v16 + 40) = v8;
    *(v16 + 48) = v10;
    *(v16 + 56) = v12;
    *(v16 + 64) = v13;
    *(v16 + 72) = v14;
    *(v16 + 80) = v15;
    *(v7 + OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_delegate + 8) = &off_282A37310;
    swift_unknownObjectWeakAssign();
    v17 = sub_219BF5BF4();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = v16;
    swift_unknownObjectRetain();
    v19 = v10;
    swift_unknownObjectRetain();
    v20 = v13;
    swift_unknownObjectRetain();

    sub_218AB3D80(0, 0, v6, &unk_219C2C930, v18);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v21 = v23;
    *v23 = v16;
    v21[1] = &off_282A37330;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_218CC1938@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TagFeedViewerTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A41A00;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218CC19C0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0, 0x277D30EE0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v61)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  *(&v51 + 1) = v6;
  v52 = sub_218CC4D74(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  *&v50 = v7;
  sub_219BE89E4();
  swift_allocObject();
  v8 = sub_219BE8994();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v48 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  if (!v63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA990, &protocol descriptor for IssueModelFactoryType, 1);
  result = sub_219BE1E34();
  if (!v62)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v47 = v64;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE20, MEMORY[0x277D34428], 1);
  result = sub_219BE1E34();
  if (!v60[3])
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90250, MEMORY[0x277D33C48], 0);
  result = sub_219BE1E34();
  v46 = v58;
  if (!v58)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v44 = v63;
  v45 = a2;
  v9 = v8;
  v43 = v59;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218CC4AF8(0, &qword_280E90710, sub_2186F7720, &type metadata for TagFeedOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  v42 = result;
  if (result)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(&v61, v62);
    v41[2] = v41;
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v16 = type metadata accessor for IssueModelFactory();
    v56 = v16;
    v57 = &off_282A725A8;
    v55[0] = v15;
    v41[0] = type metadata accessor for TagFeedViewerDataManager();
    v17 = objc_allocWithZone(v41[0]);
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
    v41[1] = v41;
    v19 = MEMORY[0x28223BE20](v18);
    v21 = (v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21, v19);
    v23 = *v21;
    v54[3] = v16;
    v54[4] = &off_282A725A8;
    v54[0] = v23;
    *&v17[OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v24 = &v17[OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager____lazy_storage___unavailableItemAlpha];
    *v24 = 0;
    v24[8] = 1;
    *&v17[OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_topLevelSportsTags] = 0;
    v25 = OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager__request;
    v52 = 0;
    v50 = 0u;
    v51 = 0u;
    v53 = -256;
    sub_218CC4A34(0, &unk_280EE7070, sub_218CC486C, MEMORY[0x277D6CF18]);
    swift_allocObject();
    *&v17[v25] = sub_219BE2E64();
    *&v17[OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_cloudContext] = v5;
    *&v17[OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_commandCenter] = v9;
    v26 = v47;
    v27 = v48;
    *&v17[OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_subscriptionController] = v48;
    v28 = &v17[OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_tagService];
    *v28 = v44;
    *(v28 + 1) = v26;
    sub_218718690(v54, &v17[OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_issueModelFactory]);
    v29 = v5;

    v48 = v27;
    swift_unknownObjectRetain();
    v30 = [v29 privateChannelMembershipController];
    *&v17[OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_membershipController] = v30;
    sub_218718690(v60, &v17[OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_sportsGraphManager]);
    v31 = &v17[OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_sportsDataService];
    v33 = v42;
    v32 = v43;
    *v31 = v46;
    *(v31 + 1) = v32;
    *&v17[OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_offlineManager] = v33;
    v49.receiver = v17;
    v49.super_class = v41[0];
    swift_unknownObjectRetain();
    v47 = v33;
    v34 = objc_msgSendSuper2(&v49, sel_init);
    v35 = *(v34 + OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_membershipController);
    v36 = v34;
    [v35 addObserver_];
    v37 = *(v36 + OBJC_IVAR____TtC7NewsUI224TagFeedViewerDataManager_offlineManager);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = v37;
    v39 = sub_219BF1AF4();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v55);
    result = __swift_destroy_boxed_opaque_existential_1(&v61);
    v40 = v45;
    *v45 = v36;
    v40[1] = &off_282A946F0;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_218CC2188(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E560, 0x277D30FB0);
  v3 = sub_219BE1E24();
  if (!v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  v8 = v3;
  if ([v3 feedConfiguration] == 11)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, qword_280E99080, &protocol descriptor for PuzzleArchiveFilterOptionsManagerType, 1);
    sub_219BE1E34();
    if (v10)
    {
      sub_2186CB1F0(&v9, v11);
      __swift_project_boxed_opaque_existential_1(v11, v12);
      sub_2195798FC(&off_282A946E0, &v9);
      __swift_destroy_boxed_opaque_existential_1(&v9);
      __swift_project_boxed_opaque_existential_1(v11, v12);
      v4 = [objc_msgSend(v8 backingTag)];
      swift_unknownObjectRelease();
      v5 = sub_219BF5414();
      v7 = v6;

      sub_2195791EC(v5, v7);

      __swift_destroy_boxed_opaque_existential_1(v11);
      return;
    }

    goto LABEL_9;
  }
}

void *sub_218CC235C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v42)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD80, &protocolRef_FCCoreConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E99080, &protocol descriptor for PuzzleArchiveFilterOptionsManagerType, 1);
  result = sub_219BE1E34();
  if (!v41)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE6DB4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = result;
  v34 = v5;
  v35 = v43;
  v36 = v42;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = result;
  v31 = v7;
  v32 = v6;
  v33 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC3EF0, &protocol descriptor for PuzzleRadarReporterType, 0);
  result = sub_219BE1E34();
  v10 = v38;
  if (v38)
  {
    v11 = v39;
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
    v30 = &v30;
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v18 = type metadata accessor for PuzzleArchiveFilterOptionsManager();
    v37[3] = v18;
    v37[4] = &off_282A79210;
    v37[0] = v17;
    v19 = type metadata accessor for TagFeedViewerBarButtonItemFactory();
    v20 = swift_allocObject();
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v18);
    v22 = MEMORY[0x28223BE20](v21);
    v24 = (&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = *v24;
    v20[10] = v18;
    v20[11] = &off_282A79210;
    v27 = v35;
    v20[2] = v36;
    v20[3] = v27;
    v28 = v34;
    v20[4] = v31;
    v20[5] = v28;
    v20[6] = v32;
    v20[7] = v26;
    v20[12] = v8;
    v20[13] = v9;
    v20[14] = v10;
    v20[15] = v11;
    __swift_destroy_boxed_opaque_existential_1(v37);
    result = __swift_destroy_boxed_opaque_existential_1(v40);
    v29 = v33;
    v33[3] = v19;
    v29[4] = &off_282A52F50;
    *v29 = v20;
    return result;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_218CC27E4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_219BF30C4();
  swift_allocObject();
  v3 = sub_219BF30B4();
  a1[3] = v2;
  result = sub_218CC4D74(&qword_280E901E8, MEMORY[0x277D33CA0], MEMORY[0x277D33C98]);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void *sub_218CC2870@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v11 = sub_218CC4D74(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for TagFeedViewerTitleViewStyler();
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
    __swift_destroy_boxed_opaque_existential_1(v21);
    a2[3] = v12;
    result = sub_218CC4D74(&qword_280EB2168, type metadata accessor for TagFeedViewerTitleViewStyler, &unk_219C8F2F8);
    a2[4] = result;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218CC2B00@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0, MEMORY[0x277D6D598], 1);
  result = sub_219BE1DF4();
  if (!v25[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA4468, &protocol descriptor for TagFeedViewerTitleViewStylerType, 1);
  result = sub_219BE1E34();
  if (!v24)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (&v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for TagFeedViewerTitleViewStyler();
    v22[3] = v12;
    v22[4] = sub_218CC4D74(&qword_280EB2168, type metadata accessor for TagFeedViewerTitleViewStyler, &unk_219C8F2F8);
    v22[0] = v11;
    v13 = type metadata accessor for TagFeedViewerTitleViewRenderer();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v12);
    v16 = MEMORY[0x28223BE20](v15);
    v18 = (&v22[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = sub_218CC44E0(v25, *v18, v5, v14);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v22);
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    a2[3] = v13;
    a2[4] = &off_282A79E20;
    *a2 = v20;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218CC2E30@<X0>(void *a1@<X0>, int64x2_t **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA4468, &protocol descriptor for TagFeedViewerTitleViewStylerType, 1);
  result = sub_219BE1E34();
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8E560, 0x277D30FB0);
    result = sub_219BE1E24();
    if (result)
    {
      v5 = result;
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      v7 = MEMORY[0x28223BE20](v6);
      v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v10 + 16))(v9, v7);
      v11 = *v9;
      v12 = type metadata accessor for TagFeedViewerTitleViewStyler();
      v22[3] = v12;
      v13 = sub_218CC4D74(&qword_280EB2168, type metadata accessor for TagFeedViewerTitleViewStyler, &unk_219C8F2F8);
      v22[4] = v13;
      v22[0] = v11;
      v14 = type metadata accessor for TagFeedViewerSportsEventTitleViewStyler();
      v15 = swift_allocObject();
      v16 = __swift_mutable_project_boxed_opaque_existential_1(v22, v12);
      v17 = MEMORY[0x28223BE20](v16);
      v19 = (v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v20 + 16))(v19, v17);
      v21 = *v19;
      v15[2].i64[1] = v12;
      v15[3].i64[0] = v13;
      v15[1].i64[0] = v21;
      v15[4] = vdupq_n_s64(0x4044000000000000uLL);
      v15[3].i64[1] = v5;
      __swift_destroy_boxed_opaque_existential_1(v22);
      result = __swift_destroy_boxed_opaque_existential_1(v23);
      a2[3] = v14;
      a2[4] = &off_282A31668;
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

void *sub_218CC30F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE5AC0, MEMORY[0x277D6D598], 1);
  result = sub_219BE1DF4();
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E94058, &protocol descriptor for TagFeedViewerSportsEventTitleViewStylerType, 1);
    result = sub_219BE1E34();
    if (v23)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (&v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for TagFeedViewerSportsEventTitleViewStyler();
      v21[3] = v11;
      v21[4] = &off_282A31668;
      v21[0] = v10;
      v12 = type metadata accessor for TagFeedViewerSportsEventTitleViewRenderer();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v11);
      v15 = MEMORY[0x28223BE20](v14);
      v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17, v15);
      v19 = *v17;
      v13[10] = v11;
      v13[11] = &off_282A31668;
      v13[7] = v19;
      sub_2186CB1F0(&v24, (v13 + 2));
      __swift_destroy_boxed_opaque_existential_1(v21);
      result = __swift_destroy_boxed_opaque_existential_1(v22);
      a2[3] = v12;
      a2[4] = &off_282A93F68;
      *a2 = v13;
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

uint64_t sub_218CC33A4@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TagFeedViewerPuzzleFullArchiveTitleViewStyler();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282A4D6E0;
  *a1 = result;
  return result;
}

void *sub_218CC33EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E93188, &protocol descriptor for TagFeedViewerPuzzleFullArchiveTitleViewStylerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for TagFeedViewerPuzzleFullArchiveTitleViewStyler();
    v19[3] = v10;
    v19[4] = &off_282A4D6E0;
    v19[0] = v9;
    v11 = type metadata accessor for TagFeedViewerPuzzleFullArchiveTitleViewRenderer();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A4D6E0;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A80D58;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218CC3618(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E560, 0x277D30FB0);
  v4 = sub_219BE1E24();
  if (!v4)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4;
  v6 = [v4 feedConfiguration];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v6 == 11)
  {
    sub_2186C709C(0, &unk_280E930B0, &protocol descriptor for TagFeedViewerPuzzleFullArchiveTitleViewRendererType, 1);
    sub_219BE1E34();
    if (v58)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v25 = sub_219BE1E24();
      if (v25)
      {
        v26 = v25;
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_2186C709C(0, qword_280E99080, &protocol descriptor for PuzzleArchiveFilterOptionsManagerType, 1);
        sub_219BE1E34();
        if (v55)
        {
          v27 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
          v28 = MEMORY[0x28223BE20](v27);
          v30 = (v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v31 + 16))(v30, v28);
          v32 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
          v33 = MEMORY[0x28223BE20](v32);
          v35 = (v54 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v36 + 16))(v35, v33);
          v17 = sub_218CC42DC(*v30, v26, *v35);
          __swift_destroy_boxed_opaque_existential_1(v54);
          __swift_destroy_boxed_opaque_existential_1(v57);
          v16 = type metadata accessor for TagFeedViewerPuzzleFullArchiveTitleViewProvider();
          v24 = &off_282A71DA8;
          goto LABEL_15;
        }

        goto LABEL_23;
      }

      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v6 == 8)
  {
    sub_2186C709C(0, qword_280E93970, &protocol descriptor for TagFeedViewerSportsEventTitleViewRendererType, 1);
    sub_219BE1E34();
    if (v58)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v7 = sub_219BE1E24();
      if (v7)
      {
        v8 = v7;
        v9 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
        v10 = MEMORY[0x28223BE20](v9);
        v12 = (v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v13 + 16))(v12, v10);
        v14 = *v12;
        v15 = type metadata accessor for TagFeedViewerSportsEventTitleViewRenderer();
        v55 = v15;
        v56 = &off_282A93F68;
        v54[0] = v14;
        v16 = type metadata accessor for TagFeedViewerSportsEventTitleViewProvider();
        v17 = swift_allocObject();
        v18 = __swift_mutable_project_boxed_opaque_existential_1(v54, v15);
        v19 = MEMORY[0x28223BE20](v18);
        v21 = (v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v22 + 16))(v21, v19);
        v23 = *v21;
        v17[7] = v15;
        v17[8] = &off_282A93F68;
        v17[4] = v23;
        v17[2] = [objc_allocWithZone(type metadata accessor for TagFeedViewerSportsEventTitleView()) initWithFrame_];
        v17[3] = 0;
        v17[9] = v8;
        __swift_destroy_boxed_opaque_existential_1(v54);
        __swift_destroy_boxed_opaque_existential_1(v57);
        v24 = &off_282A9FD58;
LABEL_15:
        a2[3] = v16;
        a2[4] = v24;

        *a2 = v17;
        return;
      }

      goto LABEL_20;
    }

    goto LABEL_17;
  }

  sub_2186C709C(0, &unk_280E9E5A0, &protocol descriptor for TagFeedViewerTitleViewRendererType, 1);
  sub_219BE1E34();
  if (!v58)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187E0FB8(0);
  v37 = sub_219BE1E24();
  if (!v37)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v38 = v37;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v39 = sub_219BE1E24();
  if (v39)
  {
    v40 = v39;
    v41 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v42 = MEMORY[0x28223BE20](v41);
    v44 = (v54 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v45 + 16))(v44, v42);
    v46 = *v44;
    v47 = type metadata accessor for TagFeedViewerTitleViewRenderer();
    v55 = v47;
    v56 = &off_282A79E20;
    v54[0] = v46;
    v16 = type metadata accessor for TagFeedViewerTitleViewProvider();
    v48 = swift_allocObject();
    v49 = __swift_mutable_project_boxed_opaque_existential_1(v54, v47);
    v50 = MEMORY[0x28223BE20](v49);
    v52 = (v54 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v53 + 16))(v52, v50);
    v17 = sub_218CC4638(*v52, v38, v40, v48);

    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v57);
    v24 = &off_282A6FB60;
    goto LABEL_15;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_218CC3DC4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5974();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE6DB4();
    swift_allocObject();
    return sub_219BE6D84();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218CC3E3C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for TagFeedViewerViewController(0);
  result = sub_219BE1E24();
  if (result)
  {
    return sub_219BE6D94();
  }

  __break(1u);
  return result;
}

void *sub_218CC3EA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = type metadata accessor for BaseStyler(0);
  v14 = sub_218CC4D74(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
  *&v12 = a1;
  v10 = type metadata accessor for TagFeedViewerTitleViewStyler();
  v11 = sub_218CC4D74(&qword_280EB2168, type metadata accessor for TagFeedViewerTitleViewStyler, &unk_219C8F2F8);
  a4[12] = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:{22.0, a2}];
  sub_218CC4978(0);
  swift_allocObject();
  a4[14] = sub_219BE3284();
  sub_2186CB1F0(&v12, (a4 + 2));
  sub_2186CB1F0(&v9, (a4 + 7));
  a4[13] = a3;
  return a4;
}

void *sub_218CC3FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = type metadata accessor for BaseStyler(0);
  v24 = sub_218CC4D74(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
  v22[0] = a1;
  v20 = type metadata accessor for TagFeedViewerTitleViewStyler();
  v21 = sub_218CC4D74(&qword_280EB2168, type metadata accessor for TagFeedViewerTitleViewStyler, &unk_219C8F2F8);
  v19[0] = a2;
  type metadata accessor for TagFeedViewerStyler();
  v6 = swift_allocObject();
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = sub_218CC3EA0(*v10, *v15, a3, v6);
  __swift_destroy_boxed_opaque_existential_1(v19);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v17;
}

void *sub_218CC4224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = type metadata accessor for TagFeedViewerPuzzleFullArchiveTitleViewRenderer();
  v14 = &off_282A80D58;
  *&v12 = a1;
  v10 = type metadata accessor for PuzzleArchiveFilterOptionsManager();
  v11 = &off_282A79210;
  a4[2] = [objc_allocWithZone(type metadata accessor for TagFeedViewerPuzzleFullArchiveTitleView()) initWithFrame_];
  a4[3] = 0;
  sub_2186CB1F0(&v12, (a4 + 4));
  a4[9] = a2;
  sub_2186CB1F0(&v9, (a4 + 10));
  return a4;
}

void *sub_218CC42DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v24 = type metadata accessor for TagFeedViewerPuzzleFullArchiveTitleViewRenderer();
  v25 = &off_282A80D58;
  v23[0] = a1;
  v21 = v6;
  v22 = &off_282A79210;
  v20[0] = a3;
  type metadata accessor for TagFeedViewerPuzzleFullArchiveTitleViewProvider();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = sub_218CC4224(*v11, a2, *v16, v7);
  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v18;
}

uint64_t sub_218CC44E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[3] = type metadata accessor for TagFeedViewerTitleViewStyler();
  v12[4] = sub_218CC4D74(&qword_280EB2168, type metadata accessor for TagFeedViewerTitleViewStyler, &unk_219C8F2F8);
  v12[0] = a2;
  v8 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *(a4 + 96) = v8;
  *(a4 + 120) = 0;
  *(a4 + 128) = 0;
  *(a4 + 112) = 0;
  sub_218718690(a1, a4 + 16);
  sub_218718690(v12, a4 + 56);
  *(a4 + 104) = a3;
  v9 = v8;
  swift_unknownObjectRetain();
  v10 = sub_219BF53D4();
  [v9 setName_];

  [*(a4 + 96) setMaxConcurrentOperationCount_];
  [*(a4 + 96) setQualityOfService_];
  __swift_destroy_boxed_opaque_existential_1(a1);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return a4;
}

void *sub_218CC4638(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v13[3] = type metadata accessor for TagFeedViewerTitleViewRenderer();
  v13[4] = &off_282A79E20;
  v13[0] = a1;
  a4[2] = [objc_allocWithZone(type metadata accessor for TagFeedViewerTitleView()) initWithFrame_];
  a4[3] = 0;
  sub_218718690(v13, (a4 + 4));
  a4[9] = a2;
  a4[10] = a3;
  sub_218802F30(0);
  swift_allocObject();

  v8 = a3;
  sub_219BE2A64();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v11 = v8;

  sub_219BE2A84();

  sub_219BE1E64();

  sub_218803000(&unk_282A23908);
  swift_allocObject();
  sub_219BE2A74();
  swift_allocObject();
  swift_weakInit();

  sub_219BE2A84();

  sub_219BE1E64();

  __swift_destroy_boxed_opaque_existential_1(v13);
  return a4;
}

void sub_218CC486C()
{
  if (!qword_280EB2178)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EB2178);
    }
  }
}

uint64_t sub_218CC48C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_218B06884(a1, v4, v5, v6);
}

void sub_218CC4978(uint64_t a1)
{
  if (!qword_280EE6890)
  {
    type metadata accessor for CGRect(255);
    sub_2186C6148(255, &qword_280E8DEA8, 0x277D75560);
    sub_218CC4D74(&unk_280E8DB30, type metadata accessor for CGRect, MEMORY[0x277CBF270]);
    v1 = sub_219BE3294();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6890);
    }
  }
}

void sub_218CC4A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218CC4A98()
{
  if (!qword_280EE68B0)
  {
    v0 = sub_219BE3294();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE68B0);
    }
  }
}

void sub_218CC4AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_218CC4B60()
{
  result = qword_280EB63C0;
  if (!qword_280EB63C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB63C0);
  }

  return result;
}

void sub_218CC4BB4(void *a1, void *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      v10 = a1;
LABEL_12:

      return;
    }

    if (a5 != 3)
    {
      if (a5 != 4)
      {
        return;
      }

      v5 = a1;
      v6 = a2;
      goto LABEL_12;
    }

    v11 = a1;
    a1 = a2;
    goto LABEL_16;
  }

  if (!a5)
  {
LABEL_16:

    v12 = a1;
    return;
  }

  if (a5 == 1)
  {
    v8 = a4;
    v9 = a1;

    sub_218CC4CB8(a2, a3, v8);
  }
}

double sub_218CC4CB8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_218CC4CD0(result, a2, a3 & 1);
  }

  return v3;
}