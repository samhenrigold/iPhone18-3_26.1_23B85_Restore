unint64_t sub_2194F586C()
{
  result = qword_27CC1B3C8;
  if (!qword_27CC1B3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B3C8);
  }

  return result;
}

void sub_2194F58C0()
{
  if (!qword_27CC1B3D0)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1B3D0);
    }
  }
}

unint64_t sub_2194F5910()
{
  result = qword_27CC1B3D8;
  if (!qword_27CC1B3D8)
  {
    sub_2194F58C0();
    sub_2194F5988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B3D8);
  }

  return result;
}

unint64_t sub_2194F5988()
{
  result = qword_27CC1B3E0;
  if (!qword_27CC1B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B3E0);
  }

  return result;
}

unint64_t sub_2194F5A10()
{
  result = qword_27CC1B3E8;
  if (!qword_27CC1B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B3E8);
  }

  return result;
}

unint64_t sub_2194F5A68()
{
  result = qword_280EE51E0;
  if (!qword_280EE51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE51E0);
  }

  return result;
}

unint64_t sub_2194F5AC0()
{
  result = qword_280EE51E8;
  if (!qword_280EE51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE51E8);
  }

  return result;
}

uint64_t sub_2194F5B14(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696F507472617473 && a2 == 0xEA0000000000746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F50646E65 && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F7453726F6C6F63 && a2 == 0xEA00000000007370)
  {

    return 2;
  }

  else
  {
    v5 = sub_219BF78F4();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_2194F5C3C(void *a1)
{
  sub_2194F60F4(0, &qword_280E8CFF0, sub_2194F60A0, &_s9ColorStopV10CodingKeysON, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194F60A0();
  sub_219BF7B34();
  if (!v1)
  {
    v11[15] = 0;
    sub_219BF76F4();
    sub_2186F8B0C();
    sub_219BF6D54();
    v11[14] = 1;
    sub_219BF7714();
    v2 = v10;
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

double sub_2194F5E6C(void *a1)
{
  sub_2194F60F4(0, &qword_280E8CFF8, sub_2194F604C, &_s5PointV10CodingKeysON, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194F604C();
  sub_219BF7B34();
  if (!v1)
  {
    v13 = 0;
    sub_219BF7714();
    v2 = v9;
    v12 = 1;
    sub_219BF7714();
    (*(v6 + 8))(v8, v5);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

unint64_t sub_2194F604C()
{
  result = qword_280EE51D8;
  if (!qword_280EE51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE51D8);
  }

  return result;
}

unint64_t sub_2194F60A0()
{
  result = qword_280EE51B8;
  if (!qword_280EE51B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE51B8);
  }

  return result;
}

void sub_2194F60F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2194F6180()
{
  result = qword_27CC1B400;
  if (!qword_27CC1B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B400);
  }

  return result;
}

unint64_t sub_2194F61D8()
{
  result = qword_27CC1B408;
  if (!qword_27CC1B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B408);
  }

  return result;
}

unint64_t sub_2194F6230()
{
  result = qword_280EE51A8;
  if (!qword_280EE51A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE51A8);
  }

  return result;
}

unint64_t sub_2194F6288()
{
  result = qword_280EE51B0;
  if (!qword_280EE51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE51B0);
  }

  return result;
}

unint64_t sub_2194F62E0()
{
  result = qword_280EE51C8;
  if (!qword_280EE51C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE51C8);
  }

  return result;
}

unint64_t sub_2194F6338()
{
  result = qword_280EE51D0;
  if (!qword_280EE51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE51D0);
  }

  return result;
}

uint64_t FCTagType.description.getter(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 0x6E6F6974636573;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        return 0x6575737369;
      }

      return 0x2D6E776F6E6B6E75;
    }

    return 1953720684;
  }

  else
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 0x6C656E6E616863;
      }

      return 0x2D6E776F6E6B6E75;
    }

    return 0x6369706F74;
  }
}

uint64_t sub_2194F6464@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = sub_219BF21B4();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v60 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BF1364();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v59 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v58 - v9;
  MEMORY[0x28223BE20](v11);
  v63 = &v58 - v12;
  MEMORY[0x28223BE20](v13);
  v64 = &v58 - v14;
  sub_2194F72F4(0);
  v16 = v15;
  MEMORY[0x28223BE20](v15);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194F7358(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v23 = MEMORY[0x28223BE20](v22).n128_u64[0];
  v25 = &v58 - v24;
  v26 = [v1 groupTitleColor];
  if (v26)
  {
    v27 = v26;
    sub_219BF6C84();

    v28 = *(v6 + 56);
    v28(v25, 0, 1, v5);
  }

  else
  {
    v28 = *(v6 + 56);
    v28(v25, 1, 1, v5);
  }

  v29 = [v2 groupDarkStyleTitleColor];
  if (v29)
  {
    v30 = v29;
    sub_219BF6C84();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v28(v21, v31, 1, v5);
  v32 = *(v16 + 48);
  sub_2194F73B0(v25, v18);
  sub_2194F73B0(v21, &v18[v32]);
  v33 = *(v6 + 48);
  if (v33(v18, 1, v5) == 1)
  {
    v62 = v32;
    v34 = [v2 identifier];
    if (!v34)
    {
      sub_219BF5414();
      v34 = sub_219BF53D4();
    }

    v35 = [objc_opt_self() nu:v34 safeColorForIdentifier:?];

    sub_2194F7414(0);
    v36 = swift_allocBox();
    v60 = v37;
    v61 = v36;
    v38 = objc_opt_self();
    v39 = [v38 traitCollectionWithUserInterfaceStyle_];
    v40 = [v35 resolvedColorWithTraitCollection_];

    sub_219BF6D34();
    v41 = [v38 traitCollectionWithUserInterfaceStyle_];
    v42 = [v35 resolvedColorWithTraitCollection_];

    sub_219BF6D34();
    sub_2194F7478();
    sub_219BF35F4();

    *v65 = v61;
    (*(v6 + 104))();
    sub_2194F74D0(&v18[v62]);
    v43 = v18;
    return sub_2194F74D0(v43);
  }

  v44 = v33(&v18[v32], 1, v5);
  v45 = *(v6 + 32);
  v46 = v64;
  v45(v64, v18, v5);
  if (v44 == 1)
  {
    sub_2194F7414(0);
    v47 = swift_allocBox();
    v58 = v48;
    v59 = v47;
    (*(v6 + 16))(v63, v46, v5);
    v50 = v60;
    v49 = v61;
    v51 = v62;
    (*(v61 + 104))(v60, *MEMORY[0x277D33788], v62);
    sub_219BF1354();
    (*(v49 + 8))(v50, v51);
    sub_2194F7478();
    sub_219BF35F4();
    (*(v6 + 8))(v46, v5);
    *v65 = v59;
    (*(v6 + 104))();
    v43 = &v18[v32];
    return sub_2194F74D0(v43);
  }

  v53 = &v18[v32];
  v54 = v63;
  v45(v63, v53, v5);
  sub_2194F7414(0);
  v55 = swift_allocBox();
  v56 = *(v6 + 16);
  v56(v10, v46, v5);
  v56(v59, v54, v5);
  sub_2194F7478();
  sub_219BF35F4();
  v57 = *(v6 + 8);
  v57(v54, v5);
  v57(v46, v5);
  *v65 = v55;
  return (*(v6 + 104))();
}

uint64_t sub_2194F6B6C()
{
  v1 = [v0 tagType];
  if (v1 > 2)
  {
    if ((v1 - 4) < 2 || v1 == 3)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (!v1)
  {
    goto LABEL_14;
  }

  if (v1 != 1)
  {
    if (v1 == 2)
    {
      [v0 isLocal];
      goto LABEL_14;
    }

LABEL_15:
    result = sub_219BF7514();
    __break(1u);
    return result;
  }

  if (![v0 isSports])
  {
LABEL_14:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    v5 = sub_219BDB5E4();

    return v5;
  }

  return sub_2194F6DF4();
}

uint64_t sub_2194F6DF4()
{
  v1 = [v0 asSports];
  if (v1)
  {
    [v1 sportsType];
    swift_unknownObjectRelease();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_219BDB5E4();

  return v4;
}

uint64_t sub_2194F7218()
{
  v1 = *v0;
  if (*v0 > 2)
  {
    if (v1 == 3)
    {
      return 0x6E6F6974636573;
    }

    if (v1 != 4)
    {
      if (v1 == 5)
      {
        return 0x6575737369;
      }

      return 0x2D6E776F6E6B6E75;
    }

    return 1953720684;
  }

  else
  {
    if (!v1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (v1 != 1)
    {
      if (v1 == 2)
      {
        return 0x6C656E6E616863;
      }

      return 0x2D6E776F6E6B6E75;
    }

    return 0x6369706F74;
  }
}

void sub_2194F72F4(uint64_t a1)
{
  if (!qword_280E90900)
  {
    sub_2194F7358(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E90900);
    }
  }
}

void sub_2194F7358(uint64_t a1)
{
  if (!qword_280E90908)
  {
    sub_219BF1364();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90908);
    }
  }
}

uint64_t sub_2194F73B0(uint64_t a1, uint64_t a2)
{
  sub_2194F7358(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2194F7414(uint64_t a1)
{
  if (!qword_280E90140)
  {
    sub_219BF1364();
    sub_2194F7478();
    v1 = sub_219BF3604();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90140);
    }
  }
}

unint64_t sub_2194F7478()
{
  result = qword_280E90910;
  if (!qword_280E90910)
  {
    sub_219BF1364();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90910);
  }

  return result;
}

uint64_t sub_2194F74D0(uint64_t a1)
{
  sub_2194F7358(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2194F7530()
{
  sub_218C19FB4(0);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v5 = qword_280F61750;
  v6 = sub_219BF61D4();
  sub_219BE5314("Received support notification response", 38, 2, &dword_2186C1000, v5, v6, MEMORY[0x277D84F90]);
  type metadata accessor for FollowingNotificationsPrewarm(0);
  v7 = swift_allocBox();
  v9 = v8;
  v10 = sub_219BF3BD4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  swift_storeEnumTagMultiPayload();
  *v4 = v7 | 0x3000000000000004;
  (*(v2 + 104))(v4, *MEMORY[0x277D6E710], v1);
  sub_219043960(0);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2194F7724@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194F7C4C(0, &qword_27CC1B410, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194F7BF8();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for ArticlesSearchMoreFeedGroupConfigData(0) + 20)) = 0;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2194F7984(void *a1)
{
  v3 = v1;
  sub_2194F7C4C(0, &qword_27CC1B420, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194F7BF8();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for ArticlesSearchMoreFeedGroupConfigData(0) + 20));
    v11[13] = 1;
    sub_21897C858();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2194F7B50(uint64_t a1)
{
  v2 = sub_2194F7BF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2194F7B8C(uint64_t a1)
{
  v2 = sub_2194F7BF8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2194F7BF8()
{
  result = qword_27CC1B418;
  if (!qword_27CC1B418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B418);
  }

  return result;
}

void sub_2194F7C4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2194F7BF8();
    v7 = a3(a1, &type metadata for ArticlesSearchMoreFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2194F7CC4()
{
  result = qword_27CC1B428;
  if (!qword_27CC1B428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B428);
  }

  return result;
}

unint64_t sub_2194F7D1C()
{
  result = qword_27CC1B430;
  if (!qword_27CC1B430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B430);
  }

  return result;
}

unint64_t sub_2194F7D74()
{
  result = qword_27CC1B438;
  if (!qword_27CC1B438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B438);
  }

  return result;
}

uint64_t sub_2194F7DEC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2194F7EB8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

uint64_t sub_2194F7F80()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_219BDB5E4();

  return v2;
}

void sub_2194F804C(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    return;
  }

  v2 = type metadata accessor for OfflineFeedGroupProcessorResult(0);
  v3 = 0;
  v25 = a1 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  v26 = v2;
  v4 = MEMORY[0x277D84F90];
  v24 = *(*(v2 - 8) + 72);
  while (1)
  {
    v5 = *(v25 + v24 * v3 + *(v26 + 20));
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_219BF7214();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v4 >> 62;
    if (v4 >> 62)
    {
      v23 = sub_219BF7214();
      v10 = v23 + v7;
      if (__OFADD__(v23, v7))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v8)
      {
        v11 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_219BF7214();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    v4 = sub_219BF7364();
    v11 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v7)
    {
      goto LABEL_35;
    }

    v31 = v7;
    v28 = v4;
    v29 = v3;
    v15 = v11 + 8 * v12 + 32;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_37;
      }

      sub_21885C7F4(0, &qword_280E8ED48, sub_21897A4D4, MEMORY[0x277D83940]);
      sub_2194F9C58(&qword_280E8ED30, MEMORY[0x277D83988]);
      for (i = 0; i != v14; ++i)
      {
        v17 = sub_218A353D0(v30, i, v5);
        v19 = *v18;
        (v17)(v30, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      sub_21897A4D4();
      swift_arrayInitWithCopy();
    }

    v4 = v28;
    v3 = v29;
    if (v31 >= 1)
    {
      v20 = *(v11 + 16);
      v21 = __OFADD__(v20, v31);
      v22 = v20 + v31;
      if (v21)
      {
        goto LABEL_36;
      }

      *(v11 + 16) = v22;
    }

LABEL_4:
    if (++v3 == v27)
    {
      return;
    }
  }

  v14 = sub_219BF7214();
  if (v14)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v7 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_2194F8394(uint64_t a1)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
    return;
  }

  v2 = type metadata accessor for OfflineFeedGroupProcessorResult(0);
  v3 = 0;
  v25 = a1 + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80));
  v26 = v2;
  v4 = MEMORY[0x277D84F90];
  v24 = *(*(v2 - 8) + 72);
  while (1)
  {
    v5 = *(v25 + v24 * v3 + *(v26 + 24));
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_219BF7214();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v4 >> 62;
    if (v4 >> 62)
    {
      v23 = sub_219BF7214();
      v10 = v23 + v7;
      if (__OFADD__(v23, v7))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v8)
      {
        v11 = v4 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_219BF7214();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    v4 = sub_219BF7364();
    v11 = v4 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v7)
    {
      goto LABEL_35;
    }

    v31 = v7;
    v28 = v4;
    v29 = v3;
    v15 = v11 + 8 * v12 + 32;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_37;
      }

      sub_21885C7F4(0, &qword_280E8ED48, sub_21897A4D4, MEMORY[0x277D83940]);
      sub_2194F9C58(&qword_280E8ED30, MEMORY[0x277D83988]);
      for (i = 0; i != v14; ++i)
      {
        v17 = sub_218A353D0(v30, i, v5);
        v19 = *v18;
        (v17)(v30, 0);
        *(v15 + 8 * i) = v19;
      }
    }

    else
    {
      sub_21897A4D4();
      swift_arrayInitWithCopy();
    }

    v4 = v28;
    v3 = v29;
    if (v31 >= 1)
    {
      v20 = *(v11 + 16);
      v21 = __OFADD__(v20, v31);
      v22 = v20 + v31;
      if (v21)
      {
        goto LABEL_36;
      }

      *(v11 + 16) = v22;
    }

LABEL_4:
    if (++v3 == v27)
    {
      return;
    }
  }

  v14 = sub_219BF7214();
  if (v14)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v7 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_2194F86DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  (*(v11 + 16))(v13, v5, a3);
  *(v14 + 16) = sub_219BF5814();
  v15 = type metadata accessor for OfflineFeedManifest(0);
  v16 = swift_allocBox();
  v18 = v17;
  if (qword_280ED0C20 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v15, qword_280ED0C30);
  sub_2187A970C(v19, v18, type metadata accessor for OfflineFeedManifest);
  v20 = sub_2194F9420(v14, v16, a1, a2, a3, a4, a5);

  return v20;
}

uint64_t sub_2194F8894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for OfflineFeedGroupProcessorResult(0);
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v33 = a3;
  v34 = a4;
  v35 = v4;
  v36 = a2;
  sub_21885E70C(sub_2194F9B40, v32, a1);
  sub_2194F8B9C(v17, v16);
  v37 = *&v16[*(v10 + 28)];

  sub_2191EF6DC(v18);
  v19 = v37;
  if (!(v37 >> 62))
  {
    v20 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_11:

LABEL_12:
    v25 = sub_219BE2E54();
    sub_21897A4D4();
    sub_219BE3314();

    sub_2187A970C(v16, v13, type metadata accessor for OfflineFeedGroupProcessorResult);
    v26 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v27 = swift_allocObject();
    sub_218754670(v13, v27 + v26, type metadata accessor for OfflineFeedGroupProcessorResult);
    v28 = sub_219BE2E54();
    type metadata accessor for OfflineFeedManifest(0);
    v29 = sub_219BE2F74();

    sub_2187513D0(v16, type metadata accessor for OfflineFeedGroupProcessorResult);
    return v29;
  }

  v20 = sub_219BF7214();
  if (!v20)
  {
    goto LABEL_11;
  }

LABEL_3:
  v37 = MEMORY[0x277D84F90];
  result = sub_219BF73F4();
  if ((v20 & 0x8000000000000000) == 0)
  {
    v31 = v11;
    v22 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x21CECE0F0](v22, v19);
      }

      else
      {
        v23 = *(v19 + 8 * v22 + 32);
      }

      v24 = v23;
      ++v22;
      sub_219BF60E4();

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
    }

    while (v20 != v22);

    v11 = v31;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_2194F8B9C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OfflineFeedGroupProcessorResult(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OfflineFeedManifest(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  if (v15)
  {
    v29 = v4;
    v30 = a2;
    v31 = MEMORY[0x277D84F90];
    sub_218C37590(0, v15, 0);
    v16 = v31;
    v17 = *(v5 + 80);
    v28 = a1;
    v18 = a1 + ((v17 + 32) & ~v17);
    v19 = *(v5 + 72);
    do
    {
      sub_2187A970C(v18, v7, type metadata accessor for OfflineFeedGroupProcessorResult);
      sub_2187A970C(v7, v11, type metadata accessor for OfflineFeedManifest);
      sub_2187513D0(v7, type metadata accessor for OfflineFeedGroupProcessorResult);
      v31 = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_218C37590((v20 > 1), v21 + 1, 1);
        v16 = v31;
      }

      *(v16 + 16) = v21 + 1;
      sub_218754670(v11, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, type metadata accessor for OfflineFeedManifest);
      v18 += v19;
      --v15;
    }

    while (v15);
    v4 = v29;
    a2 = v30;
    a1 = v28;
  }

  OfflineFeedManifest.init(_:)(v16, v14);
  sub_218754670(v14, a2, type metadata accessor for OfflineFeedManifest);
  sub_2194F804C(a1);
  v31 = v22;
  sub_21885C7F4(0, &qword_280E8ED48, sub_21897A4D4, MEMORY[0x277D83940]);
  sub_21897A4D4();
  sub_2194F9C58(&unk_280E8ED38, MEMORY[0x277D83970]);
  sub_2194F9C00();
  v23 = sub_219BF56E4();

  *(a2 + *(v4 + 20)) = v23;
  sub_2194F8394(a1);
  v25 = v24;

  v31 = v25;
  v26 = sub_219BF56E4();

  *(a2 + *(v4 + 24)) = v26;
}

void sub_2194F8F60(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for OfflineFeedGroupProcessorResult(0) + 20));
  v12 = a1;
  v13 = a2;
  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CECE0F0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 downloadError];
      if (v10)
      {
        v11 = v10;
        if ([v8 isDownloadFailureRecoverable])
        {
          swift_willThrow();

          return;
        }
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:
  sub_2187A970C(v12, v13, type metadata accessor for OfflineFeedManifest);
}

uint64_t sub_2194F90C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_219BF5B14();
  sub_2186CFDE4(0, qword_280ECED60, &protocol descriptor for FeedGroupOfflineable);
  swift_getWitnessTable();
  v8 = sub_219BF57E4();
  v9 = sub_2194F8894(v8, a2, a3, a5);

  return v9;
}

double sub_2194F91BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v11 = *(v6 + 16);
  v11(&v16 - v12, a1, v10);
  sub_2186CFDE4(0, qword_280ECED60, &protocol descriptor for FeedGroupOfflineable);
  if (swift_dynamicCast())
  {
    goto LABEL_4;
  }

  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_2187B1C64(&v19, &qword_280ECED58, qword_280ECED60, &protocol descriptor for FeedGroupOfflineable);
  (v11)(v8, a1, a2);
  sub_2186CFDE4(0, &qword_280EB0C68, &protocol descriptor for FeedGroupOfflineableProviding);
  if (swift_dynamicCast())
  {
    v13 = *(&v17 + 1);
    v14 = v18;
    __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    (*(v14 + 8))(&v19, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(&v16);
    if (*(&v20 + 1))
    {
LABEL_4:
      sub_2186CB1F0(&v19, v22);
      sub_2186CB1F0(v22, a3);
      return result;
    }
  }

  else
  {
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    sub_2187B1C64(&v16, &qword_27CC1B090, &qword_280EB0C68, &protocol descriptor for FeedGroupOfflineableProviding);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
  }

  sub_2187B1C64(&v19, &qword_280ECED58, qword_280ECED60, &protocol descriptor for FeedGroupOfflineable);
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_2194F9420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v31 = a7;
  v28 = a4;
  v32 = a3;
  v10 = type metadata accessor for OfflineFeedManifest(0);
  MEMORY[0x28223BE20](v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE5434();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = swift_projectBox();
  swift_beginAccess();
  v29 = a1;
  sub_218B199BC(&v33);
  swift_endAccess();
  if (v34)
  {
    v17 = sub_2186CB1F0(&v33, v35);
    MEMORY[0x28223BE20](v17);
    v27[-6] = a5;
    v27[0] = a5;
    v19 = v30;
    v18 = v31;
    v27[-5] = v30;
    v27[-4] = v18;
    v27[2] = v10;
    v20 = v32;
    v27[-3] = v35;
    v27[-2] = v20;
    v21 = v28;
    v27[-1] = v28;
    v27[1] = sub_219BE3204();
    (*(v14 + 16))(v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v21, v13);
    v22 = (*(v14 + 80) + 64) & ~*(v14 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = v27[0];
    *(v23 + 3) = v19;
    *(v23 + 4) = v18;
    *(v23 + 5) = a2;
    *(v23 + 6) = v29;
    *(v23 + 7) = v20;
    (*(v14 + 32))(&v23[v22], v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);

    v24 = sub_219BE2E54();
    v25 = sub_219BE2F64();

    __swift_destroy_boxed_opaque_existential_1(v35);
    return v25;
  }

  else
  {
    sub_2187B1C64(&v33, &qword_27CC0E128, &qword_280EAFA40, &protocol descriptor for OfflineFeedGroupProcessorType);
    swift_beginAccess();
    sub_2187A970C(v16, v12, type metadata accessor for OfflineFeedManifest);
    sub_21885C7F4(0, &qword_27CC20CF0, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_2194F977C()
{
  v1 = v0[3];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  return sub_2194F90C4(v3, v4, v5, v1, v6);
}

uint64_t sub_2194F97E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a7;
  v26 = a8;
  v23 = a5;
  v24 = a6;
  v21 = a3;
  v22 = a4;
  v10 = type metadata accessor for OfflineFeedManifest(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_projectBox();
  swift_beginAccess();
  sub_218754670(v14, v13, type metadata accessor for OfflineFeedManifest);
  sub_21885C7F4(0, &unk_280E8BB50, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D84560]);
  v15 = *(v11 + 72);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_219C09EC0;
  v18 = v17 + v16;
  sub_2187A970C(v13, v18, type metadata accessor for OfflineFeedManifest);
  sub_2187A970C(a1, v18 + v15, type metadata accessor for OfflineFeedManifest);
  OfflineFeedManifest.init(_:)(v17, v14);
  sub_2187513D0(v13, type metadata accessor for OfflineFeedManifest);
  swift_endAccess();
  return sub_2194F9420(v21, a2, v22, v23, v24, v25, v26);
}

uint64_t sub_2194F99C8(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(sub_219BE5434() - 8);
  return sub_2194F97E8(a1, v1[5], v1[6], v1[7], v1 + ((*(v6 + 80) + 64) & ~*(v6 + 80)), v3, v4, v5);
}

uint64_t sub_2194F9A80()
{
  v0 = type metadata accessor for OfflineFeedGroupProcessorResult(0);
  __swift_allocate_value_buffer(v0, qword_27CCD8CA8);
  v1 = __swift_project_value_buffer(v0, qword_27CCD8CA8);
  if (qword_280ED0C20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for OfflineFeedManifest(0);
  v3 = __swift_project_value_buffer(v2, qword_280ED0C30);
  result = sub_2187A970C(v3, v1, type metadata accessor for OfflineFeedManifest);
  v5 = MEMORY[0x277D84F90];
  *(v1 + *(v0 + 20)) = MEMORY[0x277D84F90];
  *(v1 + *(v0 + 24)) = v5;
  return result;
}

unint64_t sub_2194F9C00()
{
  result = qword_280E8E768;
  if (!qword_280E8E768)
  {
    sub_21897A4D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8E768);
  }

  return result;
}

uint64_t sub_2194F9C58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_21885C7F4(255, &qword_280E8ED48, sub_21897A4D4, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2194F9D30(uint64_t a1, uint64_t a2)
{
  v90 = sub_219BF0BD4();
  v4 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21896993C(0);
  v93 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_219BF2164();
  v10 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v92 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_219BF3C84();
  v12 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v83 = &v57 - v16;
  v91 = a2;
  v88 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_formatContent;
  v17 = sub_219BF18E4();
  v80 = *(v17 + 16);
  if (v80)
  {
    v18 = 0;
    v87 = OBJC_IVAR____TtC7NewsUI227PuzzleContinuePlayingConfig_feedContext;
    v78 = v12 + 16;
    v77 = v12 + 88;
    v76 = *MEMORY[0x277D34128];
    v75 = *MEMORY[0x277D34108];
    v74 = *MEMORY[0x277D34100];
    v73 = *MEMORY[0x277D34130];
    v72 = *MEMORY[0x277D34118];
    v71 = *MEMORY[0x277D340E8];
    v70 = *MEMORY[0x277D340F8];
    v19 = (v12 + 8);
    v79 = v12;
    v62 = (v12 + 96);
    v61 = (v10 + 32);
    v69 = *MEMORY[0x277D34110];
    v63 = a1;
    v58 = a1 + 32;
    v20 = (v4 + 16);
    v66 = *MEMORY[0x277D340F0];
    v86 = v7 + 32;
    v60 = (v10 + 8);
    v85 = xmmword_219C09EC0;
    v84 = MEMORY[0x277D84F90];
    v21 = v59;
    v68 = v14;
    v67 = v17;
    v81 = v19;
    while (v18 < *(v17 + 16))
    {
      v22 = v79;
      v23 = v17 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v24 = *(v79 + 72);
      v82 = v18;
      v25 = *(v79 + 16);
      v26 = v83;
      v25(v83, v23 + v24 * v18, v21);
      v25(v14, v26, v21);
      v27 = v81;
      v28 = (*(v22 + 88))(v14, v21);
      v35 = v28 == v76 || v28 == v75 || v28 == v74 || v28 == v73 || v28 == v72 || v28 == v71 || v28 == v70 || v28 == v69;
      if (v35 || v28 != v66)
      {
        v45 = *v27;
        (*v27)(v14, v21);
        v38 = MEMORY[0x277D84F90];
      }

      else
      {
        (*v62)(v14, v21);
        v36 = v65;
        (*v61)(v92, v14, v65);
        v37 = *(v63 + 16);
        if (v37)
        {
          v64 = v27 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v95 = MEMORY[0x277D84F90];
          sub_218C37880(0, v37, 0);
          v38 = v95;
          v39 = v58;
          do
          {
            sub_2194FA5FC(v39, v94);
            (*v20)(v89, v91 + v87, v90);
            sub_21871D24C();
            v40 = swift_allocObject();
            *(v40 + 16) = v85;
            *(v40 + 32) = sub_219BF17D4();
            *(v40 + 40) = v41;
            *(v40 + 48) = sub_219BF2154();
            *(v40 + 56) = v42;
            MEMORY[0x21CEC80A0](v40);

            sub_2189699BC();
            sub_218969A10();
            sub_219BF0844();
            v95 = v38;
            v44 = *(v38 + 16);
            v43 = *(v38 + 24);
            if (v44 >= v43 >> 1)
            {
              sub_218C37880((v43 > 1), v44 + 1, 1);
              v38 = v95;
            }

            *(v38 + 16) = v44 + 1;
            (*(v7 + 32))(v38 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v44, v9, v93);
            v39 += 144;
            --v37;
          }

          while (v37);
          v36 = v65;
          v21 = v59;
          v27 = v81;
        }

        else
        {
          v38 = MEMORY[0x277D84F90];
        }

        (*v60)(v92, v36);
        v45 = *v27;
      }

      v45(v83, v21);
      v46 = *(v38 + 16);
      v47 = v84;
      v48 = v84[2];
      v49 = v48 + v46;
      if (__OFADD__(v48, v46))
      {
        goto LABEL_54;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v49 <= v47[3] >> 1)
      {
        v14 = v68;
        v51 = v47;
      }

      else
      {
        if (v48 <= v49)
        {
          v52 = v48 + v46;
        }

        else
        {
          v52 = v48;
        }

        v51 = sub_2191F86BC(isUniquelyReferenced_nonNull_native, v52, 1, v47);
        v14 = v68;
      }

      v53 = *(v38 + 16);
      v84 = v51;
      if (v53)
      {
        if ((v51[3] >> 1) - v51[2] < v46)
        {
          goto LABEL_56;
        }

        swift_arrayInitWithCopy();

        if (v46)
        {
          v54 = v84[2];
          v55 = __OFADD__(v54, v46);
          v56 = v54 + v46;
          if (v55)
          {
            goto LABEL_57;
          }

          v84[2] = v56;
        }
      }

      else
      {

        if (v46)
        {
          goto LABEL_55;
        }
      }

      v18 = v82 + 1;
      v17 = v67;
      if (v82 + 1 == v80)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
  }

  else
  {
    v84 = MEMORY[0x277D84F90];
LABEL_52:
  }
}

void sub_2194FA658(uint64_t a1@<X0>, void *a2@<X8>)
{
  v69 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_21875FC08(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v60 - v5;
  sub_21875FC08(0, &qword_280EE9C40, MEMORY[0x277CC9578], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  v70 = MEMORY[0x277D84F90];
  v13 = 50;
  sub_219BF73F4();
  do
  {
    sub_219BE2ED4();
    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    sub_219BF73E4();
    --v13;
  }

  while (v13);
  v14 = v70;
  sub_2186C6148(0, &qword_280E8E860, 0x277D30F38);
  sub_219BDBBB4();
  v15 = sub_219BDBD34();
  v16 = *(*(v15 - 8) + 56);
  v16(v12, 0, 1, v15);
  sub_219BDBBD4();
  v16(v9, 0, 1, v15);
  v17 = sub_21927C2BC(v12, v9);
  if (!v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v17;
  v19 = [objc_opt_self() feedRangeFromDateRange_];

  v20 = objc_allocWithZone(MEMORY[0x277D31348]);
  v21 = sub_219BF53D4();
  v22 = sub_219BF53D4();
  v23 = [v20 initChannelForTestingWithIdentifier:v21 name:v22 publisherPaidBundlePurchaseIDs:0];

  v67 = v23;
  if (!v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = objc_allocWithZone(MEMORY[0x277D31348]);
  v25 = sub_219BF53D4();
  v26 = sub_219BF53D4();
  v27 = [v24 initChannelForTestingWithIdentifier:v25 name:v26 publisherPaidBundlePurchaseIDs:0];

  if (!v27)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v70 = MEMORY[0x277D84F90];
  sub_219BF73F4();
  sub_219BE2ED4();
  sub_219BF73D4();
  sub_219BF7414();
  sub_219BF7424();
  sub_219BF73E4();
  sub_219BE2ED4();
  sub_219BF73D4();
  sub_219BF7414();
  sub_219BF7424();
  sub_219BF73E4();
  sub_219BE2ED4();
  sub_219BF73D4();
  sub_219BF7414();
  sub_219BF7424();
  sub_219BF73E4();
  sub_219BE2ED4();
  sub_219BF73D4();
  sub_219BF7414();
  sub_219BF7424();
  sub_219BF73E4();
  sub_219BE2ED4();
  sub_219BF73D4();
  sub_219BF7414();
  sub_219BF7424();
  sub_219BF73E4();
  sub_219BE2ED4();
  sub_219BF73D4();
  sub_219BF7414();
  sub_219BF7424();
  sub_219BF73E4();
  sub_219BE2ED4();
  sub_219BF73D4();
  sub_219BF7414();
  sub_219BF7424();
  sub_219BF73E4();
  sub_219BE2ED4();
  sub_219BF73D4();
  sub_219BF7414();
  sub_219BF7424();
  sub_219BF73E4();
  sub_219BE2ED4();
  sub_219BF73D4();
  sub_219BF7414();
  sub_219BF7424();
  sub_219BF73E4();
  sub_219BE2ED4();
  sub_219BF73D4();
  sub_219BF7414();
  sub_219BF7424();
  sub_219BF73E4();
  v28 = objc_allocWithZone(MEMORY[0x277D30EC8]);
  sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
  v29 = v27;
  v30 = sub_219BF5904();

  v31 = [v28 initWithSection:v29 headlines:v30];

  v32 = v68[2];
  v33 = objc_allocWithZone(MEMORY[0x277D31300]);
  v34 = v67;
  v68 = [v33 initWithContext:v32 tag:v67 feedConfiguration:0];

  v66 = v29;
  if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
  {
    v35 = sub_219BF7534();
  }

  else
  {
    v35 = v14;
    sub_219BF7924();
  }

  v70 = v35;
  v36 = MEMORY[0x277D84F90];
  v71 = MEMORY[0x277D84F90];
  v72 = MEMORY[0x277D84F90];
  v73 = v19;
  v74 = v19;
  v75 = 0;
  sub_2194FB434(0, &qword_280EE6F90, &_s4FeedVN_0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v65 = v19;
  v64 = sub_219BE3014();
  v70 = v36;
  sub_2194FB220(0);
  swift_allocObject();
  v63 = sub_219BE3014();
  if (qword_280EBB6C8 != -1)
  {
    swift_once();
  }

  v37 = qword_280F61B20;
  v38 = *algn_280F61B28;
  v39 = qword_280F61B30;
  v40 = unk_280F61B38;
  v70 = qword_280F61B20;
  v71 = *algn_280F61B28;
  v72 = qword_280F61B30;
  v73 = unk_280F61B38;
  sub_2194FB434(0, &qword_280EE6D50, &type metadata for FoodRecipeItemsFetchResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_2189B67F4(v37, v38, v39, v40);
  v62 = sub_219BE3014();
  v41 = sub_219BF5BF4();
  (*(*(v41 - 8) + 56))(v6, 1, 1, v41);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  v61 = sub_2195E76C4(0, 0, v6, &unk_219C84E70, v42);
  v70 = v36;
  v43 = MEMORY[0x277D6CF30];
  sub_21875FC08(0, &qword_280EE6A60, sub_218A35A80, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v60 = sub_219BE3014();
  v70 = v36;
  sub_21875FC08(0, &qword_280EE6AE0, sub_2186DC224, v43);
  swift_allocObject();
  v44 = sub_219BE3014();
  sub_2194FB434(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_219C146A0;
  *(v45 + 32) = v31;
  v46 = objc_allocWithZone(MEMORY[0x277D30EC0]);
  sub_2186C6148(0, &qword_280E8DB70, 0x277D30EC8);
  v47 = v36;
  v48 = v34;
  v49 = v31;
  v50 = sub_219BF5904();

  v51 = [v46 initWithChannel:v48 sectionHeadlinesGroups:v50];

  v70 = v51;
  sub_2194FB2A4(0, &qword_280EE6930, &qword_280E8DBC0, 0x277D30EC0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v52 = sub_219BE3014();
  v70 = v47;
  sub_21875FC08(0, &unk_280EE6B60, sub_2190D6AB0, v43);
  swift_allocObject();
  v53 = sub_219BE3014();
  v70 = v47;
  sub_2194FB3B8(0, v54);
  swift_allocObject();
  v55 = sub_219BE3014();
  v56 = *(v69 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_dateRange);

  *a2 = v68;
  a2[1] = v56;
  v57 = v63;
  a2[2] = v64;
  a2[3] = v57;
  v58 = v61;
  a2[4] = v62;
  a2[5] = v58;
  a2[6] = v60;
  a2[7] = v44;
  a2[8] = v52;
  a2[9] = v53;
  v59 = MEMORY[0x277D84FA0];
  a2[10] = v55;
  a2[11] = v59;
  a2[12] = v59;
  a2[13] = v59;
  a2[14] = v59;
  a2[15] = 0;
}

uint64_t sub_2194FB168()
{
  sub_219BEFC34();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2194FB1CC()
{
  sub_2195140BC();

  return swift_deallocClassInstance();
}

void sub_2194FB220(uint64_t a1)
{
  if (!qword_280EE6A20)
  {
    sub_2194FB2A4(255, &qword_280E8EB40, &qword_280E8DAB0, 0x277D310B0, MEMORY[0x277D83940]);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6A20);
    }
  }
}

void sub_2194FB2A4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_2186C6148(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2194FB30C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_2194FB148(a1);
}

void sub_2194FB3B8(uint64_t a1, __n128 a2)
{
  if (!qword_280EE6B30)
  {
    sub_2194FB434(255, &qword_280E8F2C8, &type metadata for FeedLocalHeadline, MEMORY[0x277D83940]);
    v2 = sub_219BE3114();
    if (!v3)
    {
      atomic_store(v2, &qword_280EE6B30);
    }
  }
}

void sub_2194FB434(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_2194FB494(unint64_t a1, char a2)
{
  v53 = a1;
  v3 = type metadata accessor for ShortcutsModel(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = _s8ResolvedVMa(0);
  v52 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189534EC(0);
  v54 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v52 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  if (!a2)
  {
    v33 = v52;
    v32 = v53;
    v34 = *(v53 + 16);
    v27 = MEMORY[0x277D84F90];
    if (v34)
    {
      v55 = MEMORY[0x277D84F90];
      sub_218C35CF8(0, v34, 0);
      v27 = v55;
      v35 = v32 + ((*(v33 + 80) + 32) & ~*(v33 + 80));
      v36 = *(v33 + 72);
      v52 = v10 + 32;
      v53 = v36;
      do
      {
        sub_2194FD15C(v35, v8);
        sub_2194FD15C(v8, v5);
        type metadata accessor for Shortcut(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_2194FD114(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel, &unk_219CCD6D8);
        sub_219BE5FB4();
        sub_2194FD1C0(v8, _s8ResolvedVMa);
        v55 = v27;
        v38 = *(v27 + 16);
        v37 = *(v27 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_218C35CF8((v37 > 1), v38 + 1, 1);
          v27 = v55;
        }

        *(v27 + 16) = v38 + 1;
        (*(v10 + 32))(v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v38, v24, v54);
        v35 += v53;
        --v34;
      }

      while (v34);
    }

    return v27;
  }

  if (a2 != 1)
  {
    v39 = v53;
    if (v53 >> 62)
    {
      v40 = sub_219BF7214();
    }

    else
    {
      v40 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v27 = MEMORY[0x277D84F90];
    if (v40)
    {
      v55 = MEMORY[0x277D84F90];
      result = sub_218C35CF8(0, v40 & ~(v40 >> 63), 0);
      if ((v40 & 0x8000000000000000) == 0)
      {
        v27 = v55;
        if ((v39 & 0xC000000000000001) != 0)
        {
          for (i = 0; i != v40; ++i)
          {
            *v5 = MEMORY[0x21CECE0F0](i, v53);
            type metadata accessor for Shortcut(0);
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            sub_2194FD114(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel, &unk_219CCD6D8);
            sub_219BE5FB4();
            v55 = v27;
            v43 = *(v27 + 16);
            v42 = *(v27 + 24);
            if (v43 >= v42 >> 1)
            {
              sub_218C35CF8((v42 > 1), v43 + 1, 1);
              v27 = v55;
            }

            *(v27 + 16) = v43 + 1;
            (*(v10 + 32))(v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v43, v18, v54);
          }
        }

        else
        {
          v48 = (v39 + 32);
          v49 = type metadata accessor for Shortcut(0);
          v52 = v10 + 32;
          v53 = v49;
          sub_2194FD114(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel, &unk_219CCD6D8);
          do
          {
            *v5 = *v48;
            swift_storeEnumTagMultiPayload();
            swift_storeEnumTagMultiPayload();
            swift_unknownObjectRetain();
            sub_219BE5FB4();
            v55 = v27;
            v51 = *(v27 + 16);
            v50 = *(v27 + 24);
            if (v51 >= v50 >> 1)
            {
              sub_218C35CF8((v50 > 1), v51 + 1, 1);
              v27 = v55;
            }

            *(v27 + 16) = v51 + 1;
            (*(v10 + 32))(v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v51, v15, v54);
            ++v48;
            --v40;
          }

          while (v40);
        }

        return v27;
      }

      goto LABEL_42;
    }

    return v27;
  }

  v25 = v53;
  if (v53 >> 62)
  {
    v26 = sub_219BF7214();
  }

  else
  {
    v26 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = MEMORY[0x277D84F90];
  if (!v26)
  {
    return v27;
  }

  v55 = MEMORY[0x277D84F90];
  result = sub_218C35CF8(0, v26 & ~(v26 >> 63), 0);
  if ((v26 & 0x8000000000000000) == 0)
  {
    v27 = v55;
    if ((v25 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v26; ++j)
      {
        *v5 = MEMORY[0x21CECE0F0](j, v53);
        type metadata accessor for Shortcut(0);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        sub_2194FD114(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel, &unk_219CCD6D8);
        sub_219BE5FB4();
        v55 = v27;
        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_218C35CF8((v30 > 1), v31 + 1, 1);
          v27 = v55;
        }

        *(v27 + 16) = v31 + 1;
        (*(v10 + 32))(v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, v21, v54);
      }
    }

    else
    {
      v44 = (v25 + 32);
      v45 = type metadata accessor for Shortcut(0);
      v52 = v10 + 32;
      v53 = v45;
      sub_2194FD114(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel, &unk_219CCD6D8);
      do
      {
        *v5 = *v44;
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        swift_unknownObjectRetain();
        sub_219BE5FB4();
        v55 = v27;
        v47 = *(v27 + 16);
        v46 = *(v27 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_218C35CF8((v46 > 1), v47 + 1, 1);
          v27 = v55;
        }

        *(v27 + 16) = v47 + 1;
        (*(v10 + 32))(v27 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v47, v12, v54);
        ++v44;
        --v26;
      }

      while (v26);
    }

    return v27;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_2194FBD00()
{
  result = qword_27CC1B440;
  if (!qword_27CC1B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B440);
  }

  return result;
}

uint64_t sub_2194FBDA0(uint64_t a1, void (*a2)(char *), uint64_t a3, unint64_t a4, int a5)
{
  sub_2194FCEF4(0);
  MEMORY[0x28223BE20](v10 - 8);
  v130 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for ShortcutsModel(0);
  MEMORY[0x28223BE20](v135);
  v132 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE6DF4();
  v117 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v116 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194FCFF0(0, &qword_27CC12500, MEMORY[0x277D6DF88]);
  v124 = v15;
  v123 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v122 = &v107 - v16;
  sub_2189534EC(0);
  v18 = v17;
  v129 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v140 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v131 = &v107 - v21;
  MEMORY[0x28223BE20](v22);
  v141 = &v107 - v23;
  MEMORY[0x28223BE20](v24);
  v138 = (&v107 - v25);
  sub_2194FCF5C(0);
  v126 = v26;
  MEMORY[0x28223BE20](v26);
  v134 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E02958(0);
  v133 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = &v107 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v115 = &v107 - v32;
  sub_2194FCFF0(0, &qword_27CC0B0D0, MEMORY[0x277D6D710]);
  v127 = v33;
  v121 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v119 = &v107 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v107 - v36;
  sub_218953434(0);
  v39 = v38;
  v40 = MEMORY[0x28223BE20](v38);
  v120 = v42;
  v43 = *(v42 + 16);
  v118 = &v107 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43(v40);
  v128 = a5;
  v44 = sub_2194FB494(a4, a5);
  sub_2194FD114(&qword_27CC0B108, sub_218953434, MEMORY[0x277D6EC70]);
  sub_219BF5DF4();
  sub_219BF5E84();
  v125 = a3;
  if (v142[0] == v143)
  {
    if (qword_280EE5F18 != -1)
    {
      swift_once();
    }

    v45 = sub_219BE5434();
    __swift_project_value_buffer(v45, qword_280F62538);
    v46 = sub_219BE5414();
    v47 = sub_219BF6214();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2186C1000, v46, v47, "Unexpected empty shortcuts blueprint during update modification", v48, 2u);
      MEMORY[0x21CECF960](v48, -1, -1);
    }

    sub_2194FD114(&qword_27CC12540, type metadata accessor for ShortcutsModel, &unk_219CCD890);
    v49 = sub_219BF5964();

    v50 = sub_2194FD114(&qword_27CC12528, sub_2189534EC, MEMORY[0x277D6D408]);
    v51 = sub_2194FD114(&qword_27CC12530, sub_2189534EC, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9170](v49, v18, v50, v51);
    sub_2189532D4();
    sub_2194FD114(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel, &unk_219CCD6D8);
    v52 = v119;
    sub_219BE6924();
    v53 = v118;
    sub_219BEB1E4();
    v54 = v122;
    sub_219BE85C4();
    a2(v54);
    (*(v123 + 8))(v54, v124);
    (*(v121 + 8))(v52, v127);
    return (*(v120 + 8))(v53, v39);
  }

  else
  {
    v109 = v30;
    v110 = v13;
    v139 = v18;
    v113 = a2;
    v112 = v39;
    v111 = a1;
    sub_219BEB364();
    swift_getKeyPath();
    v56 = v44[2];
    v114 = v37;
    v108 = v44;
    if (v56)
    {
      v143 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v56, 0);
      v57 = v143;
      v58 = *(v129 + 16);
      v59 = v44 + ((*(v129 + 80) + 32) & ~*(v129 + 80));
      v136 = *(v129 + 72);
      v137 = v58;
      v60 = (v129 + 8);
      do
      {
        v62 = v138;
        v61 = v139;
        (v137)(v138, v59, v139);
        swift_getAtKeyPath();
        (*v60)(v62, v61);
        v63 = v142[0];
        v64 = v142[1];
        v143 = v57;
        v66 = *(v57 + 16);
        v65 = *(v57 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_21870B65C((v65 > 1), v66 + 1, 1);
          v57 = v143;
        }

        *(v57 + 16) = v66 + 1;
        v67 = v57 + 16 * v66;
        *(v67 + 32) = v63;
        *(v67 + 40) = v64;
        v59 += v136;
        --v56;
      }

      while (v56);
    }

    else
    {

      v57 = MEMORY[0x277D84F90];
    }

    v68 = sub_218845F78(v57);

    sub_219BE6974();
    sub_2194FD114(&unk_27CC1B460, sub_218E02958, MEMORY[0x277D6CC40]);
    v69 = v134;
    sub_219BF56A4();
    v70 = *(v126 + 36);
    sub_2194FD114(&qword_27CC1B458, sub_218E02958, MEMORY[0x277D6CC48]);
    sub_219BF5E84();
    v106 = *(v69 + v70) == v142[0];
    v71 = v139;
    v72 = v130;
    v137 = v68;
    if (!v106)
    {
      v138 = (v129 + 16);
      v86 = (v129 + 32);
      v136 = v68 + 56;
      v126 = v129 + 8;
      v87 = MEMORY[0x277D84F90];
      while (1)
      {
        v88 = sub_219BF5EC4();
        v89 = v131;
        (*v138)(v131);
        v88(v142, 0);
        sub_219BF5E94();
        v90 = *v86;
        (*v86)(v141, v89, v71);
        v91 = v132;
        sub_219BE5FC4();
        sub_2194FD0B0(v91, v72);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_2194FD1C0(v72, type metadata accessor for ShortcutsModel);
LABEL_28:
          v90(v140, v141, v71);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v143 = v87;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_218C35CF8(0, *(v87 + 16) + 1, 1);
            v87 = v143;
          }

          v95 = *(v87 + 16);
          v94 = *(v87 + 24);
          if (v95 >= v94 >> 1)
          {
            sub_218C35CF8((v94 > 1), v95 + 1, 1);
            v87 = v143;
          }

          *(v87 + 16) = v95 + 1;
          v90((v87 + ((*(v129 + 80) + 32) & ~*(v129 + 80)) + *(v129 + 72) * v95), v140, v71);
          v72 = v130;
          goto LABEL_21;
        }

        type metadata accessor for Shortcut(0);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        sub_2194FD1C0(v72, type metadata accessor for Shortcut);
        if (!EnumCaseMultiPayload)
        {
          break;
        }

        if (EnumCaseMultiPayload == 1)
        {
          if (v128 != 1)
          {
            goto LABEL_28;
          }

          goto LABEL_20;
        }

        if (!v128)
        {
          goto LABEL_28;
        }

        if (v128 == 1)
        {
          goto LABEL_38;
        }

LABEL_20:
        (*v126)(v141, v71);
LABEL_21:
        v69 = v134;
        sub_219BF5E84();
        if (*(v69 + v70) == v142[0])
        {
          goto LABEL_18;
        }
      }

      if (!v128)
      {
        goto LABEL_20;
      }

      if (v128 != 1)
      {
        goto LABEL_28;
      }

LABEL_38:
      v96 = sub_219BE5F84();
      v98 = v97;
      v99 = v137;
      if (!*(v137 + 16) || (v100 = v96, sub_219BF7AA4(), sub_219BF5524(), v101 = sub_219BF7AE4(), v102 = -1 << *(v99 + 32), v103 = v101 & ~v102, ((*(v136 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103) & 1) == 0))
      {
LABEL_47:

        v71 = v139;
        goto LABEL_28;
      }

      v104 = ~v102;
      while (1)
      {
        v105 = (*(v137 + 48) + 16 * v103);
        v106 = *v105 == v100 && v105[1] == v98;
        if (v106 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v103 = (v103 + 1) & v104;
        if (((*(v136 + ((v103 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v103) & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      v71 = v139;
      v72 = v130;
      goto LABEL_20;
    }

    v87 = MEMORY[0x277D84F90];
LABEL_18:
    sub_2194FD1C0(v69, sub_2194FCF5C);

    v142[0] = v87;
    sub_2191EE948(v108);
    sub_2194FD114(&qword_27CC12540, type metadata accessor for ShortcutsModel, &unk_219CCD890);
    v73 = sub_219BF5964();

    v74 = sub_2194FD114(&qword_27CC12528, sub_2189534EC, MEMORY[0x277D6D408]);
    v75 = sub_2194FD114(&qword_27CC12530, sub_2189534EC, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9170](v73, v71, v74, v75);
    sub_2189532D4();
    sub_2194FD114(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel, &unk_219CCD6D8);
    v76 = v119;
    sub_219BE6924();
    v77 = v114;
    v78 = v112;
    v79 = v118;
    sub_219BEB234();
    v80 = v117;
    v81 = v116;
    v82 = v110;
    (*(v117 + 104))(v116, *MEMORY[0x277D6D868], v110);
    sub_218E02AC4();
    v83 = v122;
    sub_219BE85E4();
    (*(v80 + 8))(v81, v82);
    v113(v83);
    (*(v123 + 8))(v83, v124);
    v84 = *(v121 + 8);
    v85 = v127;
    v84(v76, v127);
    v84(v77, v85);
    return (*(v120 + 8))(v79, v78);
  }
}

void sub_2194FCEF4(uint64_t a1)
{
  if (!qword_27CC1B448)
  {
    type metadata accessor for ShortcutsModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1B448);
    }
  }
}

void sub_2194FCF5C(uint64_t a1)
{
  if (!qword_27CC1B450)
  {
    sub_218E02958(255);
    sub_2194FD114(&qword_27CC1B458, sub_218E02958, MEMORY[0x277D6CC48]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1B450);
    }
  }
}

void sub_2194FCFF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ShortcutsSectionDescriptor;
    v8[1] = type metadata accessor for ShortcutsModel(255);
    v8[2] = sub_2189532D4();
    v8[3] = sub_2194FD114(&qword_27CC0B0E0, type metadata accessor for ShortcutsModel, &unk_219CCD6D8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2194FD0B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShortcutsModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2194FD114(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2194FD15C(uint64_t a1, uint64_t a2)
{
  v4 = _s8ResolvedVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2194FD1C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2194FD224(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_219BED0A4();
      v5 = sub_219BF5A34();
      *(v5 + 16) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(v5 + v7, v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = v5 + v10 + v7;
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v12 = sub_219BED0A4();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

uint64_t sub_2194FD380(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      sub_2191FD670(0);
      v5 = v4;
      v6 = sub_219BF5A34();
      *(v6 + 16) = a2;
      v7 = *(v5 - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      sub_2195030C4(v3, v6 + v8, sub_2191FD670);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v7 + 72);
        v11 = v6 + v10 + v8;
        do
        {
          sub_2195030C4(v3, v11, sub_2191FD670);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    sub_21950312C(v3, sub_2191FD670);
    return v6;
  }

  return result;
}

uint64_t sub_2194FD4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD000000000000021, 0x8000000219D245F0);
  v7 = a4(0);
  v8 = MEMORY[0x21CECC6D0](a1, v7);
  MEMORY[0x21CECC330](v8);

  MEMORY[0x21CECC330](0xD000000000000017, 0x8000000219D24620);
  if (a2)
  {
    if (sub_219BEF844() >> 62)
    {
      sub_219BF7214();
    }
  }

  v9 = sub_219BF7894();
  MEMORY[0x21CECC330](v9);

  MEMORY[0x21CECC330](10506, 0xE200000000000000);
  return 0;
}

uint64_t sub_2194FD604(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_2194FD624, 0, 0);
}

uint64_t sub_2194FD624()
{
  v1 = v0[3];
  v2 = type metadata accessor for FoodForYouHeadlinesClusteringRequest(0);
  v3 = *(v1 + *(v2 + 68));
  v0[5] = v3;
  v4 = sub_219BF6214();
  v5 = MEMORY[0x277D84F90];
  sub_219BE5314("FoodClusteringService fetching ForYou headlines cluster...", 58, 2, &dword_2186C1000, v3, v4, MEMORY[0x277D84F90]);
  v6 = sub_219BED674();
  v7 = *(v1 + *(v2 + 20));
  v8 = *(v7 + 16);
  if (v8)
  {
    sub_219BF73F4();
    v9 = v7 + 48;
    do
    {
      v9 += 24;
      swift_unknownObjectRetain();
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      --v8;
    }

    while (v8);
  }

  sub_2191ED6C8(v5);
  v0[6] = v6;
  if (v6 >> 62)
  {
    sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);

    v11 = sub_219BF7534();
  }

  else
  {
    v10 = v6 & 0xFFFFFFFFFFFFFF8;

    sub_219BF7924();
    sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);
    v11 = v6;
    if (!swift_dynamicCastMetatype())
    {
      v23 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v6;
      if (v23)
      {
        v24 = v10 + 32;
        while (1)
        {
          v0[2] = &unk_282B48780;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v24 += 8;
          if (!--v23)
          {
            v11 = v6;
            goto LABEL_6;
          }
        }

        v11 = v10 | 1;
      }
    }
  }

LABEL_6:
  v12 = sub_219BED634();
  if (v12 >> 62)
  {
    sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);
    v13 = sub_219BF7534();
  }

  else
  {

    sub_219BF7924();
    sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);
    v13 = v12;
  }

  v25 = v11;
  sub_2191ED9E0(v13);
  v14 = v11;
  v0[7] = v11;
  sub_219502050(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v0[8] = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  if (v14 >> 62)
  {
    v17 = sub_219BF7214();
  }

  else
  {
    v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = MEMORY[0x277D83C10];
  *(v16 + 56) = MEMORY[0x277D83B88];
  *(v16 + 64) = v18;
  *(v16 + 32) = v17;
  sub_219BF6214();
  sub_219BE5314("FoodClusteringService candidate (%ld) headlines for the ForYou cluster", v25);

  v19 = swift_task_alloc();
  v0[9] = v19;
  *v19 = v0;
  v19[1] = sub_2194FD9FC;
  v21 = v0[3];
  v20 = v0[4];

  return sub_2194FE4B8(v21, v20, v14, v6);
}

uint64_t sub_2194FD9FC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 80) = v2;

  if (v2)
  {
    v7 = sub_2194FDC3C;
  }

  else
  {

    *(v6 + 88) = a2;
    *(v6 + 96) = a1;
    v7 = sub_2194FDB40;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2194FDB40()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[5];
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = sub_219A74E84(v1, v2);
  v7 = v6;
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  v8 = sub_219BF6214();
  sub_219BE5314("FoodClusteringService clustered headline result=%{public}@", 58, 2, &dword_2186C1000, v3, v8, v4);

  v9 = v0[1];
  v10 = v0[12];

  return v9(v10, v2);
}

uint64_t sub_2194FDC3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2194FDCA8(unint64_t a1, uint64_t a2, int *a3)
{
  v7 = sub_219BF02F4();
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEE6F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a2;
  v41 = a2;

  v13 = sub_2195EB294(sub_219502200, v40, a1);
  v42 = v3;
  v14 = *(a3 + 5);
  v35 = a3;
  __swift_project_boxed_opaque_existential_1(a3 + 2, v14);
  v15 = *MEMORY[0x277D32938];
  v16 = sub_219BEFBD4();
  v17 = v15;
  v18 = v13;
  (*(*(v16 - 8) + 104))(v12, v17, v16);
  (*(v10 + 104))(v12, *MEMORY[0x277D320E8], v9);
  v19 = v42;
  sub_219BF0004();
  if (!v19)
  {
    (*(v10 + 8))(v12, v9);

    sub_219BEF864();
    v20 = type metadata accessor for FoodForYouHeadlinesClusteringRequest(0);

    v42 = sub_219BEF824();
    v21 = *(v35 + 5);
    v34 = *(v35 + 6);
    __swift_project_boxed_opaque_existential_1(v35 + 2, v21);
    v35 = v20;
    sub_219B94FD0(v39);
    v22 = sub_219BEFFD4();
    (*(v36 + 8))(v39, v37);

    v26 = sub_219A781B8(*(v38 + v35[8]), v22);
    if (v25)
    {
      v28 = v25;
      v29 = v24;
      v30 = v23;
      sub_219BF7934();
      swift_unknownObjectRetain_n();
      v31 = swift_dynamicCastClass();
      if (!v31)
      {
        swift_unknownObjectRelease();
        v31 = MEMORY[0x277D84F90];
      }

      v32 = *(v31 + 16);

      if (__OFSUB__(v28 >> 1, v29))
      {
        __break(1u);
      }

      else if (v32 == (v28 >> 1) - v29)
      {
        v18 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v18)
        {
          return v18;
        }

        v18 = MEMORY[0x277D84F90];
LABEL_11:
        swift_unknownObjectRelease();
        return v18;
      }

      swift_unknownObjectRelease();
      v25 = v28;
      v24 = v29;
      v23 = v30;
    }

    sub_218B67464(v26, v23, v24, v25);
    v18 = v27;
    goto LABEL_11;
  }

  (*(v10 + 8))(v12, v9);

  return v18;
}

BOOL sub_2194FE148(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for FoodForYouHeadlinesClusteringRequest(0) + 60));
  v4 = [v2 itemID];
  v5 = sub_219BF5414();
  v7 = v6;

  LOBYTE(v3) = sub_2188537B8(v5, v7, v3);

  return (v3 & 1) == 0;
}

uint64_t sub_2194FE1E4(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = type metadata accessor for FoodForYouHeadlinesClusteringRequest(0);
  if (v3 < *(a2 + *(result + 28)))
  {
    sub_219BF7314();

    v5 = sub_219BF7894();
    MEMORY[0x21CECC330](v5);

    MEMORY[0x21CECC330](0x286E696D203C2029, 0xE800000000000000);
    v6 = sub_219BF7894();
    MEMORY[0x21CECC330](v6);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    sub_219502190();
    swift_allocError();
    *v7 = 0xD00000000000001ELL;
    *(v7 + 8) = 0x8000000219D244B0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2194FE360(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = type metadata accessor for FoodForYouHeadlinesClusteringRequest(0);
  if (v3 < *(a2 + *(result + 28)))
  {
    sub_219BF7314();

    v5 = sub_219BF7894();
    MEMORY[0x21CECC330](v5);

    MEMORY[0x21CECC330](0x286E696D203C2029, 0xE800000000000000);
    v6 = sub_219BF7894();
    MEMORY[0x21CECC330](v6);

    MEMORY[0x21CECC330](41, 0xE100000000000000);
    sub_219502190();
    swift_allocError();
    *v7 = 0xD00000000000001ELL;
    *(v7 + 8) = 0x8000000219D244B0;
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2194FE4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x2822009F8](sub_2194FE4DC, 0, 0);
}

uint64_t sub_2194FE4DC()
{
  v1 = sub_2194FDCA8(*(v0 + 48), *(v0 + 32), *(v0 + 40));
  *(v0 + 64) = v1;
  *(v0 + 72) = v2;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_2194FE8AC;
  v5 = *(v0 + 32);

  return sub_2194FF064(v5, v3);
}

uint64_t sub_2194FE8AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = sub_2194FED20;
  }

  else
  {

    v4 = sub_2194FE9C8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2194FE9C8()
{
  v1 = *(v0 + 96);
  sub_2194FE1E4(*(v0 + 88), *(v0 + 32));
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  if (v1)
  {
    v4 = v1;

    v5 = *(v0 + 56);
    type metadata accessor for FoodForYouHeadlinesClusteringRequest(0);
    sub_219502050(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_219C09BA0;
    if (v5 >> 62)
    {
      v7 = sub_219BF7214();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = MEMORY[0x277D83C10];
    *(v6 + 56) = MEMORY[0x277D83B88];
    *(v6 + 64) = v8;
    *(v6 + 32) = v7;
    sub_219BF6214();
    sub_219BE5314("FoodClusteringService failure to fetch for you headlines resulted in min item requirement not being met; fallback to fetched (%ld) headlines as candidate pool, reclustering...", v19);

    if (v5 >> 62)
    {
      sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);

      v10 = sub_219BF7534();
    }

    else
    {
      v9 = v5 & 0xFFFFFFFFFFFFFF8;

      sub_219BF7924();
      sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);
      if (swift_dynamicCastMetatype() || (v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
      {
LABEL_6:
        v10 = *(v0 + 56);
      }

      else
      {
        v15 = v9 + 32;
        while (1)
        {
          *(v0 + 16) = &unk_282B48780;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v15 += 8;
          if (!--v14)
          {
            goto LABEL_6;
          }
        }

        v10 = v9 | 1;
      }
    }

    v11 = sub_2194FDCA8(v10, *(v0 + 32), *(v0 + 40));
    v3 = v12;
    v13 = *(v0 + 32);

    sub_2194FE360(v11, v13);
    *(v0 + 24) = v11;
    sub_218F0A248(0);
    sub_219502148(&qword_280E8EF80, sub_218F0A248, MEMORY[0x277D83970]);
    v16 = sub_219BF5794();

    v2 = v16;
  }

  v17 = *(v0 + 8);

  return v17(v2, v3);
}

uint64_t sub_2194FED20()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 56);
  type metadata accessor for FoodForYouHeadlinesClusteringRequest(0);
  sub_219502050(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  if (v2 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = MEMORY[0x277D83B88];
  *(v3 + 64) = v5;
  *(v3 + 32) = v4;
  sub_219BF6214();
  sub_219BE5314("FoodClusteringService failure to fetch for you headlines resulted in min item requirement not being met; fallback to fetched (%ld) headlines as candidate pool, reclustering...", v17);

  if (v2 >> 62)
  {
    sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);

    v7 = sub_219BF7534();
  }

  else
  {
    v6 = v2 & 0xFFFFFFFFFFFFFF8;

    sub_219BF7924();
    sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);
    if (swift_dynamicCastMetatype() || (v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_5:
      v7 = *(v0 + 56);
    }

    else
    {
      v13 = v6 + 32;
      while (1)
      {
        *(v0 + 16) = &unk_282B48780;
        if (!swift_dynamicCastObjCProtocolConditional())
        {
          break;
        }

        v13 += 8;
        if (!--v12)
        {
          goto LABEL_5;
        }
      }

      v7 = v6 | 1;
    }
  }

  v8 = sub_2194FDCA8(v7, *(v0 + 32), *(v0 + 40));
  v10 = v9;
  v11 = *(v0 + 32);

  sub_2194FE360(v8, v11);
  *(v0 + 24) = v8;
  sub_218F0A248(0);
  sub_219502148(&qword_280E8EF80, sub_218F0A248, MEMORY[0x277D83970]);
  v14 = sub_219BF5794();

  v15 = *(v0 + 8);

  return v15(v14, v10);
}

uint64_t sub_2194FF064(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_2194FF088, 0, 0);
}

uint64_t sub_2194FF088()
{
  __swift_project_boxed_opaque_existential_1((v0[6] + 120), *(v0[6] + 144));
  type metadata accessor for FoodForYouHeadlinesClusteringRequest(0);
  v0[7] = sub_219BF2804();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_2194FF180;

  return MEMORY[0x2821D23D8](v0 + 2);
}

uint64_t sub_2194FF180()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2194FF3C4;
  }

  else
  {

    v2 = sub_2194FF29C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2194FF29C()
{
  v2 = v0[4];
  v1 = v0[5];
  v0[3] = v0[2];
  sub_2187E7248(0);
  sub_219502148(&qword_280E8EBF0, sub_2187E7248, MEMORY[0x277D83970]);
  v3 = sub_219BF57C4();

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = sub_218F8BFD8(sub_2195021E4, v4, v1);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_2194FF3C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2194FF428(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = MEMORY[0x277D83D88];
  sub_219502050(0, &qword_280E90F70, MEMORY[0x277D32C58], MEMORY[0x277D83D88]);
  v2[5] = swift_task_alloc();
  sub_219502050(0, &qword_280E91148, MEMORY[0x277D32A88], v3);
  v2[6] = swift_task_alloc();
  v4 = sub_219BF02F4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_219BEE6F4();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  sub_218C3EE8C(0);
  v2[13] = v6;
  v2[14] = *(v6 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2194FF658, 0, 0);
}

uint64_t sub_2194FF658()
{
  v110 = v0;
  v1 = v0[3];
  v2 = type metadata accessor for FoodBestOfRecipesClusteringRequest(0);
  v85 = v2[5];
  v3 = sub_219BEF9B4();
  v5 = v4;
  v6 = *(v1 + v2[14]);
  sub_219502050(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09EC0;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2186FC3BC();
  *(v7 + 64) = v9;
  *(v7 + 32) = v3;
  *(v7 + 40) = v5;
  v10 = *v1;
  v11 = *(*v1 + 16);
  v12 = MEMORY[0x277D83C10];
  *(v7 + 96) = MEMORY[0x277D83B88];
  *(v7 + 104) = v12;
  *(v7 + 72) = v11;

  v13 = sub_219BF6214();
  sub_219BE5314("FoodClusteringService resolving %{public}@ recipes, total items=%ld", 67, 2, &dword_2186C1000, v6, v13, v7);

  v94 = v2;
  v86 = v1;
  v87 = v6;
  v100 = *(v10 + 16);
  v102 = v3;
  v90 = v5;
  v107 = v9;
  v108 = *(v1 + v2[13]);
  if (v100)
  {
    v14 = v0[14];
    v92 = v0[4];
    v15 = *(v14 + 16);
    v14 += 16;
    v89 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v98 = v10 + v89;
    v103 = *(v14 + 56);
    v104 = v15;
    v95 = (v14 - 8);
    v88 = (v14 + 16);
    swift_bridgeObjectRetain_n();
    v16 = 0;
    v91 = MEMORY[0x277D84F90];
    v17 = v0;
    while (1)
    {
      v18 = v8;
      v19 = v17;
      v104(v17[16], v98 + v16 * v103, v17[13]);
      v20 = sub_219BEE284();
      v21 = sub_218845F78(v20);

      v22 = sub_219BEE294();
      v24 = v23;
      if (*(v108 + 16))
      {
        v25 = v22;
        sub_219BF7AA4();
        sub_219BF5524();
        v26 = sub_219BF7AE4();
        v27 = -1 << *(v108 + 32);
        v28 = v26 & ~v27;
        if ((*(v108 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          break;
        }
      }

LABEL_16:
      v17 = v19;
      v32 = v19[3];

      sub_218C33480(v21, *(v32 + v94[12]));
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        (*v95)(v19[16], v19[13]);
LABEL_4:
        v3 = v102;
        v8 = v18;
        goto LABEL_5;
      }

      v35 = v92[8];
      sub_219BEE2A4();
      v9 = v107;
      if (v36)
      {
        v37 = sub_219BF53D4();
      }

      else
      {
        v37 = 0;
      }

      v40 = [v35 hasMutedSubscriptionForTagID_];

      v8 = v18;
      if (v40)
      {
        (*v95)(v19[16], v19[13]);
LABEL_30:
        v3 = v102;
        goto LABEL_6;
      }

      __swift_project_boxed_opaque_existential_1(v92 + 9, v92[12]);
      v41 = sub_219BEE2C4();
      v42 = sub_219BF37D4();

      if ((v42 & 1) == 0)
      {
        v104(v19[15], v19[16], v19[13]);
        v43 = v91;
        v9 = v107;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_2191FAB28(0, v91[2] + 1, 1, v91);
        }

        v45 = v43[2];
        v44 = v43[3];
        if (v45 >= v44 >> 1)
        {
          v43 = sub_2191FAB28((v44 > 1), v45 + 1, 1, v43);
        }

        v46 = v17[15];
        v47 = v17[16];
        v48 = v17[13];
        v43[2] = v45 + 1;
        v91 = v43;
        (*v88)(v43 + v89 + v45 * v103, v46, v48);
        v49 = sub_219BEE294();
        sub_219497B60(v109, v49, v50);

        (*v95)(v47, v48);
        goto LABEL_30;
      }

      (*v95)(v19[16], v19[13]);
      v3 = v102;
LABEL_5:
      v9 = v107;
LABEL_6:
      if (++v16 == v100)
      {
        v6 = v87;
        v5 = v90;
        v51 = v91;
        goto LABEL_33;
      }
    }

    v29 = ~v27;
    while (1)
    {
      v30 = (*(v108 + 48) + 16 * v28);
      v31 = *v30 == v25 && v30[1] == v24;
      if (v31 || (sub_219BF78F4() & 1) != 0)
      {
        break;
      }

      v28 = (v28 + 1) & v29;
      if (((*(v108 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v17 = v19;
    v38 = v19[16];
    v39 = v19[13];

    (*v95)(v38, v39);

    goto LABEL_4;
  }

  swift_bridgeObjectRetain_n();
  v51 = MEMORY[0x277D84F90];
  v17 = v0;
LABEL_33:
  v106 = v17[12];
  v93 = v17[11];
  v96 = v17[10];
  v99 = v17[6];
  v101 = v17[5];
  v52 = v17;
  v53 = v17[4];
  v54 = v52[3];

  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_219C09EC0;
  *(v55 + 56) = v8;
  *(v55 + 64) = v9;
  *(v55 + 32) = v3;
  *(v55 + 40) = v5;
  v56 = v51[2];
  *(v55 + 96) = MEMORY[0x277D83B88];
  *(v55 + 104) = MEMORY[0x277D83C10];
  *(v55 + 72) = v56;

  v57 = sub_219BF6214();
  sub_219BE5314("FoodClusteringService filtered %{public}@ recipes, filtered count=%ld", 69, 2, &dword_2186C1000, v6, v57, v55);

  __swift_project_boxed_opaque_existential_1((v53 + 16), *(v53 + 40));
  sub_218C6FA54();
  v58 = sub_219BF0044();

  sub_219BEF864();

  v105 = sub_219BEF834();
  __swift_project_boxed_opaque_existential_1((v53 + 16), *(v53 + 40));
  v52[2] = v58;
  sub_21925ACF0(0);
  sub_219502148(&qword_280E8EF58, sub_21925ACF0, MEMORY[0x277D83970]);
  sub_219BF57B4();

  v59 = sub_219BEF9C4();
  (*(*(v59 - 8) + 16))(v106, v86 + v85, v59);
  (*(v93 + 104))(v106, *MEMORY[0x277D320D8], v96);
  v60 = *(v54 + v94[6]);
  v61 = sub_219BEFD84();
  (*(*(v61 - 8) + 56))(v99, 1, 1, v61);
  v62 = *(v54 + v94[8]);
  v63 = *(v54 + v94[9]);
  v64 = v94[10];
  v65 = sub_219BF0354();
  v66 = *(v65 - 8);
  (*(v66 + 16))(v101, v54 + v64, v65);
  (*(v66 + 56))(v101, 0, 1, v65);

  v84 = v63;
  v83 = v62;
  sub_219BF02D4();
  v67 = sub_219BEFFD4();
  v69 = v52[11];
  v68 = v52[12];
  v71 = v52[9];
  v70 = v52[10];
  v73 = v52[7];
  v72 = v52[8];
  v74 = v52[3];
  v97 = v67;

  (*(v72 + 8))(v71, v73);
  (*(v69 + 8))(v68, v70);
  v75 = sub_2195022BC(v97, *(v74 + v94[15]), *(v74 + v94[16]));

  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_219C09EC0;
  v77 = MEMORY[0x277D837D0];
  *(v76 + 56) = MEMORY[0x277D837D0];
  *(v76 + 64) = v107;
  *(v76 + 32) = v102;
  *(v76 + 40) = v90;
  v78 = sub_2194FD4B8(v75, v105, v60, MEMORY[0x277D31DF8]);
  *(v76 + 96) = v77;
  *(v76 + 104) = v107;
  *(v76 + 72) = v78;
  *(v76 + 80) = v79;
  v80 = sub_219BF6214();
  sub_219BE5314("FoodClusteringService created %{public}@ recipes cluster: %{public}@", 68, 2, &dword_2186C1000, v87, v80, v76, 0, v83, 0, v84, v101);

  v81 = v52[1];

  return v81(v75, v105, v60);
}

uint64_t sub_21950020C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  sub_218C3EE8C(0);
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2195002D4, 0, 0);
}

uint64_t sub_2195002D4()
{
  v72 = v0;
  v2 = v0[4];
  sub_219502050(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  v4 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_84;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_219BF7214())
  {
    v6 = MEMORY[0x277D83B88];
    v7 = MEMORY[0x277D83C10];
    *(v3 + 56) = MEMORY[0x277D83B88];
    *(v3 + 64) = v7;
    *(v3 + 32) = i;
    sub_219BF6214();
    sub_219BE5314("FoodClusteringService resolving Trending recipes, total items=%ld", v63);

    v70 = MEMORY[0x277D84F90];
    v8 = v4 ? sub_219BF7214() : *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = MEMORY[0x277D84F90];
    v68 = v8;
    v69 = v0;
    if (!v8)
    {
      break;
    }

    v10 = 0;
    v1 = v0[8];
    v11 = v2 & 0xC000000000000001;
    v3 = v2 & 0xFFFFFFFFFFFFFF8;
    v0 = (v0[4] + 32);
    v12 = v8;
    v66 = v0;
    while (1)
    {
      if (v11)
      {
        v13 = MEMORY[0x21CECE0F0](v10, v69[4]);
      }

      else
      {
        if (v10 >= *(v3 + 16))
        {
          goto LABEL_83;
        }

        v13 = v0[v10];
      }

      v14 = v13;
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = v1[8];
      v16 = [v13 publisherID];
      v2 = [v15 hasMutedSubscriptionForTagID_];

      if (v2)
      {
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
        v2 = v14;
        v17 = sub_219BF37D4();

        if (v17)
        {
        }

        else
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        v0 = v66;
        v12 = v68;
      }

      ++v10;
      if (v4 == v12)
      {
        v0 = v69;
        v9 = v70;
        v6 = MEMORY[0x277D83B88];
        v7 = MEMORY[0x277D83C10];
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    ;
  }

LABEL_21:
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09BA0;
  if (v9 < 0)
  {
    v19 = 1;
  }

  else
  {
    v19 = (v9 >> 62) & 1;
  }

  if (v19 == 1)
  {
    v62 = v18;
    v20 = sub_219BF7214();
    v18 = v62;
  }

  else
  {
    v20 = *(v9 + 16);
  }

  v21 = v0[6];
  v22 = v0[7];
  *(v18 + 56) = v6;
  *(v18 + 64) = v7;
  *(v18 + 32) = v20;
  v23 = v18;

  sub_219BF6214();
  sub_219BE5314("FoodClusteringService filtered Trending recipes, filtered count=%ld", v63);

  if (v21 < 0)
  {
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  if (v19)
  {
    v22 = sub_219BF7214();
    if (sub_219BF7214() < 0)
    {
LABEL_89:
      __break(1u);
      goto LABEL_90;
    }

    v24 = v0[6];
    if (v22 >= v24)
    {
      v25 = v0[6];
    }

    else
    {
      v25 = v22;
    }

    if (v22 < 0)
    {
      v25 = v0[6];
    }

    if (v24)
    {
      v22 = v25;
    }

    else
    {
      v22 = 0;
    }

    v26 = sub_219BF7214();
  }

  else
  {
    v27 = v0[6];
    v26 = *(v9 + 16);
    if (v26 >= v27)
    {
      v28 = v0[6];
    }

    else
    {
      v28 = *(v9 + 16);
    }

    if (v27)
    {
      v22 = v28;
    }

    else
    {
      v22 = 0;
    }
  }

  if (v26 < v22)
  {
    goto LABEL_87;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {

    if (v22)
    {
      v23 = sub_218C6FA54();
      v29 = 0;
      do
      {
        v30 = v29 + 1;
        sub_219BF7334();
        v29 = v30;
      }

      while (v22 != v30);
    }
  }

  else
  {
  }

  if (v19)
  {
    v1 = sub_219BF7564();
    v7 = v31;
    v19 = v32;
    v22 = v33;
  }

  else
  {
    v19 = 0;
    v7 = v9 + 32;
    v22 = (2 * v22) | 1;
    v1 = v9;
  }

  if (__OFSUB__(v22 >> 1, v19))
  {
    goto LABEL_88;
  }

  v67 = v22;
  v23 = v0[5];
  if (((v22 >> 1) - v19) < v23)
  {

    sub_219BF7314();

    v70 = 0x676E69646E657274;
    v71 = 0xEA0000000000202CLL;
    v0[2] = (v22 >> 1) - v19;
    v34 = sub_219BF7894();
    MEMORY[0x21CECC330](v34);

    MEMORY[0x21CECC330](2112544, 0xE300000000000000);
    v0[3] = v23;
    v35 = sub_219BF7894();
    MEMORY[0x21CECC330](v35);

    v36 = v71;
    sub_219502190();
    swift_allocError();
    *v37 = v70;
    *(v37 + 8) = v36;
    *(v37 + 16) = 0;
    *(v37 + 24) = 0;
    swift_willThrow();
    swift_unknownObjectRelease();

    v38 = v0[1];

    return v38();
  }

  v65 = (v22 >> 1) - v19;
  if (!v20)
  {

    goto LABEL_70;
  }

  v70 = MEMORY[0x277D84F90];
  v22 = &v70;
  sub_218C34408(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v64 = v1;
  v40 = 0;
  v41 = v0[10];
  v42 = v70;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x21CECE0F0](v40, v9);
    }

    else
    {
      v43 = *(v9 + 8 * v40 + 32);
    }

    v44 = [v43 scoreProfile];
    sub_218C6FA54();
    sub_219BEE2B4();
    v70 = v42;
    v46 = *(v42 + 16);
    v45 = *(v42 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_218C34408((v45 > 1), v46 + 1, 1);
      v42 = v70;
    }

    v47 = v69[11];
    v48 = v69[9];
    ++v40;
    *(v42 + 16) = v46 + 1;
    (*(v41 + 32))(v42 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v46, v47, v48);
  }

  while (v20 != v40);

  v0 = v69;
  v1 = v64;
LABEL_70:
  sub_219BEF864();
  sub_218C6FA54();
  v22 = sub_219BEF834();
  v23 = v67;
  if ((v67 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_72:
    sub_218B66B8C(v1, v7, v19, v23);
    v50 = v49;
LABEL_78:
    swift_unknownObjectRelease();
    goto LABEL_79;
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v51 = swift_dynamicCastClass();
  if (!v51)
  {
    swift_unknownObjectRelease();
    v51 = MEMORY[0x277D84F90];
  }

  v52 = *(v51 + 16);

  if (v52 != v65)
  {
LABEL_91:
    swift_unknownObjectRelease();
    goto LABEL_72;
  }

  v50 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v50)
  {
    v50 = MEMORY[0x277D84F90];
    goto LABEL_78;
  }

LABEL_79:
  v53 = v0[7];
  v54 = v0[5];
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_219C09BA0;
  v56 = sub_2194FD4B8(v50, v22, v54, sub_218C6FA54);
  v58 = v57;
  *(v55 + 56) = MEMORY[0x277D837D0];
  *(v55 + 64) = sub_2186FC3BC();
  *(v55 + 32) = v56;
  *(v55 + 40) = v58;
  v59 = sub_219BF6214();
  sub_219BE5314("FoodClusteringService created Trending recipes cluster: %{public}@", 66, 2, &dword_2186C1000, v53, v59, v55);

  swift_unknownObjectRelease();

  v60 = v0[1];
  v61 = v0[5];

  return v60(v50, v22, v61);
}

uint64_t sub_219500BB4(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_219BF0174();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_219BF01F4();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = sub_219BEFC44();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v7 = sub_219BEED94();
  v3[21] = v7;
  v3[22] = *(v7 - 8);
  v3[23] = swift_task_alloc();
  v8 = sub_219BEFD94();
  v3[24] = v8;
  v3[25] = *(v8 - 8);
  v3[26] = swift_task_alloc();
  sub_219502050(0, &unk_280E91800, MEMORY[0x277D32348], MEMORY[0x277D83D88]);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v9 = sub_219BEEDB4();
  v3[31] = v9;
  v3[32] = *(v9 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  sub_218C3EE8C(0);
  v3[36] = v10;
  v3[37] = *(v10 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = type metadata accessor for FoodTagRecipesClusteringRequest(0);
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219500F80, 0, 0);
}

uint64_t sub_219500F80()
{
  v84 = v0;
  sub_2195030C4(v0[9], v0[41], type metadata accessor for FoodTagRecipesClusteringRequest);
  v1 = sub_219BE5414();
  v2 = sub_219BF6214();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[41];
  if (v3)
  {
    v5 = v0[40];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    v7 = *(*(v4 + *(v5 + 20)) + 16);
    sub_21950312C(v4, type metadata accessor for FoodTagRecipesClusteringRequest);
    *(v6 + 4) = v7;
    _os_log_impl(&dword_2186C1000, v1, v2, "FoodClusteringService resolving tag group recipes, total recipes=%ld", v6, 0xCu);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  else
  {
    sub_21950312C(v0[41], type metadata accessor for FoodTagRecipesClusteringRequest);
  }

  v8 = v0[40];
  v9 = v0[9];
  v10 = v0[10];

  v13 = *(v9 + *(v8 + 20));
  v77 = v0;
  v78 = *(v13 + 16);
  if (v78)
  {
    v14 = 0;
    v15 = v0[37];
    v72 = v0[10];
    v71 = (v15 + 32);
    v16 = MEMORY[0x277D84F90];
    v75 = v13;
    while (v14 < *(v13 + 16))
    {
      v80 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = *(v15 + 72);
      (*(v15 + 16))(v0[39], v13 + v80 + v17 * v14, v0[36]);
      v18 = *(v10 + 64);
      sub_219BEE2A4();
      if (v19)
      {
        v20 = sub_219BF53D4();
      }

      else
      {
        v20 = 0;
      }

      v21 = [v18 hasMutedSubscriptionForTagID_];

      if (v21 & 1) != 0 || (__swift_project_boxed_opaque_existential_1((v10 + 72), *(v72 + 96)), v22 = sub_219BEE2C4(), v13 = v75, v0 = v77, v23 = sub_219BF37D4(), v22, (v23))
      {
        v11 = (*(v15 + 8))(v0[39], v0[36]);
      }

      else
      {
        v24 = *v71;
        (*v71)(v77[38], v77[39], v77[36]);
        v83 = v16;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_218C34408(0, *(v16 + 16) + 1, 1);
          v16 = v83;
        }

        v26 = *(v16 + 16);
        v25 = *(v16 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_218C34408((v25 > 1), v26 + 1, 1);
          v16 = v83;
        }

        v27 = v77[38];
        v28 = v77[36];
        *(v16 + 16) = v26 + 1;
        v11 = v24(v16 + v80 + v26 * v17, v27, v28);
        v13 = v75;
      }

      if (v78 == ++v14)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
LABEL_20:

    v29 = sub_219BE5414();
    v30 = sub_219BF6214();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134217984;
      *(v31 + 4) = *(v16 + 16);

      _os_log_impl(&dword_2186C1000, v29, v30, "FoodClusteringService filtered tag group recipes, filtered recipes=%ld", v31, 0xCu);
      MEMORY[0x21CECF960](v31, -1, -1);
    }

    else
    {
    }

    v32 = v0[40];
    v73 = v0[35];
    v76 = v0[34];
    v69 = v0[32];
    v74 = v0[31];
    v33 = v0[30];
    v81 = v0[29];
    v34 = v0[28];
    v79 = v0[27];
    v35 = v0[25];
    v65 = v0[26];
    v66 = v0[24];
    v67 = v0[23];
    v68 = v0[22];
    v70 = v0[10];
    v36 = v77[9];
    v77[7] = v16;
    sub_21925ACF0(0);
    sub_218C6FA54();
    sub_219502148(&qword_280E8EF58, sub_21925ACF0, MEMORY[0x277D83970]);
    sub_219BF57B4();

    sub_2195020B4(v36 + v32[13], v33);
    sub_2195020B4(v36 + v32[9], v81);
    sub_2195020B4(v36 + v32[14], v34);
    v37 = sub_219BEED84();
    (*(*(v37 - 8) + 56))(v79, 1, 1, v37);
    (*(v35 + 16))(v65, v36 + v32[15], v66);
    v38 = *(v36 + v32[12]);
    *v67 = *(v36 + v32[11]);
    v67[1] = v38;
    (*(v68 + 104))();
    v39 = sub_219BEE6F4();
    v40 = MEMORY[0x277D320F0];
    v77[5] = v39;
    v77[6] = v40;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    v42 = *MEMORY[0x277D32840];
    v43 = sub_219BEF9C4();
    (*(*(v43 - 8) + 104))(boxed_opaque_existential_1, v42, v43);
    (*(*(v39 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D320D8], v39);
    v44 = *(v70 + 200);
    swift_unknownObjectRetain();

    v45 = [v44 autofavoriteTagIDs];
    sub_219BF5D44();

    sub_219BEEDA4();
    v46 = *(v69 + 16);
    v46(v76, v73, v74);
    v47 = v77;
    v48 = sub_219BE5414();
    v49 = sub_219BF6214();
    v50 = os_log_type_enabled(v48, v49);
    v51 = v77[34];
    if (v50)
    {
      v52 = v77[32];
      v53 = v77[33];
      v54 = v77[31];
      v55 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v83 = v82;
      *v55 = 136446210;
      v46(v53, v51, v54);
      v56 = sub_219BF5484();
      v58 = v57;
      v59 = *(v52 + 8);
      v47 = v77;
      v59(v51, v54);
      v60 = sub_2186D1058(v56, v58, &v83);

      *(v55 + 4) = v60;
      _os_log_impl(&dword_2186C1000, v48, v49, "FoodClusteringService clustering tag group recipes, request: %{public}s", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x21CECF960](v82, -1, -1);
      MEMORY[0x21CECF960](v55, -1, -1);
    }

    else
    {
      v61 = v77[31];
      v62 = v77[32];

      v59 = *(v62 + 8);
      v59(v51, v61);
    }

    v47[42] = v59;
    v63 = swift_task_alloc();
    v47[43] = v63;
    *v63 = v47;
    v63[1] = sub_2195018B8;
    v12 = v47[35];
    v11 = v47[8];
  }

  return MEMORY[0x282190F00](v11, v12);
}

uint64_t sub_2195018B8()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_219501CF0;
  }

  else
  {
    v2 = sub_2195019CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2195019CC()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[8];
  v4 = *(v0[18] + 16);
  v4(v0[20], v3, v2);
  v4(v1, v3, v2);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[20];
  v10 = v0[17];
  v9 = v0[18];
  if (v7)
  {
    v11 = v0[15];
    v12 = v0[16];
    v13 = v0[13];
    v28 = v0[14];
    v29 = v0[19];
    log = v5;
    v14 = v0[12];
    v30 = v0[11];
    v15 = swift_slowAlloc();
    *v15 = 134218240;
    v31 = v6;
    sub_219BEFC14();
    v16 = sub_219BF01E4();
    (*(v11 + 8))(v12, v28);
    v17 = *(v16 + 16);

    v18 = *(v9 + 8);
    v18(v8, v10);
    *(v15 + 4) = v17;
    *(v15 + 12) = 2048;
    sub_219BEFC04();
    v19 = sub_219BF0164();
    (*(v14 + 8))(v13, v30);
    v20 = *(v19 + 16);

    v18(v29, v10);
    *(v15 + 14) = v20;
    _os_log_impl(&dword_2186C1000, log, v31, "FoodClusteringService clustered %ld channel clusters and %ld topic clusters", v15, 0x16u);
    MEMORY[0x21CECF960](v15, -1, -1);
    v21 = log;
  }

  else
  {
    v22 = *(v9 + 8);
    v22(v0[19], v0[17]);
    v22(v8, v10);
    v21 = v5;
  }

  v23 = v0[42];
  v24 = v0[35];
  v25 = v0[31];

  v23(v24, v25);

  v26 = v0[1];

  return v26();
}

uint64_t sub_219501CF0()
{
  (*(v0 + 336))(*(v0 + 280), *(v0 + 248));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219501E40()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_219501EB0(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_219BEDBE4();
  v7 = swift_dynamicCastObjCProtocolConditional();
  if (v7)
  {
    *a4 = v7;
    return;
  }

  swift_unknownObjectRelease();
  v8 = sub_219BEDBA4();
  if (*(a2 + 16))
  {
    v10 = sub_21870F700(v8, v9);
    v12 = v11;

    if (v12)
    {
      *a4 = *(*(a2 + 56) + 8 * v10);
      swift_unknownObjectRetain();
      return;
    }
  }

  else
  {
  }

  v13 = *(a3 + *(type metadata accessor for FoodForYouHeadlinesClusteringRequest(0) + 68));
  v14 = sub_219BF61F4();
  sub_219502050(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09BA0;
  v16 = sub_219BEDBA4();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_2186FC3BC();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_219BE5314("Food clustering failed to fetch item %{public}@", 47, 2, &dword_2186C1000, v13, v14, v15);

  *a4 = 0;
}

void sub_219502050(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2195020B4(uint64_t a1, uint64_t a2)
{
  sub_219502050(0, &unk_280E91800, MEMORY[0x277D32348], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219502148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219502190()
{
  result = qword_27CC1B470;
  if (!qword_27CC1B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B470);
  }

  return result;
}

void *sub_219502220(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x277D84F90];
    }

    v4 = result;
    v6 = sub_219BF5A34();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

char *sub_2195022BC(char *a1, int64_t a2, uint64_t a3)
{
  v111 = a3;
  v110 = sub_219BDBFA4();
  v107 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219503030(0);
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEDC04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v94 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = &v76 - v13;
  MEMORY[0x28223BE20](v14);
  v112 = &v76 - v15;
  v16 = sub_219BDC014();
  v77 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v90 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  sub_2191FD670(0);
  v100 = *(v21 - 8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v93 = &v76 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v76 - v27;
  MEMORY[0x28223BE20](v29);
  v114 = &v76 - v30;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v76 - v33;
  v108 = a1;
  v35 = *(a1 + 2);
  v82 = v10;
  v36 = *(v10 + 56);
  v81 = v10 + 56;
  v80 = v36;
  v36(&v76 - v33, 1, 1, v9, v32);
  v95 = v34;
  v37 = sub_2194FD380(v34, v35);
  v99 = v20;
  sub_219BDBFB4();
  v113 = v16;
  v97 = v23;
  if (v35)
  {
    v38 = v111 - a2;
    if (v111 < a2)
    {
      goto LABEL_68;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_69:
      v37 = sub_2194ABAB0(v37);
    }

    v102 = *(v82 + 16);
    v79 = (*(v82 + 80) + 32) & ~*(v82 + 80);
    v89 = &v108[v79];
    v96 = *(v82 + 72);
    v105 = (v82 + 8);
    v106 = (v82 + 48);
    v88 = (v77 + 16);
    v108 = v107 + 8;
    v103 = v82 + 16;
    v78 = (v82 + 32);
    v92 = MEMORY[0x277D84F90];
    v39 = 0;
    v87 = v9;
    v85 = a2;
    v98 = v37;
    v107 = v28;
    v84 = v35;
    v86 = v38;
    while (1)
    {
      if (v39 == v35)
      {
        goto LABEL_65;
      }

      v104 = v39;
      v102(v112, &v89[v96 * v39], v9);
      if (v38 == -1)
      {
        v115 = 0;
        MEMORY[0x21CECF980](&v115, 8);
        v41 = v115;
      }

      else
      {
        v41 = (sub_218D34164(v38 + 1) + a2);
      }

      v101 = v41;
      a2 = v100;
      v35 = *(v37 + 16);
      if (v35)
      {
        break;
      }

LABEL_27:
      LODWORD(v111) = 1;
LABEL_29:
      ++v104;
      (*v88)(v90, v99, v16);
      v56 = MEMORY[0x277CC9A28];
      sub_219502148(&unk_280EE9BE0, MEMORY[0x277CC9A28], MEMORY[0x277CC9A48]);
      sub_219BF56A4();
      v9 = *(v91 + 36);
      v28 = sub_219502148(&qword_280EE9BD8, v56, MEMORY[0x277CC9A50]);
      v57 = &v101[v35];
      v35 = __OFADD__(v35, v101);
      v58 = (v57 + 1);
      v37 = __OFADD__(v57, 1);
      while (1)
      {
        v38 = v109;
        v16 = v113;
        sub_219BF5E84();
        sub_219502148(&unk_280EE9BF0, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
        v59 = v110;
        v60 = sub_219BF53A4();
        (*v108)(v38, v59);
        if (v60)
        {
          break;
        }

        v61 = sub_219BF5EC4();
        a2 = *v62;
        v61(&v115, 0);
        sub_219BF5E94();
        if (v111)
        {
          goto LABEL_40;
        }

        if (v35)
        {
          __break(1u);
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

        if (v37)
        {
          goto LABEL_63;
        }

        if (a2 >= v58)
        {
LABEL_40:
          sub_21950312C(v8, sub_219503030);
          v38 = v95;
          v9 = v87;
          v102(v95, v112, v87);
          v80(v38, 0, 1, v9);
          if (a2 < 0)
          {
            goto LABEL_66;
          }

          v37 = v98;
          v38 = v86;
          if (a2 < *(v98 + 16))
          {
            sub_21950318C(v95, v98 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * a2);
            sub_219BDBFF4();
            v16 = v113;
            v23 = v97;
            a2 = v85;
            v28 = v107;
            v35 = v84;
            goto LABEL_6;
          }

          goto LABEL_67;
        }
      }

      sub_21950312C(v8, sub_219503030);
      v9 = v87;
      v102(v83, v112, v87);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = sub_2191F9164(0, *(v92 + 2) + 1, 1, v92);
      }

      v23 = v97;
      v37 = v98;
      v28 = v107;
      v35 = v84;
      v64 = *(v92 + 2);
      v63 = *(v92 + 3);
      a2 = v85;
      if (v64 >= v63 >> 1)
      {
        v92 = sub_2191F9164((v63 > 1), v64 + 1, 1, v92);
      }

      v40 = v92;
      *(v92 + 2) = v64 + 1;
      (*v78)(&v40[v79 + v64 * v96], v83, v9);
      v38 = v86;
LABEL_6:
      (*v105)(v112, v9);
      v39 = v104;
      if (v104 == v35)
      {
        goto LABEL_49;
      }
    }

    v38 = v37 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    while (1)
    {
      if (v35 > *(v37 + 16))
      {
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      v42 = v37;
      --v35;
      v43 = v9;
      v44 = v114;
      sub_2195030C4(v38 + *(a2 + 72) * v35, v114, sub_2191FD670);
      v45 = v44;
      v9 = v43;
      sub_2195030C4(v45, v28, sub_2191FD670);
      if ((*v106)(v28, 1, v43) == 1)
      {
        break;
      }

      v48 = sub_219BEDBB4();
      v49 = v28;
      v50 = v48;
      v52 = v51;
      (*v105)(v49, v43);
      v53 = sub_219BEDBB4();
      v47 = v54;
      if (!v52)
      {
        v16 = v113;
        goto LABEL_25;
      }

      v37 = v42;
      if (v54)
      {
        if (v50 == v53 && v52 == v54)
        {

          sub_21950312C(v114, sub_2191FD670);
          LODWORD(v111) = 0;
          v16 = v113;
          goto LABEL_29;
        }

        v55 = sub_219BF78F4();

        sub_21950312C(v114, sub_2191FD670);
        v16 = v113;
        if (v55)
        {
          goto LABEL_28;
        }
      }

      else
      {

        sub_21950312C(v114, sub_2191FD670);
        v16 = v113;
      }

LABEL_14:
      v28 = v107;
      if (!v35)
      {
        goto LABEL_27;
      }
    }

    sub_21950312C(v28, sub_2191FD670);
    sub_219BEDBB4();
    v47 = v46;
LABEL_25:
    v37 = v42;
    sub_21950312C(v114, sub_2191FD670);
    if (!v47)
    {
LABEL_28:
      LODWORD(v111) = 0;
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  v92 = MEMORY[0x277D84F90];
LABEL_49:
  v65 = *(v37 + 16);
  if (v65)
  {
    v66 = v37 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
    v67 = *(v100 + 72);
    v68 = (v82 + 48);
    v69 = (v82 + 32);
    v70 = MEMORY[0x277D84F90];
    v98 = v37;
    do
    {
      v71 = v93;
      sub_2195030C4(v66, v93, sub_2191FD670);
      sub_2195031F0(v71, v23);
      if ((*v68)(v23, 1, v9) == 1)
      {
        sub_21950312C(v23, sub_2191FD670);
      }

      else
      {
        v72 = *v69;
        (*v69)(v94, v23, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_2191F9164(0, *(v70 + 2) + 1, 1, v70);
        }

        v74 = *(v70 + 2);
        v73 = *(v70 + 3);
        if (v74 >= v73 >> 1)
        {
          v70 = sub_2191F9164((v73 > 1), v74 + 1, 1, v70);
        }

        *(v70 + 2) = v74 + 1;
        v72(&v70[((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v74], v94, v9);
        v23 = v97;
      }

      v66 += v67;
      --v65;
    }

    while (v65);

    v16 = v113;
  }

  else
  {

    v70 = MEMORY[0x277D84F90];
  }

  v115 = v70;
  sub_2191EEEC8(v92);
  (*(v77 + 8))(v99, v16);
  return v115;
}

void sub_219503030(uint64_t a1)
{
  if (!qword_280E8D550)
  {
    sub_219BDC014();
    sub_219502148(&qword_280EE9BD8, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D550);
    }
  }
}

uint64_t sub_2195030C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21950312C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21950318C(uint64_t a1, uint64_t a2)
{
  sub_2191FD670(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2195031F0(uint64_t a1, uint64_t a2)
{
  sub_2191FD670(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219503280()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD34();
  MEMORY[0x28223BE20](v8 - 8);
  sub_219BDBBB4();
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A8], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D090], v0);
  sub_21870E204(0);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_280F62808 = result;
  return result;
}

uint64_t type metadata accessor for CuratedTodayFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EBBA58;
  if (!qword_280EBBA58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2195034F8(uint64_t a1)
{
  sub_2189AE994(319);
  if (v1 <= 0x3F)
  {
    sub_2186F9548();
    if (v2 <= 0x3F)
    {
      sub_2186F95C4();
      if (v3 <= 0x3F)
      {
        sub_2186ECA28();
        if (v4 <= 0x3F)
        {
          sub_2189AE9B4(319);
          if (v5 <= 0x3F)
          {
            sub_2186E4FBC(319);
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

uint64_t sub_2195035E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  sub_2189AE9B4(0);
  v88 = v3;
  v83 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v82 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AE994(0);
  v87 = v5;
  v79 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v80 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for CuratedTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v81);
  v8 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v9 - 8);
  v86 = v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AF700(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v91 = v67 - v15;
  sub_2189AF720(0);
  MEMORY[0x28223BE20](v16 - 8);
  v85 = v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v89 = v67 - v19;
  sub_21950497C(0, &qword_280E8CD10, MEMORY[0x277D844C8]);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = v67 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219504928();
  v25 = v90;
  sub_219BF7B34();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v69 = v13;
  v71 = 0;
  v73 = v22;
  v75 = v8;
  v74 = a1;
  LOBYTE(v97) = 0;
  sub_2186DFE18(&qword_280E91A28, sub_2189AE994, MEMORY[0x277D321B0]);
  v27 = v89;
  v28 = v87;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v96) = 1;
  v29 = MEMORY[0x277D32620];
  sub_2186DFE18(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  sub_219BF7674();
  v78 = v97;
  LOBYTE(v95) = 2;
  sub_219BF7674();
  v90 = v96;
  sub_2186F95C4();
  v31 = v30;
  LOBYTE(v94) = 3;
  sub_2186DFE18(&qword_280E913F8, sub_2186F95C4, v29);
  sub_219BF7674();
  v77 = v95;
  sub_2186ECA28();
  v33 = v32;
  LOBYTE(v93) = 4;
  sub_2186DFE18(&qword_280E913D8, sub_2186ECA28, v29);
  v67[0] = v33;
  sub_219BF7674();
  v76 = v94;
  LOBYTE(v93) = 5;
  sub_2186DFE18(&qword_280E91868, sub_2189AE9B4, MEMORY[0x277D32328]);
  sub_219BF7674();
  sub_219BEF814();
  LOBYTE(v93) = 6;
  sub_2186DFE18(&qword_280E912E8, MEMORY[0x277D32720], MEMORY[0x277D32738]);
  sub_219BF7674();
  LOBYTE(v92) = 7;
  v67[1] = v31;
  sub_219BF7674();
  v68 = v93;
  v34 = v27;
  v35 = v85;
  sub_219504A40(v34, v85, sub_2189AF720);
  v36 = v79;
  v37 = *(v79 + 48);
  v38 = v21;
  if (v37(v35, 1, v28) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFE18(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v39 = v80;
    sub_219BEE974();
    v40 = v35;
    v41 = v87;
    v42 = v37(v40, 1, v87);
    v43 = v39;
    v44 = v81;
    v45 = v41;
    if (v42 != 1)
    {
      sub_2195049E0(v85, sub_2189AF720);
      v45 = v41;
    }
  }

  else
  {
    v43 = v80;
    v46 = v87;
    (*(v36 + 32))(v80, v35, v87);
    v44 = v81;
    v45 = v46;
  }

  v47 = v75;
  (*(v36 + 32))(v75, v43, v45);
  v48 = v91;
  if (v78)
  {
    v49 = v78;
  }

  else
  {
    v92 = 1;
    swift_allocObject();
    v49 = sub_219BEF534();
  }

  *(v47 + v44[5]) = v49;
  v50 = v90;
  if (v90)
  {

    v51 = v50;
  }

  else
  {
    v92 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();

    v51 = sub_219BEF534();
  }

  v52 = v88;
  *(v47 + v44[6]) = v51;
  v53 = v83;
  v54 = v77;
  if (v77)
  {

    v55 = v54;
  }

  else
  {
    LOBYTE(v92) = 1;
    swift_allocObject();

    v55 = sub_219BEF534();
  }

  *(v47 + v44[7]) = v55;
  v56 = v76;
  v72 = v38;
  v70 = v24;
  if (v76)
  {

    v57 = v56;
  }

  else
  {
    v92 = 0;
    swift_allocObject();

    v57 = sub_219BEF534();
  }

  *(v47 + v44[8]) = v57;
  v58 = v69;
  sub_219504A40(v48, v69, sub_2189AF700);
  v59 = *(v53 + 48);
  if (v59(v58, 1, v52) == 1)
  {
    type metadata accessor for TodayFeedServiceConfig(0);
    sub_2186DFE18(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);

    v60 = v82;
    sub_219BEEC74();
    v61 = v59(v58, 1, v52);
    v62 = v74;
    v63 = v84;
    v64 = v73;
    if (v61 != 1)
    {
      sub_2195049E0(v58, sub_2189AF700);
    }
  }

  else
  {
    v60 = v82;
    (*(v53 + 32))(v82, v58, v52);

    v62 = v74;
    v63 = v84;
    v64 = v73;
  }

  (*(v53 + 32))(v47 + v44[9], v60, v52);
  v65 = v86;
  sub_219504A40(v86, v47 + v44[10], sub_2186E4FBC);
  v66 = v68;
  if (!v68)
  {
    LOBYTE(v92) = 1;
    swift_allocObject();
    v66 = sub_219BEF534();
  }

  sub_2195049E0(v65, sub_2186E4FBC);
  sub_2195049E0(v91, sub_2189AF700);
  sub_2195049E0(v89, sub_2189AF720);
  (*(v64 + 8))(v70, v72);
  *(v47 + v44[11]) = v66;
  sub_219504AA8(v47, v63);
  return __swift_destroy_boxed_opaque_existential_1(v62);
}

uint64_t sub_219504298(void *a1)
{
  v3 = v1;
  sub_21950497C(0, &qword_280E8C4E8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219504928();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AE994(0);
  sub_2186DFE18(&qword_280E91A30, sub_2189AE994, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for CuratedTodayFeedGroupKnobs(0);
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_2186F9548();
    sub_2186DFE18(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186F95C4();
    sub_2186DFE18(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_2186ECA28();
    sub_2186DFE18(&qword_280E913E0, sub_2186ECA28, MEMORY[0x277D32610]);
    sub_219BF7834();
    v12 = v10[9];
    LOBYTE(v14) = 5;
    sub_2189AE9B4(0);
    sub_2186DFE18(&unk_280E91870, sub_2189AE9B4, MEMORY[0x277D32320]);
    sub_219BF7834();
    v12 = v10[10];
    LOBYTE(v14) = 6;
    sub_219BEF814();
    sub_2186DFE18(&qword_280E912F0, MEMORY[0x277D32720], MEMORY[0x277D32728]);
    sub_219BF77E4();
    v14 = *(v3 + v10[11]);
    v13 = 7;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_21950472C()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0x6972657473756C63;
  if (v1 != 6)
  {
    v3 = 0x6F6C42776F6C6C61;
  }

  v4 = 0xD000000000000016;
  if (v1 != 4)
  {
    v4 = 0x6C6F6F706572;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 2)
  {
    v5 = 0x6F43657269707865;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_219504854@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219505074(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21950487C(uint64_t a1)
{
  v2 = sub_219504928();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195048B8(uint64_t a1)
{
  v2 = sub_219504928();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219504928()
{
  result = qword_280EBBAA0[0];
  if (!qword_280EBBAA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBBAA0);
  }

  return result;
}

void sub_21950497C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219504928();
    v7 = a3(a1, &type metadata for CuratedTodayFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2195049E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219504A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219504AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedTodayFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219504B0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEF814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E4FBC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CC85CC(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_2186DFE18(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v27 = v4;
  v28 = v5;
  sub_2186F9548();
  v15 = type metadata accessor for CuratedTodayFeedGroupKnobs(0);
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_13;
  }

  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_2186F95C4();
  v26[1] = v16;
  if ((sub_219BEF504() & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0 || (sub_219BEEC64() & 1) == 0)
  {
    goto LABEL_13;
  }

  v17 = *(v15 + 40);
  v18 = *(v12 + 48);
  sub_219504A40(a1 + v17, v14, sub_2186E4FBC);
  sub_219504A40(a2 + v17, &v14[v18], sub_2186E4FBC);
  v19 = v27;
  v20 = *(v28 + 48);
  if (v20(v14, 1, v27) == 1)
  {
    if (v20(&v14[v18], 1, v19) == 1)
    {
      sub_2195049E0(v14, sub_2186E4FBC);
LABEL_16:
      v21 = sub_219BEF504();
      return v21 & 1;
    }

    goto LABEL_12;
  }

  sub_219504A40(v14, v10, sub_2186E4FBC);
  if (v20(&v14[v18], 1, v19) == 1)
  {
    (*(v28 + 8))(v10, v19);
LABEL_12:
    sub_2195049E0(v14, sub_218CC85CC);
    goto LABEL_13;
  }

  v23 = v28;
  (*(v28 + 32))(v7, &v14[v18], v19);
  sub_2186DFE18(&qword_27CC10CD8, MEMORY[0x277D32720], MEMORY[0x277D32730]);
  v24 = sub_219BF53A4();
  v25 = *(v23 + 8);
  v25(v7, v19);
  v25(v10, v19);
  sub_2195049E0(v14, sub_2186E4FBC);
  if (v24)
  {
    goto LABEL_16;
  }

LABEL_13:
  v21 = 0;
  return v21 & 1;
}

unint64_t sub_219504F70()
{
  result = qword_27CC1B478;
  if (!qword_27CC1B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B478);
  }

  return result;
}

unint64_t sub_219504FC8()
{
  result = qword_280EBBA90;
  if (!qword_280EBBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBBA90);
  }

  return result;
}

unint64_t sub_219505020()
{
  result = qword_280EBBA98;
  if (!qword_280EBBA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBBA98);
  }

  return result;
}

uint64_t sub_219505074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43657269707865 && a2 == 0xED0000746E65746ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000219CF3AA0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6972657473756C63 && a2 == 0xEF73626F6E4B676ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F6C42776F6C6C61 && a2 == 0xED0000676E696B63)
  {

    return 7;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

id sub_219505324(uint64_t a1, unint64_t a2, void *a3)
{
  v78 = a1;
  v79 = sub_219BE5434();
  v5 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v73 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v73 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v73 - v15;
  MEMORY[0x28223BE20](v17);
  v76 = &v73 - v18;
  MEMORY[0x28223BE20](v19);
  v75 = &v73 - v20;
  memcpy(v82, a3, 0x148uLL);
  sub_218CB4278();
  v21 = sub_219BF52C4();
  if (!v21)
  {
    sub_219BE53F4();

    v50 = sub_219BE5414();
    v51 = sub_219BF61F4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v82[0] = v53;
      *v52 = 136446210;
      *(v52 + 4) = sub_2186D1058(v78, a2, v82);
      _os_log_impl(&dword_2186C1000, v50, v51, "Search recipe factory invalid recipe without metadata, identifier=%{public}s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x21CECF960](v53, -1, -1);
      MEMORY[0x21CECF960](v52, -1, -1);
    }

    (*(v5 + 8))(v7, v79);
    return 0;
  }

  v22 = v21;
  v23 = sub_219BF5414();
  if (!*(v22 + 16))
  {

    goto LABEL_19;
  }

  v74 = v5;
  v25 = sub_21870F700(v23, v24);
  v27 = v26;

  if ((v27 & 1) == 0 || (sub_2186D1230(*(v22 + 56) + 32 * v25, v82), (swift_dynamicCast() & 1) == 0))
  {

    v5 = v74;
LABEL_19:
    sub_219BE53F4();

    v54 = sub_219BE5414();
    v55 = sub_219BF61F4();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v82[0] = v57;
      *v56 = 136446210;
      *(v56 + 4) = sub_2186D1058(v78, a2, v82);
      _os_log_impl(&dword_2186C1000, v54, v55, "Search recipe factory invalid recipe without channelID, identifier=%{public}s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v57);
      MEMORY[0x21CECF960](v57, -1, -1);
      MEMORY[0x21CECF960](v56, -1, -1);
    }

    (*(v5 + 8))(v10, v79);
    return 0;
  }

  v28 = v80;
  __swift_project_boxed_opaque_existential_1(v77 + 3, v77[6]);
  v29 = sub_219A40058(v28, *(&v28 + 1), a3);

  if (v29)
  {
    sub_218E9B5CC();

    v30 = objc_allocWithZone(MEMORY[0x277D312B8]);
    v31 = sub_219BF5204();

    v32 = a2;
    v33 = sub_219BF53D4();
    v34 = [v30 initWithDictionary:v31 identifier:v33];

    if (v34)
    {
      v35 = v77;
      v36 = [objc_allocWithZone(MEMORY[0x277D312A8]) initWithRecipeMetadata:v34 sourceChannel:v29 assetManager:v77[2]];
      v37 = [v36 title];
      v38 = sub_219BF5414();
      v40 = v39;

      v41 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v41 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        sub_219505D78((v35 + 8), &v80);
        if (!v81)
        {
          swift_unknownObjectRelease();

          sub_219505E98(&v80);
          return v36;
        }

        sub_2186CB1F0(&v80, v82);
        __swift_project_boxed_opaque_existential_1(v82, v82[3]);
        v42 = v36;
        v43 = sub_219BF37D4();

        if ((v43 & 1) == 0)
        {
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_1(v82);
          return v36;
        }

        v44 = v34;
        v45 = v75;
        sub_219BE53F4();

        v46 = sub_219BE5414();
        v47 = sub_219BF61F4();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v80 = v49;
          *v48 = 136446210;
          *(v48 + 4) = sub_2186D1058(v78, v32, &v80);
          _os_log_impl(&dword_2186C1000, v46, v47, "Search recipe filtered by access provider, identifier=%{public}s", v48, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v49);
          MEMORY[0x21CECF960](v49, -1, -1);
          MEMORY[0x21CECF960](v48, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v74 + 8))(v45, v79);
        __swift_destroy_boxed_opaque_existential_1(v82);
      }

      else
      {
        v67 = v34;
        v68 = v76;
        sub_219BE53F4();

        v69 = sub_219BE5414();
        v70 = sub_219BF61F4();

        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          v82[0] = v72;
          *v71 = 136446210;
          *(v71 + 4) = sub_2186D1058(v78, v32, v82);
          _os_log_impl(&dword_2186C1000, v69, v70, "Search recipe has invalid title, identifier=%{public}s", v71, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v72);
          MEMORY[0x21CECF960](v72, -1, -1);
          MEMORY[0x21CECF960](v71, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v74 + 8))(v68, v79);
      }
    }

    else
    {
      sub_219BE53F4();

      v63 = sub_219BE5414();
      v64 = sub_219BF61F4();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v82[0] = v66;
        *v65 = 136446210;
        *(v65 + 4) = sub_2186D1058(v78, v32, v82);
        _os_log_impl(&dword_2186C1000, v63, v64, "Search recipe factory unable to generate recipeData, identifier=%{public}s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x21CECF960](v66, -1, -1);
        MEMORY[0x21CECF960](v65, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }

      (*(v74 + 8))(v16, v79);
    }
  }

  else
  {

    sub_219BE53F4();

    v59 = sub_219BE5414();
    v60 = sub_219BF61F4();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v82[0] = v62;
      *v61 = 136446210;
      *(v61 + 4) = sub_2186D1058(v78, a2, v82);
      _os_log_impl(&dword_2186C1000, v59, v60, "Search recipe factory invalid recipe without channel, identifier=%{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v62);
      MEMORY[0x21CECF960](v62, -1, -1);
      MEMORY[0x21CECF960](v61, -1, -1);
    }

    (*(v74 + 8))(v13, v79);
  }

  return 0;
}

uint64_t sub_219505D0C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  sub_219505E98(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_219505D78(uint64_t a1, uint64_t a2)
{
  sub_219505DDC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_219505DDC(uint64_t a1)
{
  if (!qword_27CC1FCC0)
  {
    sub_219505E34();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1FCC0);
    }
  }
}

unint64_t sub_219505E34()
{
  result = qword_280E900F0;
  if (!qword_280E900F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E900F0);
  }

  return result;
}

uint64_t sub_219505E98(uint64_t a1)
{
  sub_219505DDC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219505F1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_219506414(0, &qword_280E91A90, sub_218700FF8);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v29 - v5;
  v36 = type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs(0);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219506414(0, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v43 = &v29 - v12;
  sub_219506468(0);
  v14 = v13;
  v37 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2195064C4();
  sub_219BF7B34();
  if (v2)
  {
    v17 = a1;
  }

  else
  {
    v31 = v10;
    v18 = v34;
    v33 = a1;
    v39 = 0x4C656C6369747261;
    v40 = 0xEB00000000747369;
    v41 = 0;
    v42 = 1;
    sub_219506518(&qword_27CC1A498, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs, &unk_219C5D0D8);
    v19 = v36;
    v32 = v14;
    sub_219BF76E4();
    v30 = v16;
    v20 = v7;
    v21 = v38;
    v22 = v31;
    v23 = v43;
    sub_219506560(v43, v31);
    v24 = *(v18 + 48);
    v25 = v24(v22, 1, v19);
    v26 = v33;
    if (v25 == 1)
    {
      sub_218700FF8(0);
      (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
      sub_2190F6EC8(v21, v20);
      sub_2195065E0(v23);
      if (v24(v22, 1, v19) != 1)
      {
        sub_2195065E0(v22);
      }
    }

    else
    {
      sub_2195065E0(v23);
      sub_218E4A360(v22, v20);
    }

    sub_218E4A360(v20, v35);
    (*(v37 + 8))(v30, v32);
    v17 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_219506384(uint64_t a1)
{
  v2 = sub_2195064C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2195063C0(uint64_t a1)
{
  v2 = sub_2195064C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_219506414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_219506468(uint64_t a1)
{
  if (!qword_27CC1B480)
  {
    sub_2195064C4();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1B480);
    }
  }
}

unint64_t sub_2195064C4()
{
  result = qword_27CC1B488;
  if (!qword_27CC1B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B488);
  }

  return result;
}

uint64_t sub_219506518(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219506560(uint64_t a1, uint64_t a2)
{
  sub_219506414(0, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2195065E0(uint64_t a1)
{
  sub_219506414(0, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21950666C()
{
  result = qword_27CC1B490;
  if (!qword_27CC1B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B490);
  }

  return result;
}

unint64_t sub_2195066C4()
{
  result = qword_27CC1B498;
  if (!qword_27CC1B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B498);
  }

  return result;
}

unint64_t sub_21950671C()
{
  result = qword_27CC1B4A0;
  if (!qword_27CC1B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B4A0);
  }

  return result;
}

uint64_t sub_219506770()
{
  sub_218774F78(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  sub_21950689C(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2195067EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v5, &off_282A75E50, a3, a4, a5, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21950689C(uint64_t a1)
{
  sub_2195068F8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2195068F8(uint64_t a1)
{
  if (!qword_27CC21760)
  {
    sub_219506950();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC21760);
    }
  }
}

unint64_t sub_219506950()
{
  result = qword_27CC15008;
  if (!qword_27CC15008)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC15008);
  }

  return result;
}

unint64_t sub_2195069C8()
{
  result = qword_27CC1B4A8;
  if (!qword_27CC1B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B4A8);
  }

  return result;
}

uint64_t sub_219506A30(uint64_t a1)
{
  v2 = sub_21917FCA8();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219506A70()
{
  result = qword_27CC1B4B0;
  if (!qword_27CC1B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B4B0);
  }

  return result;
}

void *sub_219506B54(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v88 = a3;
  v89 = a2;
  v110 = sub_219BDBD64();
  v117 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RecipeBoxGapLocation(0);
  MEMORY[0x28223BE20](v5 - 8);
  v108 = v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for RecipeBoxModel(0);
  MEMORY[0x28223BE20](v112);
  v107 = (v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = v80 - v9;
  sub_21897EC04(0);
  v12 = v11;
  v111 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v119 = v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v118 = v80 - v15;
  sub_21897EB38(0);
  MEMORY[0x28223BE20](v16 - 8);
  v93 = v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for RecipeBoxSectionDescriptor(0);
  MEMORY[0x28223BE20](v18);
  v98 = v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = v80 - v21;
  sub_218953B70(0);
  v24 = v23;
  v100 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v116 = v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v103 = v80 - v27;
  v28 = sub_219BE6DF4();
  v87 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v86 = v80 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219507AE4(0, &qword_27CC0B708, MEMORY[0x277D6DF88]);
  v85 = v30;
  v84 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v83 = v80 - v31;
  sub_218E49B5C(0);
  MEMORY[0x28223BE20](v32 - 8);
  v80[1] = v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953C5C(0);
  v35 = v34;
  v82 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v81 = v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_218701CBC(&qword_27CC0B158, sub_218953C5C, MEMORY[0x277D6EC70]);
  v38 = sub_219BF5E44();
  v94 = v35;
  if (!v38)
  {
    v73 = MEMORY[0x277D84F90];
LABEL_27:
    v74 = sub_218701CBC(&qword_27CC12A18, sub_218953B70, MEMORY[0x277D6D720]);
    v75 = sub_218701CBC(&qword_27CC12A20, sub_218953B70, MEMORY[0x277D6D718]);
    MEMORY[0x21CEB9170](v73, v24, v74, v75);
    sub_218701CBC(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C6261C);
    sub_218701CBC(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
    v76 = v81;
    sub_219BEB2D4();
    v77 = v87;
    v78 = v86;
    (*(v87 + 104))(v86, *MEMORY[0x277D6D868], v28);
    sub_218701CBC(&qword_27CC0B740, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C625F4);
    v79 = v83;
    sub_219BE85E4();
    (*(v77 + 8))(v78, v28);
    v89(v79);
    (*(v84 + 8))(v79, v85);
    return (*(v82 + 8))(v76, v94);
  }

  v122 = MEMORY[0x277D84F90];
  v99 = v38;
  sub_218C378D0(0, v38 & ~(v38 >> 63), 0);
  v104 = v122;
  result = sub_219BF5DF4();
  if (v99 < 0)
  {
    goto LABEL_30;
  }

  v80[0] = v28;
  v40 = 0;
  v97 = (v100 + 16);
  v101 = (v100 + 32);
  v41 = v111;
  v114 = (v111 + 16);
  v106 = (v117 + 1);
  v105 = (v111 + 8);
  v117 = (v111 + 32);
  v90 = (v100 + 8);
  v115 = v24;
  v96 = v22;
  v92 = a1;
  v91 = v18;
  v95 = v37;
  while (1)
  {
    v42 = __OFADD__(v40, 1);
    v43 = v40 + 1;
    if (v42)
    {
      __break(1u);
      goto LABEL_29;
    }

    v102 = v43;
    v44 = sub_219BF5EC4();
    v45 = v116;
    (*v97)(v116);
    v44(v121, 0);
    sub_219BE6934();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      break;
    }

    (*v101)(v103, v45, v24);
    sub_219507BD8(v22, type metadata accessor for RecipeBoxSectionDescriptor);
LABEL_22:
    v69 = v104;
    v122 = v104;
    v71 = *(v104 + 16);
    v70 = *(v104 + 24);
    if (v71 >= v70 >> 1)
    {
      sub_218C378D0((v70 > 1), v71 + 1, 1);
      v69 = v122;
    }

    *(v69 + 16) = v71 + 1;
    v72 = (*(v100 + 80) + 32) & ~*(v100 + 80);
    v104 = v69;
    (*(v100 + 32))(v69 + v72 + *(v100 + 72) * v71, v103, v24);
    result = sub_219BF5E94();
    v40 = v102;
    v22 = v96;
    if (v102 == v99)
    {
      v28 = v80[0];
      v73 = v104;
      goto LABEL_27;
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_218701CBC(&qword_27CC13F90, sub_218953B70, MEMORY[0x277D6D730]);
  v46 = sub_219BF5E44();
  if (!v46)
  {
    v48 = MEMORY[0x277D84F90];
LABEL_21:
    v67 = sub_218701CBC(&qword_27CC0B718, sub_21897EC04, MEMORY[0x277D6D408]);
    v68 = sub_218701CBC(&qword_27CC0B720, sub_21897EC04, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9170](v48, v12, v67, v68);
    sub_218701CBC(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C6261C);
    sub_218701CBC(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
    sub_219BE6924();
    (*v90)(v116, v24);
    goto LABEL_22;
  }

  v47 = v46;
  v120 = MEMORY[0x277D84F90];
  sub_218C35D98(0, v46 & ~(v46 >> 63), 0);
  v48 = v120;
  result = sub_219BF5DF4();
  if ((v47 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v49 = sub_219BF5EC4();
      (*v114)(v119);
      v49(v121, 0);
      sub_219BE5FC4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        break;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_16;
      }

      sub_218799AB4(0);
      v113 = *(v54 + 48);
      v55 = v108;
      sub_2191AA910(v10, v108);
      sub_2187998B0(0);
      v57 = *(v56 + 48);
      v58 = v109;
      sub_219BDBD54();
      v59 = v10;
      v60 = sub_219BDBD44();
      v62 = v61;
      (*v106)(v58, v110);
      v63 = v107;
      *v107 = v60;
      v63[1] = v62;
      v10 = v59;
      v41 = v111;
      sub_21897EE14(v55, v63 + v57);
      swift_storeEnumTagMultiPayload();
      sub_218701CBC(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
      sub_219BE5FB4();
      sub_219507BD8(v55, type metadata accessor for RecipeBoxGapLocation);
      (*v105)(v119, v12);
      v64 = sub_219BF1584();
      (*(*(v64 - 8) + 8))(&v10[v113], v64);
LABEL_18:
      v120 = v48;
      v66 = *(v48 + 16);
      v65 = *(v48 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_218C35D98((v65 > 1), v66 + 1, 1);
        v48 = v120;
      }

      *(v48 + 16) = v66 + 1;
      (*(v41 + 32))(v48 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v66, v118, v12);
      v24 = v115;
      sub_219BF5E94();
      if (!--v47)
      {
        goto LABEL_21;
      }
    }

    if (EnumCaseMultiPayload)
    {

      sub_2187998B0(0);
      v52 = type metadata accessor for RecipeBoxGapLocation;
      v53 = &v10[*(v51 + 48)];
    }

    else
    {
LABEL_16:
      v52 = type metadata accessor for RecipeBoxModel;
      v53 = v10;
    }

    sub_219507BD8(v53, v52);
    (*v117)(v118, v119, v12);
    goto LABEL_18;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_219507AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for RecipeBoxSectionDescriptor(255);
    v8[1] = type metadata accessor for RecipeBoxModel(255);
    v8[2] = sub_218701CBC(qword_280EBA6F0, type metadata accessor for RecipeBoxSectionDescriptor, &unk_219C6261C);
    v8[3] = sub_218701CBC(&qword_280EDBED0, type metadata accessor for RecipeBoxModel, &unk_219C63468);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219507BD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219507C38()
{
  if ((sub_218A1C180() & 1) == 0)
  {
    return 0;
  }

  sub_218853400(0);
  return sub_219BE5FA4() & 1;
}

uint64_t sub_219507C78()
{
  sub_21898BF70(0);
  if (sub_219BE5FA4())
  {
    return sub_219BE5FA4() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219507CC4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v18 = a3;
  v19 = a4;
  v7 = sub_219BE15B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  (*(v8 + 104))(v10, *MEMORY[0x277D2F540], v7);
  sub_219BDD0F4();
  (*(v8 + 8))(v10, v7);

  sub_219BDD274();
  sub_219BE1B94();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  __swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
  sub_219BEC134();
  __swift_project_boxed_opaque_existential_1(v21, v22);
  if (qword_280EE34C8 != -1)
  {
    swift_once();
  }

  v11 = sub_219BEBC84();
  __swift_project_value_buffer(v11, qword_280F62350);
  sub_21927560C();
  sub_219BEC144();

  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  sub_219BE1BA4();
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v18;
  v21[0] = v18;
  result = sub_219BE1BA4();
  v14 = v19;
  if (v19)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v21[0] = v14;
    v21[1] = v17;
    sub_2186C709C(0, qword_280EC04E8, &protocol descriptor for SearchFilterProviderType, 0);
    result = sub_219BE1BA4();
  }

  if (v12 == 5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    swift_unownedRetainStrong();
    sub_218718690((a2 + 2), v20);

    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    v15 = type metadata accessor for RecipeSearchFeedConfigResourceIDProvider();
    result = sub_219BE1E24();
    if (result)
    {
      v22 = v15;
      v23 = &off_282A55358;
      v21[0] = result;
      sub_2186C709C(0, qword_280E98008, &protocol descriptor for SearchFeedConfigResourceIDProviderType, 1);
      sub_219BE1BA4();
      __swift_destroy_boxed_opaque_existential_1(v21);
      return __swift_destroy_boxed_opaque_existential_1(v20);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id sub_2195080B4(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for SearchViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  if (v3 != 2)
  {
    if (v3 != 1)
    {
      if (v3)
      {
        goto LABEL_10;
      }

      v4 = swift_allocObject();
      v4[2] = v1;
      v4[3] = 0;
      v4[4] = 0;
      v4[5] = 0;
      v5 = sub_219BE1E04();

      swift_unownedRelease();
      if (v5)
      {
        goto LABEL_11;
      }

      __break(1u);
    }

    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = 1;
    v6[4] = 0;
    v6[5] = 0;
    v5 = sub_219BE1E04();

    swift_unownedRelease();
    if (!v5)
    {
      __break(1u);
      goto LABEL_8;
    }

LABEL_11:
    v10 = objc_allocWithZone(MEMORY[0x277D759F0]);
    v11 = v5;
    v12 = [v10 initWithSearchResultsController_];
    v13 = [v12 searchBar];
    [v13 setAutocorrectionType_];

    v14 = [v12 searchBar];
    [v14 setAutocapitalizationType_];

    v15 = [v12 searchBar];
    [v15 setLookToDictateEnabled_];

    v16 = [v12 searchBar];
    swift_unknownObjectWeakAssign();

    return v12;
  }

LABEL_8:
  v7 = swift_allocObject();
  v7[2] = v2;
  v7[3] = 2;
  v7[4] = 0;
  v7[5] = 0;
  v5 = sub_219BE1E04();

  swift_unownedRelease();
  if (v5)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_10:
  v8 = swift_allocObject();
  v8[2] = v2;
  v8[3] = 0;
  v8[4] = 0;
  v8[5] = 0;
  v5 = sub_219BE1E04();

  result = swift_unownedRelease();
  if (v5)
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

id sub_2195083CC()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  type metadata accessor for SearchViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  v1 = swift_allocObject();
  v1[2] = v0;
  v1[3] = 7;
  v1[4] = 0;
  v1[5] = 0;
  v2 = sub_219BE1E04();

  result = swift_unownedRelease();
  if (v2)
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D759F0]) initWithSearchResultsController_];
    v5 = [v4 searchBar];
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v8 = sub_219BF53D4();

    [v5 setPlaceholder_];

    v9 = [v4 searchBar];
    [v9 setAutocorrectionType_];

    v10 = [v4 searchBar];
    [v10 setAutocapitalizationType_];

    v11 = [v4 searchBar];
    swift_unknownObjectWeakAssign();

    v12 = [v4 searchBar];
    [v12 setLookToDictateEnabled_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2195086A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for NewspaperMagazineFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA2F00;
  if (!qword_280EA2F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219508750(uint64_t a1)
{
  sub_218DF04EC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for NewspaperMagazineFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186CFDE4(319, qword_280EBDB60, &protocol descriptor for NewspaperGroupServiceType);
      if (v3 <= 0x3F)
      {
        sub_2186CFDE4(319, &qword_280E910C0, MEMORY[0x277D32B88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21950882C(void *a1)
{
  v2 = *(sub_219BF11F4() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_218C811E8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_21950BCEC(v5);
  *a1 = v3;
}

uint64_t sub_2195088D4(uint64_t a1)
{
  v2 = v1;
  v66 = a1;
  sub_218C5FB88(0);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = (v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = sub_219BF11F4();
  v70 = *(v72 - 1);
  MEMORY[0x28223BE20](v72);
  v71 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NewspaperMagazineFeedGroupEmitter(0);
  v64 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v65 = v9;
  v67 = v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NewspaperMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v10);
  v12 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v63 - v14;
  sub_218DF04EC(0);
  sub_219BEDD14();
  v16 = *&v15[*(v10 + 24)];

  sub_21950BC8C(v15, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  v17 = *(v16 + 16);

  if (v17)
  {
    sub_219BEDD14();
    v18 = *&v12[*(v10 + 24)];

    sub_21950BC8C(v12, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
    v19 = *(v18 + 16);
    v20 = MEMORY[0x277D84F90];
    v68 = v2;
    v63[2] = v4;
    if (v19)
    {
      v73 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v19, 0);
      v21 = v73;
      v22 = (v18 + 40);
      do
      {
        v24 = *(v22 - 1);
        v23 = *v22;
        v73 = v21;
        v26 = *(v21 + 16);
        v25 = *(v21 + 24);

        if (v26 >= v25 >> 1)
        {
          sub_21870B65C((v25 > 1), v26 + 1, 1);
          v21 = v73;
        }

        *(v21 + 16) = v26 + 1;
        v27 = v21 + 16 * v26;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;
        v22 += 2;
        --v19;
      }

      while (v19);

      v2 = v68;
      v20 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    __swift_project_boxed_opaque_existential_1((v2 + *(v8 + 28)), *(v2 + *(v8 + 28) + 24));
    v29 = sub_219BEFFF4();

    v73 = v29;

    sub_21950882C(&v73);

    v30 = v73;
    v31 = *(v73 + 16);
    if (v31)
    {
      v73 = v20;
      sub_21870B65C(0, v31, 0);
      v32 = v73;
      v33 = v70 + 16;
      v34 = *(v70 + 2);
      v35 = *(v70 + 80);
      v63[1] = v30;
      v36 = v30 + ((v35 + 32) & ~v35);
      v69 = *(v70 + 9);
      v70 = v34;
      v37 = v33 - 8;
      do
      {
        v38 = v71;
        v39 = v72;
        (v70)(v71, v36, v72);
        v40 = sub_219BF11E4();
        v42 = v41;
        (*v37)(v38, v39);
        v73 = v32;
        v44 = *(v32 + 16);
        v43 = *(v32 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_21870B65C((v43 > 1), v44 + 1, 1);
          v32 = v73;
        }

        *(v32 + 16) = v44 + 1;
        v45 = v32 + 16 * v44;
        *(v45 + 32) = v40;
        *(v45 + 40) = v42;
        v36 += v69;
        --v31;
      }

      while (v31);
    }

    else
    {

      v32 = MEMORY[0x277D84F90];
    }

    sub_218831BDC(0, &unk_280E95F50, &type metadata for NewspaperMagazineFeedGroupEmitterContext, &type metadata for MagazineFeedPoolContent);
    v46 = v66;
    sub_219BE3204();
    v70 = type metadata accessor for NewspaperMagazineFeedGroupEmitter;
    v47 = v67;
    v48 = v68;
    sub_21950BC24(v68, v67, type metadata accessor for NewspaperMagazineFeedGroupEmitter);
    v49 = (*(v64 + 80) + 16) & ~*(v64 + 80);
    v71 = (v49 + v65);
    v50 = (v49 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    v72 = type metadata accessor for NewspaperMagazineFeedGroupEmitter;
    sub_21950D2C8(v47, v51 + v49, type metadata accessor for NewspaperMagazineFeedGroupEmitter);
    *(v51 + v50) = v46;
    *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_21950B7A8;
    *(v52 + 24) = v51;

    v53 = sub_219BE2E54();
    sub_21950B8D8(0);
    sub_219BE2F64();

    v54 = v48;
    v55 = v48;
    v56 = v70;
    sub_21950BC24(v55, v47, v70);
    v57 = swift_allocObject();
    sub_21950D2C8(v47, v57 + v49, v72);
    v58 = swift_allocObject();
    *(v58 + 16) = sub_21950B940;
    *(v58 + 24) = v57;
    v59 = sub_219BE2E54();
    sub_219BE2F74();

    sub_21950BC24(v54, v47, v56);
    v60 = swift_allocObject();
    sub_21950D2C8(v47, v60 + v49, v72);
    v61 = sub_219BE2E54();
    v62 = sub_219BE3064();

    return v62;
  }

  else
  {
    *v6 = 0xD000000000000069;
    v6[1] = 0x8000000219D24840;
    swift_storeEnumTagMultiPayload();
    sub_21950D330(0, &qword_280EE6C48, sub_218C5FB88, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_21950909C(uint64_t a1)
{
  sub_219BEF054();
  type metadata accessor for MagazineFeedPool();
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_219BE2F64();

  v2 = sub_219BE31C4();

  return v2;
}

void sub_219509174(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v67 = a4;
  v65 = a3;
  v8 = type metadata accessor for NewspaperMagazineFeedGroupEmitter(0);
  v61 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v62 = v9;
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a5 + 16);
  v66 = a5;
  if (!v10)
  {
    v68 = MEMORY[0x277D84F90];
LABEL_33:
    if (v68[2])
    {
      v37 = v68[4];
      v36 = v68[5];

      v38 = v65;
      if (*v65)
      {
        v39 = v65[1];

        sub_2194796A0(v40, v39);
        v42 = v41;
      }

      else
      {
        v42 = MEMORY[0x277D84FA0];
      }

      sub_2186DF030(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09BA0;
      *(inited + 32) = v37;
      *(inited + 40) = v36;

      v45 = sub_2194B1FF0(inited, a1);
      swift_setDeallocating();
      v46 = sub_2189AD3D8(inited + 32);
      v69 = v37;
      MEMORY[0x28223BE20](v46);
      v47 = v63;
      *(&v61 - 6) = v63;
      *(&v61 - 5) = v48;
      v49 = v67;
      *(&v61 - 4) = v36;
      *(&v61 - 3) = v49;
      *(&v61 - 2) = v42;
      type metadata accessor for NewspaperGroup(0);

      sub_219BE3204();

      v50 = swift_allocObject();
      *(v50 + 16) = v45;
      *(v50 + 24) = a2;
      v51 = sub_219BE2E54();
      sub_21950B8D8(0);
      v70 = sub_219BE2F64();

      v52 = v64;
      sub_21950BC24(v47, v64, type metadata accessor for NewspaperMagazineFeedGroupEmitter);
      v53 = (*(v61 + 80) + 48) & ~*(v61 + 80);
      v54 = (v62 + v53 + 7) & 0xFFFFFFFFFFFFFFF8;
      v55 = (v54 + 87) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      v56[2] = v69;
      v56[3] = v36;
      v56[4] = a1;
      v56[5] = a2;
      sub_21950D2C8(v52, v56 + v53, type metadata accessor for NewspaperMagazineFeedGroupEmitter);
      v57 = (v56 + v54);
      v58 = v38[3];
      v57[2] = v38[2];
      v57[3] = v58;
      v57[4] = v38[4];
      v59 = v38[1];
      *v57 = *v38;
      v57[1] = v59;
      *(v56 + v55) = v67;
      *(v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8)) = v66;

      sub_21950D16C(v38, v71);

      v60 = sub_219BE2E54();
      sub_219BE3054();
    }

    else
    {

      sub_21950D1F4();
      swift_allocError();
      *v43 = 1;
      sub_21950D330(0, &qword_280EE6C88, sub_21950B8D8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      sub_219BE2FF4();
    }

    return;
  }

  v11 = 0;
  v69 = a5 + 32;
  v12 = a1 + 56;
  v13 = a2 + 56;
  v68 = MEMORY[0x277D84F90];
  v70 = v10;
  while (v11 < v10)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_40;
    }

    v15 = (v69 + 16 * v11);
    v16 = *v15;
    v17 = v15[1];
    ++v11;
    if (*(a1 + 16))
    {
      sub_219BF7AA4();

      sub_219BF5524();
      v18 = sub_219BF7AE4();
      v19 = -1 << *(a1 + 32);
      v20 = v18 & ~v19;
      if ((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
      {
        v21 = ~v19;
        do
        {
          v22 = (*(a1 + 48) + 16 * v20);
          v23 = *v22 == v16 && v22[1] == v17;
          if (v23 || (sub_219BF78F4() & 1) != 0)
          {
            goto LABEL_3;
          }

          v20 = (v20 + 1) & v21;
        }

        while (((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0);
      }
    }

    else
    {
    }

    if (!*(a2 + 16) || (sub_219BF7AA4(), sub_219BF5524(), v24 = sub_219BF7AE4(), v25 = -1 << *(a2 + 32), v26 = v24 & ~v25, ((*(v13 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0))
    {
LABEL_27:
      v30 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21870B65C(0, v30[2] + 1, 1);
        v30 = v72;
      }

      v33 = v30[2];
      v32 = v30[3];
      v34 = (v33 + 1);
      if (v33 >= v32 >> 1)
      {
        v68 = (v33 + 1);
        sub_21870B65C((v32 > 1), v33 + 1, 1);
        v34 = v68;
        v30 = v72;
      }

      v30[2] = v34;
      v68 = v30;
      v35 = &v30[2 * v33];
      v35[4] = v16;
      v35[5] = v17;
      goto LABEL_4;
    }

    v27 = ~v25;
    while (1)
    {
      v28 = (*(a2 + 48) + 16 * v26);
      v29 = *v28 == v16 && v28[1] == v17;
      if (v29 || (sub_219BF78F4() & 1) != 0)
      {
        break;
      }

      v26 = (v26 + 1) & v27;
      if (((*(v13 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

LABEL_3:

LABEL_4:
    v10 = v70;
    if (v14 == v70)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_219509840(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a3;
  v60 = a4;
  v57 = type metadata accessor for NewspaperGroup(0);
  MEMORY[0x28223BE20](v57);
  v58 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v56);
  v59 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NewspaperMagazineFeedGroupConfigData(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218DF04EC(0);
  sub_219BEDD14();
  v12 = *&v11[*(v9 + 32)];

  sub_21950BC8C(v11, type metadata accessor for NewspaperMagazineFeedGroupConfigData);
  v13 = *(v12 + 16);
  if (v13)
  {
    v64 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v13, 0);
    v14 = v64;
    v63 = v12;
    v15 = (v12 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v64 = v14;
      v18 = *(v14 + 16);
      v19 = *(v14 + 24);

      if (v18 >= v19 >> 1)
      {
        sub_21870B65C((v19 > 1), v18 + 1, 1);
        v14 = v64;
      }

      *(v14 + 16) = v18 + 1;
      v20 = v14 + 16 * v18;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v15 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v63 = *(v14 + 16);
  if (v63)
  {
    v21 = 0;
    v62 = v14 + 32;
    v22 = a1 + 56;
    v23 = a2 + 56;
    v61 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v21 >= *(v14 + 16))
      {
        __break(1u);
        return;
      }

      v24 = (v62 + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      ++v21;
      if (*(a1 + 16))
      {
        sub_219BF7AA4();

        sub_219BF5524();
        v27 = sub_219BF7AE4();
        v28 = -1 << *(a1 + 32);
        v29 = v27 & ~v28;
        if ((*(v22 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29))
        {
          v30 = ~v28;
          do
          {
            v31 = (*(a1 + 48) + 16 * v29);
            v32 = *v31 == v26 && v31[1] == v25;
            if (v32 || (sub_219BF78F4() & 1) != 0)
            {
              goto LABEL_10;
            }

            v29 = (v29 + 1) & v30;
          }

          while (((*(v22 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0);
        }
      }

      else
      {
      }

      if (!*(a2 + 16) || (sub_219BF7AA4(), sub_219BF5524(), v33 = sub_219BF7AE4(), v34 = -1 << *(a2 + 32), v35 = v33 & ~v34, ((*(v23 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0))
      {
LABEL_33:
        v39 = v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21870B65C(0, *(v39 + 16) + 1, 1);
          v39 = v65;
        }

        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        v43 = v42 + 1;
        if (v42 >= v41 >> 1)
        {
          v61 = v42 + 1;
          sub_21870B65C((v41 > 1), v42 + 1, 1);
          v43 = v61;
          v39 = v65;
        }

        *(v39 + 16) = v43;
        v61 = v39;
        v44 = v39 + 16 * v42;
        *(v44 + 32) = v26;
        *(v44 + 40) = v25;
        goto LABEL_11;
      }

      v36 = ~v34;
      while (1)
      {
        v37 = (*(a2 + 48) + 16 * v35);
        v38 = *v37 == v26 && v37[1] == v25;
        if (v38 || (sub_219BF78F4() & 1) != 0)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        if (((*(v23 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_33;
        }
      }

LABEL_10:

LABEL_11:
      if (v21 == v63)
      {
        goto LABEL_39;
      }
    }
  }

  v61 = MEMORY[0x277D84F90];
LABEL_39:

  v45 = v58;
  sub_21950BC24(v55, v58, type metadata accessor for NewspaperGroup);
  v46 = v57;
  v47 = *(v57 + 20);
  v48 = sub_219BED8D4();
  v49 = v59;
  (*(*(v48 - 8) + 16))(v59, v45 + v47, v48);
  v50 = v56;
  *(v49 + *(v56 + 20)) = *(v45 + *(v46 + 24));
  v51 = *(v45 + *(v46 + 28));
  swift_unknownObjectRetain();

  sub_21950BC8C(v45, type metadata accessor for NewspaperGroup);
  *(v49 + *(v50 + 24)) = v51;
  v52 = *(v61 + 16);

  if (v52)
  {
    sub_218FFC5A4(0);
    v54 = (v60 + *(v53 + 48));
    sub_21950BC24(v49, v60, type metadata accessor for NewspaperMagazineFeedGroup);
    type metadata accessor for MagazineFeedGroup(0);
    swift_storeEnumTagMultiPayload();
    v54[3] = &type metadata for NewspaperMagazineFeedGroupEmitterContext;
    *v54 = a1;
    v54[1] = a2;

    sub_21950BC8C(v49, type metadata accessor for NewspaperMagazineFeedGroup);
  }

  else
  {
    sub_21950D2C8(v49, v60, type metadata accessor for NewspaperMagazineFeedGroup);
    type metadata accessor for MagazineFeedGroup(0);
    swift_storeEnumTagMultiPayload();
  }

  sub_218C5FB88(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_219509E58(uint64_t a1, uint64_t a2)
{
  type metadata accessor for NewspaperMagazineFeedGroupEmitter(0);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup(0);
  sub_218D827D0();
  return sub_219BEF194();
}

void sub_219509F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), uint64_t a5)
{
  v113 = a5;
  v117 = a4;
  v127 = a3;
  v126 = a2;
  v6 = MEMORY[0x277D83D88];
  sub_21950D330(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v120 = &v98 - v8;
  sub_21950D330(0, &qword_280E90150, MEMORY[0x277D33EC8], v6);
  MEMORY[0x28223BE20](v9 - 8);
  v109 = &v98 - v10;
  sub_21950D330(0, &unk_280E919B0, sub_2186E3B14, v6);
  MEMORY[0x28223BE20](v11 - 8);
  v106 = &v98 - v12;
  v131 = sub_219BF2AB4();
  v125 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v123 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v13;
  MEMORY[0x28223BE20](v14);
  v124 = &v98 - v15;
  v129 = sub_219BEFBD4();
  v105 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v122 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v16;
  MEMORY[0x28223BE20](v17);
  v118 = &v98 - v18;
  v128 = sub_219BDBD34();
  v116 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v115 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BF0BD4();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v21 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for NewspaperMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v114);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for NewspaperGroupKnobs(0);
  v108 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v119 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v98 - v26;
  sub_218DF04EC(0);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v32 = &v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for NewspaperGroupConfig(0);
  v103 = *(v33 - 8);
  MEMORY[0x28223BE20](v33 - 8);
  v130 = &v98 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v98 - v36;
  v38 = type metadata accessor for NewspaperMagazineFeedGroupEmitter(0);
  v102 = __swift_project_boxed_opaque_existential_1((a1 + *(v38 + 24)), *(a1 + *(v38 + 24) + 24));
  (*(v30 + 16))(v32, a1, v29);
  v121 = v37;
  sub_218DEFE6C(v32, v37);
  v39 = *(v38 + 20);
  v40 = a1;
  v41 = v114;
  v107 = v40;
  v98 = v39;
  sub_21950BC24(v40 + v39, v23, type metadata accessor for NewspaperMagazineFeedGroupKnobs);
  sub_219BEF134();
  sub_2186E3B14(0);
  v43 = v42;
  sub_219BEE9C4();
  *(v27 + 3) = v44;
  sub_219BEE994();
  *(v27 + 4) = v45;
  v27[40] = 0;
  sub_219BEE9E4();
  *(v27 + 6) = v46;
  v27[56] = 0;
  v47 = v115;
  sub_219BDBD24();
  v48 = *&v23[v41[5]];
  v49 = objc_allocWithZone(MEMORY[0x277D30F38]);
  v50 = sub_219BDBC04();
  (*(v116 + 8))(v47, v128);
  v51 = [v49 initWithStartDate:v50 timeInterval:v48];

  if (v51)
  {
    (*(v100 + 8))(v21, v101);
    *v27 = v51;
    v52 = v41[7];
    *(v27 + 1) = *&v23[v41[6]];
    v53 = *&v23[v52];

    sub_21950BC8C(v23, type metadata accessor for NewspaperMagazineFeedGroupKnobs);
    *(v27 + 2) = v53;
    v54 = *(v99 + 40);
    v55 = sub_219BEE5D4();
    (*(*(v55 - 8) + 56))(&v27[v54], 1, 1, v55);
    v56 = v105;
    v57 = v118;
    v58 = v129;
    (*(v105 + 104))(v118, *MEMORY[0x277D32910], v129);
    sub_219BEF0B4();
    v128 = *(v134 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_appConfig);
    swift_unknownObjectRetain();

    v59 = *(v43 - 8);
    v60 = v106;
    (*(v59 + 16))(v106, v107 + v98, v43);
    (*(v59 + 56))(v60, 0, 1, v43);
    v61 = sub_219BF35D4();
    (*(*(v61 - 8) + 56))(v109, 1, 1, v61);
    LOBYTE(v132[0]) = 12;
    sub_21950D248(0, &qword_280E90058, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D33F88]);
    swift_allocObject();

    sub_219BF38D4();
    v62 = sub_219BF2774();
    (*(*(v62 - 8) + 56))(v120, 1, 1, v62);
    v63 = qword_280E8D920;
    *MEMORY[0x277D30B70];
    v64 = v63 == -1;
    v65 = v56;
    v66 = v57;
    v67 = v27;
    if (!v64)
    {
      swift_once();
    }

    qword_280F617C8;
    v68 = v124;
    v69 = sub_219BF2A84();
    MEMORY[0x28223BE20](v69);
    v70 = v102;
    sub_218B8B75C(0);
    v116 = sub_219BE3204();
    v117 = type metadata accessor for NewspaperGroupConfig;
    sub_21950BC24(v121, v130, type metadata accessor for NewspaperGroupConfig);
    sub_218D88F0C(v70, v132);
    (*(v65 + 16))(v122, v66, v58);
    sub_21950BC24(v67, v119, type metadata accessor for NewspaperGroupKnobs);
    v71 = v125;
    (*(v125 + 16))(v123, v68, v131);
    v72 = *(v103 + 80);
    v115 = (v72 | 7);
    v73 = (v72 + 16) & ~v72;
    v114 = v73;
    v120 = v67;
    v74 = (v104 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
    v109 = v74;
    v75 = (v74 + 15) & 0xFFFFFFFFFFFFFFF8;
    v76 = (*(v65 + 80) + v75 + 200) & ~*(v65 + 80);
    v77 = (v111 + *(v108 + 80) + v76) & ~*(v108 + 80);
    v78 = (v110 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
    v79 = (*(v71 + 80) + v78 + 8) & ~*(v71 + 80);
    v80 = swift_allocObject();
    v112 = type metadata accessor for NewspaperGroupConfig;
    sub_21950D2C8(v130, v80 + v73, type metadata accessor for NewspaperGroupConfig);
    *(v80 + v74) = v113;
    v81 = v80 + v75;
    v82 = v132[3];
    *(v81 + 32) = v132[2];
    *(v81 + 48) = v82;
    v83 = v132[1];
    *v81 = v132[0];
    *(v81 + 16) = v83;
    v84 = v132[7];
    *(v81 + 96) = v132[6];
    *(v81 + 112) = v84;
    v85 = v132[5];
    *(v81 + 64) = v132[4];
    *(v81 + 80) = v85;
    *(v81 + 192) = v133;
    v86 = v132[11];
    *(v81 + 160) = v132[10];
    *(v81 + 176) = v86;
    v87 = v132[9];
    *(v81 + 128) = v132[8];
    *(v81 + 144) = v87;
    v88 = v65;
    (*(v65 + 32))(v80 + v76, v122, v129);
    sub_21950D2C8(v119, v80 + v77, type metadata accessor for NewspaperGroupKnobs);
    *(v80 + v78) = v128;
    v89 = v125;
    (*(v125 + 32))(v80 + v79, v123, v131);
    swift_unknownObjectRetain();

    v90 = sub_219BE2E54();
    type metadata accessor for NewspaperGroup(0);
    sub_219BE2F64();

    v91 = v121;
    v92 = v130;
    sub_21950BC24(v121, v130, v117);
    v93 = v109;
    v94 = swift_allocObject();
    sub_21950D2C8(v92, v94 + v114, v112);
    v95 = &v93[v94];
    v96 = v127;
    *v95 = v126;
    v95[1] = v96;

    v97 = sub_219BE2E54();
    sub_219BE2FD4();
    swift_unknownObjectRelease();

    (*(v89 + 8))(v124, v131);
    (*(v88 + 8))(v118, v129);
    sub_21950BC8C(v91, type metadata accessor for NewspaperGroupConfig);
    sub_21950BC8C(v120, type metadata accessor for NewspaperGroupKnobs);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_21950AF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21950B8D8(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v9 + 56);
  *v8 = a2;
  v8[1] = a3;
  sub_21950BC24(a1, v8 + v10, type metadata accessor for NewspaperGroup);
  sub_21950D330(0, &qword_280EE6C88, sub_21950B8D8, MEMORY[0x277D6CF30]);
  swift_allocObject();

  return sub_219BE3014();
}

uint64_t sub_21950B060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v13 = qword_280F617C8;
  sub_2186F20D4(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_219C09EC0;
  v15 = MEMORY[0x277D837D0];
  *(v14 + 56) = MEMORY[0x277D837D0];
  v16 = sub_2186FC3BC();
  *(v14 + 64) = v16;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);

  sub_219BF7484();
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 72) = 0;
  *(v14 + 80) = 0xE000000000000000;
  v17 = sub_219BF6214();
  sub_219BE5314("Failed to create newspaper group for channel %{public}@, error=%{public}@", 73, 2, &dword_2186C1000, v13, v17, v14);

  sub_2186DF030(0, &qword_280E8B750, v15, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  v19 = sub_2194B1FF0(inited, a5);
  swift_setDeallocating();
  sub_2189AD3D8(inited + 32);
  sub_219509174(a4, v19, a7, a8, a9);
  v21 = v20;

  return v21;
}

uint64_t sub_21950B288()
{
  sub_218A80D28(0);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21950B2E8@<X0>(unint64_t *a1@<X8>)
{
  sub_218DF04EC(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0xC000000000000000;
  return result;
}

uint64_t sub_21950B360@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for NewspaperMagazineFeedGroupKnobs(0);
  a2[4] = sub_2195086A8(&qword_280EA8D48, type metadata accessor for NewspaperMagazineFeedGroupKnobs, &unk_219C1E6E0);
  a2[5] = sub_2195086A8(&qword_280EA8D50, type metadata accessor for NewspaperMagazineFeedGroupKnobs, &unk_219C1E6B8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21950BC24(v2 + v4, boxed_opaque_existential_1, type metadata accessor for NewspaperMagazineFeedGroupKnobs);
}

uint64_t sub_21950B424(uint64_t a1)
{
  sub_2186E3B14(0);
  v2 = sub_219BEE964();
  sub_2191EE154(MEMORY[0x277D84F90]);
  return v2;
}

uint64_t sub_21950B494()
{
  sub_218DF04EC(0);

  return sub_219BEDCA4();
}

uint64_t sub_21950B4C0@<X0>(uint64_t *a2@<X8>)
{
  sub_218C71780(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218DF04EC(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218A426AC(inited + 32);
  sub_21950D330(0, &qword_280EE7758, type metadata accessor for NewspaperMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_21950D394();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21950B600(uint64_t a1)
{
  sub_2195086A8(&qword_280EA2F28, type metadata accessor for NewspaperMagazineFeedGroupEmitter, &unk_219C8581C);

  return sub_219BE2324();
}

__n128 sub_21950B7A8(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v7 = *(type metadata accessor for NewspaperMagazineFeedGroupEmitter(0) - 8);
  v8 = (*(v7 + 64) + ((*(v7 + 80) + 16) & ~*(v7 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v3 + v8);
  v10 = *(v3 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = a3[3];
  v14[2] = a3[2];
  v14[3] = v11;
  v14[4] = a3[4];
  v12 = a3[1];
  v14[0] = *a3;
  v14[1] = v12;
  sub_219509174(a1, a2, v14, v9, v10);
  return result;
}

uint64_t sub_21950B87C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 4);
  v8[2] = *(a1 + 3);
  v8[3] = v5;
  v8[4] = *(a1 + 5);
  v6 = *(a1 + 2);
  v8[0] = *(a1 + 1);
  v8[1] = v6;
  return v2(v4, v3, v8);
}

void sub_21950B8D8(uint64_t a1)
{
  if (!qword_280E95F60)
  {
    type metadata accessor for NewspaperGroup(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E95F60);
    }
  }
}

void sub_21950B940(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for NewspaperMagazineFeedGroupEmitter(0);

  sub_219509840(a1, a2, a3, a4);
}

uint64_t sub_21950B9D8(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = *(a1 + 1);
  sub_21950B8D8(0);
  return v3(v4, v5, &a1[*(v6 + 48)]);
}

uint64_t objectdestroy_6Tm_2()
{
  v1 = (type metadata accessor for NewspaperMagazineFeedGroupEmitter(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_218DF04EC(0);
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = v2 + v1[7];
  sub_2186E3B14(0);
  (*(*(v5 - 8) + 8))(v4, v5);
  type metadata accessor for NewspaperMagazineFeedGroupKnobs(0);

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[8]));
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[9]));

  return swift_deallocObject();
}

uint64_t sub_21950BC24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21950BC8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21950BCEC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_219BF11F4();
        v6 = sub_219BF5A34();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_219BF11F4() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21950C0B8(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21950BE18(0, v2, 1, a1);
  }
}

void sub_21950BE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_219BF11F4();
  MEMORY[0x28223BE20](v8);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v35 - v11;
  v14 = MEMORY[0x28223BE20](v12);
  v48 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v46 = *(v13 + 16);
    v47 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v43 = (v13 + 32);
    v44 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v42 = -v17;
    v20 = a1 - a3;
    v36 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v40 = v19;
    v41 = a3;
    v38 = v21;
    v39 = v20;
    v22 = v20;
    v23 = v19;
    while (1)
    {
      v24 = v48;
      v25 = v46;
      (v46)(v48, v21, v8, v14);
      v26 = v49;
      v25(v49, v23, v8);
      sub_219BF11D4();
      v28 = v27;
      sub_219BF11D4();
      v30 = v29;
      v31 = *v18;
      (*v18)(v26, v8);
      v31(v24, v8);
      if (v30 >= v28)
      {
LABEL_4:
        a3 = v41 + 1;
        v19 = &v40[v36];
        v20 = v39 - 1;
        v21 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v32(v23, v33, v8);
      v23 += v42;
      v21 += v42;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21950C0B8(int64_t *a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v6 = v4;
  v125 = a1;
  v9 = sub_219BF11F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v127 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v138 = &v122 - v13;
  MEMORY[0x28223BE20](v14);
  v144 = &v122 - v15;
  v17 = MEMORY[0x28223BE20](v16);
  v143 = &v122 - v18;
  v135 = a3;
  v19 = *(a3 + 8);
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v125;
    if (!*v125)
    {
      goto LABEL_134;
    }

    a3 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v117 = a3;
    }

    else
    {
LABEL_128:
      v117 = sub_218C81048(a3);
    }

    v145 = v117;
    a3 = *(v117 + 2);
    if (a3 >= 2)
    {
      while (*v135)
      {
        v118 = *&v117[16 * a3];
        v119 = v117;
        v120 = *&v117[16 * a3 + 24];
        sub_21950CAC8(&(*v135)[v10[9] * v118], &(*v135)[v10[9] * *&v117[16 * a3 + 16]], &(*v135)[v10[9] * v120], v5);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v120 < v118)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_218C81048(v119);
        }

        if (a3 - 2 >= *(v119 + 2))
        {
          goto LABEL_122;
        }

        v121 = &v119[16 * a3];
        *v121 = v118;
        *(v121 + 1) = v120;
        v145 = v119;
        sub_218C80FBC(a3 - 1);
        v117 = v145;
        a3 = *(v145 + 2);
        if (a3 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v20 = 0;
  v141 = (v10 + 1);
  v142 = v10 + 2;
  v140 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v134 = v10;
  v124 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v128 = v21;
    if (v20 + 1 >= v19)
    {
      v38 = v20 + 1;
    }

    else
    {
      v136 = v19;
      v129 = v6;
      v24 = v10[9];
      v5 = &(*v135)[v24 * v23];
      v132 = *v135;
      v25 = v132;
      v26 = v10[2];
      v27 = v143;
      v26(v143, &v132[v24 * v23], v9, v17);
      v28 = &v25[v24 * v22];
      v29 = v144;
      v137 = v26;
      (v26)(v144, v28, v9);
      sub_219BF11D4();
      v31 = v30;
      sub_219BF11D4();
      v33 = v32;
      v34 = v22;
      v35 = v10[1];
      a3 = v141;
      v35(v29, v9);
      v133 = v35;
      v35(v27, v9);
      v123 = v34;
      v36 = v34 + 2;
      v139 = v24;
      v37 = &v132[v24 * (v34 + 2)];
      while (1)
      {
        v38 = v136;
        if (v136 == v36)
        {
          break;
        }

        a3 = v143;
        v39 = v137;
        v137(v143, v37, v9);
        v40 = v144;
        v39(v144, v5, v9);
        sub_219BF11D4();
        v42 = v41;
        sub_219BF11D4();
        v44 = v43;
        v45 = v133;
        (v133)(v40, v9);
        v45(a3, v9);
        v10 = v134;
        ++v36;
        v37 += v139;
        v5 += v139;
        if (v33 < v31 == v44 >= v42)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v46 = v128;
      v6 = v129;
      a4 = v124;
      v22 = v123;
      if (v33 < v31)
      {
        if (v38 < v123)
        {
          goto LABEL_125;
        }

        if (v123 < v38)
        {
          v47 = v38;
          a3 = v139 * (v38 - 1);
          v5 = v38 * v139;
          v136 = v38;
          v48 = v123 * v139;
          do
          {
            if (v22 != --v47)
            {
              v129 = v6;
              v49 = *v135;
              if (!*v135)
              {
                goto LABEL_131;
              }

              v50 = *v140;
              (*v140)(v127, &v49[v48], v9, v46);
              if (v48 < a3 || &v49[v48] >= &v49[v5])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v48 != a3)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v50(&v49[a3], v127, v9);
              v46 = v128;
              v6 = v129;
            }

            ++v22;
            a3 -= v139;
            v5 -= v139;
            v48 += v139;
          }

          while (v22 < v47);
          v10 = v134;
          a4 = v124;
          v22 = v123;
          v38 = v136;
        }
      }
    }

    v51 = v135[1];
    if (v38 < v51)
    {
      if (__OFSUB__(v38, v22))
      {
        goto LABEL_124;
      }

      if (v38 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if (v22 + a4 >= v51)
        {
          v5 = v135[1];
        }

        else
        {
          v5 = v22 + a4;
        }

        if (v5 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v38 != v5)
        {
          break;
        }
      }
    }

    v5 = v38;
    if (v38 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v128;
    }

    else
    {
      v21 = sub_2191F6B60(0, *(v128 + 2) + 1, 1, v128);
    }

    a3 = *(v21 + 2);
    v52 = *(v21 + 3);
    v53 = a3 + 1;
    if (a3 >= v52 >> 1)
    {
      v21 = sub_2191F6B60((v52 > 1), a3 + 1, 1, v21);
    }

    *(v21 + 2) = v53;
    v54 = &v21[16 * a3];
    *(v54 + 4) = v22;
    *(v54 + 5) = v5;
    v55 = *v125;
    if (!*v125)
    {
      goto LABEL_133;
    }

    v130 = v5;
    if (a3)
    {
      while (1)
      {
        v5 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v56 = *(v21 + 4);
          v57 = *(v21 + 5);
          v66 = __OFSUB__(v57, v56);
          v58 = v57 - v56;
          v59 = v66;
LABEL_52:
          if (v59)
          {
            goto LABEL_112;
          }

          v72 = &v21[16 * v53];
          v74 = *v72;
          v73 = *(v72 + 1);
          v75 = __OFSUB__(v73, v74);
          v76 = v73 - v74;
          v77 = v75;
          if (v75)
          {
            goto LABEL_115;
          }

          v78 = &v21[16 * v5 + 32];
          v80 = *v78;
          v79 = *(v78 + 1);
          v66 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v66)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v76, v81))
          {
            goto LABEL_119;
          }

          if (v76 + v81 >= v58)
          {
            if (v58 < v81)
            {
              v5 = v53 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v82 = &v21[16 * v53];
        v84 = *v82;
        v83 = *(v82 + 1);
        v66 = __OFSUB__(v83, v84);
        v76 = v83 - v84;
        v77 = v66;
LABEL_66:
        if (v77)
        {
          goto LABEL_114;
        }

        v85 = &v21[16 * v5];
        v87 = *(v85 + 4);
        v86 = *(v85 + 5);
        v66 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v66)
        {
          goto LABEL_117;
        }

        if (v88 < v76)
        {
          goto LABEL_3;
        }

LABEL_73:
        a3 = v5 - 1;
        if (v5 - 1 >= v53)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v135)
        {
          goto LABEL_130;
        }

        v93 = v21;
        v94 = *&v21[16 * a3 + 32];
        v95 = *&v21[16 * v5 + 40];
        sub_21950CAC8(&(*v135)[v10[9] * v94], &(*v135)[v10[9] * *&v21[16 * v5 + 32]], &(*v135)[v10[9] * v95], v55);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v95 < v94)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_218C81048(v93);
        }

        if (a3 >= *(v93 + 2))
        {
          goto LABEL_109;
        }

        v96 = &v93[16 * a3];
        *(v96 + 4) = v94;
        *(v96 + 5) = v95;
        v145 = v93;
        sub_218C80FBC(v5);
        v21 = v145;
        v53 = *(v145 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v60 = &v21[16 * v53 + 32];
      v61 = *(v60 - 64);
      v62 = *(v60 - 56);
      v66 = __OFSUB__(v62, v61);
      v63 = v62 - v61;
      if (v66)
      {
        goto LABEL_110;
      }

      v65 = *(v60 - 48);
      v64 = *(v60 - 40);
      v66 = __OFSUB__(v64, v65);
      v58 = v64 - v65;
      v59 = v66;
      if (v66)
      {
        goto LABEL_111;
      }

      v67 = &v21[16 * v53];
      v69 = *v67;
      v68 = *(v67 + 1);
      v66 = __OFSUB__(v68, v69);
      v70 = v68 - v69;
      if (v66)
      {
        goto LABEL_113;
      }

      v66 = __OFADD__(v58, v70);
      v71 = v58 + v70;
      if (v66)
      {
        goto LABEL_116;
      }

      if (v71 >= v63)
      {
        v89 = &v21[16 * v5 + 32];
        v91 = *v89;
        v90 = *(v89 + 1);
        v66 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v66)
        {
          goto LABEL_120;
        }

        if (v58 < v92)
        {
          v5 = v53 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v135[1];
    v20 = v130;
    a4 = v124;
    if (v130 >= v19)
    {
      goto LABEL_95;
    }
  }

  v129 = v6;
  v97 = *v135;
  v98 = v10[9];
  v139 = v10[2];
  v99 = &v97[v98 * (v38 - 1)];
  v100 = v22;
  v101 = -v98;
  v123 = v100;
  v102 = (v100 - v38);
  v137 = v97;
  v126 = v98;
  v103 = &v97[v38 * v98];
  v130 = v5;
LABEL_85:
  v136 = v38;
  v131 = v103;
  v132 = v102;
  v104 = v103;
  v133 = v99;
  while (1)
  {
    v105 = v143;
    v106 = v139;
    (v139)(v143, v104, v9, v17);
    v107 = v144;
    v106(v144, v99, v9);
    sub_219BF11D4();
    v109 = v108;
    sub_219BF11D4();
    v111 = v110;
    v112 = *v141;
    (*v141)(v107, v9);
    v113 = v105;
    a3 = v9;
    v112(v113, v9);
    if (v111 >= v109)
    {
LABEL_84:
      v38 = v136 + 1;
      v99 = &v133[v126];
      v102 = v132 - 1;
      v5 = v130;
      v103 = &v131[v126];
      if (v136 + 1 != v130)
      {
        goto LABEL_85;
      }

      v6 = v129;
      v10 = v134;
      v22 = v123;
      if (v130 < v123)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v114 = *v140;
    v115 = v138;
    (*v140)(v138, v104, v9);
    swift_arrayInitWithTakeFrontToBack();
    v114(v99, v115, v9);
    v99 += v101;
    v104 += v101;
    if (__CFADD__(v102++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_130:
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

void sub_21950CAC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = sub_219BF11F4();
  v8 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v63 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v62 = &v52 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v67 = a1;
  v66 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v33 = a4 + v17;
    if (v17 >= 1)
    {
      v34 = -v13;
      v56 = a4;
      v57 = (v8 + 16);
      v54 = (v8 + 8);
      v55 = a1;
      v35 = v33;
      v58 = -v13;
      do
      {
        v53 = v33;
        v36 = a2;
        v37 = a2 + v34;
        v60 = v36;
        v61 = v37;
        while (1)
        {
          if (v36 <= a1)
          {
            v67 = v36;
            v65 = v53;
            goto LABEL_58;
          }

          v39 = a3;
          v59 = v33;
          v40 = a3 + v34;
          v41 = v35 + v34;
          v42 = *v57;
          v43 = v62;
          v44 = v64;
          (*v57)(v62, v41, v64);
          v45 = v37;
          v46 = v63;
          (v42)(v63, v45, v44);
          sub_219BF11D4();
          v48 = v47;
          sub_219BF11D4();
          v50 = v49;
          v51 = *v54;
          (*v54)(v46, v44);
          v51(v43, v44);
          if (v50 < v48)
          {
            break;
          }

          v33 = v41;
          a3 = v40;
          if (v39 < v35 || v40 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v61;
            a1 = v55;
          }

          else
          {
            v37 = v61;
            a1 = v55;
            if (v39 != v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v35 = v41;
          v38 = v41 > v56;
          v34 = v58;
          v36 = v60;
          if (!v38)
          {
            a2 = v60;
            goto LABEL_57;
          }
        }

        a3 = v40;
        if (v39 < v60 || v40 >= v60)
        {
          a2 = v61;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v55;
          v34 = v58;
          v33 = v59;
        }

        else
        {
          a2 = v61;
          a1 = v55;
          v34 = v58;
          v33 = v59;
          if (v39 != v60)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v35 > v56);
    }

LABEL_57:
    v67 = a2;
    v65 = v33;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = a4 + v16;
    v65 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = *(v8 + 16);
      v59 = a3;
      v60 = v8 + 16;
      v57 = (v8 + 8);
      v58 = v19;
      v20 = v63;
      do
      {
        v21 = a1;
        v22 = v62;
        v23 = a2;
        v24 = v64;
        v25 = a2;
        v26 = v58;
        (v58)(v62, v23, v64);
        v26(v20, a4, v24);
        sub_219BF11D4();
        v28 = v27;
        sub_219BF11D4();
        v30 = v29;
        v31 = *v57;
        (*v57)(v20, v24);
        v31(v22, v24);
        if (v30 >= v28)
        {
          v32 = v21;
          if (v21 < a4 || v21 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v25;
          }

          else
          {
            a2 = v25;
            if (v21 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v66 = a4 + v13;
          a4 += v13;
        }

        else
        {
          a2 = v25 + v13;
          v32 = v21;
          if (v21 < v25 || v21 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v21 != v25)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v32 + v13;
        v67 = a1;
      }

      while (a4 < v61 && a2 < v59);
    }
  }

LABEL_58:
  sub_2189F193C(&v67, &v66, &v65);
}

uint64_t sub_21950D0A8(uint64_t a1)
{
  v3 = *(type metadata accessor for NewspaperMagazineFeedGroupEmitter(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_21950B060(a1, v1[2], v1[3], v1[4], v1[5], v1 + v4, (v1 + v5), *(v1 + ((v5 + 87) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 87) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_21950D16C(uint64_t a1, uint64_t a2)
{
  sub_2186DF030(0, qword_280EC4788, &type metadata for MagazineFeedPoolContent, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21950D1F4()
{
  result = qword_280EA2F50[0];
  if (!qword_280EA2F50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA2F50);
  }

  return result;
}

void sub_21950D248(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_21950D2C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21950D330(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21950D394()
{
  result = qword_280EE7760;
  if (!qword_280EE7760)
  {
    sub_21950D330(255, &qword_280EE7758, type metadata accessor for NewspaperMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7760);
  }

  return result;
}

unint64_t sub_21950D440()
{
  result = qword_27CC1B4B8;
  if (!qword_27CC1B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B4B8);
  }

  return result;
}

uint64_t type metadata accessor for SavedFeedSectionDescriptor(uint64_t a1)
{
  result = qword_280EBA580;
  if (!qword_280EBA580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21950D4E0(uint64_t a1)
{
  result = type metadata accessor for ArticleListSavedFeedGroup(319);
  if (v2 <= 0x3F)
  {
    result = sub_218799404();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21950D554()
{
  v1 = type metadata accessor for ArticleListSavedFeedGroup(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for SavedFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21950DA5C(v0, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v8 = *v6;
      v9 = v6[6];
    }

    else
    {
      return 7364967;
    }
  }

  else
  {
    sub_218CB12E8(v6, v3);
    v8 = *v3;

    sub_21950DE58(v3, type metadata accessor for ArticleListSavedFeedGroup);
  }

  return v8;
}

uint64_t sub_21950D6B8@<X0>(uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21950DA5C(v6, v5);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    sub_21950DE58(v5, type metadata accessor for SavedFeedSectionDescriptor);
  }

  v7 = *MEMORY[0x277D31EA0];
  v8 = sub_219BEDDC4();
  return (*(*(v8 - 8) + 104))(a2, v7, v8);
}

uint64_t sub_21950D7AC@<X0>(uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21950DA5C(v6, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_21950DE58(v5, type metadata accessor for SavedFeedSectionDescriptor);
      v8 = MEMORY[0x277D33150];
    }

    else
    {
      v8 = MEMORY[0x277D33180];
    }

    v12 = *v8;
    v13 = sub_219BF10E4();
    return (*(*(v13 - 8) + 104))(a2, v12, v13);
  }

  else
  {
    v9 = *MEMORY[0x277D33190];
    v10 = sub_219BF10E4();
    (*(*(v10 - 8) + 104))(a2, v9, v10);
    return sub_21950DE58(v5, type metadata accessor for SavedFeedSectionDescriptor);
  }
}

uint64_t sub_21950D918@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for ArticleListSavedFeedGroup(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21950DA5C(v3, v10);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      result = sub_21950DE58(v10, type metadata accessor for SavedFeedSectionDescriptor);
    }

    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    sub_218CB12E8(v10, v7);
    *(a2 + 24) = v5;
    *(a2 + 32) = sub_21950DEB8();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_218CB12E8(v7, boxed_opaque_existential_1);
  }

  return result;
}

uint64_t sub_21950DA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedSectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21950DAC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListSavedFeedGroup(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  sub_21950DDF4(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (v12 + *(v13 + 56));
  sub_21950DA5C(a1, v12);
  sub_21950DA5C(a2, v14);
  type metadata accessor for SavedFeedSectionDescriptor(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_218CB12E8(v12, v9);
      sub_218CB12E8(v14, v6);
      v22 = sub_219BED814();
      sub_21950DE58(v6, type metadata accessor for ArticleListSavedFeedGroup);
      sub_21950DE58(v9, type metadata accessor for ArticleListSavedFeedGroup);
      return v22 & 1;
    }

    sub_21950DE58(v12, type metadata accessor for ArticleListSavedFeedGroup);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v22 = 1;
      return v22 & 1;
    }

LABEL_14:
    sub_21950DE58(v14, type metadata accessor for SavedFeedSectionDescriptor);
    v22 = 0;
    return v22 & 1;
  }

  v17 = *v12;
  v16 = v12[1];
  v18 = v12[6];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_14;
  }

  v19 = *v14;
  v20 = v14[1];
  v25 = v14[6];
  if (v17 == v19 && v16 == v20)
  {

    v22 = 1;
  }

  else
  {
    v22 = sub_219BF78F4();
  }

  return v22 & 1;
}

void sub_21950DDF4(uint64_t a1)
{
  if (!qword_280EBA4E0[0])
  {
    type metadata accessor for SavedFeedSectionDescriptor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_280EBA4E0);
    }
  }
}

uint64_t sub_21950DE58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21950DEB8()
{
  result = qword_27CC14500;
  if (!qword_27CC14500)
  {
    type metadata accessor for ArticleListSavedFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC14500);
  }

  return result;
}

void sub_21950DF50(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  sub_218D37B4C(0);
  v31 = v3;
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E28A4(0, &unk_280EE6770, &qword_280E8E390, &protocolRef_FCChannelProviding, MEMORY[0x277D6CF88]);
  v32 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = sub_219BED8D4();
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v35 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21950EE8C(0, &qword_27CC1B4C8, MEMORY[0x277D844C8]);
  v37 = v10;
  v33 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v13 = type metadata accessor for NewspaperTodayFeedGroup(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21950ED78();
  v36 = v12;
  v16 = v38;
  sub_219BF7B34();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v17 = v32;
    v18 = v15;
    v19 = v34;
    LOBYTE(v40) = 0;
    sub_21950EF60(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    v20 = v8;
    v21 = *(v19 + 32);
    v22 = v18;
    v38 = v20;
    v21(v18, v35, v20);
    LOBYTE(v40) = 1;
    sub_21950EEF0(&unk_280EE6780, MEMORY[0x277D6CF98]);
    sub_219BF7734();
    sub_219BE3384();
    (*(v29 + 8))(v7, v17);
    v23 = v13;
    *(v22 + *(v13 + 20)) = v40;
    LOBYTE(v40) = 2;
    sub_21950EF60(&unk_280EE6800, sub_218D37B4C, MEMORY[0x277D6CF98]);
    v24 = v30;
    v25 = v31;
    v35 = 0;
    sub_219BF7734();
    sub_219BE3384();
    (*(v28 + 8))(v24, v25);
    *(v22 + *(v23 + 24)) = v40;
    sub_2186D0BA8();
    v39 = 3;
    sub_2187531B0(&qword_280E8EDD0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_219BF76E4();
    (*(v33 + 8))(v36, v37);
    *(v22 + *(v23 + 28)) = v40;
    sub_21950EDCC(v22, v27);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_21950EE30(v22);
  }
}

uint64_t sub_21950E5CC(void *a1)
{
  v2 = v1;
  sub_218D37B4C(0);
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E28A4(0, &unk_280EE6770, &qword_280E8E390, &protocolRef_FCChannelProviding, MEMORY[0x277D6CF88]);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  sub_21950EE8C(0, &unk_27CC1B4D8, MEMORY[0x277D84538]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v25 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21950ED78();
  v16 = v12;
  sub_219BF7B44();
  LOBYTE(v33) = 0;
  sub_219BED8D4();
  sub_21950EF60(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  v17 = v31;
  sub_219BF7834();
  if (v17)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v19 = v29;
  v26 = v7;
  v31 = v13;
  v20 = type metadata accessor for NewspaperTodayFeedGroup(0);
  sub_2186D6710(0, &qword_280E8E390, &protocolRef_FCChannelProviding);
  swift_unknownObjectRetain();
  sub_219BE3404();
  LOBYTE(v33) = 1;
  sub_21950EEF0(&unk_280EE6790, MEMORY[0x277D6CF90]);
  v21 = v30;
  sub_219BF7834();
  (*(v19 + 8))(v10, v21);
  v33 = *(v2 + *(v20 + 24));
  sub_2186E28A4(0, &qword_280E8EC20, &qword_280E8E360, &protocolRef_FCSectionProviding, MEMORY[0x277D83940]);
  v22 = v16;
  sub_218D37E78();

  v23 = v26;
  sub_219BE33B4();
  LOBYTE(v33) = 2;
  sub_21950EF60(&qword_280EE6810, sub_218D37B4C, MEMORY[0x277D6CF90]);
  v24 = v27;
  sub_219BF7834();
  (*(v28 + 8))(v23, v24);
  v33 = *(v2 + *(v20 + 28));
  v32 = 3;
  sub_2186D0BA8();
  sub_2187531B0(&unk_280E8EE00, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_219BF77E4();
  return (*(v31 + 8))(v15, v22);
}

uint64_t sub_21950EBEC(uint64_t a1)
{
  result = sub_21950EF60(&qword_27CC0B9B8, type metadata accessor for NewspaperTodayFeedGroup, &unk_219C85C94);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21950EC44(uint64_t a1)
{
  v2 = sub_21950EF60(qword_280EC44F0, type metadata accessor for NewspaperTodayFeedGroup, &unk_219C85B78);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_21950ECCC(void *a1)
{
  a1[1] = sub_21950EF60(qword_280EC44F0, type metadata accessor for NewspaperTodayFeedGroup, &unk_219C85B78);
  a1[2] = sub_21950EF60(&qword_27CC0B9F8, type metadata accessor for NewspaperTodayFeedGroup, &unk_219C85C6C);
  result = sub_21950EF60(&qword_27CC1B4C0, type metadata accessor for NewspaperTodayFeedGroup, &unk_219C85C44);
  a1[3] = result;
  return result;
}

unint64_t sub_21950ED78()
{
  result = qword_27CC1B4D0;
  if (!qword_27CC1B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B4D0);
  }

  return result;
}

uint64_t sub_21950EDCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewspaperTodayFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21950EE30(uint64_t a1)
{
  v2 = type metadata accessor for NewspaperTodayFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21950EE8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21950ED78();
    v7 = a3(a1, &type metadata for NewspaperTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21950EEF0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2186E28A4(255, &unk_280EE6770, &qword_280E8E390, &protocolRef_FCChannelProviding, MEMORY[0x277D6CF88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21950EF60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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