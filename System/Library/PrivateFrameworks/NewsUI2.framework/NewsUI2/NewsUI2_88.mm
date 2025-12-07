uint64_t sub_2190968C4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v23 = a4;
  v6 = type metadata accessor for ContinueReadingEligibility(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D8F0 != -1)
  {
    swift_once();
  }

  v24 = qword_280F617A8;
  sub_2186F20D4(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  v10 = [a3 description];
  v11 = sub_219BF5414();
  v13 = v12;

  v14 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  v15 = sub_2186FC3BC();
  *(v9 + 64) = v15;
  *(v9 + 32) = v11;
  *(v9 + 40) = v13;
  *&v27 = 0;
  *(&v27 + 1) = 0xE000000000000000;
  sub_219BF7484();
  v16 = v27;
  *(v9 + 96) = v14;
  *(v9 + 104) = v15;
  *(v9 + 72) = v16;
  v17 = sub_219BF6214();
  sub_219BE5314("The deserialized user activity (%{public}@) yielded this result: %{public}@", 75, 2, &dword_2186C1000, v24, v17, v9);

  sub_219096CDC(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_219096D40(v8);
  }

  v19 = *(v8 + 5);
  v31 = *(v8 + 4);
  v32 = v19;
  v33 = *(v8 + 6);
  v34 = v8[112];
  v20 = *(v8 + 1);
  v27 = *v8;
  v28 = v20;
  v21 = *(v8 + 3);
  v29 = *(v8 + 2);
  v30 = v21;
  __swift_project_boxed_opaque_existential_1((v23 + 56), *(v23 + 80));
  v25[4] = v31;
  v25[5] = v32;
  v25[6] = v33;
  v26 = v34;
  v25[0] = v27;
  v25[1] = v28;
  v25[2] = v29;
  v25[3] = v30;
  v22 = off_282A4ABF0[0];
  type metadata accessor for ContinueReadingPromptPresenter();
  v22(v25);
  return sub_2189EB304(&v27);
}

double sub_219096B68(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  type metadata accessor for ContinueReadingEligibility(0);
  sub_219BE3204();
  sub_2187D9028();
  v6 = sub_219BF66A4();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v5;
  v8 = a1;

  sub_219BE2F94();

  return result;
}

uint64_t sub_219096C70()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  return sub_218DA65C4(v1, v2);
}

uint64_t sub_219096CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinueReadingEligibility(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219096D40(uint64_t a1)
{
  v2 = type metadata accessor for ContinueReadingEligibility(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void WebEmbedModule.createModalViewController(with:)(uint64_t a1)
{
  v15[0] = type metadata accessor for WebEmbedResource(0);
  v3 = *(v15[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v15[0]);
  v5 = sub_219BE15B4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277D2F558], v5, v7);
  v10 = sub_219BDD0F4();
  (*(v6 + 8))(v9, v5);
  v11 = (v1 + OBJC_IVAR____TtC7NewsUI214WebEmbedModule_resolver);
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  type metadata accessor for WebEmbedContainerViewController(0);
  v15[1] = a1;
  sub_219097244(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  sub_2190972A8(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);

  v14 = sub_219BE1E04();

  if (v14)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    sub_219097380();
    sub_219BE1E34();
    if (v17)
    {
      sub_2186CB1F0(&v16, v18);
      __swift_project_boxed_opaque_existential_1(v18, v18[3]);
      sub_219BE9E54();

      __swift_destroy_boxed_opaque_existential_1(v18);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2190970B0(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for WebEmbedResource(0);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = [objc_allocWithZone(MEMORY[0x277D55130]) initWithMediaTypesRequiringUserActionForPlayback:0 fullScreenEnabled:1];
  sub_2186C6148(0, &qword_27CC15A00, 0x277D55130);
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = [objc_allocWithZone(MEMORY[0x277D55138]) initWithScrollEnabled:1 scrollsToTop:1 showsVerticalScrollIndicator:1];
  sub_2186C6148(0, &qword_27CC15A08, 0x277D55138);
  sub_219BE1B94();
}

uint64_t sub_219097244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedResource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2190972A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedResource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21909730C(void *a1)
{
  v3 = *(type metadata accessor for WebEmbedResource(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_2190970B0(a1, v4, v5);
}

unint64_t sub_219097380()
{
  result = qword_27CC159F8;
  if (!qword_27CC159F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC159F8);
  }

  return result;
}

id WebEmbedModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WebEmbedModule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_219097570(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDD664();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2190975DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BDD664();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for SportsNavigationRouteModel(uint64_t a1)
{
  result = qword_27CC15A10;
  if (!qword_27CC15A10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2190976A4(uint64_t a1)
{
  result = sub_219BDD664();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_219097748(void *a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v5 = sub_219BF53D4();

  [a1 setTitle_];

  if (sub_219BED0C4())
  {
    v6 = [objc_opt_self() clearColor];
  }

  else
  {
    v6 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
  }

  v7 = v6;
  sub_219BEDA04();
}

void *sub_2190978D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v61 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_219099A18(0, &qword_280EE5200, MEMORY[0x277D6D9B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v51 - v5;
  sub_219099A7C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219099B0C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v57 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219099A18(0, &unk_280E901B0, MEMORY[0x277D33D70], v3);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v51 - v11;
  sub_219099A18(0, &qword_280E90040, MEMORY[0x277D33FF0], v3);
  MEMORY[0x28223BE20](v12 - 8);
  v55 = &v51 - v13;
  sub_219099B8C(0);
  MEMORY[0x28223BE20](v14 - 8);
  v54 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219099A18(0, &qword_27CC0DB20, sub_218AD7B00, v3);
  MEMORY[0x28223BE20](v16 - 8);
  v53 = &v51 - v17;
  sub_219099A18(0, &unk_280E902E0, MEMORY[0x277D33AE0], v3);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v51 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  v60 = result;
  if (result)
  {
    sub_219099A18(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
    v22 = *(sub_219BE6364() - 8);
    v62 = *(v22 + 72);
    v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_219C59DA0;
    v52 = v24;
    v25 = v24 + v23;
    sub_219BEAD24();
    v26 = sub_219BF2B34();
    v27 = *(*(v26 - 8) + 56);
    v27(v20, 1, 1, v26);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v63 = objc_opt_self();
    v29 = [v63 bundleForClass_];
    sub_219BDB5E4();

    sub_219BE62C4();
    sub_219BEAD34();
    v27(v20, 1, 1, v26);
    v30 = v63;
    v31 = [v63 bundleForClass_];
    sub_219BDB5E4();

    sub_219BE62C4();
    sub_219BEAD94();
    sub_218AD7B00(0);
    (*(*(v32 - 8) + 56))(v53, 1, 1, v32);
    LOBYTE(v66) = 1;
    sub_218740F28();
    sub_219BE7204();
    sub_219BE62B4();
    sub_219BEAE54();
    v66 = 0;
    v33 = [v30 bundleForClass_];
    sub_219BDB5E4();

    sub_219BE62C4();
    sub_219BEAE34();
    v66 = 0;
    v34 = [v30 bundleForClass_];
    sub_219BDB5E4();

    sub_219BE62C4();
    sub_219BEAA44();
    v66 = 0;
    v35 = [v30 bundleForClass_];
    sub_219BDB5E4();

    v51 = v25;
    sub_219BE62C4();
    sub_219BEAE44();
    v66 = 0;
    v36 = [v30 bundleForClass_];
    sub_219BDB5E4();

    sub_219BE62C4();
    sub_219BEAA54();
    v66 = 0;
    v64 = ObjCClassFromMetadata;
    v37 = [v30 bundleForClass_];
    sub_219BDB5E4();

    sub_219BE62C4();
    v38 = sub_219BEAF54();
    sub_219BEAA94();
    v39 = sub_219BF3984();
    (*(*(v39 - 8) + 56))(v55, 1, 1, v39);
    v40 = [v30 bundleForClass_];
    sub_219BDB5E4();

    sub_219BE62C4();
    sub_219BEAF14();
    v41 = sub_219BF3344();
    (*(*(v41 - 8) + 56))(v56, 1, 1, v41);
    LOBYTE(v66) = 1;
    sub_218740ED4();
    sub_219BE8B74();
    sub_219BE62A4();
    sub_219BEAEF4();
    v66 = 0;
    v65 = 1;
    sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
    sub_218AD78D8();
    sub_219BE8B74();
    sub_219BE62A4();
    v58 = v38;
    sub_219BEAF44();
    v42 = sub_219BE7394();
    (*(*(v42 - 8) + 56))(v59, 1, 1, v42);
    v43 = v63;
    v44 = [v63 bundleForClass_];
    sub_219BDB5E4();

    sub_219BE62C4();
    if (qword_280EE3848 != -1)
    {
      swift_once();
    }

    LOBYTE(v66) = 1;

    v45 = [v43 bundleForClass_];
    sub_219BDB5E4();

    sub_219BE62C4();
    if (qword_280EE3830 != -1)
    {
      swift_once();
    }

    v66 = 1;

    v46 = v64;
    v47 = [v43 bundleForClass_];
    sub_219BDB5E4();

    sub_219BE62C4();
    sub_219BEAD14();
    LOBYTE(v66) = 1;
    v48 = [v43 bundleForClass_];
    sub_219BDB5E4();

    sub_219BE62C4();
    sub_219BEA9A4();
    LOBYTE(v66) = 1;
    v49 = [v43 bundleForClass_];
    sub_219BDB5E4();

    sub_219BE62C4();
    v50 = sub_2190992EC(v60);
    v66 = v52;
    sub_2191EF874(v50);
    result = swift_unknownObjectRelease();
    *v61 = v66;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219098AC4(uint64_t *a2@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v5 = sub_219BDB5E4();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
}

void sub_219098BE8(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_219099A18(0, &unk_280E901B0, MEMORY[0x277D33D70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  sub_218AD7D2C(a2, &v21 - v6);
  v8 = sub_219BF3344();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_218AD7DC0(v7);
  }

  else
  {
    sub_219BF3334();
    (*(v9 + 8))(v7, v8);
    swift_getObjectType();
    sub_219BF6274();
    swift_unknownObjectRelease();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = objc_opt_self();
  v12 = [v11 bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09BA0;
  v14 = [v11 bundleForClass_];
  v15 = sub_219BDB5E4();
  v17 = v16;

  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = sub_2186FC3BC();
  *(v13 + 32) = v15;
  *(v13 + 40) = v17;
  v18 = sub_219BF5454();
  v20 = v19;

  *a3 = v18;
  a3[1] = v20;
}

void sub_219098FF8(unsigned __int8 *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*a2)
  {
    swift_getObjectType();
    sub_219BF6274();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = objc_opt_self();
  v7 = [v6 bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  if (v4)
  {
    v9 = [v6 bundleForClass_];
  }

  else
  {
    v9 = [v6 bundleForClass_];
  }

  v10 = sub_219BDB5E4();
  v12 = v11;

  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2186FC3BC();
  *(v8 + 32) = v10;
  *(v8 + 40) = v12;
  v13 = sub_219BF5454();
  v15 = v14;

  *a3 = v13;
  a3[1] = v15;
}

uint64_t sub_2190992EC(void *a1)
{
  if (![a1 useSearchInArticle])
  {
    return MEMORY[0x277D84F90];
  }

  sub_219099A18(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
  sub_219BE6364();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C0EE20;
  sub_219BEAE84();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();
  v5 = v4;

  sub_219BE62C4();
  sub_219BEA934();
  v6 = [v2 bundleForClass_];
  sub_219BDB5E4();
  v8 = v7;

  sub_219BE62C4();
  sub_219BEA944();
  v9 = [v2 bundleForClass_];
  sub_219BDB5E4();
  v11 = v10;

  sub_219BE62C4();
  sub_219BEAE94();
  v12 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_219BE62C4();
  return v14;
}

void *sub_2190996EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219099A18(0, &qword_280E8F4F8, MEMORY[0x277D6D5B8], MEMORY[0x277D83940]);
    result = sub_219BE1E34();
    if (v7)
    {
      v5 = objc_allocWithZone(sub_219BE6CA4());
      result = sub_219BE6C94();
      v6 = MEMORY[0x277D6D7D8];
      *a2 = result;
      a2[1] = v6;
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

uint64_t sub_219099840()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_219099A18(0, &qword_280E8F4F8, MEMORY[0x277D6D5B8], MEMORY[0x277D83940]);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280EE4FC0, MEMORY[0x277D6DBF8], 0);
  sub_219BE2914();

  (*(v1 + 104))(v3, *MEMORY[0x277D6CF00], v0);
  sub_219BE19F4();

  return (*(v1 + 8))(v3, v0);
}

void sub_219099A18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_219099A7C(uint64_t a1)
{
  if (!qword_280EE47C8)
  {
    sub_2186D6710(255, &qword_280E8E680, &protocolRef_FCTagProviding);
    sub_218AD78D8();
    v1 = sub_219BE8B84();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE47C8);
    }
  }
}

void sub_219099B0C(uint64_t a1)
{
  if (!qword_27CC15A20)
  {
    sub_219BF3344();
    sub_218740ED4();
    v1 = sub_219BE8B84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15A20);
    }
  }
}

void sub_219099B8C(uint64_t a1)
{
  if (!qword_280EE5350)
  {
    sub_218740F28();
    v1 = sub_219BE7214();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5350);
    }
  }
}

uint64_t sub_219099BF8(uint64_t a1, void *a2)
{
  v17 = sub_219BE3514();
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219099F34(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE38C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3574();
  if ((*(v10 + 88))(v12, v9) != *MEMORY[0x277D31720])
  {
    return (*(v10 + 8))(v12, v9);
  }

  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_219BE35A4();
  sub_219BE3A04();
  (*(v3 + 8))(v5, v17);
  v13 = sub_219BE3534();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    return sub_219099F8C(v8);
  }

  sub_219BE3524();
  return (*(v14 + 8))(v8, v13);
}

uint64_t sub_219099EC8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219099EE8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

void sub_219099F34(uint64_t a1)
{
  if (!qword_280EE6658)
  {
    sub_219BE3534();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6658);
    }
  }
}

uint64_t sub_219099F8C(uint64_t a1)
{
  sub_219099F34(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PreBuyFlowRouteModel(uint64_t a1)
{
  result = qword_280ECE1B0;
  if (!qword_280ECE1B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21909A05C(uint64_t a1)
{
  result = sub_21909A100();
  if (v2 <= 0x3F)
  {
    result = sub_219BE3D64();
    if (v3 <= 0x3F)
    {
      result = sub_219BE3EE4();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_21909A100()
{
  result = qword_280E8E588;
  if (!qword_280E8E588)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E588);
  }

  return result;
}

void *sub_21909A14C(void *a1)
{
  v2 = sub_219BE8494();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E9CC08, &protocol descriptor for OfflineStatusBannerEventHandlerType, 0);
  result = sub_219BE1E34();
  v7 = v46;
  if (!v46)
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = v47;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAF978, &protocol descriptor for OfflineStatusBannerStylerType, 1);
  result = sub_219BE1E34();
  if (!v45)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = result;
  v36 = v8;
  v37 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  v10 = v42;
  if (!v42)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v43;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  if (!v41)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v12 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
  v35[2] = v35;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  v18 = type metadata accessor for OfflineStatusBannerStyler();
  v39[3] = v18;
  v39[4] = &off_282A896C0;
  v39[0] = v17;
  type metadata accessor for OfflineStatusBannerCoordinator(0);
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v39, v18);
  v35[1] = v35;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v38[3] = v18;
  v38[4] = &off_282A896C0;
  v38[0] = v25;
  v26 = qword_280EABEF0;
  *(v19 + v26) = [objc_allocWithZone(MEMORY[0x277D025D0]) init];
  v27 = (v19 + qword_280EABF10);
  *v27 = 0;
  v27[1] = 0;
  v28 = (v19 + qword_280EABF08);
  v29 = v36;
  *v28 = v7;
  v28[1] = v29;
  sub_218718690(v38, v19 + qword_280EABEE8);
  *(v19 + qword_280EABEF8) = v9;
  v30 = (v19 + qword_280EABF00);
  *v30 = v10;
  v30[1] = v11;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ([v9 useOfflineMode])
  {
    __swift_project_boxed_opaque_existential_1(v40, v41);
    if (sub_219BEED44())
    {
      v31 = MEMORY[0x277D6DF10];
    }

    else
    {
      v31 = MEMORY[0x277D6DF08];
    }

    (*(v3 + 104))(v5, *v31, v37);
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D6DF08], v37);
  }

  sub_2188043C8(0);
  swift_allocObject();
  *(v19 + qword_280EABF18) = sub_219BE20D4();
  v32 = *(v19 + v26);

  v33 = v32;
  v34 = sub_219BE8884();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v38);
  *(*(v34 + qword_280EABF08) + 24) = &off_282A72608;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v40);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v34;
}

char *sub_21909A710(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9D590, &protocol descriptor for LegacyOfflineStatusBannerStylerType, 1);
  result = sub_219BE1E34();
  if (!v20)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E9CC08, &protocol descriptor for OfflineStatusBannerEventHandlerType, 0);
  result = sub_219BE1E34();
  v3 = v17;
  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  v6 = v15;
  if (!v15)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  if (v14[3])
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = sub_21909B028(*v11, v3, v4, v5, v6, v7, v14);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_21909A9CC@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v11 = sub_218803894(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for LegacyOfflineStatusBannerStyler();
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
    a2[4] = &off_282A592D8;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21909AC2C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA2BE0, &protocol descriptor for OfflineStatusBannerInteractorType, 0);
  result = sub_219BE1E34();
  if (v5)
  {
    type metadata accessor for OfflineStatusBannerEventHandler();
    v4 = swift_allocObject();
    v4[3] = 0;
    swift_unknownObjectWeakInit();
    v4[4] = v5;
    v4[5] = v6;
    swift_beginAccess();
    *(v5 + 24) = &off_282A3F888;
    result = swift_unknownObjectWeakAssign();
    *a2 = v4;
    a2[1] = &off_282A3F8C8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21909AD10(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9F9F8, &protocol descriptor for OfflineStatusBannerDataManagerType, 0);
  sub_219BE1E34();
  if (v5)
  {
    type metadata accessor for OfflineStatusBannerInteractor();
    v3 = swift_allocObject();
    v3[3] = 0;
    swift_unknownObjectWeakInit();
    v3[4] = v5;
    v3[5] = v6;
    swift_unknownObjectRetain();

    sub_218804058(v4, v5);
    swift_unknownObjectRelease();

    *a2 = v3;
    a2[1] = &off_282A6F740;
  }

  else
  {
    __break(1u);
  }
}

void *sub_21909ADF0@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218803948(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED0D40, &protocol descriptor for OfflineFeaturesType, 1);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (&v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = sub_2188039CC(v5, *v11, v6, v7);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    *a2 = v13;
    a2[1] = &off_282AA2488;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

char *sub_21909B028(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v39 = a7;
  v36 = a3;
  v37 = a6;
  v38 = sub_219BE8494();
  v11 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LegacyOfflineStatusBannerStyler();
  v42[3] = v14;
  v42[4] = &off_282A592D8;
  v42[0] = a1;
  v15 = type metadata accessor for LegacyOfflineStatusBannerViewController();
  v16 = objc_allocWithZone(v15);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v42, v14);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = *v20;
  v41[3] = v14;
  v41[4] = &off_282A592D8;
  v41[0] = v22;
  v23 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_connectionLabel;
  *&v16[v23] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v24 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_secondaryLabel;
  *&v16[v24] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  *&v16[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___forceReloadButton] = 0;
  v25 = OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_enableReloadAction;
  sub_218803FE0();
  *&v16[v25] = [objc_allocWithZone(v26) init];
  *&v16[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController____lazy_storage___setupOfflineModeButton] = 0;
  sub_218718690(v41, &v16[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_styler]);
  v27 = &v16[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_eventHandler];
  v29 = v36;
  v28 = v37;
  *v27 = a2;
  *(v27 + 1) = v29;
  *&v16[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_featureAvailability] = a4;
  v30 = &v16[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_commandCenter];
  *v30 = a5;
  *(v30 + 1) = v28;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if ([a4 useOfflineMode])
  {
    v31 = v38;
    v32 = v39;
    __swift_project_boxed_opaque_existential_1(v39, v39[3]);
    if (sub_219BEED44())
    {
      v33 = MEMORY[0x277D6DF10];
    }

    else
    {
      v33 = MEMORY[0x277D6DF08];
    }

    (*(v11 + 104))(v13, *v33, v31);
  }

  else
  {
    (*(v11 + 104))(v13, *MEMORY[0x277D6DF08], v38);
    v32 = v39;
  }

  sub_2188043C8(0);
  swift_allocObject();
  *&v16[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_statusBannerVisibility] = sub_219BE20D4();
  v40.receiver = v16;
  v40.super_class = v15;
  v34 = objc_msgSendSuper2(&v40, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v41);
  *(*&v34[OBJC_IVAR____TtC7NewsUI239LegacyOfflineStatusBannerViewController_eventHandler] + 24) = &off_282A31828;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v32);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v34;
}

uint64_t sub_21909B424@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909B8C4(0, &qword_280E8C960, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21909B870();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v16, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21909B66C(uint64_t a1)
{
  v2 = sub_21909B870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21909B6A8(uint64_t a1)
{
  v2 = sub_21909B870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21909B6FC(void *a1)
{
  sub_21909B8C4(0, &qword_280E8C2E0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21909B870();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_21909B870()
{
  result = qword_280EA1840[0];
  if (!qword_280EA1840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA1840);
  }

  return result;
}

void sub_21909B8C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21909B870();
    v7 = a3(a1, &type metadata for SpotlightTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21909B93C()
{
  result = qword_27CC15A28;
  if (!qword_27CC15A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15A28);
  }

  return result;
}

unint64_t sub_21909B994()
{
  result = qword_280EA1830;
  if (!qword_280EA1830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1830);
  }

  return result;
}

unint64_t sub_21909B9EC()
{
  result = qword_280EA1838;
  if (!qword_280EA1838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1838);
  }

  return result;
}

void *sub_21909BA64(void *a1, uint64_t a2, void *a3)
{
  v89 = a3;
  v90 = a1;
  v92 = a2;
  sub_21909D7A0(0, &qword_280EE4518, MEMORY[0x277D6E548]);
  MEMORY[0x28223BE20](v3 - 8);
  v83 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v81 = &v78 - v6;
  v7 = sub_219BE92E4();
  v84 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v82 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = &v78 - v10;
  sub_21909D7A0(0, &unk_280EE4470, MEMORY[0x277D6E658]);
  v85 = *(v11 - 8);
  v12 = *(v85 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  MEMORY[0x28223BE20](v13);
  v86 = &v78 - v14;
  v15 = sub_219BE9EC4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v91 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v78 - v19;
  sub_21909D7A0(0, &unk_280EE3DC0, MEMORY[0x277D6E908]);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v78 - v22;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = result;
    v79 = v7;
    v88 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = *(v16 + 16);
    v26(v23, v92, v15);
    v87 = v16;
    (*(v16 + 56))(v23, 0, 1, v15);
    v27 = v90;
    *&v94 = v90;
    swift_beginAccess();
    sub_2187C04A0(0);
    v93 = v25;
    v28 = v27;
    v29 = v93;
    sub_219BE1C84();
    swift_endAccess();
    v30 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator;
    swift_beginAccess();
    sub_21909D8B4(v29 + v30, &v94, &qword_280E9DA68, sub_21909D7F4);
    if (v95)
    {
      sub_21875F93C(&v94, v96);
      v90 = __swift_project_boxed_opaque_existential_1(v96, v96[3]);
      v31 = v12;
      v83 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v78 = v20;
      v26(v20, v92, v15);
      v32 = MEMORY[0x277D6E658];
      v33 = v86;
      sub_21909D8B4(v89, v86, &unk_280EE4470, MEMORY[0x277D6E658]);
      v34 = v20;
      v35 = v15;
      v26(v91, v34, v15);
      sub_21909D8B4(v33, v88, &unk_280EE4470, v32);
      v36 = v28;
      v37 = v87;
      v38 = (*(v87 + 80) + 24) & ~*(v87 + 80);
      v39 = (v17 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
      v40 = (*(v85 + 80) + v39 + 8) & ~*(v85 + 80);
      v41 = (v31 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      *(v42 + 16) = v83;
      (*(v37 + 32))(v42 + v38, v78, v35);
      *(v42 + v39) = v36;
      sub_218FEADDC(v33, v42 + v40);
      v43 = (v42 + v41);
      *v43 = 0;
      v43[1] = 0;
      v44 = *(*v90 + 32);
      v45 = v35;
      if (v44)
      {
        v92 = v35;
        v46 = objc_opt_self();
        v47 = v36;
        swift_retain_n();
        v48 = v47;

        LOBYTE(v47) = [v46 areAnimationsEnabled];
        v49 = swift_allocObject();
        *(v49 + 16) = v47;
        *(v49 + 24) = sub_21909D920;
        *(v49 + 32) = v42;
        swift_beginAccess();
        v50 = *(v44 + 32);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v44 + 32) = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = sub_2191F67A4(0, v50[2] + 1, 1, v50);
          *(v44 + 32) = v50;
        }

        v52 = v93;
        v54 = v50[2];
        v53 = v50[3];
        if (v54 >= v53 >> 1)
        {
          v50 = sub_2191F67A4((v53 > 1), v54 + 1, 1, v50);
        }

        v50[2] = v54 + 1;
        v55 = &v50[2 * v54];
        v55[4] = sub_218FEAE74;
        v55[5] = v49;
        *(v44 + 32) = v50;
        swift_endAccess();

        v56 = v88;
        goto LABEL_24;
      }

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v64 = v36;

      v65 = v64;
      if (!Strong)
      {

        v56 = v88;
LABEL_25:
        (*(v87 + 8))(v91, v45);

        sub_21909D858(v56, &unk_280EE4470, MEMORY[0x277D6E658]);

        return __swift_destroy_boxed_opaque_existential_1(v96);
      }

      v66 = v65;
      v92 = v45;

      v67 = [Strong traitCollection];
      v68 = [v67 horizontalSizeClass];

      v56 = v88;
      if (v68 == 2)
      {
        v90 = v42;
        v70 = v81;
        sub_219BE9E94();
        v69 = v93;
      }

      else
      {
        v69 = v93;
        v70 = v81;
        if (v68 != 1)
        {

          (*(v84 + 56))(v70, 1, 1, v79);
          sub_21909D858(v70, &qword_280EE4518, MEMORY[0x277D6E548]);

          goto LABEL_23;
        }

        v90 = v42;
        sub_219BE9EA4();
      }

      v73 = v84;
      v74 = v70;
      v75 = v70;
      v76 = v79;
      (*(v84 + 56))(v74, 0, 1, v79);
      v77 = v80;
      (*(v73 + 32))(v80, v75, v76);
      sub_218FDF7B0(v77, v66, v56, 0, 0);

      (*(v73 + 8))(v77, v76);

LABEL_23:

LABEL_24:
      v45 = v92;
      goto LABEL_25;
    }

    sub_21909D858(&v94, &qword_280E9DA68, sub_21909D7F4);
    v57 = [v29 traitCollection];
    v58 = [v57 horizontalSizeClass];

    if (v58 == 2)
    {
      v61 = v83;
      sub_219BE9E94();
      v62 = v93;
      v60 = v79;
    }

    else
    {
      v59 = v58 == 1;
      v60 = v79;
      v61 = v83;
      if (!v59)
      {

        (*(v84 + 56))(v61, 1, 1, v60);
        return sub_21909D858(v61, &qword_280EE4518, MEMORY[0x277D6E548]);
      }

      sub_219BE9EA4();
      v62 = v93;
    }

    v71 = v84;
    (*(v84 + 56))(v61, 0, 1, v60);
    v72 = v82;
    (*(v71 + 32))(v82, v61, v60);
    sub_218FDF7B0(v72, v28, v89, 0, 0);

    return (*(v71 + 8))(v72, v60);
  }

  return result;
}

void *sub_21909C564()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result traitCollection];

    v3 = [v2 horizontalSizeClass];
    return (v3 == 1);
  }

  return result;
}

void sub_21909C5CC()
{
  sub_2187C5110(0);
  sub_219BEA7A4();
  aBlock[6] = aBlock[0];
  v0 = NewsActivity2.activityTraits.getter();
  sub_218932F9C(aBlock[0]);
  if (v0)
  {
    v1 = *(v0 + 2);
    v2 = v0 + 32;
    while (1)
    {
      if (!v1)
      {

        return;
      }

      if (*v2 <= 1u && *v2)
      {
        break;
      }

      v3 = sub_219BF78F4();

      ++v2;
      --v1;
      if (v3)
      {
        goto LABEL_11;
      }
    }

LABEL_11:

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong && (v5 = Strong, v6 = objc_opt_self(), v7 = swift_allocObject(), *(v7 + 16) = v5, *(v7 + 24) = 0, v8 = swift_allocObject(), *(v8 + 16) = sub_21909DC40, *(v8 + 24) = v7, aBlock[4] = sub_218807D50, aBlock[5] = v8, aBlock[0] = MEMORY[0x277D85DD0], aBlock[1] = 1107296256, aBlock[2] = sub_218807CE4, aBlock[3] = &block_descriptor_93, v9 = _Block_copy(aBlock), v10 = v5, , , [v6 performWithoutAnimation_], v10, _Block_release(v9), LOBYTE(v6) = swift_isEscapingClosureAtFileLocation(), , , (v6 & 1) != 0))
    {
      __break(1u);
    }

    else
    {
      v11 = swift_unknownObjectWeakLoadStrong();
      if (v11)
      {
      }
    }
  }
}

void sub_21909C8A4(void *a1, uint64_t a2)
{
  sub_21909D7A0(0, &unk_280EE3DC0, MEMORY[0x277D6E908]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-v5];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_219BE9EC4();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v6, a2, v9);
    (*(v10 + 56))(v6, 0, 1, v9);
    v13 = a1;
    swift_beginAccess();
    sub_2187C04A0(0);
    v11 = a1;
    sub_219BE1C84();
    swift_endAccess();
  }
}

void sub_21909CA28(void *a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v116 = a1;
  v117 = a2;
  sub_21909D7A0(0, &qword_280EE4518, MEMORY[0x277D6E548]);
  MEMORY[0x28223BE20](v4 - 8);
  v109 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v107 = &v101 - v7;
  v8 = sub_219BE92E4();
  v110 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v108 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = &v101 - v11;
  v12 = sub_219BE9EC4();
  v114 = *(v12 - 8);
  v115 = v12;
  v13 = *(v114 + 64);
  MEMORY[0x28223BE20](v12);
  v113 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v101 - v15;
  sub_21909D7A0(0, &unk_280EE3DC0, MEMORY[0x277D6E908]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v101 - v18;
  sub_21909D7A0(0, &unk_280EE4470, MEMORY[0x277D6E658]);
  v111 = *(v20 - 8);
  v21 = *(v111 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v112 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v101 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v101 - v26;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v30 = [Strong traitCollection];
    v118 = v3;
    v3 = v30;

    v31 = [v3 horizontalSizeClass];
    LOBYTE(v3) = v118;
    if (v31 == 1)
    {
      v104 = v8;
      v32 = swift_unknownObjectWeakLoadStrong();
      if (!v32)
      {
        goto LABEL_35;
      }

      v33 = v32;
      v34 = sub_219BE94F4();
      (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
      v35 = v114;
      v36 = v115;
      v102 = *(v114 + 16);
      v102(v19, v117, v115);
      (*(v35 + 56))(v19, 0, 1, v36);
      v105 = v27;
      v37 = v116;
      *&v119 = v116;
      swift_beginAccess();
      sub_2187C04A0(0);
      v103 = v37;
      sub_219BE1C84();
      swift_endAccess();
      v38 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator;
      swift_beginAccess();
      sub_21909D8B4(&v33[v38], &v119, &qword_280E9DA68, sub_21909D7F4);
      v39 = v33;
      if (v120)
      {
        sub_21875F93C(&v119, v121);
        v101 = __swift_project_boxed_opaque_existential_1(v121, v121[3]);
        v109 = swift_allocObject();
        v108 = v33;
        swift_unknownObjectWeakInit();
        v40 = v115;
        v41 = v102;
        v102(v16, v117, v115);
        v42 = MEMORY[0x277D6E658];
        sub_21909D8B4(v105, v24, &unk_280EE4470, MEMORY[0x277D6E658]);
        v41(v113, v16, v40);
        sub_21909D8B4(v24, v112, &unk_280EE4470, v42);
        v43 = v114;
        v44 = (*(v114 + 80) + 24) & ~*(v114 + 80);
        v45 = (v13 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
        v46 = (*(v111 + 80) + v45 + 8) & ~*(v111 + 80);
        v47 = (v21 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
        v48 = swift_allocObject();
        *(v48 + 16) = v109;
        (*(v43 + 32))(v48 + v44, v16, v40);
        v49 = v103;
        *(v48 + v45) = v103;
        sub_218FEADDC(v24, v48 + v46);
        v50 = (v48 + v47);
        *v50 = 0;
        v50[1] = 0;
        v51 = *(*v101 + 32);
        v52 = v43;
        v53 = v49;
        if (v51)
        {
          v54 = objc_opt_self();
          v55 = v53;

          v56 = [v54 areAnimationsEnabled];
          v57 = swift_allocObject();
          *(v57 + 16) = v56;
          *(v57 + 24) = sub_21909DC4C;
          *(v57 + 32) = v48;
          swift_beginAccess();
          v58 = *(v51 + 32);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v51 + 32) = v58;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v58 = sub_2191F67A4(0, v58[2] + 1, 1, v58);
            *(v51 + 32) = v58;
          }

          v60 = v105;
          v3 = v58[2];
          v61 = v58[3];
          if (v3 >= v61 >> 1)
          {
            v58 = sub_2191F67A4((v61 > 1), v3 + 1, 1, v58);
          }

          v58[2] = v3 + 1;
          v62 = &v58[2 * v3];
          v62[4] = sub_218FEB4AC;
          v62[5] = v57;
          *(v51 + 32) = v58;
          swift_endAccess();

          LOBYTE(v3) = v118;
          v63 = v60;
          goto LABEL_34;
        }

        swift_beginAccess();
        v78 = swift_unknownObjectWeakLoadStrong();
        v79 = v53;
        v80 = v79;
        if (v78)
        {
          swift_retain_n();
          v81 = v80;
          v82 = [v78 traitCollection];
          v83 = [v82 horizontalSizeClass];

          if (v83 == 2)
          {
            v85 = v81;
            v84 = v107;
            sub_219BE9E94();
            LOBYTE(v3) = v118;
          }

          else
          {
            LOBYTE(v3) = v118;
            v63 = v105;
            v84 = v107;
            if (v83 != 1)
            {

              (*(v110 + 56))(v84, 1, 1, v104);
              sub_21909D858(v84, &qword_280EE4518, MEMORY[0x277D6E548]);

              v40 = v115;
              goto LABEL_34;
            }

            v85 = v81;
            sub_219BE9EA4();
          }

          v93 = v110;
          v94 = v84;
          v95 = v84;
          v96 = v104;
          (*(v110 + 56))(v94, 0, 1, v104);
          v97 = v106;
          (*(v93 + 32))(v106, v95, v96);
          sub_218FDF7B0(v97, v85, v112, 0, 0);

          (*(v93 + 8))(v97, v96);

          v53 = v103;
          v40 = v115;
        }

        else
        {
          v92 = v79;

          LOBYTE(v3) = v118;
        }

        v63 = v105;
LABEL_34:

        (*(v52 + 8))(v113, v40);

        v98 = MEMORY[0x277D6E658];
        sub_21909D858(v112, &unk_280EE4470, MEMORY[0x277D6E658]);

        sub_21909D858(v63, &unk_280EE4470, v98);

        __swift_destroy_boxed_opaque_existential_1(v121);
LABEL_35:
        if (v3 != 2)
        {
          type metadata accessor for FloatingTabBarNavigationController(0);
          v99 = v116;
          if (swift_dynamicCastClass())
          {
            v100 = v99;
            sub_219798754(0);
          }

          [v99 setEditing:v3 & 1 animated:0];
        }

        return;
      }

      v72 = v103;
      v73 = v105;
      sub_21909D858(&v119, &qword_280E9DA68, sub_21909D7F4);
      v74 = [v39 traitCollection];
      v75 = [v74 horizontalSizeClass];

      if (v75 == 2)
      {
        v77 = v109;
        sub_219BE9E94();
        LOBYTE(v3) = v118;
        v76 = v73;
      }

      else
      {
        LOBYTE(v3) = v118;
        v76 = v73;
        v77 = v109;
        if (v75 != 1)
        {

          sub_21909D858(v73, &unk_280EE4470, MEMORY[0x277D6E658]);
          (*(v110 + 56))(v77, 1, 1, v104);
          v89 = &qword_280EE4518;
          v90 = MEMORY[0x277D6E548];
          v91 = v77;
LABEL_28:
          sub_21909D858(v91, v89, v90);
          goto LABEL_35;
        }

        sub_219BE9EA4();
      }

      v86 = v110;
      v87 = v104;
      (*(v110 + 56))(v77, 0, 1, v104);
      v88 = v108;
      (*(v86 + 32))(v108, v77, v87);
      sub_218FDF7B0(v88, v72, v76, 0, 0);

      (*(v86 + 8))(v88, v87);
      v89 = &unk_280EE4470;
      v90 = MEMORY[0x277D6E658];
      v91 = v76;
      goto LABEL_28;
    }
  }

  v64 = swift_unknownObjectWeakLoadStrong();
  if (v64)
  {
    v65 = v64;
    v66 = [v64 _uip_sidebar];

    [v66 _setVisible_];
  }

  if (v3 != 2)
  {
    v67 = swift_unknownObjectWeakLoadStrong();
    if (v67)
    {
      LOBYTE(v121[0]) = v3 & 1;
      v68 = v67;

      sub_219BE2744();
    }

    v69 = swift_unknownObjectWeakLoadStrong();
    if (v69)
    {
      v70 = v69;
      v71 = [v69 _uip_sidebar];

      [v71 _setEditing_];
    }
  }
}

void sub_21909D7A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_21909D7F4()
{
  result = qword_280E9DA70;
  if (!qword_280E9DA70)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E9DA70);
  }

  return result;
}

uint64_t sub_21909D858(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21909D7A0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21909D8B4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21909D7A0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_3Tm_7()
{
  v1 = sub_219BE9EC4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21909D7A0(0, &unk_280EE4470, MEMORY[0x277D6E658]);
  v6 = (v4 + *(*(v5 - 8) + 80) + 8) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  v8 = sub_219BE94F4();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v6, 1, v8))
  {
    (*(v9 + 8))(v0 + v6, v8);
  }

  if (*(v0 + v7))
  {
  }

  return swift_deallocObject();
}

void *sub_21909DB14()
{
  v1 = *(sub_219BE9EC4() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_21909D7A0(0, &unk_280EE4470, MEMORY[0x277D6E658]);
  v5 = *(v4 - 8);
  v6 = (v3 + *(v5 + 80) + 8) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = *(v0 + v3);
  v9 = v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_218FE1838(v7, v0 + v2, v8, (v0 + v6), v10, v11);
}

uint64_t sub_21909DC50(uint64_t a1)
{
  v3 = type metadata accessor for CuratedAudioFeedGroup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup(0);
  MEMORY[0x28223BE20](AudioFeedGroup - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ForYouAudioFeedGroup(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AudioFeedGroup(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  sub_21909E61C(a1, &v36 - v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21909E61C(a1, v15);
      sub_21909E6B4(0);
      swift_allocObject();
      v24 = sub_219BE3014();
      v26 = type metadata accessor for AudioFeedGroup;
      v25 = v18;
    }

    else
    {
      v31 = sub_21909E73C(v18, v5, type metadata accessor for CuratedAudioFeedGroup);
      MEMORY[0x28223BE20](v31);
      *(&v36 - 2) = v1;
      *(&v36 - 1) = v5;
      sub_219BF1904();
      sub_219BE3204();
      sub_21909E61C(a1, v15);
      v32 = (*(v13 + 80) + 16) & ~*(v13 + 80);
      v33 = swift_allocObject();
      sub_21909E73C(v15, v33 + v32, type metadata accessor for AudioFeedGroup);
      v34 = sub_219BE2E54();
      v24 = sub_219BE2F74();

      v25 = v5;
      v26 = type metadata accessor for CuratedAudioFeedGroup;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v27 = sub_21909E73C(v18, v8, type metadata accessor for UpNextAudioFeedGroup);
    MEMORY[0x28223BE20](v27);
    *(&v36 - 2) = v1;
    *(&v36 - 1) = v8;
    sub_219BF1904();
    sub_219BE3204();
    sub_21909E61C(a1, v15);
    v28 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v29 = swift_allocObject();
    sub_21909E73C(v15, v29 + v28, type metadata accessor for AudioFeedGroup);
    v30 = sub_219BE2E54();
    v24 = sub_219BE2F74();

    v25 = v8;
    v26 = type metadata accessor for UpNextAudioFeedGroup;
  }

  else
  {
    v20 = sub_21909E73C(v18, v11, type metadata accessor for ForYouAudioFeedGroup);
    MEMORY[0x28223BE20](v20);
    *(&v36 - 2) = v1;
    *(&v36 - 1) = v11;
    sub_219BF1904();
    sub_219BE3204();
    sub_21909E61C(a1, v15);
    v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v22 = swift_allocObject();
    sub_21909E73C(v15, v22 + v21, type metadata accessor for AudioFeedGroup);
    v23 = sub_219BE2E54();
    v24 = sub_219BE2F74();

    v25 = v11;
    v26 = type metadata accessor for ForYouAudioFeedGroup;
  }

  sub_21909E840(v25, v26);
  return v24;
}

uint64_t sub_21909E1BC(void *a1)
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
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  sub_219BF2AA4();
  v8 = sub_219BF21A4();
  (*(v2 + 8))(v4, v12);
  (*(v5 + 8))(v7, v11);
  return v8;
}

uint64_t sub_21909E3CC(void *a1, uint64_t a2, uint64_t (*a3)(void))
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
  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  sub_219BF2AA4();
  v11 = sub_219BF21A4();
  (*(v5 + 8))(v7, v15);
  (*(v8 + 8))(v10, v14);
  return v11;
}

uint64_t sub_21909E61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21909E6B4(uint64_t a1)
{
  if (!qword_27CC15A30)
  {
    type metadata accessor for AudioFeedGroup(255);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15A30);
    }
  }
}

uint64_t sub_21909E73C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21909E840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21909E8D4(uint64_t a1)
{
  v2 = sub_21909F404();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21909E914()
{
  result = qword_280EE2B08;
  if (!qword_280EE2B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2B08);
  }

  return result;
}

void *sub_21909E9B0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v86 = a5;
  v87 = a6;
  v85 = a4;
  v76 = a3;
  v8 = sub_219BE6DF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v73 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21909F324(0, &qword_280EE4B20, MEMORY[0x277D6DF88]);
  v72 = v11;
  v71 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v70 = &v64 - v12;
  sub_21898BEA4(0);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v90 = v15;
  v88 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v83 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v64 - v18;
  sub_21898BCDC(0);
  MEMORY[0x28223BE20](v20 - 8);
  v68 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v23 = v22;
  v69 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v78 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_219BEB1B4();
  v66 = v25;
  v26 = sub_2186CC224(&unk_280EE36D0, sub_218954408, MEMORY[0x277D6EC70]);
  v27 = sub_219BF5E44();
  v28 = MEMORY[0x277D84F90];
  v75 = v8;
  v74 = v9;
  v77 = v23;
  v89 = a1;
  if (v27)
  {
    v65 = v19;
    v93 = MEMORY[0x277D84F90];
    v29 = v27;
    sub_218C357A0(0, v27 & ~(v27 >> 63), 0);
    v28 = v93;
    result = sub_219BF5DF4();
    if (v29 < 0)
    {
      __break(1u);
      return result;
    }

    v31 = v29;
    v64 = a2;
    v81 = (v88 + 8);
    v82 = (v88 + 16);
    v80 = v88 + 32;
    v32 = v90;
    v33 = v65;
    v79 = v26;
    do
    {
      v90 = v31;
      v34 = sub_219BF5EC4();
      v35 = v83;
      (*v82)(v83);
      v34(v92, 0);
      v36 = sub_219BE6934();
      v91 = v92[0];
      MEMORY[0x28223BE20](v36);
      v60 = v85;
      v61 = v86;
      v62 = v87;
      v63 = v35;
      v37 = sub_218F8B68C(sub_21909F3E4, (&v64 - 6));
      sub_21898BF70(0);
      v39 = v38;
      v40 = sub_2186CC224(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
      v41 = sub_2186CC224(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v37, v39, v40, v41);
      type metadata accessor for TagFeedModel(0);
      sub_2186F7410();
      sub_2186CC224(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
      sub_219BE6924();
      (*v81)(v35, v32);
      v93 = v28;
      v43 = *(v28 + 16);
      v42 = *(v28 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_218C357A0((v42 > 1), v43 + 1, 1);
        v28 = v93;
      }

      *(v28 + 16) = v43 + 1;
      (*(v88 + 32))(v28 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v43, v33, v32);
      sub_219BF5E94();
      v31 = v90 - 1;
    }

    while (v90 != 1);
    a2 = v64;
  }

  else
  {
    v32 = v90;
  }

  v44 = sub_2186CC224(&qword_280EE5870, sub_218954350, MEMORY[0x277D6D720]);
  v45 = sub_2186CC224(&qword_280EE5880, sub_218954350, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9170](v28, v32, v44, v45);
  type metadata accessor for TagFeedModel(0);
  v46 = sub_2186F7410();
  v47 = sub_2186CC224(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
  sub_219BEB1A4();
  v48 = sub_219759E94();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for TagFeedServiceConfig(0);
  sub_2186CC224(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  v49 = sub_219BEEFC4();

  v50 = a2;
  if (v49)
  {
    v51 = sub_219BEDC74();
  }

  else
  {
    v51 = 0;
    v92[1] = 0;
    v92[2] = 0;
  }

  v52 = v75;
  v53 = v73;
  v92[0] = v49;
  v92[3] = v51;
  v54 = v77;
  v55 = v78;
  sub_219BEB2C4();
  v56 = sub_21885AB78(v48);
  v57 = v74;
  (*(v74 + 104))(v53, *MEMORY[0x277D6D868], v52, v56);
  v58 = sub_218D5BF28();
  v62 = v46;
  v63 = v47;
  v60 = v47;
  v61 = v58;
  v59 = v70;
  sub_219BE85A4();
  (*(v57 + 8))(v53, v52);
  v50(v59);
  (*(v71 + 8))(v59, v72);
  return (*(v69 + 8))(v55, v54);
}

void sub_21909F324(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_2186CC224(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_21909F404()
{
  result = qword_280EE2B10;
  if (!qword_280EE2B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE2B10);
  }

  return result;
}

uint64_t sub_21909F458()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1((v0 + 136));
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 240));

  __swift_destroy_boxed_opaque_existential_1((v0 + 288));
  __swift_destroy_boxed_opaque_existential_1((v0 + 328));

  __swift_destroy_boxed_opaque_existential_1((v0 + 376));

  __swift_destroy_boxed_opaque_existential_1((v0 + 424));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 472));
  __swift_destroy_boxed_opaque_existential_1((v0 + 512));
  __swift_destroy_boxed_opaque_existential_1((v0 + 552));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 608));

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 672));
  __swift_destroy_boxed_opaque_existential_1((v0 + 712));
  __swift_destroy_boxed_opaque_existential_1((v0 + 752));
  __swift_destroy_boxed_opaque_existential_1((v0 + 792));

  __swift_destroy_boxed_opaque_existential_1((v0 + 848));
  __swift_destroy_boxed_opaque_existential_1((v0 + 888));
  __swift_destroy_boxed_opaque_existential_1((v0 + 928));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 984));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1024));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1184));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1224));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1264));
  return v0;
}

uint64_t sub_21909F5C0()
{
  sub_21909F458();

  return swift_deallocClassInstance();
}

uint64_t sub_21909F61C(char **a1, uint64_t *a2)
{
  v850 = a2;
  v851 = a1;
  v2 = type metadata accessor for FoodTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v2 - 8);
  v786 = &v684 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v789 = type metadata accessor for FoodTodayFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v789);
  v788 = &v684 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E16D0(0);
  v840 = v5;
  v787 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v835 = (&v684 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v837 = (&v684 - v8);
  v792 = type metadata accessor for ChannelPickerTodayFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v792);
  v791 = &v684 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190A6884(0, qword_280E97668, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
  MEMORY[0x28223BE20](v10 - 8);
  v808 = &v684 - v11;
  v12 = type metadata accessor for ChannelPickerTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v12 - 8);
  v783 = &v684 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v807 = type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs(0);
  v806 = *(v807 - 8);
  MEMORY[0x28223BE20](v807);
  v797 = &v684 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v790 = &v684 - v16;
  sub_2186E14F4(0);
  v842 = v17;
  v809 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v841 = (&v684 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v782 = type metadata accessor for SavedStoriesTodayFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v782);
  v780 = &v684 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E13DC(0);
  v781 = v20;
  v779 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v778 = &v684 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ChannelTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v22 - 8);
  v777 = &v684 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E12C4(0);
  v785 = v24;
  v784 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v776 = &v684 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v832 = &v684 - v27;
  v775 = type metadata accessor for ShortcutsTodayFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v775);
  v772 = &v684 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E1164(0);
  v773 = v29;
  v771 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v768 = &v684 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v774 = type metadata accessor for IntroToSportsTodayFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v774);
  v770 = &v684 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E104C(0);
  v831 = v32;
  v769 = *(v32 - 1);
  MEMORY[0x28223BE20](v32);
  v830 = (&v684 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = type metadata accessor for MySportsTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v34 - 8);
  v834 = &v684 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0E98(0);
  v839 = v36;
  v838 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v833 = &v684 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v836 = &v684 - v39;
  v40 = type metadata accessor for EngagementTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v40 - 8);
  v762 = &v684 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190A6714(0, &qword_280E922F0, sub_2186E0DF0, sub_2186E0E44, &type metadata for EngagementTodayFeedGroupConfigData);
  v767 = v42;
  v766 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v760 = &v684 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v763 = &v684 - v45;
  v46 = type metadata accessor for SharedWithYouTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v46 - 8);
  v761 = &v684 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0CD8(0);
  v765 = v48;
  v764 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v755 = &v684 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v829 = &v684 - v51;
  v52 = type metadata accessor for SeenContentMarkTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v52 - 8);
  v750 = &v684 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0BC0(0);
  v757 = v54;
  v756 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v748 = &v684 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v754 = &v684 - v57;
  v58 = type metadata accessor for SuggestionTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v58 - 8);
  v749 = &v684 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0AA8(0);
  v759 = v60;
  v758 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v747 = &v684 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v826 = &v684 - v63;
  v64 = type metadata accessor for SubscriptionTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v64 - 8);
  v815 = &v684 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v709 = type metadata accessor for SubscriptionTodayFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v709);
  v708 = &v684 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0990(0);
  v753 = v67;
  v751 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v814 = &v684 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v816 = &v684 - v70;
  v71 = type metadata accessor for SpotlightTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v71 - 8);
  v740 = &v684 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0878(0);
  v745 = *(v73 - 8);
  v746 = v73;
  MEMORY[0x28223BE20](v73);
  v738 = &v684 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v75);
  v744 = &v684 - v76;
  v77 = type metadata accessor for NewFollowTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v77 - 8);
  v739 = &v684 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v743 = type metadata accessor for NewFollowTodayFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v743);
  v742 = &v684 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E06DC(0);
  v823 = v80;
  v741 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v737 = &v684 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82);
  v822 = &v684 - v83;
  v735 = type metadata accessor for MagazineTodayFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v735);
  v733 = &v684 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190A6714(0, &qword_280E923C0, sub_2186E0634, sub_2186E0688, &type metadata for MagazineTodayFeedGroupConfigData);
  v731 = *(v85 - 8);
  v732 = v85;
  MEMORY[0x28223BE20](v85);
  v730 = &v684 - v86;
  v87 = type metadata accessor for TopicTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v87 - 8);
  v727 = &v684 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E03A0(0);
  v736 = v89;
  v734 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v725 = &v684 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v91);
  v821 = &v684 - v92;
  v93 = type metadata accessor for LatestStoriesTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v93 - 8);
  v722 = &v684 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0288(0);
  v820 = v95;
  v729 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v720 = &v684 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97);
  v819 = &v684 - v98;
  v99 = type metadata accessor for MissedStoriesTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v99 - 8);
  v721 = &v684 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0170(0);
  v728 = v101;
  v726 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v719 = &v684 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v103);
  v818 = &v684 - v104;
  v105 = type metadata accessor for ForYouTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v105 - 8);
  v718 = &v684 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E0010(0);
  v723 = *(v107 - 8);
  v724 = v107;
  MEMORY[0x28223BE20](v107);
  v717 = &v684 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v109);
  v817 = &v684 - v110;
  v716 = type metadata accessor for TrendingTodayFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v716);
  v714 = &v684 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DF784(0);
  v715 = v112;
  v713 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v712 = &v684 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = MEMORY[0x277D32318];
  sub_2190A6790(0, &qword_280E91860, MEMORY[0x277D32318]);
  v828 = v115;
  v827 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v700 = &v684 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v117);
  v687 = &v684 - v118;
  v119 = MEMORY[0x277D321A0];
  sub_2190A6790(0, &qword_280E91A20, MEMORY[0x277D321A0]);
  v795 = v120;
  v810 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v699 = &v684 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v122);
  v685 = &v684 - v123;
  sub_2190A6884(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v124 - 8);
  v705 = &v684 - v125;
  sub_2190A682C(0, &unk_280E91850, &qword_280E91860, v114);
  MEMORY[0x28223BE20](v126 - 8);
  v793 = &v684 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v128);
  v843 = &v684 - v129;
  MEMORY[0x28223BE20](v130);
  v686 = &v684 - v131;
  MEMORY[0x28223BE20](v132);
  v798 = &v684 - v133;
  sub_2190A682C(0, &unk_280E91A10, &qword_280E91A20, v119);
  MEMORY[0x28223BE20](v134 - 8);
  v710 = &v684 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v136);
  v796 = &v684 - v137;
  MEMORY[0x28223BE20](v138);
  v684 = &v684 - v139;
  MEMORY[0x28223BE20](v140);
  v704 = &v684 - v141;
  v702 = type metadata accessor for CuratedTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v702);
  v701 = &v684 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v143);
  v752 = &v684 - v144;
  MEMORY[0x28223BE20](v145);
  v698 = (&v684 - v146);
  sub_2190A6884(0, qword_280EBBA10, type metadata accessor for CuratedTodayFeedGroupKnobs);
  MEMORY[0x28223BE20](v147 - 8);
  v794 = &v684 - ((v148 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v149);
  v805 = &v684 - v150;
  v846 = type metadata accessor for CuratedTodayFeedGroupKnobs(0);
  v804 = *(v846 - 8);
  MEMORY[0x28223BE20](v846);
  v825 = &v684 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v152);
  v703 = &v684 - v153;
  MEMORY[0x28223BE20](v154);
  v845 = &v684 - v155;
  sub_2186DE644(0);
  v849 = v156;
  v844 = *(v156 - 1);
  MEMORY[0x28223BE20](v156);
  v824 = &v684 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v158);
  v848 = &v684 - v159;
  v160 = type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v160);
  v162 = &v684 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  v695 = type metadata accessor for LocalNewsTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v695);
  v694 = &v684 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v164);
  v692 = &v684 - v165;
  v697 = type metadata accessor for LocalNewsTodayFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v697);
  v696 = &v684 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v167);
  v690 = &v684 - v168;
  sub_2186DF3DC(0);
  v711 = v169;
  v800 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v801 = &v684 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v171);
  v803 = &v684 - v172;
  v173 = type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v173 - 8);
  v799 = &v684 - ((v174 + 15) & 0xFFFFFFFFFFFFFFF0);
  v707 = type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v707);
  v706 = &v684 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v176);
  v688 = &v684 - v177;
  v802 = type metadata accessor for NewspaperTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v802);
  v691 = &v684 - ((v178 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v179);
  v181 = &v684 - v180;
  MEMORY[0x28223BE20](v182);
  v184 = &v684 - v183;
  MEMORY[0x28223BE20](v185);
  v187 = &v684 - v186;
  v693 = type metadata accessor for NewspaperTodayFeedGroupEmitter(0);
  MEMORY[0x28223BE20](v693);
  v189 = &v684 - ((v188 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v190);
  v689 = &v684 - v191;
  sub_2186DE858(0);
  v847 = v192;
  v813 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v811 = &v684 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v194);
  v196 = &v684 - v195;
  MEMORY[0x28223BE20](v197);
  v812 = &v684 - v198;
  v199 = type metadata accessor for TodayFeedGroupConfig(0);
  MEMORY[0x28223BE20](v199);
  v201 = &v684 - ((v200 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190A68D8(v851, v201, type metadata accessor for TodayFeedGroupConfig);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v406 = v813;
      v407 = v812;
      v408 = v847;
      (*(v813 + 32))(v812, v201, v847);
      v409 = v852;
      v410 = [*(v852 + 224) modernLocalNewspaperEnabled];
      v411 = *(v406 + 16);
      if (!v410)
      {
        v553 = *(v406 + 16);
        v411(v811, v407, v408);
        sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_legacyNewspaperKnobs, v799, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
        sub_218718690(v409 + 16, v876);
        sub_218718690(v409 + 240, &v874);
        v554 = *(v409 + 280);
        v555 = [v554 paidAccessChecker];
        if (!v555)
        {
          goto LABEL_138;
        }

        v556 = v555;
        v557 = [v554 subscriptionController];
        if (!v557)
        {
          goto LABEL_141;
        }

        v558 = v557;
        sub_218718690(v409 + 288, &v872);
        sub_218718690(v409 + 552, &v869);
        v560 = v706;
        v559 = v707;
        v561 = &v706[*(v707 + 52)];
        *v561 = 0x657061707377654ELL;
        *(v561 + 1) = 0xE900000000000072;
        v553(v560, v811, v847);
        sub_2190A68D8(v799, &v560[v559[5]], type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
        sub_218718690(v876, &v560[v559[6]]);
        sub_218718690(&v874, &v560[v559[7]]);
        *&v560[v559[8]] = v556;
        *&v560[v559[9]] = v558;
        sub_218718690(&v872, &v560[v559[10]]);
        sub_218718690(&v869, &v560[v559[12]]);
        sub_219BEDD14();
        v562 = *&v181[v802[7]];

        sub_2190A6A44(v181, type metadata accessor for NewspaperTodayFeedGroupConfigData);
        v563 = *(v562 + 16);
        if (v563)
        {
          *&v866 = MEMORY[0x277D84F90];
          sub_218C35840(0, v563, 0);
          isUniquelyReferenced_nonNull_native = v866;
          *&v852 = v562;
          v564 = (v562 + 40);
          do
          {
            v566 = *(v564 - 1);
            v565 = *v564;
            *&v866 = isUniquelyReferenced_nonNull_native;
            v568 = *(isUniquelyReferenced_nonNull_native + 16);
            v567 = *(isUniquelyReferenced_nonNull_native + 24);

            if (v568 >= v567 >> 1)
            {
              sub_218C35840((v567 > 1), v568 + 1, 1);
              isUniquelyReferenced_nonNull_native = v866;
            }

            *(isUniquelyReferenced_nonNull_native + 16) = v568 + 1;
            v569 = isUniquelyReferenced_nonNull_native + 24 * v568;
            *(v569 + 32) = v566;
            *(v569 + 40) = v565;
            *(v569 + 48) = 0;
            v564 += 2;
            --v563;
          }

          while (v563);
        }

        else
        {

          isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
        }

        v654 = v691;
        sub_219BEDD14();
        v360 = *(v654 + v802[8]);

        sub_2190A6A44(v654, type metadata accessor for NewspaperTodayFeedGroupConfigData);
        v655 = *(v360 + 16);
        if (v655)
        {
          *&v866 = MEMORY[0x277D84F90];
          sub_218C35840(0, v655, 0);
          v656 = v866;
          *&v852 = v360;
          v657 = (v360 + 40);
          do
          {
            v658 = *(v657 - 1);
            v360 = *v657;
            *&v866 = v656;
            v660 = *(v656 + 16);
            v659 = *(v656 + 24);

            if (v660 >= v659 >> 1)
            {
              sub_218C35840((v659 > 1), v660 + 1, 1);
              v656 = v866;
            }

            *(v656 + 16) = v660 + 1;
            v661 = v656 + 24 * v660;
            *(v661 + 32) = v658;
            *(v661 + 40) = v360;
            *(v661 + 48) = 1;
            v657 += 2;
            --v655;
          }

          while (v655);
        }

        else
        {

          v656 = MEMORY[0x277D84F90];
        }

        *&v866 = isUniquelyReferenced_nonNull_native;
        sub_2191EE600(v656);
        v662 = v866;
        *&v852 = *(v866 + 16);
        if (!v852)
        {
          v663 = MEMORY[0x277D84F98];
LABEL_124:

          __swift_destroy_boxed_opaque_existential_1(&v869);
          __swift_destroy_boxed_opaque_existential_1(&v872);
          __swift_destroy_boxed_opaque_existential_1(&v874);
          __swift_destroy_boxed_opaque_existential_1(v876);
          sub_2190A6A44(v799, type metadata accessor for LegacyNewspaperTodayFeedGroupKnobs);
          v680 = *(v813 + 8);
          v681 = v847;
          v680(v811, v847);
          v682 = v706;
          *&v706[*(v707 + 44)] = v663;
          sub_2190A6BCC(v682, v688, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter);
          sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
          swift_allocObject();
          sub_2186DFCB0(&qword_27CC15A58, type metadata accessor for LegacyNewspaperTodayFeedGroupEmitter, &unk_219C36710);
          v282 = sub_219BEDF84();
          v680(v812, v681);
          return v282;
        }

        v350 = 0;
        v361 = (v866 + 48);
        v663 = MEMORY[0x277D84F98];
        while (1)
        {
          if (v350 >= *(v662 + 16))
          {
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            swift_once();
LABEL_19:
            v362 = sub_219BE5434();
            v363 = __swift_project_value_buffer(v362, qword_280F62520);
            v364 = &v361[v696];
            v365 = v696;
            (*(*(v362 - 8) + 16))(v364, v363, v362);
            (isUniquelyReferenced_nonNull_native)(v365, v801, v350);
            v366 = v692;
            sub_219BEDD14();
            v367 = v695;
            v368 = (v366 + *(v695 + 24));
            v369 = *v368;
            v370 = v368[1];

            sub_2190A6A44(v366, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
            sub_218D384FC(v369, v370, v850, v365 + *(v360 + 20));

            sub_218718690(v876, v365 + *(v360 + 24));
            sub_218718690(&v874, v365 + *(v360 + 28));
            sub_218718690(&v872, v365 + *(v360 + 32));
            *(v365 + *(v360 + 36)) = v851;
            *(v365 + *(v360 + 40)) = v849;
            *(v365 + *(v360 + 44)) = v848;
            sub_218718690(&v869, v365 + *(v360 + 48));
            sub_218718690(&v866, v365 + *(v360 + 52));
            v371 = v694;
            sub_219BEDD14();
            v372 = (v371 + *(v367 + 24));
            v374 = *v372;
            v373 = v372[1];

            sub_2190A6A44(v371, type metadata accessor for LocalNewsTodayFeedGroupConfigData);
            v375 = 0x654E206C61636F4CLL;
            if (v373)
            {
              strcpy(v865, "Local News (");
              BYTE13(v865[0]) = 0;
              HIWORD(v865[0]) = -5120;
              MEMORY[0x21CECC330](v374, v373);

              MEMORY[0x21CECC330](41, 0xE100000000000000);
              v376 = *(&v865[0] + 1);
              v375 = *&v865[0];
            }

            else
            {
              v376 = 0xEA00000000007377;
            }

            v645 = v800;
            v646 = v690;
            __swift_destroy_boxed_opaque_existential_1(&v866);
            __swift_destroy_boxed_opaque_existential_1(&v869);
            __swift_destroy_boxed_opaque_existential_1(&v872);
            __swift_destroy_boxed_opaque_existential_1(&v874);
            __swift_destroy_boxed_opaque_existential_1(v876);
            v647 = *(v645 + 8);
            v647(v801, v350);
            v648 = (v365 + *(v360 + 56));
            *v648 = v375;
            v648[1] = v376;
            sub_2190A6BCC(v365, v646, type metadata accessor for LocalNewsTodayFeedGroupEmitter);
            sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
            swift_allocObject();
            sub_2186DFCB0(&unk_280EE17D0, type metadata accessor for LocalNewsTodayFeedGroupEmitter, &unk_219C33670);
            v282 = sub_219BEDF94();
            v647(v803, v350);
            return v282;
          }

          v360 = *(v361 - 2);
          v666 = *(v361 - 1);
          v667 = *v361;
          sub_21892DEAC(v360, v666);
          sub_21892DEAC(v360, v666);
          sub_21892DEAC(v360, v666);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v866 = v663;
          v668 = sub_21870F700(v360, v666);
          v670 = v663[2];
          v671 = (v669 & 1) == 0;
          v672 = __OFADD__(v670, v671);
          v673 = v670 + v671;
          if (v672)
          {
            goto LABEL_127;
          }

          v674 = v669;
          if (v663[3] < v673)
          {
            break;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_118;
          }

          isUniquelyReferenced_nonNull_native = v668;
          sub_219492AC0();
          v668 = isUniquelyReferenced_nonNull_native;
          if (v674)
          {
LABEL_110:
            v664 = v668;
            sub_218D89920();
            v663 = v866;
            v665 = *(v866 + 56) + 24 * v664;
            *v665 = v360;
            *(v665 + 8) = v666;
            *(v665 + 16) = v667;
            sub_218D89920();
            sub_218D89920();
            goto LABEL_111;
          }

LABEL_119:
          v663 = v866;
          *(v866 + 8 * (v668 >> 6) + 64) |= 1 << v668;
          v676 = (v663[6] + 16 * v668);
          *v676 = v360;
          v676[1] = v666;
          v677 = v663[7] + 24 * v668;
          *v677 = v360;
          *(v677 + 8) = v666;
          *(v677 + 16) = v667;
          sub_218D89920();
          v678 = v663[2];
          v672 = __OFADD__(v678, 1);
          v679 = v678 + 1;
          if (v672)
          {
            goto LABEL_128;
          }

          v663[2] = v679;
LABEL_111:
          ++v350;
          v361 += 24;
          if (v852 == v350)
          {
            goto LABEL_124;
          }
        }

        sub_219481CD0(v673, isUniquelyReferenced_nonNull_native);
        v668 = sub_21870F700(v360, v666);
        if ((v674 & 1) != (v675 & 1))
        {
          goto LABEL_142;
        }

LABEL_118:
        if (v674)
        {
          goto LABEL_110;
        }

        goto LABEL_119;
      }

      v851 = *(v406 + 16);
      v411(v196, v407, v408);
      v412 = *(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_newspaperKnobs);
      sub_218718690(v409 + 96, v876);
      sub_218718690(v409 + 472, &v874);
      v413 = *(v409 + 280);
      v414 = [v413 paidAccessChecker];
      if (!v414)
      {
        goto LABEL_137;
      }

      v415 = v414;
      v850 = v412;
      v416 = [v413 subscriptionController];
      if (v416)
      {
        v848 = v416;
        v849 = v415;
        v417 = v852;
        sub_218718690(v852 + 240, &v872);
        sub_218718690(v417 + 552, &v869);
        v418 = v693;
        v419 = *(v693 + 52);
        if (qword_280EE5F08 != -1)
        {
          swift_once();
        }

        v420 = sub_219BE5434();
        v421 = __swift_project_value_buffer(v420, qword_280F62520);
        (*(*(v420 - 8) + 16))(&v189[v419], v421, v420);
        (v851)(v189, v196, v847);
        sub_219BEDD14();
        v422 = v802;
        v423 = &v187[v802[6]];
        v424 = *v423;
        v425 = v423[1];

        sub_2190A6A44(v187, type metadata accessor for NewspaperTodayFeedGroupConfigData);
        sub_218F63BE4(v424, v425, v850, &v189[v418[5]]);

        sub_218718690(v876, &v189[v418[6]]);
        sub_218718690(&v874, &v189[v418[7]]);
        *&v189[v418[8]] = v849;
        *&v189[v418[9]] = v848;
        sub_218718690(&v872, &v189[v418[10]]);
        sub_218718690(&v869, &v189[v418[11]]);
        sub_219BEDD14();
        v426 = &v184[v422[6]];
        v428 = *v426;
        v427 = *(v426 + 1);

        sub_2190A6A44(v184, type metadata accessor for NewspaperTodayFeedGroupConfigData);
        v429 = 0x657061707377654ELL;
        v430 = v418;
        if (v427)
        {
          *&v866 = 0x657061707377654ELL;
          *(&v866 + 1) = 0xEB00000000282072;
          MEMORY[0x21CECC330](v428, v427);

          MEMORY[0x21CECC330](41, 0xE100000000000000);
          v431 = *(&v866 + 1);
          v429 = v866;
        }

        else
        {
          v431 = 0xE900000000000072;
        }

        v649 = v689;
        __swift_destroy_boxed_opaque_existential_1(&v869);
        __swift_destroy_boxed_opaque_existential_1(&v872);
        __swift_destroy_boxed_opaque_existential_1(&v874);
        __swift_destroy_boxed_opaque_existential_1(v876);
        v650 = *(v813 + 8);
        v651 = v196;
        v652 = v847;
        v650(v651, v847);
        v653 = &v189[v430[12]];
        *v653 = v429;
        v653[1] = v431;
        sub_2190A6BCC(v189, v649, type metadata accessor for NewspaperTodayFeedGroupEmitter);
        sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
        swift_allocObject();
        sub_2186DFCB0(qword_280EAC010, type metadata accessor for NewspaperTodayFeedGroupEmitter, &unk_219C48E88);
        v282 = sub_219BEDF94();
        v650(v812, v652);
        return v282;
      }

LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      result = sub_219BF79A4();
      __break(1u);
      return result;
    case 2u:
      v348 = v800;
      v349 = v803;
      v350 = v711;
      (*(v800 + 32))(v803, v201, v711);
      v351 = v852;
      v352 = [*(v852 + 224) modernLocalNewspaperEnabled];
      isUniquelyReferenced_nonNull_native = *(v348 + 16);
      if (!v352)
      {
        (isUniquelyReferenced_nonNull_native)(v162, v349, v350);
        sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_legacyLocalNewsKnobs, &v162[v160[5]], type metadata accessor for LegacyLocalNewsTodayFeedGroupKnobs);
        sub_218718690(v351 + 56, &v162[v160[6]]);
        sub_218718690(v351 + 424, &v162[v160[7]]);
        sub_218718690(v351 + 552, &v162[v160[8]]);
        v552 = &v162[v160[9]];
        *v552 = 0x654E206C61636F4CLL;
        *(v552 + 1) = 0xEA00000000007377;
        sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
        swift_allocObject();
        sub_2186DFCB0(&unk_27CC15A48, type metadata accessor for LegacyLocalNewsTodayFeedGroupEmitter, &unk_219C1EE88);
        v282 = sub_219BEDF84();
        (*(v348 + 8))(v349, v350);
        return v282;
      }

      (isUniquelyReferenced_nonNull_native)(v801, v349, v350);
      v354 = *(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_localNewsKnobs);
      sub_218718690(v351 + 96, v876);
      sub_218718690(v351 + 472, &v874);
      sub_218718690(v351 + 424, &v872);
      v355 = *(v351 + 464);
      v356 = *(v351 + 280);
      swift_unknownObjectRetain();
      v357 = [v356 localAreasManager];
      if (!v357)
      {
        goto LABEL_136;
      }

      v358 = v357;
      v359 = [v356 subscriptionController];
      if (!v359)
      {
        goto LABEL_139;
      }

      v848 = v359;
      v849 = v358;
      v850 = v354;
      v851 = v355;
      sub_218718690(v351 + 1024, &v869);
      sub_218718690(v351 + 552, &v866);
      v360 = v697;
      v361 = *(v697 + 60);
      if (qword_280EE5F08 != -1)
      {
        goto LABEL_129;
      }

      goto LABEL_19;
    case 3u:
      v379 = v712;
      v377 = v713;
      v380 = v715;
      (*(v713 + 32))(v712, v201, v715);
      v387 = v714;
      (*(v377 + 16))(v714, v379, v380);
      v388 = v716;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_trendingKnobs, &v387[*(v716 + 20)], type metadata accessor for TrendingTodayFeedGroupKnobs);
      v389 = v852;
      sub_218718690(v852 + 96, &v387[v388[6]]);
      v390 = *(v389 + 280);
      v391 = &v387[v388[8]];
      *v391 = 0x676E69646E657254;
      *(v391 + 1) = 0xE800000000000000;
      *&v387[v388[7]] = v390;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_280EADE08, type metadata accessor for TrendingTodayFeedGroupEmitter, &unk_219CBBA30);
      v392 = v390;
      goto LABEL_46;
    case 4u:
      v309 = v723;
      v310 = *(v723 + 32);
      v311 = v817;
      v312 = v201;
      v313 = v724;
      v310(v817, v312, v724);
      v314 = v717;
      (*(v309 + 16))(v717, v311, v313);
      v315 = v718;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_forYouKnobs, v718, type metadata accessor for ForYouTodayFeedGroupKnobs);
      v316 = v852;
      sub_218718690(v852 + 96, v876);
      v851 = *(v316 + 280);
      v317 = [v851 paidAccessChecker];
      if (!v317)
      {
        goto LABEL_131;
      }

      v318 = v317;
      sub_218718690(v316 + 240, &v874);
      sub_218718690(v316 + 176, &v872);
      v850 = *(v316 + 216);
      sub_218718690(v316 + 792, &v869);
      sub_218718690(v316 + 1264, &v866);
      type metadata accessor for ForYouTodayFeedGroupEmitter(0);
      v319 = swift_allocObject();
      v320 = (v319 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_name);
      *v320 = 0x756F5920726F46;
      v320[1] = 0xE700000000000000;
      v310((v319 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_config), v314, v313);
      sub_2190A6BCC(v315, v319 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs, type metadata accessor for ForYouTodayFeedGroupKnobs);
      sub_2186CB1F0(v876, v319 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_formatService);
      *(v319 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_paidAccessChecker) = v318;
      sub_2186CB1F0(&v874, v319 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_personalizationService);
      sub_2186CB1F0(&v872, v319 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_headlineService);
      *(v319 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_feedPersonalizer) = v850;
      v321 = v851;
      *(v319 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_cloudContext) = v851;
      sub_2186CB1F0(&v869, v319 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_sportsGraphManager);
      sub_2186CB1F0(&v866, v319 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_articleForYouAvailability);
      *&v876[0] = v319;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&qword_280EB8970, type metadata accessor for ForYouTodayFeedGroupEmitter, &unk_219C57458);
      swift_unknownObjectRetain();
      v322 = v321;
      v282 = sub_219BEDF94();
      (*(v309 + 8))(v817, v313);
      return v282;
    case 5u:
      v454 = v726;
      v455 = *(v726 + 32);
      v456 = v818;
      v457 = v201;
      v458 = v728;
      v455(v818, v457, v728);
      v459 = v719;
      (*(v454 + 16))(v719, v456, v458);
      v460 = v721;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_missedStoriesKnobs, v721, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
      v461 = v852;
      sub_218718690(v852 + 96, v876);
      v851 = *(v461 + 280);
      v462 = [v851 paidAccessChecker];
      if (!v462)
      {
        goto LABEL_133;
      }

      v463 = v462;
      sub_218718690(v461 + 240, &v874);
      sub_218718690(v461 + 176, &v872);
      v850 = *(v461 + 216);
      sub_218718690(v461 + 792, &v869);
      type metadata accessor for MissedStoriesTodayFeedGroupEmitter(0);
      v464 = swift_allocObject();
      v465 = v464 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_name;
      strcpy((v464 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_name), "Missed Stories");
      *(v465 + 15) = -18;
      v455((v464 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_config), v459, v458);
      sub_2190A6BCC(v460, v464 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_knobs, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
      sub_2186CB1F0(v876, v464 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_formatService);
      *(v464 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_paidAccessChecker) = v463;
      sub_2186CB1F0(&v874, v464 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_personalizationService);
      sub_2186CB1F0(&v872, v464 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_headlineService);
      *(v464 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_feedPersonalizer) = v850;
      v466 = v851;
      *(v464 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_cloudContext) = v851;
      sub_2186CB1F0(&v869, v464 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_sportsGraphManager);
      *&v876[0] = v464;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_280E9FCB8, type metadata accessor for MissedStoriesTodayFeedGroupEmitter, &unk_219C931C0);
      swift_unknownObjectRetain();
      v467 = v466;
      v282 = sub_219BEDF94();
      (*(v454 + 8))(v818, v458);
      return v282;
    case 6u:
      v493 = v729;
      v494 = *(v729 + 32);
      v495 = v819;
      v496 = v820;
      v494(v819, v201, v820);
      v497 = v720;
      (*(v493 + 16))(v720, v495, v496);
      v498 = v722;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_latestStoriesKnobs, v722, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
      v499 = v852;
      sub_218718690(v852 + 96, v876);
      v500 = *(v499 + 280);
      v501 = [v500 paidAccessChecker];
      if (!v501)
      {
        goto LABEL_134;
      }

      v502 = v501;
      type metadata accessor for LatestStoriesTodayFeedGroupEmitter(0);
      v503 = swift_allocObject();
      v504 = v503 + OBJC_IVAR____TtC7NewsUI234LatestStoriesTodayFeedGroupEmitter_name;
      strcpy((v503 + OBJC_IVAR____TtC7NewsUI234LatestStoriesTodayFeedGroupEmitter_name), "Latest Stories");
      *(v504 + 15) = -18;
      v505 = v497;
      v506 = v820;
      v494((v503 + OBJC_IVAR____TtC7NewsUI234LatestStoriesTodayFeedGroupEmitter_config), v505, v820);
      sub_2190A6BCC(v498, v503 + OBJC_IVAR____TtC7NewsUI234LatestStoriesTodayFeedGroupEmitter_knobs, type metadata accessor for LatestStoriesTodayFeedGroupKnobs);
      sub_2186CB1F0(v876, v503 + OBJC_IVAR____TtC7NewsUI234LatestStoriesTodayFeedGroupEmitter_formatService);
      *(v503 + OBJC_IVAR____TtC7NewsUI234LatestStoriesTodayFeedGroupEmitter_paidAccessChecker) = v502;
      *(v503 + OBJC_IVAR____TtC7NewsUI234LatestStoriesTodayFeedGroupEmitter_cloudContext) = v500;
      *&v876[0] = v503;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&qword_280EA0200, type metadata accessor for LatestStoriesTodayFeedGroupEmitter, &unk_219C7F6C8);
      v507 = v500;
      v282 = sub_219BEDF94();
      (*(v493 + 8))(v819, v506);
      return v282;
    case 7u:
      v393 = v734;
      v394 = v821;
      v395 = v201;
      v396 = v736;
      (*(v734 + 32))(v821, v395, v736);
      v397 = *(v393 + 16);
      v398 = v725;
      v397(v725, v394, v396);
      v399 = v727;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_topicKnobs, v727, type metadata accessor for TopicTodayFeedGroupKnobs);
      v400 = v852;
      sub_218718690(v852 + 96, v876);
      v401 = [*(v400 + 280) appConfigurationManager];
      sub_218718690(v400 + 792, &v874);
      type metadata accessor for TopicTodayFeedGroupEmitter(0);
      v402 = swift_allocObject();
      v403 = (v402 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_name);
      *v403 = 0x6369706F54;
      v403[1] = 0xE500000000000000;
      v397((v402 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_config), v398, v396);
      sub_21902C8E0(v401, v399, v402 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_knobs);
      sub_2190A6A44(v399, type metadata accessor for TopicTodayFeedGroupKnobs);
      v404 = *(v393 + 8);
      v404(v398, v396);
      sub_2186CB1F0(v876, v402 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService);
      *(v402 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_configurationManager) = v401;
      sub_2186CB1F0(&v874, v402 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_sportsGraphManager);
      *&v876[0] = v402;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_280EB9AA8, type metadata accessor for TopicTodayFeedGroupEmitter, &unk_219C541D0);
      v282 = sub_219BEDF94();
      v405 = v821;
      goto LABEL_50;
    case 8u:
      v517 = v730;
      v516 = v731;
      v518 = v732;
      (*(v731 + 32))(v730, v201, v732);
      v519 = v733;
      (*(v516 + 16))(v733, v517, v518);
      v520 = v735;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_magazineKnobs, &v519[*(v735 + 20)], type metadata accessor for MagazineTodayFeedGroupKnobs);
      v521 = v852;
      v522 = *(v852 + 232);
      sub_218718690(v852 + 552, &v519[v520[7]]);
      v523 = *(v521 + 280);
      sub_218718690(v521 + 888, &v519[v520[9]]);
      *&v519[v520[6]] = v522;
      *&v519[v520[8]] = v523;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&qword_280EB0130, type metadata accessor for MagazineTodayFeedGroupEmitter, &unk_219C3A410);

      v524 = v523;
      v282 = sub_219BEDF94();
      (*(v516 + 8))(v517, v518);
      return v282;
    case 9u:
      v334 = v741;
      v335 = v822;
      v336 = v823;
      v851 = *(v741 + 32);
      (v851)(v822, v201, v823);
      v337 = v737;
      (*(v334 + 16))(v737, v335, v336);
      v338 = v739;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_newFollowKnobs, v739, type metadata accessor for NewFollowTodayFeedGroupKnobs);
      v339 = v852;
      sub_218718690(v852 + 96, v876);
      v340 = *(v339 + 280);
      v341 = [v340 subscriptionController];
      if (!v341)
      {
        goto LABEL_132;
      }

      v342 = v341;
      v344 = v742;
      v343 = v743;
      sub_218718690(v339 + 288, &v742[*(v743 + 32)]);
      sub_218718690(v339 + 176, &v344[v343[9]]);
      sub_218718690(v339 + 240, &v344[v343[10]]);
      v345 = &v344[v343[12]];
      *v345 = 0x6F6C6C6F4677654ELL;
      *(v345 + 1) = 0xE900000000000077;
      v346 = v823;
      (v851)(v344, v337, v823);
      sub_2190A6BCC(v338, &v344[v343[5]], type metadata accessor for NewFollowTodayFeedGroupKnobs);
      sub_2186CB1F0(v876, &v344[v343[6]]);
      *&v344[v343[7]] = v342;
      *&v344[v343[11]] = v340;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_280EAC218, type metadata accessor for NewFollowTodayFeedGroupEmitter, &unk_219C90620);
      v347 = v340;
      v282 = sub_219BEDF94();
      (*(v334 + 8))(v822, v346);
      return v282;
    case 0xAu:
      v379 = v744;
      v377 = v745;
      v511 = *(v745 + 32);
      v380 = v746;
      v511(v744, v201, v746);
      v512 = v738;
      (*(v377 + 16))(v738, v379, v380);
      v513 = v740;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_spotlightKnobs, v740, type metadata accessor for SpotlightTodayFeedGroupKnobs);
      v514 = v852;
      sub_218718690(v852 + 96, v876);
      sub_218718690(v514 + 240, &v874);
      type metadata accessor for SpotlightTodayFeedGroupEmitter(0);
      v515 = swift_allocObject();
      v511((v515 + OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_config), v512, v380);
      sub_2190A6BCC(v513, v515 + OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_knobs, type metadata accessor for SpotlightTodayFeedGroupKnobs);
      sub_2186CB1F0(v876, v515 + OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_formatService);
      sub_2186CB1F0(&v874, v515 + OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_personalizationService);
      *&v876[0] = v515;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      v384 = &unk_280EAADD0;
      v385 = type metadata accessor for SpotlightTodayFeedGroupEmitter;
      v386 = &unk_219C69768;
      goto LABEL_45;
    case 0xBu:
      v295 = v751;
      v296 = *(v751 + 32);
      v297 = v816;
      v298 = v753;
      v296(v816, v201, v753);
      (*(v295 + 16))(v814, v297, v298);
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_subscriptionKnobs, v815, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
      v299 = v852;
      sub_218718690(v852 + 96, v876);
      v300 = *(v299 + 280);
      v301 = [v300 subscriptionController];
      if (v301)
      {
        v302 = v301;
        sub_218718690(v299 + 288, &v874);
        sub_218718690(v299 + 176, &v872);
        sub_218718690(v299 + 240, &v869);
        v303 = [v300 paidAccessChecker];
        if (v303)
        {
          v304 = v303;
          v305 = [v300 readingHistory];
          v307 = v708;
          v306 = v709;
          v308 = &v708[*(v709 + 52)];
          strcpy(v308, "Subscription");
          v308[13] = 0;
          *(v308 + 7) = -5120;
          v296(v307, v814, v298);
          sub_2190A6BCC(v815, &v307[v306[5]], type metadata accessor for SubscriptionTodayFeedGroupKnobs);
          sub_2186CB1F0(v876, &v307[v306[6]]);
          *&v307[v306[7]] = v302;
          sub_2186CB1F0(&v874, &v307[v306[8]]);
          sub_2186CB1F0(&v872, &v307[v306[9]]);
          sub_2186CB1F0(&v869, &v307[v306[10]]);
          *&v307[v306[11]] = v304;
          *&v307[v306[12]] = v305;
          sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
          swift_allocObject();
          sub_2186DFCB0(&qword_280EA1778, type metadata accessor for SubscriptionTodayFeedGroupEmitter, &unk_219CABBE0);
          v282 = sub_219BEDF94();
          (*(v295 + 8))(v816, v298);
          return v282;
        }
      }

      else
      {
        __break(1u);
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
LABEL_134:
        __break(1u);
      }

      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    case 0xCu:
      v323 = v758;
      v324 = *(v758 + 32);
      v325 = v826;
      v326 = v201;
      v327 = v759;
      v324(v826, v326, v759);
      v328 = v747;
      (*(v323 + 16))(v747, v325, v327);
      v329 = v749;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_suggestionKnobs, v749, type metadata accessor for SuggestionTodayFeedGroupKnobs);
      v330 = v852;
      sub_218718690(v852 + 96, v876);
      sub_218718690(v330 + 288, &v874);
      sub_218718690(v330 + 176, &v872);
      v331 = *(v330 + 216);
      v851 = *(v330 + 416);
      sub_218718690(v330 + 792, &v869);
      type metadata accessor for SuggestionTodayFeedGroupEmitter(0);
      v332 = swift_allocObject();
      v333 = (v332 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_name);
      *v333 = 0x6974736567677553;
      v333[1] = 0xEA00000000006E6FLL;
      v324((v332 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_config), v328, v327);
      sub_2190A6BCC(v329, v332 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_knobs, type metadata accessor for SuggestionTodayFeedGroupKnobs);
      sub_2186CB1F0(v876, v332 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_formatService);
      sub_2186CB1F0(&v874, v332 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_tagService);
      sub_2186CB1F0(&v872, v332 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_headlineService);
      *(v332 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_feedPersonalizer) = v331;
      *(v332 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_suggestionClusteringService) = v851;
      sub_2186CB1F0(&v869, v332 + OBJC_IVAR____TtC7NewsUI231SuggestionTodayFeedGroupEmitter_sportsGraphManager);
      *&v876[0] = v332;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&qword_280EA7A30, type metadata accessor for SuggestionTodayFeedGroupEmitter, &unk_219C94C70);
      swift_unknownObjectRetain();

      v282 = sub_219BEDF94();
      (*(v323 + 8))(v826, v327);
      return v282;
    case 0xDu:
      v377 = v756;
      v489 = *(v756 + 32);
      v379 = v754;
      v380 = v757;
      v489(v754, v201, v757);
      v490 = v748;
      (*(v377 + 16))(v748, v379, v380);
      v491 = v750;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_seenContentMarkKnobs, v750, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
      sub_218718690(v852 + 96, v876);
      type metadata accessor for SeenContentMarkTodayFeedGroupEmitter(0);
      v492 = swift_allocObject();
      v489((v492 + OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_config), v490, v380);
      sub_2190A6BCC(v491, v492 + OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_knobs, type metadata accessor for SeenContentMarkTodayFeedGroupKnobs);
      sub_2186CB1F0(v876, v492 + OBJC_IVAR____TtC7NewsUI236SeenContentMarkTodayFeedGroupEmitter_formatService);
      *&v876[0] = v492;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      v384 = &unk_280E9A8F8;
      v385 = type metadata accessor for SeenContentMarkTodayFeedGroupEmitter;
      v386 = &unk_219C9C320;
      goto LABEL_45;
    case 0xEu:
      v283 = v764;
      v284 = *(v764 + 32);
      v285 = v829;
      v286 = v201;
      v287 = v765;
      v284(v829, v286, v765);
      v288 = v755;
      (*(v283 + 16))(v755, v285, v287);
      v289 = v761;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_sharedWithYouKnobs, v761, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
      v290 = v852;
      sub_218718690(v852 + 96, v876);
      v291 = *(v290 + 280);
      sub_218718690(v290 + 176, &v874);
      sub_218718690(v290 + 608, &v872);
      type metadata accessor for SharedWithYouTodayFeedGroupEmitter(0);
      v292 = swift_allocObject();
      v293 = v292 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_name;
      strcpy((v292 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_name), "SharedWithYou");
      *(v293 + 14) = -4864;
      v284((v292 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_config), v288, v287);
      sub_2190A6BCC(v289, v292 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_knobs, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
      sub_2186CB1F0(v876, v292 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_formatService);
      *(v292 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_cloudContext) = v291;
      sub_2186CB1F0(&v874, v292 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_headlineService);
      sub_2186CB1F0(&v872, v292 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_sharedItemManager);
      *&v876[0] = v292;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&qword_280E9EF70, type metadata accessor for SharedWithYouTodayFeedGroupEmitter, &unk_219C57268);
      v294 = v291;
      v282 = sub_219BEDF94();
      (*(v283 + 8))(v829, v287);
      return v282;
    case 0xFu:
      v377 = v766;
      v378 = *(v766 + 32);
      v379 = v763;
      v380 = v767;
      v378(v763, v201, v767);
      v381 = v760;
      (*(v377 + 16))(v760, v379, v380);
      v382 = v762;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_engagementKnobs, v762, type metadata accessor for EngagementTodayFeedGroupKnobs);
      sub_218718690(v852 + 512, v876);
      type metadata accessor for EngagementTodayFeedGroupEmitter(0);
      v383 = swift_allocObject();
      v378((v383 + OBJC_IVAR____TtC7NewsUI231EngagementTodayFeedGroupEmitter_config), v381, v380);
      sub_2190A6BCC(v382, v383 + OBJC_IVAR____TtC7NewsUI231EngagementTodayFeedGroupEmitter_knobs, type metadata accessor for EngagementTodayFeedGroupKnobs);
      sub_2186CB1F0(v876, v383 + OBJC_IVAR____TtC7NewsUI231EngagementTodayFeedGroupEmitter_engagementInlineViewManager);
      *&v876[0] = v383;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      v384 = &unk_280EA9678;
      v385 = type metadata accessor for EngagementTodayFeedGroupEmitter;
      v386 = &unk_219C7FE08;
LABEL_45:
      sub_2186DFCB0(v384, v385, v386);
LABEL_46:
      v282 = sub_219BEDF94();
      (*(v377 + 8))(v379, v380);
      return v282;
    case 0x10u:
      v217 = v838;
      v218 = *(v838 + 32);
      v848 = (v838 + 32);
      v849 = v218;
      v219 = v836;
      v220 = v839;
      v218(v836, v201, v839);
      (*(v217 + 16))(v833, v219, v220);
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_mySportsKnobs, v834, type metadata accessor for MySportsTodayFeedGroupKnobs);
      v221 = v852;
      v846 = *(v852 + 224);
      sub_218718690(v852 + 96, v876);
      v847 = *(v221 + 648);
      sub_218718690(v221 + 672, &v874);
      sub_218718690(v221 + 848, &v872);
      sub_218718690(v221 + 328, &v869);
      sub_218718690(v221 + 712, &v866);
      v843 = *(v221 + 832);
      v844 = *(v221 + 840);
      sub_218718690(v221 + 752, v865);
      v845 = *(v221 + 280);
      v852 = *(v221 + 968);
      v222 = __swift_mutable_project_boxed_opaque_existential_1(&v874, v875);
      v851 = &v684;
      v223 = MEMORY[0x28223BE20](v222);
      v225 = (&v684 - ((v224 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v226 + 16))(v225, v223);
      v227 = __swift_mutable_project_boxed_opaque_existential_1(&v872, v873);
      v850 = &v684;
      v228 = MEMORY[0x28223BE20](v227);
      v230 = (&v684 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v231 + 16))(v230, v228);
      v232 = __swift_mutable_project_boxed_opaque_existential_1(&v869, v870);
      v842 = &v684;
      v233 = MEMORY[0x28223BE20](v232);
      v235 = (&v684 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v236 + 16))(v235, v233);
      v237 = __swift_mutable_project_boxed_opaque_existential_1(&v866, v867);
      v841 = &v684;
      v238 = MEMORY[0x28223BE20](v237);
      v240 = (&v684 - ((v239 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v241 + 16))(v240, v238);
      v242 = *v225;
      v243 = *v230;
      v244 = *v235;
      v245 = *v240;
      v246 = type metadata accessor for SportsFavoritesService();
      v864 = &off_282A62438;
      v863 = v246;
      *&v862 = v242;
      v832 = type metadata accessor for MySportsTagService();
      v861 = &off_282A97430;
      v860 = v832;
      v859[0] = v243;
      v247 = type metadata accessor for TagHighlightsService();
      v858 = &off_282A90268;
      v857 = v247;
      v856[0] = v244;
      v248 = type metadata accessor for SportsRecommendationManager();
      v855 = &off_282A790B8;
      v854 = v248;
      v853[0] = v245;
      v840 = type metadata accessor for MySportsTodayFeedGroupEmitter(0);
      v249 = swift_allocObject();
      v250 = __swift_mutable_project_boxed_opaque_existential_1(&v862, v246);
      v837 = &v684;
      v251 = MEMORY[0x28223BE20](v250);
      v253 = (&v684 - ((v252 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v254 + 16))(v253, v251);
      v255 = __swift_mutable_project_boxed_opaque_existential_1(v859, v860);
      v835 = &v684;
      v256 = MEMORY[0x28223BE20](v255);
      v258 = (&v684 - ((v257 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v259 + 16))(v258, v256);
      v260 = __swift_mutable_project_boxed_opaque_existential_1(v856, v857);
      v831 = &v684;
      v261 = MEMORY[0x28223BE20](v260);
      v263 = (&v684 - ((v262 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v264 + 16))(v263, v261);
      v265 = __swift_mutable_project_boxed_opaque_existential_1(v853, v854);
      v830 = &v684;
      v266 = MEMORY[0x28223BE20](v265);
      v268 = (&v684 - ((v267 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v269 + 16))(v268, v266);
      v270 = *v253;
      v271 = *v258;
      v272 = *v263;
      v273 = *v268;
      v274 = (v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsFavoritesService);
      v274[3] = v246;
      v274[4] = &off_282A62438;
      *v274 = v270;
      v275 = (v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_mySportsTagService);
      v275[3] = v832;
      v275[4] = &off_282A97430;
      *v275 = v271;
      v276 = (v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_tagHighlightsService);
      v276[3] = v247;
      v276[4] = &off_282A90268;
      *v276 = v272;
      v277 = (v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_recommendationManager);
      v277[3] = v248;
      v277[4] = &off_282A790B8;
      *v277 = v273;
      v278 = (v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_name);
      *v278 = 0x74726F705320794DLL;
      v278[1] = 0xE900000000000073;
      v279 = v839;
      v849(v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_config, v833, v839);
      sub_2190A6BCC(v834, v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_knobs, type metadata accessor for MySportsTodayFeedGroupKnobs);
      *(v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_featureAvailability) = v846;
      sub_2186CB1F0(v876, v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_formatService);
      *(v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsTopicClusteringService) = v847;
      *(v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsSectionService) = v843;
      *(v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsScoreSorter) = v844;
      sub_2186CB1F0(v865, v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsOnboardingManager);
      v280 = v845;
      *(v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_cloudContext) = v845;
      *(v249 + OBJC_IVAR____TtC7NewsUI229MySportsTodayFeedGroupEmitter_sportsConfiguringDataService) = v852;
      swift_unknownObjectRetain();

      v281 = v280;
      swift_unknownObjectRetain();
      __swift_destroy_boxed_opaque_existential_1(v853);
      __swift_destroy_boxed_opaque_existential_1(v856);
      __swift_destroy_boxed_opaque_existential_1(v859);
      __swift_destroy_boxed_opaque_existential_1(&v862);
      __swift_destroy_boxed_opaque_existential_1(&v866);
      __swift_destroy_boxed_opaque_existential_1(&v869);
      __swift_destroy_boxed_opaque_existential_1(&v872);
      __swift_destroy_boxed_opaque_existential_1(&v874);
      *&v876[0] = v249;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&qword_280EAFD20, type metadata accessor for MySportsTodayFeedGroupEmitter, &unk_219CB6FC0);
      v282 = sub_219BEDF94();
      (*(v838 + 8))(v836, v279);
      return v282;
    case 0x11u:
      v432 = v769;
      v433 = v830;
      v434 = v831;
      (*(v769 + 32))(v830, v201, v831);
      v435 = v770;
      (*(v432 + 16))(v770, v433, v434);
      v436 = v774;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_introToSportsKnobs, &v435[*(v774 + 20)], type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
      v437 = v852;
      sub_218718690(v852 + 96, &v435[v436[6]]);
      v438 = *(v437 + 648);
      v439 = *(v437 + 832);
      v440 = *(v437 + 840);
      sub_218718690(v437 + 848, &v435[v436[10]]);
      v441 = *(v437 + 280);
      v442 = &v435[v436[13]];
      *v442 = 0x6F54206F72746E49;
      *(v442 + 1) = 0xEF7374726F705320;
      *&v435[v436[7]] = v438;
      *&v435[v436[8]] = v439;
      *&v435[v436[9]] = v440;
      *&v435[v436[11]] = v441;
      v443 = v436[12];
      v852 = *(v437 + 968);
      *&v435[v443] = v852;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_280EA03E8, type metadata accessor for IntroToSportsTodayFeedGroupEmitter, &unk_219CA5BF8);

      v444 = v441;
      swift_unknownObjectRetain();
      v282 = sub_219BEDF94();
      (*(v432 + 8))(v830, v831);
      return v282;
    case 0x12u:
      v445 = v771;
      v446 = v768;
      v447 = v773;
      (*(v771 + 32))(v768, v201, v773);
      v508 = v772;
      (*(v445 + 16))(v772, v446, v447);
      v509 = v775;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_shortcutsKnobs, &v508[*(v775 + 20)], type metadata accessor for ShortcutsTodayFeedGroupKnobs);
      sub_218718690(v852 + 96, &v508[*(v509 + 24)]);
      v510 = &v508[*(v509 + 28)];
      *v510 = 0x74756374726F6853;
      *(v510 + 1) = 0xE900000000000073;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      v451 = &unk_280EAB310;
      v452 = type metadata accessor for ShortcutsTodayFeedGroupEmitter;
      v453 = &unk_219C39450;
      goto LABEL_43;
    case 0x13u:
      v542 = v784;
      v543 = v832;
      v544 = v201;
      v396 = v785;
      (*(v784 + 32))(v832, v544, v785);
      v545 = *(v542 + 16);
      v546 = v776;
      v545(v776, v543, v396);
      v547 = v777;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_channelKnobs, v777, type metadata accessor for ChannelTodayFeedGroupKnobs);
      v548 = v852;
      sub_218718690(v852 + 96, v876);
      sub_218718690(v548 + 240, &v874);
      v549 = [*(v548 + 280) appConfigurationManager];
      type metadata accessor for ChannelTodayFeedGroupEmitter(0);
      v550 = swift_allocObject();
      v551 = (v550 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_name);
      *v551 = 0x6C656E6E616843;
      v551[1] = 0xE700000000000000;
      v545((v550 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_config), v546, v396);
      sub_21971BEF4(v549, v547, v550 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_knobs);
      sub_2190A6A44(v547, type metadata accessor for ChannelTodayFeedGroupKnobs);
      v404 = *(v542 + 8);
      v404(v546, v396);
      sub_2186CB1F0(v876, v550 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_formatService);
      sub_2186CB1F0(&v874, v550 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_personalizationService);
      *(v550 + OBJC_IVAR____TtC7NewsUI228ChannelTodayFeedGroupEmitter_configurationManager) = v549;
      *&v876[0] = v550;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_280EB5008, type metadata accessor for ChannelTodayFeedGroupEmitter, &unk_219C9F5D0);
      v282 = sub_219BEDF94();
      v405 = v832;
LABEL_50:
      v404(v405, v396);
      return v282;
    case 0x14u:
      v445 = v779;
      v446 = v778;
      v447 = v781;
      (*(v779 + 32))(v778, v201, v781);
      v448 = v780;
      (*(v445 + 16))(v780, v446, v447);
      v449 = v782;
      sub_2190A68D8(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_savedStoriesKnobs, &v448[*(v782 + 20)], type metadata accessor for SavedStoriesTodayFeedGroupKnobs);
      sub_218718690(v852 + 96, &v448[*(v449 + 24)]);
      v450 = &v448[*(v449 + 28)];
      strcpy(v450, "SavedStories");
      v450[13] = 0;
      *(v450 + 7) = -5120;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      v451 = &unk_280EA2070;
      v452 = type metadata accessor for SavedStoriesTodayFeedGroupEmitter;
      v453 = &unk_219C622A8;
LABEL_43:
      sub_2186DFCB0(v451, v452, v453);
      v282 = sub_219BEDF94();
      (*(v445 + 8))(v446, v447);
      return v282;
    case 0x15u:
      v468 = v809;
      (*(v809 + 32))(v841, v201, v842);
      v469 = *(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_channelPickerKnobs);
      v470 = v783;
      sub_219BEDD14();
      v471 = *(v470 + 16);
      v472 = *(v470 + 24);

      sub_2190A6A44(v470, type metadata accessor for ChannelPickerTodayFeedGroupConfigData);
      if (*(v469 + 16))
      {
        v473 = sub_21870F700(v471, v472);
        v475 = v474;

        v476 = v791;
        v477 = v828;
        v478 = v827;
        v479 = v843;
        v480 = v710;
        if (v475)
        {
          v481 = *(v469 + 56);
          v482 = v806;
          v483 = v481 + *(v806 + 72) * v473;
          v484 = v808;
          sub_2190A68D8(v483, v808, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
          (*(v482 + 56))(v484, 0, 1, v807);
          v485 = v790;
          sub_2190A6BCC(v484, v790, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
          v486 = v852;
          v487 = v792;
          v488 = v841;
          goto LABEL_75;
        }
      }

      else
      {

        v476 = v791;
        v477 = v828;
        v478 = v827;
        v479 = v843;
        v480 = v710;
      }

      (*(v806 + 56))(v808, 1, 1, v807);
      v581 = v810;
      v582 = v796;
      v583 = v795;
      (*(v810 + 56))(v796, 1, 1, v795);
      (*(v478 + 56))(v479, 1, 1, v477);
      sub_2190A6AA4(v582, v480, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      v584 = *(v581 + 48);
      if (v584(v480, 1, v583) == 1)
      {
        type metadata accessor for TodayFeedServiceConfig(0);
        sub_2186DFCB0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
        v581 = v810;
        v585 = v480;
        v586 = v699;
        sub_219BEE974();
        v587 = v586;
        if (v584(v585, 1, v583) != 1)
        {
          sub_2190A6B14(v585, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
        }
      }

      else
      {
        v587 = v699;
        (*(v581 + 32))(v699, v480, v583);
      }

      (*(v581 + 32))(v797, v587, v583);
      v588 = v793;
      sub_2190A6AA4(v843, v793, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      v589 = *(v478 + 48);
      v590 = v589(v588, 1, v477);
      v487 = v792;
      v488 = v841;
      if (v590 == 1)
      {
        type metadata accessor for TodayFeedServiceConfig(0);
        sub_2186DFCB0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
        v591 = v700;
        v592 = v793;
        sub_219BEEC74();
        v593 = v589(v592, 1, v477);
        v594 = v591;
        v595 = v477;
        v468 = v809;
        if (v593 != 1)
        {
          sub_2190A6B14(v592, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
          v595 = v477;
        }
      }

      else
      {
        v594 = v700;
        (*(v478 + 32))(v700, v588, v477);
        v595 = v477;
        v468 = v809;
      }

      v596 = v807;
      v597 = *(v478 + 32);
      v598 = v797;
      v597(&v797[*(v807 + 20)], v594, v595);
      *&v876[0] = 1;
      sub_2186F9548();
      swift_allocObject();
      *(v598 + *(v596 + 24)) = sub_219BEF534();
      *&v876[0] = 6;
      swift_allocObject();
      v599 = sub_219BEF534();
      sub_2190A6B14(v843, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      sub_2190A6B14(v796, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      *(v598 + *(v596 + 28)) = v599;
      v485 = v790;
      sub_2190A6BCC(v598, v790, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      v600 = v808;
      v601 = (*(v806 + 48))(v808, 1, v596);
      v486 = v852;
      if (v601 != 1)
      {
        sub_2190A6B70(v600, qword_280E97668, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      }

LABEL_75:
      v602 = v842;
      (*(v468 + 16))(v476, v488, v842);
      sub_2190A68D8(v485, &v476[v487[5]], type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      sub_218718690(v486 + 96, &v476[v487[6]]);
      sub_218718690(v486 + 1064, &v476[v487[7]]);
      sub_218718690(v486 + 1104, &v476[v487[8]]);
      sub_218718690(v486 + 288, &v476[v487[9]]);
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_27CC15A38, type metadata accessor for ChannelPickerTodayFeedGroupEmitter, &unk_219C36888);
      v282 = sub_219BEDF94();
      sub_2190A6A44(v485, type metadata accessor for ChannelPickerTodayFeedGroupSubtypeKnobs);
      (*(v468 + 8))(v488, v602);
      return v282;
    case 0x16u:
      v525 = v787;
      v526 = v837;
      v527 = v840;
      (*(v787 + 32))(v837, v201, v840);
      v528 = OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_foodKnobs;
      v529 = *(v525 + 16);
      v530 = v835;
      v529(v835, v526, v527);
      v531 = v786;
      sub_2190A68D8(v850 + v528, v786, type metadata accessor for FoodTodayFeedGroupKnobs);
      v532 = v852;
      sub_218718690(v852 + 96, v876);
      sub_218718690(v532 + 1144, &v874);
      sub_218718690(v532 + 1184, &v872);
      v533 = *(v532 + 368);
      sub_218718690(v532 + 376, &v869);
      sub_218718690(v532 + 288, &v866);
      sub_218718690(v532 + 1224, v865);
      v534 = v789;
      v535 = v788;
      v536 = &v788[*(v789 + 56)];
      *v536 = 1685024582;
      *(v536 + 1) = 0xE400000000000000;
      v537 = v530;
      v538 = v840;
      v529(v535, v537, v840);
      sub_2190A68D8(v531, &v535[v534[5]], type metadata accessor for FoodTodayFeedGroupKnobs);
      sub_218718690(v876, &v535[v534[6]]);
      sub_218718690(&v874, &v535[v534[7]]);
      sub_218718690(&v872, &v535[v534[8]]);
      *&v535[v534[9]] = v533;
      sub_218718690(&v869, &v535[v534[10]]);
      sub_218718690(&v866, &v535[v534[11]]);
      sub_218718690(v865, &v535[v534[12]]);
      sub_2190A6940(0);
      sub_218718690(&v874, &v862);
      v539 = swift_allocObject();
      sub_2186CB1F0(&v862, v539 + 16);

      v540 = MEMORY[0x21CEB8A80](&unk_219C5A4D0, v539);
      __swift_destroy_boxed_opaque_existential_1(v865);
      __swift_destroy_boxed_opaque_existential_1(&v866);
      __swift_destroy_boxed_opaque_existential_1(&v869);
      __swift_destroy_boxed_opaque_existential_1(&v872);
      __swift_destroy_boxed_opaque_existential_1(&v874);
      __swift_destroy_boxed_opaque_existential_1(v876);
      sub_2190A6A44(v531, type metadata accessor for FoodTodayFeedGroupKnobs);
      v541 = *(v525 + 8);
      v541(v835, v538);
      *&v535[v534[13]] = v540;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&qword_280EBE8B8, type metadata accessor for FoodTodayFeedGroupEmitter, &unk_219C96D30);
      v282 = sub_219BEDF94();
      v541(v837, v538);
      return v282;
    default:
      v202 = v849;
      (*(v844 + 32))(v848, v201, v849);
      v203 = *(v850 + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_curatedKnobs);
      v204 = sub_219BEDCA4();
      if (*(v203 + 16))
      {
        v206 = sub_21870F700(v204, v205);
        v208 = v207;

        v209 = v828;
        v210 = v827;
        if (v208)
        {
          v211 = *(v203 + 56);
          v212 = v804;
          v213 = v211 + v804[9] * v206;
          v214 = v805;
          sub_2190A68D8(v213, v805, type metadata accessor for CuratedTodayFeedGroupKnobs);
          (v212[7])(v214, 0, 1, v846);
          sub_2190A6BCC(v214, v845, type metadata accessor for CuratedTodayFeedGroupKnobs);
          v215 = v852;
          v216 = v824;
          goto LABEL_90;
        }
      }

      else
      {

        v209 = v828;
        v210 = v827;
      }

      v570 = v804[7];
      v570(v805, 1, 1, v846);
      v571 = v698;
      sub_219BEDD14();
      v572 = *v571;
      v573 = v571[1];

      sub_2190A6A44(v571, type metadata accessor for CuratedTodayFeedGroupConfigData);
      if (*(v203 + 16))
      {
        v574 = sub_21870F700(v572, v573);
        v576 = v575;

        if (v576)
        {
          v577 = v804;
          v578 = *(v203 + 56) + v804[9] * v574;
          v579 = v794;
          sub_2190A68D8(v578, v794, type metadata accessor for CuratedTodayFeedGroupKnobs);
          v570(v579, 0, 1, v846);
          sub_2190A6BCC(v579, v845, type metadata accessor for CuratedTodayFeedGroupKnobs);
          v580 = v577[6];
          v215 = v852;
          v202 = v849;
          goto LABEL_88;
        }
      }

      else
      {
      }

      v570(v794, 1, 1, v846);
      v603 = v810;
      v604 = v704;
      v605 = v795;
      (*(v810 + 56))(v704, 1, 1, v795);
      (*(v210 + 56))(v798, 1, 1, v209);
      v606 = sub_219BEF814();
      (*(*(v606 - 8) + 56))(v705, 1, 1, v606);
      v607 = v684;
      sub_2190A6AA4(v604, v684, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      v608 = *(v603 + 48);
      if (v608(v607, 1, v605) == 1)
      {
        type metadata accessor for TodayFeedServiceConfig(0);
        sub_2186DFCB0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
        v603 = v810;
        v609 = v685;
        sub_219BEE974();
        v610 = v608(v607, 1, v605);
        v202 = v849;
        if (v610 != 1)
        {
          sub_2190A6B14(v607, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
        }
      }

      else
      {
        v609 = v685;
        (*(v603 + 32))(v685, v607, v605);
        v202 = v849;
      }

      v611 = v703;
      (*(v603 + 32))(v703, v609, v605);
      *&v876[0] = 1;
      sub_2186F9548();
      swift_allocObject();
      v612 = sub_219BEF534();
      v613 = v846;
      *&v611[*(v846 + 20)] = v612;
      *&v876[0] = 0x7FFFFFFFFFFFFFFFLL;
      swift_allocObject();
      *&v611[v613[6]] = sub_219BEF534();
      LOBYTE(v876[0]) = 1;
      sub_2186F95C4();
      swift_allocObject();
      *&v611[v613[7]] = sub_219BEF534();
      *&v876[0] = 0;
      sub_2186ECA28();
      swift_allocObject();
      *&v611[v613[8]] = sub_219BEF534();
      v614 = v686;
      sub_2190A6AA4(v798, v686, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      v615 = *(v210 + 48);
      if (v615(v614, 1, v209) == 1)
      {
        type metadata accessor for TodayFeedServiceConfig(0);
        sub_2186DFCB0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
        v616 = v687;
        sub_219BEEC74();
        if (v615(v614, 1, v209) != 1)
        {
          sub_2190A6B14(v614, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
        }
      }

      else
      {
        v616 = v687;
        (*(v210 + 32))(v687, v614, v209);
      }

      v617 = v846;
      v618 = v703;
      (*(v210 + 32))(&v703[*(v846 + 36)], v616, v209);
      v619 = v705;
      sub_2189B7614(v705, v618 + *(v617 + 40));
      LOBYTE(v876[0]) = 1;
      swift_allocObject();
      v620 = sub_219BEF534();
      sub_2190A6B70(v619, &qword_280E912E0, MEMORY[0x277D32720]);
      sub_2190A6B14(v798, &unk_280E91850, &qword_280E91860, MEMORY[0x277D32318]);
      sub_2190A6B14(v704, &unk_280E91A10, &qword_280E91A20, MEMORY[0x277D321A0]);
      *(v618 + *(v617 + 44)) = v620;
      sub_2190A6BCC(v618, v845, type metadata accessor for CuratedTodayFeedGroupKnobs);
      v580 = v804[6];
      v621 = v794;
      if (v580(v794, 1, v617) != 1)
      {
        sub_2190A6B70(v621, qword_280EBBA10, type metadata accessor for CuratedTodayFeedGroupKnobs);
      }

      v215 = v852;
LABEL_88:
      v216 = v824;
      v622 = v805;
      if (v580(v805, 1, v846) != 1)
      {
        sub_2190A6B70(v622, qword_280EBBA10, type metadata accessor for CuratedTodayFeedGroupKnobs);
      }

LABEL_90:
      v623 = *(v844 + 16);
      v623(v216, v848, v202);
      v624 = v825;
      sub_2190A68D8(v845, v825, type metadata accessor for CuratedTodayFeedGroupKnobs);
      sub_218718690((v215 + 12), v876);
      v846 = v215[74];
      v847 = v215[75];
      sub_218718690((v215 + 69), &v874);
      v850 = v215[28];
      sub_218718690((v215 + 123), &v872);
      v625 = __swift_mutable_project_boxed_opaque_existential_1(&v874, v875);
      *&v852 = &v684;
      v626 = MEMORY[0x28223BE20](v625);
      v628 = (&v684 - ((v627 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v629 + 16))(v628, v626);
      v630 = *v628;
      v631 = type metadata accessor for TodayFeedEngagementEventHandler();
      v870 = v631;
      v871 = &off_282A6F2F0;
      *&v869 = v630;
      type metadata accessor for CuratedTodayFeedGroupEmitter(0);
      v632 = swift_allocObject();
      v633 = __swift_mutable_project_boxed_opaque_existential_1(&v869, v631);
      v851 = &v684;
      v634 = MEMORY[0x28223BE20](v633);
      v636 = (&v684 - ((v635 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v637 + 16))(v636, v634);
      v638 = *v636;
      v868 = &off_282A6F2F0;
      v867 = v631;
      v639 = v824;
      *&v866 = v638;
      v623((v632 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_config), v824, v849);
      v640 = v849;
      sub_2190A68D8(v624, v632 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_knobs, type metadata accessor for CuratedTodayFeedGroupKnobs);
      sub_218718690(v876, v632 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_formatService);
      sub_218718690(&v866, v632 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_todayFeedEngagementEventHandler);
      *(v632 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_featureAvailability) = v850;
      sub_218718690(&v872, v632 + OBJC_IVAR____TtC7NewsUI228CuratedTodayFeedGroupEmitter_puzzleHistoryService);
      swift_unknownObjectRetain();
      v641 = v752;
      sub_219BEDD14();
      if (*v641 == 0x69726F7453706F74 && v641[1] == 0xEA00000000007365)
      {
        sub_2190A6A44(v641, type metadata accessor for CuratedTodayFeedGroupConfigData);
      }

      else
      {
        v642 = sub_219BF78F4();
        sub_2190A6A44(v641, type metadata accessor for CuratedTodayFeedGroupConfigData);
        if ((v642 & 1) == 0)
        {
          goto LABEL_95;
        }
      }

      swift_getObjectType();
      v643 = v701;
      sub_219BEDD14();
      sub_2190A6A44(v643, type metadata accessor for CuratedTodayFeedGroupConfigData);
      sub_219BE3954();
LABEL_95:
      __swift_destroy_boxed_opaque_existential_1(&v872);
      __swift_destroy_boxed_opaque_existential_1(v876);
      sub_2190A6A44(v825, type metadata accessor for CuratedTodayFeedGroupKnobs);
      v644 = *(v844 + 8);
      v644(v639, v640);
      __swift_destroy_boxed_opaque_existential_1(&v866);
      __swift_destroy_boxed_opaque_existential_1(&v869);
      __swift_destroy_boxed_opaque_existential_1(&v874);
      *&v876[0] = v632;
      sub_2190A6790(0, &qword_280E91DD0, MEMORY[0x277D31F00]);
      swift_allocObject();
      sub_2186DFCB0(&unk_280EB4A40, type metadata accessor for CuratedTodayFeedGroupEmitter, &unk_219C7CFB8);
      v282 = sub_219BEDF94();
      sub_2190A6A44(v845, type metadata accessor for CuratedTodayFeedGroupKnobs);
      v644(v848, v640);
      return v282;
  }
}

void sub_2190A6714(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_219BEDD94();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2190A6790(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig(255);
    v7 = sub_2186DFCB0(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_2190A682C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2190A6790(255, a3, a4);
    v5 = sub_219BF6FB4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2190A6884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2190A68D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2190A6940(uint64_t a1)
{
  if (!qword_280EE7E30)
  {
    sub_218A450F0();
    v1 = sub_219BE1CF4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7E30);
    }
  }
}

uint64_t sub_2190A69A8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_219667628(a1, v1 + 16);
}

uint64_t sub_2190A6A44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2190A6AA4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_2190A682C(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_2190A6B14(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  sub_2190A682C(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2190A6B70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2190A6884(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2190A6BCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190A6C4C(uint64_t a1)
{
  v2 = sub_2190A7148();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_2190A6C88(uint64_t a1)
{
  v2 = sub_2190A6CCC();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_2190A6CCC()
{
  result = qword_27CC15A60;
  if (!qword_27CC15A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15A60);
  }

  return result;
}

uint64_t sub_2190A6D20(uint64_t a1)
{
  v2 = type metadata accessor for ChannelIssuesLayoutSectionDescriptor.Header(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v20 = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v20);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v24 = MEMORY[0x277D84F90];
    sub_218C34270(0, v11, 0);
    v12 = v24;
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_2190A7080(v13, v8, type metadata accessor for ChannelIssuesLayoutSectionDescriptor.Header);
      sub_2190A7080(v8, v5, type metadata accessor for ChannelIssuesLayoutSectionDescriptor.Header);
      sub_2190A6FC4(v5, v10);
      sub_2190A70E8(v8, type metadata accessor for ChannelIssuesLayoutSectionDescriptor.Header);
      v24 = v12;
      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_218C34270((v15 > 1), v16 + 1, 1);
        v12 = v24;
      }

      v22 = v20;
      v23 = sub_2190A7028();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
      sub_2190A7080(v10, boxed_opaque_existential_1, type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes);
      *(v12 + 16) = v16 + 1;
      sub_2186CB1F0(&v21, v12 + 40 * v16 + 32);
      sub_2190A70E8(v10, type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes);
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t type metadata accessor for ChannelIssuesLayoutSectionDescriptor.Header(uint64_t a1)
{
  result = qword_27CC15A78;
  if (!qword_27CC15A78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2190A6FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2190A7028()
{
  result = qword_27CC15A68;
  if (!qword_27CC15A68)
  {
    type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15A68);
  }

  return result;
}

uint64_t sub_2190A7080(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190A70E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2190A7148()
{
  result = qword_27CC15A70;
  if (!qword_27CC15A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15A70);
  }

  return result;
}

uint64_t sub_2190A719C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_2188C5558);
}

uint64_t sub_2190A71F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_2188C561C);
}

uint64_t sub_2190A725C(uint64_t a1)
{
  result = type metadata accessor for ChannelIssuesGroupTitleViewLayoutAttributes(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_2190A7300(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  sub_2190A9AE4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v42 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v44 = sub_219BDF3A4();
  v17 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v42 - v21;
  v23 = 0.0;
  if (!a1)
  {
    goto LABEL_11;
  }

  v24 = [a1 progressLevel];
  if (v24 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v24 > 0x7FFFFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v25 = [a1 lastPlayedDate];
  if (v25)
  {
    v26 = v25;
    sub_219BDBCA4();

    v27 = sub_219BDBD34();
    (*(*(v27 - 8) + 56))(v13, 0, 1, v27);
  }

  else
  {
    v27 = sub_219BDBD34();
    (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  }

  sub_218A5DD60(v13, v16);
  sub_219BDBD34();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v16, 1, v27) == 1)
  {
    sub_2190A9A2C(v16, &qword_280EE9C40, MEMORY[0x277CC9578]);
  }

  else
  {
    sub_219BDBC84();
    v30 = v29;
    (*(v28 + 8))(v16, v27);
    v23 = v30 * 1000.0;
  }

LABEL_11:
  if ((*&v23 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v23 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v23 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v31 = 0.0;
  if (a1)
  {
    v32 = [a1 completedDate];
    if (v32)
    {
      v33 = v32;
      sub_219BDBCA4();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v35 = sub_219BDBD34();
    v36 = *(v35 - 8);
    (*(v36 + 56))(v7, v34, 1, v35);
    sub_218A5DD60(v7, v10);
    if ((*(v36 + 48))(v10, 1, v35) == 1)
    {
      sub_2190A9A2C(v10, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }

    else
    {
      sub_219BDBC84();
      v38 = v37;
      (*(v36 + 8))(v10, v35);
      v31 = v38 * 1000.0;
    }
  }

  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_30;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v31 < 9.22337204e18)
  {
    sub_219BDF374();
    v39 = [v3 identifier];
    sub_219BF5414();

    v40 = [objc_msgSend(v3 puzzleType)];
    swift_unknownObjectRelease();
    sub_219BF5414();

    v41 = v44;
    (*(v17 + 16))(v43, v22, v44);
    [v3 isPaid];
    [v3 difficulty];
    sub_219BDEF74();
    (*(v17 + 8))(v22, v41);
    return;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_2190A7950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2190A9AE4(0, &qword_280EE5200, MEMORY[0x277D6D9B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_219BE7394();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v24 - v16;
  sub_2190A7CEC(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_2190A9A2C(v10, &qword_280EE5200, MEMORY[0x277D6D9B8]);
  }

  v27 = a3;
  v19 = *(v12 + 32);
  v19(v17, v10, v11);
  if (a2)
  {
    v20 = sub_219BE82D4();
    if (v20)
    {
      v26 = v20;
      sub_219BE7384();
      sub_2186D6710(0, &qword_280E8E680, &protocolRef_FCTagProviding);
      if (swift_dynamicCast())
      {

        swift_unknownObjectRelease();
      }

      else
      {
        sub_219BE7384();
        sub_2186C6148(0, &qword_280E8E560, 0x277D30FB0);
        if (swift_dynamicCast())
        {
        }

        else
        {
          (*(v12 + 16))(v14, v17, v11);
          sub_218718690(a4, v28);
          v21 = (*(v12 + 80) + 24) & ~*(v12 + 80);
          v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
          v25 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
          v23 = swift_allocObject();
          *(v23 + 16) = a2;
          v19((v23 + v21), v14, v11);
          *(v23 + v22) = v27;
          sub_2186CB1F0(v28, v23 + v25);

          sub_219BDD154();
        }
      }
    }
  }

  return (*(v12 + 8))(v17, v11);
}

uint64_t sub_2190A7CEC(uint64_t a1, uint64_t a2)
{
  sub_2190A9AE4(0, &qword_280EE5200, MEMORY[0x277D6D9B8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2190A7D80(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v131 = a5;
  v152 = a4;
  v160 = a3;
  v168 = a1;
  v125 = sub_219BDEFE4();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_219BDEF94();
  v133 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v132 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = sub_219BE1714();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v136 = &v122 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_219BE09E4();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_219BDF104();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v149 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2190A9AE4(0, &qword_280EE8330, MEMORY[0x277D2E738], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v146 = &v122 - v13;
  v148 = sub_219BE0724();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v139 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_219BE0D44();
  v144 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_219BDF0E4();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v140 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_219BDFE74();
  v158 = *(v159 - 1);
  MEMORY[0x28223BE20](v159);
  v157 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190A9AE4(0, &unk_27CC15A90, MEMORY[0x277D6E130], v11);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v122 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v122 - v22;
  v24 = sub_219BDF274();
  MEMORY[0x28223BE20](v24 - 8);
  v128 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v161 = sub_219BDEEB4();
  ObjectType = *(v161 - 1);
  MEMORY[0x28223BE20](v161);
  v129 = &v122 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v122 - v29;
  v135 = a2;
  v130 = v20;
  if (a2)
  {
    sub_219BE8304();
    v31 = sub_219BE89F4();
    (*(*(v31 - 8) + 56))(v23, 0, 1, v31);
  }

  else
  {
    v32 = sub_219BE89F4();
    (*(*(v32 - 8) + 56))(v23, 1, 1, v32);
  }

  sub_219BDF284();
  sub_219BDEEA4();
  sub_2190A9AE4(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v34 = v33;
  v35 = sub_219BDCD44();
  v171 = v35;
  v36 = *(v35 - 8);
  v169 = *(v36 + 72);
  v37 = *(v36 + 80);
  v38 = (v37 + 32) & ~v37;
  v39 = swift_allocObject();
  v172 = xmmword_219C09BA0;
  *(v39 + 16) = xmmword_219C09BA0;
  v40 = *MEMORY[0x277CEAD18];
  v41 = *(v36 + 104);
  v41(v39 + v38, v40, v35);
  v170 = "foodClusteringService";
  v42 = sub_2190A9A9C(&unk_27CC15AA0, MEMORY[0x277D2D740], MEMORY[0x277D2D738]);
  v43 = v161;
  v127 = v42;
  sub_219BDCCC4();

  v126 = ObjectType[1];
  ++ObjectType;
  v126(v30, v43);
  sub_219BF5414();
  v44 = v157;
  sub_219BDFE64();
  v167 = v34;
  v45 = swift_allocObject();
  *(v45 + 16) = v172;
  v156 = v38;
  LODWORD(v165) = v40;
  v166 = v41;
  v41(v45 + v38, v40, v171);
  sub_2190A9A9C(&qword_27CC1A3E0, MEMORY[0x277D2E1B8], MEMORY[0x277D2E1B0]);
  v46 = v159;
  sub_219BDCCC4();

  (*(v158 + 8))(v44, v46);
  sub_219BE7384();
  sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
  v47 = swift_dynamicCast();
  v164 = v37;
  v162 = v36 + 104;
  if (v47)
  {
    v48 = v165;
    v49 = v173;
    ObjectType = swift_getObjectType();
    v50 = v140;
    sub_219BF67F4();
    v51 = v156;
    v52 = swift_allocObject();
    *(v52 + 16) = v172;
    v166(v52 + v51, v48, v171);
    sub_2190A9A9C(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
    v53 = v142;
    sub_219BDCCC4();

    (*(v141 + 8))(v50, v53);
    v54 = v143;
    sub_219BF6834();
    v55 = swift_allocObject();
    *(v55 + 16) = v172;
    v56 = v48;
    v57 = v171;
    v166(v55 + v51, v56, v171);
    sub_2190A9A9C(&qword_280EE8190, MEMORY[0x277D2ECA0], MEMORY[0x277D2EC98]);
    v58 = v145;
    sub_219BDCCC4();

    (*(v144 + 8))(v54, v58);
    v59 = v146;
    ObjectType = v49;
    sub_219BF6824();
    v60 = v59;
    v61 = v147;
    v62 = v148;
    v63 = (*(v147 + 48))(v60, 1, v148);
    v64 = v166;
    if (v63 == 1)
    {
      sub_2190A9A2C(v60, &qword_280EE8330, MEMORY[0x277D2E738]);
    }

    else
    {
      v80 = v166;
      v81 = v139;
      (*(v61 + 32))(v139, v60, v62);
      v82 = swift_allocObject();
      *(v82 + 16) = v172;
      v80(v82 + v51, v165, v57);
      v64 = v80;
      sub_2190A9A9C(&unk_27CC0DC50, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
      sub_219BDCCC4();

      (*(v61 + 8))(v81, v62);
    }

    v83 = v165;
    v84 = [ObjectType sourceChannel];
    if (v84)
    {
      v85 = v149;
      v165 = v84;
      sub_219BE01F4();
      v86 = swift_allocObject();
      *(v86 + 16) = v172;
      v87 = v171;
      v64(v86 + v51, v83, v171);
      sub_2190A9A9C(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
      v88 = v151;
      sub_219BDCCC4();

      (*(v150 + 8))(v85, v88);
      v89 = v153;
      sub_219BE01E4();
      v90 = swift_allocObject();
      *(v90 + 16) = v172;
      v166(v90 + v51, v83, v87);
      sub_2190A9A9C(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
      v91 = v155;
      sub_219BDCCC4();
      swift_unknownObjectRelease();

      (*(v154 + 8))(v89, v91);
    }

    sub_219BDFF44();
    sub_2190A9A9C(&qword_280EE8508, MEMORY[0x277D2E250], MEMORY[0x277D2E238]);
    v174 = 0u;
    v175 = 0u;
    sub_219BDCCE4();
    goto LABEL_13;
  }

  sub_219BE7384();
  sub_2186C6148(0, &qword_280E8DAB0, 0x277D310B0);
  if (swift_dynamicCast())
  {
    v65 = v173;
    v66 = v136;
    ObjectType = v173;
    sub_21934C4BC();
    v67 = v156;
    v68 = swift_allocObject();
    *(v68 + 16) = v172;
    v166(v68 + v67, v165, v171);
    sub_2190A9A9C(&unk_280EE7F60, MEMORY[0x277D2F890], MEMORY[0x277D2F888]);
    v69 = v138;
    sub_219BDCCC4();

    (*(v137 + 8))(v66, v69);
    v70 = [v65 sourceChannel];
    v71 = v149;
    sub_219BE01F4();
    swift_unknownObjectRelease();
    v72 = swift_allocObject();
    *(v72 + 16) = v172;
    v73 = v166;
    v166(v72 + v67, v165, v171);
    sub_2190A9A9C(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v74 = v151;
    sub_219BDCCC4();

    (*(v150 + 8))(v71, v74);
    v75 = ObjectType;
    v76 = [ObjectType sourceChannel];
    v77 = v153;
    sub_219BE01E4();
    swift_unknownObjectRelease();
    v78 = swift_allocObject();
    *(v78 + 16) = v172;
    v73(v78 + v67, v165, v171);
    sub_2190A9A9C(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v79 = v155;
    sub_219BDCCC4();

    (*(v154 + 8))(v77, v79);
    sub_219BDF854();
    sub_2190A9A9C(&unk_27CC15AD0, MEMORY[0x277D2DDA8], MEMORY[0x277D2DDA0]);
    v174 = 0u;
    v175 = 0u;
    sub_219BDCCE4();

    return sub_218806FD0(&v174);
  }

  sub_219BE7384();
  sub_2186C6148(0, &qword_27CC15AB0, 0x277D31220);
  if (swift_dynamicCast())
  {
    v93 = v173;
    __swift_project_boxed_opaque_existential_1(v131, v131[3]);
    v94 = [v93 identifier];
    sub_219BF5414();

    v95 = sub_219BF3424();

    v96 = v132;
    v159 = v95;
    v160 = v93;
    sub_2190A7300(v95, v132);
    v97 = v156;
    v98 = swift_allocObject();
    *(v98 + 16) = v172;
    v99 = v171;
    v100 = v166;
    v166(v98 + v97, v165, v171);
    sub_2190A9A9C(&qword_280EE8910, MEMORY[0x277D2D788], MEMORY[0x277D2D780]);
    v101 = v134;
    sub_219BDCCC4();

    (*(v133 + 8))(v96, v101);
    if (v135)
    {
      v102 = v130;
      sub_219BE8304();
      v103 = 0;
    }

    else
    {
      v103 = 1;
      v102 = v130;
    }

    v118 = sub_219BE89F4();
    (*(*(v118 - 8) + 56))(v102, v103, 1, v118);
    sub_219BDF284();
    v119 = v129;
    sub_219BDEEA4();
    v120 = swift_allocObject();
    *(v120 + 16) = v172;
    v100(v120 + v97, v165, v99);
    v121 = v161;
    sub_219BDCCC4();

    v126(v119, v121);
    sub_219BDFE24();
    sub_2190A9A9C(&unk_27CC15AC0, MEMORY[0x277D2E188], MEMORY[0x277D2E180]);
    v174 = 0u;
    v175 = 0u;
    sub_219BDCCE4();

    return sub_218806FD0(&v174);
  }

  sub_219BE7384();
  sub_2186C6148(0, &qword_280E8DA30, 0x277D312A8);
  result = swift_dynamicCast();
  if (result)
  {
    v104 = v173;
    v105 = [v173 identifier];
    sub_219BF5414();

    ObjectType = v104;
    [v104 isPaid];
    v106 = [v104 totalTime];
    sub_219BF5414();

    v107 = v123;
    sub_219BDEFB4();
    v108 = v156;
    v109 = swift_allocObject();
    *(v109 + 16) = v172;
    v166(v109 + v108, v165, v171);
    sub_2190A9A9C(&qword_280EE8900, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
    v110 = v125;
    sub_219BDCCC4();

    (*(v124 + 8))(v107, v110);
    v161 = [ObjectType sourceChannel];
    v111 = v149;
    sub_219BE01F4();
    v112 = swift_allocObject();
    *(v112 + 16) = v172;
    v113 = v165;
    v166(v112 + v108, v165, v171);
    sub_2190A9A9C(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v114 = v151;
    sub_219BDCCC4();

    (*(v150 + 8))(v111, v114);
    v115 = v153;
    sub_219BE01E4();
    v116 = swift_allocObject();
    *(v116 + 16) = v172;
    v166(v116 + v108, v113, v171);
    sub_2190A9A9C(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v117 = v155;
    sub_219BDCCC4();

    (*(v154 + 8))(v115, v117);
    sub_219BDFE34();
    sub_2190A9A9C(&qword_27CC15AB8, MEMORY[0x277D2E198], MEMORY[0x277D2E190]);
    v174 = 0u;
    v175 = 0u;
    sub_219BDCCE4();

LABEL_13:
    swift_unknownObjectRelease();
    return sub_218806FD0(&v174);
  }

  return result;
}

uint64_t sub_2190A9980(uint64_t a1)
{
  v3 = *(sub_219BE7394() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + 16);

  return sub_2190A7D80(a1, v7, (v1 + v4), v6, (v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2190A9A2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2190A9AE4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2190A9A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2190A9AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2190A9B48()
{
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v17 = sub_2190AA0D4();
  if (v17)
  {
    v45 = v7;
    v18 = v17;
    v19 = [v17 quiescenceInterval];

    v20 = [*(v0 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_userInfo) appReviewRequestLastShownDate];
    if (v20)
    {
      v21 = v20;
      sub_219BDBCA4();

      v22 = *(v5 + 32);
      v22(v3, v13, v4);
      (*(v5 + 56))(v3, 0, 1, v4);
      v22(v16, v3, v4);
    }

    else
    {
      (*(v5 + 56))(v3, 1, 1, v4);
      sub_219BDBBB4();
      if ((*(v5 + 48))(v3, 1, v4) != 1)
      {
        sub_2190AB1F0(v3, sub_2186DCF58);
      }
    }

    v44 = v19;
    sub_219BDBBF4();
    sub_219BDBCB4();
    LODWORD(v27) = sub_219BDBC24();
    v28 = *(v5 + 8);
    v28(v10, v4);
    v28(v13, v4);
    v29 = v45;
    if (qword_27CC08578 != -1)
    {
      swift_once();
    }

    v30 = sub_219BE5434();
    __swift_project_value_buffer(v30, qword_27CCD8A38);
    (*(v5 + 16))(v29, v16, v4);
    v31 = sub_219BE5414();
    v32 = sub_219BF6214();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v43 = v27;
      v27 = v33;
      v42 = swift_slowAlloc();
      v46 = v42;
      *v27 = 67109634;
      *(v27 + 4) = v43 & 1;
      *(v27 + 8) = 2048;
      *(v27 + 10) = v44;
      *(v27 + 18) = 2080;
      sub_2190AB250(&qword_280EE9C60, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v34 = sub_219BF7894();
      v36 = v35;
      v28(v29, v4);
      v37 = sub_2186D1058(v34, v36, &v46);

      *(v27 + 20) = v37;
      _os_log_impl(&dword_2186C1000, v31, v32, "Checking quiescenceIntervalHasElapsed [%{BOOL}d]: quiescence interval [%lld]. Last App Review Request Date [%s]", v27, 0x1Cu);
      v38 = v42;
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x21CECF960](v38, -1, -1);
      v39 = v27;
      LOBYTE(v27) = v43;
      MEMORY[0x21CECF960](v39, -1, -1);
    }

    else
    {

      v28(v29, v4);
    }

    v28(v16, v4);
  }

  else
  {
    if (qword_27CC08578 != -1)
    {
      swift_once();
    }

    v23 = sub_219BE5434();
    __swift_project_value_buffer(v23, qword_27CCD8A38);
    v24 = sub_219BE5414();
    v25 = sub_219BF6214();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2186C1000, v24, v25, "Quiescence interval is null. Exiting.", v26, 2u);
      MEMORY[0x21CECF960](v26, -1, -1);
    }

    LOBYTE(v27) = 0;
  }

  return v27 & 1;
}

id sub_2190AA0D4()
{
  v1 = OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager____lazy_storage___appReviewRequestConfig;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager____lazy_storage___appReviewRequestConfig);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = [*(v0 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_configurationManager) possiblyUnfetchedAppConfiguration];
    if ([v4 respondsToSelector_])
    {
      v3 = [v4 appReviewRequestConfig];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v3 = 0;
    }

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_2190AAF44(v5);
  }

  sub_2190AB1E0(v2);
  return v3;
}

void sub_2190AA1A4(uint64_t a1)
{
  v2 = sub_219BE14C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = *(v3 + 16);
  v10(&v22 - v8, a1, v2, v7);
  v11 = (*(v3 + 88))(v9, v2);
  v12 = *MEMORY[0x277D2F310];
  v22 = *(v3 + 8);
  v22(v9, v2);
  if (v11 == v12)
  {
    sub_2190AA464();
  }

  else
  {
    if (qword_27CC08578 != -1)
    {
      swift_once();
    }

    v13 = sub_219BE5434();
    __swift_project_value_buffer(v13, qword_27CCD8A38);
    (v10)(v5, a1, v2);
    v14 = sub_219BE5414();
    v15 = sub_219BF6214();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = sub_219BE14B4();
      v20 = v19;
      v22(v5, v2);
      v21 = sub_2186D1058(v18, v20, &v23);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2186C1000, v14, v15, "Skipping feedType %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x21CECF960](v17, -1, -1);
      MEMORY[0x21CECF960](v16, -1, -1);
    }

    else
    {

      v22(v5, v2);
    }
  }
}

void sub_2190AA464()
{
  v1 = v0;
  if (qword_27CC08578 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_27CCD8A38);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "Determining if review prompt needs to be displayed", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  v6 = *(v1 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 24);
  v7 = *(v1 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store), v6);
  (*(v7 + 8))(v37, v6, v7);
  if (v38)
  {
    oslog = sub_219BE5414();
    v8 = sub_219BF6214();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "No stored state found. Skipping processing";
LABEL_21:
      _os_log_impl(&dword_2186C1000, oslog, v8, v10, v9, 2u);
      MEMORY[0x21CECF960](v9, -1, -1);
      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v11 = v37[0];
  v12 = v37[1];
  v14 = v37[2];
  v13 = v37[3];
  v15 = sub_2190AA0D4();
  if (v15)
  {
    oslog = v15;
    v16 = [v15 minNumberOfCombinedActions];
    v17 = [oslog minNumberOfLikedArticles];
    v35 = [oslog minNumberOfSavedArticles];
    v18 = [oslog minNumberOfSharedArticles];
    v19 = [oslog minNumberOfEndOfArticleReads];
    v20 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      __break(1u);
    }

    else
    {
      v21 = v20 + v14;
      if (!__OFADD__(v20, v14))
      {
        if (v21 < v16)
        {
          if (v12 >= v17)
          {
            v23 = sub_219BE5414();
            v29 = sub_219BF6214();
            if (!os_log_type_enabled(v23, v29))
            {
              goto LABEL_33;
            }

            v30 = swift_slowAlloc();
            *v30 = 134217984;
            *(v30 + 4) = v17;
            v31 = "Reached minNumberOfLikedArticles %ld";
          }

          else
          {
            if (v11 < v35)
            {
              v34 = v18;
              if (v14 < v18)
              {
                v22 = v19;
                v23 = sub_219BE5414();
                v33 = sub_219BF6214();
                v24 = os_log_type_enabled(v23, v33);
                if (v13 < v22)
                {
                  if (v24)
                  {
                    v25 = swift_slowAlloc();
                    *v25 = 134220288;
                    *(v25 + 4) = v11;
                    *(v25 + 12) = 2048;
                    *(v25 + 14) = v35;
                    *(v25 + 22) = 2048;
                    *(v25 + 24) = v12;
                    *(v25 + 32) = 2048;
                    *(v25 + 34) = v17;
                    *(v25 + 42) = 2048;
                    *(v25 + 44) = v21;
                    *(v25 + 52) = 2048;
                    *(v25 + 54) = v16;
                    *(v25 + 62) = 2048;
                    *(v25 + 64) = v14;
                    *(v25 + 72) = 2048;
                    *(v25 + 74) = v34;
                    *(v25 + 82) = 2048;
                    *(v25 + 84) = v13;
                    *(v25 + 92) = 2048;
                    *(v25 + 94) = v22;
                    _os_log_impl(&dword_2186C1000, v23, v33, "Skipping review prompt request. Threshold not reached: saved %ld/%ld, liked %ld/%ld, combined %ld/%ld, shared %ld/%ld, eoa %ld/%ld", v25, 0x66u);
                    MEMORY[0x21CECF960](v25, -1, -1);
                  }

                  goto LABEL_34;
                }

                if (!v24)
                {
                  goto LABEL_33;
                }

                v30 = swift_slowAlloc();
                *v30 = 134217984;
                *(v30 + 4) = v22;
                v31 = "Reached minNumberOfEndOfArticleReads %ld";
                v32 = v33;
                goto LABEL_31;
              }

              v23 = sub_219BE5414();
              v29 = sub_219BF6214();
              if (os_log_type_enabled(v23, v29))
              {
                v30 = swift_slowAlloc();
                *v30 = 134217984;
                *(v30 + 4) = v34;
                v31 = "Reached minNumberOfSharedArticles %ld";
                goto LABEL_30;
              }

LABEL_33:

              sub_2190AA9F8();
              goto LABEL_34;
            }

            v23 = sub_219BE5414();
            v29 = sub_219BF6214();
            if (!os_log_type_enabled(v23, v29))
            {
              goto LABEL_33;
            }

            v30 = swift_slowAlloc();
            *v30 = 134217984;
            *(v30 + 4) = v35;
            v31 = "Reached minNumberOfSavedArticles %ld";
          }

LABEL_30:
          v32 = v29;
LABEL_31:
          _os_log_impl(&dword_2186C1000, v23, v32, v31, v30, 0xCu);
          v28 = v30;
          goto LABEL_32;
        }

        v23 = sub_219BE5414();
        v26 = sub_219BF6214();
        if (os_log_type_enabled(v23, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 134217984;
          *(v27 + 4) = v16;
          _os_log_impl(&dword_2186C1000, v23, v26, "Reached minNumberOfCombinedActions %ld", v27, 0xCu);
          v28 = v27;
LABEL_32:
          MEMORY[0x21CECF960](v28, -1, -1);
          goto LABEL_33;
        }

        goto LABEL_33;
      }
    }

    __break(1u);
    return;
  }

  oslog = sub_219BE5414();
  v8 = sub_219BF6214();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "No appReviewRequestConfig found. Skipping processing";
    goto LABEL_21;
  }

LABEL_34:
}

void sub_2190AA9F8()
{
  v1 = v0;
  sub_2190AAF54();
  if (v2)
  {
    v3 = v2;
    if (qword_27CC08578 != -1)
    {
      swift_once();
    }

    v4 = sub_219BE5434();
    __swift_project_value_buffer(v4, qword_27CCD8A38);
    v5 = sub_219BE5414();
    v6 = sub_219BF6214();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2186C1000, v5, v6, "Requesting review prompt", v7, 2u);
      MEMORY[0x21CECF960](v7, -1, -1);
    }

    sub_219BDD154();
    v8 = *(v1 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_userInfo);
    sub_218718690(v1 + OBJC_IVAR____TtC7NewsUI223AppReviewRequestManager_store, v16);
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    sub_2186CB1F0(v16, v9 + 24);
    *(v9 + 64) = v3;
    v10 = v8;
    v11 = v3;
    sub_219BE3494();
  }

  else
  {
    if (qword_27CC08578 != -1)
    {
      swift_once();
    }

    v12 = sub_219BE5434();
    __swift_project_value_buffer(v12, qword_27CCD8A38);
    oslog = sub_219BE5414();
    v13 = sub_219BF6214();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2186C1000, oslog, v13, "No active window scene! Skipping review prompt", v14, 2u);
      MEMORY[0x21CECF960](v14, -1, -1);
    }
  }
}

id sub_2190AAC74(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBCB4();
  v10 = sub_219BDBC04();
  (*(v7 + 8))(v9, v6);
  [a1 setAppReviewRequestLastShownDate_];

  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  memset(v14, 0, sizeof(v14));
  (*(v12 + 24))(v14, v11, v12);
  return [objc_opt_self() requestReviewInScene_];
}

uint64_t sub_2190AADCC()
{
  sub_219BE0F04();
  sub_2190AB250(&qword_27CC15B90, MEMORY[0x277D2EDD8], MEMORY[0x277D2EDD0]);
  memset(v1, 0, sizeof(v1));
  sub_219BDCCE4();
  return sub_2190AB1F0(v1, sub_21880702C);
}

void sub_2190AAF44(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_2190AAF54()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_219004C80();
  sub_2190AB250(&qword_280E8DA40, sub_219004C80, MEMORY[0x277D85378]);
  v2 = sub_219BF5D44();

  if ((v2 & 0xC000000000000001) != 0)
  {
    sub_219BF71C4();
    sub_219BF5D94();
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);
  }

  v17 = v4;
  v10 = (v4 + 64) >> 6;
  while (v2 < 0)
  {
    v16 = sub_219BF7244();
    if (!v16 || (v18 = v16, swift_dynamicCast(), v15 = v19, v13 = v5, v14 = v6, !v19))
    {
LABEL_20:
      sub_21892DE98(v2);
      return;
    }

LABEL_18:
    if (![v15 activationState])
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_20;
      }
    }

    v5 = v13;
    v6 = v14;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_14:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

id sub_2190AB1E0(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_2190AB1F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2190AB250(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2190AB2A8(char *a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v72 = a3;
  v73 = a2;
  sub_218C6994C(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v70 = *(v5 - 8);
  v71 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = (&v56 - v6);
  v62 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v62);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6994C(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v10 = v9;
  v66 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v63 = &v56 - v11;
  sub_218A7BA30(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950B84(0);
  v16 = v15;
  v68 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v65 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v67 = &v56 - v19;
  sub_218A2D984(0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C6994C(0, &qword_280EE5750, MEMORY[0x277D6D710]);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v64 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v56 - v28;
  sub_219BEB354();
  if ((*(v25 + 48))(v22, 1, v24) == 1)
  {
    v30 = sub_218A2D984;
    v31 = v22;
LABEL_5:
    sub_218C69A30(v31, v30);
    sub_2190ABB38();
    v33 = swift_allocError();
    v35 = v69;
    v34 = v70;
    *v69 = v33;
    v36 = v71;
    (*(v34 + 104))(v35, *MEMORY[0x277D6DF68], v71);
    v73(v35);
    return (*(v34 + 8))(v35, v36);
  }

  (*(v25 + 32))(v29, v22, v24);
  sub_219BEB1C4();
  v32 = v68;
  if ((*(v68 + 48))(v14, 1, v16) == 1)
  {
    (*(v25 + 8))(v29, v24);
    v30 = sub_218A7BA30;
    v31 = v14;
    goto LABEL_5;
  }

  v38 = *(v32 + 32);
  v60 = v16;
  v38(v67, v14, v16);
  (*(v25 + 16))(v64, v29, v24);
  v39 = v10;
  v40 = *(v66 + 16);
  v41 = v63;
  v58 = v66 + 16;
  v59 = a1;
  v57 = v40;
  v40(v63, a1, v10);
  *v8 = v61;
  *(v8 + 1) = 0;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  v8[32] = 1;
  swift_storeEnumTagMultiPayload();
  sub_218C698F4();
  sub_219BE5FB4();
  sub_219BE69E4();
  v42 = v41;
  sub_219BEB234();
  sub_218A7BAF8();
  sub_2187490E4();
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v43 = v29;
  if (sub_219BE6E54())
  {
    v44 = MEMORY[0x277D6DF80];
    v45 = v69;
  }

  else
  {
    sub_218A7BB4C(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 64);
    v45 = v69;
    v57(v69, v41, v39);
    sub_218718690(v74, v45 + v47);
    v49 = *MEMORY[0x277D6D868];
    v50 = sub_219BE6DF4();
    (*(*(v50 - 8) + 104))(v45 + v48, v49, v50);
    v44 = MEMORY[0x277D6DF78];
  }

  v52 = v70;
  v51 = v71;
  (*(v70 + 104))(v45, *v44, v71);
  v73(v45);
  (*(v52 + 8))(v45, v51);
  v53 = *(v68 + 8);
  v54 = v60;
  v53(v65, v60);
  (*(v66 + 8))(v42, v39);
  v55 = *(v25 + 8);
  v55(v64, v24);
  v53(v67, v54);
  v55(v43, v24);
  return __swift_destroy_boxed_opaque_existential_1(v74);
}

uint64_t sub_2190ABAA4(uint64_t a1)
{
  v2 = sub_218B128D8();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2190ABAE4()
{
  result = qword_280EA36B8;
  if (!qword_280EA36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA36B8);
  }

  return result;
}

unint64_t sub_2190ABB38()
{
  result = qword_27CC15B98;
  if (!qword_27CC15B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15B98);
  }

  return result;
}

unint64_t sub_2190ABBA0()
{
  result = qword_27CC15BA0;
  if (!qword_27CC15BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15BA0);
  }

  return result;
}

void sub_2190ABC3C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v229 = a2;
  sub_2186EB308(0);
  v289 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v249 = &v224 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v277 = &v224 - v7;
  MEMORY[0x28223BE20](v8);
  v248 = &v224 - v9;
  MEMORY[0x28223BE20](v10);
  v276 = &v224 - v11;
  sub_2186EB018(0);
  v288 = v12;
  v284 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v225 = &v224 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v247 = &v224 - v15;
  MEMORY[0x28223BE20](v16);
  v246 = &v224 - v17;
  MEMORY[0x28223BE20](v18);
  v245 = &v224 - v19;
  v285 = sub_219BF04A4();
  v20 = *(v285 - 8);
  MEMORY[0x28223BE20](v285);
  v244 = &v224 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v275 = &v224 - v23;
  MEMORY[0x28223BE20](v24);
  v243 = &v224 - v25;
  MEMORY[0x28223BE20](v26);
  v274 = &v224 - v27;
  MEMORY[0x28223BE20](v28);
  v242 = &v224 - v29;
  MEMORY[0x28223BE20](v30);
  v273 = &v224 - v31;
  sub_2186EAB88(0);
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v224 = &v224 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v241 = &v224 - v37;
  v272 = sub_219BF0F34();
  v38 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v240 = &v224 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v271 = &v224 - v41;
  v42 = type metadata accessor for SearchModel(0);
  v239 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v232 = &v224 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v231 = &v224 - v45;
  MEMORY[0x28223BE20](v46);
  v261 = &v224 - v47;
  MEMORY[0x28223BE20](v48);
  v260 = &v224 - v49;
  MEMORY[0x28223BE20](v50);
  v259 = &v224 - v51;
  MEMORY[0x28223BE20](v52);
  v258 = &v224 - v53;
  MEMORY[0x28223BE20](v54);
  v257 = &v224 - v55;
  MEMORY[0x28223BE20](v56);
  v256 = &v224 - v57;
  MEMORY[0x28223BE20](v58);
  v255 = &v224 - v59;
  MEMORY[0x28223BE20](v60);
  v254 = &v224 - v61;
  MEMORY[0x28223BE20](v62);
  v253 = &v224 - v63;
  MEMORY[0x28223BE20](v64);
  v252 = &v224 - v65;
  MEMORY[0x28223BE20](v66);
  v68 = &v224 - v67;
  MEMORY[0x28223BE20](v69);
  v251 = &v224 - v70;
  v268 = type metadata accessor for SearchResultsGroup(0);
  v71 = *(v268 - 8);
  MEMORY[0x28223BE20](v268);
  v263 = &v224 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v297 = 0u;
  v298 = 0u;
  v296 = 0u;
  v299 = -1;
  v228 = a1;
  v73 = *(a1 + 16);
  v267 = *(v73 + 16);
  if (v267)
  {
    v227 = (&v296 + 8);
    v265 = v73 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v281 = (v4 + 32);
    v287 = (v34 + 8);
    v286 = (v284 + 1);
    v282 = (v4 + 8);
    v279 = (v284 + 4);
    v284 = (v20 + 32);
    v250 = (v34 + 32);
    v266 = v38;
    v269 = (v38 + 32);
    v226 = xmmword_219C09BA0;
    v238 = MEMORY[0x277D84F90];
    v237 = MEMORY[0x277D84F90];
    v236 = MEMORY[0x277D84F90];
    v235 = MEMORY[0x277D84F90];
    v234 = MEMORY[0x277D84F90];
    v233 = MEMORY[0x277D84F90];
    v270 = v4;
    v74 = 0;
    v280 = v20;
    v283 = v33;
    v264 = v71;
    v75 = v263;
    v262 = v73;
    while (v74 < *(v73 + 16))
    {
      sub_2190AEE30(v265 + *(v71 + 72) * v74, v75, type metadata accessor for SearchResultsGroup);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload)
        {
          v278 = v74;
          if (EnumCaseMultiPayload == 1)
          {
            v99 = *v75;
            v295 = *(v75 + 40);
            v100 = *(v75 + 24);
            v293 = *(v75 + 8);
            v294 = v100;
            v101 = *(v99 + 16);
            if (!v101)
            {

              v105 = MEMORY[0x277D84F90];
LABEL_131:
              sub_2187B14CC(&v293, v292, &qword_280ED01D0, &qword_280ED01E0, &protocol descriptor for StreamingTagResults);
              v291 = v105;
              sub_218B6F318(&v291, v290);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v234 = sub_2191F9C74(0, *(v234 + 2) + 1, 1, v234);
              }

              v71 = v264;
              v73 = v262;
              v200 = *(v234 + 2);
              v199 = *(v234 + 3);
              v201 = v200 + 1;
              if (v200 >= v199 >> 1)
              {
                v234 = sub_2191F9C74((v199 > 1), v200 + 1, 1, v234);
              }

              sub_218B6F544(&v291);
              sub_2187B1C64(&v293, &qword_280ED01D0, &qword_280ED01E0, &protocol descriptor for StreamingTagResults);
              v76 = &v266;
              goto LABEL_4;
            }

            v102 = (*(v239 + 80) + 32) & ~*(v239 + 80);
            v230 = v99;
            v103 = v99 + v102;
            v104 = *(v239 + 72);
            v105 = MEMORY[0x277D84F90];
            v106 = v253;
            v107 = v252;
            while (2)
            {
              sub_2190AEE30(v103, v107, type metadata accessor for SearchModel);
              sub_2190AEE30(v107, v106, type metadata accessor for SearchModel);
              v108 = swift_getEnumCaseMultiPayload();
              if (v108 <= 1)
              {
                if (!v108)
                {

                  sub_2186F8128(0);
                  v110 = type metadata accessor for SearchFeedGapLocation;
                  v111 = v106 + *(v109 + 48);
                  goto LABEL_43;
                }

                v112 = v245;
                v113 = v106;
                v114 = v288;
                (*v279)(v245, v113, v288);
                v115 = v242;
                sub_219BF07D4();
                sub_2190AEF38(v107, type metadata accessor for SearchModel);
                (*v286)(v112, v114);
                v116 = *v284;
                (*v284)(v273, v115, v285);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v105 = sub_2191F9DC0(0, *(v105 + 2) + 1, 1, v105);
                }

                v118 = *(v105 + 2);
                v117 = *(v105 + 3);
                v33 = v283;
                if (v118 >= v117 >> 1)
                {
                  v105 = sub_2191F9DC0((v117 > 1), v118 + 1, 1, v105);
                }

                *(v105 + 2) = v118 + 1;
                v116(&v105[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v118], v273, v285);
                v106 = v253;
                v107 = v252;
              }

              else
              {
                if (v108 == 2)
                {
                  (*v287)(v106, v33);
                  goto LABEL_34;
                }

                if (v108 == 3)
                {
                  (*v282)(v106, v289);
                  goto LABEL_34;
                }

                v110 = type metadata accessor for SearchModel;
                v111 = v106;
LABEL_43:
                sub_2190AEF38(v111, v110);
LABEL_34:
                sub_2190AEF38(v107, type metadata accessor for SearchModel);
              }

              v103 += v104;
              if (!--v101)
              {

                v75 = v263;
                goto LABEL_131;
              }

              continue;
            }
          }

          v138 = *v75;
          v295 = *(v75 + 40);
          v139 = *(v75 + 24);
          v293 = *(v75 + 8);
          v294 = v139;
          v140 = *(v138 + 16);
          if (!v140)
          {

            v144 = MEMORY[0x277D84F90];
LABEL_136:
            sub_2187B14CC(&v293, v292, &qword_280ED01D0, &qword_280ED01E0, &protocol descriptor for StreamingTagResults);
            v291 = v144;
            sub_218B6F318(&v291, v290);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v235 = sub_2191F9C74(0, *(v235 + 2) + 1, 1, v235);
            }

            v71 = v264;
            v73 = v262;
            v200 = *(v235 + 2);
            v202 = *(v235 + 3);
            v201 = v200 + 1;
            if (v200 >= v202 >> 1)
            {
              v235 = sub_2191F9C74((v202 > 1), v200 + 1, 1, v235);
            }

            sub_218B6F544(&v291);
            sub_2187B1C64(&v293, &qword_280ED01D0, &qword_280ED01E0, &protocol descriptor for StreamingTagResults);
            v76 = &v267;
            goto LABEL_4;
          }

          v141 = (*(v239 + 80) + 32) & ~*(v239 + 80);
          v230 = v138;
          v142 = v138 + v141;
          v143 = *(v239 + 72);
          v144 = MEMORY[0x277D84F90];
          v145 = v255;
          v146 = v254;
          while (2)
          {
            sub_2190AEE30(v142, v146, type metadata accessor for SearchModel);
            sub_2190AEE30(v146, v145, type metadata accessor for SearchModel);
            v147 = swift_getEnumCaseMultiPayload();
            if (v147 <= 1)
            {
              if (!v147)
              {

                sub_2186F8128(0);
                v149 = type metadata accessor for SearchFeedGapLocation;
                v150 = v145 + *(v148 + 48);
                goto LABEL_82;
              }

              v151 = v246;
              v152 = v145;
              v153 = v288;
              (*v279)(v246, v152, v288);
              v154 = v243;
              sub_219BF07D4();
              sub_2190AEF38(v146, type metadata accessor for SearchModel);
              (*v286)(v151, v153);
              v155 = *v284;
              (*v284)(v274, v154, v285);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v144 = sub_2191F9DC0(0, *(v144 + 2) + 1, 1, v144);
              }

              v157 = *(v144 + 2);
              v156 = *(v144 + 3);
              v33 = v283;
              if (v157 >= v156 >> 1)
              {
                v144 = sub_2191F9DC0((v156 > 1), v157 + 1, 1, v144);
              }

              *(v144 + 2) = v157 + 1;
              v155(&v144[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v157], v274, v285);
              v145 = v255;
              v146 = v254;
            }

            else
            {
              if (v147 == 2)
              {
                (*v287)(v145, v33);
                goto LABEL_73;
              }

              if (v147 == 3)
              {
                (*v282)(v145, v289);
                goto LABEL_73;
              }

              v149 = type metadata accessor for SearchModel;
              v150 = v145;
LABEL_82:
              sub_2190AEF38(v150, v149);
LABEL_73:
              sub_2190AEF38(v146, type metadata accessor for SearchModel);
            }

            v142 += v143;
            if (!--v140)
            {

              v75 = v263;
              goto LABEL_136;
            }

            continue;
          }
        }

        v136 = v231;
        sub_2190AEED0(v75, v231, type metadata accessor for SearchModel);
        sub_2190AEE30(v136, v232, type metadata accessor for SearchModel);
        v137 = swift_getEnumCaseMultiPayload();
        if (v137 <= 1)
        {
          if (v137)
          {
            v214 = *v279;
            v278 = v74;
            v215 = v225;
            v216 = v288;
            v214(v225, v232, v288);
            sub_2190AE7DC(0, &qword_27CC17440, MEMORY[0x277D32CE0]);
            v217 = swift_allocObject();
            *(v217 + 16) = v226;
            sub_219BF07D4();
            v218 = v215;
            v74 = v278;
            (*v286)(v218, v216);
            sub_2190AEF38(v231, type metadata accessor for SearchModel);
            sub_2190AEF38(&v296, sub_2190AE78C);
            LOBYTE(v291) = 1;
            *&v296 = v217;
            v75 = v263;
            v219 = v227;
            *v227 = 0u;
            v219[1] = 0u;
            *(v219 + 4) = 0;
            v299 = 1;
            goto LABEL_6;
          }

          sub_2190AEF38(v231, type metadata accessor for SearchModel);
          sub_2190AEF38(&v296, sub_2190AE78C);
          v195 = v232;

          sub_2186F8128(0);
          v197 = type metadata accessor for SearchFeedGapLocation;
          v198 = v195 + *(v196 + 48);
        }

        else
        {
          if (v137 == 2)
          {
            v211 = v224;
            (*v250)(v224, v232, v33);
            sub_2190AE7DC(0, &qword_27CC15BB0, MEMORY[0x277D33058]);
            v212 = swift_allocObject();
            *(v212 + 16) = v226;
            sub_219BF07D4();
            (*v287)(v211, v33);
            sub_2190AEF38(v231, type metadata accessor for SearchModel);
            sub_2190AEF38(&v296, sub_2190AE78C);
            LOBYTE(v291) = 0;
            *&v296 = v212;
            v75 = v263;
            v213 = v227;
            *v227 = 0u;
            v213[1] = 0u;
            *(v213 + 4) = 0;
            v299 = 0;
            goto LABEL_6;
          }

          if (v137 == 3)
          {
            sub_2190AEF38(v231, type metadata accessor for SearchModel);
            sub_2190AEF38(&v296, sub_2190AE78C);
            (*v282)(v232, v289);
LABEL_169:
            v297 = 0u;
            v298 = 0u;
            v296 = 0u;
            v299 = -1;
            goto LABEL_6;
          }

          sub_2190AEF38(v231, type metadata accessor for SearchModel);
          sub_2190AEF38(&v296, sub_2190AE78C);
          v198 = v232;
          v197 = type metadata accessor for SearchModel;
        }

        sub_2190AEF38(v198, v197);
        goto LABEL_169;
      }

      v278 = v74;
      if (EnumCaseMultiPayload <= 4)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v82 = *v75;
          v295 = *(v75 + 40);
          v83 = *(v75 + 24);
          v293 = *(v75 + 8);
          v294 = v83;
          v84 = *(v82 + 16);
          if (v84)
          {
            v85 = (*(v239 + 80) + 32) & ~*(v239 + 80);
            v230 = v82;
            v86 = v82 + v85;
            v87 = *(v239 + 72);
            v88 = MEMORY[0x277D84F90];
            v89 = v251;
            while (1)
            {
              sub_2190AEE30(v86, v89, type metadata accessor for SearchModel);
              sub_2190AEE30(v89, v68, type metadata accessor for SearchModel);
              v92 = swift_getEnumCaseMultiPayload();
              if (v92 <= 1)
              {
                if (v92)
                {
                  (*v286)(v68, v288);
                  goto LABEL_15;
                }

                sub_2186F8128(0);
                v90 = type metadata accessor for SearchFeedGapLocation;
                v91 = &v68[*(v93 + 48)];
              }

              else
              {
                if (v92 == 2)
                {
                  v94 = v241;
                  (*v250)(v241, v68, v33);
                  v95 = v240;
                  sub_219BF07D4();
                  sub_2190AEF38(v89, type metadata accessor for SearchModel);
                  (*v287)(v94, v33);
                  v96 = *v269;
                  (*v269)(v271, v95, v272);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v88 = sub_2191F9E08(0, *(v88 + 2) + 1, 1, v88);
                  }

                  v98 = *(v88 + 2);
                  v97 = *(v88 + 3);
                  if (v98 >= v97 >> 1)
                  {
                    v88 = sub_2191F9E08((v97 > 1), v98 + 1, 1, v88);
                  }

                  *(v88 + 2) = v98 + 1;
                  v96(&v88[((*(v266 + 80) + 32) & ~*(v266 + 80)) + *(v266 + 72) * v98], v271, v272);
                  v89 = v251;
                  goto LABEL_16;
                }

                if (v92 == 3)
                {
                  (*v282)(v68, v289);
                  goto LABEL_15;
                }

                v90 = type metadata accessor for SearchModel;
                v91 = v68;
              }

              sub_2190AEF38(v91, v90);
LABEL_15:
              sub_2190AEF38(v89, type metadata accessor for SearchModel);
LABEL_16:
              v86 += v87;
              if (!--v84)
              {

                v75 = v263;
                goto LABEL_142;
              }
            }
          }

          v88 = MEMORY[0x277D84F90];
LABEL_142:
          sub_2187B14CC(&v293, v292, &qword_280EC30F0, qword_280EC3100, &protocol descriptor for StreamingArticleResults);
          v291 = v88;
          sub_2190AEDC8(&v291, v290);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v233 = sub_2191F9DF4(0, *(v233 + 2) + 1, 1, v233);
          }

          v71 = v264;
          v73 = v262;
          v200 = *(v233 + 2);
          v203 = *(v233 + 3);
          v201 = v200 + 1;
          if (v200 >= v203 >> 1)
          {
            v233 = sub_2191F9DF4((v203 > 1), v200 + 1, 1, v233);
          }

          sub_2190AEE00(&v291);
          sub_2187B1C64(&v293, &qword_280EC30F0, qword_280EC3100, &protocol descriptor for StreamingArticleResults);
          v76 = &v265;
          goto LABEL_4;
        }

        v158 = *v75;
        v295 = *(v75 + 40);
        v159 = *(v75 + 24);
        v293 = *(v75 + 8);
        v294 = v159;
        v160 = *(v158 + 16);
        if (v160)
        {
          v161 = (*(v239 + 80) + 32) & ~*(v239 + 80);
          v230 = v158;
          v162 = v158 + v161;
          v163 = *(v239 + 72);
          v164 = MEMORY[0x277D84F90];
          v165 = v261;
          v166 = v260;
          while (1)
          {
            sub_2190AEE30(v162, v166, type metadata accessor for SearchModel);
            sub_2190AEE30(v166, v165, type metadata accessor for SearchModel);
            v167 = swift_getEnumCaseMultiPayload();
            if (v167 <= 1)
            {
              break;
            }

            if (v167 == 2)
            {
              (*v287)(v165, v33);
            }

            else
            {
              if (v167 != 3)
              {
                v169 = type metadata accessor for SearchModel;
                v170 = v165;
LABEL_100:
                sub_2190AEF38(v170, v169);
                goto LABEL_91;
              }

              (*v282)(v165, v289);
            }

LABEL_91:
            sub_2190AEF38(v166, type metadata accessor for SearchModel);
LABEL_92:
            v162 += v163;
            if (!--v160)
            {

              v75 = v263;
              goto LABEL_154;
            }
          }

          if (v167)
          {
            v171 = v247;
            v172 = v165;
            v173 = v288;
            (*v279)(v247, v172, v288);
            v174 = v244;
            sub_219BF07D4();
            sub_2190AEF38(v166, type metadata accessor for SearchModel);
            (*v286)(v171, v173);
            v175 = *v284;
            (*v284)(v275, v174, v285);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v164 = sub_2191F9DC0(0, *(v164 + 2) + 1, 1, v164);
            }

            v177 = *(v164 + 2);
            v176 = *(v164 + 3);
            v33 = v283;
            if (v177 >= v176 >> 1)
            {
              v164 = sub_2191F9DC0((v176 > 1), v177 + 1, 1, v164);
            }

            *(v164 + 2) = v177 + 1;
            v175(&v164[((*(v280 + 80) + 32) & ~*(v280 + 80)) + *(v280 + 72) * v177], v275, v285);
            v165 = v261;
            v166 = v260;
            goto LABEL_92;
          }

          sub_2186F8128(0);
          v169 = type metadata accessor for SearchFeedGapLocation;
          v170 = v165 + *(v168 + 48);
          goto LABEL_100;
        }

        v164 = MEMORY[0x277D84F90];
LABEL_154:
        sub_2187B14CC(&v293, v292, &qword_280ED01D0, &qword_280ED01E0, &protocol descriptor for StreamingTagResults);
        v291 = v164;
        sub_218B6F318(&v291, v290);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v238 = sub_2191F9C74(0, *(v238 + 2) + 1, 1, v238);
        }

        v71 = v264;
        v73 = v262;
        v206 = *(v238 + 2);
        v205 = *(v238 + 3);
        v207 = v206 + 1;
        if (v206 >= v205 >> 1)
        {
          v238 = sub_2191F9C74((v205 > 1), v206 + 1, 1, v238);
        }

        sub_218B6F544(&v291);
        sub_2187B1C64(&v293, &qword_280ED01D0, &qword_280ED01E0, &protocol descriptor for StreamingTagResults);
        v208 = &v270;
LABEL_165:
        v210 = *(v208 - 32);
        *(v210 + 16) = v207;
        v78 = (v210 + 48 * v206);
        goto LABEL_5;
      }

      if (EnumCaseMultiPayload != 5)
      {
        v178 = *v75;
        v295 = *(v75 + 40);
        v179 = *(v75 + 24);
        v293 = *(v75 + 8);
        v294 = v179;
        v180 = *(v178 + 16);
        if (v180)
        {
          v181 = (*(v239 + 80) + 32) & ~*(v239 + 80);
          v230 = v178;
          v182 = v178 + v181;
          v183 = *(v239 + 72);
          v184 = MEMORY[0x277D84F90];
          v185 = v259;
          v186 = v258;
          do
          {
            sub_2190AEE30(v182, v186, type metadata accessor for SearchModel);
            sub_2190AEED0(v186, v185, type metadata accessor for SearchModel);
            v187 = swift_getEnumCaseMultiPayload();
            if (v187 <= 1)
            {
              if (v187)
              {
                (*v286)(v185, v288);
              }

              else
              {

                sub_2186F8128(0);
                sub_2190AEF38(v185 + *(v194 + 48), type metadata accessor for SearchFeedGapLocation);
              }
            }

            else if (v187 == 2)
            {
              (*v287)(v185, v33);
            }

            else if (v187 == 3)
            {
              v188 = *v281;
              v189 = v249;
              v190 = v185;
              v191 = v289;
              (*v281)(v249, v190, v289);
              v188(v277, v189, v191);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v184 = sub_2191F8404(0, *(v184 + 2) + 1, 1, v184);
              }

              v193 = *(v184 + 2);
              v192 = *(v184 + 3);
              v33 = v283;
              if (v193 >= v192 >> 1)
              {
                v184 = sub_2191F8404((v192 > 1), v193 + 1, 1, v184);
              }

              *(v184 + 2) = v193 + 1;
              v188(&v184[((*(v270 + 80) + 32) & ~*(v270 + 80)) + *(v270 + 72) * v193], v277, v289);
              v185 = v259;
              v186 = v258;
            }

            else
            {
              sub_2190AEF38(v185, type metadata accessor for SearchModel);
            }

            v182 += v183;
            --v180;
          }

          while (v180);

          v73 = v262;
        }

        else
        {

          v184 = MEMORY[0x277D84F90];
        }

        sub_2187B14CC(&v293, v292, &qword_280EC6990, &qword_280EC69A0, &protocol descriptor for StreamingRecipeResults);
        v291 = v184;
        sub_218C92DAC(&v291, v290);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v237 = sub_2191F9C60(0, *(v237 + 2) + 1, 1, v237);
        }

        v71 = v264;
        v75 = v263;
        v206 = *(v237 + 2);
        v209 = *(v237 + 3);
        v207 = v206 + 1;
        if (v206 >= v209 >> 1)
        {
          v237 = sub_2191F9C60((v209 > 1), v206 + 1, 1, v237);
        }

        sub_218C92E08(&v291);
        sub_2187B1C64(&v293, &qword_280EC6990, &qword_280EC69A0, &protocol descriptor for StreamingRecipeResults);
        v208 = &v269;
        goto LABEL_165;
      }

      v119 = *v75;
      v295 = *(v75 + 40);
      v120 = *(v75 + 24);
      v293 = *(v75 + 8);
      v294 = v120;
      v121 = *(v119 + 16);
      if (v121)
      {
        v122 = (*(v239 + 80) + 32) & ~*(v239 + 80);
        v230 = v119;
        v123 = v119 + v122;
        v124 = *(v239 + 72);
        v125 = MEMORY[0x277D84F90];
        v126 = v257;
        v127 = v256;
        do
        {
          sub_2190AEE30(v123, v127, type metadata accessor for SearchModel);
          sub_2190AEED0(v127, v126, type metadata accessor for SearchModel);
          v128 = swift_getEnumCaseMultiPayload();
          if (v128 <= 1)
          {
            if (v128)
            {
              (*v286)(v126, v288);
            }

            else
            {

              sub_2186F8128(0);
              sub_2190AEF38(v126 + *(v135 + 48), type metadata accessor for SearchFeedGapLocation);
            }
          }

          else if (v128 == 2)
          {
            (*v287)(v126, v33);
          }

          else if (v128 == 3)
          {
            v129 = *v281;
            v130 = v248;
            v131 = v126;
            v132 = v289;
            (*v281)(v248, v131, v289);
            v129(v276, v130, v132);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v125 = sub_2191F8404(0, *(v125 + 2) + 1, 1, v125);
            }

            v134 = *(v125 + 2);
            v133 = *(v125 + 3);
            v33 = v283;
            if (v134 >= v133 >> 1)
            {
              v125 = sub_2191F8404((v133 > 1), v134 + 1, 1, v125);
            }

            *(v125 + 2) = v134 + 1;
            v129(&v125[((*(v270 + 80) + 32) & ~*(v270 + 80)) + *(v270 + 72) * v134], v276, v289);
            v126 = v257;
            v127 = v256;
          }

          else
          {
            sub_2190AEF38(v126, type metadata accessor for SearchModel);
          }

          v123 += v124;
          --v121;
        }

        while (v121);

        v73 = v262;
      }

      else
      {

        v125 = MEMORY[0x277D84F90];
      }

      sub_2187B14CC(&v293, v292, &qword_280EC6990, &qword_280EC69A0, &protocol descriptor for StreamingRecipeResults);
      v291 = v125;
      sub_218C92DAC(&v291, v290);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v236 = sub_2191F9C60(0, *(v236 + 2) + 1, 1, v236);
      }

      v71 = v264;
      v75 = v263;
      v200 = *(v236 + 2);
      v204 = *(v236 + 3);
      v201 = v200 + 1;
      if (v200 >= v204 >> 1)
      {
        v236 = sub_2191F9C60((v204 > 1), v200 + 1, 1, v236);
      }

      sub_218C92E08(&v291);
      sub_2187B1C64(&v293, &qword_280EC6990, &qword_280EC69A0, &protocol descriptor for StreamingRecipeResults);
      v76 = &v268;
LABEL_4:
      v77 = *(v76 - 32);
      *(v77 + 16) = v201;
      v78 = (v77 + 48 * v200);
LABEL_5:
      v79 = v290[2];
      v80 = v290[1];
      v78[2] = v290[0];
      v78[3] = v80;
      v78[4] = v79;
      v74 = v278;
LABEL_6:
      if (++v74 == v267)
      {
        goto LABEL_172;
      }
    }

    __break(1u);
  }

  else
  {
    v237 = MEMORY[0x277D84F90];
    v236 = MEMORY[0x277D84F90];
    v235 = MEMORY[0x277D84F90];
    v234 = MEMORY[0x277D84F90];
    v238 = MEMORY[0x277D84F90];
    v233 = MEMORY[0x277D84F90];
LABEL_172:
    v220 = v229;
    v221 = v234;
    *v229 = v233;
    v220[1] = v221;
    v222 = v236;
    v220[2] = v235;
    v220[3] = v222;
    v223 = v238;
    v220[4] = v237;
    v220[5] = v223;
    sub_2190AEE30(&v296, (v220 + 6), sub_2190AE78C);
    sub_2190AEF38(&v296, sub_2190AE78C);
    sub_2190AEF38(v228, type metadata accessor for SearchResults);
    v220[13] = MEMORY[0x277D84FA0];
  }
}

uint64_t sub_2190AE238@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for RecipesSearchFeedGroup(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BF1904();
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SavedRecipesSearchFeedGroup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SearchFeedGroup(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2190AEE30(a1, v15, type metadata accessor for SearchFeedGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (((1 << EnumCaseMultiPayload) & 0x67) != 0)
  {
    sub_2190AEF38(v15, type metadata accessor for SearchFeedGroup);
    return sub_2190AEE98(v2, v20);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_2190AEED0(v15, v6, type metadata accessor for RecipesSearchFeedGroup);
    sub_2190AE534(*&v6[*(v4 + 20)], v20);
    return sub_2190AEF38(v6, type metadata accessor for RecipesSearchFeedGroup);
  }

  else
  {
    sub_2190AEED0(v15, v12, type metadata accessor for SavedRecipesSearchFeedGroup);
    sub_219BED874();
    v18 = sub_219BF18C4();
    (*(v19 + 8))(v9, v7);
    sub_2190AE534(v18, v20);

    return sub_2190AEF38(v12, type metadata accessor for SavedRecipesSearchFeedGroup);
  }
}

void sub_2190AE534(unint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  if (a1 >> 62)
  {
    v6 = sub_219BF7214();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
LABEL_12:
    v18 = sub_218845F78(v7);

    v19 = sub_2190AE830(v3[3], v18);
    v20 = sub_2190AE830(v3[4], v18);
    v21 = *v3;
    v22 = v3[1];
    v23 = v3[2];
    v24 = v3[5];
    sub_2190AEE30((v3 + 6), (a2 + 6), sub_2190AE78C);
    v25 = v3[13];

    sub_2194796A0(v18, v25);
    *a2 = v21;
    a2[1] = v22;
    a2[2] = v23;
    a2[3] = v19;
    a2[4] = v20;
    a2[5] = v24;
    a2[13] = v26;
    return;
  }

  v27 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v7 = v27;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CECE0F0](v8, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v10 identifier];
      v12 = sub_219BF5414();
      v14 = v13;

      v16 = *(v27 + 16);
      v15 = *(v27 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_21870B65C((v15 > 1), v16 + 1, 1);
      }

      ++v8;
      *(v27 + 16) = v16 + 1;
      v17 = v27 + 16 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v14;
    }

    while (v6 != v8);
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_2190AE744(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2190AE78C()
{
  if (!qword_27CC15BA8)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15BA8);
    }
  }
}

void sub_2190AE7DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF78A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2190AE830(uint64_t a1, uint64_t a2)
{
  v50 = sub_219BF0B74();
  v4 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v56 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v54 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v41 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v61 = MEMORY[0x277D84F90];
  sub_218C369E0(0, v11, 0);
  v12 = 0;
  result = v61;
  v42 = a1 + 32;
  v47 = v7 + 16;
  v46 = (v4 + 8);
  v14 = a2 + 56;
  v45 = (v7 + 8);
  v53 = (v7 + 32);
  v48 = v7;
  v41 = v11;
  while (1)
  {
    v43 = result;
    v44 = v12;
    result = sub_218C92DAC(v42 + 48 * v12, &v58);
    v15 = v58;
    v52 = *(v58 + 16);
    if (v52)
    {
      break;
    }

    v17 = MEMORY[0x277D84F90];
LABEL_23:
    sub_2187B14CC(&v59, v60 + 8, &qword_280EC6990, &qword_280EC69A0, &protocol descriptor for StreamingRecipeResults);
    sub_218C92E08(&v58);
    *&v60[0] = v17;
    result = v43;
    v61 = v43;
    v37 = *(v43 + 16);
    v36 = *(v43 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_218C369E0((v36 > 1), v37 + 1, 1);
      result = v61;
    }

    v12 = v44 + 1;
    *(result + 16) = v37 + 1;
    v38 = (result + 48 * v37);
    v39 = v60[0];
    v40 = v60[2];
    v38[3] = v60[1];
    v38[4] = v40;
    v38[2] = v39;
    if (v12 == v41)
    {
      return result;
    }
  }

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v51 = v58;
  while (v16 < *(v15 + 16))
  {
    v18 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v19 = *(v7 + 72);
    (*(v7 + 16))(v55, v15 + v18 + v19 * v16, v56);
    v20 = v49;
    sub_219BF07D4();
    v21 = sub_219BF0B44();
    (*v46)(v20, v50);
    v22 = [v21 identifier];

    v23 = sub_219BF5414();
    v25 = v24;

    if (*(a2 + 16) && (sub_219BF7AA4(), sub_219BF5524(), v26 = sub_219BF7AE4(), v27 = -1 << *(a2 + 32), v28 = v26 & ~v27, ((*(v14 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) != 0))
    {
      v29 = ~v27;
      while (1)
      {
        v30 = (*(a2 + 48) + 16 * v28);
        v31 = *v30 == v23 && v30[1] == v25;
        if (v31 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v14 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_17;
        }
      }

      result = (*v45)(v55, v56);
    }

    else
    {
LABEL_17:

      v32 = *v53;
      (*v53)(v54, v55, v56);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C36A00(0, *(v17 + 16) + 1, 1);
        v17 = v57;
      }

      v35 = *(v17 + 16);
      v34 = *(v17 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_218C36A00((v34 > 1), v35 + 1, 1);
        v17 = v57;
      }

      *(v17 + 16) = v35 + 1;
      result = (v32)(v17 + v18 + v35 * v19, v54, v56);
    }

    ++v16;
    v7 = v48;
    v15 = v51;
    if (v16 == v52)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2190AEE30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190AEED0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2190AEF38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2190AEFB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2190AEFF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2190AF040(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI214SearchFeedPoolV09TopResultC7ResultsOSg(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

NewsUI2::Storefront_optional __swiftcall Storefront.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_219BF7614();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Storefront.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x313434333431;
  v3 = 0x343434333431;
  v4 = 0x303634333431;
  if (v1 != 3)
  {
    v4 = 0x353534333431;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2190AF1C8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_2190AF2A0(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_2190AF364(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_2190AF444(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x313434333431;
  v5 = 0x343434333431;
  v6 = 0x303634333431;
  if (v2 != 3)
  {
    v6 = 0x353534333431;
  }

  if (v2 != 2)
  {
    v5 = v6;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x8000000219CD7820;
  }

  if (*v1 <= 1u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2190AF4D8(uint64_t a1)
{
  v2 = sub_2190AFD88();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A30](a1, v2, v3);
}

uint64_t sub_2190AF52C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2190AFD88();
  v5 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A28](a1, a2, v4, v5);
}

uint64_t sub_2190AF588(uint64_t a1)
{
  v2 = sub_2190AFD88();
  v3 = MEMORY[0x277D6D0D8];

  return MEMORY[0x2821D2A20](a1, v2, v3);
}

uint64_t sub_2190AF5DC()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[15] = 0;
  sub_21871A648();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC15BB8 = result;
  return result;
}

uint64_t sub_2190AF7B4()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(&v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[15] = 0;
  sub_21871A648();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC15BC0 = result;
  return result;
}

uint64_t sub_2190AF98C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2190AFDDC(0);
  v10[15] = 0;
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  sub_2190AFE8C(0);
  sub_2190AFEE4();
  *(swift_allocObject() + 16) = xmmword_219C0D560;
  v10[14] = 0;
  sub_219BDC954();
  v10[13] = 1;
  sub_219BDC954();
  v10[12] = 2;
  sub_219BDC954();
  v10[11] = 3;
  sub_219BDC954();
  v10[10] = 4;
  sub_219BDC954();
  sub_2190AFF34();
  result = sub_219BDC9B4();
  qword_27CC15BC8 = result;
  return result;
}

unint64_t sub_2190AFD14()
{
  result = qword_27CC15BD0;
  if (!qword_27CC15BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15BD0);
  }

  return result;
}

unint64_t sub_2190AFD88()
{
  result = qword_27CC15BD8;
  if (!qword_27CC15BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15BD8);
  }

  return result;
}

void sub_2190AFDDC(uint64_t a1)
{
  if (!qword_27CC15BE0)
  {
    sub_2190AFE38();
    v1 = sub_219BDC9E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15BE0);
    }
  }
}

unint64_t sub_2190AFE38()
{
  result = qword_27CC15BE8;
  if (!qword_27CC15BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15BE8);
  }

  return result;
}

void sub_2190AFE8C(uint64_t a1)
{
  if (!qword_27CC15BF0)
  {
    sub_2190AFEE4();
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15BF0);
    }
  }
}

void sub_2190AFEE4()
{
  if (!qword_27CC15BF8)
  {
    v0 = sub_219BDC964();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15BF8);
    }
  }
}

unint64_t sub_2190AFF34()
{
  result = qword_27CC15C00;
  if (!qword_27CC15C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15C00);
  }

  return result;
}

void *sub_2190AFF8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
      v6 = type metadata accessor for SharedWithYouFeedModule();
      v7 = swift_allocObject();
      sub_2186CB1F0(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_2186CB1F0(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &protocol witness table for SharedWithYouFeedModule;
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

void *sub_2190B00A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90260, MEMORY[0x277D33C38], 1);
  result = sub_219BE1E34();
  if (v7)
  {
    v4 = type metadata accessor for SharedWithYouFeedDataProvider();
    v5 = swift_allocObject();
    result = sub_2186CB1F0(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_282A60138;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_2190B0154()
{
  v0 = sub_219BE3344();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharedWithYouFeedViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC15C08, &protocol descriptor for SharedWithYouFeedStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15C10, &protocol descriptor for SharedWithYouFeedRouterType, 1);
  sub_219BE2914();
  type metadata accessor for SharedWithYouFeedRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC15C18, &protocol descriptor for SharedWithYouFeedEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15C20, &protocol descriptor for SharedWithYouFeedInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15C28, &protocol descriptor for SharedWithYouFeedTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15C30, &protocol descriptor for SharedWithYouFeedDataManagerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  sub_219BE2914();
  (*(v1 + 104))(v3, *MEMORY[0x277D6CF70], v0);
  sub_219BE19A4();

  (*(v1 + 8))(v3, v0);
  sub_218987294(0);
  sub_219BE2904();

  type metadata accessor for SharedWithYouFeedBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC15C38, &protocol descriptor for SharedWithYouFeedSectionFactoryType, 1);
  sub_219BE2914();

  sub_2190B61F0(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2190B6A88(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2190B6CD0(0);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_2190B62DC(0);
  sub_219BE2904();

  sub_2190B6BC4(0);
  sub_219BE2904();

  sub_2190B6764(0);
  sub_219BE2904();

  type metadata accessor for SharedWithYouFeedBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2190B6D64(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8E74();
  sub_219BE2904();

  sub_2190B6418(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2190B6594(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2190B681C(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2190B699C(0);
  sub_219BE2904();

  type metadata accessor for SharedWithYouFeedBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SharedWithYouFeedBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_2190B6EA0(0);
  sub_219BE2904();

  sub_2190B6F34(0);
  sub_219BE2904();

  sub_2190B7020(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_2190B70B4(0);
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

  sub_2190B71A0(0);
  sub_219BE2904();

  sub_2190B72E0(0);
  sub_219BE2904();

  return result;
}

char *sub_2190B0DE4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15C08, &protocol descriptor for SharedWithYouFeedStylerType, 1);
  result = sub_219BE1E34();
  if (!v52)
  {
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15C18, &protocol descriptor for SharedWithYouFeedEventHandlerType, 0);
  result = sub_219BE1E34();
  if (!v49)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6D64(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD80, MEMORY[0x277D345A0], 1);
  result = sub_219BE1E34();
  if (!v47)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_219BF4FF4();
  swift_allocObject();
  v5 = sub_219BF4FE4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5150, MEMORY[0x277D6DA40], 0);
  result = sub_219BE1E34();
  if (!v44)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v41 = v45;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218716B60(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v37 = result;
  v38 = v44;
  v39 = v50;
  v40 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E890, 0x277D31390);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = result;
  v7 = v5;
  v8 = v49;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v43[0])
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    v47 = v4;
    v48 = sub_218713920(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v46[0] = v9;
    sub_219BE6AE4();
    swift_allocObject();
    v36[0] = sub_219BE6AC4();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    v36[2] = v36;
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v16 = type metadata accessor for SharedWithYouFeedStyler();
    v47 = v16;
    v48 = &off_282A64F90;
    v46[0] = v15;
    v17 = type metadata accessor for SharedWithYouFeedViewController();
    v18 = objc_allocWithZone(v17);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    v36[1] = v36;
    v20 = MEMORY[0x28223BE20](v19);
    v22 = (v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = *v22;
    v43[3] = v16;
    v43[4] = &off_282A64F90;
    v43[0] = v24;
    sub_218718690(v43, &v18[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_styler]);
    v25 = &v18[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler];
    v26 = v39;
    *v25 = v8;
    *(v25 + 1) = v26;
    v27 = v40;
    *&v18[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_blueprintViewController] = v40;
    *&v18[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_sharingActivityProviderFactory] = v7;
    v28 = &v18[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_toolbarManager];
    v29 = v41;
    *v28 = v38;
    *(v28 + 1) = v29;
    *&v18[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_newsActivityManager] = v37;
    *&v18[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_userInfo] = v6;
    *&v18[OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_commandContainer] = v36[0];
    v42.receiver = v18;
    v42.super_class = v17;
    swift_unknownObjectRetain();
    v30 = v27;

    swift_unknownObjectRetain();

    v31 = v6;

    v32 = objc_msgSendSuper2(&v42, sel_initWithNibName_bundle_, 0, 0);
    *(*(v32 + OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_eventHandler) + 24) = &off_282A60990;
    swift_unknownObjectWeakAssign();
    v33 = *(v32 + OBJC_IVAR____TtC7NewsUI231SharedWithYouFeedViewController_blueprintViewController);
    v34 = v32;
    v35 = v33;
    sub_219BE8744();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v43);
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v51);
    return v34;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *sub_2190B1504@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v11 = sub_218713920(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for SharedWithYouFeedStyler();
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
    a2[4] = &off_282A64F90;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2190B1764@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
  sub_2190B7C50(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    v7 = type metadata accessor for SharedWithYouFeedRouter();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v11, v8 + 24);
    *(v8 + 64) = v5;
    result = sub_2186CB1F0(&v9, v8 + 72);
    *(v8 + 112) = v6;
    a2[3] = v7;
    a2[4] = &off_282A58828;
    *a2 = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2190B18F8(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SharedWithYouFeedViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_2190B1978@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15C20, &protocol descriptor for SharedWithYouFeedInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15C10, &protocol descriptor for SharedWithYouFeedRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15C28, &protocol descriptor for SharedWithYouFeedTrackerType, 1);
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
    v17 = sub_2190B7A44(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A88EB0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2190B1C28@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BED184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15C30, &protocol descriptor for SharedWithYouFeedDataManagerType, 0);
  result = sub_219BE1E34();
  v9 = v31;
  if (!v31)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B7C50(0, &qword_280E90730, sub_2186F175C, &type metadata for SharedWithYouFeedOfflineModel, MEMORY[0x277D33538]);
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
  sub_2190B61F0(0);
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
  type metadata accessor for SharedWithYouFeedBlueprintModifierFactory();
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
  sub_2190B6764(0);
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
  sub_2190B71A0(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B72E0(0);
  result = sub_219BE1E24();
  if (result)
  {
    v18 = result;
    sub_2190B78B8(0, v17);
    v19 = swift_allocObject();
    v19[3] = 0;
    swift_unknownObjectWeakInit();
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v20 = v27;
    (*(v14 + 104))(v7, *MEMORY[0x277D851B8], v27);
    v21 = sub_219BF66E4();
    (*(v14 + 8))(v7, v20);
    v19[12] = v21;
    v22 = v29;
    v23 = v30;
    v19[6] = v30;
    v19[7] = v22;
    v19[4] = v12;
    v19[5] = v13;
    v19[8] = v28;
    v19[9] = v15;
    v19[10] = v16;
    v19[11] = v18;
    *(v23 + OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_delegate + 8) = &off_282A4E560;
    result = swift_unknownObjectWeakAssign();
    v24 = v26;
    *v26 = v19;
    v24[1] = &off_282A4E578;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_2190B1FC0@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v8 = type metadata accessor for SharedWithYouFeedTracker();
    v9 = swift_allocObject();
    v9[3] = v7;
    v9[4] = v6;
    v9[2] = v5;
    result = sub_2186CB1F0(&v10, (v9 + 5));
    a2[3] = v8;
    a2[4] = &off_282A638D0;
    *a2 = v9;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_2190B2138@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BED184();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SharedWithYouFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FF61C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = result;
  v20 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186FF588(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90260, MEMORY[0x277D33C38], 1);
  result = sub_219BE1E34();
  if (!v24)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  result = sub_219BE1DF4();
  if (v22[3])
  {
    v12 = type metadata accessor for SharedWithYouFeedDataManager();
    v13 = objc_allocWithZone(v12);
    *&v13[OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v14 = OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_accessQueue;
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    (*(v5 + 104))(v7, *MEMORY[0x277D851B8], v4);
    v15 = sub_219BF66E4();
    (*(v5 + 8))(v7, v4);
    *&v13[v14] = v15;
    *&v13[OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_feedServiceContextFactory] = v9;
    *&v13[OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_feedServiceConfigFetcher] = v10;
    *&v13[OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_feedService] = v11;
    sub_218718690(v23, &v13[OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_sharedItemManager]);
    sub_218718690(v22, &v13[OBJC_IVAR____TtC7NewsUI228SharedWithYouFeedDataManager_headlineService]);
    v21.receiver = v13;
    v21.super_class = v12;

    v16 = objc_msgSendSuper2(&v21, sel_init);
    __swift_project_boxed_opaque_existential_1(v23, v24);
    sub_218713920(&qword_27CC15DD8, type metadata accessor for SharedWithYouFeedDataManager, &unk_219CD1DD0);
    v17 = v16;
    sub_219BF2F24();

    __swift_destroy_boxed_opaque_existential_1(v22);
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    v18 = v20;
    *v20 = v17;
    v18[1] = &off_282AA17C8;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_2190B255C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20, &protocol descriptor for HeadlineModelFactoryType, 1);
  result = sub_219BE1E34();
  if (v39)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_27CC15C38, &protocol descriptor for SharedWithYouFeedSectionFactoryType, 1);
    result = sub_219BE1E34();
    if (v37)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v31[2] = v31;
      v4 = MEMORY[0x28223BE20](v3);
      v6 = (v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6, v4);
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      v31[1] = v31;
      v9 = MEMORY[0x28223BE20](v8);
      v11 = v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11, v9);
      v13 = *v6;
      v14 = type metadata accessor for HeadlineModelFactory();
      v35[3] = v14;
      v35[4] = &off_282A8B8E8;
      v35[0] = v13;
      v33 = &type metadata for SharedWithYouFeedSectionFactory;
      v34 = &off_282A6AB48;
      v15 = swift_allocObject();
      v32[0] = v15;
      v16 = *(v11 + 1);
      *(v15 + 16) = *v11;
      *(v15 + 32) = v16;
      *(v15 + 48) = *(v11 + 2);
      *(v15 + 64) = *(v11 + 6);
      type metadata accessor for SharedWithYouFeedBlueprintModifierFactory();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v35, v14);
      v19 = MEMORY[0x28223BE20](v18);
      v21 = (v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21, v19);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
      v24 = MEMORY[0x28223BE20](v23);
      v26 = v31 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26, v24);
      v28 = *v21;
      v17[5] = v14;
      v17[6] = &off_282A8B8E8;
      v17[2] = v28;
      v17[10] = &type metadata for SharedWithYouFeedSectionFactory;
      v17[11] = &off_282A6AB48;
      v29 = swift_allocObject();
      v17[7] = v29;
      v30 = *(v26 + 1);
      *(v29 + 16) = *v26;
      *(v29 + 32) = v30;
      *(v29 + 48) = *(v26 + 2);
      *(v29 + 64) = *(v26 + 6);
      __swift_destroy_boxed_opaque_existential_1(v32);
      __swift_destroy_boxed_opaque_existential_1(v35);
      __swift_destroy_boxed_opaque_existential_1(v36);
      __swift_destroy_boxed_opaque_existential_1(v38);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2190B29C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE9E20, &protocol descriptor for HeadlineModelFactoryType, 1);
  result = sub_219BE1E34();
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
    result = sub_219BE1E34();
    if (v6)
    {
      a2[3] = &type metadata for SharedWithYouFeedSectionFactory;
      a2[4] = &off_282A6AB48;
      v5 = swift_allocObject();
      *a2 = v5;
      result = sub_2186CB1F0(&v8, v5 + 16);
      *(v5 + 56) = v6;
      *(v5 + 64) = v7;
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

uint64_t sub_2190B2ADC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987294(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2190B62DC(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2190B61F0(0);
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

void sub_2190B2BC4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2190B6A88(0);
  if (sub_219BE1E24())
  {
    sub_2190B77CC(0);
    swift_allocObject();
    sub_218713920(&qword_27CC15DD0, sub_2190B6A88, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2190B2CA8(void *a1)
{
  sub_2190B7778(0, &qword_280EE3A90, MEMORY[0x277D6EB30]);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SharedWithYouFeedBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6BC4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6CD0(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2190B6A88(0);
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_2190B2E28(uint64_t a1, void *a2)
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
      v12 = sub_218713920(&unk_280E90FE0, MEMORY[0x277D32C00], MEMORY[0x277D32BF8]);
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

void *sub_2190B3008(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6764(0);
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
    sub_2190B6CD0(0);
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2190B31B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6418(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_2190B62DC(0);
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

uint64_t sub_2190B3308(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_2190B334C(void *a1)
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
      type metadata accessor for SharedWithYouFeedBlueprintLayoutBuilder();
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

void *sub_2190B3438(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987294(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6418(0);
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
  sub_2190B7020(0);
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
    sub_218713920(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_2190B6D64(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_2190B3744(uint64_t *a1, void *a2)
{
  v3 = sub_219BE8FC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_218713920(&qword_280E8FF80, MEMORY[0x277D34268], MEMORY[0x277D34260]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2190B6EA0(0);
  v8 = v7;
  v9 = sub_219BE1E24();
  v10 = v9;
  if (v9)
  {
    v9 = sub_218713920(&qword_27CC15DB8, sub_2190B6EA0, MEMORY[0x277D6E070]);
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
  sub_2190B6CD0(0);
  v12 = v11;
  v13 = sub_219BE1E24();
  v14 = v13;
  if (v13)
  {
    v13 = sub_218713920(&qword_27CC15DB0, sub_2190B6CD0, MEMORY[0x277D6E7D0]);
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
  (*(v4 + 104))(v6, *MEMORY[0x277D6E3C8], v3);
  sub_219BE86C4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70, MEMORY[0x277D34270], 0);
  sub_219BE1E34();
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2190B6764(0);
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
      sub_218713920(&qword_27CC15C68, sub_2190B6764, MEMORY[0x277D6DF38]);

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

uint64_t sub_2190B3B3C(uint64_t a1, uint64_t a2)
{
  sub_2190B7778(0, &qword_27CC15DC0, sub_218C8AAD8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  sub_218C8AAD8(0);
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
    sub_218987294(0);
    sub_218713920(&unk_27CC12F70, sub_218987294, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    v12 = sub_219462998();
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
    sub_218987294(0);
    sub_218713920(&unk_27CC12F70, sub_218987294, MEMORY[0x277D6D8C8]);
    sub_219BE7B94();

    (*(v7 + 56))(v4, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v4, 1, 1, v6);
  }

  sub_219BE6684();
  type metadata accessor for SharedWithYouFeedSectionDescriptor(0);
  type metadata accessor for SharedWithYouFeedModel(0);
  sub_218713920(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
  sub_218713920(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
  sub_219BF44D4();
  sub_2190B7700(v4);
  type metadata accessor for SharedWithYouFeedServiceConfig(0);
  sub_218713920(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig, &unk_219C438B8);
  v15 = sub_219BE6624();

  sub_21885AB78(v12);
  return v15;
}

void *sub_2190B3F14(void *a1)
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

uint64_t sub_2190B4054(void *a1)
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
  sub_2190B6594(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B681C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B699C(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2190B6418(0);
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2190B41B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6418(0);
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

uint64_t sub_2190B4270()
{
  v0 = sub_219BE80A4();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v1);
  return sub_219BE9574();
}

uint64_t sub_2190B4340(void *a1)
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

void sub_2190B4410(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987294(0);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6764(0);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SharedWithYouFeedBlueprintViewCellProvider();
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
  type metadata accessor for SharedWithYouFeedBlueprintViewSupplementaryViewProvider();
  if (sub_219BE1E24())
  {
    *&v8[0] = v3;
    sub_2190B6594(0);
    v7 = objc_allocWithZone(v6);
    sub_219BE9B64();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2190B45AC(void *a1, void *a2)
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

void *sub_2190B46B4(uint64_t a1, void *a2)
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

void *sub_2190B4790(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987294(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B6764(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190B7020(0);
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

  sub_218713920(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800, MEMORY[0x277D6E170], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_2190B681C(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2190B49E0(uint64_t a1, void *a2)
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
  sub_2190B70B4(0);
  if (sub_219BE1E24())
  {
    sub_218713920(&qword_27CC15DA8, sub_2190B70B4, MEMORY[0x277D6E7F8]);
  }

  sub_219BE9774();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2190B6D64(0);
  sub_219BE1E24();
  return sub_219BE9714();
}

uint64_t sub_2190B4B6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987294(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2190B6764(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2190B699C(0);
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

void *sub_2190B4C2C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v24)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E91810, MEMORY[0x277D32340], 0);
    result = sub_219BE1E34();
    v3 = v21;
    if (v21)
    {
      v4 = v22;
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for BaseStyler(0);
      v20[3] = v11;
      v12 = sub_218713920(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
      v20[4] = v12;
      v20[0] = v10;
      type metadata accessor for SharedWithYouFeedBlueprintViewCellProvider();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v20, v11);
      v15 = MEMORY[0x28223BE20](v14);
      v17 = (v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17, v15);
      v19 = *v17;
      v13[7] = v11;
      v13[8] = v12;
      v13[3] = 0;
      v13[4] = v19;
      swift_unknownObjectWeakInit();
      v13[9] = v3;
      v13[10] = v4;
      __swift_destroy_boxed_opaque_existential_1(v20);
      __swift_destroy_boxed_opaque_existential_1(v23);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2190B4EE4(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SharedWithYouFeedViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A60980;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void sub_2190B4F78(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0, MEMORY[0x277D32C08], 1);
  sub_218718690(a1, v4);
  v2 = swift_allocObject();
  sub_2186CB1F0(v4, v2 + 16);
  sub_219BE1E14();

  if (v6)
  {
    type metadata accessor for SharedWithYouFeedBlueprintViewSupplementaryViewProvider();
    v3 = swift_allocObject();
    sub_2186CB1F0(&v5, v3 + 16);
  }

  else
  {
    __break(1u);
  }
}