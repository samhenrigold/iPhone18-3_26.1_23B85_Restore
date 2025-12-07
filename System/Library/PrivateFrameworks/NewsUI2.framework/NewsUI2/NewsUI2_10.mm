uint64_t objectdestroyTm_87()
{

  return swift_deallocObject();
}

uint64_t objectdestroyTm_88()
{
  v1 = type metadata accessor for AudioFeedTrack(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2;
  swift_unknownObjectRelease();

  v4 = v0 + v2 + v1[8];

  if (*(v4 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v4 + 32));
  }

  v5 = type metadata accessor for AudioFeedTrack.Configurables(0);
  v6 = v5[7];
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v4 + v6, 1, v7))
  {
    (*(v8 + 8))(v4 + v6, v7);
  }

  if (*(v4 + v5[8] + 8) != 1)
  {
  }

  v9 = v5[9];
  v10 = sub_219BE7434();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v4 + v9, 1, v10))
  {
    (*(v11 + 8))(v4 + v9, v10);
  }

  v12 = v3 + v1[12];
  sub_219BDD6E4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
    sub_218C16270(0);
    v15 = *(v14 + 48);
    v16 = sub_219BDE3B4();
    (*(*(v16 - 8) + 8))(v12 + v15, v16);
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_89()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_90()
{
  v1 = (type metadata accessor for MyMagazinesMagazineFeedGroupEmitter(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218B8773C(0);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186F9410(0, &qword_280E919C0, MEMORY[0x277D321A0]);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs(0);

  v7 = *(v6 + 24);
  sub_2186F9410(0, &qword_280E91830, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[10]));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_91()
{
  v1 = sub_219BE51D4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_219BE5134();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_92()
{

  sub_21990B56C(*(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_93()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_94()
{
  sub_219928A80(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
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

uint64_t objectdestroyTm_95()
{
  v1 = type metadata accessor for WebLinkRouteModel(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  type metadata accessor for WebLinkRouteModel.URLType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_219BDB954();
    v6 = *(v5 - 8);
    if (!(*(v6 + 48))(v3 + v4, 1, v5))
    {
      (*(v6 + 8))(v3 + v4, v5);
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_96()
{
  sub_21997C2A0(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_97()
{
  sub_218B08348(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 57));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_98()
{
  v1 = (type metadata accessor for SportsRecordTagFeedGroupEmitter(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_2197B889C(0);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[8];
  sub_2189AD5C8(0);
  (*(*(v6 - 8) + 8))(v2 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[9]));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[11]));
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[12]));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_99()
{
  v1 = (type metadata accessor for EngagementPresentation(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v13 = *(*v1 + 64);
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = sub_219BE3514();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  v7 = v1[8];
  v8 = sub_219BE3794();
  (*(*(v8 - 8) + 8))(v0 + v2 + v7, v8);

  v9 = v1[10];
  v10 = sub_219BE3C04();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v0 + v2 + v9, v10);
  }

  (*(v4 + 8))(v0 + ((v2 + v13 + v5) & ~v5), v3);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_100()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_101()
{
  swift_unownedRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_102()
{
  v1 = (type metadata accessor for MySportsTopicTagFeedGroupEmitter(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_219AB5D90(0, &qword_280E92260, type metadata accessor for MySportsTopicTagFeedGroupConfigData, sub_219AAA07C, sub_219AAA0B0);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = type metadata accessor for MySportsTopicTagFeedGroupKnobs(0);

  v7 = *(v6 + 72);
  v8 = sub_219BEF244();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[8]));
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[9]));

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[13]));

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[15]));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_103()
{
  v1 = (type metadata accessor for HighlightsTagFeedGroupEmitter(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2197B8704(0);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for HighlightsTagFeedGroupKnobs(0);

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[8]));
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[9]));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_104()
{
  v1 = (type metadata accessor for SportsEventInfoTagFeedGroupEmitter(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_2197B87D0(0);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2189AD5C8(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for SportsEventInfoTagFeedGroupKnobs(0);

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[8]));
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[9]));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_105()
{
  v1 = sub_219BE0C74();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_106(void (*a1)(void))
{
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  a1(*(v1 + 16));
  (*(v4 + 8))(v1 + v5, v3);

  return swift_deallocObject();
}

void *sub_2187D30B0(void *a1, uint64_t a2)
{
  v5 = sub_219BE7494();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_2186C709C(0, &unk_280EA8DB0, &protocol descriptor for MagazinesBadgingCoordinatorType, 1);
  result = sub_219BE1E34();
  if (v23)
  {
    sub_2186CB1F0(&v22, a1);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187D3508();
    sub_219BE74A4();
    sub_218718690(a1, &v22);
    v10 = swift_allocObject();
    *(v10 + 16) = v2;
    sub_2186CB1F0(&v22, v10 + 24);
    (*(v6 + 104))(v8, *MEMORY[0x277D6DA00], v5);

    v11 = sub_219BE7484();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v13 = objc_opt_self();
    v14 = v11;
    v15 = [v13 bundleForClass_];
    sub_219BDB5E4();

    if (qword_280E92EE0 != -1)
    {
      swift_once();
    }

    v16 = qword_280F61978;
    v17 = objc_allocWithZone(MEMORY[0x277D75B28]);
    v18 = v16;
    v19 = sub_219BF53D4();

    v20 = [v17 initWithTitle:v19 image:v18 tag:a2];

    [v14 setTabBarItem_];
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187D33E0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_2187D3420(uint64_t a1)
{
  sub_2187733B4(&qword_280EDB768, type metadata accessor for TodayFeedGroup, &unk_219C0DF50);

  return sub_219BE2324();
}

uint64_t sub_2187D348C(uint64_t a1)
{
  v2 = sub_2187733B4(&qword_280EDB780, type metadata accessor for TodayFeedGroup, &unk_219C0DEC8);

  return MEMORY[0x282191918](a1, v2);
}

uint64_t sub_2187D3508()
{
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store + 24];
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI227MagazinesBadgingCoordinator_store], v1);
  (*(v2 + 8))(v1, v2);
  sub_219BE1A44();

  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v3 = sub_219BF66A4();
  *(swift_allocObject() + 16) = v0;
  v4 = v0;
  sub_219BE21A4();

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_219BE1A04();
  __swift_destroy_boxed_opaque_existential_1(v8);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = v4;
  sub_2187D36C4(sub_218BB5310, v5);
}

uint64_t sub_2187D3688()
{

  return swift_deallocObject();
}

uint64_t sub_2187D36C4(uint64_t a1, uint64_t a2)
{
  sub_21870F290(0, &unk_280EE7A80, MEMORY[0x277D6CB90]);
  swift_allocObject();
  v4 = sub_219BE2244();
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = v4;
  v10[4] = sub_218AFE0E8;
  v10[5] = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_218793E0C;
  v10[3] = &block_descriptor_58;
  v7 = _Block_copy(v10);

  [v5 scheduleLowPriorityBlock_];
  _Block_release(v7);
  result = MEMORY[0x21CEB8FB0]();
  if (result)
  {
    v9 = result;

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187D3824()
{
  v2 = sub_219BDBD64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v3 + 8))(v5, v2);
  sub_219BED4B4();
  return swift_storeEnumTagMultiPayload();
}

void sub_2187D3930(void *a1)
{
  swift_unknownObjectWeakAssign();
}

id sub_2187D397C(uint64_t a1)
{
  v3 = sub_219BE7494();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE74A4();
  sub_218718690(v1 + 16, v20);
  v7 = swift_allocObject();
  sub_2186CB1F0(v20, v7 + 16);
  (*(v4 + 104))(v6, *MEMORY[0x277D6DA00], v3);
  v8 = sub_219BE7484();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = objc_opt_self();
  v11 = v8;
  v12 = [v10 bundleForClass_];
  sub_219BDB5E4();

  if (qword_280E92F00 != -1)
  {
    swift_once();
  }

  v13 = qword_280F61990;
  v14 = objc_allocWithZone(MEMORY[0x277D75B28]);
  v15 = v13;
  v16 = sub_219BF53D4();

  v17 = [v14 initWithTitle:v16 image:v15 tag:a1];

  [v11 setTabBarItem_];
  return v11;
}

id sub_2187D3C18(uint64_t a1)
{
  v2 = sub_219BE7494();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE74A4();
  (*(v3 + 104))(v5, *MEMORY[0x277D6DA00], v2);

  v6 = sub_219BE7484();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();
  v9 = v6;
  v10 = [v8 bundleForClass_];
  sub_219BDB5E4();

  if (qword_280E92EF8 != -1)
  {
    swift_once();
  }

  v11 = qword_280F61988;
  v12 = objc_allocWithZone(MEMORY[0x277D75B28]);
  v13 = v11;
  v14 = sub_219BF53D4();

  v15 = [v12 initWithTitle:v14 image:v13 tag:a1];

  [v9 setTabBarItem_];
  return v9;
}

void *sub_2187D3E88(uint64_t a1)
{
  v3 = sub_219BE7494();
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 104))(&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DA08], v4);
  sub_218718690(v1 + 16, v21);
  v7 = swift_allocObject();
  sub_2186CB1F0(v21, v7 + 16);
  v8 = objc_allocWithZone(sub_219BE74A4());
  v9 = sub_219BE7464();
  if (sub_219BED0C4())
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D75B28]) initWithTabBarSystemItem:8 tag:a1];
    if (qword_280E92ED8 != -1)
    {
      swift_once();
    }

    [v10 setImage_];
    [v9 setTabBarItem_];
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = objc_opt_self();
    v13 = v9;
    v14 = [v12 bundleForClass_];
    sub_219BDB5E4();

    if (qword_280E92ED8 != -1)
    {
      swift_once();
    }

    v15 = qword_280F61970;
    v16 = objc_allocWithZone(MEMORY[0x277D75B28]);
    v17 = v15;
    v18 = sub_219BF53D4();

    v10 = [v16 initWithTitle:v18 image:v17 tag:a1];

    [v13 setTabBarItem_];
  }

  return v9;
}

uint64_t sub_2187D41D4(void *a1, uint64_t a2)
{
  v45 = a1;
  v50 = a2;
  v53 = sub_219BE5F04();
  v3 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEB674();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = "e Audio tab bar item";
  sub_219BEB604();
  v7 = *(a2 + 72);
  v8 = MEMORY[0x277D6D3B8];
  sub_2187C854C(0, &qword_280E8BFF8, MEMORY[0x277D6D3B8], MEMORY[0x277D84560]);
  v52 = v9;
  v10 = *(v3 + 72);
  v11 = *(v3 + 80);
  v40 = 2 * v10;
  v51 = v10;
  v12 = swift_allocObject();
  v41 = xmmword_219C09EC0;
  *(v12 + 16) = xmmword_219C09EC0;
  v13 = v7;
  sub_219BE5EC4();
  sub_219BE5EE4();
  v54 = v12;
  v14 = sub_21871D400(&qword_280EE5D50, 255, MEMORY[0x277D6D3B8], MEMORY[0x277D6D3C0]);
  sub_2187C854C(0, &qword_280E8F518, v8, MEMORY[0x277D83940]);
  v16 = v15;
  v17 = sub_2187C8634();
  sub_219BF7164();
  sub_219BE5F14();
  swift_allocObject();
  v36 = v13;
  v35 = v45;
  v18 = sub_219BE5E74();
  v19 = *(v46 + 120);
  v37 = v18;
  sub_219BE5954();
  sub_219BEB5E4();
  v43 = v11;
  v20 = swift_allocObject();
  *(v20 + 16) = v41;
  v42 = (v11 + 32) & ~v11;
  sub_219BE5EC4();
  sub_219BE5EE4();
  v54 = v20;
  v44 = v17;
  v45 = v16;
  v46 = v14;
  sub_219BF7164();
  swift_allocObject();
  v21 = v35;
  v22 = v49;
  v23 = v21;
  v36 = sub_219BE5E74();
  sub_219BE5954();
  v24 = sub_2187D4814(6u);
  if (v24)
  {
    v47 = v24;
    sub_219BEB5E4();
    v25 = swift_allocObject();
    *(v25 + 16) = v41;
    sub_219BE5EC4();
    sub_219BE5ED4();
    v54 = v25;
    sub_219BF7164();
    swift_allocObject();
    v26 = v23;
    v27 = v47;
    sub_219BE5E74();
    sub_219BE5954();
  }

  *&v41 = v23;
  v47 = v19;
  if (qword_280EE35C8 != -1)
  {
    swift_once();
  }

  v35 = "_TtC7NewsUI210TipsModule";
  v28 = v39;
  v29 = __swift_project_value_buffer(v39, qword_280F62440);
  (*(v38 + 16))(v22, v29, v28);
  v30 = *(v50 + 40);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_219C0B8C0;
  v32 = v30;
  sub_219BE5EC4();
  sub_219BE5ED4();
  sub_219BE5EF4();
  v54 = v31;
  sub_219BF7164();
  swift_allocObject();
  v33 = v41;
  sub_219BE5E84();
  sub_219BE5954();
}

void *sub_2187D4814(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v2 = *(v1 + 40);
      }

      else
      {
        v2 = *(v1 + 48);
      }
    }

    else
    {
      v2 = *(v1 + 32);
    }

    goto LABEL_13;
  }

  if (a1 <= 4u)
  {
    if (a1 == 3)
    {
      v2 = *(v1 + 56);
    }

    else
    {
      v2 = *(v1 + 64);
    }

    goto LABEL_13;
  }

  if (a1 == 5)
  {
    v2 = *(v1 + 72);
LABEL_13:
    v3 = v2;
    return v2;
  }

  v5 = [*(v1 + 72) _children];
  sub_2187C0264();
  v6 = sub_219BF5924();

  if (v6 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v8 = 0;
    v9 = 0x7548656C7A7A7570;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v10 = *(v6 + 8 * v8 + 32);
      }

      v2 = v10;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v10 _identifier];
      v13 = v9;
      v14 = sub_219BF5414();
      v16 = v15;

      if (v14 == v13 && v16 == 0xE900000000000062)
      {

        return v2;
      }

      v9 = v13;
      v18 = sub_219BF78F4();

      if (v18)
      {

        return v2;
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_35:

  return 0;
}

uint64_t sub_2187D4A3C()
{
  v0 = sub_219BEB674();
  __swift_allocate_value_buffer(v0, qword_280F62440);
  __swift_project_value_buffer(v0, qword_280F62440);
  return sub_219BEB594();
}

uint64_t sub_2187D4AC4(uint64_t a1, uint64_t a2)
{
  sub_2187D4B28(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2187D4B28(uint64_t a1)
{
  if (!qword_280E9DA68)
  {
    sub_2186C709C(255, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, 1);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E9DA68);
    }
  }
}

void sub_2187D4B94()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_navigationControllers);
  v13 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v2)
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x21CECE0F0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        v2 = sub_219BF7214();
        goto LABEL_3;
      }

      v7 = *&v4[qword_280EA07E0];
      v8 = [v12 traitCollection];
      v9 = [v8 horizontalSizeClass];

      if (v9 > 2)
      {
        if ((v7 & 4) != 0)
        {
LABEL_15:
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
          goto LABEL_6;
        }
      }

      else if ((v7 & qword_219C519B0[v9]) != 0)
      {
        goto LABEL_15;
      }

LABEL_6:
      ++v3;
      if (v6 == v2)
      {
        v10 = v13;
        goto LABEL_19;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_19:

  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);

    sub_219BF7534();
  }

  else
  {

    sub_219BF7924();
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
  }

  sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
  v11 = sub_219BF5904();

  [v12 setViewControllers_];
}

void sub_2187D4E90(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_2187D4EE4(v3);
}

uint64_t sub_2187D4EE4(char a1)
{
  v6.receiver = v1;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillAppear_, a1 & 1);
  if (sub_219BED0C4())
  {
    v3 = [v1 navigationBar];
    v4 = [objc_opt_self() labelColor];
    [v3 setTintColor_];
  }

  result = sub_219BED0C4();
  if ((result & 1) == 0)
  {
    return [v1 setNavigationBarHidden:1 animated:0];
  }

  return result;
}

uint64_t sub_2187D4FB8(uint64_t a1)
{
  sub_219BE6AA4();
  swift_getObjectType();
  sub_219BEAF34();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE6FF4();

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_219BE1A04();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_2187D5154()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2187D518C(uint64_t a1)
{
  sub_219BE6AA4();
  swift_getObjectType();
  sub_2187C3D44(0, &qword_280EE3930, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBE8]);
  sub_219BEA9A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE6FE4();

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_219BE1A04();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_2187D5310(uint64_t a1)
{
  sub_219BE6AA4();
  swift_getObjectType();
  if (qword_280EE3848 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_219BE7084();

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_219BE1A04();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_2187D542C()
{
  sub_218724DE0(0, &unk_280EE3970, MEMORY[0x277D6EBD0]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v6 - v3;
  sub_218724DE0(0, &qword_280EE3930, MEMORY[0x277D6EBE8]);
  (*(v2 + 104))(v4, *MEMORY[0x277D6EBC8], v1);
  result = sub_219BEA914();
  qword_280F62498 = result;
  return result;
}

void sub_2187D5564(void *a1)
{
  v1 = a1;
  sub_2187D55AC();
}

void sub_2187D55AC()
{
  ObjectType = swift_getObjectType();
  v12.receiver = v0;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, sel_viewSafeAreaInsetsDidChange);
  if (sub_219BED0C4())
  {
    v2 = [v0 tabBarController];
    if (v2)
    {
      v3 = v2;
      if (sub_219BED0C4())
      {
        v11.receiver = v0;
        v11.super_class = ObjectType;
        v4 = objc_msgSendSuper2(&v11, sel__hostingNavigationBar);
        if (!v4)
        {
LABEL_16:

          return;
        }
      }

      else
      {
        v5 = [v0 topViewController];
        if (!v5)
        {
          v5 = *&v0[qword_280EA07F0];
        }

        v6 = v5;
        v4 = [v5 _hostingNavigationBar];

        if (!v4)
        {
          goto LABEL_16;
        }
      }

      v7 = [v4 topItem];
      if (v7)
      {
        v8 = v7;
        v9 = [v7 titleView];

        if (v9)
        {
          sub_219BE9C84();
          if (swift_dynamicCastClass())
          {
            sub_219BE9C74();
            v10 = v9;
          }

          else
          {
            v10 = v4;
            v4 = v3;
            v3 = v9;
          }
        }
      }

      goto LABEL_16;
    }
  }
}

BOOL sub_2187D5728()
{
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9AB8 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  v0 = v8;
  if (v8 < 0)
  {
    sub_219BDC8B4();
    if (qword_280EE9AD0 != -1)
    {
      swift_once();
    }

    sub_219BDC8A4();

    v0 = v8;
  }

  if (v0 < 1)
  {
    if (qword_280EE6088 != -1)
    {
      swift_once();
    }

    v6 = sub_219BE5434();
    __swift_project_value_buffer(v6, qword_280F627C0);
    v2 = sub_219BE5414();
    v3 = sub_219BF6214();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134349312;
      *(v4 + 4) = v0;
      *(v4 + 12) = 2050;
      *(v4 + 14) = 1;
      v5 = "Terms and Conditions have NOT been agreed to, versionCompleted=%{public}ld, minimumRequired=%{public}ld";
      goto LABEL_16;
    }
  }

  else
  {
    if (qword_280EE6088 != -1)
    {
      swift_once();
    }

    v1 = sub_219BE5434();
    __swift_project_value_buffer(v1, qword_280F627C0);
    v2 = sub_219BE5414();
    v3 = sub_219BF6214();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134349312;
      *(v4 + 4) = v0;
      *(v4 + 12) = 2050;
      *(v4 + 14) = 1;
      v5 = "Terms and Conditions have been agreed to, versionCompleted=%{public}ld, minimumRequired=%{public}ld";
LABEL_16:
      _os_log_impl(&dword_2186C1000, v2, v3, v5, v4, 0x16u);
      MEMORY[0x21CECF960](v4, -1, -1);
    }
  }

  return v0 > 0;
}

uint64_t sub_2187D59C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = sub_219BDC934();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186C6588(0, &qword_280EE9060, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  sub_219BF5414();
  v13[2] = a3;
  v13[3] = a3;
  v13[1] = 0x7FFFFFFFFFFFFFFFLL;
  (*(v8 + 104))(v10, *MEMORY[0x277D6D090], v7);
  sub_219BDC9D4();
  v11 = sub_219BDC9A4();

  *a5 = v11;
  return result;
}

void *sub_2187D5B90(void *a1, void *a2)
{
  v3 = v2;
  sub_2187B13AC(v37);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  sub_2186C709C(0, qword_280EBF670, &protocol descriptor for BootstrapFlowProviderType, 1);
  result = sub_219BE1E34();
  if (v36)
  {
    sub_2186CB1F0(&v35, &v38);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
    sub_2187B9A9C(v37);
    __swift_destroy_boxed_opaque_existential_1(&v38);
    if (LOBYTE(v37[0]) != 3)
    {
      goto LABEL_6;
    }

    v7 = [a2 traitCollection];
    v8 = sub_2187B7374(a1, v7);

    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = sub_2187BB13C(&qword_280EDDC78, type metadata accessor for NewsActivityInfoDeserializer);
    NewsActivityInfoDeserializer.deserialize(userActivity:)(v8, &v38);

    v10 = v38;
    if ((~v38 & 0xF000000000000007) == 0)
    {

LABEL_6:
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
      v11 = sub_219BF6F44();
      v12 = sub_219BF6214();
      sub_219BE5314("Dropping state restoration activity", 35, 2, &dword_2186C1000, v11, v12, MEMORY[0x277D84F90]);

      sub_2186F85E8(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE3014();
    }

    v13 = CACurrentMediaTime();
    v14 = *&v3[qword_280EDDDD0];
    *&v3[qword_280EDDDD0] = v10;
    sub_2189EB264(v10);
    sub_218970170(v14);
    sub_2187B7D90(&qword_280EDDC88, sub_2186CD650);
    LOBYTE(v38) = 1;
    sub_2191C2AF4(0);
    swift_allocObject();
    sub_219BE2A64();
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    *(v15 + 24) = a2;
    sub_2191C2BCC(v10);
    v16 = a2;
    sub_219BE2A84();

    sub_219BE1E64();

    LOBYTE(v38) = 1;
    swift_allocObject();

    sub_219BE2A64();
    v17 = swift_allocObject();
    *(v17 + 16) = v13;
    *(v17 + 24) = v16;
    v18 = v16;
    sub_219BE2A94();

    sub_219BE1E64();

    sub_2187B7D90(&qword_280EDDD70, sub_2186CF94C);
    v19 = swift_allocObject();
    *(v19 + 16) = v10;
    *(v19 + 24) = v3;
    sub_2191C2BCC(v10);
    v20 = v3;
    sub_219BE6434();

    v21 = objc_opt_self();
    v22 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v23 = [v21 sharedApplication];
    v24 = [v23 delegate];

    if (v24)
    {
      type metadata accessor for AppDelegate();
      if (swift_dynamicCastClass())
      {

        swift_unknownObjectRelease();
        v25 = swift_allocObject();
        *(v25 + 16) = v18;
        *(v25 + 24) = v20;
        v26 = v18;
        v27 = v20;
        sub_219BE20F4();

        v22 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;

        goto LABEL_12;
      }

      swift_unknownObjectRelease();
    }

    v40 = 0;
    v38 = 0u;
    v39 = 0u;
LABEL_12:
    sub_2187B1DA0(&v38, &unk_280EE7F10, &unk_280EE7F20, MEMORY[0x277D6C9C0]);
    v28 = [v21 v22[336]];
    v29 = [v28 delegate];

    if (v29)
    {
      type metadata accessor for AppDelegate();
      if (swift_dynamicCastClass())
      {

        swift_unknownObjectRelease();
        v30 = swift_allocObject();
        *(v30 + 16) = v18;
        *(v30 + 24) = v20;
        v31 = v18;
        v32 = v20;
        sub_219BE20F4();

LABEL_17:
        sub_2187B1DA0(&v38, &unk_280EE7F10, &unk_280EE7F20, MEMORY[0x277D6C9C0]);
        LOBYTE(v38) = 0;

        sub_219BE1E74();

        MEMORY[0x28223BE20](v33);
        sub_2186F85E8(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
        swift_allocObject();
        v34 = sub_219BE30B4();
        sub_218970170(v10);

        return v34;
      }

      swift_unknownObjectRelease();
    }

    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2187D62C0()
{

  return swift_deallocObject();
}

void sub_2187D6304(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a2;
  v139 = a1;
  v8 = MEMORY[0x277D83D88];
  sub_2186DD934(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9);
  v133 = &v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v132 = &v124 - v12;
  v13 = sub_219BE84F4();
  v142 = *(v13 - 8);
  v143 = v13;
  MEMORY[0x28223BE20](v13);
  v140 = v14;
  v141 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDB954();
  v16 = *(v15 - 8);
  v144 = v15;
  v145 = v16;
  MEMORY[0x28223BE20](v15);
  v131 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v124 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v124 - v22;
  MEMORY[0x28223BE20](v24);
  v134 = &v124 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v124 - v27;
  sub_2186DD934(0, &unk_280EE9D60, sub_2187B0408, v8);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v124 - v33;
  if (sub_219BE84E4())
  {
    if (!a3)
    {
      goto LABEL_19;
    }

    v128 = v31;
    v129 = 1;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_19;
    }

    v128 = v31;
    v35 = sub_2187BB13C(&qword_280EDDC78, type metadata accessor for NewsActivityInfoDeserializer);
    v129 = sub_2187D7340();
  }

  v36 = [a3 sourceApplication];
  v137 = v4;
  v135 = a4;
  if (v36)
  {
    v37 = v36;
    v130 = sub_219BF5414();
    v136 = v38;
  }

  else
  {
    v130 = 0;
    v136 = 0;
  }

  v39 = [a3 URLContexts];
  sub_2186C6148(0, &unk_280E8E4A0, 0x277D757D8);
  sub_21879FA10(&qword_280E8E498, &unk_280E8E4A0, 0x277D757D8);
  v40 = sub_219BF5D44();

  v41 = sub_2187BC23C(v40);

  if (v41)
  {
    sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_219C09BA0;
    *(v42 + 56) = MEMORY[0x277D837D0];
    *(v42 + 64) = sub_2186FC3BC();
    v43 = v138;
    v44 = v139;
    *(v42 + 32) = v139;
    *(v42 + 40) = v43;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);

    v45 = sub_219BF6F44();
    v46 = sub_219BF6214();
    sub_219BE5314("Assigning scene activation URL context due to app open navigation, sceneSession=%{public}@", 90, 2, &dword_2186C1000, v45, v46, v42);

    sub_2187B0408(0);
    v48 = v47;
    v49 = &v34[*(v47 + 48)];
    v50 = [v41 URL];
    sub_219BDB8B4();

    (*(v145 + 32))(v34, v28, v144);
    v51 = [v41 options];
    v52 = [v51 sourceApplication];

    if (v52)
    {
      v53 = sub_219BF5414();
      v55 = v54;

      v56 = v55;
      v57 = v137;
    }

    else
    {
      v56 = v136;
      v57 = v137;
      v53 = v130;
    }

    *v49 = v53;
    v49[1] = v56;
    (*(*(v48 - 8) + 56))(v34, 0, 1, v48);
    swift_beginAccess();

    sub_2199D63A8(v34, v44, v43);
    swift_endAccess();
    v71 = v141;
    v70 = v142;
    v72 = v143;
    (*(v142 + 16))(v141, v135, v143);
    v73 = (*(v70 + 80) + 32) & ~*(v70 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = v57;
    *(v74 + 24) = v41;
    (*(v70 + 32))(v74 + v73, v71, v72);
    v75 = v57;
    v76 = v41;
    sub_2191BC388(sub_2191C2A90, v74);

    return;
  }

  v58 = [a3 userActivities];
  sub_2186C6148(0, &qword_280E8E650, 0x277CC1EF0);
  sub_21879FA10(&unk_280E8E630, &qword_280E8E650, 0x277CC1EF0);
  v59 = sub_219BF5D44();

  v60 = sub_2187BC25C(v59);

  if (!v60)
  {

    v5 = v137;
LABEL_19:
    v77 = *&v5[qword_280EDDCF8];
    if (v77)
    {
      v78 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v79 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v80 = swift_allocObject();
      v80[2] = v78;
      v80[3] = v79;
      v80[4] = v77;
      v80[5] = a3;
      v81 = a3;
      v82 = v77;

      sub_2191BC388(sub_2191C28F4, v80);
    }

    return;
  }

  v126 = swift_allocBox();
  v62 = v61;
  v63 = v145;
  v64 = *(v145 + 56);
  v64(v61, 1, 1, v144);
  v127 = v60;
  v65 = [v60 activityType];
  v66 = sub_219BF5414();
  v68 = v67;

  if (sub_219BF5414() == v66 && v69 == v68)
  {
  }

  else
  {
    v83 = sub_219BF78F4();

    if ((v83 & 1) == 0)
    {
LABEL_37:
      v115 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v117 = v141;
      v116 = v142;
      v118 = v143;
      (*(v142 + 16))(v141, v135, v143);
      v119 = (*(v116 + 80) + 25) & ~*(v116 + 80);
      v120 = (v140 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
      v121 = swift_allocObject();
      *(v121 + 16) = v115;
      *(v121 + 24) = v129 & 1;
      (*(v116 + 32))(v121 + v119, v117, v118);
      v122 = v127;
      *(v121 + v120) = v127;
      *(v121 + ((v120 + 15) & 0xFFFFFFFFFFFFFFF8)) = v126;

      v123 = v122;

      sub_2191BC388(sub_2191C2D8C, v121);

      return;
    }
  }

  v84 = v127;
  v85 = [v127 webpageURL];
  if (v85)
  {
    v125 = v64;
    v86 = v85;
    sub_219BDB8B4();

    v87 = *(v63 + 32);
    v88 = v134;
    v89 = v23;
    v90 = v144;
    v87(v134, v89, v144);
    v91 = sub_2187B5DEC(&qword_280EDDD18, &qword_280E8DD50, 0x277D31398);
    v92 = sub_219BDB854();
    v93 = [v91 destinationURLForURL_];

    if (v93)
    {
      sub_219BDB8B4();

      v94 = v132;
      v87(v132, v20, v90);
    }

    else
    {
      v94 = v132;
      (*(v145 + 16))(v132, v88, v90);
    }

    v95 = v87;
    v125(v94, 0, 1, v90);
    v96 = MEMORY[0x277CC9260];
    sub_2187B132C(v94, v62, &unk_280EE9D00, MEMORY[0x277CC9260]);
    v97 = v62;
    v98 = v133;
    sub_2187DB308(v97, v133, &unk_280EE9D00, v96, MEMORY[0x277D83D88], sub_2186DD934);
    v99 = v145;
    if ((*(v145 + 48))(v98, 1, v90) == 1)
    {
      (*(v99 + 8))(v88, v90);
      sub_2187455EC(v98, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186DD934);
    }

    else
    {
      v100 = v131;
      v95(v131, v98, v90);
      sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_219C09BA0;
      *(v101 + 56) = MEMORY[0x277D837D0];
      *(v101 + 64) = sub_2186FC3BC();
      v102 = v138;
      *(v101 + 32) = v139;
      *(v101 + 40) = v102;
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);

      v103 = sub_219BF6F44();
      v104 = sub_219BF6214();
      sub_219BE5314("Assigning scene activation URL context due to user activity continuation, sceneSession=%{public}@", 97, 2, &dword_2186C1000, v103, v104, v101);

      sub_2187B0408(0);
      v106 = v105;
      v107 = &v128[*(v105 + 48)];
      v108 = v128;
      (*(v99 + 16))();
      v109 = [v127 ts_sourceApplication];
      if (v109)
      {
        v110 = v109;
        v111 = sub_219BF5414();
        v113 = v112;
      }

      else
      {
        v113 = v136;

        v111 = v130;
      }

      *v107 = v111;
      v107[1] = v113;
      (*(*(v106 - 8) + 56))(v108, 0, 1, v106);
      swift_beginAccess();

      sub_2199D63A8(v108, v139, v102);
      swift_endAccess();
      v114 = *(v99 + 8);
      v114(v100, v90);
      v114(v134, v90);
    }

    goto LABEL_37;
  }
}

uint64_t sub_2187D721C()
{

  return swift_deallocObject();
}

uint64_t sub_2187D726C()
{
  v1 = sub_219BE84F4();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_2187D7340()
{
  v1 = [v0 userActivities];
  sub_2186C6148(0, &qword_280E8E650, 0x277CC1EF0);
  sub_21879FA10(&unk_280E8E630, &qword_280E8E650, 0x277CC1EF0);
  v2 = sub_219BF5D44();

  v3 = sub_2187BC25C(v2);

  if (!v3)
  {
    return 1;
  }

  NewsActivityInfoDeserializer.deserialize(userActivity:)(v3, &v10);
  v4 = v10;
  if ((~v10 & 0xF000000000000007) != 0)
  {
    v5 = NewsActivity2.activityTraits.getter();
    if (v5)
    {
      v6 = *(v5 + 2);
      v7 = v5 + 32;
      while (1)
      {
        if (!v6)
        {
          sub_218970170(v4);

          goto LABEL_12;
        }

        if (!*v7)
        {
          break;
        }

        v8 = sub_219BF78F4();

        ++v7;
        --v6;
        if (v8)
        {
          goto LABEL_13;
        }
      }

LABEL_13:
      sub_218970170(v4);

      return 0;
    }

    else
    {

      sub_218970170(v4);
      return 1;
    }
  }

  else
  {
LABEL_12:

    return 1;
  }
}

void sub_2187D7560(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() ams_shieldSignInOrCreateFlows];
  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09BA0;
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);

  v24 = sub_219BF6F44();
  v8 = sub_219BF6214();
  if (v6)
  {
    sub_219BE5314("Need to Shield the window, sceneSession=%{public}@", 50, 2, &dword_2186C1000, v24, v8, v7);

    v9 = [objc_opt_self() effectWithStyle_];
    v10 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    v11 = [a1 rootViewController];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 view];

      if (v13)
      {
        v14 = v10;
        [v13 bounds];
        [v14 setFrame_];
        [v14 setAutoresizingMask_];

        [v13 addSubview_];
      }
    }

    v15 = [objc_allocWithZone(MEMORY[0x277CF0380]) init];
    v16 = [a1 rootViewController];
    [v15 setPresentingViewController_];

    v17 = v15;
    [v17 setAuthenticationType_];
    v18 = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
    if (v18)
    {
      v19 = v18;
      v20 = swift_allocObject();
      v20[2] = v19;
      v20[3] = a2;
      v20[4] = a3;
      v20[5] = v10;
      aBlock[4] = sub_2191C2868;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2191BFA3C;
      aBlock[3] = &block_descriptor_38_0;
      v21 = _Block_copy(aBlock);

      v22 = v10;
      v23 = v19;

      [v23 authenticateWithContext:v17 completion:v21];
      _Block_release(v21);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_219BE5314("No need to Shield the window, sceneSession=%{public}@", 53, 2, &dword_2186C1000, v24, v8, v7);
  }
}

uint64_t sub_2187D7930()
{

  return swift_deallocObject();
}

void sub_2187D7978(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2187D79E0(v4);
}

uint64_t sub_2187D79E0(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D83D88];
  sub_2186DD934(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v110 = v5;
  MEMORY[0x28223BE20](v5);
  sub_2186DD934(0, &unk_280EE9D60, sub_2187B0408, v4);
  v112 = v6;
  MEMORY[0x28223BE20](v6);
  v111 = &v101 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v101 - v10;
  v12 = [a1 session];
  v13 = [v12 persistentIdentifier];

  v14 = sub_219BF5414();
  v16 = v15;

  v102 = qword_280EDDC30;
  v17 = *(v2 + qword_280EDDC30);
  v18 = MEMORY[0x277D837D0];
  v105 = v14;
  v19 = a1;
  if (v17 || (objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) == 0))
  {
    v108 = 0;
  }

  else
  {
    v21 = v20;
    sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_219C09BA0;
    *(v22 + 56) = v18;
    *(v22 + 64) = sub_2186FC3BC();
    *(v22 + 32) = v14;
    *(v22 + 40) = v16;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v114 = a1;

    v23 = sub_219BF6F44();
    v24 = sub_219BF6214();
    sub_219BE5314("Application running deferred bootstrapping on foreground, sceneSession=%{public}@", 81, 2, &dword_2186C1000, v23, v24, v22);

    v25 = *(v2 + qword_280EDDDC8);
    v26 = *(v2 + qword_280EDDD30);
    v27 = v26;
    v28 = v25;
    sub_2187BA030(v21, v25, v26);
    v18 = MEMORY[0x277D837D0];

    v14 = v105;
    v108 = 1;
  }

  sub_2187B1BF8(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v30 = v29;
  v31 = swift_allocObject();
  v103 = xmmword_219C09BA0;
  *(v31 + 16) = xmmword_219C09BA0;
  *(v31 + 56) = v18;
  v114 = sub_2186FC3BC();
  *(v31 + 64) = v114;
  *(v31 + 32) = v14;
  *(v31 + 40) = v16;
  v32 = sub_2186C6148(0, &qword_280E8D790, 0x277D86200);

  v109 = v32;
  v33 = sub_219BF6F44();
  v34 = sub_219BF6214();
  sub_219BE5314("Scene will enter foreground, sceneSession=%{public}@", 52, 2, &dword_2186C1000, v33, v34, v31);

  sub_2187D85B0(v35, v36);
  [v37 sceneWillEnterForeground];
  swift_unknownObjectRelease();
  sub_2187B5F14(v117);
  __swift_project_boxed_opaque_existential_1(v117, v118);
  sub_219BE2984();
  __swift_destroy_boxed_opaque_existential_1(v117);
  v38 = *(v2 + qword_280EDDDC8);
  if (v38)
  {
    v39 = v38;
    if (sub_2187B70E0())
    {
      sub_2187B7D90(&qword_280EDDCD8, sub_2187367A8);
      sub_219BED594();

      sub_219BEDE04();
    }

    else
    {
    }
  }

  v40 = qword_280EDDDA0;
  swift_beginAccess();
  v41 = *(v2 + v40);
  v42 = *(v41 + 16);
  v43 = v19;
  v115 = v2;
  v113 = v16;
  v107 = v11;
  if (v42 && (v44 = sub_21870F700(v14, v16), (v45 & 1) != 0))
  {
    v46 = v44;
    v47 = *(v41 + 56);
    sub_2187B0408(0);
    v49 = v48;
    v50 = *(v48 - 8);
    sub_2191C27FC(v47 + *(v50 + 72) * v46, v11);
    (*(v50 + 56))(v11, 0, 1, v49);
    v43 = v19;
  }

  else
  {
    sub_2187B0408(0);
    (*(*(v51 - 8) + 56))(v11, 1, 1, v51);
  }

  v106 = v43;
  swift_endAccess();
  v104 = v30;
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_219C0D560;
  sub_219BE98F4();
  swift_allocObject();
  sub_219BE98E4();
  sub_219BE98D4();

  v53 = sub_219BF5484();
  v54 = MEMORY[0x277D837D0];
  v55 = v114;
  *(v52 + 56) = MEMORY[0x277D837D0];
  *(v52 + 64) = v55;
  *(v52 + 32) = v53;
  *(v52 + 40) = v56;
  v57 = v108;
  if (v108)
  {
    v58 = 1702195828;
  }

  else
  {
    v58 = 0x65736C6166;
  }

  if (v108)
  {
    v59 = 0xE400000000000000;
  }

  else
  {
    v59 = 0xE500000000000000;
  }

  *(v52 + 96) = v54;
  *(v52 + 104) = v55;
  *(v52 + 72) = v58;
  *(v52 + 80) = v59;
  v60 = [v43 activationState];
  v61 = MEMORY[0x277D83C10];
  *(v52 + 136) = MEMORY[0x277D83B88];
  *(v52 + 144) = v61;
  *(v52 + 112) = v60;
  v63 = [sub_2187B72A8(v60 v62)];
  swift_unknownObjectRelease();
  if (v63)
  {
    v64 = 1702195828;
  }

  else
  {
    v64 = 0x65736C6166;
  }

  if (v63)
  {
    v65 = 0xE400000000000000;
  }

  else
  {
    v65 = 0xE500000000000000;
  }

  v66 = v54;
  *(v52 + 176) = v54;
  *(v52 + 184) = v55;
  *(v52 + 152) = v64;
  *(v52 + 160) = v65;
  v67 = v107;
  sub_2187DB308(v107, v111, &unk_280EE9D60, sub_2187B0408, MEMORY[0x277D83D88], sub_2186DD934);
  v68 = sub_219BF5484();
  *(v52 + 216) = v54;
  *(v52 + 224) = v55;
  *(v52 + 192) = v68;
  *(v52 + 200) = v69;
  v70 = sub_219BF6F44();
  v71 = sub_219BF6214();
  sub_219BE5314("Considering whether to return to Today feed on foreground with conditions: lastBackgroundDate=%{public}@, isBootstrapping=%{public}@, sceneActivationState=%ld, isStateRestorationAllowed=%{public}@, sceneActivationURL=%{public}@", 227, 2, &dword_2186C1000, v70, v71, v52);

  if ((v57 & 1) == 0 && (v72 = [v106 activationState], v73 = v113, v72 == 2) && (objc_msgSend(*(v115 + qword_280EDDC90), sel_isStateRestorationAllowed) & 1) == 0 && (sub_2187B0408(0), (*(*(v74 - 8) + 48))(v67, 1, v74) == 1) && (v75 = swift_allocObject(), *(v75 + 16) = v103, v76 = v114, *(v75 + 56) = v54, *(v75 + 64) = v76, *(v75 + 32) = v105, *(v75 + 40) = v73, v77 = v73, , v78 = sub_219BF6F44(), v79 = sub_219BF6214(), sub_219BE5314("Returning to Today feed for sceneSessionID=%{public}@", 53, 2, &dword_2186C1000, v78, v79, v75), , v78, v80 = v115, v117[0] = sub_2187B7D90(&qword_280EDDD70, sub_2186CF94C), v81 = swift_allocObject(), *(v81 + 16) = 0u, *(v81 + 32) = 0u, v116 = (v81 | 0x4000000000000002), sub_2186CF94C(0), sub_2187BB0F4(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]), sub_219BEB484(), sub_218932F9C(v116), , (v82 = *(v80 + qword_280EDDCF8)) != 0))
  {
    v83 = qword_280E8D8F0;
    v84 = v82;
    if (v83 != -1)
    {
      swift_once();
    }

    v85 = qword_280F617A8;
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_219C09EC0;
    v87 = v114;
    *(v86 + 56) = v54;
    *(v86 + 64) = v87;
    *(v86 + 32) = v105;
    *(v86 + 40) = v77;
    v88 = [v84 description];
    v89 = sub_219BF5414();
    v91 = v90;

    *(v86 + 96) = v66;
    *(v86 + 104) = v87;
    *(v86 + 72) = v89;
    *(v86 + 80) = v91;
    v92 = sub_219BF6214();
    sub_219BE5314("Foregrounding scene (ID: %{public}@), handling discarded user activity : %{public}@", 83, 2, &dword_2186C1000, v85, v92, v86);

    v93 = v115;
    sub_2191BC024(v117);
    __swift_project_boxed_opaque_existential_1(v117, v118);
    v94 = *(v93 + v102);
    if (v94 && (v95 = [v94 rootViewController]) != 0)
    {
      v96 = v95;
      sub_2186C6148(0, &qword_280E8E2F0, 0x277D75B20);
      sub_219BF6584();

      v97 = v116;
    }

    else
    {
      v97 = 0;
    }

    v99 = off_282A5BC28[0];
    v100 = type metadata accessor for AppDiscardedStateRestorationActivityHandler();
    v99(v84, v97, v100);

    __swift_destroy_boxed_opaque_existential_1(v117);
  }

  else
  {
  }

  return sub_2187455EC(v67, &unk_280EE9D60, sub_2187B0408, MEMORY[0x277D83D88], sub_2186DD934);
}

uint64_t sub_2187D8570()
{
  if (*(v0 + 24) != 1)
  {
  }

  return swift_deallocObject();
}

void sub_2187D85B0(uint64_t a1, uint64_t a2)
{
  v3 = qword_280EDDCC0;
  if (*(v2 + qword_280EDDCC0))
  {
    goto LABEL_4;
  }

  v4 = [objc_opt_self() sharedApplication];
  v5 = [v4 delegate];

  if (v5)
  {
    *(v2 + v3) = swift_dynamicCastObjCProtocolUnconditional();
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
LABEL_4:
    swift_unknownObjectRetain();
    return;
  }

  __break(1u);
}

uint64_t sub_2187D86D0()
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D1DE0](ObjectType);
}

void sub_2187D870C()
{
  type metadata accessor for NotificationSettings();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE2F94();
}

uint64_t sub_2187D8800()
{
  v1 = v0[11];
  v2 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v1);
  return (*(v2 + 24))(v1, v2);
}

void sub_2187D885C()
{
  v1 = objc_opt_self();
  v3[4] = sub_218F74F9C;
  v4 = v0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 1107296256;
  v3[2] = sub_218793E0C;
  v3[3] = &block_descriptor_77;
  v2 = _Block_copy(v3);

  [v1 scheduleLowPriorityBlock_];
  _Block_release(v2);
}

void sub_2187D892C()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v5[4] = sub_218BFF7FC;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_218793E0C;
  v5[3] = &block_descriptor_38;
  v3 = _Block_copy(v5);
  v4 = v0;

  [v1 scheduleLowPriorityBlock_];
  _Block_release(v3);
}

uint64_t sub_2187D8A10()
{

  return swift_deallocObject();
}

uint64_t sub_2187D8A64()
{
  v14 = sub_219BDBD34();
  v0 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BDBD64();
  v3 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDD0D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C66AC();
  v10 = sub_219BF6F64();
  v11 = sub_219BF6214();
  sub_219BE5314("Starting Sports session", 23, 2, &dword_2186C1000, v10, v11, MEMORY[0x277D84F90]);

  *v9 = 0x7374726F7073;
  v9[1] = 0xE600000000000000;
  (*(v7 + 104))(v9, *MEMORY[0x277CEAE70], v6);
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v3 + 8))(v5, v13);
  sub_219BDBD24();
  sub_219BDCDA4();

  (*(v0 + 8))(v2, v14);
  (*(v7 + 8))(v9, v6);
  sub_219BDCDE4();
  sub_219BDD154();
}

Swift::Void __swiftcall NotificationAppExtensionCommunicator.sceneWillEnterForeground()()
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61750;
  v2 = sub_219BF6214();
  sub_219BE5314("Running NotificationAppExtensionConfigCommunicator will enter foreground task", 77, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v7[4] = sub_2195381D8;
  v7[5] = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_218793E0C;
  v7[3] = &block_descriptor_134;
  v5 = _Block_copy(v7);
  v6 = v0;

  [v3 scheduleLowPriorityBlock_];
  _Block_release(v5);
}

uint64_t sub_2187D8EA8()
{

  return swift_deallocObject();
}

void sub_2187D8EE0()
{
  type metadata accessor for NotificationSettings();
  sub_219BE3204();
  sub_2187D9028();
  v0 = sub_219BF66A4();
  sub_219BE2F94();
}

uint64_t sub_2187D8FCC()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  return (*(v2 + 24))(v1, v2);
}

unint64_t sub_2187D9028()
{
  result = qword_280E8E3B0;
  if (!qword_280E8E3B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E3B0);
  }

  return result;
}

void sub_2187D9074()
{
  type metadata accessor for NotificationSettings();
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE2F94();
}

uint64_t sub_2187D9150()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_2187D91C4()
{
  v0 = sub_219BDBD34();
  v13 = *(v0 - 8);
  v14 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BDBD64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDD0D4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277CEAE78], v7, v9);
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v4 + 8))(v6, v3);
  sub_219BDBD24();
  sub_219BDCDA4();

  (*(v13 + 8))(v2, v14);
  return (*(v8 + 8))(v11, v7);
}

void sub_2187D9420()
{
  sub_2186DDC88(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = &v17 - v10;
  [*(v0 + OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_carSessionStatus) waitForSessionInitialization];
  v12 = OBJC_IVAR____TtC7NewsUI227AudioAutoClosePlayerHandler_autoCloseAt;
  swift_beginAccess();
  sub_2187D96F4(v0 + v12, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_2187108D4(v3, &qword_280EE9C40, MEMORY[0x277CC9578]);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    sub_219BDBD24();
    sub_218707960(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v13 = sub_219BF5334();
    v14 = *(v5 + 8);
    v14(v7, v4);
    v14(v11, v4);
    if ((v13 & 1) == 0)
    {
      sub_2186C66AC();
      v15 = sub_219BF6F74();
      v16 = sub_219BF6214();
      sub_219BE5314("AudioAutoClosePlayerHandler: closing player on app foreground since the auto-close date has passed", 98, 2, &dword_2186C1000, v15, v16, MEMORY[0x277D84F90]);

      sub_2193A8D80();
    }
  }
}

uint64_t sub_2187D96F4(uint64_t a1, uint64_t a2)
{
  sub_2186E7B4C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2187D9788()
{
  sub_2187D97B0();
}

uint64_t sub_2187D97B0()
{
  v1 = v0;
  v2 = sub_219BDBD34();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*&v0[OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_featureAvailability] puzzlesEnabled])
  {
LABEL_16:
    sub_21870F514(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }

  if (![*&v0[OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_networkReachability] isNetworkReachable])
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v28 = sub_219BE5434();
    __swift_project_value_buffer(v28, qword_280F625E0);
    v29 = sub_219BE5414();
    v30 = sub_219BF6214();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_2186C1000, v29, v30, "PuzzlePrewarmer: Skipping puzzle prewarming as network is not reachable", v31, 2u);
      MEMORY[0x21CECF960](v31, -1, -1);
    }

    goto LABEL_16;
  }

  if (sub_2187DA050())
  {
    if (qword_280EE9900 != -1)
    {
      swift_once();
    }

    sub_219BDBD24();
    sub_219BDBC84();
    v8 = v7;
    (*(v3 + 8))(v6, v2);
    v39[1] = v8;
    type metadata accessor for PuzzlePrewarmer();
    sub_2187DA560(&unk_280EDA020, v9, type metadata accessor for PuzzlePrewarmer, &unk_219C79EE0);
    sub_219BDCA54();
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v10 = sub_219BE5434();
    __swift_project_value_buffer(v10, qword_280F625E0);
    v11 = sub_219BE5414();
    v12 = sub_219BF6214();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2186C1000, v11, v12, "PuzzlePrewarmer: Starting puzzles prewarming", v13, 2u);
      MEMORY[0x21CECF960](v13, -1, -1);
    }

    MEMORY[0x28223BE20](v14);
    v39[-2] = v1;
    sub_2186D6710(0, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration);
    sub_219BE3204();
    *(swift_allocObject() + 16) = v1;
    v15 = v1;
    v16 = sub_219BE2E54();
    sub_219BE2F64();

    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_2193F7AE4;
    *(v18 + 24) = v17;
    v19 = v15;
    v20 = sub_219BE2E54();
    sub_219BE2F64();

    *(swift_allocObject() + 16) = v19;
    v21 = v19;
    v22 = sub_219BE2E54();
    sub_219BE2F64();

    *(swift_allocObject() + 16) = v21;
    v23 = v21;
    v24 = sub_219BE2E54();
    sub_219BE2F64();

    *(swift_allocObject() + 16) = v23;
    v25 = v23;
    v26 = sub_219BE2E54();
    sub_219BE2F64();

    v27 = sub_219BE2E54();
  }

  else
  {
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v33 = sub_219BE5434();
    __swift_project_value_buffer(v33, qword_280F625E0);
    v34 = sub_219BE5414();
    v35 = sub_219BF6214();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2186C1000, v34, v35, "PuzzlePrewarmer: Skipping puzzle prewarming as last prewarm time has not crossed the prewarmInterval, will just update stats", v36, 2u);
      MEMORY[0x21CECF960](v36, -1, -1);
    }

    MEMORY[0x28223BE20](v37);
    v39[-2] = v1;
    sub_219BE3204();
    v27 = sub_219BE2E54();
  }

  v38 = sub_219BE2FD4();

  return v38;
}

uint64_t sub_2187D9F0C()
{

  return swift_deallocObject();
}

uint64_t sub_2187D9F44()
{

  return swift_deallocObject();
}

uint64_t sub_2187D9FE0()
{
  v1 = *(v0 + 32);
  if (v1 == 2)
  {
    v2 = [objc_opt_self() sharedAccount];
    LOBYTE(v1) = [v2 isContentStoreFrontSupported];

    *(v0 + 32) = v1;
  }

  return v1 & 1;
}

BOOL sub_2187DA050()
{
  v1 = sub_219BDBD34();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE9900 != -1)
  {
    swift_once();
  }

  type metadata accessor for PuzzlePrewarmer();
  sub_2187DA560(&qword_280EDA030, v5, type metadata accessor for PuzzlePrewarmer, &unk_219C79F20);
  sub_219BDC7D4();
  v6 = v19;
  if (v19 <= 0.0)
  {
    return 1;
  }

  sub_219BDBD24();
  sub_219BDBC84();
  v8 = v7;
  (*(v2 + 8))(v4, v1);
  sub_219BDC724();
  sub_219BDC7D4();

  v9 = v19;
  if (v19 <= 0.0)
  {
    v10 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_configurationManager) possiblyUnfetchedAppConfiguration)];
    swift_unknownObjectRelease();
    [v10 puzzlesPrewarmTimeInterval];
    v9 = v11;
  }

  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v12 = v8 - v6;
  v13 = sub_219BE5434();
  __swift_project_value_buffer(v13, qword_280F625E0);
  v14 = sub_219BE5414();
  v15 = sub_219BF6214();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 134218496;
    *(v16 + 4) = v6;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v9;
    *(v16 + 22) = 2048;
    *(v16 + 24) = v12;
    _os_log_impl(&dword_2186C1000, v14, v15, "PuzzlePrewarmer: lastPrewarmTime=%f puzzlesPrewarmTimeInterval=%f timeDiff=%f", v16, 0x20u);
    MEMORY[0x21CECF960](v16, -1, -1);
  }

  return v9 < v12;
}

uint64_t sub_2187DA354()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = MEMORY[0x28223BE20](v4);
  (*(v7 + 104))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  v9[1] = 0;
  sub_2187DA508();
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280EE9908 = result;
  return result;
}

void sub_2187DA508()
{
  if (!qword_280EE9070)
  {
    v0 = sub_219BDC9E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE9070);
    }
  }
}

uint64_t sub_2187DA560(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2187DA5B4()
{
  v0 = sub_219BE5434();
  __swift_allocate_value_buffer(v0, qword_280F625E0);
  __swift_project_value_buffer(v0, qword_280F625E0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_219BF5414();
  }

  return sub_219BE5424();
}

uint64_t sub_2187DA698(void *a1)
{
  sub_21870F514(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_219BE2F54();
}

void sub_2187DA760()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v5 = *(v2 + 16);
  v3 = v2 + 16;
  v4 = v5;
  if (v5)
  {
    v6 = (v3 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];

    os_unfair_lock_unlock((v1 + 24));
    if (v7)
    {
      sub_21939099C(v8, v7);
    }
  }

  else
  {
    os_unfair_lock_unlock((v1 + 24));
  }

  v9 = *(v0 + 48);
  os_unfair_lock_lock((v9 + 24));
  v10 = *(v9 + 16);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v11 - 1;
    v13 = *(type metadata accessor for CookingKitExternalTracker.GroceryListRecipe(0) - 8);
    v14 = (v10 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v12);
    v16 = *v14;
    v15 = v14[1];

    os_unfair_lock_unlock((v9 + 24));
    if (v15)
    {
      sub_219391B34(v16, v15);
    }
  }

  else
  {

    os_unfair_lock_unlock((v9 + 24));
  }
}

uint64_t sub_2187DA8BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2187DA95C(a1, v4);
}

uint64_t sub_2187DA97C()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC7NewsUI215PuzzlePrewarmer_puzzleStatsService);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_2187DE9C8;

  return MEMORY[0x282192A48](v3, v2);
}

uint64_t sub_2187DAA44()
{
  v1 = v0;
  v2 = sub_219BE9C04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC7NewsUI224FloatingTabBarController_layoutCoordinator;
  swift_beginAccess();
  sub_2187DAC98(v1 + v6, v11, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
  if (v12)
  {
    sub_218718690(v11, v10);
    sub_2187453AC(v11, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    v7 = sub_2187DAD0C();
    sub_2187DAE88(v1);

    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_2187453AC(v11, &qword_280E9DA68, &qword_280E9DA70, &protocol descriptor for FloatingTabBarLayoutCoordinatorType, sub_2186C6F70);
  }

  sub_219BEA314();

  sub_219BE2734();

  if (v11[0] == 1)
  {
    (*(v3 + 104))(v5, *MEMORY[0x277D6E830], v2);
    sub_219BEA2E4();
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_2187DAC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t sub_2187DAD0C()
{
  v1 = [v0 viewControllers];
  if (v1)
  {
    v2 = v1;
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    v3 = sub_219BF5924();

    v4 = [v0 selectedIndex];
    if (v3 >> 62)
    {
      if (v4 < sub_219BF7214())
      {
LABEL_4:
        result = [v0 selectedIndex];
        if ((v3 & 0xC000000000000001) == 0)
        {
          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v6 = *(v3 + 8 * result + 32);
LABEL_8:
            v7 = v6;

            type metadata accessor for FloatingTabBarNavigationController(0);
            result = swift_dynamicCastClass();
            if (result)
            {
              return result;
            }

            return 0;
          }

          __break(1u);
          return result;
        }

        v6 = MEMORY[0x21CECE0F0](result, v3);
        goto LABEL_8;
      }
    }

    else if (v4 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }

  result = [v0 transientViewController];
  if (result)
  {
    v8 = result;
    type metadata accessor for FloatingTabBarNavigationController(0);
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void *sub_2187DAE88(void *result)
{
  v2 = *(v1 + 32);
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  v4 = result;
  v5 = objc_opt_self();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_218F8B438;
  *(v7 + 24) = v6;
  v29 = sub_218807D50;
  v30 = v7;
  v25 = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_218807CE4;
  v28 = &block_descriptor_80;
  v8 = _Block_copy(&v25);
  swift_retain_n();
  v9 = v4;

  [v5 performWithoutAnimation_];
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
    return result;
  }

  v10 = [v9 traitCollection];
  v11 = [v10 horizontalSizeClass];

  if (v11 == 2)
  {
    if (*(v2 + 17) == 1)
    {
      type metadata accessor for SearchHomeCoordinatingController();
      sub_219BF6584();
      v13 = v25;
      if (v25)
      {
        v14 = [objc_opt_self() sharedApplication];
        v17 = swift_allocObject();
        *(v17 + 16) = v13;
        v29 = sub_218F8B44C;
        v30 = v17;
        v25 = MEMORY[0x277D85DD0];
        v26 = 1107296256;
        v16 = &block_descriptor_19_0;
        goto LABEL_11;
      }
    }
  }

  else if (v11 == 1 && *(v2 + 17) == 1)
  {
    v12 = sub_218F8A9C4();
    if (v12)
    {
      v13 = v12;
      v14 = [objc_opt_self() sharedApplication];
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      v29 = sub_218F8B454;
      v30 = v15;
      v25 = MEMORY[0x277D85DD0];
      v26 = 1107296256;
      v16 = &block_descriptor_25_0;
LABEL_11:
      v27 = sub_218793E0C;
      v28 = v16;
      v18 = _Block_copy(&v25);
      v19 = v13;

      [v14 ts:v18 installCACommitCompletionBlock:{v25, v26}];
      _Block_release(v18);
    }
  }

  swift_beginAccess();
  v20 = *(v2 + 32);
  v21 = *(v20 + 16);
  if (v21)
  {

    v22 = v20 + 40;
    do
    {
      v23 = *(v22 - 8);

      v23(v24);

      v22 += 16;
      --v21;
    }

    while (v21);
  }

  else
  {
  }

  *(v3 + 32) = 0;
}

uint64_t sub_2187DB27C()
{

  return swift_deallocObject();
}

uint64_t sub_2187DB2CC()
{

  return swift_deallocObject();
}

uint64_t sub_2187DB308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_2187DB3D8()
{
  v1 = v0;
  v2 = sub_219BE9C04();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = [v0 traitCollection];
  v8 = [v7 horizontalSizeClass];

  if (v8 == 2)
  {

    sub_219BE2734();

    v9 = v15[15];
    v10 = [v1 _uip_sidebar];
    v11 = [v10 _isVisible];

    if (v9 == v11)
    {
      return;
    }

    v12 = [v1 _uip_sidebar];
    v13 = [v12 _isVisible];

    v15[14] = v13;

    sub_219BE2744();

    sub_219BE2734();

    v14 = v15[13];
    (*(v3 + 104))(v6, *MEMORY[0x277D6E838], v2);
    if (v14 == 1)
    {
      sub_219BEA2E4();
LABEL_9:
      (*(v3 + 8))(v6, v2);
      return;
    }

LABEL_8:
    sub_219BEA2D4();
    goto LABEL_9;
  }

  if (v8 == 1)
  {

    sub_219BE2734();

    if (v15[12] == 1)
    {
      v15[11] = 0;

      sub_219BE2744();

      (*(v3 + 104))(v6, *MEMORY[0x277D6E838], v2);
      goto LABEL_8;
    }
  }
}

void *sub_2187DB690(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED9050, &protocol descriptor for TodayModuleType, 1);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2186CB1F0(&v5, v7);
    v2 = v8;
    v3 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v4 = (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v7);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2187DB75C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v29);
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
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  result = sub_219BE1E34();
  if (!v28)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBDDB8, &protocol descriptor for MastheadModelProviderType, 1);
  result = sub_219BE1E34();
  if (!v26)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EAFF10, &protocol descriptor for MiniMastheadModelProviderType, 1);
  result = sub_219BE1E34();
  if (v24)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (&v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for TodayFeedMiniMastheadModelProvider();
    v22[3] = v12;
    v22[4] = &off_282A4B760;
    v22[0] = v11;
    v13 = type metadata accessor for TodayModule();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v12);
    v16 = MEMORY[0x28223BE20](v15);
    v18 = (&v22[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v14[21] = v12;
    v14[22] = &off_282A4B760;
    v14[18] = v20;
    sub_2186CB1F0(v29, (v14 + 2));
    v14[7] = v5;
    sub_2186CB1F0(&v27, (v14 + 8));
    sub_2186CB1F0(&v25, (v14 + 13));
    __swift_destroy_boxed_opaque_existential_1(v22);
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    a2[3] = v13;
    a2[4] = &protocol witness table for TodayModule;
    *a2 = v14;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187DBAA4()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayDebugPersonalizationGroupLayoutKeyProvider();
  sub_219BE2904();
  v4 = *MEMORY[0x277D6CF00];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6 = *(v1 + 8);
  v6(v3, v0);
  type metadata accessor for TodayViewController();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, qword_280EB6288, &protocol descriptor for TodayEngagementModifierType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EA1500, &protocol descriptor for TodayEngagementOverlayManagerType, 0);
  sub_219BE2914();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280ED8F88, &protocol descriptor for TodayStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ED8F90, &protocol descriptor for TodayRouterType, 1);
  sub_219BE2914();
  sub_219BE19D4();

  v5(v3, v4, v0);
  sub_219BE19F4();

  v6(v3, v0);
  sub_2186C709C(0, &qword_280EC9538, &protocol descriptor for TodayEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ECFB20, &protocol descriptor for TodayInteractorType, 0);
  sub_219BE2914();

  sub_2187DD2B8(0, &unk_280ED9058, type metadata accessor for TodayBlueprintModifierFactory, &off_282A42208, type metadata accessor for TodayInteractor);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EA8DA0, &protocol descriptor for MastheadPaywallEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EE6358, MEMORY[0x277D35060], 0);
  sub_219BE2914();
  sub_219BE4164();
  sub_219BE19C4();

  sub_2186C709C(0, &unk_280EE63D0, MEMORY[0x277D34FF8], 0);
  sub_219BE2914();
  sub_219BE3FE4();
  sub_219BE19C4();

  sub_2186C709C(0, &unk_280EE6388, MEMORY[0x277D35038], 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ECC710, &protocol descriptor for TodayDataManagerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280ED73A8, &protocol descriptor for TodayTrackerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280E91010, MEMORY[0x277D32BB8], 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EBDDB8, &protocol descriptor for MastheadModelProviderType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EAFF10, &protocol descriptor for MiniMastheadModelProviderType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280E94048, &protocol descriptor for TodayEngagementMastheadPositionProviderType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E96030, &protocol descriptor for MastheadPaywallConfigurationProviderType, 1);
  sub_219BE2914();

  type metadata accessor for TodayModelFactory();
  sub_219BE2904();

  sub_2187DD900(0);
  sub_219BE2904();

  type metadata accessor for TodayBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, qword_280EC2CE0, &protocol descriptor for TodaySectionFactoryType, 1);
  sub_219BE2914();

  sub_2187DDA00(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187DEFC8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE9C54();
  sub_219BE2904();

  sub_219BEA1E4();
  sub_219BE2904();

  sub_2187DDABC(0);
  sub_219BE2904();

  sub_2187DF0F8(0);
  sub_219BE2904();

  sub_2187DDE2C(0);
  sub_219BE2904();

  type metadata accessor for TodayBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2187DF260(0, &qword_280EE4128, sub_2187DDE2C, sub_2187DF22C, MEMORY[0x277D6E7C8]);
  sub_219BE2904();

  sub_2187DF2E0(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8E74();
  sub_219BE2904();

  sub_2187DDB94(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_2187DD2B8(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187DDE4C(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187DECE4(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187DEE6C(0);
  sub_219BE2904();

  type metadata accessor for TodayBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for TodayBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187DF3BC(0);
  sub_219BE2904();

  sub_2187DF260(0, &qword_280EE4678, sub_2187DD900, sub_2187DEF94, MEMORY[0x277D6E388]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187DF47C(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  sub_219BE2914();

  sub_219BE8984();
  sub_219BE2904();

  sub_219BE7A84();
  sub_219BE2904();

  sub_2187DF260(0, &unk_280EE48B8, sub_2187DDB94, sub_2187DEF60, MEMORY[0x277D6E068]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE9534();
  sub_219BE2904();

  sub_219BE9564();
  sub_219BE2904();

  sub_2187DF538(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280E901A0, MEMORY[0x277D33D90], 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EE4510, MEMORY[0x277D6E558], 1);
  sub_219BE2914();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE89B0, MEMORY[0x277D302D8], 1);
  sub_219BE2914();

  sub_2187DF5E0(0, &qword_280EE8A08, MEMORY[0x277D302B0]);
  sub_219BE2904();

  sub_2187DF740(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BEF314();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187DF874(0, &qword_280E90138, MEMORY[0x277D33ED8]);
  sub_219BE2904();

  sub_2187DF968(0);
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for TodayBlueprintCellPrefetcher();
  sub_219BE2904();

  sub_2186C709C(0, qword_280EB8830, &protocol descriptor for HeadlineExposureTrackerType, 1);
  sub_219BE2914();

  type metadata accessor for DefaultHeadlineExposureTracker();
  sub_219BE2904();

  type metadata accessor for SportsHeadlineExposureTracker();
  sub_219BE2904();

  sub_2187DFB08(0, &qword_280EE8CA8, sub_2187DFC08, MEMORY[0x277D2FF78]);
  sub_219BE2904();

  sub_2187DF5E0(0, &qword_280EE8A20, MEMORY[0x277D30288]);
  sub_219BE2904();

  type metadata accessor for TodayOfflineFeedPrimer();
  sub_219BE2904();
}

void sub_2187DD2B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_2187DD360(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2187DD4F0(319, &qword_280ED2200, type metadata accessor for TodayPrewarmResult, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_2187DD4F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for TodayPrewarmResult(uint64_t a1)
{
  result = qword_280ED2208;
  if (!qword_280ED2208)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2187DD5A0(uint64_t a1)
{
  result = type metadata accessor for TodayExpandResult(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for TodayExpandResult(uint64_t a1)
{
  result = qword_280ED4698;
  if (!qword_280ED4698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2187DD658(uint64_t a1)
{
  if (!qword_280E91610)
  {
    type metadata accessor for TodayFeedServiceConfig(255);
    sub_2186DFB00(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v1 = sub_219BEF3F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91610);
    }
  }
}

void sub_2187DD6EC(uint64_t a1)
{
  sub_2187DD658(319);
  if (v1 <= 0x3F)
  {
    sub_2187DD810(319);
    if (v2 <= 0x3F)
    {
      sub_2187DD878(319, &qword_280EE32B8, MEMORY[0x277D2D6D8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2187DD878(319, &unk_280EE56F0, MEMORY[0x277D6D878], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2187DD810(uint64_t a1)
{
  if (!qword_280E8FBB0)
  {
    sub_219BE5BA4();
    v1 = sub_219BF52A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8FBB0);
    }
  }
}

void sub_2187DD878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2187DD900(uint64_t a1)
{
  if (!qword_280EE5520)
  {
    type metadata accessor for TodayModel(255);
    sub_2186EB3E8();
    sub_218985F8C(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v1 = sub_219BE6FA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5520);
    }
  }
}

uint64_t sub_2187DD9B8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2187DDA00(uint64_t a1)
{
  if (!qword_280EE55E8)
  {
    sub_2187DD900(255);
    sub_2187DDABC(255);
    sub_2187DEF94();
    sub_2186EFB7C(&unk_280EE52E8, sub_2187DDABC, MEMORY[0x277D6D960]);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE55E8);
    }
  }
}

void sub_2187DDABC(uint64_t a1)
{
  if (!qword_280EE52E0)
  {
    type metadata accessor for TodayModel(255);
    sub_2187DDB94(255);
    sub_2186EB3E8();
    sub_2186EFB7C(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    sub_2187DEF60();
    v1 = sub_219BE72E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE52E0);
    }
  }
}

void sub_2187DDB94(uint64_t a1)
{
  if (!qword_280EE4F30)
  {
    sub_2186C6148(255, &qword_280E8E4C0, 0x277D752A0);
    sub_2187DDE4C(255);
    sub_2187DECE4(255);
    sub_2187DEE6C(255);
    type metadata accessor for TodayViewController();
    sub_2187DEAC4(&qword_280EE3F18, 255, sub_2187DDE4C, MEMORY[0x277D6E820]);
    sub_2187DEAC4(&unk_280EE43B0, 255, sub_2187DECE4, MEMORY[0x277D6E738]);
    sub_2187DEAC4(&qword_280EE3DA8, 255, sub_2187DEE6C, MEMORY[0x277D6E918]);
    v1 = sub_219BE7BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4F30);
    }
  }
}

void sub_2187DDD38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for TodayLayoutSectionDescriptor(255);
    v8[1] = type metadata accessor for TodayLayoutModel(255);
    v8[2] = sub_2187DE8F0(qword_280EB1A60, type metadata accessor for TodayLayoutSectionDescriptor, &unk_219C47FA4);
    v8[3] = sub_2187DE8F0(&qword_280ED7480, type metadata accessor for TodayLayoutModel, &unk_219C99B04);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187DDE4C(uint64_t a1)
{
  if (!qword_280EE3F10)
  {
    sub_2187DD900(255);
    sub_2187DDE2C(255);
    type metadata accessor for TodayBlueprintViewCellProvider();
    type metadata accessor for TodayBlueprintViewSupplementaryViewProvider();
    sub_2187DEAC4(&qword_280EE5530, 255, sub_2187DD900, MEMORY[0x277D6D8C8]);
    sub_2187DEAC4(&qword_280EE4C10, 255, sub_2187DDE2C, MEMORY[0x277D6DF38]);
    sub_2187DEAC4(qword_280EAA4C8, 255, type metadata accessor for TodayBlueprintViewCellProvider, &unk_219C1A390);
    sub_2187DEAC4(qword_280EE2350, 255, type metadata accessor for TodayBlueprintViewSupplementaryViewProvider, &unk_219C255BC);
    sub_2187DEAC4(&unk_280ED7470, 255, type metadata accessor for TodayLayoutModel, &unk_219C99864);
    v1 = sub_219BE9B94();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3F10);
    }
  }
}

uint64_t sub_2187DE050(uint64_t a1)
{
  result = type metadata accessor for TodayLayoutSectionDescriptor.LayoutData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2187DE0C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF5B14();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2187DE118(uint64_t a1)
{
  sub_2187DE0C4(319, &qword_280E8F040, type metadata accessor for TodayLayoutSectionDescriptor.Header);
  if (v1 <= 0x3F)
  {
    sub_2187DE0C4(319, &qword_280E8F048, type metadata accessor for TodayLayoutSectionDescriptor.Footer);
    if (v2 <= 0x3F)
    {
      sub_2187DE0C4(319, &qword_280E8F050, type metadata accessor for TodayLayoutSectionDescriptor.Decoration);
      if (v3 <= 0x3F)
      {
        sub_219BEE024();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2187DE258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = sub_219BF00D4();
  if (v6 <= 0x3F)
  {
    result = a4(319);
    if (v7 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2187DE2F4(uint64_t a1)
{
  sub_2187DE3C8(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes(319);
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_2187DE3C8(uint64_t a1)
{
  if (!qword_280EA8E70)
  {
    type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EA8E70);
    }
  }
}

uint64_t type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes(uint64_t a1)
{
  result = qword_280E94CC0;
  if (!qword_280E94CC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2187DE480(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_2186C6148(319, &qword_280E8DA80, 0x277D75348);
    if (v2 <= 0x3F)
    {
      sub_2186C6148(319, &unk_280E8E330, 0x277CCA898);
      if (v3 <= 0x3F)
      {
        sub_2187DE578();
        if (v4 <= 0x3F)
        {
          sub_219BDCAF4();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2187DE578()
{
  if (!qword_280E930C8[0])
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, qword_280E930C8);
    }
  }
}

void sub_2187DE620(uint64_t a1)
{
  sub_2187DE694(319);
  if (v1 <= 0x3F)
  {
    sub_2187DE708();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2187DE694(uint64_t a1)
{
  if (!qword_280EE4CE0)
  {
    sub_219BE8434();
    sub_219BE9CC4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE4CE0);
    }
  }
}

void sub_2187DE708()
{
  if (!qword_280E8FD08)
  {
    v0 = sub_219BF4E64();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8FD08);
    }
  }
}

uint64_t sub_2187DE770(uint64_t a1)
{
  result = sub_219BEE914();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for TodayLayoutModel(uint64_t a1)
{
  result = qword_280ED7440;
  if (!qword_280ED7440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2187DE860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2187DE8A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2187DE8F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2187DE938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2187DE9C8()
{

  return MEMORY[0x2822009F8](sub_2187DEB0C, 0, 0);
}

uint64_t sub_2187DEAC4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2187DEB0C()
{
  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_280F625E0);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "PuzzlePrewarmer: Finished updating puzzle stats", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2187DEC58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2187DECA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TodayLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2187DECE4(uint64_t a1)
{
  if (!qword_280EE43A0)
  {
    sub_2187DD900(255);
    sub_2187DDE2C(255);
    type metadata accessor for TodayViewController();
    sub_2187DEAC4(&qword_280EE5530, 255, sub_2187DD900, MEMORY[0x277D6D8C8]);
    sub_2187DEAC4(&qword_280EE4C10, 255, sub_2187DDE2C, MEMORY[0x277D6DF38]);
    sub_2187DEAC4(&qword_280ECFA78, v1, type metadata accessor for TodayViewController, &unk_219CA3224);
    sub_2187DEAC4(&unk_280ED7470, 255, type metadata accessor for TodayLayoutModel, &unk_219C99864);
    v2 = sub_219BE9794();
    if (!v3)
    {
      atomic_store(v2, &qword_280EE43A0);
    }
  }
}

void sub_2187DEE6C(uint64_t a1)
{
  if (!qword_280EE3DA0)
  {
    sub_2187DD900(255);
    sub_2187DDE2C(255);
    sub_2187DEAC4(&qword_280EE5530, 255, sub_2187DD900, MEMORY[0x277D6D8C8]);
    sub_2187DEAC4(&qword_280EE4C10, 255, sub_2187DDE2C, MEMORY[0x277D6DF38]);
    v1 = sub_219BE9F34();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3DA0);
    }
  }
}

void sub_2187DEFC8(uint64_t a1)
{
  if (!qword_280EE3BA0)
  {
    sub_2187DDE2C(255);
    type metadata accessor for TodayBlueprintLayoutBuilder();
    sub_2187DF0F8(255);
    sub_2187DF22C();
    sub_2186EFB7C(&qword_280EB6358, type metadata accessor for TodayBlueprintLayoutBuilder, &unk_219CC8D98);
    sub_2186EFB7C(&qword_280EE41E0, sub_2187DF0F8, MEMORY[0x277D6E7B8]);
    v1 = sub_219BEA4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3BA0);
    }
  }
}

void sub_2187DF0F8(uint64_t a1)
{
  if (!qword_280EE41D8)
  {
    type metadata accessor for TodayLayoutSectionDescriptor(255);
    type metadata accessor for TodayLayoutModel(255);
    sub_2186EFB7C(&unk_280EB1A50, type metadata accessor for TodayLayoutSectionDescriptor, &unk_219C47EFC);
    sub_2186EFB7C(&unk_280ED7470, type metadata accessor for TodayLayoutModel, &unk_219C99864);
    v1 = sub_219BE9974();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE41D8);
    }
  }
}

void sub_2187DF260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2187DF2E0(uint64_t a1)
{
  if (!qword_280EE4A90)
  {
    sub_2187DD900(255);
    sub_2187DDB94(255);
    type metadata accessor for TodayViewController();
    sub_2187DEF94();
    sub_2187DEF60();
    sub_2186EFB7C(&qword_280ECFA78, type metadata accessor for TodayViewController, &unk_219CA3224);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4A90);
    }
  }
}

void sub_2187DF3BC(uint64_t a1)
{
  if (!qword_280E91918)
  {
    type metadata accessor for TodayFeedServiceConfig(255);
    sub_2187DD900(255);
    sub_2187DF448();
    sub_2187DEF94();
    v1 = sub_219BEEB44();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91918);
    }
  }
}

void sub_2187DF47C(uint64_t a1)
{
  if (!qword_280EE4090)
  {
    sub_2187DDB94(255);
    sub_2187DD900(255);
    sub_2187DEF60();
    sub_2186EFB7C(&qword_280EE5538, sub_2187DD900, MEMORY[0x277D6D8C0]);
    v1 = sub_219BE9AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4090);
    }
  }
}

void sub_2187DF538(uint64_t a1)
{
  if (!qword_280E91BC0)
  {
    type metadata accessor for TodayFeedServiceConfig(255);
    sub_2187DF448();
    sub_2186EFB7C(&qword_280EDB778, type metadata accessor for TodayFeedGroup, &unk_219C0E150);
    v1 = sub_219BEE514();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91BC0);
    }
  }
}

void sub_2187DF5E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TodaySectionDescriptor;
    v8[1] = type metadata accessor for TodayModel(255);
    v8[2] = type metadata accessor for TodayLayoutSectionDescriptor(255);
    v8[3] = type metadata accessor for TodayLayoutModel(255);
    v8[4] = sub_2186EB3E8();
    v8[5] = sub_2186EFB7C(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    v8[6] = sub_2186EFB7C(qword_280EB1A60, type metadata accessor for TodayLayoutSectionDescriptor, &unk_219C47FA4);
    v8[7] = sub_2186EFB7C(&qword_280ED7480, type metadata accessor for TodayLayoutModel, &unk_219C99B04);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187DF740(uint64_t a1)
{
  if (!qword_280E91740)
  {
    sub_2187DD900(255);
    sub_2187DDABC(255);
    sub_2187DEF94();
    sub_2186EFB7C(&unk_280EE52E8, sub_2187DDABC, MEMORY[0x277D6D960]);
    sub_2186EFB7C(&qword_280EDFA18, type metadata accessor for TodayModel, &unk_219CCC634);
    sub_2186EFB7C(&unk_280EDFA20, type metadata accessor for TodayModel, &unk_219CCC6FC);
    v1 = sub_219BEEF94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91740);
    }
  }
}

void sub_2187DF874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for TodayLayoutSectionDescriptor(255);
    v8[1] = type metadata accessor for TodayLayoutModel(255);
    v8[2] = sub_2186EFB7C(qword_280EB1A60, type metadata accessor for TodayLayoutSectionDescriptor, &unk_219C47FA4);
    v8[3] = sub_2186EFB7C(&qword_280ED7480, type metadata accessor for TodayLayoutModel, &unk_219C99B04);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187DF968(uint64_t a1)
{
  if (!qword_280EE5040)
  {
    sub_2187DDE2C(255);
    type metadata accessor for TodayBlueprintCellPrefetcher();
    sub_2187DF22C();
    sub_2186EFB7C(qword_280EB20B8, type metadata accessor for TodayBlueprintCellPrefetcher, &unk_219C55720);
    sub_2186EFB7C(&unk_280ED7490, type metadata accessor for TodayLayoutModel, &unk_219C99ADC);
    sub_2186EFB7C(&qword_280ED7468, type metadata accessor for TodayLayoutModel, &unk_219C998DC);
    v1 = sub_219BE7624();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5040);
    }
  }
}

void sub_2187DFB08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_2187DDE2C(255);
    v11[0] = v8;
    v11[1] = sub_2187DF22C();
    v11[2] = a3();
    v11[3] = sub_2186EFB7C(&unk_280ED7490, type metadata accessor for TodayLayoutModel, &unk_219C99ADC);
    v11[4] = sub_2186EFB7C(&unk_280ED7458, type metadata accessor for TodayLayoutModel, &unk_219C99AB4);
    v9 = a4(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void *sub_2187DFC60@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187E00C0(0, &unk_280E906D0, sub_2186FB728, &type metadata for TodayOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E96030, &protocol descriptor for MastheadPaywallConfigurationProviderType, 1);
  result = sub_219BE1E34();
  if (!v37)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DD80, &protocolRef_FCCoreConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v8 = result;
  v30 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480, MEMORY[0x277D34EA8], 0);
  result = sub_219BE1E34();
  v9 = v34;
  if (!v34)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v28 = v6;
  v29 = a2;
  v27 = v35;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E93EA0, &protocol descriptor for MastheadWelcomeMessageVisibilityProviderType, 1);
  result = sub_219BE1E34();
  if (v33)
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v16 = type metadata accessor for MastheadWelcomeMessageVisibilityProvider();
    v31[3] = v16;
    v31[4] = &off_282A8AB30;
    v31[0] = v15;
    v17 = type metadata accessor for TodayFeedMastheadModelProvider();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v31, v16);
    v20 = MEMORY[0x28223BE20](v19);
    v22 = (&v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = *v22;
    v18[16] = v16;
    v18[17] = &off_282A8AB30;
    v18[13] = v24;
    v25 = v28;
    v18[2] = v5;
    v18[3] = v25;
    v18[4] = v30;
    sub_2186CB1F0(&v36, (v18 + 5));
    v18[10] = v8;
    v18[11] = v9;
    v18[12] = v27;
    __swift_destroy_boxed_opaque_existential_1(v31);
    result = __swift_destroy_boxed_opaque_existential_1(v32);
    v26 = v29;
    v29[3] = v17;
    v26[4] = &off_282A664F8;
    *v26 = v18;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_2187E00C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void *sub_2187E0150@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6480, MEMORY[0x277D34EA8], 0);
  result = sub_219BE1E34();
  v6 = v23;
  if (!v23)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE6330, MEMORY[0x277D350C8], 1);
  result = sub_219BE1E34();
  if (!v22)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91730, MEMORY[0x277D324C8], 0);
  result = sub_219BE1E34();
  v7 = v19;
  if (!v19)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE62C0, MEMORY[0x277D35218], 0);
  result = sub_219BE1E34();
  v8 = v17;
  if (!v17)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160, MEMORY[0x277D33E68], 1);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (result)
  {
    v10 = result;
    v11 = type metadata accessor for MastheadPaywallConfigurationProvider();
    v12 = swift_allocObject();
    v12[2] = v5;
    v12[3] = v6;
    v12[4] = v14;
    sub_2186CB1F0(&v21, (v12 + 5));
    v12[10] = v7;
    v12[11] = v13;
    v12[12] = v8;
    v12[13] = v9;
    result = sub_2186CB1F0(&v15, (v12 + 14));
    v12[19] = v10;
    a2[3] = v11;
    a2[4] = &off_282A8E4A8;
    *a2 = v12;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_2187E0450@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160, MEMORY[0x277D33E68], 1);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD10, MEMORY[0x277D34678], 1);
  result = sub_219BE1E34();
  if (v11)
  {
    v8 = type metadata accessor for MastheadWelcomeMessageVisibilityProvider();
    v9 = swift_allocObject();
    v9[2] = v5;
    sub_2186CB1F0(&v12, (v9 + 3));
    v9[8] = v6;
    v9[9] = v7;
    result = sub_2186CB1F0(&v10, (v9 + 10));
    a2[3] = v8;
    a2[4] = &off_282A8AB30;
    *a2 = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_2187E069C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187E00C0(0, &unk_280E906D0, sub_2186FB728, &type metadata for TodayOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result;
  v24 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E93EA0, &protocol descriptor for MastheadWelcomeMessageVisibilityProviderType, 1);
  result = sub_219BE1E34();
  if (v27)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for MastheadWelcomeMessageVisibilityProvider();
    v25[3] = v14;
    v25[4] = &off_282A8AB30;
    v25[0] = v13;
    v15 = type metadata accessor for TodayFeedMiniMastheadModelProvider();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v25, v14);
    v18 = MEMORY[0x28223BE20](v17);
    v20 = (&v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v16[8] = v14;
    v16[9] = &off_282A8AB30;
    v16[2] = v24;
    v16[3] = v6;
    v16[4] = v7;
    v16[5] = v22;
    __swift_destroy_boxed_opaque_existential_1(v25);
    result = __swift_destroy_boxed_opaque_existential_1(v26);
    a2[3] = v15;
    a2[4] = &off_282A4B760;
    *a2 = v16;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void __swiftcall TodayModule.createViewController()(UIViewController *__return_ptr retstr)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v2 = qword_280F616D8;
  LOBYTE(v21[0]) = 0;
  sub_2187E0FB8(0);
  swift_allocObject();
  v3 = v2;
  v4 = sub_219BE1E84();
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for TodayViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v4;

  v6 = sub_219BE1E04();

  swift_unownedRelease();
  if (!v6)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (sub_219BED0C4())
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_2186C709C(0, &unk_280EE4500, MEMORY[0x277D6E580], 1);
    v7 = swift_allocObject();
    *(v7 + 16) = v1;
    *(v7 + 24) = v4;

    sub_219BE1E14();
  }

  v21[0] = v18;
  v21[1] = v19;
  v22 = v20;
  if (*(&v19 + 1))
  {
    sub_2187E13C0(&unk_280ECFA88, type metadata accessor for TodayViewController, &unk_219CA341C);
    __swift_mutable_project_boxed_opaque_existential_1(v21, *(&v19 + 1));
    v8 = v6;
    sub_219BE9404();
  }

  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_2186C709C(0, &qword_280EE05D8, &protocol descriptor for NewsMastheadViewProviderType, 0);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = v4;

  sub_219BE1E14();

  swift_unownedRelease();
  if (!v18)
  {
    goto LABEL_20;
  }

  v10 = *(&v18 + 1);
  *(&v19 + 1) = swift_getObjectType();
  v20 = *(*(&v18 + 1) + 16);
  sub_218803268(v21, v17);
  sub_218803390(0);
  v12 = objc_allocWithZone(v11);
  v13 = v6;
  swift_unknownObjectRetain();
  v14 = sub_219BE8344();
  sub_2187E13C0(&qword_280ECFA80, type metadata accessor for TodayViewController, &unk_219CA3444);
  v15 = v13;
  sub_219BE8354();
  *&v15[OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadViewProviderDelegate + 8] = *(v10 + 8);
  swift_unknownObjectWeakAssign();
  sub_218803268(v21, &v18);
  if (*(&v19 + 1))
  {
    sub_2186C709C(0, &unk_280EE4500, MEMORY[0x277D6E580], 1);
    sub_2186C709C(0, qword_280ECE3A8, &protocol descriptor for MastheadableDelegate, 0);
    if (swift_dynamicCast())
    {
      v16 = v17[1];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    sub_2188033F4(&v18, sub_2188032CC);
    v16 = 0;
  }

  *&v15[OBJC_IVAR____TtC7NewsUI219TodayViewController_miniMastheadViewProviderDelegate + 8] = v16;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  if (sub_219BED0C4())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    sub_219BE9D54();
    [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    sub_219BE9CE4();
    swift_unknownObjectRelease();

    v15 = v14;
  }

  sub_2188033F4(v21, sub_2188032CC);
}

void sub_2187E0FB8(uint64_t a1)
{
  if (!qword_280EE7CD0)
  {
    sub_2187E1040();
    v1 = sub_219BE1EC4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7CD0);
    }
  }
}

unint64_t sub_2187E1040()
{
  result = qword_280E91D90;
  if (!qword_280E91D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E91D90);
  }

  return result;
}

uint64_t sub_2187E1094(void *a1, void *a2, uint64_t *a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  __swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
  sub_219BEC134();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  if (qword_280EE34E8 != -1)
  {
    swift_once();
  }

  v5 = sub_219BEBC84();
  __swift_project_value_buffer(v5, qword_280F62398);
  sub_2187E13C0(&qword_280EE34B8, MEMORY[0x277D2D120], MEMORY[0x277D2D118]);
  sub_219BEC144();

  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  sub_219BE1BA4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  sub_2187E1498();

  sub_219BDD274();
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_219BE1B94();
}

uint64_t sub_2187E12EC()
{
  v0 = sub_219BEBC84();
  __swift_allocate_value_buffer(v0, qword_280F62398);
  __swift_project_value_buffer(v0, qword_280F62398);
  sub_21871D24C();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_219C09BA0;
  *(v1 + 32) = sub_219BEC104();
  *(v1 + 40) = v2;
  return sub_219BEBC44();
}

uint64_t sub_2187E13C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2187E1408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2187E1450(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2187E1498()
{
  v0 = sub_219BDEED4();
  v1 = *(v0 - 8);
  v24 = v0;
  v25 = v1;
  MEMORY[0x28223BE20](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BE14C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE14A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE15B4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v15, *MEMORY[0x277D2F450], v11, v13);
  v16 = sub_219BDD0F4();
  (*(v12 + 8))(v15, v11);
  v17 = *MEMORY[0x277D2F310];
  v18 = *(v4 + 104);
  v18(v6, v17, v3);
  sub_219BE1484();
  sub_2187E13C0(&qword_280EE8010, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
  sub_219BDD1F4();
  (*(v8 + 8))(v10, v7);
  v18(v6, v17, v3);
  v19 = v23;
  sub_219BDEEC4();
  sub_2187E13C0(&unk_280EE8930, MEMORY[0x277D2D750], MEMORY[0x277D2D748]);
  v20 = v24;
  sub_219BDD1F4();
  (*(v25 + 8))(v19, v20);
  return v16;
}

char *sub_2187E1880(void *a1)
{
  v2 = sub_219BE2864();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187E2B98(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v132 = &v99 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED8F88, &protocol descriptor for TodayStylerType, 1);
  result = sub_219BE1E34();
  if (!v159)
  {
    __break(1u);
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC9538, &protocol descriptor for TodayEventHandlerType, 0);
  result = sub_219BE1E34();
  v12 = v156;
  if (!v156)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v122 = v157;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF2E0(0);
  result = sub_219BE1E24();
  v123 = result;
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF47C(0);
  result = sub_219BE1E24();
  v121 = result;
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DDE2C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v128 = v8;
  v129 = result;
  v130 = v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD80, MEMORY[0x277D345A0], 1);
  result = sub_219BE1E34();
  if (!v154)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  sub_219BF4FF4();
  swift_allocObject();
  v14 = sub_219BF4FE4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE7A84();
  result = sub_219BE1E24();
  v120 = result;
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187E0FB8(0);
  result = sub_219BE1E24();
  v127 = result;
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v126 = v14;
  v119 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v148)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = result;
  v154 = v13;
  v155 = sub_2186EFB7C(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v153[0] = v15;
  sub_219BE6AE4();
  swift_allocObject();
  v16 = sub_219BE6AC4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEDE24();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA8DA0, &protocol descriptor for MastheadPaywallEventHandlerType, 0);
  result = sub_219BE1E34();
  v131 = v151;
  if (!v151)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v118 = v152;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v18 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE5974();
  result = sub_219BE1E24();
  v117 = result;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBFE20, &protocol descriptor for TipModelAvailabilityType, 1);
  result = sub_219BE1E34();
  if (!v154)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EAF980, &protocol descriptor for OfflineStatusBannerModuleType, 1);
  result = sub_219BE1E34();
  v19 = v149;
  if (!v149)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v114 = v18;
  v115 = v3;
  v124 = v16;
  v125 = v17;
  v116 = v2;
  v20 = v150;
  __swift_project_boxed_opaque_existential_1(&v148, v149);
  v113 = (*(v20 + 16))(v19, v20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED4330, &protocol descriptor for WelcomeStatusType, 1);
  result = sub_219BE1E34();
  if (v147)
  {
    v21 = __swift_mutable_project_boxed_opaque_existential_1(v158, v159);
    v112 = &v99;
    v22 = MEMORY[0x28223BE20](v21);
    v24 = (&v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v25 + 16))(v24, v22);
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v153, v154);
    v111 = &v99;
    v27 = MEMORY[0x28223BE20](v26);
    v29 = (&v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v27);
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v146, v147);
    v110 = &v99;
    v32 = MEMORY[0x28223BE20](v31);
    v34 = (&v99 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34, v32);
    v36 = *v24;
    v37 = *v29;
    v38 = *v34;
    v39 = type metadata accessor for TodayStyler();
    v145 = &off_282A90018;
    v144 = v39;
    v143[0] = v36;
    v105 = sub_2186EFB7C(&qword_280EE4098, sub_2187DF47C, MEMORY[0x277D6E7F8]);
    v40 = type metadata accessor for TipModelFactory();
    v141 = v40;
    v142 = &off_282A78828;
    v140[0] = v37;
    v41 = type metadata accessor for WelcomeStatus(0);
    v138 = v41;
    v139 = &off_282A795B8;
    v137[0] = v38;
    v106 = type metadata accessor for TodayViewController();
    v42 = objc_allocWithZone(v106);
    v43 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
    v109 = &v99;
    v44 = MEMORY[0x28223BE20](v43);
    v46 = (&v99 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v47 + 16))(v46, v44);
    v48 = __swift_mutable_project_boxed_opaque_existential_1(v140, v141);
    v108 = &v99;
    v49 = MEMORY[0x28223BE20](v48);
    v51 = (&v99 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v52 + 16))(v51, v49);
    v53 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
    v107 = &v99;
    v54 = MEMORY[0x28223BE20](v53);
    v56 = (&v99 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v57 + 16))(v56, v54);
    v58 = *v46;
    v59 = *v51;
    v60 = *v56;
    v136[3] = v39;
    v136[4] = &off_282A90018;
    v136[0] = v58;
    v135[3] = v40;
    v135[4] = &off_282A78828;
    v134[4] = &off_282A795B8;
    v135[0] = v59;
    v134[3] = v41;
    v134[0] = v60;
    v61 = OBJC_IVAR____TtC7NewsUI219TodayViewController__lastImpression;
    v99 = OBJC_IVAR____TtC7NewsUI219TodayViewController__lastImpression;
    sub_2187E2B78(0);
    v63 = v62;
    v64 = *(v62 - 8);
    v100 = *(v64 + 56);
    v101 = v64 + 56;
    v65 = v132;
    v100(v132, 1, 1, v62);
    v104 = sub_2187E2B98;
    sub_2187F68B4(v65, v128, sub_2187E2B98);
    sub_2187E738C(0, &unk_280EE7410, sub_2187E2B98, MEMORY[0x277D6CCD0]);
    v102 = v66;
    swift_allocObject();
    v67 = sub_219BE2724();
    v103 = sub_2187E2B98;
    sub_2187F697C(v65, sub_2187E2B98);
    *&v42[v61] = v67;
    v68 = OBJC_IVAR____TtC7NewsUI219TodayViewController_visibilityEventManager;
    sub_2187E00C0(0, &qword_280EE7E00, sub_2187F6A38, &type metadata for TodayViewController.TodayVisibilityEvent, MEMORY[0x277D6CAA0]);
    swift_allocObject();
    *&v42[v68] = sub_219BE1D34();
    v69 = OBJC_IVAR____TtC7NewsUI219TodayViewController_refreshControl;
    *&v42[v69] = [objc_allocWithZone(MEMORY[0x277D75918]) init];
    v70 = MEMORY[0x277D84F90];
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_didAppearCompletions] = MEMORY[0x277D84F90];
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_didDisappearCompletions] = v70;
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadViewProviderDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_miniMastheadViewProviderDelegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_deferLoadingContent] = 0;
    v71 = &v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_windowTitle];
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v73 = [objc_opt_self() bundleForClass_];
    v74 = sub_219BDB5E4();
    v76 = v75;

    *v71 = v74;
    v71[1] = v76;
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_paywallBarButtonItemGroup] = 0;
    sub_218718690(v136, &v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_styler]);
    v77 = &v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler];
    v78 = v129;
    v79 = v122;
    v80 = v123;
    *v77 = v130;
    v77[1] = v79;
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintViewController] = v80;
    v81 = &v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintSelectionProvider];
    v82 = v120;
    v83 = v105;
    *v81 = v121;
    v81[1] = v83;
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintLayoutProvider] = v78;
    v84 = v127;
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_sharingActivityProviderFactory] = v126;
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_barCompressionManager] = v82;
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_refreshStateMachine] = v84;
    v85 = v125;
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_commands] = v124;
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_loadingGate] = v85;
    v86 = &v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadPaywall];
    v87 = v132;
    v88 = v118;
    *v86 = v131;
    v86[1] = v88;
    v100(v87, 1, 1, v63);
    v89 = v99;
    swift_beginAccess();
    v121 = *&v42[v89];
    swift_unknownObjectRetain();
    v123 = v80;

    v122 = v82;

    swift_unknownObjectRetain();

    v90 = v132;
    sub_2187F68B4(v132, v128, v104);
    swift_allocObject();
    v91 = sub_219BE2724();
    sub_2187F697C(v90, v103);
    *&v42[v89] = v91;
    swift_endAccess();
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_tracker] = v114;
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_tipManager] = v117;
    sub_218718690(v135, &v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_tipModelAvailability]);
    *&v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_offlineBannerCoordinator] = v113;
    sub_218718690(v134, &v42[OBJC_IVAR____TtC7NewsUI219TodayViewController_welcomeStatus]);
    v133.receiver = v42;
    v133.super_class = v106;

    v92 = objc_msgSendSuper2(&v133, sel_initWithNibName_bundle_, 0, 0);
    *(*(v92 + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler) + 24) = &off_282A86BE8;
    swift_unknownObjectWeakAssign();
    v93 = *(v92 + OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintViewController);
    v94 = v92;
    v95 = v93;
    sub_219BE8744();

    v96 = *(v94 + OBJC_IVAR____TtC7NewsUI219TodayViewController_barCompressionManager);
    sub_219BE7A44();

    *(*(v94 + OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadPaywall) + 24) = &off_282A86B98;
    swift_unknownObjectWeakAssign();
    v97 = sub_219BF53D4();
    [v94 setFocusGroupIdentifier_];

    sub_2187F6C90(&unk_282A2C608);

    v98 = v119;
    sub_219BE2854();

    sub_219BE1D14();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    (*(v115 + 8))(v98, v116);
    __swift_destroy_boxed_opaque_existential_1(v134);
    __swift_destroy_boxed_opaque_existential_1(v135);
    __swift_destroy_boxed_opaque_existential_1(v136);
    __swift_destroy_boxed_opaque_existential_1(v137);
    __swift_destroy_boxed_opaque_existential_1(v140);
    __swift_destroy_boxed_opaque_existential_1(v143);
    __swift_destroy_boxed_opaque_existential_1(v146);
    __swift_destroy_boxed_opaque_existential_1(v153);
    __swift_destroy_boxed_opaque_existential_1(v158);
    __swift_destroy_boxed_opaque_existential_1(&v148);
    return v94;
  }

LABEL_37:
  __break(1u);
  return result;
}

void sub_2187E2B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_2187E2BCC@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v11 = sub_2186EFB7C(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for TodayStyler();
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
    a2[4] = &off_282A90018;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2187E2E50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECFB20, &protocol descriptor for TodayInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v21;
  if (!v21)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED8F90, &protocol descriptor for TodayRouterType, 1);
  result = sub_219BE1E34();
  if (!v20)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED73A8, &protocol descriptor for TodayTrackerType, 0);
  result = sub_219BE1E34();
  v7 = v17;
  if (!v17)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BEDE24();
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = sub_2187F2C48(v5, v6, *v13, v7, v8, v9);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    result = __swift_destroy_boxed_opaque_existential_1(v19);
    *a2 = v15;
    a2[1] = &off_282A97CA0;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187E30B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD2B8(0, &unk_280ED9058, type metadata accessor for TodayBlueprintModifierFactory, &off_282A42208, type metadata accessor for TodayInteractor);
  result = sub_219BE1E24();
  if (result)
  {
    *a2 = result;
    a2[1] = &off_282A83390;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2187E3150(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECC710, &protocol descriptor for TodayDataManagerType, 0);
  result = sub_219BE1E34();
  if (!v70)
  {
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DDA00(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF740(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v5 = result;
  v35 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE89B0, MEMORY[0x277D302D8], 1);
  result = sub_219BE1DF4();
  if (!v69[3])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF5E0(0, &qword_280EE8A08, MEMORY[0x277D302B0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ECA980, &protocol descriptor for IssueRouteFactoryType, 1);
  result = sub_219BE1E34();
  if (!v68[3])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DFB08(0, &qword_280EE8CA8, sub_2187DFC08, MEMORY[0x277D2FF78]);
  result = sub_219BE1E24();
  v47 = result;
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF5E0(0, &qword_280EE8A20, MEMORY[0x277D30288]);
  result = sub_219BE1E24();
  v46 = result;
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91010, MEMORY[0x277D32BB8], 1);
  result = sub_219BE1DF4();
  if (!v67[3])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB3110, &protocol descriptor for ScrollRestorationManagerType, 0);
  result = sub_219BE1E34();
  if (!v65)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v34 = v66;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218731C8C(0, &qword_280EE4F80, MEMORY[0x277D6DC58]);
  result = sub_219BE1E24();
  v45 = result;
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v33 = v71;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6570, MEMORY[0x277D31810], 1);
  result = sub_219BE1E34();
  if (!v64[3])
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF874(0, &qword_280E90138, MEMORY[0x277D33ED8]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = result;
  v44 = v65;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA1500, &protocol descriptor for TodayEngagementOverlayManagerType, 0);
  result = sub_219BE1E34();
  if (!v62)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v32 = v63;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  v43 = result;
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E97530, &protocol descriptor for EngagementUpsellTriggerStateManagerType, 1);
  result = sub_219BE1E34();
  if (!v61[3])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E94048, &protocol descriptor for TodayEngagementMastheadPositionProviderType, 1);
  result = sub_219BE1E34();
  if (!v60[3])
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6288, &protocol descriptor for TodayEngagementModifierType, 1);
  result = sub_219BE1E34();
  if (!v59[3])
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB9630, &protocol descriptor for AppReviewRequestManagerType, 1);
  result = sub_219BE1E34();
  if (!v58[3])
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90260, MEMORY[0x277D33C38], 1);
  result = sub_219BE1E34();
  if (!v57[3])
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v41 = v8;
  v42 = v62;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v55)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v9 = v3;
  v39 = v70;
  v10 = v56;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8FF60, &protocolRef_TSLocationDetectionManagerType);
  result = sub_219BE1E24();
  v40 = result;
  if (!result)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v38 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E93EA0, &protocol descriptor for MastheadWelcomeMessageVisibilityProviderType, 1);
  result = sub_219BE1E34();
  if (!v54[3])
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v37 = v55;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA30F0, &protocol descriptor for MastheadAdSponsorshipProviderType, 1);
  result = sub_219BE1E34();
  if (v53[3])
  {
    sub_2187DD2B8(0, &unk_280ED9058, type metadata accessor for TodayBlueprintModifierFactory, &off_282A42208, type metadata accessor for TodayInteractor);
    v12 = v11;
    v13 = objc_allocWithZone(v11);
    v14 = MEMORY[0x277D85000];
    *&v13[*((*MEMORY[0x277D85000] & *v13) + 0x60) + 8] = 0;
    swift_unknownObjectWeakInit();
    v15 = *((*v14 & *v13) + 0xB0);
    v16 = type metadata accessor for TodayPrewarmResult(0);
    (*(*(v16 - 8) + 56))(&v13[v15], 1, 1, v16);
    *&v13[*((*v14 & *v13) + 0x118)] = 0;
    v13[*((*v14 & *v13) + 0x148)] = 0;
    *&v13[*((*v14 & *v13) + 0x68)] = v9;
    *&v13[*((*v14 & *v13) + 0x70)] = v35;
    *&v13[*((*v14 & *v13) + 0x80)] = v5;
    sub_218718690(v69, &v13[*((*v14 & *v13) + 0x88)]);
    *&v13[*((*v14 & *v13) + 0xA8)] = v6;
    sub_218718690(v68, &v13[*((*v14 & *v13) + 0x90)]);
    *&v13[*((*v14 & *v13) + 0x98)] = v47;
    *&v13[*((*v14 & *v13) + 0xA0)] = v46;
    sub_218718690(v67, &v13[*((*v14 & *v13) + 0xB8)]);
    v17 = &v13[*((*v14 & *v13) + 0xC0)];
    *v17 = v44;
    *(v17 + 1) = v34;
    *&v13[*((*v14 & *v13) + 0xC8)] = v45;
    sub_218718690(v64, &v13[*((*v14 & *v13) + 0x110)]);
    *&v13[*((*v14 & *v13) + 0xD0)] = v7;
    v18 = &v13[*((*v14 & *v13) + 0x78)];
    *v18 = v39;
    *(v18 + 1) = v33;
    v19 = &v13[*((*v14 & *v13) + 0xD8)];
    *v19 = v42;
    *(v19 + 1) = v32;
    *&v13[*((*v14 & *v13) + 0x120)] = v41;
    *&v13[*((*v14 & *v13) + 0x128)] = v43;
    sub_218718690(v61, &v13[*((*v14 & *v13) + 0x130)]);
    sub_218718690(v60, &v13[*((*v14 & *v13) + 0xE0)]);
    sub_218718690(v59, &v13[*((*v14 & *v13) + 0xE8)]);
    sub_218718690(v58, &v13[*((*v14 & *v13) + 0xF0)]);
    sub_218718690(v57, &v13[*((*v14 & *v13) + 0xF8)]);
    v20 = &v13[*((*v14 & *v13) + 0x138)];
    *v20 = v37;
    *(v20 + 1) = v10;
    *&v13[*((*v14 & *v13) + 0x140)] = v40;
    *&v13[*((*v14 & *v13) + 0x150)] = v38;
    sub_218718690(v54, &v13[*((*v14 & *v13) + 0x100)]);
    sub_218718690(v53, &v13[*((*v14 & *v13) + 0x108)]);
    v52.receiver = v13;
    v52.super_class = v12;

    v36 = v5;

    swift_unknownObjectRetain();

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v21 = objc_msgSendSuper2(&v52, sel_init);
    *(*(v21 + *((*v14 & *v21) + 0x78)) + OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate + 8) = &off_282A83320;
    swift_unknownObjectWeakAssign();
    sub_2187F296C(&qword_280ED9068, &unk_219C9E880);
    v22 = v21;

    sub_219BE6F14();

    sub_218718690(v22 + *((*v14 & *v22) + 0x110), aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v49);
    sub_2187F296C(qword_280ED90A0, &unk_219C9E848);
    v23 = v22;
    sub_219BE3A24();

    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v24 = v23 + *((*v14 & *v23) + 0xE0);
    swift_beginAccess();
    v25 = *(v24 + 24);
    v26 = *(v24 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v27 = *(v26 + 24);
    v28 = v23;
    v27(v21, &off_282A83310, v25, v26);
    swift_endAccess();
    [*(v28 + *((*v14 & *v28) + 0x140)) addObserver_];
    v29 = objc_opt_self();
    v30 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v50 = sub_219ACFAFC;
    v51 = v30;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    v49 = &block_descriptor_209;
    v31 = _Block_copy(aBlock);

    [v29 scheduleLowPriorityBlockForMainThread_];
    _Block_release(v31);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v57);
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v59);
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v64);
    __swift_destroy_boxed_opaque_existential_1(v67);
    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_destroy_boxed_opaque_existential_1(v69);
    return v28;
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_2187E436C()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

void *sub_2187E43A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayFeedServiceContextFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_26;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayFeedServiceConfigFetcher(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF260(0, &qword_280E92680, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D31BE8]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF538(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90260, MEMORY[0x277D33C38], 1);
  result = sub_219BE1E34();
  if (!v83[3])
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  v61 = result;
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  v60 = result;
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90160, MEMORY[0x277D33E68], 1);
  result = sub_219BE1E34();
  if (!v82[3])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v58 = v7;
  v59 = a2;
  v57 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FD10, MEMORY[0x277D34678], 1);
  result = sub_219BE1E34();
  v9 = v80;
  if (!v80)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v53 = v81;
  v10 = __swift_project_boxed_opaque_existential_1(v79, v80);
  v56 = v45;
  v11 = *(*(v9 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v55 = v13;
  v14 = *(v13 + 16);
  v64 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v14;
  v52 = (v13 + 16);
  v14(v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E350, 0x277D31340);
  result = sub_219BE1E24();
  v54 = result;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90368, MEMORY[0x277D33A00], 1);
  result = sub_219BE1E34();
  if (!v78[3])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v50 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0, &protocol descriptor for SubscriptionServiceType, 0);
  result = sub_219BE1E34();
  v49 = v76;
  if (!v76)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v48 = v77;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, qword_280EC2540, &protocolRef_TSCacheFlushingManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v47 = [result createPreFlushTask];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0, &protocol descriptor for SportsOnboardingManagerType, 1);
  result = sub_219BE1E34();
  if (!v75[3])
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED02F0, &protocol descriptor for ShortcutServiceType, 1);
  result = sub_219BE1E34();
  if (!v74)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E740, 0x277D31288);
  result = sub_219BE1E24();
  v63 = result;
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED3940, &protocol descriptor for HistoryServiceType, 1);
  result = sub_219BE1E34();
  if (!v72)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ED02E0, &protocol descriptor for ShortcutsModuleType, 1);
  result = sub_219BE1E34();
  if (!v70[3])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E901D0, MEMORY[0x277D33CB0], 1);
  result = sub_219BE1E34();
  if (!v69[3])
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100, MEMORY[0x277D33F00], 1);
  result = sub_219BE1E34();
  if (!v68[3])
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v62 = v9;
  v46 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187E00C0(0, &unk_280E906D0, sub_2186FB728, &type metadata for TodayOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v15 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = type metadata accessor for TodayOfflineFeedPrimer();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v67[3] = v16;
  v67[4] = &off_282A2DA30;
  v67[0] = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED0D40, &protocol descriptor for OfflineFeaturesType, 1);
  result = sub_219BE1E34();
  if (v66)
  {
    swift_unknownObjectRelease();
    v17 = type metadata accessor for TodayDataManager();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    v45[3] = v45;
    v19 = MEMORY[0x28223BE20](v18);
    v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v21, v19);
    v23 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
    v45[2] = v45;
    v24 = MEMORY[0x28223BE20](v23);
    v26 = v45 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v27 + 16))(v26, v24);
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
    v45[1] = v45;
    v29 = MEMORY[0x28223BE20](v28);
    v31 = v45 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = (*(v32 + 16))(v31, v29);
    v45[0] = v45;
    v34 = MEMORY[0x28223BE20](v33);
    v35 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = v62;
    (v51)(v35, v64, v62, v34);
    v37 = type metadata accessor for ShortcutService();
    v38 = type metadata accessor for HistoryService();
    v39 = type metadata accessor for OfflineFeatures();
    v44 = v36;
    v43 = v15;
    v52 = v15;
    v40 = v47;
    v41 = v54;
    v53 = sub_2187E9714(v46, v50, v58, v57, v83, v61, v60, v82, v35, v54, v78, v49, v48, v47, v75, v21, v63, v26, v70, v69, v68, v43, v67, v31, v17, v37, v38, v44, v39, &off_282A3DCA0, &off_282A6F3B0, v53, &off_282A442B0);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v65);
    __swift_destroy_boxed_opaque_existential_1(v71);
    __swift_destroy_boxed_opaque_existential_1(v73);
    (*(v55 + 8))(v64, v62);
    result = __swift_destroy_boxed_opaque_existential_1(v79);
    v42 = v59;
    *v59 = v53;
    v42[1] = &off_282A6CEF8;
    return result;
  }

LABEL_47:
  __break(1u);
  return result;
}

void *sub_2187E4FD0(void *a1)
{
  v2 = sub_219BF0634();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEDA24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E925C0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F618A8);
  (*(v7 + 16))(v9, v10, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D32E98], v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E901A0, MEMORY[0x277D33D90], 0);
  result = sub_219BE1DF4();
  if (v12)
  {
    sub_2187DF538(0);
    return sub_219BEE4F4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2187E5210@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v7);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayModelFactory();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_2187DF260(0, &unk_280E904A8, type metadata accessor for TodayModelFactory, sub_2187E553C, MEMORY[0x277D33858]);
  swift_allocObject();
  sub_219BF2444();
  sub_2187E5570();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ED73A8, &protocol descriptor for TodayTrackerType, 0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BF1D64();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BF26E4();
    swift_allocObject();
    result = sub_219BF26D4();
    v5 = MEMORY[0x277D339B8];
    *a2 = result;
    a2[1] = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2187E53F0(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2(0);
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a3(0);
    result = swift_allocObject();
    *(result + 16) = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2187E54A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0, &protocol descriptor for OfflineIssueManagerType, 0);
  result = sub_219BE1E34();
  if (v5)
  {
    result = swift_getObjectType();
    v4 = *(v6 + 8);
    a2[3] = result;
    a2[4] = v4;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2187E5570()
{
  result = qword_280E904B8;
  if (!qword_280E904B8)
  {
    sub_2187DF260(255, &unk_280E904A8, type metadata accessor for TodayModelFactory, sub_2187E553C, MEMORY[0x277D33858]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E904B8);
  }

  return result;
}

void *sub_2187E560C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD900(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DDE2C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  v59 = result;
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  v58 = result;
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  v57 = result;
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA990, &protocol descriptor for IssueModelFactoryType, 1);
  result = sub_219BE1E34();
  if (!v79)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91010, MEMORY[0x277D32BB8], 1);
  result = sub_219BE1DF4();
  if (!v77[3])
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for NewsActivityManager();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB8830, &protocol descriptor for HeadlineExposureTrackerType, 1);
  result = sub_219BE1E34();
  if (!v76[3])
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE81F0, MEMORY[0x277D2EB98], 1);
  result = sub_219BE1E34();
  if (!v75[3])
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_280E8E158, 0x277D310B8);
  result = sub_219BE1E24();
  v53 = result;
  if (!result)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC27E0, &protocol descriptor for AudioPlaybackContextType, 1);
  result = sub_219BE1E34();
  if (!v74[3])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ED4520, &protocol descriptor for UpsellManagerType, 1);
  result = sub_219BE1E34();
  if (!v73)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100, MEMORY[0x277D33F00], 1);
  result = sub_219BE1E34();
  if (!v71[3])
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v55 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v69)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v52 = v70;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF5E0(0, &qword_280EE8A08, MEMORY[0x277D302B0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = result;
  v56 = v7;
  v54 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF5E0(0, &qword_280EE8A20, MEMORY[0x277D30288]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE6340, MEMORY[0x277D35080], 1);
  result = sub_219BE1E34();
  if (!v68[3])
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v51 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (!v67[3])
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v47 = v9;
  v48 = v69;
  v49 = v5;
  v50 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91280, MEMORY[0x277D32868], 1);
  result = sub_219BE1E34();
  if (v66[3])
  {
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
    v46[3] = v46;
    v12 = MEMORY[0x28223BE20](v11);
    v14 = (v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14, v12);
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
    v46[2] = v46;
    v17 = MEMORY[0x28223BE20](v16);
    v19 = (v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v14;
    v22 = *v19;
    v23 = type metadata accessor for IssueModelFactory();
    v65[3] = v23;
    v65[4] = &off_282A725A8;
    v65[0] = v21;
    v24 = type metadata accessor for UpsellManager();
    v63 = v24;
    v64 = &off_282A95970;
    v62[0] = v22;
    type metadata accessor for TodayTracker();
    v25 = swift_allocObject();
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v65, v23);
    v46[1] = v46;
    v27 = MEMORY[0x28223BE20](v26);
    v29 = (v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v27);
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v62, v63);
    v46[0] = v46;
    v32 = MEMORY[0x28223BE20](v31);
    v34 = (v46 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34, v32);
    v36 = *v29;
    v37 = *v34;
    v61[3] = v23;
    v61[4] = &off_282A725A8;
    v60[4] = &off_282A95970;
    v61[0] = v36;
    v60[3] = v24;
    v60[0] = v37;
    *(v25 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v25 + 288) = 2;
    *(v25 + 290) = 0;
    *(v25 + 400) = 0;
    v38 = v54;
    *(v25 + 32) = v49;
    *(v25 + 40) = v38;
    v40 = v58;
    v39 = v59;
    *(v25 + 48) = v56;
    *(v25 + 56) = v39;
    v41 = v57;
    *(v25 + 64) = v40;
    *(v25 + 72) = v41;
    sub_218718690(v61, v25 + 80);
    sub_218718690(v77, v25 + 120);
    *(v25 + 160) = v55;
    sub_218718690(v76, v25 + 168);
    sub_218718690(v75, v25 + 208);
    *(v25 + 296) = v53;
    sub_218718690(v74, v25 + 248);
    sub_218718690(v60, v25 + 304);
    sub_218718690(v71, v25 + 344);
    v42 = v47;
    v44 = v51;
    v43 = v52;
    *(v25 + 384) = v48;
    *(v25 + 392) = v43;
    *(v25 + 408) = v42;
    *(v25 + 416) = v44;
    sub_218718690(v68, v25 + 424);
    sub_218718690(v67, v25 + 464);
    sub_218718690(v66, v25 + 504);
    sub_219BE16D4();
    swift_allocObject();
    swift_weakInit();
    sub_2186EFB7C(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);

    v55 = v55;
    swift_unknownObjectRetain();

    sub_219BDD254();

    sub_219BE0014();
    swift_allocObject();
    swift_weakInit();
    sub_2186EFB7C(&unk_280EE84D0, MEMORY[0x277D2E2E0], MEMORY[0x277D2E2D8]);
    sub_219BDD254();

    sub_219BDFE54();
    swift_allocObject();
    swift_weakInit();

    sub_2186EFB7C(&qword_280EE8540, MEMORY[0x277D2E1A8], MEMORY[0x277D2E1A0]);
    sub_219BDD254();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v67);
    __swift_destroy_boxed_opaque_existential_1(v68);
    __swift_destroy_boxed_opaque_existential_1(v71);
    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v75);
    __swift_destroy_boxed_opaque_existential_1(v76);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v60);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v62);
    __swift_destroy_boxed_opaque_existential_1(v65);
    __swift_destroy_boxed_opaque_existential_1(v72);
    __swift_destroy_boxed_opaque_existential_1(v78);
    result = sub_2186EFB7C(&qword_280EDE678, type metadata accessor for TodayTracker, &unk_219C6CC1C);
    v45 = v50;
    *v50 = v25;
    v45[1] = result;
    return result;
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_2187E638C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2187E63C4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_2187E6434(void *a1)
{
  sub_2187DDE2C(0);
  swift_allocObject();
  v2 = sub_219BE8554();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayDebugPersonalizationGroupLayoutKeyProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *(result + 16) = v2;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187E64E0()
{
  type metadata accessor for TodayDebugPersonalizationGroupLayoutKeyProvider();
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2187E656C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

uint64_t sub_2187E65D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for DefaultHeadlineExposureTracker();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for SportsHeadlineExposureTracker();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for ProxyHeadlineExposureTracker();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_282AA41A8;
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

void *sub_2187E66A0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91280, MEMORY[0x277D32868], 1);
  result = sub_219BE1E34();
  if (v6)
  {
    type metadata accessor for DefaultHeadlineExposureTracker();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    sub_2186CB1F0(&v7, v4 + 24);
    sub_2186CB1F0(&v5, v4 + 64);
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2187E67E4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE81F0, MEMORY[0x277D2EB98], 1);
  result = sub_219BE1E34();
  if (!v36)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = result;
  v30 = v4;
  v31 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EBB6B0, &protocol descriptor for HeadlineNoiseGeneratorType, 1);
  result = sub_219BE1E34();
  if (v34)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    v29 = &v29;
    v7 = MEMORY[0x28223BE20](v6);
    v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for HeadlineNoiseGenerator();
    v32[3] = v12;
    v32[4] = &off_282A66888;
    v32[0] = v11;
    type metadata accessor for SportsHeadlineExposureTracker();
    v13 = swift_allocObject();
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v32, v12);
    v15 = MEMORY[0x28223BE20](v14);
    v17 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v17;
    v13[13] = v12;
    v13[14] = &off_282A66888;
    v13[10] = v19;
    v20 = MEMORY[0x277D84F98];
    v13[15] = MEMORY[0x277D84F98];
    v13[16] = v20;
    sub_2187E738C(0, &unk_280E8C0F0, MEMORY[0x277D2F870], MEMORY[0x277D84560]);
    v21 = sub_219BE16E4();
    v22 = *(v21 - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_219C0B8C0;
    v26 = v25 + v24;
    v27 = *(v22 + 104);
    v27(v26, *MEMORY[0x277D2F838], v21);
    v27(v26 + v23, *MEMORY[0x277D2F678], v21);
    v27(v26 + 2 * v23, *MEMORY[0x277D2F650], v21);
    v28 = sub_2187E73F0(v25);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v13[17] = v28;
    v13[2] = v31;
    sub_2186CB1F0(&v35, (v13 + 3));
    v13[8] = v30;
    v13[9] = v5;
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v33);
    return v13;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_2187E6C94@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE20, MEMORY[0x277D34428], 1);
  result = sub_219BE1E34();
  if (!v23)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_2186CB1F0(&v22, v24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E580, &protocolRef_FCContentContext);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E270, &protocolRef_FCFeedPersonalizing);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90620, MEMORY[0x277D33550], 1);
  result = sub_219BE1E34();
  if (!v21[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17[1] = v4;
  v17[2] = v6;
  v18 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
  result = sub_219BE1E34();
  if (v20[3])
  {
    v11 = type metadata accessor for HeadlineNoiseGenerator();
    v12 = swift_allocObject();
    v12[15] = 0;
    v12[2] = v8;
    v12[3] = v9;
    v12[4] = v10;
    sub_218718690(v21, (v12 + 5));
    sub_218718690(v20, (v12 + 10));
    sub_2187E71A0(v24, v19);
    v13 = swift_allocObject();
    sub_2187E71D8(v19, v13 + 16);
    *(v13 + 56) = v12;
    v19[0] = MEMORY[0x277D84F90];
    sub_2186D5C5C(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    v14 = MEMORY[0x277D6CA70];
    sub_2186D95F8(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
    sub_218744378(&qword_280E8F600, &qword_280E8F610, v14);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    sub_219BF7164();
    sub_2186D95F8(0, &qword_280EE7158, sub_2187E72A0, MEMORY[0x277D6CEE8]);
    swift_allocObject();
    v15 = sub_219BE2D14();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_2187E7338(v24);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    v12[15] = v15;

    v16 = v18;
    v18[3] = v11;
    v16[4] = &off_282A66888;
    *v16 = v12;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2187E713C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_2187E7248(uint64_t a1)
{
  if (!qword_280E8EC00)
  {
    sub_218731D50();
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EC00);
    }
  }
}

void sub_2187E72D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2187E738C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2187E73F0(uint64_t a1)
{
  v2 = sub_219BE16E4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_2187E7704(0);
    v9 = sub_219BF72E4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_218751238(&unk_280EE7F90, MEMORY[0x277D2F870], MEMORY[0x277D2F878]);
      v16 = sub_219BF52E4();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_218751238(&unk_280EE7F80, MEMORY[0x277D2F870], MEMORY[0x277D2F880]);
          v23 = sub_219BF53A4();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2187E7704(uint64_t a1)
{
  if (!qword_280E8D748)
  {
    sub_219BE16E4();
    sub_218751238(&unk_280EE7F90, MEMORY[0x277D2F870], MEMORY[0x277D2F878]);
    v1 = sub_219BF72F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D748);
    }
  }
}

uint64_t sub_2187E77BC(void *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t (*a4)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD900(0);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187DDE2C(0);
    result = sub_219BE1E24();
    if (result)
    {
      v10 = result;
      sub_2187DF5E0(0, a2, a3);
      swift_allocObject();
      return a4(v9, v10);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2187E792C(void *a1, uint64_t a2)
{
  a1[1] = sub_2187DD9B8(&qword_280EDE690, a2, type metadata accessor for TodayTracker, &unk_219C6CB74);
  a1[2] = sub_2187DD9B8(qword_280EDE698, v3, type metadata accessor for TodayTracker, &unk_219C6CBD4);
  result = sub_2187DD9B8(&unk_280EDE680, v4, type metadata accessor for TodayTracker, &unk_219C6CB9C);
  a1[3] = result;
  return result;
}

void *sub_2187E79D8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E6C0, 0x277D30EE0);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EB9620, &protocol descriptor for AppStorageLevelProviderType, 1);
    result = sub_219BE1E34();
    if (v21)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      v5 = MEMORY[0x28223BE20](v4);
      v7 = (v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7, v5);
      v9 = *v7;
      v18 = type metadata accessor for AppStorageLevelProvider();
      v19 = &off_282A5DD20;
      v17[0] = v9;
      v10 = objc_allocWithZone(type metadata accessor for CacheFlushingManager());
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
      v12 = MEMORY[0x28223BE20](v11);
      v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14, v12);
      v16 = sub_2187E7C58(v3, *v14, v10);
      __swift_destroy_boxed_opaque_existential_1(v17);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v16;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_2187E7C58(uint64_t a1, uint64_t a2, char *a3)
{
  v19 = a1;
  ObjectType = swift_getObjectType();
  v18 = sub_219BF6694();
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF6674();
  MEMORY[0x28223BE20](v8);
  v9 = sub_219BED1D4();
  MEMORY[0x28223BE20](v9 - 8);
  v24 = type metadata accessor for AppStorageLevelProvider();
  v25 = &off_282A5DD20;
  v23[0] = a2;
  v10 = OBJC_IVAR___TSCacheFlushingManager_preFlushGroup;
  *&a3[v10] = dispatch_group_create();
  v17 = OBJC_IVAR___TSCacheFlushingManager_updateQueue;
  v11 = sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v16[0] = "sports_upsell_state";
  v16[1] = v11;
  sub_219BED194();
  v22 = MEMORY[0x277D84F90];
  sub_2186D5C5C(&qword_280E8E3C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v12 = MEMORY[0x277D85230];
  sub_2186D95F8(0, &qword_280E8EC40, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_218744378(&qword_280E8EC30, &qword_280E8EC40, v12);
  sub_219BF7164();
  (*(v5 + 104))(v7, *MEMORY[0x277D85260], v18);
  *&a3[v17] = sub_219BF66D4();
  *&a3[OBJC_IVAR___TSCacheFlushingManager_cacheFlusher] = v19;
  sub_218718690(v23, &a3[OBJC_IVAR___TSCacheFlushingManager_storageLevelProvider]);
  v21.receiver = a3;
  v21.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v21, sel_init);
  __swift_project_boxed_opaque_existential_1(v23, v24);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v13;

  sub_219BE2D04();

  __swift_destroy_boxed_opaque_existential_1(v23);
  return v14;
}

uint64_t sub_2187E7FF4(uint64_t a1, void *a2)
{
  v3 = sub_219BE2C14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE23A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE27C4();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE2394();
    (*(v4 + 104))(v6, *MEMORY[0x277D6CE30], v3);
    v12 = sub_219BE27B4();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
    ObjectType = swift_getObjectType();
    sub_2187E8200(v12, ObjectType);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187E8200(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2187E85D8;
  *(v7 + 24) = v6;
  v10[4] = sub_2187E85B0;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_2187E84EC;
  v10[3] = &block_descriptor_136;
  v8 = _Block_copy(v10);

  [v3 addPreFlushTask_];
  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187E8360()
{

  return swift_deallocObject();
}

uint64_t sub_2187E84EC(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v2(sub_2187E8A6C, v4);
}

uint64_t sub_2187E8570()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void sub_2187E85E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BE2E54();
  sub_219BE3024();
}

void *sub_2187E8644(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EBDA70, &protocol descriptor for OfflineContentManagerType, 1);
  result = sub_219BE1E34();
  if (!v14)
  {
    goto LABEL_8;
  }

  sub_2186CB1F0(&v12, v18);
  sub_218718690(v18, v17);
  v5 = swift_allocObject();
  sub_2186CB1F0(v17, v5 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2187E89CC;
  *(v6 + 24) = v5;
  v15 = sub_2187E85A8;
  v16 = v6;
  *&v12 = MEMORY[0x277D85DD0];
  *(&v12 + 1) = 1107296256;
  v13 = sub_2187E84EC;
  v14 = &block_descriptor_70;
  v7 = _Block_copy(&v12);

  [a1 addPreFlushTask_];
  _Block_release(v7);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for OfflineFeedsCacheRetainer();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2187E8D94;
  *(v9 + 24) = v8;
  v15 = sub_2187E8D90;
  v16 = v9;
  *&v12 = MEMORY[0x277D85DD0];
  *(&v12 + 1) = 1107296256;
  v13 = sub_2187E84EC;
  v14 = &block_descriptor_11_0;
  v10 = _Block_copy(&v12);

  [a1 addPreFlushTask_];
  _Block_release(v10);

  __swift_destroy_boxed_opaque_existential_1(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_2187E8958()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2187E89CC(uint64_t a1, uint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  return (*(v6 + 24))(a1, a2, v5, v6);
}

void sub_2187E8A98(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR___TSCacheFlushingManager_preFlushGroup);

    dispatch_group_leave(v3);
  }
}

uint64_t CacheFlushingManager.addPreFlushTask(_:)(void (*a1)(uint64_t (*)(), uint64_t))
{
  dispatch_group_enter(*(v1 + OBJC_IVAR___TSCacheFlushingManager_preFlushGroup));
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();

  a1(sub_2187E8A7C, v3);
}

uint64_t sub_2187E8BAC()
{
  MEMORY[0x21CECFA80](v0 + 16);

  return swift_deallocObject();
}

void *sub_2187E8BE4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E580, &protocolRef_FCContentContext);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EBADD0, &protocol descriptor for OfflineFeedsSupervisorType, 1);
    result = sub_219BE1E34();
    if (v6)
    {
      type metadata accessor for OfflineFeedsCacheRetainer();
      v4 = swift_allocObject();
      sub_2187E8D04(0);
      swift_allocObject();
      *(v4 + 64) = sub_219BE2E64();
      *(v4 + 16) = v3;
      sub_2186CB1F0(&v5, v4 + 24);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2187E8D04(uint64_t a1)
{
  if (!qword_280EE7048)
  {
    sub_218738154(255, &qword_280E8E5F0, &unk_280E8E5F8, 0x277D310A8, MEMORY[0x277D83D88]);
    v1 = sub_219BE2EA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7048);
    }
  }
}

void sub_2187E8D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21870F474(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE30B4();
  v3 = sub_219BE2E54();
  sub_219BE3024();
}

void sub_2187E8E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = sub_2187A9144;
  v10[4] = v8;
  v12[4] = sub_218EC1318;
  v12[5] = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_218793E0C;
  v12[3] = &block_descriptor_68;
  v11 = _Block_copy(v12);

  [v9 scheduleLowPriorityBlock_];
  _Block_release(v11);
}

uint64_t sub_2187E8FA4()
{

  return swift_deallocObject();
}

uint64_t sub_2187E8FDC()
{

  return swift_deallocObject();
}

uint64_t sub_2187E9110@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for ShortcutsModule();
    v7 = objc_allocWithZone(v6);
    sub_218718690(v10, &v7[OBJC_IVAR____TtC7NewsUI215ShortcutsModule_resolver]);
    *&v7[OBJC_IVAR____TtC7NewsUI215ShortcutsModule_tracker] = v5;
    v9.receiver = v7;
    v9.super_class = v6;
    v8 = objc_msgSendSuper2(&v9, sel_init);
    result = __swift_destroy_boxed_opaque_existential_1(v10);
    a2[3] = v6;
    a2[4] = &protocol witness table for ShortcutsModule;
    *a2 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2187E920C(void *a1)
{
  v2 = sub_219BF6694();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF6674();
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BED1D4();
  MEMORY[0x28223BE20](v9 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EBDA70, &protocol descriptor for OfflineContentManagerType, 1);
  result = sub_219BE1E34();
  if (!v25)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBADD0, &protocol descriptor for OfflineFeedsSupervisorType, 1);
  result = sub_219BE1E34();
  if (!v23)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v19 = v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8E580, &protocolRef_FCContentContext);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v11 = result;
  v15 = v8;
  v16 = v5;
  v17 = v3;
  v18 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DCA0, &protocolRef_FCNewsAppConfigurationManager);
  result = sub_219BE1E24();
  if (result)
  {
    v12 = result;
    sub_218718690(a1, v21);
    type metadata accessor for TodayOfflineFeedPrimer();
    v13 = swift_allocObject();
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    sub_219BED1B4();
    v20 = MEMORY[0x277D84F90];
    sub_2186EFB7C(&qword_280E8E3C0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    v14 = MEMORY[0x277D85230];
    sub_2187E738C(0, &qword_280E8EC40, MEMORY[0x277D85230], MEMORY[0x277D83940]);
    sub_2187E968C(&qword_280E8EC30, &qword_280E8EC40, v14);
    sub_219BF7164();
    (*(v17 + 104))(v16, *MEMORY[0x277D85260], v18);
    v13[19] = sub_219BF66D4();
    sub_2186CB1F0(&v24, (v13 + 2));
    sub_2186CB1F0(&v22, (v13 + 7));
    v13[12] = v11;
    v13[13] = v12;
    sub_2186CB1F0(v21, (v13 + 14));
    return v13;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187E9628(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2190D05A4(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2187E968C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2187E738C(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_2187E9714(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, objc_class *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v124 = a8;
  v125 = a5;
  v103 = a6;
  v104 = a7;
  v114 = a4;
  v115 = a3;
  v116 = a1;
  v117 = a2;
  v110 = a22;
  v109 = a21;
  v121 = a20;
  v123 = a19;
  v107 = a14;
  v106 = a13;
  v105 = a12;
  v122 = a11;
  v120 = a23;
  v98 = a24;
  v97 = a33;
  v108 = a17;
  v96 = a18;
  v119 = a15;
  v118 = a25;
  v102 = a10;
  v113 = a32;
  v33 = sub_219BED184();
  v100 = *(v33 - 8);
  v101 = v33;
  MEMORY[0x28223BE20](v33);
  v99 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146[3] = a28;
  v146[4] = a32;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v146);
  v111 = a28;
  v112 = boxed_opaque_existential_1;
  (*(*(v111 - 8) + 32))(boxed_opaque_existential_1, a9, v111);
  v144 = a26;
  v145 = a30;
  v36 = __swift_allocate_boxed_opaque_existential_1(v143);
  (*(*(a26 - 8) + 32))(v36, a16, a26);
  v141 = a27;
  v142 = a31;
  v37 = __swift_allocate_boxed_opaque_existential_1(v140);
  (*(*(a27 - 8) + 32))(v37, v96, a27);
  v138 = a29;
  v139 = v97;
  v38 = __swift_allocate_boxed_opaque_existential_1(v137);
  (*(*(a29 - 8) + 32))(v38, v98, a29);
  v39 = objc_allocWithZone(v118);
  v40 = __swift_mutable_project_boxed_opaque_existential_1(v143, v144);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = (&v95 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v41);
  v45 = __swift_mutable_project_boxed_opaque_existential_1(v140, v141);
  v46 = MEMORY[0x28223BE20](v45);
  v48 = (&v95 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v46);
  v50 = __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
  v51 = MEMORY[0x28223BE20](v50);
  v53 = (&v95 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v54 + 16))(v53, v51);
  v55 = *v43;
  v56 = *v48;
  v57 = *v53;
  v135 = type metadata accessor for ShortcutService();
  v136 = &off_282A3DCA0;
  v134[0] = v55;
  v132 = type metadata accessor for HistoryService();
  v133 = &off_282A6F3B0;
  v131[0] = v56;
  v130[3] = type metadata accessor for OfflineFeatures();
  v130[4] = &off_282A442B0;
  v130[0] = v57;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v58 = OBJC_IVAR____TtC7NewsUI216TodayDataManager_accessQueue;
  sub_2187D9028();
  v60 = v99;
  v59 = v100;
  v61 = v101;
  (*(v100 + 104))(v99, *MEMORY[0x277D851B8], v101);
  v62 = sub_219BF66E4();
  (*(v59 + 8))(v60, v61);
  *&v39[v58] = v62;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_sharedItemAdditions] = 0;
  v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_blockNextAutoRefresh] = 0;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutsPluginConfig] = 0;
  v63 = v117;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_feedServiceContextFactory] = v116;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_feedServiceConfigFetcher] = v63;
  v64 = v114;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_feedManager] = v115;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_feedPluginManager] = v64;
  sub_218718690(v125, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_sharedItemManager]);
  v65 = v104;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_appConfigManager] = v103;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_bundleSubscriptionManager] = v65;
  sub_218718690(v124, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_bundleSessionManager]);
  sub_218718690(v146, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_bundleSubscriptionDetectionManager]);
  v66 = v102;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_subscriptionList] = v102;
  sub_218718690(v122, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_nativeAdService]);
  v67 = &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_subscriptionService];
  v68 = v106;
  *v67 = v105;
  v67[1] = v68;
  v69 = v107;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_cachePreFlushTask] = v107;
  v70 = OBJC_IVAR____TtC7NewsUI216TodayDataManager__lastRefreshContext;
  swift_beginAccess();
  sub_2187EA1BC(0, &unk_280EE7080, &type metadata for TodayDataManager.RefreshContext, MEMORY[0x277D6CF18]);
  v128 = 0;
  v129 = 0;
  swift_allocObject();

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v71 = v66;
  swift_unknownObjectRetain();
  v72 = v69;
  *&v39[v70] = sub_219BE2E64();
  swift_endAccess();
  v73 = v119;
  sub_218718690(v119, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_sportsOnboardingManager]);
  sub_218718690(v134, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutService]);
  v74 = v108;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_readingList] = v108;
  sub_218718690(v131, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_historyService]);
  sub_218718690(v123, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_shortcutsModule]);
  sub_218718690(v121, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_puzzleStatsService]);
  v75 = v109;
  sub_218718690(v109, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_puzzleHistoryService]);
  v76 = v110;
  *&v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineManager] = v110;
  sub_218718690(v120, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeedPrimer]);
  sub_218718690(v130, &v39[OBJC_IVAR____TtC7NewsUI216TodayDataManager_offlineFeatures]);
  v127.receiver = v39;
  v127.super_class = v118;
  v117 = v74;
  v118 = v76;
  v77 = objc_msgSendSuper2(&v127, sel_init);
  [v65 addObserver_];
  __swift_project_boxed_opaque_existential_1(v125, v125[3]);
  sub_2187EA20C(&unk_280ED75B8, v78, type metadata accessor for TodayDataManager, &unk_219C75B08);
  v79 = v77;
  sub_219BF2F24();

  v80 = v73[4];
  __swift_project_boxed_opaque_existential_1(v73, v73[3]);
  v81 = *(v80 + 48);
  v82 = v79;
  v81();

  v83 = *__swift_project_boxed_opaque_existential_1(v134, v135);
  v84 = v82;
  sub_2187EA254(v84, v83);

  [v117 addObserver_];
  v85 = *__swift_project_boxed_opaque_existential_1(v131, v132);
  v86 = v84;
  sub_2187EA260(v86, v85);

  __swift_project_boxed_opaque_existential_1(v75, v75[3]);
  sub_2187EA20C(&unk_280ED75A0, v87, type metadata accessor for TodayDataManager, &unk_219C75AA0);
  v88 = v86;
  sub_219BF3784();

  __swift_destroy_boxed_opaque_existential_1(v126);
  sub_2187EA20C(&qword_280ED7588, v89, type metadata accessor for TodayDataManager, &unk_219C75A78);
  v90 = v88;
  sub_219BF4E14();

  sub_2187EA20C(&qword_280ED75B0, v91, type metadata accessor for TodayDataManager, &unk_219C75B98);
  v92 = v90;
  sub_219BEE504();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  v93 = sub_219BF1AF4();

  __swift_destroy_boxed_opaque_existential_1(v120);
  __swift_destroy_boxed_opaque_existential_1(v121);
  __swift_destroy_boxed_opaque_existential_1(v123);
  __swift_destroy_boxed_opaque_existential_1(v122);
  __swift_destroy_boxed_opaque_existential_1(v124);
  __swift_destroy_boxed_opaque_existential_1(v130);
  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v131);
  __swift_destroy_boxed_opaque_existential_1(v134);
  __swift_destroy_boxed_opaque_existential_1(v119);
  __swift_destroy_boxed_opaque_existential_1(v146);
  __swift_destroy_boxed_opaque_existential_1(v125);
  __swift_destroy_boxed_opaque_existential_1(v137);
  __swift_destroy_boxed_opaque_existential_1(v140);
  __swift_destroy_boxed_opaque_existential_1(v143);
  return v92;
}

void sub_2187EA1BC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2187EA20C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2187EA26C(void *a1, unint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC7NewsUI214HistoryService_observers;
  swift_beginAccess();
  v6 = *(a2 + v5);
  v16 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_21:
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v14 = a3;
    v15 = a2;
    v8 = 0;
    a2 = v6 & 0xC000000000000001;
    a3 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a2)
      {
        MEMORY[0x21CECE0F0](v8, v6);
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          a2 = v15;
          v10 = v16;
          a3 = v14;
          goto LABEL_17;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_14;
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

      ++v8;
      if (v9 == v7)
      {
        goto LABEL_15;
      }
    }
  }

  v10 = MEMORY[0x277D84F90];
LABEL_17:

  *(a2 + v5) = v10;

  type metadata accessor for HistoryServiceObserverProxy();
  v11 = swift_allocObject();
  *(v11 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v11 + 24) = a3;
  swift_unknownObjectWeakAssign();
  v12 = swift_beginAccess();
  MEMORY[0x21CECC690](v12);
  if (*((*(a2 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_219BF5A14();
  }

  sub_219BF5A54();
  return swift_endAccess();
}

uint64_t sub_2187EA558(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD900(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187DDABC(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2187DDA00(0);
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

void *sub_2187EA638(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DDB94(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DF260(0, &unk_280EE48B8, sub_2187DDB94, sub_2187DEF60, MEMORY[0x277D6E068]);
  v4 = v3;
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = result;
  v10 = v4;
  v11 = sub_2187F078C();
  v9 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4510, MEMORY[0x277D6E558], 1);
  result = sub_219BE1DF4();
  if (v7)
  {
    sub_2186CB1F0(&v6, v8);
    sub_2187DDABC(0);
    swift_allocObject();
    return sub_219BE72C4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187EA824(void *a1)
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
  sub_2187DDE4C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DECE4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DEE6C(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2187DDB94(0);
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_2187EA980(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD2B8(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
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

uint64_t sub_2187EAAB8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_2187DD2B8(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2187EAB80(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD900(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DDE2C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for TodayBlueprintViewCellProvider();
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
  type metadata accessor for TodayBlueprintViewSupplementaryViewProvider();
  result = sub_219BE1E24();
  if (result)
  {
    *&v8[0] = v3;
    sub_2187DDE4C(0);
    v7 = objc_allocWithZone(v6);
    return sub_219BE9B64();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2187EAD40(void *a1, void *a2)
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

void *sub_2187EAE40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (!v40)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810, MEMORY[0x277D32340], 0);
  sub_218718690(a1, &v34);
  v3 = swift_allocObject();
  sub_2186CB1F0(&v34, v3 + 16);
  sub_219BE1E14();

  v4 = v37;
  if (!v37)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0, &protocol descriptor for OfflineIssueManagerType, 0);
  result = sub_219BE1E34();
  v6 = v32;
  if (!v32)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  v7 = v30;
  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v28 = v33;
  v29 = v5;
  v27 = v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    v10 = MEMORY[0x28223BE20](v9);
    v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = *v12;
    v15 = type metadata accessor for BaseStyler(0);
    v35 = v15;
    v16 = sub_2186EFB7C(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v36 = v16;
    *&v34 = v14;
    type metadata accessor for TodayBlueprintViewCellProvider();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(&v34, v15);
    v19 = MEMORY[0x28223BE20](v18);
    v21 = (&v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21, v19);
    v23 = *v21;
    v17[7] = v15;
    v17[8] = v16;
    v17[3] = 0;
    v17[4] = v23;
    swift_unknownObjectWeakInit();
    v24 = v28;
    v25 = v29;
    v17[9] = v4;
    v17[10] = v25;
    v17[11] = v6;
    v17[12] = v24;
    v26 = v27;
    v17[13] = v7;
    v17[14] = v26;
    v17[15] = v8;
    __swift_destroy_boxed_opaque_existential_1(&v34);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return v17;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_2187EB258(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, qword_280ED73A8, &protocol descriptor for TodayTrackerType, 0);
  result = sub_219BE1E34();
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  ObjectType = swift_getObjectType();
  v7 = *(v9 + 24);
  v5[0] = v8;
  sub_2186C709C(0, &qword_280E90170, MEMORY[0x277D33E60], 1);
  sub_219BE1BA4();
  __swift_destroy_boxed_opaque_existential_1(v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BEF314();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v5[0] = result;
  v5[1] = MEMORY[0x277D32550];
  sub_2186C709C(0, &qword_280E91350, MEMORY[0x277D326C0], 0);
  sub_219BE1BA4();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BEA1E4();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E91280, MEMORY[0x277D32868], 1);
  result = sub_219BE1E34();
  if (ObjectType)
  {
    sub_219BE1BA4();
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187EB550(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187DF260(0, &qword_280EE4678, sub_2187DD900, sub_2187DEF94, MEMORY[0x277D6E388]);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2187EB958();
      sub_219BEA1E4();
      swift_allocObject();
      return sub_219BEA1D4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2187EB67C(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2187DF260(0, &unk_280EE4708, sub_2187DD900, sub_2187DEF94, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD900(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_2187DF260(0, &qword_280EE4678, sub_2187DD900, sub_2187DEF94, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2187EB958()
{
  result = qword_280EE4680;
  if (!qword_280EE4680)
  {
    sub_2187DF260(255, &qword_280EE4678, sub_2187DD900, sub_2187DEF94, MEMORY[0x277D6E388]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4680);
  }

  return result;
}

void *sub_2187EB9F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CFDE4(0, &qword_280EDC810, &protocol descriptor for BaseStylerType);
  result = sub_219BE1E34();
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    v6 = __swift_project_boxed_opaque_existential_1(v8, v9);
    a2[3] = v4;
    a2[4] = *(v5 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2187EBAD0(uint64_t a1)
{
  if (!qword_280EE3488)
  {
    sub_219BEC174();
    sub_219BEC084();
    sub_2186CBC0C(&unk_280EE3380, MEMORY[0x277D2D5A0], MEMORY[0x277D2D598]);
    v1 = sub_219BEBDE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3488);
    }
  }
}

uint64_t type metadata accessor for FeedVideoAdProviderFactory(uint64_t a1)
{
  result = qword_280EBB6D0;
  if (!qword_280EBB6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2187EBC34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  v7 = v35;
  if (!v35)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  result = sub_219BE1E34();
  if (!v34)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v25 = v36;
  v26 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ECA980, &protocol descriptor for IssueRouteFactoryType, 1);
  result = sub_219BE1E34();
  if (v32)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for IssueRouteFactory();
    v30[3] = v14;
    v30[4] = &off_282A54388;
    v30[0] = v13;
    v15 = type metadata accessor for NewsFormatLayoutViewRouter();
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v30, v14);
    v18 = MEMORY[0x28223BE20](v17);
    v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v28 = v14;
    v29 = &off_282A54388;
    *&v27 = v22;
    *(v16 + 24) = 0;
    swift_unknownObjectWeakInit();
    *(v16 + 32) = v26;
    *(v16 + 40) = v6;
    v23 = v25;
    *(v16 + 48) = v7;
    *(v16 + 56) = v23;
    sub_2186CB1F0(&v33, v16 + 64);
    sub_2186CB1F0(&v27, v16 + 104);
    *(v16 + 144) = 0u;
    *(v16 + 160) = 0u;
    *(v16 + 176) = 0;
    __swift_destroy_boxed_opaque_existential_1(v30);
    __swift_destroy_boxed_opaque_existential_1(v31);
    a2[3] = v15;
    result = sub_2187EC130();
    a2[4] = result;
    *a2 = v16;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_2187EBFE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8DE40, 0x277D31330);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186CFDE4(0, &unk_280EE8AB0, MEMORY[0x277D30250]);
    result = sub_219BE1E34();
    if (v9)
    {
      v6 = type metadata accessor for IssueRouteFactory();
      v7 = swift_allocObject();
      *(v7 + 16) = v5;
      result = sub_2186CB1F0(&v8, v7 + 24);
      a2[3] = v6;
      a2[4] = &off_282A54388;
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

unint64_t sub_2187EC130()
{
  result = qword_280EE06D0;
  if (!qword_280EE06D0)
  {
    type metadata accessor for NewsFormatLayoutViewRouter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE06D0);
  }

  return result;
}

void *sub_2187EC188@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280E8DC20, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90580, MEMORY[0x277D33678], 1);
  result = sub_219BE1E34();
  if (!v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &qword_280EC5430, &protocolRef_TSFeatureAvailabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (v10)
  {
    v7 = type metadata accessor for FeedItemDimmingEvaluator();
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    sub_2186CB1F0(&v11, v8 + 24);
    *(v8 + 64) = v6;
    sub_2186CB1F0(&v9, v8 + 72);
    a2[3] = v7;
    result = sub_218754C0C(qword_280EC2048, type metadata accessor for FeedItemDimmingEvaluator, &unk_219C12260);
    a2[4] = result;
    *a2 = v8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2187EC3F0(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6 == 2)
  {
    sub_219BDC8D4();
    sub_219BDC8B4();
    if (*a2 != -1)
    {
      swift_once();
    }

    LOBYTE(v6) = sub_219BDC8C4();

    *(v4 + v5) = v6 & 1;
  }

  return v6 & 1;
}

uint64_t sub_2187EC490()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC7F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CA3BC(0);
  (*(v5 + 104))(v7, *MEMORY[0x277D6D048], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  result = sub_219BDC9C4();
  qword_280EE9218 = result;
  return result;
}

uint64_t sub_2187EC63C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0, MEMORY[0x277D32C08], 1);
  sub_218718690(a1, v6);
  v2 = swift_allocObject();
  sub_2186CB1F0(v6, v2 + 16);
  sub_219BE1E14();

  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for MagazineFeedEmbeddedSupplementaryRenderer();
    result = sub_219BE1E24();
    if (result)
    {
      v4 = result;
      type metadata accessor for TodayBlueprintViewSupplementaryViewProvider();
      v5 = swift_allocObject();
      *(v5 + 24) = 0;
      swift_unknownObjectWeakInit();
      sub_2186CB1F0(&v7, v5 + 32);
      *(v5 + 72) = v4;
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2187EC790(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EC97C(0, &qword_280E8B8A8, &unk_280E917F0, MEMORY[0x277D32370], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187DF3BC(0);
  v5 = v4;
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    *(v3 + 56) = v5;
    *(v3 + 64) = sub_2186EFB7C(&qword_280E91928, sub_2187DF3BC, MEMORY[0x277D32298]);
    *(v3 + 32) = v7;
    sub_2187EC97C(0, &qword_280E8EF20, &unk_280E917F0, MEMORY[0x277D32370], MEMORY[0x277D83940]);
    sub_219BE1BA4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2187EC910(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2187EC97C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C709C(255, a3, a4, 1);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2187EC9E8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187DD900(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2187DF3BC(0);
    swift_allocObject();
    return sub_219BEEB34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2187ECA80(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E98390, &protocol descriptor for MagazineFeedGroupTitleViewRendererType, 1);
  result = sub_219BE1E34();
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EE4480, MEMORY[0x277D6E640], 1);
    result = sub_219BE1E34();
    if (v20)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      v4 = MEMORY[0x28223BE20](v3);
      v6 = (&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6, v4);
      v8 = *v6;
      v9 = type metadata accessor for MagazineFeedGroupTitleViewRenderer();
      v18[3] = v9;
      v18[4] = &off_282A82F78;
      v18[0] = v8;
      type metadata accessor for MagazineFeedEmbeddedSupplementaryRenderer();
      v10 = swift_allocObject();
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
      v12 = MEMORY[0x28223BE20](v11);
      v14 = (&v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14, v12);
      v16 = *v14;
      v10[5] = v9;
      v10[6] = &off_282A82F78;
      v10[2] = v16;
      v10[12] = 0;
      sub_2186CB1F0(&v19, (v10 + 7));
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v21);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2187ECCF8()
{
  type metadata accessor for MagazineFeedViewController();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_280EC7BB0, &protocol descriptor for MagazineFeedStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EC7BB8, &protocol descriptor for MagazineFeedRouterType, 1);
  sub_219BE2914();
  type metadata accessor for MagazineFeedRouter();
  sub_219BE19C4();

  sub_2186C709C(0, qword_280EB3F50, &protocol descriptor for MagazineFeedEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EBB378, &protocol descriptor for MagazineFeedInteractorType, 0);
  sub_219BE2914();
  sub_2186ED33C(0, &unk_280EC7BD0, type metadata accessor for MagazineFeedBlueprintModifierFactory, sub_2187EDED8, type metadata accessor for MagazineFeedInteractor);
  sub_219BE19C4();

  sub_2186C709C(0, &unk_280EB84B0, &protocol descriptor for MagazineFeedDataManagerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EBDDB8, &protocol descriptor for MastheadModelProviderType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280E901A0, MEMORY[0x277D33D90], 0);
  sub_219BE2914();

  type metadata accessor for MagazineFeedModelFactory();
  sub_219BE2904();

  sub_2187EE318(0);
  sub_219BE2904();

  type metadata accessor for MagazineFeedBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EAC5E0, &protocol descriptor for MagazineFeedSectionFactoryType, 1);
  sub_219BE2914();

  sub_2187EE404(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187EEE20(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186ED33C(0, &unk_280EE4158, sub_2187EE748, sub_2187EEB48, MEMORY[0x277D6E7C8]);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_219BEA1E4();
  sub_219BE2904();

  sub_2187EF1EC(0);
  sub_219BE2904();

  sub_2187EE4C0(0);
  sub_219BE2904();

  sub_2187EEF64(0, &qword_280EE4238, sub_2187EF004, sub_2187EEB7C, MEMORY[0x277D6E7B0]);
  sub_219BE2904();

  sub_2187EE748(0);
  sub_219BE2904();

  type metadata accessor for MagazineFeedBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2187EF20C(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187EF2E8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  sub_219BE2904();

  sub_2187EE5CC(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187EE8EC(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187EEC70(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187EED60(0);
  sub_219BE2904();

  sub_219BE8984();
  sub_219BE2904();

  type metadata accessor for MagazineFeedBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for MagazineFeedBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2187EF40C(0);
  sub_219BE2904();

  sub_2186ED33C(0, &qword_280EE4610, sub_2187EE318, sub_2187EEB14, MEMORY[0x277D6E388]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_2187EF498(0);
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

  sub_2186C709C(0, qword_280E98390, &protocol descriptor for MagazineFeedGroupTitleViewRendererType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E9B3D8, &protocol descriptor for MagazineFeedGroupTitleViewStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280E930A0, &protocol descriptor for MagazineFeedGroupTitleViewLayoutAttributesFactoryType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E93808, &protocol descriptor for MagazineFeedGroupMoreActionsButtonRendererType, 1);
  sub_219BE2914();

  sub_2186ED33C(0, &unk_280EE4830, sub_2187EE5CC, sub_2187EEDEC, MEMORY[0x277D6E068]);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE7A84();
  sub_219BE2904();

  sub_2186C709C(0, qword_280EC4688, &protocol descriptor for MagazineFeedTrackerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280EE89B0, MEMORY[0x277D302D8], 1);
  sub_219BE2914();

  sub_2187EF554(0, &unk_280EE89D8, MEMORY[0x277D302B0]);
  sub_219BE2904();

  sub_2187EF6B8(0, &qword_280EE8CB0, &qword_280EC4878, &unk_219C4FCA8, MEMORY[0x277D2FF78]);
  sub_219BE2904();

  sub_2187EF554(0, &qword_280EE8A10, MEMORY[0x277D30288]);
  sub_219BE2904();
}

uint64_t sub_2187EDF24(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_2187EE034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186F6AA0(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    v8[3] = sub_2186F6AA0(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187EE128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186EB0F8(&qword_280EB0350, 255, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    v8[3] = sub_2186EB0F8(&qword_280ED5CC0, 255, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187EE224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186EC158(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    v8[3] = sub_2186EC158(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187EE318(uint64_t a1)
{
  if (!qword_280EE5400)
  {
    type metadata accessor for MagazineFeedSectionDescriptor(255);
    type metadata accessor for MagazineFeedModel(255);
    sub_218985F8C(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    sub_218985F8C(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v1 = sub_219BE6FA4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5400);
    }
  }
}

void sub_2187EE404(uint64_t a1)
{
  if (!qword_280EE5598)
  {
    sub_2187EE318(255);
    sub_2187EE4C0(255);
    sub_2187EEB14();
    sub_2186D5500(&unk_280EE5258, sub_2187EE4C0, MEMORY[0x277D6D960]);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5598);
    }
  }
}

void sub_2187EE4C0(uint64_t a1)
{
  if (!qword_280EE5250)
  {
    type metadata accessor for MagazineFeedSectionDescriptor(255);
    type metadata accessor for MagazineFeedModel(255);
    sub_2187EE5CC(255);
    sub_2186D5500(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    sub_2186D5500(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    sub_2187EEDEC();
    v1 = sub_219BE72E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE5250);
    }
  }
}

void sub_2187EE5CC(uint64_t a1)
{
  if (!qword_280EE4E88)
  {
    sub_2186C6148(255, &qword_280E8E4C0, 0x277D752A0);
    sub_2187EE8EC(255);
    sub_2187EEC70(255);
    sub_2187EED60(255);
    type metadata accessor for MagazineFeedViewController();
    sub_2186D5500(&qword_280EE3E78, sub_2187EE8EC, MEMORY[0x277D6E820]);
    sub_2186D5500(&qword_280EE4300, sub_2187EEC70, MEMORY[0x277D6E738]);
    sub_2186D5500(&unk_280EE3D18, sub_2187EED60, MEMORY[0x277D6E918]);
    v1 = sub_219BE7BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4E88);
    }
  }
}

void sub_2187EE768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineFeedLayoutSectionDescriptor;
    v8[1] = type metadata accessor for MagazineFeedLayoutModel(255);
    v8[2] = sub_2187EEA78();
    v8[3] = sub_2186EB0F8(&unk_280EC4850, 255, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA48);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187EE82C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineFeedLayoutSectionDescriptor;
    v8[1] = type metadata accessor for MagazineFeedLayoutModel(255);
    v8[2] = sub_2187EEA78();
    v8[3] = sub_2186EF8AC(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA48);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187EE8EC(uint64_t a1)
{
  if (!qword_280EE3E68)
  {
    sub_2187EE318(255);
    sub_2187EE748(255);
    type metadata accessor for MagazineFeedBlueprintViewCellProvider();
    type metadata accessor for MagazineFeedBlueprintViewSupplementaryViewProvider();
    sub_2187EEB14();
    sub_2187EEB48();
    sub_2186D5500(qword_280E99658, type metadata accessor for MagazineFeedBlueprintViewCellProvider, &unk_219CBBEB8);
    sub_2186D5500(qword_280EE1D20, type metadata accessor for MagazineFeedBlueprintViewSupplementaryViewProvider, &unk_219C34364);
    sub_2187EEB7C();
    v1 = sub_219BE9B94();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3E68);
    }
  }
}

uint64_t type metadata accessor for MagazineFeedLayoutModel(uint64_t a1)
{
  result = qword_280EC4820;
  if (!qword_280EC4820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2187EEA78()
{
  result = qword_280E9D2E8[0];
  if (!qword_280E9D2E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9D2E8);
  }

  return result;
}

uint64_t sub_2187EEBE4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineFeedLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2187EEC28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2187EEC70(uint64_t a1)
{
  if (!qword_280EE42F0)
  {
    sub_2187EE318(255);
    sub_2187EE748(255);
    type metadata accessor for MagazineFeedViewController();
    sub_2187EEB14();
    sub_2187EEB48();
    sub_2186D5500(&qword_280EBB298, type metadata accessor for MagazineFeedViewController, &unk_219C2A268);
    sub_2187EEB7C();
    v1 = sub_219BE9794();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE42F0);
    }
  }
}

void sub_2187EED60(uint64_t a1)
{
  if (!qword_280EE3D10)
  {
    sub_2187EE318(255);
    sub_2187EE748(255);
    sub_2187EEB14();
    sub_2187EEB48();
    v1 = sub_219BE9F34();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3D10);
    }
  }
}

void sub_2187EEE20(uint64_t a1)
{
  if (!qword_280EE3BF0)
  {
    sub_2187EE748(255);
    type metadata accessor for MagazineFeedBlueprintLayoutBuilder();
    sub_2187EEF64(255, &qword_280EE4238, sub_2187EF004, sub_2187EEB7C, MEMORY[0x277D6E7B0]);
    sub_2187EEB48();
    sub_2186D5500(&qword_280EA0018, type metadata accessor for MagazineFeedBlueprintLayoutBuilder, &unk_219C537A0);
    sub_2187EF05C();
    v1 = sub_219BEA4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3BF0);
    }
  }
}

void sub_2187EEF64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v12[0] = &type metadata for MagazineFeedLayoutSectionDescriptor;
    v12[1] = type metadata accessor for MagazineFeedLayoutModel(255);
    v12[2] = a3();
    v12[3] = a4();
    v10 = a5(a1, v12);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_2187EF004()
{
  result = qword_280E9D2E0;
  if (!qword_280E9D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9D2E0);
  }

  return result;
}

unint64_t sub_2187EF05C()
{
  result = qword_280EE4240;
  if (!qword_280EE4240)
  {
    sub_2187EEF64(255, &qword_280EE4238, sub_2187EF004, sub_2187EEB7C, MEMORY[0x277D6E7B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4240);
  }

  return result;
}

void sub_2187EF0F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186D5500(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    v8[3] = sub_2186D5500(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187EF20C(uint64_t a1)
{
  if (!qword_280EE4948)
  {
    sub_2187EE318(255);
    sub_2187EE5CC(255);
    type metadata accessor for MagazineFeedViewController();
    sub_2187EEB14();
    sub_2187EEDEC();
    sub_2186D5500(&qword_280EBB298, type metadata accessor for MagazineFeedViewController, &unk_219C2A268);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4948);
    }
  }
}

void sub_2187EF2E8(uint64_t a1)
{
  if (!qword_280E91BB0)
  {
    type metadata accessor for MagazineFeedServiceConfig(255);
    sub_2187EF390();
    sub_2186D5500(&unk_280ED5E10, type metadata accessor for MagazineFeedGroup, &unk_219C2DF80);
    v1 = sub_219BEE514();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91BB0);
    }
  }
}

uint64_t sub_2187EF3C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2187EF40C(uint64_t a1)
{
  if (!qword_280E918C8)
  {
    type metadata accessor for MagazineFeedServiceConfig(255);
    sub_2187EE318(255);
    sub_2187EF390();
    sub_2187EEB14();
    v1 = sub_219BEEB44();
    if (!v2)
    {
      atomic_store(v1, &qword_280E918C8);
    }
  }
}

void sub_2187EF498(uint64_t a1)
{
  if (!qword_280EE3FA8)
  {
    sub_2187EE5CC(255);
    sub_2187EE318(255);
    sub_2187EEDEC();
    sub_2186D5500(&unk_280EE5420, sub_2187EE318, MEMORY[0x277D6D8C0]);
    v1 = sub_219BE9AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3FA8);
    }
  }
}

void sub_2187EF554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = &type metadata for MagazineFeedLayoutSectionDescriptor;
    v8[3] = type metadata accessor for MagazineFeedLayoutModel(255);
    v8[4] = sub_2186D5500(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    v8[5] = sub_2186D5500(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v8[6] = sub_2187EEA78();
    v8[7] = sub_2187EF684();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2187EF6B8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_2187EE748(255);
    v13[0] = v10;
    v13[1] = sub_2187EEB48();
    v13[2] = sub_2186D5500(a3, type metadata accessor for MagazineFeedLayoutModel, a4);
    v13[3] = sub_2186D5500(&unk_280EC4860, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FD20);
    v13[4] = sub_2186D5500(&unk_280EC4838, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FCF8);
    v11 = a5(a1, v13);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void *sub_2187EF7C4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9B3D8, &protocol descriptor for MagazineFeedGroupTitleViewStylerType, 1);
  result = sub_219BE1E34();
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280E93808, &protocol descriptor for MagazineFeedGroupMoreActionsButtonRendererType, 1);
    result = sub_219BE1E34();
    if (v39)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      v33[2] = v33;
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v33[1] = v33;
      v11 = MEMORY[0x28223BE20](v10);
      v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v8;
      v16 = *v13;
      v17 = type metadata accessor for MagazineFeedGroupTitleViewStyler();
      v37[3] = v17;
      v37[4] = &off_282A69220;
      v37[0] = v15;
      v18 = type metadata accessor for MagazineFeedGroupMoreActionsButtonRenderer();
      v35 = v18;
      v36 = &off_282A46358;
      v34[0] = v16;
      v19 = type metadata accessor for MagazineFeedGroupTitleViewRenderer();
      v20 = swift_allocObject();
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v17);
      v22 = MEMORY[0x28223BE20](v21);
      v24 = (v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24, v22);
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v27 = MEMORY[0x28223BE20](v26);
      v29 = (v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      v31 = *v24;
      v32 = *v29;
      v20[5] = v17;
      v20[6] = &off_282A69220;
      v20[2] = v31;
      v20[10] = v18;
      v20[11] = &off_282A46358;
      v20[7] = v32;
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v40);
      a2[3] = v19;
      a2[4] = &off_282A82F78;
      *a2 = v20;
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