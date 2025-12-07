uint64_t sub_218FFE8D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedRecipesTagFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218FFE93C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig(255);
    v7 = sub_218FFD334(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_218FFE9D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedRecipesTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218FFEA70(void *a1)
{
  sub_218FFF4E0(0, &qword_27CC14D10, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FFF3CC();
  sub_219BF7B44();
  v9[15] = 0;
  sub_219BED8D4();
  sub_218FFF544(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for SavedRecipesTagFeedGroup(0);
    v9[14] = 1;
    sub_219BF7824();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_218FFEC38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v21 = sub_219BED8D4();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FFF4E0(0, &qword_27CC14D00, MEMORY[0x277D844C8]);
  v22 = v6;
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for SavedRecipesTagFeedGroup(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FFF3CC();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v11;
  v12 = v19;
  v24 = 0;
  sub_218FFF544(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
  v13 = v21;
  sub_219BF7734();
  v14 = v17;
  (*(v12 + 32))(v17, v5, v13);
  v23 = 1;
  v15 = sub_219BF7724();
  (*(v20 + 8))(v8, v22);
  *(v14 + *(v9 + 20)) = v15;
  sub_218FFF420(v14, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_218FFF484(v14);
}

uint64_t sub_218FFEF84()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x724774616D726F66;
  }
}

void sub_218FFEFCC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2)
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

uint64_t sub_218FFF0B4(uint64_t a1)
{
  v2 = sub_218FFF3CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FFF0F0(uint64_t a1)
{
  v2 = sub_218FFF3CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218FFF25C(uint64_t a1)
{
  result = sub_218FFF544(&qword_27CC14CE0, type metadata accessor for SavedRecipesTagFeedGroup, &unk_219C52440);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218FFF2B4(void *a1)
{
  a1[1] = sub_218FFF544(&qword_27CC14CE8, type metadata accessor for SavedRecipesTagFeedGroup, &unk_219C5236C);
  a1[2] = sub_218FFF544(&qword_27CC14CF0, type metadata accessor for SavedRecipesTagFeedGroup, &unk_219C52418);
  result = sub_218FFF544(&qword_27CC14CF8, type metadata accessor for SavedRecipesTagFeedGroup, &unk_219C523F0);
  a1[3] = result;
  return result;
}

uint64_t sub_218FFF360(uint64_t a1)
{
  v2 = sub_218FFF544(&qword_27CC14CE8, type metadata accessor for SavedRecipesTagFeedGroup, &unk_219C5236C);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218FFF3CC()
{
  result = qword_27CC14D08;
  if (!qword_27CC14D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14D08);
  }

  return result;
}

uint64_t sub_218FFF420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedRecipesTagFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218FFF484(uint64_t a1)
{
  v2 = type metadata accessor for SavedRecipesTagFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218FFF4E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218FFF3CC();
    v7 = a3(a1, &type metadata for SavedRecipesTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218FFF544(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218FFF5A0()
{
  result = qword_27CC14D18;
  if (!qword_27CC14D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14D18);
  }

  return result;
}

unint64_t sub_218FFF5F8()
{
  result = qword_27CC14D20;
  if (!qword_27CC14D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14D20);
  }

  return result;
}

unint64_t sub_218FFF650()
{
  result = qword_27CC14D28;
  if (!qword_27CC14D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14D28);
  }

  return result;
}

uint64_t type metadata accessor for SavedRecipesTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E9F3A8;
  if (!qword_280E9F3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218FFF718@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218FFFC48(0, &qword_280E8C920, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FFFBF4();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 43;
    v13 = type metadata accessor for SavedRecipesTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218FFF980(void *a1)
{
  v3 = v1;
  sub_218FFFC48(0, &qword_27CC14D30, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218FFFBF4();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SavedRecipesTagFeedGroupConfigData(0);
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218FFFB4C(uint64_t a1)
{
  v2 = sub_218FFFBF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218FFFB88(uint64_t a1)
{
  v2 = sub_218FFFBF4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_218FFFBF4()
{
  result = qword_280E9F3D8[0];
  if (!qword_280E9F3D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E9F3D8);
  }

  return result;
}

void sub_218FFFC48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218FFFBF4();
    v7 = a3(a1, &type metadata for SavedRecipesTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218FFFCC0()
{
  result = qword_27CC14D38;
  if (!qword_27CC14D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14D38);
  }

  return result;
}

unint64_t sub_218FFFD18()
{
  result = qword_280E9F3C8;
  if (!qword_280E9F3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9F3C8);
  }

  return result;
}

unint64_t sub_218FFFD70()
{
  result = qword_280E9F3D0;
  if (!qword_280E9F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9F3D0);
  }

  return result;
}

uint64_t type metadata accessor for SavedRecipesTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EAF2B0;
  if (!qword_280EAF2B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218FFFE38(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    sub_2186F9548();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_218FFFEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v8);
  v14 = *(v11 + 48);
  if (v14(v8, 1, v10) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877C750(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    sub_219BEE974();
    if (v14(v8, 1, v10) != 1)
    {
      sub_2189ADEC8(v8);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v8, v10);
  }

  (*(v11 + 32))(a3, v13, v10);
  if (!a2)
  {
    v16[1] = 12;
    sub_2186F9548();
    swift_allocObject();
    a2 = sub_219BEF534();
  }

  sub_2189ADEC8(a1);
  result = type metadata accessor for SavedRecipesTagFeedGroupKnobs(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_219000148@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = a2;
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219000774(0, &qword_280E8CB90, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219000720();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8(0);
    v15 = 0;
    sub_21877C750(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
    sub_219BF7674();
    sub_2186F9548();
    v14 = 1;
    sub_21877C750(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
    sub_219BF7674();
    sub_218FFFEBC(v6, v13[1], v13[0]);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2190003AC(void *a1)
{
  v3 = v1;
  sub_219000774(0, &qword_27CC14D40, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219000720();
  sub_219BF7B44();
  v13 = 0;
  sub_2189AD5C8(0);
  sub_21877C750(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for SavedRecipesTagFeedGroupKnobs(0) + 20));
    v11[15] = 1;
    sub_2186F9548();
    sub_21877C750(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2190005C4(uint64_t a1)
{
  v2 = sub_219000720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219000600(uint64_t a1)
{
  v2 = sub_219000720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21900066C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TagFeedServiceConfig(0);
  sub_21877C750(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  sub_2186F9548();
  return sub_219BEF504() & 1;
}

unint64_t sub_219000720()
{
  result = qword_280EAF2D8[0];
  if (!qword_280EAF2D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAF2D8);
  }

  return result;
}

void sub_219000774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219000720();
    v7 = a3(a1, &type metadata for SavedRecipesTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2190007EC()
{
  result = qword_27CC14D48;
  if (!qword_27CC14D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14D48);
  }

  return result;
}

unint64_t sub_219000844()
{
  result = qword_280EAF2C8;
  if (!qword_280EAF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAF2C8);
  }

  return result;
}

unint64_t sub_21900089C()
{
  result = qword_280EAF2D0;
  if (!qword_280EAF2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAF2D0);
  }

  return result;
}

unint64_t sub_219000904(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0xD00000000000001BLL;
    if (a1 != 2)
    {
      v4 = 0xD000000000000017;
    }

    v5 = 0xD000000000000021;
    if (!a1)
    {
      v5 = 0xD00000000000001DLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0xD000000000000020;
    if (a1 != 7)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 == 4)
    {
      v2 = 0xD000000000000013;
    }

    else
    {
      v2 = 0xD000000000000025;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_219000A10()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_219477100(v3, v1);
  return sub_219BF7AE4();
}

uint64_t sub_219000A60(uint64_t a1)
{
  v2 = *v1;
  sub_219BF7AA4();
  sub_219477100(v4, v2);
  return sub_219BF7AE4();
}

unint64_t sub_219000AA4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_219001FEC(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_219000AD4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_219000904(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_219000B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219001FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219000B44(uint64_t a1)
{
  v2 = sub_2190011D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219000B80(uint64_t a1)
{
  v2 = sub_2190011D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TopicTodayFeedGroupClusteringKnobOverrides.init(hardPaywallBundleArticleLimit:autoFavoritesTopicClusteringKnobs:generalTopicClusteringKnobs:orphanedClusteringKnobs:clusterOrderingMode:considerRejectedHeadlinesInMoreForYou:minTopicGroupRatio:keepOverflowHeadlinesInInventory:customTopicClusteringKnobs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  v18 = type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides(0);
  sub_219000CD0(a2, a9 + v18[5]);
  sub_219000CD0(a3, a9 + v18[6]);
  result = sub_219000CD0(a4, a9 + v18[7]);
  *(a9 + v18[8]) = a5;
  *(a9 + v18[9]) = a6;
  *(a9 + v18[10]) = a7;
  *(a9 + v18[11]) = a8;
  *(a9 + v18[12]) = a10;
  return result;
}

uint64_t type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides(uint64_t a1)
{
  result = qword_280E94A20;
  if (!qword_280E94A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219000CD0(uint64_t a1, uint64_t a2)
{
  sub_219001E80(0, &qword_280E90FF0, MEMORY[0x277D32BE0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TopicTodayFeedGroupClusteringKnobOverrides.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_21900117C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190011D8();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2186F9548();
    v20 = 0;
    LOBYTE(v28) = 0;
    v10 = MEMORY[0x277D32620];
    sub_21900122C(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
    sub_219BF7674();
    v22 = v29;
    sub_219BF0204();
    v21 = v7;
    LOBYTE(v28) = 1;
    v11 = type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides(0);
    sub_21900122C(&qword_280E90FF8, MEMORY[0x277D32BE0], MEMORY[0x277D32BF0]);
    sub_219BF7674();
    LOBYTE(v28) = 2;
    sub_219BF7674();
    LOBYTE(v28) = 3;
    sub_219BF7674();
    sub_218D1D174(0);
    LOBYTE(v27) = 4;
    sub_21900122C(&qword_280E91468, sub_218D1D174, v10);
    sub_219BF7674();
    v19 = v28;
    sub_2186F95C4();
    LOBYTE(v26) = 5;
    sub_21900122C(&qword_280E913F8, sub_2186F95C4, v10);
    sub_219BF7674();
    v18 = v27;
    sub_2186ECA28();
    LOBYTE(v25) = 6;
    sub_21900122C(&qword_280E913D8, sub_2186ECA28, v10);
    sub_219BF7674();
    v12 = v26;
    LOBYTE(v24) = 7;
    sub_219BF7674();
    v13 = v25;
    sub_218AE5F30(0);
    v23 = 8;
    sub_218AE67D8();
    sub_219BF7674();
    (*(v21 + 8))(v9, v6);
    v14 = v24;
    *a2 = v22;
    v15 = v18;
    *(a2 + v11[8]) = v19;
    *(a2 + v11[9]) = v15;
    *(a2 + v11[10]) = v12;
    *(a2 + v11[11]) = v13;
    *(a2 + v11[12]) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_21900117C(uint64_t a1)
{
  if (!qword_280E8C6F0)
  {
    sub_2190011D8();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8C6F0);
    }
  }
}

unint64_t sub_2190011D8()
{
  result = qword_280E94A48;
  if (!qword_280E94A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94A48);
  }

  return result;
}

uint64_t sub_21900122C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s7NewsUI242TopicTodayFeedGroupClusteringKnobOverridesV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_219BF0204();
  v85 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v76[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219001E80(0, &qword_280E90FF0, MEMORY[0x277D32BE0]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v76[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v82 = &v76[-v11];
  MEMORY[0x28223BE20](v12);
  v14 = &v76[-v13];
  sub_218AE6D1C(0);
  v16 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v76[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v83 = &v76[-v20];
  MEMORY[0x28223BE20](v21);
  v23 = &v76[-v22];
  v24 = *a1;
  v84 = a2;
  v25 = *a2;
  if (v24)
  {
    v87 = v24;
    if (!v25)
    {
      return 0;
    }

    v81 = v6;
    v86 = v25;
    sub_2186F9548();
    sub_21900122C(&qword_27CC14D60, sub_2186F9548, MEMORY[0x277D32618]);

    v26 = sub_219BF53A4();

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v81 = v6;
    if (v25)
    {
      return 0;
    }
  }

  v80 = type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides(0);
  v27 = v80[5];
  v28 = *(v16 + 48);
  sub_218AE6D9C(a1 + v27, v23);
  sub_218AE6D9C(v84 + v27, &v23[v28]);
  v29 = *(v85 + 48);
  if ((v29)(v23, 1, v4) == 1)
  {
    if ((v29)(&v23[v28], 1, v4) != 1)
    {
      goto LABEL_17;
    }

    sub_218AE6E78(v23);
  }

  else
  {
    sub_218AE6D9C(v23, v14);
    if ((v29)(&v23[v28], 1, v4) == 1)
    {
      (*(v85 + 8))(v14, v4);
      goto LABEL_17;
    }

    v30 = *(v85 + 32);
    v79 = v9;
    v31 = v81;
    v30(v81, &v23[v28], v4);
    sub_21900122C(&qword_27CC0DD78, MEMORY[0x277D32BE0], MEMORY[0x277D32BE8]);
    v77 = sub_219BF53A4();
    v78 = a1;
    v32 = v14;
    v33 = *(v85 + 8);
    v34 = v31;
    v9 = v79;
    v33(v34, v4);
    v33(v32, v4);
    a1 = v78;
    sub_218AE6E78(v23);
    if ((v77 & 1) == 0)
    {
      return 0;
    }
  }

  v35 = v80[6];
  v36 = *(v16 + 48);
  v23 = v83;
  sub_218AE6D9C(a1 + v35, v83);
  sub_218AE6D9C(v84 + v35, &v23[v36]);
  if ((v29)(v23, 1, v4) == 1)
  {
    if ((v29)(&v23[v36], 1, v4) == 1)
    {
      v78 = v29;
      sub_218AE6E78(v23);
      goto LABEL_22;
    }

LABEL_17:
    v38 = v23;
LABEL_18:
    sub_218AE6E1C(v38);
    return 0;
  }

  v37 = v82;
  sub_218AE6D9C(v23, v82);
  v78 = v29;
  if ((v29)(&v23[v36], 1, v4) == 1)
  {
    (*(v85 + 8))(v37, v4);
    goto LABEL_17;
  }

  v40 = v23;
  v41 = v85;
  v42 = *(v85 + 32);
  v43 = &v40[v36];
  v44 = v40;
  v79 = v9;
  v45 = v81;
  v42(v81, v43, v4);
  sub_21900122C(&qword_27CC0DD78, MEMORY[0x277D32BE0], MEMORY[0x277D32BE8]);
  v77 = sub_219BF53A4();
  v46 = *(v41 + 8);
  v47 = v45;
  v9 = v79;
  v46(v47, v4);
  v46(v37, v4);
  sub_218AE6E78(v44);
  if ((v77 & 1) == 0)
  {
    return 0;
  }

LABEL_22:
  v48 = v80[7];
  v49 = *(v16 + 48);
  sub_218AE6D9C(a1 + v48, v18);
  sub_218AE6D9C(v84 + v48, &v18[v49]);
  v50 = v78;
  if ((v78)(v18, 1, v4) != 1)
  {
    sub_218AE6D9C(v18, v9);
    if (v50(&v18[v49], 1, v4) != 1)
    {
      v51 = v85;
      v52 = v81;
      (*(v85 + 32))(v81, &v18[v49], v4);
      sub_21900122C(&qword_27CC0DD78, MEMORY[0x277D32BE0], MEMORY[0x277D32BE8]);
      v53 = sub_219BF53A4();
      v54 = *(v51 + 8);
      v54(v52, v4);
      v54(v9, v4);
      sub_218AE6E78(v18);
      if ((v53 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_29;
    }

    (*(v85 + 8))(v9, v4);
    goto LABEL_27;
  }

  if (v50(&v18[v49], 1, v4) != 1)
  {
LABEL_27:
    v38 = v18;
    goto LABEL_18;
  }

  sub_218AE6E78(v18);
LABEL_29:
  v55 = v80[8];
  v56 = *(a1 + v55);
  v57 = *(v84 + v55);
  if (v56)
  {
    v87 = v56;
    if (!v57)
    {
      return 0;
    }

    v86 = v57;
    sub_218D1D174(0);
    sub_21900122C(&qword_27CC14D58, sub_218D1D174, MEMORY[0x277D32618]);

    v58 = sub_219BF53A4();

    if ((v58 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v57)
  {
    return 0;
  }

  v59 = v80[9];
  v60 = *(a1 + v59);
  v61 = *(v84 + v59);
  if (v60)
  {
    v87 = v60;
    if (!v61)
    {
      return 0;
    }

    v86 = v61;
    sub_2186F95C4();
    sub_21900122C(&qword_27CC0DD68, sub_2186F95C4, MEMORY[0x277D32618]);

    v62 = sub_219BF53A4();

    if ((v62 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v61)
  {
    return 0;
  }

  v63 = v80[10];
  v64 = *(a1 + v63);
  v65 = *(v84 + v63);
  if (v64)
  {
    v87 = v64;
    if (!v65)
    {
      return 0;
    }

    v86 = v65;
    sub_2186ECA28();
    sub_21900122C(&qword_27CC0DD70, sub_2186ECA28, MEMORY[0x277D32618]);

    v66 = sub_219BF53A4();

    if ((v66 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v65)
  {
    return 0;
  }

  v67 = v80[11];
  v68 = *(a1 + v67);
  v69 = *(v84 + v67);
  if (v68)
  {
    v87 = v68;
    if (!v69)
    {
      return 0;
    }

    v86 = v69;
    sub_2186F95C4();
    sub_21900122C(&qword_27CC0DD68, sub_2186F95C4, MEMORY[0x277D32618]);

    v70 = sub_219BF53A4();

    if ((v70 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v69)
  {
    return 0;
  }

  v71 = v80[12];
  v72 = *(a1 + v71);
  v73 = *(v84 + v71);
  if (v72)
  {
    if (v73)
    {

      sub_219319EFC(v72, v73);
      v75 = v74;

      if (v75)
      {
        return 1;
      }
    }
  }

  else if (!v73)
  {
    return 1;
  }

  return 0;
}

void sub_219001CE8(uint64_t a1)
{
  sub_219001E80(319, &qword_280E913A8, sub_2186F9548);
  if (v1 <= 0x3F)
  {
    sub_219001E80(319, &qword_280E90FF0, MEMORY[0x277D32BE0]);
    if (v2 <= 0x3F)
    {
      sub_219001E80(319, &qword_280E91458, sub_218D1D174);
      if (v3 <= 0x3F)
      {
        sub_219001E80(319, &qword_280E913E8, sub_2186F95C4);
        if (v4 <= 0x3F)
        {
          sub_219001E80(319, &qword_280E913C8, sub_2186ECA28);
          if (v5 <= 0x3F)
          {
            sub_219001E80(319, &qword_280E8FAF0, sub_218AE5F30);
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

void sub_219001E80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_219001EE8()
{
  result = qword_27CC14D50;
  if (!qword_27CC14D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14D50);
  }

  return result;
}

unint64_t sub_219001F40()
{
  result = qword_280E94A38;
  if (!qword_280E94A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94A38);
  }

  return result;
}

unint64_t sub_219001F98()
{
  result = qword_280E94A40;
  if (!qword_280E94A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E94A40);
  }

  return result;
}

unint64_t sub_219001FEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219002038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_219BEA9D4();
    sub_219BF0F34();
    sub_219BE6FD4();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2190020CC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_21883F194(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F53C(0, &unk_280EDC8D0, sub_218D58B4C);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for AudioFeedTrack(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BDE124();
  sub_219BE20E4();

  sub_218D5862C(v9);
  sub_2187363A8(v6, sub_21883F194);
  sub_218D58B4C(0);
  v14 = v13;
  if ((*(*(v13 - 8) + 48))(v9, 1, v13) == 1)
  {
    sub_2190025E8(v9, &unk_280EDC8D0, sub_218D58B4C);
LABEL_3:
    __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
    sub_219BF0F14();
    sub_219BDECC4();
    return swift_unknownObjectRelease();
  }

  v16 = *&v9[*(v14 + 48)];
  sub_218C162E4(v9, v12);
  v17 = [*v12 articleID];
  v18 = sub_219BF5414();
  v20 = v19;

  v21 = [sub_219BF0F14() articleID];
  swift_unknownObjectRelease();
  v22 = sub_219BF5414();
  v24 = v23;

  if (v18 == v22 && v20 == v24)
  {

    sub_2187363A8(v12, type metadata accessor for AudioFeedTrack);
  }

  else
  {
    v26 = sub_219BF78F4();

    sub_2187363A8(v12, type metadata accessor for AudioFeedTrack);
    if ((v26 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  *a1 = v16;
  v27 = *MEMORY[0x277D32460];
  v28 = sub_219BEEE54();
  return (*(*(v28 - 8) + 104))(a1, v27, v28);
}

BOOL sub_2190024B0()
{
  v0 = MEMORY[0x277D32010];
  sub_21873F53C(0, &qword_280E91C10, MEMORY[0x277D32010]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  sub_219BF0E24();
  v4 = sub_219BEE404();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_2190025E8(v3, &qword_280E91C10, v0);
  return v5;
}

uint64_t sub_2190025A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2190025E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21873F53C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_219002644(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_iconImageView;
  *&v4[v10] = [objc_allocWithZone(sub_219BEB3F4()) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_backgroundView;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v12 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_nameLabel;
  *&v4[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v13 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_separatorView;
  *&v4[v13] = [objc_allocWithZone(sub_219BE6104()) initWithFrame_];
  v14 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_token;
  *&v4[v14] = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v21.receiver = v4;
  v21.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v21, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_iconImageView;
  v17 = *&v15[OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_iconImageView];
  v18 = v15;
  [v17 setAccessibilityIgnoresInvertColors_];
  [v18 addSubview_];
  [v18 addSubview_];
  v19 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_nameLabel;
  [v18 addSubview_];
  [v18 addSubview_];
  [*&v18[v19] setNumberOfLines_];

  return v18;
}

void sub_21900292C()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_token);
  *(v1 + OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_token) = v2;
}

void sub_219002984()
{
  sub_219002AB8(&qword_27CC10D00, &unk_219C52C2C);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_219002AB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChannelCategoryView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_219002AF8()
{
  v1 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_iconImageView;
  *(v0 + v1) = [objc_allocWithZone(sub_219BEB3F4()) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_backgroundView;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_nameLabel;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v4 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_separatorView;
  *(v0 + v4) = [objc_allocWithZone(sub_219BE6104()) initWithFrame_];
  v5 = OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_token;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D82BB8]) init];
  sub_219BF7514();
  __break(1u);
}

void sub_219002C68(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572)
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

uint64_t sub_219002CF8(uint64_t a1)
{
  v2 = sub_219003064();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219002D34(uint64_t a1)
{
  v2 = sub_219003064();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219002D70@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_219002EE4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_219002D9C(void *a1)
{
  sub_2190030B8(0, &qword_27CC14DB0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219003064();
  sub_219BF7B44();
  sub_219BF7824();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219002EE4(void *a1)
{
  sub_2190030B8(0, &qword_27CC14DA0, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219003064();
  sub_219BF7B34();
  if (!v1)
  {
    sub_219BF7674();
    (*(v5 + 8))(v7, v4);
    if (v11)
    {
      v8 = 1;
    }

    else
    {
      v8 = v10;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_219003064()
{
  result = qword_27CC14DA8;
  if (!qword_27CC14DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14DA8);
  }

  return result;
}

void sub_2190030B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219003064();
    v7 = a3(a1, &type metadata for PaywallAudioFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219003130()
{
  result = qword_27CC14DB8;
  if (!qword_27CC14DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14DB8);
  }

  return result;
}

unint64_t sub_219003188()
{
  result = qword_27CC14DC0;
  if (!qword_27CC14DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14DC0);
  }

  return result;
}

unint64_t sub_2190031E0()
{
  result = qword_27CC14DC8;
  if (!qword_27CC14DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14DC8);
  }

  return result;
}

uint64_t sub_219003234()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 29);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 36);

  return swift_deallocClassInstance();
}

uint64_t sub_2190032D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v59 = a3;
  v60 = a4;
  v56 = a2;
  v61 = a5;
  sub_218718690(v5 + 152, v84);
  sub_218718690(v5 + 232, v83);
  sub_218718690(v5 + 192, v82);
  sub_218718690(v5 + 112, v81);
  sub_218718690(v5 + 72, v80);
  v62 = *(v5 + 272);
  sub_218718690(v5 + 16, v79);
  v8 = swift_allocObject();
  v58 = a1;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = 0;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v84, v84[3]);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v82, v82[3]);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v80, v80[3]);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = (&v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v23 + 16))(v22, v20);
  v24 = *v12;
  v25 = *v17;
  v26 = *v22;
  v27 = type metadata accessor for MagazineCategoryConfigService(0);
  v78[3] = v27;
  v78[4] = &off_282A6EDE8;
  v78[0] = v24;
  v28 = type metadata accessor for MagazineCategoryService();
  v76 = v28;
  v77 = &off_282A649E8;
  v75[0] = v25;
  v29 = type metadata accessor for IssueModelFactory();
  v73 = v29;
  v74 = &off_282A725A8;
  v72[0] = v26;
  v57 = type metadata accessor for MagazineCategoryGridModelLoader();
  v30 = swift_allocObject();
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v78, v27);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  v36 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = (&v56 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39, v37);
  v41 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
  v42 = MEMORY[0x28223BE20](v41);
  v44 = (&v56 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v45 + 16))(v44, v42);
  v46 = *v34;
  v47 = *v39;
  v48 = *v44;
  v70 = v27;
  v71 = &off_282A6EDE8;
  *&v69 = v46;
  v67 = v28;
  v68 = &off_282A649E8;
  *&v66 = v47;
  v64 = v29;
  v65 = &off_282A725A8;
  v49 = v56;
  *&v63 = v48;
  *(v30 + 64) = 0;
  swift_unknownObjectWeakInit();
  v50 = qword_27CC08158;
  swift_unknownObjectRetain();

  if (v50 != -1)
  {
    swift_once();
  }

  v51 = v8 | 0x6000000000000006;
  sub_219003968(0);
  swift_allocObject();

  *(v30 + 328) = sub_219BDC914();
  v52 = v59;
  *(v30 + 16) = v58;
  *(v30 + 24) = v49;
  v53 = v60;
  *(v30 + 32) = v52;
  *(v30 + 40) = v53;
  sub_2186CB1F0(&v69, v30 + 72);
  sub_2186CB1F0(v83, v30 + 112);
  sub_2186CB1F0(&v66, v30 + 152);
  sub_2186CB1F0(v81, v30 + 192);
  sub_2186CB1F0(&v63, v30 + 232);
  *(v30 + 272) = v62;
  sub_2186CB1F0(v79, v30 + 288);
  *(v30 + 48) = v51;

  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v82);
  __swift_destroy_boxed_opaque_existential_1(v84);
  v54 = v61;
  v61[3] = v57;
  result = sub_219004064(&qword_27CC14DD8, type metadata accessor for MagazineCategoryGridModelLoader, &unk_219C70808);
  v54[4] = result;
  *v54 = v30;
  return result;
}

void sub_219003968(uint64_t a1)
{
  if (!qword_27CC14DD0)
  {
    sub_218F19134();
    v1 = sub_219BDC904();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14DD0);
    }
  }
}

uint64_t sub_2190039C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_218718690(v3 + 288, v32);
  sub_218718690(v3 + 112, v31);
  sub_218718690(v3 + 72, v30);
  v25 = *(v3 + 272);
  v24 = *(v3 + 56);
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v30, v30[3]);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = *v10;
  v13 = type metadata accessor for IssueModelFactory();
  v29[3] = v13;
  v29[4] = &off_282A725A8;
  v29[0] = v12;
  v14 = type metadata accessor for MyMagazineDownloadsGridModelLoader();
  v15 = swift_allocObject();
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v29, v13);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v19;
  v27 = v13;
  v28 = &off_282A725A8;
  *&v26 = v21;
  *(v15 + 24) = 0;
  swift_unknownObjectWeakInit();
  v22 = qword_27CC08150;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  if (v22 != -1)
  {
    swift_once();
  }

  sub_219003968(0);
  swift_allocObject();

  *(v15 + 200) = sub_219BDC914();
  *(v15 + 208) = 0;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;
  sub_2186CB1F0(v32, v15 + 48);
  sub_2186CB1F0(v31, v15 + 88);
  sub_2186CB1F0(&v26, v15 + 128);
  *(v15 + 168) = v25;
  *(v15 + 184) = v24;

  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  a3[3] = v14;
  result = sub_219004064(&unk_27CC14DE8, type metadata accessor for MyMagazineDownloadsGridModelLoader, &unk_219C9093C);
  a3[4] = result;
  *a3 = v15;
  return result;
}

uint64_t sub_219003CF4@<X0>(uint64_t *a1@<X8>)
{
  sub_218718690(v1 + 288, v31);
  sub_218718690(v1 + 112, v30);
  sub_218718690(v1 + 72, v29);
  v24 = *(v1 + 272);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C1E930;
  *(v3 + 32) = 2;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v29, v29[3]);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7, v5);
  v9 = *v7;
  v10 = type metadata accessor for IssueModelFactory();
  v28[3] = v10;
  v28[4] = &off_282A725A8;
  v28[0] = v9;
  v11 = type metadata accessor for MyMagazinesGridModelLoader(0);
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v28, v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v16;
  v26 = v10;
  v27 = &off_282A725A8;
  *&v25 = v18;
  *(v12 + 24) = 0;
  swift_unknownObjectWeakInit();
  v19 = qword_27CC08148;
  swift_unknownObjectRetain();
  if (v19 != -1)
  {
    swift_once();
  }

  v20 = v3 | 0x6000000000000006;
  sub_219003968(0);
  swift_allocObject();

  *(v12 + 176) = sub_219BDC914();
  *(v12 + 184) = 0;
  v21 = OBJC_IVAR____TtC7NewsUI226MyMagazinesGridModelLoader_lastKnownState;
  v22 = type metadata accessor for MyMagazinesState(0);
  (*(*(v22 - 8) + 56))(v12 + v21, 1, 1, v22);
  sub_2186CB1F0(v31, v12 + 40);
  sub_2186CB1F0(v30, v12 + 80);
  sub_2186CB1F0(&v25, v12 + 120);
  *(v12 + 160) = v24;
  *(v12 + 32) = v20;
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v29);
  a1[3] = v11;
  result = sub_219004064(&qword_27CC14DE0, type metadata accessor for MyMagazinesGridModelLoader, &unk_219CA9310);
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_219004064(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2190040AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v56 = a3;
  v57 = a4;
  v58 = a2;
  v59 = a5;
  v55 = a1;
  sub_218718690(v5 + 152, v82);
  sub_218718690(v5 + 232, v81);
  sub_218718690(v5 + 192, v80);
  sub_218718690(v5 + 112, v79);
  sub_218718690(v5 + 72, v78);
  v60 = *(v5 + 272);
  sub_218718690(v5 + 16, v77);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C3FE50;
  *(v6 + 32) = 2;
  v7 = __swift_mutable_project_boxed_opaque_existential_1(v82, v82[3]);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = (&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10, v8);
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v80, v80[3]);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v78, v78[3]);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = (&v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = *v10;
  v23 = *v15;
  v24 = *v20;
  v25 = type metadata accessor for MagazineCategoryConfigService(0);
  v76[3] = v25;
  v76[4] = &off_282A6EDE8;
  v76[0] = v22;
  v26 = type metadata accessor for MagazineCategoryService();
  v74 = v26;
  v75 = &off_282A649E8;
  v73[0] = v23;
  v27 = type metadata accessor for IssueModelFactory();
  v71 = v27;
  v72 = &off_282A725A8;
  v70[0] = v24;
  v54 = type metadata accessor for MagazineCategoryGridModelLoader();
  v28 = swift_allocObject();
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v76, v25);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = (&v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
  v35 = MEMORY[0x28223BE20](v34);
  v37 = (&v54 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37, v35);
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = (&v54 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42, v40);
  v44 = *v32;
  v45 = *v37;
  v46 = *v42;
  v68 = v25;
  v69 = &off_282A6EDE8;
  *&v67 = v44;
  v65 = v26;
  v66 = &off_282A649E8;
  *&v64 = v45;
  v62 = v27;
  v63 = &off_282A725A8;
  *&v61 = v46;
  *(v28 + 64) = 0;
  swift_unknownObjectWeakInit();
  v47 = qword_27CC08158;
  swift_unknownObjectRetain();
  if (v47 != -1)
  {
    swift_once();
  }

  v48 = v6 | 0x6000000000000006;
  sub_219003968(0);
  swift_allocObject();

  *(v28 + 328) = sub_219BDC914();
  v49 = v56;
  v51 = v57;
  v50 = v58;
  *(v28 + 16) = v55;
  *(v28 + 24) = v50;
  *(v28 + 32) = v49;
  *(v28 + 40) = v51;
  sub_2186CB1F0(&v67, v28 + 72);
  sub_2186CB1F0(v81, v28 + 112);
  sub_2186CB1F0(&v64, v28 + 152);
  sub_2186CB1F0(v79, v28 + 192);
  sub_2186CB1F0(&v61, v28 + 232);
  *(v28 + 272) = v60;
  sub_2186CB1F0(v77, v28 + 288);
  *(v28 + 48) = v48;

  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v76);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v82);
  v52 = v59;
  v59[3] = v54;
  result = sub_219004064(&qword_27CC14DD8, type metadata accessor for MagazineCategoryGridModelLoader, &unk_219C70808);
  v52[4] = result;
  *v52 = v28;
  return result;
}

uint64_t OpenMainWindowCommandHandler.__allocating_init(navigator:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t OpenMainWindowCommandHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void _s7NewsUI228OpenMainWindowCommandHandlerC6handle13commandCenter0I04with6sourcey5TeaUI0fJ4Type_p_AI0F0CyytGytAI0F15ExecutionSourceCSgtF_0()
{
  v0 = sub_219BE9414();
  v36 = *(v0 - 8);
  v37 = v0;
  MEMORY[0x28223BE20](v0);
  v35 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = objc_opt_self();
  v3 = [v2 sharedApplication];
  v4 = [v3 connectedScenes];

  v5 = sub_219004C80();
  sub_218F86FB4();
  v6 = sub_219BF5D44();

  v34 = v2;
  v39 = v6;
  v40 = v5;
  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_219BF71C4();
    sub_219BF5D94();
    v6 = v44;
    v7 = v45;
    v8 = v46;
    v9 = v47;
    v10 = v48;
  }

  else
  {
    v11 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v6 + 56);

    v9 = 0;
  }

  v38 = v8;
  v14 = (v8 + 64) >> 6;
  while (1)
  {
    if (v6 < 0)
    {
      v20 = sub_219BF7244();
      if (!v20 || (v42 = v20, swift_dynamicCast(), v19 = v43, v17 = v9, v18 = v10, !v43))
      {
LABEL_25:
        sub_21892DE98(v6);

        if (qword_27CC08268 == -1)
        {
LABEL_26:
          v27 = qword_27CC15930;
          v43 = qword_27CC15930;
          v29 = v35;
          v28 = v36;
          v30 = v37;
          (*(v36 + 104))(v35, *MEMORY[0x277D6E5A0], v37);
          sub_2189EB264(v27);
          sub_219BE6474();
          (*(v28 + 8))(v29, v30);
          sub_218932F9C(v43);
          return;
        }

LABEL_30:
        swift_once();
        goto LABEL_26;
      }
    }

    else
    {
      v15 = v9;
      v16 = v10;
      v17 = v9;
      if (!v10)
      {
        while (1)
        {
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v17 >= v14)
          {
            goto LABEL_25;
          }

          v16 = *(v7 + 8 * v17);
          ++v15;
          if (v16)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_30;
      }

LABEL_14:
      v18 = (v16 - 1) & v16;
      v19 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
      if (!v19)
      {
        goto LABEL_25;
      }
    }

    v41 = v9;
    v21 = [v19 session];
    v22 = sub_219BF6324();
    v24 = v23;

    if (v24)
    {
      break;
    }

LABEL_8:

    v9 = v17;
    v10 = v18;
  }

  if (v22 != 0x6546756F59726F46 || v24 != 0xEA00000000006465)
  {
    v26 = sub_219BF78F4();

    if (v26)
    {
      goto LABEL_28;
    }

    goto LABEL_8;
  }

LABEL_28:
  sub_21892DE98(v6);

  v31 = [v34 sharedApplication];
  v32 = [v19 session];
  [v31 requestSceneSessionActivation:v32 userActivity:0 options:0 errorHandler:0];
}

unint64_t sub_219004C80()
{
  result = qword_280E8DA50;
  if (!qword_280E8DA50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8DA50);
  }

  return result;
}

void sub_219004CCC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();
    if (v4)
    {
      v5 = v4;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = off_282A83048[0];
        type metadata accessor for MagazineGridViewController();
        v6(v5);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_219004DC0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    a2(a1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(*a1 + 16);
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v9)
    {
      if (v10)
      {
        v11 = swift_unknownObjectWeakLoadStrong();
        if (v11)
        {
          *(swift_allocObject() + 16) = v11;
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
LABEL_11:

          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }

    else if (v10)
    {
      v12 = *(a5 + 24);
      v13 = *(a5 + 32);
      v14 = swift_unknownObjectWeakLoadStrong();
      if (v14)
      {
        v15 = v14;
        v16 = swift_allocObject();
        v16[2] = v12;
        v16[3] = v13;
        v16[4] = v15;
        sub_218DB964C(v12, v13);
        swift_unknownObjectRetain();
        sub_219BE3494();
        swift_unknownObjectRelease();
        goto LABEL_11;
      }

LABEL_12:

      swift_unknownObjectRelease();
      return;
    }
  }
}

double sub_219004F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_218DB935C(v6, v7, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v9 = sub_21900CA40(&qword_27CC14E28, type metadata accessor for MagazineGridBlueprintModifierFactory, &unk_219C66308);
  v10 = *(v9 + 40);
  v11 = type metadata accessor for MagazineGridBlueprintModifierFactory();
  v16 = v10(a1, v11, v9);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = *(a1 + 16);
  *(v12 + 32) = *a1;
  *(v12 + 48) = v13;
  *(v12 + 64) = *(a1 + 32);
  *(v12 + 73) = *(a1 + 41);
  sub_2188202A8(a2);
  sub_218B88148(a1, v15);
  sub_218DB95D0(0);
  sub_21900CA40(&unk_27CC11E90, sub_218DB95D0, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

uint64_t sub_21900518C(uint64_t a1, void *a2)
{
  v2 = sub_219BF1584();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = v3;
    v22 = v2;
    v20[0] = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20[1] = "BlueprintLayoutBuilder";
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = objc_opt_self();
    v11 = [v10 bundleForClass_];
    sub_219BDB5E4();

    v12 = [v10 bundleForClass_];
    sub_219BDB5E4();

    sub_219BF1514();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v16 = v21;
      v15 = v22;
      v17 = v20[0];
      (*(v21 + 16))(v20[0], v7, v22);
      v18 = (*(v16 + 80) + 24) & ~*(v16 + 80);
      v19 = swift_allocObject();
      *(v19 + 16) = v14;
      (*(v16 + 32))(v19 + v18, v17, v15);
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v16 = v21;
      v15 = v22;
    }

    return (*(v16 + 8))(v7, v15);
  }

  return result;
}

void *sub_2190054DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
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
      v6 = type metadata accessor for MagazineGridModule();
      v7 = swift_allocObject();
      sub_2186CB1F0(v10, v7 + 16);
      *(v7 + 56) = v5;
      result = sub_2186CB1F0(&v8, v7 + 64);
      a2[3] = v6;
      a2[4] = &off_282A9B468;
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

void *sub_2190055F0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90230, MEMORY[0x277D33C58], 1);
  result = sub_219BE1E34();
  if (!v82)
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280ECA990, &protocol descriptor for IssueModelFactoryType, 1);
  result = sub_219BE1E34();
  if (!v80)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90590, MEMORY[0x277D33670], 1);
  result = sub_219BE1E34();
  if (!v78)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA3480, &protocol descriptor for MagazineCategoryConfigServiceType, 1);
  result = sub_219BE1E34();
  if (!v76)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB84C0, &protocol descriptor for MagazineCategoryServiceType, 1);
  result = sub_219BE1E34();
  if (!v74)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0, &protocol descriptor for OfflineIssueManagerType, 0);
  result = sub_219BE1E34();
  if (!v71)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E8FFD0, MEMORY[0x277D34178], 1);
  result = sub_219BE1E34();
  if (!v70)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  if (!v67)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v54 = v67;
  v55 = v72;
  v56 = v71;
  v57 = a2;
  v53 = v68;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECE3A0, &protocol descriptor for MyMagazinesStoreType, 1);
  result = sub_219BE1E34();
  if (v66)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    v52 = v48;
    v6 = MEMORY[0x28223BE20](v5);
    v8 = (v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
    v51 = v48;
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v73, v74);
    v50 = v48;
    v16 = MEMORY[0x28223BE20](v15);
    v18 = (v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v8;
    v21 = *v13;
    v22 = *v18;
    v23 = type metadata accessor for IssueModelFactory();
    v64[3] = v23;
    v64[4] = &off_282A725A8;
    v64[0] = v20;
    v24 = type metadata accessor for MagazineCategoryConfigService(0);
    v62 = v24;
    v63 = &off_282A6EDE8;
    v61[0] = v21;
    v25 = type metadata accessor for MagazineCategoryService();
    v59 = v25;
    v60 = &off_282A649E8;
    v58[0] = v22;
    v49 = type metadata accessor for MagazineGridModelLoaderFactory();
    v26 = swift_allocObject();
    v27 = __swift_mutable_project_boxed_opaque_existential_1(v64, v23);
    v48[1] = v48;
    v28 = MEMORY[0x28223BE20](v27);
    v30 = (v48 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30, v28);
    v32 = __swift_mutable_project_boxed_opaque_existential_1(v61, v62);
    v48[0] = v48;
    v33 = MEMORY[0x28223BE20](v32);
    v35 = (v48 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35, v33);
    v37 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
    v38 = MEMORY[0x28223BE20](v37);
    v40 = (v48 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v41 + 16))(v40, v38);
    v42 = *v30;
    v43 = *v35;
    v44 = *v40;
    v26[12] = v23;
    v26[13] = &off_282A725A8;
    v26[9] = v42;
    v26[22] = v24;
    v26[23] = &off_282A6EDE8;
    v26[19] = v43;
    v26[27] = v25;
    v26[28] = &off_282A649E8;
    v26[24] = v44;
    sub_2186CB1F0(&v81, (v26 + 2));
    sub_2186CB1F0(&v77, (v26 + 14));
    v45 = v55;
    v26[7] = v56;
    v26[8] = v45;
    sub_2186CB1F0(&v69, (v26 + 29));
    v46 = v53;
    v26[34] = v54;
    v26[35] = v46;
    sub_2186CB1F0(&v65, (v26 + 36));
    __swift_destroy_boxed_opaque_existential_1(v58);
    __swift_destroy_boxed_opaque_existential_1(v61);
    __swift_destroy_boxed_opaque_existential_1(v64);
    __swift_destroy_boxed_opaque_existential_1(v73);
    __swift_destroy_boxed_opaque_existential_1(v75);
    result = __swift_destroy_boxed_opaque_existential_1(v79);
    v47 = v57;
    v57[3] = v49;
    v47[4] = &off_282A58670;
    *v47 = v26;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

double sub_219005E50()
{
  type metadata accessor for MagazineGridViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC14DF8, &protocol descriptor for MagazineGridStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC14E00, &protocol descriptor for MagazineGridRouterType, 1);
  sub_219BE2914();
  type metadata accessor for MagazineGridRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC14E08, &protocol descriptor for MagazineGridEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC14E10, &protocol descriptor for MagazineGridTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC14E18, &protocol descriptor for MagazineGridInteractorType, 0);
  sub_219BE2914();
  sub_21900B2F0(0);
  sub_219BE19C4();

  sub_2186C709C(0, &unk_27CC14E30, &protocol descriptor for MagazineGridDataManagerType, 0);
  sub_219BE2914();

  sub_2189870F0(0);
  sub_219BE2904();

  type metadata accessor for MagazineGridBlueprintModifierFactory();
  sub_219BE2904();

  sub_21900B384(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21900BBE8(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21900BDDC(0);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_21900B470(0);
  sub_219BE2904();

  sub_21900BD24(0);
  sub_219BE2904();

  sub_21900B8C4(0);
  sub_219BE2904();

  type metadata accessor for MagazineGridBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_21900BE70(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  sub_219BE2904();

  sub_21900B578(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21900C6D0(0, &qword_27CC14F18, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6EA28]);
  sub_219BE2904();

  sub_21900B6F4(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21900B97C(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21900BAFC(0);
  sub_219BE2904();

  type metadata accessor for MagazineGridBlueprintViewCellProvider();
  sub_219BE2904();

  type metadata accessor for MagazineGridBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_21900BFAC(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE70E4();
  sub_219BE2904();

  sub_21900C040(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC14F40, &protocol descriptor for MagazineGridSectionHeaderViewRendererType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC14F48, &protocol descriptor for MagazineV2GridSectionHeaderViewRendererType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC14F50, &protocol descriptor for MagazineGridSectionHeaderViewStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &unk_27CC14F58, &protocol descriptor for MagazineGridSectionHeaderViewLayoutAttributesFactoryType, 1);
  sub_219BE2914();

  sub_21900C12C();
  sub_219BE2904();

  sub_21900C17C(0);
  sub_219BE2904();

  return result;
}

char *sub_2190069C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v57 == 1)
  {
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14DF8, &protocol descriptor for MagazineGridStylerType, 1);
  result = sub_219BE1E34();
  if (!v55)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14E08, &protocol descriptor for MagazineGridEventHandlerType, 0);
  result = sub_219BE1E34();
  v3 = v52;
  if (!v52)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900BE70(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDA0, MEMORY[0x277D34548], 1);
  result = sub_219BE1E34();
  if (!v51[3])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5150, MEMORY[0x277D6DA40], 0);
  result = sub_219BE1E34();
  v5 = v49;
  if (!v49)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v43 = v50;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900C12C();
  result = sub_219BE1DE4();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  v40 = v53;
  v41 = v56;
  v42 = v57;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v45[0])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    v47 = v7;
    v48 = sub_21900CA40(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v46[0] = v8;
    sub_219BE89E4();
    swift_allocObject();
    v9 = sub_219BE8994();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
    v38 = &v37;
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (&v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v16 = type metadata accessor for MagazineGridStyler();
    v47 = v16;
    v48 = &off_282A3ABD8;
    v46[0] = v15;
    v17 = type metadata accessor for MagazineGridViewController();
    v18 = objc_allocWithZone(v17);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v46, v47);
    v37 = &v37;
    v20 = MEMORY[0x28223BE20](v19);
    v22 = (&v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = *v22;
    v45[4] = &off_282A3ABD8;
    v45[3] = v16;
    v45[0] = v24;
    v25 = &v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerIdentifier];
    *v25 = 0;
    *(v25 + 1) = 0;
    *&v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectAllBarButtonItem] = 0;
    *&v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___doneBarButtonItem] = 0;
    *&v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___downloadBarButtonItem] = 0;
    *&v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeIssuesAndDownloadsBarButtonItem] = 0;
    *&v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___removeDownloadsBarButtonItem] = 0;
    *&v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountBarButtonItem] = 0;
    *&v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController____lazy_storage___selectionCountLabel] = 0;
    v26 = &v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_viewControllerConfig];
    *v26 = v41 & 1;
    *(v26 + 1) = v42;
    sub_218718690(v45, &v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_styler]);
    v27 = &v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_eventHandler];
    v28 = v40;
    *v27 = v3;
    *(v27 + 1) = v28;
    v29 = v39;
    *&v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_blueprintViewController] = v39;
    sub_218718690(v51, &v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_offlineAlertControllerFactory]);
    v30 = &v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_toolbarManager];
    v31 = v43;
    *v30 = v5;
    *(v30 + 1) = v31;
    *&v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_editSelection] = v6;
    *&v18[OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_commandCenterWithTracker] = v9;
    v44.receiver = v18;
    v44.super_class = v17;
    swift_unknownObjectRetain();
    v32 = v29;
    swift_unknownObjectRetain();

    v33 = objc_msgSendSuper2(&v44, sel_initWithNibName_bundle_, 0, 0, v37, v38);
    *(*(v33 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_eventHandler) + 24) = &off_282A83018;
    swift_unknownObjectWeakAssign();
    v34 = *(v33 + OBJC_IVAR____TtC7NewsUI226MagazineGridViewController_blueprintViewController);
    v35 = v33;
    v36 = v34;
    sub_219BE8744();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v46);
    __swift_destroy_boxed_opaque_existential_1(v54);
    return v35;
  }

LABEL_19:
  __break(1u);
  return result;
}

void *sub_219007128@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v14);
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
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A328(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineMoreActionsFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15008, &protocol descriptor for MagazineGridModelLoaderType, 1);
  result = sub_219BE1E34();
  if (v11)
  {
    v8 = type metadata accessor for MagazineGridRouter();
    v9 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9[8] = v5;
    sub_2186CB1F0(v14, (v9 + 3));
    sub_2186CB1F0(&v12, (v9 + 9));
    v9[14] = v6;
    v9[15] = v7;
    result = sub_2186CB1F0(&v10, (v9 + 16));
    a2[3] = v8;
    a2[4] = &off_282A957C8;
    *a2 = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_219007358(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineGridViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_2190073D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14E18, &protocol descriptor for MagazineGridInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14E00, &protocol descriptor for MagazineGridRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14E10, &protocol descriptor for MagazineGridTrackerType, 1);
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
    v17 = sub_21900CB80(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A44FC0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219007688@<X0>(void *a1@<X0>, void *a2@<X8>)
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
  sub_219BE0204();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15008, &protocol descriptor for MagazineGridModelLoaderType, 1);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218716B60(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (v11)
  {
    v8 = type metadata accessor for MagazineGridTracker();
    v9 = swift_allocObject();
    v9[2] = v5;
    v9[3] = v6;
    sub_2186CB1F0(&v12, (v9 + 4));
    v9[9] = v7;
    result = sub_2186CB1F0(&v10, (v9 + 10));
    a2[3] = v8;
    a2[4] = &off_282A30D40;
    *a2 = v9;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_21900785C(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_27CC14E30, &protocol descriptor for MagazineGridDataManagerType, 0);
  sub_219BE1E34();
  if (!v32)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v33;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B384(0);
  v5 = sub_219BE1E24();
  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineGridBlueprintModifierFactory();
  v6 = sub_219BE1E24();
  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6;
  v8 = v32;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0, &protocol descriptor for OfflineIssueManagerType, 0);
  sub_219BE1E34();
  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = a2;
  v9 = v31;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21876A328(0, &qword_280E90690, sub_2186F1660, &type metadata for MagazineFeedOfflineModel, MEMORY[0x277D33538]);
  v10 = sub_219BE1E24();
  if (v10)
  {
    v11 = v10;
    sub_21900B2F0(0);
    v13 = v12;
    v14 = objc_allocWithZone(v12);
    v15 = MEMORY[0x277D85000];
    *(v14 + *((*MEMORY[0x277D85000] & *v14) + 0x60) + 8) = 0;
    swift_unknownObjectWeakInit();
    v16 = (v14 + *((*v15 & *v14) + 0x78));
    *v16 = v8;
    v16[1] = v4;
    *(v14 + *((*v15 & *v14) + 0x68)) = v27;
    *(v14 + *((*v15 & *v14) + 0x70)) = v7;
    *(v14 + *((*v15 & *v14) + 0x80)) = v11;
    v29.receiver = v14;
    v29.super_class = v13;
    swift_unknownObjectRetain();

    v25 = v11;
    v17 = objc_msgSendSuper2(&v29, sel_init);
    ObjectType = swift_getObjectType();
    v19 = *(v9 + 56);
    v20 = v17;
    v19(ObjectType, v9);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = sub_219BE2E54();
    sub_219BE21A4();

    __swift_destroy_boxed_opaque_existential_1(v28);
    v22 = *(v20 + *((*v15 & *v20) + 0x80));
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = v22;

    v24 = sub_219BF1AF4();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    *v26 = v20;
    v26[1] = &off_282A47870;
    return;
  }

LABEL_11:
  __break(1u);
}

void *sub_219007C94(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218B7A520();
  result = sub_219BE1E24();
  if (result)
  {
    [result addObserver_];
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &unk_27CC14E30, &protocol descriptor for MagazineGridDataManagerType, 0);
    result = sub_219BE1E34();
    if (v5)
    {
      swift_unknownObjectRelease();
      *(v5 + 24) = &off_282A47858;
      swift_unknownObjectWeakAssign();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_219007D90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15008, &protocol descriptor for MagazineGridModelLoaderType, 1);
  result = sub_219BE1E34();
  if (v10[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EC30E0, &protocol descriptor for SubscriptionServiceType, 0);
    result = sub_219BE1E34();
    if (v9)
    {
      type metadata accessor for MagazineGridDataManager();
      v5 = swift_allocObject();
      v5[3] = 0;
      swift_unknownObjectWeakInit();
      sub_218718690(v10, (v5 + 4));

      sub_219274EE0(v6, v9);
      swift_beginAccess();
      v7 = v5[7];
      v8 = v5[8];
      __swift_mutable_project_boxed_opaque_existential_1((v5 + 4), v7);
      (*(v8 + 24))(v5, &off_282A66128, v7, v8);
      swift_endAccess();
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_1(v10);
      *a2 = v5;
      a2[1] = &off_282A66150;
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

void *sub_219007F4C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA6010, &protocol descriptor for MagazineGridItemModelFactoryType, 1);
  result = sub_219BE1E34();
  if (v18)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v3 = MEMORY[0x28223BE20](v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for MagazineGridItemModelFactory();
    v16[3] = v8;
    v16[4] = &off_282A39B30;
    v16[0] = v7;
    type metadata accessor for MagazineGridBlueprintModifierFactory();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[5] = v8;
    v9[6] = &off_282A39B30;
    v9[2] = v15;
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21900815C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189870F0(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21900B470(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_21900B384(0);
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

void sub_219008240(uint64_t a1, void *a2)
{
  sub_21900C76C(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_21900C78C(0, &qword_27CC14FE8, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_21900CA40(&qword_27CC14FF0, sub_21900C76C, MEMORY[0x277D6E730]);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21900BBE8(0);
  if (sub_219BE1E24())
  {
    swift_allocObject();
    sub_21900CA40(&unk_27CC14FF8, sub_21900BBE8, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2190083D8(void *a1)
{
  sub_218B79DE4(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_219BEA594();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineGridBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900BD24(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900BDDC(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_21900BBE8(0);
    swift_allocObject();
    return sub_219BEA474();
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_219008540(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_219BF0214();
  sub_218718690(a2, &v6);
  v4 = swift_allocObject();
  sub_2186CB1F0(&v6, v4 + 16);
  v5 = sub_219BE1E04();

  if (v5)
  {
    v7 = v3;
    v8 = sub_21900CA40(&unk_280E90FE0, MEMORY[0x277D32C00], MEMORY[0x277D32BF8]);
    *&v6 = v5;
    sub_219BEA494();
    __swift_destroy_boxed_opaque_existential_1(&v6);
  }

  else
  {
    __break(1u);
  }
}

void *sub_21900866C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B8C4(0);
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
    sub_21900BDDC(0);
    swift_allocObject();
    return sub_219BE99A4();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219008814(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B578(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_21900B470(0);
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

uint64_t sub_21900896C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void *sub_2190089B0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900C6D0(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_27CC14F58, &protocol descriptor for MagazineGridSectionHeaderViewLayoutAttributesFactoryType, 1);
    result = sub_219BE1E34();
    if (v20)
    {
      v4 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
      v5 = MEMORY[0x28223BE20](v4);
      v7 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v8 + 16))(v7, v5);
      v9 = *v7;
      v10 = type metadata accessor for MagazineGridSectionHeaderViewLayoutAttributesFactory();
      v18[3] = v10;
      v18[4] = &off_282A626F0;
      v18[0] = v9;
      type metadata accessor for MagazineGridBlueprintLayoutBuilder();
      v11 = swift_allocObject();
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v10);
      v13 = MEMORY[0x28223BE20](v12);
      v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v16 + 16))(v15, v13);
      v17 = *v15;
      v11[6] = v10;
      v11[7] = &off_282A626F0;
      v11[2] = v3;
      v11[3] = v17;
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v19);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_219008C3C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189870F0(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B578(0);
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
  sub_21900BFAC(0);
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
    sub_21900CA40(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_21900BE70(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_219008F44(uint64_t a1, void *a2)
{
  v3 = sub_219BE8FC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_21900CA40(&qword_280E8FF80, MEMORY[0x277D34268], MEMORY[0x277D34260]);
  }

  sub_219BE8704();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21900C17C(0);
  v8 = v7;
  v9 = sub_219BE1E24();
  v10 = v9;
  if (v9)
  {
    v9 = sub_21900CA40(&unk_27CC14FD0, sub_21900C17C, MEMORY[0x277D6E070]);
  }

  else
  {
    v8 = 0;
    v18 = 0;
    v19 = 0;
  }

  v17 = v10;
  v20 = v8;
  v21 = v9;
  sub_219BE86F4();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21900BDDC(0);
  v12 = v11;
  v13 = sub_219BE1E24();
  v14 = v13;
  if (v13)
  {
    v13 = sub_21900CA40(&qword_27CC14FC8, sub_21900BDDC, MEMORY[0x277D6E7D0]);
  }

  else
  {
    v12 = 0;
    v18 = 0;
    v19 = 0;
  }

  v17 = v14;
  v20 = v12;
  v21 = v13;
  sub_219BE8724();
  (*(v4 + 104))(v6, *MEMORY[0x277D6E3C8], v3);
  return sub_219BE86C4();
}

id sub_2190091D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900C6D0(0, &qword_27CC14F18, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6EA28]);
  result = sub_219BE1DE4();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:result collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190092B8(void *a1)
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
  sub_21900B6F4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B97C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900BAFC(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_21900B578(0);
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_219009428@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B578(0);
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

uint64_t sub_2190094E0()
{
  v0 = sub_219BE80A4();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v1);
  return sub_219BE9574();
}

uint64_t sub_2190095B0(void *a1)
{
  v2 = sub_219BEA464();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    v7 = result;
    *v5 = 0x3FECCCCCCCCCCCCDLL;
    (*(v3 + 104))(v5, *MEMORY[0x277D6EAB8], v2);
    v10[1] = v7;
    sub_21900C6D0(0, &qword_27CC14F18, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6EA28]);
    v9 = objc_allocWithZone(v8);
    return sub_219BEA204();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219009740(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189870F0(0);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B8C4(0);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineGridBlueprintViewCellProvider();
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
  type metadata accessor for MagazineGridBlueprintViewSupplementaryViewProvider();
  if (sub_219BE1E24())
  {
    *&v8[0] = v3;
    sub_21900B6F4(0);
    v7 = objc_allocWithZone(v6);
    sub_219BE9B64();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2190098DC(void *a1, void *a2, void (*a3)(id, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  v8 = sub_219BE1DE4();
  if (v8)
  {
    v7 = sub_2186C6148(0, &qword_280E8E790, 0x277D759D8);
    a3(v8, v7, 0x6E697265646E6552, 0xED00007765695667, v7, v5, v6);
  }

  else
  {
    __break(1u);
  }
}

void *sub_219009A00(uint64_t a1, void *a2)
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

void *sub_219009AD8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189870F0(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B8C4(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900BFAC(0);
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

  sub_21900CA40(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800, MEMORY[0x277D6E170], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_21900B97C(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_219009D28(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21900C040(0);
  if (sub_219BE1E24())
  {
    sub_21900CA40(&qword_27CC14FC0, sub_21900C040, MEMORY[0x277D6E7F8]);
  }

  sub_219BE9774();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineGridViewController();
  sub_219BE1E24();
  return sub_219BE9714();
}

uint64_t sub_219009E64(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189870F0(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21900B8C4(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_21900BAFC(0);
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

void *sub_219009F24(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810, MEMORY[0x277D32340], 0);
  result = sub_219BE1E34();
  if (!v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC41D0, &protocol descriptor for OfflineIssueManagerType, 0);
  result = sub_219BE1E34();
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v4)
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
    v3 = result;
    type metadata accessor for MagazineGridBlueprintViewCellProvider();
    result = swift_allocObject();
    result[2] = v8;
    result[3] = v9;
    result[4] = v6;
    result[5] = v7;
    result[6] = v4;
    result[7] = v5;
    result[8] = v3;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_21900A0C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14F40, &protocol descriptor for MagazineGridSectionHeaderViewRendererType, 1);
  result = sub_219BE1E34();
  if (!v18)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14F48, &protocol descriptor for MagazineV2GridSectionHeaderViewRendererType, 1);
  result = sub_219BE1E34();
  if (!v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900C12C();
  result = sub_219BE1DE4();
  if (result)
  {
    v3 = result;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v15, v16);
    v10 = MEMORY[0x28223BE20](v9);
    v12 = (v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = sub_21900C498(*v7, *v12, v3);
    __swift_destroy_boxed_opaque_existential_1(v15);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_21900A350(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineGridViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A83008;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

uint64_t sub_21900A3E4(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_21900C2E8(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189870F0(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_21900BFAC(0);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21900A63C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21900B8C4(0);
  if (sub_219BE1E24())
  {
    sub_21900CA40(&unk_27CC14F90, sub_21900B8C4, MEMORY[0x277D6DF30]);
    sub_219BE8E94();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2186C709C(0, &qword_280E90FB0, MEMORY[0x277D32C40], 1);
    sub_219BE1E34();
    sub_21900C210(0);
    swift_allocObject();
    sub_219BEFCE4();
    sub_21900CA40(&qword_27CC14FB0, sub_21900C210, MEMORY[0x277D32A40]);
    sub_219BE8EA4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21900A7D4(void *a1)
{
  sub_2187F2110(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900C040(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_21900CA40(&qword_27CC14F88, sub_21900C040, MEMORY[0x277D6E800]);
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

void *sub_21900A914(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B578(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2189870F0(0);
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
    sub_21900CA40(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_21900C040(0);
    swift_allocObject();
    return sub_219BE9AB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_21900AAF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B578(0);
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

uint64_t sub_21900ABB0(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21900BE70(0);
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    v10 = sub_21900CA40(a3, sub_21900BE70, a4);
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  return a5(v8, v10);
}

uint64_t sub_21900AC64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900BE70(0);
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_21900CA40(&qword_27CC14F70, sub_21900BE70, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21900AD4C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC14F50, &protocol descriptor for MagazineGridSectionHeaderViewStylerType, 1);
  result = sub_219BE1E34();
  if (v25)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for MagazineGridSectionHeaderViewStyler();
    v23[3] = v14;
    v23[4] = &off_282A86818;
    v23[0] = v13;
    v15 = a2(0);
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v23, v14);
    v18 = MEMORY[0x28223BE20](v17);
    v20 = (v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v16[5] = v14;
    v16[6] = &off_282A86818;
    v16[2] = v22;
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    a4[3] = v15;
    a4[4] = a3;
    *a4 = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21900AFA4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v26)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for BaseStyler(0);
    v24[3] = v14;
    v15 = sub_21900CA40(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v24[4] = v15;
    v24[0] = v13;
    v16 = a2(0);
    v17 = swift_allocObject();
    v18 = __swift_mutable_project_boxed_opaque_existential_1(v24, v14);
    v19 = MEMORY[0x28223BE20](v18);
    v21 = (v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21, v19);
    v23 = *v21;
    v17[5] = v14;
    v17[6] = v15;
    v17[2] = v23;
    __swift_destroy_boxed_opaque_existential_1(v24);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    a4[3] = v16;
    a4[4] = a3;
    *a4 = v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21900B230(__n128 a1)
{
  sub_21900C12C();
  swift_allocObject();
  return sub_219BE20D4();
}

uint64_t sub_21900B278(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21900B578(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_21900C17C(0);
    swift_allocObject();
    return sub_219BE8914();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21900B2F0(uint64_t a1)
{
  if (!qword_27CC14E20)
  {
    v2 = type metadata accessor for MagazineGridBlueprintModifierFactory();
    v3 = sub_21900CA40(&qword_27CC14E28, type metadata accessor for MagazineGridBlueprintModifierFactory, &unk_219C66308);
    v5 = type metadata accessor for MagazineGridInteractor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27CC14E20);
    }
  }
}

void sub_21900B384(uint64_t a1)
{
  if (!qword_27CC14E40)
  {
    sub_2189870F0(255);
    sub_21900B470(255);
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0, MEMORY[0x277D6D8C8]);
    sub_21900CA40(&qword_27CC14ED0, sub_21900B470, MEMORY[0x277D6D960]);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14E40);
    }
  }
}

void sub_21900B470(uint64_t a1)
{
  if (!qword_27CC14E48)
  {
    type metadata accessor for MagazineGridItemModel(255);
    sub_21900B578(255);
    sub_21895164C();
    sub_21900CA40(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
    sub_21900CA40(&qword_27CC14EC8, sub_21900B578, MEMORY[0x277D6DC88]);
    v1 = sub_219BE72E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14E48);
    }
  }
}

void sub_21900B578(uint64_t a1)
{
  if (!qword_27CC14E50)
  {
    sub_2186C6148(255, &qword_280E8E4C0, 0x277D752A0);
    sub_21900B6F4(255);
    sub_21900B97C(255);
    sub_21900BAFC(255);
    type metadata accessor for MagazineGridViewController();
    sub_21900CA40(&qword_27CC14EB0, sub_21900B6F4, MEMORY[0x277D6E820]);
    sub_21900CA40(&qword_27CC14EB8, sub_21900B97C, MEMORY[0x277D6E738]);
    sub_21900CA40(&qword_27CC14EC0, sub_21900BAFC, MEMORY[0x277D6E918]);
    v1 = sub_219BE7BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14E50);
    }
  }
}

void sub_21900B6F4(uint64_t a1)
{
  if (!qword_27CC14E60)
  {
    sub_2189870F0(255);
    sub_21900B8C4(255);
    type metadata accessor for MagazineGridBlueprintViewCellProvider();
    type metadata accessor for MagazineGridBlueprintViewSupplementaryViewProvider();
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0, MEMORY[0x277D6D8C8]);
    sub_21900CA40(&qword_27CC14E78, sub_21900B8C4, MEMORY[0x277D6DF38]);
    sub_21900CA40(&qword_27CC14E80, type metadata accessor for MagazineGridBlueprintViewCellProvider, &unk_219C0C678);
    sub_21900CA40(&qword_27CC14E88, type metadata accessor for MagazineGridBlueprintViewSupplementaryViewProvider, &unk_219C2C0B4);
    sub_21900CA40(&qword_27CC14E90, type metadata accessor for MagazineGridLayoutModel, &unk_219C42E20);
    v1 = sub_219BE9B94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14E60);
    }
  }
}

void sub_21900B8C4(uint64_t a1)
{
  if (!qword_27CC14E68)
  {
    type metadata accessor for MagazineGridLayoutModel(255);
    sub_218951758();
    sub_21900CA40(&unk_27CC0AE80, type metadata accessor for MagazineGridLayoutModel, &unk_219C42DE8);
    v1 = sub_219BE8564();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14E68);
    }
  }
}

void sub_21900B97C(uint64_t a1)
{
  if (!qword_27CC14E98)
  {
    sub_2189870F0(255);
    sub_21900B8C4(255);
    type metadata accessor for MagazineGridViewController();
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0, MEMORY[0x277D6D8C8]);
    sub_21900CA40(&qword_27CC14E78, sub_21900B8C4, MEMORY[0x277D6DF38]);
    sub_21900CA40(&qword_27CC14EA0, type metadata accessor for MagazineGridViewController, &unk_219C9E468);
    sub_21900CA40(&qword_27CC14E90, type metadata accessor for MagazineGridLayoutModel, &unk_219C42E20);
    v1 = sub_219BE9794();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14E98);
    }
  }
}

void sub_21900BAFC(uint64_t a1)
{
  if (!qword_27CC14EA8)
  {
    sub_2189870F0(255);
    sub_21900B8C4(255);
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0, MEMORY[0x277D6D8C8]);
    sub_21900CA40(&qword_27CC14E78, sub_21900B8C4, MEMORY[0x277D6DF38]);
    v1 = sub_219BE9F34();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14EA8);
    }
  }
}

void sub_21900BBE8(uint64_t a1)
{
  if (!qword_27CC14ED8)
  {
    sub_21900B8C4(255);
    type metadata accessor for MagazineGridBlueprintLayoutBuilder();
    sub_21900BD24(255);
    sub_21900CA40(&qword_27CC14E78, sub_21900B8C4, MEMORY[0x277D6DF38]);
    sub_21900CA40(&qword_27CC14EF0, type metadata accessor for MagazineGridBlueprintLayoutBuilder, &unk_219C3B110);
    sub_21900CA40(&qword_27CC14EF8, sub_21900BD24, MEMORY[0x277D6E7B8]);
    v1 = sub_219BEA4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14ED8);
    }
  }
}

void sub_21900BD24(uint64_t a1)
{
  if (!qword_27CC14EE0)
  {
    type metadata accessor for MagazineGridLayoutModel(255);
    sub_218DF4D58();
    sub_21900CA40(&qword_27CC14E90, type metadata accessor for MagazineGridLayoutModel, &unk_219C42E20);
    v1 = sub_219BE9974();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14EE0);
    }
  }
}

void sub_21900BDDC(uint64_t a1)
{
  if (!qword_27CC14F00)
  {
    sub_21900B8C4(255);
    sub_21900CA40(&qword_27CC14E78, sub_21900B8C4, MEMORY[0x277D6DF38]);
    v1 = sub_219BE99B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14F00);
    }
  }
}

void sub_21900BE70(uint64_t a1)
{
  if (!qword_27CC14F08)
  {
    sub_2189870F0(255);
    sub_21900B578(255);
    type metadata accessor for MagazineGridViewController();
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0, MEMORY[0x277D6D8C8]);
    sub_21900CA40(&qword_27CC14EC8, sub_21900B578, MEMORY[0x277D6DC88]);
    sub_21900CA40(&qword_27CC14EA0, type metadata accessor for MagazineGridViewController, &unk_219C9E468);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14F08);
    }
  }
}

void sub_21900BFAC(uint64_t a1)
{
  if (!qword_27CC14F20)
  {
    sub_2189870F0(255);
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0, MEMORY[0x277D6D8C8]);
    v1 = sub_219BE8ED4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14F20);
    }
  }
}

void sub_21900C040(uint64_t a1)
{
  if (!qword_27CC14F28)
  {
    sub_21900B578(255);
    sub_2189870F0(255);
    sub_21900CA40(&qword_27CC14EC8, sub_21900B578, MEMORY[0x277D6DC88]);
    sub_21900CA40(&unk_27CC14F30, sub_2189870F0, MEMORY[0x277D6D8C0]);
    v1 = sub_219BE9AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14F28);
    }
  }
}

void sub_21900C12C()
{
  if (!qword_280EE7B20)
  {
    v0 = sub_219BE2124();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE7B20);
    }
  }
}

void sub_21900C17C(uint64_t a1)
{
  if (!qword_27CC14F68)
  {
    sub_21900B578(255);
    sub_21900CA40(&qword_27CC14EC8, sub_21900B578, MEMORY[0x277D6DC88]);
    v1 = sub_219BE8934();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14F68);
    }
  }
}

void sub_21900C210(uint64_t a1)
{
  if (!qword_27CC14FA0)
  {
    sub_2189870F0(255);
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0, MEMORY[0x277D6D8C8]);
    sub_21900CA40(&qword_27CC123F0, type metadata accessor for MagazineGridItemModel, &unk_219C46260);
    v1 = sub_219BEFCF4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14FA0);
    }
  }
}

void sub_21900C2E8(uint64_t a1)
{
  if (!qword_27CC14FB8)
  {
    sub_2189870F0(255);
    sub_21900CA40(&unk_27CC11EB0, sub_2189870F0, MEMORY[0x277D6D8C8]);
    v1 = sub_219BE8EB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC14FB8);
    }
  }
}

double sub_21900C37C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  v14[0] = a1[2];
  *(v14 + 9) = *(a1 + 41);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  v10 = a1[1];
  *(v9 + 40) = *a1;
  *(v9 + 56) = v10;
  *(v9 + 72) = a1[2];
  *(v9 + 81) = *(a1 + 41);
  sub_2188202A8(a3);

  sub_218B88148(v13, &v12);
  sub_219004F64(v13, sub_21900CA24, v9);

  return result;
}

void *sub_21900C498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MagazineGridSectionHeaderViewRenderer();
  v25[3] = v6;
  v25[4] = &off_282A931D0;
  v25[0] = a1;
  v7 = type metadata accessor for MagazineV2GridSectionHeaderViewRenderer();
  v23 = v7;
  v24 = &off_282A9F440;
  v22[0] = a2;
  type metadata accessor for MagazineGridBlueprintViewSupplementaryViewProvider();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v25, v6);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = *v12;
  v20 = *v17;
  v8[7] = v6;
  v8[8] = &off_282A931D0;
  v8[12] = v7;
  v8[13] = &off_282A9F440;
  v8[9] = v20;
  v8[3] = 0;
  v8[4] = v19;
  swift_unknownObjectWeakInit();
  v8[14] = a3;
  v8[15] = 0;
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v8;
}

void sub_21900C6D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_21900C78C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineGridSectionDescriptor;
    v8[1] = type metadata accessor for MagazineGridItemModel(255);
    v8[2] = sub_21895164C();
    v8[3] = sub_21900CA40(&unk_27CC0B810, type metadata accessor for MagazineGridItemModel, &unk_219C46178);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21900C85C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    MEMORY[0x28223BE20](Strong);
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v3 = sub_219BF66A4();
    v4 = swift_allocObject();
    sub_21900B2F0(0);
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    sub_219BE2F94();

    v5 = sub_219BF66A4();
    sub_219BE2FE4();
  }
}

uint64_t sub_21900CA40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_21900CA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for MagazineGridRouter();
  v15[4] = &off_282A957C8;
  v15[0] = a3;
  v14[3] = type metadata accessor for MagazineGridTracker();
  v14[4] = &off_282A30D40;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A44F88, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_21900CB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = type metadata accessor for MagazineGridRouter();
  v27 = &off_282A957C8;
  v25[0] = a3;
  v23 = v8;
  v24 = &off_282A30D40;
  v22[0] = a4;
  type metadata accessor for MagazineGridEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_21900CA88(a1, a2, *v13, *v18, v9);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

uint64_t sub_21900CD8C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_219BDB224();
  v60 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v55 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDB354();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDB344();
  sub_219BDB934();
  sub_219BDB2E4();
  v12 = sub_219BDB234();
  if (!v12)
  {
    v14 = sub_2194B0E30(MEMORY[0x277D84F90]);
LABEL_27:
    if (!sub_21900D298(v14))
    {
      v43 = [objc_opt_self() systemBackgroundColor];
    }

    sub_21900D474(a2, v14);

    sub_219BE76A4();

    v44 = sub_219BDB954();
    (*(*(v44 - 8) + 8))(a1, v44);
    return (*(v9 + 8))(v11, v8);
  }

  v59 = *(v12 + 16);
  if (!v59)
  {

    v14 = MEMORY[0x277D84F98];
    goto LABEL_27;
  }

  v47 = v11;
  v48 = v9;
  v49 = v8;
  v50 = a3;
  v51 = a2;
  v52 = a1;
  v13 = 0;
  v58 = v12 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
  v56 = (v60 + 8);
  v57 = v60 + 16;
  v14 = MEMORY[0x277D84F98];
  v15 = v55;
  v16 = v12;
  v53 = v12;
  v54 = v6;
  while (v13 < *(v16 + 16))
  {
    (*(v60 + 16))(v15, v58 + *(v60 + 72) * v13, v6);
    v17 = sub_219BDB204();
    v19 = v18;
    v20 = sub_219BDB214();
    if (!v21)
    {
      v33 = sub_21870F700(v17, v19);
      v35 = v34;

      if (v35)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v61 = v14;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_219493D28();
          v14 = v61;
        }

        sub_21948A674(v33, v14);
      }

      (*v56)(v15, v6);
      goto LABEL_6;
    }

    v22 = v21;
    v23 = v20;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v61 = v14;
    v26 = sub_21870F700(v17, v19);
    v27 = v14[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_31;
    }

    v30 = v25;
    if (v14[3] >= v29)
    {
      if (v24)
      {
        v15 = v55;
        if ((v25 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        sub_219493D28();
        v15 = v55;
        if ((v30 & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      sub_21948381C(v29, v24);
      v31 = sub_21870F700(v17, v19);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_33;
      }

      v26 = v31;
      v15 = v55;
      if ((v30 & 1) == 0)
      {
LABEL_21:
        v14 = v61;
        v61[(v26 >> 6) + 8] |= 1 << v26;
        v38 = (v14[6] + 16 * v26);
        *v38 = v17;
        v38[1] = v19;
        v39 = (v14[7] + 16 * v26);
        *v39 = v23;
        v39[1] = v22;
        v6 = v54;
        (*v56)(v15, v54);
        v40 = v14[2];
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_32;
        }

        v14[2] = v42;
        goto LABEL_23;
      }
    }

    v14 = v61;
    v37 = (v61[7] + 16 * v26);
    *v37 = v23;
    v37[1] = v22;

    v6 = v54;
    (*v56)(v15, v54);
LABEL_23:
    v16 = v53;
LABEL_6:
    if (v59 == ++v13)
    {

      a2 = v51;
      a1 = v52;
      v8 = v49;
      v11 = v47;
      v9 = v48;
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

id sub_21900D298(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_21870F700(0x67625F746867696CLL, 0xEE00726F6C6F635FLL);
  if (v2)
  {
    sub_2186F8B0C();

    v3 = sub_219BF6D54();
    if (!*(a1 + 16))
    {
LABEL_11:
      v6 = 0;
      if (v3)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v3 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_11;
    }
  }

  sub_21870F700(0x5F67625F6B726164, 0xED0000726F6C6F63);
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_2186F8B0C();

  v6 = sub_219BF6D54();
  if (v3)
  {
LABEL_12:
    v7 = objc_opt_self();
    if (!v6)
    {
      v9 = v3;
      v6 = [v7 systemBackgroundColor];
      v8 = v9;
      goto LABEL_16;
    }

    v8 = v3;
LABEL_14:
    v9 = v3;
LABEL_16:
    v10 = [v7 ts:v8 dynamicColor:v6 withDarkStyleVariant:?];

    return v10;
  }

LABEL_9:
  if (v6)
  {
    v7 = objc_opt_self();
    v8 = [v7 systemBackgroundColor];
    v3 = 0;
    goto LABEL_14;
  }

  return 0;
}

id sub_21900D474(void *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_30;
  }

  v4 = sub_21870F700(0x746365666665, 0xE600000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_30;
  }

  v6 = (*(a2 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];
  v9 = *v6 == 0xD000000000000010 && 0x8000000219D06F90 == v8;
  if (!v9 && (sub_219BF78F4() & 1) == 0)
  {
    v11 = v7 == 0x67696C5F72756C62 && v8 == 0xEA00000000007468;
    if (v11 || (sub_219BF78F4() & 1) != 0)
    {
      v10 = [objc_opt_self() effectWithStyle_];
      return v10;
    }

    v12 = v7 == 0x7261645F72756C62 && v8 == 0xE90000000000006BLL;
    if (v12 || (sub_219BF78F4() & 1) != 0)
    {
      v10 = [objc_opt_self() effectWithStyle_];
      return v10;
    }

    if (v7 == 0x7478655F72756C62 && v8 == 0xEF6B7261645F6172 || (sub_219BF78F4() & 1) != 0)
    {
      v10 = [objc_opt_self() effectWithStyle_];
      return v10;
    }

    if (v7 == 1701736302 && v8 == 0xE400000000000000 || (sub_219BF78F4() & 1) != 0)
    {
      return 0;
    }

LABEL_30:
    v13 = a1;
    return a1;
  }

  v10 = [objc_opt_self() effectWithStyle_];
  return v10;
}

double sub_21900D6B4(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  sub_21896FA3C(0);
  v63 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v65 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = v4;
  MEMORY[0x28223BE20](v5);
  v66 = &v62 - v6;
  v7 = sub_219BE8C14();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE9414();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  v18 = sub_219BDD944();
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v20;
  v21 = type metadata accessor for SharedWithYouFeedRouteModel(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21900E9C8(a1, v23, type metadata accessor for SharedWithYouFeedRouteModel);
  v24 = v20;
  v25 = v67;
  sub_218B5E238(v23, v24, MEMORY[0x277D2FB40]);
  (*(v8 + 16))(v10, v25, v7);
  sub_219BE9424();
  (*(v12 + 104))(v14, *MEMORY[0x277D6E598], v11);
  sub_21900E980(&unk_280EE44E0, MEMORY[0x277D6E5A8], MEMORY[0x277D6E5B0]);
  v69 = v17;
  LOBYTE(a1) = sub_219BF53A4();
  v26 = *(v12 + 8);
  v70 = v11;
  v71 = v12 + 8;
  v26(v14, v11);
  if ((a1 & 1) == 0)
  {
    v27 = sub_219BE8BF4();
    if (v27)
    {
      v28 = v27;
      sub_218C1A2CC(v81);
      v29 = v81[0];
      if ((~v81[0] & 0xF000000000000007) != 0)
      {
        v61 = v69;
        sub_219BE6474();

        v26(v61, v70);
        sub_218D0E588(v72, MEMORY[0x277D2FB40]);
        return sub_218970170(v29);
      }
    }
  }

  v30 = v68;
  v31 = *(v68 + 112);
  sub_2187B2C48(0);
  v33 = v32;
  v34 = swift_allocBox();
  v36 = v35;
  v37 = *(v33 + 48);
  sub_2187B2DA0(0);
  v39 = *(v38 + 48);
  sub_21900E9C8(v72, v36, MEMORY[0x277D2FB40]);
  v40 = MEMORY[0x277D84F90];
  *(v36 + v39) = MEMORY[0x277D84F90];
  *(v36 + v37) = v40;
  v67 = v34;
  v41 = v34 | 2;
  v42 = *(v30 + 64);
  v43 = sub_219BDFA44();
  v44 = v66;
  (*(*(v43 - 8) + 56))(v66, 1, 1, v43);
  sub_218718690(v30 + 72, v81);
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v78 = v31;
  sub_2187B171C(v79, &v74, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  v62 = v26;
  if (v75)
  {
    sub_21875F93C(&v74, v76);
    *&v74 = v41;
    v45 = sub_2194DA78C(v76);
    v68 = v46;
    v48 = v47;
    __swift_destroy_boxed_opaque_existential_1(v76);
  }

  else
  {
    sub_2187B1CC0(&v74, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v45 = qword_280ED32D8;
    v49 = qword_280ED32E0;
    v48 = qword_280ED32E8;

    v68 = v49;
    sub_2188202A8(v49);
  }

  v73 = v41;
  v75 = sub_219BDD274();
  *&v74 = v42;
  v50 = v65;
  sub_21900E9C8(v44, v65, sub_21896FA3C);
  sub_2187B171C(v81, v76, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v51 = (*(v63 + 80) + 24) & ~*(v63 + 80);
  v52 = (v64 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 47) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  *(v54 + 16) = v42;
  sub_218B5E238(v50, v54 + v51, sub_21896FA3C);
  v55 = v54 + v52;
  v56 = v76[1];
  *v55 = v76[0];
  *(v55 + 16) = v56;
  *(v55 + 32) = v77;
  v57 = (v54 + v53);
  v58 = (v54 + ((v53 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v57 = 0;
  v57[1] = 0;
  v59 = v68;
  *v58 = v45;
  v58[1] = v59;
  v58[2] = v48;
  swift_retain_n();

  sub_2188202A8(v59);
  sub_2186CF94C(0);
  sub_21900E980(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v59, v48);
  sub_2187B1CC0(v79, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v81, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218D0E588(v44, sub_21896FA3C);
  v62(v69, v70);
  sub_218D0E588(v72, MEMORY[0x277D2FB40]);
  sub_218806FD0(&v74);

  return result;
}

uint64_t sub_21900E0A4(uint64_t a1)
{
  sub_21896F9B8(0);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v59 = (&v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for NewsActivity2.Article(0);
  MEMORY[0x28223BE20](v5 - 8);
  v63 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v64 = &v59 - v8;
  sub_21896FA3C(0);
  v65 = *(v9 - 8);
  v10 = *(v65 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v59 - v12;
  v62 = sub_219BDD944();
  MEMORY[0x28223BE20](v62);
  v15 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v61 = &v59 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v59 - v19;
  v21 = type metadata accessor for SharedWithYouFeedRouteModel(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21900E9C8(a1, v23, type metadata accessor for SharedWithYouFeedRouteModel);
  sub_218B5E238(v23, v20, MEMORY[0x277D2FB40]);
  v24 = *(v1 + 112);
  sub_2187B2C48(0);
  v26 = v25;
  v67 = swift_allocBox();
  v28 = v27;
  v29 = *(v26 + 48);
  sub_2187B2DA0(0);
  v31 = *(v30 + 48);
  v68 = v20;
  sub_21900E9C8(v20, v28, MEMORY[0x277D2FB40]);
  v32 = MEMORY[0x277D84F90];
  *(v28 + v31) = MEMORY[0x277D84F90];
  v33 = v13;
  *(v28 + v29) = v32;
  v34 = *(v1 + 64);
  v35 = sub_219BDFA44();
  (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
  sub_218718690(v1 + 72, v72);
  v71[5] = v24;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  v36 = sub_219BDC8C4();

  if (v36)
  {
    v37 = v28;
    v38 = v64;
    sub_21900E9C8(v37, v64, type metadata accessor for NewsActivity2.Article);
    v39 = v63;
    sub_21900E9C8(v38, v63, type metadata accessor for NewsActivity2.Article);

    sub_218B5E238(v39, v15, MEMORY[0x277D2FB40]);
    sub_218D0E588(v38, type metadata accessor for NewsActivity2.Article);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v40 = swift_projectBox();
      v41 = v59;
      sub_21900E9C8(v40, v59, sub_21896F9B8);
      v42 = v61;
      sub_218B5E238(v41 + *(v60 + 48), v61, MEMORY[0x277D2FB40]);
      __swift_destroy_boxed_opaque_existential_1(v41);

      sub_2186C66AC();
      v43 = sub_219BF6F44();
      sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_219C09BA0;
      v45 = sub_219BDD8C4();
      v47 = v46;
      *(v44 + 56) = MEMORY[0x277D837D0];
      *(v44 + 64) = sub_2186FC3BC();
      *(v44 + 32) = v45;
      *(v44 + 40) = v47;
      v48 = sub_219BF6214();
      sub_219BE5314("Unable to preview for blocked headline: %{public}@", 50, 2, &dword_2186C1000, v43, v48, v44);

      v49 = MEMORY[0x277D2FB40];
      sub_218D0E588(v42, MEMORY[0x277D2FB40]);
      sub_2187B1CC0(v72, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
      sub_218D0E588(v33, sub_21896FA3C);
      sub_218D0E588(v68, v49);

      return 0;
    }

    sub_218D0E588(v15, MEMORY[0x277D2FB40]);
  }

  v71[4] = v67 | 2;
  v71[3] = sub_219BDD274();
  v71[0] = v34;
  v50 = v66;
  sub_21900E9C8(v33, v66, sub_21896FA3C);
  sub_2187B171C(v72, v69, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v51 = (*(v65 + 80) + 24) & ~*(v65 + 80);
  v52 = (v10 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  *(v53 + 16) = v34;
  sub_218B5E238(v50, v53 + v51, sub_21896FA3C);
  v54 = v53 + v52;
  v55 = v69[1];
  *v54 = v69[0];
  *(v54 + 16) = v55;
  *(v54 + 32) = v70;
  v56 = (v53 + ((v52 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v56 = 0;
  v56[1] = 0;
  sub_2186CF94C(0);
  sub_21900E980(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  swift_retain_n();
  v58 = sub_219BEB454();

  sub_2187B1CC0(v72, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_218D0E588(v33, sub_21896FA3C);
  sub_218D0E588(v68, MEMORY[0x277D2FB40]);
  sub_218806FD0(v71);

  return v58;
}

uint64_t sub_21900E980(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21900E9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_21900EA30@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D76918];
  v5 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277D74418];
  v8 = [v6 systemFontOfSize:v3 weight:*MEMORY[0x277D74418]];
  v9 = [v5 scaledFontForFont_];

  [v9 pointSize];
  v11 = v10;

  if (v3 < v11 && (v12 = [objc_opt_self() sharedApplication], v13 = objc_msgSend(v12, sel_preferredContentSizeCategory), v12, LOBYTE(v12) = sub_219BF6944(), v13, (v12 & 1) != 0))
  {
    v14 = v4;
    v15 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
    v16 = v6;
    v17 = [v6 systemFontOfSize:v3 weight:v7];
    v18 = [v15 scaledFontForFont_];

    [v18 pointSize];
    v20 = v19;

    if (v3 * 1.15 >= v20)
    {
      v3 = v20;
    }

    else
    {
      v3 = v3 * 1.15;
    }
  }

  else
  {
    v16 = v6;
    v14 = v4;
  }

  v51 = *(v1 + 16);
  v52 = *(v1 + 8);
  v21 = *(v1 + 24);
  v22 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v23 = v16;
  v24 = [v16 systemFontOfSize:v21 weight:v7];
  v25 = [v22 &selRef:v24 setAlwaysBounceVertical:? + 2];

  [v25 pointSize];
  v50 = v26;

  v27 = *(v1 + 32);
  v28 = *(v1 + 40);
  v29 = *(v1 + 48);
  v30 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v31 = [v23 systemFontOfSize:v29 weight:v7];
  v32 = [v30 scaledFontForFont:v31 maximumPointSize:18.0];

  [v32 pointSize];
  v34 = v33;

  v35 = *(v1 + 56);
  v36 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v37 = [v23 systemFontOfSize:v35 weight:v7];
  v38 = [v36 scaledFontForFont_];

  [v38 pointSize];
  v40 = v39;

  v41 = *(v1 + 64);
  v42 = *(v1 + 72);
  v43 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  v44 = [v23 systemFontOfSize:v42 weight:v7];
  v45 = [v43 scaledFontForFont_];

  [v45 pointSize];
  v47 = v46;

  v48 = *(v1 + 80);
  *a1 = v3;
  *(a1 + 8) = v52;
  result = v50;
  *(a1 + 16) = v51;
  *(a1 + 24) = v50;
  *(a1 + 32) = v27;
  *(a1 + 40) = v28;
  *(a1 + 48) = v34;
  *(a1 + 56) = v40;
  *(a1 + 64) = v41;
  *(a1 + 72) = v47;
  *(a1 + 80) = v48;
  return result;
}

id sub_21900EE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v6 setLineHeightMultiple_];
  sub_219010B6C(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0EE20;
  v8 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v9 = objc_opt_self();
  v10 = v5[7];
  v11 = *MEMORY[0x277D74400];
  v12 = v8;
  v13 = [v9 systemFontOfSize:v10 weight:v11];
  v14 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  *(inited + 40) = v13;
  v15 = *MEMORY[0x277D740C0];
  *(inited + 64) = v14;
  *(inited + 72) = v15;
  v16 = objc_opt_self();
  v35 = v15;
  v17 = [v16 labelColor];
  v18 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 80) = v17;
  v19 = *MEMORY[0x277D740D0];
  *(inited + 104) = v18;
  *(inited + 112) = v19;
  v20 = MEMORY[0x277D85048];
  *(inited + 120) = v5[8];
  v21 = *MEMORY[0x277D74118];
  *(inited + 144) = v20;
  *(inited + 152) = v21;
  *(inited + 184) = sub_2186C6148(0, &qword_280E8DED8, 0x277D74240);
  *(inited + 160) = v6;
  v22 = v19;
  v23 = v21;
  v24 = v6;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v26 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_218819B04(&qword_280E8E118, type metadata accessor for Key, &unk_219C09A8C);
  v27 = sub_219BF5204();

  v28 = [v25 initWithString:v26 attributes:v27];

  sub_2187F3BD4();
  sub_219BF7064();
  if ((v29 & 1) == 0)
  {
    sub_219010BD0();
    sub_218819B04(&qword_27CC15020, sub_219010BD0, MEMORY[0x277D83D30]);

    v30 = sub_219BF6F24();
    v32 = v31;
    v33 = __swift_project_boxed_opaque_existential_1(v5 + 2, *(v5 + 5))[1];
    [v28 addAttribute:v35 value:v33 range:{v30, v32}];
  }

  return v28;
}

id sub_21900F270(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v3 setLineHeightMultiple_];
  sub_219010B6C(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0EE20;
  v5 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v6 = objc_opt_self();
  v7 = *(v2 + 80);
  v8 = *MEMORY[0x277D74418];
  v9 = v5;
  v10 = [v6 systemFontOfSize:v7 weight:v8];
  v11 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  *(inited + 40) = v10;
  v12 = *MEMORY[0x277D740C0];
  *(inited + 64) = v11;
  *(inited + 72) = v12;
  v13 = objc_opt_self();
  v14 = v12;
  v15 = [v13 labelColor];
  v16 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 80) = v15;
  v17 = *MEMORY[0x277D740D0];
  *(inited + 104) = v16;
  *(inited + 112) = v17;
  v18 = MEMORY[0x277D85048];
  *(inited + 120) = *(v2 + 96);
  v19 = *MEMORY[0x277D74118];
  *(inited + 144) = v18;
  *(inited + 152) = v19;
  *(inited + 184) = sub_2186C6148(0, &qword_280E8DED8, 0x277D74240);
  *(inited + 160) = v3;
  v20 = v17;
  v21 = v19;
  v22 = v3;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v23 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v24 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_218819B04(&qword_280E8E118, type metadata accessor for Key, &unk_219C09A8C);
  v25 = sub_219BF5204();

  v26 = [v23 initWithString:v24 attributes:v25];

  return v26;
}

void sub_21900F554(void *a1)
{
  v3 = [a1 string];
  v4 = sub_219BF5414();
  v6 = v5;

  v29[0] = 46;
  v29[1] = 0xE100000000000000;
  v28[2] = v29;
  sub_2190100CC(sub_2186D1358, v28, v4, v6);
  v8 = v7;
  sub_219BF5554();
  v9 = 0;
  if ((v8 & 1) == 0)
  {
    sub_219BF5564();
    v9 = sub_219BF5604();
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v11 = sub_219BF53D4();
  v12 = sub_219BF5554();
  if (__OFSUB__(v12, v9))
  {
    __break(1u);
  }

  else
  {
    [v10 addAttribute:*MEMORY[0x277D740E8] value:v11 range:{v9, v12 - v9}];

    v13 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
    [v13 setAlignment_];
    sub_219010B6C(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09EC0;
    v15 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v16 = objc_opt_self();
    v17 = *(v1 + 104);
    v18 = *MEMORY[0x277D74418];
    v19 = v15;
    v20 = [v16 systemFontOfSize:v17 weight:v18];
    v21 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
    *(inited + 40) = v20;
    v22 = *MEMORY[0x277D74118];
    *(inited + 64) = v21;
    *(inited + 72) = v22;
    *(inited + 104) = sub_2186C6148(0, &qword_280E8DED8, 0x277D74240);
    *(inited + 80) = v13;
    v23 = v22;
    v24 = v13;
    sub_2188195F4(inited);
    swift_setDeallocating();
    sub_218819588(0);
    swift_arrayDestroy();
    type metadata accessor for Key(0);
    sub_218819B04(&qword_280E8E118, type metadata accessor for Key, &unk_219C09A8C);
    v25 = sub_219BF5204();

    v26 = sub_219BF5554();

    if (!__OFSUB__(v26, 1))
    {
      [v10 addAttributes:v25 range:{0, v26 - 1}];

      sub_2186C6148(0, &unk_280E8E330, 0x277CCA898);
      v27 = v10;
      sub_219BF6774();

      return;
    }
  }

  __break(1u);
}

id sub_21900F920(uint64_t a1, uint64_t a2)
{
  sub_219010B6C(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v4 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v5 = objc_opt_self();
  v6 = *(v2 + 128);
  v7 = *MEMORY[0x277D743F8];
  v8 = v4;
  v9 = [v5 systemFontOfSize:v6 weight:v7];
  v10 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  *(inited + 40) = v9;
  v11 = *MEMORY[0x277D740C0];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 whiteColor];
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 80) = v14;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v15 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v16 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_218819B04(&qword_280E8E118, type metadata accessor for Key, &unk_219C09A8C);
  v17 = sub_219BF5204();

  v18 = [v15 initWithString:v16 attributes:v17];

  return v18;
}

uint64_t sub_21900FB70(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BDB624();
  MEMORY[0x28223BE20](v3 - 8);

  sub_219BDB614();
  sub_219BDB5B4();
  v4 = [objc_opt_self() systemFontOfSize:*(v2 + 128) weight:*MEMORY[0x277D743F8]];
  sub_218C8FBA4();
  sub_219BDB5C4();
  sub_219BECF34();
  sub_219010A04();
  return sub_219BDB5C4();
}

id sub_21900FC90(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  [v3 setLineHeightMultiple_];
  [v3 setAlignment_];
  if (*(v2 + 136))
  {
    v4 = -0.5;
  }

  else
  {
    v4 = 0.08;
  }

  sub_219010B6C(0, &qword_280E8B600, sub_218819588, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0EE20;
  v6 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v7 = objc_opt_self();
  v8 = *(v2 + 112);
  v9 = *MEMORY[0x277D74418];
  v10 = v6;
  v11 = [v7 systemFontOfSize:v8 weight:v9];
  v12 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  *(inited + 40) = v11;
  v13 = *MEMORY[0x277D740C0];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v14 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40))[2];
  v15 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  v16 = MEMORY[0x277D740D0];
  *(inited + 80) = v14;
  v17 = *v16;
  *(inited + 104) = v15;
  *(inited + 112) = v17;
  v18 = MEMORY[0x277D839F8];
  *(inited + 120) = v4;
  v19 = *MEMORY[0x277D74118];
  *(inited + 144) = v18;
  *(inited + 152) = v19;
  *(inited + 184) = sub_2186C6148(0, &qword_280E8DED8, 0x277D74240);
  *(inited + 160) = v3;
  v20 = v13;
  v21 = v14;
  v22 = v17;
  v23 = v19;
  v24 = v3;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v26 = sub_219BF53D4();
  type metadata accessor for Key(0);
  sub_218819B04(&qword_280E8E118, type metadata accessor for Key, &unk_219C09A8C);
  v27 = sub_219BF5204();

  v28 = [v25 initWithString:v26 attributes:v27];

  return v28;
}

uint64_t sub_21900FF8C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_21901000C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_219010060(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2190100CC(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_219BF5574();
    v13[0] = sub_219BF5654();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

void sub_2190101D0(void *a1)
{
  if ([a1 attribute:*MEMORY[0x277D74118] atIndex:0 effectiveRange:0])
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5 = v3;
  v6 = v4;
  if (!*(&v4 + 1))
  {
    goto LABEL_14;
  }

  sub_2186C6148(0, &unk_280E8E510, 0x277D74248);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  if ([a1 attribute:*MEMORY[0x277D740A8] atIndex:0 effectiveRange:0])
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5 = v3;
  v6 = v4;
  if (!*(&v4 + 1))
  {

LABEL_14:
    sub_218806FD0(&v5);
    return;
  }

  sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  if (swift_dynamicCast())
  {
    [v2 lineHeightMultiple];
    [v2 lineHeight];
    [v2 lineHeight];
  }
}

void sub_2190103A8(void *a1)
{
  v2 = [a1 textContainer];
  [v2 setLineBreakMode_];

  [a1 setUserInteractionEnabled_];
  [a1 setSelectable_];
  [a1 setEditable_];
  [a1 setScrollEnabled_];
  v3 = [a1 attributedText];
  if (v3)
  {
    v4 = v3;
    sub_2190101D0(v3);
    v6 = v5;

    [a1 textContainerInset];
    [a1 setTextContainerInset_];
    [a1 textContainerInset];
    [a1 setTextContainerInset_];
    [a1 textContainerInset];
    [a1 setTextContainerInset_];
    [a1 textContainerInset];
    [a1 setTextContainerInset_];
    v7 = [a1 textContainer];
    [v7 setLineFragmentPadding_];
  }

  else
  {
    __break(1u);
  }
}

void sub_219010540(void *a1)
{
  v2 = [a1 textContainer];
  [v2 setMaximumNumberOfLines_];

  v3 = [a1 textContainer];
  [v3 setLineBreakMode_];

  v4 = [a1 textContainer];
  [v4 setLineFragmentPadding_];

  [a1 setTextContainerInset_];
  [a1 setEditable_];
  [a1 setSelectable_];
  [a1 setScrollEnabled_];
  [a1 setShowsVerticalScrollIndicator_];
  [a1 setShowsHorizontalScrollIndicator_];
  v5 = [objc_opt_self() clearColor];
  [a1 setBackgroundColor_];
}

uint64_t sub_2190106C4(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x277D83D88];
  sub_219010B6C(0, &qword_280E8D9C0, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  sub_219010B6C(0, &qword_280EE9D90, MEMORY[0x277CC8C40], v4);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_219BF6E34();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BF6ED4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF6EB4();
  (*(v12 + 104))(v14, *MEMORY[0x277D74FD8], v11);
  sub_219BF6E44();
  v19 = sub_219BDB5A4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v10, a2, v19);
  (*(v20 + 56))(v10, 0, 1, v19);
  sub_219BF6E74();
  [a1 setPreferredBehavioralStyle_];
  (*(v16 + 16))(v7, v18, v15);
  (*(v16 + 56))(v7, 0, 1, v15);
  sub_219BF6EE4();
  return (*(v16 + 8))(v18, v15);
}

unint64_t sub_219010A04()
{
  result = qword_27CC15010;
  if (!qword_27CC15010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15010);
  }

  return result;
}

void sub_219010A58(void *a1, char a2)
{
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    if (a2)
    {
      [a1 setEffect_];
      v5 = [objc_opt_self() darkGrayColor];
      [a1 setBackgroundColor_];

      return;
    }

    goto LABEL_8;
  }

  if ((a2 & 1) == 0)
  {
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  v4 = [objc_opt_self() effectWithStyle_];
LABEL_9:
  [a1 setEffect_];

  [a1 setBackgroundColor_];
}

void sub_219010B6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_219010BD0()
{
  if (!qword_27CC15018)
  {
    v0 = sub_219BF5EE4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15018);
    }
  }
}

uint64_t type metadata accessor for ArticleListAudioPlaylistFeedGroup(uint64_t a1)
{
  result = qword_27CC15028;
  if (!qword_27CC15028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219010CD0()
{
  v1 = *(v0 + *(type metadata accessor for ArticleListAudioPlaylistFeedGroup(0) + 24));
  if (v1 >> 62)
  {
    sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);

    v4 = sub_219BF7534();

    return v4;
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v2 = sub_218CFA4E0(v1 & 0xFFFFFFFFFFFFFF8);

    if (v2)
    {
      return v1;
    }

    else
    {
      return v1 & 0xFFFFFFFFFFFFFF8 | 1;
    }
  }
}

uint64_t sub_219010D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219010EF4(&qword_27CC11278, &unk_219C531C8);

  return sub_219BF1174();
}

uint64_t sub_219010E00(uint64_t a1)
{
  v2 = sub_219010EF4(&qword_27CC11278, &unk_219C531C8);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219010EF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArticleListAudioPlaylistFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_219010F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = a3;
  v5 = sub_219BE15B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE3D94();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE46E4();
  if (v14)
  {
    v26 = v5;
    v27 = v6;
    v15 = a2;
    v25 = v13;
    *v12 = v13;
    *(v12 + 1) = v14;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *(v12 + 3) = 0u;
    (*(v10 + 104))(v12, *MEMORY[0x277D34DF8], v9);

    v16 = sub_2191F999C(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_2191F999C((v17 > 1), v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    (*(v10 + 32))(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v12, v9);
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_2186C709C(0, &qword_280EE8B10, MEMORY[0x277D30188], 1);
    v19 = swift_allocObject();
    v19[2] = v16;
    v19[3] = v15;
    v19[4] = v28;

    swift_unknownObjectRetain();
    sub_219BE1E14();

    if (v30)
    {
      sub_2186CB1F0(&v29, v31);
      __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
      sub_219BDD274();
      v20 = sub_219BE1E24();
      v21 = v27;
      if (v20)
      {

        v22 = v26;
        (*(v21 + 104))(v8, *MEMORY[0x277D2F510], v26);
        sub_219BE15A4();
        (*(v21 + 8))(v8, v22);

        sub_219BDD224();

        __swift_project_boxed_opaque_existential_1(v31, v31[3]);

        sub_219BDE854();

        __swift_destroy_boxed_opaque_existential_1(v31);
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
    if (qword_27CC08548 != -1)
    {
      swift_once();
    }

    v23 = qword_27CCD8A10;
    v24 = sub_219BF61F4();
    sub_219BE5314("Missing landingPageArticleID for the onboarding step landingPage", 64, 2, &dword_2186C1000, v23, v24, MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2190113B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25[0] = a4;
  v25[1] = a3;
  sub_218769FD0(0, &qword_280EE6350, MEMORY[0x277D35078]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v25 - v6;
  sub_218769FD0(0, &qword_280EE8AE0, MEMORY[0x277D30210]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - v9;
  v11 = sub_219BDDD44();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *MEMORY[0x277D301F8];
  v16 = sub_219BDE914();
  (*(*(v16 - 8) + 104))(v10, v15, v16);
  v17 = *MEMORY[0x277D30200];
  v18 = sub_219BDE924();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v10, v17, v18);
  (*(v19 + 56))(v10, 0, 1, v18);
  v20 = sub_219BE4394();
  (*(*(v20 - 8) + 56))(v7, 1, 1, v20);

  sub_219BDDD34();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = type metadata accessor for OnboardingLandingPageCloseActionHandler();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtC7NewsUI239OnboardingLandingPageCloseActionHandler_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v25[0];
  swift_unknownObjectWeakAssign();
  v26.receiver = v22;
  v26.super_class = v21;
  v23 = objc_msgSendSuper2(&v26, sel_init);
  sub_219012020();
  sub_219BE1B94();

  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_219011738(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_27CC15058, MEMORY[0x277D35368], 0);
  return sub_219BE1BA4();
}

void *sub_219011934()
{
  v1 = sub_219BDD0A4();
  v16 = *(v1 - 8);
  v17 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE15B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_219BDD274();
  result = sub_219BE1E24();
  v18 = result;
  if (result)
  {
    v9 = *(v5 + 104);
    v9(v7, *MEMORY[0x277D2F510], v4);
    sub_219BE15A4();
    v10 = *(v5 + 8);
    v10(v7, v4);
    sub_219BDD224();

    v9(v7, *MEMORY[0x277D2F4D8], v4);
    sub_219BDD094();
    v10(v7, v4);
    sub_219BDD204();
    (*(v16 + 8))(v3, v17);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    sub_2186C709C(0, qword_280EB8F70, &protocol descriptor for ChannelPickerMainModuleType, 1);
    result = sub_219BE1E34();
    if (v20)
    {
      sub_2186CB1F0(&v19, v21);
      v11 = v22;
      v12 = v23;
      __swift_project_boxed_opaque_existential_1(v21, v22);
      v19 = 0uLL;
      v13 = (*(v12 + 8))(&v19, 1, v11, v12);
      v14 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      [v14 setModalInPresentation_];

      __swift_destroy_boxed_opaque_existential_1(v21);
      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219011C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a3;
  v23 = a2;
  v4 = sub_219BDD0A4();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE15B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_219BDD274();
  if (sub_219BE1E24())
  {
    v11 = *(v8 + 104);
    v11(v10, *MEMORY[0x277D2F510], v7);
    sub_219BE15A4();
    v12 = *(v8 + 8);
    v12(v10, v7);
    sub_219BDD224();

    v11(v10, *MEMORY[0x277D2F4D8], v7);
    sub_219BDD094();
    v12(v10, v7);
    sub_219BDD204();
    (*(v20 + 8))(v6, v21);
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    sub_2186C709C(0, qword_280EB8F70, &protocol descriptor for ChannelPickerMainModuleType, 1);
    v13 = swift_allocObject();
    v14 = v22;
    *(v13 + 16) = v23;
    *(v13 + 24) = v14;
    swift_unknownObjectRetain();
    sub_219BE1E14();

    if (v26)
    {
      sub_2186CB1F0(&v25, v27);
      v15 = v28;
      v16 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      v25 = xmmword_219C14A10;
      v17 = (*(v16 + 8))(&v25, 1, v15, v16);
      v18 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
      [v18 setModalInPresentation_];

      __swift_destroy_boxed_opaque_existential_1(v27);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_219012020()
{
  result = qword_27CC15068;
  if (!qword_27CC15068)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC15068);
  }

  return result;
}

uint64_t sub_219012084(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = type metadata accessor for RecipeBoxFeedContentConfig(0);
  v2[9] = swift_task_alloc();
  v3 = sub_219BDB954();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  sub_218B6B398(0);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2190121AC, 0, 0);
}

uint64_t sub_2190121AC()
{
  v1 = [*(v0[7] + 24) appConfiguration];
  v0[15] = v1;
  if (([v1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_recipeBoxFeedConfigurationResourceId)) != 0)
  {
    v3 = v0[14];
    v4 = v0[7];
    v5 = v2;
    sub_219BF5414();

    __swift_project_boxed_opaque_existential_1((v4 + 32), *(v4 + 56));
    sub_219BF5CE4();
    *v3 = v6;
    v7 = *MEMORY[0x277D6CA48];
    v8 = sub_219BE1B34();
    v9 = *(v8 - 8);
    (*(v9 + 104))(v3, v7, v8);
    (*(v9 + 56))(v3, 0, 1, v8);
    v0[16] = sub_219BF2954();

    sub_21897DAD8(v3);
    v10 = swift_task_alloc();
    v0[17] = v10;
    *v10 = v0;
    v10[1] = sub_219012460;

    return MEMORY[0x2821D23D8](v0 + 4);
  }

  else
  {
    sub_2190130EC();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_219012460()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_2190128E8;
  }

  else
  {

    v2 = sub_21901257C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21901257C()
{
  v1 = v0[4];
  v2 = [v1 fileURL];
  if (v2)
  {
    v3 = v0[18];
    v4 = v0[12];
    v5 = v0[13];
    v6 = v0[10];
    v7 = v0[11];
    v8 = v2;
    sub_219BDB8B4();

    (*(v7 + 32))(v5, v4, v6);
    v9 = sub_219BDB974();
    v11 = v3;
    if (!v3)
    {
      v20 = v9;
      v21 = v10;
      sub_219013030();
      sub_219BE1974();
      v22 = v0[9];
      v23 = v0[6];
      (*(v0[11] + 8))(v0[13], v0[10]);
      sub_2186C6190(v20, v21);
      swift_unknownObjectRelease();
      sub_219013088(v22, v23);
      *(v23 + *(type metadata accessor for RecipeBoxFeedConfigFetchResult(0) + 20)) = v1;

      v18 = v0[1];
      goto LABEL_8;
    }

    (*(v0[11] + 8))(v0[13], v0[10]);
  }

  else
  {
    sub_2190130EC();
    v11 = swift_allocError();
    *v12 = 2;
    swift_willThrow();
  }

  if (qword_280E8D7B8 != -1)
  {
    swift_once();
  }

  v13 = qword_280F616E8;
  v14 = sub_219BF61F4();
  sub_2186F20D4(0);
  v15 = swift_allocObject();
  v0[2] = 0;
  *(v15 + 16) = xmmword_219C09BA0;
  v0[3] = 0xE000000000000000;
  v0[5] = v11;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v16 = v0[2];
  v17 = v0[3];
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_2186FC3BC();
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  sub_219BE5314("Failed to fetch recipe box feed service config. Error=%{public}@)", 65, 2, &dword_2186C1000, v13, v14, v15);

  swift_willThrow();
  swift_unknownObjectRelease();

  v18 = v0[1];
LABEL_8:

  return v18();
}

uint64_t sub_2190128E8()
{

  v1 = v0[18];
  if (qword_280E8D7B8 != -1)
  {
    swift_once();
  }

  v2 = qword_280F616E8;
  v3 = sub_219BF61F4();
  sub_2186F20D4(0);
  v4 = swift_allocObject();
  v0[2] = 0;
  *(v4 + 16) = xmmword_219C09BA0;
  v0[3] = 0xE000000000000000;
  v0[5] = v1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v5 = v0[2];
  v6 = v0[3];
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_219BE5314("Failed to fetch recipe box feed service config. Error=%{public}@)", 65, 2, &dword_2186C1000, v2, v3, v4);

  swift_willThrow();
  swift_unknownObjectRelease();

  v7 = v0[1];

  return v7();
}

uint64_t sub_219012AA4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = type metadata accessor for RecipeBoxFeedContentConfig(0);
  v3[8] = swift_task_alloc();
  v4 = sub_219BDB954();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v5 = sub_219BDAF64();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219012BF4, 0, 0);
}

uint64_t sub_219012BF4()
{
  (*(v0[10] + 16))(v0[11], v0[5], v0[9]);
  sub_219BDAF44();
  v1 = [objc_opt_self() sharedSession];
  v0[15] = sub_219BE2E24();

  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_219012D00;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_219012D00()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_219012F94;
  }

  else
  {
    v2 = sub_219012E34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219012E34()
{
  v1 = v0[17];
  v2 = v0[2];
  v3 = v0[3];
  sub_219013030();
  sub_219BE1974();
  v4 = v0[13];
  if (v1)
  {
    (*(v4 + 8))(v0[14], v0[12]);
    sub_2186C6190(v2, v3);
  }

  else
  {
    v6 = v0[8];
    v7 = v0[4];
    (*(v4 + 8))();
    sub_2186C6190(v2, v3);
    sub_219013088(v6, v7);
    *(v7 + *(type metadata accessor for RecipeBoxFeedConfigFetchResult(0) + 20)) = 0;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_219012F94()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_219013030()
{
  result = qword_27CC15070;
  if (!qword_27CC15070)
  {
    type metadata accessor for RecipeBoxFeedContentConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15070);
  }

  return result;
}

uint64_t sub_219013088(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeBoxFeedContentConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2190130EC()
{
  result = qword_27CC15080;
  if (!qword_27CC15080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15080);
  }

  return result;
}

unint64_t sub_219013154()
{
  result = qword_27CC15088;
  if (!qword_27CC15088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15088);
  }

  return result;
}

uint64_t sub_2190131A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for SportsManagementModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for SportsManagementModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_219013258()
{
  type metadata accessor for SportsManagementViewController();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &qword_27CC15098, &protocol descriptor for SportsManagementStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC150A0, &protocol descriptor for SportsManagementRouterType, 1);
  sub_219BE2914();
  type metadata accessor for SportsManagementRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC150A8, &protocol descriptor for SportsManagementEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC150B0, &protocol descriptor for SportsManagementInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC150B8, &protocol descriptor for SportsManagementTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC150C0, &protocol descriptor for SportsManagementDataManagerType, 0);
  sub_219BE2914();
  sub_2186C709C(0, qword_280EB66D0, &protocol descriptor for SubscriptionServiceObserver, 0);
  sub_219BE19C4();

  sub_218987380(0);
  sub_219BE2904();

  type metadata accessor for SportsManagementBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC150C8, &protocol descriptor for SportsManagementSectionFactoryType, 1);
  sub_219BE2914();

  sub_219017B78(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_21901840C(0);
  sub_219BE2904();

  sub_219017C64(0);
  sub_219BE2904();

  sub_2190180A8(0);
  sub_219BE2904();

  type metadata accessor for SportsManagementBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2190184F8(0);
  sub_219BE2904();

  sub_2186C6148(0, &qword_280E8E828, 0x277D75B40);
  sub_219BE2904();

  sub_219017DA0(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_219017F1C(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219018194(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219018320(0);
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SportsManagementBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SportsManagementBlueprintViewHeaderProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_219018720(0, &qword_27CC15180, MEMORY[0x277D6E388]);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_219018634(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  sub_219BE2914();

  return result;
}

char *sub_219013BBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ED7980, &protocol descriptor for SearchModuleType, 1);
  result = sub_219BE1E14();
  if (!v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_2186CB1F0(&v14, v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15098, &protocol descriptor for SportsManagementStylerType, 1);
  result = sub_219BE1E34();
  if (!v15)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC150A8, &protocol descriptor for SportsManagementEventHandlerType, 0);
  result = sub_219BE1E34();
  v3 = v13[0];
  if (!v13[0])
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v13[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190184F8(0);
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    v6 = sub_2195083CC();
    v7 = __swift_mutable_project_boxed_opaque_existential_1(&v14, v15);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = sub_219018A94(*v10, v3, v4, v5, v6);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(&v14);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v12;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_219013EA0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219018634(0);
  if (sub_219BE1E24())
  {
    *(v2 + OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_selectionProvider + 8) = sub_21879D2B0(&unk_27CC151D0, sub_219018634, MEMORY[0x277D6E7F8]);
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

void *sub_219013F68@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v11 = sub_21879D2B0(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for SportsManagementStyler();
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
    a2[4] = &off_282A99040;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2190141C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v26);
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
  sub_2186CF94C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA8020, &protocol descriptor for SportsOnboardingFlowManagerType, 1);
  result = sub_219BE1E34();
  if (v25)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (&v23[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for SportsOnboardingFlowManager(0);
    v23[3] = v13;
    v23[4] = &off_282A31BD0;
    v23[0] = v12;
    v14 = type metadata accessor for SportsManagementRouter();
    v15 = swift_allocObject();
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v13);
    v17 = MEMORY[0x28223BE20](v16);
    v19 = (&v23[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v20 + 16))(v19, v17);
    v21 = *v19;
    v15[13] = v13;
    v15[14] = &off_282A31BD0;
    v15[10] = v21;
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(v26, (v15 + 3));
    v15[8] = v5;
    v15[9] = v6;
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    a2[3] = v14;
    a2[4] = &off_282A6A4A0;
    *a2 = v15;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_219014498(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_219014518@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC150B0, &protocol descriptor for SportsManagementInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC150A0, &protocol descriptor for SportsManagementRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC150B8, &protocol descriptor for SportsManagementTrackerType, 1);
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
    v17 = sub_219018DF0(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A89C08;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2190147C8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC150C0, &protocol descriptor for SportsManagementDataManagerType, 0);
  result = sub_219BE1E34();
  v5 = v18;
  if (!v18)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219017B78(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsManagementBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  v12 = v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v13)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_219BDD274();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v16 = v8;
  v17 = sub_21879D2B0(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  *&v15 = v9;
  sub_219BE89E4();
  swift_allocObject();
  v10 = sub_219BE8994();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC99B0, &protocol descriptor for SportsSyncManagerType, 1);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC9550, &protocol descriptor for TagReorderServiceType, 1);
  result = sub_219BE1E34();
  if (v14)
  {
    sub_219018A00(0);
    v11 = swift_allocObject();
    v11[3] = 0;
    swift_unknownObjectWeakInit();
    v11[6] = v5;
    v11[7] = v12;
    v11[4] = v6;
    v11[5] = v7;
    v11[8] = v10;
    sub_2186CB1F0(&v15, (v11 + 9));
    sub_2186CB1F0(&v13, (v11 + 14));
    *(v5 + 24) = &off_282A79B10;
    result = swift_unknownObjectWeakAssign();
    *a2 = v11;
    a2[1] = &off_282A79B20;
    return result;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_219014AEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_219BE1DE4();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for SportsManagementTracker();
      result = swift_allocObject();
      *(result + 16) = v5;
      *(result + 24) = v6;
      a2[3] = v7;
      a2[4] = &off_282A79320;
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

void *sub_219014BE0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EA1BE0, &protocol descriptor for SportsManagementConfigManagerType, 1);
  result = sub_219BE1E34();
  if (!v58)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FE20, MEMORY[0x277D34428], 1);
  result = sub_219BE1E34();
  if (!v56)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB6AF0, &protocol descriptor for SportsOnboardingManagerType, 1);
  result = sub_219BE1E34();
  if (!v54)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  if (!v51)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EA8010, &protocol descriptor for SportsRecommendationManagerType, 1);
  result = sub_219BE1E34();
  if (!v50)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v36 = v52;
  v37 = v51;
  v38 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21901899C();
  result = sub_219BE1E24();
  v35 = result;
  if (result)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v34[2] = v34;
    v6 = MEMORY[0x28223BE20](v5);
    v8 = (v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
    v34[1] = v34;
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v8;
    v16 = *v13;
    v17 = type metadata accessor for SportsManagementConfigManager();
    v48[3] = v17;
    v48[4] = &off_282AA00C0;
    v48[0] = v15;
    v18 = type metadata accessor for SportsRecommendationManager();
    v46 = v18;
    v47 = &off_282A790B8;
    v45[0] = v16;
    type metadata accessor for SportsManagementDataManager();
    v19 = swift_allocObject();
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v48, v17);
    v21 = MEMORY[0x28223BE20](v20);
    v23 = (v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
    v26 = MEMORY[0x28223BE20](v25);
    v28 = (v34 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28, v26);
    v30 = *v23;
    v31 = *v28;
    v43 = v17;
    v44 = &off_282AA00C0;
    v41 = &off_282A790B8;
    *&v42 = v30;
    v40 = v18;
    *&v39 = v31;
    v19[3] = 0;
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(&v42, (v19 + 4));
    sub_2186CB1F0(&v55, (v19 + 9));
    sub_2186CB1F0(&v53, (v19 + 14));
    v32 = v36;
    v19[19] = v37;
    v19[20] = v32;
    sub_2186CB1F0(&v39, (v19 + 21));
    v19[26] = v35;
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v48);
    __swift_destroy_boxed_opaque_existential_1(v49);
    result = __swift_destroy_boxed_opaque_existential_1(v57);
    v33 = v38;
    *v38 = v19;
    v33[1] = &off_282A63E70;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_219015184(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EC30E0, &protocol descriptor for SubscriptionServiceType, 0);
  result = sub_219BE1E34();
  if (v6)
  {
    ObjectType = swift_getObjectType();
    v5 = swift_unknownObjectRetain();
    sub_219AE093C(v5, v6, ObjectType, v2);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_21901526C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC150C8, &protocol descriptor for SportsManagementSectionFactoryType, 1);
  result = sub_219BE1E34();
  if (!v27)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC30E0, &protocol descriptor for SubscriptionServiceType, 0);
  result = sub_219BE1E34();
  v3 = v24;
  if (!v24)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (v22)
  {
    v6 = v23;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = *v10;
    v13 = type metadata accessor for SportsManagementSectionFactory();
    v21[3] = v13;
    v21[4] = &off_282A40BE0;
    v21[0] = v12;
    type metadata accessor for SportsManagementBlueprintModifierFactory();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v13);
    v16 = MEMORY[0x28223BE20](v15);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    v14[5] = v13;
    v14[6] = &off_282A40BE0;
    v14[2] = v20;
    v14[7] = v3;
    v14[8] = v4;
    v14[9] = v5;
    v14[10] = v6;
    __swift_destroy_boxed_opaque_existential_1(v21);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219015544@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
  result = sub_219BE1E34();
  if (v5)
  {
    v4 = type metadata accessor for SportsManagementSectionFactory();
    result = swift_allocObject();
    result[2] = v5;
    result[3] = v6;
    a2[3] = v4;
    a2[4] = &off_282A40BE0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2190155F0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987380(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219017C64(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_219017B78(0);
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

void sub_2190156D0(uint64_t a1, void *a2)
{
  sub_2190187C4(0);
  swift_allocObject();
  sub_219BE96E4();
  sub_2190188B0(0);
  swift_allocObject();
  sub_21879D2B0(&qword_27CC151F0, sub_2190187C4, MEMORY[0x277D6E730]);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_21901840C(0);
  if (sub_219BE1E24())
  {
    swift_allocObject();
    sub_21879D2B0(&unk_27CC151F8, sub_21901840C, MEMORY[0x277D6E7C0]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_21901584C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190180A8(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsManagementBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (result)
  {
    sub_21901840C(0);
    swift_allocObject();
    return sub_219BE9984();
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_219015990(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219017DA0(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_219017C64(0);
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

uint64_t sub_219015ABC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void *sub_219015B00(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9A3C0, &protocol descriptor for SportsTagLayoutAttributesFactoryType, 1);
  result = sub_219BE1E34();
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280E9A130, &protocol descriptor for TitleViewLayoutAttributesFactoryType, 1);
    result = sub_219BE1E34();
    if (v36)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      v30[2] = v30;
      v4 = MEMORY[0x28223BE20](v3);
      v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6, v4);
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      v30[1] = v30;
      v9 = MEMORY[0x28223BE20](v8);
      v11 = (v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11, v9);
      v13 = *v6;
      v14 = *v11;
      v15 = type metadata accessor for SportsTagLayoutAttributesFactory();
      v34[3] = v15;
      v34[4] = &off_282A9D098;
      v34[0] = v13;
      v16 = type metadata accessor for TitleViewLayoutAttributesFactory();
      v32 = v16;
      v33 = &off_282A72438;
      v31[0] = v14;
      type metadata accessor for SportsManagementBlueprintLayoutBuilder();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v34, v15);
      v19 = MEMORY[0x28223BE20](v18);
      v21 = (v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21, v19);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v24 = MEMORY[0x28223BE20](v23);
      v26 = (v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v27 + 16))(v26, v24);
      v28 = *v21;
      v29 = *v26;
      v17[5] = v15;
      v17[6] = &off_282A9D098;
      v17[2] = v28;
      v17[10] = v16;
      v17[11] = &off_282A72438;
      v17[7] = v29;
      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v35);
      __swift_destroy_boxed_opaque_existential_1(v37);
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

void *sub_219015F0C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987380(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219017DA0(0);
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
  sub_219018720(0, &qword_27CC15180, MEMORY[0x277D6E388]);
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
    sub_21879D2B0(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_2190184F8(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_219016228()
{
  v0 = objc_allocWithZone(MEMORY[0x277D6ED30]);

  return [v0 initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
}

uint64_t sub_219016274(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &qword_280E8E828, 0x277D75B40);
  result = sub_219BE1DE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219017F1C(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219018194(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219018320(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219017DA0(0);
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2190163E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219017DA0(0);
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

uint64_t sub_219016498()
{
  v0 = sub_219BE80A4();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v1);
  return sub_219BE9574();
}

void sub_219016568(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987380(0);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190180A8(0);
  if (!sub_219BE1E24())
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsManagementBlueprintViewCellProvider();
  sub_218718690(a1, v8);
  v4 = swift_allocObject();
  sub_2186CB1F0(v8, v4 + 16);
  v5 = sub_219BE1E04();

  if (v5)
  {
    *&v8[0] = v3;
    sub_219017F1C(0);
    v7 = objc_allocWithZone(v6);
    sub_219BE9374();
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_2190166CC(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E828, 0x277D75B40);
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

void *sub_2190167DC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  result = sub_219BE1DF4();
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    sub_219BEA274();
    sub_219BE9384();

    __swift_destroy_boxed_opaque_existential_1(v4);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    type metadata accessor for SportsManagementViewController();
    result = sub_219BE1E24();
    if (result)
    {
      return sub_219BE9394();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2190168F8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987380(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190180A8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SportsManagementBlueprintViewHeaderProvider();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219018720(0, &qword_27CC15180, MEMORY[0x277D6E388]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE53A0, MEMORY[0x277D6D8E0], 0);
  result = sub_219BE1E34();
  if (!v6)
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

  sub_21879D2B0(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800, MEMORY[0x277D6E170], 1);
  result = sub_219BE1E34();
  if (v5)
  {
    sub_219018194(0);
    v4 = objc_allocWithZone(v3);
    return sub_219BE8FF4();
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_219016B9C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9004();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219018634(0);
  if (sub_219BE1E24())
  {
    sub_21879D2B0(&unk_27CC151D0, sub_219018634, MEMORY[0x277D6E7F8]);
  }

  sub_219BE9014();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2190184F8(0);
  sub_219BE1E24();
  sub_219BE8FE4();
  v3 = sub_219BE8FD4();
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementViewController();
  v5 = sub_219BE1E24();
  if (!v5)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v6 = v5;
  [v4 addDelegate_];
}

uint64_t sub_219016D50(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987380(0);
  result = sub_219BE1E24();
  if (result)
  {
    sub_219018320(0);
    return sub_219BE9804();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219016DC8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementViewController();
  result = sub_219BE1E24();
  if (result)
  {
    sub_219BE97F4();
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_219018634(0);
    if (sub_219BE1E24())
    {
      sub_21879D2B0(&unk_27CC151D0, sub_219018634, MEMORY[0x277D6E7F8]);
    }

    return sub_219BE97E4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219016EBC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ED02C0, &protocol descriptor for SportsTagStylerType, 0);
  result = sub_219BE1E34();
  v3 = v22;
  if (v22)
  {
    v4 = v23;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280EC9998, &protocol descriptor for SportsTagRendererType, 1);
    result = sub_219BE1E34();
    if (v21)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for SportsTagRenderer();
      v19[3] = v11;
      v19[4] = &off_282A4A4D8;
      v19[0] = v10;
      type metadata accessor for SportsManagementBlueprintViewCellProvider();
      v12 = swift_allocObject();
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v11);
      v14 = MEMORY[0x28223BE20](v13);
      v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v17 + 16))(v16, v14);
      v18 = *v16;
      v12[9] = v11;
      v12[10] = &off_282A4A4D8;
      v12[6] = v18;
      v12[3] = 0;
      swift_unknownObjectWeakInit();
      v12[4] = v3;
      v12[5] = v4;
      __swift_destroy_boxed_opaque_existential_1(v19);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_219017140(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A52E30;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void *sub_2190171D4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC9540, &protocol descriptor for TitleViewRendererType, 1);
  result = sub_219BE1E34();
  if (v18)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v3 = MEMORY[0x28223BE20](v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for TitleViewRenderer();
    v16[3] = v8;
    v16[4] = &off_282A6AF80;
    v16[0] = v7;
    type metadata accessor for SportsManagementBlueprintViewHeaderProvider();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[7] = v8;
    v9[8] = &off_282A6AF80;
    v9[3] = 0;
    v9[4] = v15;
    swift_unknownObjectWeakInit();
    __swift_destroy_boxed_opaque_existential_1(v16);
    __swift_destroy_boxed_opaque_existential_1(v17);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2190173F0(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SportsManagementViewController();
  v3 = sub_219BE1E24();
  if (v3)
  {
    *(v2 + 24) = &off_282A52E20;
    v4 = v3;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219017484(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  MEMORY[0x28223BE20](v6 - 8);
  sub_219018720(0, &unk_27CC151C0, MEMORY[0x277D6E380]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218987380(0);
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    (*(v9 + 104))(v11, *MEMORY[0x277D6E378], v8);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v14[1] = v13;
    sub_219018720(0, &qword_27CC15180, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219017710(void *a1)
{
  sub_2187F2110(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219018634(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_21879D2B0(&qword_27CC151B8, sub_219018634, MEMORY[0x277D6E800]);
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

uint64_t sub_21901784C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219017DA0(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218987380(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_219018634(0);
      swift_allocObject();
      return sub_219BE9AB4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_219017960(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219017DA0(0);
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

uint64_t sub_219017A1C(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2190184F8(0);
  v8 = sub_219BE1E24();
  if (v8)
  {
    v9 = v8;
    v10 = sub_21879D2B0(a3, sub_2190184F8, a4);
    v8 = v9;
  }

  else
  {
    v10 = 0;
  }

  return a5(v8, v10);
}

uint64_t sub_219017AD0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190184F8(0);
  v4 = v3;
  result = sub_219BE1E24();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_21879D2B0(&qword_27CC151A0, sub_2190184F8, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_219017B78(uint64_t a1)
{
  if (!qword_27CC150D0)
  {
    sub_218987380(255);
    sub_219017C64(255);
    sub_21879D2B0(&qword_27CC15100, sub_218987380, MEMORY[0x277D6D8C8]);
    sub_21879D2B0(&qword_27CC15158, sub_219017C64, MEMORY[0x277D6D960]);
    v1 = sub_219BE6F54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC150D0);
    }
  }
}

void sub_219017C64(uint64_t a1)
{
  if (!qword_27CC150D8)
  {
    type metadata accessor for SportsManagementSectionDescriptor(255);
    type metadata accessor for SportsManagementModel(255);
    sub_219017DA0(255);
    sub_21879D2B0(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor, &unk_219C21994);
    sub_21879D2B0(&qword_27CC0AF90, type metadata accessor for SportsManagementModel, &unk_219CB52F8);
    sub_21879D2B0(&qword_27CC15150, sub_219017DA0, MEMORY[0x277D6DC88]);
    v1 = sub_219BE72E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC150D8);
    }
  }
}

void sub_219017DA0(uint64_t a1)
{
  if (!qword_27CC150E0)
  {
    sub_2186C6148(255, &qword_280E8E828, 0x277D75B40);
    sub_219017F1C(255);
    sub_219018194(255);
    sub_219018320(255);
    type metadata accessor for SportsManagementViewController();
    sub_21879D2B0(&qword_27CC15138, sub_219017F1C, MEMORY[0x277D6E568]);
    sub_21879D2B0(&qword_27CC15140, sub_219018194, MEMORY[0x277D6E3D8]);
    sub_21879D2B0(&qword_27CC15148, sub_219018320, MEMORY[0x277D6E748]);
    v1 = sub_219BE7BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC150E0);
    }
  }
}

void sub_219017F1C(uint64_t a1)
{
  if (!qword_27CC150F0)
  {
    sub_218987380(255);
    sub_2190180A8(255);
    type metadata accessor for SportsManagementBlueprintViewCellProvider();
    type metadata accessor for SportsManagementViewController();
    sub_21879D2B0(&qword_27CC15100, sub_218987380, MEMORY[0x277D6D8C8]);
    sub_21879D2B0(&qword_27CC15108, sub_2190180A8, MEMORY[0x277D6DF38]);
    sub_21879D2B0(&qword_27CC15110, type metadata accessor for SportsManagementBlueprintViewCellProvider, &unk_219C29B5C);
    sub_21879D2B0(&qword_27CC15118, type metadata accessor for SportsManagementViewController, &unk_219C49CB8);
    v1 = sub_219BE93A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC150F0);
    }
  }
}

void sub_2190180A8(uint64_t a1)
{
  if (!qword_27CC150F8)
  {
    type metadata accessor for SportsManagementLayoutSectionDescriptor(255);
    type metadata accessor for SportsManagementLayoutModel(255);
    sub_21879D2B0(&qword_27CC0AFA0, type metadata accessor for SportsManagementLayoutSectionDescriptor, &unk_219C8DC20);
    sub_21879D2B0(&qword_27CC0AFA8, type metadata accessor for SportsManagementLayoutModel, &unk_219CC98FC);
    v1 = sub_219BE8564();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC150F8);
    }
  }
}

void sub_219018194(uint64_t a1)
{
  if (!qword_27CC15120)
  {
    sub_218987380(255);
    sub_2190180A8(255);
    type metadata accessor for SportsManagementBlueprintViewHeaderProvider();
    type metadata accessor for SportsManagementViewController();
    sub_21879D2B0(&qword_27CC15100, sub_218987380, MEMORY[0x277D6D8C8]);
    sub_21879D2B0(&qword_27CC15108, sub_2190180A8, MEMORY[0x277D6DF38]);
    sub_21879D2B0(&qword_27CC15128, type metadata accessor for SportsManagementBlueprintViewHeaderProvider, &unk_219C9415C);
    sub_21879D2B0(&qword_27CC15118, type metadata accessor for SportsManagementViewController, &unk_219C49CB8);
    v1 = sub_219BE9024();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15120);
    }
  }
}

void sub_219018320(uint64_t a1)
{
  if (!qword_27CC15130)
  {
    sub_218987380(255);
    type metadata accessor for SportsManagementViewController();
    sub_21879D2B0(&qword_27CC15100, sub_218987380, MEMORY[0x277D6D8C8]);
    sub_21879D2B0(&qword_27CC15118, type metadata accessor for SportsManagementViewController, &unk_219C49CB8);
    v1 = sub_219BE9814();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15130);
    }
  }
}

void sub_21901840C(uint64_t a1)
{
  if (!qword_27CC15160)
  {
    sub_2190180A8(255);
    type metadata accessor for SportsManagementBlueprintLayoutBuilder();
    sub_21879D2B0(&qword_27CC15108, sub_2190180A8, MEMORY[0x277D6DF38]);
    sub_21879D2B0(&qword_27CC15168, type metadata accessor for SportsManagementBlueprintLayoutBuilder, &unk_219C78F90);
    v1 = sub_219BE9994();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15160);
    }
  }
}

void sub_2190184F8(uint64_t a1)
{
  if (!qword_27CC15170)
  {
    sub_218987380(255);
    sub_219017DA0(255);
    type metadata accessor for SportsManagementViewController();
    sub_21879D2B0(&qword_27CC15100, sub_218987380, MEMORY[0x277D6D8C8]);
    sub_21879D2B0(&qword_27CC15150, sub_219017DA0, MEMORY[0x277D6DC88]);
    sub_21879D2B0(&qword_27CC15118, type metadata accessor for SportsManagementViewController, &unk_219C49CB8);
    v1 = sub_219BE8774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15170);
    }
  }
}

void sub_219018634(uint64_t a1)
{
  if (!qword_27CC15188)
  {
    sub_219017DA0(255);
    sub_218987380(255);
    sub_21879D2B0(&qword_27CC15150, sub_219017DA0, MEMORY[0x277D6DC88]);
    sub_21879D2B0(&unk_27CC15190, sub_218987380, MEMORY[0x277D6D8C0]);
    v1 = sub_219BE9AD4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15188);
    }
  }
}

void sub_219018720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_218987380(255);
    v7 = v6;
    v8 = sub_21879D2B0(&qword_27CC15100, sub_218987380, MEMORY[0x277D6D8C8]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2190187C4(uint64_t a1)
{
  if (!qword_27CC151E0)
  {
    type metadata accessor for SportsManagementSectionDescriptor(255);
    type metadata accessor for SportsManagementModel(255);
    sub_21879D2B0(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor, &unk_219C21994);
    sub_21879D2B0(&qword_27CC0AF90, type metadata accessor for SportsManagementModel, &unk_219CB52F8);
    v1 = sub_219BE96F4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC151E0);
    }
  }
}

void sub_2190188B0(uint64_t a1)
{
  if (!qword_27CC151E8)
  {
    type metadata accessor for SportsManagementSectionDescriptor(255);
    type metadata accessor for SportsManagementModel(255);
    sub_21879D2B0(&qword_27CC0F9E0, type metadata accessor for SportsManagementSectionDescriptor, &unk_219C21994);
    sub_21879D2B0(&qword_27CC0AF90, type metadata accessor for SportsManagementModel, &unk_219CB52F8);
    v1 = sub_219BE8FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC151E8);
    }
  }
}

unint64_t sub_21901899C()
{
  result = qword_280E8DD80;
  if (!qword_280E8DD80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8DD80);
  }

  return result;
}

void sub_219018A00(uint64_t a1)
{
  if (!qword_27CC15208)
  {
    v2 = type metadata accessor for SportsManagementBlueprintModifierFactory();
    v3 = sub_21879D2B0(&qword_27CC15210, type metadata accessor for SportsManagementBlueprintModifierFactory, &unk_219C2048C);
    v5 = type metadata accessor for SportsManagementInteractor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27CC15208);
    }
  }
}

char *sub_219018A94(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = type metadata accessor for SportsManagementStyler();
  v30[3] = v10;
  v30[4] = &off_282A99040;
  v30[0] = a1;
  v11 = type metadata accessor for SportsManagementViewController();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v30, v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v16;
  v29[3] = v10;
  v29[4] = &off_282A99040;
  v29[0] = v18;
  swift_unknownObjectWeakInit();
  *&v12[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_selectionProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_overscrollView;
  *&v12[v19] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  sub_218718690(v29, &v12[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_styler]);
  v20 = &v12[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_eventHandler];
  *v20 = a2;
  *(v20 + 1) = a3;
  *&v12[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_blueprintViewController] = a4;
  *&v12[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_searchController] = a5;
  v28.receiver = v12;
  v28.super_class = v11;
  swift_unknownObjectRetain();
  v21 = a4;
  v22 = a5;
  v23 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
  *(*&v23[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_eventHandler] + 24) = &off_282A52E38;
  swift_unknownObjectWeakAssign();
  v24 = *&v23[OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_blueprintViewController];
  v25 = v23;
  v26 = v24;
  sub_219BE8744();

  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v25;
}

void *sub_219018CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for SportsManagementRouter();
  v15[4] = &off_282A6A4A0;
  v15[0] = a3;
  v14[3] = type metadata accessor for SportsManagementTracker();
  v14[4] = &off_282A79320;
  v14[0] = a4;
  a5[3] = 0;
  swift_unknownObjectWeakInit();
  a5[4] = a1;
  a5[5] = a2;
  sub_218718690(v15, (a5 + 6));
  sub_218718690(v14, (a5 + 11));
  ObjectType = swift_getObjectType();
  v11 = *(a2 + 16);
  swift_unknownObjectRetain();

  v11(v12, &off_282A89BD8, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_219018DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = type metadata accessor for SportsManagementRouter();
  v27 = &off_282A6A4A0;
  v25[0] = a3;
  v23 = v8;
  v24 = &off_282A79320;
  v22[0] = a4;
  type metadata accessor for SportsManagementEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_219018CF8(a1, a2, *v13, *v18, v9);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

uint64_t sub_219018FFC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_searchContentType);
  if (v1 <= 1)
  {
    if (!v1 || v1 == 1)
    {
      goto LABEL_11;
    }
  }

  else if (v1 == 2 || v1 == 4 || v1 == 3)
  {
LABEL_11:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = [objc_opt_self() bundleForClass_];
    v4 = sub_219BDB5E4();

    return v4;
  }

  result = sub_219BF7974();
  __break(1u);
  return result;
}

void sub_219019490()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewDidLoad);
  v1 = sub_219BF65B4();
  sub_219018FFC();
  v2 = sub_219BF53D4();

  [v1 setTitle_];

  v3 = *&v0[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_blueprintViewController];
  [v0 addChildViewController_];
  v4 = [v0 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = v4;
  v6 = [v3 view];
  if (!v6)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v6;
  [v5 addSubview_];

  [v3 didMoveToParentViewController_];
  v8 = [v3 view];
  if (!v8)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v0 view];
  if (v10)
  {
    v11 = v10;
    [v10 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    [v9 setFrame_];
    v20 = [v0 traitCollection];
    sub_21901AD94();

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_2190196B0()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, sel_viewWillLayoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_blueprintViewController];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = result;
  result = [v0 view];
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  [v3 setFrame_];
  v13 = [v0 traitCollection];
  v14 = [v13 userInterfaceIdiom];

  result = [v0 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v15 = result;
  if (v14)
  {
    v16 = 20.0;
  }

  else
  {
    v16 = 18.0;
  }

  [result layoutMargins];
  v18 = v17;

  return [v1 setAdditionalSafeAreaInsets_];
}

double sub_219019880(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_219BE7C14();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel_viewWillAppear_, a1 & 1, v7);
  swift_getObjectType();
  sub_219BE7544();
  sub_219BE5CC4();
  v12[1] = sub_219BE5CA4();
  *v9 = sub_219018FFC();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x277D6DCB0], v5);
  sub_219BE7C24();
  sub_21901A9F8(&qword_280EE4E50, MEMORY[0x277D6DCC8], MEMORY[0x277D6DCB8]);
  sub_219BE7514();
  (*(v6 + 8))(v9, v5);

  return result;
}

uint64_t sub_219019BD4()
{
  v0 = sub_219BEB384();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BEB394();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE8644();
  (*(v5 + 104))(v7, *MEMORY[0x277D6EC88], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6ECA8], v0);
  sub_219BE6BD4();

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

double sub_219019DAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_eventHandler);
  sub_21901AC44(0, &qword_27CC13A70, MEMORY[0x277D6EC60]);
  sub_21901A9F8(&unk_27CC13A78, type metadata accessor for SearchMoreModel, &unk_219CB2584);
  v6 = sub_219BEB304();
  __swift_project_boxed_opaque_existential_1(v5 + 13, v5[16]);
  sub_218F3D394();
  v7 = v5[5];
  ObjectType = swift_getObjectType();
  (*(v7 + 56))(a2, 0, v6, ObjectType, v7);
  if (*(v2 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_refreshRecentSearch) == 1)
  {
    *(v2 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_refreshRecentSearch) = 0;
    v10 = v2 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_searchRequestData;
    v12 = *(v2 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_searchRequestData);
    v11 = *(v3 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_searchRequestData + 8);
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v14 = *(v10 + 24);
      v15 = v5[7];
      v16 = swift_getObjectType();
      v17 = sub_219BF5494();
      v19 = v18;
      v20 = *(v15 + 16);

      v20(v17, v19, v14, v16, v15);
    }
  }

  return result;
}

void sub_219019F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a3, v5, v7);
  v10 = (*(v6 + 88))(v9, v5);
  if (v10 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v9, v5);
LABEL_3:
    v11 = *(*(v3 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v11 + 40))(ObjectType, v11);
    return;
  }

  if (v10 == *MEMORY[0x277D6E928])
  {
    v13 = *(*(v3 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_eventHandler) + 40);
    v14 = swift_getObjectType();
    (*(v13 + 32))(v14, v13);
  }

  else
  {
    if (v10 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v10 != *MEMORY[0x277D6E978])
    {
      if (v10 == *MEMORY[0x277D6E930])
      {
        goto LABEL_3;
      }

      if (v10 != *MEMORY[0x277D6E958])
      {
        if (v10 == *MEMORY[0x277D6E970])
        {
          sub_219BE8664();
          v15 = sub_219BE7BC4();

          v16 = [v15 collectionViewLayout];

          [v16 invalidateLayout];
          sub_219BE8664();
          v17 = sub_219BE7BC4();

          [v17 reloadData];
        }

        else
        {
          (*(v6 + 8))(v9, v5);
        }
      }
    }
  }
}

void sub_21901A238(uint64_t a1, char a2)
{
  v3 = sub_219BEB384();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BEB394();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2)
  {
    sub_219BE8644();
    if (qword_280E92A48 != -1)
    {
      swift_once();
    }

    v11 = sub_219BF01B4();
    v12 = __swift_project_value_buffer(v11, qword_280F61940);
    v10[3] = v11;
    v10[4] = sub_21901A9F8(&qword_280E91000, MEMORY[0x277D32BC8], MEMORY[0x277D32BC0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10);
    (*(*(v11 - 8) + 16))(boxed_opaque_existential_1, v12, v11);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v16 = sub_219BF54E4();
    v18 = v17;

    v10[5] = v16;
    v10[6] = v18;
    (*(v8 + 104))(v10, *MEMORY[0x277D6EC80], v7);
    (*(v4 + 104))(v6, *MEMORY[0x277D6ECB0], v3);
    sub_219BE6BD4();

    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_21901A590()
{
  sub_218985EAC(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F834(0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      (*(v2 + 32))(v4, v7, v1);
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_219BE5F84();
      v10 = sub_219BF4FC4();
      swift_unknownObjectRelease();

      (*(v2 + 8))(v4, v1);
      return v10;
    }

    sub_2186EB308(0);
    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    sub_218F40F48(0);
LABEL_8:
    (*(*(v12 - 8) + 8))(v7, v12);
    return 0;
  }

  sub_218F41028(0);
  sub_21901AD38(&v7[*(v9 + 48)]);
  return 0;
}

uint64_t sub_21901A8B8(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

uint64_t sub_21901A9F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21901AA40(uint64_t a1)
{
  sub_21901AC44(0, &qword_27CC13A70, MEMORY[0x277D6EC60]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = *(v1 + OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_eventHandler);
  sub_219BE86A4();
  v13[0] = v13[1];
  sub_2189877E8(0);
  sub_21901A9F8(&qword_27CC0B878, sub_2189877E8, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  sub_21901A9F8(&unk_27CC13A78, type metadata accessor for SearchMoreModel, &unk_219CB2584);
  v9 = sub_219BEB304();
  (*(v5 + 8))(v7, v4);
  __swift_project_boxed_opaque_existential_1(v8 + 13, v8[16]);
  sub_218F3D394();
  v10 = v8[5];
  ObjectType = swift_getObjectType();
  return (*(v10 + 56))(a1, 1, v9, ObjectType, v10);
}

void sub_21901AC44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchMoreSectionDescriptor(255);
    v8[1] = type metadata accessor for SearchMoreModel(255);
    v8[2] = sub_21901A9F8(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor, &unk_219C702A4);
    v8[3] = sub_21901A9F8(&qword_27CC0B890, type metadata accessor for SearchMoreModel, &unk_219CB2414);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21901AD38(uint64_t a1)
{
  v2 = type metadata accessor for SearchMoreFeedGapLocation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21901AD94()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_styler];
  sub_218718690(&v0[OBJC_IVAR____TtC7NewsUI224SearchMoreViewController_styler], v12);
  v3 = __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v4 = [v0 view];
  if (v4)
  {
    v5 = v4;
    v6 = *(*__swift_project_boxed_opaque_existential_1((*v3 + 16), *(*v3 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    [v5 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v12);
    v7 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    sub_219BE8664();
    v8 = sub_219BE7BC4();

    [v8 setBackgroundColor_];
    [v8 setAlwaysBounceVertical_];

    v9 = __swift_project_boxed_opaque_existential_1(v2, *(v2 + 3));
    v10 = [v1 navigationItem];
    v11 = *(*__swift_project_boxed_opaque_existential_1((*v9 + 16), *(*v9 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 24);
    sub_219BEDA04();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21901AF54(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v6 = sub_219BF0BD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = [objc_msgSend(a1 backingTag];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_2186DC258(0, &qword_280EE6AE0, sub_2186DC224, MEMORY[0x277D6CF30]);
    (*(v7 + 16))(&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v6);
    v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
    v11 = swift_allocObject();
    *(v11 + 2) = v3;
    *(v11 + 3) = v9;
    *(v11 + 4) = a2;
    (*(v7 + 32))(&v11[v10], &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

    return sub_219BE2F54();
  }

  else
  {
    if (qword_280EE5F50 != -1)
    {
      swift_once();
    }

    v13 = sub_219BE5434();
    __swift_project_value_buffer(v13, qword_280F62598);
    v14 = sub_219BF61F4();
    v15 = a1;
    v16 = sub_219BE5414();

    if (os_log_type_enabled(v16, v14))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25 = v18;
      *v17 = 136315138;
      v19 = [objc_msgSend(v15 &selRef_configData + 3)];
      swift_unknownObjectRelease();
      v20 = sub_219BF5414();
      v22 = v21;

      v23 = sub_2186D1058(v20, v22, &v25);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_2186C1000, v16, v14, "Failed to retrieve backing tag %s as Puzzle Type.", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x21CECF960](v18, -1, -1);
      MEMORY[0x21CECF960](v17, -1, -1);
    }

    v25 = MEMORY[0x277D84F90];
    sub_2186DC258(0, &qword_280EE6AE0, sub_2186DC224, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_21901B2F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_218D42644;

  return sub_21901B49C(a3);
}

uint64_t sub_21901B3A4(uint64_t a1)
{
  v4 = *(sub_219BF0BD4() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2187608D4;

  return sub_21901B2F4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_21901B49C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_21901B4BC, 0, 0);
}

uint64_t sub_21901B4BC()
{
  v18 = v0;
  if (qword_280EE5F50 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_280F62598);
  swift_unknownObjectRetain();
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    v7 = [v4 identifier];
    v8 = sub_219BF5414();
    v10 = v9;

    v11 = sub_2186D1058(v8, v10, &v17);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_2186C1000, v2, v3, "TagFeedPoolService: Forcing stats recalculation for puzzle type %s...", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x21CECF960](v6, -1, -1);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  v12 = v0[3];
  v14 = v12[24];
  v13 = v12[25];
  __swift_project_boxed_opaque_existential_1(v12 + 21, v14);
  v15 = swift_task_alloc();
  v0[4] = v15;
  *v15 = v0;
  v15[1] = sub_21901B6D4;

  return MEMORY[0x282192A48](v14, v13);
}

uint64_t sub_21901B6D4()
{

  return MEMORY[0x2822009F8](sub_21901B7D0, 0, 0);
}

uint64_t sub_21901B7D0()
{
  v1 = v0[3];
  v2 = v1[24];
  v3 = v1[25];
  __swift_project_boxed_opaque_existential_1(v1 + 21, v2);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_21901B890;
  v5 = v0[2];

  return MEMORY[0x282192A40](v5, v2, v3);
}

uint64_t sub_21901B890(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_21901BA38(uint64_t *a1, void *a2)
{
  sub_21901BAEC();
  v3 = sub_219BF5904();
  [a2 updateSections_];
}

uint64_t sub_21901BAA4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_21901BAEC()
{
  result = qword_27CC0DF58;
  if (!qword_27CC0DF58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CC0DF58);
  }

  return result;
}

uint64_t sub_21901BB38(__int128 *a1, __int128 *a2, __int128 *a3)
{
  sub_21901CD98(0, &qword_280E8C0B0, MEMORY[0x277D6CCA0], MEMORY[0x277D84560]);
  v7 = *(sub_219BE2644() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09BA0;
  v10 = (v9 + v8);
  *v10 = 0x6E656D6563616C70;
  v10[1] = 0xE900000000000074;
  (*(v7 + 104))();
  sub_219897824(MEMORY[0x277D84F90]);
  v11 = sub_219BE2684();

  *(v3 + 16) = v11;
  sub_2186CB1F0(a1, v3 + 24);
  sub_2186CB1F0(a2, v3 + 64);
  sub_2186CB1F0(a3, v3 + 104);
  return v3;
}

uint64_t sub_21901BCD4()
{
  v0 = sub_219BE34A4();
  v111 = *(v0 - 8);
  v112 = v0;
  MEMORY[0x28223BE20](v0);
  v110 = &v103 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = MEMORY[0x277D83D88];
  sub_21901CD98(0, &qword_27CC15290, MEMORY[0x277D31910], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v107 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v114 = &v103 - v6;
  MEMORY[0x28223BE20](v7);
  v117 = &v103 - v8;
  v9 = sub_219BE3C14();
  v126 = *(v9 - 8);
  v127 = v9;
  MEMORY[0x28223BE20](v9);
  v104 = (&v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v105 = &v103 - v12;
  MEMORY[0x28223BE20](v13);
  v106 = (&v103 - v14);
  MEMORY[0x28223BE20](v15);
  v109 = &v103 - v16;
  MEMORY[0x28223BE20](v17);
  v113 = (&v103 - v18);
  MEMORY[0x28223BE20](v19);
  v116 = &v103 - v20;
  v21 = sub_219BE36A4();
  v22 = *(v21 - 8);
  v119 = v21;
  v120 = v22;
  MEMORY[0x28223BE20](v21);
  v108 = &v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v115 = &v103 - v25;
  MEMORY[0x28223BE20](v26);
  v118 = &v103 - v27;
  v28 = sub_219BE37A4();
  v122 = *(v28 - 8);
  v123 = v28;
  MEMORY[0x28223BE20](v28);
  v121 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21901CD98(0, &unk_280EE6660, MEMORY[0x277D31550], v2);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v103 - v31;
  v33 = sub_219BE3514();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v125 = &v103 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_219BE22B4();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v103 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BE22F4();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v103 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = NFInternalBuild();
  if (result)
  {
    sub_21901CD98(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
    sub_219BE2594();
    sub_219BE22D4();
    (*(v41 + 8))(v43, v40);
    sub_219BE22C4();
    v46 = v45;
    (*(v37 + 8))(v39, v36);
    if (!v46)
    {
      return 0;
    }

    sub_219BE34E4();
    v47 = v34;
    v48 = v33;
    if ((*(v34 + 48))(v32, 1, v33) == 1)
    {
      sub_21901CE44(v32, &unk_280EE6660, MEMORY[0x277D31550]);
      return 0;
    }

    v49 = v125;
    (*(v34 + 32))(v125, v32, v48);
    sub_21901CD98(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_219C09BA0;
    sub_21901CDFC(&qword_280EE6670, 255, MEMORY[0x277D31550], MEMORY[0x277D31580]);
    v51 = sub_219BF7894();
    v53 = v52;
    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 64) = sub_2186FC3BC();
    *(v50 + 32) = v51;
    *(v50 + 40) = v53;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v54 = sub_219BF6F44();
    v55 = sub_219BF6214();
    sub_219BE5314("Triggering action for placement: %{public}@", 43, 2, &dword_2186C1000, v54, v55, v50);

    v56 = v121;
    sub_219BE34C4();
    v58 = v122;
    v57 = v123;
    v59 = (*(v122 + 88))(v56, v123);
    if (v59 == *MEMORY[0x277D316A0])
    {
      v60 = v124;
      __swift_project_boxed_opaque_existential_1(v124 + 13, v124[16]);
      v61 = v118;
      sub_219BE3924();
      v62 = v117;
      sub_219BE3694();
      v64 = v126;
      v63 = v127;
      if ((*(v126 + 48))(v62, 1, v127) != 1)
      {
        v65 = v116;
        (*(v64 + 32))(v116, v62, v63);
        v66 = v113;
        (*(v64 + 16))(v113, v65, v63);
        if ((*(v64 + 88))(v66, v63) == *MEMORY[0x277D31908])
        {
          (*(v64 + 96))(v66, v63);
          v67 = *v66;
          v68 = v60[12];
          v122 = v60[11];
          v123 = v68;
          v124 = __swift_project_boxed_opaque_existential_1(v60 + 8, v122);
          sub_21901CEB4(0, &unk_280E8E5A0, &unk_280E8E590, 0x277CEE488);
          v70 = *(v69 + 48);
          v71 = v110;
          *v110 = v67;
          v72 = v49;
          v73 = *MEMORY[0x277D31660];
          v74 = sub_219BE3794();
          (*(*(v74 - 8) + 104))(&v71[v70], v73, v74);
          v75 = v111;
          v76 = v112;
          (*(v111 + 104))(v71, *MEMORY[0x277D31448], v112);
          v77 = v67;
          v78 = v72;
          sub_219BE3A44();

          (*(v75 + 8))(v71, v76);
          (*(v64 + 8))(v116, v63);
          (*(v120 + 8))(v118, v119);
LABEL_19:
          (*(v47 + 8))(v78, v48);
          return 1;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v64 = v126;
      v63 = v127;
      v79 = v124;
      if (v59 == *MEMORY[0x277D316A8])
      {
        __swift_project_boxed_opaque_existential_1(v124 + 13, v124[16]);
        v61 = v115;
        sub_219BE3924();
        v62 = v114;
        sub_219BE3694();
        if ((*(v64 + 48))(v62, 1, v63) != 1)
        {
          v65 = v109;
          (*(v64 + 32))(v109, v62, v63);
          v66 = v106;
          (*(v64 + 16))(v106, v65, v63);
          if ((*(v64 + 88))(v66, v63) == *MEMORY[0x277D31908])
          {
            (*(v64 + 96))(v66, v63);
            v80 = *v66;
            v81 = v79[7];
            v122 = v79[6];
            v123 = v81;
            v124 = __swift_project_boxed_opaque_existential_1(v79 + 3, v122);
            sub_21901CEB4(0, &unk_280E8E5A0, &unk_280E8E590, 0x277CEE488);
            v83 = *(v82 + 48);
            v84 = v110;
            *v110 = v80;
            v85 = v49;
            v86 = *MEMORY[0x277D31660];
            v87 = sub_219BE3794();
            (*(*(v87 - 8) + 104))(&v84[v83], v86, v87);
            v88 = v111;
            v89 = v112;
            (*(v111 + 104))(v84, *MEMORY[0x277D31448], v112);
            v90 = v80;
            v78 = v85;
            sub_219BE38A4();

            (*(v88 + 8))(v84, v89);
            (*(v64 + 8))(v109, v63);
            (*(v120 + 8))(v115, v119);
            goto LABEL_19;
          }

          goto LABEL_20;
        }
      }

      else
      {
        if (v59 != *MEMORY[0x277D31698])
        {
          (*(v58 + 8))(v56, v57);
          goto LABEL_21;
        }

        __swift_project_boxed_opaque_existential_1(v124 + 13, v124[16]);
        v61 = v108;
        sub_219BE3924();
        v62 = v107;
        sub_219BE3694();
        if ((*(v64 + 48))(v62, 1, v63) != 1)
        {
          v65 = v105;
          (*(v64 + 32))(v105, v62, v63);
          v66 = v104;
          (*(v64 + 16))(v104, v65, v63);
          if ((*(v64 + 88))(v66, v63) == *MEMORY[0x277D31900])
          {
            (*(v64 + 96))(v66, v63);
            v91 = *v66;
            v92 = v79[7];
            v122 = v79[6];
            v123 = v92;
            v124 = __swift_project_boxed_opaque_existential_1(v79 + 3, v122);
            sub_21901CEB4(0, &qword_27CC1DCC0, &qword_27CC15298, 0x277CEE4C8);
            v94 = *(v93 + 48);
            v95 = v110;
            *v110 = v91;
            v96 = v49;
            v97 = *MEMORY[0x277D31660];
            v98 = sub_219BE3794();
            (*(*(v98 - 8) + 104))(&v95[v94], v97, v98);
            v99 = v111;
            v100 = v112;
            (*(v111 + 104))(v95, *MEMORY[0x277D31440], v112);
            v101 = v91;
            v78 = v96;
            sub_219BE38A4();

            (*(v99 + 8))(v95, v100);
            (*(v64 + 8))(v105, v63);
            (*(v120 + 8))(v108, v119);
            goto LABEL_19;
          }

LABEL_20:
          v102 = *(v64 + 8);
          v102(v65, v63);
          (*(v120 + 8))(v61, v119);
          v102(v66, v63);
          goto LABEL_21;
        }
      }
    }

    (*(v120 + 8))(v61, v119);
    sub_21901CE44(v62, &qword_27CC15290, MEMORY[0x277D31910]);
LABEL_21:
    (*(v47 + 8))(v49, v48);
    return 0;
  }

  return result;
}