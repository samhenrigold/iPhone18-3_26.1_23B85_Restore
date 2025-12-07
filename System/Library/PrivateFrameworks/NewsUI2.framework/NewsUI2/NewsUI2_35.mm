uint64_t sub_218A9F29C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  sub_218A9F350(0);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_218A9F350(uint64_t a1)
{
  if (!qword_280EE6930)
  {
    sub_2186C6148(255, &qword_280E8DBC0, 0x277D30EC0);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6930);
    }
  }
}

unint64_t sub_218A9F3C8()
{
  result = qword_27CC0D768;
  if (!qword_27CC0D768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D768);
  }

  return result;
}

uint64_t sub_218A9F428(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 24))
  {
    return (*a1 + 127);
  }

  v3 = (((*(a1 + 16) >> 57) >> 6) | (2 * ((*(a1 + 16) >> 57) & 0x38 | *(a1 + 16) & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_218A9F484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_218A9F5C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v78 = a3;
  sub_218AA0AF4(0, &qword_280E919D8, sub_2186F6D38);
  MEMORY[0x28223BE20](v4 - 8);
  v64 = &v62 - v5;
  v68 = type metadata accessor for ArticleListHistoryFeedGroupKnobs(0);
  v65 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AA0AF4(0, qword_280EA71B0, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v62 - v10;
  v72 = type metadata accessor for HistoryFeedGroupKnobs(0);
  v77 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AA0AF4(0, &qword_280ECACA0, type metadata accessor for HistoryFeedGroupKnobs);
  MEMORY[0x28223BE20](v13 - 8);
  v70 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v76 = &v62 - v16;
  sub_218AA0AF4(0, qword_280EC81C0, type metadata accessor for HistoryFeedKnobsConfig);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v62 - v18;
  v79 = type metadata accessor for HistoryFeedKnobsConfig(0);
  v20 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v69 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v73 = &v62 - v23;
  sub_218AA0AF4(0, qword_280ED6458, type metadata accessor for HistoryFeedConfig);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v62 - v25;
  v27 = type metadata accessor for HistoryFeedConfig(0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  sub_218AA0B48(a1, v26, qword_280ED6458, type metadata accessor for HistoryFeedConfig);
  v31 = *(v28 + 48);
  if (v31(v26, 1, v27) == 1)
  {
    v32 = sub_219BDBD34();
    (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
    v33 = *(v27 + 24);
    v34 = sub_219BEE5B4();
    (*(*(v34 - 8) + 56))(&v30[v33], 1, 1, v34);
    *&v30[*(v27 + 20)] = MEMORY[0x277D84F90];
    if (v31(v26, 1, v27) != 1)
    {
      sub_218AA0BB4(v26, qword_280ED6458, type metadata accessor for HistoryFeedConfig);
    }
  }

  else
  {
    sub_218AA0C10(v26, v30, type metadata accessor for HistoryFeedConfig);
  }

  v35 = v78;
  sub_218AA0C10(v30, v78, type metadata accessor for HistoryFeedConfig);
  v36 = v74;
  sub_218AA0B48(v74, v19, qword_280EC81C0, type metadata accessor for HistoryFeedKnobsConfig);
  v37 = *(v20 + 48);
  v38 = v37(v19, 1, v79);
  v39 = v76;
  if (v38 == 1)
  {
    v63 = v37;
    v40 = v77;
    v41 = v72;
    (*(v77 + 56))(v76, 1, 1, v72);
    v42 = v70;
    sub_218AA0B48(v39, v70, &qword_280ECACA0, type metadata accessor for HistoryFeedGroupKnobs);
    v43 = *(v40 + 48);
    v77 = v40 + 48;
    if (v43(v42, 1, v41) == 1)
    {
      v62 = v43;
      v44 = v65;
      v45 = v68;
      (*(v65 + 56))(v11, 1, 1, v68);
      v46 = v67;
      sub_218AA0B48(v11, v67, qword_280EA71B0, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
      v47 = *(v44 + 48);
      v48 = v47(v46, 1, v45);
      v49 = v71;
      if (v48 == 1)
      {
        sub_2186F6D38(0);
        v51 = v64;
        (*(*(v50 - 8) + 56))(v64, 1, 1, v50);
        v52 = v66;
        v53 = v51;
        v54 = v67;
        sub_219AF8758(v53, 0, v66);
        sub_218AA0BB4(v11, qword_280EA71B0, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
        if (v47(v54, 1, v68) != 1)
        {
          sub_218AA0BB4(v54, qword_280EA71B0, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
        }
      }

      else
      {
        sub_218AA0BB4(v11, qword_280EA71B0, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
        v52 = v66;
        sub_218AA0C10(v46, v66, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
      }

      sub_218AA0C10(v52, v49, type metadata accessor for ArticleListHistoryFeedGroupKnobs);
      sub_218AA0BB4(v36, qword_280EC81C0, type metadata accessor for HistoryFeedKnobsConfig);
      sub_218AA0BB4(v75, qword_280ED6458, type metadata accessor for HistoryFeedConfig);
      sub_218AA0BB4(v76, &qword_280ECACA0, type metadata accessor for HistoryFeedGroupKnobs);
      v56 = v62(v42, 1, v72);
      v35 = v78;
      if (v56 != 1)
      {
        sub_218AA0BB4(v42, &qword_280ECACA0, type metadata accessor for HistoryFeedGroupKnobs);
      }
    }

    else
    {
      sub_218AA0BB4(v36, qword_280EC81C0, type metadata accessor for HistoryFeedKnobsConfig);
      sub_218AA0BB4(v75, qword_280ED6458, type metadata accessor for HistoryFeedConfig);
      sub_218AA0BB4(v39, &qword_280ECACA0, type metadata accessor for HistoryFeedGroupKnobs);
      v49 = v71;
      sub_218AA0C10(v42, v71, type metadata accessor for HistoryFeedGroupKnobs);
    }

    v57 = v69;
    sub_218AA0C10(v49, v69, type metadata accessor for HistoryFeedGroupKnobs);
    v58 = v79;
    *(v57 + *(v79 + 20)) = 0x7FFFFFFFFFFFFFFFLL;
    v59 = v57;
    v55 = v73;
    sub_218AA0C10(v59, v73, type metadata accessor for HistoryFeedKnobsConfig);
    if (v63(v19, 1, v58) != 1)
    {
      sub_218AA0BB4(v19, qword_280EC81C0, type metadata accessor for HistoryFeedKnobsConfig);
    }
  }

  else
  {
    sub_218AA0BB4(v36, qword_280EC81C0, type metadata accessor for HistoryFeedKnobsConfig);
    sub_218AA0BB4(v75, qword_280ED6458, type metadata accessor for HistoryFeedConfig);
    v55 = v73;
    sub_218AA0C10(v19, v73, type metadata accessor for HistoryFeedKnobsConfig);
  }

  v60 = type metadata accessor for HistoryFeedContentConfig(0);
  return sub_218AA0C10(v55, v35 + *(v60 + 20), type metadata accessor for HistoryFeedKnobsConfig);
}

uint64_t sub_218AA00CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_218AA0AF4(0, qword_280EC81C0, type metadata accessor for HistoryFeedKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_218AA0AF4(0, qword_280ED6458, type metadata accessor for HistoryFeedConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  sub_218AA09FC(0);
  v11 = v10;
  v15 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218AA0A58();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for HistoryFeedConfig(0);
    v18 = 0;
    sub_218AA0AAC(&qword_280ED64A0, type metadata accessor for HistoryFeedConfig, &unk_219C0FFDC);
    sub_219BF7674();
    type metadata accessor for HistoryFeedKnobsConfig(0);
    v17 = 1;
    sub_218AA0AAC(&qword_280EC8200, type metadata accessor for HistoryFeedKnobsConfig, &unk_219C41A58);
    sub_219BF7674();
    sub_218A9F5C8(v9, v6, v16);
    (*(v15 + 8))(v13, v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218AA0394(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F4373626F6E6BLL;
  }

  else
  {
    v3 = 0x666E6F4364656566;
  }

  if (v2)
  {
    v4 = 0xEA00000000006769;
  }

  else
  {
    v4 = 0xEB00000000676966;
  }

  if (*a2)
  {
    v5 = 0x6E6F4373626F6E6BLL;
  }

  else
  {
    v5 = 0x666E6F4364656566;
  }

  if (*a2)
  {
    v6 = 0xEB00000000676966;
  }

  else
  {
    v6 = 0xEA00000000006769;
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

uint64_t sub_218AA0448()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_218AA04D8(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_218AA0554(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_218AA05E0(char *a2@<X8>)
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

void sub_218AA0640(uint64_t *a1@<X8>)
{
  v2 = 0x666E6F4364656566;
  if (*v1)
  {
    v2 = 0x6E6F4373626F6E6BLL;
  }

  v3 = 0xEA00000000006769;
  if (*v1)
  {
    v3 = 0xEB00000000676966;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_218AA068C()
{
  if (*v0)
  {
    return 0x6E6F4373626F6E6BLL;
  }

  else
  {
    return 0x666E6F4364656566;
  }
}

void sub_218AA06D4(char *a3@<X8>)
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

uint64_t sub_218AA0738(uint64_t a1)
{
  v2 = sub_218AA0A58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218AA0774(uint64_t a1)
{
  v2 = sub_218AA0A58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218AA0834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_218AA0AF4(0, qword_280EC81C0, type metadata accessor for HistoryFeedKnobsConfig);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  sub_218AA0AF4(0, qword_280ED6458, type metadata accessor for HistoryFeedConfig);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - v11;
  sub_218AA0C78(a1, &v16 - v11, type metadata accessor for HistoryFeedConfig);
  v13 = type metadata accessor for HistoryFeedConfig(0);
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  sub_218AA0C78(v3 + *(a2 + 20), v9, type metadata accessor for HistoryFeedKnobsConfig);
  v14 = type metadata accessor for HistoryFeedKnobsConfig(0);
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  return sub_218A9F5C8(v12, v9, a3);
}

void sub_218AA09FC(uint64_t a1)
{
  if (!qword_280E8CDA8)
  {
    sub_218AA0A58();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8CDA8);
    }
  }
}

unint64_t sub_218AA0A58()
{
  result = qword_280EC1A28;
  if (!qword_280EC1A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC1A28);
  }

  return result;
}

uint64_t sub_218AA0AAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218AA0AF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_218AA0B48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218AA0AF4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218AA0BB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218AA0AF4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218AA0C10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218AA0C78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_218AA0CF4()
{
  result = qword_27CC0D770;
  if (!qword_27CC0D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D770);
  }

  return result;
}

unint64_t sub_218AA0D4C()
{
  result = qword_280EC1A18;
  if (!qword_280EC1A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC1A18);
  }

  return result;
}

unint64_t sub_218AA0DA4()
{
  result = qword_280EC1A20;
  if (!qword_280EC1A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC1A20);
  }

  return result;
}

void sub_218AA0DF8()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_218AA0F80();
  sub_2187C5110(0);
  sub_219BEA794();
  sub_219BE1E14();

  if (v8)
  {
    sub_2186CB1F0(&v7, v9);
    v1 = v10;
    v2 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v3 = (*(v2 + 8))(v1, v2);
    if ((sub_219BED0C4() & 1) == 0)
    {
      sub_219BE9D54();
      [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      v4 = sub_219BE9CE4();
      v5 = sub_219BEA784();
      v6 = v4;
      v5();
    }

    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_218AA0F80()
{
  result = qword_280EB91A8[0];
  if (!qword_280EB91A8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280EB91A8);
  }

  return result;
}

id sub_218AA103C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PuzzleEmbedShowSettingsMessageHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_218AA1128(void *a1)
{
  v2 = [a1 body];
  v3 = sub_219BF5214();

  v4 = sub_2187A1A2C(v3);

  if (v4 && (sub_2196E52D0(v4, &v19), (v5 = v20) != 0))
  {
    v6 = v19;
    v7 = v21;
    if (swift_unknownObjectWeakLoadStrong())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
        v19 = v6;
        v20 = v5;
        v21 = v7;
        sub_219321418(&v19);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_218AA1438(v6, v5, v7);
        return;
      }

      swift_unknownObjectRelease();
    }

    sub_218AA1438(v6, v5, v7);
  }

  else
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v9 = sub_219BE5434();
    __swift_project_value_buffer(v9, qword_280F625E0);
    swift_unknownObjectRetain();
    oslog = sub_219BE5414();
    v10 = sub_219BF61F4();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v19 = v12;
      *v11 = 136315138;
      v13 = [a1 body];
      sub_219BF5214();

      v14 = sub_219BF5224();
      v16 = v15;

      v17 = sub_2186D1058(v14, v16, &v19);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_2186C1000, oslog, v10, "PuzzleEmbedShowSettingsMessageHandler received invalid message %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21CECF960](v12, -1, -1);
      MEMORY[0x21CECF960](v11, -1, -1);
    }

    else
    {
    }
  }
}

double sub_218AA1438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_218AA147C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a4;
  v32 = a2;
  v35 = a3;
  v7 = sub_219BF2624();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB02C4(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BF1584();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF2634();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v29 - v20;
  sub_2189A4BB8(a1, v5, &v29 - v20);
  __swift_project_boxed_opaque_existential_1(v5 + 66, v5[69]);
  if (sub_219BEED54() & 1) != 0 || (sub_219BF2614())
  {
    (*(v16 + 8))(v21, v15);
    return 0;
  }

  else
  {
    sub_219BF1B74();
    v23 = v36;
    if ((*(v12 + 48))(v11, 1, v36) == 1)
    {
      (*(v16 + 8))(v21, v15);
      sub_218AB0A34(v11, sub_218AB02C4);
      return 1;
    }

    else
    {
      (*(v12 + 32))(v14, v11, v23);
      (*(v16 + 16))(v18, v21, v15);
      if ((*(v16 + 88))(v18, v15) == *MEMORY[0x277D33980])
      {
        (*(v16 + 96))(v18, v15);
        v24 = v33;
        v25 = v30;
        (*(v33 + 32))(v30, v18, v34);
        v26 = v5[19];
        v35 = v5[20];
        __swift_project_boxed_opaque_existential_1(v5 + 16, v26);
        v27 = sub_219BF4984();
        sub_2189A46C0(v32, v27);

        (*(v24 + 8))(v25, v34);
        (*(v12 + 8))(v14, v36);
        (*(v16 + 8))(v21, v15);
      }

      else
      {
        (*(v12 + 8))(v14, v23);
        v28 = *(v16 + 8);
        v28(v21, v15);
        v28(v18, v15);
      }

      return 1;
    }
  }
}

uint64_t sub_218AA1908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v31 = a4;
  v32 = a2;
  v35 = a3;
  v7 = sub_219BF2624();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB1068(0, &qword_280E907A0, sub_2186F7720, &type metadata for TagFeedOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v36 = sub_219BF1584();
  v12 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF2634();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v29 - v20;
  sub_2189A4BB8(a1, v5, &v29 - v20);
  __swift_project_boxed_opaque_existential_1(v5 + 66, v5[69]);
  if (sub_219BEED54() & 1) != 0 || (sub_219BF2614())
  {
    (*(v16 + 8))(v21, v15);
    return 0;
  }

  else
  {
    sub_219BF1B74();
    v23 = v36;
    if ((*(v12 + 48))(v11, 1, v36) == 1)
    {
      (*(v16 + 8))(v21, v15);
      sub_218AB10D0(v11);
      return 1;
    }

    else
    {
      (*(v12 + 32))(v14, v11, v23);
      (*(v16 + 16))(v18, v21, v15);
      if ((*(v16 + 88))(v18, v15) == *MEMORY[0x277D33980])
      {
        (*(v16 + 96))(v18, v15);
        v24 = v33;
        v25 = v30;
        (*(v33 + 32))(v30, v18, v34);
        v26 = v5[19];
        v35 = v5[20];
        __swift_project_boxed_opaque_existential_1(v5 + 16, v26);
        v27 = sub_219BF4984();
        sub_2189A46C0(v32, v27);

        (*(v24 + 8))(v25, v34);
        (*(v12 + 8))(v14, v36);
        (*(v16 + 8))(v21, v15);
      }

      else
      {
        (*(v12 + 8))(v14, v23);
        v28 = *(v16 + 8);
        v28(v21, v15);
        v28(v18, v15);
      }

      return 1;
    }
  }
}

id sub_218AA1DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BDD944();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D940 != -1)
  {
    swift_once();
  }

  v12 = qword_280F617E0;
  sub_2186E7C18(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09BA0;
  sub_218AB0388(a2, v11, type metadata accessor for NewsActivity2.Article);
  sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  sub_218AAFD90(v11, v8, MEMORY[0x277D2FB40]);
  v14 = sub_219BDD8C4();
  v16 = v15;
  sub_218AB0A34(v8, MEMORY[0x277D2FB40]);
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_2186FC3BC();
  *(v13 + 32) = v14;
  *(v13 + 40) = v16;
  v17 = sub_219BF6214();
  sub_219BE5314("Did route to article, articleID=%{public}@", 42, 2, &dword_2186C1000, v12, v17, v13);

  if (sub_219093144(0, a3))
  {
    return sub_218AA20C4(a1, a2, a3);
  }

  sub_218AB0388(a2, v11, type metadata accessor for NewsActivity2.Article);

  sub_218AAFD90(v11, v8, MEMORY[0x277D2FB40]);
  v19 = sub_218AA2324(a1, v8, a3);
  sub_218AB0A34(v8, MEMORY[0x277D2FB40]);
  return v19;
}

uint64_t sub_218AA20C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_219BE7784();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_219BDD944();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BE7DC4();
  v24 = 0x2D6573696D6F7270;
  v25 = 0xE800000000000000;
  sub_218AB0388(a2, v14, type metadata accessor for NewsActivity2.Article);
  sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  sub_218AAFD90(v14, v11, MEMORY[0x277D2FB40]);
  v15 = sub_219BDD8A4();
  v17 = v16;
  sub_218AB0A34(v11, MEMORY[0x277D2FB40]);
  MEMORY[0x21CECC330](v15, v17);

  v20 = v4;
  v21 = a1;
  v22 = a2;
  v23 = a3;
  sub_219BE7774();
  return sub_219BE7D74();
}

id sub_218AA2324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v175 = a3;
  v177 = a1;
  v162 = sub_219BE9D24();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE7784();
  MEMORY[0x28223BE20](v6 - 8);
  v159 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v176 = v8;
  v180 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v181 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v173 = (&v141 - v11);
  v165 = v12;
  MEMORY[0x28223BE20](v13);
  v167 = &v141 - v14;
  sub_21896F9B8(0);
  v169 = v15;
  MEMORY[0x28223BE20](v15);
  v168 = (&v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v174 = sub_219BDD944();
  v156 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v178 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v141 - v19;
  v157 = v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v141 - v23;
  v148 = sub_219BF2624();
  v145 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v144 = &v141 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BF1584();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v152 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_219BF1D74();
  v158 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v163 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB0018(0, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v30 - 8);
  v155 = (&v141 - v31);
  v32 = sub_219BF2CB4();
  v170 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = (&v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = sub_219BF2634();
  v172 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v146 = &v141 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v164 = &v141 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v141 - v39;
  sub_218AB02C4(0);
  MEMORY[0x28223BE20](v41 - 8);
  v151 = &v141 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v141 - v44;
  v179 = v3;
  v150 = *(v3 + 9);
  sub_219BF1B74();
  v147 = v27;
  v46 = *(v27 + 48);
  v153 = v26;
  v149 = v46;
  if (v46(v45, 1, v26) != 1)
  {
    v166 = v24;
    sub_218AB0A34(v45, sub_218AB02C4);
    v47 = sub_219BDD914();
    if (v47)
    {
      v48 = v47;
      __swift_project_boxed_opaque_existential_1(v179 + 61, *(v179 + 64));
      v142 = a2;
      *v34 = v48;
      v49 = *MEMORY[0x277D33BC0];
      v50 = v170;
      v143 = *(v170 + 104);
      v143(v34, v49, v32);
      swift_unknownObjectRetain();
      sub_219BF4794();
      (*(v50 + 8))(v34, v32);
      v51 = sub_219BF2614();
      swift_unknownObjectRelease();
      v52 = *(v172 + 8);
      v52(v40, v171);
      v24 = v166;
      a2 = v142;
      if (v51)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v53 = *(v179 + 64);
      v142 = *(v179 + 65);
      __swift_project_boxed_opaque_existential_1(v179 + 61, v53);
      v54 = a2;
      *v34 = sub_219BDD8C4();
      v34[1] = v55;
      v56 = *MEMORY[0x277D33B80];
      v57 = v170;
      v143 = *(v170 + 104);
      v143(v34, v56, v32);
      sub_219BF4794();
      (*(v57 + 8))(v34, v32);
      v58 = sub_219BF2614();
      v52 = *(v172 + 8);
      v52(v40, v171);
      v24 = v166;
      a2 = v54;
      if (v58)
      {
        goto LABEL_13;
      }
    }

    if (!sub_219093144(4u, v175))
    {
      v59 = sub_219BDD914();
      v60 = a2;
      if (v59)
      {
        v61 = v155;
        *v155 = v59;
        v62 = MEMORY[0x277D33BC0];
      }

      else
      {
        v63 = sub_219BDD8C4();
        v61 = v155;
        *v155 = v63;
        *(v61 + 8) = v64;
        v62 = MEMORY[0x277D33B80];
      }

      v65 = v179;
      v66 = v172;
      v67 = v164;
      v68 = v170;
      v143(v61, *v62, v32);
      (*(v68 + 56))(v61, 0, 1, v32);
      v69 = v154;
      (*(v158 + 104))(v163, *MEMORY[0x277D33600], v154);
      sub_2189A4BB8(v61, v65, v67);
      __swift_project_boxed_opaque_existential_1(v65 + 66, *(v65 + 69));
      v70 = v164;
      if ((sub_219BEED54() & 1) == 0 && (sub_219BF2614() & 1) == 0)
      {
        v127 = v151;
        sub_219BF1B74();
        v128 = v153;
        if (v149(v127, 1, v153) == 1)
        {
          v52(v70, v171);
          (*(v158 + 8))(v163, v69);
          sub_218744A50(v61, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88], sub_218AB0018);
          sub_218AB0A34(v127, sub_218AB02C4);
          return 0;
        }

        else
        {
          v129 = v147;
          (*(v147 + 32))(v152, v127, v128);
          v130 = v146;
          v131 = v171;
          (*(v66 + 16))(v146, v70, v171);
          if ((*(v66 + 88))(v130, v131) == *MEMORY[0x277D33980])
          {
            v132 = *(v66 + 96);
            v172 = v66 + 96;
            v132(v130, v131);
            v133 = v130;
            v134 = v145;
            v135 = v144;
            (*(v145 + 32))(v144, v133, v148);
            v136 = v152;
            v137 = *(v65 + 19);
            v181 = *(v65 + 20);
            __swift_project_boxed_opaque_existential_1(v65 + 16, v137);
            v138 = sub_219BF4984();
            sub_2189A46C0(v177, v138);

            (*(v134 + 8))(v135, v148);
            (*(v129 + 8))(v136, v153);
            v52(v164, v171);
            (*(v158 + 8))(v163, v69);
            sub_218744A50(v61, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88], sub_218AB0018);
          }

          else
          {
            (*(v129 + 8))(v152, v128);
            v52(v164, v131);
            (*(v158 + 8))(v163, v69);
            sub_218744A50(v61, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88], sub_218AB0018);
            v52(v130, v131);
          }

          return 0;
        }
      }

      v52(v70, v171);
      (*(v158 + 8))(v163, v69);
      sub_218744A50(v61, &qword_280E902A0, MEMORY[0x277D33BC8], MEMORY[0x277D83D88], sub_218AB0018);
      v24 = v166;
      a2 = v60;
    }
  }

LABEL_13:
  v71 = swift_allocBox();
  v73 = v72;
  v74 = MEMORY[0x277D2FB40];
  sub_218AB0388(a2, v72, MEMORY[0x277D2FB40]);
  sub_218AB0388(v73, v20, v74);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v75 = swift_projectBox();
    v76 = v168;
    sub_218AB0388(v75, v168, sub_21896F9B8);
    v77 = *(v169 + 48);
    sub_2186CB1F0(v76, &v184);
    sub_218AAFD90(v76 + v77, v24, MEMORY[0x277D2FB40]);

    v78 = v179;
    Strong = swift_unknownObjectWeakLoadStrong();
    v80 = v176;
    if (Strong)
    {
      v81 = Strong;
      if ([*(v78 + 21) improvedBlockingBehaviorEnabled])
      {
        sub_218718690(&v184, &v182);
        sub_219BEA744();
        swift_allocObject();
        v181 = v81;
        v169 = sub_219BEA6C4();
        v82 = swift_allocObject();
        v174 = v71;
        v83 = v82;
        swift_weakInit();
        v166 = v24;
        v84 = v180;
        v85 = *(v180 + 16);
        v172 = v180 + 16;
        v173 = v85;
        v85(v167, v177, v80);
        v86 = v178;
        sub_218AB0388(v24, v178, MEMORY[0x277D2FB40]);
        v87 = v80;
        v171 = *(v84 + 80);
        v88 = v84;
        v89 = (v171 + 24) & ~v171;
        v170 = v171 | 7;
        v90 = (v165 + *(v156 + 80) + v89) & ~*(v156 + 80);
        v91 = (v157 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
        v92 = swift_allocObject();
        *(v92 + 16) = v83;
        v93 = *(v88 + 32);
        v180 = v88 + 32;
        v93(v92 + v89, v167, v87);
        sub_218AAFD90(v86, v92 + v90, MEMORY[0x277D2FB40]);
        *(v92 + v91) = v175;

        sub_219BEA6F4();

        sub_219BEA714();

        v94 = swift_allocObject();
        swift_weakInit();
        sub_218718690(&v184, &v182);
        v95 = v167;
        v173(v167, v177, v87);
        v96 = (v171 + 64) & ~v171;
        v97 = swift_allocObject();
        sub_2186CB1F0(&v182, v97 + 16);
        *(v97 + 56) = v94;
        v93(v97 + v96, v95, v87);

        sub_219BEA734();

        v98 = v181;
        v99 = sub_219BF6534();
        sub_219BEA6D4();

        sub_218AB0A34(v166, MEMORY[0x277D2FB40]);
        __swift_destroy_boxed_opaque_existential_1(&v184);
LABEL_32:

        return 0;
      }

      __swift_destroy_boxed_opaque_existential_1(&v184);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v184);
    }

    v100 = v180;
    sub_218AB03F0(v24, v73);
  }

  else
  {
    sub_218AB0A34(v20, MEMORY[0x277D2FB40]);
    v80 = v176;
    v78 = v179;
    v100 = v180;
  }

  v101 = v173;
  __swift_project_boxed_opaque_existential_1(v78 + 2, *(v78 + 5));
  sub_2186C6148(0, &unk_280E8E608, 0x277D30DA8);
  result = sub_219BE1DE4();
  if (result)
  {
    v103 = result;
    swift_weakInit();
    v104 = *(v100 + 16);
    v105 = v177;
    v104(v101, v177, v80);
    swift_weakInit();
    v104(v181, v105, v80);
    swift_beginAccess();
    v106 = v178;
    sub_218AB0388(v73, v178, MEMORY[0x277D2FB40]);
    v107 = sub_219BDD8F4();
    sub_218AB0A34(v106, MEMORY[0x277D2FB40]);
    if (v107)
    {
      v108 = sub_218AA465C(v183, v71, v103, v101, v175);
      v109 = *(v100 + 8);
      v109(v101, v80);
      if (v108)
      {
        v174 = v71;
LABEL_27:
        if (qword_280E8D940 != -1)
        {
          swift_once();
        }

        v114 = qword_280F617E0;
        sub_2186E7C18(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
        v115 = swift_allocObject();
        *(v115 + 16) = xmmword_219C09BA0;
        v116 = v178;
        sub_218AB0388(v73, v178, MEMORY[0x277D2FB40]);
        v117 = sub_219BDD8C4();
        v119 = v118;
        sub_218AB0A34(v116, MEMORY[0x277D2FB40]);
        *(v115 + 56) = MEMORY[0x277D837D0];
        *(v115 + 64) = sub_2186FC3BC();
        *(v115 + 32) = v117;
        *(v115 + 40) = v119;
        v120 = sub_219BF6214();
        sub_219BE5314("Presenting created article view controller, articleID=%{public}@", 64, 2, &dword_2186C1000, v114, v120, v115);

        if (sub_219BED0C4())
        {

          swift_weakDestroy();
          swift_weakDestroy();
          v109(v181, v80);
        }

        else
        {
          sub_219BE93D4();
          v121 = objc_allocWithZone(sub_219BE79B4());
          v122 = [v121 initWithRootViewController:v108 navigationBarClass:swift_getObjCClassFromMetadata()];
          sub_219BE9D54();
          sub_218AB0388(v73, v116, MEMORY[0x277D2FB40]);
          v123 = v122;
          sub_219BDD8C4();
          sub_218AB0A34(v116, MEMORY[0x277D2FB40]);
          v124 = sub_219BE9CE4();
          (*(v161 + 104))(v160, *MEMORY[0x277D6E8D0], v162);
          sub_219BE9D14();
          v125 = sub_219BEA784();
          v126 = v124;
          v125();

          swift_weakDestroy();
          swift_weakDestroy();
          v109(v181, v80);

          return v126;
        }

        return v108;
      }
    }

    else
    {
      v109 = *(v100 + 8);
      v109(v101, v80);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v110 = swift_allocObject();
        *(v110 + 16) = 0;
        sub_219BE7DC4();
        sub_218AB0388(v73, v106, MEMORY[0x277D2FB40]);
        sub_219BDD8A4();
        sub_218AB0A34(v106, MEMORY[0x277D2FB40]);
        v111 = swift_allocObject();
        v179 = v109;
        v112 = v111;
        v113 = swift_weakInit();
        v173 = &v141;
        MEMORY[0x28223BE20](v113);
        *(&v141 - 6) = v112;
        *(&v141 - 5) = v71;
        v174 = v71;
        *(&v141 - 4) = v110;
        *(&v141 - 3) = v103;
        v140 = v175;
        sub_219BE7774();
        v139 = &v141 - 8;
        v108 = sub_219BE7D74();

        v109 = v179;
        v80 = v176;

        goto LABEL_27;
      }
    }

    swift_weakDestroy();
    swift_weakDestroy();
    v109(v181, v80);
    goto LABEL_32;
  }

  __break(1u);
  return result;
}

void sub_218AA3CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218AB0018(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v37 - v8;
  v46 = sub_219BE92E4();
  v10 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = sub_219BE9EC4();
  v48 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v47 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v18 = sub_218AA2324(a2, a3, a4);

    if (v18)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v20 = *(Strong + 56);
        v44 = v18;
        v45 = v20;

        sub_218AB0628(0, &qword_280EE4520, MEMORY[0x277D6E4E8], MEMORY[0x277D6E510]);
        v41 = v21;
        v22 = *(v21 + 48);
        v39 = *MEMORY[0x277D6E4C0];
        v23 = v39;
        v24 = sub_219BE92A4();
        v25 = *(v24 - 8);
        v38 = *(v25 + 104);
        v40 = v25 + 104;
        v38(v15, v23, v24);
        v26 = *MEMORY[0x277D6E500];
        v27 = sub_219BE92B4();
        v42 = v9;
        v28 = v27;
        v37 = *(*(v27 - 8) + 104);
        v37(&v15[v22], v26, v27);
        v29 = *MEMORY[0x277D6E4F0];
        v30 = *(v10 + 104);
        v31 = v46;
        v30(v15, v29, v46);
        v43 = v16;
        v32 = *(v41 + 48);
        v38(v12, v39, v24);
        v37(&v12[v32], *MEMORY[0x277D6E508], v28);
        v30(v12, v29, v31);
        v33 = v47;
        sub_219BE9EB4();
        v34 = sub_219BE94F4();
        v35 = v42;
        (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
        v36 = v44;
        sub_21909BA64(v44, v33, v35);

        sub_218744A50(v35, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_218AB0018);
        (*(v48 + 8))(v33, v43);
      }

      else
      {
      }
    }
  }
}

uint64_t sub_218AA4188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v4 = MEMORY[0x277D83D88];
  sub_218AB0018(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB0018(0, &unk_280EE8D10, MEMORY[0x277D2FD50], v4);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_219BDDDA4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218718690(a1, v28);
  sub_2186C709C(0, &qword_280EE37C8, MEMORY[0x277D6EC48], 1);
  v19 = swift_dynamicCast();
  v20 = *(v16 + 56);
  if (v19)
  {
    v20(v14, 0, 1, v15);
    (*(v16 + 32))(v18, v14, v15);
    sub_219BDDD84();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      (*(v16 + 8))(v18, v15);
      return sub_218744A50(v7, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_218AB0018);
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v22 = sub_218CF8A44(v27, v11);

        if (v22)
        {
          [v22 setModalPresentationStyle_];
          swift_beginAccess();
          if (swift_weakLoadStrong())
          {

            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v24 = Strong;
              v25 = sub_219BF6534();

              [v25 presentViewController:v22 animated:1 completion:0];
            }

            else
            {
            }
          }
        }
      }

      (*(v9 + 8))(v11, v8);
      return (*(v16 + 8))(v18, v15);
    }
  }

  else
  {
    v20(v14, 1, 1, v15);
    return sub_218744A50(v14, &unk_280EE8D10, MEMORY[0x277D2FD50], MEMORY[0x277D83D88], sub_218AB0018);
  }
}

void *sub_218AA465C(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v65 = a5;
  v68 = a4;
  v69 = a3;
  v75 = *MEMORY[0x277D85DE8];
  sub_218AB0018(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v57 - v6;
  v61 = sub_219BE92E4();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  v64 = sub_219BE9EC4();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_219BDB954();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v19 = sub_219BDD944();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v57 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v57 - v26;
  v28 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30 = result;
    v59 = v7;
    v70 = 0;
    v74 = 0;
    swift_beginAccess();
    sub_218AB0388(v28, v27, MEMORY[0x277D2FB40]);
    v31 = sub_219BDD914();
    sub_218AB0A34(v27, MEMORY[0x277D2FB40]);
    if (v31)
    {
      if ([v69 hasAccessToItem:v31 blockedReason:&v70 error:&v74])
      {
        swift_beginAccess();
        sub_218AB0388(v28, v24, MEMORY[0x277D2FB40]);
        sub_218AA4F64(v68, v24, v65);
        v33 = v32;

        swift_unknownObjectRelease();
        sub_218AB0A34(v24, MEMORY[0x277D2FB40]);

        return v33;
      }

      swift_unknownObjectRelease();
    }

    swift_beginAccess();
    sub_218AB0388(v28, v21, MEMORY[0x277D2FB40]);
    v34 = sub_219BDD914();
    sub_218AB0A34(v21, MEMORY[0x277D2FB40]);
    if (v34)
    {
      v35 = [v34 contentURL];
      if (v35)
      {
        v36 = v35;
        sub_219BDB8B4();

        v37 = v66;
        v38 = v15;
        v39 = v67;
        (*(v66 + 32))(v18, v38, v67);
        v40 = v70;
        if ([v34 contentType] == 1 || (v40 - 1) <= 1)
        {
          v46 = sub_218CF8A44(v68, v18);
          if (v46)
          {
            v69 = v30[7];
            v47 = *MEMORY[0x277D6E530];
            v68 = v46;
            v48 = sub_219BE92D4();
            v49 = *(v48 - 8);
            v58 = *(v49 + 104);
            v65 = v49 + 104;
            v58(v12, v47, v48);
            v50 = *MEMORY[0x277D6E518];
            v51 = *(v60 + 104);
            v52 = v61;
            v51(v12, v50, v61);
            v58(v9, *MEMORY[0x277D6E538], v48);
            v51(v9, v50, v52);
            v53 = v62;
            sub_219BE9EB4();
            v54 = sub_219BE94F4();
            v55 = v59;
            (*(*(v54 - 8) + 56))(v59, 1, 1, v54);
            v56 = v68;
            sub_21909BA64(v68, v53, v55);
            swift_unknownObjectRelease();

            sub_218744A50(v55, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_218AB0018);
            (*(v63 + 8))(v53, v64);
            (*(v66 + 8))(v18, v67);
          }

          else
          {
            (*(v37 + 8))(v18, v39);
            swift_unknownObjectRelease();
          }

          goto LABEL_18;
        }

        (*(v37 + 8))(v18, v39);
      }

      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v42 = Strong;
      __swift_project_boxed_opaque_existential_1(v30 + 2, v30[5]);
      sub_2186C709C(0, qword_280E9A080, &protocol descriptor for ArticleErrorAlertPresenterFactoryType, 1);
      result = sub_219BE1E34();
      if (!v72)
      {
        __break(1u);
        return result;
      }

      sub_2186CB1F0(&v71, v73);
      __swift_project_boxed_opaque_existential_1(v73, v73[3]);
      v43 = v74;
      v44 = v70;
      v45 = v74;
      sub_218DDD004(v43, v44, &v71);

      __swift_project_boxed_opaque_existential_1(&v71, v72);
      sub_219BE6194();

      __swift_destroy_boxed_opaque_existential_1(&v71);
      __swift_destroy_boxed_opaque_existential_1(v73);
      goto LABEL_19;
    }

LABEL_18:

LABEL_19:

    return 0;
  }

  return result;
}

void sub_218AA4F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v133 = a3;
  v141 = a2;
  v116 = sub_219BDE294();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_219BDE094();
  v145 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v144 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v146 = &v111 - v7;
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v9 = v8;
  v127 = *(v8 - 8);
  v126 = *(v127 + 64);
  MEMORY[0x28223BE20](v8);
  v138 = &v111 - v10;
  v11 = MEMORY[0x277D83D88];
  sub_218AB0018(0, &qword_280EE6350, MEMORY[0x277D35078], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v124 = &v111 - v13;
  sub_218AB0018(0, &qword_280EE8AE0, MEMORY[0x277D30210], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v121 = &v111 - v15;
  v132 = sub_219BDDD44();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v137 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v16;
  MEMORY[0x28223BE20](v17);
  v130 = &v111 - v18;
  v19 = sub_219BDD944();
  v122 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v123 = v20;
  v136 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for NewsActivity2.Article(0);
  v120 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v113 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB0018(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, v11);
  MEMORY[0x28223BE20](v22 - 8);
  v118 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v111 = &v111 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v111 - v27;
  sub_218AB0018(0, &qword_280EE64A8, MEMORY[0x277D34D40], v11);
  MEMORY[0x28223BE20](v29 - 8);
  v112 = &v111 - v30;
  v140 = sub_219BE3D44();
  v129 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v139 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = v31;
  MEMORY[0x28223BE20](v32);
  v142 = &v111 - v33;
  v34 = sub_219BE15B4();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_219BDD0A4();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v111 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = v9;
  v134 = a1;
  sub_219BEA7B4();
  if (v154[3])
  {
    sub_219BDD274();
    if (swift_dynamicCast())
    {
      (*(v35 + 104))(v37, *MEMORY[0x277D2F548], v34);
      sub_219BDD094();
      (*(v35 + 8))(v37, v34);
      sub_219BDD8A4();
      sub_219BDD204();

      (*(v39 + 8))(v41, v38);
    }
  }

  else
  {
    sub_218744A50(v154, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_21883D9C8);
  }

  v42 = v135;
  v43 = v129;
  v44 = v134;
  v45 = v118;
  v46 = v28;
  v47 = sub_219093144(6u, v133);
  v48 = v140;
  v49 = v119;
  if (v47)
  {
    *v142 = 1;
    (*(v43 + 104))();
    v50 = v120;
  }

  else
  {
    sub_219BEA7A4();
    v51 = v154[0];
    v52 = (v51 >> 58) & 0x3C | (v51 >> 1) & 3;
    v50 = v120;
    if ((v52 - 9) >= 0x34)
    {
      v109 = 1 << v52;
      if ((v109 & 0xF9) == 0)
      {
        if ((v109 & 6) != 0)
        {
          sub_2187B2C48(0);
        }

        v110 = swift_projectBox();
        sub_218AB0388(v110, v46, type metadata accessor for NewsActivity2.Article);
      }
    }

    (v50[7])(v46);
    sub_218932F9C(v51);
    v53 = v111;
    sub_218AB06A4(v46, v111);
    if ((v50[6])(v53, 1, v49) != 1)
    {
      v54 = v53;
      v55 = v113;
      sub_218AAFD90(v54, v113, type metadata accessor for NewsActivity2.Article);
      sub_21908F748(v112);
      sub_218AB0A34(v55, type metadata accessor for NewsActivity2.Article);
    }

    sub_218744A50(v46, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88], sub_218AB0018);
    v56 = v112;
    (*(v43 + 56))();
    v57 = *(v43 + 48);
    if (v57(v56, 1, v48) == 1)
    {
      (*(v43 + 104))(v142, *MEMORY[0x277D34D30], v48);
      if (v57(v56, 1, v48) != 1)
      {
        sub_218744A50(v56, &qword_280EE64A8, MEMORY[0x277D34D40], MEMORY[0x277D83D88], sub_218AB0018);
      }
    }

    else
    {
      (*(v43 + 32))(v142, v56, v48);
    }
  }

  sub_219BEA7A4();
  v58 = v154[0];
  v59 = (v58 >> 58) & 0x3C | (v58 >> 1) & 3;
  if ((v59 - 9) >= 0x34)
  {
    v107 = 1 << v59;
    if ((v107 & 0xF9) == 0)
    {
      if ((v107 & 6) != 0)
      {
        sub_2187B2C48(0);
      }

      v108 = swift_projectBox();
      sub_218AB0388(v108, v45, type metadata accessor for NewsActivity2.Article);
    }
  }

  (v50[7])(v45);
  v60 = sub_218932F9C(v58);
  if ((v50[6])(v45, 1, v49, v60) == 1)
  {
    sub_218744A50(v45, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88], sub_218AB0018);
    v61 = 0;
    v62 = v136;
  }

  else
  {
    v63 = v113;
    sub_218AB0388(v45, v113, type metadata accessor for NewsActivity2.Article);
    sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

    v64 = v63;
    v62 = v136;
    sub_218AAFD90(v64, v136, MEMORY[0x277D2FB40]);
    sub_21909185C(v62);
    v61 = v65;
    sub_218AB0A34(v62, MEMORY[0x277D2FB40]);
    sub_218AB0A34(v45, type metadata accessor for NewsActivity2.Article);
  }

  v66 = sub_219BDE924();
  (*(*(v66 - 8) + 56))(v121, 1, 1, v66);
  v67 = sub_219BE4394();
  (*(*(v67 - 8) + 56))(v124, 1, 1, v67);

  v68 = v130;
  v118 = v61;
  sub_219BDDD34();
  v121 = v42[5];
  v124 = v42[6];
  v120 = __swift_project_boxed_opaque_existential_1(v42 + 2, v121);
  v119 = sub_2186C709C(0, &qword_280EE8CC8, MEMORY[0x277D2FF28], 1);
  sub_218AB0388(v141, v62, MEMORY[0x277D2FB40]);
  v69 = v127;
  (*(v127 + 16))(v138, v44, v143);
  v70 = *(v43 + 16);
  v71 = v140;
  v113 = v43 + 16;
  v112 = v70;
  (v70)(v139, v142, v140);
  v72 = v131;
  v73 = v132;
  (*(v131 + 16))(v137, v68, v132);
  v74 = (*(v122 + 80) + 16) & ~*(v122 + 80);
  v75 = (v123 + v74 + *(v69 + 80)) & ~*(v69 + 80);
  v76 = (v126 + *(v43 + 80) + v75) & ~*(v43 + 80);
  v77 = (v128 + *(v72 + 80) + v76) & ~*(v72 + 80);
  v126 = *(v43 + 80);
  v78 = swift_allocObject();
  sub_218AAFD90(v136, v78 + v74, MEMORY[0x277D2FB40]);
  (*(v69 + 32))(v78 + v75, v138, v143);
  v81 = *(v43 + 32);
  v80 = (v43 + 32);
  v79 = v81;
  (v81)(v78 + v76, v139, v71);
  (*(v72 + 32))(v78 + v77, v137, v73);
  sub_219BE1E14();

  if (!v153)
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v137 = v79;
  v138 = v80;
  sub_2186CB1F0(&v152, v154);
  v82 = *(v133 + 16);
  v83 = v117;
  if (v82)
  {
    v84 = (v133 + 32);
    v85 = *MEMORY[0x277D2FE20];
    v86 = (v145 + 104);
    v87 = (v145 + 32);
    v88 = MEMORY[0x277D84F90];
    do
    {
      v89 = *v84++;
      if (v89 == 3)
      {
        v90 = v144;
        (*v86)(v144, v85, v83);
        v91 = *v87;
        (*v87)(v146, v90, v83);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_2191F77D8(0, *(v88 + 2) + 1, 1, v88);
        }

        v93 = *(v88 + 2);
        v92 = *(v88 + 3);
        if (v93 >= v92 >> 1)
        {
          v88 = sub_2191F77D8((v92 > 1), v93 + 1, 1, v88);
        }

        *(v88 + 2) = v93 + 1;
        v91(&v88[((*(v145 + 80) + 32) & ~*(v145 + 80)) + *(v145 + 72) * v93], v146, v83);
      }

      --v82;
    }

    while (v82);
  }

  else
  {
    v88 = MEMORY[0x277D84F90];
  }

  sub_219BEA7A4();
  *&v150 = v152;
  v94 = v135;
  sub_218B1ACC0(&v150);
  sub_218932F9C(v150);
  v95 = sub_218AAA91C(v141, v154, v88);
  __swift_project_boxed_opaque_existential_1(v94 + 2, v94[5]);
  sub_2186C709C(0, &qword_280ED4520, &protocol descriptor for UpsellManagerType, 1);
  sub_219BE1E34();
  if (!v151)
  {
    goto LABEL_42;
  }

  sub_2186CB1F0(&v150, &v152);
  __swift_project_boxed_opaque_existential_1(v94 + 2, v94[5]);
  sub_219BDD274();
  v96 = sub_219BE1E24();
  if (!v96)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v97 = v96;
  v146 = v95;
  __swift_project_boxed_opaque_existential_1(v94 + 2, v94[5]);
  sub_2186C709C(0, &unk_280EE6340, MEMORY[0x277D35080], 1);
  sub_219BE1E34();
  if (v149)
  {
    v98 = v126;

    sub_2186CB1F0(&v148, &v150);
    v99 = swift_allocObject();
    swift_weakInit();
    v100 = v139;
    v101 = v140;
    (v112)(v139, v142, v140);
    sub_218718690(&v152, &v148);
    sub_218718690(&v150, &v147);
    v102 = (v98 + 24) & ~v98;
    v103 = (v128 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
    v104 = (v103 + 47) & 0xFFFFFFFFFFFFFFF8;
    v105 = swift_allocObject();
    *(v105 + 16) = v99;
    (v137)(v105 + v102, v100, v101);
    sub_2186CB1F0(&v148, v105 + v103);
    sub_2186CB1F0(&v147, v105 + v104);
    *(v105 + ((v104 + 47) & 0xFFFFFFFFFFFFFFF8)) = v97;

    sub_219BDE764();

    sub_219BDD8A4();
    v106 = v114;
    sub_219BDD8E4();
    sub_219BDE754();

    (*(v115 + 8))(v106, v116);
    __swift_destroy_boxed_opaque_existential_1(&v150);
    __swift_destroy_boxed_opaque_existential_1(&v152);
    __swift_destroy_boxed_opaque_existential_1(v154);
    (*(v131 + 8))(v130, v132);
    (*(v129 + 8))(v142, v101);
    return;
  }

LABEL_44:
  __break(1u);
}

void sub_218AA65E0(void (*a1)(void, void, void), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v65 = a7;
  v66 = a1;
  v70 = a4;
  v67 = a2;
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v14 = v13;
  v71 = *(v13 - 8);
  v15 = *(v71 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v52 - v16;
  sub_219BDD944();
  v18 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v69 = a3;
    v64 = a10;
    v68 = a9;
    MEMORY[0x28223BE20](Strong);
    *(&v52 - 2) = v20;
    *(&v52 - 1) = v18;
    v21 = v20;
    sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
    sub_219BE3204();
    v22 = sub_219BE2E54();
    v63 = a6;
    v23 = v22;
    v61 = type metadata accessor for Router();
    v62 = v21;
    sub_219BE2F84();

    v24 = swift_allocObject();
    v25 = v65;
    *(v24 + 16) = v65;
    *(v24 + 24) = a8;

    v26 = a8;
    v27 = sub_219BE2E54();
    sub_2186C6148(0, &unk_280E8E2D8, 0x277D30DA0);
    v59 = sub_219BE2F84();

    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v53 = sub_219BF66A4();
    v28 = v71;
    v29 = *(v71 + 16);
    v57 = v71 + 16;
    v60 = v29;
    v29(v17, v68, v14);
    v30 = *(v28 + 80);
    v31 = (v30 + 56) & ~v30;
    v55 = v14;
    v56 = v30;
    v58 = v15 + 7;
    v32 = v17;
    v54 = v17;
    v33 = (v15 + 7 + v31) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    v35 = v70;
    v34[2] = v69;
    v34[3] = v35;
    v36 = v66;
    v37 = v67;
    v34[4] = v25;
    v34[5] = v36;
    v34[6] = v37;
    v66 = *(v28 + 32);
    v71 = v28 + 32;
    v66(v34 + v31, v32, v14);
    v38 = v64;
    *(v34 + v33) = v63;
    *(v34 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v38;
    v39 = v25;

    v40 = v53;
    sub_219BE2F94();

    v41 = swift_allocObject();
    swift_weakInit();
    v42 = v54;
    v43 = v55;
    v60(v54, v68, v55);
    v44 = (v56 + 40) & ~v56;
    v45 = (v58 + v44) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v47 = v69;
    v46[2] = v41;
    v46[3] = v47;
    v46[4] = v35;
    v66(v46 + v44, v42, v43);
    *(v46 + v45) = v39;

    v48 = sub_219BE2E54();
    sub_219BE2FD4();
  }

  else
  {
    v49 = sub_219BE7DB4();
    sub_218AB0CB4(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
    v50 = swift_allocError();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D6DD68], v49);
    a3(v50);
  }
}

void *sub_218AA6BC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BDD944();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  sub_218AB0388(a2, v5, MEMORY[0x277D2FB40]);
  v6 = sub_218AA6CA8(v5);
  sub_218AB0A34(v5, MEMORY[0x277D2FB40]);
  return v6;
}

void *sub_218AA6CA8(uint64_t a1)
{
  v2 = sub_219BDD914();
  if (v2)
  {
    v8[0] = v2;
    sub_218AB0F94(0, &qword_280EE6988, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);
    swift_allocObject();
    return sub_219BE3014();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
    result = sub_219BE1E34();
    if (v7)
    {
      sub_2186CB1F0(&v6, v8);
      __swift_project_boxed_opaque_existential_1(v8, v8[3]);
      sub_219BDD8C4();
      v4 = [objc_opt_self() defaultCachePolicy];
      v5 = sub_219BF2814();

      __swift_destroy_boxed_opaque_existential_1(v8);
      return v5;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_218AA6E38(void *a1, uint64_t a2)
{
  sub_218AB0F94(0, &qword_280EE6988, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218AA6ECC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  swift_beginAccess();
  *(a3 + 16) = v5;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_218AB0F94(0, &unk_280EE6990, &unk_280E8E2D8, 0x277D30DA0, sub_2186C6148);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_218AA6F9C(void **a1, void *a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, void (*a6)(void *), uint64_t a7, void (*a8)(uint64_t, char *, uint64_t), uint64_t a9, uint64_t a10)
{
  v78 = a8;
  v75 = a7;
  v76 = a6;
  v82 = a4;
  v83 = a3;
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v73 = v13;
  v71 = *(v13 - 8);
  v14 = *(v71 + 64);
  MEMORY[0x28223BE20](v13);
  v72 = &v69 - v15;
  v77 = sub_219BDB954();
  v79 = *(v77 - 8);
  v16 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  v70 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v69 - v18;
  MEMORY[0x28223BE20](v20);
  v80 = &v69 - v21;
  v22 = sub_219BDD944();
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v74 = swift_projectBox();
  v81 = a2;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v27 = Strong;
  v28 = a5;
  v29 = [Strong view];

  if (!v29)
  {
    __break(1u);
    goto LABEL_23;
  }

  v30 = [v29 window];

  v31 = [v30 windowScene];
  if (!v31)
  {
LABEL_16:
    v46 = sub_219BE7DB4();
    sub_218AB0CB4(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
    v47 = swift_allocError();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D6DD68], v46);
    v83(v47);
    v49 = v47;
    goto LABEL_17;
  }

  v32 = v25;

  if ([v25 canAccess])
  {
    swift_beginAccess();
    v33 = *(v28 + 16);
    if (!v33 || [v33 contentType] != 1)
    {
      v50 = v74;
      swift_beginAccess();
      sub_218AB0388(v50, v24, MEMORY[0x277D2FB40]);
      sub_218AA4F64(v78, v24, a10);
      v52 = v51;
      sub_218AB0A34(v24, MEMORY[0x277D2FB40]);
      v76(v52);

      return;
    }
  }

  swift_beginAccess();
  v34 = *(v28 + 16);
  if (v34)
  {
    v35 = [swift_unknownObjectRetain() contentURL];
    if (!v35)
    {
LABEL_12:
      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    v36 = v35;
    sub_219BDB8B4();

    v37 = *(v79 + 32);
    v38 = v19;
    v39 = v77;
    v37(v80, v38, v77);
    v40 = [v32 blockedReason];
    if ([v34 contentType] != 1 && (v40 - 1) > 1)
    {
      (*(v79 + 8))(v80, v39);
      goto LABEL_12;
    }

    v75 = sub_219BE7DB4();
    sub_218AB0CB4(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
    v76 = swift_allocError();
    v74 = v57;
    v58 = v71;
    (*(v71 + 16))(v72, v78, v73);
    v59 = v79;
    v60 = *(v79 + 16);
    v78 = v37;
    v61 = v70;
    v60(v70, v80, v39);
    v62 = (*(v58 + 80) + 24) & ~*(v58 + 80);
    v63 = (v14 + *(v59 + 80) + v62) & ~*(v59 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v81;
    (*(v58 + 32))(v64 + v62, v72, v73);
    v65 = v64 + v63;
    v66 = v77;
    v78(v65, v61, v77);
    v67 = v74;
    *v74 = sub_218AB0E84;
    v67[1] = v64;
    (*(*(v75 - 8) + 104))();

    v68 = v76;
    v83(v76);
    swift_unknownObjectRelease();
    (*(v59 + 8))(v80, v66);
    v49 = v68;
LABEL_17:

    return;
  }

LABEL_13:
  __swift_project_boxed_opaque_existential_1(v81 + 2, v81[5]);
  sub_2186C709C(0, qword_280E9A080, &protocol descriptor for ArticleErrorAlertPresenterFactoryType, 1);
  sub_219BE1E34();
  if (!v85)
  {
LABEL_23:
    __break(1u);
    return;
  }

  sub_2186CB1F0(&v84, v87);
  v41 = __swift_project_boxed_opaque_existential_1(v87, v87[3]);
  if ([v32 blockedReason] == 3)
  {
    v42 = *(*v41 + 16);
    v43 = type metadata accessor for ExplicitContentRestrictionAlertPresenter();
    v44 = swift_allocObject();
    v44[3] = 0;
    v44[4] = 0;
    v44[2] = v42;
    v45 = sub_218AB0CB4(&qword_27CC0D818, type metadata accessor for ExplicitContentRestrictionAlertPresenter, &unk_219C7E898);
    swift_unknownObjectRetain();
  }

  else
  {
    v85 = sub_219BDE254();
    v86 = sub_218AB0CB4(&qword_27CC0D7F8, MEMORY[0x277D2FEF0], MEMORY[0x277D2FED0]);
    __swift_allocate_boxed_opaque_existential_1(&v84);
    sub_219BDE214();
    v43 = sub_219BEA744();
    swift_allocObject();
    v44 = sub_219BEA6C4();
    v45 = MEMORY[0x277D6EB90];
  }

  v85 = v43;
  v86 = v45;
  *&v84 = v44;
  v53 = sub_219BE7DB4();
  sub_218AB0CB4(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
  v54 = swift_allocError();
  v56 = v55;
  sub_218718690(&v84, v55);
  (*(*(v53 - 8) + 104))(v56, *MEMORY[0x277D6DD40], v53);
  v83(v54);
  __swift_destroy_boxed_opaque_existential_1(&v84);

  __swift_destroy_boxed_opaque_existential_1(v87);
}

void *sub_218AA7928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218AB0018(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  v36 = sub_219BE92E4();
  v9 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = sub_219BE9EC4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_218CF8A44(a2, a3);
  if (result)
  {
    v33 = *(a1 + 56);
    v20 = *MEMORY[0x277D6E530];
    v32 = result;
    v21 = v18;
    v22 = sub_219BE92D4();
    v23 = *(v22 - 8);
    v31 = v8;
    v24 = *(v23 + 104);
    v35 = v16;
    v24(v14, v20, v22);
    v25 = *MEMORY[0x277D6E518];
    v34 = v15;
    v26 = *(v9 + 104);
    v27 = v36;
    v26(v14, v25, v36);
    v24(v11, *MEMORY[0x277D6E538], v22);
    v26(v11, v25, v27);
    sub_219BE9EB4();
    v28 = sub_219BE94F4();
    v29 = v31;
    (*(*(v28 - 8) + 56))(v31, 1, 1, v28);
    v30 = v32;
    sub_21909BA64(v32, v21, v29);

    sub_218744A50(v29, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_218AB0018);
    return (*(v35 + 8))(v21, v34);
  }

  return result;
}

void sub_218AA7CAC(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    v10 = *(a6 + 16);
    sub_219BE7DB4();
    sub_218AB0CB4(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
    v11 = swift_allocError();
    v13 = v12;
    swift_unknownObjectRetain();
    sub_218AA7E8C(a1, a5, v10, v13);
    swift_unknownObjectRelease();
    a3(v11);
  }

  else
  {
    v14 = sub_219BE7DB4();
    sub_218AB0CB4(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D6DD68], v14);
    a3(v15);
  }
}

uint64_t sub_218AA7E8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v73 = a3;
  v67 = a2;
  v75 = a4;
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v68 = *(v5 - 8);
  v69 = v5;
  v65 = *(v68 + 64);
  MEMORY[0x28223BE20](v5);
  v66 = &v62 - v6;
  v7 = MEMORY[0x277D83D88];
  sub_218AB0018(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = (&v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v72 = &v62 - v11;
  v71 = sub_219BDB954();
  v74 = *(v71 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  v64 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v63 = &v62 - v14;
  v15 = sub_219BDE254();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (&v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v21 = &v62 - v20;
  sub_218AB0018(0, &qword_27CC0D800, MEMORY[0x277D6DD70], v7);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = (&v62 - v23);
  v76 = a1;
  v25 = a1;
  sub_2186C709C(0, &qword_280E8B580, MEMORY[0x277D84948], 1);
  v26 = sub_219BE7DB4();
  v27 = swift_dynamicCast();
  v28 = *(v26 - 8);
  v29 = *(v28 + 56);
  if (v27)
  {
    v29(v24, 0, 1, v26);
    if ((*(v28 + 88))(v24, v26) == *MEMORY[0x277D6DD58])
    {
      (*(v28 + 96))(v24, v26);
      *v75 = *v24;
      v30 = *(v28 + 104);
      return v30();
    }

    (*(v28 + 8))(v24, v26);
  }

  else
  {
    v29(v24, 1, 1, v26);
    sub_218744A50(v24, &qword_27CC0D800, MEMORY[0x277D6DD70], MEMORY[0x277D83D88], sub_218AB0018);
  }

  v31 = a1;
  sub_219BDE224();
  (*(v16 + 16))(v18, v21, v15);
  v32 = (*(v16 + 88))(v18, v15);
  if (v32 == *MEMORY[0x277D2FEE0])
  {
    (*(v16 + 96))(v18, v15);
    v33 = *v18;
    if (v73)
    {
      v34 = [v73 contentType];
      v35 = v74;
      v36 = v72;
      if (v34 != 1 && (v33 - 1) >= 2)
      {
        goto LABEL_21;
      }

      v37 = [v73 contentURL];
      if (v37)
      {
        v38 = v70;
        v39 = v37;
        sub_219BDB8B4();

        v40 = 0;
      }

      else
      {
        v40 = 1;
        v38 = v70;
      }

      v46 = v71;
      (*(v35 + 56))(v38, v40, 1, v71);
      sub_218AB007C(v38, v36);
      if ((*(v35 + 48))(v36, 1, v46) != 1)
      {
        (*(v16 + 8))(v21, v15);
        v50 = *(v35 + 32);
        v49 = v35 + 32;
        v74 = v49;
        v70 = v50;
        v51 = v63;
        v50(v63, v36, v46);
        v73 = swift_allocObject();
        swift_weakInit();
        v52 = v68;
        v53 = v66;
        v54 = v69;
        (*(v68 + 16))(v66, v67, v69);
        v55 = v64;
        v56 = v51;
        v57 = v70;
        v70(v64, v56, v46);
        v58 = (*(v52 + 80) + 24) & ~*(v52 + 80);
        v59 = (v65 + *(v49 + 48) + v58) & ~*(v49 + 48);
        v60 = swift_allocObject();
        *(v60 + 16) = v73;
        (*(v52 + 32))(v60 + v58, v53, v54);
        v57(v60 + v59, v55, v71);
        v61 = v75;
        *v75 = sub_218AB0110;
        v61[1] = v60;
        v30 = *(v28 + 104);
        return v30();
      }
    }

    else
    {
      v36 = v72;
      if ((v33 - 1) >= 2)
      {
LABEL_21:
        v47 = v75;
        v75[3] = v15;
        v47[4] = sub_218AB0CB4(&qword_27CC0D7F8, MEMORY[0x277D2FEF0], MEMORY[0x277D2FED0]);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v47);
        (*(v16 + 32))(boxed_opaque_existential_1, v21, v15);
        v30 = *(v28 + 104);
        return v30();
      }

      (*(v74 + 56))(v72, 1, 1, v71);
    }

    sub_218744A50(v36, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_218AB0018);
    goto LABEL_21;
  }

  v41 = v32;
  v42 = *MEMORY[0x277D2FEB8];
  v43 = v75;
  v75[3] = v15;
  v43[4] = sub_218AB0CB4(&qword_27CC0D7F8, MEMORY[0x277D2FEF0], MEMORY[0x277D2FED0]);
  v44 = __swift_allocate_boxed_opaque_existential_1(v43);
  (*(v16 + 32))(v44, v21, v15);
  result = (*(v28 + 104))(v43, *MEMORY[0x277D6DD60], v26);
  if (v41 != v42 && v41 != *MEMORY[0x277D2FEC0] && v41 != *MEMORY[0x277D2FEC8])
  {
    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

uint64_t sub_218AA87E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v58 = a5;
  v60 = a3;
  v61 = a4;
  v7 = MEMORY[0x277D83D88];
  sub_218AB0018(0, &unk_280EE8E70, MEMORY[0x277D2F9F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = v51 - v9;
  v10 = sub_219BF1664();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10);
  v52 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB0018(0, &unk_280EE9D00, MEMORY[0x277CC9260], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v55 = v51 - v13;
  v14 = sub_219BE3F04();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BDD944();
  MEMORY[0x28223BE20](v17);
  v19 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v51 - v21;
  sub_218AB0388(a2, v51 - v21, MEMORY[0x277D2FB40]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21896F9B8(0);
    v24 = v23;
    v25 = swift_projectBox();
    v26 = *(v24 + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_218AB0388(v25 + v26, v19, MEMORY[0x277D2FB40]);
      sub_2187B3004(0);
      v28 = *(v27 + 48);
      v29 = a1[3];
      v51[1] = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v29);
      v64 = sub_219BDEA74();
      v65 = v30;
      sub_2186C709C(0, &unk_280EE8C00, MEMORY[0x277D30050], 0);
      sub_219BE1B64();

      swift_unknownObjectRelease();
      v31 = sub_219BDE294();
      (*(*(v31 - 8) + 8))(&v19[v28], v31);
    }
  }

  else
  {
    sub_2187B3004(0);
    v33 = *(v32 + 48);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v64 = sub_219BDEA74();
    v65 = v34;
    sub_2186C709C(0, &unk_280EE8C00, MEMORY[0x277D30050], 0);
    sub_219BE1B64();

    swift_unknownObjectRelease();
    v35 = sub_219BDE294();
    (*(*(v35 - 8) + 8))(&v22[v33], v35);
  }

  sub_218AA9024(v60, v61);
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  sub_219BEA7A4();
  v36 = v64;
  v63 = v64;
  NewsActivity2.type.getter(&v62);
  sub_218932F9C(v36);
  if (NewsActivityType2.rawValue.getter() == 0xD00000000000001DLL && 0x8000000219CD78D0 == v37)
  {
  }

  else
  {
    v38 = sub_219BF78F4();

    if ((v38 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v39 = v55;
  sub_218AA954C(v55);
  v40 = sub_219BDB954();
  v41 = (*(*(v40 - 8) + 48))(v39, 1, v40);
  sub_218744A50(v39, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_218AB0018);
  if (v41 != 1)
  {
    v43 = v52;
    v42 = v53;
    v44 = v54;
    (*(v53 + 104))(v52, *MEMORY[0x277D33438], v54);
    v45 = sub_219BF1654();
    (*(v42 + 8))(v43, v44);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280E8E888, &protocolRef_SWLocation);
    v46 = v45;
    sub_219BE1B94();
  }

LABEL_12:
  v47 = v59;
  sub_218AAA334(v59);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE3D44();
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v48 = v57;
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDDD44();
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD4D4();
  sub_219BE1B64();
  v49 = sub_219BEA794();
  v49(a1);

  sub_218744A50(v47, &unk_280EE8E70, MEMORY[0x277D2F9F0], MEMORY[0x277D83D88], sub_218AB0018);
  return (*(v56 + 8))(v16, v48);
}

uint64_t sub_218AA9024(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BDD944();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB0018(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v31 - v7;
  v9 = type metadata accessor for NewsActivity2.Article(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v31 - v14;
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  sub_219BEA7A4();
  v16 = v31[1];
  v17 = (v16 >> 58) & 0x3C | (v16 >> 1) & 3;
  if ((v17 - 9) < 0x34 || (v19 = 1 << v17, (v19 & 0xF9) != 0))
  {
    (*(v10 + 56))(v8, 1, 1, v9);
    sub_218744A50(v8, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88], sub_218AB0018);
    sub_218932F9C(v16);
    sub_2194AED40(MEMORY[0x277D84F90]);
    return sub_219BE3EF4();
  }

  else
  {
    if ((v19 & 6) != 0)
    {
      sub_2187B2C48(0);
    }

    v20 = swift_projectBox();
    sub_218AB0388(v20, v8, type metadata accessor for NewsActivity2.Article);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_218AAFD90(v8, v15, type metadata accessor for NewsActivity2.Article);
    sub_218932F9C(v16);
    sub_218AB0018(0, &unk_280E8B720, sub_218AB09CC, MEMORY[0x277D84560]);
    sub_218AB09CC(0);
    v22 = v21 - 8;
    v23 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C09BA0;
    v25 = (v24 + v23);
    v26 = *(v22 + 56);
    sub_218AB0388(v15, v12, type metadata accessor for NewsActivity2.Article);
    sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

    sub_218AAFD90(v12, v5, MEMORY[0x277D2FB40]);
    v27 = sub_219BDD8A4();
    v29 = v28;
    sub_218AB0A34(v5, MEMORY[0x277D2FB40]);
    *v25 = v27;
    v25[1] = v29;
    v30 = sub_219BE3D44();
    (*(*(v30 - 8) + 16))(v25 + v26, a2, v30);
    sub_2194AED40(v24);
    swift_setDeallocating();
    sub_218AB0A34(v25, sub_218AB09CC);
    swift_deallocClassInstance();
    sub_219BE3EF4();
    return sub_218AB0A34(v15, type metadata accessor for NewsActivity2.Article);
  }
}

double sub_218AA954C@<D0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v1 = sub_219BDD944();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v85 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB0018(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v87 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v88 = &v85 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v85 - v9;
  MEMORY[0x28223BE20](v11);
  v86 = &v85 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v85 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v85 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v85 - v20;
  v22 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v85 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v85 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v85 - v32;
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  sub_219BEA7A4();
  v34 = v90;
  v35 = (v34 >> 58) & 0x3C | (v34 >> 1) & 3;
  if (v35 > 2)
  {
    if (v35 == 3)
    {
      v70 = v90;
      v71 = objc_opt_self();
      v72 = sub_219BF53D4();
      v73 = [v71 nss:v72 NewsURLForArticleID:?];

      if (v73)
      {
        sub_219BDB8B4();

        v74 = 0;
      }

      else
      {
        v74 = 1;
      }

      v79 = v89;
      v80 = sub_219BDB954();
      (*(*(v80 - 8) + 56))(v10, v74, 1, v80);
      sub_218AB007C(v10, v79);
      v76 = v70;
      return sub_218932F9C(v76);
    }

    if (v35 != 8)
    {
LABEL_12:
      sub_218932F9C(v90);
      v61 = sub_219BDB954();
      (*(*(v61 - 8) + 56))(v89, 1, 1, v61);
      return result;
    }

    v47 = swift_projectBox();
    sub_218AB0388(v47, v24, type metadata accessor for NewsActivity2.Article);
    sub_218AB0388(v24, v30, type metadata accessor for NewsActivity2.Article);
    sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

    sub_218AAFD90(v30, v3, MEMORY[0x277D2FB40]);
    v48 = v88;
    v49 = v34;
    sub_219BDD8B4();
    sub_218AB0A34(v3, MEMORY[0x277D2FB40]);
    v50 = sub_219BDB954();
    v51 = *(v50 - 8);
    v52 = *(v51 + 48);
    if (v52(v48, 1, v50) != 1)
    {
      sub_218AB0A34(v24, type metadata accessor for NewsActivity2.Article);
      v77 = v89;
      (*(v51 + 32))(v89, v48, v50);
      (*(v51 + 56))(v77, 0, 1, v50);
      v76 = v49;
      return sub_218932F9C(v76);
    }

    v53 = v52;
    v85 = v49;
    v54 = objc_opt_self();
    sub_218AB0388(v24, v30, type metadata accessor for NewsActivity2.Article);

    sub_218AAFD90(v30, v3, MEMORY[0x277D2FB40]);
    sub_219BDD8C4();
    sub_218AB0A34(v3, MEMORY[0x277D2FB40]);
    v55 = sub_219BF53D4();

    v56 = [v54 nss:v55 NewsURLForArticleID:?];

    if (v56)
    {
      v57 = v87;
      sub_219BDB8B4();

      v58 = 0;
      v60 = v88;
      v59 = v89;
    }

    else
    {
      v58 = 1;
      v60 = v88;
      v59 = v89;
      v57 = v87;
    }

    sub_218AB0A34(v24, type metadata accessor for NewsActivity2.Article);
    (*(v51 + 56))(v57, v58, 1, v50);
    sub_218AB007C(v57, v59);
    if (v53(v60, 1, v50) == 1)
    {
      goto LABEL_33;
    }

    v81 = MEMORY[0x277CC9260];
    v82 = MEMORY[0x277D83D88];
    v83 = v60;
LABEL_32:
    sub_218744A50(v83, &unk_280EE9D00, v81, v82, sub_218AB0018);
    goto LABEL_33;
  }

  if (v35 == 1)
  {
    sub_2187B2C48(0);
    v63 = swift_projectBox();
    v85 = v34;
    sub_218AB0388(v63, v33, type metadata accessor for NewsActivity2.Article);
    sub_218AB0388(v33, v30, type metadata accessor for NewsActivity2.Article);
    sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

    sub_218AAFD90(v30, v3, MEMORY[0x277D2FB40]);
    sub_219BDD8B4();
    sub_218AB0A34(v3, MEMORY[0x277D2FB40]);
    v64 = sub_219BDB954();
    v65 = *(v64 - 8);
    v66 = *(v65 + 48);
    if (v66(v21, 1, v64) != 1)
    {
      sub_218AB0A34(v33, type metadata accessor for NewsActivity2.Article);
      v78 = v89;
      (*(v65 + 32))(v89, v21, v64);
      (*(v65 + 56))(v78, 0, 1, v64);
LABEL_33:
      v76 = v85;
      return sub_218932F9C(v76);
    }

    v88 = v66;
    v87 = objc_opt_self();
    sub_218AB0388(v33, v30, type metadata accessor for NewsActivity2.Article);

    sub_218AAFD90(v30, v3, MEMORY[0x277D2FB40]);
    sub_219BDD8C4();
    sub_218AB0A34(v3, MEMORY[0x277D2FB40]);
    v67 = sub_219BF53D4();

    v68 = [v87 nss:v67 NewsURLForArticleID:?];

    if (v68)
    {
      sub_219BDB8B4();

      v69 = 0;
    }

    else
    {
      v69 = 1;
    }

    v84 = v89;
    sub_218AB0A34(v33, type metadata accessor for NewsActivity2.Article);
    (*(v65 + 56))(v18, v69, 1, v64);
    sub_218AB007C(v18, v84);
    if ((v88)(v21, 1, v64) == 1)
    {
      goto LABEL_33;
    }

    v81 = MEMORY[0x277CC9260];
    v82 = MEMORY[0x277D83D88];
    v83 = v21;
    goto LABEL_32;
  }

  if (v35 != 2)
  {
    goto LABEL_12;
  }

  sub_2187B2C48(0);
  v36 = swift_projectBox();
  sub_218AB0388(v36, v27, type metadata accessor for NewsActivity2.Article);
  sub_218AB0388(v27, v30, type metadata accessor for NewsActivity2.Article);
  sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  sub_218AAFD90(v30, v3, MEMORY[0x277D2FB40]);
  v37 = v34;
  sub_219BDD8B4();
  sub_218AB0A34(v3, MEMORY[0x277D2FB40]);
  v38 = sub_219BDB954();
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  if ((v40)(v15, 1, v38) == 1)
  {
    v88 = v40;
    v85 = v37;
    v41 = objc_opt_self();
    sub_218AB0388(v27, v30, type metadata accessor for NewsActivity2.Article);

    sub_218AAFD90(v30, v3, MEMORY[0x277D2FB40]);
    sub_219BDD8C4();
    sub_218AB0A34(v3, MEMORY[0x277D2FB40]);
    v42 = sub_219BF53D4();

    v43 = [v41 nss:v42 NewsURLForArticleID:?];

    if (v43)
    {
      v44 = v86;
      sub_219BDB8B4();

      v45 = 0;
      v46 = v89;
    }

    else
    {
      v45 = 1;
      v46 = v89;
      v44 = v86;
    }

    sub_218AB0A34(v27, type metadata accessor for NewsActivity2.Article);
    (*(v39 + 56))(v44, v45, 1, v38);
    sub_218AB007C(v44, v46);
    if ((v88)(v15, 1, v38) == 1)
    {
      goto LABEL_33;
    }

    v81 = MEMORY[0x277CC9260];
    v82 = MEMORY[0x277D83D88];
    v83 = v15;
    goto LABEL_32;
  }

  sub_218AB0A34(v27, type metadata accessor for NewsActivity2.Article);
  v75 = v89;
  (*(v39 + 32))(v89, v15, v38);
  (*(v39 + 56))(v75, 0, 1, v38);
  v76 = v37;
  return sub_218932F9C(v76);
}

uint64_t sub_218AAA334@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_219BDD944();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NewsActivity2.Article(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_218AB0018(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - v10;
  sub_218AB0018(0, &unk_280EE9D00, MEMORY[0x277CC9260], v8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_219BDB954();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v31 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v30 - v19;
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  sub_219BEA7A4();
  v21 = v33;
  v22 = (v21 >> 58) & 0x3C | (v21 >> 1) & 3;
  if ((v22 - 9) >= 0x34)
  {
    v28 = 1 << v22;
    if ((v28 & 0xF9) == 0)
    {
      if ((v28 & 6) != 0)
      {
        sub_2187B2C48(0);
      }

      v29 = swift_projectBox();
      sub_218AB0388(v29, v11, type metadata accessor for NewsActivity2.Article);
    }
  }

  (*(v5 + 56))(v11);
  v23 = sub_218932F9C(v21);
  if ((*(v5 + 48))(v11, 1, v4, v23) == 1)
  {
    sub_218744A50(v11, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88], sub_218AB0018);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  else
  {
    sub_218AB0388(v11, v7, type metadata accessor for NewsActivity2.Article);
    sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

    sub_218AAFD90(v7, v3, MEMORY[0x277D2FB40]);
    sub_219BDD8B4();
    sub_218AB0A34(v3, MEMORY[0x277D2FB40]);
    sub_218AB0A34(v11, type metadata accessor for NewsActivity2.Article);
    if ((*(v16 + 48))(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v20, v14, v15);
      (*(v16 + 16))(v31, v20, v15);
      v25 = v32;
      sub_219BDD4C4();
      (*(v16 + 8))(v20, v15);
      v24 = 0;
      goto LABEL_7;
    }
  }

  sub_218744A50(v14, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_218AB0018);
  v24 = 1;
  v25 = v32;
LABEL_7:
  v26 = sub_219BDD4D4();
  return (*(*(v26 - 8) + 56))(v25, v24, 1, v26);
}

uint64_t sub_218AAA91C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_219BDD944();
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21[-1] - v10;
  sub_218AB0388(a1, &v21[-1] - v10, MEMORY[0x277D2FB40]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21896F9B8(0);
    v13 = v12;
    v14 = swift_projectBox();
    sub_218AB0388(v14 + *(v13 + 48), v8, MEMORY[0x277D2FB40]);
    v15 = sub_218AAA91C(v8, a2, a3);
    sub_218AB0A34(v8, MEMORY[0x277D2FB40]);
  }

  else
  {
    sub_2187B3004(0);
    v17 = *(v16 + 48);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_219BDEA84();
    v15 = sub_219BDE2A4();

    __swift_destroy_boxed_opaque_existential_1(v21);
    v18 = sub_219BDE294();
    (*(*(v18 - 8) + 8))(&v11[v17], v18);
  }

  return v15;
}

void *sub_218AAAB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v51 = a5;
  v52 = a7;
  v53 = a4;
  v8 = sub_219BE48F4();
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v56 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDEE04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v50 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v48 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v48 - v17;
  v19 = sub_219BDD9C4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BDD3E4();
  v57 = *(v23 - 8);
  v58 = v23;
  MEMORY[0x28223BE20](v23);
  v25 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = result;
    (*(v20 + 16))(v22, a1, v19);
    if ((*(v20 + 88))(v22, v19) == *MEMORY[0x277D2FB70])
    {
      (*(v20 + 96))(v22, v19);
      v28 = v57;
      v29 = v22;
      v30 = v58;
      (*(v57 + 32))(v25, v29, v58);
      sub_219BDD3D4();
      v31 = sub_219BDEDF4();
      v34 = *(v11 + 8);
      v33 = v11 + 8;
      v32 = v34;
      v34(v18, v10);
      v35 = [v31 sourceChannelID];
      swift_unknownObjectRelease();
      if (v35)
      {
        v49 = v32;

        __swift_project_boxed_opaque_existential_1(v27 + 2, v27[5]);
        sub_2186C709C(0, &qword_280EE64F0, MEMORY[0x277D34CB0], 1);
        result = sub_219BE1E34();
        if (v60)
        {
          sub_2186CB1F0(&v59, v62);
          __swift_project_boxed_opaque_existential_1(v62, v62[3]);
          sub_219BDD3D4();
          sub_219BDEDF4();
          v36 = v33;
          v37 = v49;
          v48[1] = v36;
          v49(v15, v10);
          v38 = v56;
          sub_219BE3C34();
          swift_unknownObjectRelease();
          if (sub_219BE48C4())
          {

            (*(v54 + 8))(v38, v55);
          }

          else
          {
            v39 = __swift_project_boxed_opaque_existential_1(v51, v51[3]);
            v40 = v50;
            sub_219BDD3D4();
            v41 = sub_219BDEDF4();
            v37(v40, v10);
            v42 = *(*v39 + 16);
            v43 = *(v42 + 16);
            v44 = v52;
            if (v43)
            {
              v45 = v42 + 32;
              do
              {
                sub_218718690(v45, &v59);
                v46 = v60;
                v47 = v61;
                __swift_project_boxed_opaque_existential_1(&v59, v60);
                (*(v47 + 8))(v41, 0, 2, v44, v46, v47);
                __swift_destroy_boxed_opaque_existential_1(&v59);
                v45 += 40;
                --v43;
              }

              while (v43);
            }

            swift_unknownObjectRelease();
            (*(v54 + 8))(v56, v55);
          }

          (*(v57 + 8))(v25, v58);
          return __swift_destroy_boxed_opaque_existential_1(v62);
        }

        else
        {
          __break(1u);
        }
      }

      else
      {

        return (*(v28 + 8))(v25, v30);
      }
    }

    else
    {

      return (*(v20 + 8))(v22, v19);
    }
  }

  return result;
}

void sub_218AAB0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v38 = a7;
  v39 = a5;
  v42 = a3;
  v43 = a4;
  v40 = a1;
  v41 = a2;
  v9 = sub_219BDB954();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  v44 = a5;
  v45 = a6;
  sub_21883D9C8(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  v37 = sub_219BE3204();
  v36 = sub_219BE1C44();
  (*(v14 + 16))(v17, v38, v13);
  v18 = a6;
  v19 = v9;
  (*(v10 + 16))(&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v9);
  v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v21 = (v15 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v10 + 80) + v22 + 16) & ~*(v10 + 80);
  v24 = swift_allocObject();
  (*(v14 + 32))(v24 + v20, v17, v13);
  v25 = (v24 + v21);
  v26 = v41;
  *v25 = v40;
  v25[1] = v26;
  v27 = (v24 + v22);
  v29 = v42;
  v28 = v43;
  *v27 = v42;
  v27[1] = v28;
  (*(v10 + 32))(v24 + v23, v35, v19);
  type metadata accessor for Router();

  v30 = v28;

  v31 = v36;
  sub_219BE2F94();

  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v30;

  v33 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_218AAB490(uint64_t a1, uint64_t a2)
{
  sub_218AB1540(0);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_218AAB4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  __swift_project_boxed_opaque_existential_1(a5 + 2, a5[5]);
  sub_2186C6148(0, &qword_280E8E6C0, 0x277D30EE0);

  v9 = sub_219BE1E24();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 webURLResolutionEndpointConnection];
    if (v11)
    {
      v12 = v11;
      v13 = sub_219BDB854();
      v14 = swift_allocObject();
      *(v14 + 16) = sub_218AB15BC;
      *(v14 + 24) = v8;
      v16[4] = sub_218AB15F4;
      v16[5] = v14;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 1107296256;
      v16[2] = sub_218AAB6AC;
      v16[3] = &block_descriptor_105;
      v15 = _Block_copy(v16);

      [v12 resolveWebURL:v13 withQualityOfService:25 completion:v15];
      _Block_release(v15);

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

double sub_218AAB6AC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_219BF5414();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a3;
  v4(v5, v7, a3);

  return result;
}

double sub_218AAB744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v42 = a8;
  v47 = a6;
  v48 = a7;
  v44 = a4;
  v46 = a3;
  v43 = sub_219BDB954();
  v11 = *(v43 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v43);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v19 = &v39 - v18;
  if (*(a1 + 8))
  {
    MEMORY[0x28223BE20](v17);
    v20 = a5;
    *(&v39 - 4) = a2;
    *(&v39 - 3) = v21;
    *(&v39 - 2) = v22;
    sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
    sub_219BE3204();
    v23 = sub_219BE1C44();
    (*(v15 + 16))(v19, v46, v14);
    v24 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    (*(v15 + 32))(v25 + v24, v19, v14);
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);

    sub_219BE2F64();

    v26 = sub_219BE1C44();
    v27 = swift_allocObject();
    *(v27 + 16) = v44;
    *(v27 + 24) = v20;

    sub_219BE2F74();

    v28 = swift_allocObject();
    *(v28 + 16) = v47;
    *(v28 + 24) = v48;

    v29 = sub_219BE2E54();
    sub_219BE2FD4();
  }

  else
  {
    v41 = sub_219BE7DB4();
    sub_218AB0CB4(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
    v44 = swift_allocError();
    v40 = v31;
    v39 = swift_allocObject();
    swift_weakInit();
    (*(v15 + 16))(v19, v46, v14);
    v32 = v43;
    (*(v11 + 16))(v45, v42, v43);
    v33 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v34 = (v16 + *(v11 + 80) + v33) & ~*(v11 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = v39;
    (*(v15 + 32))(v35 + v33, v19, v14);
    (*(v11 + 32))(v35 + v34, v45, v32);
    v36 = v40;
    v37 = v41;
    *v40 = sub_218AB1638;
    v36[1] = v35;
    (*(*(v37 - 8) + 104))();

    v38 = v44;
    v47(v44);
  }

  return result;
}

void *sub_218AABCBC(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, v7);
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v4 = sub_219BF2834();
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218AABDA4(void *a1, uint64_t a2, uint64_t a3)
{
  v29 = a2;
  v30 = a3;
  v26[1] = a1;
  v3 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDE294();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x277CC9260];
  v27 = MEMORY[0x277D83D88];
  sub_218AB0018(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v26 - v11;
  v13 = sub_219BDEE04();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BDD944();
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectRetain();
  sub_219BDEDE4();
  v20 = sub_219BDB954();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  (*(v7 + 104))(v9, *MEMORY[0x277D2FF08], v6);
  sub_219BDD904();
  (*(v7 + 8))(v9, v6);
  sub_218744A50(v12, &unk_280EE9D00, v28, v27, sub_218AB0018);
  (*(v14 + 8))(v16, v13);
  sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);
  v22 = *(v21 + 48);
  sub_218AB0388(v19, v5, MEMORY[0x277D2FB40]);
  v23 = MEMORY[0x277D84F90];
  *&v5[v22] = MEMORY[0x277D84F90];
  v31 = v29;
  v32 = v5;
  v33 = v23;
  v34 = v30;
  sub_218AAFB68(0);
  swift_allocObject();
  v24 = sub_219BE30B4();
  sub_218AB0A34(v19, MEMORY[0x277D2FB40]);
  sub_218AB0A34(v5, type metadata accessor for NewsActivity2.Article);
  return v24;
}

void sub_218AAC1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v44 = a3;
  v45 = a2;
  v7 = sub_219BDE0E4();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v43 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_219BDE0B4();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v10 = (v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = sub_219BDE0D4();
  v39 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v38 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v33 - v15;
  __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  sub_2186C709C(0, &qword_280EE8CC8, MEMORY[0x277D2FF28], 1);
  v17 = *(v14 + 16);
  v33[2] = a1;
  v17(v16, a1, v13);
  v18 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = *(v14 + 32);
  v33[1] = v13;
  v20(v19 + v18, v16, v13);
  sub_219BE1E14();

  if (v47)
  {
    sub_2186CB1F0(&v46, v49);
    v21 = v44;
    *v10 = v45;
    v10[1] = v21;
    v22 = v37;
    v10[2] = v36;
    v10[3] = v22;
    (*(v34 + 104))(v10, *MEMORY[0x277D2FE38], v35);

    v23 = v38;
    sub_219BDE0C4();
    __swift_project_boxed_opaque_existential_1(v49, v49[3]);
    v24 = v39;
    v26 = v42;
    v25 = v43;
    (*(v39 + 16))(v43, v23, v42);
    (*(v40 + 104))(v25, *MEMORY[0x277D2FE58], v41);
    v27 = sub_219BDE944();
    swift_allocObject();
    v28 = sub_219BDE934();
    v47 = v27;
    v48 = MEMORY[0x277D30218];
    *&v46 = v28;
    v29 = sub_219BDE2A4();
    __swift_destroy_boxed_opaque_existential_1(&v46);
    if ((sub_219BED0C4() & 1) == 0)
    {
      sub_219BE9D54();
      [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];

      v30 = sub_219BE9CE4();
      v31 = sub_219BEA784();
      v32 = v30;
      v31();
    }

    (*(v24 + 8))(v23, v26);
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    __break(1u);
  }
}

double sub_218AAC6EC(uint64_t a1)
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = sub_219BEA794();
  v2(a1);

  return result;
}

void sub_218AAC77C(uint64_t a1, uint64_t a2)
{
  sub_218AB0018(0, &unk_280EE8960, MEMORY[0x277D30338], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2186C709C(0, &qword_27CC0D828, MEMORY[0x277D301E0], 1);
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  sub_219BEA794();
  sub_219BE1E14();

  if (v8)
  {
    sub_2186CB1F0(&v7, v9);
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    v6 = sub_219BDEE04();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    sub_219BDE8E4();
    sub_218744A50(v5, &unk_280EE8960, MEMORY[0x277D30338], MEMORY[0x277D83D88], sub_218AB0018);
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __break(1u);
  }
}

void sub_218AAC9BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
  sub_219BE3204();
  v12 = sub_219BE1C44();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  sub_219BE2F74();

  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;

  v15 = sub_219BE2E54();
  sub_219BE2FD4();
}

uint64_t sub_218AACB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218AAFB68(0);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_218AACB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a8;
  v35 = a3;
  v31 = a7;
  v36 = a4;
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  v18 = &v31 - v17;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  type metadata accessor for NewsActivity2.Article.PresentationContext(0);

  v33 = sub_219BE3204();
  v32 = sub_219BE1C44();
  (*(v15 + 16))(v18, v34, v14);
  v20 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v21 = (v16 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a5;
  (*(v15 + 32))(v23 + v20, v18, v14);
  *(v23 + v21) = v31;
  v24 = (v23 + v22);
  *v24 = sub_218846958;
  v24[1] = v19;
  v25 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  v27 = v35;
  v26 = v36;
  *v25 = v35;
  v25[1] = v26;

  v28 = v32;
  sub_219BE2F74();

  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  *(v29 + 24) = v26;

  v30 = sub_219BE2E54();
  sub_219BE2FD4();
}

void *sub_218AACE70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NewsActivity2.Article(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a2) = sub_219093144(3u, a2);
  v10 = objc_opt_self();
  v11 = &selRef_ignoreCacheCachePolicy;
  if ((a2 & 1) == 0)
  {
    v11 = &selRef_defaultCachePolicy;
  }

  v12 = [v10 *v11];
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2186C709C(0, &qword_280EE8970, MEMORY[0x277D30318], 1);
  result = sub_219BE1E34();
  if (v21)
  {
    sub_2186CB1F0(&v20, v22);
    sub_218AB0018(0, &unk_280EE6FA8, type metadata accessor for NewsActivity2.Article.PresentationContext, MEMORY[0x277D6CF30]);
    sub_218718690(v22, &v20);
    sub_218AB0388(a1, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NewsActivity2.Article);
    v14 = (*(v7 + 80) + 56) & ~*(v7 + 80);
    v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
    v16 = swift_allocObject();
    sub_2186CB1F0(&v20, v16 + 16);
    sub_218AAFD90(v9, v16 + v14, type metadata accessor for NewsActivity2.Article);
    *(v16 + v15) = v12;
    *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v3;
    v17 = v12;

    sub_219BE2F54();
    v18 = sub_219BE2E54();
    v19 = sub_219BE2FD4();

    __swift_destroy_boxed_opaque_existential_1(v22);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218AAD11C(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(void), void (*a5)(void *), uint64_t a6, void (*a7)(void), uint64_t a8)
{
  v64 = a8;
  v60 = a5;
  v61 = a6;
  v62 = a4;
  v63 = a3;
  v67 = a2;
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v58 = *(v10 - 8);
  v59 = v10;
  v57 = *(v58 + 64);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  v13 = sub_219BDD944();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NewsActivity2.Article(0);
  v55 = *(v16 - 8);
  v17 = *(v55 + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v56 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v52 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v52 - v22;
  v24 = type metadata accessor for NewsActivity2.Article.PresentationContext(0);
  MEMORY[0x28223BE20](v24);
  v26 = &v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB0388(a1, v26, type metadata accessor for NewsActivity2.Article.PresentationContext);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *(v26 + 3);
    v65[2] = *(v26 + 2);
    v65[3] = v27;
    v66 = *(v26 + 8);
    v28 = *(v26 + 1);
    v65[0] = *v26;
    v65[1] = v28;
    sub_218AAFD24(0);
    v30 = *(v29 + 48);
    v54 = type metadata accessor for NewsActivity2.Article;
    v31 = sub_218AAFD90(&v26[v30], v20, type metadata accessor for NewsActivity2.Article);
    MEMORY[0x28223BE20](v31);
    v32 = a7;
    v52 = a7;
    v33 = v63;
    *(&v52 - 6) = v67;
    *(&v52 - 5) = v33;
    *(&v52 - 4) = v65;
    *(&v52 - 3) = v20;
    v53 = v20;
    *(&v52 - 2) = v62;
    sub_218AAFE1C(0);
    sub_219BE3204();
    v34 = sub_219BE1C44();
    v35 = swift_allocObject();
    v35[2] = v60;
    v35[3] = v61;
    v35[4] = v32;
    v36 = v64;
    v35[5] = v64;

    v62 = sub_219BE2F74();

    v37 = v58;
    v38 = v33;
    v39 = v59;
    (*(v58 + 16))(v12, v38, v59);
    v40 = v20;
    v41 = v56;
    sub_218AB0388(v40, v56, type metadata accessor for NewsActivity2.Article);
    v42 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v43 = (v57 + *(v55 + 80) + v42) & ~*(v55 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = v52;
    *(v44 + 24) = v36;
    (*(v37 + 32))(v44 + v42, v12, v39);
    sub_218AAFD90(v41, v44 + v43, v54);

    v45 = sub_219BE2E54();
    type metadata accessor for Router();
    sub_219BE2FE4();
    sub_218AAFFC4(v65);

    v46 = v53;
  }

  else
  {
    v47 = v60;
    sub_218AAFD90(v26, v23, type metadata accessor for NewsActivity2.Article);
    sub_218AB0388(v23, v20, type metadata accessor for NewsActivity2.Article);
    sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

    sub_218AAFD90(v20, v15, MEMORY[0x277D2FB40]);
    v48 = sub_218AA2324(v63, v15, v62);
    sub_218AB0A34(v15, MEMORY[0x277D2FB40]);
    if (!v48)
    {
      v49 = sub_219BE7DB4();
      sub_218AB0CB4(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
      v50 = swift_allocError();
      (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D6DD50], v49);
      a7(v50);
      sub_218AB0A34(v23, type metadata accessor for NewsActivity2.Article);

      return;
    }

    v47(v48);

    v46 = v23;
  }

  sub_218AB0A34(v46, type metadata accessor for NewsActivity2.Article);
}

void *sub_218AAD82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v29 = type metadata accessor for NewsActivity2.Article;
  v7 = MEMORY[0x277D83D88];
  sub_218AB0018(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v26 - v9;
  v11 = sub_219BDD944();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NewsActivity2.Article(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 48);
  v30[2] = *(a3 + 32);
  v30[3] = v18;
  v31 = *(a3 + 64);
  v19 = *(a3 + 16);
  v30[0] = *a3;
  v30[1] = v19;
  sub_218AB0388(a4, v17, type metadata accessor for NewsActivity2.Article);
  sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  sub_218AAFD90(v17, v13, MEMORY[0x277D2FB40]);
  v20 = sub_219BDD8C4();
  v22 = v21;
  sub_218AB0A34(v13, MEMORY[0x277D2FB40]);
  sub_218AB0388(a4, v10, type metadata accessor for NewsActivity2.Article);
  (*(v15 + 56))(v10, 0, 1, v14);
  if (sub_219093144(2u, v26))
  {
    v23 = &unk_282A22288;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

  v24 = sub_219164728(v27, v30, v20, v22, v10, v23);

  sub_218744A50(v10, qword_280EE0178, v29, v7, sub_218AB0018);
  return v24;
}

void sub_218AADB34(id *a1, void (*a2)(void), uint64_t a3, void (*a4)(void *))
{
  if (*a1)
  {
    v5 = *a1;
    a2();
  }

  else
  {
    v7 = sub_219BE7DB4();
    sub_218AB0CB4(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
    v8 = swift_allocError();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D6DD50], v7);
    a4(v8);
  }
}

void sub_218AADC44(void *a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDD944();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB0388(a6, v12, type metadata accessor for NewsActivity2.Article);
  sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  sub_218AAFD90(v12, v15, MEMORY[0x277D2FB40]);
  v16 = sub_219BDD914();
  sub_218AB0A34(v15, MEMORY[0x277D2FB40]);
  sub_219BE7DB4();
  sub_218AB0CB4(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
  v17 = swift_allocError();
  sub_218AA7E8C(a1, a5, v16, v18);
  swift_unknownObjectRelease();
  a3(v17);
}

void sub_218AADE58(void *a1, void (*a2)(void *))
{
  v4 = sub_219BE7DB4();
  sub_218AB0CB4(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
  v5 = swift_allocError();
  v7 = v6;
  v6[3] = sub_219BDE254();
  v7[4] = sub_218AB0CB4(&qword_27CC0D7F8, MEMORY[0x277D2FEF0], MEMORY[0x277D2FED0]);
  __swift_allocate_boxed_opaque_existential_1(v7);
  v8 = a1;
  sub_219BDE224();
  (*(*(v4 - 8) + 104))(v7, *MEMORY[0x277D6DD60], v4);
  a2(v5);
}

uint64_t sub_218AADFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a4;
  v5[19] = a5;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  type metadata accessor for NewsActivity2.Article(0);
  v5[20] = swift_task_alloc();
  sub_219BDD944();
  v5[21] = swift_task_alloc();
  v6 = sub_219BDECA4();
  v5[22] = v6;
  v5[23] = *(v6 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  sub_219BF5BD4();
  v5[26] = sub_219BF5BC4();
  v8 = sub_219BF5B44();
  v5[27] = v8;
  v5[28] = v7;

  return MEMORY[0x2822009F8](sub_218AAE114, v8, v7);
}

uint64_t sub_218AAE114()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 136);
  __swift_project_boxed_opaque_existential_1(*(v0 + 128), *(*(v0 + 128) + 24));
  sub_218AB0388(v3, v2, type metadata accessor for NewsActivity2.Article);
  sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  sub_218AAFD90(v2, v1, MEMORY[0x277D2FB40]);
  *(v0 + 232) = sub_219BDED34();
  sub_218AB0A34(v1, MEMORY[0x277D2FB40]);
  v4 = swift_task_alloc();
  *(v0 + 240) = v4;
  *v4 = v0;
  v4[1] = sub_218AAE2A0;
  v5 = *(v0 + 200);

  return MEMORY[0x2821D23D8](v5);
}

uint64_t sub_218AAE2A0()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_218AAEA30;
  }

  else
  {

    v3 = *(v2 + 216);
    v4 = *(v2 + 224);
    v5 = sub_218AAE3BC;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_218AAE3BC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  (*(v3 + 16))(v1, *(v0 + 200), v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == *MEMORY[0x277D302C0])
  {
    v5 = *(v0 + 192);
    v6 = *(v0 + 176);
    v7 = *(v0 + 136);
    v8 = *(v0 + 120);
    v9 = *(*(v0 + 184) + 8);
    v9(*(v0 + 200), v6);

    v9(v5, v6);
    sub_218AB0388(v7, v8, type metadata accessor for NewsActivity2.Article);
    type metadata accessor for NewsActivity2.Article.PresentationContext(0);
LABEL_3:
    swift_storeEnumTagMultiPayload();

    v10 = *(v0 + 8);

    return v10();
  }

  if (v4 != *MEMORY[0x277D302B8])
  {
    return sub_219BF7514();
  }

  v12 = *(v0 + 192);
  v13 = *(v0 + 152);
  (*(*(v0 + 184) + 96))(v12, *(v0 + 176));
  v14 = *v12;
  *(v0 + 256) = *v12;
  v15 = v12[1];
  *(v0 + 264) = v15;

  __swift_project_boxed_opaque_existential_1((v13 + 16), *(v13 + 40));
  sub_2186C709C(0, &qword_280E90590, MEMORY[0x277D33670], 1);
  sub_219BE1E34();
  if (!*(v0 + 80))
  {
    v19 = *(v0 + 200);
    v20 = *(v0 + 176);
    v21 = *(v0 + 184);
    v22 = *(v0 + 136);
    v23 = *(v0 + 120);

    sub_218AB023C(v0 + 56);
    sub_218AAFD24(0);
    v25 = *(v24 + 48);
    (*(v21 + 8))(v19, v20);
    *v23 = v14;
    v23[1] = v15;
    v23[2] = MEMORY[0x277D84F90];
    v23[5] = 0x4000000000000000;
    sub_218AB0388(v22, v23 + v25, type metadata accessor for NewsActivity2.Article);
    type metadata accessor for NewsActivity2.Article.PresentationContext(0);
    goto LABEL_3;
  }

  v16 = *(v0 + 136);
  sub_2186CB1F0((v0 + 56), v0 + 16);
  *(v0 + 96) = sub_218AAEB80(v16);
  *(v0 + 104) = v17;
  *(v0 + 272) = v17;
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  *(v0 + 280) = sub_219BF1E64();
  v18 = swift_task_alloc();
  *(v0 + 288) = v18;
  *v18 = v0;
  v18[1] = sub_218AAE78C;

  return MEMORY[0x2821D23D8](v0 + 112);
}

uint64_t sub_218AAE78C()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {

    v3 = v2[27];
    v4 = v2[28];
    v5 = sub_218AAEACC;
  }

  else
  {
    v2[38] = v2[12];

    v3 = v2[27];
    v4 = v2[28];
    v5 = sub_218AAE8D4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_218AAE8D4()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 272);
  v13 = *(v0 + 256);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 136);
  v7 = *(v0 + 120);

  v8 = *(v0 + 112);
  sub_218AAFD24(0);
  v10 = *(v9 + 48);
  (*(v5 + 8))(v3, v4);
  *(v0 + 312) = 0;
  *v7 = v13;
  *(v7 + 16) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0x8000000000000000;
  *(v7 + 48) = v1;
  *(v7 + 56) = v2;
  *(v7 + 64) = MEMORY[0x277D84F90];
  sub_218AB0388(v6, v7 + v10, type metadata accessor for NewsActivity2.Article);
  type metadata accessor for NewsActivity2.Article.PresentationContext(0);
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_218AAEA30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218AAEACC()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_218AAEB80(uint64_t a1)
{
  v2 = sub_219BDD424();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BDD944();
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  sub_218AB0388(a1, v8, type metadata accessor for NewsActivity2.Article);
  sub_218AB0628(0, &qword_280EE8E00, MEMORY[0x277D2FB40], sub_2187B2E10);

  sub_218AAFD90(v8, v17, MEMORY[0x277D2FB40]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v3;
    v32 = v2;
    sub_218AB0388(v17, v11, MEMORY[0x277D2FB40]);
    sub_21896F9B8(0);
    v19 = v18;
    v20 = swift_projectBox();
    v21 = *(v19 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_218AB0388(a1, v8, type metadata accessor for NewsActivity2.Article);

      sub_218AAFD90(v8, v14, MEMORY[0x277D2FB40]);
      v22 = sub_219BDD8A4();
      sub_218AB0A34(v14, MEMORY[0x277D2FB40]);
    }

    else
    {
      sub_218AB0388(v20 + v21, v14, MEMORY[0x277D2FB40]);
      sub_2187B3004(0);
      v28 = *(v27 + 48);
      sub_219BDEA64();
      v22 = sub_219BDD404();

      (*(v31 + 8))(v5, v32);
      v29 = sub_219BDE294();
      (*(*(v29 - 8) + 8))(&v14[v28], v29);
    }
  }

  else
  {
    sub_218AB0388(v17, v14, MEMORY[0x277D2FB40]);
    sub_2187B3004(0);
    v23 = v2;
    v25 = *(v24 + 48);
    sub_219BDEA64();
    v22 = sub_219BDD404();

    (*(v3 + 8))(v5, v23);
    v26 = sub_219BDE294();
    (*(*(v26 - 8) + 8))(&v14[v25], v26);
  }

  sub_218AB0A34(v17, MEMORY[0x277D2FB40]);
  return v22;
}

void sub_218AAF004(void *a1)
{
  if (qword_27CC08580 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8A50);
  v3 = a1;
  oslog = sub_219BE5414();
  v4 = sub_219BF61F4();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_2186C1000, oslog, v4, "Router unable to load article presentation context, error: %@", v5, 0xCu);
    sub_218AB0A34(v6, sub_2189B3F3C);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }
}

void sub_218AAF164(void (*a1)(void **), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5, uint64_t a6)
{
  v33 = a6;
  v34 = a4;
  v32 = a3;
  v8 = sub_219BDB954();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v28 - v17;
  v19 = [a5 routeURL];
  if (v19)
  {
    v20 = v19;
    sub_219BDB8B4();

    v31 = *(v9 + 32);
    v29 = v18;
    v31(v18, v14, v8);
    v21 = sub_219BE7DB4();
    sub_218AB0CB4(&qword_27CC0D7F0, MEMORY[0x277D6DD70], MEMORY[0x277D6DD78]);
    v30 = swift_allocError();
    v23 = v22;
    v24 = swift_allocObject();
    swift_weakInit();
    (*(v9 + 16))(v11, v18, v8);
    v25 = (*(v9 + 80) + 24) & ~*(v9 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    v31((v26 + v25), v11, v8);
    *v23 = sub_218AB1004;
    v23[1] = v26;
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D6DD58], v21);

    v27 = v30;
    v32(v30);
    (*(v9 + 8))(v29, v8);
  }

  else
  {
    v35 = a5;
    a1(&v35);
  }
}

uint64_t sub_218AAF464(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_218718690(result + 592, v3);

    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_219BE6DC4();
    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  return result;
}

void sub_218AAF4FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = sub_2189EB59C;
  v13[5] = v12;
  v15[4] = sub_218AB0FF0;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_219165148;
  v15[3] = &block_descriptor_16;
  v14 = _Block_copy(v15);

  [a5 checkAccessToItem:a6 withQualityOfService:25 completion:v14];
  _Block_release(v14);
}

void sub_218AAF63C(char a1, uint64_t a2, id a3, void (*a4)(id), uint64_t a5, void (*a6)(void))
{
  if (a3)
  {
    v8 = a3;
    a4(a3);
    v9 = a3;
  }

  else
  {
    v11 = [objc_allocWithZone(MEMORY[0x277D30DA0]) initWithCanAccess:a1 & 1 blockedReason:a2];
    a6();
    v9 = v11;
  }
}

double sub_218AAF720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218AB0018(0, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_219BE92E4();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = sub_219BE9EC4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    v21 = sub_218CF8A44(a2, a3);
    if (v21)
    {
      v37 = *(v20 + 56);
      v34 = v17;
      v22 = v8;
      v23 = *MEMORY[0x277D6E530];
      v36 = v21;
      v24 = sub_219BE92D4();
      v39 = v14;
      v25 = v24;
      v26 = *(v24 - 8);
      v35 = v7;
      v27 = *(v26 + 104);
      v27(v13, v23, v24);
      v28 = *MEMORY[0x277D6E518];
      v38 = v15;
      v29 = *(v40 + 104);
      v29(v13, v28, v22);
      v27(v10, *MEMORY[0x277D6E538], v25);
      v29(v10, v28, v22);
      v30 = v34;
      sub_219BE9EB4();
      v31 = sub_219BE94F4();
      v32 = v35;
      (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
      v33 = v36;
      sub_21909BA64(v36, v30, v32);

      sub_218744A50(v32, &unk_280EE4470, MEMORY[0x277D6E658], MEMORY[0x277D83D88], sub_218AB0018);
      (*(v38 + 8))(v30, v39);
    }
  }

  return result;
}

void sub_218AAFB68(uint64_t a1)
{
  if (!qword_280EE69A0)
  {
    sub_2186C6148(255, &qword_280E8E480, 0x277D75D28);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE69A0);
    }
  }
}

void sub_218AAFC04(uint64_t a1)
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218AAD11C(a1, *(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_218AAFD24(uint64_t a1)
{
  if (!qword_280EE0290)
  {
    type metadata accessor for NewsActivity2.Article(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE0290);
    }
  }
}

uint64_t sub_218AAFD90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_218AAFE1C(uint64_t a1)
{
  if (!qword_280E8E478)
  {
    sub_2186C6148(255, &qword_280E8E480, 0x277D75D28);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8E478);
    }
  }
}

void sub_218AAFEA4(void *a1, uint64_t a2)
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v6 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);
  v8 = *(type metadata accessor for NewsActivity2.Article(0) - 8);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  sub_218AADC44(a1, a2, v9, v10, v2 + v6, v11);
}

void sub_218AB0018(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218AB007C(uint64_t a1, uint64_t a2)
{
  sub_218AB0018(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218AB0114(uint64_t a1)
{
  v4 = *(type metadata accessor for NewsActivity2.Article(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187608D4;

  return sub_218AADFB4(a1, v1 + 16, v1 + v5, v7, v8);
}

uint64_t sub_218AB023C(uint64_t a1)
{
  sub_2186E7C18(0, &unk_27CC0D808, &qword_280E90590, MEMORY[0x277D33670], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218AB02C4(uint64_t a1)
{
  if (!qword_280E90738)
  {
    sub_219BDDC54();
    sub_218AB0CB4(&qword_280EE8D50, MEMORY[0x277D2FCB0], MEMORY[0x277D2FCA8]);
    v1 = sub_219BF1B54();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90738);
    }
  }
}

uint64_t sub_218AB0388(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218AB03F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDD944();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_218AB0454()
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_219BDD944() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_218AA3CCC(v6, v0 + v2, v0 + v5, v7);
}

uint64_t sub_218AB0588()
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = *(v0 + 56);
  v3 = v0 + ((*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80));

  return sub_218AA4188(v0 + 16, v2, v3);
}

void sub_218AB0628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

uint64_t sub_218AB06A4(uint64_t a1, uint64_t a2)
{
  sub_218AB0018(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218AB0738(void *a1)
{
  v3 = *(sub_219BDD944() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v7 = (v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = *(sub_219BE3D44() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_219BDDD44() - 8);
  v13 = v1 + ((v10 + v11 + *(v12 + 80)) & ~*(v12 + 80));

  return sub_218AA87E8(a1, v1 + v4, v1 + v7, v1 + v10, v13);
}

void *sub_218AB0904(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_219BE3D44() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = *(v2 + ((v8 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_218AAAB10(a1, a2, v9, v2 + v6, (v2 + v7), v2 + v8, v10);
}

void sub_218AB09CC(uint64_t a1)
{
  if (!qword_280E8F800)
  {
    sub_219BE3D44();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F800);
    }
  }
}

uint64_t sub_218AB0A34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218AB0ACC(void **a1, void *a2)
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v6 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_218AA6F9C(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), (v2 + v6), *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_218AB0BD8(void *a1)
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_218AA7CAC(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_218AB0CB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_23Tm()
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  v8 = (v4 + v5 + *(v7 + 80)) & ~*(v7 + 80);

  (*(v3 + 8))(v0 + v4, v2);
  (*(v7 + 8))(v0 + v8, v6);

  return swift_deallocObject();
}

void *sub_218AB0E84()
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_219BDB954() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_218AA7928(v5, v0 + v2, v6);
}

void sub_218AB0F94(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BE3114();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_218AB1004()
{
  v1 = *(sub_219BDB954() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_218AAF464(v2, v3);
}

void sub_218AB1068(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_218AB10D0(uint64_t a1)
{
  sub_218AB1068(0, &qword_280E907A0, sub_2186F7720, &type metadata for TagFeedOfflineModel, MEMORY[0x277D33530]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_218AB1164(uint64_t a1)
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);

  return sub_218AAC6EC(a1);
}

double sub_218AB1228(uint64_t a1, uint64_t a2)
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v6 = (*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_219BDB954() - 8);
  return sub_218AAB744(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v8 + 80) + 16) & ~*(v8 + 80)));
}

double sub_218AB1374()
{
  sub_218AB1068(0, &qword_280EE3A00, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6EBA0]);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(sub_219BDB954() - 8);
  return sub_218AAF720(*(v0 + 16), v0 + v2, v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

void sub_218AB1540(uint64_t a1)
{
  if (!qword_27CC0D820)
  {
    sub_21883D9C8(255, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0D820);
    }
  }
}

uint64_t sub_218AB15BC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

void sub_218AB1674()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v62 = &v58 - v8;
  v9 = type metadata accessor for EmailSignupViewModel.Asset(0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = (&v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65.receiver = v1;
  v65.super_class = ObjectType;
  v61 = ObjectType;
  objc_msgSendSuper2(&v65, sel_viewDidLoad, v10);
  v13 = *&v1[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_obController];
  [v13 setModalPresentationStyle_];
  [v1 addChildViewController_];
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_21;
  }

  v15 = v14;
  v59 = v6;
  v60 = v4;
  v16 = [v13 view];
  if (!v16)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = v16;
  [v15 addSubview_];

  [v13 didMoveToParentViewController_];
  v18 = &v1[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_model];
  v63 = type metadata accessor for EmailSignupViewModel(0);
  v19 = v18;
  v20 = &v18[*(v63 + 28)];
  v21 = *(v20 + 1);
  if (v21)
  {
    v22 = v3;
    v23 = *v20;

    v24 = [v13 buttonTray];
    sub_21871D24C();
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_219C09BA0;
    *(v25 + 32) = v23;
    *(v25 + 40) = v21;
    v3 = v22;
    v26 = sub_219BF5904();

    [v24 setPrivacyLinkForBundles_];
  }

  v27 = [v13 headerView];
  [v27 setAllowFullWidthIcon_];

  sub_218AB3C18(&v19[*(v63 + 24)], v12, type metadata accessor for EmailSignupViewModel.Asset);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *v12;
    v28 = v12[1];
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v31 = [objc_opt_self() bundleForClass_];
    v32 = sub_219BF53D4();
    v33 = [objc_opt_self() imageNamed:v32 inBundle:v31 withConfiguration:0];

    if (v33)
    {

      [*&v1[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_imageView] setImage_];
    }

    else
    {
      if (qword_27CC085A8 != -1)
      {
        swift_once();
      }

      v40 = sub_219BE5434();
      __swift_project_value_buffer(v40, qword_27CCD8AB0);

      v33 = sub_219BE5414();
      v41 = sub_219BF61F4();

      if (os_log_type_enabled(v33, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v64 = v43;
        *v42 = 136315138;
        v44 = sub_2186D1058(v29, v28, &v64);

        *(v42 + 4) = v44;
        _os_log_impl(&dword_2186C1000, v33, v41, "Failed to load image for identifier: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x21CECF960](v43, -1, -1);
        MEMORY[0x21CECF960](v42, -1, -1);
      }

      else
      {
      }
    }

    v48 = [v13 contentView];
    [v48 addSubview_];
  }

  else
  {
    v34 = v60;
    v35 = v62;
    (*(v60 + 32))(v62, v12, v3);
    sub_2186C6148(0, &unk_27CC0D830, 0x277CD9F28);
    v36 = v59;
    (*(v34 + 16))(v59, v35, v3);
    v37 = sub_219BF5414();
    v39 = sub_218AB1E48(v36, v37, v38, 0);
    if (v39)
    {
      v45 = *&v1[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_micaView];
      v46 = v39;
      sub_219BEB024();
      sub_219BEB034();
      v47 = [v13 contentView];
      [v47 addSubview_];
    }

    (*(v34 + 8))(v35, v3);
  }

  [*&v1[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_contentViewHeightConstraint] setActive_];
  v49 = *&v1[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_signupButton];
  v50 = sub_219BF53D4();
  [v49 setTitle:v50 forState:0];

  [v49 addTarget:v1 action:sel_signup forControlEvents:64];
  v51 = [v13 buttonTray];
  [v51 addButton_];

  v52 = *&v1[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_notNowButton];
  v53 = sub_219BF53D4();
  [v52 setTitle:v53 forState:0];

  [v52 addTarget:v1 action:sel_notNow forControlEvents:64];
  v54 = [v13 buttonTray];
  [v54 addButton_];

  v55 = [v1 view];
  if (v55)
  {
    v56 = v55;
    v57 = [objc_opt_self() systemBackgroundColor];
    [v56 setBackgroundColor_];

    return;
  }

LABEL_22:
  __break(1u);
}

id sub_218AB1E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_219BDB854();
  v7 = sub_219BF53D4();

  if (a4)
  {
    v8 = sub_219BF5204();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_219BDB954();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_219BDB724();

    swift_willThrow();
    v15 = sub_219BDB954();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

void sub_218AB2404()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = v1;
  [v1 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v35.origin.x = v4;
  v35.origin.y = v6;
  v35.size.width = v8;
  v35.size.height = v10;
  Width = CGRectGetWidth(v35);
  v33 = [*&v0[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_obController] view];
  if (!v33)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = [v0 view];
  if (!v12)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v12;
  [v12 frame];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v36.origin.x = v15;
  v36.origin.y = v17;
  v36.size.width = v19;
  v36.size.height = v21;
  v22 = CGRectGetWidth(v36);
  v23 = [v0 view];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v24 = v23;
  if (Width > 465.0)
  {
    Width = 465.0;
  }

  [v23 frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v37.origin.x = v26;
  v37.origin.y = v28;
  v37.size.width = v30;
  v37.size.height = v32;
  [v33 setFrame_];
}

id sub_218AB25C4()
{
  v1 = v0;
  v2 = sub_219BED174();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BED1D4();
  v6 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EmailSignupViewModel.Asset(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v1[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_model];
  v13 = type metadata accessor for EmailSignupViewModel(0);
  sub_218AB3C18(&v12[*(v13 + 24)], v11, type metadata accessor for EmailSignupViewModel.Asset);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_218AB3C80(v11, type metadata accessor for EmailSignupViewModel.Asset);
    v14 = *&v1[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_imageView];
  }

  else
  {
    v14 = *&v1[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_micaView];
    sub_218AB3C80(v11, type metadata accessor for EmailSignupViewModel.Asset);
  }

  result = [*&v1[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_obController] view];
  if (result)
  {
    v16 = result;
    [result bounds];
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v33.origin.x = v18;
    v33.origin.y = v20;
    v33.size.width = v22;
    v33.size.height = v24;
    CGRectGetHeight(v33);
    [v14 frame];
    [v14 setFrame_];
    [v14 setHidden_];
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v25 = sub_219BF66A4();
    v26 = swift_allocObject();
    *(v26 + 16) = v1;
    *(v26 + 24) = v14;
    *(v26 + 32) = xmmword_219C18510;
    aBlock[4] = sub_218AB3CE0;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_7;
    v27 = _Block_copy(aBlock);
    v28 = v1;
    v29 = v14;

    sub_219BED1A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_218A72744();
    sub_21874E58C(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    sub_219BF7164();
    MEMORY[0x21CECD460](0, v8, v5, v27);
    _Block_release(v27);

    (*(v3 + 8))(v5, v2);
    return (*(v6 + 8))(v8, v31);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_218AB2BCC(uint64_t a1, void *a2, double a3, double a4)
{
  v8 = *(a1 + OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_obController);
  v9 = [v8 contentView];
  result = [v8 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v11 = result;
  result = [v9 superview];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = result;
  [v9 frame];
  [v12 convertPoint:v11 toCoordinateSpace:?];
  v14 = v13;

  v15 = [v8 buttonTray];
  result = [v8 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v16 = result;
  result = [v15 superview];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = result;
  [v15 frame];
  [v17 convertPoint:v16 toCoordinateSpace:?];
  v19 = v18;

  result = [v8 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = result;
  [result frame];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v43.origin.x = v22;
  v43.origin.y = v24;
  v43.size.width = v26;
  v43.size.height = v28;
  Width = CGRectGetWidth(v43);
  [a2 frame];
  v30 = CGRectGetWidth(v44);
  [a2 frame];
  v31 = CGRectGetWidth(v45);
  [a2 frame];
  Height = CGRectGetHeight(v46);
  result = [v8 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v33 = result;
  result = [a2 superview];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v34 = result;
  [result convertPoint:v33 fromCoordinateSpace:{round((Width - v30) * 0.5 + v31 * a3 * 0.5), round((v14 + v19 - Height) * 0.5)}];
  v36 = v35;
  v38 = v37;

  [a2 frame];
  [a2 setFrame_];

  [a2 frame];
  [a2 frame];
  [a2 setFrame_];
  v39 = *(a1 + OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_contentViewHeightConstraint);
  [a2 frame];
  v41 = v40;
  [a2 frame];
  [v39 setConstant_];

  return [a2 setHidden_];
}

void sub_218AB2F3C(void **a1, uint64_t a2)
{
  v4 = sub_219BED174();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BED1D4();
  v8 = *(v26 - 8);
  *&v9 = MEMORY[0x28223BE20](v26).n128_u64[0];
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = [v12 text];
  if (v13)
  {
    v14 = v13;
    v15 = sub_219BF5414();
    v17 = v16;

    if (v15 == *(a2 + OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_model) && v17 == *(a2 + OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_model + 8))
    {

      v20 = v5;
    }

    else
    {
      v19 = sub_219BF78F4();

      v20 = v5;
      if ((v19 & 1) == 0)
      {
        return;
      }
    }

    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v21 = sub_219BF66A4();
    v22 = swift_allocObject();
    *(v22 + 16) = v12;
    aBlock[4] = sub_218AB3C10;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_17;
    v23 = _Block_copy(aBlock);
    v24 = v12;

    sub_219BED1A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_218A72744();
    sub_21874E58C(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    sub_219BF7164();
    MEMORY[0x21CECD460](0, v11, v7, v23);
    _Block_release(v23);

    (*(v20 + 8))(v7, v4);
    (*(v8 + 8))(v11, v26);
  }
}

void sub_218AB327C(void *a1)
{
  v2 = [a1 font];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    [v3 pointSize];
    v6 = v5;

    v7 = [v4 systemFontOfSize:v6 weight:*MEMORY[0x277D74400]];
    [a1 setFont_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for EmailSignupViewController(uint64_t a1)
{
  result = qword_280EBF000;
  if (!qword_280EBF000)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218AB3494(uint64_t a1)
{
  result = type metadata accessor for EmailSignupViewModel(319);
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

char *sub_218AB354C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_micaView;
  sub_219BEB054();
  *&v3[v8] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_imageView;
  *&v3[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v10 = OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_signupButton;
  *&v3[v10] = [objc_opt_self() boldButton];
  v11 = OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_notNowButton;
  *&v3[v11] = [objc_opt_self() linkButton];
  v12 = &v3[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_eventHandler];
  *v12 = a2;
  *(v12 + 1) = a3;
  sub_218AB3C18(a1, &v3[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_model], type metadata accessor for EmailSignupViewModel);
  v13 = objc_allocWithZone(MEMORY[0x277D37698]);
  swift_unknownObjectRetain();

  v14 = sub_219BF53D4();

  v15 = sub_219BF53D4();

  v16 = [v13 initWithTitle:v14 detailText:v15 icon:0];

  *&v3[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_obController] = v16;
  v17 = [v16 contentView];
  v18 = [v17 heightAnchor];

  v19 = [v18 constraintEqualToConstant_];
  *&v3[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_contentViewHeightConstraint] = v19;
  v31.receiver = v3;
  v31.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v31, sel_initWithNibName_bundle_, 0, 0);
  v21 = *&v20[OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_eventHandler + 8];
  v22 = swift_getObjectType();
  v23 = *(v21 + 16);
  v24 = v20;
  swift_unknownObjectRetain();
  v23(v20, &off_282A35318, v22, v21);
  swift_unknownObjectRelease();
  [v24 setModalPresentationStyle_];
  v25 = [objc_opt_self() currentDevice];
  v26 = [v25 userInterfaceIdiom];

  if (v26 == 1 && (v27 = [v24 traitCollection], v28 = objc_msgSend(v27, sel_horizontalSizeClass), v27, v28 == 2))
  {
    v29 = 800.0;
  }

  else
  {
    v29 = 620.0;
  }

  [v24 setPreferredContentSize_];

  sub_218AB3C80(a1, type metadata accessor for EmailSignupViewModel);
  return v24;
}

void sub_218AB3900()
{
  v1 = OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_micaView;
  sub_219BEB054();
  *(v0 + v1) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v2 = OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_imageView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_signupButton;
  *(v0 + v3) = [objc_opt_self() boldButton];
  v4 = OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_notNowButton;
  *(v0 + v4) = [objc_opt_self() linkButton];
  sub_219BF7514();
  __break(1u);
}

id sub_218AB3A14(char a1)
{
  v3 = &selRef_showsBusyIndicator;
  if ((a1 & 1) == 0)
  {
    v3 = &selRef_hidesBusyIndicator;
  }

  [*(v1 + OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_signupButton) *v3];
  v4 = *(v1 + OBJC_IVAR____TtC7NewsUI225EmailSignupViewController_notNowButton);

  return [v4 setEnabled_];
}

void sub_218AB3A8C(void *a1, uint64_t a2, void *a3)
{
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v17 = v6;
    v7 = a3;
    v8 = a1;
    sub_218AB2F3C(&v17, v7);
  }

  else
  {
    v9 = a3;
  }

  v10 = [a1 subviews];
  sub_2186C6148(0, &qword_280E8DAE0, 0x277D75D18);
  v11 = sub_219BF5924();

  if (v11 >> 62)
  {
    v12 = sub_219BF7214();
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_13;
    }
  }

  if (v12 < 1)
  {
    __break(1u);
    return;
  }

  v13 = 0;
  do
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x21CECE0F0](v13, v11);
    }

    else
    {
      v14 = *(v11 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    v16 = a3;
    sub_218AB3A8C(v15, a2, v16);
  }

  while (v12 != v13);
LABEL_13:
}

uint64_t sub_218AB3C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218AB3C80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218AB3CEC(uint64_t a1)
{
  sub_21874E58C(0, &qword_280EE59F8, MEMORY[0x277D6D680], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218AB3D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218760638(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB5BE8(a3, v11);
  v12 = sub_219BF5BF4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2187605DC(v11);
  }

  else
  {
    sub_219BF5BE4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_219BF5B44();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_219BF54B4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2187605DC(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2187605DC(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_218AB4038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218760638(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB5BE8(a3, v11);
  v12 = sub_219BF5BF4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2187605DC(v11);
  }

  else
  {
    sub_219BF5BE4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_219BF5B44();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_219BF54B4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2187605DC(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2187605DC(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_218AB42E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218760638(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB5BE8(a3, v11);
  v12 = sub_219BF5BF4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2187605DC(v11);
  }

  else
  {
    sub_219BF5BE4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_219BF5B44();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_219BF54B4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_218AB5E74();

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2187605DC(v25[0]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2187605DC(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_218AB5E74();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_218AB45AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_218760638(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB5BE8(a3, v11);
  v12 = sub_219BF5BF4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2187605DC(v11);
  }

  else
  {
    sub_219BF5BE4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_219BF5B44();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v25[0] = a3;
      v19 = sub_219BF54B4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_219BE2874();

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2187605DC(v25[0]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2187605DC(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  sub_219BE2874();
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

unint64_t RecentSearchManager.addRecentSearchObserver(_:for:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v9 = type metadata accessor for DisposableRecentSearchObserver();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v10 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  *(v10 + 40) = a3;
  v11 = OBJC_IVAR____TtC7NewsUI219RecentSearchManager_observers;
  swift_beginAccess();

  MEMORY[0x21CECC690](v12);
  if (*((*(v5 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v5 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  swift_endAccess();
  a4[3] = v9;
  result = sub_218AB49C8();
  a4[4] = result;
  *a4 = v10;
  return result;
}

unint64_t sub_218AB49C8()
{
  result = qword_280EAD188;
  if (!qword_280EAD188)
  {
    type metadata accessor for DisposableRecentSearchObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAD188);
  }

  return result;
}

void RecentSearchManager.add(recentSearch:for:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return;
  }

  v5 = v3;
  v6 = a3;
  sub_218D5E2B4(a1, a2, a3);
  v7 = OBJC_IVAR____TtC7NewsUI219RecentSearchManager_observers;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (v8 >> 62)
  {
    goto LABEL_36;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9)
  {
    goto LABEL_6;
  }

  while (2)
  {
    while (2)
    {
      v6 = *(v3 + v7);
      v17 = MEMORY[0x277D84F90];
      if (v6 >> 62)
      {
        v8 = sub_219BF7214();
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v8)
      {
        v15 = MEMORY[0x277D84F90];
LABEL_33:

        *(v5 + v7) = v15;

        return;
      }

      v16 = v7;
      v14 = 0;
      while ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v14, v6);
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          v7 = v16;
          v15 = v17;
          goto LABEL_33;
        }

LABEL_26:
        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        else
        {
        }

        ++v14;
        if (v7 == v8)
        {
          goto LABEL_31;
        }
      }

      if (v14 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {

        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      __break(1u);
LABEL_36:
      v9 = sub_219BF7214();
      if (!v9)
      {
        continue;
      }

      break;
    }

LABEL_6:
    if (v9 >= 1)
    {

      for (i = 0; i != v9; ++i)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x21CECE0F0](i, v8);
        }

        else
        {
          v11 = *(v8 + 8 * i + 32);
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          if (*(v11 + 40) == v6)
          {
            if (swift_unknownObjectWeakLoadStrong())
            {
              v12 = *(v11 + 24);
              ObjectType = swift_getObjectType();
              (*(v12 + 8))(ObjectType, v12);
              swift_unknownObjectRelease();
            }
          }
        }
      }

      continue;
    }

    break;
  }

  __break(1u);
}

uint64_t RecentSearchManager.clearRecentSearches(for:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x2822009F8](sub_218AB4CD0, 0, 0);
}

void sub_218AB4CD0()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = [objc_opt_self() standardUserDefaults];
  sub_2199D2DF8(v1);
  v4 = sub_219BF53D4();

  [v3 setValue:0 forKey:v4];

  v5 = OBJC_IVAR____TtC7NewsUI219RecentSearchManager_observers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
LABEL_35:
    v7 = sub_219BF7214();
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x21CECE0F0](i, v6);
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    if (swift_unknownObjectWeakLoadStrong() && (v10 = v0[5], swift_unknownObjectRelease(), *(v9 + 40) == v10) && swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v9 + 24);
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(ObjectType, v11);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_15:
  v6 = *(v2 + v5);
  v19 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    v13 = sub_219BF7214();
  }

  else
  {
    v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v13)
  {
    v17 = v5;
    v18 = v2;
    v14 = 0;
    v2 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v14, v6);
        v5 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_28:
          __break(1u);
LABEL_29:
          v2 = v18;
          v15 = v19;
          v5 = v17;
          goto LABEL_31;
        }
      }

      else
      {
        if (v14 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_35;
        }

        v5 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_28;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      else
      {
      }

      ++v14;
      if (v5 == v13)
      {
        goto LABEL_29;
      }
    }
  }

  v15 = MEMORY[0x277D84F90];
LABEL_31:

  *(v2 + v5) = v15;

  v16 = v0[1];

  v16(1);
}

id RecentSearchManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecentSearchManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_218AB5114(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_218AB51A8;

  return RecentSearchManager.clearRecentSearches(for:)(a1);
}

uint64_t sub_218AB51A8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

double RecentSearchManager.readingHistoryDidClear(_:)()
{
  sub_218760638(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF5BF4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;
  v6 = v0;
  sub_218AB4038(0, 0, v3, &unk_219C185A0, v5);

  return result;
}

uint64_t sub_218AB53A0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_218AB5438;

  return RecentSearchManager.clearRecentSearches(for:)(6);
}

uint64_t sub_218AB5438(char a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_218AB5538, 0, 0);
}

uint64_t sub_218AB5658()
{
  sub_218774F78(v0 + 16);
  sub_218774F78(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_218AB56B8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187609D0;

  return v6(a1);
}

uint64_t sub_218AB57B0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_218AB58A4;

  return v5(v2 + 32);
}

uint64_t sub_218AB58A4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_218AB59B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187609C8;

  return sub_218AB53A0(a1);
}

uint64_t dispatch thunk of RecentSearchManagerType.clearRecentSearches(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_218AB51A8;

  return v9(a1, a2, a3);
}

uint64_t sub_218AB5BE8(uint64_t a1, uint64_t a2)
{
  sub_218760638(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218AB5C4C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218AB56B8(a1, v4);
}

uint64_t sub_218AB5D04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187608D4;

  return sub_218AB56B8(a1, v4);
}

uint64_t sub_218AB5DBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218AB57B0(a1, v4);
}

void sub_218AB5E74()
{
  if (!qword_280E8B4E0)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8B4E0);
    }
  }
}

uint64_t sub_218AB5EC8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_218AB53A0(a1);
}

uint64_t sub_218AB5F7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218AB57B0(a1, v4);
}

uint64_t sub_218AB6034()
{
  sub_218A264C8(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_218AB609C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v156 = a3;
  v158 = a1;
  v159 = a2;
  v157 = a4;
  v4 = type metadata accessor for CuratedAudioFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for PaywallAudioFeedGroup(0);
  MEMORY[0x28223BE20](v138);
  v137 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v142 = (&v132 - v9);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup(0);
  MEMORY[0x28223BE20](AudioFeedGroup);
  v151 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for AudioFeedModel(0);
  v11 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v132 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v132 - v14);
  sub_218AB7640(0);
  v161 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v132 = &v132 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v134 = &v132 - v20;
  MEMORY[0x28223BE20](v21);
  v133 = &v132 - v22;
  sub_218AB76D4(0);
  MEMORY[0x28223BE20](v23 - 8);
  v141 = &v132 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v135 = &v132 - v26;
  MEMORY[0x28223BE20](v27);
  v140 = &v132 - v28;
  MEMORY[0x28223BE20](v29);
  v139 = &v132 - v30;
  v31 = sub_219BF1904();
  v154 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v153 = &v132 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for AudioFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v33);
  v149 = &v132 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v150 = &v132 - v36;
  MEMORY[0x28223BE20](v37);
  v143 = &v132 - v38;
  MEMORY[0x28223BE20](v39);
  v41 = &v132 - v40;
  MEMORY[0x28223BE20](v42);
  v147 = &v132 - v43;
  MEMORY[0x28223BE20](v44);
  v148 = &v132 - v45;
  MEMORY[0x28223BE20](v46);
  v145 = &v132 - v47;
  MEMORY[0x28223BE20](v48);
  v146 = &v132 - v49;
  v50 = type metadata accessor for ForYouAudioFeedGroup(0);
  MEMORY[0x28223BE20](v50);
  v144 = &v132 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for AudioFeedGroup(0);
  MEMORY[0x28223BE20](v52);
  v54 = &v132 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB78C0(v158, v54, type metadata accessor for AudioFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v158 = v11;
    v152 = v33;
    if (EnumCaseMultiPayload)
    {
      v86 = v151;
      sub_218AB7858(v54, v151, type metadata accessor for UpNextAudioFeedGroup);
      v87 = v148;
      sub_218AB78C0(v86, v148, type metadata accessor for UpNextAudioFeedGroup);
      swift_storeEnumTagMultiPayload();
      v88 = *(v155 + 2);
      v89 = v153;
      sub_219BED874();
      v90 = sub_218C167E8();
      v92 = v91;
      v93 = sub_219BF18F4();
      MEMORY[0x28223BE20](v93);
      v94 = MEMORY[0x277D84F90];
      *(&v132 - 6) = v159;
      *(&v132 - 5) = v94;
      v95 = v156;
      *(&v132 - 4) = v88;
      *(&v132 - 3) = v95;
      *(&v132 - 2) = v90;
      *(&v132 - 1) = v92;
      sub_218DDE3AC(sub_218AB79AC, (&v132 - 8), v93);
      v97 = v96;

      (*(v154 + 8))(v89, v31);
      sub_218AB78C0(v87, v147, type metadata accessor for AudioFeedSectionDescriptor);
      v98 = *(v97 + 16);
      v99 = v160;
      if (v98)
      {
        v163 = MEMORY[0x277D84F90];
        sub_218C34778(0, v98, 0);
        v100 = v163;
        v101 = *(v158 + 80);
        v156 = v97;
        v102 = v97 + ((v101 + 32) & ~v101);
        v159 = *(v158 + 72);
        v103 = v134;
        do
        {
          sub_218AB78C0(v102, v15, type metadata accessor for AudioFeedModel);
          sub_218AB78C0(v15, v99, type metadata accessor for AudioFeedModel);
          sub_218AB77B8(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
          sub_219BE5FB4();
          sub_218AB794C(v15, type metadata accessor for AudioFeedModel);
          v163 = v100;
          v105 = *(v100 + 2);
          v104 = *(v100 + 3);
          if (v105 >= v104 >> 1)
          {
            sub_218C34778((v104 > 1), v105 + 1, 1);
            v100 = v163;
          }

          *(v100 + 2) = v105 + 1;
          (*(v17 + 32))(&v100[((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v105], v103, v161);
          v102 += v159;
          --v98;
        }

        while (v98);
      }

      else
      {

        v100 = MEMORY[0x277D84F90];
      }

      v128 = sub_218AB77B8(&qword_280EE5CB8, sub_218AB7640, MEMORY[0x277D6D408]);
      v129 = sub_218AB77B8(&unk_280EE5CC0, sub_218AB7640, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v100, v161, v128, v129);
      sub_218AB77B8(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23DFC);
      sub_218AB77B8(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
      sub_219BE6924();
      sub_218AB794C(v148, type metadata accessor for AudioFeedSectionDescriptor);
      v84 = type metadata accessor for UpNextAudioFeedGroup;
      v85 = v151;
    }

    else
    {
      v56 = v144;
      sub_218AB7858(v54, v144, type metadata accessor for ForYouAudioFeedGroup);
      v57 = v146;
      sub_218AB78C0(v56, v146, type metadata accessor for ForYouAudioFeedGroup);
      swift_storeEnumTagMultiPayload();
      v58 = *(v155 + 2);
      v59 = v153;
      sub_219BED874();
      v60 = sub_218C167E8();
      v62 = v61;
      v63 = sub_219BF18F4();
      MEMORY[0x28223BE20](v63);
      v64 = MEMORY[0x277D84F90];
      *(&v132 - 6) = v159;
      *(&v132 - 5) = v64;
      v65 = v156;
      *(&v132 - 4) = v58;
      *(&v132 - 3) = v65;
      *(&v132 - 2) = v60;
      *(&v132 - 1) = v62;
      sub_218DDE3AC(sub_218AB79AC, (&v132 - 8), v63);
      v67 = v66;

      (*(v154 + 8))(v59, v31);
      sub_218AB78C0(v57, v145, type metadata accessor for AudioFeedSectionDescriptor);
      v68 = *(v67 + 16);
      v69 = v160;
      if (v68)
      {
        v163 = MEMORY[0x277D84F90];
        sub_218C34778(0, v68, 0);
        v70 = v163;
        v71 = *(v158 + 80);
        v156 = v67;
        v72 = v67 + ((v71 + 32) & ~v71);
        v159 = *(v158 + 72);
        v73 = v133;
        do
        {
          sub_218AB78C0(v72, v15, type metadata accessor for AudioFeedModel);
          sub_218AB78C0(v15, v69, type metadata accessor for AudioFeedModel);
          sub_218AB77B8(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
          sub_219BE5FB4();
          sub_218AB794C(v15, type metadata accessor for AudioFeedModel);
          v163 = v70;
          v75 = *(v70 + 2);
          v74 = *(v70 + 3);
          if (v75 >= v74 >> 1)
          {
            sub_218C34778((v74 > 1), v75 + 1, 1);
            v70 = v163;
          }

          *(v70 + 2) = v75 + 1;
          (*(v17 + 32))(&v70[((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v75], v73, v161);
          v72 += v159;
          --v68;
        }

        while (v68);
      }

      else
      {

        v70 = MEMORY[0x277D84F90];
      }

      v126 = sub_218AB77B8(&qword_280EE5CB8, sub_218AB7640, MEMORY[0x277D6D408]);
      v127 = sub_218AB77B8(&unk_280EE5CC0, sub_218AB7640, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v70, v161, v126, v127);
      sub_218AB77B8(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23DFC);
      sub_218AB77B8(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
      sub_219BE6924();
      sub_218AB794C(v146, type metadata accessor for AudioFeedSectionDescriptor);
      v84 = type metadata accessor for ForYouAudioFeedGroup;
      v85 = v144;
    }

    return sub_218AB794C(v85, v84);
  }

  if (EnumCaseMultiPayload != 2)
  {
    v158 = v11;
    sub_218AB7858(v54, v6, type metadata accessor for CuratedAudioFeedGroup);
    v151 = v31;
    v106 = v150;
    sub_218AB78C0(v6, v150, type metadata accessor for CuratedAudioFeedGroup);
    v152 = v33;
    swift_storeEnumTagMultiPayload();
    v107 = *(v155 + 2);
    v108 = v153;
    v155 = v6;
    sub_219BED874();
    v109 = sub_218C167E8();
    v111 = v110;
    v112 = sub_219BF18F4();
    MEMORY[0x28223BE20](v112);
    v113 = MEMORY[0x277D84F90];
    *(&v132 - 6) = v159;
    *(&v132 - 5) = v113;
    v114 = v156;
    *(&v132 - 4) = v107;
    *(&v132 - 3) = v114;
    *(&v132 - 2) = v109;
    *(&v132 - 1) = v111;
    sub_218DDE3AC(sub_218AB77A0, (&v132 - 8), v112);
    v116 = v115;

    (*(v154 + 8))(v108, v151);
    sub_218AB78C0(v106, v149, type metadata accessor for AudioFeedSectionDescriptor);
    v117 = *(v116 + 16);
    if (v117)
    {
      v163 = v113;
      sub_218C34778(0, v117, 0);
      v118 = v163;
      v119 = *(v158 + 80);
      v159 = v116;
      v120 = v116 + ((v119 + 32) & ~v119);
      v121 = *(v158 + 72);
      v122 = v132;
      do
      {
        sub_218AB78C0(v120, v15, type metadata accessor for AudioFeedModel);
        sub_218AB78C0(v15, v160, type metadata accessor for AudioFeedModel);
        sub_218AB77B8(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
        sub_219BE5FB4();
        sub_218AB794C(v15, type metadata accessor for AudioFeedModel);
        v163 = v118;
        v123 = v122;
        v125 = *(v118 + 2);
        v124 = *(v118 + 3);
        if (v125 >= v124 >> 1)
        {
          sub_218C34778((v124 > 1), v125 + 1, 1);
          v118 = v163;
        }

        *(v118 + 2) = v125 + 1;
        (*(v17 + 32))(&v118[((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v125], v123, v161);
        v120 += v121;
        --v117;
        v122 = v123;
      }

      while (v117);
    }

    else
    {

      v118 = MEMORY[0x277D84F90];
    }

    v130 = sub_218AB77B8(&qword_280EE5CB8, sub_218AB7640, MEMORY[0x277D6D408]);
    v131 = sub_218AB77B8(&unk_280EE5CC0, sub_218AB7640, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9170](v118, v161, v130, v131);
    sub_218AB77B8(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23DFC);
    sub_218AB77B8(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
    sub_219BE6924();
    sub_218AB794C(v150, type metadata accessor for AudioFeedSectionDescriptor);
    v84 = type metadata accessor for CuratedAudioFeedGroup;
    v85 = v155;
    return sub_218AB794C(v85, v84);
  }

  v76 = v142;
  sub_218AB7858(v54, v142, type metadata accessor for PaywallAudioFeedGroup);
  sub_218AB78C0(v76, v137, type metadata accessor for PaywallAudioFeedGroup);
  sub_218AB77B8(&qword_280ECA490, type metadata accessor for PaywallAudioFeedGroup, &unk_219C44050);
  sub_218AB77B8(&qword_280ECA498, type metadata accessor for PaywallAudioFeedGroup, &unk_219C44028);
  sub_219BEDE74();
  result = swift_storeEnumTagMultiPayload();
  v78 = v159;
  if (*(v159 + 16))
  {
    result = sub_21870F700(*v76, v76[1]);
    if (v79)
    {
      v80 = *(*(v78 + 56) + 8 * result);
      sub_218AB78C0(v41, v143, type metadata accessor for AudioFeedSectionDescriptor);
      sub_218AB7800(0);
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_219C09BA0;
      *v15 = v80;
      swift_storeEnumTagMultiPayload();
      sub_218AB77B8(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
      swift_retain_n();
      sub_219BE5FB4();
      v82 = sub_218AB77B8(&qword_280EE5CB8, sub_218AB7640, MEMORY[0x277D6D408]);
      v83 = sub_218AB77B8(&unk_280EE5CC0, sub_218AB7640, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9150](v81, v161, v82, v83);
      sub_218AB77B8(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23DFC);
      sub_219BE6924();

      sub_218AB794C(v41, type metadata accessor for AudioFeedSectionDescriptor);
      v84 = type metadata accessor for PaywallAudioFeedGroup;
      v85 = v76;
      return sub_218AB794C(v85, v84);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_218AB7640(uint64_t a1)
{
  if (!qword_280EE5CB0)
  {
    type metadata accessor for AudioFeedModel(255);
    sub_218AB77B8(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
    v1 = sub_219BE5FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5CB0);
    }
  }
}

void sub_218AB76D4(uint64_t a1)
{
  if (!qword_280EE7548)
  {
    sub_218AB7640(255);
    sub_218AB77B8(&qword_280EE5CB8, sub_218AB7640, MEMORY[0x277D6D408]);
    sub_218AB77B8(&unk_280EE5CC0, sub_218AB7640, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7548);
    }
  }
}

uint64_t sub_218AB77B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218AB7800(uint64_t a1)
{
  if (!qword_280E8BFE0)
  {
    sub_218AB7640(255);
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8BFE0);
    }
  }
}

uint64_t sub_218AB7858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218AB78C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218AB794C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MagazineCategory.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MagazineCategory.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_218AB7A30(uint64_t a1, uint64_t a2)
{
  sub_218AB7A94(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218AB7A94(uint64_t a1)
{
  if (!qword_280EE5A68)
  {
    sub_2189A7118();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5A68);
    }
  }
}

double MagazineCategory.sectionConfigKind.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 168);
  *(a1 + 16) = v4;
  return sub_218AB7B18(v2, v3, v4);
}

double sub_218AB7B18(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void MagazineCategory.init(identifier:title:icon1x:icon2x:icon3x:sectionConfigKind:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v14 = a1;
  v16 = a8[1];
  v27 = *a8;
  v17 = *(a8 + 16);
  *a9 = a1;
  *(a9 + 8) = a2;
  if (a4)
  {
    v18 = a4;
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v26 = v16;
    v20 = objc_opt_self();

    v21 = [v20 bundleForClass_];
    a3 = sub_219BDB5E4();
    v18 = v22;

    v16 = v26;
  }

  *(a9 + 16) = a3;
  *(a9 + 24) = v18;
  v23 = *(a5 + 16);
  *(a9 + 32) = *a5;
  *(a9 + 48) = v23;
  *(a9 + 64) = *(a5 + 32);
  v24 = *(a6 + 16);
  *(a9 + 72) = *a6;
  *(a9 + 88) = v24;
  *(a9 + 104) = *(a6 + 32);
  *(a9 + 144) = *(a7 + 32);
  v25 = *(a7 + 16);
  *(a9 + 112) = *a7;
  *(a9 + 128) = v25;
  if (v17 == 255)
  {
    LOBYTE(v17) = 0;
    v16 = a2;
  }

  else
  {

    v14 = v27;
  }

  *(a9 + 152) = v14;
  *(a9 + 160) = v16;
  *(a9 + 168) = v17;
}

uint64_t static MagazineCategory.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_219BF78F4();
  }
}

uint64_t get_enum_tag_for_layout_string_5TeaUI15AssetHandleType_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_7NewsUI225MagazineSectionConfigKindO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy169_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_218AB7D68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 169))
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

uint64_t sub_218AB7DB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_218AB7E2C(uint64_t a1)
{
  v2 = type metadata accessor for CuratedMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v2 - 8);
  v86 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TrendingMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TopicMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for MagazineFeedGroup(0);
  v88 = *(v26 - 8);
  v27 = *(v88 + 64);
  MEMORY[0x28223BE20](v26);
  v91 = &v84 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v84 - v29;
  v90 = a1;
  sub_218AB9144(a1, &v84 - v29);
  v89 = v26;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v56 = sub_218AB92F4(v30, v25, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      MEMORY[0x28223BE20](v56);
      *(&v84 - 2) = v87;
      *(&v84 - 1) = v25;
      sub_219BF1904();
      sub_219BE3204();
      v57 = v91;
      sub_218AB9144(v90, v91);
      v58 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v59 = swift_allocObject();
      sub_218AB92F4(v57, v59 + v58, type metadata accessor for MagazineFeedGroup);
      v60 = sub_219BE2E54();
      v37 = sub_219BE2F74();

      v49 = type metadata accessor for FeaturedArticleMagazineFeedGroup;
      v50 = v25;
      goto LABEL_10;
    case 2u:
      v66 = sub_218AB92F4(v30, v22, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      MEMORY[0x28223BE20](v66);
      *(&v84 - 2) = v87;
      *(&v84 - 1) = v22;
      sub_219BF1904();
      sub_219BE3204();
      v67 = v91;
      sub_218AB9144(v90, v91);
      v68 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v69 = swift_allocObject();
      sub_218AB92F4(v67, v69 + v68, type metadata accessor for MagazineFeedGroup);
      v70 = sub_219BE2E54();
      v71 = sub_219BE2F74();

      v72 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      v73 = v22;
      goto LABEL_14;
    case 3u:
      v51 = sub_218AB92F4(v30, v19, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      MEMORY[0x28223BE20](v51);
      *(&v84 - 2) = v87;
      *(&v84 - 1) = v19;
      sub_219BF1904();
      sub_219BE3204();
      v52 = v91;
      sub_218AB9144(v90, v91);
      v53 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v54 = swift_allocObject();
      sub_218AB92F4(v52, v54 + v53, type metadata accessor for MagazineFeedGroup);
      v55 = sub_219BE2E54();
      v37 = sub_219BE2F74();

      v38 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_9;
    case 6u:
      v79 = sub_218AB92F4(v30, v16, type metadata accessor for NewIssueMagazineFeedGroup);
      MEMORY[0x28223BE20](v79);
      *(&v84 - 2) = v87;
      *(&v84 - 1) = v16;
      sub_219BF1904();
      sub_219BE3204();
      v80 = v91;
      sub_218AB9144(v90, v91);
      v81 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v82 = swift_allocObject();
      sub_218AB92F4(v80, v82 + v81, type metadata accessor for MagazineFeedGroup);
      v83 = sub_219BE2E54();
      v71 = sub_219BE2F74();

      v72 = type metadata accessor for NewIssueMagazineFeedGroup;
      v73 = v16;
LABEL_14:
      sub_218AB93F8(v73, v72);
      return v71;
    case 9u:
      v44 = sub_218AB92F4(v30, v13, type metadata accessor for TopicMagazineFeedGroup);
      MEMORY[0x28223BE20](v44);
      *(&v84 - 2) = v87;
      *(&v84 - 1) = v13;
      sub_219BF1904();
      sub_219BE3204();
      v45 = v91;
      sub_218AB9144(v90, v91);
      v46 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v47 = swift_allocObject();
      sub_218AB92F4(v45, v47 + v46, type metadata accessor for MagazineFeedGroup);
      v48 = sub_219BE2E54();
      v37 = sub_219BE2F74();

      v49 = type metadata accessor for TopicMagazineFeedGroup;
      v50 = v13;
      goto LABEL_10;
    case 0xAu:
      v74 = sub_218AB92F4(v30, v10, type metadata accessor for TrendingMagazineFeedGroup);
      MEMORY[0x28223BE20](v74);
      *(&v84 - 2) = v87;
      *(&v84 - 1) = v10;
      sub_219BF1904();
      sub_219BE3204();
      v75 = v91;
      sub_218AB9144(v90, v91);
      v76 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v77 = swift_allocObject();
      sub_218AB92F4(v75, v77 + v76, type metadata accessor for MagazineFeedGroup);
      v78 = sub_219BE2E54();
      v37 = sub_219BE2F74();

      v49 = type metadata accessor for TrendingMagazineFeedGroup;
      v50 = v10;
      goto LABEL_10;
    case 0xBu:
      v19 = v84;
      v32 = sub_218AB92F4(v30, v84, type metadata accessor for BestOfBundleMagazineFeedGroup);
      MEMORY[0x28223BE20](v32);
      *(&v84 - 2) = v87;
      *(&v84 - 1) = v19;
      sub_219BF1904();
      sub_219BE3204();
      v33 = v91;
      sub_218AB9144(v90, v91);
      v34 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v35 = swift_allocObject();
      sub_218AB92F4(v33, v35 + v34, type metadata accessor for MagazineFeedGroup);
      v36 = sub_219BE2E54();
      v37 = sub_219BE2F74();

      v38 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_9;
    case 0xCu:
      v19 = v85;
      v39 = sub_218AB92F4(v30, v85, type metadata accessor for NewspaperMagazineFeedGroup);
      MEMORY[0x28223BE20](v39);
      *(&v84 - 2) = v87;
      *(&v84 - 1) = v19;
      sub_219BF1904();
      sub_219BE3204();
      v40 = v91;
      sub_218AB9144(v90, v91);
      v41 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v42 = swift_allocObject();
      sub_218AB92F4(v40, v42 + v41, type metadata accessor for MagazineFeedGroup);
      v43 = sub_219BE2E54();
      v37 = sub_219BE2F74();

      v38 = type metadata accessor for NewspaperMagazineFeedGroup;
      goto LABEL_9;
    case 0xDu:
      v19 = v86;
      v61 = sub_218AB92F4(v30, v86, type metadata accessor for CuratedMagazineFeedGroup);
      MEMORY[0x28223BE20](v61);
      *(&v84 - 2) = v87;
      *(&v84 - 1) = v19;
      sub_219BF1904();
      sub_219BE3204();
      v62 = v91;
      sub_218AB9144(v90, v91);
      v63 = (*(v88 + 80) + 16) & ~*(v88 + 80);
      v64 = swift_allocObject();
      sub_218AB92F4(v62, v64 + v63, type metadata accessor for MagazineFeedGroup);
      v65 = sub_219BE2E54();
      v37 = sub_219BE2F74();

      v38 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_9:
      v49 = v38;
      v50 = v19;
LABEL_10:
      sub_218AB93F8(v50, v49);
      result = v37;
      break;
    default:
      sub_218AB93F8(v30, type metadata accessor for MagazineFeedGroup);
      sub_218AB9144(v90, v91);
      sub_218AB923C(0);
      swift_allocObject();
      result = sub_219BE3014();
      break;
  }

  return result;
}

uint64_t sub_218AB8CA0(void *a1)
{
  v12 = sub_219BF2AB4();
  v2 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BF1904();
  v5 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  sub_219BED874();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF2AA4();
  v8 = sub_219BF21A4();
  (*(v2 + 8))(v4, v12);
  (*(v5 + 8))(v7, v11);
  return v8;
}

uint64_t sub_218AB8EB0(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v15 = sub_219BF2AB4();
  v5 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF1904();
  v8 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  a3(0);
  sub_219BED874();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_219BF2AA4();
  v11 = sub_219BF21A4();
  (*(v5 + 8))(v7, v15);
  (*(v8 + 8))(v10, v14);
  return v11;
}

uint64_t sub_218AB9144(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_218AB923C(uint64_t a1)
{
  if (!qword_27CC0D850)
  {
    type metadata accessor for MagazineFeedGroup(255);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0D850);
    }
  }
}

uint64_t sub_218AB92F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218AB93F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FCFeedType.feedType()@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0x1B && ((0x79DFFFFu >> a1) & 1) != 0)
  {
    v3 = **(&unk_2782422C0 + a1);
    v4 = sub_219BE14C4();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  else
  {
    result = sub_219BF7514();
    __break(1u);
  }

  return result;
}

char *sub_218AB9568(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC7NewsUI221FollowingBrowseButton_onTap;
  sub_218ABA298(0, &qword_280EE39E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB8]);
  *&v5[v10] = [objc_allocWithZone(v11) init];
  v12 = OBJC_IVAR____TtC7NewsUI221FollowingBrowseButton_isEditing;
  sub_218ABA298(0, &qword_280EE3A58, MEMORY[0x277D839B0], MEMORY[0x277D6EB40]);
  swift_allocObject();
  *&v5[v12] = sub_219BEA604();
  v13 = OBJC_IVAR____TtC7NewsUI221FollowingBrowseButton_deviceOffline;
  v23 = 0;
  swift_allocObject();
  *&v5[v13] = sub_219BEA604();
  *&v5[OBJC_IVAR____TtC7NewsUI221FollowingBrowseButton_button] = [objc_allocWithZone(type metadata accessor for FollowingTouchInsetsButton(0)) initWithFrame_];
  v22.receiver = v5;
  v22.super_class = type metadata accessor for FollowingBrowseButton();
  v14 = objc_msgSendSuper2(&v22, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC7NewsUI221FollowingBrowseButton_button;
  v16 = *&v14[OBJC_IVAR____TtC7NewsUI221FollowingBrowseButton_button];
  v17 = v14;
  [v17 addSubview_];
  v18 = *&v14[v15];
  v19 = *&v17[OBJC_IVAR____TtC7NewsUI221FollowingBrowseButton_onTap];
  v20 = v18;
  sub_219BEA854();

  return v17;
}

uint64_t type metadata accessor for FollowingTouchInsetsButton(uint64_t a1)
{
  result = qword_27CC0D888;
  if (!qword_27CC0D888)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218AB98CC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_218AB9920(v3);
}

void sub_218AB9920(char a1)
{
  v26.receiver = v1;
  v26.super_class = type metadata accessor for FollowingTouchInsetsButton(0);
  objc_msgSendSuper2(&v26, sel_setEnabled_, a1 & 1);
  v3 = objc_opt_self();
  if (a1)
  {
    v4 = [v3 quaternarySystemFillColor];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v6[2] = v1;
    v6[3] = v4;
    v6[4] = 0x3FF0000000000000;
    v24 = sub_218ABA2F0;
    v25 = v6;
    v20 = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_218793E0C;
    v23 = &block_descriptor_22;
    v7 = _Block_copy(&v20);
    v8 = v1;
    v9 = v4;

    [v5 animateWithDuration:v7 animations:0.25];
  }

  else
  {
    v10 = v3;
    v11 = 1.0;
    v12 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.92 alpha:1.0];
    v13 = [v10 darkGrayColor];
    v14 = [v10 ts:v12 dynamicColor:v13 withDarkStyleVariant:?];

    v15 = [v1 traitCollection];
    v16 = [v15 userInterfaceStyle];

    if (v16 == 2)
    {
      v11 = 0.5;
    }

    v17 = objc_opt_self();
    v18 = swift_allocObject();
    *(v18 + 16) = v1;
    *(v18 + 24) = v14;
    *(v18 + 32) = v11;
    v24 = sub_218ABA2F0;
    v25 = v18;
    v20 = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_218793E0C;
    v23 = &block_descriptor_15;
    v7 = _Block_copy(&v20);
    v19 = v1;
    v9 = v14;

    [v17 animateWithDuration:v7 animations:0.25];
  }

  _Block_release(v7);
}

id sub_218AB9BF4(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = type metadata accessor for FollowingTouchInsetsButton(0);
  return objc_msgSendSuper2(&v5, *a3);
}

void sub_218AB9C38(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_218AB9C8C(v3);
}

void sub_218AB9C8C(char a1)
{
  v18.receiver = v1;
  v18.super_class = type metadata accessor for FollowingTouchInsetsButton(0);
  objc_msgSendSuper2(&v18, sel_setHighlighted_, a1 & 1);
  v3 = objc_opt_self();
  if (a1)
  {
    v4 = [v3 secondarySystemFillColor];
    v5 = objc_opt_self();
    v6 = swift_allocObject();
    v6[2] = v1;
    v6[3] = v4;
    v6[4] = 0x3FD0000000000000;
    v16 = sub_218ABA2F0;
    v17 = v6;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v7 = &block_descriptor_8;
  }

  else
  {
    v4 = [v3 tertiarySystemFillColor];
    v5 = objc_opt_self();
    v8 = swift_allocObject();
    v8[2] = v1;
    v8[3] = v4;
    v8[4] = 0x3FF0000000000000;
    v16 = sub_218A5114C;
    v17 = v8;
    v12 = MEMORY[0x277D85DD0];
    v13 = 1107296256;
    v7 = &block_descriptor_18;
  }

  v14 = sub_218793E0C;
  v15 = v7;
  v9 = _Block_copy(&v12);
  v10 = v1;
  v11 = v4;

  [v5 animateWithDuration:v9 animations:{0.25, v12, v13}];
  _Block_release(v9);
}

id sub_218AB9E7C(void *a1, double a2, double a3, double a4, double a5)
{
  v10.receiver = a1;
  v10.super_class = type metadata accessor for FollowingTouchInsetsButton(0);
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_218AB9EF0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for FollowingTouchInsetsButton(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

id sub_218AB9F88(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_218AB9FCC()
{
  result = qword_280ECAFD0[0];
  if (!qword_280ECAFD0[0])
  {
    type metadata accessor for FollowingBrowseButton();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280ECAFD0);
  }

  return result;
}

void sub_218ABA048(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x21CEC1E40);
}

void sub_218ABA09C(uint64_t a1)
{
  v1 = sub_219BEA814();
}

void sub_218ABA0DC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7NewsUI221FollowingBrowseButton_onTap;
  sub_218ABA298(0, &qword_280EE39E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB8]);
  *(v1 + v2) = [objc_allocWithZone(v3) init];
  v4 = OBJC_IVAR____TtC7NewsUI221FollowingBrowseButton_isEditing;
  sub_218ABA298(0, &qword_280EE3A58, MEMORY[0x277D839B0], MEMORY[0x277D6EB40]);
  swift_allocObject();
  *(v1 + v4) = sub_219BEA604();
  v5 = OBJC_IVAR____TtC7NewsUI221FollowingBrowseButton_deviceOffline;
  swift_allocObject();
  *(v1 + v5) = sub_219BEA604();
  sub_219BF7514();
  __break(1u);
}

id sub_218ABA214()
{
  sub_219BEA624();
  if (v4)
  {
    v1 = 0;
  }

  else
  {
    sub_219BEA624();
    v1 = v3 ^ 1;
  }

  return [*(v0 + OBJC_IVAR____TtC7NewsUI221FollowingBrowseButton_button) setEnabled_];
}

void sub_218ABA298(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_218ABA2F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_218ABA354()
{
  v1 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___cancelSearchBarButtonItem;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___cancelSearchBarButtonItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___cancelSearchBarButtonItem);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v0 action:sel_cancelSearch];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_218ABA3DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_showSearchNavigationItems);
  v2 = _UISolariumFeatureFlagEnabled();
  sub_218ABC4E0(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  if (v1 == 1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_219C146A0;
    if (v2)
    {
      v4 = &OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___stateFilterBarButtonItem;
      v5 = sub_218ABAA4C;
    }

    else
    {
      v4 = &OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___filterBarButtonItem;
      v5 = sub_218ABA618;
    }

    *(v3 + 32) = sub_218ABA5B4(v4, v5);
  }

  else
  {
    v3 = swift_allocObject();
    if (v2)
    {
      *(v3 + 16) = xmmword_219C189F0;
      *(v3 + 32) = sub_218ABA5B4(&OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___stateFilterBarButtonItem, sub_218ABAA4C);
      *(v3 + 40) = sub_218ABA5B4(&OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___recipeBoxBarButtonItem, sub_218ABB278);
    }

    else
    {
      *(v3 + 16) = xmmword_219C189E0;
      v6 = sub_218ABA5B4(&OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___filterBarButtonItem, sub_218ABA618);
      v7 = *(v0 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_spacerBarButtonItem);
      *(v3 + 32) = v6;
      *(v3 + 40) = v7;
      v8 = v7;
      *(v3 + 48) = sub_218ABA5B4(&OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___recipeBoxBarButtonItem, sub_218ABB278);
    }
  }

  return v3;
}

id sub_218ABA5B4(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = *(v2 + *a1);
  }

  else
  {
    v6 = a2(v2);
    v7 = *(v2 + v3);
    *(v2 + v3) = v6;
    v5 = v6;

    v4 = 0;
  }

  v8 = v4;
  return v5;
}

void sub_218ABA618(uint64_t a1)
{
  v2 = sub_219BE89F4();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 104))(&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E118], v3);
  v6 = *(a1 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_tracker);
  *&v25 = sub_219BDD274();
  *(&v25 + 1) = sub_218ABC404();
  v23 = v6;
  v26 = 0u;
  v27 = 0u;
  v28 = 1;
  sub_219BE8314();
  swift_allocObject();

  sub_219BE82B4();
  v7 = qword_280EE3900;
  swift_unknownObjectRetain();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = *(a1 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_recipeCatalogFilterResultProvider);
  v21 = *(a1 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_recipeCatalogFilterSelectionManager);
  v22 = v8;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (_UISolariumFeatureFlagEnabled())
  {
    v9 = sub_219BF53D4();
    v10 = [objc_opt_self() systemImageNamed_];

    if (v10)
    {
LABEL_7:
      v13 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:22.0];
      v23 = 0;
      v24 = v22;
      v25 = v21;
      sub_218ABC4E0(0, &qword_27CC0D928, &type metadata for RecipeFilterRouteModel, MEMORY[0x277D6DBE0]);
      objc_allocWithZone(v14);

      v15 = sub_219BE7904();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = objc_opt_self();
      v18 = v15;
      v19 = [v17 bundleForClass_];
      sub_219BDB5E4();

      v20 = sub_219BF53D4();

      [v18 setAccessibilityLabel_];

      return;
    }

    __break(1u);
  }

  v11 = sub_219BF53D4();
  v12 = [objc_opt_self() systemImageNamed_];

  if (v12)
  {
    goto LABEL_7;
  }

  __break(1u);
}

id sub_218ABAA4C(uint64_t a1)
{
  sub_218ABC2FC(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE89F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ABC38C(0, &qword_27CC16DE0, &qword_280E8DA68, 0x277D755B8, sub_2186C6148);
  v35 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  LOBYTE(v36) = 0;
  sub_2186C6148(0, &qword_280E8DA68, 0x277D755B8);
  sub_218755860();
  sub_219BE7204();
  (*(v6 + 104))(v8, *MEMORY[0x277D6E118], v5);
  v16 = *(a1 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_tracker);
  *&v38 = sub_219BDD274();
  *(&v38 + 1) = sub_218ABC404();
  v36 = v16;
  v39 = 0u;
  v40 = 0u;
  v41 = 1;
  sub_219BE8314();
  swift_allocObject();

  sub_219BE82B4();
  sub_218ABC45C(0, &qword_27CC0D920, MEMORY[0x277D6E370]);
  v34 = v17;
  v18 = qword_280EE3900;
  swift_unknownObjectRetain();

  if (v18 != -1)
  {
    swift_once();
  }

  v36 = 0;
  v32 = *(a1 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_recipeCatalogFilterResultProvider);
  v33 = *(a1 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_recipeCatalogFilterSelectionManager);
  v37 = v32;
  v38 = v33;
  v19 = v10;
  v20 = *(v10 + 16);
  v21 = v35;
  v20(v12, v15, v35);
  sub_218ABC38C(0, &unk_27CC16DC0, &unk_27CC0D918, MEMORY[0x277D6E368], sub_218ABC45C);
  (*(*(v22 - 8) + 56))(v4, 1, 1, v22);
  v23 = objc_opt_self();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = [v23 configurationWithPointSize:5 weight:3 scale:17.0];
  v25 = sub_219BE8E04();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = objc_opt_self();
  v28 = v25;
  v29 = [v27 bundleForClass_];
  sub_219BDB5E4();

  v30 = sub_219BF53D4();

  [v28 setAccessibilityLabel_];

  (*(v19 + 8))(v15, v21);
  return v28;
}

void sub_218ABAFFC(_BYTE *a1@<X0>, void *a2@<X8>)
{
  if (*a1)
  {
    if (!_UISolariumFeatureFlagEnabled())
    {
      goto LABEL_7;
    }

    v3 = sub_219BF53D4();
    v4 = [objc_opt_self() systemImageNamed_];

    if (v4)
    {
LABEL_9:
      *a2 = v4;
      return;
    }

    __break(1u);
  }

  v5 = sub_219BF53D4();
  v4 = [objc_opt_self() systemImageNamed_];

  if (v4)
  {
    goto LABEL_9;
  }

  __break(1u);
LABEL_7:
  v6 = sub_219BF53D4();
  v7 = [objc_opt_self() systemImageNamed_];

  if (v7)
  {
    sub_218ABC4E0(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_219C189E0;
    v9 = objc_opt_self();
    *(v8 + 32) = [v9 systemBackgroundColor];
    *(v8 + 40) = [v9 labelColor];
    *(v8 + 48) = [v9 systemPinkColor];
    sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
    v10 = sub_219BF5904();

    v11 = [objc_opt_self() configurationWithPaletteColors_];

    v4 = [v7 imageByApplyingSymbolConfiguration_];
    if (v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_218ABB278(uint64_t a1)
{
  v2 = sub_219BE89F4();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 104))(&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E118], v3);
  v6 = *(a1 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_tracker);
  v20 = sub_219BDD274();
  v21 = sub_218ABC404();
  v19 = v6;
  v22 = 0u;
  v23 = 0u;
  v24 = 1;
  sub_219BE8314();
  swift_allocObject();

  sub_219BE82B4();
  v7 = qword_280EE3910;
  swift_unknownObjectRetain();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = _UISolariumFeatureFlagEnabled();
  sub_219BF5114();
  if (v8)
  {
    sub_219BF5094();
  }

  else
  {
    sub_219BF50D4();
  }

  v9 = [objc_opt_self() configurationWithPointSize:5 weight:3 scale:22.0];
  LOBYTE(v19) = 0;
  sub_218ABC4E0(0, &qword_27CC13DC0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6DBE0]);
  objc_allocWithZone(v10);

  v11 = sub_219BE7904();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = v11;
  v15 = [v13 bundleForClass_];
  sub_219BDB5E4();

  v16 = sub_219BF53D4();

  [v14 setAccessibilityLabel_];

  return v14;
}

double sub_218ABB60C(void *a1)
{
  v2 = v1;
  v4 = sub_219BF65B4();
  [v4 setSearchController_];

  v5 = sub_219BF65B4();
  [v5 setPreferredSearchBarPlacement_];

  v6 = *(*(v2 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_recipeCatalogSearchViewController) + OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_recipeFilterSelectionManager + 8);
  ObjectType = swift_getObjectType();
  v8 = (*(*(v6 + 8) + 16))(ObjectType);
  sub_218ABB8A0(v8 & 1);
  sub_218805AC0(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  v10 = sub_219BEB8B4();
  v11 = MEMORY[0x277D74BF0];
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
  sub_219BF6604();
  swift_unknownObjectRelease();

  v12 = *(v2 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_spacerBarButtonItem);
  v13 = [a1 traitCollection];
  v14 = [v13 horizontalSizeClass];

  v15 = 4.0;
  if (v14 == 2)
  {
    v15 = 16.0;
  }

  [v12 setWidth_];

  v16 = swift_allocObject();
  *(v16 + 16) = v20;
  v17 = sub_219BEBA34();
  v18 = MEMORY[0x277D74C50];
  *(v16 + 32) = v17;
  *(v16 + 40) = v18;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BF6604();
  swift_unknownObjectRelease();

  return result;
}

double sub_218ABB8A0(uint64_t a1)
{
  v1 = a1;
  if (_UISolariumFeatureFlagEnabled())
  {
    v2 = sub_218ABA5B4(&OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___stateFilterBarButtonItem, sub_218ABAA4C);
    if (v1)
    {
      sub_219BE8E34();

LABEL_5:
      v3 = sub_218ABA5B4(&OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___filterBarButtonItem, sub_218ABA618);
      sub_218ABC4E0(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_219C189F0;
      v5 = objc_opt_self();
      v6 = [v5 whiteColor];
      v7 = [v5 blackColor];
      v8 = [v5 ts:v6 dynamicColor:v7 withDarkStyleVariant:?];

      *(v4 + 32) = v8;
      *(v4 + 40) = [v5 systemPinkColor];
      goto LABEL_11;
    }

    sub_219BE8E34();
  }

  else if (v1)
  {
    goto LABEL_5;
  }

  v3 = sub_218ABA5B4(&OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator____lazy_storage___filterBarButtonItem, sub_218ABA618);
  sub_218ABC4E0(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C189F0;
  v10 = objc_opt_self();
  *(v9 + 32) = [v10 labelColor];
  v11 = [v10 secondarySystemFillColor];
  sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  v12 = sub_219BF6D44();
  v13 = [v10 whiteColor];
  v14 = [v12 _isSimilarToColor_withinPercentage_];

  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v17 = [v11 resolvedColorWithTraitCollection_];

  *(v9 + 40) = v17;
LABEL_11:
  sub_219BE7914();

  return result;
}

void sub_218ABBBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_recipeCatalogSearchViewController);
    v5 = *&v4[OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_recipeFilterSelectionManager + 8];
    v6 = Strong;
    ObjectType = swift_getObjectType();
    v8 = *(v5 + 8);
    v9 = *(v8 + 16);
    v10 = v4;
    v11 = v9(ObjectType, v8);

    sub_218ABB8A0(v11 & 1);
  }
}

void sub_218ABBCA4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_spacerBarButtonItem);
    v7 = [a1 traitCollection];
    v8 = [v7 horizontalSizeClass];

    v9 = 4.0;
    if (v8 == 2)
    {
      v9 = 16.0;
    }

    [v6 setWidth_];
  }
}

id sub_218ABBD68(__int128 *a1)
{
  v2 = v1;
  v3 = *(a1 + 2);
  v7 = *a1;
  v8 = v3;
  sub_218CAD138(&v7);
  v4 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented;
  *(v2 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented) = 1;
  v5 = *(v2 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController);
  result = [v5 isActive];
  if (result != *(v2 + v4))
  {

    return [v5 setActive_];
  }

  return result;
}

double sub_218ABC028(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController);
  v6 = [v5 searchBar];
  v7 = [v6 text];

  if (v7)
  {
    v8 = sub_219BF5414();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  ObjectType = swift_getObjectType();
  v14 = (*(a2 + 16))(ObjectType, a2);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented;
    *(v3 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented) = 1;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_12;
    }

    v15 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented;
    *(v3 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented) = 0;
  }

  if ([v5 isActive] != *(v3 + v15))
  {
    [v5 setActive_];
  }

LABEL_12:

  return sub_218ABB8A0(v14 & 1);
}

void sub_218ABC17C(int a1, id a2)
{
  v2 = [a2 searchBar];
  [v2 setEnabled_];
}

uint64_t sub_218ABC1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_showSearchNavigationItems) = a5;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_219A29F1C(0, 0, v7);
    sub_219A28FA4(0, 0);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_218ABC268()
{
  v1 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented;
  *(v0 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented) = 0;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController);
  result = [v2 isActive];
  if (result != *(v0 + v1))
  {

    return [v2 setActive_];
  }

  return result;
}

void sub_218ABC2FC(uint64_t a1)
{
  if (!qword_27CC0D910)
  {
    sub_218ABC38C(255, &unk_27CC16DC0, &unk_27CC0D918, MEMORY[0x277D6E368], sub_218ABC45C);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0D910);
    }
  }
}

void sub_218ABC38C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    sub_218755860();
    v6 = sub_219BE7214();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218ABC404()
{
  result = qword_280EE8EE0;
  if (!qword_280EE8EE0)
  {
    sub_219BDD274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE8EE0);
  }

  return result;
}

void sub_218ABC45C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for RecipeFilterRouteModel;
    v8[1] = &type metadata for RecipeFilterItemCommandState;
    v8[2] = sub_2189B44D0();
    v8[3] = sub_218755860();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218ABC4E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_218ABC530(void *a1)
{
  v3 = OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented;
  *(v1 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_isSearchPresented) = 1;
  v4 = *(v1 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_searchController);
  if ([v4 isActive] != *(v1 + v3))
  {
    [v4 setActive_];
  }

  v5 = [a1 searchBar];
  v6 = [v5 text];

  if (v6)
  {
    v7 = sub_219BF5414();
    v9 = v8;

    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = v7 & 0xFFFFFFFFFFFFLL;
    }

    LOBYTE(v6) = v10 != 0;
  }

  v11 = *(*(v1 + OBJC_IVAR____TtC7NewsUI237TagFeedRecipeCatalogSearchCoordinator_recipeCatalogSearchViewController) + OBJC_IVAR____TtC7NewsUI233RecipeCatalogSearchViewController_recipeFilterSelectionManager + 8);
  ObjectType = swift_getObjectType();
  result = (*(*(v11 + 8) + 16))(ObjectType);
  if (v6 & 1) == 0 && (result)
  {
    result = [a1 transitionCoordinator];
    if (result)
    {
      v14 = result;
      v15 = [a1 searchBar];
      [v15 setEnabled_];

      v16 = swift_allocObject();
      *(v16 + 16) = a1;
      v19[4] = sub_218ABC764;
      v19[5] = v16;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 1107296256;
      v19[2] = sub_218ABA2F4;
      v19[3] = &block_descriptor_19;
      v17 = _Block_copy(v19);
      v18 = a1;

      [v14 animateAlongsideTransition:0 completion:v17];
      _Block_release(v17);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_218ABC794@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v40 = type metadata accessor for CuratedTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v40);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF1934();
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218ABD484(0, &qword_280E8CAC8, MEMORY[0x277D844C8]);
  v42 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218ABD3CC();
  v41 = v11;
  v12 = v43;
  sub_219BF7B34();
  if (v12)
  {
    v26 = a1;
  }

  else
  {
    v13 = v9;
    v14 = a1;
    v43 = v4;
    v15 = v40;
    LOBYTE(v45) = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    v16 = v41;
    sub_219BF7734();
    LOBYTE(v45) = 0;
    v17 = sub_219BF76F4();
    LOBYTE(v45) = 2;
    v36 = v17;
    v37 = v19;
    v33 = v13;
    v20 = v42;
    sub_219BF7674();
    v35 = v54;
    LOBYTE(v45) = 3;
    sub_219BF7674();
    v34 = v53;
    LOBYTE(v45) = 4;
    sub_219BF7674();
    v32 = v52;
    LOBYTE(v45) = 5;
    sub_219BF7674();
    v31 = v51;
    LOBYTE(v45) = 6;
    sub_219BF7674();
    v30 = v50;
    LOBYTE(v45) = 7;
    sub_219BF7674();
    v29 = v49;
    LOBYTE(v45) = 8;
    sub_219BF7674();
    v28 = v48;
    LOBYTE(v45) = 9;
    sub_219BF7674();
    v27 = v47;
    LOBYTE(v45) = 10;
    sub_219BF7674();
    v21 = v46;
    sub_2186D0BA8();
    v44 = 11;
    sub_2187531B0(&qword_280E8EDD0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_219BF7674();
    (*(v33 + 8))(v16, v20);
    v22 = v45;
    v23 = v7;
    v24 = v43;
    (*(v39 + 32))(v43 + v15[5], v23, v5);
    v25 = v37;
    *v24 = v36;
    v24[1] = v25;
    *(v24 + v15[6]) = (v35 == 2) | v35 & 1;
    *(v24 + v15[7]) = (v34 == 2) | v34 & 1;
    *(v24 + v15[8]) = (v32 == 2) | v32 & 1;
    *(v24 + v15[9]) = (v31 == 2) | v31 & 1;
    *(v24 + v15[10]) = (v30 == 2) | v30 & 1;
    *(v24 + v15[11]) = v29 & 1;
    *(v24 + v15[12]) = v28 & 1;
    *(v24 + v15[13]) = (v27 == 2) | v27 & 1;
    *(v24 + v15[14]) = v21 & 1;
    *(v24 + v15[15]) = v22;
    sub_218ABD420(v24, v38);
    v26 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_218ABCD9C(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    if (a1 > 8u)
    {
      v6 = 0xD000000000000019;
      if (a1 != 10)
      {
        v6 = 0xD00000000000001BLL;
      }

      if (a1 == 9)
      {
        return 0xD00000000000001BLL;
      }

      else
      {
        return v6;
      }
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    v1 = 0x65707974627573;
    v2 = 0xD000000000000010;
    if (a1 == 4)
    {
      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000012;
    if (a1 == 1)
    {
      v4 = 0x746E65746E6F63;
    }

    if (a1)
    {
      v1 = v4;
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

uint64_t sub_218ABCF30(void *a1)
{
  v3 = v1;
  sub_218ABD484(0, &qword_280E8C398, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218ABD3CC();
  sub_219BF7B44();
  LOBYTE(v13) = 0;
  sub_219BF77F4();
  if (!v2)
  {
    v10 = type metadata accessor for CuratedTodayFeedGroupConfigData(0);
    LOBYTE(v13) = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
    LOBYTE(v13) = 2;
    sub_219BF7804();
    LOBYTE(v13) = 3;
    sub_219BF7804();
    LOBYTE(v13) = 4;
    sub_219BF7804();
    LOBYTE(v13) = 5;
    sub_219BF7804();
    LOBYTE(v13) = 6;
    sub_219BF7804();
    LOBYTE(v13) = 7;
    sub_219BF7804();
    LOBYTE(v13) = 8;
    sub_219BF7804();
    LOBYTE(v13) = 9;
    sub_219BF7804();
    LOBYTE(v13) = 10;
    sub_219BF7804();
    v13 = *(v3 + *(v10 + 60));
    v12[7] = 11;
    sub_2186D0BA8();
    sub_2187531B0(&unk_280E8EE00, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218ABD2EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_218ABDBB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_218ABD320(uint64_t a1)
{
  v2 = sub_218ABD3CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218ABD35C(uint64_t a1)
{
  v2 = sub_218ABD3CC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218ABD3CC()
{
  result = qword_280EA9838[0];
  if (!qword_280EA9838[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA9838);
  }

  return result;
}

uint64_t sub_218ABD420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedTodayFeedGroupConfigData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218ABD484(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218ABD3CC();
    v7 = a3(a1, &type metadata for CuratedTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218ABD4E8()
{
  v1 = type metadata accessor for CuratedTodayFeedGroupConfigData(0);
  if ((*(v0 + v1[6]) & 1) == 0)
  {
    if (*(v0 + v1[7]))
    {
      if (*(v0 + v1[8]))
      {
        if (*(v0 + v1[9]))
        {
          if (*(v0 + v1[10]))
          {
            if (*(v0 + v1[11]))
            {
              v2 = 33;
              if (*(v0 + v1[13]))
              {
                return v2;
              }

              return v2 | 2;
            }

            v2 = 33;
            goto LABEL_93;
          }

          v2 = 16777249;
          if (*(v0 + v1[11]))
          {
            goto LABEL_94;
          }
        }

        else if (*(v0 + v1[10]))
        {
          v2 = 8388641;
          if (*(v0 + v1[11]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 25165857;
          if (*(v0 + v1[11]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[9]))
      {
        if (*(v0 + v1[10]))
        {
          v2 = 2097185;
          if (*(v0 + v1[11]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 18874401;
          if (*(v0 + v1[11]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[10]))
      {
        v2 = 10485793;
        if (*(v0 + v1[11]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 27263009;
        if (*(v0 + v1[11]))
        {
          goto LABEL_94;
        }
      }

LABEL_93:
      v2 |= 0x800uLL;
      goto LABEL_94;
    }

    if (*(v0 + v1[8]))
    {
      if (*(v0 + v1[9]))
      {
        if (*(v0 + v1[10]))
        {
          v3 = 1048577;
LABEL_59:
          if (*(v0 + v1[11]) == 1)
          {
            v2 = v3 + 32;
            if (*(v0 + v1[13]))
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
        if (*(v0 + v1[10]))
        {
          v3 = 9437185;
          goto LABEL_59;
        }

        v6 = 26214401;
      }
    }

    else if (*(v0 + v1[9]))
    {
      if (*(v0 + v1[10]))
      {
        v3 = 3145729;
        goto LABEL_59;
      }

      v6 = 19922945;
    }

    else
    {
      if (*(v0 + v1[10]))
      {
        v3 = 11534337;
        goto LABEL_59;
      }

      v6 = 28311553;
    }

    v2 = v6 | 0x20;
    goto LABEL_92;
  }

  if (!*(v0 + v1[7]))
  {
    if (*(v0 + v1[8]))
    {
      if (*(v0 + v1[9]))
      {
        if (*(v0 + v1[10]))
        {
          v2 = 1048577;
          if (*(v0 + v1[11]))
          {
            goto LABEL_94;
          }
        }

        else
        {
          v2 = 17825793;
          if (*(v0 + v1[11]))
          {
            goto LABEL_94;
          }
        }
      }

      else if (*(v0 + v1[10]))
      {
        v2 = 9437185;
        if (*(v0 + v1[11]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 26214401;
        if (*(v0 + v1[11]))
        {
          goto LABEL_94;
        }
      }
    }

    else if (*(v0 + v1[9]))
    {
      if (*(v0 + v1[10]))
      {
        v2 = 3145729;
        if (*(v0 + v1[11]))
        {
          goto LABEL_94;
        }
      }

      else
      {
        v2 = 19922945;
        if (*(v0 + v1[11]))
        {
          goto LABEL_94;
        }
      }
    }

    else if (*(v0 + v1[10]))
    {
      v2 = 11534337;
      if (*(v0 + v1[11]))
      {
        goto LABEL_94;
      }
    }

    else
    {
      v2 = 28311553;
      if (*(v0 + v1[11]))
      {
        goto LABEL_94;
      }
    }

    goto LABEL_93;
  }

  if (!*(v0 + v1[8]))
  {
    if (*(v0 + v1[9]))
    {
      if (*(v0 + v1[10]))
      {
        v4 = 1048577;
      }

      else
      {
        v4 = 17825793;
      }
    }

    else if (*(v0 + v1[10]))
    {
      v4 = 9437185;
    }

    else
    {
      v4 = 26214401;
    }

    v2 = v4 + 0x100000;
    if (*(v0 + v1[11]))
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (*(v0 + v1[9]))
  {
    if (*(v0 + v1[10]))
    {
      if (*(v0 + v1[11]) == 1)
      {
        v2 = 1;
        if (*(v0 + v1[13]))
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
    if (*(v0 + v1[11]))
    {
      goto LABEL_94;
    }

    goto LABEL_93;
  }

  if (*(v0 + v1[10]))
  {
    v5 = 3145729;
  }

  else
  {
    v5 = 19922945;
  }

  v2 = v5 + 5242880;
  if (!*(v0 + v1[11]))
  {
    goto LABEL_93;
  }

LABEL_94:
  if ((*(v0 + v1[13]) & 1) == 0)
  {
    return v2 | 2;
  }

  return v2;
}

uint64_t sub_218ABD810(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for CuratedTodayFeedGroupConfigData(0);
  if (*(a1 + v5[6]) != *(a2 + v5[6]) || *(a1 + v5[7]) != *(a2 + v5[7]) || *(a1 + v5[8]) != *(a2 + v5[8]) || *(a1 + v5[9]) != *(a2 + v5[9]) || *(a1 + v5[10]) != *(a2 + v5[10]) || *(a1 + v5[11]) != *(a2 + v5[11]) || *(a1 + v5[12]) != *(a2 + v5[12]) || *(a1 + v5[13]) != *(a2 + v5[13]) || *(a1 + v5[14]) != *(a2 + v5[14]))
  {
    return 0;
  }

  v7 = v5[15];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  result = (v8 | v9) == 0;
  if (v8 && v9)
  {

    return sub_219417FCC(v8, v9);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CuratedTodayFeedGroupConfigData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CuratedTodayFeedGroupConfigData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_218ABDAAC()
{
  result = qword_27CC0D930;
  if (!qword_27CC0D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0D930);
  }

  return result;
}

unint64_t sub_218ABDB04()
{
  result = qword_280EA9828;
  if (!qword_280EA9828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9828);
  }

  return result;
}

unint64_t sub_218ABDB5C()
{
  result = qword_280EA9830;
  if (!qword_280EA9830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9830);
  }

  return result;
}

uint64_t sub_218ABDBB0(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000012 && 0x8000000219CE5B80 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CE5BA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CE5BC0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5BE0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5C00 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5C20 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CE5C40 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD9420 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000219CE5C60 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD7220 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_218ABDF74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218ABDFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_218ABE008(uint64_t a1)
{
  if (!qword_280E909F8)
  {
    type metadata accessor for SearchFeedServiceConfig(255);
    sub_218ABDF74(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
    v1 = sub_219BF0F94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E909F8);
    }
  }
}

uint64_t sub_218ABE09C()
{
  v0 = sub_219BF0B74();
  v47 = *(v0 - 8);
  v48 = v0;
  MEMORY[0x28223BE20](v0);
  v45 = &v40 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0F34();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v41 = v7;
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF04A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for SearchModel(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AC2A34(v51, v21, type metadata accessor for SearchModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v16 + 32))(v18, v21, v15);
      sub_219BF07D4();
      v37 = sub_219BF0404();
      (*(v11 + 8))(v13, v10);
      v38 = [v37 identifier];
      swift_unknownObjectRelease();
      v29 = sub_219BF5414();

      (*(v16 + 8))(v18, v15);
      return v29;
    }

    sub_2186F8128(0);
    v31 = type metadata accessor for SearchFeedGapLocation;
    v32 = &v21[*(v30 + 48)];
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v33 = v44;
    v34 = v41;
    (*(v44 + 32))(v9, v21, v41);
    sub_219BF07D4();
    v35 = sub_219BF0F14();
    (*(v42 + 8))(v6, v43);
    v36 = [v35 identifier];
    swift_unknownObjectRelease();
    v29 = sub_219BF5414();

    (*(v33 + 8))(v9, v34);
    return v29;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v31 = type metadata accessor for SearchModel;
    v32 = v21;
LABEL_9:
    sub_218AC1B9C(v32, v31);
    return 0;
  }

  v24 = v49;
  v23 = v50;
  v25 = v46;
  (*(v49 + 32))(v46, v21, v50);
  v26 = v45;
  sub_219BF07D4();
  v27 = sub_219BF0B44();
  (*(v47 + 8))(v26, v48);
  v28 = [v27 identifier];

  v29 = sub_219BF5414();
  (*(v24 + 8))(v25, v23);
  return v29;
}