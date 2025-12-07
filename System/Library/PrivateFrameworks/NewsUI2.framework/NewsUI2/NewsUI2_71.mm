void *sub_218EAF224(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE318(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE5CC(0);
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
  sub_2186ED33C(0, &qword_280EE4610, sub_2187EE318, sub_2187EEB14, MEMORY[0x277D6E388]);
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
    sub_2186D5500(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_2187EF20C(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_218EAF570(uint64_t *a1, void *a2)
{
  v3 = sub_219BE8FC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186ED33C(0, &unk_280EE4830, sub_2187EE5CC, sub_2187EEDEC, MEMORY[0x277D6E068]);
  v8 = v7;
  v9 = sub_219BE1E24();
  v10 = v9;
  if (v9)
  {
    v9 = sub_218EB86B0();
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
  sub_2186ED33C(0, &unk_280EE4158, sub_2187EE748, sub_2187EEB48, MEMORY[0x277D6E7C8]);
  v12 = v11;
  v13 = sub_219BE1E24();
  v14 = v13;
  if (v13)
  {
    v13 = sub_218EB8614();
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
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_2186D5500(&qword_280E8FF80, MEMORY[0x277D34268], MEMORY[0x277D34260]);
  }

  sub_219BE8704();
  (*(v4 + 104))(v6, *MEMORY[0x277D6E3C8], v3);
  sub_219BE86C4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280E8FF70, MEMORY[0x277D34270], 0);
  sub_219BE1E34();
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2187EE748(0);
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
      sub_2187EEB48();

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

uint64_t sub_218EAF960(uint64_t a1, uint64_t a2)
{
  sub_218EB8AF8(0, &qword_280EE35F8, sub_218951F54, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v17 - v3;
  sub_218951F54(0);
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
    sub_2187EE318(0);
    sub_2187EEB14();
    sub_219BE7B94();

    v12 = sub_218A864F0();
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
    sub_2187EE318(0);
    sub_2187EEB14();
    sub_219BE7B94();

    (*(v7 + 56))(v4, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v4, 1, 1, v6);
  }

  sub_219BE6684();
  type metadata accessor for MagazineFeedSectionDescriptor(0);
  type metadata accessor for MagazineFeedModel(0);
  sub_2186D5500(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
  sub_2186D5500(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
  sub_219BF44D4();
  sub_218EB8B5C(v4, &qword_280EE35F8, sub_218951F54);
  type metadata accessor for MagazineFeedServiceConfig(0);
  sub_2187EF390();
  v15 = sub_219BE6624();

  sub_21885AB78(v12);
  return v15;
}

void *sub_218EAFCD8(void *a1)
{
  v2 = sub_219BF0634();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEDA24();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E92598 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F61860);
  (*(v7 + 16))(v9, v10, v6);
  (*(v3 + 104))(v5, *MEMORY[0x277D32ED0], v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E901A0, MEMORY[0x277D33D90], 0);
  result = sub_219BE1DF4();
  if (v12)
  {
    sub_2187EF2E8(0);
    return sub_219BEE4F4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218EAFF1C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187EF20C(0);
  if (!sub_219BE1E24())
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_2186D5500(&qword_280EE4980, sub_2187EF20C, MEMORY[0x277D6DFB0]);
  sub_219BEE4B4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280ECA7A0, &protocol descriptor for MyMagazinesModuleType, 1);
  sub_219BE1E34();
  if (!v9)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EBB378, &protocol descriptor for MagazineFeedInteractorType, 0);
  sub_219BE1E34();
  if (v7)
  {
    swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (!v3)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v3 = 0;
  }

  sub_2186ED33C(0, &qword_280EB3B20, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, type metadata accessor for MyMagazinesFeedPluginFactory);
  v4 = swift_allocObject();
  *(v4 + 64) = 0;
  swift_unknownObjectWeakInit();
  sub_2186CB1F0(&v8, v4 + 16);
  *(v4 + 64) = v3;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *&v8 = v4;
  sub_218EB84D4();
  sub_219BEE4D4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &qword_280EE6430, MEMORY[0x277D34F20], 1);
  sub_219BE1E34();
  if (!v9)
  {
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EB84B0, &protocol descriptor for MagazineFeedDataManagerType, 0);
  sub_219BE1E34();
  if (v7)
  {
    swift_getObjectType();
    v5 = swift_conformsToProtocol2();
    if (!v5)
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = 0;
  }

  sub_2186ED33C(0, &qword_280EC0D68, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, type metadata accessor for PaywallFeedPluginFactory);
  v6 = swift_allocObject();
  *(v6 + 64) = 0;
  swift_unknownObjectWeakInit();
  sub_2186CB1F0(&v8, v6 + 16);
  *(v6 + 64) = v5;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *&v8 = v6;
  sub_218EB8570();
  sub_219BEE4D4();
}

void *sub_218EB02F4(void *a1)
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

uint64_t sub_218EB0430(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE8EC(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EEC70(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EED60(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2187EE5CC(0);
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218EB05A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE5CC(0);
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

uint64_t sub_218EB0658()
{
  v0 = sub_219BE80A4();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v1);
  return sub_219BE9574();
}

uint64_t sub_218EB0728(void *a1)
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

void sub_218EB07F4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE318(0);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE748(0);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedBlueprintViewCellProvider();
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
  type metadata accessor for MagazineFeedBlueprintViewSupplementaryViewProvider();
  if (sub_219BE1E24())
  {
    *&v8[0] = v3;
    sub_2187EE8EC(0);
    v7 = objc_allocWithZone(v6);
    sub_219BE9B64();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_218EB0990(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
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

void *sub_218EB0AA4(uint64_t a1, void *a2)
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

void *sub_218EB0B7C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE318(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE748(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186ED33C(0, &qword_280EE4610, sub_2187EE318, sub_2187EEB14, MEMORY[0x277D6E388]);
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

  sub_2186D5500(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800, MEMORY[0x277D6E170], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_2187EEC70(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_218EB0E10(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187EF498(0);
  if (sub_219BE1E24())
  {
    sub_2186D5500(&unk_280EE3FB8, sub_2187EF498, MEMORY[0x277D6E7F8]);
  }

  sub_219BE9774();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187EF20C(0);
  sub_219BE1E24();
  sub_219BE9714();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE9564();
  sub_219BE1DE4();
  sub_219BE9784();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE8984();
  sub_219BE1DE4();
  sub_219BE9734();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187EF2E8(0);
  sub_219BE1E24();
  sub_219BE9724();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineFeedViewController();
  v3 = sub_219BE1E24();
  if (v3)
  {
    v4 = v3;
    v5 = sub_219BE9704();
    sub_219BE9244();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218EB1084(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE318(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187EE748(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2187EED60(0);
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

uint64_t sub_218EB1144()
{
  v0 = sub_219BE8964();
  MEMORY[0x28223BE20](v0);
  v1 = MEMORY[0x277D6E088];
  sub_218EB8AF8(0, &qword_280E8BDB8, MEMORY[0x277D6E088], MEMORY[0x277D84560]);
  *(swift_allocObject() + 16) = xmmword_219C09BA0;
  sub_219BE8954();
  sub_2186D5500(&qword_280EE4810, MEMORY[0x277D6E088], MEMORY[0x277D6E090]);
  sub_218EB8AF8(0, &qword_280E8F4A8, v1, MEMORY[0x277D83940]);
  sub_218EB8430();
  sub_219BF7164();
  v2 = objc_allocWithZone(sub_219BE8984());
  return sub_219BE8974();
}

void sub_218EB1310(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  sub_219BE1E34();
  if (!v40)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810, MEMORY[0x277D32340], 0);
  sub_218718690(a1, &v34);
  v2 = swift_allocObject();
  sub_2186CB1F0(&v34, v2 + 16);
  sub_219BE1E14();

  v3 = v37;
  if (!v37)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v38;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0, &protocol descriptor for OfflineIssueManagerType, 0);
  sub_219BE1E34();
  v5 = v32;
  if (!v32)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  sub_219BE1E34();
  v6 = v30;
  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v28 = v33;
  v29 = v4;
  v27 = v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  v7 = sub_219BE1E24();
  if (v7)
  {
    v8 = v7;
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    v10 = MEMORY[0x28223BE20](v9);
    v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = *v12;
    v15 = type metadata accessor for BaseStyler(0);
    v35 = v15;
    v16 = sub_2186D5500(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v36 = v16;
    *&v34 = v14;
    type metadata accessor for MagazineFeedBlueprintViewCellProvider();
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
    v17[9] = v3;
    v17[10] = v25;
    v17[11] = v5;
    v17[12] = v24;
    v26 = v27;
    v17[13] = v6;
    v17[14] = v26;
    v17[15] = v8;
    __swift_destroy_boxed_opaque_existential_1(&v34);
    __swift_destroy_boxed_opaque_existential_1(v39);
    return;
  }

LABEL_11:
  __break(1u);
}

void *sub_218EB1724(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BEA1E4();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_219BE1B94();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &unk_280E91280, MEMORY[0x277D32868], 1);
    result = sub_219BE1E34();
    if (v5[3])
    {
      sub_219BE1BA4();
      return __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_218EB1884(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineFeedViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A40870;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void sub_218EB1918(void *a1)
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
    v3 = sub_219BE1E24();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for MagazineFeedBlueprintViewSupplementaryViewProvider();
      v5 = swift_allocObject();
      *(v5 + 24) = 0;
      swift_unknownObjectWeakInit();
      sub_2186CB1F0(&v7, v5 + 32);
      *(v5 + 72) = v4;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_218EB1A68(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218C3070C(0, &qword_280E8B8A8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187EF40C(0);
  v5 = v4;
  v6 = sub_219BE1E24();
  if (v6)
  {
    v7 = v6;
    *(v3 + 56) = v5;
    *(v3 + 64) = sub_2186D5500(&unk_280E918D8, sub_2187EF40C, MEMORY[0x277D32298]);
    *(v3 + 32) = v7;
    sub_218C3070C(0, &qword_280E8EF20, MEMORY[0x277D83940]);
    sub_219BE1BA4();
  }

  else
  {
    __break(1u);
  }
}

void sub_218EB1BC0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineFeedViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A40860;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_218EB1C54(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE318(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2187EF40C(0);
    swift_allocObject();
    return sub_219BEEB34();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EB1CEC(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2186ED33C(0, &unk_280EE46B8, sub_2187EE318, sub_2187EEB14, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE318(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_2186ED33C(0, &qword_280EE4610, sub_2187EE318, sub_2187EEB14, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218EB1FC8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187EE748(0);
  if (sub_219BE1E24())
  {
    sub_2186D5500(&qword_280EE4CA0, sub_2187EE748, MEMORY[0x277D6DF30]);
    sub_219BE8E94();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280E90FB0, MEMORY[0x277D32C40], 1);
    sub_219BE1E34();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280E927A0, MEMORY[0x277D30420], 1);
    sub_219BE1E34();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
    sub_219BE1E24();
    sub_218EB82A8(0);
    swift_allocObject();
    sub_219BEFCE4();
    sub_2186D5500(&unk_280E91190, sub_218EB82A8, MEMORY[0x277D32A40]);
    sub_219BE8EA4();

    sub_218EB8350(0);
    swift_allocObject();
    sub_219BF0074();
    sub_2186D5500(&qword_280E91070, sub_218EB8350, MEMORY[0x277D32B90]);
    sub_219BE8EA4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218EB226C(void *a1)
{
  sub_2187F2110(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF498(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_2186D5500(&qword_280EE3FC8, sub_2187EF498, MEMORY[0x277D6E800]);
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

void *sub_218EB23AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE5CC(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE318(0);
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
    sub_2186D5500(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_2187EF498(0);
    swift_allocObject();
    return sub_219BE9AB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218EB2584(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE5CC(0);
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

uint64_t sub_218EB2638(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187EF20C(0);
  v6 = sub_219BE1E24();
  if (v6)
  {
    v7 = v6;
    v8 = a3();
    v6 = v7;
  }

  else
  {
    v8 = 0;
  }

  return a4(v6, v8);
}

uint64_t sub_218EB26C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF20C(0);
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_2186D5500(&unk_280EE4958, sub_2187EF20C, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EB2770(void *a1)
{
  sub_218EB8AF8(0, &unk_280EE3E00, MEMORY[0x277D6E8E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (v14 - v3);
  v5 = sub_219BE9524();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_219BE9564();
  result = sub_219BE1DE4();
  if (result)
  {
    v14[4] = v9;
    v14[5] = MEMORY[0x277D6E680];
    v14[1] = result;
    *v8 = 5;
    (*(v6 + 104))(v8, *MEMORY[0x277D6E670], v5);
    *v4 = 10;
    v11 = *MEMORY[0x277D6E8D8];
    v12 = sub_219BE9D64();
    v13 = *(v12 - 8);
    (*(v13 + 104))(v4, v11, v12);
    (*(v13 + 56))(v4, 0, 1, v12);
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

uint64_t sub_218EB29D8()
{
  sub_218EB8AF8(0, &unk_280EE3E00, MEMORY[0x277D6E8E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_219BE8944();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE8544();
  MEMORY[0x28223BE20](v7 - 8);
  sub_219BE9564();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v8 = qword_280F617C8;
  (*(v4 + 104))(v6, *MEMORY[0x277D6E080], v3);
  v9 = sub_219BE9D64();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = v8;
  sub_219BE8534();
  return sub_219BE9554();
}

uint64_t sub_218EB2C0C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE5CC(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2186ED33C(0, &unk_280EE4830, sub_2187EE5CC, sub_2187EEDEC, MEMORY[0x277D6E068]);
    swift_allocObject();
    return sub_219BE8914();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EB2CC8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2187EE748(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2187EE5CC(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218EB81B4(0);
      v5 = v4;
      swift_allocObject();
      v6 = sub_219BEA4E4();
      v7[3] = v5;
      v7[4] = sub_2186D5500(&qword_280EE3B30, sub_218EB81B4, MEMORY[0x277D6EAD8]);
      v7[0] = v6;
      sub_219BE8924();
      return __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_218EB2DFC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE318(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE748(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA990, &protocol descriptor for IssueModelFactoryType, 1);
  result = sub_219BE1E34();
  if (!v39)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE02D4();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE0204();
  result = sub_219BE1E24();
  v32 = result;
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineFeedSupplementaryDataProvider();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF554(0, &unk_280EE89D8, MEMORY[0x277D302B0]);
  result = sub_219BE1E24();
  v31 = result;
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EF554(0, &qword_280EE8A10, MEMORY[0x277D30288]);
  result = sub_219BE1E24();
  v30 = result;
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100, MEMORY[0x277D33F00], 1);
  result = sub_219BE1E34();
  if (!v37[3])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (!v36[3])
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E91280, MEMORY[0x277D32868], 1);
  result = sub_219BE1E34();
  if (v35[3])
  {
    v10 = __swift_mutable_project_boxed_opaque_existential_1(&v38, v39);
    v28[6] = v28;
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v16 = type metadata accessor for IssueModelFactory();
    v34[4] = &off_282A725A8;
    v34[3] = v16;
    v34[0] = v15;
    type metadata accessor for MagazineFeedTracker();
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v34, v16);
    v28[5] = v28;
    v19 = MEMORY[0x28223BE20](v18);
    v21 = (v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21, v19);
    v23 = *v21;
    v33[4] = &off_282A725A8;
    v33[3] = v16;
    v33[0] = v23;
    v17[2] = v5;
    v17[3] = v6;
    v28[3] = v5;
    v28[4] = v6;
    v28[2] = v7;
    v17[4] = v7;
    sub_218718690(v33, (v17 + 5));
    v28[1] = v8;
    v17[10] = v8;
    v17[11] = v32;
    v17[12] = v9;
    v24 = v30;
    v17[13] = v31;
    v17[14] = v24;
    sub_218718690(v37, (v17 + 15));
    sub_218718690(v36, (v17 + 20));
    sub_218718690(v35, (v17 + 25));
    sub_219BE16D4();
    v25 = swift_allocObject();
    swift_weakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v9;
    sub_2186D5500(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    swift_retain_n();

    sub_219BDD254();

    sub_219BE0014();
    swift_allocObject();
    swift_weakInit();

    sub_2186D5500(&unk_280EE84D0, MEMORY[0x277D2E2E0], MEMORY[0x277D2E2D8]);
    sub_219BDD254();

    sub_219BDF434();
    sub_2186D5500(&qword_280EE87D0, MEMORY[0x277D2DA88], MEMORY[0x277D2DA80]);
    swift_retain_n();
    sub_219BDD244();

    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(v37);
    __swift_destroy_boxed_opaque_existential_1(v33);
    __swift_destroy_boxed_opaque_existential_1(v34);
    __swift_destroy_boxed_opaque_existential_1(&v38);
    result = sub_2186D5500(&unk_280ED1168, type metadata accessor for MagazineFeedTracker, &unk_219C40A0C);
    v27 = v29;
    *v29 = v17;
    v27[1] = result;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_218EB36DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE748(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C6148(0, &qword_280E8E350, 0x277D31340);
    result = sub_219BE1E24();
    if (result)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_2186C709C(0, &unk_280EE8AB0, MEMORY[0x277D30250], 1);
      sub_219BE1E34();
      sub_218EB8160(0);
      v6 = v5;
      swift_allocObject();
      v7 = sub_219BDEB44();
      a2[3] = v6;
      result = sub_2186D5500(&unk_280EE8A78, sub_218EB8160, MEMORY[0x277D30278]);
      a2[4] = result;
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

void *sub_218EB3888(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE748(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E350, 0x277D31340);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8AB0, MEMORY[0x277D30250], 1);
  result = sub_219BE1E34();
  if (v3)
  {
    sub_2187EF6B8(0, &qword_280EE8CB0, &qword_280EC4878, &unk_219C4FCA8, MEMORY[0x277D2FF78]);
    swift_allocObject();
    return sub_219BDE2E4();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EB3A24(void *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t (*a4)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187EE318(0);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2187EE748(0);
    result = sub_219BE1E24();
    if (result)
    {
      v10 = result;
      sub_2187EF554(0, a2, a3);
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

void sub_218EB3B08(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
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
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_218EB61E8(v12, v13);

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
        return;
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
}

void sub_218EB3C34(uint64_t a1)
{
  sub_218EB8AF8(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for AudioFeedTrack(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_218C1620C(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9);
      sub_218EB6324(v9, v5);
      sub_218EB8BCC(v9);
      sub_218EB8B5C(v5, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_218EB3E44(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
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
        v11 = *(a1 + 48) + ((v9 << 10) | (16 * v10));
        sub_218EB6634(*v11, *(v11 + 8), &v12);
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
        return;
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
}

void sub_218EB3F54(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
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
        sub_218EB6898(*(*(a1 + 48) + (v10 | (v9 << 6))));
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
        return;
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
}

uint64_t sub_218EB4048(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
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
  v62 = (a2 + 56);

  v15 = 0;
  v60 = v13;
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
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_219BF7AA4();

    sub_219BF5524();
    v23 = sub_219BF7AE4();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
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
    if (v26 || (sub_219BF78F4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v29 = *(v5 + 32);
  v55 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v55;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x28223BE20](v28);
    v2 = &v54 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v57 = v33;
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
        v5 = sub_21987C7C8(v59, v55, v57, v5);
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
            v61 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_219BF7AA4();

            sub_219BF5524();
            v41 = sub_219BF7AE4();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_219BF78F4() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v34 = v59[v2];
          v59[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
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

    v27 = v61;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v62, v49);
  v51 = v54;
  sub_218EB69A0(v50, v55, v5, v2, v63);
  v53 = v52;

  if (!v51)
  {

    MEMORY[0x21CECF960](v50, -1, -1);
    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_21892DE98(v13);
    return v5;
  }

  result = MEMORY[0x21CECF960](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_218EB45B8(uint64_t a1, uint64_t a2)
{
  v125 = *MEMORY[0x277D85DE8];
  sub_218EB8AF8(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v97 = &v96 - v9;
  v10 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v10);
  v118 = (&v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v113 = (&v96 - v13);
  MEMORY[0x28223BE20](v14);
  v16 = (&v96 - v15);
  MEMORY[0x28223BE20](v17);
  v108 = (&v96 - v19);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v99 = v7;
  v96 = 0;
  v20 = *(a1 + 56);
  v109 = a1 + 56;
  v21 = -1 << *(a1 + 32);
  v106 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v100 = (63 - v21) >> 6;
  v105 = (v18 + 56);
  v98 = v18;
  v104 = (v18 + 48);
  v116 = (a2 + 56);

  v25 = 0;
  v103 = a1;
  v114 = v10;
  while (1)
  {
    v26 = v23;
    v27 = v25;
    if (v23)
    {
LABEL_15:
      v31 = (v26 - 1) & v26;
      v32 = v97;
      sub_218C1620C(*(a1 + 48) + v98[9] * (__clz(__rbit64(v26)) | (v27 << 6)), v97);
      v33 = 0;
    }

    else
    {
      v28 = v100 <= v25 + 1 ? v25 + 1 : v100;
      v29 = v28 - 1;
      v30 = v25;
      while (1)
      {
        v27 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_71;
        }

        if (v27 >= v100)
        {
          break;
        }

        v26 = *(v109 + 8 * v27);
        ++v30;
        if (v26)
        {
          goto LABEL_15;
        }
      }

      v31 = 0;
      v33 = 1;
      v27 = v29;
      v32 = v97;
    }

    v102 = *v105;
    v102(v32, v33, 1, v10);
    v120 = a1;
    v121 = v109;
    v122 = v106;
    v123 = v27;
    v110 = v27;
    v111 = v31;
    v124 = v31;
    v101 = *v104;
    if (v101(v32, 1, v10) == 1)
    {
      sub_218EB8B5C(v32, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
      sub_21892DE98(a1);
      return a2;
    }

    v34 = v108;
    sub_218C162E4(v32, v108);
    sub_219BF7AA4();
    v115 = *v34;
    v35 = [v115 identifier];
    sub_219BF5414();

    sub_219BF5524();

    v107 = *(v10 + 32);
    sub_2198DA178(v119);
    v36 = sub_219BF7AE4();
    v37 = -1 << *(a2 + 32);
    v23 = v36 & ~v37;
    v2 = v23 >> 6;
    v10 = 1 << v23;
    if (((1 << v23) & v116[v23 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_218EB8BCC(v108);
    v25 = v110;
    v23 = v111;
    v10 = v114;
    a1 = v103;
  }

  v112 = ~v37;
  v117 = v98[9];
  while (1)
  {
    v38 = a2;
    sub_218C1620C(*(a2 + 48) + v117 * v23, v16);
    v39 = v16;
    v40 = [*v16 identifier];
    v41 = sub_219BF5414();
    v43 = v42;

    v44 = [v115 identifier];
    v45 = sub_219BF5414();
    v47 = v46;

    v48 = v41 == v45 && v43 == v47;
    if (v48)
    {
      break;
    }

    v49 = sub_219BF78F4();

    if (v49)
    {
      goto LABEL_28;
    }

    v16 = v39;
    sub_218EB8BCC(v39);
    a2 = v38;
LABEL_20:
    v23 = (v23 + 1) & v112;
    v2 = v23 >> 6;
    v10 = 1 << v23;
    if ((v116[v23 >> 6] & (1 << v23)) == 0)
    {
      goto LABEL_6;
    }
  }

LABEL_28:
  v16 = v39;
  v50 = sub_2198DB278((v39 + *(v114 + 32)), (v108 + v107));
  sub_218EB8BCC(v39);
  a2 = v38;
  if ((v50 & 1) == 0)
  {
    goto LABEL_20;
  }

  v51 = sub_218EB8BCC(v108);
  v52 = *(v38 + 32);
  v27 = ((1 << v52) + 63) >> 6;
  v24 = 8 * v27;
  a1 = v103;
  if ((v52 & 0x3Fu) > 0xD)
  {
    goto LABEL_72;
  }

  while (2)
  {
    v97 = v27;
    v98 = &v96;
    MEMORY[0x28223BE20](v51);
    v54 = &v96 - ((v53 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v54, v116, v53);
    v55 = *&v54[8 * v2] & ~v10;
    v56 = *(a2 + 16);
    v108 = v54;
    *&v54[8 * v2] = v55;
    v57 = v56 - 1;
    v27 = v99;
    v10 = v114;
    v23 = v109;
    v58 = v100;
    v59 = v110;
    v60 = v111;
LABEL_33:
    v107 = v57;
    while (2)
    {
      if (v60)
      {
        v61 = v59;
LABEL_45:
        v64 = (v60 - 1) & v60;
        sub_218C1620C(*(a1 + 48) + (__clz(__rbit64(v60)) | (v61 << 6)) * v117, v27);
        v65 = 0;
LABEL_46:
        v102(v27, v65, 1, v10);
        v120 = a1;
        v121 = v23;
        v122 = v106;
        v123 = v59;
        v111 = v64;
        v124 = v64;
        if (v101(v27, 1, v10) == 1)
        {
          sub_218EB8B5C(v27, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          a2 = sub_21987CA90(v108, v97, v107, a2);
          goto LABEL_66;
        }

        v110 = v59;
        v66 = v27;
        v67 = v113;
        sub_218C162E4(v66, v113);
        sub_219BF7AA4();
        v115 = *v67;
        v68 = [v115 identifier];
        sub_219BF5414();

        sub_219BF5524();

        v112 = *(v10 + 32);
        sub_2198DA178(v119);
        v69 = sub_219BF7AE4();
        v70 = a2;
        v71 = -1 << *(a2 + 32);
        v72 = v69 & ~v71;
        v2 = v72 >> 6;
        v73 = 1 << v72;
        if (((1 << v72) & v116[v72 >> 6]) == 0)
        {
LABEL_34:
          sub_218EB8BCC(v113);
          a2 = v70;
          a1 = v103;
          v27 = v99;
          v10 = v114;
          v23 = v109;
          v58 = v100;
          v59 = v110;
          v60 = v111;
          continue;
        }

        v74 = ~v71;
LABEL_51:
        v75 = v118;
        sub_218C1620C(*(v70 + 48) + v72 * v117, v118);
        v76 = [*v75 identifier];
        v77 = sub_219BF5414();
        v79 = v78;

        v80 = [v115 identifier];
        v81 = sub_219BF5414();
        v83 = v82;

        if (v77 == v81 && v79 == v83)
        {

LABEL_58:
          v86 = v118;
          v87 = sub_2198DB278((v118 + *(v114 + 32)), (v113 + v112));
          sub_218EB8BCC(v86);
          if (v87)
          {
            sub_218EB8BCC(v113);
            v88 = v108[v2];
            v108[v2] = (v88 & ~v73);
            v48 = (v88 & v73) == 0;
            a2 = v70;
            a1 = v103;
            v27 = v99;
            v10 = v114;
            v23 = v109;
            v58 = v100;
            v59 = v110;
            v60 = v111;
            if (!v48)
            {
              v57 = v107 - 1;
              if (__OFSUB__(v107, 1))
              {
                __break(1u);
              }

              if (v107 == 1)
              {

                a2 = MEMORY[0x277D84FA0];
                goto LABEL_66;
              }

              goto LABEL_33;
            }

            continue;
          }
        }

        else
        {
          v85 = sub_219BF78F4();

          if (v85)
          {
            goto LABEL_58;
          }

          sub_218EB8BCC(v118);
        }

        v72 = (v72 + 1) & v74;
        v2 = v72 >> 6;
        v73 = 1 << v72;
        if ((v116[v72 >> 6] & (1 << v72)) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_51;
      }

      break;
    }

    if (v58 <= v59 + 1)
    {
      v62 = v59 + 1;
    }

    else
    {
      v62 = v58;
    }

    v63 = v62 - 1;
    while (1)
    {
      v61 = v59 + 1;
      if (__OFADD__(v59, 1))
      {
        break;
      }

      if (v61 >= v58)
      {
        v64 = 0;
        v65 = 1;
        v59 = v63;
        goto LABEL_46;
      }

      v60 = *(v23 + 8 * v61);
      ++v59;
      if (v60)
      {
        v59 = v61;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    v90 = v24;

    v91 = v90;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v92 = swift_slowAlloc();
  memcpy(v92, v116, v91);
  v93 = v96;
  sub_218EB6BD8(v92, v27, a2, v23, &v120);
  v95 = v94;

  if (v93)
  {

    result = MEMORY[0x21CECF960](v92, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x21CECF960](v92, -1, -1);
    a2 = v95;
LABEL_66:
    sub_21892DE98(v120);
    return a2;
  }

  return result;
}

uint64_t sub_218EB51C8(unint64_t a1, uint64_t a2)
{
  v79 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v65 = 0;
  v72 = a2;
  v73 = 0;
  v6 = a1 + 56;
  v5 = *(a1 + 56);
  v7 = -1 << *(a1 + 32);
  v70 = ~v7;
  v71 = a1;
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & v5;
  v10 = (63 - v7) >> 6;
  v11 = (a2 + 56);
  do
  {
LABEL_6:
    if (v9)
    {
      v12 = v71;
      v13 = v72;
    }

    else
    {
      v13 = v72;
      v14 = v73;
      v12 = v71;
      do
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (v15 >= v10)
        {

          goto LABEL_140;
        }

        v9 = *(v6 + 8 * v15);
        ++v14;
      }

      while (!v9);
      v73 = v15;
    }

    v16 = *(v12 + 48) + ((v73 << 10) | (16 * __clz(__rbit64(v9))));
    v17 = *v16;
    v3 = *(v16 + 8);
    sub_219BF7AA4();
    if (v3 <= 1)
    {
      if (!v3)
      {
        MEMORY[0x21CECE850](0);
        v19 = v17 & 1;
        goto LABEL_23;
      }

      v18 = 6;
    }

    else if (v3 == 2)
    {
      v18 = 7;
    }

    else
    {
      if (v3 != 3)
      {
        v19 = v17 + 1;
        goto LABEL_23;
      }

      v18 = 8;
    }

    MEMORY[0x21CECE850](v18);
    v19 = v17;
LABEL_23:
    v9 &= v9 - 1;
    MEMORY[0x21CECE850](v19);
    v20 = sub_219BF7AE4();
    v21 = -1 << *(v13 + 32);
    v2 = v20 & ~v21;
    v4 = v2 >> 6;
    v13 = 1 << v2;
  }

  while (((1 << v2) & v11[v2 >> 6]) == 0);
  v22 = v3 == 4;
  v23 = v17 == 4 && v3 == 4;
  v24 = v17 == 3 && v3 == 4;
  v25 = v17 == 2 && v3 == 4;
  v26 = v17 == 1 && v3 == 4;
  if (v17)
  {
    v22 = 0;
  }

  while (1)
  {
    v27 = *(v72 + 48) + 16 * v2;
    v28 = *v27;
    v29 = *(v27 + 8);
    if (v29 > 1)
    {
      if (v29 == 2)
      {
        if (v3 == 2)
        {
          goto LABEL_40;
        }
      }

      else if (v29 == 3)
      {
        if (v3 == 3)
        {
          goto LABEL_40;
        }
      }

      else if (v28 <= 1)
      {
        if (v28)
        {
          if (v26)
          {
            goto LABEL_66;
          }
        }

        else if (v22)
        {
          goto LABEL_66;
        }
      }

      else if (v28 == 2)
      {
        if (v25)
        {
          goto LABEL_66;
        }
      }

      else if (v28 == 3)
      {
        if (v24)
        {
          goto LABEL_66;
        }
      }

      else if (v23)
      {
        goto LABEL_66;
      }

      goto LABEL_41;
    }

    if (!v29)
    {
      break;
    }

    if (v3 == 1)
    {
LABEL_40:
      if (v28 == v17)
      {
        goto LABEL_66;
      }
    }

LABEL_41:
    v2 = (v2 + 1) & ~v21;
    v4 = v2 >> 6;
    v13 = 1 << v2;
    if ((v11[v2 >> 6] & (1 << v2)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (v3 || ((v28 ^ v17) & 1) != 0)
  {
    goto LABEL_41;
  }

LABEL_66:
  v76 = v70;
  v77 = v73;
  v78 = v9;
  v75[0] = v71;
  v75[1] = v6;
  v30 = (63 - v21) >> 6;
  v3 = 8 * v30;

  v66 = v30;
  if (v30 <= 0x80)
  {
    goto LABEL_67;
  }

LABEL_144:
  v62 = v72;

  if (!swift_stdlib_isStackAllocationSafe())
  {
    v63 = swift_slowAlloc();
    memcpy(v63, v11, v3);
    v64 = v65;
    v13 = sub_218EB7120(v63, v66, v62, v2, v75);

    if (!v64)
    {

      MEMORY[0x21CECF960](v63, -1, -1);
      v4 = v75[0];
      v70 = v76;
      v73 = v77;
      goto LABEL_138;
    }

    result = MEMORY[0x21CECF960](v63, -1, -1);
    __break(1u);
    return result;
  }

LABEL_67:
  v67 = &v65;
  MEMORY[0x28223BE20](v31);
  v2 = &v65 - v32;
  memcpy(&v65 - v32, v11, v3);
  v34 = *(v2 + 8 * v4) & ~v13;
  v13 = v72;
  v35 = *(v72 + 16);
  v69 = v2;
  *(v2 + 8 * v4) = v34;
  v36 = v35 - 1;
  v3 = 1;
  v4 = v71;
LABEL_68:
  v68 = v36;
LABEL_70:
  while (2)
  {
    if (v9)
    {
LABEL_76:
      v40 = *(v4 + 48) + ((v73 << 10) | (16 * __clz(__rbit64(v9))));
      v41 = *v40;
      v42 = *(v40 + 8);
      sub_219BF7AA4();
      if (v42 <= 1)
      {
        if (v42)
        {
          v43 = 6;
          goto LABEL_85;
        }

        MEMORY[0x21CECE850](0);
        v44 = v41 & 1;
      }

      else
      {
        if (v42 == 2)
        {
          v43 = 7;
          goto LABEL_85;
        }

        if (v42 == 3)
        {
          v43 = 8;
LABEL_85:
          MEMORY[0x21CECE850](v43);
          v44 = v41;
          goto LABEL_86;
        }

        v44 = v41 + 1;
      }

LABEL_86:
      v9 &= v9 - 1;
      v2 = v74;
      MEMORY[0x21CECE850](v44);
      v45 = sub_219BF7AE4();
      v46 = -1 << *(v13 + 32);
      v47 = v45 & ~v46;
      v48 = v47 >> 6;
      v49 = 1 << v47;
      if (((1 << v47) & v11[v47 >> 6]) == 0)
      {
        continue;
      }

      v50 = ~v46;
      v51 = v42 == 4;
      v52 = v41 == 4 && v42 == 4;
      v53 = v41 == 3 && v42 == 4;
      v54 = v41 == 2 && v42 == 4;
      v55 = v41 == 1 && v42 == 4;
      if (v41)
      {
        v51 = 0;
      }

      while (1)
      {
        v56 = *(v13 + 48) + 16 * v47;
        v57 = *v56;
        v58 = *(v56 + 8);
        if (v58 <= 1)
        {
          if (v58)
          {
            if (v42 != 1)
            {
              goto LABEL_104;
            }

LABEL_103:
            if (v57 == v41)
            {
              goto LABEL_69;
            }

            goto LABEL_104;
          }

          if (!v42 && ((v57 ^ v41) & 1) == 0)
          {
LABEL_69:
            v37 = v69[v48];
            v69[v48] = v37 & ~v49;
            if ((v37 & v49) != 0)
            {
              v36 = v68 - 1;
              if (__OFSUB__(v68, 1))
              {
                __break(1u);
              }

              if (v68 == 1)
              {

                v13 = MEMORY[0x277D84FA0];
                goto LABEL_138;
              }

              goto LABEL_68;
            }

            goto LABEL_70;
          }
        }

        else
        {
          if (v58 == 2)
          {
            if (v42 != 2)
            {
              goto LABEL_104;
            }

            goto LABEL_103;
          }

          if (v58 == 3)
          {
            if (v42 != 3)
            {
              goto LABEL_104;
            }

            goto LABEL_103;
          }

          if (v57 <= 1)
          {
            if (v57)
            {
              if (v55)
              {
                goto LABEL_69;
              }
            }

            else if (v51)
            {
              goto LABEL_69;
            }
          }

          else if (v57 == 2)
          {
            if (v54)
            {
              goto LABEL_69;
            }
          }

          else if (v57 == 3)
          {
            if (v53)
            {
              goto LABEL_69;
            }
          }

          else if (v52)
          {
            goto LABEL_69;
          }
        }

LABEL_104:
        v47 = (v47 + 1) & v50;
        v48 = v47 >> 6;
        v49 = 1 << v47;
        if ((v11[v47 >> 6] & (1 << v47)) == 0)
        {
          goto LABEL_70;
        }
      }
    }

    break;
  }

  v38 = v73;
  while (1)
  {
    v39 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
      goto LABEL_143;
    }

    if (v39 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v39);
    ++v38;
    if (v9)
    {
      v73 = v39;
      goto LABEL_76;
    }
  }

  if (v10 <= v73 + 1)
  {
    v59 = v73 + 1;
  }

  else
  {
    v59 = v10;
  }

  v73 = v59 - 1;
  v13 = sub_21987CD38(v69, v66, v68, v13, v33);
LABEL_138:
  v60 = v4;
LABEL_140:
  sub_21892DE98(v60);
  return v13;
}

uint64_t sub_218EB58BC(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v58[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v58[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v49 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v54 = v4;
  v55 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v52 = v5 + 1;
    sub_219BF7AA4();

    sub_219BF5524();
    v11 = sub_219BF7AE4();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v52;
    if (v52 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_219BF78F4() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v55;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v58[1] = v52;

  v21 = *(v2 + 32);
  v50 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v50;
  v23 = v55;
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
    v51 = &v48;
    MEMORY[0x28223BE20](v20);
    v13 = &v48 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v57 = v7;
    memcpy(v13, v7, v24);
    v56 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v53 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v54;
    v7 = *(v54 + 16);
    v29 = v52;
    while (1)
    {
      v52 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_21987C7C8(v53, v50, v52, v56);
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
        v2 = v56;
        sub_219BF7AA4();

        sub_219BF5524();
        v33 = sub_219BF7AE4();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v57[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v55;
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
        while ((sub_219BF78F4() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v57[v35 >> 6]) == 0)
          {
            v28 = v54;
            goto LABEL_37;
          }

          v40 = (*(v56 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v54;
      v30 = v53[v13];
      v53[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v52 - 1;
      v23 = v55;
      if (__OFSUB__(v52, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v52 == 1)
      {

        v2 = MEMORY[0x277D84FA0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v49;
  sub_218EB7418(v44, v50, v2, v13, v58);
  v47 = v46;

  if (!v45)
  {

    MEMORY[0x21CECF960](v44, -1, -1);

    return v47;
  }

  result = MEMORY[0x21CECF960](v44, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_218EB5D68(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v55 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v48 = a1;
    v49 = 0;
    v8 = a1 + 56;
    v7 = *(a1 + 56);
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v7;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;
    v14 = 1;
    while (1)
    {
      do
      {
        if (!v11)
        {
          v15 = v48;
          v16 = v49;
          while (1)
          {
            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              break;
            }

            if (v17 >= v12)
            {

              goto LABEL_43;
            }

            v11 = *(v8 + 8 * v17);
            ++v16;
            if (v11)
            {
              v49 = v17;
              goto LABEL_13;
            }
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v15 = v48;
LABEL_13:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v5 = *(*(v15 + 48) + (v18 | (v49 << 6)));
        sub_219BF7AA4();
        MEMORY[0x21CECE850](v5);
        v19 = sub_219BF7AE4();
        v20 = -1 << *(v6 + 32);
        v2 = v19 & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
      }

      while (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0);
      v21 = *(v6 + 48);
      if (v5 == *(v21 + v2))
      {
        break;
      }

      while (1)
      {
        v2 = (v2 + 1) & ~v20;
        v3 = v2 >> 6;
        v4 = 1 << v2;
        if (((1 << v2) & *(v13 + 8 * (v2 >> 6))) == 0)
        {
          break;
        }

        if (v5 == *(v21 + v2))
        {
          goto LABEL_17;
        }
      }
    }

LABEL_17:
    v52 = v47;
    v53 = v49;
    v54 = v11;
    v51[0] = v48;
    v51[1] = v8;
    v14 = (63 - v20) >> 6;
    v5 = 8 * v14;

    if (v14 <= 0x80)
    {
      goto LABEL_18;
    }

LABEL_47:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v41 = swift_slowAlloc();
      memcpy(v41, (v6 + 56), v5);
      v42 = sub_218EB75FC(v41, v14, v6, v2, v51);

      MEMORY[0x21CECF960](v41, -1, -1);
      v4 = v51[0];
      v47 = v52;
      v49 = v53;
      v6 = v42;
      goto LABEL_41;
    }

LABEL_18:
    v44 = v14;
    v45 = &v43;
    MEMORY[0x28223BE20](v22);
    v14 = &v43 - v23;
    memcpy(&v43 - v23, (v6 + 56), v5);
    v25 = *(v6 + 16);
    *(v14 + 8 * v3) &= ~v4;
    v26 = v25 - 1;
    v3 = 1;
    v4 = v48;
LABEL_19:
    v46 = v26;
    while (v11)
    {
LABEL_27:
      v30 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v5 = *(*(v4 + 48) + (v30 | (v49 << 6)));
      sub_219BF7AA4();
      v2 = v50;
      MEMORY[0x21CECE850](v5);
      v31 = sub_219BF7AE4();
      v32 = -1 << *(v6 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      v35 = 1 << v33;
      if (((1 << v33) & *(v13 + 8 * (v33 >> 6))) != 0)
      {
        v36 = *(v6 + 48);
        if (v5 == *(v36 + v33))
        {
LABEL_20:
          v27 = *(v14 + 8 * v34);
          *(v14 + 8 * v34) = v27 & ~v35;
          if ((v27 & v35) != 0)
          {
            v26 = v46 - 1;
            if (__OFSUB__(v46, 1))
            {
              __break(1u);
            }

            if (v46 == 1)
            {

              v6 = MEMORY[0x277D84FA0];
              goto LABEL_41;
            }

            goto LABEL_19;
          }
        }

        else
        {
          v37 = ~v32;
          while (1)
          {
            v33 = (v33 + 1) & v37;
            v34 = v33 >> 6;
            v35 = 1 << v33;
            if (((1 << v33) & *(v13 + 8 * (v33 >> 6))) == 0)
            {
              break;
            }

            if (v5 == *(v36 + v33))
            {
              goto LABEL_20;
            }
          }
        }
      }
    }

    v28 = v49;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v29 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v29);
      ++v28;
      if (v11)
      {
        v49 = v29;
        goto LABEL_27;
      }
    }

    if (v12 <= v49 + 1)
    {
      v38 = v49 + 1;
    }

    else
    {
      v38 = v12;
    }

    v49 = v38 - 1;
    v6 = sub_21987D4E4(v14, v44, v46, v6, v24);
LABEL_41:
    v39 = v4;
LABEL_43:
    sub_21892DE98(v39);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v6;
}

uint64_t sub_218EB61E8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_219BF7AA4();
  sub_219BF5524();
  v6 = sub_219BF7AE4();
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
    if (v11 || (sub_219BF78F4() & 1) != 0)
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
    sub_2194A5CA4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_218EB77D0(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_218EB6324@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = type metadata accessor for AudioFeedTrack(0);
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = v2;
  v7 = *v2;
  sub_219BF7AA4();
  v38 = *a1;
  v8 = [v38 identifier];
  sub_219BF5414();

  sub_219BF5524();

  v35 = a1;
  v36 = v4;
  v34 = *(v4 + 32);
  sub_2198DA178(v40);
  v9 = sub_219BF7AE4();
  v10 = v7 + 56;
  v39 = v7;
  v11 = -1 << *(v7 + 32);
  v12 = v9 & ~v11;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return (*(v33 + 56))(v32, 1, 1, v36);
  }

  v37 = ~v11;
  v13 = *(v33 + 72);
  while (1)
  {
    sub_218C1620C(*(v39 + 48) + v13 * v12, v6);
    v14 = [*v6 identifier];
    v15 = sub_219BF5414();
    v17 = v16;

    v18 = [v38 identifier];
    v19 = sub_219BF5414();
    v21 = v20;

    if (v15 == v19 && v17 == v21)
    {
      break;
    }

    v23 = sub_219BF78F4();

    if (v23)
    {
      goto LABEL_12;
    }

    sub_218EB8BCC(v6);
LABEL_4:
    v12 = (v12 + 1) & v37;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return (*(v33 + 56))(v32, 1, 1, v36);
    }
  }

LABEL_12:
  v24 = sub_2198DB278((v6 + *(v36 + 32)), (v35 + v34));
  sub_218EB8BCC(v6);
  if ((v24 & 1) == 0)
  {
    goto LABEL_4;
  }

  v25 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v25;
  v40[0] = *v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2194A5F8C();
    v27 = v40[0];
  }

  v28 = *(v27 + 48) + v13 * v12;
  v29 = v32;
  sub_218C162E4(v28, v32);
  sub_218EB7994(v12);
  *v25 = v40[0];
  return (*(v33 + 56))(v29, 0, 1, v36);
}

void sub_218EB6634(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *v3;
  sub_219BF7AA4();
  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 6;
      goto LABEL_10;
    }

    MEMORY[0x21CECE850](0);
    v9 = a1 & 1;
  }

  else
  {
    if (a2 == 2)
    {
      v8 = 7;
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v8 = 8;
LABEL_10:
      MEMORY[0x21CECE850](v8);
      v9 = a1;
      goto LABEL_11;
    }

    v9 = a1 + 1;
  }

LABEL_11:
  MEMORY[0x21CECE850](v9);
  v10 = sub_219BF7AE4();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_57:
    *a3 = 0;
    *(a3 + 8) = -1;
    return;
  }

  v13 = ~v11;
  v14 = a2 == 4;
  v15 = a1 == 4 && a2 == 4;
  v16 = a1 == 3 && a2 == 4;
  v17 = a1 == 2 && a2 == 4;
  v18 = a1 == 1 && a2 == 4;
  if (a1)
  {
    v14 = 0;
  }

  while (1)
  {
    v19 = *(v7 + 48) + 16 * v12;
    v20 = *v19;
    v21 = *(v19 + 8);
    if (v21 <= 1)
    {
      break;
    }

    if (v21 == 2)
    {
      if (a2 != 2)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (v21 == 3)
    {
      if (a2 != 3)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if (v20 <= 1)
    {
      if (v20)
      {
        if (v18)
        {
          goto LABEL_54;
        }
      }

      else if (v14)
      {
        goto LABEL_54;
      }
    }

    else if (v20 == 2)
    {
      if (v17)
      {
        goto LABEL_54;
      }
    }

    else if (v20 == 3)
    {
      if (v16)
      {
        goto LABEL_54;
      }
    }

    else if (v15)
    {
      goto LABEL_54;
    }

LABEL_29:
    v12 = (v12 + 1) & v13;
    if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_57;
    }
  }

  if (v21)
  {
    if (a2 != 1)
    {
      goto LABEL_29;
    }

LABEL_28:
    if (v20 == a1)
    {
      goto LABEL_54;
    }

    goto LABEL_29;
  }

  if (a2 || ((v20 ^ a1) & 1) != 0)
  {
    goto LABEL_29;
  }

LABEL_54:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v3;
  v26 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2194A6354();
    v23 = v26;
  }

  v24 = *(v23 + 48) + 16 * v12;
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  *a3 = v25;
  *(a3 + 8) = v24;
  sub_218EB7C94(v12);
  *v3 = v26;
}

uint64_t sub_218EB6898(char a1)
{
  v3 = *v1;
  sub_219BF7AA4();
  MEMORY[0x21CECE850](a1 & 1);
  v4 = sub_219BF7AE4();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 2;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + v6) != (a1 & 1))
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 2;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2194A5E20();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + v6);
  sub_218EB7EB4(v6);
  result = v11;
  *v1 = v12;
  return result;
}

void sub_218EB69A0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
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

          sub_21987C7C8(a1, a2, v30, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_219BF7AA4();

        sub_219BF5524();
        v19 = sub_219BF7AE4();
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
        while ((sub_219BF78F4() & 1) == 0)
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

      v10 = a1[v22];
      a1[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_218EB6BD8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v61 = a5;
  v54[0] = a2;
  sub_218EB8AF8(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = v54 - v9;
  v63 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v63);
  v11 = (v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v64 = (v54 - v13);
  v14 = *(a3 + 16);
  v15 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v16 = *(a1 + v15) & ((-1 << a4) - 1);
  v56 = a1;
  *(a1 + v15) = v16;
  v17 = v14 - 1;
  v60 = v18;
  v57 = (v18 + 48);
  v58 = (v18 + 56);
  v70 = a3;
  v67 = a3 + 56;
  do
  {
    v55 = v17;
    do
    {
      while (1)
      {
        v19 = *v61;
        v20 = v61[1];
        v22 = v61[2];
        v21 = v61[3];
        v23 = v61[4];
        if (!v23)
        {
          v25 = (v22 + 64) >> 6;
          if (v25 <= v21 + 1)
          {
            v26 = v21 + 1;
          }

          else
          {
            v26 = (v22 + 64) >> 6;
          }

          v27 = v26 - 1;
          while (1)
          {
            v24 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              break;
            }

            if (v24 >= v25)
            {
              v28 = 0;
              v30 = 1;
              v29 = v59;
              goto LABEL_14;
            }

            v23 = *(v20 + 8 * v24);
            ++v21;
            if (v23)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
LABEL_35:
          __break(1u);
          return;
        }

        v24 = v61[3];
LABEL_13:
        v28 = (v23 - 1) & v23;
        v29 = v59;
        sub_218C1620C(*(v19 + 48) + *(v60 + 72) * (__clz(__rbit64(v23)) | (v24 << 6)), v59);
        v30 = 0;
        v27 = v24;
LABEL_14:
        v31 = v63;
        (*v58)(v29, v30, 1, v63);
        v32 = v61;
        *v61 = v19;
        v32[1] = v20;
        v32[2] = v22;
        v32[3] = v27;
        v32[4] = v28;
        if ((*v57)(v29, 1, v31) == 1)
        {
          sub_218EB8B5C(v29, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
          v53 = v70;

          sub_21987CA90(v56, v54[0], v55, v53);
          return;
        }

        v33 = v64;
        sub_218C162E4(v29, v64);
        v34 = v70;
        sub_219BF7AA4();
        v68 = *v33;
        v35 = [v68 identifier];
        sub_219BF5414();

        sub_219BF5524();

        v62 = *(v31 + 32);
        sub_2198DA178(v69);
        v36 = sub_219BF7AE4();
        v37 = -1 << *(v34 + 32);
        v38 = v36 & ~v37;
        v39 = v38 >> 6;
        v40 = 1 << v38;
        if (((1 << v38) & *(v67 + 8 * (v38 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_218EB8BCC(v64);
      }

      v65 = ~v37;
      v66 = *(v60 + 72);
      while (1)
      {
        sub_218C1620C(*(v70 + 48) + v66 * v38, v11);
        v41 = [*v11 identifier];
        v42 = sub_219BF5414();
        v44 = v43;

        v45 = [v68 identifier];
        v46 = sub_219BF5414();
        v48 = v47;

        if (v42 == v46 && v44 == v48)
        {
          break;
        }

        v50 = sub_219BF78F4();

        if (v50)
        {
          goto LABEL_26;
        }

        sub_218EB8BCC(v11);
LABEL_18:
        v38 = (v38 + 1) & v65;
        v39 = v38 >> 6;
        v40 = 1 << v38;
        if ((*(v67 + 8 * (v38 >> 6)) & (1 << v38)) == 0)
        {
          goto LABEL_3;
        }
      }

LABEL_26:
      v51 = sub_2198DB278((v11 + *(v63 + 32)), (v64 + v62));
      sub_218EB8BCC(v11);
      if ((v51 & 1) == 0)
      {
        goto LABEL_18;
      }

      sub_218EB8BCC(v64);
      v52 = v56[v39];
      v56[v39] = v52 & ~v40;
    }

    while ((v52 & v40) == 0);
    v17 = v55 - 1;
    if (__OFSUB__(v55, 1))
    {
      goto LABEL_35;
    }
  }

  while (v55 != 1);
}

uint64_t sub_218EB7120(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v37 = v9;
    do
    {
LABEL_4:
      v12 = a5[3];
      v13 = a5[4];
      if (!v13)
      {
        v15 = (a5[2] + 64) >> 6;
        v16 = a5[3];
        while (1)
        {
          v14 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_72;
          }

          if (v14 >= v15)
          {
            break;
          }

          v13 = *(a5[1] + 8 * v14);
          ++v16;
          if (v13)
          {
            goto LABEL_10;
          }
        }

        if (v15 <= v12 + 1)
        {
          v34 = v12 + 1;
        }

        else
        {
          v34 = (a5[2] + 64) >> 6;
        }

        a5[3] = v34 - 1;
        a5[4] = 0;

        return sub_21987CD38(v7, a2, v37, a3, v35);
      }

      v14 = a5[3];
LABEL_10:
      v17 = *(*a5 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v13))));
      v18 = *v17;
      v19 = *(v17 + 8);
      a5[3] = v14;
      a5[4] = (v13 - 1) & v13;
      sub_219BF7AA4();
      if (v19 <= 1)
      {
        if (!v19)
        {
          MEMORY[0x21CECE850](0);
          v21 = v18 & 1;
          goto LABEL_20;
        }

        v20 = 6;
      }

      else if (v19 == 2)
      {
        v20 = 7;
      }

      else
      {
        if (v19 != 3)
        {
          v21 = v18 + 1;
          goto LABEL_20;
        }

        v20 = 8;
      }

      MEMORY[0x21CECE850](v20);
      v21 = v18;
LABEL_20:
      MEMORY[0x21CECE850](v21);
      result = sub_219BF7AE4();
      v22 = -1 << *(a3 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      v25 = 1 << v23;
    }

    while (((1 << v23) & *(v10 + 8 * (v23 >> 6))) == 0);
    v26 = ~v22;
    v27 = v19 == 4;
    v28 = v18 == 4 && v19 == 4;
    v29 = v18 == 3 && v19 == 4;
    v30 = v18 == 2 && v19 == 4;
    v31 = v18 == 1 && v19 == 4;
    if (v18)
    {
      v27 = 0;
    }

    while (1)
    {
      v32 = *(a3 + 48) + 16 * v23;
      v33 = *v32;
      result = *(v32 + 8);
      if (result <= 1)
      {
        break;
      }

      if (result == 2)
      {
        if (v19 != 2)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (result == 3)
      {
        if (v19 != 3)
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (v33 <= 1)
      {
        if (v33)
        {
          if (v31)
          {
            goto LABEL_3;
          }
        }

        else if (v27)
        {
          goto LABEL_3;
        }
      }

      else if (v33 == 2)
      {
        if (v30)
        {
          goto LABEL_3;
        }
      }

      else if (v33 == 3)
      {
        if (v29)
        {
          goto LABEL_3;
        }
      }

      else if (v28)
      {
        goto LABEL_3;
      }

LABEL_38:
      v23 = (v23 + 1) & v26;
      v24 = v23 >> 6;
      v25 = 1 << v23;
      if ((*(v10 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
      {
        goto LABEL_4;
      }
    }

    if (result)
    {
      if (v19 != 1)
      {
        goto LABEL_38;
      }

LABEL_37:
      if (v33 == v18)
      {
        goto LABEL_3;
      }

      goto LABEL_38;
    }

    if (v19 || ((v33 ^ v18) & 1) != 0)
    {
      goto LABEL_38;
    }

LABEL_3:
    v11 = v7[v24];
    v7[v24] = v11 & ~v25;
    if ((v11 & v25) == 0)
    {
      goto LABEL_4;
    }

    v9 = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
LABEL_72:
      __break(1u);
    }

    else
    {
      if (v37 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

void sub_218EB7418(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
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

          sub_21987C7C8(a1, a2, v26, a3);
          return;
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
        sub_219BF7AA4();

        sub_219BF5524();
        v16 = sub_219BF7AE4();
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
        while ((sub_219BF78F4() & 1) == 0)
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

      v10 = a1[v19];
      a1[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_218EB75FC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (1)
  {
    v12 = a5[3];
    v13 = a5[4];
    if (!v13)
    {
      break;
    }

    v14 = a5[3];
LABEL_9:
    v17 = *(*(*a5 + 48) + (__clz(__rbit64(v13)) | (v14 << 6)));
    a5[3] = v14;
    a5[4] = (v13 - 1) & v13;
    sub_219BF7AA4();
    MEMORY[0x21CECE850](v17);
    result = sub_219BF7AE4();
    v18 = -1 << *(a3 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    v21 = 1 << v19;
    if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) != 0)
    {
      v22 = *(a3 + 48);
      if (v17 == *(v22 + v19))
      {
LABEL_2:
        v11 = v7[v20];
        v7[v20] = v11 & ~v21;
        if ((v11 & v21) != 0)
        {
          if (__OFSUB__(v9--, 1))
          {
LABEL_24:
            __break(1u);
            return result;
          }

          if (!v9)
          {
            return MEMORY[0x277D84FA0];
          }
        }
      }

      else
      {
        v23 = ~v18;
        while (1)
        {
          v19 = (v19 + 1) & v23;
          v20 = v19 >> 6;
          v21 = 1 << v19;
          if (((1 << v19) & *(v10 + 8 * (v19 >> 6))) == 0)
          {
            break;
          }

          if (v17 == *(v22 + v19))
          {
            goto LABEL_2;
          }
        }
      }
    }
  }

  v15 = (a5[2] + 64) >> 6;
  v16 = a5[3];
  while (1)
  {
    v14 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v14 >= v15)
    {
      break;
    }

    v13 = *(a5[1] + 8 * v14);
    ++v16;
    if (v13)
    {
      goto LABEL_9;
    }
  }

  if (v15 <= v12 + 1)
  {
    v25 = v12 + 1;
  }

  else
  {
    v25 = (a5[2] + 64) >> 6;
  }

  a5[3] = v25 - 1;
  a5[4] = 0;

  return sub_21987D4E4(v7, a2, v9, a3, v26);
}

void sub_218EB77D0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_219BF7184();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_219BF7AA4();

        sub_219BF5524();
        v10 = sub_219BF7AE4();

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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

void sub_218EB7994(unint64_t a1)
{
  v29 = type metadata accessor for AudioFeedTrack(0);
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *v1;
  v6 = *v1 + 56;
  v7 = -1 << *(*v1 + 32);
  v8 = (a1 + 1) & ~v7;
  if (((1 << v8) & *(v6 + 8 * (v8 >> 6))) != 0)
  {
    v9 = ~v7;

    v10 = a1;
    v11 = sub_219BF7184();
    if ((*(v6 + 8 * (v8 >> 6)) & (1 << v8)) != 0)
    {
      v12 = (v11 + 1) & v9;
      v13 = *(v3 + 72);
      v26 = v13;
      v27 = v6;
      do
      {
        v14 = v13 * v8;
        v15 = v28;
        sub_218C1620C(*(v5 + 48) + v13 * v8, v28);
        v16 = v5;
        sub_219BF7AA4();
        v17 = v12;
        v18 = [*v15 identifier];
        sub_219BF5414();

        sub_219BF5524();

        sub_2198DA178(v30);
        v19 = sub_219BF7AE4();
        sub_218EB8BCC(v15);
        v20 = v19 & v9;
        v12 = v17;
        if (v10 >= v17)
        {
          if (v20 < v17)
          {
            v5 = v16;
            v13 = v26;
            goto LABEL_5;
          }

          v5 = v16;
          v13 = v26;
          if (v10 < v20)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v5 = v16;
          v13 = v26;
          if (v20 < v12 && v10 < v20)
          {
            goto LABEL_5;
          }
        }

        v21 = v13 * v10;
        if (v13 * v10 < v14 || *(v5 + 48) + v13 * v10 >= (*(v5 + 48) + v14 + v13))
        {
          swift_arrayInitWithTakeFrontToBack();
          goto LABEL_17;
        }

        v10 = v8;
        if (v21 != v14)
        {
          swift_arrayInitWithTakeBackToFront();
LABEL_17:
          v10 = v8;
        }

LABEL_5:
        v8 = (v8 + 1) & v9;
        v6 = v27;
      }

      while (((*(v27 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v10) - 1;
  }

  else
  {
    *(v6 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v22 = *(v5 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v24;
    ++*(v5 + 36);
  }
}

void sub_218EB7C94(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_219BF7184();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = 16 * v6;
        v11 = *(v3 + 48) + 16 * v6;
        v12 = *v11;
        v13 = *(v11 + 8);
        sub_219BF7AA4();
        if (v13 <= 1)
        {
          if (!v13)
          {
            MEMORY[0x21CECE850](0);
            v12 &= 1u;
            goto LABEL_16;
          }

          v14 = 6;
        }

        else if (v13 == 2)
        {
          v14 = 7;
        }

        else
        {
          if (v13 != 3)
          {
            ++v12;
            goto LABEL_16;
          }

          v14 = 8;
        }

        MEMORY[0x21CECE850](v14);
LABEL_16:
        MEMORY[0x21CECE850](v12);
        v15 = sub_219BF7AE4() & v7;
        if (v2 >= v9)
        {
          if (v15 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v9)
        {
          goto LABEL_21;
        }

        if (v2 >= v15)
        {
LABEL_21:
          v16 = *(v3 + 48);
          v17 = (v16 + 16 * v2);
          v18 = (v16 + v10);
          if (16 * v2 != v10 || (v2 = v6, v17 >= v18 + 1))
          {
            *v17 = *v18;
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }
}

void sub_218EB7EB4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_219BF7184();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_219BF7AA4();
        MEMORY[0x21CECE850](v10);
        v11 = sub_219BF7AE4() & v7;
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
          v13 = (v12 + v2);
          v14 = (v12 + v6);
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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

double sub_218EB805C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(Strong + *((*MEMORY[0x277D85000] & *Strong) + 0x70));
    v6 = Strong;

    sub_218EAA3FC(v2, v5);
  }

  return result;
}

void sub_218EB81B4(uint64_t a1)
{
  if (!qword_280EE3B28)
  {
    sub_2187EE748(255);
    sub_2187EE5CC(255);
    sub_2187EEB48();
    sub_2187EEDEC();
    v1 = sub_219BEA4F4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3B28);
    }
  }
}

void sub_218EB82A8(uint64_t a1)
{
  if (!qword_280E91180)
  {
    sub_2187EE318(255);
    sub_2187EEB14();
    sub_2186D5500(&qword_280ED5CF0, type metadata accessor for MagazineFeedModel, &unk_219C6F110);
    v1 = sub_219BEFCF4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91180);
    }
  }
}

void sub_218EB8350(uint64_t a1)
{
  if (!qword_280E91068)
  {
    sub_2187EE318(255);
    type metadata accessor for MagazineFeedServiceConfig(255);
    sub_2187EEB14();
    sub_2187EF390();
    sub_2186D5500(&qword_280ED5CF0, type metadata accessor for MagazineFeedModel, &unk_219C6F110);
    v1 = sub_219BF0084();
    if (!v2)
    {
      atomic_store(v1, &qword_280E91068);
    }
  }
}

unint64_t sub_218EB8430()
{
  result = qword_280E8F4A0;
  if (!qword_280E8F4A0)
  {
    sub_218EB8AF8(255, &qword_280E8F4A8, MEMORY[0x277D6E088], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F4A0);
  }

  return result;
}

unint64_t sub_218EB84D4()
{
  result = qword_280EB3B28;
  if (!qword_280EB3B28)
  {
    sub_2186ED33C(255, &qword_280EB3B20, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, type metadata accessor for MyMagazinesFeedPluginFactory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB3B28);
  }

  return result;
}

unint64_t sub_218EB8570()
{
  result = qword_280EC0D70;
  if (!qword_280EC0D70)
  {
    sub_2186ED33C(255, &qword_280EC0D68, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, type metadata accessor for PaywallFeedPluginFactory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC0D70);
  }

  return result;
}

unint64_t sub_218EB8614()
{
  result = qword_280EE4168;
  if (!qword_280EE4168)
  {
    sub_2186ED33C(255, &unk_280EE4158, sub_2187EE748, sub_2187EEB48, MEMORY[0x277D6E7C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4168);
  }

  return result;
}

unint64_t sub_218EB86B0()
{
  result = qword_280EE4840;
  if (!qword_280EE4840)
  {
    sub_2186ED33C(255, &unk_280EE4830, sub_2187EE5CC, sub_2187EEDEC, MEMORY[0x277D6E068]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4840);
  }

  return result;
}

unint64_t sub_218EB8758()
{
  result = qword_280EE4618;
  if (!qword_280EE4618)
  {
    sub_2186ED33C(255, &qword_280EE4610, sub_2187EE318, sub_2187EEB14, MEMORY[0x277D6E388]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4618);
  }

  return result;
}

unint64_t sub_218EB8828()
{
  result = qword_280E90490;
  if (!qword_280E90490)
  {
    sub_2186ED33C(255, &unk_280E90480, type metadata accessor for MagazineFeedModelFactory, sub_218EB87F4, MEMORY[0x277D33858]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90490);
  }

  return result;
}

unint64_t sub_218EB88C4()
{
  result = qword_280EC7BE0;
  if (!qword_280EC7BE0)
  {
    sub_2186ED33C(255, &unk_280EC7BD0, type metadata accessor for MagazineFeedBlueprintModifierFactory, sub_2187EDED8, type metadata accessor for MagazineFeedInteractor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC7BE0);
  }

  return result;
}

unint64_t sub_218EB8960()
{
  result = qword_280EC7BE8[0];
  if (!qword_280EC7BE8[0])
  {
    sub_2186ED33C(255, &unk_280EC7BD0, type metadata accessor for MagazineFeedBlueprintModifierFactory, sub_2187EDED8, type metadata accessor for MagazineFeedInteractor);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EC7BE8);
  }

  return result;
}

void *sub_218EB8A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v16[3] = type metadata accessor for MagazineFeedRouter();
  v16[4] = &off_282A2DF88;
  v16[0] = a3;
  a6[3] = 0;
  swift_unknownObjectWeakInit();
  a6[4] = a1;
  a6[5] = a2;
  sub_218718690(v16, (a6 + 6));
  a6[11] = a4;
  a6[12] = a5;
  ObjectType = swift_getObjectType();
  v13 = *(a2 + 16);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v13(v14, &off_282A5F558, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return a6;
}

void sub_218EB8AF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218EB8B5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218EB8AF8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218EB8BCC(uint64_t a1)
{
  v2 = type metadata accessor for AudioFeedTrack(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218EB8C30@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_218EB9348(0, &qword_280EE5808, MEMORY[0x277D6D710]);
  v63 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v62 = &v48 - v10;
  sub_218EB9348(0, &qword_280EE3798, MEMORY[0x277D6EC60]);
  v57 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  sub_218EB93CC(0);
  v16 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EB9480(0);
  MEMORY[0x28223BE20](v19 - 8);
  v53 = (&v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for MagazineSectionBarLayoutOptions(0);
  MEMORY[0x28223BE20](v55);
  v54 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BE8164();
  v59 = *(v22 - 8);
  v60 = v22;
  MEMORY[0x28223BE20](v22);
  v58 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v25 = MEMORY[0x28223BE20](v24).n128_u64[0];
  v27 = &v48 - v26;
  v56 = a1;
  if (![a1 useFeedDifferentiationMode])
  {
    goto LABEL_6;
  }

  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE97A0 != -1)
  {
    swift_once();
  }

  sub_219BDC8A4();

  if (v64[0] == 1)
  {
    v29 = v59;
    v28 = v60;
    (*(v59 + 16))(v27, a3, v60);
    sub_219BE7C64();
    swift_unknownObjectRelease();
    (*(v29 + 8))(a3, v28);
    (*(v12 + 8))(a2, v57);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
LABEL_6:
    v52 = a4;
    v31 = *(v59 + 16);
    v50 = a3;
    v31(v58, a3, v60);
    v49 = v12;
    v32 = *(v12 + 16);
    v51 = a2;
    v33 = v57;
    v32(v14, a2, v57);
    v34 = MEMORY[0x277D6EC60];
    sub_218EB9524(&qword_280EE37A8, &qword_280EE3798, MEMORY[0x277D6EC60], MEMORY[0x277D6EC68]);
    sub_219BF56A4();
    v35 = *(v16 + 36);
    sub_218EB9524(&qword_280EE37A0, &qword_280EE3798, v34, MEMORY[0x277D6EC70]);
    v36 = 0;
    v61 = (v9 + 16);
    v37 = (v9 + 8);
    v38 = v63;
    while (1)
    {
      sub_219BF5E84();
      if (*&v18[v35] == *v64)
      {
        break;
      }

      v39 = sub_219BF5EC4();
      v40 = v62;
      (*v61)(v62);
      v39(v64, 0);
      sub_219BF5E94();
      sub_218EB9524(&qword_280EE5818, &qword_280EE5808, MEMORY[0x277D6D710], MEMORY[0x277D6D730]);
      sub_219BF5DF4();
      sub_219BF5E84();
      v41 = sub_219BF5E74();
      (*v37)(v40, v38);
      v42 = __OFADD__(v36, v41);
      v36 += v41;
      if (v42)
      {
        __break(1u);
        break;
      }
    }

    sub_218EB9568(v18);
    v43 = v53;
    *v53 = v36;
    v44 = *MEMORY[0x277D33B58];
    v45 = sub_219BF2C44();
    v46 = *(v45 - 8);
    (*(v46 + 104))(v43, v44, v45);
    (*(v46 + 56))(v43, 0, 1, v45);
    v47 = v54;
    sub_219BF3864();
    swift_unknownObjectRelease();
    (*(v59 + 8))(v50, v60);
    (*(v49 + 8))(v51, v33);
    swift_storeEnumTagMultiPayload();
    return sub_218EB95C4(v47, v52);
  }
}

void sub_218EB9348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineSectionBarSectionDescriptor;
    v8[1] = &type metadata for MagazineSectionBarModel;
    v8[2] = sub_2189510B4();
    v8[3] = sub_218951108();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218EB93CC(uint64_t a1)
{
  if (!qword_280E8D4B8)
  {
    v1 = MEMORY[0x277D6EC60];
    sub_218EB9348(255, &qword_280EE3798, MEMORY[0x277D6EC60]);
    sub_218EB9524(&qword_280EE37A0, &qword_280EE3798, v1, MEMORY[0x277D6EC70]);
    v2 = sub_219BF7494();
    if (!v3)
    {
      atomic_store(v2, &qword_280E8D4B8);
    }
  }
}

void sub_218EB9480(uint64_t a1)
{
  if (!qword_280E902B8)
  {
    sub_219BF2C44();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E902B8);
    }
  }
}

uint64_t type metadata accessor for MagazineSectionBarLayoutOptions(uint64_t a1)
{
  result = qword_280EA8E60;
  if (!qword_280EA8E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218EB9524(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_218EB9348(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218EB9568(uint64_t a1)
{
  sub_218EB93CC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218EB95C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineSectionBarLayoutOptions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218EB9628(uint64_t a1)
{
  sub_218EB96D4(319, &qword_280E900D8, MEMORY[0x277D33F40]);
  if (v1 <= 0x3F)
  {
    sub_218EB96D4(319, &qword_280EE4E40, MEMORY[0x277D6DCF8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_218EB96D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

uint64_t sub_218EB97D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218EB981C@<X0>(uint64_t a1@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
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
  v12 = type metadata accessor for PuzzleContinuePlayingLayoutModel(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3E570(0);
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

unint64_t sub_218EB9A4C(uint64_t a1)
{
  v49 = a1;
  v1 = sub_219BDF884();
  v45 = *(v1 - 8);
  v46 = v1;
  MEMORY[0x28223BE20](v1);
  v43 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v44 = &v40 - v4;
  v5 = sub_219BE03D4();
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x28223BE20](v5);
  v40 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE13C4();
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = sub_219BDF0E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for EngagementEvent(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BDFBD4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A153EC(v49, v18);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v49 = v20;
    (*(v20 + 32))(v22, v18, v19);
    sub_219BDFB84();
    sub_219BDF0C4();
    (*(v13 + 8))(v15, v12);
    v23 = v47;
    v24 = v48;
    (*(v48 + 104))(v47, *MEMORY[0x277D2F210], v7);
    sub_218EBA13C(&unk_27CC17E20, MEMORY[0x277D2F218], MEMORY[0x277D2F228]);
    sub_219BF5874();
    sub_219BF5874();
    v25 = v22;
    if (v52 == v50 && v53 == v51)
    {
      v26 = *(v24 + 8);
      v26(v23, v7);
      v26(v11, v7);

      v27 = v49;
    }

    else
    {
      v28 = sub_219BF78F4();
      v29 = *(v24 + 8);
      v29(v23, v7);
      v29(v11, v7);

      v27 = v49;
      if ((v28 & 1) == 0)
      {
LABEL_12:
        (*(v27 + 8))(v25, v19);
        return 0;
      }
    }

    v49 = v19;
    v30 = v40;
    v31 = v25;
    sub_219BDFBA4();
    v32 = v44;
    sub_219BE03C4();
    (*(v41 + 8))(v30, v42);
    v34 = v45;
    v33 = v46;
    v35 = v43;
    (*(v45 + 104))(v43, *MEMORY[0x277D2DDF0], v46);
    sub_218EBA13C(&qword_27CC13040, MEMORY[0x277D2DE28], MEMORY[0x277D2DE30]);
    sub_219BF5874();
    sub_219BF5874();
    if (v52 == v50 && v53 == v51)
    {
      v36 = *(v34 + 8);
      v36(v35, v33);
      v36(v32, v33);

      v19 = v49;
      v25 = v31;
LABEL_11:
      sub_218831A70(MEMORY[0x277D84F90]);
      (*(v27 + 8))(v25, v19);
      return 0xD000000000000018;
    }

    v37 = sub_219BF78F4();
    v38 = *(v34 + 8);
    v38(v35, v33);
    v38(v32, v33);

    v19 = v49;
    v25 = v31;
    if (v37)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  sub_218C1023C(v18);
  return 0;
}

uint64_t sub_218EBA13C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218EBA198(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t type metadata accessor for ContinueReadingPromptExposureData(uint64_t a1)
{
  result = qword_280EA39F0;
  if (!qword_280EA39F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218EBA24C(uint64_t a1)
{
  sub_219BDD2D4();
  if (v1 <= 0x3F)
  {
    sub_219BE1524();
    if (v2 <= 0x3F)
    {
      sub_218EBA198(319, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
      if (v3 <= 0x3F)
      {
        sub_218EBA198(319, &qword_280EE7F58, MEMORY[0x277D2F890]);
        if (v4 <= 0x3F)
        {
          sub_218EBA198(319, &qword_280EE8028, MEMORY[0x277D2F260]);
          if (v5 <= 0x3F)
          {
            sub_219BDF824();
            if (v6 <= 0x3F)
            {
              sub_219BE06D4();
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

uint64_t sub_218EBA39C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = sub_219BDF134();
  v64 = *(v3 - 8);
  v65 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EBA198(0, &qword_280EE7F58, MEMORY[0x277D2F890]);
  MEMORY[0x28223BE20](v5 - 8);
  v66 = &v47 - v6;
  sub_218EBA198(0, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  MEMORY[0x28223BE20](v7 - 8);
  v59 = &v47 - v8;
  v53 = sub_219BDF074();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_219BE1544();
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_219BDBD64();
  v11 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_219BE1524();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v68 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_219BDD2D4();
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EBA198(0, &qword_280EE8028, MEMORY[0x277D2F260]);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v47 - v18;
  v20 = sub_219BDBD34();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v47 - v28;
  v30 = a1[5];
  v73 = a1[4];
  v74 = v30;
  v75 = a1[6];
  v76 = *(a1 + 112);
  v31 = a1[1];
  v69 = *a1;
  v70 = v31;
  v32 = a1[3];
  v71 = a1[2];
  v72 = v32;
  sub_219BDBD24();
  v56 = v19;
  sub_218EBACE0(&v69, v19);
  v54 = v21;
  v33 = *(v21 + 16);
  v33(v26, v29, v20);
  v55 = v20;
  v33(v23, v29, v20);
  v57 = v16;
  sub_219BDD2B4();
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v11 + 8))(v13, v47);
  (*(v49 + 104))(v48, *MEMORY[0x277D2F3E0], v50);
  (*(v52 + 104))(v51, *MEMORY[0x277D2D868], v53);
  sub_219BE1514();
  v34 = v70;
  v35 = BYTE8(v70);
  if (BYTE8(v70))
  {
    v36 = sub_219BDF0E4();
    v37 = 1;
    v38 = v59;
    (*(*(v36 - 8) + 56))(v59, 1, 1, v36);
    v39 = v66;
    if (v35 == 1)
    {
      v40 = v34;
      sub_21934C4BC();
      sub_218A57F90(v34, 1);
      v37 = 0;
    }
  }

  else
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v38 = v59;
    sub_219BF67F4();
    sub_218A57F90(v34, 0);
    v41 = sub_219BDF0E4();
    v37 = 1;
    (*(*(v41 - 8) + 56))(v38, 0, 1, v41);
    v39 = v66;
  }

  v42 = sub_219BE1714();
  (*(*(v42 - 8) + 56))(v39, v37, 1, v42);
  v43 = type metadata accessor for ContinueReadingPromptExposureData(0);
  v44 = v67;
  v45 = v56;
  sub_218EBAE5C(v56, v67 + v43[8]);
  (*(v64 + 104))(v63, *MEMORY[0x277D2D8D8], v65);
  sub_219BDF814();

  sub_219BE06C4();
  sub_2189EB304(&v69);
  sub_218EBAEDC(v45);
  (*(v54 + 8))(v29, v55);
  (*(v58 + 32))(v44, v57, v60);
  (*(v61 + 32))(v44 + v43[5], v68, v62);
  sub_218EBAF54(v38, v44 + v43[6], &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  return sub_218EBAF54(v39, v44 + v43[7], &qword_280EE7F58, MEMORY[0x277D2F890]);
}

uint64_t sub_218EBACE0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (*(a1 + 24))
  {
    if (*(a1 + 24) == 1)
    {
      v5 = [objc_msgSend(v4 sourceChannel)];
      swift_unknownObjectRelease();
      sub_219BF5414();

      sub_218A57F90(v4, 1);
LABEL_6:
      sub_219BE1424();
      v8 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v6 = [swift_unknownObjectRetain() sourceChannel];
    if (v6)
    {
      v7 = [v6 identifier];
      swift_unknownObjectRelease();
      sub_219BF5414();
      sub_218A57F90(v4, 0);

      goto LABEL_6;
    }

    sub_218A57F90(v4, 0);
  }

  v8 = 1;
LABEL_9:
  v9 = sub_219BE1444();
  v10 = *(*(v9 - 8) + 56);

  return v10(a3, v8, 1, v9);
}

uint64_t sub_218EBAE5C(uint64_t a1, uint64_t a2)
{
  sub_218EBA198(0, &qword_280EE8028, MEMORY[0x277D2F260]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EBAEDC(uint64_t a1)
{
  sub_218EBA198(0, &qword_280EE8028, MEMORY[0x277D2F260]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218EBAF54(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_218EBA198(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_218EBAFC0(double a1, double a2)
{
  if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

void sub_218EBB0BC(double a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v135 = a3;
  Width = COERCE_DOUBLE(sub_219BDCAF4());
  v7 = *(*&Width - 8);
  MEMORY[0x28223BE20](*&Width);
  *&Height = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = a1;
  sub_218718690(*&a1, v139);
  sub_219BE8004();
  v10 = v9;
  sub_219BE7FF4();
  sub_219BF6034();
  v12 = v10 - v11;
  v129 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v129 scaledValueForValue_];
  v14 = v13;
  v130 = a2;
  v15 = sub_219BE8034();
  v16 = [v15 userInterfaceIdiom];

  if (v16)
  {
    sub_218EBAFC0(v14, v12);
    v18 = v17;
  }

  else if (v14 > 1.5)
  {
    v18 = (v12 + -10.0) * 0.5;
  }

  else
  {
    v18 = (v12 + -20.0) / 3.0;
  }

  v19 = COERCE_DOUBLE([*(*__swift_project_boxed_opaque_existential_1(v139 v140) + 16)]);
  if (v19 == 0.0)
  {
    sub_219BF5414();
    v19 = COERCE_DOUBLE(sub_219BF53D4());
  }

  v136 = v19;
  sub_21899E550(0);
  v128 = v20;
  inited = swift_initStackObject();
  v127 = xmmword_219C09EC0;
  *(inited + 16) = xmmword_219C09EC0;
  v22 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  *&v134 = inited + 32;
  v23 = objc_opt_self();
  v125 = COERCE_DOUBLE(v22);
  v24 = [v23 labelColor];
  v25 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 40) = v24;
  v26 = *MEMORY[0x277D740A8];
  v126 = v25;
  *(inited + 64) = v25;
  *(inited + 72) = v26;
  *&v27 = COERCE_DOUBLE(sub_219BF0CD4());
  v28 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v121 = v26;
  v29 = sub_219BF6BD4();
  v30 = v7;
  *&v31 = v7 + 104;
  v32 = *(v7 + 104);
  v34 = Height;
  v33 = Width;
  v123 = *MEMORY[0x277D6D198];
  v124 = v31;
  v122 = v32;
  v32(*&Height);
  v131 = *&v27;
  v35 = sub_219BF0CB4();

  v36 = *(v30 + 8);
  v37 = v34;
  v38 = v28;
  *&v133 = v30 + 8;
  v120 = v36;
  v36(*&v37, *&v33);
  *(inited + 104) = v28;
  *(inited + 80) = v35;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  v40 = v39;
  swift_arrayDestroy();
  v41 = objc_allocWithZone(MEMORY[0x277CCA898]);
  type metadata accessor for Key(0);
  v43 = v42;
  v134 = COERCE_DOUBLE(sub_21899E604());
  v44 = sub_219BF5204();

  v45 = v136;
  v46 = [v41 initWithString:*&v136 attributes:v44];

  v47 = sub_219BF6794();
  [v47 lineHeight];
  v49 = v48;

  [v46 boundingRectWithSize:3 options:0 context:{v18, v49 + v49}];
  v51 = v50;
  v53 = v52;
  v54 = sub_219BF6794();
  [v54 lineHeight];
  v56 = v55;

  v57 = [*(*__swift_project_boxed_opaque_existential_1(v139 v140) + 16)];
  v136 = 0.0;
  v58 = 0.0;
  v59 = 0.0;
  if (v57)
  {
    if (v135)
    {
      v60 = *(*&v132 + 64);
      if (v60 == 0.0)
      {
        goto LABEL_15;
      }

      v118 = v43;
      v119 = v40;
      v117 = *(*&v132 + 56);
      v132 = v60;
    }

    else
    {
      v118 = v43;
      v119 = v40;
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v62 = [objc_opt_self() bundleForClass_];
      v117 = sub_219BDB5E4();
      v132 = v63;
    }

    v64 = swift_initStackObject();
    *(v64 + 16) = v127;
    v65 = v125;
    *(v64 + 32) = v125;
    v66 = objc_allocWithZone(MEMORY[0x277D75348]);
    v67 = *&v65;
    *(v64 + 40) = [v66 initWithRed:0.43 green:0.43 blue:0.45 alpha:1.0];
    v68 = v121;
    *(v64 + 64) = v126;
    *(v64 + 72) = v68;
    v69 = v68;
    v70 = sub_219BF6BD4();
    v71 = Height;
    v72 = Width;
    v122(*&Height, v123, *&Width);
    v73 = sub_219BF0CB4();

    v120(*&v71, *&v72);
    *(v64 + 104) = v38;
    *(v64 + 80) = v73;
    sub_2188195F4(v64);
    swift_setDeallocating();
    swift_arrayDestroy();
    v74 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v75 = sub_219BF53D4();
    v76 = sub_219BF5204();

    v77 = [v74 initWithString:v75 attributes:v76];

    v58 = 0.0;
    if (v77)
    {
      [v77 boundingRectWithSize:3 options:0 context:{v18, v56}];
      v58 = v78;
      v59 = v79;
    }
  }

LABEL_15:
  v141.origin.x = 0.0;
  v141.origin.y = 0.0;
  v141.size.width = v18;
  v141.size.height = v18;
  Width = CGRectGetWidth(v141);
  v142.origin.x = 0.0;
  v142.origin.y = 0.0;
  v142.size.width = v18;
  v142.size.height = v18;
  Height = CGRectGetHeight(v142);
  v143.origin.x = 0.0;
  v143.origin.y = 0.0;
  v143.size.width = v18;
  v143.size.height = v18;
  v144.origin.y = CGRectGetMaxY(v143) + 6.0;
  v144.origin.x = 0.0;
  v144.size.width = v51;
  v144.size.height = v53;
  v145 = CGRectIntegral(v144);
  x = v145.origin.x;
  y = v145.origin.y;
  v82 = v145.size.width;
  v83 = v145.size.height;
  MaxY = CGRectGetMaxY(v145);
  v85 = v58 == 0.0;
  v86 = v59 == 0.0;
  v87 = v85 && v86;
  v88 = 0.0;
  if (!v85 || !v86)
  {
    v88 = 2.0;
  }

  v146.origin.y = v88 + MaxY;
  v146.origin.x = 0.0;
  v146.size.width = v58;
  v146.size.height = v59;
  v147 = CGRectIntegral(v146);
  v131 = v147.origin.x;
  v132 = v147.size.height;
  v133 = v147.size.width;
  v134 = v147.origin.y;
  v147.origin.x = 0.0;
  v147.origin.y = 0.0;
  v147.size.width = v18;
  v147.size.height = v18;
  v89 = CGRectGetWidth(v147);
  v90 = type metadata accessor for ChannelCoinLayoutOptions(0);
  v91 = v130;
  v92 = v130 + v90[8];
  v93 = *v92;
  v126 = *(v92 + 8);
  *&v127 = v83;
  v148.origin.x = x;
  v148.origin.y = y;
  v128 = v82;
  v148.size.width = v82;
  v148.size.height = v83;
  v94 = CGRectGetHeight(v148);
  if (!v87)
  {
    v149.origin.x = v131;
    v149.size.height = v132;
    v149.size.width = v133;
    v149.origin.y = v134;
    v136 = CGRectGetHeight(v149) + 2.0;
  }

  v150.origin.x = 0.0;
  v150.origin.y = 0.0;
  v150.size.height = Height;
  v150.size.width = Width;
  v95 = CGRectGetHeight(v150);
  if (v18 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v96 = v136 + v94 + 6.0 + v95 + 20.0;
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v96 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
  }

  if (v96 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v96 < 9.22337204e18)
  {
    v124 = y;
    v125 = x;
    v136 = v89 - v93 + -6.0;
    v97 = v96;
    v98 = v90[6];
    v99 = *(v91 + v90[5]);
    v100 = *(v91 + v98);
    sub_219BF6014();
    v102 = v101;
    v104 = v103;
    v106 = v105;
    v108 = v107;

    v109 = v135 & 1;
    __swift_destroy_boxed_opaque_existential_1(v139);
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = v18;
    *(a4 + 24) = v97;
    *(a4 + 32) = 0;
    *(a4 + 40) = 0;
    *(a4 + 48) = v18;
    *(a4 + 56) = v18;
    *(a4 + 64) = 0;
    *(a4 + 72) = 0;
    v110 = Height;
    *(a4 + 80) = Width;
    *(a4 + 88) = v110;
    v111 = v124;
    *(a4 + 96) = v125;
    *(a4 + 104) = v111;
    v112 = v127;
    *(a4 + 112) = v128;
    *(a4 + 120) = v112;
    v114 = v133;
    v113 = v134;
    *(a4 + 128) = v131;
    *(a4 + 136) = v113;
    v115 = v132;
    *(a4 + 144) = v114;
    *(a4 + 152) = v115;
    *(a4 + 160) = v136;
    *(a4 + 168) = 0x4018000000000000;
    v116 = v126;
    *(a4 + 176) = v93;
    *(a4 + 184) = v116;
    *(a4 + 192) = v99;
    *(a4 + 193) = v100;
    *(a4 + 200) = v102;
    *(a4 + 208) = v104;
    *(a4 + 216) = v106;
    *(a4 + 224) = v108;
    *(a4 + 232) = v109;
    return;
  }

LABEL_30:
  __break(1u);
}

uint64_t sub_218EBBAF4()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

id sub_218EBBBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5)
{
  v6 = v5;
  [a5 horizontalSizeClass];
  v8 = [a5 userInterfaceIdiom];
  v9 = MEMORY[0x277D76A28];
  if (((v8 - 1) & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v9 = MEMORY[0x277D769D0];
  }

  v10 = *v9;
  v11 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v12 = v10;
  v13 = sub_219BF6BD4();

  sub_21899E550(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v15 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 40) = v13;
  v16 = *MEMORY[0x277D740C0];
  v62 = v11;
  *(inited + 64) = v11;
  *(inited + 72) = v16;
  v17 = objc_opt_self();
  v18 = v15;
  v19 = v16;
  v59 = v18;
  v61 = v19;
  v20 = v13;
  v21 = [v17 labelColor];
  v22 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 104) = v22;
  *(inited + 80) = v21;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v24 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v25 = sub_219BF5204();

  v63 = [v23 initWithString:v24 attributes:v25];

  v26 = [a5 userInterfaceIdiom];
  if (v26 + 1 > 6)
  {
    v27 = MEMORY[0x277D76968];
  }

  else
  {
    v27 = qword_2782425C8[v26 + 1];
  }

  v58 = *v27;
  v28 = *(*__swift_project_boxed_opaque_existential_1((v6 + 16), *(v6 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 40);
  v29 = swift_initStackObject();
  *(v29 + 32) = v59;
  *(v29 + 16) = xmmword_219C09EC0;
  *(v29 + 40) = v20;
  *(v29 + 64) = v62;
  *(v29 + 72) = v61;
  *(v29 + 104) = v22;
  *(v29 + 80) = v28;
  v30 = v28;
  v57 = v20;
  v56 = v30;
  sub_2188195F4(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  MEMORY[0x21CECC330](a3, a4);
  v31 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v32 = sub_219BF53D4();

  v33 = sub_219BF5204();
  v34 = [v31 &selRef_possiblyUnfetchedAppConfiguration];

  v35 = v63;
  [v63 appendAttributedString_];

  v36 = sub_219BF53D4();
  v37 = [objc_opt_self() systemImageNamed_];

  if (v37)
  {
    v38 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v39 = sub_219BF53D4();
    v40 = sub_219BF5204();

    v41 = [v38 &selRef_possiblyUnfetchedAppConfiguration];

    [v63 appendAttributedString_];
    v42 = [objc_opt_self() textAttachmentWithImage_];
    sub_2186C6148(0, &qword_27CC13048, 0x277CCAB48);
    v43 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    v44 = swift_initStackObject();
    *(v44 + 16) = xmmword_219C0B8C0;
    v45 = *MEMORY[0x277D74060];
    *(v44 + 32) = *MEMORY[0x277D74060];
    v46 = sub_2186C6148(0, &qword_27CC13050, 0x277D74270);
    *(v44 + 40) = v42;
    *(v44 + 64) = v46;
    *(v44 + 72) = v59;
    v47 = v59;
    v48 = v45;
    v60 = v42;
    *(v44 + 80) = sub_219BF6BD4();
    *(v44 + 104) = v62;
    *(v44 + 112) = v61;
    *(v44 + 144) = v22;
    v49 = v56;
    *(v44 + 120) = v56;
    v50 = v61;
    v51 = v56;
    sub_2188195F4(v44);
    swift_setDeallocating();
    swift_arrayDestroy();
    v52 = sub_219BF5204();

    [v43 addAttributes:v52 range:{0, 1}];

    v35 = v63;
    [v63 appendAttributedString_];
  }

  else
  {

    v49 = v56;
  }

  return v35;
}

void sub_218EBC26C(double a1)
{
  v2 = [objc_opt_self() configurationWithPointSize:5 weight:-1 scale:a1];
  v3 = sub_219BF53D4();
  v4 = objc_opt_self();
  v5 = [v4 systemImageNamed:v3 withConfiguration:v2];

  if (v5)
  {
    v6 = sub_219BF53D4();
    v7 = *(*__swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 40);
    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 tertiarySystemFillColor];
    v11 = [v4 ts:v6 filledSystemImageNamed:v9 fillColor:v10 symbolColor:v2 symbolConfig:?];

    if (v11)
    {
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_218EBC518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  sub_218EC0304(0, &qword_280EE57D0, MEMORY[0x277D6D710]);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  sub_218C3E74C(0);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = sub_219BE8944();
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  sub_219BEF6B4();
  v5[22] = swift_task_alloc();
  v9 = sub_219BEF594();
  v5[23] = v9;
  v5[24] = *(v9 - 8);
  v5[25] = swift_task_alloc();
  sub_219BEF5B4();
  v5[26] = swift_task_alloc();
  sub_219BEF604();
  v5[27] = swift_task_alloc();
  sub_219BEF644();
  v5[28] = swift_task_alloc();
  sub_219BEF664();
  v5[29] = swift_task_alloc();
  v10 = sub_219BEF694();
  v5[30] = v10;
  v5[31] = *(v10 - 8);
  v5[32] = swift_task_alloc();
  v11 = MEMORY[0x277D83D88];
  sub_218EC059C(0, &qword_280E91358, MEMORY[0x277D326A8], MEMORY[0x277D83D88]);
  v5[33] = swift_task_alloc();
  v12 = sub_219BE8164();
  v5[34] = v12;
  v5[35] = *(v12 - 8);
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  sub_218EC059C(0, &qword_280E91368, MEMORY[0x277D32698], v11);
  v5[38] = swift_task_alloc();
  v13 = sub_219BEF6C4();
  v5[39] = v13;
  v5[40] = *(v13 - 8);
  v5[41] = swift_task_alloc();
  sub_219BDCAF4();
  v5[42] = swift_task_alloc();
  v14 = sub_219BDCAE4();
  v5[43] = v14;
  v5[44] = *(v14 - 8);
  v5[45] = swift_task_alloc();
  v15 = sub_219BDCAB4();
  v5[46] = v15;
  v5[47] = *(v15 - 8);
  v5[48] = swift_task_alloc();
  sub_218EC059C(0, &unk_280E90C60, MEMORY[0x277D32FE0], v11);
  v5[49] = swift_task_alloc();
  v16 = sub_219BF0634();
  v5[50] = v16;
  v5[51] = *(v16 - 8);
  v5[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218EBCB44, 0, 0);
}

void *sub_218EBCB44()
{
  v1 = v0[49];
  v37 = v0[50];
  v38 = v0[51];
  v2 = v0[47];
  v3 = v0[48];
  v35 = v0[52];
  v4 = v0[46];
  v26 = v0[45];
  v41 = v0[44];
  v43 = v0[43];
  v36 = v0[41];
  v39 = v0[40];
  v40 = v0[39];
  v5 = v0[37];
  v28 = v0[38];
  v48 = v0[36];
  v51 = v0[34];
  v53 = v0[35];
  v29 = v0[33];
  v6 = v0[31];
  v30 = v0[32];
  v31 = v0[30];
  v32 = v0[24];
  v33 = v0[25];
  v34 = v0[23];
  v42 = v0[20];
  v45 = v0[19];
  v46 = v0[21];
  v7 = v0[10];
  (*(v38 + 104))();
  v8 = sub_219BF0BD4();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  (*(v2 + 104))(v3, *MEMORY[0x277D6D178], v4);
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  sub_219BDCAC4();
  v27 = *(v53 + 16);
  v27(v5, v7, v51);
  sub_219BEF614();
  v9 = sub_219BEF624();
  (*(*(v9 - 8) + 56))(v28, 0, 1, v9);
  v10 = sub_219BEF684();
  (*(*(v10 - 8) + 56))(v29, 1, 1, v10);
  (*(v6 + 104))(v30, *MEMORY[0x277D326B0], v31);
  sub_219BEF654();
  sub_219BEF5F4();
  sub_219BEF5F4();
  (*(v32 + 104))(v33, *MEMORY[0x277D32680], v34);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  v50 = sub_219BEE0E4();
  (*(v39 + 8))(v36, v40);
  (*(v41 + 8))(v26, v43);
  (*(v2 + 8))(v3, v4);
  sub_218864C84(v1, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v38 + 8))(v35, v37);
  v27(v48, v7, v51);
  (*(v42 + 104))(v46, *MEMORY[0x277D6E080], v45);
  sub_2189F3FBC(0);
  sub_218EC04F4(&qword_280EE3698, sub_2189F3FBC, MEMORY[0x277D6EC70]);
  v11 = sub_219BF5E44();
  if (v11)
  {
    v12 = v11;
    v55 = MEMORY[0x277D84F90];
    sub_218C35F38(0, v11 & ~(v11 >> 63), 0);
    v13 = v55;
    result = sub_219BF5DF4();
    if ((v12 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v16 = v0[14];
      v47 = (v16 + 16);
      v49 = (v16 + 8);
      v44 = v0[17];
      while (!__OFADD__(v15, 1))
      {
        v52 = v15 + 1;
        v54 = v13;
        v17 = v0[18];
        v18 = v0[15];
        v19 = v0[12];
        v20 = sub_219BF5EC4();
        (*v47)(v18);
        v20(v0 + 2, 0);
        sub_218EBD5B0(v18, v19, v50, v0 + 7, v17);
        (*v49)(v0[15], v0[13]);
        v13 = v54;
        v22 = *(v54 + 16);
        v21 = *(v54 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_218C35F38((v21 > 1), v22 + 1, 1);
          v13 = v54;
        }

        v23 = v0[18];
        v24 = v0[16];
        *(v13 + 16) = v22 + 1;
        (*(v44 + 32))(v13 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v22, v23, v24);
        result = sub_219BF5E94();
        ++v15;
        if (v52 == v12)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    type metadata accessor for AudioFeedLayoutModel(0);
    sub_218DD7624();
    sub_218EC04F4(&qword_280ECF4A8, type metadata accessor for AudioFeedLayoutModel, &unk_219C376F0);
    sub_219BE6564();
    sub_219BEE0C4();

    v25 = v0[1];

    return v25();
  }

  return result;
}

uint64_t sub_218EBD5B0@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v277 = a4;
  v279 = a3;
  v269 = a2;
  v281 = a1;
  v253 = a5;
  v5 = type metadata accessor for CuratedAudioFeedGroup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v252 = &v230 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = type metadata accessor for ForYouAudioFeedGroup(0);
  MEMORY[0x28223BE20](v254);
  v256 = &v230 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = type metadata accessor for AudioFeedLayoutModel(0);
  MEMORY[0x28223BE20](v287);
  v285 = &v230 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = sub_219BEF974();
  v294 = *(v284 - 8);
  MEMORY[0x28223BE20](v284);
  v283 = &v230 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3E858(0);
  v282 = v10;
  v286 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v235 = &v230 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v234 = &v230 - v13;
  MEMORY[0x28223BE20](v14);
  v237 = &v230 - v15;
  MEMORY[0x28223BE20](v16);
  v236 = &v230 - v17;
  MEMORY[0x28223BE20](v18);
  v238 = &v230 - v19;
  v276 = sub_219BE9FA4();
  v274 = *(v276 - 8);
  MEMORY[0x28223BE20](v276);
  v249 = &v230 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v248 = &v230 - v22;
  MEMORY[0x28223BE20](v23);
  v241 = &v230 - v24;
  MEMORY[0x28223BE20](v25);
  v239 = &v230 - v26;
  MEMORY[0x28223BE20](v27);
  v240 = &v230 - v28;
  v29 = MEMORY[0x277D83D88];
  sub_218EC059C(0, &qword_280EE9048, MEMORY[0x277D6D1A0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v30 - 8);
  v270 = &v230 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v268 = &v230 - v33;
  MEMORY[0x28223BE20](v34);
  v267 = &v230 - v35;
  MEMORY[0x28223BE20](v36);
  v266 = &v230 - v37;
  v272 = sub_219BDCB14();
  v271 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v245 = &v230 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v244 = &v230 - v40;
  MEMORY[0x28223BE20](v41);
  v246 = &v230 - v42;
  v257 = sub_219BEE074();
  v273 = *(v257 - 8);
  MEMORY[0x28223BE20](v257);
  v243 = &v230 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v242 = &v230 - v45;
  MEMORY[0x28223BE20](v46);
  v251 = &v230 - v47;
  MEMORY[0x28223BE20](v48);
  v250 = &v230 - v49;
  MEMORY[0x28223BE20](v50);
  v247 = &v230 - v51;
  MEMORY[0x28223BE20](v52);
  v54 = &v230 - v53;
  sub_218EC059C(0, &qword_280E91990, MEMORY[0x277D32218], v29);
  MEMORY[0x28223BE20](v55 - 8);
  v262 = &v230 - v56;
  v260 = sub_219BED8D4();
  v259 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v258 = &v230 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC059C(0, &qword_280E91548, MEMORY[0x277D325F8], v29);
  MEMORY[0x28223BE20](v58 - 8);
  v261 = &v230 - v59;
  v265 = sub_219BF1904();
  v264 = *(v265 - 8);
  MEMORY[0x28223BE20](v265);
  v263 = &v230 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_219BF2124();
  MEMORY[0x28223BE20](v61 - 8);
  sub_218EC059C(0, &qword_280E924F8, MEMORY[0x277D31DD0], v29);
  MEMORY[0x28223BE20](v62 - 8);
  v255 = &v230 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v66 = &v230 - v65;
  MEMORY[0x28223BE20](v67);
  v69 = &v230 - v68;
  AudioFeedGroup = type metadata accessor for UpNextAudioFeedGroup(0);
  MEMORY[0x28223BE20](AudioFeedGroup);
  v72 = &v230 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for AudioFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v73);
  v75 = &v230 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC0304(0, &qword_280EE57D0, MEMORY[0x277D6D710]);
  v278 = v76;
  sub_219BE6934();
  v275 = v75;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v98 = v254;
    v231 = v66;
    v232 = v72;
    v233 = v69;
    v255 = v54;
    if (EnumCaseMultiPayload)
    {
      v128 = v256;
      sub_218C17F48(v275, v256, type metadata accessor for ForYouAudioFeedGroup);
      v129 = *(v98 + 20);
      v130 = sub_219BEDB64();
      (*(*(v130 - 8) + 56))(v231, 1, 1, v130);
      v131 = v263;
      sub_219BED874();
      (*(v259 + 16))(v258, v128 + v129, v260);
      v132 = v261;
      sub_219BEF4D4();
      v133 = sub_219BEF4E4();
      (*(*(v133 - 8) + 56))(v132, 0, 1, v133);
      v134 = sub_219BEEA64();
      v135 = v262;
      (*(*(v134 - 8) + 56))(v262, 1, 1, v134);
      sub_219ACFBA8();
      sub_218EC04F4(&qword_280EBC468, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23E8C);
      sub_218EC04F4(&unk_280EDCC20, type metadata accessor for AudioFeedModel, &unk_219C86FB8);
      sub_219BE69F4();

      sub_218864C84(v135, &qword_280E91990, MEMORY[0x277D32218]);
      sub_218864C84(v132, &qword_280E91548, MEMORY[0x277D325F8]);
      v136 = *(v264 + 8);
      v137 = v265;
      v136(v131, v265);
      sub_219BED874();
      v138 = sub_219BF44B4();
      v136(v131, v137);
      *(&v289 + 1) = sub_219BF3594();
      v290 = MEMORY[0x277D33EB8];
      *&v288 = v138;
      v139 = sub_219BDCB24();
      v140 = *(*(v139 - 8) + 56);
      v140(v266, 1, 1, v139);
      v140(v267, 1, 1, v139);
      v140(v268, 1, 1, v139);
      v140(v270, 1, 1, v139);

      v141 = v244;
      sub_219BDCB04();
      v142 = v250;
      v143 = v280;
      sub_219BEE0B4();
      v95 = v143;
      if (!v143)
      {
        v208 = MEMORY[0x277D84F90];
        v275 = v138;
        v277 = 0;
        (*(v271 + 8))(v141, v272);

        sub_218864C84(&v288, &qword_280E91020, sub_2189BD704);
        v209 = v247;
        v210 = v257;
        (*(v273 + 16))(v247, v142, v257);
        *&v288 = sub_218DD7744(v209);
        *(&v288 + 1) = v211;
        *&v289 = v212;
        v213 = *MEMORY[0x277D6E980];
        v214 = sub_219BE9F84();
        v215 = v239;
        (*(*(v214 - 8) + 104))(v239, v213, v214);
        (*(v274 + 104))(v215, *MEMORY[0x277D6E988], v276);
        v216 = sub_219BEE004();
        v217 = *(v216 + 16);
        if (v217)
        {
          v291 = v208;
          sub_218C35F88(0, v217, 0);
          v218 = v291;
          v219 = *(v294 + 16);
          v220 = (*(v294 + 80) + 32) & ~*(v294 + 80);
          v276 = v216;
          v221 = v216 + v220;
          v280 = *(v294 + 72);
          v281 = v219;
          v294 += 16;
          v278 = v286 + 32;
          v279 = (v294 - 8);
          v222 = v236;
          v223 = v219;
          do
          {
            v224 = v283;
            v225 = v284;
            v223(v283, v221, v284);
            v223(v285, v224, v225);
            sub_218EC04F4(qword_280ECF4B0, type metadata accessor for AudioFeedLayoutModel, &unk_219C376B8);
            sub_219BE75D4();
            (*v279)(v224, v225);
            v291 = v218;
            v227 = *(v218 + 16);
            v226 = *(v218 + 24);
            if (v227 >= v226 >> 1)
            {
              sub_218C35F88((v226 > 1), v227 + 1, 1);
              v218 = v291;
            }

            *(v218 + 16) = v227 + 1;
            (*(v286 + 32))(v218 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v227, v222, v282);
            v221 += v280;
            --v217;
          }

          while (v217);

          v210 = v257;
          v142 = v250;
        }

        else
        {
        }

        sub_218DD7624();
        sub_218EC04F4(&qword_280ECF4A8, type metadata accessor for AudioFeedLayoutModel, &unk_219C376F0);
        sub_219BE81A4();

        (*(v273 + 8))(v142, v210);
        sub_218864C84(v231, &qword_280E924F8, MEMORY[0x277D31DD0]);
        v228 = type metadata accessor for ForYouAudioFeedGroup;
        v229 = &v288;
        return sub_218EC053C(*(v229 - 32), v228);
      }

      (*(v271 + 8))(v141, v272);
      sub_218864C84(v231, &qword_280E924F8, MEMORY[0x277D31DD0]);
      v96 = type metadata accessor for ForYouAudioFeedGroup;
      v117 = &v288;
    }

    else
    {
      v99 = v232;
      sub_218C17F48(v275, v232, type metadata accessor for UpNextAudioFeedGroup);
      v100 = *(AudioFeedGroup + 20);
      sub_218EC059C(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
      sub_219BF14C4();
      *(swift_allocObject() + 16) = xmmword_219C09BA0;
      *&v288 = *(v99 + *(AudioFeedGroup + 24));
      v101 = v288;
      sub_219BF7894();
      sub_219BF20F4();

      sub_219BF14A4();
      v102 = v233;
      sub_219BEDB54();
      v103 = sub_219BEDB64();
      (*(*(v103 - 8) + 56))(v102, 0, 1, v103);
      *&v288 = v101;
      v256 = sub_219BF7894();
      v275 = v100;
      v104 = v263;
      sub_219BED874();
      (*(v259 + 16))(v258, v99 + v100, v260);
      v105 = v261;
      sub_219BEF4D4();
      v106 = sub_219BEF4E4();
      (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
      v107 = sub_219BEEA64();
      v108 = v262;
      (*(*(v107 - 8) + 56))(v262, 1, 1, v107);
      sub_219ACFBA8();
      sub_218EC04F4(&qword_280EBC468, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23E8C);
      sub_218EC04F4(&unk_280EDCC20, type metadata accessor for AudioFeedModel, &unk_219C86FB8);
      sub_219BE69F4();

      sub_218864C84(v108, &qword_280E91990, MEMORY[0x277D32218]);
      sub_218864C84(v105, &qword_280E91548, MEMORY[0x277D325F8]);
      v109 = *(v264 + 8);
      v110 = v265;
      v109(v104, v265);
      sub_219BED874();
      v111 = sub_219BF44B4();
      v109(v104, v110);
      *(&v289 + 1) = sub_219BF3594();
      v290 = MEMORY[0x277D33EB8];
      *&v288 = v111;
      v112 = sub_219BDCB24();
      v113 = *(*(v112 - 8) + 56);
      v113(v266, 1, 1, v112);
      v113(v267, 1, 1, v112);
      v113(v268, 1, 1, v112);
      v113(v270, 1, 1, v112);

      v114 = v246;
      sub_219BDCB04();
      v115 = v255;
      v116 = v280;
      sub_219BEE0B4();
      v95 = v116;
      if (!v116)
      {
        v275 = v111;
        v188 = MEMORY[0x277D84F90];
        v277 = 0;
        (*(v271 + 8))(v114, v272);

        sub_218864C84(&v288, &qword_280E91020, sub_2189BD704);
        v189 = v247;
        v190 = v257;
        (*(v273 + 16))(v247, v115, v257);
        *&v288 = sub_218DD7744(v189);
        *(&v288 + 1) = v191;
        *&v289 = v192;
        v193 = *MEMORY[0x277D6E980];
        v194 = sub_219BE9F84();
        v195 = v240;
        (*(*(v194 - 8) + 104))(v240, v193, v194);
        (*(v274 + 104))(v195, *MEMORY[0x277D6E988], v276);
        v196 = sub_219BEE004();
        v197 = *(v196 + 16);
        if (v197)
        {
          v291 = v188;
          sub_218C35F88(0, v197, 0);
          v198 = v291;
          v199 = *(v294 + 16);
          v200 = (*(v294 + 80) + 32) & ~*(v294 + 80);
          v276 = v196;
          v201 = v196 + v200;
          v280 = *(v294 + 72);
          v281 = v199;
          v294 += 16;
          v278 = v286 + 32;
          v279 = (v294 - 8);
          v202 = v238;
          v203 = v199;
          do
          {
            v204 = v283;
            v205 = v284;
            v203(v283, v201, v284);
            v203(v285, v204, v205);
            sub_218EC04F4(qword_280ECF4B0, type metadata accessor for AudioFeedLayoutModel, &unk_219C376B8);
            sub_219BE75D4();
            (*v279)(v204, v205);
            v291 = v198;
            v207 = *(v198 + 16);
            v206 = *(v198 + 24);
            if (v207 >= v206 >> 1)
            {
              sub_218C35F88((v206 > 1), v207 + 1, 1);
              v198 = v291;
            }

            *(v198 + 16) = v207 + 1;
            (*(v286 + 32))(v198 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v207, v202, v282);
            v201 += v280;
            --v197;
          }

          while (v197);

          v190 = v257;
          v115 = v255;
        }

        else
        {
        }

        sub_218DD7624();
        sub_218EC04F4(&qword_280ECF4A8, type metadata accessor for AudioFeedLayoutModel, &unk_219C376F0);
        sub_219BE81A4();

        (*(v273 + 8))(v115, v190);
        sub_218864C84(v233, &qword_280E924F8, MEMORY[0x277D31DD0]);
        v228 = type metadata accessor for UpNextAudioFeedGroup;
        v229 = &v264;
        return sub_218EC053C(*(v229 - 32), v228);
      }

      (*(v271 + 8))(v114, v272);
      sub_218864C84(v233, &qword_280E924F8, MEMORY[0x277D31DD0]);
      v96 = type metadata accessor for UpNextAudioFeedGroup;
      v117 = &v264;
    }

    v97 = *(v117 - 32);
    goto LABEL_16;
  }

  v79 = v276;
  v78 = v277;
  if (EnumCaseMultiPayload == 2)
  {
    v291 = 0;
    v292 = 0;
    v293 = 0;
    v118 = v274;
    v119 = v248;
    (*(v274 + 104))(v248, *MEMORY[0x277D6E9B0], v276);
    sub_218EC03F8();
    v288 = 0u;
    v289 = 0u;
    v290 = 0;
    v120 = v242;
    v121 = v280;
    sub_219BEE0A4();
    v95 = v121;
    if (v121)
    {
      sub_218864C84(&v288, &qword_280E91020, sub_2189BD704);
      (*(v118 + 8))(v119, v79);
      result = sub_218EC053C(v275, type metadata accessor for AudioFeedSectionDescriptor);
LABEL_17:
      *v78 = v95;
      return result;
    }

    v277 = 0;
    sub_218864C84(&v288, &qword_280E91020, sub_2189BD704);
    v144 = sub_219BEE004();
    (*(v273 + 8))(v120, v257);
    v145 = *(v144 + 16);
    if (v145)
    {
      *&v288 = MEMORY[0x277D84F90];
      sub_218C35F88(0, v145, 0);
      v146 = v288;
      v147 = *(v294 + 16);
      v148 = (*(v294 + 80) + 32) & ~*(v294 + 80);
      v276 = v144;
      v149 = (v144 + v148);
      v280 = *(v294 + 72);
      v281 = v147;
      v294 += 16;
      v278 = v286 + 32;
      v279 = (v294 - 8);
      v150 = v234;
      do
      {
        v151 = v283;
        v152 = v284;
        v153 = v281;
        v281(v283, v149, v284);
        v153(v285, v151, v152);
        sub_218EC04F4(qword_280ECF4B0, type metadata accessor for AudioFeedLayoutModel, &unk_219C376B8);
        sub_219BE75D4();
        (*v279)(v151, v152);
        *&v288 = v146;
        v155 = *(v146 + 16);
        v154 = *(v146 + 24);
        if (v155 >= v154 >> 1)
        {
          sub_218C35F88((v154 > 1), v155 + 1, 1);
          v146 = v288;
        }

        *(v146 + 16) = v155 + 1;
        (*(v286 + 32))(v146 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v155, v150, v282);
        v149 += v280;
        --v145;
      }

      while (v145);
    }

    sub_218DD7624();
    sub_218EC04F4(&qword_280ECF4A8, type metadata accessor for AudioFeedLayoutModel, &unk_219C376F0);
    sub_219BE81A4();
    v228 = type metadata accessor for AudioFeedSectionDescriptor;
    v229 = &v295;
    return sub_218EC053C(*(v229 - 32), v228);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v80 = v252;
    sub_218C17F48(v275, v252, type metadata accessor for CuratedAudioFeedGroup);
    v81 = sub_219BEDB64();
    (*(*(v81 - 8) + 56))(v255, 1, 1, v81);
    v82 = v263;
    sub_219BED874();
    (*(v259 + 16))(v258, v80, v260);
    v83 = v261;
    sub_219BEF4D4();
    v84 = sub_219BEF4E4();
    (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
    v85 = sub_219BEEA64();
    v86 = v262;
    (*(*(v85 - 8) + 56))(v262, 1, 1, v85);
    sub_219ACFBA8();
    sub_218EC04F4(&qword_280EBC468, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23E8C);
    sub_218EC04F4(&unk_280EDCC20, type metadata accessor for AudioFeedModel, &unk_219C86FB8);
    v281 = sub_219BE69F4();

    sub_218864C84(v86, &qword_280E91990, MEMORY[0x277D32218]);
    sub_218864C84(v83, &qword_280E91548, MEMORY[0x277D325F8]);
    v87 = *(v264 + 8);
    v88 = v265;
    v87(v82, v265);
    sub_219BED874();
    v89 = sub_219BF44B4();
    v87(v82, v88);
    *(&v289 + 1) = sub_219BF3594();
    v290 = MEMORY[0x277D33EB8];
    *&v288 = v89;
    v90 = sub_219BDCB24();
    v91 = *(*(v90 - 8) + 56);
    v91(v266, 1, 1, v90);
    v91(v267, 1, 1, v90);
    v91(v268, 1, 1, v90);
    v91(v270, 1, 1, v90);

    v92 = v245;
    sub_219BDCB04();
    v93 = v251;
    v94 = v280;
    sub_219BEE0B4();
    v95 = v94;
    if (v94)
    {

      (*(v271 + 8))(v92, v272);
      sub_218864C84(v255, &qword_280E924F8, MEMORY[0x277D31DD0]);
      v96 = type metadata accessor for CuratedAudioFeedGroup;
      v97 = v80;
LABEL_16:
      sub_218EC053C(v97, v96);
      result = sub_218864C84(&v288, &qword_280E91020, sub_2189BD704);
      v78 = v277;
      goto LABEL_17;
    }

    v156 = MEMORY[0x277D84F90];
    v275 = v89;
    v277 = 0;
    (*(v271 + 8))(v92, v272);

    sub_218864C84(&v288, &qword_280E91020, sub_2189BD704);
    v157 = v247;
    v158 = v257;
    (*(v273 + 16))(v247, v93, v257);
    *&v288 = sub_218DD7744(v157);
    *(&v288 + 1) = v159;
    *&v289 = v160;
    v161 = *MEMORY[0x277D6E980];
    v162 = sub_219BE9F84();
    v163 = v241;
    (*(*(v162 - 8) + 104))(v241, v161, v162);
    (*(v274 + 104))(v163, *MEMORY[0x277D6E988], v276);
    v164 = sub_219BEE004();
    v165 = *(v164 + 16);
    if (v165)
    {
      v291 = v156;
      sub_218C35F88(0, v165, 0);
      v166 = v291;
      v167 = *(v294 + 16);
      v168 = (*(v294 + 80) + 32) & ~*(v294 + 80);
      v276 = v164;
      v169 = (v164 + v168);
      v280 = *(v294 + 72);
      v281 = v167;
      v294 += 16;
      v278 = v286 + 32;
      v279 = (v294 - 8);
      v170 = v237;
      do
      {
        v171 = v283;
        v172 = v284;
        v173 = v281;
        v281(v283, v169, v284);
        v173(v285, v171, v172);
        sub_218EC04F4(qword_280ECF4B0, type metadata accessor for AudioFeedLayoutModel, &unk_219C376B8);
        sub_219BE75D4();
        (*v279)(v171, v172);
        v291 = v166;
        v175 = *(v166 + 16);
        v174 = *(v166 + 24);
        if (v175 >= v174 >> 1)
        {
          sub_218C35F88((v174 > 1), v175 + 1, 1);
          v166 = v291;
        }

        *(v166 + 16) = v175 + 1;
        (*(v286 + 32))(v166 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v175, v170, v282);
        v169 += v280;
        --v165;
      }

      while (v165);

      v158 = v257;
      v93 = v251;
    }

    else
    {
    }

    sub_218DD7624();
    sub_218EC04F4(&qword_280ECF4A8, type metadata accessor for AudioFeedLayoutModel, &unk_219C376F0);
    sub_219BE81A4();

    (*(v273 + 8))(v93, v158);
    sub_218864C84(v255, &qword_280E924F8, MEMORY[0x277D31DD0]);
    v228 = type metadata accessor for CuratedAudioFeedGroup;
    v229 = &v284;
    return sub_218EC053C(*(v229 - 32), v228);
  }

  v123 = v276;
  v292 = 0;
  v293 = 0;
  v291 = 1;
  v124 = v274;
  v125 = v249;
  (*(v274 + 104))(v249, *MEMORY[0x277D6E9B0], v276);
  sub_218EC03F8();
  v288 = 0u;
  v289 = 0u;
  v290 = 0;
  v126 = v243;
  v127 = v280;
  sub_219BEE0A4();
  v95 = v127;
  if (v127)
  {
    sub_218864C84(&v288, &qword_280E91020, sub_2189BD704);
    result = (*(v124 + 8))(v125, v123);
    goto LABEL_17;
  }

  v277 = 0;
  sub_218864C84(&v288, &qword_280E91020, sub_2189BD704);
  v176 = sub_219BEE004();
  (*(v273 + 8))(v126, v257);
  v177 = *(v176 + 16);
  if (v177)
  {
    *&v288 = MEMORY[0x277D84F90];
    sub_218C35F88(0, v177, 0);
    v178 = v288;
    v179 = *(v294 + 16);
    v180 = (*(v294 + 80) + 32) & ~*(v294 + 80);
    v276 = v176;
    v181 = (v176 + v180);
    v280 = *(v294 + 72);
    v281 = v179;
    v294 += 16;
    v278 = v286 + 32;
    v279 = (v294 - 8);
    v182 = v235;
    do
    {
      v183 = v283;
      v184 = v284;
      v185 = v281;
      v281(v283, v181, v284);
      v185(v285, v183, v184);
      sub_218EC04F4(qword_280ECF4B0, type metadata accessor for AudioFeedLayoutModel, &unk_219C376B8);
      sub_219BE75D4();
      (*v279)(v183, v184);
      *&v288 = v178;
      v187 = *(v178 + 16);
      v186 = *(v178 + 24);
      if (v187 >= v186 >> 1)
      {
        sub_218C35F88((v186 > 1), v187 + 1, 1);
        v178 = v288;
      }

      *(v178 + 16) = v187 + 1;
      (*(v286 + 32))(v178 + ((*(v286 + 80) + 32) & ~*(v286 + 80)) + *(v286 + 72) * v187, v182, v282);
      v181 += v280;
      --v177;
    }

    while (v177);
  }

  sub_218DD7624();
  sub_218EC04F4(&qword_280ECF4A8, type metadata accessor for AudioFeedLayoutModel, &unk_219C376F0);
  return sub_219BE81A4();
}

uint64_t sub_218EC0240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_218EBC518(a1, a2, a3, a4);
}

void sub_218EC0304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for AudioFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for AudioFeedModel(255);
    v8[2] = sub_218EC04F4(&qword_280EBC460, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23DFC);
    v8[3] = sub_218EC04F4(&qword_280EDCBF0, type metadata accessor for AudioFeedModel, &unk_219C86D80);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218EC03F8()
{
  result = qword_280EE57F8;
  if (!qword_280EE57F8)
  {
    sub_218EC0304(255, &qword_280EE57D0, MEMORY[0x277D6D710]);
    sub_218EC04F4(&qword_280EBC468, type metadata accessor for AudioFeedSectionDescriptor, &unk_219C23E8C);
    sub_218EC04F4(&unk_280EDCC20, type metadata accessor for AudioFeedModel, &unk_219C86FB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE57F8);
  }

  return result;
}

uint64_t sub_218EC04F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218EC053C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218EC059C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_218EC0600(void (*a1)(void), uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_219BE8AE4();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    if (sub_219BE8AC4())
    {
      sub_2188202A8(a1);
      sub_219BE8AA4();
    }

    else
    {
      if (a1)
      {
        a1();
      }

      return 0;
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for HistoryFeedRefreshResult(uint64_t a1)
{
  result = qword_27CC13058;
  if (!qword_27CC13058)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218EC074C(uint64_t a1)
{
  sub_2187E7248(319);
  if (v1 <= 0x3F)
  {
    sub_2186D0BA8();
    if (v2 <= 0x3F)
    {
      sub_219BF0BD4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_218EC07E8()
{
  __swift_project_boxed_opaque_existential_1(v0 + 6, v0[9]);
  v1 = v0[5];
  ObjectType = swift_getObjectType();
  v5 = (*(v1 + 32))(ObjectType, v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong presentViewController:v5 animated:1 completion:0];
  }
}

uint64_t sub_218EC0894(uint64_t a1)
{
  v20 = a1;
  v2 = sub_219BDE294();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC0EC4(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HistoryFeedRouteModel(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v18 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v1;
  v12 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  (*(v3 + 104))(v5, *MEMORY[0x277D2FF08], v2);
  (*(v12 + 72))(v20, v5, ObjectType, v12);
  (*(v3 + 8))(v5, v2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_218EC0F80(v8, sub_218EC0EC4);
    return 0;
  }

  else
  {
    v15 = v18;
    sub_218EC0F1C(v8, v18);
    __swift_project_boxed_opaque_existential_1((v19 + 48), *(v19 + 72));
    v16 = sub_219094EB4(v15);
    sub_218EC0F80(v15, type metadata accessor for HistoryFeedRouteModel);
    return v16;
  }
}

uint64_t sub_218EC0B28()
{
  v1 = sub_219BDF074();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BE1544();
  v4 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE1524();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
  v12 = *v11;
  v14 = *(*v11 + 16);
  sub_219BE9924();
  (*(v4 + 104))(v6, *MEMORY[0x277D2F3B8], v15);
  sub_218A89BF8(v12, v3);
  sub_219BE1514();
  sub_218EC0E6C();
  sub_219BDD1F4();
  (*(v8 + 8))(v10, v7);
  return sub_219BDD134();
}

double sub_218EC0D98(char a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(swift_allocObject() + 16) = Strong;
    swift_unknownObjectRetain();
    sub_219BE3494();
    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_218EC0E6C()
{
  result = qword_280EE7FE0;
  if (!qword_280EE7FE0)
  {
    sub_219BE1524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7FE0);
  }

  return result;
}

void sub_218EC0EC4(uint64_t a1)
{
  if (!qword_27CC0B7D8)
  {
    type metadata accessor for HistoryFeedRouteModel(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC0B7D8);
    }
  }
}

uint64_t sub_218EC0F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HistoryFeedRouteModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EC0F80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_218EC0FE0(void *a1, void (*a2)(uint64_t))
{
  v3 = a1[6];
  v4 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v3);
  (*(v4 + 88))(v3, v4);
  swift_allocObject();
  swift_weakInit();
  v5 = sub_219BE2E54();
  sub_219BE21A4();

  v6 = __swift_destroy_boxed_opaque_existential_1(v8);
  a2(v6);

  return result;
}

void sub_218EC10D0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v5 = sub_219BE5434();
    __swift_project_value_buffer(v5, qword_280F62790);

    v6 = sub_219BE5414();
    v7 = sub_219BF6214();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446210;
      sub_218EC132C();
      v10 = sub_219BF7894();
      v12 = sub_2186D1058(v10, v11, &v17);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_2186C1000, v6, v7, "Will retain content for offline feeds, manifest=%{public}s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x21CECF960](v9, -1, -1);
      MEMORY[0x21CECF960](v8, -1, -1);
    }

    v13 = *(v4 + 16);
    v17 = v2;
    v14 = OfflineFeedsManifest.contentManifest.getter();
    v15 = [v13 interestTokenForContentManifest_];

    v17 = v15;

    v16 = v15;
    sub_219BE2E94();
  }
}

uint64_t sub_218EC12D0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t sub_218EC132C()
{
  result = qword_280ECE2A0;
  if (!qword_280ECE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECE2A0);
  }

  return result;
}

uint64_t type metadata accessor for MagazineGridLayoutModel(uint64_t a1)
{
  result = qword_27CC13068;
  if (!qword_27CC13068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_218EC13CC()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC1938(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_218EC1530@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC1938(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_218EC161C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC1938(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_218EC1768(uint64_t a1)
{
  v2 = sub_218EC199C(&qword_27CC14E90, &unk_219C42E20);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_218EC17F4(uint64_t a1)
{
  v2 = sub_219BEF974();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC1938(v1, v8);
  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_219BEF944();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_218EC1938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineGridLayoutModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EC199C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineGridLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_218EC19E0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v35 = v2;
  v36 = v7;
  v34 = v6;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v10 >= v6)
        {
          goto LABEL_39;
        }

        v5 = *(v2 + 8 * v10);
        ++v8;
        if (v5)
        {
          v8 = v10;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

LABEL_10:
    v42 = v5;
    v11 = *(*(v1 + 56) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));
    v12 = v11;
    v39 = v11 >> 62;
    v13 = v11 >> 62 ? sub_219BF7214() : *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v9 >> 62;
    if (v9 >> 62)
    {
      break;
    }

    v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_38;
    }

LABEL_14:

    v40 = v13;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v14)
      {
LABEL_20:
        sub_219BF7214();
      }

LABEL_21:
      v18 = v1;
      v9 = sub_219BF7364();
      v17 = v9 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_22;
    }

    if (v14)
    {
      goto LABEL_20;
    }

    v17 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v16 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

    v18 = v1;
LABEL_22:
    v38 = v9;
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    v21 = v12;
    if (v39)
    {
      v23 = v17;
      v24 = sub_219BF7214();
      v17 = v23;
      v21 = v12;
      v22 = v24;
    }

    else
    {
      v22 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 = (v42 - 1) & v42;
    if (v22)
    {
      if (((v20 >> 1) - v19) < v40)
      {
        goto LABEL_42;
      }

      v25 = v17 + 8 * v19 + 32;
      v42 &= v42 - 1;
      v37 = v17;
      if (v39)
      {
        if (v22 < 1)
        {
          goto LABEL_44;
        }

        sub_2186E330C(0);
        sub_218EC280C(&qword_280E8EB30, 255, sub_2186E330C, MEMORY[0x277D83988]);
        for (i = 0; i != v22; ++i)
        {
          v27 = sub_218A353D0(v41, i, v21);
          v29 = *v28;
          (v27)(v41, 0);
          *(v25 + 8 * i) = v29;
        }
      }

      else
      {
        sub_218A59B7C();
        swift_arrayInitWithCopy();
      }

      v2 = v35;
      v1 = v36;
      v6 = v34;
      v9 = v38;
      v5 = v42;
      if (v40 >= 1)
      {
        v30 = *(v37 + 16);
        v31 = __OFADD__(v30, v40);
        v32 = v30 + v40;
        if (v31)
        {
          goto LABEL_43;
        }

        *(v37 + 16) = v32;
      }
    }

    else
    {

      v9 = v38;
      v1 = v18;
      if (v40 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  v33 = sub_219BF7214();
  v16 = v33 + v13;
  if (!__OFADD__(v33, v13))
  {
    goto LABEL_14;
  }

LABEL_38:
  __break(1u);
LABEL_39:
}

uint64_t sub_218EC1D60()
{
  sub_218774F78((v0 + 2));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  sub_218EC2854(v0[13], v0[14]);

  return swift_deallocClassInstance();
}

double sub_218EC1DE4@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  ObjectType = swift_getObjectType();
  v5 = swift_unknownObjectRetain();
  v6 = sub_218E97A64(v5, v3, ObjectType);
  swift_unknownObjectRelease();
  v7 = v6[2];
  v8 = objc_allocWithZone(type metadata accessor for FeedViewContext(0));
  swift_unknownObjectRetain();
  v9 = [v8 init];

  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v9;
  *(v10 + 32) = MEMORY[0x277D84F90];
  *(v10 + 40) = 0;
  *(v10 + 48) = 0;
  *(v10 + 56) = 2;
  result = 0.0;
  *(v10 + 64) = 0u;
  *(v10 + 80) = 0u;
  *(v10 + 96) = -1;
  *a1 = v10 | 0x2000000000000004;
  return result;
}

uint64_t sub_218EC1EC8(uint64_t a1)
{
  sub_218EC279C(0, &qword_280EE6A20, sub_2186E330C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

double sub_218EC1F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(a5 + 40);
  sub_21870F424(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  v13 = *(a5 + 32);

  v14 = [v13 identifier];
  v15 = sub_219BF5414();
  v17 = v16;

  *(v12 + 32) = v15;
  *(v12 + 40) = v17;
  v18 = objc_allocWithZone(MEMORY[0x277D30EB0]);
  v19 = sub_219BF5904();

  v20 = [v18 initWithContext:v11 channelIDs:v19 issueSet:1];

  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = sub_218846958;
  v21[5] = v10;
  v24[4] = sub_218EC2800;
  v24[5] = v21;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 1107296256;
  v24[2] = sub_218EC221C;
  v24[3] = &block_descriptor_69;
  v22 = _Block_copy(v24);

  [v20 setFetchCompletionHandler_];
  _Block_release(v22);
  sub_219BE1F84();
  sub_219BE1F54();
  sub_219BE1F64();

  return result;
}

void sub_218EC218C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(void))
{
  if (!a1)
  {
    if (!a2)
    {
      __break(1u);
      return;
    }

LABEL_7:
    a3(a2);
    return;
  }

  if (a2)
  {
    goto LABEL_7;
  }

  sub_218EC19E0(a1);
  a5();
}

double sub_218EC221C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2186E330C(0);
    v4 = sub_219BF5214();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t sub_218EC22C0(char **a1, void *a2)
{
  v2 = a2;
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
  v4 = sub_21945CCB8(v3);
  v5 = v2[6];
  ObjectType = swift_getObjectType();
  v7 = swift_unknownObjectRetain();
  v8 = sub_218E97A64(v7, v5, ObjectType);
  swift_unknownObjectRelease();
  v9 = *(v4 + 16);
  if (v9)
  {
    v29 = v2;
    v38 = MEMORY[0x277D84F90];
    sub_218C35FD8(0, v9, 0);
    v10 = v38;
    v11 = v9 - 1;
    v12 = 32;
    for (i = v4; ; v4 = i)
    {
      v13 = *(v4 + v12 + 9);
      *v31 = *(v4 + v12);
      *&v31[9] = v13;
      v14 = *v31;
      sub_218950CAC(v31, v37);
      sub_218950CAC(v31, v37);

      v15 = [v14 coverDate];
      v16 = sub_219BF5414();
      v18 = v17;
      sub_218950D08(v31);

      v38 = v10;
      v20 = *(v10 + 16);
      v19 = *(v10 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_218C35FD8((v19 > 1), v20 + 1, 1);
        v10 = v38;
      }

      v21 = *&v31[16];
      v22 = v31[24];
      *(v10 + 16) = v20 + 1;
      v23 = v10 + 120 * v20;
      v24 = *v31;
      *(v23 + 32) = v8;
      *(v23 + 40) = v24;
      *(v23 + 56) = v21;
      *(v23 + 64) = v22;
      LODWORD(v21) = *&v37[3];
      *(v23 + 65) = *v37;
      *(v23 + 68) = v21;
      *(v23 + 96) = 0;
      *(v23 + 80) = 0;
      *(v23 + 88) = 0;
      *(v23 + 72) = 0;
      LODWORD(v21) = *&v36[3];
      *(v23 + 97) = *v36;
      *(v23 + 100) = v21;
      *(v23 + 104) = 0;
      *(v23 + 112) = 0;
      *(v23 + 120) = v16;
      *(v23 + 128) = v18;
      *(v23 + 136) = 0;
      *(v23 + 144) = 0;
      if (!v11)
      {
        break;
      }

      --v11;
      v12 += 32;
    }

    v2 = v29;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v25 = v2[13];
  v26 = v2[14];
  sub_218DB964C(v25, v26);
  if (qword_27CC08240 != -1)
  {
    swift_once();
  }

  *v31 = v10;
  *&v31[16] = 0xE000000000000000;
  *&v31[24] = v25;
  v32 = v26;
  v33 = 1;
  v34 = qword_27CCD86D0;
  v35 = byte_27CCD86D8;
  sub_21870F424(0, &qword_27CC13080, &type metadata for MagazineGridModel, MEMORY[0x277D6CF30]);
  swift_allocObject();

  v27 = sub_219BE3014();

  return v27;
}

uint64_t sub_218EC25A0()
{
  v1 = [*(*v0 + 32) name];
  v2 = sub_219BF5414();

  return v2;
}

uint64_t sub_218EC2620(uint64_t a1, uint64_t a2)
{
  sub_2186E330C(0);
  sub_219BE3204();
  v2 = sub_219BE2E54();
  v3 = sub_219BE2F84();

  return v3;
}

uint64_t sub_218EC26C4()
{
  v1 = [*(*v0 + 32) identifier];
  v2 = sub_219BF5414();

  return v2;
}

uint64_t sub_218EC2720(uint64_t a1, uint64_t a2)
{
  result = sub_218EC280C(&qword_27CC13078, a2, type metadata accessor for ChannelMagazineGridModelLoader, &unk_219C42F00);
  *(a1 + 8) = result;
  return result;
}

void sub_218EC279C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218EC280C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_218EC2854(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So14FCTagProviding_p_SaySo12NTPBFeedItemCGtSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_218EC2890()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v1 setMinimumLineHeight_];
  sub_21899E550(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0B8C0;
  v3 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v4 = *(v0 + 16);
  v5 = objc_opt_self();
  v6 = *MEMORY[0x277D74418];
  v7 = v3;
  v8 = [v5 systemFontOfSize:13.0 weight:v6];
  v9 = [v4 scaledFontForFont_];

  v10 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x277D740C0];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 secondaryLabelColor];
  v15 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 80) = v14;
  v16 = *MEMORY[0x277D74118];
  *(inited + 104) = v15;
  *(inited + 112) = v16;
  *(inited + 144) = sub_2186C6148(0, &qword_280E8DED8, 0x277D74240);
  *(inited + 120) = v1;
  v17 = v16;
  v18 = sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  return v18;
}

id sub_218EC2AA8(void *a1, uint64_t a2, uint64_t a3)
{
  sub_218EC2890();
  v4 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v5 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_21899E604();
  v6 = sub_219BF5204();

  v7 = [v4 initWithString:v5 attributes:v6];

  [a1 setAttributedText_];

  return [a1 setNumberOfLines_];
}

uint64_t type metadata accessor for AccessoryButton(uint64_t a1)
{
  result = qword_280EDB4F0;
  if (!qword_280EDB4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218EC2BEC(uint64_t a1)
{
  result = sub_219BE5C64();
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

double sub_218EC2CB0()
{
  sub_219BE6204();
  v0 = sub_219BE6214();
  v0();
  v1 = sub_219BE61F4();
  swift_allocObject();
  swift_unknownObjectUnownedInit();

  return result;
}

id sub_218EC2D64(char a1)
{
  if (*(v1 + qword_280EDB508) <= 1u)
  {
    v9 = a1 & 1;
    if (*(v1 + qword_280EDB508))
    {
      _s7NewsUI26ImagesC29iconFollowingShortcutSelected24shouldLayoutForLargeTextSo7UIImageCSb_tFZ_0(v9);
      v16 = *(v1 + qword_280F620E8);
      *(v1 + qword_280F620E8) = v17;
      v18 = v17;

      sub_218EC2F78();
      _s7NewsUI26ImagesC21iconFollowingShortcut24shouldLayoutForLargeTextSo7UIImageCSb_tFZ_0(a1 & 1);
    }

    else
    {
      _s7NewsUI26ImagesC25iconFollowingLikeSelected24shouldLayoutForLargeTextSo7UIImageCSb_tFZ_0(v9);
      v10 = *(v1 + qword_280F620E8);
      *(v1 + qword_280F620E8) = v11;
      v12 = v11;

      sub_218EC2F78();
      _s7NewsUI26ImagesC17iconFollowingLike24shouldLayoutForLargeTextSo7UIImageCSb_tFZ_0(a1 & 1);
    }

    v6 = *(v1 + qword_280F620E0);
    *(v1 + qword_280F620E0) = v7;
  }

  else if (*(v1 + qword_280EDB508) - 2 >= 2)
  {
    if (qword_27CC08310 != -1)
    {
      swift_once();
    }

    v13 = qword_27CC17878;
    v14 = *(v1 + qword_280F620E8);
    *(v1 + qword_280F620E8) = qword_27CC17878;
    v15 = v13;

    sub_218EC2F78();
    v7 = v15;
    v6 = *(v1 + qword_280F620E0);
    *(v1 + qword_280F620E0) = v13;
  }

  else
  {
    if (qword_27CC08300 != -1)
    {
      swift_once();
    }

    v2 = qword_27CC17868;
    v3 = *(v1 + qword_280F620E8);
    *(v1 + qword_280F620E8) = qword_27CC17868;
    v4 = v2;

    sub_218EC2F78();
    if (qword_27CC082F8 != -1)
    {
      swift_once();
    }

    v5 = qword_27CC17860;
    v6 = *(v1 + qword_280F620E0);
    *(v1 + qword_280F620E0) = qword_27CC17860;
    v7 = v5;
  }

  v19 = v7;

  sub_218EC2F78();

  return sub_218EC2F78();
}

id sub_218EC2F78()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  v8 = qword_280F620F0;
  v9 = *(v0 + qword_280F620F0);
  v10 = qword_280F620F8;
  swift_beginAccess();
  (*(v2 + 16))(v7, v0 + v10, v1);
  (*(v2 + 104))(v4, *MEMORY[0x277D6D338], v1);
  v11 = v9;
  LOBYTE(v10) = sub_219BE5C54();
  v12 = *(v2 + 8);
  v12(v4, v1);
  v12(v7, v1);
  v13 = &qword_280F620E8;
  if ((v10 & 1) == 0)
  {
    v13 = &qword_280F620E0;
  }

  [v11 setImage_];

  return [*(v0 + v8) setNeedsDisplay];
}

char *sub_218EC314C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[qword_280EDB510 + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[qword_280EDB508] = 0;
  v10 = qword_280F620F8;
  v11 = *MEMORY[0x277D6D338];
  v12 = sub_219BE5C64();
  (*(*(v12 - 8) + 104))(&v4[v10], v11, v12);
  v13 = qword_280F620F0;
  *&v4[v13] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *&v4[qword_280F620E0] = 0;
  *&v4[qword_280F620E8] = 0;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v20, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = qword_280F620F0;
  v16 = *&v14[qword_280F620F0];
  v17 = v14;
  [v16 setContentMode_];
  [v17 addSubview_];
  v18 = sub_219BE61F4();
  sub_219BEA854();

  return v17;
}

void sub_218EC3328(void *a1)
{
  v3.receiver = a1;
  v3.super_class = swift_getObjectType();
  v1 = v3.receiver;
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  v2 = *&v1[qword_280F620F0];
  [v1 bounds];
  [v2 setFrame_];
}

void sub_218EC33B0()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - v6;
  v8 = objc_opt_self();
  [v8 begin];
  [v8 setDisableActions_];
  v9 = [objc_allocWithZone(MEMORY[0x277CDA000]) init];
  [v9 setDuration_];
  v10 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v11) = 1041865114;
  LODWORD(v12) = 0.25;
  LODWORD(v13) = 1.0;
  v14 = [v10 initWithControlPoints__:v12 :{0.0, v11, v13}];
  [v9 setTimingFunction_];

  [v9 setRemovedOnCompletion_];
  v15 = qword_280F620F8;
  swift_beginAccess();
  (*(v2 + 16))(v7, &v0[v15], v1);
  (*(v2 + 104))(v4, *MEMORY[0x277D6D338], v1);
  LOBYTE(v15) = sub_219BE5C54();
  v16 = *(v2 + 8);
  v16(v4, v1);
  v16(v7, v1);
  if (v15)
  {
    v17 = &qword_280F620E8;
  }

  else
  {
    v18 = [v0 layer];
    v19 = sub_219BF53D4();
    [v18 addAnimation:v9 forKey:v19];

    v17 = &qword_280F620E0;
  }

  [*&v0[qword_280F620F0] setImage_];
  [v8 commit];
}

void sub_218EC36A0(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  type metadata accessor for AccessoryButton(0);
  sub_218EC508C();
  sub_219BEB6A4();
}

void sub_218EC3704(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_219BE5C64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  v15 = MEMORY[0x28223BE20](v13);
  v16 = &v31 - v14;
  v17 = MEMORY[0x277D6D338];
  if (v3[qword_280EDB508] > 1u)
  {
    if (v3[qword_280EDB508] - 2 >= 2)
    {
      [v3 setSelected_];
      v18 = sub_219BE61F4();
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
LABEL_7:
      v23 = v20;
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if (!v3[qword_280EDB508])
  {
LABEL_5:
    (*(v7 + 16))(&v31 - v14, a1, v6, v15);
    v21 = (*(v7 + 88))(v16, v6);
    if (v21 == *v17)
    {
      [v3 setSelected_];
      v18 = sub_219BE61F4();
      type metadata accessor for Localized();
      v22 = swift_getObjCClassFromMetadata();
      v20 = [objc_opt_self() bundleForClass_];
      goto LABEL_7;
    }

    if (v21 == *MEMORY[0x277D6D340])
    {
      goto LABEL_9;
    }

    (*(v7 + 8))(v16, v6);
    goto LABEL_18;
  }

  (*(v7 + 16))(v12, a1, v6, v15);
  v25 = (*(v7 + 88))(v12, v6);
  if (v25 == *v17)
  {
    [v3 setSelected_];
    v18 = sub_219BE61F4();
    type metadata accessor for Localized();
    v26 = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
LABEL_10:
    sub_219BDB5E4();

    v17 = MEMORY[0x277D6D338];

    if ((a2 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_11;
  }

  if (v25 == *MEMORY[0x277D6D340])
  {
LABEL_9:
    [v3 setSelected_];
    v18 = sub_219BE61F4();
    type metadata accessor for Localized();
    v24 = swift_getObjCClassFromMetadata();
    v23 = [objc_opt_self() bundleForClass_];
    goto LABEL_10;
  }

  (*(v7 + 8))(v12, v6);
LABEL_18:
  if ((a2 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_11:
  if (sub_219BE61C4())
  {
    sub_218EC33B0();
    return;
  }

LABEL_19:
  v27 = *&v3[qword_280F620F0];
  (*(v7 + 104))(v9, *v17, v6);
  v28 = v27;
  v29 = sub_219BE5C54();
  (*(v7 + 8))(v9, v6);
  v30 = &qword_280F620E8;
  if ((v29 & 1) == 0)
  {
    v30 = &qword_280F620E0;
  }

  [v28 setImage_];
}

uint64_t sub_218EC3D10()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  if (*(v0 + qword_280EDB508) <= 1u)
  {
    if (*(v0 + qword_280EDB508))
    {
      v13 = qword_280F620F8;
      swift_beginAccess();
      (*(v2 + 16))(v7, v0 + v13, v1);
      (*(v2 + 104))(v4, *MEMORY[0x277D6D338], v1);
      sub_219BE5C54();
      v14 = *(v2 + 8);
      v14(v4, v1);
      v14(v7, v1);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v9 = [objc_opt_self() bundleForClass_];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (*(v0 + qword_280EDB508) - 2 < 2)
  {
LABEL_5:
    v10 = qword_280F620F8;
    swift_beginAccess();
    (*(v2 + 16))(v7, v0 + v10, v1);
    (*(v2 + 104))(v4, *MEMORY[0x277D6D338], v1);
    sub_219BE5C54();
    v11 = *(v2 + 8);
    v11(v4, v1);
    v11(v7, v1);
    type metadata accessor for Localized();
    v12 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    goto LABEL_7;
  }

  type metadata accessor for Localized();
  v8 = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
LABEL_7:
  v16 = sub_219BDB5E4();

  return v16;
}

uint64_t sub_218EC413C()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  if (*(v0 + qword_280EDB508) <= 1u)
  {
    if (*(v0 + qword_280EDB508))
    {
      v13 = qword_280F620F8;
      swift_beginAccess();
      (*(v2 + 16))(v7, v0 + v13, v1);
      (*(v2 + 104))(v4, *MEMORY[0x277D6D338], v1);
      sub_219BE5C54();
      v14 = *(v2 + 8);
      v14(v4, v1);
      v14(v7, v1);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v9 = [objc_opt_self() bundleForClass_];
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (*(v0 + qword_280EDB508) - 2 < 2)
  {
LABEL_5:
    v10 = qword_280F620F8;
    swift_beginAccess();
    (*(v2 + 16))(v7, v0 + v10, v1);
    (*(v2 + 104))(v4, *MEMORY[0x277D6D338], v1);
    sub_219BE5C54();
    v11 = *(v2 + 8);
    v11(v4, v1);
    v11(v7, v1);
    type metadata accessor for Localized();
    v12 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    goto LABEL_7;
  }

  type metadata accessor for Localized();
  v8 = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
LABEL_7:
  v16 = sub_219BDB5E4();

  return v16;
}

id sub_218EC4574(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_219BF53D4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_218EC45F4()
{
  v1 = sub_219BE5C64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  if (*(v0 + qword_280EDB508) <= 1u)
  {
    if (*(v0 + qword_280EDB508))
    {
      v13 = qword_280F620F8;
      swift_beginAccess();
      (*(v2 + 16))(v7, v0 + v13, v1);
      (*(v2 + 104))(v4, *MEMORY[0x277D6D338], v1);
      sub_219BE5C54();
      v14 = *(v2 + 8);
      v14(v4, v1);
      v14(v7, v1);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v12 = [objc_opt_self() bundleForClass_];
      goto LABEL_7;
    }

LABEL_5:
    v9 = qword_280F620F8;
    swift_beginAccess();
    (*(v2 + 16))(v7, v0 + v9, v1);
    (*(v2 + 104))(v4, *MEMORY[0x277D6D338], v1);
    sub_219BE5C54();
    v10 = *(v2 + 8);
    v10(v4, v1);
    v10(v7, v1);
    type metadata accessor for Localized();
    v11 = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
LABEL_7:
    v8 = sub_219BDB5E4();

    return v8;
  }

  if (*(v0 + qword_280EDB508) - 2 < 2)
  {
    goto LABEL_5;
  }

  return 0;
}

BOOL sub_218EC4994(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = a1;
  [v5 bounds];
  v10.origin.x = UIEdgeInsetsInsetRect_0(v6);
  v9.x = a2;
  v9.y = a3;
  v7 = CGRectContainsPoint(v10, v9);

  return v7;
}

void sub_218EC49F0()
{
  sub_218774F78(v0 + qword_280EDB510);
  v1 = qword_280F620F8;
  v2 = sub_219BE5C64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + qword_280F620E8);
}

void sub_218EC4A98(uint64_t a1)
{
  sub_218774F78(a1 + qword_280EDB510);
  v2 = qword_280F620F8;
  v3 = sub_219BE5C64();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);

  v4 = *(a1 + qword_280F620E8);
}

unint64_t sub_218EC4B60()
{
  result = qword_27CC13088;
  if (!qword_27CC13088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13088);
  }

  return result;
}

uint64_t sub_218EC4BB4@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280F620F8;
  swift_beginAccess();
  v4 = sub_219BE5C64();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_218EC4C3C(uint64_t a1)
{
  v3 = qword_280F620F8;
  swift_beginAccess();
  v4 = sub_219BE5C64();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_218EC4D7C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_280EDB510;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_218EC4DE8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_280EDB510;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_218A5FF2C;
}

_BYTE *sub_218EC4E8C(unsigned __int8 a1)
{
  v2 = sub_219BE5C64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AccessoryButton(0);
  v6 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v7 = qword_280EDB508;
  v8 = v6[qword_280EDB508];
  v6[qword_280EDB508] = a1;
  sub_219BE61D4();
  if (v8 != v6[v7] || !*&v6[qword_280F620E8] || !*&v6[qword_280F620E0])
  {
    sub_218EC2D64(0);
  }

  (*(v3 + 104))(v5, *MEMORY[0x277D6D340], v2);
  sub_218EC508C();
  sub_219BEB694();
  (*(v3 + 8))(v5, v2);
  v9 = v6;
  v10 = sub_219BE61F4();

  swift_allocObject();
  swift_unknownObjectUnownedInit();

  return v9;
}

unint64_t sub_218EC508C()
{
  result = qword_280EDB500;
  if (!qword_280EDB500)
  {
    type metadata accessor for AccessoryButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EDB500);
  }

  return result;
}

void sub_218EC5100()
{
  *(v0 + qword_280EDB510 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_280EDB508) = 0;
  v1 = qword_280F620F8;
  v2 = *MEMORY[0x277D6D338];
  v3 = sub_219BE5C64();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = qword_280F620F0;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];
  *(v0 + qword_280F620E0) = 0;
  *(v0 + qword_280F620E8) = 0;
  sub_219BF7514();
  __break(1u);
}

id sub_218EC523C@<X0>(void *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = sub_219BF53D4();
  v7 = FCIntegerRepresentationOfBundleShortVersionString();

  sub_219BDC8D4();
  sub_219BDC8B4();
  sub_219BDC4A4();
  sub_219BDC8A4();

  sub_219BDC8B4();
  sub_219BDC494();
  sub_219BDC8A4();

  if (v12)
  {
    goto LABEL_2;
  }

  if (v13)
  {
    goto LABEL_8;
  }

  v9 = [a1 onboardingVersionNumber];
  if (!v9)
  {
    if (v7 < 1)
    {
      goto LABEL_2;
    }

LABEL_8:
    result = [a2 authorized];
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v9 integerValue];

  if (v11 < v7)
  {
    goto LABEL_8;
  }

LABEL_2:
  result = 0;
LABEL_9:
  *a3 = result;
  return result;
}

uint64_t OnboardingConfigurationFactory.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t OnboardingConfigurationFactory.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_218EC544C(uint64_t a1, uint64_t *a2)
{
  sub_218709A98(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13[-v3];
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219BDB914();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_218838478(v4);
LABEL_5:
    sub_219BDC494();
    v13[15] = 1;
    sub_21878A648(&qword_27CC13090, v12, type metadata accessor for OnboardingConfigurationFactory, &protocol conformance descriptor for OnboardingConfigurationFactory);
    sub_219BDCA54();

    return;
  }

  (*(v6 + 32))(v8, v4, v5);
  v9 = [objc_opt_self() defaultWorkspace];
  if (v9)
  {
    v10 = v9;
    v11 = sub_219BDB854();
    [v10 openSensitiveURL:v11 withOptions:0];

    (*(v6 + 8))(v8, v5);
    goto LABEL_5;
  }

  __break(1u);
}

double sub_218EC56E0(uint64_t a1, uint64_t *a2)
{
  sub_219BDC494();
  sub_21878A648(&qword_27CC13090, v2, type metadata accessor for OnboardingConfigurationFactory, &protocol conformance descriptor for OnboardingConfigurationFactory);
  sub_219BDCA54();

  return result;
}

uint64_t sub_218EC57A8()
{
  v1 = OBJC_IVAR____TtC7NewsUI234SponsoredBannerTagFeedGroupEmitter_config;
  sub_218EC59D0(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_218EC80BC(v0 + OBJC_IVAR____TtC7NewsUI234SponsoredBannerTagFeedGroupEmitter_knobs, type metadata accessor for SponsoredBannerTagFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234SponsoredBannerTagFeedGroupEmitter_formatService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234SponsoredBannerTagFeedGroupEmitter_sponsoredAdService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SponsoredBannerTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280E9EDD8;
  if (!qword_280E9EDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218EC58F0(uint64_t a1)
{
  sub_218EC59D0(319);
  if (v1 <= 0x3F)
  {
    sub_2189AD5C8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_218EC59D0(uint64_t a1)
{
  if (!qword_280E92110)
  {
    type metadata accessor for SponsoredBannerTagFeedGroupConfigData(255);
    sub_218EC5A9C(&unk_280E98D60, type metadata accessor for SponsoredBannerTagFeedGroupConfigData, &unk_219C78D00);
    sub_218EC5A9C(&qword_280E98D70, type metadata accessor for SponsoredBannerTagFeedGroupConfigData, &unk_219C78CD8);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92110);
    }
  }
}

uint64_t sub_218EC5A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218EC5AE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218EC5B90(a1, a2);
}

uint64_t sub_218EC5B90(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_219BF1904();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v5 = sub_219BDBD64();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v6 = sub_219BEC004();
  v3[12] = v6;
  v3[13] = *(v6 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218EC5D0C, 0, 0);
}

uint64_t sub_218EC5D0C(__n128 a1)
{
  sub_219BEF0B4();
  v2 = *(v1[2] + 16);

  v3 = *(v2 + 32);

  v4 = sub_219BF6394();
  v1[15] = v4;

  v5 = [v4 adTargetingKeywords];
  if (v5)
  {
    v6 = v5;
    v7 = sub_219BF5924();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v1[10];
  v9 = v1[11];
  v10 = v1[9];
  v11 = (v1[5] + OBJC_IVAR____TtC7NewsUI234SponsoredBannerTagFeedGroupEmitter_sponsoredAdService);
  v12 = v11[3];
  v20 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_219BDBD54();
  v13 = sub_219BDBD44();
  v15 = v14;
  v1[16] = v14;
  (*(v8 + 8))(v9, v10);
  v16 = swift_allocObject();
  v1[17] = v16;
  *(v16 + 16) = v4;
  *(v16 + 24) = v7;
  swift_unknownObjectRetain();
  v17 = swift_task_alloc();
  v1[18] = v17;
  *v17 = v1;
  v17[1] = sub_218EC5F04;
  v18 = v1[14];

  return MEMORY[0x282190FB8](v18, v13, v15, sub_218EC70CC, v16, v12, v20);
}

uint64_t sub_218EC5F04()
{
  v2 = *v1;
  v2[19] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218EC62AC, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    v2[20] = v3;
    *v3 = v2;
    v3[1] = sub_218EC608C;
    v4 = v2[14];
    v5 = v2[8];
    v6 = v2[4];

    return sub_218EC70D4(v5, v6, v4);
  }
}

uint64_t sub_218EC608C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_218EC634C;
  }

  else
  {
    v2 = sub_218EC61A0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218EC61A0()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  sub_218EC7C40(v5, v0[4]);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v5, v6);
  (*(v3 + 8))(v1, v2);
  sub_218A59C84(0);
  swift_storeEnumTagMultiPayload();

  v7 = v0[1];

  return v7();
}

uint64_t sub_218EC62AC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218EC634C()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_218EC63F4()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI234SponsoredBannerTagFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_218EC6434@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  sub_218EC59D0(0);
  v5 = v4;
  v6 = swift_allocBox();
  result = (*(*(v5 - 8) + 16))(v7, v3 + OBJC_IVAR____TtC7NewsUI234SponsoredBannerTagFeedGroupEmitter_config, v5);
  *a1 = v6 | 0xA000000000000002;
  return result;
}

uint64_t sub_218EC64C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI234SponsoredBannerTagFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for SponsoredBannerTagFeedGroupKnobs(0);
  a1[4] = sub_218EC5A9C(&unk_280EA4AE0, type metadata accessor for SponsoredBannerTagFeedGroupKnobs, &unk_219C8C8DC);
  a1[5] = sub_218EC5A9C(&unk_27CC13098, type metadata accessor for SponsoredBannerTagFeedGroupKnobs, &unk_219C8C8B4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);

  return sub_218EC7F88(v3 + v4, boxed_opaque_existential_1);
}

uint64_t sub_218EC6584@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D32750];
  v3 = sub_219BEF874();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_218EC661C(uint64_t a1)
{
  v2 = type metadata accessor for SponsoredBannerTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EC7F88(v1 + OBJC_IVAR____TtC7NewsUI234SponsoredBannerTagFeedGroupEmitter_knobs, v4);
  v22 = 9;
  sub_2189AD5C8(0);
  v6 = v5;
  v20 = sub_219BEE964();
  (*(*(v6 - 8) + 8))(v4, v6);
  sub_2186E4850(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v8 = v7;
  v9 = *(v7 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = 2 * v10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;
  v13 = (v12 + v11);
  sub_218EC7FEC(0, &qword_280E91240, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v13 = sub_219BEFB94();
  v14 = *MEMORY[0x277D32308];
  v15 = *(v9 + 104);
  v15(v12 + v11, v14, v8);
  swift_allocObject();
  *(v13 + v10) = sub_219BEFB94();
  v15(v12 + v11 + v10, v14, v8);
  swift_allocObject();
  v16 = sub_219BEFB94();
  v17 = v19;
  *(v13 + v19) = v16;
  v15(v12 + v11 + v17, v14, v8);
  v21 = v20;
  sub_2191EDA0C(v12);
  return v21;
}

uint64_t sub_218EC699C@<X0>(uint64_t *a2@<X8>)
{
  sub_2186E4850(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218EC59D0(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218EC80BC(inited + 32, sub_2188317B0);
  sub_218EC8088(0);
  a2[3] = v6;
  a2[4] = sub_218EC5A9C(&unk_280EE76A8, sub_218EC8088, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_218EC6B3C(uint64_t a1)
{
  sub_218EC5A9C(&qword_280E9EDF8, type metadata accessor for SponsoredBannerTagFeedGroupEmitter, &unk_219C43310);

  return sub_219BE2324();
}

uint64_t sub_218EC6D10(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v23 = a2;
  v4 = sub_219BEC3A4();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v19 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BEBFD4();
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v18 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEBEB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BEBED4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v8 + 104))(v10, *MEMORY[0x277D2D450], v7);
  sub_219BEBEC4();
  sub_218EC5A9C(&unk_280EE3430, MEMORY[0x277D2D460], MEMORY[0x277D2D458]);
  sub_219BEC144();
  (*(v12 + 8))(v14, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v20 + 104))(v19, *MEMORY[0x277D2D640], v21);
  swift_unknownObjectRetain();

  v15 = v18;
  sub_219BEBFB4();
  sub_218EC5A9C(&qword_280EE3400, MEMORY[0x277D2D4C8], MEMORY[0x277D2D4C0]);
  v16 = v22;
  sub_219BEC144();
  return (*(v24 + 8))(v15, v16);
}

uint64_t sub_218EC70D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186E4850(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[9] = swift_task_alloc();
  sub_2186E4850(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[10] = swift_task_alloc();
  type metadata accessor for SponsoredBannerTagFeedGroupKnobs(0);
  v4[11] = swift_task_alloc();
  sub_2186E4850(0, &qword_280E91A70, sub_2189AD5C8, v5);
  v4[12] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();
  sub_2186E4850(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  v4[16] = swift_task_alloc();
  v7 = sub_219BF2034();
  v4[17] = v7;
  v4[18] = *(v7 - 8);
  v4[19] = swift_task_alloc();
  v4[20] = type metadata accessor for SponsoredBannerTagFeedGroupConfigData(0);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218EC7394, 0, 0);
}

uint64_t sub_218EC7394()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 128);
  v24 = *(v0 + 88);
  v26 = *(v0 + 80);
  v27 = *(v0 + 72);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v25 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC7NewsUI234SponsoredBannerTagFeedGroupEmitter_formatService), *(v5 + OBJC_IVAR____TtC7NewsUI234SponsoredBannerTagFeedGroupEmitter_formatService + 24));
  sub_218EC59D0(0);
  v29 = v2;
  sub_219BEDD14();
  v28 = *(v1 + 20);
  v6 = sub_219BEC004();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v3, v4, v6);
  (*(v7 + 56))(v3, 0, 1, v6);
  v8 = MEMORY[0x277D84F90];
  sub_219A95188(MEMORY[0x277D84F90]);
  sub_219A95188(v8);
  sub_219A951A0(v8);
  sub_219A951B8(v8);
  sub_219A952CC(v8);
  sub_219A952E4(v8);
  sub_219A953F8(v8);
  sub_219BF2024();
  sub_218EC7F88(v5 + OBJC_IVAR____TtC7NewsUI234SponsoredBannerTagFeedGroupEmitter_knobs, v24);
  sub_2189AD5C8(0);
  v10 = v9;
  v11 = *(v9 - 8);
  (*(v11 + 32))(v25, v24, v9);
  (*(v11 + 56))(v25, 0, 1, v10);
  sub_219BEF0B4();
  v12 = *(*(v0 + 16) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v13 = sub_219BF35D4();
  (*(*(v13 - 8) + 56))(v26, 1, 1, v13);
  *(v0 + 200) = 9;
  sub_218EC7FEC(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v14 = *(*(v0 + 32) + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v15 = sub_219BF2774();
  (*(*(v15 - 8) + 56))(v27, 1, 1, v15);
  v16 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v16 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  *(v0 + 176) = sub_219BF2194();
  v18 = *(v0 + 144);
  v17 = *(v0 + 152);
  v19 = *(v0 + 136);
  (*(*(v0 + 112) + 8))(*(v0 + 120), *(v0 + 104));
  (*(v18 + 8))(v17, v19);
  v20 = sub_219BF1934();
  (*(*(v20 - 8) + 8))(v29 + v28, v20);
  v21 = swift_task_alloc();
  *(v0 + 184) = v21;
  *v21 = v0;
  v21[1] = sub_218EC79C0;
  v22 = *(v0 + 40);

  return MEMORY[0x2821D23D8](v22);
}

uint64_t sub_218EC79C0()
{
  v2 = *v1;
  *(v2 + 192) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_218EC7B74, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_218EC7B74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218EC7C40(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v22[1] = a2;
  sub_2186E4850(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  v9 = type metadata accessor for SponsoredBannerTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BEF554();
  MEMORY[0x28223BE20](v12 - 8);
  MEMORY[0x28223BE20](v13);
  v14 = sub_219BF1904();
  v15 = MEMORY[0x28223BE20](v14);
  (*(v17 + 16))(v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v15);
  sub_218EC59D0(0);
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_218EC7F88(v4 + OBJC_IVAR____TtC7NewsUI234SponsoredBannerTagFeedGroupEmitter_knobs, v11);
  sub_2189AD5C8(0);
  v19 = v18;
  sub_219BEE9B4();
  (*(*(v19 - 8) + 8))(v11, v19);
  v20 = sub_219BEE5D4();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  sub_219BED864();
  type metadata accessor for TagFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}