__n128 sub_22889EB6C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_22889EB78()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22889EBB0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22889EBE8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

id sub_22889EC30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_22889EC9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_22889ECFC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22889ED3C()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_22889EDBC()
{
  v1 = sub_2288AF470();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_22889EE60@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_2288AE8C4();
}

__n128 sub_22889EED4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_22889EEE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_2288AF260();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_22889EF8C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_2288AF260();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22889F050@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22889F0A8();
  *a1 = result;
  return result;
}

uint64_t sub_22889F0A8()
{
  v1 = qword_2813D5370;
  if (*(v0 + qword_2813D5370))
  {
    v2 = *(v0 + qword_2813D5370);
  }

  else
  {
    v2 = sub_22889F110(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_22889F110(uint64_t *a1)
{
  v1 = *a1;
  sub_2288A030C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = *(v1 + 80);
  v8[3] = *(v1 + 88);
  v8[4] = v7;
  v9 = MEMORY[0x277CBCD88];
  sub_2288A04D8(0, &qword_2813D5108, MEMORY[0x277CBCD88]);
  sub_2288A0548(&qword_2813D52E0, &qword_2813D5108, v9, MEMORY[0x277CBCD90]);
  sub_2288AF6D0();
  sub_2288A041C();
  v10 = sub_2288AF6F0();
  (*(v4 + 8))(v6, v3);
  return v10;
}

uint64_t sub_22889F2E4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_2288A0474(0, &qword_2813D50F0, sub_2288A03C0, MEMORY[0x277CBCE78]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  sub_2288A04D8(0, &qword_2813D50E8, MEMORY[0x277CBCE88]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v19 = type metadata accessor for ArticlesGenerator(0, a2, a3, v18);
    v22 = sub_2288A4974(v19, &off_283BD17C8);
    sub_2288A03C0();
    sub_2288AF6B0();
    sub_2288A058C();
    v20 = sub_2288AF6F0();

    result = (*(v9 + 8))(v11, v8);
  }

  else
  {
    sub_2288A03C0();
    sub_2288AF6C0();
    sub_2288A0548(&qword_27D85ABF0, &qword_2813D50E8, MEMORY[0x277CBCE88], MEMORY[0x277CBCE90]);
    v20 = sub_2288AF6F0();
    result = (*(v14 + 8))(v16, v13);
  }

  *a4 = v20;
  return result;
}

uint64_t (*sub_22889F5B4(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_22889F0A8();
  return sub_22889F5FC;
}

uint64_t sub_22889F634@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t ArticlesGenerator.managedArticles.getter()
{
  sub_22889FEC0();
}

uint64_t ArticlesGenerator.__allocating_init(context:managedArticles:readArticleInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ArticlesGenerator.init(context:managedArticles:readArticleInfo:)(a1, a2, a3);
  return v6;
}

uint64_t ArticlesGenerator.init(context:managedArticles:readArticleInfo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + qword_2813D5370) = 0;
  if (qword_2813D5378 != -1)
  {
    swift_once();
  }

  v8 = sub_2288AF430();
  v9 = __swift_project_value_buffer(v8, qword_2813D5380);
  (*(*(v8 - 8) + 16))(v4 + qword_2813D53A8, v9, v8);
  sub_22889FF08(a3, v4 + qword_2813D53C0);
  *(v4 + qword_2813D53C8) = a2;
  v10 = qword_2813D53B0;
  v11 = sub_2288AF470();
  v12 = *(v11 - 8);
  (*(v12 + 16))(v4 + v10, a1, v11);
  v13 = objc_opt_self();
  sub_2288AF440();
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v14 = sub_2288AF3D0();
  v15 = [v13 healthArticlesDefaultsDomainWithHealthStore_];

  sub_22889FFE0(a3);
  (*(v12 + 8))(a1, v11);
  __swift_destroy_boxed_opaque_existential_1(v17);
  *(v4 + qword_2813D53B8) = v15;
  return v4;
}

uint64_t sub_22889F968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v17[4] = a2;
  v17[2] = a3;
  v17[3] = a1;
  v17[1] = a4;
  v4 = sub_2288AF2A0();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2288AF270();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AF590();
  sub_2288AF580();
  v11 = *MEMORY[0x277D11DF0];
  v12 = *(v8 + 104);
  v18 = v7;
  v12(v10, v11, v7);
  v13 = sub_2288AF460();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v14 = *MEMORY[0x277D10DE0];
  v15 = *(v20 + 104);
  v19 = v4;
  v15(v6, v14, v4);
  sub_2288AF290();

  (*(v20 + 8))(v6, v19);
  return (*(v8 + 8))(v10, v18);
}

uint64_t ArticlesGenerator.deinit()
{
  v1 = qword_2813D53A8;
  v2 = sub_2288AF430();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = qword_2813D53B0;
  v4 = sub_2288AF470();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_22889FFE0(v0 + qword_2813D53C0);

  return v0;
}

uint64_t ArticlesGenerator.__deallocating_deinit()
{
  ArticlesGenerator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22889FE10()
{
  sub_22889FEC0();
}

id sub_22889FE44()
{
  v0 = sub_2288A02FC();

  return v0;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22889FF08(uint64_t a1, uint64_t a2)
{
  sub_2288A0474(0, &qword_2813D5358, type metadata accessor for ReadArticleInformation, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_22889FFE0(uint64_t a1)
{
  sub_2288A0474(0, &qword_2813D5358, type metadata accessor for ReadArticleInformation, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_2288A00BC(uint64_t a1)
{
  sub_2288AF430();
  if (v1 <= 0x3F)
  {
    sub_2288AF470();
    if (v2 <= 0x3F)
    {
      sub_2288A0474(319, &qword_2813D5358, type metadata accessor for ReadArticleInformation, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_2288A030C(uint64_t a1)
{
  if (!qword_2813D50E0)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_2288A04D8(255, &qword_2813D5108, MEMORY[0x277CBCD88]);
    sub_2288A0548(&qword_2813D52E0, &qword_2813D5108, v1, MEMORY[0x277CBCD90]);
    v2 = sub_2288AF6E0();
    if (!v3)
    {
      atomic_store(v2, &qword_2813D50E0);
    }
  }
}

void sub_2288A03C0()
{
  if (!qword_2813D50D8)
  {
    v0 = sub_2288AF7C0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D50D8);
    }
  }
}

unint64_t sub_2288A041C()
{
  result = qword_2813D52C0;
  if (!qword_2813D52C0)
  {
    sub_2288A030C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D52C0);
  }

  return result;
}

void sub_2288A0474(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2288A04D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_2288A03C0();
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2288A0548(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2288A04D8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2288A058C()
{
  result = qword_2813D52C8;
  if (!qword_2813D52C8)
  {
    sub_2288A0474(255, &qword_2813D50F0, sub_2288A03C0, MEMORY[0x277CBCE78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D52C8);
  }

  return result;
}

uint64_t static PluginFeedItem.makeArticleFeedItemWithMetadata(article:sourceProfile:pluginFeedItemConstructor:)@<X0>(void *a1@<X0>, void (*a3)(uint64_t, uint64_t, char *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v68 = a4;
  v69 = a3;
  v62 = a5;
  v56 = sub_2288AF630();
  v61 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v65 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2288AF480();
  v55 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2288AF490();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2288AF5E0();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_2288AF5B0();
  v11 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2288AF3C0();
  v59 = *(v14 - 8);
  v60 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = sub_2288AF570();
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2288AF510();
  sub_2288AF5A0();
  v20 = v71[5];
  v69(v17, v19, v13);
  if (v20)
  {
    (*(v11 + 8))(v13, v67);
  }

  else
  {
    (*(v11 + 8))(v13, v67);

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2288AF520();
    sub_2288AF340();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2288AF520();
    sub_2288A0FA8();
    sub_2288AF810();

    sub_2288AF3A0();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2288AF500();
    sub_2288AF310();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2288AF540();
    sub_2288AF380();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2288AF530();
    v24 = v65;
    v23 = v66;
    v25 = v16;
    v27 = v63;
    v26 = v64;
    v28 = v55;
    if (v22)
    {
      if (v22 != 1 || (v29 = v55, __swift_project_boxed_opaque_existential_1(a1, a1[3]), v28 = v29, v27 = v63, sub_2288AF520(), v30 = sub_2288AF810(), , sub_2288A0FF4(v30), v32 = v31, , v23 = v66, v33 = v32, v26 = v64, v33))
      {
        v34 = v52;
        sub_2288AF5F0();
        sub_2288A1648(&qword_2813D5250, MEMORY[0x277D122A0], MEMORY[0x277D12298]);
        v35 = v54;
        sub_2288AF2D0();
        (*(v53 + 8))(v34, v35);
        v23 = v66;
      }
    }

    (*(v28 + 104))(v58, *MEMORY[0x277D11FA0], v23);
    v36 = v57;
    sub_2288AF4A0();
    sub_2288AF2D0();
    (*(v27 + 8))(v36, v26);
    sub_2288AF600();
    v37 = sub_2288AF620();
    v38 = sub_2288AF840();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v71[0] = v40;
      *v39 = 136315394;
      v41 = v60;
      v70 = v60;
      sub_2288A1600();
      v42 = sub_2288AF740();
      v44 = sub_2288A1070(v42, v43, v71);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      swift_beginAccess();
      sub_2288A1648(&qword_2813D5398, MEMORY[0x277D11EB0], MEMORY[0x277D11EB8]);
      v45 = sub_2288AF980();
      v47 = sub_2288A1070(v45, v46, v71);
      v48 = v41;

      *(v39 + 14) = v47;
      _os_log_impl(&dword_22889D000, v37, v38, "[%s] Making article feed item: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC22E0](v40, -1, -1);
      MEMORY[0x22AAC22E0](v39, -1, -1);

      (*(v61 + 8))(v65, v56);
      v49 = v62;
    }

    else
    {

      (*(v61 + 8))(v24, v56);
      v49 = v62;
      v48 = v60;
    }

    v50 = v59;
    swift_beginAccess();
    (*(v50 + 16))(v49, v25, v48);
    return (*(v50 + 8))(v25, v48);
  }
}

uint64_t static PluginFeedItem.mutualExclusionTagForArticle(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2288AF530();
  if (!v3)
  {
    return 0;
  }

  if (v3 == 1)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2288AF520();
    sub_2288A0FA8();
    v4 = sub_2288AF810();

    v5 = sub_2288A0FF4(v4);

    return v5;
  }

  return result;
}

unint64_t sub_2288A0FA8()
{
  result = qword_2813D52B0;
  if (!qword_2813D52B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813D52B0);
  }

  return result;
}

uint64_t sub_2288A0FF4(uint64_t a1)
{
  v2 = sub_2288AF8A0();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_2288A1690(v2, *(a1 + 36), 0, a1);

  return v4;
}

unint64_t sub_2288A1070(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2288A113C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2288A16E4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2288A113C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2288A1248(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2288AF970();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_2288A1248(uint64_t a1, unint64_t a2)
{
  v3 = sub_2288A1294(a1, a2);
  sub_2288A13C4(&unk_283BD17A0);
  return v3;
}

void *sub_2288A1294(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2288A14B0(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2288AF970();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_2288AF760();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2288A14B0(v10, 0);
        result = sub_2288AF960();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_2288A13C4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2288A1518(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2288A14B0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2288A1740();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2288A1518(char *result, int64_t a2, char a3, char *a4)
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
    sub_2288A1740();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

unint64_t sub_2288A1600()
{
  result = qword_2813D5270;
  if (!qword_2813D5270)
  {
    sub_2288AF3C0();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2813D5270);
  }

  return result;
}

uint64_t sub_2288A1648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2288A1690(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_2288A16E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2288A1740()
{
  if (!qword_2813D5098)
  {
    v0 = sub_2288AF990();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D5098);
    }
  }
}

uint64_t static DataTypeDetailViewControllerWithLoadAction.OnLoadAction.articleActionForHighlightAlert(sourceIdentifier:dataProvider:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_2288A1AE8(a3, v10);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a4;
  sub_2288A1B4C(v10, (v7 + 40));

  v8 = a4;
  return sub_2288AF5C0();
}

uint64_t sub_2288A183C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v26 = a1;
  sub_2288A1C50(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  sub_2288AF7F0();
  sub_2288AF7E0();
  sub_2288AF7D0();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  static DataTypeDetailViewControllerWithLoadAction.OnLoadAction.getArticleDateDisplayedForHighlightAlertIdentifier(_:healthStore:)(a2, a3, a4, v14);
  v15 = sub_2288AF260();
  v16 = *(v15 - 8);
  v17 = (*(v16 + 48))(v14, 1, v15);
  sub_2288A22E4(v14);
  if (v17 == 1)
  {
    v18 = a5[3];
    v25 = a2;
    __swift_project_boxed_opaque_existential_1(a5, v18);
    sub_2288AF560();
    v23 = a3;
    v24 = a4;
    __swift_project_boxed_opaque_existential_1(a5, a5[3]);
    sub_2288AF4F0();
    v19 = objc_allocWithZone(sub_2288AF4E0());
    v20 = sub_2288AF4D0();
    v21 = [objc_allocWithZone(MEMORY[0x277D12970]) initWithRootViewController_];
    [v21 setDelegate_];
    [v26 presentViewController:v21 animated:1 completion:0];
    sub_2288AF250();
    (*(v16 + 56))(v12, 0, 1, v15);
    _s18HealthExperienceUI42DataTypeDetailViewControllerWithLoadActionC02OnjK0V0A18ArticlesGenerationE50setArticleDateDisplayedForHighlightAlertIdentifier__11healthStoreySS_10Foundation0Q0VSgSo08HKHealthX0CtFZ_0(v25, v23, v12, v24);

    sub_2288A22E4(v12);
  }
}

uint64_t sub_2288A1AE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2288A1B4C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

BOOL static DataTypeDetailViewControllerWithLoadAction.OnLoadAction.shouldDisplayArticleFromHighlightAlertIdentifier(_:healthStore:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_2288A1C50(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DataTypeDetailViewControllerWithLoadAction.OnLoadAction.getArticleDateDisplayedForHighlightAlertIdentifier(_:healthStore:)(a1, a2, a3, v8);
  v9 = sub_2288AF260();
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9) == 1;
  sub_2288A22E4(v8);
  return v10;
}

void sub_2288A1C50(uint64_t a1)
{
  if (!qword_2813D5280)
  {
    sub_2288AF260();
    v1 = sub_2288AF890();
    if (!v2)
    {
      atomic_store(v1, &qword_2813D5280);
    }
  }
}

void static DataTypeDetailViewControllerWithLoadAction.OnLoadAction.getArticleDateDisplayedForHighlightAlertIdentifier(_:healthStore:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a4;
  v7 = sub_2288AF630();
  v38 = *(v7 - 8);
  v39 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  sub_2288A1C50(0);
  v36 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = [objc_opt_self() healthArticlesDefaultsDomainWithHealthStore_];
  v37 = a1;
  v21 = sub_2288AF720();
  v22 = HKArticlesKeyDisplayedFromHighlightAlert(v21);

  if (v22)
  {
    sub_2288AF730();

    sub_2288AF850();

    sub_2288AF600();
    sub_2288A2AAC(v19, v17);

    v23 = sub_2288AF620();
    v24 = sub_2288AF840();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42[0] = v35;
      *v25 = 136446722;
      v41 = sub_2288AF5D0();
      sub_2288A2A64();
      v26 = sub_2288AF740();
      v28 = sub_2288A1070(v26, v27, v42);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      sub_2288A2AAC(v17, v14);
      v29 = sub_2288AF740();
      v31 = v30;
      sub_2288A22E4(v17);
      v32 = sub_2288A1070(v29, v31, v42);

      *(v25 + 14) = v32;
      *(v25 + 22) = 2080;
      *(v25 + 24) = sub_2288A1070(v37, a2, v42);
      _os_log_impl(&dword_22889D000, v23, v24, "[%{public}s] Fetched last article launch from highlight alert date %s for identifier %s.", v25, 0x20u);
      v33 = v35;
      swift_arrayDestroy();
      MEMORY[0x22AAC22E0](v33, -1, -1);
      MEMORY[0x22AAC22E0](v25, -1, -1);
    }

    else
    {

      sub_2288A22E4(v17);
    }

    (*(v38 + 8))(v10, v39);
    sub_2288A2B10(v19, v40);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2288A22E4(uint64_t a1)
{
  sub_2288A1C50(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s18HealthExperienceUI42DataTypeDetailViewControllerWithLoadActionC02OnjK0V0A18ArticlesGenerationE50setArticleDateDisplayedForHighlightAlertIdentifier__11healthStoreySS_10Foundation0Q0VSgSo08HKHealthX0CtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v62 = a1;
  v64[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2288AF630();
  v60 = *(v7 - 8);
  v61 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v59 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v58 - v10;
  sub_2288A1C50(0);
  v58[1] = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v58 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = v58 - v19;
  v21 = [objc_opt_self() healthArticlesDefaultsDomainWithHealthStore_];
  sub_2288A2AAC(a3, v20);
  v22 = sub_2288AF260();
  v23 = *(v22 - 8);
  v24 = 0;
  if ((*(v23 + 48))(v20, 1, v22) != 1)
  {
    v24 = sub_2288AF240();
    (*(v23 + 8))(v20, v22);
  }

  v25 = sub_2288AF720();
  v26 = HKArticlesKeyDisplayedFromHighlightAlert(v25);

  if (!v26)
  {
    __break(1u);
  }

  v64[0] = 0;
  v27 = [v21 setDate:v24 forKey:v26 error:v64];

  if (v27)
  {
    v28 = v64[0];
    sub_2288AF600();
    sub_2288A2AAC(a3, v18);

    v29 = sub_2288AF620();
    v30 = sub_2288AF840();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v64[0] = v32;
      *v31 = 136446722;
      v63 = sub_2288AF5D0();
      sub_2288A2A64();
      v33 = sub_2288AF740();
      v35 = sub_2288A1070(v33, v34, v64);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      sub_2288A2AAC(v18, v15);
      v36 = sub_2288AF740();
      v38 = v37;
      sub_2288A22E4(v18);
      v39 = sub_2288A1070(v36, v38, v64);

      *(v31 + 14) = v39;
      *(v31 + 22) = 2080;
      *(v31 + 24) = sub_2288A1070(v62, a2, v64);
      _os_log_impl(&dword_22889D000, v29, v30, "[%{public}s] Set last article launch from highlight alert date to %s for identifier %s.", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAC22E0](v32, -1, -1);
      MEMORY[0x22AAC22E0](v31, -1, -1);
    }

    else
    {

      sub_2288A22E4(v18);
    }

    return (*(v60 + 8))(v11, v61);
  }

  else
  {
    v40 = v64[0];
    v41 = sub_2288AF230();

    swift_willThrow();
    v42 = v59;
    sub_2288AF610();

    v43 = v41;
    v44 = sub_2288AF620();
    v45 = sub_2288AF830();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v64[0] = v47;
      *v46 = 136446722;
      v63 = sub_2288AF5D0();
      sub_2288A2A64();
      v48 = sub_2288AF740();
      v50 = sub_2288A1070(v48, v49, v64);

      *(v46 + 4) = v50;
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_2288A1070(v62, a2, v64);
      *(v46 + 22) = 2080;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v53 + 16))(v58 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
      v54 = sub_2288AF740();
      v56 = sub_2288A1070(v54, v55, v64);

      *(v46 + 24) = v56;
      _os_log_impl(&dword_22889D000, v44, v45, "[%{public}s]: Encountered error while setting article %s HKArticlesKeyDisplayedFromHighlightAlert status: %s", v46, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AAC22E0](v47, -1, -1);
      MEMORY[0x22AAC22E0](v46, -1, -1);
    }

    else
    {
    }

    return (*(v60 + 8))(v42, v61);
  }
}

id HKArticlesKeyDisplayedFromHighlightAlert(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", v1, @"ArticleDisplayedFromHighlightAlert"];

  return v2;
}

unint64_t sub_2288A2A64()
{
  result = qword_27D85ABF8;
  if (!qword_27D85ABF8)
  {
    sub_2288AF5D0();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D85ABF8);
  }

  return result;
}

uint64_t sub_2288A2AAC(uint64_t a1, uint64_t a2)
{
  sub_2288A1C50(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2288A2B10(uint64_t a1, uint64_t a2)
{
  sub_2288A1C50(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2288A2B74(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_2288A2BD4()
{
  v1 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_2288A2C28(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_2288A2CE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_2288A2D94(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_2288A2E64()
{
  v1 = *v0;
  sub_2288AFA00();
  MEMORY[0x22AAC1E40](v1);
  return sub_2288AFA20();
}

uint64_t sub_2288A2ED8(uint64_t a1)
{
  v2 = *v1;
  sub_2288AFA00();
  MEMORY[0x22AAC1E40](v2);
  return sub_2288AFA20();
}

id sub_2288A2F2C()
{
  v1 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector____lazy_storage___observers;
  v2 = *(v0 + OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector____lazy_storage___observers);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector____lazy_storage___observers);
  }

  else
  {
    swift_getObjectType();
    sub_2288A475C();
    sub_2288AF740();
    v4 = HKLogInfrastructure();
    v5 = objc_allocWithZone(MEMORY[0x277CCD738]);
    v6 = sub_2288AF720();

    v7 = [v5 initWithName:v6 loggingCategory:v4];

    v8 = *(v0 + v1);
    *(v0 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id ArticleChangeDetector.__allocating_init(healthStore:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
  sub_2288A31C4();
  swift_allocObject();
  *&v3[v4] = sub_2288AF690();
  *&v3[OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector____lazy_storage___observers] = 0;
  v5 = [objc_opt_self() healthArticlesDefaultsDomainWithHealthStore_];
  *&v3[OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain] = v5;
  v8.receiver = v3;
  v8.super_class = v1;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_2288A32CC();

  return v6;
}

id ArticleChangeDetector.init(healthStore:)(void *a1)
{
  v3 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
  sub_2288A31C4();
  swift_allocObject();
  *&v1[v3] = sub_2288AF690();
  *&v1[OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector____lazy_storage___observers] = 0;
  v4 = [objc_opt_self() healthArticlesDefaultsDomainWithHealthStore_];
  *&v1[OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain] = v4;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for ArticleChangeDetector();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_2288A32CC();

  return v5;
}

void sub_2288A31C4()
{
  if (!qword_2813D5100)
  {
    v0 = sub_2288AF6A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D5100);
    }
  }
}

void sub_2288A3224(uint64_t a1)
{
  v2 = sub_2288A2F2C();
  [v2 registerObserver_];
}

void sub_2288A3278(uint64_t a1)
{
  v2 = sub_2288A2F2C();
  [v2 unregisterObserver_];
}

void sub_2288A32CC()
{
  v1 = v0;
  v2 = sub_2288AF630();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AF600();
  v6 = sub_2288AF620();
  v7 = sub_2288AF840();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22889D000, v6, v7, "ArticleChangeDetector subscribed to article status updates.", v8, 2u);
    MEMORY[0x22AAC22E0](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v9 = [objc_opt_self() defaultCenter];
  v10 = sub_2288AF860();
  [v9 addObserver:v1 selector:sel_articleStatusDidChange_ name:v10 object:0];
}

void sub_2288A348C(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v1 = sub_2288AF260();
  v83 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v81 = &v76[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v5 = &v76[-v4];
  v6 = sub_2288AF630();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v76[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v82 = &v76[-v12];
  MEMORY[0x28223BE20](v11);
  v14 = &v76[-v13];
  sub_2288AF600();
  v15 = sub_2288AF620();
  v16 = sub_2288AF840();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v5;
    v18 = v1;
    v19 = v6;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22889D000, v15, v16, "ArticleChangeDetector received article status update.", v20, 2u);
    v21 = v20;
    v6 = v19;
    v1 = v18;
    v5 = v17;
    MEMORY[0x22AAC22E0](v21, -1, -1);
  }

  v22 = *(v7 + 8);
  (v22)(v14, v6);
  v23 = sub_2288A43EC();
  v25 = v24;
  v85 = v6;
  v26 = v23;
  sub_2288AF250();
  v27 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain;
  v28 = v86;
  swift_beginAccess();
  v29 = *&v28[v27];
  v30 = sub_2288AF240();
  v80 = v26;
  v31 = sub_2288AF720();
  v32 = HKArticlesKeyReadState(v31);

  if (v32)
  {
    aBlock[0] = 0;
    v33 = [v29 setDate:v30 forKey:v32 error:aBlock];

    if (v33)
    {
      v34 = aBlock[0];
      v35 = v82;
      sub_2288AF600();
      v36 = v83;
      v37 = v81;
      (*(v83 + 16))(v81, v5, v1);

      v38 = sub_2288AF620();
      v39 = sub_2288AF840();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = v37;
        v41 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        aBlock[0] = v79;
        *v41 = 136315394;
        sub_2288A4600();
        v42 = sub_2288AF980();
        v78 = v38;
        v43 = v42;
        v44 = v36;
        v46 = v45;
        v77 = v39;
        v47 = *(v44 + 8);
        ObjectType = ((v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v47(v40, v1);
        v48 = sub_2288A1070(v43, v46, aBlock);

        *(v41 + 4) = v48;
        *(v41 + 12) = 2080;
        v49 = v80;
        *(v41 + 14) = sub_2288A1070(v80, v25, aBlock);
        v50 = v78;
        _os_log_impl(&dword_22889D000, v78, v77, "ArticleChangeDetector set read state to %s for identifier %s.", v41, 0x16u);
        v51 = v79;
        swift_arrayDestroy();
        MEMORY[0x22AAC22E0](v51, -1, -1);
        MEMORY[0x22AAC22E0](v41, -1, -1);

        (v22)(v82, v85);
      }

      else
      {

        v47 = *(v36 + 8);
        ObjectType = ((v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v47(v37, v1);
        (v22)(v35, v85);
        v49 = v80;
      }

      v72 = v86;
      v73 = sub_2288A2F2C();
      v74 = swift_allocObject();
      v74[2] = v49;
      v74[3] = v25;
      v74[4] = v72;
      aBlock[4] = sub_2288A4584;
      aBlock[5] = v74;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2288A3D78;
      aBlock[3] = &block_descriptor;
      v75 = _Block_copy(aBlock);

      v72;

      [v73 notifyObservers_];
      _Block_release(v75);

      swift_beginAccess();
      v87[0] = v49;
      v87[1] = v25;

      sub_2288AF680();

      v47(v5, v1);
    }

    else
    {
      v86 = v22;
      v52 = aBlock[0];

      v53 = sub_2288AF230();

      swift_willThrow();
      (*(v83 + 8))(v5, v1);
      v54 = v85;
      sub_2288AF610();
      v55 = v53;
      v56 = sub_2288AF620();
      v57 = sub_2288AF830();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v85 = v54;
        v60 = v59;
        v87[0] = v59;
        *v58 = 136315394;
        aBlock[0] = ObjectType;
        swift_getMetatypeMetadata();
        v61 = sub_2288AF740();
        v63 = sub_2288A1070(v61, v62, v87);

        *(v58 + 4) = v63;
        *(v58 + 12) = 2080;
        ErrorValue = swift_getErrorValue();
        MEMORY[0x28223BE20](ErrorValue);
        (*(v66 + 16))(&v76[-((v65 + 15) & 0xFFFFFFFFFFFFFFF0)]);
        v67 = sub_2288AF740();
        v69 = sub_2288A1070(v67, v68, v87);

        *(v58 + 14) = v69;
        _os_log_impl(&dword_22889D000, v56, v57, "[%s]: encountered error while processing notification %s", v58, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAC22E0](v60, -1, -1);
        MEMORY[0x22AAC22E0](v58, -1, -1);

        v70 = v10;
        v71 = v85;
      }

      else
      {

        v70 = v10;
        v71 = v54;
      }

      (v86)(v70, v71);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2288A3D78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v4 = swift_unknownObjectRetain();
  v3(v4);

  return MEMORY[0x2821FEBE0](a2);
}

id ArticleChangeDetector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ArticleChangeDetector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArticleChangeDetector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2288A41B0(uint64_t a1)
{
  v2 = sub_2288AF8F0();

  return sub_2288A426C(a1, v2);
}

unint64_t sub_2288A41F4(uint64_t a1, uint64_t a2)
{
  sub_2288AFA00();
  sub_2288AF750();
  v4 = sub_2288AFA20();

  return sub_2288A4334(a1, a2, v4);
}

unint64_t sub_2288A426C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2288A4700(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x22AAC1D30](v9, a1);
      sub_2288A46AC(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2288A4334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2288AF9A0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2288A43EC()
{
  v0 = sub_2288AF1E0();
  if (v0)
  {
    v1 = v0;
    v7 = sub_2288AF1C0();
    sub_2288AF910();
    if (*(v1 + 16) && (v2 = sub_2288A41B0(v8), (v3 & 1) != 0))
    {
      sub_2288A16E4(*(v1 + 56) + 32 * v2, v9);
      sub_2288A46AC(v8);

      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {

      sub_2288A46AC(v8);
    }

    sub_2288A4658();
    swift_allocError();
    v6 = 1;
  }

  else
  {
    sub_2288A4658();
    swift_allocError();
    v6 = 0;
  }

  *v5 = v6;
  return swift_willThrow();
}

id HKArticlesKeyReadState(void *a1)
{
  v1 = a1;
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@_%@", v1, @"ArticleReadState"];

  return v2;
}

void sub_2288A4584(void *a1)
{
  v3 = *(v1 + 32);
  v4 = sub_2288AF720();
  [a1 readArticleWithIdentifier:v4 detectedBy:v3];
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2288A4600()
{
  result = qword_27D85AC18;
  if (!qword_27D85AC18)
  {
    sub_2288AF260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85AC18);
  }

  return result;
}

unint64_t sub_2288A4658()
{
  result = qword_27D85AC20;
  if (!qword_27D85AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85AC20);
  }

  return result;
}

unint64_t sub_2288A475C()
{
  result = qword_27D85AC28;
  if (!qword_27D85AC28)
  {
    type metadata accessor for ArticleChangeDetector();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_27D85AC28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArticleChangeDetector.NotificationUserInfoError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ArticleChangeDetector.NotificationUserInfoError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2288A491C()
{
  result = qword_27D85AC30;
  if (!qword_27D85AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85AC30);
  }

  return result;
}

char *sub_2288A4974(uint64_t (*a1)(void, void), uint64_t a2)
{
  v4 = sub_2288AF630();
  MEMORY[0x28223BE20](v4);
  v5 = sub_2288A4E38(a1, a2);
  if (v5)
  {
    v6 = v5;

    v7 = sub_2288A9F3C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_2288A9F3C((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[40 * v9];
    *(v10 + 4) = v6;
    *(v10 + 5) = 0;
    *(v10 + 6) = 0;
    *(v10 + 7) = 0;
    v10[64] = 32;
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
    v7 = MEMORY[0x277D84F90];
  }

  v11 = sub_2288A5BC8(v6, a1, a2);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_2288A9F3C(0, *(v7 + 2) + 1, 1, v7);
  }

  v13 = *(v7 + 2);
  v12 = *(v7 + 3);
  if (v13 >= v12 >> 1)
  {
    v7 = sub_2288A9F3C((v12 > 1), v13 + 1, 1, v7);
  }

  *(v7 + 2) = v13 + 1;
  v14 = &v7[40 * v13];
  *(v14 + 4) = v11;
  *(v14 + 5) = 0;
  *(v14 + 6) = 0;
  *(v14 + 7) = 0;
  v14[64] = 0;
  return v7;
}

uint64_t sub_2288A4D8C()
{
  sub_2288AFA00();
  MEMORY[0x22AAC1E40](0);
  return sub_2288AFA20();
}

uint64_t sub_2288A4DF8(uint64_t a1)
{
  sub_2288AFA00();
  MEMORY[0x22AAC1E40](0);
  return sub_2288AFA20();
}

void *sub_2288A4E38(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v124 = sub_2288AF270();
  v111 = *(v124 - 1);
  v6 = MEMORY[0x28223BE20](v124);
  v123 = &v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v122 = &v103 - v8;
  v9 = sub_2288AF3C0();
  v125 = *(v9 - 8);
  v126 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v118 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v120 = &v103 - v13;
  MEMORY[0x28223BE20](v12);
  v121 = &v103 - v14;
  v119 = sub_2288AF470();
  v15 = *(v119 - 1);
  v16 = MEMORY[0x28223BE20](v119);
  v117 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2288AF630();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v103 - v26;
  sub_2288AF600();
  v28 = *(v18 + 16);
  v109 = v3;
  v28(v20, v3, a1);
  v116 = v27;
  v29 = sub_2288AF620();
  v30 = sub_2288AF840();
  v31 = os_log_type_enabled(v29, v30);
  v110 = a2;
  if (v31)
  {
    v32 = swift_slowAlloc();
    LODWORD(v114) = v30;
    v33 = v32;
    v115 = swift_slowAlloc();
    v127 = v115;
    *v33 = 136446466;
    v131 = a1;
    swift_getMetatypeMetadata();
    v34 = sub_2288AF740();
    v113 = v29;
    v36 = sub_2288A1070(v34, v35, &v127);

    *(v33 + 4) = v36;
    *(v33 + 12) = 2080;
    v37 = (*(v110 + 32))(a1, v110);
    (*(v18 + 8))(v20, a1);
    v38 = sub_2288ACE64();
    v39 = MEMORY[0x22AAC1BC0](v37, v38);
    v41 = v40;

    v42 = sub_2288A1070(v39, v41, &v127);

    *(v33 + 14) = v42;
    a2 = v110;
    v43 = v113;
    _os_log_impl(&dword_22889D000, v113, v114, "[%{public}s]: Managed articles: %s", v33, 0x16u);
    v44 = v115;
    swift_arrayDestroy();
    MEMORY[0x22AAC22E0](v44, -1, -1);
    MEMORY[0x22AAC22E0](v33, -1, -1);
  }

  else
  {
    (*(v18 + 8))(v20, a1);
  }

  v103 = *(v22 + 8);
  v103(v116, v21);
  v106 = v25;
  v107 = v22;
  v104 = v21;
  v45 = v117;
  (*(a2 + 16))(a1, a2);
  v46 = sub_2288AF460();
  (*(v15 + 8))(v45, v119);
  v47 = *(a2 + 8);
  v108 = a1;
  v47(&v127, a1, a2);
  __swift_project_boxed_opaque_existential_1(&v127, v128);
  v48 = v46;
  v117 = v46;
  v49 = sub_2288AF400();
  v105 = v48;

  result = v49;
  v51 = MEMORY[0x277D84F90];
  v116 = *(v49 + 16);
  if (!v116)
  {
LABEL_18:

    __swift_destroy_boxed_opaque_existential_1(&v127);
    v65 = *(v51 + 16);
    if (v65)
    {
      v127 = MEMORY[0x277D84F90];
      sub_2288ABE00(0, v65, 0);
      v66 = v127;
      v67 = *(v125 + 16);
      v68 = v51 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
      v123 = *(v125 + 72);
      v124 = v67;
      v125 += 16;
      v69 = (v125 - 8);
      do
      {
        v70 = v118;
        v71 = v126;
        v124(v118, v68, v126);
        v72 = sub_2288AF320();
        v74 = v73;
        (*v69)(v70, v71);
        v127 = v66;
        v76 = *(v66 + 16);
        v75 = *(v66 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_2288ABE00((v75 > 1), v76 + 1, 1);
          v66 = v127;
        }

        *(v66 + 16) = v76 + 1;
        v77 = v66 + 16 * v76;
        *(v77 + 32) = v72;
        *(v77 + 40) = v74;
        v68 += v123;
        --v65;
      }

      while (v65);
    }

    else
    {

      v66 = MEMORY[0x277D84F90];
    }

    v78 = sub_2288AC3A4(v66);

    v79 = v108;
    v80 = (*(v110 + 32))(v108);
    v81 = *(v80 + 16);
    if (v81)
    {
      v131 = MEMORY[0x277D84F90];
      sub_2288ABE00(0, v81, 0);
      v82 = v131;
      v83 = v80 + 32;
      do
      {
        sub_2288A1AE8(v83, &v127);
        __swift_project_boxed_opaque_existential_1(&v127, v128);
        v84 = sub_2288AF570();
        v86 = v85;
        __swift_destroy_boxed_opaque_existential_1(&v127);
        v131 = v82;
        v88 = *(v82 + 16);
        v87 = *(v82 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_2288ABE00((v87 > 1), v88 + 1, 1);
          v82 = v131;
        }

        *(v82 + 16) = v88 + 1;
        v89 = v82 + 16 * v88;
        *(v89 + 32) = v84;
        *(v89 + 40) = v86;
        v83 += 48;
        --v81;
      }

      while (v81);

      v79 = v108;
    }

    else
    {

      v82 = MEMORY[0x277D84F90];
    }

    v90 = sub_2288AC3A4(v82);

    v91 = v106;
    if (*(v90 + 16) > *(v78 + 16) >> 3)
    {
      v92 = sub_2288AA360(v90, v78);

      v93 = *(v92 + 16);
      if (!v93)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v127 = v78;
      sub_2288AA234(v90);

      v92 = v127;
      v93 = v127[2];
      if (!v93)
      {
LABEL_39:

        v94 = MEMORY[0x277D84F90];
        if (!*(MEMORY[0x277D84F90] + 16))
        {
LABEL_40:

          sub_2288AF600();
          v96 = sub_2288AF620();
          v97 = sub_2288AF840();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            v99 = swift_slowAlloc();
            v127 = v99;
            *v98 = 136446210;
            v131 = v79;
            swift_getMetatypeMetadata();
            v100 = sub_2288AF740();
            v102 = sub_2288A1070(v100, v101, &v127);

            *(v98 + 4) = v102;
            _os_log_impl(&dword_22889D000, v96, v97, "[%{public}s]: No invalid feed items to purge.", v98, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v99);
            MEMORY[0x22AAC22E0](v99, -1, -1);
            MEMORY[0x22AAC22E0](v98, -1, -1);
          }

          else
          {
          }

          v103(v91, v104);
          return 0;
        }

LABEL_37:

        return v94;
      }
    }

    v94 = sub_2288AA05C(v93, 0);
    v95 = sub_2288AC24C(&v127, v94 + 4, v93, v92);
    result = sub_2288AC460(v127);
    if (v95 != v93)
    {
      goto LABEL_46;
    }

    if (!v94[2])
    {
      goto LABEL_40;
    }

    goto LABEL_37;
  }

  v52 = 0;
  v114 = v125 + 16;
  LODWORD(v113) = *MEMORY[0x277D11DF0];
  v112 = (v111 + 13);
  v53 = (v111 + 1);
  v111 = (v125 + 8);
  v119 = (v125 + 32);
  v115 = v49;
  while (v52 < result[2])
  {
    v54 = (*(v125 + 80) + 32) & ~*(v125 + 80);
    v55 = *(v125 + 72);
    (*(v125 + 16))(v121, result + v54 + v55 * v52, v126);
    sub_2288AF2B0();
    (*v112)(v123, v113, v124);
    sub_2288ACED0(&qword_2813D53A0, MEMORY[0x277D11E28], MEMORY[0x277D11E40]);
    sub_2288AF770();
    sub_2288AF770();
    if (v131 == v129 && v132 == v130)
    {
      v56 = *v53;
      v57 = v124;
      (*v53)(v123, v124);
      v56(v122, v57);

LABEL_13:
      v61 = *v119;
      (*v119)(v120, v121, v126);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v133 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2288ABE20(0, *(v51 + 16) + 1, 1);
        v51 = v133;
      }

      v64 = *(v51 + 16);
      v63 = *(v51 + 24);
      if (v64 >= v63 >> 1)
      {
        sub_2288ABE20((v63 > 1), v64 + 1, 1);
        v51 = v133;
      }

      *(v51 + 16) = v64 + 1;
      v61((v51 + v54 + v64 * v55), v120, v126);
      goto LABEL_7;
    }

    v58 = sub_2288AF9A0();
    v59 = *v53;
    v60 = v124;
    (*v53)(v123, v124);
    v59(v122, v60);

    if (v58)
    {
      goto LABEL_13;
    }

    (*v111)(v121, v126);
LABEL_7:
    ++v52;
    result = v115;
    if (v116 == v52)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

_OWORD *sub_2288A5BC8(unint64_t *a1, uint64_t (*a2)(void, void), uint64_t a3)
{
  v4 = v3;
  v94 = a1;
  v7 = sub_2288AF470();
  v98 = *(v7 - 8);
  v99 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_2288ACE00(0, &qword_2813D5278, MEMORY[0x277D11EB0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v100 = &v88 - v12;
  v102 = sub_2288AF3C0();
  v95 = *(v102 - 8);
  v13 = MEMORY[0x28223BE20](v102);
  v101 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v97 = (&v88 - v15);
  sub_2288ACE00(0, &qword_2813D5358, type metadata accessor for ReadArticleInformation, v10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v88 - v17;
  ArticleInformation = type metadata accessor for ReadArticleInformation(0);
  v20 = *(ArticleInformation - 8);
  MEMORY[0x28223BE20](ArticleInformation);
  v22 = (&v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a3 + 24))(a2, a3);
  if ((*(v20 + 48))(v18, 1, ArticleInformation) == 1)
  {
    sub_2288AC550(v18, &qword_2813D5358, type metadata accessor for ReadArticleInformation);
    (*(a3 + 16))(a2, a3);
    v100 = sub_2288AF460();
    (*(v98 + 8))(v9, v99);
    v88 = *(a3 + 32);
    v89 = a3 + 32;
    v23 = v88(a2, a3);
    v24 = *(v23 + 16);
    v92 = a3;
    v93 = v4;
    v91 = a2;
    if (v24)
    {
      v105 = MEMORY[0x277D84F90];
      sub_2288ABE00(0, v24, 0);
      v25 = v105;
      v26 = v23 + 32;
      do
      {
        sub_2288A1AE8(v26, &v103);
        __swift_project_boxed_opaque_existential_1(&v103, v104);
        v27 = sub_2288AF570();
        v29 = v28;
        __swift_destroy_boxed_opaque_existential_1(&v103);
        v105 = v25;
        v31 = *(v25 + 16);
        v30 = *(v25 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_2288ABE00((v30 > 1), v31 + 1, 1);
          v25 = v105;
        }

        *(v25 + 16) = v31 + 1;
        v32 = v25 + 16 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
        v26 += 48;
        --v24;
      }

      while (v24);

      a2 = v91;
      v36 = v92;
      v37 = v93;
    }

    else
    {
      v36 = a3;
      v37 = v4;

      v25 = MEMORY[0x277D84F90];
    }

    sub_2288AC3A4(v25);

    (*(v36 + 8))(&v103, a2, v36);
    __swift_project_boxed_opaque_existential_1(&v103, v104);
    v38 = sub_2288AF3F0();

    __swift_destroy_boxed_opaque_existential_1(&v103);
    v39 = *(v38 + 16);
    v40 = MEMORY[0x277D84F90];
    v90 = v38;
    if (v39)
    {
      v103 = MEMORY[0x277D84F90];
      sub_2288ABE00(0, v39, 0);
      v40 = v103;
      v41 = *(v95 + 16);
      v42 = v38 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
      v97 = *(v95 + 72);
      v98 = v41;
      v99 = (v95 + 16);
      v43 = (v95 + 8);
      do
      {
        v44 = v101;
        v45 = v102;
        (v98)(v101, v42, v102);
        v46 = sub_2288AF320();
        v48 = v47;
        (*v43)(v44, v45);
        v103 = v40;
        v50 = *(v40 + 16);
        v49 = *(v40 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_2288ABE00((v49 > 1), v50 + 1, 1);
          v40 = v103;
        }

        *(v40 + 16) = v50 + 1;
        v51 = v40 + 16 * v50;
        *(v51 + 32) = v46;
        *(v51 + 40) = v48;
        v42 += v97;
        --v39;
      }

      while (v39);
      v36 = v92;
      v37 = v93;
      a2 = v91;
    }

    v52 = sub_2288AC3A4(v40);

    v53 = sub_2288AA8D0(v94, v52);
    v54 = v88(a2, v36);
    v34 = &v88;
    MEMORY[0x28223BE20](v54);
    *(&v88 - 4) = a2;
    *(&v88 - 3) = v36;
    v55 = v100;
    *(&v88 - 2) = v100;
    *(&v88 - 1) = v37;
    v56 = v96;
    v57 = sub_2288A6694(sub_2288AC43C, (&v88 - 6), v54);

    if (v56)
    {

      return v34;
    }

    v94 = v53;
    v89 = 0;
    v60 = *(v57 + 16);
    v61 = v57;
    v62 = MEMORY[0x277D84F90];
    v96 = v61;
    if (v60)
    {
      v103 = MEMORY[0x277D84F90];
      sub_2288ABE00(0, v60, 0);
      v62 = v103;
      v63 = v95 + 16;
      v64 = *(v95 + 16);
      v65 = v61 + ((*(v95 + 80) + 32) & ~*(v95 + 80));
      v98 = *(v95 + 72);
      v99 = v64;
      v97 = (v95 + 8);
      do
      {
        v66 = v101;
        v67 = v102;
        v68 = v63;
        v99(v101, v65, v102);
        v69 = sub_2288AF320();
        v71 = v70;
        (*v97)(v66, v67);
        v103 = v62;
        v73 = *(v62 + 16);
        v72 = *(v62 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_2288ABE00((v72 > 1), v73 + 1, 1);
          v62 = v103;
        }

        *(v62 + 16) = v73 + 1;
        v74 = v62 + 16 * v73;
        *(v74 + 32) = v69;
        *(v74 + 40) = v71;
        v65 += v98;
        --v60;
        v63 = v68;
      }

      while (v60);
      v36 = v92;
      v37 = v93;
      a2 = v91;
      v75 = v100;
    }

    else
    {
      v75 = v55;
    }

    v79 = v90;
    v80 = sub_2288AC3A4(v62);

    if (v94[2] <= *(v80 + 16) >> 3)
    {
      v103 = v80;
      sub_2288AA234(v94);

      v81 = v103;
    }

    else
    {
      v81 = sub_2288AA360(v94, v80);
    }

    v82 = v96;
    v83 = *(v81 + 16);
    if (v83)
    {
      v84 = sub_2288AA05C(*(v81 + 16), 0);
      v85 = sub_2288AC24C(&v103, v84 + 4, v83, v81);
      v86 = sub_2288AC460(v103);
      if (v85 == v83)
      {
LABEL_36:
        MEMORY[0x28223BE20](v86);
        *(&v88 - 6) = a2;
        *(&v88 - 5) = v36;
        *(&v88 - 4) = v82;
        *(&v88 - 3) = v79;
        *(&v88 - 2) = v37;
        v34 = sub_2288A8D40(sub_2288AC468, (&v88 - 8), v84);

        return v34;
      }

      __break(1u);
    }

    v84 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  sub_2288AC48C(v18, v22);
  v33 = v100;
  v34 = v4;
  v35 = v96;
  sub_2288A6844(v22, a2, a3, v100);
  if (v35)
  {
    sub_2288AC4F0(v22, type metadata accessor for ReadArticleInformation);
  }

  else
  {
    v58 = v95;
    v59 = v102;
    if ((*(v95 + 48))(v33, 1, v102) == 1)
    {
      sub_2288AC550(v33, &qword_2813D5278, MEMORY[0x277D11EB0]);
      sub_2288AC4F0(v22, type metadata accessor for ReadArticleInformation);
      return MEMORY[0x277D84F90];
    }

    else
    {
      v76 = *(v58 + 32);
      v77 = v97;
      v76(v97, v33, v59);
      sub_2288ACE00(0, &qword_2813D50B8, MEMORY[0x277D11EB0], MEMORY[0x277D84560]);
      v78 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v34 = swift_allocObject();
      v34[1] = xmmword_2288B01D0;
      v76((v34 + v78), v77, v59);
      sub_2288AC4F0(v22, type metadata accessor for ReadArticleInformation);
    }
  }

  return v34;
}

uint64_t sub_2288A6694(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v16 = sub_2288AF3C0();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2288ABE20(0, v9, 0);
    v10 = v20;
    v11 = a3 + 32;
    v15[1] = v6 + 32;
    while (1)
    {
      v17(v11, &v19);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_2288ABE20((v12 > 1), v13 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v13 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v8, v16);
      v11 += 48;
      if (!--v9)
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t sub_2288A6844@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v38 = a4;
  v7 = MEMORY[0x277D83D88];
  sub_2288ACE00(0, &qword_2813D5268, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v37 = &v32 - v9;
  v45 = sub_2288AF470();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288ACE00(0, &qword_2813D5278, MEMORY[0x277D11EB0], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_2288AF3C0();
  v16 = *(v15 - 8);
  v41 = v15;
  v42 = v16;
  MEMORY[0x28223BE20](v15);
  v36 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a3 + 8))(v44, a2, a3);
  v40 = v44[4];
  v39 = __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v18 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v19 = *(a3 + 16);
  v34 = a2;
  v35 = a3;
  v19(a2, a3);
  v20 = sub_2288AF460();
  (*(v43 + 8))(v11, v45);
  sub_2288AF570();

  v21 = v41;
  v22 = v42;
  sub_2288AF3E0();

  if ((*(v22 + 48))(v14, 1, v21) == 1)
  {
    sub_2288AC550(v14, &qword_2813D5278, MEMORY[0x277D11EB0]);
    __swift_destroy_boxed_opaque_existential_1(v44);
    sub_2288AC5C0();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v24 = *(v22 + 32);
    v25 = v36;
    v24(v36, v14, v21);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v26 = v37;
    sub_2288AF360();
    v27 = sub_2288AF4C0();
    v28 = (*(*(v27 - 8) + 48))(v26, 1, v27);
    sub_2288AC550(v26, &qword_2813D5268, MEMORY[0x277D12030]);
    if (v28 == 1)
    {
      ArticleInformation = type metadata accessor for ReadArticleInformation(0);
      sub_2288AC614(v25, v33 + *(ArticleInformation + 20), v33);
      v30 = v38;
      v24(v38, v25, v21);
      v31 = 0;
    }

    else
    {
      (*(v22 + 8))(v25, v21);
      v31 = 1;
      v30 = v38;
    }

    return (*(v22 + 56))(v30, v31, 1, v21);
  }
}

uint64_t sub_2288A6CF8@<X0>(void *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = sub_2288A6D8C(a3, a4, a5);
  static PluginFeedItem.makeArticleFeedItemWithMetadata(article:sourceProfile:pluginFeedItemConstructor:)(a1, v11, v12, a7);

  if (v7)
  {
    *a6 = v7;
  }

  return result;
}

uint64_t (*sub_2288A6D8C(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return sub_2288ACF64;
}

uint64_t sub_2288A6EAC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v72 = a7;
  v66 = a5;
  v67 = a6;
  v68 = a4;
  v70 = a3;
  v9 = MEMORY[0x277D83D88];
  sub_2288ACE00(0, &qword_2813D5278, MEMORY[0x277D11EB0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v65 = &v60 - v11;
  sub_2288ACE00(0, &qword_2813D5268, MEMORY[0x277D12030], v9);
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v60 - v13;
  v14 = sub_2288AF3C0();
  v73 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v74 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v62 = &v60 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v64 = &v60 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v60 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v69 = &v60 - v25;
  MEMORY[0x28223BE20](v24);
  v71 = &v60 - v26;
  v27 = *(a2 + 16);
  if (!v27)
  {
    return (*(v73 + 56))(v72, 1, 1, v14);
  }

  v28 = *a1;
  v29 = a1[1];
  v30 = *(v73 + 16);
  v31 = (*(v73 + 80) + 32) & ~*(v73 + 80);
  v75 = *(v73 + 72);
  v76 = v30;
  v61 = v31;
  v32 = a2 + v31;
  v77 = v73 + 16;
  v33 = (v73 + 8);
  while (1)
  {
    v76(v23, v32, v14);
    if (sub_2288AF320() == v28 && v34 == v29)
    {
      break;
    }

    v35 = sub_2288AF9A0();

    if (v35)
    {
      goto LABEL_9;
    }

    (*v33)(v23, v14);
    v32 += v75;
    if (!--v27)
    {
      return (*(v73 + 56))(v72, 1, 1, v14);
    }
  }

LABEL_9:
  v37 = *(v73 + 32);
  v38 = v69;
  v37(v69, v23, v14);
  v69 = v37;
  v37(v71, v38, v14);
  v39 = *(v70 + 16);
  v40 = v74;
  if (v39)
  {
    v41 = v70 + v61;
    while (1)
    {
      v76(v40, v41, v14);
      if (sub_2288AF320() == v28 && v42 == v29)
      {
        break;
      }

      v43 = sub_2288AF9A0();

      if (v43)
      {
        goto LABEL_17;
      }

      v40 = v74;
      (*v33)(v74, v14);
      v41 += v75;
      if (!--v39)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    v46 = v62;
    v47 = v69;
    (v69)(v62, v74, v14);
    v48 = v64;
    v47(v64, v46, v14);
    v49 = v63;
    sub_2288AF360();
    v50 = sub_2288AF4C0();
    LODWORD(v46) = (*(*(v50 - 8) + 48))(v49, 1, v50);
    sub_2288AC550(v49, &qword_2813D5268, MEMORY[0x277D12030]);
    v51 = v71;
    if (v46 == 1)
    {
      sub_2288A761C(v71, v66, v67);
    }

    v52 = v65;
    v76(v65, v48, v14);
    v54 = v73 + 56;
    v53 = *(v73 + 56);
    v53(v52, 0, 1, v14);
    v55 = sub_2288A810C(v52);
    sub_2288AC550(v52, &qword_2813D5278, MEMORY[0x277D11EB0]);
    v56 = *(v54 - 48);
    v56(v48, v14);
    if (v55)
    {
      v56(v51, v14);
      v57 = v72;
      v58 = 1;
    }

    else
    {
      v59 = v72;
      (v69)(v72, v51, v14);
      v57 = v59;
      v58 = 0;
    }

    return v53(v57, v58, 1, v14);
  }

  else
  {
LABEL_15:
    v44 = v71;
    sub_2288A761C(v71, v66, v67);
    v45 = v72;
    (v69)(v72, v44, v14);
    return (*(v73 + 56))(v45, 0, 1, v14);
  }
}

_OWORD *sub_2288A74F0@<X0>(_OWORD *result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(result + 2);
  if (v3)
  {
    v4 = result + 2;
    while (1)
    {
      sub_2288A1AE8(v4, &v12);
      __swift_project_boxed_opaque_existential_1(&v12, v13);
      v5 = sub_2288AF2E0();
      v6 = sub_2288AF570();
      v8 = v7;

      if (v6 == sub_2288AF320() && v8 == v9)
      {
        break;
      }

      v11 = sub_2288AF9A0();

      if (v11)
      {
        return sub_2288A1B4C(&v12, a2);
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v12);
      v4 += 3;
      if (!--v3)
      {
        goto LABEL_9;
      }
    }

    return sub_2288A1B4C(&v12, a2);
  }

  else
  {
LABEL_9:
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

void sub_2288A761C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_2288AF630();
  v8 = *(v7 - 8);
  v83 = v7;
  v84 = v8;
  v9 = MEMORY[0x28223BE20](v7);
  v10 = MEMORY[0x28223BE20](v9);
  v77 = &v72 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v73 = &v72 - v13;
  MEMORY[0x28223BE20](v12);
  v75 = &v72 - v14;
  sub_2288ACE00(0, &qword_2813D5280, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v72 - v16;
  v18 = sub_2288AF260();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v74 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v80 = &v72 - v22;
  v81 = sub_2288AF320();
  v24 = v23;
  v25 = *(a3 + 40);
  v76 = v3;
  v82 = a2;
  v79 = a3;
  v26 = v25(a2, a3);
  v78 = a1;
  sub_2288AF320();
  v27 = sub_2288AF720();

  v28 = HKArticlesKeyReadState(v27);

  if (v28)
  {
    sub_2288AF730();

    sub_2288AF850();

    v29 = v19;
    v30 = v18;
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_2288AC550(v17, &qword_2813D5280, MEMORY[0x277CC9578]);
      v31 = v77;
      sub_2288AF600();

      v32 = sub_2288AF620();
      v33 = sub_2288AF830();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *&v88[0] = v35;
        *v34 = 136315394;
        *&v86 = v82;
        swift_getMetatypeMetadata();
        v36 = sub_2288AF740();
        v38 = sub_2288A1070(v36, v37, v88);

        *(v34 + 4) = v38;
        *(v34 + 12) = 2080;
        v39 = sub_2288A1070(v81, v24, v88);

        *(v34 + 14) = v39;
        _os_log_impl(&dword_22889D000, v32, v33, "[%s] Identifier %s is not in the system yet, which means it is has not been read yet", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAC22E0](v35, -1, -1);
        MEMORY[0x22AAC22E0](v34, -1, -1);
      }

      else
      {
      }

      (*(v84 + 8))(v31, v83);
    }

    else
    {
      v40 = v80;
      (*(v19 + 32))(v80, v17, v18);
      v41 = v82;
      v42 = (*(v79 + 32))(v82);
      sub_2288A74F0(v42, &v86);

      if (v87)
      {
        sub_2288A1B4C(&v86, v88);
        v43 = v75;
        sub_2288AF600();
        v44 = *(v19 + 16);
        v45 = v74;
        v44(v74, v40, v30);

        v46 = sub_2288AF620();
        v47 = sub_2288AF840();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          LODWORD(v76) = v47;
          v49 = v48;
          v77 = swift_slowAlloc();
          v85 = v41;
          *&v86 = v77;
          *v49 = 136315650;
          swift_getMetatypeMetadata();
          v50 = sub_2288AF740();
          v52 = sub_2288A1070(v50, v51, &v86);

          *(v49 + 4) = v52;
          *(v49 + 12) = 2080;
          sub_2288ACED0(&qword_27D85AC18, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v53 = sub_2288AF980();
          v55 = v54;
          v56 = *(v29 + 8);
          v56(v45, v30);
          v57 = sub_2288A1070(v53, v55, &v86);

          *(v49 + 14) = v57;
          *(v49 + 22) = 2080;
          v58 = sub_2288A1070(v81, v24, &v86);

          *(v49 + 24) = v58;
          _os_log_impl(&dword_22889D000, v46, v76, "[%s] Adding read date of %s to article %s", v49, 0x20u);
          v59 = v77;
          swift_arrayDestroy();
          MEMORY[0x22AAC22E0](v59, -1, -1);
          MEMORY[0x22AAC22E0](v49, -1, -1);

          (*(v84 + 8))(v75, v83);
        }

        else
        {

          v56 = *(v29 + 8);
          v56(v45, v30);
          (*(v84 + 8))(v43, v83);
        }

        v71 = v80;
        sub_2288AC614(v78, v80, v88);
        __swift_destroy_boxed_opaque_existential_1(v88);
        v56(v71, v30);
      }

      else
      {
        sub_2288AC550(&v86, &qword_27D85AC50, sub_2288ACE64);
        v60 = v73;
        sub_2288AF600();

        v61 = sub_2288AF620();
        v62 = sub_2288AF830();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v79 = v29;
          v65 = v64;
          *&v88[0] = v64;
          *v63 = 136315394;
          *&v86 = v41;
          swift_getMetatypeMetadata();
          v66 = sub_2288AF740();
          v67 = v60;
          v69 = sub_2288A1070(v66, v68, v88);

          *(v63 + 4) = v69;
          *(v63 + 12) = 2080;
          v70 = sub_2288A1070(v81, v24, v88);

          *(v63 + 14) = v70;
          _os_log_impl(&dword_22889D000, v61, v62, "[%s] Identifier %s is not a managed article", v63, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AAC22E0](v65, -1, -1);
          MEMORY[0x22AAC22E0](v63, -1, -1);

          (*(v84 + 8))(v67, v83);
          (*(v79 + 8))(v40, v30);
        }

        else
        {

          (*(v84 + 8))(v60, v83);
          (*(v29 + 8))(v40, v30);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

BOOL sub_2288A810C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2288AF270();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v107 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v108 = &v100 - v8;
  v110 = sub_2288AF4C0();
  v112 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v105 = &v100 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AC9E4(0);
  v109 = v10;
  MEMORY[0x28223BE20](v10);
  v113 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83D88];
  sub_2288ACE00(0, &qword_2813D5268, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v106 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v114 = &v100 - v17;
  MEMORY[0x28223BE20](v16);
  v111 = &v100 - v18;
  v19 = MEMORY[0x277D11EB0];
  sub_2288ACE00(0, &qword_2813D5278, MEMORY[0x277D11EB0], v12);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v100 - v21;
  v23 = sub_2288AF3C0();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288ACAF8(a1, v22, &qword_2813D5278, v19);
  if ((*(v24 + 48))(v22, 1, v23) != 1)
  {
    (*(v24 + 32))(v26, v22, v23);
    v28 = sub_2288AF320();
    v30 = v29;
    if (v28 == sub_2288AF320() && v30 == v31)
    {
    }

    else
    {
      v32 = sub_2288AF9A0();

      if ((v32 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    v102 = v5;
    v103 = v4;
    v104 = v24;
    v33 = v23;
    v34 = sub_2288AF2F0();
    v36 = v35;
    v38 = v37;
    v39 = sub_2288AF2F0();
    v41 = v40;
    v43 = v42;
    v44 = v2;
    v45 = MEMORY[0x22AAC16B0](v34, v36, v38, v39, v40, v42);
    sub_2288ACA78(v39, v41, v43);
    sub_2288ACA78(v34, v36, v38);
    if (v45)
    {
      v46 = sub_2288AF3B0();
      v48 = v47;
      v50 = sub_2288AF3B0();
      v51 = v49;
      v52 = v44;
      if (v48 >> 60 == 15)
      {
        v23 = v33;
        v53 = v114;
        if (v49 >> 60 == 15)
        {
          v101 = v26;
          sub_2288ACA90(v46, v48);
          v24 = v104;
LABEL_15:
          v55 = v111;
          v100 = v52;
          sub_2288AF360();
          sub_2288AF360();
          v56 = *(v109 + 48);
          v57 = MEMORY[0x277D12030];
          v58 = v113;
          sub_2288ACAF8(v55, v113, &qword_2813D5268, MEMORY[0x277D12030]);
          sub_2288ACAF8(v53, v58 + v56, &qword_2813D5268, v57);
          v59 = v53;
          v60 = *(v112 + 48);
          v61 = v110;
          if (v60(v58, 1, v110) == 1)
          {
            v62 = MEMORY[0x277D12030];
            sub_2288AC550(v59, &qword_2813D5268, MEMORY[0x277D12030]);
            v63 = v113;
            sub_2288AC550(v55, &qword_2813D5268, v62);
            if (v60(v63 + v56, 1, v61) == 1)
            {
              sub_2288AC550(v63, &qword_2813D5268, MEMORY[0x277D12030]);
              v26 = v101;
LABEL_23:
              sub_2288AF2B0();
              v72 = v26;
              sub_2288AF2B0();
              sub_2288ACED0(&qword_2813D53A0, MEMORY[0x277D11E28], MEMORY[0x277D11E40]);
              sub_2288AF770();
              sub_2288AF770();
              if (v117 == v115 && v118 == v116)
              {
                v73 = v103;
                v74 = *(v102 + 8);
                v74(v107, v103);
                v74(v108, v73);
              }

              else
              {
                v75 = sub_2288AF9A0();
                v76 = v103;
                v77 = *(v102 + 8);
                v77(v107, v103);
                v77(v108, v76);

                if ((v75 & 1) == 0)
                {
                  goto LABEL_51;
                }
              }

              v78 = sub_2288AF330();
              v26 = v72;
              v79 = sub_2288AF330();
              sub_2288A9064(v78, v79);
              v81 = v80;

              if (v81)
              {
                v82 = sub_2288AF390();
                v83 = sub_2288AF390();
                v84 = sub_2288A92CC(v82, v83);

                if (v84)
                {
                  v85 = sub_2288AF300();
                  v87 = v86;
                  v88 = sub_2288AF300();
                  v27 = v89;
                  if (v87)
                  {
                    if (!v89)
                    {
LABEL_45:

                      v24 = v104;
LABEL_52:
                      v26 = v72;
                      goto LABEL_35;
                    }

                    if (v85 == v88 && v87 == v89)
                    {

LABEL_40:
                      v92 = sub_2288AF350();
                      v94 = v93;
                      v95 = sub_2288AF350();
                      v27 = v96;
                      if (!v94)
                      {
                        v24 = v104;
                        if (!v96)
                        {
                          goto LABEL_50;
                        }

                        goto LABEL_51;
                      }

                      if (v96)
                      {
                        if (v92 == v95 && v94 == v96)
                        {

                          v24 = v104;
LABEL_50:
                          v98 = sub_2288AF2C0();
                          v99 = sub_2288AF2C0();
                          v27 = sub_2288A9484(v98, v99);

                          goto LABEL_52;
                        }

                        v97 = sub_2288AF9A0();

                        v24 = v104;
                        if (v97)
                        {
                          goto LABEL_50;
                        }

LABEL_51:
                        v27 = 0;
                        goto LABEL_52;
                      }

                      goto LABEL_45;
                    }

                    v91 = sub_2288AF9A0();

                    if (v91)
                    {
                      goto LABEL_40;
                    }
                  }

                  else
                  {
                    if (!v89)
                    {
                      goto LABEL_40;
                    }
                  }

                  v27 = 0;
                  v24 = v104;
                  goto LABEL_52;
                }
              }

              goto LABEL_34;
            }

            goto LABEL_20;
          }

          v64 = v106;
          sub_2288ACAF8(v58, v106, &qword_2813D5268, MEMORY[0x277D12030]);
          if (v60(v58 + v56, 1, v61) == 1)
          {
            v65 = MEMORY[0x277D12030];
            sub_2288AC550(v114, &qword_2813D5268, MEMORY[0x277D12030]);
            v63 = v113;
            sub_2288AC550(v111, &qword_2813D5268, v65);
            (*(v112 + 8))(v64, v61);
LABEL_20:
            sub_2288AC4F0(v63, sub_2288AC9E4);
            goto LABEL_21;
          }

          v66 = v64;
          v67 = v112;
          v68 = v58 + v56;
          v69 = v105;
          (*(v112 + 32))(v105, v68, v61);
          sub_2288ACED0(&qword_27D85AC48, MEMORY[0x277D12030], MEMORY[0x277D12038]);
          LODWORD(v109) = sub_2288AF710();
          v70 = *(v67 + 8);
          v70(v69, v61);
          v71 = MEMORY[0x277D12030];
          sub_2288AC550(v114, &qword_2813D5268, MEMORY[0x277D12030]);
          sub_2288AC550(v111, &qword_2813D5268, v71);
          v70(v66, v61);
          sub_2288AC550(v58, &qword_2813D5268, v71);
          v26 = v101;
          if (v109)
          {
            goto LABEL_23;
          }

LABEL_34:
          v27 = 0;
          goto LABEL_35;
        }
      }

      else
      {
        v23 = v33;
        v53 = v114;
        if (v49 >> 60 != 15)
        {
          v101 = v26;
          sub_2288ACD98(v46, v48);
          sub_2288ACD98(v50, v51);
          v54 = sub_2288ACC30(v46, v48, v50, v51);
          sub_2288ACA90(v50, v51);
          sub_2288ACA90(v50, v51);
          sub_2288ACA90(v46, v48);
          sub_2288ACA90(v46, v48);
          v24 = v104;
          if (!v54)
          {
LABEL_21:
            v27 = 0;
            v26 = v101;
            goto LABEL_35;
          }

          goto LABEL_15;
        }
      }

      sub_2288ACA90(v46, v48);
      sub_2288ACA90(v50, v51);
      v27 = 0;
      v24 = v104;
    }

    else
    {
      v27 = 0;
      v23 = v33;
      v24 = v104;
    }

LABEL_35:
    (*(v24 + 8))(v26, v23);
    return v27;
  }

  sub_2288AC550(v22, &qword_2813D5278, MEMORY[0x277D11EB0]);
  return 0;
}

char *sub_2288A8D40(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v30[3] = a2;
  sub_2288ACE00(0, &qword_2813D5278, MEMORY[0x277D11EB0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_2288AF3C0();
  v10 = MEMORY[0x28223BE20](v9);
  v29 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v26 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x277D84F90];
  }

  v24 = v12;
  v27 = (v12 + 32);
  v28 = (v12 + 48);
  v15 = (a3 + 40);
  v16 = MEMORY[0x277D84F90];
  v25 = a1;
  while (1)
  {
    v17 = *v15;
    v30[0] = *(v15 - 1);
    v30[1] = v17;

    a1(v30);
    if (v3)
    {
      break;
    }

    if ((*v28)(v8, 1, v9) == 1)
    {
      sub_2288AC550(v8, &qword_2813D5278, MEMORY[0x277D11EB0]);
    }

    else
    {
      v18 = v9;
      v19 = v26;
      v20 = *v27;
      (*v27)(v26, v8, v18);
      v20(v29, v19, v18);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2288A9D40(0, *(v16 + 2) + 1, 1, v16);
      }

      v22 = *(v16 + 2);
      v21 = *(v16 + 3);
      if (v22 >= v21 >> 1)
      {
        v16 = sub_2288A9D40((v21 > 1), v22 + 1, 1, v16);
      }

      *(v16 + 2) = v22 + 1;
      v20(&v16[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22], v29, v18);
      v9 = v18;
      a1 = v25;
    }

    v15 += 2;
    if (!--v14)
    {
      return v16;
    }
  }

  return v16;
}

void sub_2288A9064(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_2288AC14C(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_2288A0FA8();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_2288AF870();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_2288AF880();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_2288A92CC(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_2288AFA00();

    sub_2288AF750();
    v16 = sub_2288AFA20();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_2288AF9A0() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_2288A9484(uint64_t a1, uint64_t a2)
{
  v58[3] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v56 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          return 1;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v56 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_2288ACDAC(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        return v20;
      }

      v21 = sub_2288A41F4(v15, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v24 = (*(v2 + 56) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 >> 62;
      v28 = v18 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25 == 0xC000000000000000;
        }

        v30 = 0;
        v31 = v29 && v18 >> 62 == 3;
        if (v31 && !v19 && v18 == 0xC000000000000000)
        {
          v32 = 0;
          v33 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v28 <= 1)
        {
LABEL_37:
          if (!v28)
          {
            v37 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v37) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v37;
            goto LABEL_43;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v39 = *(v26 + 16);
          v38 = *(v26 + 24);
          v36 = __OFSUB__(v38, v39);
          v30 = v38 - v39;
          if (!v36)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v30 = 0;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v27)
      {
        LODWORD(v30) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_80;
        }

        v30 = v30;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = BYTE6(v25);
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 2)
      {
        break;
      }

      if (v30)
      {
        goto LABEL_74;
      }

LABEL_48:
      v32 = v19;
      v33 = v18;
LABEL_49:
      sub_2288ACAA4(v32, v33);
      v3 = a1;
      v8 = v56;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v30 != v37)
    {
      break;
    }

    if (v30 < 1)
    {
      goto LABEL_48;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v58, 0, 14);
        sub_2288ACDAC(v26, v25);
        goto LABEL_64;
      }

      v51 = *(v26 + 24);
      v53 = *(v26 + 16);
      sub_2288ACDAC(v26, v25);
      v40 = sub_2288AF200();
      if (v40)
      {
        v41 = v40;
        v42 = sub_2288AF220();
        v43 = v53;
        if (__OFSUB__(v53, v42))
        {
          goto LABEL_84;
        }

        v50 = v53 - v42 + v41;
      }

      else
      {
        v50 = 0;
        v43 = v53;
      }

      if (__OFSUB__(v51, v43))
      {
        goto LABEL_83;
      }

      sub_2288AF210();
      v48 = v50;
LABEL_70:
      sub_2288A9980(v48, v19, v18, v58);
      sub_2288ACAA4(v26, v25);
      sub_2288ACAA4(v19, v18);
      v47 = v58[0];
      goto LABEL_71;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_82;
      }

      sub_2288ACDAC(v26, v25);
      v44 = sub_2288AF200();
      if (v44)
      {
        v52 = v44;
        v45 = sub_2288AF220();
        if (__OFSUB__(v26, v45))
        {
          goto LABEL_85;
        }

        v46 = v26 - v45 + v52;
      }

      else
      {
        v46 = 0;
      }

      sub_2288AF210();
      v48 = v46;
      goto LABEL_70;
    }

    v58[0] = v26;
    LOWORD(v58[1]) = v25;
    BYTE2(v58[1]) = BYTE2(v25);
    BYTE3(v58[1]) = BYTE3(v25);
    BYTE4(v58[1]) = BYTE4(v25);
    BYTE5(v58[1]) = BYTE5(v25);
    sub_2288ACDAC(v26, v25);
LABEL_64:
    sub_2288A9980(v58, v19, v18, &v57);
    sub_2288ACAA4(v26, v25);
    sub_2288ACAA4(v19, v18);
    v47 = v57;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v56;
    if ((v47 & 1) == 0)
    {
      return v20;
    }
  }

LABEL_74:
  sub_2288ACAA4(v19, v18);
  return 0;
}

uint64_t sub_2288A9980@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_2288AF200();
    if (v10)
    {
      v11 = sub_2288AF220();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_2288AF210();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_2288AF200();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_2288AF220();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_2288AF210();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2288A9BB0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2288ACB78(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2288ACAA4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2288A9980(v13, a3, a4, &v12);
  v10 = v4;
  sub_2288ACAA4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void *sub_2288A9D40(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2288ACE00(0, &qword_2813D50B8, MEMORY[0x277D11EB0], MEMORY[0x277D84560]);
  v10 = *(sub_2288AF3C0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2288AF3C0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2288A9F3C(char *result, int64_t a2, char a3, char *a4)
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
    sub_2288ACF18(0, &qword_2813D50B0, MEMORY[0x277D120A0]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_2288AA05C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2288ACF18(0, &qword_2813D50A0, MEMORY[0x277D837D0]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_2288AA0E4(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_2288AFA00();
  sub_2288AF750();
  v8 = sub_2288AFA20();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_2288AF9A0() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2288ABC80(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2288AA234(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_2288AAD7C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t sub_2288AA360(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_2288AFA00();

    sub_2288AF750();
    v23 = sub_2288AFA20();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_2288AF9A0() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_2288AB528(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_2288AFA00();

            sub_2288AF750();
            v41 = sub_2288AFA20();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_2288AF9A0() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_2288AB10C(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x22AAC22E0](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_2288AC460(v13);
    return v5;
  }

  result = MEMORY[0x22AAC22E0](v50, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_2288AA8D0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_2288AFA00();

    sub_2288AF750();
    v11 = sub_2288AFA20();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_2288AF9A0() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x28223BE20](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_2288AB528(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_2288AFA00();

        sub_2288AF750();
        v33 = sub_2288AFA20();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_2288AF9A0() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_2288AB344(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x22AAC22E0](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x22AAC22E0](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2288AAD7C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2288AFA00();
  sub_2288AF750();
  v6 = sub_2288AFA20();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2288AF9A0() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2288AB740();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2288ABABC(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_2288AAEB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2288AC98C();
  result = sub_2288AF930();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_2288AFA00();
      sub_2288AF750();
      result = sub_2288AFA20();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t *sub_2288AB10C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_2288AB528(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_2288AFA00();

        sub_2288AF750();
        v19 = sub_2288AFA20();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_2288AF9A0() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

unint64_t *sub_2288AB344(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_2288AB528(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_2288AFA00();

        sub_2288AF750();
        v16 = sub_2288AFA20();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_2288AF9A0() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_2288AB528(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_2288AC98C();
  result = sub_2288AF940();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2288AFA00();

    sub_2288AF750();
    result = sub_2288AFA20();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_2288AB740()
{
  v1 = v0;
  sub_2288AC98C();
  v2 = *v0;
  v3 = sub_2288AF920();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2288AB890(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_2288AC98C();
  result = sub_2288AF930();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_2288AFA00();

      sub_2288AF750();
      result = sub_2288AFA20();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_2288ABABC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2288AF8B0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_2288AFA00();

        sub_2288AF750();
        v10 = sub_2288AFA20();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_2288ABC80(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2288AAEB8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2288AB740();
      goto LABEL_16;
    }

    sub_2288AB890(v8 + 1);
  }

  v10 = *v4;
  sub_2288AFA00();
  sub_2288AF750();
  result = sub_2288AFA20();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_2288AF9A0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_2288AF9B0();
  __break(1u);
  return result;
}

char *sub_2288ABE00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2288ABE40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2288ABE20(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2288ABF50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2288ABE40(char *result, int64_t a2, char a3, char *a4)
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
    sub_2288ACF18(0, &qword_2813D50A0, MEMORY[0x277D837D0]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *sub_2288ABF50(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_2288ACE00(0, &qword_2813D50B8, MEMORY[0x277D11EB0], MEMORY[0x277D84560]);
  v10 = *(sub_2288AF3C0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_2288AF3C0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_2288AC14C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_2288AF8C0())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_2288AF8E0();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void *sub_2288AC24C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2288AC3A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AAC1C30](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_2288AA0E4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2288AC48C(uint64_t a1, uint64_t a2)
{
  ArticleInformation = type metadata accessor for ReadArticleInformation(0);
  (*(*(ArticleInformation - 8) + 32))(a2, a1, ArticleInformation);
  return a2;
}

uint64_t sub_2288AC4F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2288AC550(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2288ACE00(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2288AC5C0()
{
  result = qword_27D85AC38;
  if (!qword_27D85AC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85AC38);
  }

  return result;
}

uint64_t sub_2288AC614(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a2;
  v23 = a3;
  v20 = a1;
  v21 = sub_2288AF260();
  v3 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2288AF1B0();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2288ACE00(0, &qword_2813D5268, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_2288AF480();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2288AF490();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 104))(v13, *MEMORY[0x277D11F98], v10);
  sub_2288AF4A0();
  sub_2288AF2D0();
  (*(v15 + 8))(v17, v14);
  (*(v3 + 16))(v5, v22, v21);
  sub_2288AF1A0();
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_2288AF550();
  sub_2288AF4B0();
  v18 = sub_2288AF4C0();
  (*(*(v18 - 8) + 56))(v9, 0, 1, v18);
  return sub_2288AF370();
}

void sub_2288AC98C()
{
  if (!qword_2813D50C8)
  {
    v0 = sub_2288AF950();
    if (!v1)
    {
      atomic_store(v0, &qword_2813D50C8);
    }
  }
}

void sub_2288AC9E4(uint64_t a1)
{
  if (!qword_27D85AC40)
  {
    sub_2288ACE00(255, &qword_2813D5268, MEMORY[0x277D12030], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D85AC40);
    }
  }
}

uint64_t sub_2288ACA78(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_2288ACA90(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2288ACAA4(result, a2);
  }

  return result;
}

uint64_t sub_2288ACAA4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2288ACAF8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2288ACE00(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2288ACB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_2288AF200();
  v11 = result;
  if (result)
  {
    result = sub_2288AF220();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2288AF210();
  sub_2288A9980(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2288ACC30(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_2288ACDAC(a3, a4);
          return sub_2288A9BB0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2288ACD98(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2288ACDAC(result, a2);
  }

  return result;
}

uint64_t sub_2288ACDAC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void sub_2288ACE00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2288ACE64()
{
  result = qword_2813D5258;
  if (!qword_2813D5258)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813D5258);
  }

  return result;
}

uint64_t sub_2288ACED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2288ACF18(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2288AF990();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for GenerationError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for GenerationError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2288AD0B8()
{
  result = qword_27D85AC58;
  if (!qword_27D85AC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D85AC58);
  }

  return result;
}

uint64_t sub_2288AD10C()
{
  v0 = sub_2288AF410();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2288AF430();
  __swift_allocate_value_buffer(v4, qword_2813D5380);
  __swift_project_value_buffer(v4, qword_2813D5380);
  sub_2288AEFBC(0, &qword_2813D50C0, MEMORY[0x277D11E28], MEMORY[0x277D84560]);
  v5 = sub_2288AF270();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2288B01D0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D11DF0], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D11F10], v0);
  return sub_2288AF420();
}

uint64_t static GeneratorDomain.articles.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813D5378 != -1)
  {
    swift_once();
  }

  v2 = sub_2288AF430();
  v3 = __swift_project_value_buffer(v2, qword_2813D5380);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ArticlesGeneratorPipeline.domain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_2813D53D8;
  v4 = sub_2288AF430();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_2288AD424()
{
  sub_2288AE8C4();
}

uint64_t sub_2288AD44C(uint64_t a1)
{
  v3 = qword_2813D53D0;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ArticlesGeneratorPipeline.__allocating_init(context:managedArticles:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArticlesGeneratorPipeline.init(context:managedArticles:)(a1, a2);
  return v4;
}

uint64_t ArticlesGeneratorPipeline.init(context:managedArticles:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2288AE908(0);
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  v89 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AEA68(0);
  v80 = v8;
  v79 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v78 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AEFBC(0, &qword_2813D5358, type metadata accessor for ReadArticleInformation, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = &v72 - v11;
  v92 = sub_2288AF470();
  v94 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v77 = v12;
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AEFBC(0, &qword_2813D50F8, sub_2288AEA04, MEMORY[0x277CBCE78]);
  v84 = *(v14 - 8);
  v85 = v14;
  MEMORY[0x28223BE20](v14);
  v83 = &v72 - v15;
  v16 = sub_2288AF630();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AF600();
  v20 = sub_2288AF620();
  v21 = sub_2288AF840();
  v22 = os_log_type_enabled(v20, v21);
  v95 = a1;
  v87 = v5;
  v88 = a2;
  v86 = v13;
  if (v22)
  {
    v23 = v5;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v97 = v25;
    *v24 = 136446210;
    v99[0] = v23;
    swift_getMetatypeMetadata();
    v26 = sub_2288AF740();
    v28 = sub_2288A1070(v26, v27, &v97);
    a1 = v95;

    *(v24 + 4) = v28;
    _os_log_impl(&dword_22889D000, v20, v21, "[%{public}s]: Initializing ArticlesGeneratorPipeline", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x22AAC22E0](v25, -1, -1);
    MEMORY[0x22AAC22E0](v24, -1, -1);
  }

  (*(v17 + 8))(v19, v16);
  if (qword_2813D5378 != -1)
  {
    swift_once();
  }

  v29 = sub_2288AF430();
  v30 = __swift_project_value_buffer(v29, qword_2813D5380);
  v31 = v93;
  (*(*(v29 - 8) + 16))(v93 + qword_2813D53D8, v30, v29);
  sub_2288AF440();
  __swift_project_boxed_opaque_existential_1(v99, v100);
  v32 = sub_2288AF3D0();
  v33 = type metadata accessor for ArticleChangeDetector();
  v34 = objc_allocWithZone(v33);
  v35 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
  sub_2288A31C4();
  v76 = v36;
  swift_allocObject();
  *&v34[v35] = sub_2288AF690();
  *&v34[OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector____lazy_storage___observers] = 0;
  v37 = [objc_opt_self() healthArticlesDefaultsDomainWithHealthStore_];
  *&v34[OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_articlesKVDomain] = v37;
  v98.receiver = v34;
  v98.super_class = v33;
  v38 = objc_msgSendSuper2(&v98, sel_init);
  sub_2288A32CC();

  __swift_destroy_boxed_opaque_existential_1(v99);
  *(v31 + qword_2813D53E0) = v38;
  v39 = v88;
  *(v31 + qword_2813D53E8) = v88;
  sub_2288AEFBC(0, &qword_2813D50A8, sub_2288AE99C, MEMORY[0x277D84560]);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_2288B01D0;
  v41 = v87;
  v42 = *(v87 + 88);
  v75 = *(v87 + 80);
  v74 = v42;
  v44 = type metadata accessor for ArticlesGenerator(0, v75, v42, v43);
  v45 = v86;
  v73 = *(v94 + 16);
  v73(v86, a1, v92);
  ArticleInformation = type metadata accessor for ReadArticleInformation(0);
  v47 = v81;
  (*(*(ArticleInformation - 8) + 56))(v81, 1, 1, ArticleInformation);
  swift_bridgeObjectRetain_n();
  v48 = v38;
  v49 = ArticlesGenerator.__allocating_init(context:managedArticles:readArticleInfo:)(v45, v39, v47);
  v100 = v44;
  WitnessTable = swift_getWitnessTable();
  v99[0] = v49;
  v50 = sub_2288AEA04();
  v51 = v83;
  sub_2288AF6B0();
  sub_2288AEB5C();
  v52 = v85;
  v53 = sub_2288AF6F0();
  (*(v84 + 8))(v51, v52);
  *(v40 + 32) = v53;
  v54 = v95;
  v97 = v40;
  v55 = sub_2288AF450();
  v82 = v48;
  if (v55)
  {
    v56 = OBJC_IVAR____TtC24HealthArticlesGeneration21ArticleChangeDetector_publisher;
    swift_beginAccess();
    v96 = *&v48[v56];
    v85 = v50;
    v57 = v92;
    (v73)(v45, v54);
    v58 = v94;
    v59 = (*(v94 + 80) + 32) & ~*(v94 + 80);
    v60 = (v77 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
    v61 = swift_allocObject();
    v62 = v74;
    *(v61 + 16) = v75;
    *(v61 + 24) = v62;
    (*(v58 + 32))(v61 + v59, v45, v57);
    *(v61 + v60) = v39;
    *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v41;
    sub_2288AEB14(&qword_2813D52D8, sub_2288A31C4, MEMORY[0x277CBCE20]);

    v63 = v78;
    sub_2288AF700();

    sub_2288AEB14(qword_2813D52F8, sub_2288AEA68, MEMORY[0x277CBCB10]);
    v64 = v80;
    sub_2288AF6F0();
    v65 = (*(v79 + 8))(v63, v64);
    MEMORY[0x22AAC1BB0](v65);
    v66 = v57;
    v67 = v94;
    if (v97[2] >= v97[3] >> 1)
    {
      sub_2288AF7A0();
    }

    sub_2288AF7B0();
    v40 = v97;
  }

  else
  {

    v66 = v92;
    v67 = v94;
  }

  v96 = v40;
  sub_2288AE99C(0);
  sub_2288AEFBC(0, &qword_2813D50D0, sub_2288AE99C, MEMORY[0x277D83940]);
  sub_2288AEB14(&qword_2813D52E8, sub_2288AE99C, MEMORY[0x277CBCD90]);
  sub_2288AEC94();
  v68 = v89;
  sub_2288AF660();
  sub_2288AEB14(&qword_2813D52F0, sub_2288AE908, MEMORY[0x277CBCD48]);
  v69 = v91;
  v70 = sub_2288AF6F0();

  (*(v67 + 8))(v95, v66);
  (*(v90 + 8))(v68, v69);
  result = v93;
  *(v93 + qword_2813D53D0) = v70;
  return result;
}

uint64_t sub_2288AE0C4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = v5;
  v71 = a5;
  sub_2288AEFBC(0, &qword_2813D5358, type metadata accessor for ReadArticleInformation, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v67 = &v58 - v12;
  v64 = sub_2288AF470();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v66 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ArticleInformation = type metadata accessor for ReadArticleInformation(0);
  v61 = *(ArticleInformation - 8);
  MEMORY[0x28223BE20](ArticleInformation);
  v65 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2288AF630();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v68 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v58 - v19;
  sub_2288AF600();

  v21 = sub_2288AF620();
  v22 = sub_2288AF820();

  v23 = os_log_type_enabled(v21, v22);
  v69 = v16;
  v70 = v6;
  v72 = v15;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v60 = a4;
    v26 = v25;
    *&v73 = v25;
    *v24 = 136446466;
    *&v75[0] = v6;
    swift_getMetatypeMetadata();
    v27 = sub_2288AF740();
    v29 = sub_2288A1070(v27, v28, &v73);
    v59 = a3;
    v30 = v16;
    v31 = v29;

    *(v24 + 4) = v31;
    *(v24 + 12) = 2080;
    *(v24 + 14) = sub_2288A1070(a1, a2, &v73);
    _os_log_impl(&dword_22889D000, v21, v22, "[%{public}s]: received read article update: %s", v24, 0x16u);
    swift_arrayDestroy();
    v32 = v26;
    a4 = v60;
    MEMORY[0x22AAC22E0](v32, -1, -1);
    MEMORY[0x22AAC22E0](v24, -1, -1);

    v33 = v30;
    a3 = v59;
    v34 = *(v33 + 8);
    v34(v20, v72);
  }

  else
  {

    v34 = *(v16 + 8);
    v34(v20, v15);
  }

  v35 = *(a4 + 16);
  if (v35)
  {
    v36 = a4 + 32;
    while (1)
    {
      sub_2288A1AE8(v36, &v73);
      __swift_project_boxed_opaque_existential_1(&v73, v74);
      if (sub_2288AF510() == a1 && v37 == a2)
      {
        break;
      }

      v39 = sub_2288AF9A0();

      if (v39)
      {
        goto LABEL_16;
      }

      __swift_destroy_boxed_opaque_existential_1(&v73);
      v36 += 48;
      if (!--v35)
      {
        goto LABEL_12;
      }
    }

LABEL_16:
    sub_2288A1B4C(&v73, v75);
    v50 = v65;
    sub_2288A1AE8(v75, v65);
    v51 = ArticleInformation;
    sub_2288AF250();
    v53 = type metadata accessor for ArticlesGenerator(0, *(v70 + 80), *(v70 + 88), v52);
    v54 = v66;
    (*(v63 + 16))(v66, a3, v64);
    v55 = v67;
    sub_2288AED1C(v50, v67);
    (*(v61 + 56))(v55, 0, 1, v51);

    v56 = ArticlesGenerator.__allocating_init(context:managedArticles:readArticleInfo:)(v54, a4, v55);
    v57 = v71;
    v71[3] = v53;
    v57[4] = swift_getWitnessTable();
    *v57 = v56;
    sub_2288AED80(v50);
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  else
  {
LABEL_12:
    v40 = v68;
    sub_2288AF600();

    v41 = sub_2288AF620();
    v42 = sub_2288AF830();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v73 = v44;
      *v43 = 136446466;
      *&v75[0] = v70;
      swift_getMetatypeMetadata();
      v45 = sub_2288AF740();
      v47 = sub_2288A1070(v45, v46, &v73);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_2288A1070(a1, a2, &v73);
      _os_log_impl(&dword_22889D000, v41, v42, "[%{public}s]: received read article identifier for nonexistent article: %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAC22E0](v44, -1, -1);
      MEMORY[0x22AAC22E0](v43, -1, -1);
    }

    result = (v34)(v40, v72);
    v49 = v71;
    v71[4] = 0;
    *v49 = 0u;
    *(v49 + 1) = 0u;
  }

  return result;
}

uint64_t ArticlesGeneratorPipeline.deinit()
{
  v1 = qword_2813D53D8;
  v2 = sub_2288AF430();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ArticlesGeneratorPipeline.__deallocating_deinit()
{
  ArticlesGeneratorPipeline.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2288AE86C()
{
  sub_2288AE8C4();
}

uint64_t sub_2288AE8C4()
{
  v1 = qword_2813D53D0;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_2288AE908(uint64_t a1)
{
  if (!qword_2813D5118)
  {
    sub_2288AE99C(255);
    sub_2288AEB14(&qword_2813D52E8, sub_2288AE99C, MEMORY[0x277CBCD90]);
    v1 = sub_2288AF650();
    if (!v2)
    {
      atomic_store(v1, &qword_2813D5118);
    }
  }
}

void sub_2288AE99C(uint64_t a1)
{
  if (!qword_2813D5110)
  {
    sub_2288AEA04();
    v1 = sub_2288AF670();
    if (!v2)
    {
      atomic_store(v1, &qword_2813D5110);
    }
  }
}

unint64_t sub_2288AEA04()
{
  result = qword_2813D5260;
  if (!qword_2813D5260)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2813D5260);
  }

  return result;
}

void sub_2288AEA68(uint64_t a1)
{
  if (!qword_2813D5120[0])
  {
    sub_2288A31C4();
    sub_2288AEA04();
    sub_2288AEB14(&qword_2813D52D8, sub_2288A31C4, MEMORY[0x277CBCE20]);
    v1 = sub_2288AF640();
    if (!v2)
    {
      atomic_store(v1, qword_2813D5120);
    }
  }
}

uint64_t sub_2288AEB14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2288AEB5C()
{
  result = qword_2813D52D0;
  if (!qword_2813D52D0)
  {
    sub_2288AEFBC(255, &qword_2813D50F8, sub_2288AEA04, MEMORY[0x277CBCE78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D52D0);
  }

  return result;
}

uint64_t sub_2288AEBE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_2288AF470() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  return sub_2288AE0C4(*a1, a1[1], v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

unint64_t sub_2288AEC94()
{
  result = qword_2813D52B8;
  if (!qword_2813D52B8)
  {
    sub_2288AEFBC(255, &qword_2813D50D0, sub_2288AE99C, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813D52B8);
  }

  return result;
}

uint64_t sub_2288AED1C(uint64_t a1, uint64_t a2)
{
  ArticleInformation = type metadata accessor for ReadArticleInformation(0);
  (*(*(ArticleInformation - 8) + 16))(a2, a1, ArticleInformation);
  return a2;
}

uint64_t sub_2288AED80(uint64_t a1)
{
  ArticleInformation = type metadata accessor for ReadArticleInformation(0);
  (*(*(ArticleInformation - 8) + 8))(a1, ArticleInformation);
  return a1;
}

uint64_t sub_2288AEDDC(uint64_t a1)
{
  result = sub_2288AF430();
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_2288AEFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t ReadArticleInformation.init(article:readDate:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_2288A1B4C(a1, a3);
  v5 = *(type metadata accessor for ReadArticleInformation(0) + 20);
  v6 = sub_2288AF260();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for ReadArticleInformation(uint64_t a1)
{
  result = qword_2813D5360;
  if (!qword_2813D5360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2288AF11C(uint64_t a1)
{
  result = sub_2288ACE64();
  if (v2 <= 0x3F)
  {
    result = sub_2288AF260();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}