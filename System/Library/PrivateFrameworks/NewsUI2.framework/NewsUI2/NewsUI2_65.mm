uint64_t sub_218E02A7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218E02AC4()
{
  result = qword_27CC12548;
  if (!qword_27CC12548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12548);
  }

  return result;
}

uint64_t sub_218E02B40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  sub_2186F64EC(0);
  v56 = v3;
  v60 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8AB0(0);
  MEMORY[0x28223BE20](v9 - 8);
  v61 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v43 - v12;
  sub_218E03B10(0, &qword_280E8C738, MEMORY[0x277D844C8]);
  v58 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E03998();
  v17 = v62;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v52 = v14;
  v54 = 0;
  v55 = a1;
  v53 = v6;
  v62 = v5;
  LOBYTE(v73) = 0;
  sub_218CE8B98();
  sub_219BF7674();
  v75 = v79;
  LOBYTE(v71) = 1;
  sub_219BF7674();
  v51 = v73;
  v50 = v74;
  LOBYTE(v69) = 2;
  sub_219BF7674();
  v49 = v71;
  v48 = v72;
  LOBYTE(v67) = 3;
  sub_219BF7674();
  v47 = v69;
  v46 = v70;
  LOBYTE(v67) = 4;
  sub_218CE8BEC();
  sub_219BF7674();
  v19 = v78;
  LOBYTE(v65) = 5;
  sub_219BF7674();
  v20 = v67;
  v45 = v68;
  LOBYTE(v63) = 6;
  sub_219BF7674();
  v21 = v65;
  v44 = v66;
  v77 = 7;
  sub_219BF7674();
  v43 = v63;
  v22 = v64;
  v76 = 8;
  sub_219BF7674();
  v23 = v77;
  v76 = 9;
  sub_2186EC758(&qword_280E91838, sub_2186F64EC, MEMORY[0x277D32328]);
  v24 = v59;
  v25 = v56;
  sub_219BF7674();
  v26 = v75;
  if (v75 == 3)
  {
    v26 = 0;
  }

  *v8 = v26;
  v27 = v51;
  if (v50)
  {
    v27 = 8;
  }

  v28 = v49;
  if (v48)
  {
    v28 = 1;
  }

  *(v8 + 1) = v27;
  *(v8 + 2) = v28;
  v29 = v47;
  if (v46)
  {
    v29 = 4;
  }

  *(v8 + 3) = v29;
  if (v19 == 4)
  {
    v30 = 0;
  }

  else
  {
    v30 = v19;
  }

  v8[32] = v30;
  v31 = 1.2;
  if (!v45)
  {
    v31 = v20;
  }

  v32 = 0.0;
  if (!v44)
  {
    v32 = v21;
  }

  *(v8 + 5) = v31;
  *(v8 + 6) = v32;
  *(v8 + 7) = v43;
  v8[64] = v22;
  v8[65] = (v23 == 2) | v23 & 1;
  v33 = v61;
  sub_218E039EC(v24, v61);
  v34 = *(v60 + 48);
  v35 = v25;
  v36 = v8;
  if (v34(v33, 1, v25) == 1)
  {
    type metadata accessor for MagazineFeedServiceConfig(0);
    sub_2186EC758(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v37 = v62;
    sub_219BEEC74();
    sub_218E03A50(v59);
    (*(v52 + 8))(v16, v58);
    v38 = v34(v61, 1, v35);
    v39 = v57;
    v40 = v60;
    v41 = v53;
    v42 = v55;
    if (v38 != 1)
    {
      sub_218E03A50(v61);
    }
  }

  else
  {
    sub_218E03A50(v59);
    (*(v52 + 8))(v16, v58);
    v40 = v60;
    v37 = v62;
    (*(v60 + 32))(v62, v61, v35);
    v39 = v57;
    v41 = v53;
    v42 = v55;
  }

  (*(v40 + 32))(v36 + *(v41 + 52), v37, v35);
  sub_218E03AAC(v36, v39);
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

unint64_t sub_218E032A4(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x726F635365736162;
    v6 = 0xD00000000000001CLL;
    if (a1 != 8)
    {
      v6 = 0x6C6F6F706572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x746C754D6B6E6172;
    if (a1 != 5)
    {
      v7 = 0x72685465726F6373;
    }

    if (a1 <= 6u)
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
    v1 = 0x704F7265746C6966;
    v2 = 0x727563634F78616DLL;
    v3 = 0xD000000000000010;
    if (a1 != 3)
    {
      v3 = 0x7942726564726FLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_218E0341C(void *a1)
{
  v3 = v1;
  sub_218E03B10(0, &qword_280E8C1E0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E03998();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218CE8E28();
  sub_219BF7834();
  if (!v2)
  {
    v11[13] = 1;
    sub_219BF7824();
    v11[12] = 2;
    sub_219BF7824();
    v11[11] = 3;
    sub_219BF7824();
    v11[10] = v3[32];
    v11[9] = 4;
    sub_218CE8E7C();
    sub_219BF7834();
    v11[8] = 5;
    sub_219BF7814();
    v11[7] = 6;
    sub_219BF7814();
    v11[6] = 7;
    sub_219BF77B4();
    v11[5] = 8;
    sub_219BF7804();
    type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs(0);
    v11[4] = 9;
    sub_2186F64EC(0);
    sub_2186EC758(&unk_280E91840, sub_2186F64EC, MEMORY[0x277D32320]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218E0372C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_218E03C8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_218E03754(uint64_t a1)
{
  v2 = sub_218E03998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E03790(uint64_t a1)
{
  v2 = sub_218E03998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E03800(char *a1, char *a2, __n128 a3)
{
  if (*&aNone_14[8 * *a1] == *&aNone_14[8 * *a2])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = sub_219BF78F4();
    swift_bridgeObjectRelease_n();
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3) || (sub_21908B134(a1[32], a2[32]) & 1) == 0 || *(a1 + 5) != *(a2 + 5) || *(a1 + 6) != *(a2 + 6))
  {
    return 0;
  }

  v6 = a2[64];
  if (a1[64])
  {
    if (!a2[64])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 7) != *(a2 + 7))
    {
      v6 = 1;
    }

    if (v6)
    {
      return 0;
    }
  }

  if (a1[65] != a2[65])
  {
    return 0;
  }

  type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs(0);
  type metadata accessor for MagazineFeedServiceConfig(0);
  sub_2186EC758(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);

  return sub_219BEEC64();
}

unint64_t sub_218E03998()
{
  result = qword_280E96B60;
  if (!qword_280E96B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E96B60);
  }

  return result;
}

uint64_t sub_218E039EC(uint64_t a1, uint64_t a2)
{
  sub_218CE8AB0(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218E03A50(uint64_t a1)
{
  sub_218CE8AB0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218E03AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecommendedIssuesMagazineFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218E03B10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E03998();
    v7 = a3(a1, &type metadata for RecommendedIssuesMagazineFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E03B88()
{
  result = qword_27CC12550;
  if (!qword_27CC12550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12550);
  }

  return result;
}

unint64_t sub_218E03BE0()
{
  result = qword_280E96B50;
  if (!qword_280E96B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E96B50);
  }

  return result;
}

unint64_t sub_218E03C38()
{
  result = qword_280E96B58;
  if (!qword_280E96B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E96B58);
  }

  return result;
}

uint64_t sub_218E03C8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x704F7265746C6966 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7942726564726FLL && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746C754D6B6E6172 && a2 == 0xEE007265696C7069 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72685465726F6373 && a2 == 0xEE00646C6F687365 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000219CF9AF0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000)
  {

    return 9;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_218E03FE4(uint64_t a1)
{
  v2 = sub_219BDE294();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDEE04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AudioTrackDetailsRouteModel(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
  swift_unknownObjectRetain();
  sub_219BDEDE4();
  v16 = sub_219BDB954();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  (*(v3 + 104))(v5, *MEMORY[0x277D2FF08], v2);
  sub_219BDD904();
  (*(v3 + 8))(v5, v2);
  sub_2187BC5D0(v8, sub_21873F65C);
  (*(v10 + 8))(v12, v9);
  sub_218B5DA2C(v15);
  return sub_2187BC5D0(v15, type metadata accessor for AudioTrackDetailsRouteModel);
}

double sub_218E042D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_219BE1F84();
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = sub_2187A913C;
  v11[4] = v10;
  v11[5] = a3;
  v11[6] = a4;

  sub_219BE1F74();

  return result;
}

uint64_t sub_218E043C4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = NFInternalBuild();
  if (v8)
  {
    sub_219BDC744();
    type metadata accessor for ResetPuzzleProgressStartupTask(0);
    sub_218E04810(&qword_280EAB860, &unk_219C3C0E8);
    sub_219BDC7D4();

    if (v12[15] == 1)
    {
      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleStatsStateStore), *(a1 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleStatsStateStore + 24));
      sub_219BF3A54();
      __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleHistoryService), *(a1 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleHistoryService + 24));
      sub_219BDBBB4();
      v9 = sub_219BF3774();
      (*(v5 + 8))(v7, v4);
      v10 = swift_allocObject();
      *(v10 + 16) = v9;
      *(v10 + 24) = a1;

      sub_219BE3494();

      sub_219BDC744();
      v12[14] = 0;
      sub_218E04810(&qword_27CC12558, &unk_219C3C0A8);
      sub_219BDCA54();
    }
  }

  return a2(v8);
}

void sub_218E0460C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a2 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleHistoryService);
    v4 = a1 + 40;
    do
    {
      __swift_project_boxed_opaque_existential_1(v3, v3[3]);

      sub_219BF3754();

      v4 += 16;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_218E046A4()
{
  v1 = OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_executionPhase;
  v2 = sub_219BE2C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleHistoryService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI230ResetPuzzleProgressStartupTask_puzzleStatsStateStore));

  return swift_deallocClassInstance();
}

uint64_t sub_218E0479C()
{
  sub_21879D924();
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218E04810(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ResetPuzzleProgressStartupTask(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218E04864()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8560);
  __swift_project_value_buffer(v0, qword_27CCD8560);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534(0);
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_218E04ABC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8578);
  __swift_project_value_buffer(v0, qword_27CCD8578);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_218E04C70()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8590);
  __swift_project_value_buffer(v0, qword_27CCD8590);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534(0);
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_218E04ECC()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD85A8);
  __swift_project_value_buffer(v0, qword_27CCD85A8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_218E0507C()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD85C0);
  __swift_project_value_buffer(v0, qword_27CCD85C0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_218E0530C()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

void sub_218E053AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v31 = a4;
  v32 = sub_219BECA04();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BECA94();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E066D0(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0661C(0);
  v27 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BECB64();
  v33 = a1;
  v34 = a2;
  v35 = v26;
  sub_218E06764(0);
  sub_218E07314(&qword_27CC12608, sub_218E06764, MEMORY[0x277CE1138]);
  sub_219BEC5E4();
  v19 = sub_219BECBC4();
  sub_219BECA84();
  v20 = sub_218E07314(&qword_27CC12610, sub_218E066D0, MEMORY[0x277CDD6E0]);
  MEMORY[0x21CEC3B90](v19, 0x4034000000000000, 0, v9, v11, v20);
  (*(v7 + 8))(v9, v28);
  (*(v12 + 8))(v14, v11);
  v21 = v29;
  sub_219BEC9F4();
  sub_219BECB64();
  v36 = v11;
  v37 = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v31;
  v23 = v27;
  sub_219BECE74();
  (*(v30 + 8))(v21, v32);
  (*(v16 + 8))(v18, v23);
  LOBYTE(v23) = sub_219BECB94();
  sub_218E064D0(0);
  *(v22 + *(v24 + 36)) = v23;
}

uint64_t sub_218E057A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_219BEC8A4();
  *(a4 + 8) = 0x4034000000000000;
  *(a4 + 16) = 0;
  sub_218E07134(0);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_218E072B0(0, &qword_27CC12598, type metadata accessor for RecipeFilterDurationItemViewModel, MEMORY[0x277D83940]);
  sub_218E06928(0);
  sub_218E06E7C(&qword_27CC125F8, &qword_27CC12598, type metadata accessor for RecipeFilterDurationItemViewModel, MEMORY[0x277D83980]);
  sub_218E06A40(255);
  sub_218E06DE8(255);
  sub_218E06AD8(255);
  sub_218E06C88();

  swift_getOpaqueTypeConformance2();
  sub_218E07314(&qword_27CC125F0, sub_218E06DE8, MEMORY[0x277D84470]);
  swift_getOpaqueTypeConformance2();
  sub_218E07314(&qword_27CC12628, type metadata accessor for RecipeFilterDurationItemViewModel, &unk_219C13814);
  return sub_219BED064();
}

uint64_t sub_218E05A14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a3;
  v46 = a5;
  sub_218E06DE8(0);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v51 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEC954();
  v53 = *(v11 - 8);
  v54 = v11;
  MEMORY[0x28223BE20](v11);
  v52 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E06B40(0);
  v50 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E06AD8(0);
  v17 = v16;
  MEMORY[0x28223BE20](v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v43 - v21;
  sub_218E06A40(0);
  v43 = *(v23 - 8);
  v44 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = &v43 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = swift_allocObject();
  v47 = a4;
  v48 = a2;
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = v26;
  sub_218E06C34();

  v28 = v25;
  v29 = v17;
  v30 = v51;
  sub_219BECFE4();
  v31 = sub_219BECF14();
  KeyPath = swift_getKeyPath();
  v33 = &v15[*(v50 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  v34 = *(v26 + 40);
  v55 = *(v26 + 32);
  v56 = v34;
  sub_218E06D38();
  sub_2187F3BD4();
  sub_219BECE54();
  sub_218E07250(v15, sub_218E06B40);
  v35 = v52;
  sub_218E05F84(v26);
  sub_219BEC714();
  (*(v53 + 8))(v35, v54);
  sub_218E07250(v19, sub_218E06AD8);
  v36 = sub_218E06C88();
  v37 = MEMORY[0x277CE0BD8];
  v38 = MEMORY[0x277CE0BC8];
  sub_219BECEB4();
  sub_218E07250(v22, sub_218E06AD8);
  v39 = *MEMORY[0x277CDFA10];
  v40 = sub_219BEC6E4();
  (*(*(v40 - 8) + 104))(v30, v39, v40);
  sub_218E07314(&qword_27CC12630, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_219BF53A4();
  if (result)
  {
    v55 = v29;
    v56 = v37;
    v57 = v36;
    v58 = v38;
    swift_getOpaqueTypeConformance2();
    sub_218E07314(&qword_27CC125F0, sub_218E06DE8, MEMORY[0x277D84470]);
    v42 = v44;
    sub_219BECE04();
    sub_218E07250(v30, sub_218E06DE8);
    return (*(v43 + 8))(v28, v42);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218E05F84(uint64_t a1)
{
  swift_getKeyPath();
  sub_218E07314(&qword_27CC0B230, type metadata accessor for RecipeFilterDurationItemViewModel, &unk_219C137E8);
  sub_219BDC204();

  if (*(a1 + 80) == 1)
  {
    v2 = MEMORY[0x277CE01F0];
    sub_218E072B0(0, &qword_27CC0BB48, MEMORY[0x277CE01F0], MEMORY[0x277D84560]);
    sub_219BEC954();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    sub_219BEC934();
    sub_218E07314(&qword_27CC0BB30, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    sub_218E072B0(0, &qword_27CC0BB38, v2, MEMORY[0x277D83940]);
    sub_218E06E7C(&qword_27CC0BB40, &qword_27CC0BB38, v2, MEMORY[0x277D83970]);
  }

  else
  {
    sub_219BEC954();
    sub_218E07314(&qword_27CC0BB30, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
    v3 = MEMORY[0x277CE01F0];
    sub_218E072B0(0, &qword_27CC0BB38, MEMORY[0x277CE01F0], MEMORY[0x277D83940]);
    sub_218E06E7C(&qword_27CC0BB40, &qword_27CC0BB38, v3, MEMORY[0x277D83970]);
  }

  return sub_219BF7164();
}

void sub_218E06288(uint64_t a2@<X8>)
{
  sub_2187F3BD4();

  v2 = sub_219BECDA4();
  v4 = v3;
  v6 = v5;
  v7 = sub_219BECD64();
  v9 = v8;
  v23 = v10;
  sub_2189A0BC8(v2, v4, v6 & 1);

  v11 = sub_219BECDA4();
  v13 = v12;
  v15 = v14;
  v16 = sub_219BECD64();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_2189A0BC8(v11, v13, v15 & 1);

  sub_2189A0BC8(v7, v9, v23 & 1);

  *a2 = v16;
  *(a2 + 8) = v18;
  *(a2 + 16) = v20 & 1;
  *(a2 + 24) = v22;
}

void sub_218E06410(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v7 = *(v3 + 32);
  v6 = *(v3 + 40);
  sub_218E06488(0);
  *(a1 + *(v8 + 44)) = 0x4034000000000000;
  *a1 = v7;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  v9 = *(v8 + 40);

  sub_218E053AC(v3, v4, v5, a1 + v9);
}

void sub_218E064D0(uint64_t a1)
{
  if (!qword_27CC12568)
  {
    sub_218E06530(255);
    v1 = sub_219BEC724();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC12568);
    }
  }
}

void sub_218E06530(uint64_t a1)
{
  if (!qword_27CC12570)
  {
    sub_218E0661C(255);
    sub_218E066D0(255);
    sub_218E07314(&qword_27CC12610, sub_218E066D0, MEMORY[0x277CDD6E0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC12570);
    }
  }
}

void sub_218E0661C(uint64_t a1)
{
  if (!qword_27CC12578)
  {
    sub_218E066D0(255);
    sub_218E07314(&qword_27CC12610, sub_218E066D0, MEMORY[0x277CDD6E0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC12578);
    }
  }
}

void sub_218E066D0(uint64_t a1)
{
  if (!qword_27CC12580)
  {
    sub_218E06764(255);
    sub_218E07314(&qword_27CC12608, sub_218E06764, MEMORY[0x277CE1138]);
    v1 = sub_219BEC5D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC12580);
    }
  }
}

void sub_218E067AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_218E0682C(uint64_t a1)
{
  if (!qword_27CC12590)
  {
    sub_218E072B0(255, &qword_27CC12598, type metadata accessor for RecipeFilterDurationItemViewModel, MEMORY[0x277D83940]);
    sub_218E06928(255);
    sub_218E06E7C(&qword_27CC125F8, &qword_27CC12598, type metadata accessor for RecipeFilterDurationItemViewModel, MEMORY[0x277D83980]);
    v1 = sub_219BED084();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC12590);
    }
  }
}

void sub_218E06928(uint64_t a1)
{
  if (!qword_27CC125A0)
  {
    sub_218E06A40(255);
    sub_218E06DE8(255);
    sub_218E06AD8(255);
    sub_218E06C88();
    swift_getOpaqueTypeConformance2();
    sub_218E07314(&qword_27CC125F0, sub_218E06DE8, MEMORY[0x277D84470]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC125A0);
    }
  }
}

void sub_218E06A40(uint64_t a1)
{
  if (!qword_27CC125A8)
  {
    sub_218E06AD8(255);
    sub_218E06C88();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC125A8);
    }
  }
}

void sub_218E06AD8(uint64_t a1)
{
  if (!qword_27CC125B0)
  {
    sub_218E06B40(255);
    sub_219BECB24();
    v1 = sub_219BEC724();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC125B0);
    }
  }
}

void sub_218E06B40(uint64_t a1)
{
  if (!qword_27CC125B8)
  {
    sub_218E06BD8(255);
    sub_218E072B0(255, &qword_27CC0BAC8, sub_2189A0314, MEMORY[0x277CE0860]);
    v1 = sub_219BEC724();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC125B8);
    }
  }
}

void sub_218E06BD8(uint64_t a1)
{
  if (!qword_27CC125C0)
  {
    sub_218E06C34();
    v1 = sub_219BED004();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC125C0);
    }
  }
}

unint64_t sub_218E06C34()
{
  result = qword_27CC125C8;
  if (!qword_27CC125C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC125C8);
  }

  return result;
}

unint64_t sub_218E06C88()
{
  result = qword_27CC125D0;
  if (!qword_27CC125D0)
  {
    sub_218E06AD8(255);
    sub_218E06D38();
    sub_218E07314(&qword_27CC0BAF8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC125D0);
  }

  return result;
}

unint64_t sub_218E06D38()
{
  result = qword_27CC125D8;
  if (!qword_27CC125D8)
  {
    sub_218E06B40(255);
    sub_218E07314(&qword_27CC125E0, sub_218E06BD8, MEMORY[0x277CDF028]);
    sub_2189A04C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC125D8);
  }

  return result;
}

void sub_218E06DE8(uint64_t a1)
{
  if (!qword_27CC125E8)
  {
    sub_219BEC6E4();
    sub_218E07314(&qword_27CC0BB50, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
    v1 = sub_219BF75D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC125E8);
    }
  }
}

uint64_t sub_218E06E7C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_218E072B0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218E06ED4()
{
  result = qword_27CC12600;
  if (!qword_27CC12600)
  {
    sub_218E0682C(255);
    sub_218E06A40(255);
    sub_218E06DE8(255);
    sub_218E06AD8(255);
    sub_218E06C88();
    swift_getOpaqueTypeConformance2();
    sub_218E07314(&qword_27CC125F0, sub_218E06DE8, MEMORY[0x277D84470]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12600);
  }

  return result;
}

unint64_t sub_218E07010()
{
  result = qword_27CC12618;
  if (!qword_27CC12618)
  {
    sub_218E064D0(255);
    sub_218E0661C(255);
    sub_218E066D0(255);
    sub_218E07314(&qword_27CC12610, sub_218E066D0, MEMORY[0x277CDD6E0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12618);
  }

  return result;
}

void sub_218E07134(uint64_t a1)
{
  if (!qword_27CC12620)
  {
    sub_218E0682C(255);
    v1 = sub_219BEC6A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC12620);
    }
  }
}

uint64_t sub_218E071E0@<X0>(void *a1@<X8>)
{
  *a1 = v1;
  a1[1] = 0x4052000000000000;
}

uint64_t sub_218E071F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219BEC834();
  *a1 = result;
  return result;
}

uint64_t sub_218E07250(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218E072B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218E07314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218E0735C(uint64_t a1)
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

uint64_t sub_218E07438(uint64_t a1)
{
  v3 = type metadata accessor for SearchExpandRequest(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE0874();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SearchResults(0);
  v12 = (v11 - 8);
  v29 = *(v11 - 8);
  v13 = *(v29 + 64);
  MEMORY[0x28223BE20](v11);
  v28 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = *(a1 + 16);
  v33[0] = *a1;
  v33[1] = v17;
  v33[2] = *(a1 + 32);
  v34 = *(a1 + 48);
  sub_219BF5054();
  v18 = *(v1 + *(*v1 + 120));
  (*(v8 + 104))(v10, *MEMORY[0x277D2E888], v7);
  sub_219BDF024();
  v19 = v12[10];
  v20 = sub_219BE04F4();
  (*(*(v20 - 8) + 56))(&v16[v19], 1, 1, v20);
  strcpy(v16, "empty-search");
  v16[13] = 0;
  *(v16 + 7) = -5120;
  *(v16 + 2) = MEMORY[0x277D84F90];
  v21 = &v16[v12[9]];
  *v21 = 0;
  *(v21 + 1) = 0;
  *&v16[v12[11]] = 0;
  *&v16[v12[12]] = 9;
  sub_218E0E818(v16, &v6[*(v4 + 28)], type metadata accessor for SearchResults);
  type metadata accessor for SearchFeedGapLocation(0);
  swift_storeEnumTagMultiPayload();
  strcpy(v6, "prewarmRequest");
  v6[15] = -18;
  *&v6[*(v4 + 32)] = 9;
  v30 = v18;
  v31 = v6;
  v32 = v33;
  sub_219BE3204();
  v22 = v28;
  sub_218E0E818(v16, v28, type metadata accessor for SearchResults);
  v23 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v24 = (v13 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  sub_218E0FE18(v22, v25 + v23, type metadata accessor for SearchResults);
  *(v25 + v24) = 0;
  v26 = sub_219BE2E54();
  type metadata accessor for SearchPrewarmResult(0);
  sub_219BE2F64();

  sub_218E0FE80(v16, type metadata accessor for SearchResults);
  return sub_218E0FE80(v6, type metadata accessor for SearchExpandRequest);
}

void sub_218E078A4(__int128 *a1, char a2, __int128 *a3)
{
  v7 = *v3;
  sub_218AF3D74(0);
  v74 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v88 = *a1;
  v89[0] = v11;
  *(v89 + 9) = *(a1 + 25);
  v12 = *a1;
  v13 = *(a1 + 1);
  v14 = *(a1 + 3);
  v82 = *(a1 + 2);
  v81 = v14;
  v15 = *(a1 + 4);
  v16 = *(a1 + 40);
  v93 = *(a3 + 48);
  v17 = a3[2];
  v91 = a3[1];
  v92 = v17;
  v90 = *a3;
  v77 = v16;
  v76 = v15;
  v80 = v12;
  v78 = v7;
  v75 = v18;
  v79 = v13;
  if (a2)
  {
    sub_218E0DF9C(&v88, &v83);
    v19 = v12;
    goto LABEL_24;
  }

  v20 = v3 + *(v7 + 152);
  v22 = *v20;
  v21 = *(v20 + 8);
  v23 = *(v20 + 16);
  v72 = *(v20 + 24);
  v24 = *(v20 + 32);
  v73 = *(v20 + 40);
  if (!v13)
  {
    v32 = v23;
    if (!v21)
    {
      sub_218E0DF9C(&v88, &v83);
      sub_218E0DF9C(&v88, &v83);
      sub_218E0DFF8(v22, 0);
      v19 = v80;
      sub_218AA1438(v80, 0, v82);
      goto LABEL_34;
    }

    sub_218E0DF9C(&v88, &v83);
    sub_218E0DF9C(&v88, &v83);
    sub_218E0DFF8(v22, v21);
    v33 = v80;
LABEL_17:
    sub_218AA1438(v33, v13, v82);
    sub_218AA1438(v22, v21, v32);
    v19 = v33;
    goto LABEL_24;
  }

  if (!v21)
  {
    v70[1] = v24;
    v33 = v12;
    v32 = v23;
    sub_218E0DF9C(&v88, &v83);
    sub_218E0DF9C(&v88, &v83);
    sub_218E0DFF8(v22, 0);
    LOBYTE(v16) = v77;
    sub_218E0DFF8(v33, v13);

    goto LABEL_17;
  }

  if (v12 != v22 || v21 != v13)
  {
    v26 = v23;
    v27 = v22;
    v28 = sub_219BF78F4();
    v23 = v26;
    if ((v28 & 1) == 0)
    {
      v71 = v10;
      v34 = v21;
      sub_218E0DF9C(&v88, &v83);
      sub_218E0DF9C(&v88, &v83);
      goto LABEL_23;
    }
  }

  if (v82)
  {
    v27 = v22;
    if (v23)
    {
      v70[0] = v23;
      LODWORD(v71) = sub_219417FCC(v82, v23);
      sub_218E0DF9C(&v88, &v83);
      sub_218E0DF9C(&v88, &v83);
      sub_218E0DFF8(v22, v21);
      v29 = v13;
      v30 = v82;
      v19 = v80;
      v15 = v76;
      LOBYTE(v16) = v77;
      sub_218E0DFF8(v80, v29);
      sub_218AA1438(v22, v21, v70[0]);

      v31 = v79;

      sub_218AA1438(v19, v31, v30);
      if (v71)
      {
        goto LABEL_34;
      }

LABEL_24:
      v39 = CACurrentMediaTime();
      v40 = v3 + *(*v3 + 152);
      v42 = *v40;
      v41 = *(v40 + 8);
      v43 = *(v40 + 16);
      v44 = v79;
      *v40 = v19;
      *(v40 + 8) = v44;
      v45 = v81;
      *(v40 + 16) = v82;
      *(v40 + 24) = v45;
      *(v40 + 32) = v15;
      *(v40 + 40) = v16;
      sub_218E0DF9C(&v88, &v83);
      sub_218AA1438(v42, v41, v43);
      v83 = v88;
      *v84 = v89[0];
      *&v84[9] = *(v89 + 9);
      if (!sub_2192FF134())
      {
        sub_219BE6EC4();
        v87 = v83;
        sub_2189871A8(0);
        sub_2186D76E8(&qword_280EE5510, sub_2189871A8, MEMORY[0x277D6D8C8]);
        sub_219BE7B94();

        sub_2186D76E8(&qword_280EE36F8, sub_218AF3D74, MEMORY[0x277D6EC70]);
        v46 = v75;
        sub_219BF5DF4();
        sub_219BF5E84();
        (*(v74 + 8))(v10, v46);
        if (v86 == v85)
        {
          if (swift_unknownObjectWeakLoadStrong())
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              *(swift_allocObject() + 16) = Strong;
              swift_unknownObjectRetain();
              sub_219BE3494();
              swift_unknownObjectRelease();
            }

            swift_unknownObjectRelease();
          }
        }
      }

      v48 = swift_unknownObjectWeakLoadStrong();
      if (v48)
      {
        v83 = v88;
        *v84 = v89[0];
        *&v84[9] = *(v89 + 9);
        sub_219898D10(&v83);
        v48 = swift_unknownObjectRelease();
      }

      MEMORY[0x28223BE20](v48);
      v70[-2] = v3;
      v70[-1] = &v88;
      type metadata accessor for SearchResults(0);
      sub_219BE3204();
      v75 = sub_2187D9028();
      v49 = sub_219BF66A4();
      v50 = swift_allocObject();
      v51 = v91;
      *(v50 + 72) = v90;
      v52 = v79;
      *(v50 + 16) = v80;
      *(v50 + 24) = v52;
      v53 = v81;
      *(v50 + 32) = v82;
      *(v50 + 40) = v53;
      v54 = v76;
      *(v50 + 48) = v76;
      v55 = v77;
      *(v50 + 56) = v77;
      *(v50 + 64) = v39;
      *(v50 + 88) = v51;
      *(v50 + 104) = v92;
      *(v50 + 120) = v93;
      sub_218E0DF9C(&v88, &v83);
      sub_218E0E0F8(&v90, &v83);
      type metadata accessor for SearchPrewarmResult(0);
      sub_219BE2F84();

      v56 = sub_219BF66A4();
      v57 = swift_allocObject();
      *(v57 + 16) = v80;
      *(v57 + 24) = v52;
      v58 = v81;
      *(v57 + 32) = v82;
      *(v57 + 40) = v58;
      *(v57 + 48) = v54;
      *(v57 + 56) = v55;
      sub_219BE2F84();

      v59 = swift_allocObject();
      *(v59 + 16) = v39;
      v60 = v89[0];
      *(v59 + 24) = v88;
      *(v59 + 40) = v60;
      *(v59 + 49) = *(v89 + 9);
      sub_218E0DF9C(&v88, &v83);
      v61 = sub_219BE2E54();
      sub_219BE2F94();

      v62 = sub_219BF66A4();
      sub_219BE2FE4();

      return;
    }

    v71 = v10;
    v34 = v21;
    sub_218E0DF9C(&v88, &v83);
    sub_218E0DF9C(&v88, &v83);
    v26 = 0;
LABEL_23:
    v35 = v27;
    sub_218E0DFF8(v27, v34);
    v36 = v13;
    v37 = v13;
    v19 = v80;
    v15 = v76;
    LOBYTE(v16) = v77;
    sub_218E0DFF8(v80, v36);
    sub_218AA1438(v35, v34, v26);

    v38 = v82;

    sub_218AA1438(v19, v37, v38);
    v10 = v71;
    goto LABEL_24;
  }

  v27 = v22;
  if (v23)
  {
    v26 = v23;
    v71 = v10;
    v34 = v21;
    sub_218E0DF9C(&v88, &v83);
    sub_218E0DF9C(&v88, &v83);
    goto LABEL_23;
  }

  sub_218E0DF9C(&v88, &v83);
  sub_218E0DF9C(&v88, &v83);
  sub_218E0DFF8(v22, v21);
  v63 = v80;
  v15 = v76;
  LOBYTE(v16) = v77;
  sub_218E0DFF8(v80, v13);
  sub_218AA1438(v22, v21, 0);

  sub_218AA1438(v63, v13, 0);
  v19 = v63;
LABEL_34:
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v64 = qword_280F61720;
  sub_218E0D9F4(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_219C09BA0;
  *&v83 = v19;
  *(&v83 + 1) = v79;
  *v84 = v82;
  *&v84[8] = v81;
  *&v84[16] = v15;
  v84[24] = v16;
  v66 = sub_218E4A7F8();
  v68 = v67;
  *(v65 + 56) = MEMORY[0x277D837D0];
  *(v65 + 64) = sub_2186FC3BC();
  *(v65 + 32) = v66;
  *(v65 + 40) = v68;
  sub_218E0E194(&v88);
  v69 = sub_219BF6214();
  sub_219BE5314("Search was dedupped as token matches current token, token=%{public}@", 68, 2, &dword_2186C1000, v64, v69, v65);
}

uint64_t sub_218E08614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v76 = a1;
  v74 = a4;
  v7 = *(a3 + 8);
  v84 = *a3;
  v8 = *(a3 + 24);
  v81 = *(a3 + 16);
  v82 = v8;
  v80 = *(a3 + 32);
  v83 = *(a3 + 40);
  v9 = type metadata accessor for SearchResults(0);
  v10 = *(v9 - 8);
  v72 = v9;
  v73 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v75 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SearchExpandRequest(0);
  MEMORY[0x28223BE20](v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2 + *(*a2 + 152);
  v18 = *v16;
  v17 = *(v16 + 8);
  v19 = *(v16 + 16);
  v20 = *(v16 + 24);
  v21 = *(v16 + 32);
  v22 = *(v16 + 40);
  if (!v7)
  {
    if (!v17)
    {
      v70 = v13;
      sub_218E0DFF8(v18, 0);
      sub_218E0E7BC(a3, v85);
      v45 = v84;
      v46 = 0;
      v47 = v81;
      goto LABEL_25;
    }

    v38 = *v16;
    v39 = *(v16 + 16);
    v78 = *(v16 + 8);
    v79 = v18;
    v71 = v21;
    sub_218E0DFF8(v38, v78);
    sub_218E0E7BC(a3, v85);
    v40 = v81;
    v41 = v84;
LABEL_15:
    sub_218AA1438(v41, v7, v40);
    v43 = v78;
    v42 = v79;
    v44 = v39;
LABEL_22:
    sub_218AA1438(v42, v43, v44);
    goto LABEL_23;
  }

  v78 = *(v16 + 8);
  v79 = v18;
  if (!v17)
  {
    v39 = v19;
    v71 = v21;
    sub_218E0DFF8(v18, 0);
    sub_218E0E7BC(a3, v85);
    v41 = v84;
    v40 = v81;
    sub_218E0DFF8(v84, v7);

    goto LABEL_15;
  }

  v70 = v13;
  if (v84 != v18 || v17 != v7)
  {
    v68 = v19;
    v24 = v20;
    v25 = v15;
    v26 = v11;
    v27 = v21;
    v28 = v7;
    v29 = v22;
    v30 = v17;
    v31 = sub_219BF78F4();
    v17 = v30;
    v19 = v68;
    v20 = v24;
    v18 = v79;
    v22 = v29;
    v7 = v28;
    v21 = v27;
    v11 = v26;
    v15 = v25;
    if ((v31 & 1) == 0)
    {
      v49 = v30;
      v48 = v68;
      v77 = v20;
      v69 = v22;
      sub_218E0DFF8(v79, v49);
      sub_218E0E7BC(a3, v85);
      v32 = v81;
      goto LABEL_21;
    }
  }

  v32 = v81;
  if (!v81)
  {
    if (v19)
    {
      v48 = v19;
      v77 = v20;
      v69 = v22;
      sub_218E0DFF8(v18, v17);
      sub_218E0E7BC(a3, v85);
LABEL_21:
      v50 = v84;
      sub_218E0DFF8(v84, v7);
      sub_218AA1438(v18, v78, v48);

      v42 = v50;
      v43 = v7;
      v44 = v32;
      goto LABEL_22;
    }

    v53 = v17;
    sub_218E0DFF8(v18, v17);
    sub_218E0E7BC(a3, v85);
    sub_218E0DFF8(v84, v7);
    sub_218AA1438(v79, v53, 0);

    v45 = v84;
    v46 = v7;
    v47 = 0;
LABEL_25:
    sub_218AA1438(v45, v46, v47);
LABEL_26:
    sub_219BF5CD4();
    v55 = v54;
    v56 = *(a2 + *(*a2 + 120));
    v57 = v70;
    v58 = v76;
    sub_218E0E818(v76, &v15[*(v70 + 20)], type metadata accessor for SearchResults);
    type metadata accessor for SearchFeedGapLocation(0);
    v59 = swift_storeEnumTagMultiPayload();
    v60 = *(v58 + *(v72 + 40));
    strcpy(v15, "prewarmRequest");
    v15[15] = -18;
    *&v15[*(v57 + 24)] = v60;
    MEMORY[0x28223BE20](v59);
    *(&v66 - 4) = v56;
    *(&v66 - 3) = v15;
    *(&v66 - 2) = v74;
    sub_219BE3204();
    v61 = v75;
    sub_218E0E818(v58, v75, type metadata accessor for SearchResults);
    v62 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v63 = swift_allocObject();
    sub_218E0FE18(v61, v63 + v62, type metadata accessor for SearchResults);
    *(v63 + ((v11 + v62 + 7) & 0xFFFFFFFFFFFFFFF8)) = v55;
    v64 = sub_219BE2E54();
    type metadata accessor for SearchPrewarmResult(0);
    v51 = sub_219BE2F64();

    sub_218E0FE80(v15, type metadata accessor for SearchExpandRequest);
    return v51;
  }

  v69 = v22;
  if (!v19)
  {
    v77 = v20;
    sub_218E0DFF8(v18, v17);
    sub_218E0E7BC(a3, v85);
    v48 = 0;
    goto LABEL_21;
  }

  v71 = v21;
  v67 = v7;
  v33 = v19;
  LODWORD(v68) = sub_219417FCC(v81, v19);
  v34 = v18;
  v35 = v78;
  sub_218E0DFF8(v34, v78);
  sub_218E0E7BC(a3, v85);
  v36 = v67;
  v37 = v81;
  sub_218E0DFF8(v84, v67);
  sub_218AA1438(v79, v35, v33);

  sub_218AA1438(v84, v36, v37);
  if (v68)
  {
    goto LABEL_26;
  }

LABEL_23:
  v51 = sub_219BE1D94();
  sub_2186D76E8(&qword_27CC0B2F0, MEMORY[0x277D6CAF0], MEMORY[0x277D6CAF8]);
  swift_allocError();
  (*(*(v51 - 8) + 104))(v52, *MEMORY[0x277D6CAE8], v51);
  swift_willThrow();
  return v51;
}

uint64_t sub_218E08E2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *a2;
  v7 = *(a3 + 8);
  v68 = *a3;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  v65 = *(a3 + 32);
  v66 = v8;
  v64 = *(a3 + 40);
  v60 = v6;
  v61 = a1;
  v62 = type metadata accessor for SearchPrewarmResult(0);
  v10 = *(v62 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v62);
  v12 = a2 + *(v5 + 152);
  v14 = *v12;
  v13 = *(v12 + 1);
  v15 = *(v12 + 2);
  v16 = *(v12 + 3);
  v17 = *(v12 + 4);
  v18 = v12[40];
  if (!v7)
  {
    if (!v13)
    {
      v56 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_218E0DFF8(v14, 0);
      sub_218E0E7BC(a3, v67);
      v38 = v68;
      v39 = 0;
      v40 = v9;
      goto LABEL_25;
    }

    v32 = *v12;
    v33 = *(v12 + 1);
    v63 = *(v12 + 2);
    v59 = v13;
    sub_218E0DFF8(v32, v33);
    sub_218E0E7BC(a3, v67);
    v34 = v68;
    v58 = v17;
LABEL_15:
    sub_218AA1438(v34, v7, v9);
    v35 = v14;
    v36 = v59;
    v37 = v63;
LABEL_22:
    sub_218AA1438(v35, v36, v37);
    goto LABEL_23;
  }

  v63 = *(v12 + 2);
  if (!v13)
  {
    v59 = 0;
    sub_218E0DFF8(v14, 0);
    sub_218E0E7BC(a3, v67);
    v58 = v17;
    v34 = v68;
    sub_218E0DFF8(v68, v7);

    goto LABEL_15;
  }

  v56 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v7;
  if (v68 != v14 || v13 != v7)
  {
    v59 = v11;
    v20 = v14;
    v21 = v16;
    v22 = v17;
    v23 = v10;
    v24 = v9;
    v25 = v18;
    v26 = sub_219BF78F4();
    v15 = v63;
    v16 = v21;
    v14 = v20;
    v18 = v25;
    v9 = v24;
    v10 = v23;
    v17 = v22;
    if ((v26 & 1) == 0)
    {
      v55 = v16;
      v54 = v18;
      sub_218E0DFF8(v20, v13);
      sub_218E0E7BC(a3, v67);
      goto LABEL_21;
    }
  }

  if (!v9)
  {
    if (v15)
    {
      v55 = v16;
      v54 = v18;
      sub_218E0DFF8(v14, v13);
      sub_218E0E7BC(a3, v67);
LABEL_21:
      v41 = v14;
      v42 = v68;
      v14 = v57;
      sub_218E0DFF8(v68, v57);
      sub_218AA1438(v41, v13, v63);

      v35 = v42;
      v36 = v14;
      v37 = v9;
      goto LABEL_22;
    }

    v59 = v13;
    sub_218E0DFF8(v14, v13);
    sub_218E0E7BC(a3, v67);
    v58 = v17;
    v45 = v57;
    sub_218E0DFF8(v68, v57);
    sub_218AA1438(v14, v59, 0);

    v38 = v68;
    v39 = v45;
    v40 = 0;
LABEL_25:
    v31.n128_f64[0] = sub_218AA1438(v38, v39, v40);
LABEL_26:
    v46 = v61;
    v67[0] = (*(*(v60 + 88) + 8))(v61, *(v60 + 80), v31);
    sub_218E0DD90(0);
    sub_2186D76E8(&unk_280EE5690, sub_218E0DD90, MEMORY[0x277D6D890]);
    sub_219BE6E84();
    v47 = v46;
    v48 = v56;
    sub_218E0E818(v47, v56, type metadata accessor for SearchPrewarmResult);
    v49 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v50 = swift_allocObject();
    sub_218E0FE18(v48, v50 + v49, type metadata accessor for SearchPrewarmResult);
    v51 = sub_219BE2E54();
    v14 = sub_219BE2F74();

    return v14;
  }

  v55 = v16;
  v54 = v18;
  if (!v15)
  {
    sub_218E0DFF8(v14, v13);
    sub_218E0E7BC(a3, v67);
    v63 = 0;
    goto LABEL_21;
  }

  v53 = v9;
  v59 = v10;
  v27 = v13;
  LODWORD(v58) = sub_219417FCC(v9, v15);
  sub_218E0DFF8(v14, v13);
  sub_218E0E7BC(a3, v67);
  v28 = v14;
  v14 = v57;
  v29 = v53;
  sub_218E0DFF8(v68, v57);
  v30 = v27;
  v10 = v59;
  sub_218AA1438(v28, v30, v63);

  v31.n128_f64[0] = sub_218AA1438(v68, v14, v29);
  if (v58)
  {
    goto LABEL_26;
  }

LABEL_23:
  v43 = sub_219BE1D94();
  sub_2186D76E8(&qword_27CC0B2F0, MEMORY[0x277D6CAF0], MEMORY[0x277D6CAF8]);
  swift_allocError();
  (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D6CAE8], v43);
  swift_willThrow();
  return v14;
}

uint64_t sub_218E09554(uint64_t a1, uint64_t a2, __int128 *a3, double a4)
{
  v8 = type metadata accessor for SearchResults(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF5CD4();
  v13 = v12;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    v27[3] = a2;
    v30 = v4;
    v16 = *(a1 + *(type metadata accessor for SearchPrewarmResult(0) + 24));
    v17 = *(v15 + 88);
    v27[1] = *(v17 + 32);
    v27[2] = a1;
    sub_218E0E818(a1, v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchResults);
    v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    sub_218E0FE18(v11, v21 + v18, type metadata accessor for SearchResults);
    *(v21 + v19) = v17;
    *(v21 + v20) = v13;
    *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v16;
    swift_unknownObjectRetain();
    sub_219BDD154();

    if (swift_unknownObjectWeakLoadStrong())
    {

      sub_219BE5914();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v22 = a3[1];
  v28 = *a3;
  v29[0] = v22;
  *(v29 + 9) = *(a3 + 25);
  if (sub_2192FF134() || (sub_218A3058C(), (v23 & 1) == 0))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      *(swift_allocObject() + 16) = v26;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      sub_218E0E360(v25);
      swift_unknownObjectRelease();
    }
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_218E09840(void *a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_219BF1584();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v52 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v4;
  MEMORY[0x28223BE20](v5);
  v51 = &v50 - v6;
  sub_218E0E1E8(0);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DB50(0, &qword_280EE7DC8, MEMORY[0x277D6CAF0]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  v12 = sub_219BE1D94();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v54 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v53 = &v50 - v16;
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v17 = qword_280F61720;
  v18 = sub_219BF61F4();
  sub_218E0D9F4(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C09BA0;
  v60 = 0;
  v61 = 0xE000000000000000;
  v59 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v20 = v60;
  v21 = v61;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 64) = sub_2186FC3BC();
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  sub_219BE5314("Search request failed, error=%{public}@", 39, 2, &dword_2186C1000, v17, v18, v19);

  v60 = a1;
  v22 = a1;
  v23 = swift_dynamicCast();
  v24 = *(v13 + 56);
  if (v23)
  {
    v24(v11, 0, 1, v12);
    v25 = v53;
    (*(v13 + 32))(v53, v11, v12);
    v26 = v54;
    (*(v13 + 104))(v54, *MEMORY[0x277D6CAE8], v12);
    v27 = sub_219BE1D84();
    v28 = *(v13 + 8);
    v28(v26, v12);
    result = (v28)(v25, v12);
    v31 = v57;
    v30 = v58;
    if (v27)
    {
      return result;
    }
  }

  else
  {
    v24(v11, 1, 1, v12);
    sub_218E0FDBC(v11, &qword_280EE7DC8, MEMORY[0x277D6CAF0]);
    v31 = v57;
    v30 = v58;
  }

  v32 = v56 + *(*v56 + 152);
  v33 = *v32;
  v34 = *(v32 + 8);
  v35 = *(v32 + 16);
  *v32 = 0u;
  *(v32 + 16) = 0u;
  *(v32 + 25) = 0u;
  sub_218AA1438(v33, v34, v35);
  v36 = v55;
  sub_219BF1B74();
  if ((*(v31 + 48))(v36, 1, v30) == 1)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      if (qword_27CC07DD8 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v30, qword_27CCD8500);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v39 = Strong;
        v40 = v51;
        (*(v31 + 16))(v51, v37, v30);
        v41 = (*(v31 + 80) + 24) & ~*(v31 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = v39;
        (*(v31 + 32))(v42 + v41, v40, v30);
        swift_unknownObjectRetain();
        sub_219BE3494();

        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v43 = *(v31 + 32);
    v44 = v52;
    v43(v52, v36, v30);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v45 = swift_unknownObjectWeakLoadStrong();
      if (v45)
      {
        v46 = v45;
        v47 = v51;
        (*(v31 + 16))(v51, v44, v30);
        v48 = (*(v31 + 80) + 24) & ~*(v31 + 80);
        v49 = swift_allocObject();
        *(v49 + 16) = v46;
        v43((v49 + v48), v47, v30);
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    return (*(v31 + 8))(v44, v30);
  }

  return result;
}

uint64_t sub_218E09F60(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v60 = a1;
  v6 = *v4;
  v53 = a2;
  v54 = v6;
  v52 = type metadata accessor for SearchExpandRequest(0);
  MEMORY[0x28223BE20](v52);
  v57 = (&v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v58);
  v9 = (&v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for SearchFeedGapLocation(0);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DB50(0, &qword_27CC12640, sub_2189539F0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v49 - v13;
  sub_2189539F0(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v59 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AF3D74(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a3 + 16);
  v63[0] = *a3;
  v63[1] = v24;
  v63[2] = *(a3 + 32);
  v64 = *(a3 + 48);
  v55 = v4;
  sub_219BE6EC4();
  v62 = *&v61[0];
  sub_2189871A8(0);
  sub_2186D76E8(&qword_280EE5510, sub_2189871A8, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();
  v25 = v20;
  v26 = v17;
  v27 = v60;

  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_219BE1D74();
  sub_219BEB1C4();

  if ((*(v26 + 48))(v14, 1, v16) == 1)
  {
    sub_218E0FDBC(v14, &qword_27CC12640, sub_2189539F0);
    v28 = v27[3];
    v29 = v27[4];
    __swift_project_boxed_opaque_existential_1(v27, v28);
    MEMORY[0x21CEC0B20](0, v28, v29);
    return (*(v21 + 8))(v23, v25);
  }

  else
  {
    v51 = v23;
    v50 = v21;
    v31 = v59;
    v32 = v16;
    (*(v26 + 32))(v59, v14, v16);
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_218E0FE80(v9, type metadata accessor for SearchModel);
      v33 = v27[3];
      v34 = v27[4];
      __swift_project_boxed_opaque_existential_1(v27, v33);
      MEMORY[0x21CEC0B20](0, v33, v34);
      (*(v26 + 8))(v31, v32);
      return (*(v50 + 8))(v51, v25);
    }

    else
    {
      v35 = *v9;
      v36 = v9[1];
      sub_218E0DBA4(0, &qword_280E8F9C0, type metadata accessor for SearchFeedGapLocation, "identifier location ");
      v38 = v9 + *(v37 + 48);
      v39 = v56;
      sub_218E0FE18(v38, v56, type metadata accessor for SearchFeedGapLocation);
      v40 = v52;
      v41 = v57;
      v42 = sub_218E0E818(v39, v57 + *(v52 + 20), type metadata accessor for SearchFeedGapLocation);
      *v41 = v35;
      v41[1] = v36;
      *(v41 + *(v40 + 24)) = v53;
      MEMORY[0x28223BE20](v42);
      *(&v49 - 4) = v55;
      *(&v49 - 3) = v43;
      *(&v49 - 2) = v63;
      sub_219BE3204();
      sub_2187D9028();
      v44 = sub_219BF66A4();
      sub_219BE95D4();
      sub_219BE2F84();

      v45 = sub_219BF66A4();
      sub_218718690(v27, v61);
      v46 = swift_allocObject();
      sub_2186CB1F0(v61, v46 + 16);
      sub_219BE2F74();

      v47 = sub_219BF66A4();
      sub_218718690(v27, v61);
      v48 = swift_allocObject();
      sub_2186CB1F0(v61, v48 + 16);
      sub_219BE2FD4();

      sub_218E0FE80(v56, type metadata accessor for SearchFeedGapLocation);
      (*(v26 + 8))(v59, v32);
      (*(v50 + 8))(v51, v25);
      return sub_218E0FE80(v57, type metadata accessor for SearchExpandRequest);
    }
  }
}

uint64_t sub_218E0A718(_OWORD *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v7[4] = a1[4];
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  *&v7[0] = (*(*(v2 + 88) + 16))(v7, *(v2 + 80));
  sub_218E0DD90(0);
  sub_2186D76E8(&unk_280EE5690, sub_218E0DD90, MEMORY[0x277D6D890]);
  v5 = sub_219BE6E84();

  return v5;
}

uint64_t sub_218E0A830(uint64_t a1, void *a2)
{
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v10 = qword_280F61720;
  v9 = sub_219BF61F4();
  sub_218E0D9F4(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  sub_2186CFDE4(0, &unk_280EE3DF0, MEMORY[0x277D6E8E8]);
  sub_219BF7484();
  v4 = MEMORY[0x277D837D0];
  *(v3 + 56) = MEMORY[0x277D837D0];
  v5 = sub_2186FC3BC();
  *(v3 + 64) = v5;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0xE000000000000000;
  sub_219BE5314("Error while trying to expand search feed, request=%{public}@, error=%{public}@", 78, 2, &dword_2186C1000, v10, v9, v3);

  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  return MEMORY[0x21CEC0B20](0, v6, v7);
}

void sub_218E0AA10()
{
  v1 = *v0;
  v2 = sub_219BE61B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  sub_219BE6F74();

  v6 = (*(v3 + 88))(v5, v2);
  if (v6 != *MEMORY[0x277D6D520])
  {
    if (v6 == *MEMORY[0x277D6D518] || v6 == *MEMORY[0x277D6D510])
    {
      v8 = v0 + *(*v0 + 152);
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 16);
      *v8 = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 25) = 0u;
      v12 = sub_218AA1438(v9, v10, v11);
      v13[1] = (*(*(v1 + 88) + 40))(*(v1 + 80), v12);
      sub_218E0DD90(0);
      sub_2186D76E8(&unk_280EE5690, sub_218E0DD90, MEMORY[0x277D6D890]);
      sub_219BE6EF4();
    }

    else
    {
      (*(v3 + 8))(v5, v2);
    }
  }
}

void sub_218E0AC58(uint64_t a1)
{
  v2 = *v1;
  sub_219BE6EC4();
  v3 = sub_218982890();

  if ((v3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v5 = CACurrentMediaTime();
  sub_219BE6084();
  v7 = *(v2 + 80);
  v6 = *(v2 + 88);
  (*(v6 + 48))();

  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v8 = qword_280F61720;
  v9 = sub_219BF6214();
  sub_219BE5314("Search feed relayout starting", 29, 2, &dword_2186C1000, v8, v9, MEMORY[0x277D84F90]);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;
  *(v11 + 32) = v5;
  *(v11 + 40) = v10;
  *(v11 + 48) = HIBYTE(v3) & 1;
  sub_218E0DD90(0);
  sub_2186D76E8(&unk_280EE5690, sub_218E0DD90, MEMORY[0x277D6D890]);

  sub_219BE6EF4();
}

void sub_218E0AF2C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v5 = qword_280F61720;
  sub_218E0D9F4(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09EC0;
  sub_219BE85F4();
  sub_219BF7484();
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_2186FC3BC();
  *(v6 + 32) = 0;
  *(v6 + 40) = 0xE000000000000000;
  sub_219BF5CD4();
  v7 = MEMORY[0x277D83A80];
  *(v6 + 96) = MEMORY[0x277D839F8];
  *(v6 + 104) = v7;
  *(v6 + 72) = v8;
  v9 = sub_219BF6214();
  sub_219BE5314("Search feed relayout finished, result=%{public}@, time=%fms", 59, 2, &dword_2186C1000, v5, v9, v6);

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a3 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        *(swift_allocObject() + 16) = Strong;
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_218E0B154@<X0>(uint64_t a1@<X0>, void (*a2)(void, void)@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v133 = a4;
  LODWORD(v142) = a3;
  v141 = a2;
  v148 = a5;
  v127 = sub_219BF0B74();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v125 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_219BDD804();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v129 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v130 = (&v105 - v9);
  sub_218E0DB50(0, &qword_280EE8E10, MEMORY[0x277D2FB40]);
  MEMORY[0x28223BE20](v10 - 8);
  v123 = &v105 - v11;
  v121 = sub_219BDDED4();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v122 = (&v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = sub_219BDDBF4();
  v128 = *(v145 - 1);
  MEMORY[0x28223BE20](v145);
  v144 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v147 = v14;
  v143 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v124 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v139 = *(v16 - 8);
  v140 = v16;
  MEMORY[0x28223BE20](v16);
  v138 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_219BDE744();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v116 = &v105 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_219BF0634();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v115 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DB50(0, &unk_280EE8AA0, MEMORY[0x277D30260]);
  MEMORY[0x28223BE20](v20 - 8);
  v112 = &v105 - v21;
  sub_218E0DB50(0, &unk_280EE8C40, MEMORY[0x277D30018]);
  MEMORY[0x28223BE20](v22 - 8);
  v110 = &v105 - v23;
  sub_2189539F0(0);
  v25 = v24;
  v106 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v107 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_219BDE7A4();
  v109 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v108 = &v105 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DC34(0, &qword_27CC0E0E8, MEMORY[0x277D6D618]);
  v136 = *(v28 - 8);
  v137 = v28;
  MEMORY[0x28223BE20](v28);
  v135 = &v105 - v29;
  v30 = sub_219BF0F34();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v105 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v35 = v34;
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v119 = &v105 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v105 - v39;
  v41 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v41);
  v43 = &v105 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = a1;
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v74 = v138;
    v75 = v139;
    v76 = v140;
    v77 = v141;
    v78 = v142;
    if (!EnumCaseMultiPayload)
    {

      sub_218E0DBA4(0, &qword_280E8F9C0, type metadata accessor for SearchFeedGapLocation, "identifier location ");
      v80 = type metadata accessor for SearchFeedGapLocation;
      v81 = &v43[*(v79 + 48)];
LABEL_10:
      sub_218E0FE80(v81, v80);
      v91 = type metadata accessor for SearchRouteModel(0);
      return (*(*(v91 - 8) + 56))(v148, 1, 1, v91);
    }

    (*(v139 + 32))(v138, v43, v140);
    sub_218E0DCF4(0, &qword_27CC11210, MEMORY[0x277D32CE0], sub_218CFD684, "tag rank ");
    v90 = v148;
    v94 = v148 + *(v93 + 48);
    sub_219BF07D4();
    (*(v75 + 8))(v74, v76);
    *v94 = v77;
    v94[8] = v78 & 1;
    v71 = type metadata accessor for SearchRouteModel(0);
LABEL_12:
    swift_storeEnumTagMultiPayload();
    v72 = *(*(v71 - 8) + 56);
    v73 = v90;
    return v72(v73, 0, 1, v71);
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v36 + 16))(v40, v43, v35);
    v147 = v35;
    sub_219BF07D4();
    v82 = sub_219BF0F14();
    v145 = *(v31 + 8);
    v145(v33, v30);
    v83 = [v82 contentType];
    swift_unknownObjectRelease();
    if (v83 != 1)
    {
      v149 = *(v146 + *(*v146 + 136));
      sub_218E0DC14(0);
      sub_2186D76E8(&qword_280EE4BE8, sub_218E0DC14, MEMORY[0x277D6DF38]);
      v95 = v135;
      sub_219BE91E4();
      sub_218B13BE8(v40);
      v97 = v96;
      (*(v136 + 8))(v95, v137);
      v98 = *(v36 + 8);
      v99 = v147;
      v98(v40, v147);
      sub_218E0DCF4(0, &qword_280EE8A90, MEMORY[0x277D30268], MEMORY[0x277D2FF20], " articleNavigationAction ");
      v101 = *(v100 + 48);
      v102 = v148;
      *v148 = v97;
      v103 = sub_219BDE294();
      (*(*(v103 - 8) + 16))(v102 + v101, v133, v103);
      sub_219BDD944();
      swift_storeEnumTagMultiPayload();
      v104 = type metadata accessor for SearchRouteModel(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v104 - 8) + 56))(v102, 0, 1, v104);
      return (v98)(v43, v99);
    }

    v144 = *(v36 + 8);
    v84 = v40;
    v85 = v147;
    (v144)(v84, v147);
    (*(v36 + 32))();
    (*(v106 + 16))(v107, v134, v25);
    sub_219BF07D4();
    sub_219BF0F14();
    v145(v33, v30);
    v86 = sub_219BDE4D4();
    (*(*(v86 - 8) + 56))(v110, 1, 1, v86);
    v87 = sub_219BDEA34();
    (*(*(v87 - 8) + 56))(v112, 1, 1, v87);
    (*(v113 + 104))(v115, *MEMORY[0x277D32EA8], v114);
    sub_2186D76E8(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
    v88 = v108;
    sub_219BDE794();
    v89 = v116;
    sub_219BDEB64();
    v90 = v148;
    sub_219BDE724();
    (*(v117 + 8))(v89, v118);
    (*(v109 + 8))(v88, v111);
    (v144)(v119, v85);
    v71 = type metadata accessor for SearchRouteModel(0);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v80 = type metadata accessor for SearchModel;
    v81 = v43;
    goto LABEL_10;
  }

  v45 = v124;
  (*(v143 + 32))(v124, v43, v147);
  v46 = sub_219BE5F84();
  v47 = v122;
  *v122 = v46;
  v47[1] = v48;
  (*(v120 + 104))(v47, *MEMORY[0x277D2FDC8], v121);
  v49 = sub_219BDD944();
  (*(*(v49 - 8) + 56))(v123, 1, 1, v49);
  v50 = v144;
  sub_219BDDBD4();
  sub_218E0DBA4(0, &qword_27CC11390, MEMORY[0x277D2FC70], " context ");
  v52 = *(v51 + 48);
  v53 = v125;
  sub_219BF07D4();
  v54 = sub_219BF0B44();
  v141 = *(v126 + 8);
  v55 = v127;
  v141(v53, v127);
  v56 = [v54 identifier];

  v57 = sub_219BF5414();
  v59 = v58;

  v60 = v130;
  *v130 = v57;
  v60[1] = v59;
  v61 = v128;
  (*(v128 + 16))(v60 + v52, v50, v145);
  v62 = v131;
  v63 = v132;
  (*(v131 + 104))(v60, *MEMORY[0x277D2FB08], v132);
  sub_219BF07D4();
  sub_219BF0AF4();
  v142 = v64;
  v141(v53, v55);
  (*(v62 + 16))(v129, v60, v63);
  v149 = *(v146 + *(*v146 + 136));
  sub_218E0DC14(0);
  sub_2186D76E8(&qword_280EE4BE8, sub_218E0DC14, MEMORY[0x277D6DF38]);
  v65 = v135;
  sub_219BE91E4();
  sub_218B15F58(v66);
  v68 = v67;
  (*(v136 + 8))(v65, v137);
  v150 = sub_219BDE904();
  v151 = MEMORY[0x277D301E8];
  v149 = v68;
  sub_219BDE674();
  swift_allocObject();
  v69 = sub_219BDE604();
  (*(v62 + 8))(v60, v63);
  (*(v61 + 8))(v144, v145);
  (*(v143 + 8))(v45, v147);
  v70 = v148;
  *v148 = v69;
  v71 = type metadata accessor for SearchRouteModel(0);
  swift_storeEnumTagMultiPayload();
  v72 = *(*(v71 - 8) + 56);
  v73 = v70;
  return v72(v73, 0, 1, v71);
}

void sub_218E0C4B4(uint64_t *a1@<X1>, int a2@<W2>, _OWORD *a3@<X8>)
{
  v43 = a2;
  v5 = type metadata accessor for SearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = a1[4];
  v42 = *(a1 + 40);
  sub_218953A84(0);
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = type metadata accessor for SearchModel;
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v22 = *v7;
        v23 = *(**v7 + 88);
        if (EnumCaseMultiPayload == 4)
        {
          v24 = type metadata accessor for RecipesSearchFeedGroup(0);
        }

        else
        {
          v24 = type metadata accessor for SavedRecipesSearchFeedGroup(0);
        }

        sub_218E0DA5C(v22 + *(v24 + 24) + v23, &v44, &qword_280EC6990, &qword_280EC69A0, &protocol descriptor for StreamingRecipeResults);

        if (!*(&v45 + 1))
        {
          v19 = &qword_280EC6990;
          v20 = &qword_280EC69A0;
          v21 = &protocol descriptor for StreamingRecipeResults;
          goto LABEL_36;
        }

        sub_2186CB1F0(&v44, v49);
        sub_2186CB1F0(v49, &v44);
        v32 = 3;
        goto LABEL_33;
      }

      v29 = *v7;
      v30 = *(**v7 + 88);
      v31 = type metadata accessor for SportsSearchFeedGroup(0);
      sub_218E0DA5C(v29 + *(v31 + 24) + v30, &v44, &qword_280ED01D0, &qword_280ED01E0, &protocol descriptor for StreamingTagResults);

      if (*(&v45 + 1))
      {
        sub_2186CB1F0(&v44, v49);
        sub_2186CB1F0(v49, &v44);
        v32 = 4;
LABEL_33:
        BYTE8(v46) = v32;
        goto LABEL_34;
      }

      goto LABEL_29;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v15 = *v7;
        v16 = *(**v7 + 88);
        v17 = type metadata accessor for ChannelsSearchFeedGroup(0);
        sub_218E0DA5C(v15 + *(v17 + 24) + v16, &v44, &qword_280ED01D0, &qword_280ED01E0, &protocol descriptor for StreamingTagResults);

        if (!*(&v45 + 1))
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }

      v34 = *v7;
      v35 = *(**v7 + 88);
      v36 = type metadata accessor for TopicsSearchFeedGroup(0);
      sub_218E0DA5C(v34 + *(v36 + 24) + v35, &v44, &qword_280ED01D0, &qword_280ED01E0, &protocol descriptor for StreamingTagResults);

      if (*(&v45 + 1))
      {
LABEL_28:
        sub_2186CB1F0(&v44, v49);
        sub_2186CB1F0(v49, &v44);
        v32 = 2;
        goto LABEL_33;
      }

LABEL_29:
      v19 = &qword_280ED01D0;
      v20 = &qword_280ED01E0;
      v21 = &protocol descriptor for StreamingTagResults;
      goto LABEL_36;
    }

    v26 = *v7;
    v27 = *(**v7 + 88);
    v28 = type metadata accessor for ArticlesSearchFeedGroup(0);
    sub_218E0DA5C(v26 + *(v28 + 24) + v27, &v44, &qword_280EC30F0, qword_280EC3100, &protocol descriptor for StreamingArticleResults);

    if (*(&v45 + 1))
    {
LABEL_20:
      sub_2186CB1F0(&v44, v49);
      sub_2186CB1F0(v49, &v44);
      BYTE8(v46) = 0;
LABEL_34:
      *&v47 = v9;
      *(&v47 + 1) = v8;
      *v48 = v11;
      *&v48[8] = v10;
      *&v48[16] = v12;
      v48[24] = v42;
      v48[25] = v43 & 1;
      v37 = v45;
      *a3 = v44;
      a3[1] = v37;
      v38 = v47;
      a3[2] = v46;
      a3[3] = v38;
      a3[4] = *v48;
      *(a3 + 74) = *&v48[10];
      v39 = type metadata accessor for SearchRouteModel(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v39 - 8) + 56))(a3, 0, 1, v39);

      return;
    }

LABEL_11:
    v19 = &qword_280EC30F0;
    v20 = qword_280EC3100;
    v21 = &protocol descriptor for StreamingArticleResults;
LABEL_36:
    sub_218E0DAE0(&v44, v19, v20, v21);
    goto LABEL_37;
  }

  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 9)
    {
      v33 = *(v7 + 1);
      v44 = *v7;
      v45 = v33;
      *&v46 = *(v7 + 4);
      if (*(&v33 + 1))
      {
LABEL_26:
        sub_2186CB1F0(&v44, v49);
        sub_2186CB1F0(v49, &v44);
        v32 = 1;
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    if (EnumCaseMultiPayload == 10)
    {
      v25 = *(v7 + 1);
      v44 = *v7;
      v45 = v25;
      *&v46 = *(v7 + 4);
      if (!*(&v25 + 1))
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 6)
    {
      v14 = type metadata accessor for SearchSectionDescriptor;
    }

    else if (EnumCaseMultiPayload != 7)
    {
      v18 = *(v7 + 1);
      v44 = *v7;
      v45 = v18;
      *&v46 = *(v7 + 4);
      if (*(&v18 + 1))
      {
        goto LABEL_20;
      }

      goto LABEL_11;
    }

    sub_218E0FE80(v7, v14);
  }

LABEL_37:
  v40 = type metadata accessor for SearchRouteModel(0);
  (*(*(v40 - 8) + 56))(a3, 1, 1, v40);
}

char *sub_218E0CA28()
{
  v1 = *v0;
  sub_218774F78((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_218AA1438(*(v0 + *(*v0 + 152)), *(v0 + *(*v0 + 152) + 8), *(v0 + *(*v0 + 152) + 16));

  return v0;
}

uint64_t sub_218E0CB68()
{
  sub_218E0CA28();

  return swift_deallocClassInstance();
}

uint64_t sub_218E0CC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v99 = a4;
  v88 = a3;
  v87 = a2;
  v105 = a5;
  v6 = sub_219BDD804();
  v94 = *(v6 - 8);
  v95 = v6;
  MEMORY[0x28223BE20](v6);
  v92 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v93 = (&v82 - v9);
  sub_218E0DB50(0, &qword_280EE8E10, MEMORY[0x277D2FB40]);
  MEMORY[0x28223BE20](v10 - 8);
  v86 = &v82 - v11;
  v84 = sub_219BDDED4();
  v85 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v13 = (&v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_219BDDBF4();
  v90 = *(v14 - 8);
  v91 = v14;
  MEMORY[0x28223BE20](v14);
  v89 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BF0B74();
  v97 = *(v16 - 8);
  v98 = v16;
  MEMORY[0x28223BE20](v16);
  v96 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DC34(0, &qword_27CC0E0E8, MEMORY[0x277D6D618]);
  v102 = *(v18 - 8);
  v103 = v18;
  MEMORY[0x28223BE20](v18);
  v101 = &v82 - v19;
  v20 = sub_219BF0F34();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BF0614();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v82 - v29;
  sub_218B58CA4(0);
  v100 = a1;
  sub_219BE5FD4();
  v31 = (*(v25 + 88))(v30, v24);
  if (v31 == *MEMORY[0x277D32DB8] || v31 == *MEMORY[0x277D32D10] || v31 == *MEMORY[0x277D32E00])
  {
    goto LABEL_26;
  }

  if (v31 != *MEMORY[0x277D32E10])
  {
    if (v31 != *MEMORY[0x277D32E18] && v31 != *MEMORY[0x277D32DD8] && v31 != *MEMORY[0x277D32CF8])
    {
      if (v31 == *MEMORY[0x277D32DC0])
      {
        (*(v25 + 96))(v30, v24);
        sub_218E0DCF4(0, &qword_27CC11210, MEMORY[0x277D32CE0], sub_218CFD684, "tag rank ");
        v45 = v105;
        v53 = v105 + *(v52 + 48);
        v54 = sub_219BF04A4();
        (*(*(v54 - 8) + 32))(v45, v30, v54);
        *v53 = 0;
        v53[8] = 1;
        v47 = type metadata accessor for SearchRouteModel(0);
        goto LABEL_6;
      }

      if (v31 != *MEMORY[0x277D32CF0] && v31 != *MEMORY[0x277D32E08] && v31 != *MEMORY[0x277D32DB0] && v31 != *MEMORY[0x277D32DE0])
      {
        if (v31 == *MEMORY[0x277D32DF0])
        {
          (*(v25 + 96))(v30, v24);
          (*(v97 + 32))();
          v55 = v88;

          v56 = sub_219BE5F84();
          *v13 = v87;
          v13[1] = v55;
          v13[2] = v56;
          v13[3] = v57;
          (*(v85 + 104))(v13, *MEMORY[0x277D2FDC0], v84);
          v58 = sub_219BDD944();
          (*(*(v58 - 8) + 56))(v86, 1, 1, v58);
          v59 = v89;
          sub_219BDDBD4();
          sub_218E0DBA4(0, &qword_27CC11390, MEMORY[0x277D2FC70], " context ");
          v61 = *(v60 + 48);
          v62 = sub_219BF0B44();
          v63 = [v62 identifier];

          v64 = sub_219BF5414();
          v66 = v65;

          v67 = v93;
          *v93 = v64;
          v67[1] = v66;
          v69 = v90;
          v68 = v91;
          (*(v90 + 16))(v67 + v61, v59, v91);
          v70 = v94;
          v71 = v95;
          (*(v94 + 104))(v67, *MEMORY[0x277D2FB08], v95);
          v72 = sub_219BF0AF4();
          v99 = v73;
          v100 = v72;
          (*(v70 + 16))(v92, v67, v71);
          v106 = *(v104 + *(*v104 + 136));
          sub_218E0DC14(0);
          sub_2186D76E8(&qword_280EE4BE8, sub_218E0DC14, MEMORY[0x277D6DF38]);
          v74 = v101;
          sub_219BE91E4();
          sub_218B15F58(v75);
          v77 = v76;
          (*(v102 + 8))(v74, v103);
          v107 = sub_219BDE904();
          v108 = MEMORY[0x277D301E8];
          v106 = v77;
          sub_219BDE674();
          swift_allocObject();
          v78 = sub_219BDE604();
          (*(v70 + 8))(v67, v71);
          (*(v69 + 8))(v59, v68);
          (*(v97 + 8))(v96, v98);
          v79 = v105;
          *v105 = v78;
          v47 = type metadata accessor for SearchRouteModel(0);
          swift_storeEnumTagMultiPayload();
          v48 = *(*(v47 - 8) + 56);
          v49 = v79;
          goto LABEL_7;
        }

        if (v31 != *MEMORY[0x277D32D38] && v31 != *MEMORY[0x277D32DE8] && v31 != *MEMORY[0x277D32D18] && v31 != *MEMORY[0x277D32DA8] && v31 != *MEMORY[0x277D32DF8])
        {
          if (v31 != *MEMORY[0x277D32DD0])
          {
            v80 = type metadata accessor for SearchRouteModel(0);
            (*(*(v80 - 8) + 56))(v105, 1, 1, v80);
            return (*(v25 + 8))(v30, v24);
          }

          goto LABEL_27;
        }
      }
    }

LABEL_26:
    (*(v25 + 8))(v30, v24);
LABEL_27:
    v51 = type metadata accessor for SearchRouteModel(0);
    v48 = *(*(v51 - 8) + 56);
    v49 = v105;
    v50 = 1;
    return v48(v49, v50, 1, v51);
  }

  (*(v25 + 96))(v30, v24);
  v83 = v21;
  v32 = *(v21 + 32);
  v82 = v20;
  v32(v23, v30, v20);
  v106 = *(v104 + *(*v104 + 136));
  sub_218E0DC14(0);
  sub_2186D76E8(&qword_280EE4BE8, sub_218E0DC14, MEMORY[0x277D6DF38]);
  v33 = v101;
  sub_219BE91E4();
  v104 = sub_219BE5F84();
  v35 = v34;
  v98 = sub_219BF0E44();
  v37 = v36;
  sub_219BE5FD4();
  v38 = sub_219BF04D4();
  v40 = v39;
  (*(v25 + 8))(v27, v24);
  sub_218B14F98(v104, v35, v98, v37, v38, v40);
  v42 = v41;

  (*(v102 + 8))(v33, v103);
  (*(v83 + 8))(v23, v82);
  sub_218E0DCF4(0, &qword_280EE8A90, MEMORY[0x277D30268], MEMORY[0x277D2FF20], " articleNavigationAction ");
  v44 = *(v43 + 48);
  v45 = v105;
  *v105 = v42;
  v46 = sub_219BDE294();
  (*(*(v46 - 8) + 16))(v45 + v44, v99, v46);
  sub_219BDD944();
  swift_storeEnumTagMultiPayload();
  v47 = type metadata accessor for SearchRouteModel(0);
LABEL_6:
  swift_storeEnumTagMultiPayload();
  v48 = *(*(v47 - 8) + 56);
  v49 = v45;
LABEL_7:
  v50 = 0;
  v51 = v47;
  return v48(v49, v50, 1, v51);
}

void sub_218E0D9F4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186CFDE4(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_218E0DA5C(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_218E0D9F4(0, a3, a4, a5, MEMORY[0x277D83D88]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_218E0DAE0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_218E0D9F4(0, a2, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_218E0DB50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_218E0DBA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_218E0DC34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SearchLayoutSectionDescriptor;
    v8[1] = type metadata accessor for SearchLayoutModel(255);
    v8[2] = sub_218B14D6C();
    v8[3] = sub_2186D76E8(&qword_280ED5450, type metadata accessor for SearchLayoutModel, &unk_219C323E4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218E0DCF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_218E0DDC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchSectionDescriptor(255);
    v8[1] = type metadata accessor for SearchModel(255);
    v8[2] = sub_2186D76E8(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
    v8[3] = sub_2186D76E8(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218E0DEB4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  v5[0] = *v2;
  v5[1] = v3;
  v5[2] = *(v2 + 32);
  v6 = *(v2 + 48);
  return sub_21977B08C(v1, v5);
}

double sub_218E0DFF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_218E0E03C()
{
  v1 = *(v0 + 24);
  v2 = v1[1];
  v5 = *v1;
  v6[0] = v2;
  *(v6 + 9) = *(v1 + 25);
  v3 = off_282A865E8;
  type metadata accessor for SearchDataManager();
  return v3(&v5);
}

void sub_218E0E1E8(uint64_t a1)
{
  if (!qword_280E90778)
  {
    sub_2186FB6D4();
    v1 = sub_219BF1B54();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90778);
    }
  }
}

uint64_t sub_218E0E248()
{
  sub_219BF1584();
  v1 = *(v0 + 16);

  return sub_218DA3A08(v1);
}

uint64_t sub_218E0E2AC(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchResults(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_2198993DC(a1, v1 + v4, v6, v7);
}

uint64_t sub_218E0E360(uint64_t a1)
{
  v2 = sub_219BEB384();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEB394();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v39 - v11;
  sub_219BE8644();
  sub_219BE6BA4();

  v13 = (*(v7 + 88))(v12, v6);
  v14 = *MEMORY[0x277D6EC90];
  if (v13 == *MEMORY[0x277D6EC90])
  {
    (*(v7 + 96))(v12, v6);
    sub_2189DA200(0);
    v16 = *(v15 + 48);
    v17 = *(v15 + 64);
    v18 = sub_219BE73A4();
    (*(*(v18 - 8) + 8))(&v12[v17], v18);
    __swift_destroy_boxed_opaque_existential_1(&v12[v16]);
    v19 = sub_219BE66C4();
    return (*(*(v19 - 8) + 8))(v12, v19);
  }

  else
  {
    v21 = *(v7 + 8);
    v43 = v7 + 8;
    v44 = v21;
    v41 = v14;
    v21(v12, v6);
    v42 = v2;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    v24 = sub_219BDB5E4();
    v40 = v5;
    v26 = v25;

    v27 = sub_218DA4254(a1);
    v29 = v28;
    v39 = sub_219BE8644();
    sub_2189DA200(0);
    v31 = &v9[*(v30 + 48)];
    v32 = *(v30 + 64);
    MEMORY[0x21CEBD440](v24, v26, v27, v29, 0);
    v33 = sub_219BE6C74();
    v34 = MEMORY[0x277D6D7C0];
    v31[3] = v33;
    v31[4] = v34;
    __swift_allocate_boxed_opaque_existential_1(v31);
    sub_219BE6C64();
    v35 = *MEMORY[0x277D6D9C8];
    v36 = sub_219BE73A4();
    (*(*(v36 - 8) + 104))(&v9[v32], v35, v36);
    (*(v7 + 104))(v9, v41, v6);
    v37 = v40;
    v38 = v42;
    (*(v3 + 104))(v40, *MEMORY[0x277D6ECA8], v42);
    sub_219BE6BD4();

    (*(v3 + 8))(v37, v38);
    return v44(v9, v6);
  }
}

uint64_t sub_218E0E818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_48Tm()
{
  v1 = (type metadata accessor for SearchResults(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  v4 = sub_219BDF034();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = v1[10];
  v6 = sub_219BE04F4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v2 + v5, 1, v6))
  {
    (*(v7 + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_218E0EAC0(__n128 *a1)
{
  v3 = *(type metadata accessor for SearchResults(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_21977B6FC(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_218E0EB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(*v3 + 88) + 24))(a1, a2, a3, *(*v3 + 80));
  sub_218E0DD90(0);
  sub_2186D76E8(&unk_280EE5690, sub_218E0DD90, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

double sub_218E0EC4C(uint64_t a1, uint64_t a2)
{
  (*(*(*v2 + 88) + 32))(a1, a2, *(*v2 + 80));
  sub_218E0DD90(0);
  sub_2186D76E8(&unk_280EE5690, sub_218E0DD90, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

uint64_t sub_218E0ED40(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v3 = sub_219BE8C14();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF4B24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDE294();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DB50(0, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v27 - v14);
  v33 = type metadata accessor for SearchRouteModel(0);
  v16 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v29 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_219BF4B14();
  v19 = v18;
  v27[1] = a2;
  sub_219BF4B34();
  v20 = (*(v6 + 88))(v8, v5);
  if (v20 == *MEMORY[0x277D345E0])
  {
    (*(v6 + 96))(v8, v5);
    (*(v30 + 8))(v8, v31);
    goto LABEL_3;
  }

  if (v20 == *MEMORY[0x277D345D0])
  {
    v21 = MEMORY[0x277D2FEF8];
    goto LABEL_6;
  }

  if (v20 == *MEMORY[0x277D345D8])
  {
LABEL_3:
    v21 = MEMORY[0x277D2FF08];
LABEL_6:
    (*(v10 + 104))(v12, *v21, v9);
    goto LABEL_7;
  }

  (*(v10 + 104))(v12, *MEMORY[0x277D2FF08], v9);
  (*(v6 + 8))(v8, v5);
LABEL_7:
  sub_218E0CC10(v34, v32, v19, v12, v15);

  (*(v10 + 8))(v12, v9);
  if ((*(v16 + 48))(v15, 1, v33) == 1)
  {
    return sub_218E0FDBC(v15, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  }

  v23 = v29;
  sub_218E0FE18(v15, v29, type metadata accessor for SearchRouteModel);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return sub_218E0FE80(v23, type metadata accessor for SearchRouteModel);
  }

  v25 = Strong;
  v26 = v28;
  sub_219BF4B44();
  sub_219BF4B14();
  sub_218B58CA4(0);
  sub_219BE5F84();
  __swift_project_boxed_opaque_existential_1((v25 + 48), *(v25 + 72));
  sub_219844B48(v23);

  (*(v30 + 8))(v26, v31);
  sub_218E0FE80(v23, type metadata accessor for SearchRouteModel);
  return swift_unknownObjectRelease();
}

uint64_t sub_218E0F24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_219BDE294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DB50(0, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v20 - v10);
  v12 = type metadata accessor for SearchRouteModel(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v8, *MEMORY[0x277D2FF08], v5, v14);
  sub_218E0CC10(a1, a2, v21, v8, v11);
  (*(v6 + 8))(v8, v5);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_218E0FDBC(v11, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  }

  else
  {
    sub_218E0FE18(v11, v16, type metadata accessor for SearchRouteModel);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      v18 = sub_2198454D4(v16);
      sub_218E0FE80(v16, type metadata accessor for SearchRouteModel);
      swift_unknownObjectRelease();
      return v18;
    }

    sub_218E0FE80(v16, type metadata accessor for SearchRouteModel);
  }

  return 0;
}

uint64_t sub_218E0F524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v51 = a2;
  v52 = a3;
  v3 = sub_219BE8C14();
  v45 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v44 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DB50(0, &qword_27CC12648, type metadata accessor for SearchRouteModel);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = (&v43 - v6);
  v7 = type metadata accessor for SearchRouteModel(0);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E0DB50(0, &qword_280EE5888, sub_218953A84);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v43 - v13;
  sub_218953A84(0);
  v16 = v15;
  v54 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v50 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AF3D74(0);
  v55 = v18;
  v53 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_219BF0894();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v43 - v26;
  sub_219BEDF44();
  if ((*(v22 + 88))(v27, v21) == *MEMORY[0x277D32F88])
  {
    v43 = v3;
    (*(v22 + 16))(v24, v27, v21);
    (*(v22 + 96))(v24, v21);
    v28 = sub_219BF13B4();
    v29 = *(v28 - 8);
    if ((*(v29 + 88))(v24, v28) == *MEMORY[0x277D33330])
    {
      sub_219BE6EC4();
      v62 = v56;
      sub_2189871A8(0);
      sub_2186D76E8(&qword_280EE5510, sub_2189871A8, MEMORY[0x277D6D8C8]);
      sub_219BE7B94();

      v30 = v55;
      sub_219BEB244();
      v31 = v54;
      if ((*(v54 + 48))(v14, 1, v16) == 1)
      {
        (*(v53 + 8))(v20, v30);
        sub_218E0FDBC(v14, &qword_280EE5888, sub_218953A84);
      }

      else
      {
        v33 = v50;
        (*(v31 + 32))();
        sub_219BE6934();
        sub_2190B9134(&v56);
        sub_218E0FE80(v11, type metadata accessor for SearchSectionDescriptor);
        v34 = v57;
        if (v57)
        {
          v51 = v59;
          v52 = v60;
          v35 = v58;
          v36 = v56;
          v61 &= 1u;
          v37 = v49;
          sub_218E0C4B4(&v56, 1, v49);
          v38 = sub_218AA1438(v36, v34, v35);
          if ((*(v47 + 48))(v37, 1, v48, v38) == 1)
          {
            (*(v54 + 8))(v50, v16);
            (*(v53 + 8))(v20, v55);
            sub_218E0FDBC(v37, &qword_27CC12648, type metadata accessor for SearchRouteModel);
          }

          else
          {
            v39 = v46;
            sub_218E0FE18(v37, v46, type metadata accessor for SearchRouteModel);
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v41 = Strong;
              v42 = v44;
              sub_219BE8C04();
              sub_219BE6944();
              __swift_project_boxed_opaque_existential_1((v41 + 48), *(v41 + 72));
              sub_219844B48(v39);

              (*(v45 + 8))(v42, v43);
              sub_218E0FE80(v39, type metadata accessor for SearchRouteModel);
              (*(v54 + 8))(v50, v16);
              (*(v53 + 8))(v20, v55);
              swift_unknownObjectRelease();
            }

            else
            {
              sub_218E0FE80(v39, type metadata accessor for SearchRouteModel);
              (*(v54 + 8))(v50, v16);
              (*(v53 + 8))(v20, v55);
            }
          }
        }

        else
        {
          (*(v31 + 8))(v33, v16);
          (*(v53 + 8))(v20, v30);
        }
      }
    }

    else
    {
      (*(v29 + 8))(v24, v28);
    }
  }

  return (*(v22 + 8))(v27, v21);
}

uint64_t sub_218E0FDBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218E0DB50(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218E0FE18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E0FE80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218E0FF40(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    v4 = 0;
LABEL_25:
    if (__OFSUB__(v4, 1))
    {
      goto LABEL_30;
    }

    return v11;
  }

  v4 = 0;
  v5 = (v2 + 32);
  v6 = 0.0;
  while (1)
  {
    v8 = *v5++;
    v7 = v8;
    if (v8 <= 3)
    {
      break;
    }

    if ((v7 - 6) >= 3)
    {
      if (v7 == 4)
      {
        goto LABEL_11;
      }

      v6 = v6 + 11.0;
    }

LABEL_4:
    if (!--v3)
    {
      goto LABEL_25;
    }
  }

  if (v7 > 1)
  {
    if (v7 == 2)
    {
LABEL_14:
      if (*(v1 + 24))
      {
        v10 = 30.0;
      }

      else
      {
        v10 = 22.0;
      }

      v9 = __OFADD__(v4++, 1);
      if (v9)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v11 = sub_219BED0C4();
      v10 = 51.0;
      if (v11)
      {
        v10 = 68.0;
      }

      v9 = __OFADD__(v4++, 1);
      if (v9)
      {
        goto LABEL_29;
      }
    }

    v6 = v6 + v10;
    goto LABEL_4;
  }

  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_11:
  v9 = __OFADD__(v4++, 1);
  if (!v9)
  {
    v6 = v6 + 22.0;
    goto LABEL_4;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return v11;
}

double sub_218E1008C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    result = 0.0;
    while (1)
    {
      v7 = *v3++;
      v6 = v7;
      if (v7 <= 2)
      {
        if (v6)
        {
          v8 = v6 == 1;
        }

        else
        {
          v8 = 0;
        }

        if (v8)
        {
          goto LABEL_5;
        }

        if (*(v0 + 24))
        {
          v5 = 6.0;
        }

        else
        {
          v5 = 2.0;
        }
      }

      else
      {
        if (((1 << v6) & 0x198) != 0)
        {
          goto LABEL_5;
        }

        if (v6 == 5)
        {
          v5 = 33.0;
        }

        else
        {
          v5 = 35.0;
        }
      }

      result = result + v5;
LABEL_5:
      if (!--v2)
      {
        return result;
      }
    }
  }

  return 0.0;
}

uint64_t sub_218E10124()
{

  return swift_deallocClassInstance();
}

uint64_t sub_218E1015C()
{

  v1 = OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions;
  v2 = sub_219BE8164();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TagViewLayoutOptions(uint64_t a1)
{
  result = qword_280ECC7F8;
  if (!qword_280ECC7F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218E10254(uint64_t a1)
{
  result = sub_219BE8164();
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

unint64_t sub_218E10354()
{
  result = qword_27CC12650;
  if (!qword_27CC12650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12650);
  }

  return result;
}

uint64_t sub_218E103B8()
{
  v1 = type metadata accessor for CuratedTagFeedGroupConfigData(0);
  if ((*(v0 + v1[7]) & 1) == 0)
  {
    if (*(v0 + v1[8]))
    {
      if (*(v0 + v1[9]))
      {
        if (*(v0 + v1[10]))
        {
          if (*(v0 + v1[11]))
          {
            if (*(v0 + v1[12]))
            {
              v2 = 33;
              if (*(v0 + v1[14]))
              {
                return v2;
              }

              return v2 | 2;
            }

            v2 = 33;
            goto LABEL_93;
          }

          v2 = 16777249;
          if (*(v0 + v1[12]))
          {
            goto LABEL_94;
          }
        }

        else if (*(v0 + v1[11]))
        {
          v2 = 8388641;
          if (*(v0 + v1[12]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 25165857;
          if (*(v0 + v1[12]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[10]))
      {
        if (*(v0 + v1[11]))
        {
          v2 = 2097185;
          if (*(v0 + v1[12]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 18874401;
          if (*(v0 + v1[12]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[11]))
      {
        v2 = 10485793;
        if (*(v0 + v1[12]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 27263009;
        if (*(v0 + v1[12]))
        {
          goto LABEL_94;
        }
      }

LABEL_93:
      v2 |= 0x800uLL;
      goto LABEL_94;
    }

    if (*(v0 + v1[9]))
    {
      if (*(v0 + v1[10]))
      {
        if (*(v0 + v1[11]))
        {
          v3 = 1048577;
LABEL_59:
          if (*(v0 + v1[12]) == 1)
          {
            v2 = v3 + 32;
            if (*(v0 + v1[14]))
            {
              return v2;
            }

            return v2 | 2;
          }

          v2 = v3 | 0x20;
          goto LABEL_93;
        }

        v6 = 17825793;
      }

      else
      {
        if (*(v0 + v1[11]))
        {
          v3 = 9437185;
          goto LABEL_59;
        }

        v6 = 26214401;
      }
    }

    else if (*(v0 + v1[10]))
    {
      if (*(v0 + v1[11]))
      {
        v3 = 3145729;
        goto LABEL_59;
      }

      v6 = 19922945;
    }

    else
    {
      if (*(v0 + v1[11]))
      {
        v3 = 11534337;
        goto LABEL_59;
      }

      v6 = 28311553;
    }

    v2 = v6 | 0x20;
    goto LABEL_92;
  }

  if (!*(v0 + v1[8]))
  {
    if (*(v0 + v1[9]))
    {
      if (*(v0 + v1[10]))
      {
        if (*(v0 + v1[11]))
        {
          v2 = 1048577;
          if (*(v0 + v1[12]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 17825793;
          if (*(v0 + v1[12]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[11]))
      {
        v2 = 9437185;
        if (*(v0 + v1[12]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 26214401;
        if (*(v0 + v1[12]))
        {
          goto LABEL_94;
        }
      }
    }

    else if (*(v0 + v1[10]))
    {
      if (*(v0 + v1[11]))
      {
        v2 = 3145729;
        if (*(v0 + v1[12]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 19922945;
        if (*(v0 + v1[12]))
        {
          goto LABEL_94;
        }
      }
    }

    else if (*(v0 + v1[11]))
    {
      v2 = 11534337;
      if (*(v0 + v1[12]))
      {
        goto LABEL_94;
      }
    }

    else
    {
      v2 = 28311553;
      if (*(v0 + v1[12]))
      {
        goto LABEL_94;
      }
    }

    goto LABEL_93;
  }

  if (!*(v0 + v1[9]))
  {
    if (*(v0 + v1[10]))
    {
      if (*(v0 + v1[11]))
      {
        v4 = 1048577;
      }

      else
      {
        v4 = 17825793;
      }
    }

    else if (*(v0 + v1[11]))
    {
      v4 = 9437185;
    }

    else
    {
      v4 = 26214401;
    }

    v2 = v4 + 0x100000;
    if (*(v0 + v1[12]))
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (*(v0 + v1[10]))
  {
    if (*(v0 + v1[11]))
    {
      if (*(v0 + v1[12]) == 1)
      {
        v2 = 1;
        if (*(v0 + v1[14]))
        {
          return v2;
        }

        return v2 | 2;
      }

      v2 = 1;
      goto LABEL_93;
    }

    v2 = 16777217;
LABEL_92:
    if (*(v0 + v1[12]))
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (*(v0 + v1[11]))
  {
    v5 = 3145729;
  }

  else
  {
    v5 = 19922945;
  }

  v2 = v5 + 5242880;
  if (!*(v0 + v1[12]))
  {
    goto LABEL_93;
  }

LABEL_94:
  if ((*(v0 + v1[14]) & 1) == 0)
  {
    return v2 | 2;
  }

  return v2;
}

uint64_t sub_218E106E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v39 = type metadata accessor for CuratedTagFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v39);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF1934();
  v41 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E11E68(0, &qword_280E8CBC8, MEMORY[0x277D844C8]);
  v43 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E11DB0();
  v42 = v11;
  v12 = v44;
  sub_219BF7B34();
  if (v12)
  {
    v25 = a1;
  }

  else
  {
    v13 = v9;
    v14 = a1;
    v44 = v4;
    v56 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    v15 = v5;
    v38 = v7;
    v55 = 2;
    sub_218D0B4BC();
    sub_219BF7674();
    v37 = v56;
    v55 = 0;
    v16 = sub_219BF76F4();
    v54 = 3;
    v35 = v16;
    v36 = v18;
    v19 = v42;
    v20 = v43;
    sub_219BF7674();
    v34 = v55;
    v53 = 4;
    sub_219BF7674();
    v33 = v54;
    v52 = 5;
    sub_219BF7674();
    v32 = v53;
    v51 = 6;
    sub_219BF7674();
    v31 = v52;
    v50 = 7;
    sub_219BF7674();
    v30 = v51;
    v49 = 8;
    sub_219BF7674();
    v29 = v50;
    v48 = 9;
    sub_219BF7674();
    v28 = v49;
    v47 = 10;
    sub_219BF7674();
    v27 = v48;
    v46 = 11;
    sub_219BF7674();
    v21 = v47;
    v45 = 12;
    sub_219BF7674();
    (*(v13 + 8))(v19, v20);
    LOBYTE(v19) = v46;
    v22 = v39;
    v23 = v44;
    (*(v41 + 32))(v44 + *(v39 + 20), v38, v15);
    *(v23 + v22[6]) = v37;
    v24 = v36;
    *v23 = v35;
    v23[1] = v24;
    *(v23 + v22[7]) = (v34 == 2) | v34 & 1;
    *(v23 + v22[8]) = (v33 == 2) | v33 & 1;
    *(v23 + v22[9]) = (v32 == 2) | v32 & 1;
    *(v23 + v22[10]) = (v31 == 2) | v31 & 1;
    *(v23 + v22[11]) = (v30 == 2) | v30 & 1;
    *(v23 + v22[12]) = v29 & 1;
    *(v23 + v22[13]) = v28 & 1;
    *(v23 + v22[14]) = (v27 == 2) | v27 & 1;
    *(v23 + v22[15]) = (v21 == 2) | v21 & 1;
    *(v23 + v22[16]) = v19 & 1;
    sub_218E11E04(v23, v40);
    v25 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(v25);
}

unint64_t sub_218E10D00(char a1)
{
  result = 0x65707974627573;
  switch(a1)
  {
    case 1:
      result = 0x746E65746E6F63;
      break;
    case 2:
    case 4:
    case 5:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_218E10E60(void *a1)
{
  v3 = v1;
  sub_218E11E68(0, &qword_27CC12660, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E11DB0();
  sub_219BF7B44();
  v12[15] = 0;
  sub_219BF77F4();
  if (!v2)
  {
    v10 = type metadata accessor for CuratedTagFeedGroupConfigData(0);
    v12[14] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
    v12[13] = *(v3 + *(v10 + 24));
    v12[12] = 2;
    sub_218D0B6A0();
    sub_219BF77E4();
    v12[11] = 3;
    sub_219BF7804();
    v12[10] = 4;
    sub_219BF7804();
    v12[9] = 5;
    sub_219BF7804();
    v12[8] = 6;
    sub_219BF7804();
    v12[7] = 7;
    sub_219BF7804();
    v12[6] = 8;
    sub_219BF7804();
    v12[5] = 9;
    sub_219BF7804();
    v12[4] = 10;
    sub_219BF7804();
    v12[3] = 11;
    sub_219BF7804();
    v12[2] = 12;
    sub_219BF7804();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218E1121C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_218E117D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_218E11250(uint64_t a1)
{
  v2 = sub_218E11DB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E1128C(uint64_t a1)
{
  v2 = sub_218E11DB0();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_218E11314(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

unint64_t sub_218E11440@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218E11BE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_218E11470(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x5464657461727563;
  v4 = 0xEE006C656E6E6168;
  v5 = 0x43676E696B636162;
  if (v2 != 5)
  {
    v5 = 0xD00000000000001ALL;
    v4 = 0x8000000219CD7460;
  }

  v6 = 0x8000000219CD7410;
  v7 = 0xD000000000000026;
  if (v2 != 3)
  {
    v7 = 0x54676E696B636162;
    v6 = 0xEA00000000006761;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x8000000219CD73D0;
  v9 = 0xD000000000000016;
  if (v2 != 1)
  {
    v9 = 0xD00000000000001ALL;
    v8 = 0x8000000219CD73F0;
  }

  if (*v1)
  {
    v3 = v9;
    v10 = v8;
  }

  else
  {
    v10 = 0xEA00000000006761;
  }

  if (*v1 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 <= 2u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v4;
  }

  *a1 = v11;
  a1[1] = v12;
}

unint64_t sub_218E11618()
{
  result = qword_27CC12658;
  if (!qword_27CC12658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12658);
  }

  return result;
}

uint64_t sub_218E1166C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = type metadata accessor for CuratedTagFeedGroupConfigData(0);
  v6 = v5[6];
  v7 = *(a2 + v6);
  if (*(a1 + v6) == 7)
  {
    if (v7 != 7)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v7 == 7)
    {
      goto LABEL_20;
    }

    v8 = v5;
    v9 = sub_21908AACC(*(a1 + v6), v7);
    v5 = v8;
    if ((v9 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (*(a1 + v5[7]) == *(a2 + v5[7]) && *(a1 + v5[8]) == *(a2 + v5[8]) && *(a1 + v5[9]) == *(a2 + v5[9]) && *(a1 + v5[10]) == *(a2 + v5[10]) && *(a1 + v5[11]) == *(a2 + v5[11]) && *(a1 + v5[12]) == *(a2 + v5[12]) && *(a1 + v5[13]) == *(a2 + v5[13]) && *(a1 + v5[14]) == *(a2 + v5[14]) && *(a1 + v5[15]) == *(a2 + v5[15]))
  {
    v10 = *(a1 + v5[16]) ^ *(a2 + v5[16]) ^ 1;
    return v10 & 1;
  }

LABEL_20:
  v10 = 0;
  return v10 & 1;
}

uint64_t sub_218E117D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707974627573 && a2 == 0xE700000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CF3AE0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CE5B80 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CE5BA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CE5BC0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5BE0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5C00 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5C20 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5C40 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD9420 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CFA350 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000219CFA370 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_218E11BE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_218E11C2C()
{
  result = qword_280EE2420;
  if (!qword_280EE2420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2420);
  }

  return result;
}

uint64_t type metadata accessor for CuratedTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280EB1008;
  if (!qword_280EB1008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218E11CF4(uint64_t a1)
{
  sub_219BF1934();
  if (v1 <= 0x3F)
  {
    sub_218D0A09C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_218E11DB0()
{
  result = qword_280EB1048;
  if (!qword_280EB1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1048);
  }

  return result;
}

uint64_t sub_218E11E04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedTagFeedGroupConfigData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218E11E68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E11DB0();
    v7 = a3(a1, &type metadata for CuratedTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for CuratedTagFeedGroupConfigData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CuratedTagFeedGroupConfigData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_218E12020()
{
  result = qword_27CC12668;
  if (!qword_27CC12668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12668);
  }

  return result;
}

unint64_t sub_218E12078()
{
  result = qword_280EB1038;
  if (!qword_280EB1038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1038);
  }

  return result;
}

unint64_t sub_218E120D0()
{
  result = qword_280EB1040;
  if (!qword_280EB1040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB1040);
  }

  return result;
}

void sub_218E12124(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v26[1] = a2;
  v27 = sub_219BDF514();
  v26[0] = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E124A0(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDCC14();
  v16 = MEMORY[0x28223BE20](v15);
  (*(v18 + 16))(v26 - v17, a1, v15, v16);
  if (swift_dynamicCast())
  {
    (*(v12 + 8))(v14, v11);
    v19 = sub_219BDCC04();
    v20 = sub_219BDD084();
    v22 = v21;

    if (!v5)
    {
      sub_218E12534(&qword_280EE8768, MEMORY[0x277D2DB08], MEMORY[0x277D2DB10]);
      v23 = v27;
      sub_219BE1974();
      sub_2186C6190(v20, v22);
      (*(v26[0] + 32))(a5, v9, v23);
      v24 = type metadata accessor for EngagementEvent(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v24 - 8) + 56))(a5, 0, 1, v24);
    }
  }

  else
  {
    v25 = type metadata accessor for EngagementEvent(0);
    (*(*(v25 - 8) + 56))(a5, 1, 1, v25);
  }
}

void sub_218E124A0(uint64_t a1)
{
  if (!qword_280EE8F70)
  {
    sub_219BDF524();
    sub_218E12534(&qword_280EE8760, MEMORY[0x277D2DB18], MEMORY[0x277D2DB00]);
    v1 = sub_219BDCC14();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE8F70);
    }
  }
}

uint64_t sub_218E12534(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218E1257C(char a1)
{
  v2 = sub_219BEE714();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E12B60(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEE704();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BF0644();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 + 104);
  v19 = (v10 + 104);
  if (a1)
  {
    v18(v16, *MEMORY[0x277D32EF8], v14);
    if (a1 == 1)
    {
      v20 = MEMORY[0x277D32110];
    }

    else
    {
      v20 = MEMORY[0x277D32118];
    }

    (*v19)(v12, *v20, v9);
    v24 = sub_219BEE734();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
  }

  else
  {
    v18(v16, *MEMORY[0x277D32EF0], v14);
    (*v19)(v12, *MEMORY[0x277D32110], v9);
    v21 = *MEMORY[0x277D32140];
    v22 = sub_219BEE734();
    v23 = *(v22 - 8);
    (*(v23 + 104))(v8, v21, v22);
    (*(v23 + 56))(v8, 0, 1, v22);
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D32130], v2);
  return sub_219BEE744();
}

unint64_t sub_218E12934()
{
  result = qword_280EC5DD0;
  if (!qword_280EC5DD0)
  {
    type metadata accessor for AudioFeedServiceContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC5DD0);
  }

  return result;
}

uint64_t sub_218E1298C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BDBD64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEE754();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  sub_218E1257C(a1);
  v12 = a1 != 1;
  v13 = type metadata accessor for AudioFeedServiceContext(0);
  (*(v9 + 16))(a2 + *(v13 + 28), v11, v8);
  sub_219BDBD54();
  v14 = sub_219BDBD44();
  v16 = v15;
  (*(v5 + 8))(v7, v4);
  *a2 = v14;
  *(a2 + 8) = v16;
  result = (*(v9 + 8))(v11, v8);
  *(a2 + 24) = MEMORY[0x277D84F90];
  *(a2 + 16) = v12;
  return result;
}

void sub_218E12B60(uint64_t a1)
{
  if (!qword_280E91B30)
  {
    sub_219BEE734();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91B30);
    }
  }
}

uint64_t sub_218E12BB8()
{
  v0 = sub_219BED214();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v7 = qword_280F61728;
  v8 = sub_219BF6214();
  sub_219BE5314("Waiting 5 seconds for article to cool down", 42, 2, &dword_2186C1000, v7, v8, MEMORY[0x277D84F90]);
  sub_219BED1F4();
  sub_219BED244();
  v9 = *(v1 + 8);
  v9(v3, v0);
  v10 = sub_219BE2E14();
  v9(v6, v0);
  return v10;
}

void sub_218E12D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186C6148(0, &qword_27CC12690, 0x277D6ED48);
  sub_219BE3204();
  *(swift_allocObject() + 16) = v3;
  v6 = v3;
  v7 = sub_219BE2E54();
  sub_219BE2F64();

  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;

  v9 = sub_219BE2E54();
  sub_219BE2F74();

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  v11 = sub_219BE2E54();
  sub_219BE2FD4();
}

void sub_218E12F18(void *a1)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v2 = qword_280F61728;
  v3 = sub_219BF6214();
  sub_219BE5314("Looking for page view controller", 32, 2, &dword_2186C1000, v2, v3, MEMORY[0x277D84F90]);

  v4 = sub_219BF53D4();

  v5 = [a1 objectForKey_];

  if (v5)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v11, &v12);
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    swift_dynamicCast();
    sub_218AAFB68(0);
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v6 = sub_219BF66A4();
    *(swift_allocObject() + 16) = v10;
    sub_2186C6148(0, &qword_27CC12690, 0x277D6ED48);
    v7 = v10;
    sub_219BE2FB4();

    *(swift_allocObject() + 16) = v7;
    v8 = v7;
    v9 = sub_219BE2E54();
    sub_219BE3054();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218E1318C(void **a1, void *a2)
{
  v3 = *a1;
  sub_219BE3204();
  v4 = swift_allocObject();
  v4[2] = a2;
  v4[3] = v3;
  v4[4] = 20;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_218E13830;
  *(v5 + 24) = v4;
  v6 = a2;
  v7 = v3;
  v8 = sub_219BE2E54();
  v9 = sub_219BE2F64();

  return v9;
}

uint64_t sub_218E132A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x28223BE20](a1);
    v5 = v4;
    sub_219BE3204();
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v5;
    v6[4] = a2;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_218E138DC;
    *(v7 + 24) = v6;
    v8 = v2;
    v9 = v5;
    v10 = sub_219BE2E54();
    v11 = sub_219BE2F64();

    return v11;
  }

  else
  {
    if (qword_280E8D830 != -1)
    {
      swift_once();
    }

    v13 = qword_280F61728;
    v14 = sub_219BF6214();
    sub_219BE5314("Done swiping through articles", 29, 2, &dword_2186C1000, v13, v14, MEMORY[0x277D84F90]);
    sub_21879D924();
    swift_allocObject();
    return sub_219BE3014();
  }
}

double sub_218E13458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  sub_219BE1B14();

  return result;
}

void sub_218E134D8(uint64_t a1, void (*a2)(id))
{
  sub_218A450F0();
  sub_219BF7484();
  v3 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v4 = sub_219BF53D4();

  v5 = [v3 initWithMessage_];

  a2(v5);
}

uint64_t sub_218E13640(uint64_t a1, uint64_t a2)
{
  sub_219BE3204();
  v2 = sub_219BE2E54();
  v3 = sub_219BE2F64();

  return v3;
}

uint64_t sub_218E136E0(void *a1)
{
  if (qword_280E8D830 != -1)
  {
    swift_once();
  }

  v2 = qword_280F61728;
  v3 = sub_219BF6214();
  [a1 keyboardOrActionSwitchToNextViewController];
  sub_21879D924();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_218E1386C()
{
  v1 = *(v0 + 32);
  if (!__OFSUB__(v1, 1))
  {
    return sub_218E132A4(*(v0 + 24), v1 - 1);
  }

  __break(1u);
  return result;
}

uint64_t sub_218E138F8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BF12B4();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

void sub_218E13964(uint64_t a1, double *a2, char *a3)
{
  v142 = a1;
  sub_218846CFC(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v123 - v6;
  v7 = sub_219BDCAF4();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a3 setIsAccessibilityElement_];
  v12 = *&a3[OBJC_IVAR____TtC7NewsUI213SportsTagView_iconImageView];
  [v12 setIsAccessibilityElement_];
  v138 = *&a3[OBJC_IVAR____TtC7NewsUI213SportsTagView_accessoryButton];
  [v138 setIsAccessibilityElement_];
  [a3 setFrame_];
  [v12 setFrame_];
  v13 = [v12 layer];
  v14 = sub_219BF0CD4();
  v15 = *(v8 + 104);
  LODWORD(v147) = *MEMORY[0x277D6D198];
  v145 = v15;
  v146 = v8 + 104;
  (v15)(v11);
  v148 = v14;
  sub_219BF0CC4();
  v17 = v16;
  v18 = *(v8 + 8);
  v143 = v11;
  v144 = v18;
  v140 = v7;
  v136 = v8 + 8;
  v18(v11, v7);
  [v13 setCornerRadius_];

  v124 = v12;
  v19 = [v12 layer];
  [v19 setCornerCurve_];

  v141 = a3;
  v135 = *&a3[OBJC_IVAR____TtC7NewsUI213SportsTagView_nameLabel];
  v137 = *(v142 + 16);
  v20 = [v137 displayName];
  if (!v20)
  {
    sub_219BF5414();
    v20 = sub_219BF53D4();
  }

  sub_218846CFC(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  v132 = v21;
  inited = swift_initStackObject();
  v131 = xmmword_219C09EC0;
  *(inited + 16) = xmmword_219C09EC0;
  v23 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v24 = objc_opt_self();
  v129 = v23;
  v25 = [v24 labelColor];
  v26 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 40) = v25;
  v27 = *MEMORY[0x277D740A8];
  v130 = v26;
  *(inited + 64) = v26;
  *(inited + 72) = v27;
  v28 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v127 = v27;
  v29 = sub_219BF6BD4();
  v30 = v143;
  v31 = v140;
  v145(v143, v147, v140);
  v32 = sub_219BF0CB4();

  v144(v30, v31);
  v133 = v28;
  *(inited + 104) = v28;
  *(inited + 80) = v32;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  v34 = v33;
  swift_arrayDestroy();
  v35 = objc_allocWithZone(MEMORY[0x277CCA898]);
  type metadata accessor for Key(0);
  v37 = v36;
  v38 = sub_218819ABC(&qword_280E8E118, type metadata accessor for Key, &unk_219C09A8C);
  v128 = v37;
  v126 = v38;
  v39 = sub_219BF5204();

  v40 = [v35 initWithString:v20 attributes:v39];

  v41 = &selRef_boldSystemFontOfSize_;
  v42 = v135;
  [v135 setAttributedText_];

  v43 = a2[8];
  v44 = a2[9];
  v45 = a2[10];
  v46 = a2[11];
  v134 = a2;
  v47 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  [v42 setFrame_];
  v135 = *&v141[OBJC_IVAR____TtC7NewsUI213SportsTagView_secondaryNameLabel];
  v48 = sub_21943359C();
  if (v49)
  {
    v123 = v48;
    v50 = swift_initStackObject();
    *(v50 + 16) = v131;
    v132 = v34;
    v51 = v129;
    *(v50 + 32) = v129;
    v52 = objc_allocWithZone(MEMORY[0x277D75348]);
    v53 = v51;
    *(v50 + 40) = [v52 initWithRed:0.43 green:0.43 blue:0.45 alpha:1.0];
    v54 = v127;
    *(v50 + 64) = v130;
    *(v50 + 72) = v54;
    v55 = v54;
    v56 = v133;
    v57 = sub_219BF6BD4();
    v58 = v143;
    v145(v143, v147, v31);
    v59 = sub_219BF0CB4();

    v144(v58, v31);
    *(v50 + 104) = v56;
    *(v50 + 80) = v59;
    sub_2188195F4(v50);
    swift_setDeallocating();
    swift_arrayDestroy();
    v60 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v61 = sub_219BF53D4();
    v62 = sub_219BF5204();

    v63 = v60;
    v47 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v64 = [v63 initWithString:v61 attributes:v62];

    v41 = &selRef_boldSystemFontOfSize_;
  }

  else
  {
    v64 = 0;
  }

  v65 = v135;
  [v135 v41[241]];

  v66 = v134;
  [v65 v47[256]];
  v67 = v137;
  v68 = [v137 asSports];
  v69 = v139;
  v70 = v143;
  if (v68)
  {
    v71 = v139;
    v72 = [v68 sportsType];
    swift_unknownObjectRelease();
    sub_218846CFC(0, &qword_27CC12698, type metadata accessor for FCSportsType, MEMORY[0x277D83D88]);
    if (v72 >= 0xC)
    {
      sub_219BF78E4();
      __break(1u);
      return;
    }

    v73 = dbl_219C3CA78[v72];
    v74 = v140;
    v75 = v147;
    v76 = v145;
    v69 = v71;
    v77 = v141;
  }

  else
  {
    v73 = 0.85;
    v74 = v140;
    v77 = v141;
    v75 = v147;
    v76 = v145;
  }

  v147 = *(v69 + 16);
  v76(v70, v75, v74);
  sub_219BF0CC4();
  v79 = v78;
  v144(v70, v74);
  v80 = sub_218EDA8D4();
  if (v81)
  {
    v82 = v80;
    v83 = v81;
  }

  else
  {
    v84 = [v67 displayName];
    v82 = sub_219BF5414();
    v83 = v85;
  }

  if ([v67 tagType] - 1 < 2)
  {
    v86 = [v67 groupTitleColor];
    v87 = *(v147 + 56);
    swift_unknownObjectRetain();
    if (v86)
    {
      v88 = [v86 ne_color];

      type metadata accessor for TopicColorFeedNavImageStyler();
      v89 = swift_allocObject();
      *(v89 + 16) = v88;
      *(v89 + 24) = v87;
      v87 = v89;
    }

    swift_unknownObjectRetain();
    v90 = v124;
    v91 = [v124 traitCollection];
    [v91 displayScale];
    v93 = v92;

    v94 = type metadata accessor for FeedNavImageAssetHandle();
    v95 = objc_allocWithZone(v94);
    v96 = &v95[OBJC_IVAR___NEFeedNavImageAssetHandle_filePath];
    *v96 = 0;
    *(v96 + 1) = 0;
    *&v95[OBJC_IVAR___NEFeedNavImageAssetHandle_fallbackImage] = 0;
    *&v95[OBJC_IVAR___NEFeedNavImageAssetHandle_tag] = v67;
    v97 = swift_unknownObjectRetain();
    v98 = sub_219352488(v97);
    v99 = &v95[OBJC_IVAR___NEFeedNavImageAssetHandle_uniqueKey];
    *v99 = v98;
    v99[1] = v100;
    v101 = &v95[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageSize];
    *v101 = v79;
    v101[1] = v79;
    *&v95[OBJC_IVAR___NEFeedNavImageAssetHandle_feedNavImageStyler] = v87;
    *&v95[OBJC_IVAR___NEFeedNavImageAssetHandle_scale] = v93;
    *&v95[OBJC_IVAR___NEFeedNavImageAssetHandle_overrideFallbackColor] = 0;
    v149.receiver = v95;
    v149.super_class = v94;
    v102 = objc_msgSendSuper2(&v149, sel_init);
    sub_218A462FC(v102, v90, v82, v83, 0, v79, v79, v73);
    swift_unknownObjectRelease();

    v47 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  }

  v103 = v47[256];
  v104 = v138;
  [v138 v103];
  [v104 accessibilityActivationPoint];
  [v77 setAccessibilityActivationPoint_];
  v105 = *MEMORY[0x277D765D0];
  v106 = [v77 accessibilityTraits];
  if ((v105 & ~v106) != 0)
  {
    v107 = v105;
  }

  else
  {
    v107 = 0;
  }

  [v77 setAccessibilityTraits_];
  v108 = *(v66 + 160);
  if (v108 == 5)
  {
    [v104 setHidden_];
  }

  else
  {
    v109 = qword_280EDB508;
    v110 = v104[qword_280EDB508];
    v104[qword_280EDB508] = v108;
    sub_219BE61D4();
    if (v110 != v104[v109] || !*&v104[qword_280F620E8] || !*&v104[qword_280F620E0])
    {
      sub_218EC2D64(0);
    }

    [v104 setHidden_];
    sub_219BEAF14();
    swift_unknownObjectRetain();
    v111 = v125;
    sub_219BF3324();
    v112 = sub_219BF3344();
    v113 = *(*(v112 - 8) + 56);
    v113(v111, 0, 1, v112);
    sub_219BE89C4();

    sub_218AD7DC0(v111);
    v114 = v141;
    sub_218E14B88(v150[0]);
    if (*(v66 + 161))
    {
      sub_219BEAF14();
      swift_unknownObjectRetain();
      sub_219BF3324();
      v113(v111, 0, 1, v112);
      v115 = swift_allocObject();
      swift_weakInit();
      v116 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v117 = swift_allocObject();
      *(v117 + 16) = v115;
      *(v117 + 24) = v116;
      sub_218E14F94();
      sub_219BE89B4();

      sub_218AD7DC0(v111);
      __swift_project_boxed_opaque_existential_1(v150, v150[3]);
      v118 = *&v114[OBJC_IVAR____TtC7NewsUI213SportsTagView_token];
      sub_219BE1A04();

      __swift_destroy_boxed_opaque_existential_1(v150);
    }

    v119 = sub_219BE61F4();
    v120 = swift_allocObject();
    swift_weakInit();
    v121 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v122 = swift_allocObject();
    v122[2] = v120;
    v122[3] = v142;
    v122[4] = v121;
  }
}

double sub_218E147F4(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
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
      sub_218E14B88(v3);
    }

    else
    {
    }
  }

  return result;
}

double sub_218E14898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218846CFC(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v15 - v8;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v15[1] = a3;
    sub_219BEAF14();
    swift_unknownObjectRetain_n();
    sub_219BF3324();
    v11 = sub_219BF3344();
    v12 = *(*(v11 - 8) + 56);
    v12(v9, 0, 1, v11);
    sub_219BE89E4();
    sub_219BE7094();
    sub_218AD7DC0(v9);

    sub_219BEAF14();
    sub_219BF3324();
    v12(v6, 0, 1, v11);
    sub_219BE89C4();

    sub_218AD7DC0(v6);
    if (v16 != 2 && (v16 & 1) != 0)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        sub_218E14B88(1u);
      }
    }
  }

  return result;
}

uint64_t sub_218E14B14()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

double sub_218E14B88(unsigned __int8 a1)
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
    sub_218819ABC(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
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
    sub_218819ABC(&qword_280EDB500, type metadata accessor for AccessoryButton, &unk_219C4312C);
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

unint64_t sub_218E14F94()
{
  result = qword_280E90280;
  if (!qword_280E90280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90280);
  }

  return result;
}

uint64_t sub_218E14FE8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_218E1505C(uint64_t a1)
{
  v3 = type metadata accessor for SearchPrewarmBlueprintModifier(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  sub_218E156D8(a1, &v12 - v7, type metadata accessor for SearchPrewarmResult);
  sub_218718690(v9 + 80, &v8[*(v3 + 20)]);
  sub_218E156D8(v8, v5, type metadata accessor for SearchPrewarmBlueprintModifier);
  sub_218E0DD90(0);
  swift_allocObject();
  sub_2186D7730(&qword_27CC126C0, type metadata accessor for SearchPrewarmBlueprintModifier, &unk_219C872D8);
  v10 = sub_219BE6E64();
  sub_218E15740(v8);
  return v10;
}

uint64_t sub_218E151BC(__int128 *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v13 = a1[2];
  v14 = v3;
  v15 = a1[4];
  v4 = a1[1];
  v11 = *a1;
  v12 = v4;
  sub_218718690(v2 + 80, &v10);
  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v9[0] = v11;
  v9[1] = v12;
  sub_218E15578(v9, v8);
  sub_218E0DD90(0);
  swift_allocObject();
  sub_218E155D4(&v11, v7);
  sub_218E15630();
  v5 = sub_219BE6E64();
  sub_218E15684(v9);
  return v5;
}

uint64_t sub_218E15284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218E0DD90(0);
  swift_allocObject();
  sub_218AF3F98();

  swift_unknownObjectRetain();
  return sub_219BE6E64();
}

uint64_t sub_218E15344(uint64_t a1, uint64_t a2)
{
  sub_218E0DD90(0);
  swift_allocObject();
  sub_218E15524();

  return sub_219BE6E64();
}

uint64_t sub_218E153C4()
{
  sub_218E0DD90(0);
  swift_allocObject();
  sub_218E154D0();
  return sub_219BE6E64();
}

uint64_t sub_218E1540C(uint64_t a1)
{
  sub_218E0DD90(0);
  swift_allocObject();
  sub_218E1547C();

  return sub_219BE6E64();
}

unint64_t sub_218E1547C()
{
  result = qword_27CC126A0;
  if (!qword_27CC126A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC126A0);
  }

  return result;
}

unint64_t sub_218E154D0()
{
  result = qword_27CC126A8;
  if (!qword_27CC126A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC126A8);
  }

  return result;
}

unint64_t sub_218E15524()
{
  result = qword_27CC126B0;
  if (!qword_27CC126B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC126B0);
  }

  return result;
}

unint64_t sub_218E15630()
{
  result = qword_27CC126B8;
  if (!qword_27CC126B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC126B8);
  }

  return result;
}

uint64_t sub_218E156D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E15740(uint64_t a1)
{
  v2 = type metadata accessor for SearchPrewarmBlueprintModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218E1579C()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  sub_2198E1BF0(v5, v6, v7);
  sub_218E15FA8(&unk_280EDD2E0, &unk_219C3CB80);

  sub_219BDC7D4();

  v8 = v11;
  result = sub_2198E1BF0(v5, v6, v7);
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8 + 1;
    sub_218E15FA8(&qword_280EDD2D8, &unk_219C3CBC0);

    sub_219BDCA54();

    sub_2198E18EC(v5, v6, v7);

    sub_219BDBCB4();
    sub_219BDCA54();

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

void sub_218E159A0()
{
  v13 = *v0;
  sub_218E15F40(0);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDDAA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[2];
  v9 = v0[3];
  v11 = *(v0 + 32);
  sub_218DFBB54(v10, v9, *(v0 + 32));
  sub_219BDDAB4();
  v12 = *(v2 + 56);
  *v4 = v10;
  *(v4 + 1) = v9;
  v4[16] = v11;
  (*(v6 + 32))(&v4[v12], v8, v5);
  if (v11 != 2)
  {
    if (v11 == 7 && v10 == 3 && !v9 && (*(v6 + 88))(&v4[v12], v5) == *MEMORY[0x277D2FBF0])
    {
      if (qword_27CC08938 != -1)
      {
        swift_once();
      }

      v15 = 1;
      sub_218E15FA8(&qword_280EDD2D8, &unk_219C3CBC0);
      sub_219BDCA54();
      return;
    }

LABEL_13:
    sub_218E15FE8(v4, sub_218E15F40);
    return;
  }

  if ((*(v6 + 88))(&v4[v12], v5) != *MEMORY[0x277D2FBF0])
  {
    goto LABEL_13;
  }

  if (qword_27CC088D8 != -1)
  {
    swift_once();
  }

  v14 = 1;
  sub_218E15FA8(&qword_280EDD2D8, &unk_219C3CBC0);
  sub_219BDCA54();
  sub_218CF5D78(v10, v9, 2u);
}

uint64_t sub_218E15CB8()
{
  sub_218CF5D78(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_218E15D44(uint64_t a1)
{
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  sub_2188383F8(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_218E15FE8(v5, sub_21873F65C);
  }

  (*(v7 + 32))(v9, v5, v6);
  __swift_project_boxed_opaque_existential_1((v10 + 40), *(v10 + 64));
  sub_219BE6DC4();
  return (*(v7 + 8))(v9, v6);
}

void sub_218E15F40(uint64_t a1)
{
  if (!qword_280E92A50[0])
  {
    sub_219BDDAA4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280E92A50);
    }
  }
}

uint64_t sub_218E15FA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TipInteractor();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218E15FE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SportsTopicSortOrder.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_218E1641C(0, &qword_280E8CEC0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E161E8();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = 0;
    sub_218E1623C();
    sub_219BF7734();
    (*(v7 + 8))(v9, v6);
    *a2 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_218E161E8()
{
  result = qword_280ECCEB8[0];
  if (!qword_280ECCEB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECCEB8);
  }

  return result;
}

unint64_t sub_218E1623C()
{
  result = qword_280ECCE90;
  if (!qword_280ECCE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCE90);
  }

  return result;
}

uint64_t SportsTopicSortOrder.encode(to:)(void *a1)
{
  sub_218E1641C(0, &qword_280E8C5E8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E161E8();
  sub_219BF7B44();
  if (v8)
  {
    v13 = 1;
    v12 = 0;
  }

  else
  {
    v11 = 0;
  }

  sub_218E16480();
  sub_219BF7834();
  return (*(v5 + 8))(v7, v4);
}

void sub_218E1641C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218E161E8();
    v7 = a3(a1, &type metadata for SportsTopicSortOrder.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218E16480()
{
  result = qword_280ECCEA0;
  if (!qword_280ECCEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCEA0);
  }

  return result;
}

void sub_218E164E0(char *a3@<X8>)
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

uint64_t sub_218E16544(uint64_t a1)
{
  v2 = sub_218E161E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E16580(uint64_t a1)
{
  v2 = sub_218E161E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E165BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574736575716572;
  }

  else
  {
    v3 = 0x6C616E6F73726570;
  }

  if (v2)
  {
    v4 = 0xEF6E6F6974617A69;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x6574736575716572;
  }

  else
  {
    v5 = 0x6C616E6F73726570;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xEF6E6F6974617A69;
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

uint64_t sub_218E16674()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_218E16708(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_218E16788(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_218E16824(uint64_t *a1@<X8>)
{
  v2 = 0x6C616E6F73726570;
  if (*v1)
  {
    v2 = 0x6574736575716572;
  }

  v3 = 0xEF6E6F6974617A69;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t SportsTopicSortOrder.hashValue.getter()
{
  v1 = *v0;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  return sub_219BF7AE4();
}

unint64_t sub_218E16A18()
{
  result = qword_27CC126C8;
  if (!qword_27CC126C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC126C8);
  }

  return result;
}

unint64_t sub_218E16A70()
{
  result = qword_27CC126D0;
  if (!qword_27CC126D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC126D0);
  }

  return result;
}

unint64_t sub_218E16AC8()
{
  result = qword_280ECCEA8;
  if (!qword_280ECCEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCEA8);
  }

  return result;
}

unint64_t sub_218E16B20()
{
  result = qword_280ECCEB0;
  if (!qword_280ECCEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCEB0);
  }

  return result;
}

unint64_t sub_218E16B74()
{
  result = qword_280ECCE98;
  if (!qword_280ECCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECCE98);
  }

  return result;
}

uint64_t sub_218E16C10()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_218E16CDC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

void sub_218E16DA4(uint64_t a1, void *a2, void (*a3)(unint64_t, uint64_t))
{
  v32 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (*(a1 + 48) + 16 * (v11 | (v9 << 6)));
    v14 = *v12;
    v13 = v12[1];

    swift_unknownObjectRetain();
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v30 = v15;
      v16 = v32;
      v17 = *(v32 + 16);
      if (*(v32 + 24) <= v17)
      {
        a3(v17 + 1, 1);
        v16 = v33;
      }

      v32 = v16;
      sub_219BF7AA4();
      sub_219BF5524();
      v18 = sub_219BF7AE4();
      v19 = v32 + 64;
      v20 = -1 << *(v32 + 32);
      v21 = v18 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v32 + 64 + 8 * (v21 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v20) >> 6;
        v24 = v30;
        while (++v22 != v26 || (v25 & 1) == 0)
        {
          v27 = v22 == v26;
          if (v22 == v26)
          {
            v22 = 0;
          }

          v25 |= v27;
          v28 = *(v19 + 8 * v22);
          if (v28 != -1)
          {
            v23 = __clz(__rbit64(~v28)) + (v22 << 6);
            goto LABEL_23;
          }
        }

        goto LABEL_26;
      }

      v23 = __clz(__rbit64((-1 << v21) & ~*(v32 + 64 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
      v24 = v30;
LABEL_23:
      *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v29 = (*(v32 + 48) + 16 * v23);
      *v29 = v14;
      v29[1] = v13;
      *(*(v32 + 56) + 8 * v23) = v24;
      ++*(v32 + 16);
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v9);
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_218E17010(void *a1)
{
  v25 = a1;
  v3 = *v1;
  v4 = v1;
  v31 = v1;
  v32 = v3;
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  v29 = &v23 - v10;
  sub_219BDBD24();
  v33 = v4;
  v34 = a1;
  sub_2186D6710(0, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration);
  v26 = sub_219BE3204();
  v30 = *(v6 + 16);
  v24 = v5;
  v30(v8, v11, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v28 = v12 + v7;
  v13 = swift_allocObject();
  v27 = *(v6 + 32);
  v27(v13 + v12, v8, v5);
  v14 = v25;
  *(v13 + ((v12 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v15 = v14;
  v16 = sub_219BE2E54();
  sub_218E1D380(0, &qword_280E8E048, &type metadata for TodayConfigManager.OperationResult);
  sub_219BE2F84();

  v17 = v29;
  v18 = v24;
  v30(v8, v29, v24);
  v19 = swift_allocObject();
  v27(v19 + v12, v8, v18);
  v20 = sub_219BE2E54();
  type metadata accessor for TodayConfigFetchResult(0);
  v21 = sub_219BE2F84();

  (*(v6 + 8))(v17, v18);
  return v21;
}

uint64_t sub_218E17320(uint64_t a1)
{
  v2 = v1;
  v24 = a1;
  v26 = *v1;
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDAF64();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  sub_219BDBD24();
  (*(v4 + 16))(v6, v24, v3);
  v25 = v9;
  sub_219BDAF44();
  v29 = v2;
  v30 = v9;
  sub_218E1D380(0, &unk_27CC126F0, MEMORY[0x277CC9318]);
  sub_219BE3204();
  v17 = sub_219BE2E54();
  sub_218E1CC8C(0);
  sub_219BE2F84();

  (*(v11 + 16))(v13, v16, v10);
  v18 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v18, v13, v10);
  v20 = sub_219BE2E54();
  type metadata accessor for TodayConfigFetchResult(0);
  v21 = sub_219BE2F94();

  (*(v11 + 8))(v16, v10);
  (*(v27 + 8))(v25, v28);
  return v21;
}

uint64_t sub_218E176D4(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() defaultCachePolicy];
  swift_getObjectType();
  [v2 cachePolicy];
  sub_219BF6A64();

  v3 = [objc_opt_self() sharedSession];
  sub_219BE2E24();

  v4 = sub_219BE31C4();

  return v4;
}

uint64_t sub_218E177C8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  sub_218E1D05C(0, &qword_280EE6960, MEMORY[0x277D6CF30]);
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_218B87528(v4, v5);
  swift_unknownObjectRetain();
  sub_219BE3014();
  sub_218E1D1EC(0, &qword_280EE7010, MEMORY[0x277CC9318], MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_218B87528(v4, v5);
  sub_219BE3014();
  v6 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
  v7 = CACurrentMediaTime();
  sub_218E1D1EC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_219BE3204();
  v8 = swift_allocObject();
  v8[2] = v7;
  *(v8 + 3) = a2;
  *(v8 + 4) = v3;
  *(v8 + 5) = v6;
  swift_unknownObjectRetain();

  v9 = v6;
  v10 = sub_219BE2E54();
  sub_219BE2F64();

  v11 = sub_219BE31B4();

  sub_2186C6190(v4, v5);
  swift_unknownObjectRelease();
  return v11;
}

double sub_218E17A2C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a2;
  v43 = a3;
  v50 = a4;
  v5 = type metadata accessor for TodayFeedGroupConfig(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v49 = *a1;
  v9 = a1[2];
  v11 = a1[4];
  v10 = a1[5];
  v13 = a1[6];
  v12 = a1[7];
  v14 = a1[8];
  v15 = a1[3];
  v53[0] = v15;
  v53[1] = v11;
  v53[2] = v10;
  v53[3] = v8;
  v53[4] = v9;
  v53[5] = v14;
  swift_unknownObjectRetain();
  sub_218B87528(v8, v9);
  sub_218B87528(v15, v11);

  v46 = v12;
  v47 = v13;
  sub_218E1CD90(v13, v12);

  sub_218B87528(v15, v11);

  v48 = v8;
  sub_218B87528(v8, v9);

  v16 = v45;
  sub_218E17EB8(v53, v49, v43, v50);
  if (v16)
  {
    v17 = v48;
    sub_2186C6190(v48, v9);
    swift_unknownObjectRelease();
    sub_2186C6190(v15, v11);

    sub_218822A58(v47, v46);

    sub_2186C6190(v15, v11);

    sub_218822A58(v17, v9);
  }

  else
  {
    v44 = v15;
    sub_2186C6190(v15, v11);

    v19 = v48;
    sub_218822A58(v48, v9);

    if (qword_280E8D8E8 != -1)
    {
      swift_once();
    }

    v41 = 0;
    v43 = v11;
    v45 = v9;
    v39 = qword_280F617A0;
    sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_219C09BA0;
    v51 = 0;
    v52 = 0xE000000000000000;
    v20 = *(v50 + *(type metadata accessor for TodayFeedConfig(0) + 20));
    v21 = *(v20 + 16);
    v22 = MEMORY[0x277D84F90];
    if (v21)
    {
      v38[1] = v10;
      v38[2] = v14;
      v54 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v21, 0);
      v22 = v54;
      v23 = v20 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v50 = *(v42 + 72);
      do
      {
        sub_218E1CDD8(v23, v7, type metadata accessor for TodayFeedGroupConfig);
        v24 = sub_219A46A0C();
        v26 = v25;
        sub_218E1D478(v7, type metadata accessor for TodayFeedGroupConfig);
        v54 = v22;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_21870B65C((v27 > 1), v28 + 1, 1);
          v22 = v54;
        }

        *(v22 + 16) = v28 + 1;
        v29 = v22 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v23 += v50;
        --v21;
      }

      while (v21);
      v19 = v48;
    }

    v30 = MEMORY[0x277D837D0];
    v31 = MEMORY[0x21CECC6D0](v22, MEMORY[0x277D837D0]);
    v33 = v32;

    MEMORY[0x21CECC330](v31, v33);

    v34 = v51;
    v35 = v52;
    v36 = v40;
    *(v40 + 56) = v30;
    v36[8] = sub_2186FC3BC();
    v36[4] = v34;
    v36[5] = v35;
    v37 = sub_219BF6214();
    sub_219BE5314("Fetch feed config group identifiers=%{public}@", 46, 2, &dword_2186C1000, v39, v37, v36);
    sub_2186C6190(v19, v45);
    swift_unknownObjectRelease();
    sub_2186C6190(v44, v43);

    sub_218822A58(v47, v46);
  }

  return result;
}

void sub_218E17EB8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a3;
  v77 = a4;
  v78 = a2;
  v7 = sub_219BDBD34();
  v75 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB184();
  v76 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TodayConfig(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v61 - v17;
  CACurrentMediaTime();
  sub_218E19B58(v18, a1, v4);
  if (v5)
  {
    return;
  }

  v71 = v4;
  v72 = a1;
  v73 = v18;
  v66 = v19;
  v67 = v9;
  v68 = v12;
  v69 = v7;
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  v20 = qword_280F617A0;
  sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v21 = swift_allocObject();
  v65 = xmmword_219C09BA0;
  *(v21 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v22 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);

    __break(1u);
    return;
  }

  v23 = v15;
  v64 = v10;
  v24 = MEMORY[0x277D84A90];
  *(v21 + 56) = MEMORY[0x277D84A28];
  *(v21 + 64) = v24;
  *(v21 + 32) = v22;
  sub_219BF6214();
  sub_219BE5314("Spent %llums decoding feed config", v61);

  v25 = v72[2];
  sub_218E19F4C(7, v25, 0x277D35498, sub_219482970, &unk_280E8DFE0);
  v70 = v26;
  sub_218E19F4C(1, v25, 0x277D35428, sub_219482954, &unk_280E8E3D8);
  v28 = v27;
  sub_218E19F4C(4, v25, 0x277D35418, sub_219482938, &unk_280E8E0E0);
  v30 = v29;
  sub_218E19F4C(2, v25, 0x277D35508, sub_21948291C, &unk_280E8E730);
  v32 = v31;
  sub_218E19F4C(10, v25, 0x277D354C0, sub_219482900, &qword_280E8E5D8);
  v34 = v33;
  v35 = v32;
  v63 = v28;
  v62 = v34;
  v36 = FCHeadlinesWithHeldRecords();
  if (v36)
  {
    v37 = v36;
    sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
    v38 = sub_219BF5214();
  }

  else
  {
    v38 = sub_2194AE584(MEMORY[0x277D84F90]);
  }

  v39 = [v71[3] tagController];
  v40 = [v39 tagsForTagRecords_];

  v71 = v35;
  v41 = v20;
  if (v40)
  {
    sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
    v61 = sub_219BF5214();
  }

  else
  {
    v61 = sub_2194AE5A0(MEMORY[0x277D84F90]);
  }

  v42 = v72[5];
  v43 = MEMORY[0x277D84F90];
  v80 = MEMORY[0x277D84F90];
  v44 = *(v42 + 16);
  if (v44)
  {
    v45 = (v42 + 40);
    do
    {
      v46 = *v45;
      v79[0] = *(v45 - 1);
      v79[1] = v46;

      sub_218E1A194(&v80, v79, v30, v38);

      v45 += 2;
      --v44;
    }

    while (v44);
    v43 = v80;
  }

  v47 = swift_allocObject();
  *(v47 + 16) = v65;
  sub_218E1CDA4(0);
  *(v47 + 56) = v48;
  *(v47 + 64) = sub_2186E0128(&unk_280E8F448, sub_218E1CDA4, MEMORY[0x277CC9C50]);
  *(v47 + 32) = v43;

  v49 = sub_219BF6214();
  sub_219BE5314("Fetched Local News articles in today feed request: %{public}@", 61, 2, &dword_2186C1000, v41, v49, v47);

  sub_218E1CDD8(v73, v23, type metadata accessor for TodayConfig);
  v50 = [v70 onlyRecordID];
  if (v50)
  {
    v51 = v50;
    v52 = v23;
    v53 = sub_219BF5414();
    v55 = v54;
  }

  else
  {
    v52 = v23;
    v53 = 0;
    v55 = 0xE000000000000000;
  }

  v56 = v67;
  sub_219BDBD24();
  v57 = v68;
  sub_219BDB104();

  (*(v75 + 8))(v56, v69);
  sub_218E1D478(v73, type metadata accessor for TodayConfig);
  type metadata accessor for TodayConfigData(0);
  v58 = swift_allocObject();
  *(v58 + 16) = v53;
  *(v58 + 24) = v55;
  *(v58 + 32) = v66 & 1;
  (*(v76 + 32))(v58 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_fetchInterval, v57, v64);
  *(v58 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines) = v38;
  *(v58 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_tags) = v61;
  *(v58 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_localNewsArticles) = v43;
  v59 = v77;
  sub_218E1CFF4(v52, v77, type metadata accessor for TodayConfig);
  Result = type metadata accessor for TodayConfigFetchResult(0);
  *(v59 + *(Result + 20)) = v58;
  *(v59 + *(Result + 24)) = v78;
  swift_unknownObjectRetain();
}

uint64_t sub_218E18704(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *a1;
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  v8 = sub_219BDBC04();
  v9 = [v8 fc_millisecondTimeIntervalUntilNow];

  v10 = MEMORY[0x277D84D90];
  *(v7 + 56) = MEMORY[0x277D84D38];
  *(v7 + 64) = v10;
  *(v7 + 32) = v9;
  sub_219BF6214();
  sub_219BE5314("Fetched app config for feed config fetch, time=%llums", v17);

  sub_218E1D05C(0, &qword_280EE6960, MEMORY[0x277D6CF30]);
  swift_allocObject();
  swift_unknownObjectRetain();
  sub_219BE3014();
  v11 = CACurrentMediaTime();
  sub_218E1D1EC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_219BE3204();
  v12 = swift_allocObject();
  v12[2] = v11;
  *(v12 + 3) = a2;
  *(v12 + 4) = v6;
  *(v12 + 5) = a4;
  swift_unknownObjectRetain();

  v13 = a4;
  v14 = sub_219BE2E54();
  sub_219BE2F64();

  v15 = sub_219BE31C4();

  return v15;
}

uint64_t sub_218E18990(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = type metadata accessor for TodayConfigFetchResult(0);
  MEMORY[0x28223BE20](v5 - 8);
  v19 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = *a1;
  v11 = a1[1];
  v12 = a1[2];
  v13 = a1[3];
  v14 = a1[4];
  v15 = a1[5];
  v16 = a1[6];
  v21[0] = v11;
  v21[1] = v12;
  v21[2] = v13;
  v21[3] = v14;
  v21[4] = v15;
  v21[5] = v16;
  swift_unknownObjectRetain();
  sub_218B87528(v11, v12);

  sub_218E1CD90(v14, v15);

  v17 = v22;
  sub_218E17EB8(v21, v10, v20, v9);
  v22 = v17;
  if (v17)
  {
    sub_2186C6190(v11, v12);

    sub_218822A58(v14, v15);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_218E1CDD8(v9, v19, type metadata accessor for TodayConfigFetchResult);
    sub_2186E7FB8(0, &unk_280EE6DC0, type metadata accessor for TodayConfigFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    a2 = sub_219BE3014();
    sub_2186C6190(v11, v12);

    sub_218822A58(v14, v15);
    swift_unknownObjectRelease();

    sub_218E1D478(v9, type metadata accessor for TodayConfigFetchResult);
  }

  return a2;
}

uint64_t sub_218E18BB4(uint64_t a1)
{
  sub_218E1D1EC(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_219BE3204();
  v1 = sub_219BE2E54();
  v2 = sub_219BE3064();

  return v2;
}

void sub_218E18C6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v6 < 9.22337204e18)
  {
    v7 = MEMORY[0x277D84A90];
    *(v5 + 56) = MEMORY[0x277D84A28];
    *(v5 + 64) = v7;
    *(v5 + 32) = v6;
    sub_219BF6214();
    sub_219BE5314("Fetched local news channel IDs for feed config fetch, time=%llums", v9);

    MEMORY[0x28223BE20](v8);
    sub_218E1D1EC(0, &qword_280EE6EB0, &type metadata for TodayConfigManager.OperationResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE30B4();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_218E18E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v37 = a3;
  v34 = a7;
  v38 = a4;
  v12 = sub_219BE3184();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v35 = v16;
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  ObjectType = swift_getObjectType();

  v18 = sub_218E1C034(a5);
  sub_218E1BF30(a6, a5, ObjectType);
  sub_219BF5064();
  sub_219BE3134();
  (*(v13 + 8))(v15, v12);
  v19 = v34;
  sub_218E191A0(v34, a6);
  v20 = objc_allocWithZone(MEMORY[0x277D31380]);
  v21 = sub_219BF53D4();

  v22 = sub_219BF53D4();

  v23 = sub_219BF5904();

  v24 = [v20 initWithFeedType:v18 forYouConfigID:v21 formatVersion:v22 additionalRecordIDs:v23];

  v25 = sub_218E19390(v24, a5, a6, v36);
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v28 = v37;
  v29 = v38;
  v27[2] = v26;
  v27[3] = v28;
  v27[4] = v29;
  v27[5] = v24;
  v30 = v35;
  v27[6] = sub_218E1D118;
  v27[7] = v30;
  v27[8] = v19;
  aBlock[4] = sub_218E1D15C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218846728;
  aBlock[3] = &block_descriptor_61;
  v31 = _Block_copy(aBlock);

  v32 = v24;

  [v25 setFetchCompletionHandler_];
  _Block_release(v31);
  [v25 startIfNeeded];
}

char *sub_218E191A0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v25 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v4, 0);
    v5 = v25;
    v6 = a1 + 40;
    do
    {

      v7 = sub_219BF53D4();
      v8 = FCCKPublisherSpecifiedArticleListIDForTagID();

      v9 = sub_219BF5414();
      v11 = v10;

      v13 = *(v25 + 16);
      v12 = *(v25 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21870B65C((v12 > 1), v13 + 1, 1);
      }

      *(v25 + 16) = v13 + 1;
      v14 = v25 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
      v6 += 16;
      --v4;
    }

    while (v4);
  }

  sub_2191ED3E8(v5);
  v15 = a1;
  v16 = [a2 topStoriesConfig];
  v17 = [v16 channelID];

  if (v17)
  {
    v18 = sub_219BF5414();
    v20 = v19;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_218840D24(0, *(v15 + 2) + 1, 1, v15);
    }

    v22 = *(v15 + 2);
    v21 = *(v15 + 3);
    if (v22 >= v21 >> 1)
    {
      v15 = sub_218840D24((v21 > 1), v22 + 1, 1, v15);
    }

    *(v15 + 2) = v22 + 1;
    v23 = &v15[16 * v22];
    *(v23 + 4) = v18;
    *(v23 + 5) = v20;
  }

  return v15;
}

id sub_218E19390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219248C68(a1);
  if (!v8)
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D31378]) initWithContext:*(a2 + 24) appConfig:a3 request:a1];
    [v12 setCachePolicy_];
    if (qword_280E8D8E8 == -1)
    {
LABEL_15:
      v31 = qword_280F617A0;
      sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_219C09BA0;
      v33 = [v12 operationID];
      v34 = sub_219BF5414();
      v36 = v35;

      *(v32 + 56) = MEMORY[0x277D837D0];
      *(v32 + 64) = sub_2186FC3BC();
      *(v32 + 32) = v34;
      *(v32 + 40) = v36;
      v37 = sub_219BF6214();
      sub_219BE5314("Creating new operation for config fetch, operationID=%{public}@", 63, 2, &dword_2186C1000, v31, v37, v32);
      goto LABEL_16;
    }

LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  v9 = v8;
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  v10 = qword_280F617A0;
  sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C0B8C0;
  v12 = v9;
  v13 = [v12 operationID];
  v14 = sub_219BF5414();
  v16 = v15;

  v17 = MEMORY[0x277D837D0];
  *(v11 + 56) = MEMORY[0x277D837D0];
  v18 = sub_2186FC3BC();
  *(v11 + 64) = v18;
  *(v11 + 32) = v14;
  *(v11 + 40) = v16;
  v19 = [v12 isFinished];
  v20 = v19 == 0;
  if (v19)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v20)
  {
    v22 = 0xE500000000000000;
  }

  else
  {
    v22 = 0xE400000000000000;
  }

  MEMORY[0x21CECC330](v21, v22);

  *(v11 + 96) = v17;
  *(v11 + 104) = v18;
  *(v11 + 72) = 0;
  *(v11 + 80) = 0xE000000000000000;
  sub_219BDBA54();
  v24 = v23;
  [v12 operationStartTime];
  v26 = v25;

  v27 = (v24 - v26) * 1000.0;
  if (COERCE__INT64(fabs(v27)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = v27;
  v28 = sub_219BF7894();
  *(v11 + 136) = v17;
  *(v11 + 144) = v18;
  *(v11 + 112) = v28;
  *(v11 + 120) = v29;
  v30 = sub_219BF6214();
  sub_219BE5314("Using prewarmed operation for config fetch, operationID=%{public}@, isFinished=%{public}@, savings=%{public}@ms", 111, 2, &dword_2186C1000, v10, v30, v11, v39);
LABEL_16:

  return v12;
}

void sub_218E19740(void *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, void *a6, void (*a7)(uint64_t *, __n128), uint64_t a8, uint64_t a9)
{
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      v46 = a7;
      v17 = sub_2186C6148(0, &unk_280E8DE30, 0x277D31380);
      v18 = objc_opt_self();
      v19 = swift_allocObject();
      *(v19 + 16) = a6;
      *(v19 + 24) = v17;
      v51 = sub_218E1D1E4;
      v52 = v19;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_218793E0C;
      v50 = &block_descriptor_23_1;
      v20 = _Block_copy(&aBlock);
      v21 = a6;
      v22 = a1;

      [v18 scheduleLowPriorityBlock_];
      _Block_release(v20);
      sub_219BDBD24();
      v23 = sub_219BDBD34();
      (*(*(v23 - 8) + 56))(v16, 0, 1, v23);
      sub_218E1C358(v16);
      v24 = [v22 ckConfigData];
      v25 = sub_219BDBA04();
      v27 = v26;

      v28 = [v22 ckRecordsByType];
      sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
      sub_2186C6148(0, &qword_280E8E750, 0x277D310A0);
      sub_218B9E44C();
      v29 = sub_219BF5214();

      v30 = sub_219BEC344();
      if (v31 >> 60 == 15)
      {
        sub_219BEC364();
        if (v32)
        {
        }

        else
        {
          v41 = [v22 newsEdgeConfigData];
          if (v41)
          {
            v42 = v41;
            v43 = sub_219BDBA04();
            v45 = v44;

            v31 = v45;
            v33 = v43;
            goto LABEL_11;
          }
        }

        v33 = 0;
        v31 = 0xF000000000000000;
      }

      else
      {
        v33 = v30;
      }

LABEL_11:
      aBlock = v25;
      v48 = v27;
      v49 = v29;
      v50 = v33;
      v51 = v31;
      v52 = a9;
      v38 = v31;

      (v46)(&aBlock);
      sub_2186C6190(v25, v27);

      sub_218822A58(v33, v38);

      return;
    }

    if (a2)
    {
      v37 = a2;
    }

    else
    {
      sub_218E1D190();
      v37 = swift_allocError();
      *v39 = 1;
    }

    v40 = a2;
    a4(v37);

    v36 = v37;
  }

  else
  {
    sub_218E1D190();
    v34 = swift_allocError();
    *v35 = 0;
    (a4)();
    v36 = v34;
  }
}

void sub_218E19B58(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v29 = a3;
  v7 = type metadata accessor for TodayConfig(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v28 = &v25 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v18 = a2[4];
  if (v18 >> 60 == 15)
  {
LABEL_4:
    sub_219BEE324();
    swift_allocObject();
    sub_219BEE314();
    sub_2186E0128(&unk_280EDF358, type metadata accessor for TodayConfig, &unk_219C35A48);
    sub_219BE1974();
    if (v4)
    {
    }

    else
    {
      v20 = v28;
      sub_218E1AC98(v9, v28);

      sub_218E1D478(v9, type metadata accessor for TodayConfig);
      if (qword_280E8D8E8 != -1)
      {
        swift_once();
      }

      v21 = qword_280F617A0;
      v22 = sub_219BF6214();
      sub_219BE5314("Selected the today feed config from CloudKit", 44, 2, &dword_2186C1000, v21, v22, MEMORY[0x277D84F90]);
      sub_218E1CFF4(v20, a1, type metadata accessor for TodayConfig);
    }

    return;
  }

  v26 = v9;
  v27 = a1;
  v19 = a2[3];
  sub_219BEE324();
  swift_allocObject();
  sub_218B87528(v19, v18);
  sub_219BEE314();
  sub_2186E0128(&unk_280EDF358, type metadata accessor for TodayConfig, &unk_219C35A48);
  sub_219BE1974();
  if (v3)
  {

    sub_218822A58(v19, v18);

    v4 = 0;
    v9 = v26;
    a1 = v27;
    goto LABEL_4;
  }

  sub_218E1AC98(v14, v17);

  sub_218E1D478(v14, type metadata accessor for TodayConfig);
  sub_218E1CFF4(v17, v27, type metadata accessor for TodayConfig);
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  v23 = qword_280F617A0;
  v24 = sub_219BF6214();
  sub_219BE5314("Selected the today feed config from News Edge", 45, 2, &dword_2186C1000, v23, v24, MEMORY[0x277D84F90]);
  sub_218822A58(v19, v18);
}

void sub_218E19F4C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(unint64_t, uint64_t), unint64_t *a5)
{
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
  v10 = sub_218B8EC20(v9, a2);

  if (v10)
  {
    v11 = [v10 recordsByID];
    if (v11)
    {
      v12 = v11;
      v13 = sub_219BF5214();

      sub_218E16DA4(v13, a3, a4);

      v14 = [v10 interestTokensByID];
      if (v14)
      {
        v15 = v14;
        sub_2186C6148(0, &unk_280E8E5F8, 0x277D310A8);
        v16 = sub_219BF5214();
      }

      else
      {
        v16 = 0;
      }

      sub_2186C6148(0, a5, a3);
      v18 = sub_219BF5204();

      if (v16)
      {
        sub_2186C6148(0, &unk_280E8E5F8, 0x277D310A8);
        v19 = sub_219BF5204();
      }

      else
      {
        v19 = 0;
      }

      v20 = [objc_allocWithZone(MEMORY[0x277D310A0]) initWithRecordsByID:v18 interestTokensByID:v19];

      if (v20)
      {

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277D310A0]);

    [v17 init];
  }
}

void sub_218E1A194(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v100 = a4;
  v8 = MEMORY[0x277D83D88];
  sub_2186E7FB8(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v110 = &v93 - v10;
  sub_2186E7FB8(0, &unk_280E905F0, MEMORY[0x277D33578], v8);
  MEMORY[0x28223BE20](v11 - 8);
  v109 = &v93 - v12;
  sub_2186E7FB8(0, &qword_280E901F0, MEMORY[0x277D33C78], v8);
  MEMORY[0x28223BE20](v13 - 8);
  v108 = &v93 - v14;
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v15 - 8);
  v107 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_219BF3034();
  v17 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for TodayLocalNewsArticle(0);
  v103 = *(v19 - 8);
  v104 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = (&v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v102 = &v93 - v23;
  v24 = *a2;
  v25 = a2[1];
  v111 = v24;
  v26 = sub_219BF53D4();
  v27 = FCCKPublisherSpecifiedArticleListIDForTagID();

  v28 = v27;
  if (!v27)
  {
    sub_219BF5414();
    v28 = sub_219BF53D4();
  }

  v29 = sub_219BF5414();
  v112 = a3;
  v113 = v29;
  v31 = v30;
  v32 = [a3 recordsByID];
  if (!v32)
  {
    goto LABEL_54;
  }

  v33 = v32;
  sub_2186C6148(0, &unk_280E8E0E0, 0x277D35418);
  v34 = sub_219BF5214();

  if (!*(v34 + 16) || (v35 = sub_21870F700(v113, v31), (v36 & 1) == 0))
  {

    return;
  }

  v37 = *(*(v34 + 56) + 8 * v35);

  v38 = [v37 articleIDs];
  if (!v38)
  {

LABEL_26:
    return;
  }

  v99 = v37;
  v114 = 0;
  v39 = v38;
  sub_219BF5914();

  v40 = v114;
  if (!v114)
  {

    goto LABEL_26;
  }

  v94 = v31;
  v97 = v4;
  v98 = v17;
  v101 = v25;
  v96 = a1;
  sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
  v95 = v40;
  v41 = sub_219BF5264();
  v42 = 0;
  v44 = v41 + 64;
  v43 = *(v41 + 64);
  v100 = v41;
  v45 = 1 << *(v41 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & v43;
  v48 = (v45 + 63) >> 6;
LABEL_13:
  v49 = v112;
  if (v47)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v50 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_54:

      __break(1u);
      goto LABEL_55;
    }

    if (v50 >= v48)
    {
      break;
    }

    v47 = *(v44 + 8 * v50);
    ++v42;
    if (v47)
    {
      v42 = v50;
LABEL_18:
      objc_opt_self();
      v51 = swift_dynamicCastObjCClass();
      if (v51)
      {
        swift_unknownObjectRetain_n();
        v52 = sub_219BF53D4();
        [v51 setSurfacedByChannelID_];
        swift_unknownObjectRelease();
      }

      v47 &= v47 - 1;
      [v51 addSurfacedByArticleListID_];

      goto LABEL_13;
    }
  }

  v53 = [v49 interestTokensByID];
  if (!v53)
  {
LABEL_55:
    __break(1u);
    return;
  }

  v54 = v53;
  sub_2186C6148(0, &unk_280E8E5F8, 0x277D310A8);
  v55 = sub_219BF5214();

  v56 = v95;
  v57 = v98;
  v58 = v99;
  if (!*(v55 + 16))
  {

    goto LABEL_28;
  }

  v59 = sub_21870F700(v113, v94);
  v61 = v60;

  if ((v61 & 1) == 0)
  {
LABEL_28:

    v62 = 0;
    goto LABEL_29;
  }

  v62 = *(*(v55 + 56) + 8 * v59);

LABEL_29:
  v63 = objc_allocWithZone(MEMORY[0x277D30DF0]);
  v64 = v58;
  v65 = [v63 initWithRecord:v64 interestToken:v62];

  v94 = v65;
  if (v65 && (v66 = [v65 editorialMetadata]) != 0 && (v67 = v66, v68 = objc_msgSend(v66, sel_articleMetadata), v67, v68))
  {
    sub_2186C6148(0, &qword_280E8E440, 0x277D30DF8);
    v100 = sub_219BF5214();

    v69 = *(v56 + 16);
    if (!v69)
    {
LABEL_33:

      v70 = MEMORY[0x277D84F90];
      goto LABEL_52;
    }
  }

  else
  {
    v100 = 0;
    v69 = *(v56 + 16);
    if (!v69)
    {
      goto LABEL_33;
    }
  }

  v93 = v64;
  v114 = MEMORY[0x277D84F90];
  sub_218C35D48(0, v69, 0);
  v98 = v57 + 4;
  v99 = v21;
  v71 = (v56 + 40);
  v70 = v114;
  v72 = v100;
  while (2)
  {
    v74 = *(v71 - 1);
    v73 = *v71;
    v113 = v70;
    if (!v72)
    {

      v76 = v101;
LABEL_44:
      *v21 = v74;
      v21[1] = v73;
      v21[2] = v111;
      v21[3] = v76;
      goto LABEL_45;
    }

    v75 = *(v72 + 16);

    v76 = v101;
    if (!v75)
    {
      goto LABEL_44;
    }

    v77 = sub_21870F700(v74, v73);
    if ((v78 & 1) == 0)
    {
      goto LABEL_44;
    }

    v79 = *(*(v72 + 56) + 8 * v77);
    *v21 = v74;
    v21[1] = v73;
    v21[2] = v111;
    v21[3] = v76;
    v80 = v79;
    if (!v79)
    {
LABEL_45:

      goto LABEL_46;
    }

    v81 = v80;
    v82 = [v80 respondsToSelector_];

    if ((v82 & 1) == 0)
    {
LABEL_46:
      v112 = 0;
      goto LABEL_47;
    }

    v83 = [v81 title];
    if (v83)
    {
      v84 = v83;
      v112 = sub_219BF5414();
    }

    else
    {
      v112 = 0;
    }

LABEL_47:
    v85 = sub_219BDBD34();
    (*(*(v85 - 8) + 56))(v107, 1, 1, v85);
    v86 = sub_219BF3044();
    (*(*(v86 - 8) + 56))(v108, 1, 1, v86);
    v87 = sub_219BF1C84();
    (*(*(v87 - 8) + 56))(v109, 1, 1, v87);
    v88 = sub_219BDB954();
    (*(*(v88 - 8) + 56))(v110, 1, 1, v88);
    v89 = v105;
    sub_219BF3004();
    swift_unknownObjectRelease();
    v21 = v99;
    (*v98)(v99 + *(v104 + 24), v89, v106);
    v90 = v102;
    sub_218E1CFF4(v21, v102, type metadata accessor for TodayLocalNewsArticle);
    v70 = v113;
    v114 = v113;
    v92 = *(v113 + 16);
    v91 = *(v113 + 24);
    if (v92 >= v91 >> 1)
    {
      sub_218C35D48((v91 > 1), v92 + 1, 1);
      v70 = v114;
    }

    *(v70 + 16) = v92 + 1;
    sub_218E1CFF4(v90, v70 + ((*(v103 + 80) + 32) & ~*(v103 + 80)) + *(v103 + 72) * v92, type metadata accessor for TodayLocalNewsArticle);
    v71 += 2;
    --v69;
    v72 = v100;
    if (v69)
    {
      continue;
    }

    break;
  }

  v64 = v93;
LABEL_52:
  sub_2191EE990(v70);
}

uint64_t sub_218E1AC98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v3 - 8);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TodayFeedConfig(0);
  MEMORY[0x28223BE20](v36);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E1CE40(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0170(0);
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  v38 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E1CE74(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0010(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE9418 != -1)
  {
    swift_once();
  }

  sub_2186E0128(&qword_280ED24C0, type metadata accessor for TodayConfigManager, &protocol conformance descriptor for TodayConfigManager);
  sub_219BDC7D4();
  if (v42 != 1)
  {
    return sub_218E1CDD8(a1, v41, type metadata accessor for TodayConfig);
  }

  sub_218FBF1EC(v14);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_218E1D478(v14, sub_218E1CE74);
    return sub_218E1CDD8(a1, v41, type metadata accessor for TodayConfig);
  }

  (*(v17 + 32))(v19, v14, v16);
  sub_218FBF40C(v9);
  v20 = v39;
  if ((*(v39 + 48))(v9, 1, v40) == 1)
  {
    sub_218E1D478(v9, sub_218E1CE40);
    (*(v17 + 8))(v19, v16);
    return sub_218E1CDD8(a1, v41, type metadata accessor for TodayConfig);
  }

  v22 = v38;
  (*(v20 + 32))();
  v23 = sub_218E1CDD8(a1, v6, type metadata accessor for TodayFeedConfig);
  v24 = v36;
  MEMORY[0x28223BE20](v23);
  *(&v36 - 2) = v19;
  *(&v36 - 1) = v22;
  sub_218D24B38(MEMORY[0x277D84F90], sub_218E1CEA8, (&v36 - 4), v25);
  v27 = v26;
  v28 = v37;
  sub_218E1CDD8(v6, v37, sub_2186DCF58);
  v29 = v41;
  sub_218E1CEC4(&v6[*(v24 + 24)], v41 + *(v24 + 24));
  sub_218E1CDD8(v28, v29, sub_2186DCF58);
  sub_218E1D478(v28, sub_2186DCF58);
  *(v29 + *(v24 + 20)) = v27;
  sub_218E1D478(v6, type metadata accessor for TodayFeedConfig);
  v30 = *(type metadata accessor for TodayConfig(0) + 20);
  v31 = *(a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = *(a1 + v30 + 16);
  v34 = (v29 + v30);
  *v34 = v31;
  v34[1] = v32;
  v34[2] = v33;
  v35 = *(v39 + 8);

  v35(v38, v40);
  return (*(v17 + 8))(v19, v16);
}

uint64_t TodayConfigManager.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = OBJC_IVAR____TtC7NewsUI218TodayConfigManager_testOverrides;
  v2 = sub_219BEC374();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TodayConfigManager.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = OBJC_IVAR____TtC7NewsUI218TodayConfigManager_testOverrides;
  v2 = sub_219BEC374();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_218E1B3D8(void *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = objc_opt_self();
    v18[0] = 0;
    v3 = a1;
    v4 = [v2 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v18];
    v5 = v18[0];
    if (v4)
    {
      v6 = sub_219BDBA04();
      v8 = v7;

      v9 = [objc_opt_self() standardUserDefaults];
      v10 = sub_219BDB9E4();
      v11 = sub_219BF53D4();
      [v9 setValue:v10 forKey:v11];

      sub_2186C6190(v6, v8);
    }

    else
    {
      v13 = v5;
      v14 = sub_219BDB724();

      swift_willThrow();
      v15 = [objc_opt_self() standardUserDefaults];
      v16 = sub_219BF53D4();
      [v15 removeObjectForKey_];
    }
  }

  else
  {
    v12 = [objc_opt_self() standardUserDefaults];
    v17 = sub_219BF53D4();
    [v12 removeObjectForKey_];
  }
}

uint64_t sub_218E1B648(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v79 = a4;
  v76 = a3;
  v81 = a1;
  sub_218E1CF58(0);
  MEMORY[0x28223BE20](v5 - 8);
  v78 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E1CF8C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v75 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E1CFC0(0);
  MEMORY[0x28223BE20](v9 - 8);
  v74 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187089D4(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v63 - v15;
  sub_218D15B24(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TodayFeedGroupConfig(0);
  v80 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v77 = v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v63 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = v63 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = v63 - v29;
  sub_218E1CDD8(a2, v63 - v29, type metadata accessor for TodayFeedGroupConfig);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_218E1D478(v30, type metadata accessor for TodayFeedGroupConfig);
  if (EnumCaseMultiPayload == 3)
  {
    v72 = a2;
    sub_219A47B40();
    v32 = sub_219BEF554();
    v33 = *(v32 - 8);
    v34 = v19;
    v70 = *(v33 + 56);
    v71 = v32;
    v69 = v33 + 56;
    v70(v19, 1, 1);
    v35 = sub_219BE3184();
    v36 = *(v35 - 8);
    v37 = *(v36 + 56);
    v38 = v36 + 56;
    v37(v16, 1, 1, v35);
    v67 = v37;
    v68 = v35;
    v66 = v38;
    v37(v13, 1, 1, v35);
    v39 = sub_219BEF874();
    v40 = *(v39 - 8);
    v41 = v74;
    v64 = *(v40 + 56);
    v65 = v39;
    v63[1] = v40 + 56;
    v64(v74, 1, 1);
    v42 = type metadata accessor for ForYouTodayFeedGroupConfigData(0);
    v43 = v75;
    (*(*(v42 - 8) + 56))(v75, 1, 1, v42);
    sub_2186E0010(0);
    sub_219BEDD84();

    sub_218E1D478(v43, sub_218E1CF8C);
    sub_218E1D478(v41, sub_218E1CFC0);
    sub_218E1D478(v13, sub_2187089D4);
    sub_218E1D478(v16, sub_2187089D4);
    sub_218E1D478(v34, sub_218D15B24);
    v76 = v24;
    swift_storeEnumTagMultiPayload();
    v44 = *v81;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v73 = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v44 = sub_2191F8F5C(0, v44[2] + 1, 1, v44);
    }

    v47 = v44[2];
    v46 = v44[3];
    v48 = v76;
    if (v47 >= v46 >> 1)
    {
      v44 = sub_2191F8F5C((v46 > 1), v47 + 1, 1, v44);
      v48 = v76;
    }

    v44[2] = v47 + 1;
    v76 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v80 = *(v80 + 72);
    sub_218E1CFF4(v48, v44 + v76 + v80 * v47, type metadata accessor for TodayFeedGroupConfig);
    sub_219A47B40();
    v49 = v34;
    (v70)(v34, 1, 1, v71);
    v51 = v67;
    v50 = v68;
    v67(v16, 1, 1, v68);
    v51(v13, 1, 1, v50);
    (v64)(v41, 1, 1, v65);
    v52 = type metadata accessor for MissedStoriesTodayFeedGroupConfigData(0);
    v53 = v78;
    (*(*(v52 - 8) + 56))(v78, 1, 1, v52);
    sub_2186E0170(0);
    v54 = v77;
    sub_219BEDD84();

    sub_218E1D478(v53, sub_218E1CF58);
    sub_218E1D478(v41, sub_218E1CFC0);
    sub_218E1D478(v13, sub_2187089D4);
    sub_218E1D478(v16, sub_2187089D4);
    sub_218E1D478(v49, sub_218D15B24);
    swift_storeEnumTagMultiPayload();
    v56 = v44[2];
    v55 = v44[3];
    if (v56 >= v55 >> 1)
    {
      v44 = sub_2191F8F5C((v55 > 1), v56 + 1, 1, v44);
    }

    v57 = v81;
    v44[2] = v56 + 1;
    v58 = v44 + v76 + v56 * v80;
    v59 = v54;
  }

  else
  {
    sub_218E1CDD8(a2, v27, type metadata accessor for TodayFeedGroupConfig);
    v57 = v81;
    v44 = *v81;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v44 = sub_2191F8F5C(0, v44[2] + 1, 1, v44);
    }

    v61 = v44[2];
    v60 = v44[3];
    if (v61 >= v60 >> 1)
    {
      v44 = sub_2191F8F5C((v60 > 1), v61 + 1, 1, v44);
    }

    v44[2] = v61 + 1;
    v58 = v44 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v61;
    v59 = v27;
  }

  result = sub_218E1CFF4(v59, v58, type metadata accessor for TodayFeedGroupConfig);
  *v57 = v44;
  return result;
}

uint64_t sub_218E1BF30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_219BEC364();
  if (!v6)
  {
    if ([a1 respondsToSelector_])
    {
      v7 = [a1 forYouPremiumRecordConfigID];
      v8 = sub_219BF5414();

      if (sub_218E1C034(a2) == 1)
      {
        return v8;
      }

      v9 = [a1 forYouRecordConfigID];
    }

    else
    {
      v9 = [a1 forYouRecordConfigID];
    }

    v10 = v9;
    v11 = sub_219BF5414();

    return v11;
  }

  return result;
}

uint64_t sub_218E1C034(uint64_t a1)
{
  v1 = [*(a1 + 48) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (!*(&v19 + 1))
  {
    sub_218806FD0(&v20);
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

  v2 = v17;
  v3 = [v17 integerValue];
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
    v18 = 0u;
    v19 = 0u;
  }

  v20 = v18;
  v21 = v19;
  if (*(&v19 + 1))
  {
    sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v5 = v17;
      v6 = [v5 integerValue];

      if ((v6 ^ v4))
      {
        goto LABEL_21;
      }

LABEL_19:
      v7 = 0;
      v8 = 0;
      goto LABEL_22;
    }
  }

  else
  {
    sub_218806FD0(&v20);
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_21:
  v7 = 1;
  v8 = 1;
LABEL_22:
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  v9 = qword_280F617A0;
  sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  *&v20 = 0;
  *(&v20 + 1) = 0xE000000000000000;
  if (v7)
  {
    v11 = 0x6D75696D657270;
  }

  else
  {
    v11 = 0x72616C75676572;
  }

  MEMORY[0x21CECC330](v11, 0xE700000000000000);

  v12 = v20;
  *(v10 + 56) = MEMORY[0x277D837D0];
  *(v10 + 64) = sub_2186FC3BC();
  v13 = MEMORY[0x277D839B0];
  *(v10 + 32) = v12;
  v14 = MEMORY[0x277D839F0];
  *(v10 + 96) = v13;
  *(v10 + 104) = v14;
  *(v10 + 72) = v8;
  v15 = sub_219BF6214();
  sub_219BE5314("Selecting the todayFeedType: %{public}@ (isSubscribed: %d)", 58, 2, &dword_2186C1000, v9, v15, v10);

  return v7;
}

uint64_t sub_218E1C358(uint64_t a1)
{
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  sub_218E1CDD8(a1, v4, sub_2186DCF58);
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    v8 = sub_219BDBC04();
    (*(v7 + 8))(v4, v6);
  }

  v9 = sub_219BF53D4();
  [v5 setValue:v8 forKey:v9];

  swift_unknownObjectRelease();
  return sub_218E1D478(a1, sub_2186DCF58);
}

void _s7NewsUI218TodayConfigManagerC07prewarmcD07contextySo14FCCloudContextC_tFZ_0(void *a1)
{
  v2 = sub_219BED174();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BED1D4();
  v48 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED184();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2186C5FC4();
  if (v13)
  {
    v14 = v13;
    v46 = v6;
    v47 = v3;
    v15 = [a1 appConfigurationManager];
    if ([v15 respondsToSelector_])
    {
      v45 = v2;
      v16 = [v15 fetchedAppConfiguration];
      swift_unknownObjectRelease();
      aBlock[0] = v16;
      sub_218E1D05C(0, &unk_280E8E070, MEMORY[0x277D83D88]);
      sub_219BF6F84();
      swift_unknownObjectRelease();
      v17 = v50;
      if (v50)
      {
        v43 = v10;
        v18 = [objc_allocWithZone(MEMORY[0x277D31378]) initWithContext:a1 appConfig:v50 request:v14];
        v44 = v17;
        v19 = v18;
        sub_219BF5D04();
        v21 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
        [v19 setCachePolicy_];

        [v19 setQualityOfService_];
        v22 = v19;
        [v22 setRelativePriority_];
        v23 = qword_27CC126E0;
        qword_27CC126E0 = v22;
        v24 = v22;

        if (qword_280E8D8E8 != -1)
        {
          swift_once();
        }

        v42 = qword_280F617A0;
        sub_2186E7FB8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_219C09BA0;
        v26 = [v24 operationID];

        v27 = sub_219BF5414();
        v29 = v28;

        *(v25 + 56) = MEMORY[0x277D837D0];
        *(v25 + 64) = sub_2186FC3BC();
        *(v25 + 32) = v27;
        *(v25 + 40) = v29;
        v30 = sub_219BF6214();
        sub_219BE5314("Prewarming Today config, operationID=%{public}@", 47, 2, &dword_2186C1000, v42, v30, v25);

        sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
        v31 = v43;
        (*(v43 + 104))(v12, *MEMORY[0x277D851B8], v9);
        v32 = sub_219BF66E4();
        (*(v31 + 8))(v12, v9);
        v33 = swift_allocObject();
        *(v33 + 16) = v24;
        aBlock[4] = sub_218E1D520;
        aBlock[5] = v33;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_218793E0C;
        aBlock[3] = &block_descriptor_40;
        v34 = _Block_copy(aBlock);
        v35 = v24;
        sub_219BED1A4();
        v50 = MEMORY[0x277D84F90];
        sub_2186E0128(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        sub_21879DD98(0);
        sub_2186E0128(&qword_280E8EFA0, sub_21879DD98, MEMORY[0x277D83970]);
        v36 = v45;
        sub_219BF7164();
        MEMORY[0x21CECD460](0, v8, v5, v34);
        _Block_release(v34);
        swift_unknownObjectRelease();

        (*(v47 + 8))(v5, v36);
        (*(v48 + 8))(v8, v46);

        return;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (qword_280E8D8E8 != -1)
    {
      swift_once();
    }

    v40 = qword_280F617A0;
    v41 = sub_219BF6214();
    sub_219BE5314("Not prewarming Today config because we have no previously-fetched app config", 76, 2, &dword_2186C1000, v40, v41, MEMORY[0x277D84F90]);
  }

  else
  {
    if (qword_280E8D8E8 != -1)
    {
      swift_once();
    }

    v37 = qword_280F617A0;
    v38 = sub_219BF6214();
    v39 = MEMORY[0x277D84F90];

    sub_219BE5314("Not prewarming Today config because we have no previously-issued request", 72, 2, &dword_2186C1000, v37, v38, v39);
  }
}

void sub_218E1CC8C(uint64_t a1)
{
  if (!qword_27CC12700)
  {
    sub_2186D6710(255, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CC12700);
    }
  }
}

uint64_t sub_218E1CD90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_218B87528(a1, a2);
  }

  return a1;
}

uint64_t sub_218E1CDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218E1CEC4(uint64_t a1, uint64_t a2)
{
  sub_2186E7FB8(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218E1CFF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218E1D05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_2186D6710(255, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218E1D118(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return v2(v5);
}

unint64_t sub_218E1D190()
{
  result = qword_27CC12728;
  if (!qword_27CC12728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12728);
  }

  return result;
}

void sub_218E1D1EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_218E1D274()
{
  v1 = *(v0 + 24);
  swift_getObjectType();
  [v1 cachePolicy];
  return sub_219BF6A64();
}

uint64_t sub_218E1D2D8(uint64_t *a1, uint64_t a2)
{
  v5 = *(sub_219BDBD34() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_218E18704(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_218E1D380(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_2186D6710(255, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_218E1D478(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_7Tm()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218E1D568(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_218E1D5B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_218E1D610()
{
  result = qword_27CC12738;
  if (!qword_27CC12738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12738);
  }

  return result;
}

uint64_t sub_218E1D6A4(void *a1)
{
  sub_218E24074(0, &qword_280E8C3B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E23F70();
  sub_219BF7B44();
  v9[15] = 0;
  type metadata accessor for SportsScoreSortingMatchFilter(0);
  sub_218E23FC4(&qword_280EAEAE0, type metadata accessor for SportsScoreSortingMatchFilter, &unk_219C17358);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for SportsScoreSortingSubsetFilter(0);
    v9[14] = 1;
    sub_218C425D4(0);
    sub_218E23FC4(&qword_280E8FDC8, sub_218C425D4, MEMORY[0x277D344F8]);
    sub_219BF7854();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218E1D8B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  sub_218C42540(0);
  v20 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](matched);
  v25 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E24074(0, &qword_280E8CB00, MEMORY[0x277D844C8]);
  v26 = v8;
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for SportsScoreSortingSubsetFilter(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218E23F70();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = a1;
  v14 = v13;
  v16 = v22;
  v15 = v23;
  v28 = 0;
  sub_218E23FC4(&qword_280EAEAD8, type metadata accessor for SportsScoreSortingMatchFilter, &unk_219C17380);
  v17 = v25;
  sub_219BF7734();
  sub_218E2400C(v17, v14, type metadata accessor for SportsScoreSortingMatchFilter);
  v27 = 1;
  sub_218C425D4(0);
  sub_218E23FC4(&qword_280E8FDC8, sub_218C425D4, MEMORY[0x277D344F8]);
  sub_219BF7764();
  (*(v16 + 8))(v10, v26);
  (*(v15 + 32))(v14 + *(v11 + 20), v6, v20);
  sub_218E23E5C(v14, v21, type metadata accessor for SportsScoreSortingSubsetFilter);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_218E23D88(v14, type metadata accessor for SportsScoreSortingSubsetFilter);
}

uint64_t sub_218E1DCC8()
{
  if (*v0)
  {
    return 0x737265746C6966;
  }

  else
  {
    return 0x686374616DLL;
  }
}

void sub_218E1DD00(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x686374616DLL && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
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

uint64_t sub_218E1DDD8(uint64_t a1)
{
  v2 = sub_218E23F70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218E1DE14(uint64_t a1)
{
  v2 = sub_218E23F70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218E1DE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_218A84380(a1, a2) & 1) == 0)
  {
    return 0;
  }

  sub_218C425D4(0);
  sub_218E23FC4(&qword_280E8FDC8, sub_218C425D4, MEMORY[0x277D344F8]);
  sub_218C4A1E8();

  return sub_219BF2694();
}

uint64_t sub_218E1DF48()
{
  sub_219BF7314();

  v0 = sub_218A830C4();
  MEMORY[0x21CECC330](v0);

  MEMORY[0x21CECC330](0x7265746C6966202CLL, 0xEA00000000003D73);
  type metadata accessor for SportsScoreSortingSubsetFilter(0);
  sub_218C42540(0);
  sub_219BF2664();
  v1 = MEMORY[0x21CECC6D0](v5, &type metadata for SportsScoreSortingFilter);
  v3 = v2;

  MEMORY[0x21CECC330](v1, v3);

  return 0x3D686374616DLL;
}

uint64_t type metadata accessor for SportsScoreSortingSubsetFilter(uint64_t a1)
{
  result = qword_280EAAFB0;
  if (!qword_280EAAFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218E1E098(uint64_t a1, unint64_t a2, void *a3)
{
  v669 = sub_219BDBF94();
  v6 = *(v669 - 8);
  MEMORY[0x28223BE20](v669);
  v668 = (&v657 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186DD5C0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v664 = &v657 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v671 = &v657 - v11;
  v724 = sub_219BF4AC4();
  v12 = *(v724 - 8);
  MEMORY[0x28223BE20](v724);
  v663 = &v657 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v729 = &v657 - v15;
  MEMORY[0x28223BE20](v16);
  v670 = &v657 - v17;
  v681 = sub_219BDBD34();
  v18 = *(v681 - 8);
  MEMORY[0x28223BE20](v681);
  v660 = &v657 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v662 = &v657 - v21;
  v699 = type metadata accessor for SportsScoreSortingFilterWhen(0);
  MEMORY[0x28223BE20](v699);
  v683 = (&v657 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v682 = (&v657 - v24);
  MEMORY[0x28223BE20](v25);
  v704 = (&v657 - v26);
  MEMORY[0x28223BE20](v27);
  v695 = (&v657 - v28);
  MEMORY[0x28223BE20](v29);
  v727 = (&v657 - v30);
  MEMORY[0x28223BE20](v31);
  v726 = (&v657 - v32);
  MEMORY[0x28223BE20](v33);
  v718 = (&v657 - v34);
  v35 = type metadata accessor for SportsScoreSortingSubsetFilter(0);
  MEMORY[0x28223BE20](v35);
  v703 = &v657 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SportsScoreSortingGroupByGroupFilter(0);
  MEMORY[0x28223BE20](v37 - 8);
  v667 = &v657 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v674 = &v657 - v40;
  MEMORY[0x28223BE20](v41);
  v677 = &v657 - v42;
  MEMORY[0x28223BE20](v43);
  v687 = &v657 - v44;
  MEMORY[0x28223BE20](v45);
  v680 = &v657 - v46;
  MEMORY[0x28223BE20](v47);
  v690 = &v657 - v48;
  MEMORY[0x28223BE20](v49);
  v693 = &v657 - v50;
  v51 = type metadata accessor for SportsScoreSortingGroupByFilter(0);
  MEMORY[0x28223BE20](v51 - 8);
  v666 = &v657 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53);
  v665 = &v657 - v54;
  MEMORY[0x28223BE20](v55);
  v673 = &v657 - v56;
  MEMORY[0x28223BE20](v57);
  v672 = &v657 - v58;
  MEMORY[0x28223BE20](v59);
  v676 = &v657 - v60;
  MEMORY[0x28223BE20](v61);
  v675 = &v657 - v62;
  MEMORY[0x28223BE20](v63);
  v686 = &v657 - v64;
  MEMORY[0x28223BE20](v65);
  v685 = &v657 - v66;
  MEMORY[0x28223BE20](v67);
  v679 = &v657 - v68;
  MEMORY[0x28223BE20](v69);
  v678 = &v657 - v70;
  MEMORY[0x28223BE20](v71);
  v689 = &v657 - v72;
  MEMORY[0x28223BE20](v73);
  v688 = &v657 - v74;
  MEMORY[0x28223BE20](v75);
  v692 = &v657 - v76;
  MEMORY[0x28223BE20](v77);
  v691 = &v657 - v78;
  v79 = type metadata accessor for SportsScoreSortingOrFilter(0);
  MEMORY[0x28223BE20](v79 - 8);
  v81 = &v657 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v698 = &v657 - v83;
  MEMORY[0x28223BE20](v84);
  v734 = &v657 - v85;
  MEMORY[0x28223BE20](v86);
  v711 = &v657 - v87;
  MEMORY[0x28223BE20](v88);
  v696 = &v657 - v89;
  MEMORY[0x28223BE20](v90);
  v700 = &v657 - v91;
  MEMORY[0x28223BE20](v92);
  v694 = &v657 - v93;
  v94 = type metadata accessor for SportsScoreSortingAndFilter(0);
  MEMORY[0x28223BE20](v94 - 8);
  v697 = &v657 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v96);
  v733 = &v657 - v97;
  MEMORY[0x28223BE20](v98);
  v706 = &v657 - v99;
  MEMORY[0x28223BE20](v100);
  v701 = &v657 - v101;
  MEMORY[0x28223BE20](v102);
  v737 = &v657 - v103;
  matched = type metadata accessor for SportsScoreSortingMatchFilter(0);
  MEMORY[0x28223BE20](matched - 8);
  v712 = (&v657 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218A84E44(a1, a2, a3);
  v732 = v106;
  v684 = sub_219AC4B08(a2, v106);
  sub_218C42540(0);
  v716 = v107;
  sub_219BF2664();
  v108 = v739;
  v719 = *(v739 + 16);
  if (!v719)
  {
LABEL_521:

    v739 = v684;
    sub_2191EDC00(v732);
    return;
  }

  v109 = 0;
  v731 = 0;
  v717 = v739 + 32;
  v723 = (v12 + 8);
  v661 = (v18 + 48);
  v659 = (v18 + 32);
  v658 = (v6 + 8);
  v657 = (v18 + 8);
  v730 = a3;
  v738 = v81;
  v110 = v734;
  v111 = v737;
  v707 = v739;
  while (1)
  {
    if (v109 >= *(v108 + 16))
    {
      goto LABEL_528;
    }

    v116 = *(v717 + 8 * v109);
    if (v732 >> 62)
    {
      v655 = v109;
      v656 = sub_219BF7214();
      v109 = v655;
      v108 = v707;
      if (!v656)
      {
        goto LABEL_4;
      }
    }

    else if (!*((v732 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    v117 = v116 >> 60;
    if ((v116 >> 60) <= 3)
    {
      break;
    }

    if (v117 <= 5)
    {
      v168 = v109;
      if (v117 == 4)
      {
        v169 = *((v116 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        v170 = v732;
        sub_219659C8C(v732, a3, v169);
        v172 = sub_219AC4B08(v170, v171);

        v732 = v172;
      }

      else
      {
        v419 = swift_projectBox();
        v420 = v703;
        sub_218E23E5C(v419, v703, type metadata accessor for SportsScoreSortingSubsetFilter);

        sub_218E1E098(v420, v732, a3);
        v422 = v421;

        sub_218E23D88(v420, type metadata accessor for SportsScoreSortingSubsetFilter);

        v732 = v422;
      }

      v111 = v737;
      v108 = v707;
      v109 = v168;
      goto LABEL_4;
    }

    if (v117 != 6)
    {
      v705 = v109;
      if (v117 == 7)
      {
        v118 = swift_projectBox();
        v119 = v685;
        sub_218E23E5C(v118, v685, type metadata accessor for SportsScoreSortingGroupByFilter);

        v120 = sub_218C490D4(v119, v732);
        v121 = v686;
        sub_218E23E5C(v119, v686, type metadata accessor for SportsScoreSortingGroupByFilter);
        v122 = v687;
        v123 = sub_218E2400C(v121, v687, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
        MEMORY[0x28223BE20](v123);
        *(&v657 - 2) = v122;
        *(&v657 - 1) = a3;
        v124 = v731;
        sub_218DDE84C(sub_218C4A8C8, (&v657 - 4), v120);
        v126 = v125;

        v739 = v126;
        sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
        sub_218E23DE8(&qword_280E8EE88, MEMORY[0x277D83970]);
        v127 = sub_219BF56E4();
        v731 = v124;
        v110 = v734;

        v128 = v119;
        v81 = v738;
        sub_218E23D88(v128, type metadata accessor for SportsScoreSortingGroupByFilter);
        sub_218E23D88(v122, type metadata accessor for SportsScoreSortingGroupByGroupFilter);

        v732 = v127;
        goto LABEL_517;
      }

      v409 = swift_projectBox();
      v410 = v695;
      sub_218E23E5C(v409, v695, type metadata accessor for SportsScoreSortingFilterWhen);
      v411 = *v410;

      v412 = v411;
      v413 = v732;
      v702 = v116;
      if (sub_219473EF8(v412, v732, a3, v116))
      {
        sub_219BF2664();
        v414 = v739;
        v415 = *(v739 + 16);

        v722 = v415;
        if (v415)
        {
          v416 = 0;
          v721 = v414 + 32;
          v417 = v413;
          v418 = v733;
          v709 = v414;
          while (1)
          {
            if (v416 >= *(v414 + 16))
            {
              goto LABEL_543;
            }

            v427 = v414;
            v428 = *(v721 + 8 * v416);
            if (v417 >> 62)
            {
              v650 = v416;
              v651 = sub_219BF7214();
              v416 = v650;
              v429 = v651;
              if (!v651)
              {
                goto LABEL_288;
              }
            }

            else
            {
              v429 = *((v417 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v429)
              {
                goto LABEL_288;
              }
            }

            v430 = v428 >> 60;
            v736 = v417;
            if ((v428 >> 60) > 3)
            {
              if (v430 <= 5)
              {
                v470 = v416;
                if (v430 == 4)
                {
                  v471 = *((v428 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

                  sub_219659C8C(v417, a3, v471);
                  v473 = sub_219AC4B08(v417, v472);

                  v417 = v473;
                }

                else
                {
                  v563 = swift_projectBox();
                  v564 = v703;
                  sub_218E23E5C(v563, v703, type metadata accessor for SportsScoreSortingSubsetFilter);

                  sub_218E1E098(v564, v417, a3);
                  v566 = v565;

                  sub_218E23D88(v564, type metadata accessor for SportsScoreSortingSubsetFilter);

                  v417 = v566;
                }

                v418 = v733;
                v416 = v470;
                goto LABEL_288;
              }

              v715 = v416;
              if (v430 == 6)
              {
                v474 = v428 & 0xFFFFFFFFFFFFFFFLL;
                v475 = *((v428 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v739 = MEMORY[0x277D84F90];
                v476 = v417 & 0xC000000000000001;
                v477 = v417 & 0xFFFFFFFFFFFFFF8;
                v735 = v474;

                v478 = 0;
                do
                {
                  if (v476)
                  {
                    MEMORY[0x21CECE0F0](v478, v417);
                    v479 = v478 + 1;
                    if (__OFADD__(v478, 1))
                    {
                      goto LABEL_529;
                    }
                  }

                  else
                  {
                    if (v478 >= *(v477 + 16))
                    {
                      goto LABEL_530;
                    }

                    v479 = v478 + 1;
                    if (__OFADD__(v478, 1))
                    {
                      goto LABEL_529;
                    }
                  }

                  sub_219BF3FA4();
                  if (v475)
                  {
                    v480 = v729;
                    if (v475 == 1)
                    {
                      v481 = sub_219BF4A74();
                    }

                    else
                    {
                      v481 = sub_219BF4A94();
                    }
                  }

                  else
                  {
                    v480 = v729;
                    v481 = sub_219BF4A84();
                  }

                  v482 = v481;
                  v483 = *v723;
                  (*v723)(v480, v724);
                  if (v482)
                  {
                    sub_219BF73D4();
                    sub_219BF7414();
                    sub_219BF7424();
                    sub_219BF73E4();
                  }

                  else
                  {
                  }

                  ++v478;
                  v167 = v479 == v429;
                  v81 = v738;
                  v418 = v733;
                  v417 = v736;
                }

                while (!v167);
                v567 = sub_219038F68(v475);

                v568 = sub_2193D0138(v567);
                a3 = v730;
                if (v568)
                {
                  sub_218A323F8(0, (v567 & 0xC000000000000001) == 0, v567);
                  v569 = v681;
                  if ((v567 & 0xC000000000000001) != 0)
                  {
                    MEMORY[0x21CECE0F0](0, v567);
                  }

                  else
                  {
                  }

                  v570 = v663;
                  sub_219BF3FA4();
                  v571 = v664;
                  sub_219BF4AB4();
                  v483(v570, v724);
                  if ((*v661)(v571, 1, v569) == 1)
                  {

                    sub_2189DD39C(v571);

                    v417 = MEMORY[0x277D84F90];
                  }

                  else
                  {
                    v642 = v660;
                    (*v659)(v660, v571, v569);
                    v643 = v668;
                    v644 = sub_219BDBF34();
                    MEMORY[0x28223BE20](v644);
                    *(&v657 - 2) = v643;
                    *(&v657 - 1) = v642;
                    v645 = v731;
                    v646 = sub_2195EB2C4(sub_218C49FD0, &v657 - 4, v567);
                    v731 = v645;

                    (*v658)(v643, v669);
                    v647 = v642;
                    v81 = v738;
                    (*v657)(v647, v569);

                    v417 = v646;
                  }

                  v418 = v733;
                  v110 = v734;
                }

                else
                {

                  v417 = MEMORY[0x277D84F90];
                  v110 = v734;
                }

                v414 = v709;
                goto LABEL_502;
              }

              if (v430 == 7)
              {
                v431 = swift_projectBox();
                v432 = v672;
                sub_218E23E5C(v431, v672, type metadata accessor for SportsScoreSortingGroupByFilter);

                v433 = sub_218C490D4(v432, v417);
                v434 = v673;
                sub_218E23E5C(v432, v673, type metadata accessor for SportsScoreSortingGroupByFilter);
                v435 = v674;
                v436 = sub_218E2400C(v434, v674, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
                MEMORY[0x28223BE20](v436);
                *(&v657 - 2) = v435;
                *(&v657 - 1) = a3;
                v437 = v731;
                sub_218DDE84C(sub_218C4A8C8, (&v657 - 4), v433);
                v439 = v438;

                v739 = v439;
                sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                sub_218E23DE8(&qword_280E8EE88, MEMORY[0x277D83970]);
                v417 = sub_219BF56E4();
                v731 = v437;
                v110 = v734;

                sub_218E23D88(v432, type metadata accessor for SportsScoreSortingGroupByFilter);
                sub_218E23D88(v435, type metadata accessor for SportsScoreSortingGroupByGroupFilter);

LABEL_301:
                v418 = v733;
                goto LABEL_287;
              }

              v555 = swift_projectBox();
              v556 = v682;
              sub_218E23E5C(v555, v682, type metadata accessor for SportsScoreSortingFilterWhen);
              v557 = *v556;

              v708 = v428;
              if (sub_219473EF8(v557, v417, a3, v428))
              {
                sub_219BF2664();
                v558 = v739;
                v559 = *(v739 + 16);

                v735 = v559;
                if (v559)
                {
                  v560 = 0;
                  v728 = v558 + 32;
                  v561 = v417;
                  v562 = v697;
                  v725 = v558;
                  while (1)
                  {
                    if (v560 >= *(v558 + 16))
                    {
                      goto LABEL_553;
                    }

                    v575 = *(v728 + 8 * v560);
                    if (v561 >> 62)
                    {
                      if (!sub_219BF7214())
                      {
                        goto LABEL_437;
                      }
                    }

                    else if (!*((v561 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_437;
                    }

                    v576 = v575 >> 60;
                    if ((v575 >> 60) <= 3)
                    {
                      if (v576 > 1)
                      {
                        if (v576 != 2)
                        {
                          v611 = swift_projectBox();
                          sub_218E23E5C(v611, v81, type metadata accessor for SportsScoreSortingOrFilter);

                          sub_219BF2664();
                          v612 = v575;
                          v613 = *(v739 + 16);

                          if (v613)
                          {
                            v720 = v612;
                            v614 = MEMORY[0x277D84F90];
                            v739 = MEMORY[0x277D84F90];
                            sub_219BF2664();
                            v615 = *(v740 + 16);
                            v714 = v740;
                            if (!v615)
                            {
LABEL_482:

                              v740 = v614;
                              sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                              sub_218E23DE8(&qword_280E8EE88, MEMORY[0x277D83970]);
                              v639 = v731;
                              v640 = sub_219BF56E4();
                              v731 = v639;

                              sub_218E23D88(v81, type metadata accessor for SportsScoreSortingOrFilter);

                              v561 = v640;
                              a3 = v730;
                              v110 = v734;
                              v562 = v697;
                              v558 = v725;
                              goto LABEL_437;
                            }

                            v616 = (v740 + 32);
                            while (2)
                            {
                              v617 = *v616++;

                              sub_219659C8C(v561, v730, v617);
                              v619 = v618;
                              if (v618 >> 62)
                              {
                                v620 = sub_219BF7214();
                                if (!(v614 >> 62))
                                {
                                  goto LABEL_466;
                                }
                              }

                              else
                              {
                                v620 = *((v618 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                if (!(v614 >> 62))
                                {
LABEL_466:
                                  v621 = *((v614 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                  v157 = __OFADD__(v621, v620);
                                  v622 = v621 + v620;
                                  if (v157)
                                  {
                                    goto LABEL_556;
                                  }

LABEL_467:
                                  sub_218861260(v622, 1);
                                  v614 = v739;
                                  sub_218A3363C((v739 & 0xFFFFFFFFFFFFFF8) + 8 * *((v739 & 0xFFFFFFFFFFFFFF8) + 0x10) + 32, (*((v739 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v739 & 0xFFFFFFFFFFFFFF8) + 0x10), v619);
                                  v624 = v623;

                                  if (v624 < v620)
                                  {
                                    goto LABEL_557;
                                  }

                                  v81 = v738;
                                  if (v624 >= 1)
                                  {
                                    v625 = *((v614 & 0xFFFFFFFFFFFFFF8) + 0x10);
                                    v157 = __OFADD__(v625, v624);
                                    v626 = v625 + v624;
                                    if (v157)
                                    {
                                      goto LABEL_561;
                                    }

                                    *((v614 & 0xFFFFFFFFFFFFFF8) + 0x10) = v626;
                                  }

                                  v739 = v614;
                                  if (!--v615)
                                  {
                                    goto LABEL_482;
                                  }

                                  continue;
                                }
                              }

                              break;
                            }

                            v627 = sub_219BF7214();
                            v157 = __OFADD__(v627, v620);
                            v622 = v627 + v620;
                            if (v157)
                            {
                              goto LABEL_556;
                            }

                            goto LABEL_467;
                          }

                          sub_218E23D88(v81, type metadata accessor for SportsScoreSortingOrFilter);

                          goto LABEL_481;
                        }

                        v592 = swift_projectBox();
                        sub_218E23E5C(v592, v562, type metadata accessor for SportsScoreSortingAndFilter);
                        v720 = v575;

                        sub_219BF2664();
                        v593 = *(v739 + 16);

                        if (v593)
                        {
                          sub_219BF2664();
                          v594 = *(v739 + 16);
                          if (v594)
                          {
                            v714 = v739;
                            v595 = (v739 + 32);

                            v596 = v561;
                            v597 = v731;
                            do
                            {
                              v598 = *v595++;

                              sub_219659C8C(v561, a3, v598);
                              v600 = sub_218C40DA4(v599);

                              v601 = sub_218845F78(v600);
                              a3 = v730;

                              v596 = sub_218C48A88(v596, v601);

                              swift_bridgeObjectRelease_n();
                              --v594;
                            }

                            while (v594);
                            v731 = v597;

                            v561 = v596;
                            v81 = v738;
                            v110 = v734;
                            v558 = v725;
                          }

                          v562 = v697;
                        }

                        v602 = type metadata accessor for SportsScoreSortingAndFilter;
                        v603 = v562;
                        goto LABEL_478;
                      }

                      if (v576)
                      {
                        v607 = swift_projectBox();
                        v608 = v712;
                        sub_218E23E5C(v607, v712, type metadata accessor for SportsScoreSortingMatchFilter);

                        sub_218A84E44(v608, v561, a3);
                        v610 = sub_219AC4B08(v561, v609);

                        sub_218E23D88(v608, type metadata accessor for SportsScoreSortingMatchFilter);

                        v561 = v610;
LABEL_481:
                        v562 = v697;
                        goto LABEL_437;
                      }

                      v588 = swift_projectBox();
                      v589 = v712;
                      sub_218E23E5C(v588, v712, type metadata accessor for SportsScoreSortingMatchFilter);

                      sub_218A84E44(v589, v561, a3);
                      v591 = v590;

                      sub_218E23D88(v589, type metadata accessor for SportsScoreSortingMatchFilter);

                      v561 = v591;
                    }

                    else
                    {
                      if (v576 <= 5)
                      {
                        if (v576 == 4)
                        {
                          v604 = *((v575 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

                          sub_219659C8C(v561, a3, v604);
                          v606 = sub_219AC4B08(v561, v605);

                          v561 = v606;
                          v558 = v725;
                        }

                        else
                        {
                          v635 = swift_projectBox();
                          v636 = v703;
                          sub_218E23E5C(v635, v703, type metadata accessor for SportsScoreSortingSubsetFilter);

                          sub_218E1E098(v636, v561, a3);
                          v638 = v637;

                          sub_218E23D88(v636, type metadata accessor for SportsScoreSortingSubsetFilter);

                          v561 = v638;
                        }
                      }

                      else
                      {
                        if (v576 == 6)
                        {
                          v572 = *((v575 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

                          sub_21903E324(v572, v561);
                          v574 = v573;
                        }

                        else
                        {
                          if (v576 != 7)
                          {
                            v628 = swift_projectBox();
                            v629 = v575;
                            v630 = v683;
                            sub_218E23E5C(v628, v683, type metadata accessor for SportsScoreSortingFilterWhen);
                            v631 = *v630;

                            if (sub_219473EF8(v631, v561, a3, v629))
                            {
                              sub_219BF2664();
                              v632 = v739;

                              v633 = v731;
                              v634 = sub_218C40F44(v561, v632, a3);
                              v731 = v633;
                              v110 = v734;

                              v561 = v634;
                              v562 = v697;
                            }

                            v602 = type metadata accessor for SportsScoreSortingFilterWhen;
                            v603 = v683;
LABEL_478:
                            sub_218E23D88(v603, v602);

                            goto LABEL_437;
                          }

                          v577 = swift_projectBox();
                          v578 = v665;
                          sub_218E23E5C(v577, v665, type metadata accessor for SportsScoreSortingGroupByFilter);

                          v579 = sub_218C490D4(v578, v561);
                          v580 = v666;
                          sub_218E23E5C(v578, v666, type metadata accessor for SportsScoreSortingGroupByFilter);
                          v581 = v667;
                          v582 = sub_218E2400C(v580, v667, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
                          MEMORY[0x28223BE20](v582);
                          *(&v657 - 2) = v581;
                          *(&v657 - 1) = a3;
                          v583 = v731;
                          sub_218DDE84C(sub_218C49E14, (&v657 - 4), v579);
                          v585 = v584;

                          v739 = v585;
                          sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                          sub_218E23DE8(&qword_280E8EE88, MEMORY[0x277D83970]);
                          v574 = sub_219BF56E4();
                          v731 = v583;
                          v110 = v734;

                          v586 = v578;
                          v81 = v738;
                          sub_218E23D88(v586, type metadata accessor for SportsScoreSortingGroupByFilter);
                          v587 = v581;
                          v558 = v725;
                          sub_218E23D88(v587, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
                        }

                        v561 = v574;
                      }

                      v562 = v697;
                    }

LABEL_437:
                    if (++v560 == v735)
                    {
                      goto LABEL_499;
                    }
                  }
                }

                v561 = v417;
LABEL_499:

                v417 = v561;
                v641 = v682;
                v414 = v709;
              }

              else
              {
                v641 = v556;
                v414 = v427;
              }

              sub_218E23D88(v641, type metadata accessor for SportsScoreSortingFilterWhen);

LABEL_501:
              v418 = v733;
LABEL_502:
              v416 = v715;
              goto LABEL_289;
            }

            v715 = v416;
            if (v430 > 1)
            {
              break;
            }

            if (v430)
            {
              v440 = swift_projectBox();
              v441 = v712;
              sub_218E23E5C(v440, v712, type metadata accessor for SportsScoreSortingMatchFilter);

              v442 = v736;
              sub_218A84E44(v441, v736, a3);
              v444 = sub_219AC4B08(v442, v443);

              sub_218E23D88(v441, type metadata accessor for SportsScoreSortingMatchFilter);

              v417 = v444;
              goto LABEL_301;
            }

            v423 = swift_projectBox();
            v424 = v712;
            sub_218E23E5C(v423, v712, type metadata accessor for SportsScoreSortingMatchFilter);

            sub_218A84E44(v424, v736, a3);
            v426 = v425;

            sub_218E23D88(v424, type metadata accessor for SportsScoreSortingMatchFilter);

            v417 = v426;
LABEL_287:
            v416 = v715;
LABEL_288:
            v414 = v427;
LABEL_289:
            if (++v416 == v722)
            {
              goto LABEL_514;
            }
          }

          if (v430 == 2)
          {
            v445 = swift_projectBox();
            sub_218E23E5C(v445, v418, type metadata accessor for SportsScoreSortingAndFilter);
            v708 = v428;

            sub_219BF2664();
            v446 = *(v739 + 16);

            if (!v446)
            {
              v417 = v736;
              v414 = v427;
              goto LABEL_495;
            }

            sub_219BF2664();
            v720 = *(v739 + 16);
            if (!v720)
            {
              v414 = v427;

              v418 = v733;
              v417 = v736;
LABEL_495:
              sub_218E23D88(v418, type metadata accessor for SportsScoreSortingAndFilter);

              goto LABEL_502;
            }

            v725 = v739;
            v714 = v739 + 32;
            v447 = v736;

            v448 = 0;
            v449 = v447;
            while (2)
            {
              if (v448 >= *(v725 + 16))
              {
                goto LABEL_558;
              }

              v450 = *(v714 + 8 * v448);

              v728 = v450;
              sub_219659C8C(v447, a3, v450);
              v452 = v451;
              if (v451 >> 62)
              {
                v453 = sub_219BF7214();
                v735 = v448;
                if (!v453)
                {
                  goto LABEL_322;
                }

LABEL_310:
                v739 = MEMORY[0x277D84F90];
                sub_218C33F88(v453);
                if (v453 < 0)
                {
                  goto LABEL_562;
                }

                v454 = 0;
                do
                {
                  if ((v452 & 0xC000000000000001) != 0)
                  {
                    MEMORY[0x21CECE0F0](v454, v452);
                  }

                  else
                  {
                  }

                  v455 = sub_219BF3F84();
                  v457 = v456;

                  v458 = v739;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_21870B65C(0, *(v458 + 16) + 1, 1);
                    v458 = v739;
                  }

                  v460 = *(v458 + 16);
                  v459 = *(v458 + 24);
                  if (v460 >= v459 >> 1)
                  {
                    sub_21870B65C((v459 > 1), v460 + 1, 1);
                    v458 = v739;
                  }

                  ++v454;
                  *(v458 + 16) = v460 + 1;
                  v461 = v458 + 16 * v460;
                  *(v461 + 32) = v455;
                  *(v461 + 40) = v457;
                  v110 = v734;
                }

                while (v453 != v454);

                v462 = MEMORY[0x277D84F90];
              }

              else
              {
                v453 = *((v451 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v735 = v448;
                if (v453)
                {
                  goto LABEL_310;
                }

LABEL_322:

                v462 = MEMORY[0x277D84F90];
                v458 = MEMORY[0x277D84F90];
              }

              v463 = sub_218845F78(v458);

              v739 = v462;
              if (v449 >> 62)
              {
                v464 = sub_219BF7214();
                v418 = v733;
                if (v464)
                {
LABEL_325:
                  v465 = 0;
                  do
                  {
                    if ((v449 & 0xC000000000000001) != 0)
                    {
                      MEMORY[0x21CECE0F0](v465, v449);
                      v466 = v465 + 1;
                      if (__OFADD__(v465, 1))
                      {
                        goto LABEL_524;
                      }
                    }

                    else
                    {
                      if (v465 >= *((v449 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_525;
                      }

                      v466 = v465 + 1;
                      if (__OFADD__(v465, 1))
                      {
                        goto LABEL_524;
                      }
                    }

                    v467 = sub_219BF3F84();
                    v469 = sub_2188537B8(v467, v468, v463);

                    if (v469)
                    {
                      sub_219BF73D4();
                      sub_219BF7414();
                      sub_219BF7424();
                      sub_219BF73E4();
                    }

                    else
                    {
                    }

                    ++v465;
                    v167 = v466 == v464;
                    v418 = v733;
                    v110 = v734;
                  }

                  while (!v167);
                }
              }

              else
              {
                v464 = *((v449 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v418 = v733;
                if (v464)
                {
                  goto LABEL_325;
                }
              }

              v448 = v735 + 1;

              v81 = v738;
              v449 = v739;
              a3 = v730;
              v447 = v736;
              if (v448 == v720)
              {

                v417 = v449;
                v414 = v709;
                goto LABEL_495;
              }

              continue;
            }
          }

          v484 = swift_projectBox();
          sub_218E23E5C(v484, v110, type metadata accessor for SportsScoreSortingOrFilter);

          sub_219BF2664();
          v485 = *(v739 + 16);

          if (!v485)
          {
            sub_218E23D88(v110, type metadata accessor for SportsScoreSortingOrFilter);

            v418 = v733;
            v416 = v715;
            v417 = v736;
            goto LABEL_288;
          }

          v708 = v428;
          sub_219BF2664();
          v486 = v739;
          v714 = *(v739 + 16);
          if (!v714)
          {

            v414 = v427;
            v490 = MEMORY[0x277D84F90];
LABEL_497:
            v739 = v490;
            sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
            sub_218E23DE8(&qword_280E8EE88, MEMORY[0x277D83970]);
            v648 = v731;
            v649 = sub_219BF56E4();
            v731 = v648;

            v110 = v734;
            sub_218E23D88(v734, type metadata accessor for SportsScoreSortingOrFilter);

            v417 = v649;
            goto LABEL_501;
          }

          v487 = 0;
          v713 = v739 + 32;
          v488 = v704;
          v489 = v736;
          v414 = v427;
          v490 = MEMORY[0x277D84F90];
          v710 = v739;
          while (2)
          {
            if (v487 >= *(v486 + 16))
            {
              goto LABEL_547;
            }

            v492 = *(v713 + 8 * v487);
            v493 = v492 >> 60;
            v735 = v487;
            v728 = v492;
            if ((v492 >> 60) <= 3)
            {
              v506 = v698;
              if (v493 > 1)
              {
                if (v493 != 2)
                {
                  v519 = swift_projectBox();
                  sub_218E23E5C(v519, v506, type metadata accessor for SportsScoreSortingOrFilter);

                  sub_219BF2664();
                  v520 = *(v739 + 16);

                  if (v520)
                  {
                    v725 = v490;
                    v521 = v414;
                    v739 = MEMORY[0x277D84F90];
                    sub_219BF2664();
                    v522 = *(v740 + 16);
                    if (v522)
                    {
                      v523 = (v740 + 32);
                      v524 = v736;
                      do
                      {
                        v525 = *v523++;

                        sub_219659C8C(v524, a3, v525);
                        sub_2191EDC00(v526);

                        --v522;
                      }

                      while (v522);
                    }

                    v740 = v739;
                    sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                    sub_218E23DE8(&qword_280E8EE88, MEMORY[0x277D83970]);
                    v527 = v731;
                    v503 = sub_219BF56E4();
                    v731 = v527;

                    sub_218E23D88(v506, type metadata accessor for SportsScoreSortingOrFilter);
                    v414 = v521;
                    v490 = v725;
                  }

                  else
                  {
                    sub_218E23D88(v506, type metadata accessor for SportsScoreSortingOrFilter);

                    v503 = v489;
                  }

                  goto LABEL_395;
                }

                v511 = swift_projectBox();
                v508 = v701;
                sub_218E23E5C(v511, v701, type metadata accessor for SportsScoreSortingAndFilter);

                v503 = sub_219A600C4(v508, v489, a3);
                v510 = type metadata accessor for SportsScoreSortingAndFilter;
              }

              else
              {
                if (v493)
                {
                  v516 = swift_projectBox();
                  v517 = v712;
                  sub_218E23E5C(v516, v712, type metadata accessor for SportsScoreSortingMatchFilter);

                  sub_218A84E44(v517, v489, a3);
                  v503 = sub_219AC4B08(v489, v518);

                  v504 = type metadata accessor for SportsScoreSortingMatchFilter;
                  v505 = v517;
                  goto LABEL_394;
                }

                v507 = swift_projectBox();
                v508 = v712;
                sub_218E23E5C(v507, v712, type metadata accessor for SportsScoreSortingMatchFilter);

                sub_218A84E44(v508, v489, a3);
                v503 = v509;
                v510 = type metadata accessor for SportsScoreSortingMatchFilter;
              }
            }

            else
            {
              if (v493 > 5)
              {
                if (v493 == 6)
                {
                  v514 = *((v492 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

                  sub_21903E324(v514, v489);
                  v503 = v515;
                }

                else
                {
                  if (v493 == 7)
                  {
                    v494 = swift_projectBox();
                    v495 = v675;
                    sub_218E23E5C(v494, v675, type metadata accessor for SportsScoreSortingGroupByFilter);

                    v496 = sub_218C490D4(v495, v489);
                    v497 = v676;
                    sub_218E23E5C(v495, v676, type metadata accessor for SportsScoreSortingGroupByFilter);
                    v498 = v677;
                    v499 = sub_218E2400C(v497, v677, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
                    MEMORY[0x28223BE20](v499);
                    *(&v657 - 2) = v498;
                    *(&v657 - 1) = a3;
                    v500 = v731;
                    sub_218DDE84C(sub_218C4A8C8, (&v657 - 4), v496);
                    v502 = v501;

                    v739 = v502;
                    sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                    sub_218E23DE8(&qword_280E8EE88, MEMORY[0x277D83970]);
                    v503 = sub_219BF56E4();
                    v731 = v500;

                    sub_218E23D88(v495, type metadata accessor for SportsScoreSortingGroupByFilter);
                    v504 = type metadata accessor for SportsScoreSortingGroupByGroupFilter;
                    v505 = v498;
                  }

                  else
                  {
                    v528 = swift_projectBox();
                    sub_218E23E5C(v528, v488, type metadata accessor for SportsScoreSortingFilterWhen);
                    v529 = *v488;

                    if (sub_219473EF8(v529, v489, a3, v492))
                    {
                      sub_219BF2664();
                      v530 = v739;
                      v531 = *(v739 + 16);

                      if (v531)
                      {
                        v532 = 0;
                        while (v532 < *(v530 + 16))
                        {
                          v533 = v532 + 1;
                          v534 = *(v530 + 32 + 8 * v532);

                          sub_219659C8C(v489, a3, v534);
                          v503 = v535;

                          v489 = v503;
                          v532 = v533;
                          if (v531 == v533)
                          {
                            goto LABEL_392;
                          }
                        }

                        goto LABEL_546;
                      }

                      v503 = v489;
LABEL_392:

                      v414 = v709;
                    }

                    else
                    {

                      v503 = v489;
                    }

                    v504 = type metadata accessor for SportsScoreSortingFilterWhen;
                    v505 = v704;
                  }

LABEL_394:
                  sub_218E23D88(v505, v504);
                }

LABEL_395:
                v538 = v503 >> 62;
                if (v503 >> 62)
                {
                  v539 = sub_219BF7214();
                }

                else
                {
                  v539 = *((v503 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v540 = v490 >> 62;
                if (v490 >> 62)
                {
                  v554 = sub_219BF7214();
                  v542 = v554 + v539;
                  if (__OFADD__(v554, v539))
                  {
                    goto LABEL_548;
                  }
                }

                else
                {
                  v541 = *((v490 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  v542 = v541 + v539;
                  if (__OFADD__(v541, v539))
                  {
                    goto LABEL_548;
                  }
                }

                if (swift_isUniquelyReferenced_nonNull_bridgeObject())
                {
                  if (!v540)
                  {
                    v543 = v490 & 0xFFFFFFFFFFFFFF8;
                    if (v542 > *((v490 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
LABEL_405:
                      v490 = sub_219BF7364();
                      v543 = v490 & 0xFFFFFFFFFFFFFF8;
                    }

                    v544 = *(v543 + 16);
                    v545 = *(v543 + 24);
                    if (v538)
                    {
                      v546 = sub_219BF7214();
                      if (v546)
                      {
                        goto LABEL_410;
                      }

LABEL_359:

                      v488 = v704;
                      v491 = v735;
                      v489 = v736;
                      v486 = v710;
                      if (v539 > 0)
                      {
                        goto LABEL_549;
                      }
                    }

                    else
                    {
                      v546 = *((v503 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      if (!v546)
                      {
                        goto LABEL_359;
                      }

LABEL_410:
                      if (((v545 >> 1) - v544) < v539)
                      {
                        goto LABEL_559;
                      }

                      v547 = v543 + 8 * v544 + 32;
                      v725 = v490;
                      v720 = v539;
                      if (v538)
                      {
                        if (v546 < 1)
                        {
                          goto LABEL_564;
                        }

                        sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                        sub_218E23DE8(&qword_27CC0CC70, MEMORY[0x277D83988]);
                        for (i = 0; i != v546; ++i)
                        {
                          v549 = sub_218A35350(&v739, i, v503);
                          v551 = *v550;

                          (v549)(&v739, 0);
                          *(v547 + 8 * i) = v551;
                        }
                      }

                      else
                      {
                        sub_219BF4044();
                        swift_arrayInitWithCopy();
                      }

                      if (v720 <= 0)
                      {
                        v488 = v704;
                        v81 = v738;
                        v414 = v709;
                        v491 = v735;
                        v489 = v736;
                        v490 = v725;
                        v486 = v710;
                      }

                      else
                      {
                        v552 = *(v543 + 16);
                        v157 = __OFADD__(v552, v720);
                        v553 = v552 + v720;
                        v488 = v704;
                        v81 = v738;
                        v414 = v709;
                        v490 = v725;
                        v486 = v710;
                        v491 = v735;
                        v489 = v736;
                        if (v157)
                        {
                          goto LABEL_563;
                        }

                        *(v543 + 16) = v553;
                      }
                    }

                    v487 = v491 + 1;
                    a3 = v730;
                    if (v487 == v714)
                    {

                      goto LABEL_497;
                    }

                    continue;
                  }
                }

                else if (!v540)
                {
                  goto LABEL_405;
                }

                sub_219BF7214();
                goto LABEL_405;
              }

              if (v493 == 4)
              {
                v512 = *((v492 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

                sub_219659C8C(v736, a3, v512);
                v503 = sub_219AC4B08(v736, v513);

                goto LABEL_395;
              }

              v536 = swift_projectBox();
              v508 = v703;
              sub_218E23E5C(v536, v703, type metadata accessor for SportsScoreSortingSubsetFilter);

              sub_218E1E098(v508, v489, a3);
              v503 = v537;
              v510 = type metadata accessor for SportsScoreSortingSubsetFilter;
            }

            break;
          }

          v504 = v510;
          v505 = v508;
          goto LABEL_394;
        }

        v417 = v413;
LABEL_514:

        v732 = v417;
      }

      sub_218E23D88(v695, type metadata accessor for SportsScoreSortingFilterWhen);
LABEL_516:

LABEL_517:
      v111 = v737;
LABEL_518:
      v108 = v707;
      v109 = v705;
      goto LABEL_4;
    }

    v112 = *((v116 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v113 = v109;

    sub_21903E324(v112, v732);
    v115 = v114;

    v109 = v113;
    v108 = v707;
    v732 = v115;
    v111 = v737;
LABEL_4:
    if (++v109 == v719)
    {
      goto LABEL_521;
    }
  }

  if (v117 <= 1)
  {
    v129 = v109;
    if (v117)
    {
      v173 = swift_projectBox();
      v174 = v712;
      sub_218E23E5C(v173, v712, type metadata accessor for SportsScoreSortingMatchFilter);

      v175 = v732;
      sub_218A84E44(v174, v732, a3);
      v177 = sub_219AC4B08(v175, v176);

      sub_218E23D88(v174, type metadata accessor for SportsScoreSortingMatchFilter);

      v732 = v177;
      v111 = v737;
    }

    else
    {
      v130 = swift_projectBox();
      v131 = v712;
      sub_218E23E5C(v130, v712, type metadata accessor for SportsScoreSortingMatchFilter);

      sub_218A84E44(v131, v732, a3);
      v133 = v132;

      sub_218E23D88(v131, type metadata accessor for SportsScoreSortingMatchFilter);

      v732 = v133;
    }

    v108 = v707;
    v109 = v129;
    goto LABEL_4;
  }

  v705 = v109;
  if (v117 != 2)
  {
    v178 = swift_projectBox();
    v179 = v694;
    sub_218E23E5C(v178, v694, type metadata accessor for SportsScoreSortingOrFilter);

    sub_219BF2664();
    v180 = *(v739 + 16);

    if (!v180)
    {
      sub_218E23D88(v179, type metadata accessor for SportsScoreSortingOrFilter);
      goto LABEL_516;
    }

    v702 = v116;
    sub_219BF2664();
    v181 = v739;
    v710 = *(v739 + 16);
    if (!v710)
    {

      v652 = MEMORY[0x277D84F90];
      goto LABEL_512;
    }

    v182 = 0;
    v709 = v739 + 32;
    v183 = MEMORY[0x277D84F90];
    v708 = v739;
    while (1)
    {
      if (v182 >= *(v181 + 16))
      {
        goto LABEL_535;
      }

      v184 = *(v709 + 8 * v182);
      v185 = v184 >> 60;
      v736 = v183;
      v725 = v182;
      v728 = v184;
      if ((v184 >> 60) <= 3)
      {
        break;
      }

      v186 = v726;
      if (v185 <= 5)
      {
        if (v185 == 4)
        {
          v205 = *((v184 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

          v206 = v732;
          sub_219659C8C(v732, a3, v205);
          v196 = sub_219AC4B08(v206, v207);

          goto LABEL_252;
        }

        v297 = swift_projectBox();
        v200 = v703;
        sub_218E23E5C(v297, v703, type metadata accessor for SportsScoreSortingSubsetFilter);

        sub_218E1E098(v200, v732, a3);
        v196 = v298;
        v202 = type metadata accessor for SportsScoreSortingSubsetFilter;
        goto LABEL_157;
      }

      if (v185 == 6)
      {
        v208 = *((v184 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

        sub_21903E324(v208, v732);
        v196 = v209;
        goto LABEL_252;
      }

      if (v185 != 7)
      {
        v289 = swift_projectBox();
        sub_218E23E5C(v289, v186, type metadata accessor for SportsScoreSortingFilterWhen);
        v290 = *v186;

        v196 = v732;
        v291 = sub_219473EF8(v290, v732, a3, v184);
        v292 = v727;
        if (v291)
        {
          sub_219BF2664();
          v293 = v739;
          v294 = *(v739 + 16);

          v295 = v706;
          v722 = v294;
          if (v294)
          {
            v296 = 0;
            v721 = v293 + 32;
            v186 = v726;
            v714 = v293;
            while (1)
            {
              if (v296 >= *(v293 + 16))
              {
                goto LABEL_538;
              }

              v304 = *(v721 + 8 * v296);
              if (v196 >> 62)
              {
                v305 = sub_219BF7214();
                if (!v305)
                {
                  goto LABEL_161;
                }
              }

              else
              {
                v305 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (!v305)
                {
                  goto LABEL_161;
                }
              }

              v306 = v304 >> 60;
              v735 = v196;
              if ((v304 >> 60) > 3)
              {
                break;
              }

              v317 = v711;
              if (v306 <= 1)
              {
                if (v306)
                {
                  v318 = swift_projectBox();
                  v319 = v712;
                  sub_218E23E5C(v318, v712, type metadata accessor for SportsScoreSortingMatchFilter);

                  sub_218A84E44(v319, v196, a3);
                  v321 = sub_219AC4B08(v196, v320);

                  sub_218E23D88(v319, type metadata accessor for SportsScoreSortingMatchFilter);

                  v196 = v321;
                  goto LABEL_227;
                }

                v299 = swift_projectBox();
                v300 = v712;
                sub_218E23E5C(v299, v712, type metadata accessor for SportsScoreSortingMatchFilter);

                sub_218A84E44(v300, v196, a3);
                v302 = v301;

                v303 = type metadata accessor for SportsScoreSortingMatchFilter;
LABEL_159:
                sub_218E23D88(v300, v303);

                v196 = v302;
                goto LABEL_160;
              }

              if (v306 == 2)
              {
                v322 = swift_projectBox();
                sub_218E23E5C(v322, v295, type metadata accessor for SportsScoreSortingAndFilter);
                v715 = v304;

                v323 = v295;
                sub_219BF2664();
                v324 = *(v739 + 16);

                if (v324)
                {
                  sub_219BF2664();
                  v325 = *(v739 + 16);
                  if (v325)
                  {
                    v720 = v296;
                    v326 = v293;
                    v735 = v739;
                    v327 = (v739 + 32);

                    v328 = v196;
                    v329 = v731;
                    do
                    {
                      v330 = *v327++;

                      sub_219659C8C(v196, a3, v330);
                      v332 = sub_218C40DA4(v331);

                      v333 = sub_218845F78(v332);

                      v328 = sub_218C48A88(v328, v333);

                      a3 = v730;
                      swift_bridgeObjectRelease_n();
                      --v325;
                    }

                    while (v325);
                    v731 = v329;

                    v196 = v328;
                    v292 = v727;
                    v295 = v706;
                    v293 = v326;
                    v296 = v720;
                  }

                  else
                  {
                    v295 = v323;
                  }

                  v81 = v738;
                }

                else
                {
                  v295 = v323;
                }

                sub_218E23D88(v295, type metadata accessor for SportsScoreSortingAndFilter);

                v186 = v726;
                goto LABEL_161;
              }

              v346 = swift_projectBox();
              sub_218E23E5C(v346, v317, type metadata accessor for SportsScoreSortingOrFilter);

              sub_219BF2664();
              v347 = *(v739 + 16);

              if (v347)
              {
                v715 = v304;
                v720 = v296;
                v348 = MEMORY[0x277D84F90];
                v739 = MEMORY[0x277D84F90];
                sub_219BF2664();
                v349 = *(v740 + 16);
                v713 = v740;
                if (!v349)
                {
                  v293 = v714;
LABEL_232:

                  v740 = v348;
                  sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                  sub_218E23DE8(&qword_280E8EE88, MEMORY[0x277D83970]);
                  v385 = v731;
                  v386 = sub_219BF56E4();
                  v731 = v385;

                  sub_218E23D88(v317, type metadata accessor for SportsScoreSortingOrFilter);

                  v196 = v386;
                  a3 = v730;
                  goto LABEL_236;
                }

                v350 = (v740 + 32);
                v293 = v714;
                while (2)
                {
                  v351 = *v350++;

                  sub_219659C8C(v196, v730, v351);
                  v353 = v352;
                  if (v352 >> 62)
                  {
                    v354 = sub_219BF7214();
                    if (!(v348 >> 62))
                    {
                      goto LABEL_199;
                    }
                  }

                  else
                  {
                    v354 = *((v352 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (!(v348 >> 62))
                    {
LABEL_199:
                      v355 = *((v348 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      v157 = __OFADD__(v355, v354);
                      v356 = v355 + v354;
                      if (v157)
                      {
                        goto LABEL_539;
                      }

                      goto LABEL_200;
                    }
                  }

                  v361 = sub_219BF7214();
                  v157 = __OFADD__(v361, v354);
                  v356 = v361 + v354;
                  if (v157)
                  {
                    goto LABEL_539;
                  }

LABEL_200:
                  sub_218861260(v356, 1);
                  v348 = v739;
                  sub_218A3363C((v739 & 0xFFFFFFFFFFFFFF8) + 8 * *((v739 & 0xFFFFFFFFFFFFFF8) + 0x10) + 32, (*((v739 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v739 & 0xFFFFFFFFFFFFFF8) + 0x10), v353);
                  v358 = v357;

                  if (v358 < v354)
                  {
                    goto LABEL_540;
                  }

                  v292 = v727;
                  v81 = v738;
                  v317 = v711;
                  if (v358 >= 1)
                  {
                    v359 = *((v348 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    v157 = __OFADD__(v359, v358);
                    v360 = v359 + v358;
                    if (v157)
                    {
                      goto LABEL_550;
                    }

                    *((v348 & 0xFFFFFFFFFFFFFF8) + 0x10) = v360;
                  }

                  v739 = v348;
                  --v349;
                  v196 = v735;
                  if (!v349)
                  {
                    goto LABEL_232;
                  }

                  continue;
                }
              }

              sub_218E23D88(v317, type metadata accessor for SportsScoreSortingOrFilter);

              v186 = v726;
              v295 = v706;
              v293 = v714;
LABEL_161:
              if (++v296 == v722)
              {
                goto LABEL_248;
              }
            }

            if (v306 <= 5)
            {
              if (v306 != 4)
              {
                v372 = swift_projectBox();
                v300 = v703;
                sub_218E23E5C(v372, v703, type metadata accessor for SportsScoreSortingSubsetFilter);

                sub_218E1E098(v300, v196, a3);
                v302 = v373;

                v303 = type metadata accessor for SportsScoreSortingSubsetFilter;
                goto LABEL_159;
              }

              v334 = *((v304 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

              sub_219659C8C(v196, a3, v334);
              v336 = v296;
              v337 = sub_219AC4B08(v196, v335);

              v186 = v726;

              v292 = v727;

              v196 = v337;
              v296 = v336;
            }

            else
            {
              v720 = v296;
              if (v306 != 6)
              {
                if (v306 == 7)
                {
                  v307 = swift_projectBox();
                  v308 = v678;
                  sub_218E23E5C(v307, v678, type metadata accessor for SportsScoreSortingGroupByFilter);

                  v309 = sub_218C490D4(v308, v196);
                  v715 = v304;
                  v310 = v679;
                  sub_218E23E5C(v308, v679, type metadata accessor for SportsScoreSortingGroupByFilter);
                  v311 = v680;
                  v312 = sub_218E2400C(v310, v680, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
                  MEMORY[0x28223BE20](v312);
                  *(&v657 - 2) = v311;
                  *(&v657 - 1) = a3;
                  v313 = v731;
                  sub_218DDE84C(sub_218C4A8C8, (&v657 - 4), v309);
                  v315 = v314;

                  v739 = v315;
                  sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
                  sub_218E23DE8(&qword_280E8EE88, MEMORY[0x277D83970]);
                  v292 = v727;
                  v316 = sub_219BF56E4();
                  v731 = v313;

                  sub_218E23D88(v308, type metadata accessor for SportsScoreSortingGroupByFilter);
                  sub_218E23D88(v311, type metadata accessor for SportsScoreSortingGroupByGroupFilter);

                  v196 = v316;
                }

                else
                {
                  v362 = swift_projectBox();
                  sub_218E23E5C(v362, v292, type metadata accessor for SportsScoreSortingFilterWhen);
                  v363 = *v292;

                  if (sub_219473EF8(v363, v196, a3, v304))
                  {
                    v715 = v304;
                    sub_219BF2664();
                    v364 = v739;
                    v365 = *(v739 + 16);

                    if (v365)
                    {
                      v366 = 0;
                      v367 = v196;
                      do
                      {
                        if (v366 >= *(v364 + 16))
                        {
                          goto LABEL_544;
                        }

                        v368 = v366 + 1;
                        v369 = *(v364 + 32 + 8 * v366);

                        sub_219659C8C(v367, a3, v369);
                        v371 = v370;

                        v367 = v371;
                        v366 = v368;
                      }

                      while (v365 != v368);
                    }

                    else
                    {
                      v371 = v196;
                    }

                    v196 = v371;
                    v292 = v727;
                  }

                  sub_218E23D88(v292, type metadata accessor for SportsScoreSortingFilterWhen);
                }

LABEL_236:
                v186 = v726;
                v295 = v706;
                v296 = v720;
                goto LABEL_161;
              }

              v338 = *((v304 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v739 = MEMORY[0x277D84F90];
              v339 = v196 & 0xC000000000000001;
              v715 = v304 & 0xFFFFFFFFFFFFFFFLL;

              v340 = 0;
              v341 = v196 & 0xFFFFFFFFFFFFFF8;
              do
              {
                if (v339)
                {
                  v342 = MEMORY[0x21CECE0F0](v340, v196);
                  v343 = v340 + 1;
                  if (__OFADD__(v340, 1))
                  {
                    goto LABEL_526;
                  }
                }

                else
                {
                  if (v340 >= *(v341 + 16))
                  {
                    goto LABEL_527;
                  }

                  v342 = *(v196 + 8 * v340 + 32);

                  v343 = v340 + 1;
                  if (__OFADD__(v340, 1))
                  {
                    goto LABEL_526;
                  }
                }

                v740 = v342;
                v344 = v731;
                v345 = sub_219038E4C(&v740, v338);
                v731 = v344;
                if (v344)
                {
                  goto LABEL_566;
                }

                if (v345)
                {
                  sub_219BF73D4();
                  sub_219BF7414();
                  v292 = v727;
                  sub_219BF7424();
                  sub_219BF73E4();
                  v186 = v726;
                }

                else
                {
                }

                ++v340;
                v167 = v343 == v305;
                v196 = v735;
              }

              while (!v167);
              v374 = sub_219038F68(v338);

              v81 = v738;
              v293 = v714;
              if (v374 >> 62)
              {
                v387 = sub_219BF7214();
                a3 = v730;
                v295 = v706;
                v296 = v720;
                if (!v387)
                {
LABEL_240:

                  v196 = MEMORY[0x277D84F90];
                  goto LABEL_161;
                }
              }

              else
              {
                a3 = v730;
                v295 = v706;
                v296 = v720;
                if (!*((v374 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_240;
                }
              }

              if ((v374 & 0xC000000000000001) != 0)
              {
                MEMORY[0x21CECE0F0](0, v374);
              }

              else
              {
                if (!*((v374 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_565;
                }
              }

              v375 = v670;
              sub_219BF3FA4();
              v376 = v671;
              sub_219BF4AB4();
              (*v723)(v375, v724);
              v377 = v681;
              if ((*v661)(v376, 1, v681) == 1)
              {

                sub_2189DD39C(v376);

                v196 = MEMORY[0x277D84F90];
              }

              else
              {
                v378 = v662;
                (*v659)(v662, v376, v377);
                v379 = v668;
                v380 = sub_219BDBF34();
                MEMORY[0x28223BE20](v380);
                *(&v657 - 2) = v379;
                *(&v657 - 1) = v378;
                v381 = v731;
                v382 = sub_2195EB2C4(sub_218C4A8AC, &v657 - 4, v374);
                v731 = v381;

                v383 = v379;
                v296 = v720;
                (*v658)(v383, v669);
                v384 = v378;
                v81 = v738;
                (*v657)(v384, v377);

                v196 = v382;
              }

              v292 = v727;
LABEL_227:
              v186 = v726;
            }

LABEL_160:
            v295 = v706;
            goto LABEL_161;
          }

          v186 = v726;
LABEL_248:
        }

        else
        {
        }

        v213 = type metadata accessor for SportsScoreSortingFilterWhen;
LABEL_250:
        v197 = v213;
        v198 = v186;
        goto LABEL_251;
      }

      v187 = swift_projectBox();
      v188 = v688;
      sub_218E23E5C(v187, v688, type metadata accessor for SportsScoreSortingGroupByFilter);

      v189 = sub_218C490D4(v188, v732);
      v190 = v689;
      sub_218E23E5C(v188, v689, type metadata accessor for SportsScoreSortingGroupByFilter);
      v191 = v690;
      v192 = sub_218E2400C(v190, v690, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
      MEMORY[0x28223BE20](v192);
      *(&v657 - 2) = v191;
      *(&v657 - 1) = a3;
      v193 = v731;
      sub_218DDE84C(sub_218C4A8C8, (&v657 - 4), v189);
      v195 = v194;

      v739 = v195;
      sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
      sub_218E23DE8(&qword_280E8EE88, MEMORY[0x277D83970]);
      v196 = sub_219BF56E4();
      v731 = v193;

      sub_218E23D88(v188, type metadata accessor for SportsScoreSortingGroupByFilter);
      v197 = type metadata accessor for SportsScoreSortingGroupByGroupFilter;
      v198 = v191;
LABEL_251:
      sub_218E23D88(v198, v197);
LABEL_252:
      v389 = v196 >> 62;
      v390 = v736;
      if (v196 >> 62)
      {
        v407 = sub_219BF7214();
        v390 = v736;
        v391 = v407;
      }

      else
      {
        v391 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v392 = v390 >> 62;
      if (v390 >> 62)
      {
        v408 = sub_219BF7214();
        v394 = v408 + v391;
        if (__OFADD__(v408, v391))
        {
          goto LABEL_536;
        }
      }

      else
      {
        v393 = *((v390 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v394 = v393 + v391;
        if (__OFADD__(v393, v391))
        {
          goto LABEL_536;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v392)
        {
          v395 = v736;
          v396 = v736 & 0xFFFFFFFFFFFFFF8;
          if (v394 <= *((v736 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_263;
          }

          goto LABEL_262;
        }

LABEL_261:
        sub_219BF7214();
        goto LABEL_262;
      }

      if (v392)
      {
        goto LABEL_261;
      }

LABEL_262:
      v395 = sub_219BF7364();
      v396 = v395 & 0xFFFFFFFFFFFFFF8;
LABEL_263:
      v397 = *(v396 + 16);
      v398 = *(v396 + 24);
      v736 = v395;
      if (v389)
      {
        v399 = sub_219BF7214();
        if (v399)
        {
LABEL_267:
          if (((v398 >> 1) - v397) < v391)
          {
            goto LABEL_545;
          }

          v400 = v396 + 8 * v397 + 32;
          v735 = v391;
          if (v389)
          {
            if (v399 < 1)
            {
              goto LABEL_560;
            }

            sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
            sub_218E23DE8(&qword_27CC0CC70, MEMORY[0x277D83988]);
            for (j = 0; j != v399; ++j)
            {
              v402 = sub_218A35350(&v739, j, v196);
              v404 = *v403;

              (v402)(&v739, 0);
              *(v400 + 8 * j) = v404;
            }
          }

          else
          {
            sub_219BF4044();
            swift_arrayInitWithCopy();
          }

          if (v735 <= 0)
          {
            a3 = v730;
            v81 = v738;
            v183 = v736;
          }

          else
          {
            v405 = *(v396 + 16);
            v157 = __OFADD__(v405, v735);
            v406 = v405 + v735;
            a3 = v730;
            v81 = v738;
            v183 = v736;
            if (v157)
            {
              goto LABEL_555;
            }

            *(v396 + 16) = v406;
          }

          goto LABEL_68;
        }
      }

      else
      {
        v399 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v399)
        {
          goto LABEL_267;
        }
      }

      v183 = v736;
      if (v391 > 0)
      {
        goto LABEL_537;
      }

LABEL_68:
      v182 = v725 + 1;
      v181 = v708;
      if (v725 + 1 == v710)
      {
        v652 = v183;

LABEL_512:
        v739 = v652;
        sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
        sub_218E23DE8(&qword_280E8EE88, MEMORY[0x277D83970]);
        v653 = v731;
        v654 = sub_219BF56E4();
        v731 = v653;

        sub_218E23D88(v694, type metadata accessor for SportsScoreSortingOrFilter);

        v732 = v654;
        v110 = v734;
        goto LABEL_517;
      }
    }

    if (v185 <= 1)
    {
      if (v185)
      {
        v210 = swift_projectBox();
        v186 = v712;
        sub_218E23E5C(v210, v712, type metadata accessor for SportsScoreSortingMatchFilter);

        v211 = v732;
        sub_218A84E44(v186, v732, a3);
        v196 = sub_219AC4B08(v211, v212);

        v213 = type metadata accessor for SportsScoreSortingMatchFilter;
        goto LABEL_250;
      }

      v199 = swift_projectBox();
      v200 = v712;
      sub_218E23E5C(v199, v712, type metadata accessor for SportsScoreSortingMatchFilter);

      sub_218A84E44(v200, v732, a3);
      v196 = v201;
      v202 = type metadata accessor for SportsScoreSortingMatchFilter;
LABEL_157:
      v197 = v202;
      v198 = v200;
      goto LABEL_251;
    }

    v203 = v700;
    if (v185 == 2)
    {
      v204 = swift_projectBox();
      v200 = v701;
      sub_218E23E5C(v204, v701, type metadata accessor for SportsScoreSortingAndFilter);

      v196 = sub_219A600C4(v200, v732, a3);
      v202 = type metadata accessor for SportsScoreSortingAndFilter;
      goto LABEL_157;
    }

    v214 = swift_projectBox();
    sub_218E23E5C(v214, v203, type metadata accessor for SportsScoreSortingOrFilter);

    v215 = v203;
    sub_219BF2664();
    v216 = *(v739 + 16);

    v217 = v718;
    if (!v216)
    {
      sub_218E23D88(v215, type metadata accessor for SportsScoreSortingOrFilter);
      v196 = v732;

      goto LABEL_252;
    }

    sub_219BF2664();
    v218 = v739;
    v715 = *(v739 + 16);
    if (!v715)
    {

      v220 = MEMORY[0x277D84F90];
LABEL_246:
      v739 = v220;
      sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
      sub_218E23DE8(&qword_280E8EE88, MEMORY[0x277D83970]);
      v388 = v731;
      v196 = sub_219BF56E4();
      v731 = v388;

      v197 = type metadata accessor for SportsScoreSortingOrFilter;
      v198 = v700;
      goto LABEL_251;
    }

    v219 = 0;
    v714 = v739 + 32;
    v220 = MEMORY[0x277D84F90];
    v713 = v739;
    while (1)
    {
      if (v219 >= *(v218 + 16))
      {
        goto LABEL_532;
      }

      v222 = *(v714 + 8 * v219);
      v223 = v222 >> 60;
      v735 = v219;
      if ((v222 >> 60) > 3)
      {
        v224 = v732;
        if (v223 > 5)
        {
          if (v223 == 6)
          {
            v247 = *((v222 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

            sub_21903E324(v247, v224);
            v235 = v248;
            goto LABEL_124;
          }

          if (v223 == 7)
          {
            v225 = swift_projectBox();
            v226 = v222;
            v227 = v691;
            sub_218E23E5C(v225, v691, type metadata accessor for SportsScoreSortingGroupByFilter);

            v228 = sub_218C490D4(v227, v224);
            v229 = v692;
            sub_218E23E5C(v227, v692, type metadata accessor for SportsScoreSortingGroupByFilter);
            v230 = v693;
            v231 = sub_218E2400C(v229, v693, type metadata accessor for SportsScoreSortingGroupByGroupFilter);
            MEMORY[0x28223BE20](v231);
            *(&v657 - 2) = v230;
            *(&v657 - 1) = a3;
            v232 = v731;
            sub_218DDE84C(sub_218C4A8C8, (&v657 - 4), v228);
            v234 = v233;

            v739 = v234;
            sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
            sub_218E23DE8(&qword_280E8EE88, MEMORY[0x277D83970]);
            v235 = sub_219BF56E4();
            v731 = v232;

            v236 = v227;
            v222 = v226;
            sub_218E23D88(v236, type metadata accessor for SportsScoreSortingGroupByFilter);
            v237 = type metadata accessor for SportsScoreSortingGroupByGroupFilter;
            v238 = v230;
          }

          else
          {
            v260 = swift_projectBox();
            sub_218E23E5C(v260, v217, type metadata accessor for SportsScoreSortingFilterWhen);
            v261 = *v217;

            if (sub_219473EF8(v261, v224, a3, v222))
            {
              v262 = v222;
              sub_219BF2664();
              v263 = v739;
              v264 = *(v739 + 16);

              if (v264)
              {
                v265 = 0;
                v266 = v224;
                do
                {
                  if (v265 >= *(v263 + 16))
                  {
                    goto LABEL_531;
                  }

                  v267 = v265 + 1;
                  v268 = *(v263 + 32 + 8 * v265);

                  sub_219659C8C(v266, a3, v268);
                  v235 = v269;

                  v266 = v235;
                  v265 = v267;
                }

                while (v264 != v267);
              }

              else
              {
                v235 = v224;
              }

              v217 = v718;
              v222 = v262;
            }

            else
            {

              v235 = v224;
            }

            v237 = type metadata accessor for SportsScoreSortingFilterWhen;
            v238 = v217;
          }

          goto LABEL_123;
        }

        if (v223 == 4)
        {
          v245 = *((v222 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

          sub_219659C8C(v224, a3, v245);
          v235 = sub_219AC4B08(v224, v246);

          goto LABEL_124;
        }

        v270 = swift_projectBox();
        v241 = v703;
        sub_218E23E5C(v270, v703, type metadata accessor for SportsScoreSortingSubsetFilter);

        sub_218E1E098(v241, v224, a3);
        v235 = v271;
        v243 = type metadata accessor for SportsScoreSortingSubsetFilter;
        goto LABEL_117;
      }

      v239 = v732;
      if (v223 > 1)
      {
        if (v223 == 2)
        {
          v244 = swift_projectBox();
          v241 = v701;
          sub_218E23E5C(v244, v701, type metadata accessor for SportsScoreSortingAndFilter);

          v235 = sub_219A600C4(v241, v239, a3);
          v243 = type metadata accessor for SportsScoreSortingAndFilter;
          goto LABEL_117;
        }

        v252 = swift_projectBox();
        v253 = v696;
        sub_218E23E5C(v252, v696, type metadata accessor for SportsScoreSortingOrFilter);

        sub_219BF2664();
        v254 = *(v739 + 16);

        if (!v254)
        {
          sub_218E23D88(v253, type metadata accessor for SportsScoreSortingOrFilter);

          v235 = v239;
          goto LABEL_124;
        }

        v739 = MEMORY[0x277D84F90];
        sub_219BF2664();
        v255 = *(v740 + 16);
        if (v255)
        {
          v256 = (v740 + 32);
          do
          {
            v257 = *v256++;

            sub_219659C8C(v239, a3, v257);
            sub_2191EDC00(v258);

            --v255;
          }

          while (v255);
        }

        v740 = v739;
        sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
        sub_218E23DE8(&qword_280E8EE88, MEMORY[0x277D83970]);
        v259 = v731;
        v235 = sub_219BF56E4();
        v731 = v259;

        v237 = type metadata accessor for SportsScoreSortingOrFilter;
        v238 = v696;
      }

      else
      {
        if (!v223)
        {
          v240 = swift_projectBox();
          v241 = v712;
          sub_218E23E5C(v240, v712, type metadata accessor for SportsScoreSortingMatchFilter);

          sub_218A84E44(v241, v239, a3);
          v235 = v242;
          v243 = type metadata accessor for SportsScoreSortingMatchFilter;
LABEL_117:
          v237 = v243;
          v238 = v241;
          goto LABEL_123;
        }

        v249 = swift_projectBox();
        v250 = v712;
        sub_218E23E5C(v249, v712, type metadata accessor for SportsScoreSortingMatchFilter);

        sub_218A84E44(v250, v239, a3);
        v235 = sub_219AC4B08(v239, v251);

        v237 = type metadata accessor for SportsScoreSortingMatchFilter;
        v238 = v250;
      }

LABEL_123:
      sub_218E23D88(v238, v237);
LABEL_124:
      v272 = v235 >> 62;
      if (v235 >> 62)
      {
        v273 = sub_219BF7214();
      }

      else
      {
        v273 = *((v235 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v274 = v220 >> 62;
      if (v220 >> 62)
      {
        v288 = sub_219BF7214();
        v276 = v288 + v273;
        if (__OFADD__(v288, v273))
        {
          goto LABEL_533;
        }
      }

      else
      {
        v275 = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v276 = v275 + v273;
        if (__OFADD__(v275, v273))
        {
          goto LABEL_533;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v274)
        {
          v277 = v220 & 0xFFFFFFFFFFFFFF8;
          if (v276 <= *((v220 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_135;
          }

          goto LABEL_134;
        }

LABEL_133:
        sub_219BF7214();
        goto LABEL_134;
      }

      if (v274)
      {
        goto LABEL_133;
      }

LABEL_134:
      v220 = sub_219BF7364();
      v277 = v220 & 0xFFFFFFFFFFFFFF8;
LABEL_135:
      v278 = *(v277 + 16);
      v279 = *(v277 + 24);
      if (v272)
      {
        v280 = sub_219BF7214();
        if (v280)
        {
LABEL_139:
          if (((v279 >> 1) - v278) < v273)
          {
            goto LABEL_542;
          }

          v721 = v222;
          v281 = v277 + 8 * v278 + 32;
          v722 = v220;
          v720 = v273;
          if (v272)
          {
            if (v280 < 1)
            {
              goto LABEL_554;
            }

            sub_2186DD5C0(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
            sub_218E23DE8(&qword_27CC0CC70, MEMORY[0x277D83988]);
            for (k = 0; k != v280; ++k)
            {
              v283 = sub_218A35350(&v739, k, v235);
              v285 = *v284;

              (v283)(&v739, 0);
              *(v281 + 8 * k) = v285;
            }
          }

          else
          {
            sub_219BF4044();
            swift_arrayInitWithCopy();
          }

          if (v720 <= 0)
          {
            v217 = v718;
            v81 = v738;
            v220 = v722;
            v218 = v713;
            v221 = v735;
          }

          else
          {
            v286 = *(v277 + 16);
            v157 = __OFADD__(v286, v720);
            v287 = v286 + v720;
            v217 = v718;
            v81 = v738;
            v220 = v722;
            v218 = v713;
            v221 = v735;
            if (v157)
            {
              goto LABEL_552;
            }

            *(v277 + 16) = v287;
          }

          goto LABEL_89;
        }
      }

      else
      {
        v280 = *((v235 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v280)
        {
          goto LABEL_139;
        }
      }

      v217 = v718;
      v81 = v738;
      v218 = v713;
      v221 = v735;
      if (v273 > 0)
      {
        goto LABEL_534;
      }

LABEL_89:
      v219 = v221 + 1;
      a3 = v730;
      if (v219 == v715)
      {

        goto LABEL_246;
      }
    }
  }

  v134 = swift_projectBox();
  sub_218E23E5C(v134, v111, type metadata accessor for SportsScoreSortingAndFilter);
  v702 = v116;

  sub_219BF2664();
  v135 = *(v739 + 16);

  if (!v135)
  {
    goto LABEL_510;
  }

  sub_219BF2664();
  v136 = v739;
  v721 = *(v739 + 16);
  if (!v721)
  {

    v111 = v737;
LABEL_510:
    sub_218E23D88(v111, type metadata accessor for SportsScoreSortingAndFilter);

    goto LABEL_518;
  }

  v720 = v739 + 32;
  v137 = 0;

  v715 = v136;
  while (1)
  {
    if (v137 >= *(v136 + 16))
    {
      goto LABEL_541;
    }

    v725 = v137;
    v138 = *(v720 + 8 * v137);

    sub_219659C8C(v732, a3, v138);
    v140 = v139;
    v141 = v139 >> 62 ? sub_219BF7214() : *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v722 = v138;
    if (v141)
    {
      v739 = MEMORY[0x277D84F90];
      sub_218C33F88(v141);
      if (v141 < 0)
      {
        goto LABEL_551;
      }

      v142 = 0;
      do
      {
        if ((v140 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v142, v140);
        }

        else
        {
        }

        v143 = sub_219BF3F84();
        v145 = v144;

        v146 = v739;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_21870B65C(0, *(v146 + 16) + 1, 1);
          v146 = v739;
        }

        v148 = *(v146 + 16);
        v147 = *(v146 + 24);
        if (v148 >= v147 >> 1)
        {
          sub_21870B65C((v147 > 1), v148 + 1, 1);
          v146 = v739;
        }

        ++v142;
        *(v146 + 16) = v148 + 1;
        v149 = v146 + 16 * v148;
        *(v149 + 32) = v143;
        *(v149 + 40) = v145;
      }

      while (v141 != v142);

      v81 = v738;
      v150 = MEMORY[0x277D84F90];
    }

    else
    {

      v150 = MEMORY[0x277D84F90];
      v146 = MEMORY[0x277D84F90];
    }

    v151 = sub_218845F78(v146);

    v740 = v150;
    v152 = v728;
    v153 = sub_2193D0138(v728);
    if (v153)
    {
      break;
    }

    v111 = v737;
LABEL_21:
    v137 = v725 + 1;

    v728 = v740;
    a3 = v730;
    v110 = v734;
    v136 = v715;
    if (v137 == v721)
    {

      v732 = v728;
      goto LABEL_510;
    }
  }

  v154 = v153;
  v155 = 0;
  v735 = v152 & 0xFFFFFFFFFFFFFF8;
  v736 = v152 & 0xC000000000000001;
  v156 = v151 + 56;
  while (2)
  {
    if (v736)
    {
      MEMORY[0x21CECE0F0](v155, v728);
      v157 = __OFADD__(v155++, 1);
      if (v157)
      {
        goto LABEL_522;
      }

LABEL_45:
      v158 = sub_219BF3F84();
      v160 = v159;
      if (*(v151 + 16) && (v161 = v158, sub_219BF7AA4(), sub_219BF5524(), v162 = sub_219BF7AE4(), v163 = -1 << *(v151 + 32), v164 = v162 & ~v163, ((*(v156 + ((v164 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v164) & 1) != 0))
      {
        v165 = ~v163;
        while (1)
        {
          v166 = (*(v151 + 48) + 16 * v164);
          v167 = *v166 == v161 && v166[1] == v160;
          if (v167 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v164 = (v164 + 1) & v165;
          if (((*(v156 + ((v164 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v164) & 1) == 0)
          {
            goto LABEL_40;
          }
        }

        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
LABEL_40:
      }

      v111 = v737;
      v81 = v738;
      if (v155 == v154)
      {
        goto LABEL_21;
      }

      continue;
    }

    break;
  }

  if (v155 >= *(v735 + 16))
  {
    goto LABEL_523;
  }

  v157 = __OFADD__(v155++, 1);
  if (!v157)
  {
    goto LABEL_45;
  }

LABEL_522:
  __break(1u);
LABEL_523:
  __break(1u);
LABEL_524:
  __break(1u);
LABEL_525:
  __break(1u);
LABEL_526:
  __break(1u);
LABEL_527:
  __break(1u);
LABEL_528:
  __break(1u);
LABEL_529:
  __break(1u);
LABEL_530:
  __break(1u);
LABEL_531:
  __break(1u);
LABEL_532:
  __break(1u);
LABEL_533:
  __break(1u);
LABEL_534:
  __break(1u);
LABEL_535:
  __break(1u);
LABEL_536:
  __break(1u);
LABEL_537:
  __break(1u);
LABEL_538:
  __break(1u);
LABEL_539:
  __break(1u);
LABEL_540:
  __break(1u);
LABEL_541:
  __break(1u);
LABEL_542:
  __break(1u);
LABEL_543:
  __break(1u);
LABEL_544:
  __break(1u);
LABEL_545:
  __break(1u);
LABEL_546:
  __break(1u);
LABEL_547:
  __break(1u);
LABEL_548:
  __break(1u);
LABEL_549:
  __break(1u);
LABEL_550:
  __break(1u);
LABEL_551:
  __break(1u);
LABEL_552:
  __break(1u);
LABEL_553:
  __break(1u);
LABEL_554:
  __break(1u);
LABEL_555:
  __break(1u);
LABEL_556:
  __break(1u);
LABEL_557:
  __break(1u);
LABEL_558:
  __break(1u);
LABEL_559:
  __break(1u);
LABEL_560:
  __break(1u);
LABEL_561:
  __break(1u);
LABEL_562:
  __break(1u);
LABEL_563:
  __break(1u);
LABEL_564:
  __break(1u);
LABEL_565:
  __break(1u);
LABEL_566:

  __break(1u);
}