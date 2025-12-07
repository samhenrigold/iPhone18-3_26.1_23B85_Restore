double sub_2198D3054@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a3;
  v5 = sub_219BF2CB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_219BF2634();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a2[46];
  v16[1] = a2[47];
  __swift_project_boxed_opaque_existential_1(a2 + 43, v13);
  *v8 = *(v12 + 16);
  (*(v6 + 104))(v8, *MEMORY[0x277D33B98], v5);
  swift_unknownObjectRetain();
  sub_219BF4794();
  (*(v6 + 8))(v8, v5);
  LOBYTE(v5) = sub_219BF2614();
  (*(v9 + 8))(v11, v17);
  type metadata accessor for FollowingTagModel();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v12;
  *(v14 + 32) = v5 & 1;

  sub_218BDF9D0();

  return result;
}

id sub_2198D3280(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 288);
  v4 = [*(*a1 + 16) identifier];
  if (!v4)
  {
    sub_219BF5414();
    v4 = sub_219BF53D4();
  }

  v5 = [*(v3 + OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController) isChannelPermanentForTagID_];

  if (v5)
  {
    return 0;
  }

  else
  {
    return [*(v2 + 16) isLocal];
  }
}

uint64_t sub_2198D3334(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 288);
  v4 = [*(*a1 + 16) identifier];
  if (!v4)
  {
    sub_219BF5414();
    v4 = sub_219BF53D4();
  }

  v5 = [*(v3 + OBJC_IVAR____TtC7NewsUI219SubscriptionService_subscriptionController) isChannelPermanentForTagID_];

  if (v5)
  {
    return 0;
  }

  result = [*(v2 + 16) asSports];
  if (result)
  {
    swift_unknownObjectRelease();
    return 1;
  }

  return result;
}

uint64_t sub_2198D33FC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = a3;
  v5 = sub_219BF2CB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_219BF2634();
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a2[46];
  v16[1] = a2[47];
  __swift_project_boxed_opaque_existential_1(a2 + 43, v13);
  *v8 = *(v12 + 16);
  (*(v6 + 104))(v8, *MEMORY[0x277D33B98], v5);
  swift_unknownObjectRetain();
  sub_219BF4794();
  (*(v6 + 8))(v8, v5);
  LOBYTE(v5) = sub_219BF2614();
  (*(v9 + 8))(v11, v17);
  type metadata accessor for FollowingTagModel();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = v12;
  *(v14 + 32) = v5 & 1;
  *v18 = v14;
}

uint64_t sub_2198D361C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2198D3740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2198D37BC()
{
  v0 = sub_219BDD044();
  v1 = MEMORY[0x28223BE20](v0);
  v3 = (&v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v3 = 11;
  (*(v4 + 104))(v3, *MEMORY[0x277CEAE08], v1);
  sub_219BDCF54();
  swift_allocObject();
  return sub_219BDCF44();
}

uint64_t sub_2198D38BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD0C4();
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186D6710(0, &qword_280EE8FE0, &protocolRef_AAEndpointType);
    result = sub_219BE1E24();
    if (result)
    {
      sub_219BDD024();
      sub_219BDCFC4();
      v3 = sub_219BDCFB4();
      sub_219BDC8D4();
      sub_219BDC8B4();
      sub_219BDC2E4();
      sub_219BDC8A4();

      v4 = sub_219BDCFA4();

      sub_219BDC8B4();
      sub_219BDC314();
      sub_219BDC8A4();

      v5 = sub_219BDCF84();

      sub_219BDC8B4();
      sub_219BDC304();
      sub_219BDC8A4();

      sub_219BDCF94();

      return sub_219BDD014();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2198D3A7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2198D3AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_219BEC034();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_219BEC054();
  v5 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198D4274(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE0564();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BEC064();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  (*(v15 + 16))(v18, a1, v14, v16);
  v20 = (*(v15 + 88))(v18, v14);
  if (v20 == *MEMORY[0x277D2D4F0])
  {
    (*(v15 + 96))(v18, v14);
    v21 = v49;
    v22 = v18;
    v23 = v50;
    (*(v5 + 32))(v49, v22, v50);
    (*(v11 + 104))(v13, *MEMORY[0x277D2E5E8], v10);
    v24 = sub_219BEC024();
    sub_2198D42CC(v24, v9);
    v25 = sub_219BE0334();
    (*(*(v25 - 8) + 56))(v9, 0, 1, v25);
    sub_219BE00F4();
    (*(v15 + 8))(v19, v14);
    return (*(v5 + 8))(v21, v23);
  }

  v27 = v20;
  v28 = v11;
  v29 = v9;
  v50 = v19;
  if (v20 == *MEMORY[0x277D2D508])
  {
    v30 = *(v15 + 96);
    v45 = v14;
    v30(v18, v14);
    v32 = v46;
    v31 = v47;
    v33 = v48;
    (*(v47 + 32))(v46, v18, v48);
    (*(v28 + 104))(v13, *MEMORY[0x277D2E600], v10);
    v34 = sub_219BEC024();
    sub_2198D42CC(v34, v29);
    v35 = sub_219BE0334();
    (*(*(v35 - 8) + 56))(v29, 0, 1, v35);
    sub_219BE00F4();
    (*(v15 + 8))(v50, v45);
    return (*(v31 + 8))(v32, v33);
  }

  if (v20 == *MEMORY[0x277D2D4F8])
  {
    (*(v28 + 104))(v13, *MEMORY[0x277D2E5F0], v10);
    v36 = sub_219BE0334();
    (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
    sub_219BE00F4();
    return (*(v15 + 8))(v50, v14);
  }

  v37 = v50;
  if (v20 == *MEMORY[0x277D2D520])
  {
    (*(v28 + 104))(v13, *MEMORY[0x277D2E5F8], v10);
    v38 = sub_219BE0334();
    (*(*(v38 - 8) + 56))(v29, 1, 1, v38);
LABEL_16:
    sub_219BE00F4();
    return (*(v15 + 8))(v37, v14);
  }

  if (v20 == *MEMORY[0x277D2D528])
  {
    v39 = MEMORY[0x277D2E5F8];
LABEL_15:
    (*(v28 + 104))(v13, *v39, v10);
    v40 = sub_219BE0334();
    (*(*(v40 - 8) + 56))(v29, 1, 1, v40);
    goto LABEL_16;
  }

  if (v20 == *MEMORY[0x277D2D510])
  {
    v39 = MEMORY[0x277D2E608];
    goto LABEL_15;
  }

  if (v20 == *MEMORY[0x277D2D518])
  {
    v39 = MEMORY[0x277D2E610];
    goto LABEL_15;
  }

  v41 = *MEMORY[0x277D2D500];
  (*(v28 + 104))(v13, *MEMORY[0x277D2E5E8], v10);
  v42 = sub_219BE0334();
  (*(*(v42 - 8) + 56))(v29, 1, 1, v42);
  sub_219BE00F4();
  v43 = *(v15 + 8);
  result = v43(v37, v14);
  if (v27 != v41)
  {
    return v43(v18, v14);
  }

  return result;
}

void sub_2198D4274(uint64_t a1)
{
  if (!qword_280EE8440)
  {
    sub_219BE0334();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE8440);
    }
  }
}

void sub_2198D42CC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_219BEC484();
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEBDD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEBDC4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v14 = a1;
  sub_218A450F0();
  if (swift_dynamicCast())
  {
    if ((*(v11 + 88))(v13, v10) == *MEMORY[0x277D2D1A8])
    {

      (*(v11 + 96))(v13, v10);

      sub_2198D4780(0);
      v16 = *(v15 + 48);
      v17 = *MEMORY[0x277D2E498];
      v18 = sub_219BE0334();
      (*(*(v18 - 8) + 104))(v32, v17, v18);
      v19 = sub_219BEC384();
      (*(*(v19 - 8) + 8))(&v13[v16], v19);
LABEL_18:

      return;
    }

    (*(v11 + 8))(v13, v10);
  }

  v33 = a1;
  v20 = a1;
  if (swift_dynamicCast())
  {
    v21 = (*(v7 + 88))(v9, v6);
    if (v21 == *MEMORY[0x277D2D1B0] || v21 == *MEMORY[0x277D2D1C0] || v21 == *MEMORY[0x277D2D1B8])
    {

      v24 = MEMORY[0x277D2E488];
      goto LABEL_21;
    }

    (*(v7 + 8))(v9, v6);
  }

  v33 = a1;
  if (swift_dynamicCast())
  {
    v25 = v31;
    if ((*(v31 + 88))(v5, v3) == *MEMORY[0x277D2D678])
    {
      v26 = *MEMORY[0x277D2E490];
      v27 = sub_219BE0334();
      (*(*(v27 - 8) + 104))(v32, v26, v27);
      goto LABEL_18;
    }

    (*(v25 + 8))(v5, v3);
  }

  v24 = MEMORY[0x277D2E4A0];
LABEL_21:
  v28 = *v24;
  v29 = sub_219BE0334();
  (*(*(v29 - 8) + 104))(v32, v28, v29);
}

void sub_2198D4780(uint64_t a1)
{
  if (!qword_27CC20768)
  {
    sub_219BEC384();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20768);
    }
  }
}

uint64_t sub_2198D47EC@<X0>(void *a1@<X1>, __int16 a2@<W2>, uint64_t a3@<X8>)
{
  v6 = sub_219BF0744();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF0734();
  sub_2198D4A08();
  v10 = sub_219BF70D4();
  v11 = *(v7 + 8);
  v11(v9, v6);
  if ((v10 & 1) == 0 || ![a1 isCurrent])
  {
    v16 = *MEMORY[0x277D334C8];
    v17 = sub_219BF19D4();
    return (*(*(v17 - 8) + 104))(a3, v16, v17);
  }

  if ((a2 & 0x100) != 0)
  {
    v13 = sub_219BF19D4();
    v14 = *(*(v13 - 8) + 104);
    if ((a2 & 1) == 0)
    {
      v15 = MEMORY[0x277D334C0];
      return v14(a3, *v15, v13);
    }

    goto LABEL_8;
  }

  sub_219BF06F4();
  v12 = sub_219BF70D4();
  v11(v9, v6);
  v13 = sub_219BF19D4();
  v14 = *(*(v13 - 8) + 104);
  if ((v12 & 1) == 0)
  {
LABEL_8:
    v15 = MEMORY[0x277D334C8];
    return v14(a3, *v15, v13);
  }

  v15 = MEMORY[0x277D334D0];
  return v14(a3, *v15, v13);
}

unint64_t sub_2198D4A08()
{
  result = qword_280E90EB8;
  if (!qword_280E90EB8)
  {
    sub_219BF0744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E90EB8);
  }

  return result;
}

uint64_t sub_2198D4B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218718690(*v3 + 56, &v11);
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  sub_2198D5160(v10, &v9);
  sub_218EA8C20(0);
  swift_allocObject();
  sub_219682604();

  v7 = sub_219BE6E64();
  sub_2198D51BC(v10);
  return v7;
}

uint64_t sub_2198D4BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218718690(*v3 + 56, &v11);
  v10[0] = a1;
  v10[1] = a2;
  v10[2] = a3;
  sub_2198D505C(v10, &v9);
  sub_218EA8C20(0);
  swift_allocObject();
  sub_2198D50B8();

  v7 = sub_219BE6E64();
  sub_2198D510C(v10);
  return v7;
}

uint64_t sub_2198D4C7C(uint64_t a1)
{
  refreshed = type metadata accessor for SharedWithYouFeedRefreshBlueprintModifier(0);
  MEMORY[0x28223BE20](refreshed);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  sub_2198D4F94(a1, &v12 - v7, type metadata accessor for SharedWithYouFeedRefreshResult);
  sub_218718690(v9 + 56, &v8[*(refreshed + 20)]);
  sub_2198D4F94(v8, v5, type metadata accessor for SharedWithYouFeedRefreshBlueprintModifier);
  sub_218EA8C20(0);
  swift_allocObject();
  sub_218713B18(&qword_27CC20778, type metadata accessor for SharedWithYouFeedRefreshBlueprintModifier, &unk_219CC04F4);
  v10 = sub_219BE6E64();
  sub_2198D4FFC(v8, type metadata accessor for SharedWithYouFeedRefreshBlueprintModifier);
  return v10;
}

uint64_t sub_2198D4DF0()
{
  sub_218EA8C20(0);
  swift_allocObject();
  sub_21988B074();
  return sub_219BE6E64();
}

uint64_t sub_2198D4E38(uint64_t a1)
{
  v2 = type metadata accessor for SharedWithYouFeedFailedBlueprintModifier(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  sub_2198D4F94(a1, &v10 - v6, type metadata accessor for SharedWithYouFeedFailedData);
  sub_2198D4F94(v7, v4, type metadata accessor for SharedWithYouFeedFailedBlueprintModifier);
  sub_218EA8C20(0);
  swift_allocObject();
  sub_218713B18(&qword_27CC20770, type metadata accessor for SharedWithYouFeedFailedBlueprintModifier, &unk_219CC4754);
  v8 = sub_219BE6E64();
  sub_2198D4FFC(v7, type metadata accessor for SharedWithYouFeedFailedBlueprintModifier);
  return v8;
}

uint64_t sub_2198D4F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2198D4FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2198D50B8()
{
  result = qword_27CC20780;
  if (!qword_27CC20780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20780);
  }

  return result;
}

void sub_2198D5210(uint64_t a1)
{
  v37 = type metadata accessor for ArticleListHistoryFeedGroup(0);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for HistoryFeedGroup(0) - 8;
  MEMORY[0x28223BE20](v3);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + 16);
  if (!v34)
  {
    return;
  }

  v6 = 0;
  v7 = *(v4 + 80);
  v32 = *(v4 + 72);
  v33 = a1 + ((v7 + 32) & ~v7);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v35;
    sub_218B73EE8(v33 + v32 * v6, v35);
    v10 = v9;
    v11 = v36;
    sub_2198D579C(v10, v36, type metadata accessor for ArticleListHistoryFeedGroup);
    v12 = *(v11 + *(v37 + 24));

    sub_218B73FB0(v11);
    v13 = v12 >> 62;
    if (v12 >> 62)
    {
      v14 = sub_219BF7214();
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v8 >> 62;
    if (v8 >> 62)
    {
      v30 = sub_219BF7214();
      v17 = v30 + v14;
      if (__OFADD__(v30, v14))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v15)
      {
        v18 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v17 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_219BF7214();
      goto LABEL_15;
    }

    if (v15)
    {
      goto LABEL_14;
    }

LABEL_15:
    v8 = sub_219BF7364();
    v18 = v8 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v13)
    {
      break;
    }

    v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v20 >> 1) - v19) < v14)
    {
      goto LABEL_35;
    }

    v38 = v14;
    v39 = v6;
    v41 = v8;
    v22 = v18 + 8 * v19 + 32;
    if (v13)
    {
      if (v21 < 1)
      {
        goto LABEL_37;
      }

      sub_2187E7248(0);
      sub_218780D70(&qword_280E8EBE0, sub_2187E7248, MEMORY[0x277D83988]);
      for (i = 0; i != v21; ++i)
      {
        v24 = sub_218A352D0(v40, i, v12);
        v26 = *v25;
        swift_unknownObjectRetain();
        (v24)(v40, 0);
        *(v22 + 8 * i) = v26;
      }
    }

    else
    {
      sub_218731D50();
      swift_arrayInitWithCopy();
    }

    v6 = v39;
    v8 = v41;
    if (v38 >= 1)
    {
      v27 = *(v18 + 16);
      v28 = __OFADD__(v27, v38);
      v29 = v27 + v38;
      if (v28)
      {
        goto LABEL_36;
      }

      *(v18 + 16) = v29;
    }

LABEL_4:
    if (++v6 == v34)
    {
      return;
    }
  }

  v21 = sub_219BF7214();
  if (v21)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v14 <= 0)
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

uint64_t sub_2198D55E8(unint64_t a1)
{
  v2 = type metadata accessor for ArticleListHistoryFeedGroup(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for HistoryFeedGroup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  v11 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_7:
    sub_218DC27CC(0);
    v15 = swift_projectBox();
    sub_218B73EE8(v15, v10);
    sub_2198D579C(v10, v7, type metadata accessor for HistoryFeedGroup);
    sub_2198D579C(v7, v4, type metadata accessor for ArticleListHistoryFeedGroup);
    v12 = *&v4[*(v2 + 24)];

    sub_218B73FB0(v4);
    return v12;
  }

  if (v11 == 2)
  {
    goto LABEL_7;
  }

  if (v11 == 3)
  {
LABEL_6:

    sub_2198D5210(v13);
    v12 = v14;

    return v12;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2198D579C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2198D5818(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MyMagazinesMagazineFeedGroupEmitter(uint64_t a1)
{
  result = qword_280E9D068;
  if (!qword_280E9D068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2198D58C0(uint64_t a1)
{
  sub_218B8773C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MyMagazinesMagazineFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186DF120(319, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2198D5A0C();
        if (v4 <= 0x3F)
        {
          sub_2186C709C(319, &qword_280ECE3A0, &protocol descriptor for MyMagazinesStoreType, 1);
          if (v5 <= 0x3F)
          {
            sub_2186C709C(319, &qword_280EE9F20, &protocol descriptor for TagServiceType, 0);
            if (v6 <= 0x3F)
            {
              sub_2198D5A58(319);
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

unint64_t sub_2198D5A0C()
{
  result = qword_280E8E350;
  if (!qword_280E8E350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E350);
  }

  return result;
}

void sub_2198D5A58(uint64_t a1)
{
  if (!qword_280E90690)
  {
    sub_2186F1660();
    v1 = sub_219BF1B94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90690);
    }
  }
}

uint64_t sub_2198D5AB4(uint64_t a1)
{
  type metadata accessor for MyMagazinesMagazineFeedGroupEmitter(0);
  sub_2186F9410(0, &qword_280E919C0, MEMORY[0x277D321A0]);
  v16 = sub_219BEE964();
  v1 = MEMORY[0x277D84560];
  sub_218726864(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09EC0;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v9(v8, *MEMORY[0x277D322E8], v3);
  sub_218726864(0, &qword_280E8B8A0, MEMORY[0x277D32F00], v1);
  v10 = sub_219BF0644();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09BA0;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x277D32EF8], v10);
  v14 = sub_2194B3180(v13);
  swift_setDeallocating();
  (*(v11 + 8))(v13 + v12, v10);
  swift_deallocClassInstance();
  *(v8 + v5) = v14;
  v9(v8 + v5, *MEMORY[0x277D322C8], v3);
  sub_2191EE154(v7);
  return v16;
}

uint64_t sub_2198D5D80(uint64_t a1)
{
  v44 = a1;
  v2 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs(0);
  v42 = *(v2 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8773C(0);
  v38 = *(v4 - 8);
  v39 = v4;
  v40 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MyMagazinesMagazineFeedGroupEmitter(0);
  v7 = *(v6 - 8);
  v36 = v6 - 8;
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v8;
  v10 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v1;
  v47 = v1;
  sub_219BE3204();
  v46 = type metadata accessor for MyMagazinesMagazineFeedGroupEmitter;
  sub_2198D7EE0(v1, v10, type metadata accessor for MyMagazinesMagazineFeedGroupEmitter);
  v11 = *(v7 + 80);
  v12 = (v11 + 16) & ~v11;
  v32 = v9;
  v33 = v11 | 7;
  v13 = swift_allocObject();
  v34 = type metadata accessor for MyMagazinesMagazineFeedGroupEmitter;
  sub_2198D7E78(v10, v13 + v12, type metadata accessor for MyMagazinesMagazineFeedGroupEmitter);
  v14 = sub_219BE2E54();
  sub_219BE2F64();

  sub_2198D7EE0(v45, v10, v46);
  v15 = swift_allocObject();
  sub_2198D7E78(v10, v15 + v12, type metadata accessor for MyMagazinesMagazineFeedGroupEmitter);
  v16 = sub_219BE2E54();
  type metadata accessor for TagModel();
  v35 = sub_219BE2F64();

  v17 = *(v36 + 28);
  v18 = v45;
  sub_2198D7EE0(v45, v10, v46);
  v20 = v37;
  v19 = v38;
  v21 = v39;
  (*(v38 + 16))(v37, v18, v39);
  v22 = v41;
  sub_2198D7EE0(v18 + v17, v41, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
  v23 = (v11 + 24) & ~v11;
  v24 = v19;
  v25 = (v23 + v32 + *(v19 + 80)) & ~*(v19 + 80);
  v26 = (v40 + *(v42 + 80) + v25) & ~*(v42 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v44;
  sub_2198D7E78(v10, v27 + v23, v34);
  (*(v24 + 32))(v27 + v25, v20, v21);
  sub_2198D7E78(v22, v27 + v26, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);

  v28 = sub_219BE2E54();
  sub_218C5FB88(0);
  v29 = sub_219BE2F74();

  return v29;
}

uint64_t sub_2198D6224(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for MyMagazinesMagazineFeedGroupEmitter(0) + 32));
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 24))(v2, v3);
}

uint64_t sub_2198D6290(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MyMagazinesMagazineFeedGroupEmitter(0);
  if (sub_219BF1AE4())
  {
    v4 = (a2 + *(v3 + 32));
    v5 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_2194B2E44(&unk_282A2AC78);
    v6 = (*(v5 + 32))();

    return v6;
  }

  else
  {
    sub_2186DF120(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

uint64_t sub_2198D6380(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + *(type metadata accessor for MyMagazinesMagazineFeedGroupEmitter(0) + 24));
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    v5 = off_282A4D750[0];
    type metadata accessor for TagService();
    return v5(v4, v3);
  }

  else
  {
    sub_2198D7F48();
    swift_allocError();
    sub_218726864(0, &qword_27CC12D50, type metadata accessor for TagModel, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE2FF4();
  }
}

uint64_t sub_2198D6490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v121 = a5;
  v122 = a4;
  v149 = a6;
  v140 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v140);
  v139 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEF554();
  v137 = *(v10 - 8);
  v138 = v10;
  MEMORY[0x28223BE20](v10);
  v136 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v135 = &v113 - v13;
  v134 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v134);
  v120 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v119 = &v113 - v16;
  MEMORY[0x28223BE20](v17);
  v118 = &v113 - v18;
  v124 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v124);
  v123 = (&v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v132 = sub_219BF0BD4();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198D7DE4(0);
  MEMORY[0x28223BE20](v21 - 8);
  v127 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for MyMagazinesIssue(0);
  v128 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v115 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for MyMagazinesState(0);
  MEMORY[0x28223BE20](v129);
  v142 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218726864(0, &qword_280EE7F00, type metadata accessor for MyMagazinesState, MEMORY[0x277D6C9F8]);
  v146 = *(v25 - 8);
  v147 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = (&v113 - v26);
  v28 = sub_219BEF8A4();
  v144 = *(v28 - 8);
  v145 = v28;
  MEMORY[0x28223BE20](v28);
  v133 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v113 - v31;
  v143 = type metadata accessor for MagazineFeedServiceContext(0);
  MEMORY[0x28223BE20](v143);
  v117 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v116 = &v113 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v113 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v113 - v40;
  v42 = *(*a1 + 16);
  v141 = a2;
  sub_219BEF0B4();
  v43 = v41;
  sub_2198D7EE0(v151 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_context, v41, type metadata accessor for MagazineFeedServiceContext);

  v148 = type metadata accessor for MyMagazinesMagazineFeedGroupEmitter(0);
  v44 = [*(a3 + *(v148 + 28)) mutedTagIDs];
  if (v44)
  {
    v45 = v44;
    v46 = sub_219BF5D44();

    v125 = v42;
    v47 = [v42 identifier];
    v48 = sub_219BF5414();
    v50 = v49;

    LOBYTE(v47) = sub_2188537B8(v48, v50, v46);

    v51 = v43;
    if (v47)
    {
      sub_2198D7EE0(v43, v38, type metadata accessor for MagazineFeedServiceContext);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v54 = v144;
      v53 = v145;
      v55 = MEMORY[0x277D32768];
      if (EnumCaseMultiPayload != 1)
      {
        v55 = MEMORY[0x277D32760];
      }

      (*(v144 + 104))(v32, *v55, v145);
      sub_2198D7E18(v38, type metadata accessor for MagazineFeedServiceContext);
      v56 = sub_219BEF894();
      (*(v54 + 8))(v32, v53);
      if ((v56 & 1) == 0)
      {
        sub_2198D7E18(v51, type metadata accessor for MagazineFeedServiceContext);
        v71 = v149;
        *v149 = 0xD000000000000024;
        v71[1] = 0x8000000219D3B840;
        sub_218C5FB88(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    v57 = (a3 + *(v148 + 32));
    v58 = v57[3];
    v59 = v57[4];
    __swift_project_boxed_opaque_existential_1(v57, v58);
    (*(v59 + 8))(v58, v59);
    sub_219BE1A44();

    sub_219BE2184();

    v61 = v146;
    v60 = v147;
    v62 = (*(v146 + 88))(v27, v147);
    if (v62 == *MEMORY[0x277D6C9F0])
    {
      (*(v61 + 96))(v27, v60);
      v63 = *v27;
      v151 = 0;
      v152 = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0xD000000000000027, 0x8000000219D3B790);
      v150 = v63;
      sub_2186C709C(0, &qword_280E8B580, MEMORY[0x277D84948], 1);
      sub_219BF7484();

      v64 = v151;
      v65 = v152;
LABEL_8:
      sub_2198D7E18(v51, type metadata accessor for MagazineFeedServiceContext);
      v66 = v149;
      *v149 = v64;
      v66[1] = v65;
      sub_218C5FB88(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v62 == *MEMORY[0x277D6C9E8])
    {
      (*(v61 + 96))(v27, v60);
      v67 = v142;
      sub_2198D7E78(v27, v142, type metadata accessor for MyMagazinesState);
      v68 = v127;
      sub_2198D7EE0(v67, v127, sub_2198D7DE4);
      v69 = v128;
      if ((*(v128 + 6))(v68, 1, v126) == 1)
      {
        sub_2198D7E18(v68, sub_2198D7DE4);
      }

      else
      {
        v73 = v115;
        sub_2198D7E78(v68, v115, type metadata accessor for MyMagazinesIssue);
        sub_218726864(0, &unk_280E8BBF0, type metadata accessor for MyMagazinesIssue, MEMORY[0x277D84560]);
        v74 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_219C09BA0;
        sub_2198D7EE0(v73, v75 + v74, type metadata accessor for MyMagazinesIssue);
        v151 = v75;

        sub_2191EDC74(v76);
        sub_2198D7E18(v73, type metadata accessor for MyMagazinesIssue);
        v70 = v151;
      }

      v77 = *(v70 + 16);

      v78 = v130;
      sub_219BEF134();
      sub_219BEF524();
      (*(v131 + 8))(v78, v132);
      v79 = v151;
      if (v77 >= v151)
      {
        sub_218B8773C(0);
        v82 = sub_219BEDCA4();
        v147 = v83;
        v148 = v82;
        v84 = v118;
        sub_219BEDD14();
        v85 = *(v84 + 16);
        v146 = *(v84 + 8);
        v132 = v85;

        v128 = type metadata accessor for MyMagazinesMagazineFeedGroupConfigData;
        sub_2198D7E18(v84, type metadata accessor for MyMagazinesMagazineFeedGroupConfigData);
        v131 = sub_219BEDCB4();
        v130 = v86;
        sub_219BEDCC4();
        v87 = v119;
        sub_219BEDD14();
        v88 = v51;
        (*(v137 + 16))(v136, v87 + *(v134 + 32), v138);
        sub_2198D7E18(v87, type metadata accessor for MyMagazinesMagazineFeedGroupConfigData);
        sub_2186F9410(0, &qword_280E919C0, MEMORY[0x277D321A0]);
        v89 = v121;
        sub_219BEE9B4();
        v91 = v90;
        sub_2198D7EE0(v89, v139, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
        v114 = v88;
        v92 = v116;
        sub_2198D7EE0(v88, v116, type metadata accessor for MagazineFeedServiceContext);
        LODWORD(v129) = swift_getEnumCaseMultiPayload() == 1;
        swift_unknownObjectRetain();
        sub_2198D7E18(v92, type metadata accessor for MagazineFeedServiceContext);
        v93 = v117;
        sub_2198D7EE0(v88, v117, type metadata accessor for MagazineFeedServiceContext);
        v94 = swift_getEnumCaseMultiPayload();
        v95 = MEMORY[0x277D32768];
        if (v94 != 1)
        {
          v95 = MEMORY[0x277D32760];
        }

        (*(v144 + 104))(v133, *v95, v145);
        sub_2198D7E18(v93, type metadata accessor for MagazineFeedServiceContext);
        v96 = v124;
        sub_2186F9410(0, &qword_280E91830, MEMORY[0x277D32318]);
        v97 = v123;
        sub_219BEEC84();
        v98 = v120;
        sub_219BEDD14();
        v99 = *(v98 + *(v134 + 36));

        sub_2198D7E18(v98, v128);
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v101 = [objc_opt_self() bundleForClass_];
        v102 = sub_219BDB5E4();
        v104 = v103;

        v97[2] = v102;
        v97[3] = v104;
        v105 = objc_opt_self();
        v97[4] = [v105 labelColor];
        v106 = [v105 labelColor];
        sub_2198D7E18(v142, type metadata accessor for MyMagazinesState);
        sub_2198D7E18(v114, type metadata accessor for MagazineFeedServiceContext);
        v107 = v147;
        *v97 = v148;
        v97[1] = v107;
        v108 = v146;
        v97[5] = v106;
        v97[6] = v108;
        v109 = v131;
        v97[7] = v132;
        v97[8] = v109;
        v97[9] = v130;
        v110 = v138;
        v111 = *(v137 + 32);
        v111(v97 + v96[10], v135, v138);
        v111(v97 + v96[11], v136, v110);
        *(v97 + v96[12]) = v91;
        sub_2198D7E78(v139, v97 + v96[13], type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
        *(v97 + v96[14]) = v125;
        *(v97 + v96[15]) = v129;
        (*(v144 + 32))(v97 + v96[16], v133, v145);
        *(v97 + v96[18]) = v99;
        sub_2198D7E78(v97, v149, type metadata accessor for MyMagazinesMagazineFeedGroup);
        type metadata accessor for MagazineFeedGroup(0);
        swift_storeEnumTagMultiPayload();
        sub_218C5FB88(0);
        return swift_storeEnumTagMultiPayload();
      }

      v151 = 0;
      v152 = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0xD000000000000013, 0x8000000219D3B7F0);
      v150 = v77;
      v80 = sub_219BF7894();
      MEMORY[0x21CECC330](v80);

      MEMORY[0x21CECC330](0xD000000000000027, 0x8000000219D3B810);
      v150 = v79;
      v81 = sub_219BF7894();
      MEMORY[0x21CECC330](v81);

      MEMORY[0x21CECC330](11817, 0xE200000000000000);
      v64 = v151;
      v65 = v152;
      sub_2198D7E18(v67, type metadata accessor for MyMagazinesState);
      goto LABEL_8;
    }

    if (v62 == *MEMORY[0x277D6C9E0])
    {
      sub_2198D7E18(v51, type metadata accessor for MagazineFeedServiceContext);
      v72 = v149;
      *v149 = 0xD000000000000024;
      v72[1] = 0x8000000219D3B7C0;
      sub_218C5FB88(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_2198D76EC@<X0>(uint64_t *a1@<X8>)
{
  sub_218B8773C(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x5000000000000000;
  return result;
}

uint64_t sub_2198D7768@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs(0);
  a2[4] = sub_2198D5818(&qword_280EA30B0, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs, &unk_219CAAB64);
  a2[5] = sub_2198D5818(&qword_280EA30B8, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs, &unk_219CAAB3C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2198D7EE0(v2 + v4, boxed_opaque_existential_1, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
}

uint64_t sub_2198D7830()
{
  sub_218B8773C(0);

  return sub_219BEDCA4();
}

uint64_t sub_2198D785C@<X0>(uint64_t *a2@<X8>)
{
  sub_218726864(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_218B8773C(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2198D7E18(inited + 32, sub_2188317B0);
  sub_2198D7F9C(0);
  a2[3] = v6;
  a2[4] = sub_2198D5818(&qword_280EE7688, sub_2198D7F9C, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2198D79E0(uint64_t a1)
{
  sub_2198D5818(&qword_280E9D080, type metadata accessor for MyMagazinesMagazineFeedGroupEmitter, "\r0Xh\bB\r");

  return sub_219BE2324();
}

uint64_t sub_2198D7CA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for MyMagazinesMagazineFeedGroupEmitter(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_218B8773C(0);
  v9 = (v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(*(v8 - 8) + 64);
  v11 = *(type metadata accessor for MyMagazinesMagazineFeedGroupKnobs(0) - 8);
  return sub_2198D6490(a1, *(v2 + 16), v2 + v6, v2 + v9, v2 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80)), a2);
}

uint64_t sub_2198D7E18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2198D7E78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2198D7EE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2198D7F48()
{
  result = qword_27CC20798;
  if (!qword_27CC20798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20798);
  }

  return result;
}

unint64_t sub_2198D7FE4()
{
  result = qword_27CC207A0;
  if (!qword_27CC207A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC207A0);
  }

  return result;
}

void sub_2198D806C()
{
  v1 = sub_219BED184();
  v56 = *(v1 - 8);
  v57 = v1;
  MEMORY[0x28223BE20](v1);
  v55 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDAF64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  v13 = sub_219BDB954();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v52 = v15;
  v53 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v58 = &v48 - v18;
  v54 = v0;
  v61 = *(v0 + OBJC_IVAR____TtC7NewsUI230NewsWebArchiveURLSchemeHandler_task);
  v19 = [v61 request];
  sub_219BDAF34();

  sub_219BDAF54();
  v20 = *(v7 + 8);
  v21 = v12;
  v22 = v6;
  v20(v21, v6);
  v59 = v14;
  v60 = v13;
  if ((*(v14 + 48))(v5, 1, v13) == 1)
  {
    sub_2187BCA1C(v5, sub_21873F65C);
  }

  else
  {
    v23 = v58;
    v24 = *(v59 + 32);
    v24(v58, v5, v60);
    v25 = sub_219BDB8D4();
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      v29 = sub_219BDB8F4();
      v50 = v30;
      v51 = v29;
      MEMORY[0x28223BE20](v29);
      *(&v48 - 4) = v54;
      *(&v48 - 3) = v27;
      *(&v48 - 2) = v28;
      *(&v48 - 1) = v23;
      sub_219BF12F4();
      v54 = sub_219BE3204();

      sub_2187D9028();
      v32 = v55;
      v31 = v56;
      v33 = v57;
      (*(v56 + 104))(v55, *MEMORY[0x277D851B8], v57);
      v49 = sub_219BF66E4();
      (*(v31 + 8))(v32, v33);
      v34 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v36 = v59;
      v35 = v60;
      v37 = v53;
      (*(v59 + 16))(v53, v23, v60);
      v38 = (*(v36 + 80) + 40) & ~*(v36 + 80);
      v39 = swift_allocObject();
      v40 = v50;
      v41 = v51;
      *(v39 + 2) = v34;
      *(v39 + 3) = v41;
      *(v39 + 4) = v40;
      v24(&v39[v38], v37, v35);
      v42 = v49;
      sub_219BE2F74();

      swift_allocObject();
      swift_unknownObjectWeakInit();

      v43 = sub_219BE2E54();
      sub_219BE2FD4();

      (*(v36 + 8))(v23, v35);
      return;
    }

    (*(v59 + 8))(v23, v60);
  }

  type metadata accessor for NewsWebArchiveURLSchemeHandler.Errors(0);
  sub_2198D8FF0();
  v44 = swift_allocError();
  v45 = v61;
  v46 = [v61 request];
  sub_219BDAF34();

  sub_219BDAF54();
  v20(v9, v22);
  swift_storeEnumTagMultiPayload();
  v47 = sub_219BDB714();

  [v45 didFailWithError_];
}

uint64_t sub_2198D8694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BF23B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI230NewsWebArchiveURLSchemeHandler_webArchiveService), *(a1 + OBJC_IVAR____TtC7NewsUI230NewsWebArchiveURLSchemeHandler_webArchiveService + 24));

  sub_219BDB934();
  sub_219BF23A4();
  v8 = sub_219BF2F94();
  (*(v5 + 8))(v7, v4);
  return v8;
}

void *sub_2198D87DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v55 = a5;
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v56 = result;
    v18 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v18 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18 || a3 == 47 && a4 == 0xE100000000000000 || (sub_219BF78F4() & 1) != 0)
    {
      sub_219BF12E4();
    }

    else
    {
      sub_219BF12D4();
      sub_219BDB874();
      (*(v8 + 8))(v13, v7);
    }

    sub_219BDB7D4();
    sub_219BDB884();
    v19 = *(v8 + 8);
    v19(v10, v7);
    v20 = sub_219BDB814();
    v19(v13, v7);
    sub_219BF12D4();
    v21 = sub_219BDB814();
    v22 = v13;
    v23 = v19;
    v19(v22, v7);
    v24 = sub_2198D8D7C(v21, v20);

    if (v24)
    {
      v25 = v57;
      v26 = sub_219BDB974();
      if (v25)
      {
        v23(v16, v7);
        return swift_unknownObjectRelease();
      }

      else
      {
        v52 = v23;
        v53 = v26;
        v54 = v27;
        sub_219BDB7F4();
        v31 = sub_219BF53D4();

        v32 = sub_2194B0E30(&unk_282A2ACA0);
        sub_2187BCA1C(&unk_282A2ACC0, sub_2198103C4);
        v33 = *MEMORY[0x277CC1F58];
        v51 = v31;
        PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(v33, v31, 0);
        v57 = 0;
        if (PreferredIdentifierForTag)
        {
          v35 = PreferredIdentifierForTag;
          v36 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, *MEMORY[0x277CC1F60]);
          if (v36)
          {
            v37 = v36;
            v38 = sub_219BF5414();
            v40 = v39;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v58 = v32;
            sub_21948D6B4(v38, v40, 0x2D746E65746E6F43, 0xEC00000065707954, isUniquelyReferenced_nonNull_native);
          }
        }

        v42 = objc_allocWithZone(MEMORY[0x277CCAA40]);
        v43 = sub_219BDB854();
        v44 = sub_219BF53D4();
        v45 = sub_219BF5204();

        v46 = [v42 initWithURL:v43 statusCode:200 HTTPVersion:v44 headerFields:v45];

        if (v46)
        {
          v47 = v56;
          [v56 didReceiveResponse_];
          v48 = v53;
          v49 = v54;
          v50 = sub_219BDB9E4();
          [v47 didReceiveData_];

          [v47 didFinish];
          sub_2186C6190(v48, v49);

          swift_unknownObjectRelease();
          return v52(v16, v7);
        }

        else
        {
          type metadata accessor for NewsWebArchiveURLSchemeHandler.Errors(0);
          sub_2198D8FF0();
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_2186C6190(v53, v54);
          swift_unknownObjectRelease();
          return v52(v16, v7);
        }
      }
    }

    else
    {
      type metadata accessor for NewsWebArchiveURLSchemeHandler.Errors(0);
      sub_2198D8FF0();
      swift_allocError();
      v29 = v28;
      *v28 = sub_219BDB804();
      v29[1] = v30;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      swift_unknownObjectRelease();
      return (v23)(v16, v7);
    }
  }

  return result;
}

uint64_t sub_2198D8D7C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a2 + 40);
    v6 = (result + 40);
    do
    {
      v7 = *(v2 + 16);
      v8 = v4 == v7;
      if (v4 == v7)
      {
        return v8;
      }

      if (v4 >= v7)
      {
        __break(1u);
        goto LABEL_18;
      }

      result = *(v5 - 1);
      if (result != *(v6 - 1) || *v5 != *v6)
      {
        result = sub_219BF78F4();
        if ((result & 1) == 0)
        {
          return v8;
        }
      }

      ++v4;
      v5 += 2;
      v6 += 2;
    }

    while (v3 != v4);
  }

  v10 = *(v2 + 16);
  if (v3 == v10)
  {
    return 1;
  }

  if (v3 < v10)
  {
    return 0;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2198D8E38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = sub_219BDB714();
    [v3 didFailWithError_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t type metadata accessor for NewsWebArchiveURLSchemeHandler.Errors(uint64_t a1)
{
  result = qword_27CC20838;
  if (!qword_27CC20838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2198D8FF0()
{
  result = qword_27CC20830;
  if (!qword_27CC20830)
  {
    type metadata accessor for NewsWebArchiveURLSchemeHandler.Errors(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20830);
  }

  return result;
}

void sub_2198D90F4(uint64_t a1)
{
  sub_21873F65C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t AudioFeedTrack.identifier.getter()
{
  v1 = [*v0 identifier];
  v2 = sub_219BF5414();

  return v2;
}

double AudioFeedTrack.duration.getter()
{
  type metadata accessor for AudioFeedTrack(0);
  v1 = sub_219BDD6D4();
  if ((v2 & 1) == 0)
  {
    return *&v1;
  }

  v3 = *(v0 + 8);

  [v3 duration];
  return result;
}

uint64_t static AudioFeedTrack.== infix(_:_:)(id *a1, id *a2)
{
  v4 = [*a1 identifier];
  v5 = sub_219BF5414();
  v7 = v6;

  v8 = [*a2 identifier];
  v9 = sub_219BF5414();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_219BF78F4();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(type metadata accessor for AudioFeedTrack(0) + 32);

  return sub_2198DB278((a1 + v15), (a2 + v15));
}

char *sub_2198D9334(char *result)
{
  v1 = result;
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
LABEL_2:
  if (v2 <= 8)
  {
    v4 = 8;
  }

  else
  {
    v4 = v2;
  }

  v5 = v4 + 1;
  v6 = (&unk_282A21738 + 24 * v2 + 32);
  while (1)
  {
    if (v2 == 8)
    {
      return v3;
    }

    if (v5 == ++v2)
    {
      break;
    }

    v7 = v6 + 3;
    v8 = *v6;
    v6 += 3;
    if ((v8 & ~v1) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_218840D24(0, *(v3 + 2) + 1, 1, v3);
        v3 = result;
      }

      v12 = *(v3 + 2);
      v11 = *(v3 + 3);
      if (v12 >= v11 >> 1)
      {
        result = sub_218840D24((v11 > 1), v12 + 1, 1, v3);
        v3 = result;
      }

      *(v3 + 2) = v12 + 1;
      v13 = &v3[16 * v12];
      *(v13 + 4) = v10;
      *(v13 + 5) = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_2198D944C(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  v3 = sub_2198DC724(a2);

  *a1 = v3;
}

uint64_t AudioFeedTrack.audioTrackKind.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioFeedTrack(0) + 48);

  return sub_2198DBFE8(v3, a1);
}

uint64_t sub_2198D94D8@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v34 = a3;
  v7 = sub_219BDE5A4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_219BDE3B4();
  v33 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v32 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EE208(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  *&v15 = MEMORY[0x28223BE20](v14 - 8).n128_u64[0];
  v17 = &v30 - v16;
  v35 = [a1 asset];
  if (!a2)
  {
    goto LABEL_8;
  }

  v31 = v8;
  v18 = a2;
  v19 = [v18 URL];
  if (!v19)
  {

    (*(v11 + 56))(v17, 1, 1, v10);
    sub_2198DC65C(v17, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186EE208);
    goto LABEL_8;
  }

  v20 = v19;
  sub_219BDB8B4();

  (*(v11 + 32))(v17, v13, v10);
  (*(v11 + 56))(v17, 0, 1, v10);
  sub_2198DC65C(v17, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_2186EE208);
  if (!v34 || (v21 = [v34 asset]) == 0)
  {

LABEL_8:
    v28 = swift_allocObject();
    *(v28 + 16) = v35;
    *a4 = sub_2198DC760;
    *(a4 + 1) = v28;
    goto LABEL_9;
  }

  v22 = v21;
  [a1 duration];
  [a1 embeddedUpsellStartTime];
  [a1 embeddedUpsellEndTime];
  v23 = v22;
  [v18 duration];
  [v18 playPosition];
  sub_219BF6A14();
  v24 = v32;
  sub_219BDE3A4();

  sub_218C16270(0);
  v26 = *(v25 + 48);
  v27 = swift_allocObject();
  *(v27 + 16) = v35;
  *a4 = sub_2198DC3F8;
  *(a4 + 1) = v27;
  (*(v33 + 32))(&a4[v26], v24, v31);
LABEL_9:
  sub_219BDD6E4();
  return swift_storeEnumTagMultiPayload();
}

double sub_2198D99B4(uint64_t a1)
{
  v2 = sub_219BDD6D4();
  if ((v3 & 1) == 0)
  {
    return *&v2;
  }

  v4 = *(v1 + 8);

  [v4 duration];
  return result;
}

uint64_t AudioFeedTrack.effectiveTitle.getter()
{
  if ((*(v0 + 24) & 0x80) != 0)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v4 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_219C09BA0;
    v6 = (v0 + *(type metadata accessor for AudioFeedTrack(0) + 32));
    if (v6[1])
    {
      v7 = *v6;
      v8 = v6[1];
    }

    else
    {
      v11 = [*v0 title];
      if (v11)
      {
        v12 = v11;
        v7 = sub_219BF5414();
        v8 = v13;
      }

      else
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }
    }

    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = sub_2186FC3BC();
    *(v5 + 32) = v7;
    *(v5 + 40) = v8;

    v2 = sub_219BF5454();
  }

  else
  {
    v1 = (v0 + *(type metadata accessor for AudioFeedTrack(0) + 32));
    if (v1[1])
    {
      v2 = *v1;
    }

    else
    {
      v9 = [*v0 title];
      if (v9)
      {
        v10 = v9;
        v2 = sub_219BF5414();
      }

      else
      {
        return 0;
      }
    }
  }

  return v2;
}

uint64_t AudioFeedTrack.rawTitle.getter()
{
  v1 = (v0 + *(type metadata accessor for AudioFeedTrack(0) + 32));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v3 = [*v0 title];
    if (v3)
    {
      v4 = v3;
      v2 = sub_219BF5414();
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t AudioFeedTrack.publisherName.getter()
{
  v1 = [*v0 sourceName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_219BF5414();

  return v3;
}

double AudioFeedTrack.artworkOverride.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AudioFeedTrack(0);
  sub_218AB7A30(v1 + *(v3 + 32) + 32, &v5);
  if (v6)
  {
    sub_2186CB1F0(&v5, v7);
    sub_2186CB1F0(v7, a1);
  }

  else
  {
    sub_2189A70A0(&v5);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t AudioFeedTrack.artworkGradient.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioFeedTrack(0) + 32);
  v4 = type metadata accessor for AudioFeedTrack.Configurables(0);
  return sub_2198DC430(v3 + *(v4 + 36), a1, &qword_280EE5188, MEMORY[0x277D6D9E0], MEMORY[0x277D83D88], sub_2186EE208);
}

uint64_t sub_2198D9E68(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v4 = [*v1 title];
    if (v4)
    {
      v5 = v4;
      v3 = sub_219BF5414();
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t sub_2198D9EF4()
{
  v1 = [*v0 sourceName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_219BF5414();

  return v3;
}

double sub_2198D9F5C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218AB7A30(v2 + *(a1 + 32) + 32, &v5);
  if (v6)
  {
    sub_2186CB1F0(&v5, a2);
  }

  else
  {
    sub_2189A70A0(&v5);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_2198D9FD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1 + 32);
  v5 = type metadata accessor for AudioFeedTrack.Configurables(0);
  return sub_2198DC430(v4 + *(v5 + 36), a2, &qword_280EE5188, MEMORY[0x277D6D9E0], MEMORY[0x277D83D88], sub_2186EE208);
}

uint64_t sub_2198DA060(id *a1, id *a2, uint64_t a3)
{
  v6 = [*a1 identifier];
  v7 = sub_219BF5414();
  v9 = v8;

  v10 = [*a2 identifier];
  v11 = sub_219BF5414();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
  }

  else
  {
    v15 = sub_219BF78F4();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *(a3 + 32);

  return sub_2198DA058(a1 + v18, a2 + v18, v16);
}

void sub_2198DA178(uint64_t a1)
{
  v2 = v1;
  v4 = sub_219BE7434();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2186EE208(0, &qword_280EE5188, MEMORY[0x277D6D9E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - v8;
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EE208(0, &qword_280EE9C40, MEMORY[0x277CC9578], v6);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v25 - v15;
  if (*(v2 + 8))
  {
    sub_219BF7AC4();
    sub_219BF5524();
    if (*(v2 + 24))
    {
LABEL_3:
      sub_219BF7AC4();
      sub_219BF5524();
      goto LABEL_6;
    }
  }

  else
  {
    sub_219BF7AC4();
    if (*(v2 + 24))
    {
      goto LABEL_3;
    }
  }

  sub_219BF7AC4();
LABEL_6:
  v17 = v26;
  v18 = type metadata accessor for AudioFeedTrack.Configurables(0);
  sub_2198DC430(v2 + v18[7], v16, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186EE208);
  if ((*(v11 + 48))(v16, 1, v10) == 1)
  {
    sub_219BF7AC4();
  }

  else
  {
    (*(v11 + 32))(v13, v16, v10);
    sub_219BF7AC4();
    sub_218707AC8(&qword_27CC1AD70, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_219BF52F4();
    (*(v11 + 8))(v13, v10);
  }

  v19 = v27;
  v20 = (v2 + v18[8]);
  v21 = v20[1];
  if (v21 == 1)
  {
    sub_219BF7AC4();
  }

  else
  {
    v22 = *v20;
    v23 = *(v20 + 2);
    v32 = *(v20 + 1);
    v33 = v23;
    v34[0] = *(v20 + 3);
    *(v34 + 9) = *(v20 + 57);
    v30 = v22;
    v31 = v21;
    sub_219BF7AC4();
    sub_2194077F4(a1);
  }

  sub_2198DC430(v2 + v18[9], v9, &qword_280EE5188, MEMORY[0x277D6D9E0], MEMORY[0x277D83D88], sub_2186EE208);
  if ((*(v17 + 48))(v9, 1, v19) == 1)
  {
    sub_219BF7AC4();
  }

  else
  {
    v24 = v25;
    (*(v17 + 32))(v25, v9, v19);
    sub_219BF7AC4();
    sub_218707AC8(&qword_27CC20898, MEMORY[0x277D6D9E0], MEMORY[0x277D6D9E8]);
    sub_219BF52F4();
    (*(v17 + 8))(v24, v19);
  }

  sub_218AB7A30(v2 + 32, v28);
  if (v29)
  {
    __swift_project_boxed_opaque_existential_1(v28, v29);
    sub_219BE64B4();
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_219BF7AC4();
    sub_219BF5524();
  }

  else
  {
    sub_2189A70A0(v28);
    sub_219BF7AC4();
  }
}

uint64_t sub_2198DA720()
{
  sub_219BF7AA4();
  sub_2198DA178(v1);
  return sub_219BF7AE4();
}

uint64_t sub_2198DA764(uint64_t a1)
{
  sub_219BF7AA4();
  sub_2198DA178(v2);
  return sub_219BF7AE4();
}

void AudioFeedTrack.hash(into:)(uint64_t a1)
{
  v3 = [*v1 identifier];
  sub_219BF5414();

  sub_219BF5524();

  type metadata accessor for AudioFeedTrack(0);
  sub_2198DA178(a1);
}

uint64_t AudioFeedTrack.hashValue.getter()
{
  sub_219BF7AA4();
  v1 = [*v0 identifier];
  sub_219BF5414();

  sub_219BF5524();

  type metadata accessor for AudioFeedTrack(0);
  sub_2198DA178(v3);
  return sub_219BF7AE4();
}

uint64_t sub_2198DA8C8()
{
  sub_219BF7AA4();
  v1 = [*v0 identifier];
  sub_219BF5414();

  sub_219BF5524();

  sub_2198DA178(v3);
  return sub_219BF7AE4();
}

void sub_2198DA968(uint64_t a1)
{
  v3 = [*v1 identifier];
  sub_219BF5414();

  sub_219BF5524();

  sub_2198DA178(a1);
}

uint64_t sub_2198DA9F0(uint64_t a1)
{
  sub_219BF7AA4();
  v2 = [*v1 identifier];
  sub_219BF5414();

  sub_219BF5524();

  sub_2198DA178(v4);
  return sub_219BF7AE4();
}

uint64_t AudioFeedTrack.shortDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  sub_2186EE208(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 32) = 0x696669746E656469;
  *(inited + 16) = xmmword_219C09EC0;
  *(inited + 40) = 0xEA00000000007265;
  v4 = *v1;
  v5 = [*v1 identifier];
  v6 = sub_219BF5414();
  v8 = v7;

  v9 = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 72) = v9;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  v10 = (v1 + *(type metadata accessor for AudioFeedTrack(0) + 32));
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v13 = [v4 title];
    if (v13)
    {
      v14 = v13;
      v11 = sub_219BF5414();
      v12 = v15;
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
    }
  }

  *(inited + 120) = v9;
  *(inited + 96) = v11;
  *(inited + 104) = v12;

  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188317B0();
  swift_arrayDestroy();
  sub_2186EE208(0, &qword_280EE7A30, type metadata accessor for AudioFeedTrack, MEMORY[0x277D6CC20]);
  a1[3] = v16;
  a1[4] = sub_2198DC04C(&qword_280EE7A38, &qword_280EE7A30, type metadata accessor for AudioFeedTrack);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2198DACBC(uint64_t a1)
{
  sub_218707AC8(&unk_280EDC9F8, type metadata accessor for AudioFeedTrack, &protocol conformance descriptor for AudioFeedTrack);

  return sub_219BE2324();
}

uint64_t sub_2198DAD28()
{
  sub_2198D9334(*v0);
  sub_2186DF2B4(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  sub_2189DD328();
  v1 = sub_219BF5324();

  return v1;
}

uint64_t sub_2198DADC8@<X0>(uint64_t *a1@<X8>)
{
  sub_2186EE208(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C12A40;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v3 = *v1;
  v4 = v1[1];
  v5 = MEMORY[0x277D83D88];
  sub_2186DF2B4(0, &qword_280E8F860, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  *(inited + 72) = v6;
  *(inited + 80) = 0x4E65727574616566;
  *(inited + 88) = 0xEB00000000656D61;
  v7 = v1[3];
  *(inited + 96) = v1[2];
  *(inited + 104) = v7;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x8000000219D3B960;
  sub_2186E7BB0(0, &qword_280EE5A68, &qword_280EE5A70, MEMORY[0x277D6D608], MEMORY[0x277D83D88]);
  *(inited + 168) = v8;
  v9 = swift_allocObject();
  *(inited + 144) = v9;
  sub_218AB7A30((v1 + 4), v9 + 16);
  *(inited + 176) = 0x6974617269707865;
  *(inited + 184) = 0xEA00000000006E6FLL;
  v10 = type metadata accessor for AudioFeedTrack.Configurables(0);
  v11 = v10[7];
  v12 = MEMORY[0x277CC9578];
  v13 = MEMORY[0x277D83D88];
  sub_2186EE208(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  *(inited + 216) = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 192));
  sub_2198DC430(v1 + v11, boxed_opaque_existential_1, &qword_280EE9C40, v12, v13, sub_2186EE208);
  *(inited + 224) = 0xD000000000000012;
  *(inited + 232) = 0x8000000219CDB9D0;
  v16 = (v1 + v10[8]);
  v17 = v16[3];
  v33 = v16[2];
  v34[0] = v17;
  *(v34 + 9) = *(v16 + 57);
  v18 = v16[1];
  v31 = *v16;
  v32 = v18;
  sub_2186DF2B4(0, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, v5);
  *(inited + 264) = v19;
  v20 = swift_allocObject();
  *(inited + 240) = v20;
  *(v20 + 73) = *(v34 + 9);
  v21 = v34[0];
  v20[3] = v33;
  v20[4] = v21;
  v22 = v32;
  v20[1] = v31;
  v20[2] = v22;
  *(inited + 272) = 0xD000000000000012;
  *(inited + 280) = 0x8000000219D3B980;
  v23 = v10[9];
  v24 = MEMORY[0x277D6D9E0];
  sub_2186EE208(0, &qword_280EE5188, MEMORY[0x277D6D9E0], v13);
  *(inited + 312) = v25;
  v26 = __swift_allocate_boxed_opaque_existential_1((inited + 288));
  sub_2198DC430(v1 + v23, v26, &qword_280EE5188, v24, v13, sub_2186EE208);

  sub_2198DC430(&v31, v30, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, v5, sub_2186DF2B4);
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188317B0();
  swift_arrayDestroy();
  sub_2186EE208(0, &qword_280EE7A40, type metadata accessor for AudioFeedTrack.Configurables, MEMORY[0x277D6CC20]);
  a1[3] = v27;
  a1[4] = sub_2198DC04C(&qword_280EE7A48, &qword_280EE7A40, type metadata accessor for AudioFeedTrack.Configurables);
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219BE2334();
}

uint64_t sub_2198DB20C(uint64_t a1)
{
  sub_218707AC8(&qword_27CC20890, type metadata accessor for AudioFeedTrack.Configurables, "M*Xh<=\r");

  return sub_219BE2324();
}

uint64_t sub_2198DB278(void *a1, void *a2)
{
  v4 = sub_219BE7434();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v90 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D6D9E0];
  v8 = MEMORY[0x277D83D88];
  sub_2186EE208(0, &qword_280EE5188, MEMORY[0x277D6D9E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v91 = &v85 - v10;
  sub_2198DC4A4(0, &qword_280EE5180, &qword_280EE5188, v7);
  v92 = v11;
  MEMORY[0x28223BE20](v11);
  v93 = &v85 - v12;
  v13 = sub_219BDBD34();
  v94 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x277CC9578];
  sub_2186EE208(0, &qword_280EE9C40, MEMORY[0x277CC9578], v8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v85 - v18;
  sub_2198DC4A4(0, &qword_280EE9C30, &qword_280EE9C40, v16);
  v21 = v20;
  MEMORY[0x28223BE20](v20);
  v23 = &v85 - v22;
  v24 = a1[1];
  v25 = a2[1];
  if (v24)
  {
    if (!v25 || (*a1 != *a2 || v24 != v25) && (sub_219BF78F4() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v25)
  {
    goto LABEL_15;
  }

  v26 = a1[3];
  v27 = a2[3];
  if (v26)
  {
    if (!v27 || (a1[2] != a2[2] || v26 != v27) && (sub_219BF78F4() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (v27)
  {
    goto LABEL_15;
  }

  v85 = v5;
  v86 = v4;
  v30 = type metadata accessor for AudioFeedTrack.Configurables(0);
  v89 = a2;
  v31 = *(v30 + 28);
  v32 = *(v21 + 48);
  v33 = MEMORY[0x277CC9578];
  v34 = a1;
  v35 = MEMORY[0x277D83D88];
  v87 = v30;
  v88 = v34;
  sub_2198DC430(v34 + v31, v23, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186EE208);
  v36 = v89 + v31;
  v37 = v32;
  sub_2198DC430(v36, &v23[v32], &qword_280EE9C40, v33, v35, sub_2186EE208);
  v38 = v94;
  v39 = *(v94 + 48);
  if (v39(v23, 1, v13) == 1)
  {
    if (v39(&v23[v37], 1, v13) == 1)
    {
      sub_2198DC65C(v23, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186EE208);
      goto LABEL_25;
    }

LABEL_22:
    v40 = &qword_280EE9C30;
    v41 = &qword_280EE9C40;
    v42 = MEMORY[0x277CC9578];
    v43 = v23;
LABEL_23:
    sub_2198DC600(v43, v40, v41, v42);
    v28 = 0;
    return v28 & 1;
  }

  sub_2198DC430(v23, v19, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186EE208);
  if (v39(&v23[v37], 1, v13) == 1)
  {
    (*(v38 + 8))(v19, v13);
    goto LABEL_22;
  }

  (*(v38 + 32))(v15, &v23[v37], v13);
  sub_218707AC8(&qword_280EE9C80, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v44 = sub_219BF53A4();
  v45 = *(v38 + 8);
  v45(v15, v13);
  v45(v19, v13);
  sub_2198DC65C(v23, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186EE208);
  if ((v44 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_25:
  v46 = (v88 + *(v87 + 32));
  v47 = v46[1];
  v48 = v46[3];
  v112 = v46[2];
  v113[0] = v48;
  *(v113 + 9) = *(v46 + 57);
  v49 = v46[1];
  v111[0] = *v46;
  v111[1] = v49;
  v50 = (v89 + *(v87 + 32));
  *(v115 + 9) = *(v50 + 57);
  v51 = v50[3];
  v114[2] = v50[2];
  v115[0] = v51;
  v52 = v50[1];
  v114[0] = *v50;
  v114[1] = v52;
  v53 = v111[0];
  v108 = v47;
  v109 = v112;
  v110[0] = v46[3];
  *(v110 + 9) = *(v46 + 57);
  if (*(&v111[0] + 1) != 1)
  {
    if (*(&v114[0] + 1) != 1)
    {
      v95 = v114[0];
      v59 = v50[3];
      v97 = v50[2];
      v98[0] = v59;
      *(v98 + 9) = *(v50 + 57);
      v96 = v50[1];
      v103 = v114[0];
      v104 = v96;
      *(v106 + 9) = *(v98 + 9);
      v105 = v97;
      v106[0] = v98[0];
      v60 = v46[1];
      v61 = v46[2];
      v62 = v46[3];
      *&v117[9] = *(v46 + 57);
      v116[2] = v61;
      *v117 = v62;
      v116[1] = v60;
      v116[0] = v111[0];
      v63 = sub_21940A484(v116, &v103);
      v64 = MEMORY[0x277D83D88];
      sub_2198DC430(v111, &v99, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, MEMORY[0x277D83D88], sub_2186DF2B4);
      sub_2198DC430(v114, &v99, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, v64, sub_2186DF2B4);
      sub_2198DC65C(&v95, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, v64, sub_2186DF2B4);
      v99 = v53;
      v100 = v108;
      v101 = v109;
      v102[0] = v110[0];
      *(v102 + 9) = *(v110 + 9);
      sub_2198DC65C(&v99, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, v64, sub_2186DF2B4);
      if (!v63)
      {
        goto LABEL_15;
      }

      goto LABEL_31;
    }

LABEL_29:
    v103 = v111[0];
    v56 = v46[2];
    v104 = v46[1];
    v105 = v56;
    v106[0] = v46[3];
    *(v106 + 9) = *(v46 + 57);
    v106[2] = v114[0];
    v57 = v50[2];
    v106[3] = v50[1];
    v106[4] = v57;
    v107[0] = v50[3];
    *(v107 + 9) = *(v50 + 57);
    v58 = MEMORY[0x277D83D88];
    sub_2198DC430(v111, v116, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, MEMORY[0x277D83D88], sub_2186DF2B4);
    sub_2198DC430(v114, v116, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, v58, sub_2186DF2B4);
    sub_2198DC51C(&v103);
    v28 = 0;
    return v28 & 1;
  }

  if (*(&v114[0] + 1) != 1)
  {
    goto LABEL_29;
  }

  *&v103 = *&v111[0];
  *(&v103 + 1) = 1;
  v54 = v46[2];
  v104 = v46[1];
  v105 = v54;
  v106[0] = v46[3];
  *(v106 + 9) = *(v46 + 57);
  v55 = MEMORY[0x277D83D88];
  sub_2198DC430(v111, v116, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, MEMORY[0x277D83D88], sub_2186DF2B4);
  sub_2198DC430(v114, v116, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, v55, sub_2186DF2B4);
  sub_2198DC65C(&v103, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, v55, sub_2186DF2B4);
LABEL_31:
  v65 = v88;
  v66 = *(v87 + 36);
  v67 = v93;
  v68 = *(v92 + 48);
  v69 = MEMORY[0x277D6D9E0];
  v70 = MEMORY[0x277D83D88];
  sub_2198DC430(v88 + v66, v93, &qword_280EE5188, MEMORY[0x277D6D9E0], MEMORY[0x277D83D88], sub_2186EE208);
  sub_2198DC430(v89 + v66, v67 + v68, &qword_280EE5188, v69, v70, sub_2186EE208);
  v72 = v85;
  v71 = v86;
  v73 = *(v85 + 48);
  if (v73(v67, 1, v86) == 1)
  {
    if (v73(v67 + v68, 1, v71) == 1)
    {
      sub_2198DC65C(v67, &qword_280EE5188, MEMORY[0x277D6D9E0], MEMORY[0x277D83D88], sub_2186EE208);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v74 = v91;
  sub_2198DC430(v67, v91, &qword_280EE5188, MEMORY[0x277D6D9E0], MEMORY[0x277D83D88], sub_2186EE208);
  if (v73(v67 + v68, 1, v71) == 1)
  {
    (*(v72 + 8))(v74, v71);
LABEL_36:
    v40 = &qword_280EE5180;
    v41 = &qword_280EE5188;
    v42 = MEMORY[0x277D6D9E0];
    v43 = v67;
    goto LABEL_23;
  }

  v75 = v67 + v68;
  v76 = v90;
  (*(v72 + 32))(v90, v75, v71);
  sub_218707AC8(&qword_280EE5198, MEMORY[0x277D6D9E0], MEMORY[0x277D6D9F0]);
  v77 = sub_219BF53A4();
  v78 = *(v72 + 8);
  v78(v76, v71);
  v78(v74, v71);
  sub_2198DC65C(v67, &qword_280EE5188, MEMORY[0x277D6D9E0], MEMORY[0x277D83D88], sub_2186EE208);
  if (v77)
  {
LABEL_38:
    sub_218AB7A30((v65 + 4), &v99);
    v79 = *(&v100 + 1);
    if (*(&v100 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
      v80 = sub_219BE64B4();
      v79 = v81;
      __swift_destroy_boxed_opaque_existential_1(&v99);
    }

    else
    {
      sub_2189A70A0(&v99);
      v80 = 0;
    }

    sub_218AB7A30((v89 + 4), &v99);
    if (*(&v100 + 1))
    {
      __swift_project_boxed_opaque_existential_1(&v99, *(&v100 + 1));
      v82 = sub_219BE64B4();
      v84 = v83;
      __swift_destroy_boxed_opaque_existential_1(&v99);
      if (v79)
      {
        if (v84)
        {
          if (v80 != v82 || v79 != v84)
          {
            v28 = sub_219BF78F4();

            return v28 & 1;
          }

          goto LABEL_51;
        }

LABEL_50:

        v28 = 0;
        return v28 & 1;
      }

      if (v84)
      {
        goto LABEL_50;
      }
    }

    else
    {
      sub_2189A70A0(&v99);
      if (v79)
      {
        goto LABEL_50;
      }
    }

LABEL_51:
    v28 = 1;
    return v28 & 1;
  }

LABEL_15:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_2198DBFE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BDD6E4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2198DC04C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2186EE208(255, a2, a3, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2198DC134()
{
  result = qword_27CC20848;
  if (!qword_27CC20848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20848);
  }

  return result;
}

unint64_t sub_2198DC18C()
{
  result = qword_27CC20850;
  if (!qword_27CC20850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20850);
  }

  return result;
}

unint64_t sub_2198DC1E4()
{
  result = qword_27CC20858;
  if (!qword_27CC20858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20858);
  }

  return result;
}

unint64_t sub_2198DC23C()
{
  result = qword_27CC20860;
  if (!qword_27CC20860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20860);
  }

  return result;
}

unint64_t sub_2198DC2D8(uint64_t a1)
{
  *(a1 + 8) = sub_2198DC308();
  result = sub_2198DC35C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2198DC308()
{
  result = qword_27CC20870;
  if (!qword_27CC20870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20870);
  }

  return result;
}

unint64_t sub_2198DC35C()
{
  result = qword_27CC20878;
  if (!qword_27CC20878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20878);
  }

  return result;
}

id sub_2198DC3F8()
{
  v1 = [*(v0 + 16) asset];

  return v1;
}

uint64_t sub_2198DC430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_2198DC4A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2186EE208(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2198DC51C(uint64_t a1)
{
  sub_2198DC578(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2198DC578(uint64_t a1)
{
  if (!qword_27CC208A0)
  {
    sub_2186DF2B4(255, &qword_280EB40F0, &type metadata for LegacyAudioFeedConfiguration.NotificationConfig, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC208A0);
    }
  }
}

uint64_t sub_2198DC600(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2198DC4A4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_2198DC65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

unint64_t sub_2198DC6D0()
{
  result = qword_27CC208A8;
  if (!qword_27CC208A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC208A8);
  }

  return result;
}

uint64_t sub_2198DC724(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t ReplicaAdvertisementCoordinator.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ReplicaAdvertisementCoordinator.delegate.modify(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_2198DEBC4;
}

uint64_t ReplicaAdvertisementCoordinator.startViewSession(_:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_219BDBD34();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BDF074();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v22);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  sub_2198DCC60(&v22 - v9);
  v11 = *(v1 + OBJC_IVAR____TtC7NewsUI231ReplicaAdvertisementCoordinator_issueSessionManager);
  v12 = [*(v2 + OBJC_IVAR____TtC7NewsUI231ReplicaAdvertisementCoordinator_issue) identifier];
  if (!v12)
  {
    sub_219BF5414();
    v12 = sub_219BF53D4();
  }

  v13 = *(v2 + OBJC_IVAR____TtC7NewsUI231ReplicaAdvertisementCoordinator_tracker);
  aBlock[4] = sub_21956EFC0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218B66540;
  aBlock[3] = &block_descriptor_181;
  v14 = _Block_copy(aBlock);

  v15 = [v11 viewingSessionForContentIdentifier:v12 object:v2 onEnd:v14];
  _Block_release(v14);

  sub_219BDCE04();
  sub_219BDD114();

  v16 = v22;
  (*(v5 + 16))(v7, v10, v22);
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = v15;
  (*(v5 + 32))(v18 + v17, v7, v16);

  v19 = v15;
  sub_219BDD154();

  sub_219BE1354();
  v20 = v23;
  sub_219BDBD24();
  sub_2198DEB18(&qword_27CC208C8, MEMORY[0x277D2F1D8], MEMORY[0x277D2F1D0]);
  sub_219BDD0E4();

  (*(v24 + 8))(v20, v25);
  return (*(v5 + 8))(v10, v16);
}

uint64_t sub_2198DCC60@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_219BDCD34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE8374();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6794();
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 != *MEMORY[0x277D6DED8])
  {
    if (v10 == *MEMORY[0x277D6DED0])
    {
      v22 = MEMORY[0x277D2D840];
    }

    else
    {
      if (v10 != *MEMORY[0x277D6DEC0])
      {
        v27 = *MEMORY[0x277D6DEC8];
        v28 = v10;
        v19 = sub_219BDF074();
        v20 = *(*(v19 - 8) + 104);
        if (v28 != v27)
        {
          v20(a1, *MEMORY[0x277D2D850], v19);
          return (*(v7 + 8))(v9, v6);
        }

        v21 = MEMORY[0x277D2D800];
        goto LABEL_7;
      }

      v22 = MEMORY[0x277D2D868];
    }

    v25 = *v22;
    v19 = sub_219BDF074();
    v20 = *(*(v19 - 8) + 104);
    v24 = a1;
    v23 = v25;
    return v20(v24, v23, v19);
  }

  sub_219BDD184();
  sub_2198DEB60(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
  v11 = sub_219BDD0A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09EC0;
  v16 = (v15 + v14);
  *v16 = 0x656E696C64616568;
  v16[1] = 0xE800000000000000;
  v17 = *(v12 + 104);
  (v17)(v15 + v14, *MEMORY[0x277CEAE48], v11);
  v18 = (v16 + v13);
  *v18 = 0x656C6369747261;
  v18[1] = 0xE700000000000000;
  v17();
  LOBYTE(v16) = sub_219BDCD14();

  (*(v3 + 8))(v5, v2);
  v19 = sub_219BDF074();
  v20 = *(*(v19 - 8) + 104);
  if (v16)
  {
    v21 = MEMORY[0x277D2D7E8];
  }

  else
  {
    v21 = MEMORY[0x277D2D810];
  }

LABEL_7:
  v23 = *v21;
  v24 = a1;
  return v20(v24, v23, v19);
}

uint64_t sub_2198DD094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = a4;
  v88 = a3;
  v5 = sub_219BDF074();
  v99 = *(v5 - 8);
  v100 = v5;
  MEMORY[0x28223BE20](v5);
  v98 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BE1544();
  v93 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDBD64();
  v90 = *(v8 - 8);
  v91 = v8;
  MEMORY[0x28223BE20](v8);
  v89 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_219BE1524();
  v95 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v92 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_219BDFD14();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v82 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE06B4();
  v86 = *(v12 - 8);
  v87 = v12;
  MEMORY[0x28223BE20](v12);
  v84 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_219BDFFB4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_219BDF5A4();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BE1714();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_219BE09E4();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_219BDF104();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198DEB60(0, &qword_280EE8330, MEMORY[0x277D2E738], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v72 = &v59 - v20;
  v70 = sub_219BE0724();
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v59 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_219BEFBD4();
  v22 = *(v103 - 1);
  MEMORY[0x28223BE20](v103);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_219BDF1A4();
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v67 = &v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BDF0E4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = OBJC_IVAR____TtC7NewsUI231ReplicaAdvertisementCoordinator_advertisement;
  sub_219BDE1F4();
  swift_getObjectType();
  sub_219BF67F4();
  swift_unknownObjectRelease();
  sub_2198DEB18(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  sub_219BDCCC4();
  (*(v27 + 8))(v29, v26);
  v66 = a2;
  sub_219BDE1F4();
  v30 = v24;
  v31 = v103;
  (*(v22 + 104))(v24, *MEMORY[0x277D329E0], v103);
  v32 = v67;
  v33 = v72;
  sub_219BE02C4();
  swift_unknownObjectRelease();
  v34 = v71;
  (*(v22 + 8))(v30, v31);
  sub_2198DEB18(&unk_280EE8850, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v103 = "gradientDescriptor";
  v35 = v68;
  sub_219BDCCC4();
  (*(v69 + 8))(v32, v35);
  sub_219BDE1F4();
  swift_getObjectType();
  sub_219BF6824();
  swift_unknownObjectRelease();
  v36 = v70;
  if ((*(v34 + 48))(v33, 1) == 1)
  {
    sub_219436BD0(v33);
  }

  else
  {
    v37 = v59;
    (*(v34 + 32))(v59, v33, v36);
    sub_2198DEB60(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v38 = sub_219BDCD44();
    v39 = *(v38 - 8);
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_219C09BA0;
    (*(v39 + 104))(v41 + v40, *MEMORY[0x277CEAD18], v38);
    sub_2198DEB18(&unk_27CC0DC50, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();

    (*(v34 + 8))(v37, v36);
  }

  v42 = [sub_219BDE1F4() sourceChannel];
  swift_unknownObjectRelease();
  if (v42)
  {
    v43 = v60;
    sub_219BE01F4();
    sub_2198DEB18(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v44 = v62;
    sub_219BDCCC4();
    (*(v61 + 8))(v43, v44);
    v45 = v63;
    sub_219BE01E4();
    sub_2198DEB18(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v46 = v65;
    sub_219BDCCC4();
    swift_unknownObjectRelease();
    (*(v64 + 8))(v45, v46);
  }

  v47 = v73;
  sub_21934C4BC();
  sub_2198DEB18(&unk_280EE7F60, MEMORY[0x277D2F890], MEMORY[0x277D2F888]);
  v48 = v75;
  sub_219BDCCC4();
  (*(v74 + 8))(v47, v48);
  sub_219BDCE04();
  v49 = v76;
  sub_219BDF594();
  sub_2198DEB18(&unk_280EE8740, MEMORY[0x277D2DB78], MEMORY[0x277D2DB70]);
  v50 = v78;
  sub_219BDCCC4();
  (*(v77 + 8))(v49, v50);
  sub_219BDCE04();
  v51 = v79;
  sub_219BDFFA4();
  sub_2198DEB18(&unk_280EE84F0, MEMORY[0x277D2E290], MEMORY[0x277D2E288]);
  v52 = v81;
  sub_219BDCCC4();
  (*(v80 + 8))(v51, v52);
  (*(v83 + 104))(v82, *MEMORY[0x277D2E078], v85);
  v53 = v84;
  sub_219BE06A4();
  sub_2198DEB18(&unk_280EE8370, MEMORY[0x277D2E6E8], MEMORY[0x277D2E6E0]);
  v54 = v87;
  sub_219BDCCC4();
  (*(v86 + 8))(v53, v54);
  v55 = v89;
  sub_219BDBD54();
  sub_219BDBD44();
  (*(v90 + 8))(v55, v91);
  (*(v93 + 104))(v94, *MEMORY[0x277D2F3E0], v96);
  (*(v99 + 16))(v98, v101, v100);
  v56 = v92;
  sub_219BE1514();
  sub_2198DEB18(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  v57 = v97;
  sub_219BDCCC4();
  return (*(v95 + 8))(v56, v57);
}

uint64_t sub_2198DE200(uint64_t a1)
{
  v3 = *(sub_219BDF074() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_2198DD094(a1, v4, v5, v6);
}

uint64_t ReplicaAdvertisementCoordinator.endViewSession(_:)(uint64_t a1)
{
  v20[1] = a1;
  v21 = sub_219BDBD34();
  v2 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = sub_219BE1754();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE1744();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = *(v1 + OBJC_IVAR____TtC7NewsUI231ReplicaAdvertisementCoordinator_tracker);
  (*(v9 + 104))(v11, *MEMORY[0x277D2F8C8], v8, v14);
  sub_219BDE1D4();
  v22 = 1;
  sub_219BE1734();
  sub_2198DEB18(&qword_280EE7F50, MEMORY[0x277D2F8B0], MEMORY[0x277D2F8A8]);
  sub_219BDD1F4();
  (*(v13 + 8))(v16, v12);
  sub_219BE1164();
  sub_219BE6784();
  sub_2198DEB18(&qword_27CC208D8, MEMORY[0x277D2EF70], MEMORY[0x277D2EF68]);
  sub_219BDD174();
  v17 = *(v2 + 8);
  v18 = v21;
  v17(v7, v21);
  sub_219BE6784();
  sub_219BE67A4();
  sub_219BDBBF4();
  v17(v4, v18);
  sub_219BDD194();
  v17(v7, v18);
  sub_219BDF724();
  sub_219BE6784();
  sub_2198DEB18(&unk_27CC1D590, MEMORY[0x277D2DD08], MEMORY[0x277D2DD00]);
  sub_219BDD174();
  v17(v7, v18);
  sub_219BE6784();
  sub_219BE67A4();
  sub_219BDBBF4();
  v17(v4, v18);
  sub_219BDD194();
  return (v17)(v7, v18);
}

uint64_t ReplicaAdvertisementCoordinator.deinit()
{
  sub_218774F78(v0 + 16);
  v1 = OBJC_IVAR____TtC7NewsUI231ReplicaAdvertisementCoordinator_advertisement;
  v2 = sub_219BDE204();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t ReplicaAdvertisementCoordinator.__deallocating_deinit()
{
  sub_218774F78(v0 + 16);
  v1 = OBJC_IVAR____TtC7NewsUI231ReplicaAdvertisementCoordinator_advertisement;
  v2 = sub_219BDE204();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReplicaAdvertisementCoordinator(uint64_t a1)
{
  result = qword_27CC208F8;
  if (!qword_27CC208F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_2198DE950(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_2198DE9E8;
}

uint64_t sub_2198DEA3C(uint64_t a1)
{
  result = sub_219BDE204();
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

uint64_t sub_2198DEB18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2198DEB60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2198DEBC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedShortcut(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_21890F480);
}

uint64_t sub_2198DEC20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for CuratedShortcut(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_21890F5A4);
}

uint64_t type metadata accessor for ShortcutType(uint64_t a1)
{
  result = qword_27CC20908;
  if (!qword_27CC20908)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2198DECD4(uint64_t a1)
{
  result = type metadata accessor for CuratedShortcut(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_2198DED78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v4 = type metadata accessor for CuratedShortcut(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198DF5B4(0, &qword_27CC20918, MEMORY[0x277D844C8]);
  v15 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198DF4A8();
  sub_219BF7B34();
  if (!v2)
  {
    v11 = v8;
    v17 = 0;
    sub_2198DF4FC();
    v12 = v15;
    sub_219BF7734();
    v16 = 1;
    sub_2198DF6C8(&qword_27CC20930, &unk_219CB67D4);
    sub_219BF7734();
    (*(v11 + 8))(v10, v12);
    sub_2198DF550(v6, v14);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2198DEFC4(void *a1)
{
  v2 = v1;
  v16[0] = type metadata accessor for CuratedShortcut(0);
  MEMORY[0x28223BE20](v16[0]);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ShortcutType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198DF5B4(0, &qword_27CC20938, MEMORY[0x277D84538]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198DF4A8();
  sub_219BF7B44();
  sub_2197E319C(v2, v8);
  sub_2198DF550(v8, v5);
  v18 = 0;
  sub_2198DF618();
  v14 = v16[1];
  sub_219BF7834();
  if (!v14)
  {
    v17 = 1;
    sub_2198DF6C8(&qword_27CC0BE28, &unk_219CB67AC);
    sub_219BF7834();
  }

  sub_2198DF66C(v5);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2198DF224(uint64_t a1)
{
  v2 = sub_2198DF4A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2198DF260(uint64_t a1)
{
  v2 = sub_2198DF4A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2198DF29C()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_2198DF308(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

void sub_2198DF358(BOOL *a2@<X8>)
{
  v3 = sub_219BF7614();

  *a2 = v3 != 0;
}

unint64_t sub_2198DF4A8()
{
  result = qword_27CC20920;
  if (!qword_27CC20920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20920);
  }

  return result;
}

unint64_t sub_2198DF4FC()
{
  result = qword_27CC20928;
  if (!qword_27CC20928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20928);
  }

  return result;
}

uint64_t sub_2198DF550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratedShortcut(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2198DF5B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2198DF4A8();
    v7 = a3(a1, &type metadata for ShortcutType.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2198DF618()
{
  result = qword_27CC20940;
  if (!qword_27CC20940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20940);
  }

  return result;
}

uint64_t sub_2198DF66C(uint64_t a1)
{
  v2 = type metadata accessor for CuratedShortcut(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2198DF6C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CuratedShortcut(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2198DF730()
{
  result = qword_27CC20948;
  if (!qword_27CC20948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20948);
  }

  return result;
}

unint64_t sub_2198DF788()
{
  result = qword_27CC20950;
  if (!qword_27CC20950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20950);
  }

  return result;
}

unint64_t sub_2198DF7E0()
{
  result = qword_27CC20958;
  if (!qword_27CC20958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20958);
  }

  return result;
}

unint64_t sub_2198DF838()
{
  result = qword_27CC20960;
  if (!qword_27CC20960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20960);
  }

  return result;
}

unint64_t sub_2198DF88C()
{
  result = qword_27CC20968;
  if (!qword_27CC20968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20968);
  }

  return result;
}

void (*sub_2198DF958(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_218963B4C;
}

void sub_2198DFA10()
{
  v1 = *(v0 + 32);
  v2 = objc_opt_self();
  v4[4] = sub_2198DFAE4;
  v4[5] = v1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_218793E0C;
  v4[3] = &block_descriptor_182;
  v3 = _Block_copy(v4);
  swift_unknownObjectRetain();

  [v2 scheduleLowPriorityBlockForMainThread_];
  _Block_release(v3);
}

uint64_t get_enum_tag_for_layout_string_7NewsUI28TipModelO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_2198DFB08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2198DFB50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2198DFB94(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2198DFBBC(id *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 > 5u || a3 == 4)
    {
      goto LABEL_10;
    }

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    v15 = sub_219BDB5E4();

    if (a1)
    {
      v19 = [a1 discoverNewsPlusBubbleTipTitle];
      if (v19)
      {
        v20 = v19;
        v15 = sub_219BF5414();
      }
    }
  }

  else
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        v3 = [a1 toolTipTitle];
      }

      else
      {
        v3 = [a1 puzzleHubInfoBubbleTipTitle];
        if (!v3)
        {
          return 0;
        }
      }

      v5 = v3;
      v6 = sub_219BF5414();
      goto LABEL_17;
    }

    if (!a3)
    {
LABEL_10:
      type metadata accessor for Localized();
      v4 = swift_getObjCClassFromMetadata();
      v5 = [objc_opt_self() bundleForClass_];
      v6 = sub_219BDB5E4();
LABEL_17:
      v15 = v6;

      return v15;
    }

    type metadata accessor for Localized();
    v8 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_2186E845C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    v11 = [a1[2] displayName];
    v12 = sub_219BF5414();
    v14 = v13;

    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_2186FC3BC();
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    v15 = sub_219BF5454();
  }

  return v15;
}

uint64_t sub_2198E020C(id *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (a3 <= 1u)
    {
      if (a3)
      {
        swift_getObjectType();
        return sub_2194F6B6C();
      }

      else
      {
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v5 = [objc_opt_self() bundleForClass_];
        sub_219BDB5E4();

        sub_2186E845C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_219C09BA0;
        v7 = [a1[2] displayName];
        v8 = sub_219BF5414();
        v10 = v9;

        *(v6 + 56) = MEMORY[0x277D837D0];
        *(v6 + 64) = sub_2186FC3BC();
        *(v6 + 32) = v8;
        *(v6 + 40) = v10;
        v11 = sub_219BF5454();
      }

      return v11;
    }

    if (a3 == 2)
    {
      if (UIAccessibilityIsVoiceOverRunning())
      {
        v14 = [a1 toolTipAlternativeBodyForVoiceOver];
      }

      else
      {
        v14 = [a1 toolTipBody];
      }

      v19 = v14;
    }

    else
    {
      v19 = [a1 puzzleHubInfoBubbleTipBody];
      if (!v19)
      {
        return 0;
      }
    }

    v21 = v19;
    v22 = sub_219BF5414();
LABEL_23:
    v11 = v22;

    return v11;
  }

  if (a3 > 5u)
  {
    if (a3 != 6)
    {
      type metadata accessor for Localized();
      v20 = swift_getObjCClassFromMetadata();
      v21 = [objc_opt_self() bundleForClass_];
      v22 = sub_219BDB5E4();
      goto LABEL_23;
    }

LABEL_7:
    type metadata accessor for Localized();
    v12 = swift_getObjCClassFromMetadata();
    v13 = [objc_opt_self() bundleForClass_];
    v11 = sub_219BDB5E4();

    return v11;
  }

  if (a3 == 4)
  {
    goto LABEL_7;
  }

  type metadata accessor for Localized();
  v15 = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass_];
  v11 = sub_219BDB5E4();

  if (a1)
  {
    v17 = [a1 discoverNewsPlusBubbleTipBody];
    if (v17)
    {
      v18 = v17;
      v11 = sub_219BF5414();
    }
  }

  return v11;
}

void sub_2198E08C4(unint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t *a4@<X8>)
{
  v88 = a2;
  v91 = a4;
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  v89 = v6;
  v90 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E845C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v88 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v88 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v88 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v88 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v88 - v26;
  *&v29 = MEMORY[0x28223BE20](v28).n128_u64[0];
  v31 = &v88 - v30;
  if (a3 > 3u)
  {
    if (a3 <= 5u)
    {
      if (a3 == 4)
      {
        sub_219BDB914();
        v37 = v89;
        v38 = v90;
        if ((*(v90 + 48))(v15, 1, v89) != 1)
        {
          sub_2198E1EF4(0);
          v35 = *(v39 + 48);
          v36 = v91;
          (*(v38 + 32))(v91, v15, v37);
          goto LABEL_23;
        }

        goto LABEL_42;
      }

      goto LABEL_11;
    }

    if (a3 == 6)
    {
      v46 = [objc_opt_self() secondaryLabelColor];
      v47 = [v46 colorWithAlphaComponent_];

      sub_219BF5114();
      v48 = sub_219BF5084();
      v49 = v91;
      *v91 = v48;
      v49[1] = v47;
      v50 = *MEMORY[0x277D2FB18];
      v51 = sub_219BDD824();
      v90 = *(v51 - 8);
      (*(v90 + 104))(v49, v50, v51);
      v52 = *(v90 + 56);
      v53 = v49;
    }

    else
    {
      if (a1 > 1)
      {
        if (a1 ^ 2 | v88)
        {
          v78 = [objc_opt_self() secondaryLabelColor];
          v79 = [v78 colorWithAlphaComponent_];

          sub_219BDB914();
          v80 = v89;
          v81 = v90;
          if ((*(v90 + 48))(v12, 1, v89) != 1)
          {
            sub_2198E1EF4(0);
            v83 = *(v82 + 48);
            v84 = v91;
            (*(v81 + 32))(v91, v12, v80);
            *(v84 + v83) = v79;
            v85 = *MEMORY[0x277D2FB20];
            v86 = sub_219BDD824();
            v87 = *(v86 - 8);
            (*(v87 + 104))(v84, v85, v86);
            (*(v87 + 56))(v84, 0, 1, v86);
            return;
          }

          goto LABEL_47;
        }

        sub_219BDB914();
        v68 = v89;
        v69 = v90;
        if ((*(v90 + 48))(v21, 1, v89) != 1)
        {
          sub_2198E1EF4(0);
          v35 = *(v70 + 48);
          v36 = v91;
          (*(v69 + 32))(v91, v21, v68);
          goto LABEL_23;
        }

        goto LABEL_45;
      }

      if (!(a1 | v88))
      {
        sub_219BDB914();
        v64 = v89;
        v65 = v90;
        if ((*(v90 + 48))(v24, 1, v89) != 1)
        {
          sub_2198E1EF4(0);
          v67 = *(v66 + 48);
          v36 = v91;
          (*(v65 + 32))(v91, v24, v64);
          *(v36 + v67) = 0;
          goto LABEL_24;
        }

        goto LABEL_44;
      }

      v74 = sub_219BF53D4();
      v75 = [objc_opt_self() systemImageNamed_];

      if (!v75)
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      v76 = v91;
      *v91 = v75;
      v76[1] = 0;
      v77 = *MEMORY[0x277D2FB18];
      v51 = sub_219BDD824();
      v90 = *(v51 - 8);
      (*(v90 + 104))(v76, v77, v51);
      v52 = *(v90 + 56);
      v53 = v76;
    }

    v52(v53, 0, 1, v51);
  }

  else
  {
    if (a3 <= 1u)
    {
      v32 = v90;
      if (a3)
      {
        sub_219BDB914();
        v54 = v89;
        if ((*(v32 + 48))(v27, 1, v89) != 1)
        {
          sub_2198E1EF4(0);
          v35 = *(v55 + 48);
          v36 = v91;
          (*(v32 + 32))(v91, v27, v54);
          goto LABEL_23;
        }

        goto LABEL_43;
      }

      sub_219BDB914();
      v33 = v89;
      if ((*(v32 + 48))(v31, 1, v89) != 1)
      {
        sub_2198E1EF4(0);
        v35 = *(v34 + 48);
        v36 = v91;
        (*(v32 + 32))(v91, v31, v33);
LABEL_23:
        *(v36 + v35) = 0;
LABEL_24:
        v56 = *MEMORY[0x277D2FB20];
        v57 = sub_219BDD824();
        v58 = *(v57 - 8);
        (*(v58 + 104))(v36, v56, v57);
        (*(v58 + 56))(v36, 0, 1, v57);
        return;
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    if (a3 == 2)
    {
LABEL_11:
      if (qword_27CC08460 != -1)
      {
        swift_once();
      }

      v90 = qword_27CCD88D0;
      v40 = v91;
      *v91 = qword_27CCD88D0;
      v40[1] = 0;
      v41 = *MEMORY[0x277D2FB18];
      v42 = sub_219BDD824();
      v43 = *(v42 - 8);
      (*(v43 + 104))(v40, v41, v42);
      (*(v43 + 56))(v40, 0, 1, v42);
      v44 = v90;

      v45 = v44;
      return;
    }

    v59 = [a1 puzzleHubInfoBubbleTipIconUrl];
    v60 = v90;
    if (v59)
    {
      v61 = v59;
      sub_219BF5414();

      sub_219BDB914();

      v62 = v89;
      if ((*(v60 + 48))(v18, 1, v89) != 1)
      {
        v71 = *(v60 + 32);
        v71(v9, v18, v62);
        sub_2198E1EF4(0);
        v73 = *(v72 + 48);
        v36 = v91;
        v71(v91, v9, v62);
        *(v36 + v73) = 0;
        goto LABEL_24;
      }

      sub_218838478(v18);
    }

    v63 = sub_219BDD824();
    (*(*(v63 - 8) + 56))(v91, 1, 1, v63);
  }
}

uint64_t sub_2198E1358@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  sub_2186E845C(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v31 - v15;
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6 || a1 | a2)
      {
        goto LABEL_12;
      }
    }

    else if (a3 != 4 || (a1 & 1) == 0)
    {
      goto LABEL_12;
    }

    sub_219BDB914();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_2188383F8(v13, v10);
    sub_219BDD544();
    v28 = v13;
    goto LABEL_16;
  }

  if (a3 - 1 < 2 || a3)
  {
LABEL_12:
    v21 = sub_219BDD554();
    v22 = *(*(v21 - 8) + 56);

    return v22(a4, 1, 1, v21);
  }

  v31 = 0;
  v32 = 0xE000000000000000;
  sub_219BF7314();

  v31 = 0xD00000000000002FLL;
  v32 = 0x8000000219D3C660;
  v17 = [*(a1 + 16) identifier];
  v18 = sub_219BF5414();
  v20 = v19;

  MEMORY[0x21CECC330](v18, v20);

  sub_219BDB914();

  if (a2 <= 1)
  {
    type metadata accessor for Localized();
    v26 = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    sub_2188383F8(v16, v13);
    sub_219BDD544();
    v28 = v16;
LABEL_16:
    sub_218838478(v28);
    v29 = sub_219BDD554();
    return (*(*(v29 - 8) + 56))(a4, 0, 1, v29);
  }

  if (a2 == 2)
  {
    sub_218838478(v16);
    v30 = sub_219BDD554();
    return (*(*(v30 - 8) + 56))(a4, 1, 1, v30);
  }

  else
  {
    v31 = a2;
    result = sub_219BF7974();
    __break(1u);
  }

  return result;
}

uint64_t sub_2198E18EC(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6)
      {
        if (qword_27CC08948 != -1)
        {
          swift_once();
        }

        v3 = &qword_27CC22B68;
      }

      else if (a1 > 1)
      {
        if (a1 ^ 2 | a2)
        {
          if (qword_27CC08930 != -1)
          {
            swift_once();
          }

          v3 = &qword_27CC22B50;
        }

        else
        {
          if (qword_280EE9980 != -1)
          {
            swift_once();
          }

          v3 = &qword_280EE9988;
        }
      }

      else if (a1 | a2)
      {
        if (qword_27CC08900 != -1)
        {
          swift_once();
        }

        v3 = &qword_27CC22B28;
      }

      else
      {
        if (qword_27CC088B8 != -1)
        {
          swift_once();
        }

        v3 = &qword_27CC22AE8;
      }
    }

    else if (a3 == 4)
    {
      if (qword_27CC08920 != -1)
      {
        swift_once();
      }

      v3 = &qword_27CC22B40;
    }

    else
    {
      if (qword_27CC088E8 != -1)
      {
        swift_once();
      }

      v3 = &qword_27CC22B10;
    }
  }

  else if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (qword_27CC088D0 != -1)
      {
        swift_once();
      }

      v3 = &qword_27CC22AF8;
    }

    else
    {
      if (qword_280EE9970 != -1)
      {
        swift_once();
      }

      v3 = &qword_280EE9978;
    }
  }

  else if (a3)
  {
    if (qword_27CC08898 != -1)
    {
      swift_once();
    }

    v3 = &qword_27CC22AC8;
  }

  else
  {
    if (qword_27CC088A8 != -1)
    {
      swift_once();
    }

    v3 = &qword_27CC22AD8;
  }

  return *v3;
}

uint64_t sub_2198E1BF0(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6)
      {
        if (qword_27CC08940 != -1)
        {
          swift_once();
        }

        v3 = &qword_27CC22B60;
      }

      else if (a1 > 1)
      {
        if (a1 ^ 2 | a2)
        {
          if (qword_27CC08928 != -1)
          {
            swift_once();
          }

          v3 = &qword_27CC22B48;
        }

        else
        {
          if (qword_280EE9998 != -1)
          {
            swift_once();
          }

          v3 = &qword_280EE99A0;
        }
      }

      else if (a1 | a2)
      {
        if (qword_27CC088F8 != -1)
        {
          swift_once();
        }

        v3 = &qword_27CC22B20;
      }

      else
      {
        if (qword_27CC088B0 != -1)
        {
          swift_once();
        }

        v3 = &qword_27CC22AE0;
      }
    }

    else if (a3 == 4)
    {
      if (qword_27CC08918 != -1)
      {
        swift_once();
      }

      v3 = &qword_27CC22B38;
    }

    else
    {
      if (qword_27CC088E0 != -1)
      {
        swift_once();
      }

      v3 = &qword_27CC22B08;
    }
  }

  else if (a3 > 1u)
  {
    if (a3 == 2)
    {
      if (qword_27CC088C8 != -1)
      {
        swift_once();
      }

      v3 = &qword_27CC22AF0;
    }

    else
    {
      if (qword_27CC08908 != -1)
      {
        swift_once();
      }

      v3 = &qword_27CC22B30;
    }
  }

  else if (a3)
  {
    if (qword_27CC08890 != -1)
    {
      swift_once();
    }

    v3 = &qword_27CC22AC0;
  }

  else
  {
    if (qword_27CC088A0 != -1)
    {
      swift_once();
    }

    v3 = &qword_27CC22AD0;
  }

  return *v3;
}

void sub_2198E1EF4(uint64_t a1)
{
  if (!qword_280EE9D58)
  {
    sub_219BDB954();
    sub_2186E845C(255, &qword_280E8DA70, sub_2186F8B0C, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE9D58);
    }
  }
}

uint64_t SearchEndpointConfigs.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v102 = a2;
  sub_2198E3D50(0, &qword_27CC20970, sub_2198E27C4, &type metadata for SearchEndpointConfigs.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v59 - v7;
  v9 = a1[3];
  v145 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_2198E27C4();
  v103 = v8;
  sub_219BF7B34();
  if (!v2)
  {
    v101 = v6;
    LOBYTE(v133) = 0;
    v10 = sub_2198E2818();
    v11 = v5;
    sub_219BF76E4();
    v12 = v139;
    v13 = v10;
    v14 = v141;
    v15 = v142;
    v16 = v143;
    v99 = v144;
    v100 = v140;
    LOBYTE(v132[0]) = 1;
    v98 = v13;
    sub_219BF76E4();
    v97 = v12;
    v91 = v14;
    v92 = v15;
    v17 = v133;
    v93 = v134;
    v94 = v16;
    v18 = v135;
    v19 = v137;
    v95 = v136;
    v96 = v138;
    LOBYTE(v126) = 2;
    sub_219BF76E4();
    v85 = v18;
    v88 = v19;
    v20 = v132[0];
    v21 = v132[1];
    v86 = v132[4];
    v87 = v132[3];
    v89 = v132[5];
    v90 = v132[2];
    LOBYTE(v120) = 3;
    sub_219BF76E4();
    v81 = v20;
    v84 = v21;
    v22 = v126;
    v23 = v127;
    v24 = v128;
    v80 = v129;
    v82 = v130;
    v83 = v131;
    LOBYTE(v114) = 4;
    sub_219BF76E4();
    v77 = v22;
    v78 = v23;
    v79 = v24;
    v25 = v120;
    v26 = v121;
    v73 = v122;
    v74 = v123;
    v75 = v124;
    v76 = v125;
    LOBYTE(v108) = 5;
    sub_219BF76E4();
    v71 = v25;
    v72 = v26;
    v27 = v114;
    v28 = v115;
    v69 = v117;
    v70 = v118;
    v67 = v116;
    v68 = v119;
    LOBYTE(v105) = 6;
    sub_219BF76E4();
    v65 = v27;
    v66 = v28;
    v60 = v108;
    v61 = v109;
    v62 = v110;
    v63 = v111;
    v29 = v113;
    v64 = v112;
    v104 = 7;
    sub_219BF76E4();
    v31 = v88;
    v30 = v89;
    v32 = v73;
    (*(v101 + 8))(v103, v11);
    v34 = v29;
    v35 = v102;
    v36 = v100;
    *v102 = v97;
    v35[1] = v36;
    v37 = v92;
    v35[2] = v91;
    v35[3] = v37;
    v38 = v95;
    v39 = v99;
    v35[4] = v94;
    v35[5] = v39;
    v40 = v93;
    v35[6] = v17;
    v35[7] = v40;
    v35[8] = v85;
    v35[9] = v38;
    v41 = v96;
    v35[10] = v31;
    v35[11] = v41;
    v42 = v84;
    v35[12] = v81;
    v35[13] = v42;
    v43 = v86;
    v44 = v87;
    v35[14] = v90;
    v35[15] = v44;
    v35[16] = v43;
    v35[17] = v30;
    v45 = v78;
    v35[18] = v77;
    v35[19] = v45;
    v46 = v80;
    v35[20] = v79;
    v35[21] = v46;
    v47 = v83;
    v35[22] = v82;
    v35[23] = v47;
    v48 = v72;
    v35[24] = v71;
    v35[25] = v48;
    v49 = v74;
    v50 = v75;
    v35[26] = v32;
    v35[27] = v49;
    v51 = v76;
    v35[28] = v50;
    v35[29] = v51;
    v52 = v66;
    v35[30] = v65;
    v35[31] = v52;
    v54 = v69;
    v53 = v70;
    v35[32] = v67;
    v35[33] = v54;
    v35[34] = v53;
    v56 = v60;
    v55 = v61;
    v35[35] = v68;
    v35[36] = v56;
    v35[37] = v55;
    v57 = v63;
    v35[38] = v62;
    v35[39] = v57;
    v35[40] = v64;
    v35[41] = v34;
    v58 = v106;
    *(v35 + 21) = v105;
    *(v35 + 22) = v58;
    *(v35 + 23) = v107;
  }

  return __swift_destroy_boxed_opaque_existential_1(v145);
}

unint64_t sub_2198E27C4()
{
  result = qword_27CC20978;
  if (!qword_27CC20978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20978);
  }

  return result;
}

unint64_t sub_2198E2818()
{
  result = qword_27CC20980;
  if (!qword_27CC20980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20980);
  }

  return result;
}

double sub_2198E286C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_2198E28D4()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x7241656C7A7A7570;
    if (v1 == 6)
    {
      v5 = 0xD000000000000012;
    }

    v6 = 0xD000000000000015;
    if (v1 == 4)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x72616C75676572;
    v3 = 0x7374726F7073;
    if (v1 != 2)
    {
      v3 = 0x6143657069636572;
    }

    if (*v0)
    {
      v2 = 0x746567646977;
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
}

uint64_t sub_2198E29E4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2198E3730(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2198E2A0C(uint64_t a1)
{
  v2 = sub_2198E27C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2198E2A48(uint64_t a1)
{
  v2 = sub_2198E27C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchEndpointConfigs.encode(to:)(void *a1)
{
  sub_2198E3D50(0, &qword_27CC20988, sub_2198E27C4, &type metadata for SearchEndpointConfigs.CodingKeys, MEMORY[0x277D84538]);
  v64 = v3;
  v62 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v8 = *(v1 + 24);
  v11 = *(v1 + 32);
  v10 = *(v1 + 40);
  v12 = *(v1 + 48);
  v58 = *(v1 + 64);
  v59 = v12;
  v13 = *(v1 + 80);
  v56 = *(v1 + 88);
  v57 = v13;
  v14 = *(v1 + 96);
  v54 = *(v1 + 112);
  v55 = v14;
  v15 = *(v1 + 136);
  v53 = *(v1 + 128);
  v52 = v15;
  v16 = *(v1 + 144);
  v50 = *(v1 + 160);
  v51 = v16;
  v17 = *(v1 + 184);
  v49 = *(v1 + 176);
  v48 = v17;
  v18 = *(v1 + 192);
  v46 = *(v1 + 208);
  v47 = v18;
  v19 = *(v1 + 232);
  v45 = *(v1 + 224);
  v44 = v19;
  v20 = *(v1 + 240);
  v42 = *(v1 + 256);
  v43 = v20;
  v21 = *(v1 + 280);
  v41 = *(v1 + 272);
  v40 = v21;
  v22 = *(v1 + 288);
  v38 = *(v1 + 304);
  v39 = v22;
  v23 = *(v1 + 328);
  v37 = *(v1 + 320);
  v36 = v23;
  v24 = *(v1 + 336);
  v34 = *(v1 + 352);
  v35 = v24;
  v25 = *(v1 + 376);
  v33 = *(v1 + 368);
  v32 = v25;
  v26 = a1;
  v27 = a1[3];
  v61 = v26[4];
  __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_2198E3000(v6, v7);
  sub_2198E27C4();
  sub_219BF7B44();
  v60 = v6;
  v61 = v9;
  *&v65 = v6;
  *(&v65 + 1) = v7;
  *&v66 = v9;
  *(&v66 + 1) = v8;
  v67 = v11;
  v68 = v10;
  v69 = 0;
  sub_2198E3068();
  v28 = v63;
  sub_219BF77E4();
  if (v28)
  {
    v29 = sub_2198E286C(v60, v7);
    return (*(v62 + 8))(v5, v64, v29);
  }

  else
  {
    v31 = v62;
    sub_2198E286C(v60, v7);
    v66 = v58;
    v65 = v59;
    v67 = v57;
    v68 = v56;
    v69 = 1;
    sub_219BF77E4();
    v66 = v54;
    v65 = v55;
    v67 = v53;
    v68 = v52;
    v69 = 2;
    sub_219BF77E4();
    v66 = v50;
    v65 = v51;
    v67 = v49;
    v68 = v48;
    v69 = 3;
    sub_219BF77E4();
    v66 = v46;
    v65 = v47;
    v67 = v45;
    v68 = v44;
    v69 = 4;
    sub_219BF77E4();
    v66 = v42;
    v65 = v43;
    v67 = v41;
    v68 = v40;
    v69 = 5;
    sub_219BF77E4();
    v66 = v38;
    v65 = v39;
    v67 = v37;
    v68 = v36;
    v69 = 6;
    sub_219BF77E4();
    v66 = v34;
    v65 = v35;
    v67 = v33;
    v68 = v32;
    v69 = 7;
    sub_219BF77E4();
    return (*(v31 + 8))(v5, v64);
  }
}

double sub_2198E3000(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_2198E3068()
{
  result = qword_27CC20990;
  if (!qword_27CC20990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20990);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI220SearchEndpointConfigVSg(uint64_t a1)
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

uint64_t sub_2198E3118(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 384))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_2198E3180(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 376) = 0;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 384) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 384) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2198E3268()
{
  result = qword_27CC20998;
  if (!qword_27CC20998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20998);
  }

  return result;
}

uint64_t sub_2198E32BC(void *a1)
{
  v3 = v1;
  sub_2198E3D50(0, &qword_27CC209C0, sub_2198E3CFC, &type metadata for SearchEndpointConfig.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198E3CFC();
  sub_219BF7B44();
  LOBYTE(v13) = 0;
  sub_219BF7794();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_219BF7794();
    v13 = *(v3 + 32);
    v12 = 2;
    sub_2186D0BA8();
    sub_2187531B0(&unk_280E8EE00, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_219BF77E4();
    v13 = *(v3 + 40);
    v12 = 3;
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_2198E34F4()
{
  v1 = 0x6150686372616573;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x656761507478656ELL;
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

uint64_t sub_2198E3584@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2198E3ED0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2198E35AC(uint64_t a1)
{
  v2 = sub_2198E3CFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2198E35E8(uint64_t a1)
{
  v2 = sub_2198E3CFC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2198E3624@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2198E39D4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

unint64_t sub_2198E3684()
{
  result = qword_27CC209A0;
  if (!qword_27CC209A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC209A0);
  }

  return result;
}

unint64_t sub_2198E36DC()
{
  result = qword_27CC209A8;
  if (!qword_27CC209A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC209A8);
  }

  return result;
}

uint64_t sub_2198E3730(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616C75676572 && a2 == 0xE700000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746567646977 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7374726F7073 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6143657069636572 && a2 == 0xED0000676F6C6174 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D3C7C0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D3C7E0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219D3C800 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7241656C7A7A7570 && a2 == 0xED00006576696863)
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

uint64_t sub_2198E39D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_2198E3D50(0, &qword_27CC209B0, sub_2198E3CFC, &type metadata for SearchEndpointConfig.CodingKeys, MEMORY[0x277D844C8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198E3CFC();
  sub_219BF7B34();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v27) = 0;
  v9 = sub_219BF7694();
  v11 = v10;
  v22 = v9;
  LOBYTE(v27) = 1;
  v12 = sub_219BF7694();
  v23 = v13;
  v21 = v12;
  sub_2186D0BA8();
  LOBYTE(v26) = 2;
  sub_2187531B0(&qword_280E8EDD0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_219BF76E4();
  v20 = v27;
  v25 = 3;
  sub_219BF76E4();
  (*(v6 + 8))(v8, v5);
  v14 = v26;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v16 = v21;
  v17 = v24;
  *v24 = v22;
  v17[1] = v11;
  v18 = v23;
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v20;
  v17[5] = v14;
  return result;
}

unint64_t sub_2198E3CFC()
{
  result = qword_27CC209B8;
  if (!qword_27CC209B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC209B8);
  }

  return result;
}

void sub_2198E3D50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2198E3DCC()
{
  result = qword_27CC209C8;
  if (!qword_27CC209C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC209C8);
  }

  return result;
}

unint64_t sub_2198E3E24()
{
  result = qword_27CC209D0;
  if (!qword_27CC209D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC209D0);
  }

  return result;
}

unint64_t sub_2198E3E7C()
{
  result = qword_27CC209D8;
  if (!qword_27CC209D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC209D8);
  }

  return result;
}

uint64_t sub_2198E3ED0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6150686372616573 && a2 == 0xEA00000000006874;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656761507478656ELL && a2 == 0xEC00000068746150 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CF0670 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CF06B0 == a2)
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

uint64_t type metadata accessor for HistoryFeedExpandRequest(uint64_t a1)
{
  result = qword_280EC1960;
  if (!qword_280EC1960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2198E40C8(uint64_t a1, char *a2, uint64_t a3)
{
  v22 = a1;
  v23 = a2;
  v3 = sub_219BF0334();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D32C50];
  sub_2198E439C(0, &unk_280E90F90, MEMORY[0x277D32C50]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  sub_2198E439C(0, &unk_280E91200, MEMORY[0x277D32A38]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - v15;
  sub_219BF0304();
  sub_2198E4468(v13, v10, &unk_280E90F90, v7);
  if ((*(v4 + 48))(v10, 1, v3) == 1)
  {
    sub_2198E43F0(v10);
    sub_2198E4468(v16, v22, &unk_280E91200, MEMORY[0x277D32A38]);
    v17 = 1;
    v18 = v23;
  }

  else
  {
    v19 = *(v4 + 32);
    v19(v6, v10, v3);
    sub_2198E4468(v16, v22, &unk_280E91200, MEMORY[0x277D32A38]);
    v18 = v23;
    v19(v23, v6, v3);
    v17 = 0;
  }

  v20 = type metadata accessor for ChannelTodayFeedGroupEmitterCursor(0);
  return (*(*(v20 - 8) + 56))(v18, v17, 1, v20);
}

void sub_2198E439C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2198E43F0(uint64_t a1)
{
  sub_2198E439C(0, &unk_280E90F90, MEMORY[0x277D32C50]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2198E4468(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2198E439C(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for ChannelTodayFeedGroupEmitterCursor(uint64_t a1)
{
  result = qword_280EA0D28;
  if (!qword_280EA0D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2198E4548(uint64_t a1)
{
  result = sub_219BF0334();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2198E45D4(uint64_t a1)
{
  sub_218F41028(319);
  if (v1 <= 0x3F)
  {
    sub_2198E472C(319, &qword_280E90E68, sub_218F40F48);
    if (v2 <= 0x3F)
    {
      sub_2198E472C(319, &qword_280E90E58, sub_218985EAC);
      if (v3 <= 0x3F)
      {
        sub_2198E472C(319, &qword_280E90D88, sub_2186EB308);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2198E46E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2198E472C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
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

void sub_2198E4778(uint64_t a1)
{
  sub_2198E47E4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_2198E47E4(uint64_t a1)
{
  if (!qword_27CC20A10)
  {
    type metadata accessor for SearchMoreFeedServiceConfig(255);
    sub_2198E46E4(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig, &unk_219C731D0);
    v1 = sub_219BF0F94();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC20A10);
    }
  }
}

uint64_t sub_2198E487C()
{
  v1 = v0;
  sub_2186EB308(0);
  v3 = v2;
  v25 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC(0);
  v7 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F40F48(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2198E8D68(v1, v17, type metadata accessor for SearchMoreModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v21 = v24;
      (*(v24 + 32))(v9, v17, v7);
      v19 = sub_219BF07B4();
      (*(v21 + 8))(v9, v7);
    }

    else
    {
      v22 = v25;
      (*(v25 + 32))(v5, v17, v3);
      v19 = sub_219BF07B4();
      (*(v22 + 8))(v5, v3);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v12 + 32))(v14, v17, v11);
    v19 = sub_219BF07B4();
    (*(v12 + 8))(v14, v11);
  }

  else
  {
    v19 = *v17;
    sub_218F41028(0);
    sub_2198E8C44(v17 + *(v20 + 48), type metadata accessor for SearchMoreFeedGapLocation);
  }

  return v19;
}

uint64_t sub_2198E4BE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2198E46E4(&qword_27CC20A30, type metadata accessor for SearchMoreModel, &unk_219CB23E4);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2198E4D84@<X0>(uint64_t a1@<X8>)
{
  v78 = a1;
  v76 = sub_219BF0444();
  MEMORY[0x28223BE20](v76);
  v77 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2198E7DE8(0, &unk_280E90F30, MEMORY[0x277D32CD8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v60 - v6;
  v7 = sub_219BF19D4();
  v66 = *(v7 - 8);
  v67 = v7;
  MEMORY[0x28223BE20](v7);
  v73 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F40F48(0);
  v74 = v9;
  v72 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v71 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v12 = v11;
  v63 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198E7DE8(0, &unk_280E92500, MEMORY[0x277D31DC8], v4);
  MEMORY[0x28223BE20](v15 - 8);
  v70 = &v60 - v16;
  sub_2198E7DE8(0, &qword_280E91C10, MEMORY[0x277D32010], v4);
  MEMORY[0x28223BE20](v17 - 8);
  v69 = &v60 - v18;
  v19 = sub_219BF0EE4();
  MEMORY[0x28223BE20](v19 - 8);
  v68 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198E7DE8(0, &unk_280EE34A0, MEMORY[0x277D2D148], v4);
  MEMORY[0x28223BE20](v21 - 8);
  v65 = &v60 - v22;
  v23 = sub_219BF0BD4();
  v62 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_219BF0574();
  MEMORY[0x28223BE20](v26 - 8);
  v64 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC(0);
  v29 = v28;
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v32 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v33);
  v35 = &v60 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198E8D68(v2, v35, type metadata accessor for SearchMoreModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_218F41028(0);
      v38 = *(v37 + 48);
      v39 = v78;
      sub_219BF03C4();
      v40 = *MEMORY[0x277D32DB8];
      v41 = sub_219BF0614();
      (*(*(v41 - 8) + 104))(v39, v40, v41);
      return sub_2198E8C44(&v35[v38], type metadata accessor for SearchMoreFeedGapLocation);
    }

    v49 = v71;
    v50 = v72;
    v51 = v35;
    v52 = v74;
    (*(v72 + 32))(v71, v51, v74);
    v70 = sub_2198E487C();
    sub_219BF07D4();
    swift_unknownObjectRetain();

    (*(v66 + 104))(v73, *MEMORY[0x277D334C8], v67);
    v53 = sub_219BF0494();
    (*(*(v53 - 8) + 56))(v75, 1, 1, v53);
    v80 = MEMORY[0x277D84F90];
    sub_2198E46E4(&qword_280E90F40, MEMORY[0x277D32CB0], MEMORY[0x277D32CC8]);
    sub_2198E7E4C(0);
    sub_2198E46E4(&qword_280E8EF10, sub_2198E7E4C, MEMORY[0x277D83970]);
    sub_219BF7164();
    v47 = v78;
    sub_219BF03D4();
    (*(v50 + 8))(v49, v52);
    v48 = MEMORY[0x277D32DC0];
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v61 = v30;
    (*(v30 + 32))(v32, v35, v29);
    v43 = sub_2198E487C();
    v76 = v44;
    v77 = v43;
    sub_219BF07D4();
    v75 = *(v81 + 16);
    swift_unknownObjectRetain();

    sub_219BF07D4();
    v74 = v80;
    sub_219BF07E4();
    sub_219BF07D4();
    swift_unknownObjectRetain();

    sub_219BF07D4();

    sub_219BF0B94();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v25, v23);
    v45 = sub_219BEBD44();
    (*(*(v45 - 8) + 56))(v65, 1, 1, v45);
    sub_219BF07D4();
    sub_21912D31C(v68);

    sub_219BF07D4();
    sub_218ED9B0C(v79 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_audioTrack, v69);

    v46 = sub_219BEDB44();
    (*(*(v46 - 8) + 56))(v70, 1, 1, v46);
    v47 = v78;
    sub_219BF0E34();
    (*(v61 + 8))(v32, v29);
    v48 = MEMORY[0x277D32E10];
LABEL_7:
    v54 = *v48;
    v55 = sub_219BF0614();
    return (*(*(v55 - 8) + 104))(v47, v54, v55);
  }

  v56 = v63;
  (*(v63 + 32))(v14, v35, v12);
  v57 = v78;
  sub_219BF07D4();
  (*(v56 + 8))(v14, v12);
  v58 = *MEMORY[0x277D32DF0];
  v59 = sub_219BF0614();
  return (*(*(v59 - 8) + 104))(v57, v58, v59);
}

uint64_t sub_2198E5894()
{
  v1 = sub_219BF0614();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198E8D68(v0, v7, type metadata accessor for SearchMoreModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218985EAC(0);
    }

    else
    {
      sub_2186EB308(0);
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload)
  {
    sub_218F40F48(0);
LABEL_8:
    (*(*(v11 - 8) + 8))(v7, v11);
    sub_2198E4D84(v4);
    v10 = sub_219BF05A4();
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  sub_218F41028(0);
  sub_2198E8C44(&v7[*(v9 + 48)], type metadata accessor for SearchMoreFeedGapLocation);
  return 0;
}

uint64_t sub_2198E5A94@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = sub_219BF0B74();
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC(0);
  v9 = v8;
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F40F48(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198E8D68(v1, v19, type metadata accessor for SearchMoreModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v25 = v29;
      (*(v29 + 32))(v11, v19, v9);
      sub_219BF07D4();
      sub_21912D94C(v34);

      return (*(v25 + 8))(v11, v9);
    }

    else
    {
      v27 = v30;
      v26 = v31;
      (*(v30 + 32))(v7, v19, v31);
      sub_219BF07D4();
      sub_219BF0B54();
      (*(v32 + 8))(v4, v33);
      return (*(v27 + 8))(v7, v26);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    (*(v14 + 32))(v16, v19, v13);
    sub_219BF07D4();
    TagModel.dragItem.getter(v34);

    return (*(v14 + 8))(v16, v13);
  }

  else
  {

    sub_218F41028(0);
    v22 = *(v21 + 48);
    v23 = sub_219BEAF84();
    (*(*(v23 - 8) + 56))(v34, 1, 1, v23);
    return sub_2198E8C44(&v19[v22], type metadata accessor for SearchMoreFeedGapLocation);
  }
}

uint64_t sub_2198E5EE4(uint64_t a1)
{
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198E8D68(v4, v3, type metadata accessor for SearchMoreModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218985EAC(0);
    }

    else
    {
      sub_2186EB308(0);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {

      sub_218F41028(0);
      sub_2198E8C44(&v3[*(v6 + 48)], type metadata accessor for SearchMoreFeedGapLocation);
      return 0;
    }

    sub_218F40F48(0);
  }

  (*(*(v8 - 8) + 8))(v3, v8);
  return 1;
}

uint64_t sub_2198E601C()
{
  v1 = v0;
  sub_218F40F48(0);
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v37 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BF0B74();
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v43 = v7;
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF2B34();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v18);
  v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198E8D68(v1, v20, type metadata accessor for SearchMoreModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v35 = v15;
      (*(v15 + 32))(v17, v20, v14);
      v34[1] = v1;
      sub_219BF07D4();
      swift_unknownObjectRetain();

      sub_2198E7DE8(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
      v42 = *(*(sub_219BE6364() - 8) + 72);
      v43 = 2 * v42;
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_219C0B8C0;
      swift_unknownObjectRetain();
      sub_2198E487C();
      sub_219BF2B14();
      sub_219BE62F4();
      v24 = v39;
      v25 = *(v38 + 8);
      v25(v12, v39);
      swift_unknownObjectRetain();
      sub_2198E487C();
      sub_219BF2B14();
      sub_219BE6344();
      v25(v12, v24);
      sub_219BE6314();
      swift_unknownObjectRelease();
      (*(v35 + 8))(v17, v14);
    }

    else
    {
      v29 = v40;
      (*(v40 + 32))(v9, v20, v43);
      sub_219BF07D4();
      v30 = sub_219BF0B44();
      (*(v36 + 8))(v6, v4);
      sub_2198E7DE8(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
      sub_219BE6364();
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_219C0B8C0;
      v31 = [v30 sourceChannel];
      sub_219BE6334();
      swift_unknownObjectRelease();
      v32 = [v30 sourceChannel];
      sub_219BE6324();
      swift_unknownObjectRelease();
      sub_219BE6304();

      (*(v29 + 8))(v9, v43);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v27 = v41;
    v26 = v42;
    v28 = v37;
    (*(v41 + 32))(v37, v20, v42);
    sub_219BF07D4();
    swift_unknownObjectRetain();

    sub_2198E7DE8(0, &qword_280E8BF50, MEMORY[0x277D6D5B8], MEMORY[0x277D84560]);
    sub_219BE6364();
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_219C09EC0;
    sub_219BE6334();
    sub_219BE6324();
    swift_unknownObjectRelease();
    (*(v27 + 8))(v28, v26);
  }

  else
  {

    sub_218F41028(0);
    sub_2198E8C44(&v20[*(v22 + 48)], type metadata accessor for SearchMoreFeedGapLocation);
    return MEMORY[0x277D84F90];
  }

  return v23;
}

uint64_t sub_2198E6848()
{
  v1 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198E8D68(v0, v3, type metadata accessor for SearchMoreModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218985EAC(0);
    }

    else
    {
      sub_2186EB308(0);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {

      sub_218F41028(0);
      sub_2198E8C44(&v3[*(v5 + 48)], type metadata accessor for SearchMoreFeedGapLocation);
      return 0;
    }

    sub_218F40F48(0);
  }

  (*(*(v7 - 8) + 8))(v3, v7);
  return 1;
}

uint64_t sub_2198E69C8@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198E8D68(v8, v12, type metadata accessor for SearchMoreModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218985EAC(0);
    }

    else
    {
      sub_2186EB308(0);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {

      sub_218F41028(0);
      v15 = *(v14 + 48);
      v16 = *a1;
      v17 = a2(0);
      (*(*(v17 - 8) + 104))(a4, v16, v17);
      return sub_2198E8C44(&v12[v15], type metadata accessor for SearchMoreFeedGapLocation);
    }

    sub_218F40F48(0);
  }

  (*(*(v19 - 8) + 8))(v12, v19);
  v20 = *a3;
  v21 = a2(0);
  return (*(*(v21 - 8) + 104))(a4, v20, v21);
}

uint64_t sub_2198E6BE8()
{
  v1 = v0;
  sub_218F40F48(0);
  v89 = *(v2 - 1);
  v90 = v2;
  v3 = *(v89 + 64);
  MEMORY[0x28223BE20](v2);
  v86 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v88 = &v77 - v5;
  v6 = sub_219BF0B74();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v92 = *(v9 - 1);
  v93 = v9;
  v10 = *(v92 + 64);
  MEMORY[0x28223BE20](v9);
  v87 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v91 = &v77 - v12;
  v13 = sub_219BE59F4();
  v94 = *(v13 - 8);
  v95 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = (&v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_219BE5A04();
  v79 = *(v16 - 8);
  v80 = v16;
  MEMORY[0x28223BE20](v16);
  v77 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v78 = &v77 - v19;
  sub_218985EAC(0);
  v82 = *(v20 - 8);
  v83 = v20;
  v21 = *(v82 + 64);
  MEMORY[0x28223BE20](v20);
  v81 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v77 - v23;
  v25 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v25);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198E8D68(v1, v27, type metadata accessor for SearchMoreModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v92 = v1;
      v32 = v82;
      v31 = v83;
      v90 = *(v82 + 32);
      v91 = (v82 + 32);
      v90(v24, v27, v83);
      sub_219BF07D4();
      v33 = *(v97 + 16);
      swift_unknownObjectRetain();

      v97 = MEMORY[0x277D84FA0];
      sub_219BF07D4();
      v34 = *(v96 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_accessLevel);

      v93 = v33;
      if (!v34)
      {
        v36 = v79;
        v35 = v80;
        v37 = v77;
        (*(v79 + 104))(v77, *MEMORY[0x277D31AC0], v80);
        v38 = v24;
        v39 = v78;
        sub_219498044(v78, v37);
        v40 = v39;
        v24 = v38;
        v41 = v35;
        v33 = v93;
        (*(v36 + 8))(v40, v41);
      }

      sub_219BE5A14();
      swift_unknownObjectRetain();
      v42 = sub_2198E487C();
      *v15 = v33;
      v15[1] = 0;
      v15[2] = 0;
      v15[3] = v42;
      v15[4] = v43;
      v44 = v94;
      v45 = v95;
      (*(v94 + 104))(v15, *MEMORY[0x277D31A58], v95);
      MEMORY[0x21CEBC780](v15, v97);

      (*(v44 + 8))(v15, v45);
      v46 = v81;
      (*(v32 + 16))(v81, v24, v31);
      v47 = (*(v32 + 80) + 24) & ~*(v32 + 80);
      v48 = swift_allocObject();
      *(v48 + 16) = v93;
      v90((v48 + v47), v46, v31);
      swift_allocObject();
      v30 = sub_219BE59B4();
      (*(v32 + 8))(v24, v31);
    }

    else
    {
      v90 = *(v92 + 32);
      v90(v91, v27, v93);
      sub_219BF07D4();
      v89 = sub_219BF0B44();
      v58 = v85;
      v59 = *(v84 + 8);
      v59(v8, v85);
      v97 = MEMORY[0x277D84FA0];
      sub_219BF07D4();
      v60 = sub_219BF0B64();
      v59(v8, v58);
      if (v60)
      {
        v62 = v79;
        v61 = v80;
        v63 = v77;
        (*(v79 + 104))(v77, *MEMORY[0x277D31AC0], v80);
        v64 = v78;
        sub_219498044(v78, v63);
        (*(v62 + 8))(v64, v61);
      }

      sub_219BE5A14();
      v65 = v89;
      *v15 = v89;
      v67 = v94;
      v66 = v95;
      (*(v94 + 104))(v15, *MEMORY[0x277D31A40], v95);
      v68 = v97;
      v69 = v65;
      v89 = MEMORY[0x21CEBC780](v15, v68);

      (*(v67 + 8))(v15, v66);
      v70 = v91;
      v71 = v92;
      v72 = v87;
      v73 = v93;
      (*(v92 + 16))(v87, v91, v93);
      v74 = (*(v71 + 80) + 24) & ~*(v71 + 80);
      v75 = swift_allocObject();
      *(v75 + 16) = v69;
      v90((v75 + v74), v72, v73);
      swift_allocObject();
      v30 = sub_219BE59B4();
      (*(v71 + 8))(v70, v73);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v49 = v88;
    v50 = v89;
    v93 = *(v89 + 32);
    v51 = v90;
    v93(v88, v27, v90);
    sub_219BE5A14();
    sub_219BF07D4();
    v52 = *(v97 + 16);
    swift_unknownObjectRetain();

    *v15 = v52;
    v15[1] = 0;
    v54 = v94;
    v53 = v95;
    (*(v94 + 104))(v15, *MEMORY[0x277D31A10], v95);
    MEMORY[0x21CEBC780](v15, MEMORY[0x277D84FA0]);
    (*(v54 + 8))(v15, v53);
    v55 = v86;
    (*(v50 + 16))(v86, v49, v51);
    v56 = (*(v50 + 80) + 16) & ~*(v50 + 80);
    v57 = swift_allocObject();
    v93(v57 + v56, v55, v51);
    swift_allocObject();
    v30 = sub_219BE59B4();
    (*(v50 + 8))(v49, v51);
  }

  else
  {

    sub_218F41028(0);
    sub_2198E8C44(&v27[*(v29 + 48)], type metadata accessor for SearchMoreFeedGapLocation);
    return 0;
  }

  return v30;
}

uint64_t sub_2198E7638(void *a1)
{
  v2 = sub_219BF0B74();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF4874();
  sub_2186EB308(0);
  v6 = a1;
  sub_219BF07D4();
  sub_219BF0B64();
  (*(v3 + 8))(v5, v2);
  return sub_219BF4854();
}

uint64_t sub_2198E7750()
{
  sub_219BF4284();
  sub_218F40F48(0);
  sub_219BF07D4();
  swift_unknownObjectRetain();

  return sub_219BF4274();
}

uint64_t sub_2198E77C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v44 = a5;
  v45 = a8;
  v43 = a4;
  v46 = a2;
  v47 = a3;
  v48 = a6;
  v49 = a7;
  v15 = sub_219BEB334();
  v42 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198E8D68(v10, v20, type metadata accessor for SearchMoreModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v41 = v15;
    if (EnumCaseMultiPayload == 2)
    {
      sub_218985EAC(0);
    }

    else
    {
      sub_2186EB308(0);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {

      sub_218F41028(0);
      sub_2198E8C44(&v20[*(v22 + 48)], type metadata accessor for SearchMoreFeedGapLocation);
      return 0;
    }

    v41 = v15;
    sub_218F40F48(0);
  }

  (*(*(v24 - 8) + 8))(v20, v24);
  sub_2198E7DE8(0, &qword_27CC110C0, sub_218973CC4, MEMORY[0x277D84560]);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_219C09BA0;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_219C0EE20;
  v26 = sub_219BE6684();
  v27 = sub_219BE6654();
  if (v27)
  {
    v28 = MEMORY[0x277D6D630];
    v29 = v26;
  }

  else
  {
    v29 = 0;
    v28 = 0;
    *(v25 + 40) = 0;
    *(v25 + 48) = 0;
  }

  *(v25 + 32) = v27;
  *(v25 + 56) = v29;
  *(v25 + 64) = v28;
  v30 = sub_219BE6634();
  if (v30)
  {
    v31 = MEMORY[0x277D6D630];
    v32 = v26;
  }

  else
  {
    v32 = 0;
    v31 = 0;
    *(v25 + 80) = 0;
    *(v25 + 88) = 0;
  }

  *(v25 + 72) = v30;
  *(v25 + 96) = v32;
  *(v25 + 104) = v31;
  v33 = sub_219BE6614();
  if (v33)
  {
    v34 = MEMORY[0x277D6D630];
    v35 = v26;
  }

  else
  {
    v35 = 0;
    v34 = 0;
    *(v25 + 120) = 0;
    *(v25 + 128) = 0;
  }

  *(v25 + 112) = v33;
  *(v25 + 136) = v35;
  *(v25 + 144) = v34;
  v46 = a2;
  v47 = a3;
  v48 = v43;
  v49 = v44;
  v50 = a6;
  v51 = a7;
  v52 = v45;
  v53 = a9;
  sub_219BE57D4();
  sub_219BE57C4();
  type metadata accessor for SearchMoreFeedServiceConfig(0);
  sub_2198E46E4(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig, &unk_219C731D0);
  v36 = v41;
  v37 = sub_219BEB284();
  (*(v42 + 8))(v17, v36);
  sub_219BE57B4();
  v38 = sub_219BE6624();

  sub_21885AB78(v37);
  if (v38)
  {
    v39 = MEMORY[0x277D6D630];
  }

  else
  {
    v26 = 0;
    v39 = 0;
    *(v25 + 160) = 0;
    *(v25 + 168) = 0;
  }

  *(v25 + 152) = v38;
  *(v25 + 176) = v26;
  *(v25 + 184) = v39;
  sub_219BE5A14();
  sub_219BE6B74();
  sub_219BE6B44();

  return sub_219BE59D4();
}

uint64_t sub_2198E7CA4()
{
  v1 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198E8D68(v0, v3, type metadata accessor for SearchMoreModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218985EAC(0);
    }

    else
    {
      sub_2186EB308(0);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {

      sub_218F41028(0);
      sub_2198E8C44(&v3[*(v5 + 48)], type metadata accessor for SearchMoreFeedGapLocation);
      return 1;
    }

    sub_218F40F48(0);
  }

  (*(*(v7 - 8) + 8))(v3, v7);
  return 0;
}

void sub_2198E7DE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2198E7E80()
{
  sub_218F40F48(0);

  return sub_2198E7750();
}

uint64_t sub_2198E7F38(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_2198E7FB8(uint64_t a1, uint64_t a2)
{
  sub_2198E47E4(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  sub_2198E8D08(0, &unk_27CC20A50, type metadata accessor for SearchMoreFeedGapLocation);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v16 = *(v15 + 56);
  sub_2198E8D68(a1, &v22 - v13, type metadata accessor for SearchMoreFeedGapLocation);
  sub_2198E8D68(a2, &v14[v16], type metadata accessor for SearchMoreFeedGapLocation);
  type metadata accessor for SearchMoreFeedGapLocation(0);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (a1 != 1)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2198E8C44(&v14[v16], type metadata accessor for SearchMoreFeedGapLocation);
      sub_2198E8C44(v14, type metadata accessor for SearchMoreFeedGapLocation);
      v19 = 1;
      return v19 & 1;
    }

    sub_2198E8C44(v14, type metadata accessor for SearchMoreFeedGapLocation);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    (*(v6 + 8))(v14, v5);
LABEL_7:
    sub_2198E8C44(&v14[v16], type metadata accessor for SearchMoreFeedGapLocation);
    v19 = 0;
    return v19 & 1;
  }

  v18 = *(v6 + 32);
  v18(v11, v14, v5);
  v18(v8, &v14[v16], v5);
  type metadata accessor for SearchMoreFeedServiceConfig(0);
  sub_2198E46E4(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig, &unk_219C731D0);
  v19 = sub_219BF0F64();
  v20 = *(v6 + 8);
  v20(v8, v5);
  v20(v11, v5);
  return v19 & 1;
}

uint64_t sub_2198E82AC(uint64_t a1, uint64_t a2)
{
  v77 = a2;
  sub_2186EB308(0);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v70 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218985EAC(0);
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v69 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F40F48(0);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SearchMoreFeedGapLocation(0);
  MEMORY[0x28223BE20](v10 - 8);
  v67 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = &v66 - v13;
  v14 = type metadata accessor for SearchMoreModel(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v66 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v66 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = (&v66 - v24);
  sub_2198E8D08(0, &qword_27CC20A48, type metadata accessor for SearchMoreModel);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v66 - v27;
  v30 = (&v66 + *(v29 + 56) - v27);
  sub_2198E8D68(a1, &v66 - v27, type metadata accessor for SearchMoreModel);
  sub_2198E8D68(v77, v30, type metadata accessor for SearchMoreModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_2198E8D68(v28, v19, type metadata accessor for SearchMoreModel);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v39.n128_f64[0] = (*(v73 + 8))(v19, v74);
        goto LABEL_16;
      }

      v41 = v73;
      v40 = v74;
      v42 = v69;
      (*(v73 + 32))(v69, v30, v74);
      type metadata accessor for HeadlineModel(0);
      sub_2198E46E4(&qword_280EDE358, type metadata accessor for HeadlineModel, &unk_219C5F62C);
      sub_2198E46E4(&qword_280EDE360, type metadata accessor for HeadlineModel, &unk_219C5F604);
      v43 = sub_219BF07C4();
      v44 = *(v41 + 8);
      v44(v42, v40);
      v44(v19, v40);
    }

    else
    {
      sub_2198E8D68(v28, v16, type metadata accessor for SearchMoreModel);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v39.n128_f64[0] = (*(v75 + 8))(v16, v76);
        goto LABEL_16;
      }

      v49 = v75;
      v48 = v76;
      v50 = v70;
      (*(v75 + 32))(v70, v30, v76);
      sub_219BF0B74();
      v51 = MEMORY[0x277D32FD0];
      sub_2198E46E4(&unk_280E90C70, MEMORY[0x277D32FD0], MEMORY[0x277D32FD8]);
      sub_2198E46E4(&unk_280E90C80, v51, MEMORY[0x277D32FC8]);
      v43 = sub_219BF07C4();
      v52 = *(v49 + 8);
      v52(v50, v48);
      v52(v16, v48);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_2198E8D68(v28, v25, type metadata accessor for SearchMoreModel);
      v33 = *v25;
      v32 = v25[1];
      sub_218F41028(0);
      v35 = *(v34 + 48);
      v36 = *(v34 + 64);
      v37 = *(v25 + v36);
      v38 = *(v25 + v36 + 8);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_2198E8C44(v25 + v35, type metadata accessor for SearchMoreFeedGapLocation);

LABEL_16:
        sub_2198E8BCC(v28, v39);
LABEL_17:
        v43 = 0;
        return v43 & 1;
      }

      v77 = v37;
      v55 = *v30;
      v54 = v30[1];
      v76 = *(v30 + v36);
      v56 = *(v30 + v36 + 8);
      v57 = v25 + v35;
      v58 = v68;
      sub_2198E8CA4(v57, v68);
      v59 = v30 + v35;
      v60 = v67;
      sub_2198E8CA4(v59, v67);
      if (v33 == v55 && v32 == v54)
      {
      }

      else
      {
        v61 = sub_219BF78F4();

        if ((v61 & 1) == 0)
        {
          sub_2198E8C44(v60, type metadata accessor for SearchMoreFeedGapLocation);
          sub_2198E8C44(v58, type metadata accessor for SearchMoreFeedGapLocation);
          goto LABEL_36;
        }
      }

      v62 = sub_2198E7FB8(v58, v60);
      sub_2198E8C44(v60, type metadata accessor for SearchMoreFeedGapLocation);
      sub_2198E8C44(v58, type metadata accessor for SearchMoreFeedGapLocation);
      if (v62)
      {
        if (v38)
        {
          if (v77)
          {
            if (v76)
            {
              v63 = v56;
            }

            else
            {
              v63 = 0;
            }

            if (v63 == 1)
            {
LABEL_41:
              sub_2198E8C44(v28, type metadata accessor for SearchMoreModel);
              v43 = 1;
              return v43 & 1;
            }
          }

          else
          {
            if (v76)
            {
              v65 = 0;
            }

            else
            {
              v65 = v56;
            }

            if (v65)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
          if (v77 == v76)
          {
            v64 = v56;
          }

          else
          {
            v64 = 1;
          }

          if ((v64 & 1) == 0)
          {
            goto LABEL_41;
          }
        }
      }

LABEL_36:
      sub_2198E8C44(v28, type metadata accessor for SearchMoreModel);
      goto LABEL_17;
    }

    sub_2198E8D68(v28, v22, type metadata accessor for SearchMoreModel);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v39.n128_f64[0] = (*(v71 + 8))(v22, v72);
      goto LABEL_16;
    }

    v46 = v71;
    v45 = v72;
    (*(v71 + 32))(v9, v30, v72);
    type metadata accessor for TagModel();
    sub_2198E46E4(&unk_280E92B30, type metadata accessor for TagModel, &protocol conformance descriptor for TagModel);
    sub_2198E46E4(qword_280E92B40, type metadata accessor for TagModel, &protocol conformance descriptor for TagModel);
    v43 = sub_219BF07C4();
    v47 = *(v46 + 8);
    v47(v9, v45);
    v47(v22, v45);
  }

  sub_2198E8C44(v28, type metadata accessor for SearchMoreModel);
  return v43 & 1;
}

uint64_t sub_2198E8BCC(uint64_t a1, __n128 a2)
{
  sub_2198E8D08(0, &qword_27CC20A48, type metadata accessor for SearchMoreModel);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2198E8C44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2198E8CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedGapLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2198E8D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2198E8D68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2198E8DD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v1, 0);
    v3 = v2 + 56;
    v4 = sub_219BF7174();
    v5 = 0;
    v24 = v2 + 64;
    v25 = v1;
    v26 = v2 + 56;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v2 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v27 = v5;
      v28 = *(v2 + 36);

      v8 = v2;
      v9 = sub_219BF53D4();
      v10 = NDArticleIDFromAudioContentID();

      v11 = sub_219BF5414();
      v13 = v12;

      v15 = *(v29 + 16);
      v14 = *(v29 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21870B65C((v14 > 1), v15 + 1, 1);
      }

      *(v29 + 16) = v15 + 1;
      v16 = v29 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v6 = 1 << *(v8 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v2 = v8;
      v3 = v26;
      v17 = *(v26 + 8 * v7);
      if ((v17 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v28 != *(v2 + 36))
      {
        goto LABEL_24;
      }

      v18 = v17 & (-2 << (v4 & 0x3F));
      if (v18)
      {
        v6 = __clz(__rbit64(v18)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v7 << 6;
        v20 = v7 + 1;
        v21 = (v24 + 8 * v7);
        while (v20 < (v6 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_2187BC250(v4, v28, 0);
            v6 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_2187BC250(v4, v28, 0);
      }

LABEL_4:
      v5 = v27 + 1;
      v4 = v6;
      if (v27 + 1 == v25)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_2198E9038(uint64_t a1, uint64_t a2)
{
  [objc_opt_self() boostBackgroundDownloads];
  sub_21870F5B4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_2198E90E8(uint64_t a1, uint64_t a2)
{
  sub_219BE2184();
  LOBYTE(a2) = sub_2188537B8(a1, a2, v5);

  return a2 & 1;
}

double sub_2198E9150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2187A913C;
  *(v12 + 24) = v11;
  v13 = *(a7 + 24);

  v13(sub_218BBF788, v12, a6, a7);

  return result;
}

id sub_2198E9230()
{
  v1 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager____lazy_storage___requestProcessingThrottler;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager____lazy_storage___requestProcessingThrottler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager____lazy_storage___requestProcessingThrottler);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D30E68]) initWithDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_2198E92A8()
{
  v219 = sub_219BE6234();
  i = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v218 = &v211[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v2);
  v225 = &v211[-v3];
  v4 = type metadata accessor for OfflineContentRequest(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v211[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v211[-v9];
  v11 = sub_219BED224();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v211[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v222 = v0;
  v15 = *(v0 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager__offlineContentRequests);
  v16 = sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);

  v230 = v16;
  *v14 = sub_219BF66A4();
  v17 = *(v12 + 104);
  v231 = *MEMORY[0x277D85200];
  v228 = v17;
  v229 = v12 + 104;
  v17(v14);
  LOBYTE(v16) = sub_219BED254();
  v18 = *(v12 + 8);
  v221 = v11;
  v232 = v12 + 8;
  v227 = v18;
  (v18)(v14, v11);
  if ((v16 & 1) == 0)
  {
    goto LABEL_88;
  }

  v19 = *(v15 + 16);

  v235 = MEMORY[0x277D84FA0];
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v220 = v19;
    v22 = v19 + v21;
    v23 = *(v5 + 72);
    v224 = v10;
    while (1)
    {
      sub_2198F30C8(v22, v10);
      sub_2198F30C8(v10, v7);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v30 = *v7;
      v29 = *(v7 + 1);
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_218950608(0, &unk_280E8F880, "articleID options source ");
          v226 = &v7[*(v31 + 64)];
          v32 = sub_219BF53D4();

          v33 = v14;
          v34 = v23;
          v35 = v4;
          v36 = NDAudioContentIDFromArticleID();

          v30 = sub_219BF5414();
          v29 = v37;

          v4 = v35;
          v23 = v34;
          v14 = v33;
          v10 = v224;
          v27 = v226;
          goto LABEL_6;
        }

        v24 = &unk_280E8F880;
        v25 = "articleID options source ";
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v24 = &qword_280E8F8B0;
        v25 = "issueID options source ";
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v24 = &unk_280E8F8A0;
        v25 = "puzzleID options source ";
      }

      else
      {
        v24 = &unk_280E8F890;
        v25 = "recipeID options source ";
      }

      sub_218950608(0, v24, v25);
      v27 = &v7[*(v26 + 64)];
LABEL_6:
      sub_219242288(v27, type metadata accessor for OfflineContentRequest.Source);
      sub_219497B60(v233, v30, v29);

      sub_219242288(v10, type metadata accessor for OfflineContentRequest);
      v22 += v23;
      if (!--v20)
      {

        v38 = v235;
        goto LABEL_17;
      }
    }
  }

  v38 = MEMORY[0x277D84FA0];
LABEL_17:
  v226 = v38;
  v39 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager__activeContentIDs;
  v40 = v222;
  v10 = *(v222 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager__activeContentIDs);

  *v14 = sub_219BF66A4();
  v41 = v221;
  v42 = v228;
  v228(v14, v231, v221);
  v43 = sub_219BED254();
  v7 = v227;
  (v227)(v14, v41);
  if ((v43 & 1) == 0)
  {
    goto LABEL_89;
  }

  *(v10 + 16) = v226;

  v220 = v39;
  v10 = *(v40 + v39);

  *v14 = sub_219BF66A4();
  v42(v14, v231, v41);
  v44 = sub_219BED254();
  (v7)(v14, v41);
  if ((v44 & 1) == 0)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v45 = *(v10 + 16);

  v46 = 0;
  v48 = v45 + 56;
  v47 = *(v45 + 56);
  v217 = v45;
  v49 = 1 << *(v45 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v51 = v50 & v47;
  v216 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager_downloadMonitors;
  v52 = (v49 + 63) >> 6;
  LODWORD(v226) = *MEMORY[0x277D6D560];
  v224 = (i + 13);
  v213 = (i + 11);
  ++i;
  v212 = *MEMORY[0x277D6D558];
  v7 = v219;
  v53 = v218;
  v54 = v40;
  v215 = v45 + 56;
  v214 = v52;
  while (v51)
  {
    v55 = v46;
LABEL_29:
    v56 = (*(v217 + 48) + ((v55 << 10) | (16 * __clz(__rbit64(v51)))));
    v57 = *v56;
    v7 = v56[1];
    v58 = *(v222 + v216);

    sub_219BE1AB4();
    swift_beginAccess();
    v59 = *(v58 + 16);
    if (*(v59 + 16))
    {
      v60 = sub_21870F700(v57, v7);
      if (v61)
      {
        v10 = *(*(v59 + 56) + 8 * v60);

        goto LABEL_44;
      }
    }

    type metadata accessor for OfflineDownloadMonitor();
    v10 = swift_allocObject();
    (*v224)(v225, v226, v219);
    sub_2198F3064(0, &qword_280EE7AF8, MEMORY[0x277D6D578], MEMORY[0x277D6CB78]);
    swift_allocObject();
    *(v10 + 32) = sub_219BE2174();
    v235 = 0;
    sub_21870F5B4(0, &qword_280EE7AB0, MEMORY[0x277D839F8], MEMORY[0x277D6CB78]);
    swift_allocObject();
    *(v10 + 40) = sub_219BE2174();
    *(v10 + 16) = v57;
    *(v10 + 24) = v7;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v57;
    v64 = isUniquelyReferenced_nonNull_native;
    v235 = *(v58 + 16);
    v65 = v235;
    *(v58 + 16) = 0x8000000000000000;
    v66 = v63;
    v67 = sub_21870F700(v63, v7);
    v69 = v65[2];
    v70 = (v68 & 1) == 0;
    v71 = __OFADD__(v69, v70);
    v72 = v69 + v70;
    if (v71)
    {
      goto LABEL_86;
    }

    v73 = v68;
    if (v65[3] < v72)
    {
      sub_21947DE34(v72, v64);
      v74 = v66;
      v67 = sub_21870F700(v66, v7);
      if ((v73 & 1) != (v75 & 1))
      {
        goto LABEL_178;
      }

LABEL_38:
      v76 = v235;
      if ((v73 & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    }

    if (v64)
    {
      v74 = v66;
      goto LABEL_38;
    }

    v77 = v67;
    sub_2194902E4();
    v67 = v77;
    v74 = v66;
    v76 = v235;
    if ((v73 & 1) == 0)
    {
LABEL_41:
      v76[(v67 >> 6) + 8] |= 1 << v67;
      v78 = (v76[6] + 16 * v67);
      *v78 = v74;
      v78[1] = v7;
      *(v76[7] + 8 * v67) = v10;
      v79 = v76[2];
      v71 = __OFADD__(v79, 1);
      v80 = v79 + 1;
      if (v71)
      {
        goto LABEL_87;
      }

      v76[2] = v80;
      goto LABEL_43;
    }

LABEL_39:
    *(v76[7] + 8 * v67) = v10;

LABEL_43:
    *(v58 + 16) = v76;
    v53 = v218;
LABEL_44:
    v51 &= v51 - 1;
    swift_endAccess();

    sub_219BE1AC4();

    sub_219BE2184();
    v7 = v219;
    v81 = (*v213)(v53, v219);
    if (v81 == v226)
    {
      v82 = *i;
      (*i)(v53, v7);
      sub_21870F5B4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v83 = sub_219BE3014();
      v84 = v225;
      *v225 = v83;
      (*v224)(v84, v212, v7);
      v53 = v218;
      sub_219BE2164();
      v82(v84, v7);
    }

    else
    {

      (*i)(v53, v7);
    }

    v46 = v55;
    v54 = v222;
    v48 = v215;
    v52 = v214;
  }

  while (1)
  {
    v55 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      goto LABEL_82;
    }

    if (v55 >= v52)
    {
      break;
    }

    v51 = *(v48 + 8 * v55);
    ++v46;
    if (v51)
    {
      goto LABEL_29;
    }
  }

  v85 = *(v54 + v216);

  sub_219BE1AB4();
  swift_beginAccess();
  v86 = *(v85 + 16);

  sub_219BE1AC4();

  v87 = 0;
  v234 = MEMORY[0x277D84F90];
  v89 = v86 + 64;
  v88 = *(v86 + 64);
  v218 = v86;
  v90 = 1 << *(v86 + 32);
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  else
  {
    v91 = -1;
  }

  v10 = v91 & v88;
  v92 = (v90 + 63) >> 6;
  v216 = v92;
  v217 = v89;
  while (2)
  {
    if (v10)
    {
LABEL_58:
      v94 = *(*(v218 + 7) + ((v87 << 9) | (8 * __clz(__rbit64(v10)))));
      v95 = v54;
      v96 = *(v54 + v220);

      *v14 = sub_219BF66A4();
      v97 = v221;
      v228(v14, v231, v221);
      v98 = sub_219BED254();
      (v227)(v14, v97);
      if ((v98 & 1) == 0)
      {
        goto LABEL_85;
      }

      v10 &= v10 - 1;
      v99 = *(v96 + 16);

      v54 = v95;
      if (*(v99 + 16))
      {
        v101 = *(v94 + 16);
        v100 = *(v94 + 24);
        sub_219BF7AA4();

        sub_219BF5524();
        v102 = sub_219BF7AE4();
        v103 = -1 << *(v99 + 32);
        v104 = v102 & ~v103;
        if ((*(v99 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104))
        {
          v105 = ~v103;
          while (1)
          {
            v106 = (*(v99 + 48) + 16 * v104);
            v107 = *v106 == v101 && v106[1] == v100;
            if (v107 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v104 = (v104 + 1) & v105;
            if (((*(v99 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          v54 = v222;
          v7 = v219;
          goto LABEL_52;
        }

LABEL_50:

        v54 = v222;
        v7 = v219;
      }

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
LABEL_52:
      v89 = v217;
      v92 = v216;
      continue;
    }

    break;
  }

  while (1)
  {
    v93 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      goto LABEL_83;
    }

    if (v93 >= v92)
    {
      break;
    }

    v10 = *(v89 + 8 * v93);
    ++v87;
    if (v10)
    {
      v87 = v93;
      goto LABEL_58;
    }
  }

  v10 = v234;
  if (v234 < 0 || (v234 & 0x4000000000000000) != 0)
  {
LABEL_91:
    v108 = sub_219BF7214();
    if (v108)
    {
      goto LABEL_73;
    }

    goto LABEL_92;
  }

  v108 = *(v234 + 16);
  if (v108)
  {
LABEL_73:
    v109 = 0;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v109, v10);
        v110 = v109 + 1;
        if (__OFADD__(v109, 1))
        {
          goto LABEL_81;
        }
      }

      else
      {
        if (v109 >= *(v10 + 16))
        {
          goto LABEL_84;
        }

        v110 = v109 + 1;
        if (__OFADD__(v109, 1))
        {
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
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }
      }

      v111 = v225;
      (*v224)(v225, v226, v7);
      sub_219BE2164();
      (*i)(v111, v7);
      *&v233[0] = 0;
      sub_219BE21B4();

      ++v109;
    }

    while (v110 != v108);
  }

LABEL_92:

  v112 = v222;

  sub_219BE2184();
  v113 = *&v233[0];
  v114 = *(v112 + v220);

  *v14 = sub_219BF66A4();
  v115 = v231;
  v116 = v221;
  v117 = v228;
  v228(v14, v231, v221);
  v118 = sub_219BED254();
  v119 = v227;
  (v227)(v14, v116);
  if ((v118 & 1) == 0)
  {
    goto LABEL_175;
  }

  v120 = *(v114 + 16);

  v121 = sub_2192094C0(v120, v113);

  *&v233[0] = v121;
  sub_2198F3CC8(&qword_280E8E9C0, 255, sub_2186E2394, MEMORY[0x277D83B60]);
  sub_219BE21B4();

  v226 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager__interestTokensByContentID;
  v122 = *(v112 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager__interestTokensByContentID);

  *v14 = sub_219BF66A4();
  v117(v14, v115, v116);
  v123 = sub_219BED254();
  v119(v14, v116);
  if (v123)
  {
    v124 = *(v122 + 16);

    v125 = 0;
    v127 = (v124 + 64);
    v126 = *(v124 + 64);
    v224 = v124;
    v128 = 1 << *(v124 + 32);
    if (v128 < 64)
    {
      v129 = ~(-1 << v128);
    }

    else
    {
      v129 = -1;
    }

    v130 = v129 & v126;
    v131 = (v128 + 63) >> 6;
    v225 = MEMORY[0x277D84F90];
    for (i = (v124 + 64); ; v127 = i)
    {
      v132 = v220;
      while (1)
      {
        if (!v130)
        {
          while (1)
          {
            v133 = v125 + 1;
            if (__OFADD__(v125, 1))
            {
              break;
            }

            if (v133 >= v131)
            {

              v153 = v225[2];
              v154 = v222;
              v155 = v221;
              if (v153)
              {
                v156 = v225 + 5;
                while (1)
                {
                  v158 = *(v156 - 1);
                  v157 = *v156;
                  v159 = *(v154 + v226);

                  *v14 = sub_219BF66A4();
                  v228(v14, v231, v155);
                  v160 = sub_219BED254();
                  (v227)(v14, v155);
                  if ((v160 & 1) == 0)
                  {
                    break;
                  }

                  v161 = *(v159 + 16);

                  v162 = sub_21870F700(v158, v157);
                  v164 = v163;

                  if (v164)
                  {
                    v165 = swift_isUniquelyReferenced_nonNull_native();
                    v234 = v161;
                    if (!v165)
                    {
                      sub_219492468();
                      v161 = v234;
                    }

                    sub_218751558((*(v161 + 56) + 32 * v162), v233);
                    sub_2194896A8(v162, v161);
                  }

                  else
                  {
                    memset(v233, 0, 32);
                  }

                  sub_218806FD0(v233);
                  *v14 = sub_219BF66A4();
                  v228(v14, v231, v155);
                  v166 = sub_219BED254();
                  (v227)(v14, v155);
                  if ((v166 & 1) == 0)
                  {
                    goto LABEL_170;
                  }

                  *(v159 + 16) = v161;

                  v156 += 2;
                  if (!--v153)
                  {
                    goto LABEL_130;
                  }
                }

LABEL_169:
                __break(1u);
LABEL_170:
                __break(1u);
LABEL_171:
                __break(1u);
LABEL_172:
                __break(1u);
LABEL_173:
                __break(1u);
LABEL_174:
                __break(1u);
LABEL_175:
                __break(1u);
                goto LABEL_176;
              }

LABEL_130:

              v226 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager__storageSizeByContentID;
              v167 = *(v154 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager__storageSizeByContentID);

              *v14 = sub_219BF66A4();
              v228(v14, v231, v155);
              v168 = sub_219BED254();
              (v227)(v14, v155);
              if ((v168 & 1) == 0)
              {
                goto LABEL_177;
              }

              v169 = *(v167 + 16);

              v170 = 0;
              v172 = (v169 + 64);
              v171 = *(v169 + 64);
              v224 = v169;
              v173 = 1 << *(v169 + 32);
              if (v173 < 64)
              {
                v174 = ~(-1 << v173);
              }

              else
              {
                v174 = -1;
              }

              v175 = v174 & v171;
              v176 = (v173 + 63) >> 6;
              v225 = MEMORY[0x277D84F90];
              i = (v169 + 64);
LABEL_135:
              v177 = v220;
              while (v175)
              {
LABEL_142:
                v179 = (v224[6] + ((v170 << 10) | (16 * __clz(__rbit64(v175)))));
                v181 = *v179;
                v180 = v179[1];
                v182 = *(v222 + v177);

                *v14 = sub_219BF66A4();
                v183 = v221;
                v228(v14, v231, v221);
                v184 = sub_219BED254();
                (v227)(v14, v183);
                if ((v184 & 1) == 0)
                {
                  goto LABEL_174;
                }

                v175 &= v175 - 1;
                v185 = *(v182 + 16);

                if (!*(v185 + 16) || (sub_219BF7AA4(), sub_219BF5524(), v186 = sub_219BF7AE4(), v187 = -1 << *(v185 + 32), v188 = v186 & ~v187, ((*(v185 + 56 + ((v188 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v188) & 1) == 0))
                {
LABEL_152:

                  v192 = v225;
                  v193 = swift_isUniquelyReferenced_nonNull_native();
                  v194 = v192;
                  v234 = v192;
                  if ((v193 & 1) == 0)
                  {
                    sub_21870B65C(0, v192[2] + 1, 1);
                    v194 = v234;
                  }

                  v196 = v194[2];
                  v195 = v194[3];
                  if (v196 >= v195 >> 1)
                  {
                    sub_21870B65C((v195 > 1), v196 + 1, 1);
                    v194 = v234;
                  }

                  v194[2] = v196 + 1;
                  v225 = v194;
                  v197 = &v194[2 * v196];
                  v197[4] = v181;
                  v197[5] = v180;
                  v172 = i;
                  goto LABEL_135;
                }

                v189 = ~v187;
                while (1)
                {
                  v190 = (*(v185 + 48) + 16 * v188);
                  v191 = *v190 == v181 && v190[1] == v180;
                  if (v191 || (sub_219BF78F4() & 1) != 0)
                  {
                    break;
                  }

                  v188 = (v188 + 1) & v189;
                  if (((*(v185 + 56 + ((v188 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v188) & 1) == 0)
                  {
                    goto LABEL_152;
                  }
                }

                v177 = v220;
                v172 = i;
              }

              while (1)
              {
                v178 = v170 + 1;
                if (__OFADD__(v170, 1))
                {
                  break;
                }

                if (v178 >= v176)
                {

                  v198 = v225[2];
                  v199 = v222;
                  v200 = v221;
                  if (!v198)
                  {
LABEL_166:

                    LOBYTE(v233[0]) = 0;

                    sub_219BE2E94();

                    return;
                  }

                  v201 = v225 + 5;
                  while (1)
                  {
                    v203 = *(v201 - 1);
                    v202 = *v201;
                    v204 = *(v199 + v226);

                    *v14 = sub_219BF66A4();
                    v228(v14, v231, v200);
                    v205 = sub_219BED254();
                    (v227)(v14, v200);
                    if ((v205 & 1) == 0)
                    {
                      goto LABEL_171;
                    }

                    v206 = *(v204 + 16);

                    sub_21870F700(v203, v202);
                    v208 = v207;

                    if (v208)
                    {
                      v209 = swift_isUniquelyReferenced_nonNull_native();
                      *&v233[0] = v206;
                      if (!v209)
                      {
                        sub_2194971CC();
                        v206 = *&v233[0];
                      }

                      sub_2194B7E5C();
                    }

                    *v14 = sub_219BF66A4();
                    v228(v14, v231, v200);
                    v210 = sub_219BED254();
                    (v227)(v14, v200);
                    if ((v210 & 1) == 0)
                    {
                      goto LABEL_172;
                    }

                    *(v204 + 16) = v206;

                    v201 += 2;
                    if (!--v198)
                    {
                      goto LABEL_166;
                    }
                  }
                }

                v175 = v172[v178];
                ++v170;
                if (v175)
                {
                  v170 = v178;
                  goto LABEL_142;
                }
              }

LABEL_168:
              __break(1u);
              goto LABEL_169;
            }

            v130 = v127[v133];
            ++v125;
            if (v130)
            {
              v125 = v133;
              goto LABEL_105;
            }
          }

          __break(1u);
          goto LABEL_168;
        }

LABEL_105:
        v134 = (v224[6] + ((v125 << 10) | (16 * __clz(__rbit64(v130)))));
        v136 = *v134;
        v135 = v134[1];
        v137 = *(v222 + v132);

        *v14 = sub_219BF66A4();
        v138 = v221;
        v228(v14, v231, v221);
        v139 = sub_219BED254();
        (v227)(v14, v138);
        if ((v139 & 1) == 0)
        {
          goto LABEL_173;
        }

        v130 &= v130 - 1;
        v140 = *(v137 + 16);

        if (!*(v140 + 16))
        {
          break;
        }

        sub_219BF7AA4();
        sub_219BF5524();
        v141 = sub_219BF7AE4();
        v142 = -1 << *(v140 + 32);
        v143 = v141 & ~v142;
        if (((*(v140 + 56 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143) & 1) == 0)
        {
          break;
        }

        v144 = ~v142;
        while (1)
        {
          v145 = (*(v140 + 48) + 16 * v143);
          v146 = *v145 == v136 && v145[1] == v135;
          if (v146 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v143 = (v143 + 1) & v144;
          if (((*(v140 + 56 + ((v143 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v143) & 1) == 0)
          {
            goto LABEL_115;
          }
        }

        v132 = v220;
        v127 = i;
      }

LABEL_115:

      v147 = v225;
      v148 = swift_isUniquelyReferenced_nonNull_native();
      v149 = v147;
      v234 = v147;
      if ((v148 & 1) == 0)
      {
        sub_21870B65C(0, v147[2] + 1, 1);
        v149 = v234;
      }

      v151 = v149[2];
      v150 = v149[3];
      if (v151 >= v150 >> 1)
      {
        sub_21870B65C((v150 > 1), v151 + 1, 1);
        v149 = v234;
      }

      v149[2] = v151 + 1;
      v225 = v149;
      v152 = &v149[2 * v151];
      v152[4] = v136;
      v152[5] = v135;
    }
  }

LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  sub_219BF79A4();
  __break(1u);
}

void sub_2198EAC50(uint64_t a1)
{
  v19 = a1;
  v2 = sub_219BED224();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager__offlineContentRequests;
  v7 = *(v1 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager__offlineContentRequests);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);

  *v5 = sub_219BF66A4();
  v8 = *(v3 + 104);
  v21 = *MEMORY[0x277D85200];
  v20 = v8;
  v8(v5);
  v9 = sub_219BED254();
  v10 = *(v3 + 8);
  v10(v5, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v18 = *(v7 + 16);

  v11 = *(v1 + v6);

  *v5 = sub_219BF66A4();
  v20(v5, v21, v2);
  v12 = sub_219BED254();
  v10(v5, v2);
  if ((v12 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v11 + 16) = v19;

  v13 = *(v1 + v6);

  *v5 = sub_219BF66A4();
  v20(v5, v21, v2);
  v14 = sub_219BED254();
  v10(v5, v2);
  if ((v14 & 1) == 0)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v15 = *(v13 + 16);

  v16 = sub_21941B138(v15, v18);

  if ((v16 & 1) == 0)
  {
    sub_2198E92A8();
    MEMORY[0x28223BE20](v17);
    *(&v18 - 2) = v1;
    sub_21870F5B4(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE30B4();
  }
}

void sub_2198EAF60()
{
  v1 = sub_219BED224();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager__contributors);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);

  *v4 = sub_219BF66A4();
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = sub_219BED254();
  (*(v2 + 8))(v4, v1);
  if ((v6 & 1) == 0)
  {
    goto LABEL_24;
  }

  v7 = *(v5 + 16);

  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_19:

    type metadata accessor for OfflineContentRequest(0);
    type metadata accessor for OfflineContentRequest.Source(0);
    sub_2198F3CC8(&qword_280ECA628, 255, type metadata accessor for OfflineContentRequest.Source, &unk_219C68B08);
    v23 = sub_219BF5964();

    v27[0] = v23;
    sub_2198F3064(0, &unk_280E8F1D0, type metadata accessor for OfflineContentRequest, MEMORY[0x277D83940]);
    sub_2198F3D10(&qword_280E8F1B8, &unk_280E8F1D0, type metadata accessor for OfflineContentRequest, MEMORY[0x277D83970]);
    v24 = sub_219BF56E4();

    sub_2198EAC50(v24);
    return;
  }

  v9 = v7 + 32;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_218718690(v9, v27);
    v11 = v28;
    v12 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v12 + 8))(v11, v12);
    sub_219BE2184();

    v13 = v26;
    v14 = *(v26 + 16);
    v15 = v10[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v16 <= v10[3] >> 1)
    {
      if (*(v13 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v18 = v15 + v14;
      }

      else
      {
        v18 = v15;
      }

      v10 = sub_2191F6708(isUniquelyReferenced_nonNull_native, v18, 1, v10);
      if (*(v13 + 16))
      {
LABEL_15:
        v19 = (v10[3] >> 1) - v10[2];
        type metadata accessor for OfflineContentRequest(0);
        if (v19 < v14)
        {
          goto LABEL_22;
        }

        swift_arrayInitWithCopy();

        if (v14)
        {
          v20 = v10[2];
          v21 = __OFADD__(v20, v14);
          v22 = v20 + v14;
          if (v21)
          {
            goto LABEL_23;
          }

          v10[2] = v22;
        }

        goto LABEL_5;
      }
    }

    if (v14)
    {
      goto LABEL_21;
    }

LABEL_5:
    __swift_destroy_boxed_opaque_existential_1(v27);
    v9 += 40;
    if (!--v8)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_2198EB3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for OfflineContentRequest(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198F30C8(a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload <= 1)
  {
    v8 = &unk_280E8F880;
    v9 = "articleID options source ";
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v8 = &qword_280E8F8B0;
    v9 = "issueID options source ";
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v8 = &unk_280E8F8A0;
    v9 = "puzzleID options source ";
  }

  else
  {
    v8 = &unk_280E8F890;
    v9 = "recipeID options source ";
  }

  sub_218950608(0, v8, v9);
  return sub_2198F3260(&v6[*(v10 + 64)], a2, type metadata accessor for OfflineContentRequest.Source);
}

uint64_t sub_2198EB4D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for OfflineContentRequest(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2198F30C8(a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *v6;
  v8 = v6[1];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = &qword_280E8F8B0;
      v11 = "issueID options source ";
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v10 = &unk_280E8F8A0;
      v11 = "puzzleID options source ";
    }

    else
    {
      v10 = &unk_280E8F890;
      v11 = "recipeID options source ";
    }

    goto LABEL_9;
  }

  v10 = &unk_280E8F880;
  v11 = "articleID options source ";
  if (!EnumCaseMultiPayload)
  {
LABEL_9:
    sub_218950608(0, v10, v11);
    v17 = v6 + *(v18 + 64);
    goto LABEL_10;
  }

  sub_218950608(0, &unk_280E8F880, "articleID options source ");
  v13 = v6 + *(v12 + 64);
  v14 = sub_219BF53D4();

  v15 = NDAudioContentIDFromArticleID();

  v9 = sub_219BF5414();
  v8 = v16;

  v17 = v13;
LABEL_10:
  result = sub_219242288(v17, type metadata accessor for OfflineContentRequest.Source);
  *a2 = v9;
  a2[1] = v8;
  return result;
}

void sub_2198EB664(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  v5 = sub_2198E9230();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_218A2DB54;
  *(v6 + 24) = v4;
  v8[4] = sub_218807D28;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_218793E0C;
  v8[3] = &block_descriptor_183;
  v7 = _Block_copy(v8);

  [v5 tickleWithQualityOfService:25 completion:v7];
  _Block_release(v7);
}

void *sub_2198EB780(uint64_t a1, uint64_t a2)
{
  v5 = sub_219BE6234();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager_downloadMonitors);

  sub_219BE1AB4();
  swift_beginAccess();
  v10 = *(v9 + 16);
  if (*(v10 + 16) && (v11 = sub_21870F700(a1, a2), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    type metadata accessor for OfflineDownloadMonitor();
    v13 = swift_allocObject();
    (*(v6 + 104))(v8, *MEMORY[0x277D6D560], v5);
    sub_2198F3064(0, &qword_280EE7AF8, MEMORY[0x277D6D578], MEMORY[0x277D6CB78]);
    swift_allocObject();
    v13[4] = sub_219BE2174();
    v16 = 0;
    sub_21870F5B4(0, &qword_280EE7AB0, MEMORY[0x277D839F8], MEMORY[0x277D6CB78]);
    swift_allocObject();
    v13[5] = sub_219BE2174();
    v13[2] = a1;
    v13[3] = a2;
    swift_bridgeObjectRetain_n();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v9 + 16);
    *(v9 + 16) = 0x8000000000000000;
    sub_21948BEE4(v13, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v9 + 16) = v16;
  }

  swift_endAccess();
  sub_219BE1AC4();

  return v13;
}

id sub_2198EB9EC()
{
  v1 = [objc_msgSend(*(v0 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager_contentContext) appConfigurationManager)];
  swift_unknownObjectRelease();
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 offlineDownloadsConfig];
    swift_unknownObjectRelease();
    if (v2)
    {
      v3 = v2;
      v4 = [v3 minDeviceStorage];
      v5 = [v3 maxDownloadStorage];
      v6 = [objc_allocWithZone(MEMORY[0x277D31408]) initWithMinDeviceStorage:v4 maxDownloadStorage:v5];

      return v6;
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v8 = [objc_opt_self() defaultLimits];

  return v8;
}

void sub_2198EBB34()
{
  v0 = sub_219BED224();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);

  *v3 = sub_219BF66A4();
  (*(v1 + 104))(v3, *MEMORY[0x277D85200], v0);
  v4 = sub_219BED254();
  (*(v1 + 8))(v3, v0);
  if ((v4 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_219BE2184();

  v5 = v21;
  v6 = *(v21 + 16);
  if (v6)
  {
    v7 = sub_21947D1C0(*(v21 + 16), 0);
    v8 = sub_2194ABD64(&v20, v7 + 4, v6, v5);
    sub_21892DE98(v20);
    if (v8 == v6)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

LABEL_6:
  v9 = sub_219BF5264();

  v10 = 0;
  v11 = 0;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = v10;
LABEL_15:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v18 = *(*(v9 + 56) + ((v16 << 9) | (8 * v17)));
    v19 = __OFADD__(v11, v18);
    v11 += v18;
    if (v19)
    {
      __break(1u);
LABEL_18:

      return;
    }
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {
      goto LABEL_18;
    }

    v14 = *(v9 + 64 + 8 * v16);
    ++v10;
    if (v14)
    {
      v10 = v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

id sub_2198EBDE0(uint64_t a1)
{
  v2 = sub_2198EB9EC();
  result = [*(a1 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager_contentContext) contentHostDirectoryURL];
  if (result)
  {
    v4 = result;
    v5 = [result fc_fileSystemFreeSize];
    if ([v2 minDeviceStorage] >= v5)
    {
      if (qword_280E8D8C0 != -1)
      {
        swift_once();
      }

      v43 = qword_280F61780;
      sub_2186F20D4(0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_219C09EC0;
      v22 = objc_opt_self();
      v23 = [v22 stringFromByteCount:v5 countStyle:0];
      v24 = sub_219BF5414();
      v26 = v25;

      v27 = MEMORY[0x277D837D0];
      *(v21 + 56) = MEMORY[0x277D837D0];
      v28 = sub_2186FC3BC();
      *(v21 + 64) = v28;
      *(v21 + 32) = v24;
      *(v21 + 40) = v26;
      v29 = [v22 stringFromByteCount:objc_msgSend(v2 countStyle:{sel_minDeviceStorage), 0}];
      v30 = sub_219BF5414();
      v32 = v31;

      *(v21 + 96) = v27;
      *(v21 + 104) = v28;
      *(v21 + 72) = v30;
      *(v21 + 80) = v32;
      v33 = sub_219BF6214();
      sub_219BE5314("available device storage has reached minimum, available=%{public}@, minimum=%{public}@", 86, 2, &dword_2186C1000, v43, v33, v21);
    }

    else
    {
      sub_2198EBB34();
      v7 = v6;
      if ([v2 maxDownloadStorage] >= v6)
      {
        if (qword_280E8D8C0 != -1)
        {
          swift_once();
        }

        v35 = qword_280F61780;
        sub_2186F20D4(0);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_219C09BA0;
        v37 = [objc_opt_self() stringFromByteCount:v7 countStyle:0];
        v38 = sub_219BF5414();
        v40 = v39;

        *(v36 + 56) = MEMORY[0x277D837D0];
        *(v36 + 64) = sub_2186FC3BC();
        *(v36 + 32) = v38;
        *(v36 + 40) = v40;
        v41 = sub_219BF6214();
        sub_219BE5314("download storage is within limits, used=%{public}@", 50, 2, &dword_2186C1000, v35, v41, v36);
        v34 = 0;
        goto LABEL_14;
      }

      if (qword_280E8D8C0 != -1)
      {
        swift_once();
      }

      v42 = qword_280F61780;
      sub_2186F20D4(0);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_219C09EC0;
      v9 = objc_opt_self();
      v10 = [v9 stringFromByteCount:v7 countStyle:0];
      v11 = sub_219BF5414();
      v13 = v12;

      v14 = MEMORY[0x277D837D0];
      *(v8 + 56) = MEMORY[0x277D837D0];
      v15 = sub_2186FC3BC();
      *(v8 + 64) = v15;
      *(v8 + 32) = v11;
      *(v8 + 40) = v13;
      v16 = [v9 stringFromByteCount:objc_msgSend(v2 countStyle:{sel_maxDownloadStorage), 0}];
      v17 = sub_219BF5414();
      v19 = v18;

      *(v8 + 96) = v14;
      *(v8 + 104) = v15;
      *(v8 + 72) = v17;
      *(v8 + 80) = v19;
      v20 = sub_219BF6214();
      sub_219BE5314("download storage has reached maximum, used=%{public}@, maximum=%{public}@", 73, 2, &dword_2186C1000, v42, v20, v8);
    }

    v34 = 1;
LABEL_14:

    return v34;
  }

  __break(1u);
  return result;
}

double sub_2198EC1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_219BED174();
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED1D4();
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v15 = qword_280E8D8C0;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = qword_280F61780;
  v17 = sub_219BF6214();
  v18 = MEMORY[0x277D84F90];
  sub_219BE5314("will wait for contributors before performing cache lookups", 58, 2, &dword_2186C1000, v16, v17, MEMORY[0x277D84F90]);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v19 = sub_219BF66A4();
  v20 = swift_allocObject();
  v20[2] = a5;
  v20[3] = sub_218A2DB54;
  v20[4] = v14;
  aBlock[4] = sub_2198F3CBC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_64_0;
  v21 = _Block_copy(aBlock);
  v22 = a5;
  sub_219BED1A4();
  v28 = v18;
  sub_2198F3CC8(&qword_280E927E0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v23 = MEMORY[0x277D85198];
  sub_2198F3064(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2198F3D10(&qword_280E8EFA0, &qword_280E8EFB0, v23, MEMORY[0x277D83970]);
  sub_219BF7164();
  sub_219BF6654();
  _Block_release(v21);

  (*(v27 + 8))(v10, v8);
  (*(v25 + 8))(v13, v26);

  return result;
}

void sub_2198EC5A8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v89 = a3;
  v88 = a2;
  v94 = sub_219BED174();
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v92 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BED1D4();
  v91 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v90 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for OfflineContentRequest(0);
  v7 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v97 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v111 = (&v86 - v10);
  MEMORY[0x28223BE20](v11);
  v114 = (&v86 - v12);
  MEMORY[0x28223BE20](v13);
  v15 = (&v86 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v86 - v17;
  MEMORY[0x28223BE20](v19);
  v116 = &v86 - v20;
  v21 = sub_219BED224();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D8C0 != -1)
  {
    goto LABEL_75;
  }

  while (1)
  {
    v25 = qword_280F61780;
    v26 = sub_219BF6214();
    sub_219BE5314("did wait for contributors before performing cache lookups", 57, 2, &dword_2186C1000, v25, v26, MEMORY[0x277D84F90]);
    v27 = *(a1 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager__offlineContentRequests);
    v28 = sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);

    v106 = v28;
    *v24 = sub_219BF66A4();
    v29 = *(v22 + 104);
    v103 = *MEMORY[0x277D85200];
    v102 = v22 + 104;
    v101 = v29;
    v29(v24);
    LOBYTE(v28) = sub_219BED254();
    v30 = *(v22 + 8);
    v22 += 8;
    v104 = v24;
    v105 = v22;
    v100 = v30;
    v30(v24, v21);
    if ((v28 & 1) == 0)
    {
      __break(1u);

      sub_219242288(v15, type metadata accessor for OfflineContentRequest);
      __break(1u);
      return;
    }

    v95 = v18;
    v87 = v5;
    v18 = v27[2];

    v5 = MEMORY[0x277D84F90];
    v110 = *(v18 + 16);
    if (!v110)
    {
      break;
    }

    v99 = v21;
    v21 = 0;
    v109 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager_downloadedContentIDs;
    v98 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager__inFlightContentIDs;
    v96 = OBJC_IVAR____TtC7NewsUI221OfflineContentManager___hasExceededStorageLimits;
    v108 = v7;
    v107 = v18;
    while (v21 < *(v18 + 16))
    {
      v113 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v112 = *(v7 + 72);
      v31 = v116;
      sub_2198F30C8(v18 + v113 + v112 * v21, v116);
      v18 = a1;

      sub_219BE2184();

      v32 = aBlock[9];
      sub_2198F30C8(v31, v15);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v7 = *v15;
      v34 = v15[1];
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          sub_218950608(0, &unk_280E8F880, "articleID options source ");
          v54 = v15 + *(v53 + 64);
          v55 = sub_219BF53D4();

          v22 = NDAudioContentIDFromArticleID();

          v7 = sub_219BF5414();
          v34 = v56;

          v38 = v54;
          goto LABEL_18;
        }

        v35 = &unk_280E8F880;
        v36 = "articleID options source ";
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v35 = &qword_280E8F8B0;
        v36 = "issueID options source ";
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v35 = &unk_280E8F8A0;
        v36 = "puzzleID options source ";
      }

      else
      {
        v35 = &unk_280E8F890;
        v36 = "recipeID options source ";
      }

      sub_218950608(0, v35, v36);
      v38 = v15 + *(v37 + 64);
LABEL_18:
      sub_219242288(v38, type metadata accessor for OfflineContentRequest.Source);
      if (*(v32 + 16))
      {
        sub_219BF7AA4();
        sub_219BF5524();
        v39 = sub_219BF7AE4();
        v40 = -1 << *(v32 + 32);
        v22 = v39 & ~v40;
        if ((*(v32 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v24 = ~v40;
          do
          {
            v41 = (*(v32 + 48) + 16 * v22);
            v42 = *v41 == v7 && v41[1] == v34;
            if (v42 || (sub_219BF78F4() & 1) != 0)
            {
              goto LABEL_5;
            }

            v22 = (v22 + 1) & v24;
          }

          while (((*(v32 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0);
        }
      }

      a1 = *(v18 + v98);

      v43 = sub_219BF66A4();
      v44 = v104;
      *v104 = v43;
      v24 = v99;
      v101(v44, v103, v99);
      v45 = sub_219BED254();
      v100(v44, v24);
      if ((v45 & 1) == 0)
      {
        goto LABEL_74;
      }

      v46 = *(a1 + 16);

      v47 = v114;
      sub_2198F30C8(v116, v114);
      v48 = swift_getEnumCaseMultiPayload();
      v50 = *v47;
      v49 = v47[1];
      if (v48 <= 1)
      {
        if (v48)
        {
          sub_218950608(0, &unk_280E8F880, "articleID options source ");
          v70 = v114 + *(v69 + 64);
          v71 = sub_219BF53D4();

          v22 = NDAudioContentIDFromArticleID();

          v50 = sub_219BF5414();
          v49 = v72;

          v58 = v70;
          goto LABEL_38;
        }

        v51 = &unk_280E8F880;
        v52 = "articleID options source ";
      }

      else if (v48 == 2)
      {
        v51 = &qword_280E8F8B0;
        v52 = "issueID options source ";
      }

      else if (v48 == 3)
      {
        v51 = &unk_280E8F8A0;
        v52 = "puzzleID options source ";
      }

      else
      {
        v51 = &unk_280E8F890;
        v52 = "recipeID options source ";
      }

      sub_218950608(0, v51, v52);
      v58 = v114 + *(v57 + 64);
LABEL_38:
      sub_219242288(v58, type metadata accessor for OfflineContentRequest.Source);
      if (*(v46 + 16))
      {
        sub_219BF7AA4();
        sub_219BF5524();
        v59 = sub_219BF7AE4();
        v60 = -1 << *(v46 + 32);
        v22 = v59 & ~v60;
        if ((*(v46 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
        {
          v24 = ~v60;
          while (1)
          {
            v61 = (*(v46 + 48) + 16 * v22);
            v62 = *v61 == v50 && v61[1] == v49;
            if (v62 || (sub_219BF78F4() & 1) != 0)
            {
              break;
            }

            v22 = (v22 + 1) & v24;
            if (((*(v46 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_47;
            }
          }

LABEL_5:

          a1 = v18;
          v7 = v108;
          v18 = v107;
          goto LABEL_6;
        }
      }

LABEL_47:

      v24 = v111;
      sub_2198F30C8(v116, v111);
      v63 = swift_getEnumCaseMultiPayload();

      v64 = *(v24 + 16);
      if (v63 <= 1)
      {
        a1 = v18;
        v7 = v108;
        v67 = &unk_280E8F880;
        v68 = "articleID options source ";
LABEL_55:
        sub_218950608(0, v67, v68);
        v18 = v107;
        goto LABEL_58;
      }

      a1 = v18;
      v7 = v108;
      if (v63 == 2)
      {
        v67 = &qword_280E8F8B0;
        v68 = "issueID options source ";
        goto LABEL_55;
      }

      v18 = v107;
      if (v63 == 3)
      {
        v65 = &unk_280E8F8A0;
        v66 = "puzzleID options source ";
      }

      else
      {
        v65 = &unk_280E8F890;
        v66 = "recipeID options source ";
      }

      sub_218950608(0, v65, v66);
LABEL_58:
      sub_219242288(v111 + *(v73 + 64), type metadata accessor for OfflineContentRequest.Source);
      if ((v64 & 0x10) == 0 || (, sub_219BE2E84(), , (aBlock[0] & 1) == 0) && (v76 = sub_2198EBDE0(a1), v24 = v96, LOBYTE(aBlock[0]) = v76 & 1, , sub_219BE2E94(), , , sub_219BE2E84(), , (aBlock[0] & 1) == 0))
      {
        sub_2198F3260(v116, v97, type metadata accessor for OfflineContentRequest);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v5;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C340E0(0, *(v5 + 16) + 1, 1);
          v5 = v118;
        }

        v24 = *(v5 + 16);
        v75 = *(v5 + 24);
        if (v24 >= v75 >> 1)
        {
          sub_218C340E0((v75 > 1), v24 + 1, 1);
          v5 = v118;
        }

        *(v5 + 16) = v24 + 1;
        sub_2198F3260(v97, v5 + v113 + v24 * v112, type metadata accessor for OfflineContentRequest);
        goto LABEL_7;
      }

LABEL_6:
      sub_219242288(v116, type metadata accessor for OfflineContentRequest);
LABEL_7:
      if (++v21 == v110)
      {
        goto LABEL_67;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    swift_once();
  }

LABEL_67:

  v24 = dispatch_group_create();
  v77 = *(v5 + 16);
  v15 = v95;
  if (v77)
  {
    v18 = 0;
    while (v18 < *(v5 + 16))
    {
      sub_2198F30C8(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v15);
      sub_2198ED474(v15, v24, a1);
      ++v18;
      sub_219242288(v15, type metadata accessor for OfflineContentRequest);
      if (v77 == v18)
      {
        goto LABEL_71;
      }
    }

    goto LABEL_73;
  }

LABEL_71:

  v78 = sub_219BF66A4();
  v79 = swift_allocObject();
  v80 = v89;
  *(v79 + 16) = v88;
  *(v79 + 24) = v80;
  aBlock[4] = sub_218BBF788;
  aBlock[5] = v79;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_70_0;
  v81 = _Block_copy(aBlock);

  v82 = v90;
  sub_219BED1A4();
  v118 = MEMORY[0x277D84F90];
  sub_2198F3CC8(&qword_280E927E0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v83 = MEMORY[0x277D85198];
  sub_2198F3064(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_2198F3D10(&qword_280E8EFA0, &qword_280E8EFB0, v83, MEMORY[0x277D83970]);
  v84 = v92;
  v85 = v94;
  sub_219BF7164();
  sub_219BF6654();

  _Block_release(v81);
  (*(v93 + 8))(v84, v85);
  (*(v91 + 8))(v82, v87);
}

uint64_t sub_2198ED474(uint64_t a1, NSObject *a2, uint64_t a3)
{
  v6 = type metadata accessor for OfflineContentRequest(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &aBlock - v11;
  dispatch_group_enter(a2);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2198F30C8(a1, v12);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = v13;
  sub_2198F3260(v12, v15 + v14, type metadata accessor for OfflineContentRequest);
  sub_2198F30C8(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_218950608(0, &unk_280E8F880, "articleID options source ");
      v18 = &v9[*(v37 + 64)];
      v38 = *(a3 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager_localArticleCacheLookupService);
      v39 = a2;
      v21 = sub_219BF53D4();

      v40 = swift_allocObject();
      *(v40 + 16) = sub_2198F3D68;
      *(v40 + 24) = v15;
      v47 = sub_2198F3F18;
      v48 = v40;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_2198EE4BC;
      v46 = &block_descriptor_98;
      v23 = _Block_copy(&aBlock);

      v24 = [v38 fetchCachedAudioWithArticleID:v21 completionHandler:v23];
    }

    else
    {
      sub_218950608(0, &unk_280E8F880, "articleID options source ");
      v18 = &v9[*(v25 + 64)];
      v26 = *(a3 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager_localArticleCacheLookupService);
      v27 = a2;
      v21 = sub_219BF53D4();

      v28 = swift_allocObject();
      *(v28 + 16) = sub_2198F3D68;
      *(v28 + 24) = v15;
      v47 = sub_2198F3DF4;
      v48 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_2198EE4BC;
      v46 = &block_descriptor_104;
      v23 = _Block_copy(&aBlock);

      v24 = [v26 fetchCachedArticleWithID:v21 completionHandler:v23];
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_218950608(0, &qword_280E8F8B0, "issueID options source ");
    v18 = &v9[*(v29 + 64)];
    v30 = *(a3 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager_localIssueCacheLookupService);
    v31 = a2;
    v21 = sub_219BF53D4();

    v32 = swift_allocObject();
    *(v32 + 16) = sub_2198F3D68;
    *(v32 + 24) = v15;
    v47 = sub_2198F3F18;
    v48 = v32;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_2198EE4BC;
    v46 = &block_descriptor_92_0;
    v23 = _Block_copy(&aBlock);

    v24 = [v30 fetchCachedIssueWithID:v21 completionHandler:v23];
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_218950608(0, &unk_280E8F8A0, "puzzleID options source ");
    v18 = &v9[*(v17 + 64)];
    v19 = *(a3 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager_localPuzzleCacheLookupService);
    v20 = a2;
    v21 = sub_219BF53D4();

    v22 = swift_allocObject();
    *(v22 + 16) = sub_2198F3D68;
    *(v22 + 24) = v15;
    v47 = sub_2198F3F18;
    v48 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_2198EE4BC;
    v46 = &block_descriptor_86_0;
    v23 = _Block_copy(&aBlock);

    v24 = [v19 fetchCachedPuzzleWithID:v21 completionHandler:v23];
  }

  else
  {
    sub_218950608(0, &unk_280E8F890, "recipeID options source ");
    v18 = &v9[*(v33 + 64)];
    v34 = *(a3 + OBJC_IVAR____TtC7NewsUI221OfflineContentManager_localRecipeCacheLookupService);
    v35 = a2;
    v21 = sub_219BF53D4();

    v36 = swift_allocObject();
    *(v36 + 16) = sub_2198F3D68;
    *(v36 + 24) = v15;
    v47 = sub_2198F3F18;
    v48 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v44 = 1107296256;
    v45 = sub_2198EE4BC;
    v46 = &block_descriptor_80_1;
    v23 = _Block_copy(&aBlock);

    v24 = [v34 fetchCachedRecipeWithID:v21 completionHandler:v23];
  }

  v41 = v24;

  _Block_release(v23);
  swift_unknownObjectRelease();

  return sub_219242288(v18, type metadata accessor for OfflineContentRequest.Source);
}

double sub_2198EDB34(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for OfflineContentRequest(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  sub_218FECC68(a1, v22);
  sub_2198F30C8(a6, v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v13 + 80) + 72) & ~*(v13 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  *(v16 + 32) = a3;
  v17 = v22[1];
  *(v16 + 40) = v22[0];
  *(v16 + 56) = v17;
  sub_2198F3260(v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for OfflineContentRequest);
  *(v16 + ((v14 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v18 = a4;

  v19 = a3;
  v20 = a2;
  sub_219BE3494();

  return result;
}

void sub_2198EDCBC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v59 = a6;
  v60 = a5;
  v9 = sub_219BE6234();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BED224();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v18 = Strong;
  if (a3)
  {

LABEL_4:
    dispatch_group_leave(a1);
    return;
  }

  sub_218FECC68(a4, &v64);
  if (!v65)
  {

    sub_218806FD0(&v64);
    goto LABEL_4;
  }

  v53 = v10;
  sub_218751558(&v64, v66);
  if ((sub_2192412C8() & 0x10) != 0)
  {

    sub_219BE2E84();

    if (v64 & 1) != 0 || (LOBYTE(v64) = sub_2198EBDE0(v18) & 1, , sub_219BE2E94(), , , sub_219BE2E84(), , (v64))
    {

      __swift_destroy_boxed_opaque_existential_1(v66);
      goto LABEL_4;
    }
  }

  v50 = a1;

  sub_219BE2184();
  v57 = v64;
  sub_21870F5B4(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  v58 = v14;
  *(inited + 32) = sub_219242618();
  *(inited + 40) = v20;
  v21 = sub_218845F78(inited);
  swift_setDeallocating();
  sub_2189AD3D8(inited + 32);
  sub_2194796A0(v21, v57);
  *&v64 = v22;
  sub_2198F3CC8(&qword_280E8E9C0, 255, sub_2186E2394, MEMORY[0x277D83B60]);
  sub_219BE21B4();

  v23 = v58;
  v51 = sub_219242618();
  v52 = v24;
  sub_2186D1230(v66, &v64);
  v25 = *&v18[OBJC_IVAR____TtC7NewsUI221OfflineContentManager__interestTokensByContentID];
  v26 = sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);

  *v16 = sub_219BF66A4();
  v28 = v23 + 104;
  v27 = *(v23 + 104);
  v55 = *MEMORY[0x277D85200];
  v57 = v27;
  (v27)(v16);
  v29 = sub_219BED254();
  v31 = *(v23 + 8);
  v30 = v23 + 8;
  v54 = v31;
  v31(v16, v13);
  if ((v29 & 1) == 0)
  {
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v58 = v30;
  v56 = v26;
  v32 = *(v25 + 16);
  v63 = v32;
  if (v65)
  {
    sub_218751558(&v64, v62);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = v32;
    sub_21948CB08(v62, v51, v52, isUniquelyReferenced_nonNull_native);

    v34 = v61;
    v63 = v61;
  }

  else
  {

    sub_218806FD0(&v64);
    sub_2195EA4A0(v51, v52, v62);

    sub_218806FD0(v62);
    v34 = v63;
  }

  v35 = v55;
  *v16 = sub_219BF66A4();
  v57(v16, v35, v13);
  v36 = sub_219BED254();
  v54(v16, v13);
  if ((v36 & 1) == 0)
  {
    goto LABEL_23;
  }

  *(v25 + 16) = v34;

  v37 = sub_219242618();
  v52 = v38;
  v51 = v37;
  if (v59)
  {
    v59 = [v59 storageSize];
  }

  else
  {
    v59 = 0;
  }

  v39 = *&v18[OBJC_IVAR____TtC7NewsUI221OfflineContentManager__storageSizeByContentID];

  *v16 = sub_219BF66A4();
  v40 = v55;
  v57(v16, v55, v13);
  v41 = sub_219BED254();
  v49 = v28;
  v42 = v54;
  v54(v16, v13);
  if ((v41 & 1) == 0)
  {
    goto LABEL_24;
  }

  v43 = *(v39 + 16);

  v44 = swift_isUniquelyReferenced_nonNull_native();
  *&v64 = v43;
  sub_21948EFEC(v59, v51, v52, v44);

  v45 = v64;
  *v16 = sub_219BF66A4();
  v57(v16, v40, v13);
  LOBYTE(v43) = sub_219BED254();
  v42(v16, v13);
  if (v43)
  {
    *(v39 + 16) = v45;

    v46 = sub_219242618();
    sub_2198EB780(v46, v47);

    v48 = v53;
    (*(v53 + 104))(v12, *MEMORY[0x277D6D570], v9);
    sub_219BE2164();
    (*(v48 + 8))(v12, v9);
    *&v64 = 0x3FF0000000000000;
    sub_219BE21B4();

    __swift_destroy_boxed_opaque_existential_1(v66);

    a1 = v50;
    goto LABEL_4;
  }

LABEL_25:
  __break(1u);
}