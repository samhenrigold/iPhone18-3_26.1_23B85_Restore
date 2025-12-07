unint64_t sub_22049BB80(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

void *sub_22049BBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v35 = a5;
  v36 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v32 = a7;
  v33 = a10;
  v17 = __swift_allocate_boxed_opaque_existential_1(&v31);
  (*(*(a7 - 8) + 32))(v17, a2, a7);
  v29 = a6;
  v30 = a9;
  v18 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a6 - 8) + 32))(v18, a3, a6);
  v19 = swift_allocObject();
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  v21 = MEMORY[0x28223BE20](v20, v20);
  v23 = (&v28[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v23;
  v19[15] = type metadata accessor for WatchlistSwitcherStyler();
  v19[16] = &off_283412140;
  v19[12] = v25;
  sub_220457328(&v34, (v19 + 2));
  sub_220457328(&v31, (v19 + 7));
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v19;
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

unint64_t sub_22049BDF0()
{
  result = qword_2812817C8[0];
  if (!qword_2812817C8[0])
  {
    type metadata accessor for StockSearchSectionHeaderViewRenderer();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812817C8);
  }

  return result;
}

unint64_t sub_22049BE44(uint64_t a1)
{
  result = sub_22049BDF0();
  *(a1 + 8) = result;
  return result;
}

void *sub_22049BE6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204951A0(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220495C18(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220497038(0, &unk_281297668, MEMORY[0x277D6E388]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  if (!v6)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_220448630(&qword_281298BF0, 255, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297770, MEMORY[0x277D6E170], 1);
  result = sub_2208884DC();
  if (v5)
  {
    sub_220496720(0);
    v4 = objc_allocWithZone(v3);
    return sub_22088D54C();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_22049C0DC(void *a1)
{
  v2 = sub_22088D7EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_22088D80C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  sub_220497038(0, &qword_281297698, MEMORY[0x277D6E380]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v17 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204951A0(0);
  result = sub_2208884CC();
  if (result)
  {
    v16 = result;
    (*(v11 + 104))(v14, *MEMORY[0x277D6E378], v10);
    *v6 = 0;
    (*(v3 + 104))(v6, *MEMORY[0x277D6E828], v2);
    sub_22088D7FC();
    v17[1] = v16;
    sub_220497038(0, &unk_281297668, MEMORY[0x277D6E388]);
    swift_allocObject();
    return sub_22088CDAC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22049C36C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204951A0(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220495C18(0);
    result = sub_2208884CC();
    if (result)
    {
      sub_2204968B0(0);
      v4 = objc_allocWithZone(v3);
      return sub_22088DC1C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22049C42C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812992F8, MEMORY[0x277D69430], 1);
  result = sub_2208884DC();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299270, MEMORY[0x277D69570], 1);
  result = sub_2208884DC();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299308, MEMORY[0x277D693B0], 1);
  result = sub_2208884DC();
  if (v5)
  {
    type metadata accessor for StockSearchBlueprintModifierFactory();
    v3 = swift_allocObject();
    sub_220457328(&v8, v3 + 16);
    sub_220457328(&v6, v3 + 56);
    sub_220457328(&v4, v3 + 96);
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_22049C588(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296850, MEMORY[0x277D33678], 1);
  result = sub_2208884DC();
  if (v4)
  {
    sub_220584CC4(0, &qword_281296890, sub_2204971CC, &type metadata for StockSearchOfflineModel, MEMORY[0x277D33538]);
    v3 = objc_allocWithZone(v2);
    return sub_2208903DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22049C650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22049C6B4(uint64_t a1)
{
  if (!qword_28128D0F0[0])
  {
    v2 = type metadata accessor for StockSearchBlueprintModifierFactory();
    v3 = sub_220448630(&qword_281281E80, 255, type metadata accessor for StockSearchBlueprintModifierFactory, &unk_2208B9464);
    v5 = type metadata accessor for StockSearchInteractor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_28128D0F0);
    }
  }
}

uint64_t sub_22049C764(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_22049C844@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  v35 = MEMORY[0x277D85248];
  sub_220498908(0, &qword_28127E7D0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v31 - v4;
  sub_2204753E0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22049CD4C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22049CDFC(0);
  v18 = *(v17 - 8);
  v32 = v17;
  v33 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 112), *(v1 + 136));
  sub_22088600C();
  swift_getKeyPath();
  v22 = MEMORY[0x277CBCBE0];
  sub_2204988C0(&qword_281296E10, 255, sub_2204753E0, MEMORY[0x277CBCBE0]);
  sub_22088EB9C();

  (*(v7 + 8))(v10, v6);
  sub_2204988C0(&qword_281296E40, 255, sub_22049CD4C, MEMORY[0x277CBCB20]);
  sub_2204988C0(&qword_2812992E8, 255, MEMORY[0x277D69488], MEMORY[0x277D69490]);
  sub_22088EBCC();
  (*(v13 + 8))(v16, v12);
  sub_22046D5B4();
  v23 = sub_220891D0C();
  v36 = v23;
  v24 = sub_220891CEC();
  v25 = v31;
  (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
  sub_22049CE94(0);
  v26 = v34;
  v34[3] = v27;
  v26[4] = sub_2204988C0(&qword_281296DD0, 255, sub_22049CE94, MEMORY[0x277CBCD60]);
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_2204988C0(&qword_281296E20, 255, sub_22049CDFC, v22);
  sub_2204988C0(&qword_28127E7C8, 255, sub_22046D5B4, MEMORY[0x277D85228]);
  v28 = v25;
  v29 = v32;
  sub_22088EBAC();
  sub_22046ABA0(v28, &qword_28127E7D0, v35);

  return (*(v33 + 8))(v21, v29);
}

void sub_22049CD4C(uint64_t a1)
{
  if (!qword_281296E38)
  {
    sub_2204753E0(255);
    sub_220885D4C();
    sub_22046AA04(&qword_281296E10, 255, sub_2204753E0, MEMORY[0x277CBCBE0]);
    v1 = sub_22088EB2C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296E38);
    }
  }
}

void sub_22049CDFC(uint64_t a1)
{
  if (!qword_281296E18)
  {
    sub_22049CD4C(255);
    sub_22046AA04(&qword_281296E40, 255, sub_22049CD4C, MEMORY[0x277CBCB20]);
    v1 = sub_22088EB3C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296E18);
    }
  }
}

uint64_t sub_22049CED0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for StockSearchRouter();
  result = sub_2208884CC();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &off_283419F40;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22049CF44(void *a1)
{
  sub_22046DA2C(a1, v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC(0);
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22088731C();
    result = sub_2208884CC();
    if (result)
    {
      v4 = result;
      type metadata accessor for StockSearchRouter();
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_220457328(v6, v5 + 24);
      *(v5 + 64) = v3;
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

void *sub_22049D050(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204951A0(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220495904(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297378, MEMORY[0x277D6E8F0], 0);
  result = sub_22088849C();
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297128, MEMORY[0x277D6EBC0], 1);
  result = sub_2208884DC();
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220497038(0, &unk_281297668, MEMORY[0x277D6E388]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088B84C();
  result = sub_22088848C();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  if (!v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    sub_220448630(&qword_281298BF0, 255, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_220496CE8(0);
    v4 = objc_allocWithZone(v3);
    return sub_22088C7AC();
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_22049D378@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220495904(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = sub_22088BFCC();

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C30, MEMORY[0x277D6D908], 1);
  result = sub_2208884DC();
  if (!v14)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  sub_220457328(&v13, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22047DC18();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812971C0, MEMORY[0x277D6EB08], 1);
  result = sub_22088849C();
  if (v12)
  {
    sub_22088D41C();
    sub_220457328(&v11, &v13);
    sub_22046DA2C(v15, v10);
    v6 = swift_allocObject();
    sub_220457328(v10, v6 + 16);
    *(v6 + 56) = v5;
    v7 = v5;
    v8 = sub_22088D40C();
    result = __swift_destroy_boxed_opaque_existential_1(v15);
    v9 = MEMORY[0x277D6E690];
    *a2 = v8;
    a2[1] = v9;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22049D58C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_22049D5CC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for StockSearchCompositionalLayoutOptionsProvider();
  v3 = swift_allocObject();
  a1[3] = v2;
  result = sub_220448630(&qword_28127F588, 255, type metadata accessor for StockSearchCompositionalLayoutOptionsProvider, &protocol conformance descriptor for StockSearchCompositionalLayoutOptionsProvider);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_22049D678(void *a1)
{
  sub_22047DD60(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_220899920;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204970D8(0);
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = sub_220448630(&qword_281297468, 255, sub_2204970D8, MEMORY[0x277D6E800]);
    *(v2 + 32) = v4;
    *(v2 + 40) = v5;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_22088CA2C();
    result = sub_22088848C();
    if (result)
    {
      v6 = MEMORY[0x277D6E168];
      *(v2 + 48) = result;
      *(v2 + 56) = v6;
      sub_22088B84C();
      swift_allocObject();
      return sub_22088B83C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22049D7BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220495904(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204951A0(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    sub_220448630(&qword_281298BF0, 255, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_2204970D8(0);
    swift_allocObject();
    return sub_22088D74C();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22049D96C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220495904(0);
  result = sub_2208884CC();
  if (result)
  {
    sub_22088BFCC();

    sub_22088CA2C();
    swift_allocObject();
    return sub_22088CA1C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22049D9F4()
{
  if (!qword_281297130)
  {
    v0 = sub_22088E19C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297130);
    }
  }
}

uint64_t sub_22049DA7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unsigned int *a4, uint64_t (*a5)(char *))
{
  v7 = (a3)(0, a2);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v14 - v10;
  (*(v12 + 104))(&v14 - v10, *a4, v9);
  return a5(v11);
}

uint64_t sub_22049DB58(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220496CE8(0);
  if (sub_2208884CC())
  {
    sub_220448630(&unk_2812977D0, 255, sub_220496CE8, MEMORY[0x277D6DFD0]);
  }

  return sub_22088D75C();
}

void sub_22049DC3C(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockSearchViewController(0);
  v2 = sub_2208884CC();
  swift_unknownObjectWeakAssign();
}

uint64_t sub_22049DCBC(uint64_t a1, void *a2)
{
  sub_22049DE40(0);
  swift_allocObject();
  sub_22088D4FC();
  sub_22049DF34(0);
  swift_allocObject();
  sub_220448630(&qword_281297570, 255, sub_22049DE40, MEMORY[0x277D6E730]);
  sub_22088CE4C();
  sub_22088B6CC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204969F8(0);
  result = sub_2208884CC();
  if (result)
  {
    swift_allocObject();
    sub_220448630(&qword_281297260, 255, sub_2204969F8, MEMORY[0x277D6EAC8]);
    sub_22088CE4C();
    sub_22088B6CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22049DE40(uint64_t a1)
{
  if (!qword_281297568)
  {
    type metadata accessor for StockSearchSectionDescriptor(255);
    type metadata accessor for StockSearchModel(255);
    sub_220448630(qword_281286DF0, 255, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    sub_220448630(&qword_281291EB0, 255, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
    v1 = sub_22088D50C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297568);
    }
  }
}

void sub_22049DF34(uint64_t a1)
{
  if (!qword_281297630)
  {
    type metadata accessor for StockSearchSectionDescriptor(255);
    type metadata accessor for StockSearchModel(255);
    sub_220448630(qword_281286DF0, 255, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    sub_220448630(&qword_281291EB0, 255, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
    v1 = sub_22088CE5C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297630);
    }
  }
}

void *sub_22049E028(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220495C18(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297378, MEMORY[0x277D6E8F0], 0);
  result = sub_22088849C();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockSearchBlueprintLayoutBuilder();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220496B64(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088D84C();
  result = sub_22088848C();
  if (result)
  {
    sub_2204969F8(0);
    swift_allocObject();
    return sub_22088DE3C();
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_22049E21C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28127F388, &protocol descriptor for StockSearchCellViewLayoutAttributesFactoryType, 1);
  result = sub_2208884DC();
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_28127F0B0, &protocol descriptor for StockSearchSectionHeaderViewLayoutAttributesFactoryType, 1);
    result = sub_2208884DC();
    if (v36)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
      v30[2] = v30;
      v4 = MEMORY[0x28223BE20](v3, v3);
      v6 = (v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6, v4);
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      v30[1] = v30;
      v9 = MEMORY[0x28223BE20](v8, v8);
      v11 = (v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11, v9);
      v13 = *v6;
      v14 = *v11;
      v15 = type metadata accessor for StockSearchCellViewLayoutAttributesFactory();
      v34[3] = v15;
      v34[4] = &off_283414248;
      v34[0] = v13;
      v16 = type metadata accessor for StockSearchSectionHeaderViewLayoutAttributesFactory();
      v32 = v16;
      v33 = &off_2834257F8;
      v31[0] = v14;
      type metadata accessor for StockSearchBlueprintLayoutBuilder();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v34, v15);
      v19 = MEMORY[0x28223BE20](v18, v18);
      v21 = (v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21, v19);
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
      v24 = MEMORY[0x28223BE20](v23, v23);
      v26 = (v30 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v27 + 16))(v26, v24);
      v28 = *v21;
      v29 = *v26;
      v17[5] = v15;
      v17[6] = &off_283414248;
      v17[2] = v28;
      v17[10] = v16;
      v17[11] = &off_2834257F8;
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

void *sub_22049E628@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281285DA0, &protocol descriptor for StockSearchCellViewStylerType, 1);
  result = sub_2208884DC();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for StockSearchCellViewStyler();
    v19[3] = v10;
    v19[4] = &off_2834168F8;
    v19[0] = v9;
    v11 = type metadata accessor for StockSearchCellViewLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_2834168F8;
    v12[2] = v18;
    v12[7] = MEMORY[0x277D84F98];
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_283414248;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_22049E884@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28127F848, &protocol descriptor for WatchlistSwitcherLayoutAttributesFactoryType, 1);
  result = sub_2208884DC();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for WatchlistSwitcherLayoutAttributesFactory();
    v19[3] = v10;
    v19[4] = &off_28341D790;
    v19[0] = v9;
    v11 = type metadata accessor for StockSearchSectionHeaderViewLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_28341D790;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_2834257F8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22049EB18(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockSearchViewController(0);
  result = sub_2208884CC();
  if (result)
  {
    return a3();
  }

  __break(1u);
  return result;
}

void sub_22049EB8C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockSearchViewController(0);
  if (!sub_2208884CC())
  {
    __break(1u);
    goto LABEL_7;
  }

  MEMORY[0x223D85DD0]();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
  v3 = sub_22088848C();
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = v3;
  sub_22088DC3C();
  sub_22088DC0C();
}

void *sub_22049EC8C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088B84C();
  sub_22088848C();
  sub_22088D56C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204970D8(0);
  if (sub_2208884CC())
  {
    sub_220448630(&qword_281297460, 255, sub_2204970D8, MEMORY[0x277D6E7F8]);
  }

  sub_22088D57C();
  v3 = sub_22088D51C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockSearchViewController(0);
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    sub_22088D14C();

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_220496CE8(0);
    sub_2208884CC();
    return sub_22088D52C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22049EE2C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220495C18(0);
  result = sub_2208884CC();
  if (result)
  {
    sub_220448630(&unk_2812978B8, 255, sub_220495C18, MEMORY[0x277D6DF30]);
    return sub_22088CD8C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_22049EEF0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &unk_2812972B0, MEMORY[0x277D6EA40], 1);
  result = sub_22088849C();
  if (v4)
  {
    __swift_project_boxed_opaque_existential_1(v3, v4);
    sub_22088DD8C();
    sub_22088D7CC();

    return __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22049EFC8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220496CE8(0);
  v4 = v3;
  result = sub_2208884CC();
  if (result)
  {
    v6 = result;
    a2[3] = v4;
    result = sub_220448630(&qword_2812977C8, 255, sub_220496CE8, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22049F074(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
  v3 = sub_22088848C();
  if (v3)
  {
    v4 = v3;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_220446A58(0, &qword_281297378, MEMORY[0x277D6E8F0], 0);
    sub_22088849C();
    if (v5)
    {
      sub_22088DEEC();
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

void sub_22049F19C(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockSearchViewController(0);
  v4 = sub_2208884CC();
  v3 = &off_2834174A8;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void sub_22049F230(void *a1)
{
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong setAutocorrectionType_];
  }

  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    [v3 setAutocapitalizationType_];
  }
}

uint64_t sub_22049F330()
{
  sub_22049F3B0(0);
  sub_220891C3C();
  sub_22049F4F8(0);
  sub_220891C3C();
  sub_22049F624(0);
  sub_220891C3C();
  sub_22049F750(0);
  return sub_220891C3C();
}

void sub_22049F3B0(uint64_t a1)
{
  if (!qword_281297948)
  {
    type metadata accessor for StockView();
    sub_22045BFDC(&qword_28127EE30, type metadata accessor for StockView, &unk_2208B4084);
    v1 = sub_22088C46C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297948);
    }
  }
}

uint64_t sub_22049F468(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_22049F4F8(uint64_t a1)
{
  if (!qword_281297938)
  {
    type metadata accessor for TodayView();
    sub_22045BFDC(&qword_28127EE20, type metadata accessor for TodayView, &unk_22089993C);
    v1 = sub_22088C46C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297938);
    }
  }
}

uint64_t sub_22049F5E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TodayView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22049F624(uint64_t a1)
{
  if (!qword_281297940)
  {
    type metadata accessor for StockListSectionHeaderView();
    sub_22045BFDC(&qword_281288A48, type metadata accessor for StockListSectionHeaderView, &unk_22089EFD4);
    v1 = sub_22088C46C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297940);
    }
  }
}

uint64_t sub_22049F710(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockListSectionHeaderView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22049F750(uint64_t a1)
{
  if (!qword_281297950)
  {
    type metadata accessor for EmptyListView();
    sub_22045BFDC(&qword_2812946F8, type metadata accessor for EmptyListView, &unk_2208A390C);
    v1 = sub_22088C46C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297950);
    }
  }
}

uint64_t sub_22049F808(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EmptyListView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22049F87C()
{
  v0 = sub_22088D61C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22049F9F4(0);
  v5 = *MEMORY[0x277D6E758];
  v6 = *(v1 + 104);
  v6(v4, v5, v0);
  sub_220891C2C();
  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_22057CBE0(0);
  v6(v4, v5, v0);
  sub_220891C2C();
  return (v7)(v4, v0);
}

void sub_22049F9F4(uint64_t a1)
{
  if (!qword_2812975B8)
  {
    type metadata accessor for StockListSectionHeaderView();
    sub_22045BF08(&qword_281288A48, type metadata accessor for StockListSectionHeaderView, &unk_22089EFD4);
    v1 = sub_22088D34C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812975B8);
    }
  }
}

uint64_t sub_22049FA8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22046DA2C(v2 + 104, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(v5 + 8);
  v7 = *(v6 + 8);
  v10 = v4;
  v11 = v5;
  __swift_allocate_boxed_opaque_existential_1(&v9);
  v7(a2, v4, v6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v2 + 104));
  sub_220457328(&v9, v2 + 104);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  return sub_22088D31C();
}

uint64_t sub_22049FBE4(void *a1)
{
  swift_beginAccess();
  sub_22046DA2C((v1 + 2), v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v5 = *(v4 + 8);
  v6 = *(v5 + 8);
  v9 = v3;
  v10 = v4;
  __swift_allocate_boxed_opaque_existential_1(&v8);
  v6(a1, v3, v5);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  sub_220457328(&v8, (v1 + 2));
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_project_boxed_opaque_existential_1(v1 + 7, v1[10]);
  return sub_22049FE48(a1);
}

uint64_t sub_22049FCE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 88);
  v8 = *(*v3 + 96);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 64), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476434(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_22049FE48(void *a1)
{
  swift_beginAccess();
  sub_22046DA2C((v1 + 2), v15);
  v3 = v16;
  v4 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v5 = *(v4 + 8);
  v6 = *(v5 + 8);
  v13 = v3;
  v14 = v4;
  __swift_allocate_boxed_opaque_existential_1(&v12);
  v6(a1, v3, v5);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  sub_220457328(&v12, (v1 + 2));
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v15);
  swift_beginAccess();
  v7 = v1[5];
  v8 = v1[6];
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v7);
  v9 = *(v8 + 48);
  v10 = a1;
  v9(a1, v7, v8);
  return swift_endAccess();
}

uint64_t sub_22049FF80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a3;
  v6 = sub_2208852DC();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*v3 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler);
  v11 = v10[3];
  v12 = v10[4];
  v13 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v14 = *(v11 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v18 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  (*(*(v12 + 8) + 8))(a1, v11, v17);
  v19 = sub_22088528C();
  v21 = MEMORY[0x28223BE20](v19, v20);
  (*(v14 + 16))(&v24 - v18, &v24 - v18, v11, v21);
  v22 = sub_22046BE88(&v24 - v18, v9, a2, v11, v12);
  result = (*(v14 + 8))(&v24 - v18, v11);
  *v25 = v22;
  return result;
}

uint64_t sub_2204A0160(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  sub_22046DA2C(v3 + 16, v13);
  v5 = v14;
  v6 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v11 = v5;
  v12 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v10);
  v8(a2, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  sub_220457328(&v10, v3 + 16);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_2204A0248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_2204A03B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  (*(*(v8 + 8) + 8))(a1, v7, v13);
  v15 = [a1 preferredContentSizeCategory];
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220477604(&v20 - v14, v15, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

void *sub_2204A0588(uint64_t a1)
{
  v28 = a1;
  v3 = *v1;
  v4 = v1[5];
  v32 = v1[6];
  v33 = v3;
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v31 = *(v4 - 8);
  v6 = *(v31 + 64);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v30 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v28 - v30;
  (*(*(v32 + 8) + 8))(a1, v4, v8);
  v10 = v1[10];
  v29 = v1[11];
  v11 = v29;
  v12 = __swift_project_boxed_opaque_existential_1(v1 + 7, v10);
  v13 = *(v10 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v17 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = (*(*(v11 + 8) + 8))(v28, v10, v16);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v21 = v31;
  v22 = &v28 - v30;
  v23 = (*(v31 + 16))(&v28 - v30, v9, v4, v20);
  v25 = MEMORY[0x28223BE20](v23, v24);
  (*(v13 + 16))(&v28 - v17, &v28 - v17, v10, v25);
  v26 = sub_220476ED0(v22, &v28 - v17, v33, v4, v10, v32, v29);
  (*(v13 + 8))(&v28 - v17, v10);
  (*(v21 + 8))(v9, v4);
  return v26;
}

void *sub_2204A082C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_2204A0588(a1);
  *a2 = result;
  return result;
}

uint64_t sub_2204A0858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_2204A09C0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_2204A0A00(uint64_t a1)
{
  if (sub_22088F0DC())
  {
    v1 = sub_220891C6C();
    if (!v1)
    {
      return;
    }

    v2 = v1;
    v3 = [v1 isToolbarHidden];

    v4 = sub_2204A0B48();
    if (!v4)
    {
      return;
    }

    v12 = v4;
    v5 = [v4 traitCollection];
    v6 = [v5 horizontalSizeClass];

    if (v6 == 1)
    {
      if ((v3 & 1) == 0)
      {
        v7 = sub_220891C6C();
        if (v7)
        {
          v8 = v7;
          [v7 setToolbarHidden_];
LABEL_15:
        }
      }
    }

    else if (v3)
    {
      v11 = sub_220891C6C();
      if (v11)
      {
        v8 = v11;
        [v11 setToolbarHidden_];
        goto LABEL_15;
      }
    }
  }

  else
  {
    v9 = sub_220891C4C();
    if (!v9)
    {
      return;
    }

    v10 = v9;
    v12 = [v9 navigationController];

    if (!v12)
    {
      return;
    }

    [v12 setToolbarHidden_];
  }
}

id sub_2204A0B48()
{
  result = [v0 ts_parentVC];
  if (result)
  {
    v2 = result;
    type metadata accessor for MainSplitViewController(0);
    result = swift_dynamicCastClass();
    if (!result)
    {
      v3 = sub_2204A0B48();

      return v3;
    }
  }

  return result;
}

id sub_2204A0BAC(int a1, int a2)
{
  v99 = a2;
  v100 = a1;
  v3 = type metadata accessor for AttributionSource(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v97 = (&v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = sub_220885ACC();
  v6 = *(v101 - 1);
  MEMORY[0x28223BE20](v101, v7);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088DA1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v95 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v92 - v16;
  v18 = sub_22088C32C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v93 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v92 - v24;
  v103 = MEMORY[0x277D84F90];
  v102 = v2;
  v92 = *&v2[OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintViewController];
  sub_22088C76C();
  swift_getObjectType();
  sub_22088D92C();
  swift_unknownObjectRelease();
  sub_22088C1DC();
  v26 = *(v19 + 8);
  v94 = v18;
  v27 = v18;
  v28 = v26;
  v26(v25, v27);
  sub_22088D9EC();
  v30 = v29;
  v32 = v31;
  v33 = *(v11 + 8);
  v96 = v10;
  v33(v17, v10);
  v98 = objc_opt_self();
  v34 = [v98 fixedSpaceItemOfWidth_];
  MEMORY[0x223D89870]();
  if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22089177C();
  }

  sub_22089179C();
  __swift_project_boxed_opaque_existential_1(&v102[OBJC_IVAR____TtC8StocksUI23StockListViewController_appConfigurationManager], *&v102[OBJC_IVAR____TtC8StocksUI23StockListViewController_appConfigurationManager + 24]);
  sub_22088641C();
  v35 = sub_22088591C();
  (*(v6 + 8))(v9, v101);
  if (v35)
  {
    v36 = v102;
    v37 = [v102 traitCollection];
    [v37 displayScale];
    v39 = v38;

    sub_22088C76C();
    swift_getObjectType();
    v40 = v93;
    sub_22088D92C();
    swift_unknownObjectRelease();
    v41 = v95;
    sub_22088C1DC();
    v28(v40, v94);
    sub_22088D9EC();
    v43 = v42;
    v33(v41, v96);
    v44 = *&v36[OBJC_IVAR____TtC8StocksUI23StockListViewController_quoteAttributionProvider + 24];
    v45 = *&v36[OBJC_IVAR____TtC8StocksUI23StockListViewController_quoteAttributionProvider + 32];
    __swift_project_boxed_opaque_existential_1(&v36[OBJC_IVAR____TtC8StocksUI23StockListViewController_quoteAttributionProvider], v44);
    v46 = v97;
    AttributionProviderType.source.getter(v44, v45);
    v47 = &v36[OBJC_IVAR____TtC8StocksUI23StockListViewController_styler];
    swift_beginAccess();
    v48 = *(v47 + 3);
    v49 = __swift_project_boxed_opaque_existential_1(v47, v48);
    v50 = *(v48 - 8);
    v51 = MEMORY[0x28223BE20](v49, v49);
    v53 = (&v92 - v52);
    (*(v50 + 16))(&v92 - v52, v51);
    v54 = sub_2204A20FC(v46, v36, sel_didTapAttributionButton, *v53, v39, v43);
    [v54 setIsAccessibilityElement_];
    v55 = *v46;
    v56 = v46[1];
    v57 = sub_22089132C();
    [v54 setAccessibilityLabel_];

    result = [v54 accessibilityUserInputLabels];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v59 = result;
    v60 = MEMORY[0x277D837D0];
    v61 = sub_2208916EC();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v101 = &v92;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v61 = sub_22045E924(0, *(v61 + 16) + 1, 1, v61);
    }

    v64 = *(v61 + 16);
    v63 = *(v61 + 24);
    if (v64 >= v63 >> 1)
    {
      v61 = sub_22045E924((v63 > 1), v64 + 1, 1, v61);
    }

    *(v61 + 16) = v64 + 1;
    v65 = v61 + 16 * v64;
    *(v65 + 32) = v55;
    *(v65 + 40) = v56;

    v66 = sub_2208916DC();

    [v54 setAccessibilityUserInputLabels_];

    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v68 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_220899360;
    *(v69 + 56) = v60;
    *(v69 + 64) = sub_22048D860();
    *(v69 + 32) = v55;
    *(v69 + 40) = v56;
    sub_22089133C();

    v70 = sub_22089132C();

    [v54 setAccessibilityHint_];

    [v54 setAccessibilityTraits_];
    v71 = [v54 customView];
    [v71 setShowsLargeContentViewer_];

    v72 = [v54 customView];
    if (v72)
    {
      v73 = v72;
      v74 = sub_22089132C();
      [v73 setLargeContentTitle_];
    }

    sub_2204A2890(v97, type metadata accessor for AttributionSource);
    (*(v50 + 8))(v53, v48);
    v75 = v54;
    MEMORY[0x223D89870]();
    if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22089177C();
    }

    sub_22089179C();
  }

  v76 = v98;
  v77 = [v98 flexibleSpaceItem];
  MEMORY[0x223D89870]();
  v79 = v99;
  v78 = v100;
  if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22089177C();
  }

  sub_22089179C();
  v80 = v102;
  if (v78)
  {
    if (v79 & 1) == 0 || (sub_22088F0DC())
    {
      goto LABEL_25;
    }

    v81 = &v80[OBJC_IVAR____TtC8StocksUI23StockListViewController_styler];
    swift_beginAccess();
    v82 = *(v81 + 3);
    v83 = __swift_project_boxed_opaque_existential_1(v81, v82);
    v84 = *(v82 - 8);
    v85 = MEMORY[0x28223BE20](v83, v83);
    v87 = (&v92 - v86);
    (*(v84 + 16))(&v92 - v86, v85);
    v88 = [v80 traitCollection];
    [v88 displayScale];

    sub_22076A780(v80, sel_didTapPlusButton, *v87);
    v89 = (*(v84 + 8))(v87, v82);
    MEMORY[0x223D89870](v89);
    if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22089177C();
    }
  }

  else
  {
    sub_2204A28F0();
    MEMORY[0x223D89870]();
    if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22089177C();
    }
  }

  sub_22089179C();
LABEL_25:
  v90 = [v76 fixedSpaceItemOfWidth_];
  MEMORY[0x223D89870]();
  if (*((v103 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22089177C();
  }

  sub_22089179C();
  result = v103;
  if (v79)
  {
    v91 = 256;
  }

  else
  {
    v91 = 0;
  }

  *&v80[OBJC_IVAR____TtC8StocksUI23StockListViewController_toolbarState] = v91 & 0xFFFE | v78 & 1;
  return result;
}

id sub_2204A1760(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_22088B8BC();
  if (!result)
  {

    return a2;
  }

  return result;
}

uint64_t StockListCompositionalLayoutOptionsProvider.layoutOptions(for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v39 = a2;
  v3 = sub_22088DA1C();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1EF0(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22088DFCC();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v35 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = (&v35 - v23);
  v40 = *(v2 + 16);
  sub_22045BB28(0);
  sub_22046F6EC(&qword_281297C90, sub_22045BB28, MEMORY[0x277D6D8C8]);
  sub_22088BF9C();
  sub_2204A1F10(v16);
  (*(v9 + 8))(v12, v8);
  sub_22046B19C(0);
  v26 = v25;
  v27 = *(v25 - 8);
  if ((*(v27 + 48))(v16, 1, v25) == 1)
  {
    sub_220707644(v16);
LABEL_3:
    v28 = MEMORY[0x277D6EB18];
    goto LABEL_9;
  }

  v29 = sub_22088B2BC();
  v31 = v30;
  (*(v27 + 8))(v16, v26);
  if (v29 == 0x7961646F74 && v31 == 0xE500000000000000)
  {
  }

  else
  {
    v32 = sub_2208928BC();

    if ((v32 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  *v24 = &unk_2834113D8;
  v28 = MEMORY[0x277D6EB20];
LABEL_9:
  (*(v18 + 104))(v24, *v28, v17);
  v33 = [v38 horizontalSizeClass];
  if (v33 < 2)
  {
    sub_22088D9FC();
    sub_22088D9EC();
    sub_22088D9BC();
    sub_22088D9CC();
    (*(v18 + 16))(v35, v24, v17);
LABEL_14:
    sub_22088D9DC();
    (*(v36 + 8))(v6, v37);
    return (*(v18 + 8))(v24, v17);
  }

  if (v33 == 2)
  {
    sub_22088DA0C();
    sub_22088D9EC();
    sub_22088D9BC();
    (*(v18 + 16))(v35, v24, v17);
    goto LABEL_14;
  }

  sub_22088D9FC();
  return (*(v18 + 8))(v24, v17);
}

void sub_2204A1D20(uint64_t a1)
{
  if (!qword_281296EE0)
  {
    type metadata accessor for StockListModel(255);
    sub_22045B950();
    sub_220444254(&qword_281293CD8, 255, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v1 = sub_22088E81C();
    if (!v2)
    {
      atomic_store(v1, &qword_281296EE0);
    }
  }
}

void sub_2204A1DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2204A1E30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_22089230C();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2204A1E8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2204A1F10@<X0>(uint64_t a1@<X8>)
{
  sub_2204A1D20(0);
  sub_22046F6EC(&qword_281296EE8, sub_2204A1D20, MEMORY[0x277D6EC70]);
  sub_22089193C();
  sub_22089199C();
  if (v10[4] == v10[0])
  {
    sub_22046B19C(0);
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_2208919BC();
    v6 = v5;
    sub_22046B19C(0);
    v8 = v7;
    v9 = *(v7 - 8);
    (*(v9 + 16))(a1, v6, v7);
    v4(v10, 0);
    return (*(v9 + 56))(a1, 0, 1, v8);
  }
}

uint64_t AttributionProviderType.source.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(a1);
  sub_2208886DC();
}

id sub_2204A20FC(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  v10 = *(a1 + *(type metadata accessor for AttributionSource(0) + 24));
  if (v10)
  {
    v11 = v10;
    if ((sub_22088F0DC() & 1) == 0)
    {
      v28 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
      [v28 setTranslatesAutoresizingMaskIntoConstraints_];
      v29 = [objc_opt_self() buttonWithType_];
      [v29 setImage:v11 forState:0];
      [v29 addTarget:a2 action:a3 forControlEvents:64];
      v30 = v29;
      [v30 setTranslatesAutoresizingMaskIntoConstraints_];
      [v28 addSubview_];
      v31 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
      v32 = objc_opt_self();
      sub_220493AE8(0, &qword_28127DE50, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_2208B23B0;
      v34 = [v30 widthAnchor];
      v35 = [v34 constraintEqualToConstant_];

      *(v33 + 32) = v35;
      v36 = [v30 heightAnchor];
      v37 = [v36 constraintEqualToConstant_];

      *(v33 + 40) = v37;
      v38 = [v30 topAnchor];
      v39 = [v28 topAnchor];
      v40 = [v38 constraintEqualToAnchor_];

      *(v33 + 48) = v40;
      v41 = [v30 bottomAnchor];
      v42 = [v28 bottomAnchor];
      v43 = [v41 constraintEqualToAnchor_];

      *(v33 + 56) = v43;
      v44 = [v30 leadingAnchor];
      v45 = [v28 leadingAnchor];
      v46 = [v44 constraintEqualToAnchor:v45 constant:a6];

      *(v33 + 64) = v46;
      v47 = [v30 trailingAnchor];

      v48 = [v28 trailingAnchor];
      v49 = [v47 constraintEqualToAnchor_];

      *(v33 + 72) = v49;
      sub_22044D56C(0, &qword_28127E790, 0x277CCAAD0);
      v50 = sub_2208916DC();

      [v32 activateConstraints_];

      return v31;
    }

    v12 = sub_22089203C();
    ObjectType = swift_getObjectType();
    v53[0] = a2;
    v13 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v14 = v12;
    swift_unknownObjectRetain();
    v15 = sub_22089289C();
    __swift_destroy_boxed_opaque_existential_1(v53);
    v16 = [v13 initWithImage:v14 style:0 target:v15 action:{a3, v53[0]}];

    swift_unknownObjectRelease();
    [v16 _setPrefersNoPlatter_];
    v18 = a4[10];
    v17 = a4[11];
    __swift_project_boxed_opaque_existential_1(a4 + 7, v18);
    v19 = (*(*(v17 + 16) + 40))(v18);
    [v16 setTintColor_];
  }

  else
  {
    v20 = swift_getObjectType();
    ObjectType = v20;
    v53[0] = a2;
    swift_unknownObjectRetain();
    v21 = sub_22089132C();
    if (v20)
    {
      v22 = __swift_project_boxed_opaque_existential_1(v53, v20);
      v23 = *(v20 - 8);
      v24 = MEMORY[0x28223BE20](v22, v22);
      v26 = v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v23 + 16))(v26, v24);
      v27 = sub_22089289C();
      (*(v23 + 8))(v26, v20);
      __swift_destroy_boxed_opaque_existential_1(v53);
    }

    else
    {
      v27 = 0;
    }

    v52 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v16 = [v52 initWithTitle:v21 style:0 target:v27 action:{a3, v53[0]}];

    swift_unknownObjectRelease();
  }

  return v16;
}

uint64_t sub_2204A2770(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204A27D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204A2830(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204A2890(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_2204A28F0()
{
  v1 = OBJC_IVAR____TtC8StocksUI23StockListViewController____lazy_storage___exchangeStatusToolbarItem;
  v2 = *(v0 + OBJC_IVAR____TtC8StocksUI23StockListViewController____lazy_storage___exchangeStatusToolbarItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8StocksUI23StockListViewController____lazy_storage___exchangeStatusToolbarItem);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_22088BA8C()) init];
    if (sub_22088F0DC())
    {
      [v4 setHidesSharedBackground_];
    }

    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_2204A2984(uint64_t a1)
{
  v2 = v1;
  v48 = sub_22088C32C();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48, v4);
  v6 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = &v2[OBJC_IVAR____TtC8StocksUI23StockListViewController_styler];
  swift_beginAccess();
  sub_22046DA2C(v7, v53);
  v9 = v54;
  v8 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v10 = *(v8 + 16);
  v11 = *(v10 + 8);
  v51 = v9;
  v52 = v8;
  __swift_allocate_boxed_opaque_existential_1(&v50);
  v11(a1, v9, v10);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v7);
  sub_220457328(&v50, v7);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_22046DA2C(v7, v53);
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v12 = [v2 view];
  if (!v12)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v12;
  v49 = v2;
  sub_22088C76C();
  swift_getObjectType();
  sub_22088D92C();
  swift_unknownObjectRelease();
  v14 = sub_22088C28C();
  v15 = *(v47 + 8);
  v16 = v48;
  v15(v6, v48);
  sub_22087CD10(v13, v14);

  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_22046DA2C(v7, v53);
  __swift_project_boxed_opaque_existential_1(v53, v54);
  sub_22088C71C();
  v17 = sub_22088BFCC();

  sub_22088C76C();
  swift_getObjectType();
  sub_22088D92C();
  swift_unknownObjectRelease();
  v18 = sub_22088C28C();
  v15(v6, v16);
  sub_22087CE44(v17, v18);

  v19 = v49;
  __swift_destroy_boxed_opaque_existential_1(v53);
  v20 = [v19 navigationController];
  if (v20)
  {
    v21 = v20;
    sub_22046DA2C(v7, v53);
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v22 = [v21 navigationBar];
    sub_22087CF88(v22);

    __swift_destroy_boxed_opaque_existential_1(v53);
    v23 = __swift_project_boxed_opaque_existential_1(v7, *(v7 + 3));
    v25 = *(*v23 + 80);
    v24 = *(*v23 + 88);
    __swift_project_boxed_opaque_existential_1((*v23 + 56), v25);
    (*(*(v24 + 16) + 32))(v53, v25);
    if ((v53[0] & 1) == 0)
    {
      [v21 ts:1 setTranslucentNavigationBarBackgroundEnabled:?];
    }
  }

  v26 = __swift_project_boxed_opaque_existential_1(v7, *(v7 + 3));
  v28 = *(*v26 + 80);
  v27 = *(*v26 + 88);
  __swift_project_boxed_opaque_existential_1((*v26 + 56), v28);
  (*(*(v27 + 16) + 32))(v53, v28);
  v29 = OBJC_IVAR____TtC8StocksUI23StockListViewController_backgroundView;
  v30 = *&v19[OBJC_IVAR____TtC8StocksUI23StockListViewController_backgroundView];
  if (v53[0])
  {
    if (!v30)
    {
      return;
    }

    [v30 removeFromSuperview];
    v31 = *&v19[v29];
    *&v19[v29] = 0;
    goto LABEL_13;
  }

  if (v30)
  {
    return;
  }

  v32 = [objc_opt_self() ts_sideBarEffect];
  v33 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v34 = v33;
  v35 = [v19 view];
  if (!v35)
  {
    goto LABEL_16;
  }

  v36 = v35;
  [v35 bounds];
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;

  [v34 setFrame_];
  v45 = *&v19[v29];
  *&v19[v29] = v34;

  v46 = [v19 view];
  if (!v46)
  {
LABEL_17:
    __break(1u);
    return;
  }

  v31 = v46;
  [v46 insertSubview:v34 atIndex:0];

LABEL_13:
}

uint64_t sub_2204A2EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  sub_22046DA2C((v7 + 2), v22);
  v8 = v7[10];
  v9 = v7[11];
  v10 = __swift_project_boxed_opaque_existential_1(v7 + 7, v8);
  v11 = *(v8 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v15 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = (*(*(v9 + 8) + 8))(a1, v8, v14);
  v18 = MEMORY[0x28223BE20](v16, v17);
  (*(v11 + 16))(&v21 - v15, &v21 - v15, v8, v18);
  v19 = sub_220466390(v22, &v21 - v15, a2, v8, v9);
  result = (*(v11 + 8))(&v21 - v15, v8);
  *a3 = v19;
  return result;
}

uint64_t sub_2204A3044()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 32))(v2, v3);
}

void sub_2204A30DC(void *a1, _BOOL8 a2)
{
  [a1 setSearchBarStyle_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v7 = sub_22089132C();

  [a1 setPlaceholder_];

  v8 = (v2 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v10 = *(v2 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme + 24);
  v9 = *(v2 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme + 32);
  __swift_project_boxed_opaque_existential_1(v8, v10);
  [a1 setKeyboardAppearance_];
  if (a2)
  {
    a2 = [a2 horizontalSizeClass] == 2;
  }

  v11 = v8[3];
  v12 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v11);
  (*(v12 + 32))(&v19, v11, v12);
  if (v19)
  {

    [a1 setTranslucent_];
  }

  else
  {
    v13 = objc_opt_self();
    v14 = [v13 traitCollectionWithUserInterfaceStyle_];
    sub_220639C48();
    v15 = swift_getObjCClassFromMetadata();
    v16 = [v15 appearanceForTraitCollection_];
    [v16 setBarStyle_];
    v17 = [v13 traitCollectionWithUserInterfaceStyle_];
    v18 = [v15 appearanceForTraitCollection_];
    [v18 setBarStyle_];
  }
}

uint64_t sub_2204A33A0()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 40))(v2, v3);
}

uint64_t sub_2204A3414()
{
  v1 = sub_220886A4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v0 + *(*v0 + 120));
    __swift_project_boxed_opaque_existential_1((v7 + 32), *(v7 + 56));
    sub_2208863EC();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_2204A3550(v5, Strong);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

void sub_2204A3550(uint64_t a1, void *a2)
{
  v18[0] = a1;
  v3 = sub_2208848BC();
  MEMORY[0x28223BE20](v3, v4);
  v5 = sub_220886A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2208858AC();
  v12 = [a2 view];
  if (v12)
  {
    v13 = v12;
    sub_220891F6C();

    v14 = [a2 view];
    if (v14)
    {
      v15 = v14;
      (*(v6 + 16))(v9, v18[0], v5);
      sub_22088589C();
      v18[1] = MEMORY[0x277D84F90];
      sub_22046F734(&unk_281299518, MEMORY[0x277CB9BD0], MEMORY[0x277CB9BD8]);
      sub_2204A3830(0);
      sub_22046F734(&qword_28127EB68, sub_2204A3830, MEMORY[0x277D83970]);
      sub_2208923FC();
      v16 = objc_allocWithZone(sub_22088A63C());
      sub_22046F734(&qword_281299320, MEMORY[0x277D69380], MEMORY[0x277D69378]);
      v17 = sub_22088A62C();
      sub_220891F7C();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_2204A3864(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 64))(a2, ObjectType, v4);
}

uint64_t sub_2204A38C8(uint64_t a1)
{
  v22 = sub_22088A02C();
  v2 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v3);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22088A01C();
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088916C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = v21 - v17;
  sub_2204A3BCC(v21 - v17);
  v21[1] = *(v1 + *(*v1 + 128));
  sub_22088D68C();
  (*(v2 + 104))(v5, *MEMORY[0x277D68F20], v22);
  (*(v11 + 16))(v14, v18, v10);
  sub_22088A00C();
  sub_22046F734(&unk_2812982B0, MEMORY[0x277D68F18], MEMORY[0x277D68F10]);
  v19 = v23;
  sub_2208872CC();
  (*(v6 + 8))(v9, v19);
  return (*(v11 + 8))(v18, v10);
}

uint64_t sub_2204A3BCC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22088D81C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088D6AC();
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D6E830])
  {
    v8 = MEMORY[0x277D682F8];
LABEL_9:
    v10 = *v8;
    v11 = sub_22088916C();
    v12 = *(*(v11 - 8) + 104);
    v13 = a1;
    v14 = v10;
    return v12(v13, v14, v11);
  }

  if (v7 == *MEMORY[0x277D6E840] || v7 == *MEMORY[0x277D6E848])
  {
    v8 = MEMORY[0x277D682E8];
    goto LABEL_9;
  }

  if (v7 != *MEMORY[0x277D6E838])
  {
    v18 = *MEMORY[0x277D682E8];
    v19 = sub_22088916C();
    (*(*(v19 - 8) + 104))(a1, v18, v19);
    return (*(v3 + 8))(v6, v2);
  }

  v16 = sub_22088D69C();
  v11 = sub_22088916C();
  v12 = *(*(v11 - 8) + 104);
  if (v16)
  {
    v17 = MEMORY[0x277D682C8];
  }

  else
  {
    v17 = MEMORY[0x277D682F8];
  }

  v14 = *v17;
  v13 = a1;
  return v12(v13, v14, v11);
}

uint64_t sub_2204A3F20()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(*(v3 + 16) + 8))(v2);
}

uint64_t sub_2204A3F78()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((v1 + 56), v2);
  return (*(*(*(v3 + 16) + 16) + 8))(v2);
}

void sub_2204A4054(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v13.receiver = v3;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, sel_traitCollectionDidChange_, a1);
  swift_getObjectType();
  v6 = [v3 traitCollection];
  sub_22088D31C();

  v7 = [v3 traitCollection];
  sub_2204A2984(v7);

  if (*(v3 + OBJC_IVAR____TtC8StocksUI23StockListViewController_toolbarState) != 2)
  {
    sub_2204A0BAC(*(v3 + OBJC_IVAR____TtC8StocksUI23StockListViewController_toolbarState) & 1, HIBYTE(*(v3 + OBJC_IVAR____TtC8StocksUI23StockListViewController_toolbarState)) & 1);
    if (sub_22088F0DC())
    {
      sub_22044D56C(0, &qword_28127E850, 0x277D751E0);
      v8 = sub_2208916DC();
      v12.receiver = v3;
      v12.super_class = ObjectType;
      objc_msgSendSuper2(&v12, sel_setToolbarItems_animated_, v8, 0);
    }

    else
    {
      v9 = sub_220891C4C();
      if (!v9)
      {
LABEL_7:

        goto LABEL_8;
      }

      v10 = v9;
      sub_22044D56C(0, &qword_28127E850, 0x277D751E0);
      v8 = sub_2208916DC();
      [v10 setToolbarItems:v8 animated:0];
    }

    goto LABEL_7;
  }

LABEL_8:
  v11 = [v3 traitCollection];
  sub_2204A0A00(v11);

  sub_2204A43F0();
}

uint64_t sub_2204A4288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_22047E85C(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

void sub_2204A43F0()
{
  v1 = v0;
  sub_2204CF334(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC8StocksUI23StockListViewController_featureAvailability], *&v0[OBJC_IVAR____TtC8StocksUI23StockListViewController_featureAvailability + 24]);
  if (sub_22088618C())
  {
    sub_220888C9C();
    v12 = v22;
    if (!v22 || (v13 = [v22 isActive], v12, (v13 & 1) == 0))
    {
      if (([v1 isEditing] & 1) == 0)
      {
        sub_220764128(v5);
        if ((*(v8 + 48))(v5, 1, v7) == 1)
        {
          sub_2204A2890(v5, sub_2204CF334);
          v14 = [v1 view];
          if (v14)
          {
            v15 = v14;
            v16 = [v14 window];

            if (v16)
            {
              v17 = [v16 traitCollection];

              v18 = [v17 horizontalSizeClass];
              if (v18 == 2)
              {
                v19 = *(*&v1[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler] + 40);
                ObjectType = swift_getObjectType();
                (*(v19 + 160))(ObjectType, v19);
              }
            }
          }

          else
          {
            __break(1u);
          }
        }

        else
        {
          (*(v8 + 32))(v11, v5, v7);
          sub_220767FE0();
          (*(v8 + 8))(v11, v7);
        }
      }
    }
  }
}

uint64_t sub_2204A46B0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_2204A4718()
{
  v1 = OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_locale;
  v2 = sub_2208852DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler));

  return swift_deallocClassInstance();
}

uint64_t sub_2204A47E4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

id sub_2204A488C(void *a1)
{
  sub_22088AE2C();
  if (([a1 ts_isScrolling] & 1) == 0)
  {
    v3 = (v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_lastContentOffset);
    if ((*(v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_lastContentOffset + 16) & 1) == 0)
    {
      v5 = *v3;
      v4 = v3[1];
      [a1 contentOffset];
      if (v5 != v7 || v4 != v6)
      {
        sub_2204A7738();
      }
    }
  }

  result = [a1 contentOffset];
  v10 = v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_lastContentOffset;
  *v10 = v11;
  *(v10 + 8) = v12;
  *(v10 + 16) = 0;
  return result;
}

void sub_2204A498C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = sub_22088DA1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v87 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_22088C32C();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v9);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22076CAB0(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_220891FDC();
  v17 = *(v16 - 8);
  *&v19 = MEMORY[0x28223BE20](v16, v18).n128_u64[0];
  v21 = &v81 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88.receiver = v3;
  v88.super_class = ObjectType;
  objc_msgSendSuper2(&v88, sel_viewWillLayoutSubviews, v19);
  v84 = *&v3[OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintViewController];
  v22 = [v84 view];
  if (!v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v22;
  v24 = [v3 view];
  if (!v24)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = v24;
  v82 = v6;
  v83 = v5;
  [v24 bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  [v23 setFrame_];
  sub_2204A50A8();
  v34 = sub_220891C6C();
  if (v34)
  {
    v35 = v34;
    v36 = [v34 navigationBar];

    v37 = *MEMORY[0x277D74F78];
    v38 = sub_220891FBC();
    v39 = *(v38 - 8);
    (*(v39 + 104))(v15, v37, v38);
    (*(v39 + 56))(v15, 0, 1, v38);
    sub_220891FCC();
    sub_2204A2890(v15, sub_22076CAB0);
    sub_220891FEC();

    (*(v17 + 8))(v21, v16);
  }

  v40 = v87;
  v41 = [v3 view];
  if (!v41)
  {
    goto LABEL_17;
  }

  v42 = v41;
  [v41 layoutMargins];

  v43 = [v3 view];
  if (!v43)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v44 = v43;
  [v43 layoutMargins];

  sub_220891A3C();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = *&v3[OBJC_IVAR____TtC8StocksUI23StockListViewController_mastheadViewProvider];
  v54 = [v3 view];
  if (!v54)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v55 = v54;
  [v54 bounds];
  v57 = v56;
  v59 = v58;

  sub_22088C76C();
  swift_getObjectType();
  sub_22088D92C();
  swift_unknownObjectRelease();
  sub_22088C1DC();
  (*(v85 + 8))(v11, v86);
  v60 = [v3 splitViewController];
  if (!v60 || (v61 = v60, v62 = [v60 traitCollection], v61, !v62))
  {
    v62 = [v3 traitCollection];
  }

  v90[0] = v57;
  v90[1] = v59;
  v90[2] = v46;
  v90[3] = v48;
  v90[4] = v50;
  v90[5] = v52;
  v90[6] = v62;
  __swift_project_boxed_opaque_existential_1((v53 + 40), *(v53 + 64));
  v63 = v62;
  sub_2204A52C8(v90, v89);
  v64 = sub_220492A40();
  type metadata accessor for MastheadView();
  v65 = swift_dynamicCastClassUnconditional();
  v66 = sub_22045C20C(&qword_28128F080, type metadata accessor for MastheadViewRenderer, &unk_2208A1F70);
  v67 = *(v66 + 24);
  v68 = type metadata accessor for MastheadViewRenderer();
  v67(v89, v65, v68, v66);

  sub_2204A9180(v89);
  (*(v82 + 8))(v40, v83);
  v69 = *&v3[OBJC_IVAR____TtC8StocksUI23StockListViewController_backgroundView];
  if (v69)
  {
    v70 = v69;
    v71 = [v3 view];
    if (v71)
    {
      v72 = v71;
      [v71 bounds];
      v74 = v73;
      v76 = v75;
      v78 = v77;
      v80 = v79;

      [v70 setFrame_];
      return;
    }

LABEL_20:
    __break(1u);
  }
}

void sub_2204A50A8()
{
  v0 = sub_22088C32C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C71C();
  v5 = sub_22088BFCC();

  sub_220888C9C();
  v6 = v13;
  if (v13 && (v7 = [v13 isActive], v6, (v7 & 1) != 0))
  {
    v8 = 60.0;
  }

  else
  {
    v8 = 16.0;
  }

  sub_22088C76C();
  swift_getObjectType();
  sub_22088D92C();
  swift_unknownObjectRelease();
  v9 = sub_22088C28C();
  (*(v1 + 8))(v4, v0);
  v10 = 0.0;
  if ([v9 horizontalSizeClass] == 2)
  {
    if (sub_22088F0DC())
    {
      v10 = 0.0;
    }

    else
    {
      v10 = 17.0;
    }

    v8 = 16.0;
  }

  v11 = v5;
  [v11 contentInset];
  [v11 setContentInset_];
  [v11 contentOffset];
  [v11 setContentOffset_];
}

__n128 sub_2204A52C8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22088516C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088D9EC();
  v11 = v10;
  v13 = v12;
  v14 = *(a1 + 24);
  v15 = *(a1 + 40);
  v16 = *(a1 + 8);
  v82 = *a1;
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  if (qword_2812946D0 != -1)
  {
    swift_once();
  }

  v17 = qword_2812946D8;
  v18 = unk_2812946E0;
  v19 = *(a1 + 48);

  v20 = sub_2204A5AE0(v17, v18, v19);

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  if (qword_2812946E8 != -1)
  {
    swift_once();
  }

  v21 = qword_2812946F0;
  if (qword_2812946F0)
  {
    sub_22088515C();
    v22 = sub_22088509C();
    (*(v6 + 8))(v9, v5);
    v23 = [v21 stringFromDate_];

    v21 = sub_22089136C();
    v25 = v24;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  v26 = sub_2204A65AC(v21, v25, v19);

  v27 = sub_220891D8C();
  [v27 descender];
  v29 = v28;

  v30 = sub_220891D8C();
  [v30 pointSize];
  v32 = v31;

  v33 = [v19 horizontalSizeClass];
  v34 = sub_220891D8C();
  [v34 pointSize];
  v36 = v35;

  v37 = [v19 horizontalSizeClass];
  if ([v19 horizontalSizeClass] == 2)
  {
    v80 = 40.0;
  }

  else
  {
    v38 = sub_220891D8C();
    [v38 pointSize];
    v81 = v32;
    v39 = v29;
    v40 = v16;
    v41 = v14;
    v42 = v11;
    v43 = v13;
    v44 = v15;
    v46 = v45;

    v80 = v46 * dbl_22089C5D0[[v19 horizontalSizeClass] == 2];
    v15 = v44;
    v13 = v43;
    v11 = v42;
    v14 = v41;
    v16 = v40;
    v29 = v39;
    v32 = v81;
  }

  v47 = 0.333333333;
  if (v37 == 2)
  {
    v47 = 0.235294118;
  }

  v81 = v36 * v47;
  v48 = fmax(ceil(fabs(v29)), 4.0);
  v49 = 34.0;
  if (v33 != 2)
  {
    v49 = 24.0;
  }

  v79 = v32 * (v48 / v49);
  v50 = v14 + v11;
  v51 = v82 - v50 - (v13 + v15);
  [v20 boundingRectWithSize:8 options:0 context:{v51, v16}];
  v53 = v52;
  [v20 boundingRectWithSize:0 options:0 context:{v51, v16}];
  v55 = v54;
  v57 = v56;
  [v26 boundingRectWithSize:1 options:0 context:{v51, v16}];
  v59 = v58;
  v61 = v60;
  v62 = sub_220891D8C();
  [v62 ascender];
  v64 = v63;

  v65 = sub_220891D8C();
  [v65 capHeight];
  v67 = v66;

  v68 = v80 - (v64 - v67);
  v89.origin.x = v50;
  v89.origin.y = v68;
  v89.size.width = v55;
  v89.size.height = v57;
  v69 = v79 + v53 + CGRectGetMinY(v89);
  v90.origin.x = v50;
  v90.origin.y = v69;
  v90.size.width = v59;
  v90.size.height = v61;
  CGRectGetMaxY(v90);
  MEMORY[0x28223BE20](v70, v71);
  *(&v78 - 12) = v82;
  *(&v78 - 11) = v72;
  *(&v78 - 10) = v50;
  *(&v78 - 9) = v68;
  *(&v78 - 8) = v55;
  *(&v78 - 7) = v57;
  *(&v78 - 6) = v50;
  *(&v78 - 5) = v69;
  *(&v78 - 4) = v59;
  *(&v78 - 3) = v61;
  *(&v78 - 2) = a1;
  sub_22088C18C();

  result = v84;
  v74 = v83;
  v75 = v88;
  v76 = v87;
  v77 = v86;
  *(a2 + 32) = v85;
  *(a2 + 48) = v77;
  *(a2 + 64) = v76;
  *(a2 + 80) = v75;
  *a2 = v74;
  *(a2 + 16) = result;
  return result;
}

id sub_2204A589C()
{
  result = sub_2204A58C0();
  qword_2812946D8 = result;
  unk_2812946E0 = v1;
  return result;
}

id sub_2204A58C0()
{
  v0 = objc_opt_self();
  result = [v0 mainBundle];
  if (!*MEMORY[0x277CBEC40])
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result objectForInfoDictionaryKey_];

  if (v3)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_22056D130(&v11);
  }

  result = [v0 mainBundle];
  if (!*MEMORY[0x277CBED50])
  {
    goto LABEL_20;
  }

  v4 = result;
  v5 = [result objectForInfoDictionaryKey_];

  if (v5)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (*(&v10 + 1))
  {
    if (swift_dynamicCast())
    {
      return v8;
    }
  }

  else
  {
    sub_22056D130(&v11);
  }

  type metadata accessor for Localized();
  v6 = [v0 bundleForClass_];
  v7 = sub_220884CAC();

  return v7;
}

id sub_2204A5AE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  if ([a3 horizontalSizeClass] == 2)
  {
    [v5 setLineSpacing_];
  }

  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089EF70;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = v7;
  v9 = sub_220661B28(a3);
  v10 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v11 = MEMORY[0x277D740C0];
  *(inited + 40) = v9;
  v12 = *v11;
  *(inited + 64) = v10;
  *(inited + 72) = v12;
  v13 = v3[5];
  v14 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v13);
  v15 = *(v14 + 16);
  v16 = *(v15 + 256);
  v17 = v12;
  v18 = v16(v13, v15);
  v19 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D74118];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v21 = sub_22044D56C(0, &qword_28127E648, 0x277D74240);
  *(inited + 120) = v5;
  v22 = *MEMORY[0x277D740D0];
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  v23 = v20;
  v24 = v5;
  v25 = v22;
  v26 = [a3 horizontalSizeClass];
  v27 = -0.37;
  if (v26 != 2)
  {
    v27 = 0.0;
  }

  *(inited + 184) = MEMORY[0x277D839F8];
  *(inited + 160) = v27;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v29 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v30 = sub_22089125C();

  v31 = [v28 initWithString:v29 attributes:v30];

  return v31;
}

void sub_2204A5D84(uint64_t a1)
{
  if (!qword_28127E690)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127E690);
    }
  }
}

void sub_2204A5DF0(uint64_t a1)
{
  if (!qword_28127DE80)
  {
    sub_2204A5D84(255);
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127DE80);
    }
  }
}

uint64_t sub_2204A5E48()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 40))(v2, v3);
}

void sub_2204A5EE0(uint64_t a1)
{
  if (!qword_28127E290)
  {
    type metadata accessor for Key(255);
    sub_220452F38(&qword_28127E6A8, type metadata accessor for Key, &unk_220899024);
    v1 = sub_2208926EC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E290);
    }
  }
}

unint64_t sub_2204A5F80(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    a2(0);
    v8 = sub_2208926DC();
    v9 = a1 + 32;

    while (1)
    {
      sub_2204A613C(v9, &v16, a3, a4, sub_2204A61AC);
      v10 = v16;
      result = sub_2204A6214(v16);
      if (v12)
      {
        break;
      }

      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v10;
      result = sub_2204A62A4(&v17, (v8[7] + 32 * result));
      v13 = v8[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v8[2] = v15;
      v9 += 40;
      if (!--v4)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2204A60F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2204A613C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

void sub_2204A61AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t sub_2204A6214(uint64_t a1)
{
  sub_22089136C();
  sub_2208929EC();
  sub_22089146C();
  v2 = sub_220892A2C();

  return sub_2204A62B4(a1, v2);
}

_OWORD *sub_2204A62A4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2204A62B4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_22089136C();
      v8 = v7;
      if (v6 == sub_22089136C() && v8 == v9)
      {
        break;
      }

      v11 = sub_2208928BC();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_2204A63B8()
{
  result = qword_28127E6A8;
  if (!qword_28127E6A8)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127E6A8);
  }

  return result;
}

id sub_2204A6410()
{
  result = sub_2204A6430();
  qword_2812946F0 = result;
  return result;
}

id sub_2204A6430()
{
  v0 = sub_2208852DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088528C();
  sub_2208851EC();
  (*(v1 + 8))(v4, v0);
  v5 = sub_22089132C();
  v6 = sub_22089132C();

  v7 = [objc_opt_self() dateFormatterWithFormat:v5 localeIdentifier:v6 forReuse:1];

  if (v7)
  {
    v8 = v7;
    v9 = sub_22089132C();
    [v8 setLocalizedDateFormatFromTemplate_];
  }

  return v7;
}

id sub_2204A65AC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  if ([a3 horizontalSizeClass] == 2)
  {
    [v5 setLineSpacing_];
  }

  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089EF70;
  v7 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v8 = v7;
  v9 = sub_220661B28(a3);
  v10 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v11 = MEMORY[0x277D740C0];
  *(inited + 40) = v9;
  v12 = *v11;
  *(inited + 64) = v10;
  *(inited + 72) = v12;
  v13 = v3[5];
  v14 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v13);
  v15 = *(v14 + 16);
  v16 = *(v15 + 264);
  v17 = v12;
  v18 = v16(v13, v15);
  v19 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v18;
  v20 = *MEMORY[0x277D74118];
  *(inited + 104) = v19;
  *(inited + 112) = v20;
  v21 = sub_22044D56C(0, &qword_28127E648, 0x277D74240);
  *(inited + 120) = v5;
  v22 = *MEMORY[0x277D740D0];
  *(inited + 144) = v21;
  *(inited + 152) = v22;
  v23 = v20;
  v24 = v5;
  v25 = v22;
  v26 = [a3 horizontalSizeClass];
  v27 = -0.37;
  if (v26 != 2)
  {
    v27 = 0.0;
  }

  *(inited + 184) = MEMORY[0x277D839F8];
  *(inited + 160) = v27;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v28 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v29 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v30 = sub_22089125C();

  v31 = [v28 initWithString:v29 attributes:v30];

  return v31;
}

uint64_t sub_2204A683C()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 264))(v2, v3);
}

uint64_t sub_2204A68E0@<X0>(uint64_t a1@<X1>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a11, double a12)
{
  v42 = a3;
  v43 = a4;
  v14 = sub_22088ABEC();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *MEMORY[0x277D6D320];
  v21 = *(v15 + 104);
  v21(v19, v20, v14, v17);
  sub_22088ABDC();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = *(v15 + 8);
  v30(v19, v14);
  (v21)(v19, v20, v14);
  sub_22088ABDC();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v30(v19, v14);
  v39 = *(a1 + 48);
  *a2 = v42;
  a2[1] = v43;
  *(a2 + 2) = v23;
  *(a2 + 3) = v25;
  *(a2 + 4) = v27;
  *(a2 + 5) = v29;
  *(a2 + 6) = v32;
  *(a2 + 7) = v34;
  *(a2 + 8) = v36;
  *(a2 + 9) = v38;
  *(a2 + 10) = v39;
  return sub_2204A6ADC(a1, v44);
}

id sub_2204A6B38(uint64_t a1, char *a2)
{
  if (qword_281298F98 != -1)
  {
    swift_once();
  }

  sub_22047ED18(&qword_28128F088, &unk_2208A1F08);
  sub_220886B3C();
  if (v5 == 1)
  {
    return sub_220611400(a1, a2);
  }

  else
  {
    return sub_2204A6C28(a1, a2);
  }
}

id sub_2204A6C28(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22088516C();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 8);
  [a2 setFrame_];
  [a2 setHeight_];
  v11 = *&a2[OBJC_IVAR____TtC8StocksUI12MastheadView_appNameLabel];
  [v11 setFrame_];
  swift_beginAccess();
  sub_22046DA2C(v2 + 16, v27);
  __swift_project_boxed_opaque_existential_1(v27, v28);
  if (qword_2812946D0 != -1)
  {
    swift_once();
  }

  v13 = qword_2812946D8;
  v12 = unk_2812946E0;
  v14 = *(a1 + 80);

  v15 = sub_2204A5AE0(v13, v12, v14);

  [v11 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(v27);
  v16 = *&a2[OBJC_IVAR____TtC8StocksUI12MastheadView_dateLabel];
  [v16 setFrame_];
  sub_22046DA2C(v3 + 16, v27);
  __swift_project_boxed_opaque_existential_1(v27, v28);
  if (qword_2812946E8 != -1)
  {
    swift_once();
  }

  v17 = qword_2812946F0;
  if (qword_2812946F0)
  {
    sub_22088515C();
    v18 = sub_22088509C();
    (*(v25 + 8))(v9, v26);
    v19 = [v17 stringFromDate_];

    v17 = sub_22089136C();
    v21 = v20;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  v22 = sub_2204A65AC(v17, v21, v14);

  [v16 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(v27);
  v23 = [objc_opt_self() clearColor];
  [a2 setBackgroundColor_];

  return [v16 setNumberOfLines_];
}

void sub_2204A6F80(_OWORD *a1@<X8>)
{
  sub_22046B36C(0);
  v78 = *(v2 - 8);
  v79 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v77 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045BE48(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v76 = v5;
  v75 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v74 = &v73 - v7;
  sub_2204D04A4(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v81 = &v73 - v14;
  v15 = sub_2208854AC();
  v82 = *(v15 - 8);
  v83 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v80 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088AF8C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v73 - v25;
  sub_22088C73C();
  v27 = MEMORY[0x277D6D8B8];
  sub_22045BE48(0, &qword_281297C88, MEMORY[0x277D6D8B8]);
  v29 = v28;
  sub_220456038(&qword_281297C90, &qword_281297C88, v27, MEMORY[0x277D6D8C8]);
  v73 = v29;
  sub_22088BF6C();

  (*(v19 + 104))(v22, *MEMORY[0x277D6D518], v18);
  v30 = sub_22088AF7C();
  v31 = *(v19 + 8);
  v31(v22, v18);
  v31(v26, v18);
  if ((v30 & 1) == 0 || (sub_22088C71C(), sub_220455998(0), sub_22045C20C(&qword_281297A70, sub_220455998, MEMORY[0x277D6DC88]), v32 = sub_22088CBCC(), , [v32 bounds], v34 = v33, v36 = v35, v38 = v37, v40 = v39, v32, v89.origin.x = v34, v89.origin.y = v36, v89.size.width = v38, v89.size.height = v40, MidX = CGRectGetMidX(v89), sub_22088C71C(), v42 = sub_22088CBCC(), , objc_msgSend(v42, sel_contentOffset), v44 = v43, v42, sub_22088C71C(), v45 = sub_22088CBCC(), , objc_msgSend(v45, sel_adjustedContentInset), v47 = v46, v45, v48 = v44 + v47, MidX <= 0.0) && v48 <= 0.0)
  {
    *a1 = 0u;
    a1[1] = 0u;
    return;
  }

  sub_22088C71C();
  v49 = sub_22088CBCC();

  v50 = [v49 indexPathForItemAtPoint_];
  v51 = a1;
  if (v50)
  {
    v52 = v50;
    sub_22088545C();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v55 = v82;
  v54 = v83;

  (*(v55 + 56))(v11, v53, 1, v54);
  v56 = v81;
  sub_2204BD618(v11, v81, sub_2204D04A4);
  if ((*(v55 + 48))(v56, 1, v54) == 1)
  {
    sub_2204A2890(v56, sub_2204D04A4);
LABEL_12:
    *v51 = 0u;
    v51[1] = 0u;
    return;
  }

  v57 = v80;
  (*(v55 + 32))(v80, v56, v54);
  sub_22088C71C();
  v58 = sub_22088CBCC();

  sub_220891BFC();

  if (v88)
  {
    (*(v55 + 8))(v57, v54);
    goto LABEL_12;
  }

  v60 = v86;
  v59 = v87;
  v62 = v84;
  v61 = v85;
  sub_22088C73C();
  v63 = v57;
  v64 = v74;
  sub_22088BF9C();

  v65 = v77;
  v66 = v76;
  sub_22088E82C();
  (*(v75 + 8))(v64, v66);
  v67 = v79;
  v68 = sub_22088AD4C();
  v70 = v69;
  (*(v78 + 8))(v65, v67);
  v90.origin.x = v62;
  v90.origin.y = v61;
  v90.size.width = v60;
  v90.size.height = v59;
  v71 = MidX - CGRectGetMinX(v90);
  v91.origin.x = v62;
  v91.origin.y = v61;
  v91.size.width = v60;
  v91.size.height = v59;
  MinY = CGRectGetMinY(v91);
  (*(v55 + 8))(v63, v54);
  *v51 = v68;
  *(v51 + 1) = v70;
  *(v51 + 2) = v71;
  *(v51 + 3) = v48 - MinY;
}

uint64_t sub_2204A7738()
{
  v1 = *(v0 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler);
  sub_2204A6F80(v8);
  v2 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  v7[0] = v8[0];
  v7[1] = v8[1];
  (*(v2 + 120))(v7, ObjectType, v2);

  v4 = *(v1 + 40);
  v5 = swift_getObjectType();
  return (*(v4 + 176))(2, 0, 0, v5, v4);
}

void sub_2204A7800(__int128 *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v1 = sub_22088BF0C();
  if (v1 >> 62 == 1)
  {
    v4[0] = v2;
    v4[1] = v3;
    sub_2207BC898(v4);
  }

  else
  {

    sub_2204A788C(v1);
  }
}

void sub_2204A788C(id a1)
{
  if (!(a1 >> 62))
  {
  }
}

void sub_2204A78A0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_281298078 != -1)
  {
    swift_once();
  }

  v8 = sub_22088A84C();
  __swift_project_value_buffer(v8, qword_2812B6CB8);
  v9 = sub_22088A82C();
  v10 = sub_220891AFC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136315394;
    if (a1 == 2)
    {
      v14 = sub_2204A7B78(0x6E696C6C6F726373, 0xE900000000000067, &v19);

      *(v11 + 4) = v14;
    }

    else
    {
      if (a1 == 1)
      {
        v13 = sub_2204A7B78(0xD000000000000012, 0x80000002208BECB0, &v19);
      }

      else
      {
        v13 = sub_2204A7B78(0x676E6974696465, 0xE700000000000000, &v19);
      }

      *(v11 + 4) = v13;
    }

    *(v11 + 12) = 2080;
    v15 = sub_22089185C();
    v17 = sub_2204A7B78(v15, v16, &v19);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_22043F000, v9, v10, "Stock list refresh blocker will be removed: %s after delay: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D8B7F0](v12, -1, -1);
    MEMORY[0x223D8B7F0](v11, -1, -1);
  }

  v20 = a1;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = v4;

  sub_2204A80F0(a2, a3);

  sub_22088ACBC();
}

unint64_t sub_2204A7B78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2204A7C44(v11, 0, 0, 1, a1, a2);
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
    sub_2204A7FA8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_2204A7C44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2204A7D50(a5, a6);
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
    result = sub_22089259C();
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

void *sub_2204A7D50(uint64_t a1, unint64_t a2)
{
  v3 = sub_2204A7D9C(a1, a2);
  sub_2204A8004(&unk_283410D08);
  return v3;
}

void *sub_2204A7D9C(uint64_t a1, unint64_t a2)
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

  v6 = sub_2204A7ECC(v5, 0);
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

  result = sub_22089259C();
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
        v10 = sub_22089150C();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2204A7ECC(v10, 0);
        result = sub_22089252C();
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

void *sub_2204A7ECC(uint64_t a1, uint64_t a2)
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

  sub_2204A7F58(0, &qword_28127DE68, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_2204A7F58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2204A7FA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2204A8004(uint64_t result)
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

  result = sub_22070888C(result, v11, 1, v3);
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

uint64_t sub_2204A80F4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for LayoutSizeClass(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double sub_2204A81B4(char *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 17) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  sub_2204A80F0(a3, a4);

  sub_220888FEC();

  return result;
}

void sub_2204A8288(unsigned __int8 a1, char a2, void (*a3)(void), uint64_t a4, uint64_t *a5)
{
  v116 = a3;
  v9 = a1;
  v109 = *a5;
  v114 = sub_220885D4C();
  v10 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v11);
  v111 = v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088582C();
  v115 = *(v13 - 8);
  v14 = *(v115 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v108 = v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v110 = v106 - v18;
  sub_2204A90C8(0);
  v112 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v22 = v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045BAA4(0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9 != 3)
  {
    v107 = v13;
    v113 = a4;
    if (qword_281298078 != -1)
    {
      swift_once();
    }

    v106[0] = v10;
    v34 = sub_22088A84C();
    v35 = __swift_project_value_buffer(v34, qword_2812B6CB8);

    v106[1] = v35;
    v36 = sub_22088A82C();
    v37 = sub_220891AFC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v120 = v39;
      *v38 = 136315394;
      if (a1)
      {
        if (a1 == 1)
        {
          v40 = 0xD000000000000012;
        }

        else
        {
          v40 = 0x6E696C6C6F726373;
        }

        if (a1 == 1)
        {
          v41 = 0x80000002208BECB0;
        }

        else
        {
          v41 = 0xE900000000000067;
        }
      }

      else
      {
        v40 = 0x676E6974696465;
        v41 = 0xE700000000000000;
      }

      v44 = sub_2204A7B78(v40, v41, &v120);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2080;
      v117 = *(a5 + *(*a5 + 232));
      sub_2204C59CC(0, &qword_281298020, sub_22047D138, &type metadata for StockListRefreshBlocker, MEMORY[0x277D6D370]);
      sub_2204C5950(&qword_281298028, MEMORY[0x277D6D388]);
      v45 = sub_22089287C();
      v47 = sub_2204A7B78(v45, v46, &v120);

      *(v38 + 14) = v47;
      _os_log_impl(&dword_22043F000, v36, v37, "Stock list is removing refresh blocker: %s.\nCurrent refresh blockers are: %s", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D8B7F0](v39, -1, -1);
      MEMORY[0x223D8B7F0](v38, -1, -1);
    }

    v123 = *(a5 + *(*a5 + 232));
    sub_2204C59CC(0, &qword_281298020, sub_22047D138, &type metadata for StockListRefreshBlocker, MEMORY[0x277D6D370]);
    sub_2204C5950(&qword_281298030, MEMORY[0x277D6D380]);

    sub_22089193C();
    sub_22089199C();
    if ((v122 & 1) == 0 && (v119 & 1) == 0)
    {
      v48 = v120;
      v49 = v117;
      v50 = v118;
      v51 = v121;

      if (v51 == v50)
      {
        if (v48 == v49)
        {
          v52 = *(*a5 + 248);
          swift_beginAccess();
          sub_22047939C(a5 + v52, v26, sub_22045BAA4);
          v53 = *(*a5 + 240);
          swift_beginAccess();
          v54 = *(v112 + 48);
          sub_2204D1A74(v26, v22, sub_22045BAA4);
          sub_22047939C(a5 + v53, &v22[v54], sub_2204558B8);
          v55 = v106[0];
          v56 = v114;
          v57 = (*(v106[0] + 48))(v22, 1, v114);
          v58 = (*(v115 + 48))(&v22[v54], 1, v107);
          v59 = v58;
          if (v57 == 1)
          {
            if (v58 != 1)
            {
              v74 = v115;
              v75 = &v22[v54];
              v76 = v110;
              v77 = v107;
              v78 = (*(v115 + 32))(v110, v75, v107);
              MEMORY[0x28223BE20](v78, v79);
              v106[-2] = a5;
              v106[-1] = v76;
              sub_220888FBC();
              v80 = swift_allocObject();
              v81 = v116;
              v80[2] = a5;
              v80[3] = v81;
              v82 = v113;
              v80[4] = v113;
              v83 = swift_allocObject();
              *(v83 + 16) = sub_2207C269C;
              *(v83 + 24) = v80;

              sub_2204A80F0(v81, v82);
              v84 = sub_220888D9C();
              sub_220888E4C();

              (*(v74 + 8))(v76, v77);
              return;
            }

            v60 = sub_22088A82C();
            v61 = sub_220891AFC();
            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              *v62 = 0;
              _os_log_impl(&dword_22043F000, v60, v61, "No update data to refresh after removal of all refreshBlockers", v62, 2u);
              MEMORY[0x223D8B7F0](v62, -1, -1);
            }

            v43 = v116;
            if (v116)
            {
              goto LABEL_41;
            }
          }

          else
          {
            v66 = v111;
            v67 = (*(v55 + 32))(v111, v22, v56);
            if (v59 == 1)
            {
              MEMORY[0x28223BE20](v67, v68);
              v106[-2] = a5;
              v106[-1] = v66;
              sub_220888FBC();
              v69 = swift_allocObject();
              v70 = v116;
              v69[2] = a5;
              v69[3] = v70;
              v71 = v113;
              v69[4] = v113;
              v72 = swift_allocObject();
              *(v72 + 16) = sub_2207C1848;
              *(v72 + 24) = v69;

              sub_2204A80F0(v70, v71);
              v73 = sub_220888D9C();
              sub_220888E4C();

              (*(v55 + 8))(v66, v56);
            }

            else
            {
              v85 = v115;
              v86 = *(v115 + 32);
              v87 = &v22[v54];
              v88 = v110;
              v89 = v107;
              v90 = v86(v110, v87, v107);
              MEMORY[0x28223BE20](v90, v91);
              v106[-2] = a5;
              v106[-1] = v92;
              v112 = sub_220888FBC();
              v93 = v108;
              (*(v85 + 16))(v108, v88, v89);
              v94 = (*(v85 + 80) + 40) & ~*(v85 + 80);
              v95 = swift_allocObject();
              v96 = v109;
              *(v95 + 2) = *(v109 + 80);
              *(v95 + 3) = *(v96 + 88);
              *(v95 + 4) = a5;
              v97 = v93;
              v98 = v89;
              v86(&v95[v94], v97, v89);
              v99 = swift_allocObject();
              *(v99 + 16) = sub_2207C1854;
              *(v99 + 24) = v95;

              v100 = sub_220888D9C();
              sub_220888E3C();

              v101 = swift_allocObject();
              v102 = v116;
              v101[2] = a5;
              v101[3] = v102;
              v103 = v113;
              v101[4] = v113;
              v104 = swift_allocObject();
              *(v104 + 16) = sub_2207C18B8;
              *(v104 + 24) = v101;

              sub_2204A80F0(v102, v103);
              v105 = sub_220888D9C();
              sub_220888E4C();

              (*(v115 + 8))(v110, v98);
              (*(v55 + 8))(v111, v114);
            }
          }
        }

        else
        {
          v63 = sub_22088A82C();
          v64 = sub_220891AFC();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            *v65 = 0;
            _os_log_impl(&dword_22043F000, v63, v64, "All refreshBlockers are not removed", v65, 2u);
            MEMORY[0x223D8B7F0](v65, -1, -1);
          }

          v43 = v116;
          if (v116)
          {
            goto LABEL_41;
          }
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  if (qword_281298078 != -1)
  {
    swift_once();
  }

  v27 = sub_22088A84C();
  __swift_project_value_buffer(v27, qword_2812B6CB8);
  v28 = sub_22088A82C();
  v29 = sub_220891AFC();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v120 = v31;
    *v30 = 136315138;
    if (a2)
    {
      if (a2 == 1)
      {
        v32 = 0xD000000000000012;
      }

      else
      {
        v32 = 0x6E696C6C6F726373;
      }

      if (a2 == 1)
      {
        v33 = 0x80000002208BECB0;
      }

      else
      {
        v33 = 0xE900000000000067;
      }
    }

    else
    {
      v32 = 0x676E6974696465;
      v33 = 0xE700000000000000;
    }

    v42 = sub_2204A7B78(v32, v33, &v120);

    *(v30 + 4) = v42;
    _os_log_impl(&dword_22043F000, v28, v29, "Attempted to remove refresh blocker %s, but it was already removed", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x223D8B7F0](v31, -1, -1);
    MEMORY[0x223D8B7F0](v30, -1, -1);
  }

  v43 = v116;
  if (v116)
  {
LABEL_41:
    v43();
  }
}

uint64_t sub_2204A9064()
{

  return swift_deallocObject();
}

void sub_2204A90C8(uint64_t a1)
{
  if (!qword_2812992D0)
  {
    sub_22045BAA4(255);
    sub_2204558B8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812992D0);
    }
  }
}

uint64_t objectdestroy_13Tm()
{
  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

void sub_2204A921C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_22045BE48(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v6 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v28 - v8;
  sub_2204CF334(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C(0);
  v15 = v14;
  v30 = *(v14 - 8);
  *&v17 = MEMORY[0x28223BE20](v14, v16).n128_u64[0];
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34.receiver = v2;
  v34.super_class = ObjectType;
  objc_msgSendSuper2(&v34, sel_viewDidLayoutSubviews, v17);
  __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR____TtC8StocksUI23StockListViewController_featureAvailability], *&v2[OBJC_IVAR____TtC8StocksUI23StockListViewController_featureAvailability + 24]);
  if (sub_22088618C())
  {
    v20 = sub_2204A0B48();
    if (v20)
    {
      v21 = v20;
      v22 = [v20 traitCollection];
      v28 = [v22 horizontalSizeClass];

      v32 = 0;
      v33 = 1;
      v23 = [v21 viewControllers];
      sub_22044D56C(0, &qword_28127E800, 0x277D75D28);
      v24 = sub_2208916EC();

      if (v24 >> 62)
      {
        v25 = sub_2208926AC();
      }

      else
      {
        v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v25 >= 2)
      {
        v26 = sub_22063EA40(&v32, v21);
        if (v28 != 2 || v26 > 1)
        {
          goto LABEL_12;
        }
      }

      else if (v28 != 2)
      {
LABEL_12:

        return;
      }

      sub_220764128(v13);
      v27 = v30;
      if ((*(v30 + 48))(v13, 1, v15) == 1)
      {

        sub_2204A2890(v13, sub_2204CF334);
      }

      else
      {
        (*(v27 + 32))(v19, v13, v15);
        v32 = v3;
        sub_22045C20C(&qword_27CF56E50, type metadata accessor for StockListViewController, &unk_2208B2498);
        sub_22088BF9C();
        v31 = 0;
        sub_2207895A8(v19, v9, &v31);

        (*(v29 + 8))(v9, v6);
        (*(v27 + 8))(v19, v15);
      }
    }
  }
}

void sub_2204A9628(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22088DA2C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a3, v5, v8);
  v11 = (*(v6 + 88))(v10, v5);
  if (v11 == *MEMORY[0x277D6E950])
  {
    (*(v6 + 8))(v10, v5);
LABEL_3:
    v12 = *(*(v3 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
    ObjectType = swift_getObjectType();
    (*(v12 + 48))(ObjectType, v12);
    return;
  }

  if (v11 == *MEMORY[0x277D6E928])
  {
    v14 = *(*(v3 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler) + 40);
    v15 = swift_getObjectType();
    (*(v14 + 40))(v15, v14);
  }

  else
  {
    if (v11 == *MEMORY[0x277D6E948] || v11 == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (v11 != *MEMORY[0x277D6E958])
    {
      if (v11 == *MEMORY[0x277D6E970])
      {
        sub_22088C71C();
        v17 = sub_22088BFCC();

        sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
        sub_22088B74C();
      }

      else
      {
        sub_22089267C();
        __break(1u);
      }
    }
  }
}

void sub_2204A98C4()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for AttributionSource(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v70 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220889BAC();
  v61 = *(v6 - 8);
  v62 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v60 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088952C();
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v63 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220886A4C();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_220885D4C();
  v71 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v59 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v58 - v21;
  v23 = *(v0 + *(v2 + 120));
  sub_2204AA37C(&v73);
  v58 = v75;
  __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  v26 = v2;
  v27 = v23;
  v67 = *(v26 + 80);
  v25[2] = v67;
  v66 = *(v26 + 88);
  v25[3] = v66;
  v25[4] = v24;
  v28 = v16;
  v29 = v71;
  sub_22088EBDC();

  swift_beginAccess();
  sub_22088EB6C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1(&v73);
  __swift_project_boxed_opaque_existential_1(v27 + 4, v27[7]);
  sub_2208863EC();
  sub_2208869CC();
  (*(v68 + 8))(v15, v69);
  v30 = *(v29 + 16);
  v31 = v59;
  v69 = v22;
  v30(v59, v22, v28);
  v32 = *(v29 + 88);
  v68 = v28;
  v33 = v32(v31, v28);
  if (v33 == *MEMORY[0x277D69480])
  {
    v34 = MEMORY[0x277D68AE0];
LABEL_7:
    (*(v61 + 104))(v60, *v34, v62);
    v35 = v63;
    sub_22088951C();
    sub_2204556F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v36 = sub_220886F8C();
    v37 = *(v36 - 8);
    v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_220899360;
    (*(v37 + 104))(v39 + v38, *MEMORY[0x277CEAD10], v36);
    sub_22046F734(&qword_2812984C8, MEMORY[0x277D685F0], MEMORY[0x277D685E8]);
    v40 = v65;
    sub_2208872CC();

    (*(v64 + 8))(v35, v40);
    v41 = (v1 + *(*v1 + 184));
    v42 = v41[3];
    v43 = v41[4];
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v44 = v70;
    AttributionProviderType.source.getter(v42, v43);
    v45 = v41[3];
    v46 = v41[4];
    __swift_project_boxed_opaque_existential_1(v41, v45);
    (*(v46 + 8))(v45, v46);
    v47 = swift_allocObject();
    swift_weakInit();
    v48 = swift_allocObject();
    v49 = v66;
    v50 = v67;
    v48[2] = v67;
    v48[3] = v49;
    v48[4] = v47;
    v51 = sub_220888D9C();
    sub_2208886EC();

    __swift_project_boxed_opaque_existential_1(&v73, *(&v74 + 1));
    sub_2208882EC();
    __swift_destroy_boxed_opaque_existential_1(&v73);
    __swift_project_boxed_opaque_existential_1(v27 + 4, v27[7]);
    sub_22046F734(&qword_28128E5C8, type metadata accessor for StockListDataManager, &unk_22089C348);
    sub_220885FAC();
    __swift_project_boxed_opaque_existential_1(v27 + 9, v27[12]);
    sub_22046F734(&qword_28128E5C0, type metadata accessor for StockListDataManager, &unk_22089C320);
    sub_22088630C();
    sub_22088BF1C();
    v52 = *(v1 + *(*v1 + 160) + 8);
    ObjectType = swift_getObjectType();
    LOBYTE(v72[0]) = 0;
    (*(v52 + 32))(&v73, v72, ObjectType, v52);
    v72[0] = v73;
    v72[1] = v74;
    v54 = v69;
    v55 = (*(v49 + 40))(v72, v69, v44, v50, v49);

    *&v73 = v55;
    v56 = swift_allocObject();
    swift_weakInit();
    v57 = swift_allocObject();
    v57[2] = v50;
    v57[3] = v49;
    v57[4] = v56;
    sub_2204AB448(0);
    sub_22046F734(&qword_281297D28, sub_2204AB448, MEMORY[0x277D6D890]);

    sub_22088B6DC();

    sub_2204AB5DC(v44, type metadata accessor for AttributionSource);
    (*(v71 + 8))(v54, v68);

    return;
  }

  if (v33 == *MEMORY[0x277D69468])
  {
    v34 = MEMORY[0x277D68AD8];
    goto LABEL_7;
  }

  if (v33 == *MEMORY[0x277D69478])
  {
    v34 = MEMORY[0x277D68AE8];
    goto LABEL_7;
  }

  sub_2208928AC();
  __break(1u);
}

uint64_t sub_2204AA2FC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2204AA334()
{

  return swift_deallocObject();
}

uint64_t sub_2204AA37C@<X0>(uint64_t *a1@<X8>)
{
  v34 = a1;
  sub_2204AA824(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204753E0(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22049CD4C(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22049CDFC(0);
  v18 = *(v17 - 8);
  v32 = v17;
  v33 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56));
  sub_22088600C();
  swift_getKeyPath();
  v22 = MEMORY[0x277CBCBE0];
  sub_22046AA4C(&qword_281296E10, sub_2204753E0, MEMORY[0x277CBCBE0]);
  sub_22088EB9C();

  (*(v7 + 8))(v10, v6);
  sub_22046AA4C(&qword_281296E40, sub_22049CD4C, MEMORY[0x277CBCB20]);
  sub_22046AA4C(&qword_2812992E8, MEMORY[0x277D69488], MEMORY[0x277D69490]);
  sub_22088EBCC();
  (*(v13 + 8))(v16, v12);
  sub_22046D5B4();
  v23 = sub_220891D0C();
  v35 = v23;
  v24 = sub_220891CEC();
  v25 = v31;
  (*(*(v24 - 8) + 56))(v31, 1, 1, v24);
  sub_22049CE94(0);
  v26 = v34;
  v34[3] = v27;
  v26[4] = sub_22046AA4C(&qword_281296DD0, sub_22049CE94, MEMORY[0x277CBCD60]);
  __swift_allocate_boxed_opaque_existential_1(v26);
  sub_22046AA4C(&qword_281296E20, sub_22049CDFC, v22);
  sub_22046AA4C(&qword_28127E7C8, sub_22046D5B4, MEMORY[0x277D85228]);
  v28 = v32;
  sub_22088EBAC();
  sub_2204AA87C(v25, sub_2204AA824);

  return (*(v33 + 8))(v21, v28);
}

void sub_2204AA824(uint64_t a1)
{
  if (!qword_28127E7D0)
  {
    sub_220891CEC();
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E7D0);
    }
  }
}

uint64_t sub_2204AA87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204AA8DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204AA93C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220790790(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_2204AA998@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  sub_2204AADB0(0);
  v7 = v6;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204AAE1C(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StocksActivity(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v20 = *(a1 + 16);
  if (!v20)
  {
    goto LABEL_5;
  }

  v21 = v20;
  v22 = [v21 userInfo];
  if (!v22)
  {

LABEL_5:
    (*(v16 + 56))(v14, 1, 1, v15);
    sub_2204AAF2C(v14, sub_2204AAE1C);
    result = 0.0;
    *a3 = xmmword_2208B2020;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    return result;
  }

  v36 = v10;
  v37 = v7;
  LODWORD(v38) = a2;
  v40 = a3;
  v23 = v22;
  *&v39[0] = sub_22089126C();

  v24 = [v21 activityType];
  v25 = sub_22089136C();
  v27 = v26;

  v28 = [v21 interaction];
  sub_2206B05D8(v25, v27, *&v39[0], v14);

  (*(v16 + 56))(v14, 0, 1, v15);
  sub_2205A06B8(v14, v19);
  v30 = v36;
  v31 = &v36[*(v37 + 48)];
  *v36 = v38;
  sub_2205A06B8(v19, v31);
  if (*v30 || swift_getEnumCaseMultiPayload())
  {
    v32 = v40;
    *v40 = xmmword_2208B2020;
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    sub_2204AAF2C(v31, type metadata accessor for StocksActivity);
  }

  else
  {
    v33 = *v31;
    v38 = v31[1];
    *v39 = v33;

    v34 = v40;
    v35 = v38;
    result = v39[0];
    *v40 = *v39;
    v34[1] = v35;
  }

  return result;
}

void sub_2204AAD14(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2204AA998(v2, *a1, &v9);
  if (v10 == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0uLL;
  }

  else
  {
    v4 = v9;
    v5 = v11;
    v8 = v10;
    swift_beginAccess();
    v7 = *(v2 + 16);
    *(v2 + 16) = 0;

    v6 = v8;
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 24) = v5;
}

void sub_2204AADB0(uint64_t a1)
{
  if (!qword_2812960D8)
  {
    type metadata accessor for StocksActivity(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812960D8);
    }
  }
}

void sub_2204AAE1C(uint64_t a1)
{
  if (!qword_281295190[0])
  {
    type metadata accessor for StocksActivity(255);
    v1 = sub_22089230C();
    if (!v2)
    {
      atomic_store(v1, qword_281295190);
    }
  }
}

uint64_t sub_2204AAE74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2205A071C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204AAED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22044792C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204AAF2C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204AAF8C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for StockListPrewarmBlueprintModifier(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v24 - v14;
  sub_22046DA2C(v4 + 16, &v24 - v14 + 16);
  sub_22046DA2C(v4 + 56, (v15 + 56));
  sub_22046DA2C(v4 + 96, (v15 + 96));
  sub_22046DA2C(v4 + 136, (v15 + 136));
  v16 = v8[9];
  v17 = sub_220885D4C();
  v18 = *(*(v17 - 8) + 16);
  v19 = *a1;
  v24 = a1[1];
  v25 = v19;
  v18(&v15[v16], a2, v17);
  sub_2204AB3E0(a3, &v15[v8[10]], type metadata accessor for AttributionSource);
  __swift_project_boxed_opaque_existential_1((v4 + 176), *(v4 + 200));
  sub_22088641C();
  sub_22046DA2C(v4 + 216, &v15[v8[12]]);
  *v15 = 0x6D726177657250;
  *(v15 + 1) = 0xE700000000000000;
  v20 = &v15[v8[13]];
  v21 = v24;
  *v20 = v25;
  *(v20 + 1) = v21;
  sub_2204AB3E0(v15, v11, type metadata accessor for StockListPrewarmBlueprintModifier);
  sub_2204AB448(0);
  swift_allocObject();
  sub_22046F614(qword_281282ED0, type metadata accessor for StockListPrewarmBlueprintModifier, &unk_22089DACC);

  v22 = sub_22088B66C();
  sub_2204AB57C(v15, type metadata accessor for StockListPrewarmBlueprintModifier);
  return v22;
}

uint64_t type metadata accessor for StockListPrewarmBlueprintModifier(uint64_t a1)
{
  result = qword_281282EB8;
  if (!qword_281282EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2204AB264(uint64_t a1)
{
  result = sub_2204446D4(319, &qword_281299280, MEMORY[0x277D69550]);
  if (v2 <= 0x3F)
  {
    result = sub_2204446D4(319, &unk_2812991E0, MEMORY[0x277D696B8]);
    if (v3 <= 0x3F)
    {
      result = sub_2204446D4(319, &qword_281288DB0, &protocol descriptor for SparklineModelProviderType);
      if (v4 <= 0x3F)
      {
        result = sub_2204446D4(319, &unk_281299178, MEMORY[0x277D69718]);
        if (v5 <= 0x3F)
        {
          result = sub_220885D4C();
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for AttributionSource(319);
            if (v7 <= 0x3F)
            {
              result = sub_220885ACC();
              if (v8 <= 0x3F)
              {
                result = sub_2204446D4(319, &qword_281299220, MEMORY[0x277D69608]);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2204AB3E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2204AB448(uint64_t a1)
{
  if (!qword_281297D20)
  {
    type metadata accessor for StockListModel(255);
    sub_22045B950();
    sub_22046F614(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v1 = sub_22088B67C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297D20);
    }
  }
}

uint64_t sub_2204AB54C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2204AB57C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204AB5DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2204AB63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a2;
  v21 = a3;
  v5 = type metadata accessor for StockListPrewarmBlueprintModifier(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8, v8);
  v9 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  sub_2204ABD88(0, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
  sub_220888FBC();
  sub_2204ABEA0(v4, v9, type metadata accessor for StockListPrewarmBlueprintModifier);
  v10 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v11 = swift_allocObject();
  sub_2204ABF08(v9, v11 + v10);
  v12 = sub_220888D9C();
  sub_220888E3C();

  sub_2204ABEA0(v4, v9, type metadata accessor for StockListPrewarmBlueprintModifier);
  v13 = swift_allocObject();
  sub_2204ABF08(v9, v13 + v10);
  v14 = (v13 + ((v10 + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = v20;
  v15 = v21;
  *v14 = v20;
  v14[1] = v15;

  v17 = sub_220888D9C();
  sub_220888E4C();

  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v15;

  v19 = sub_220888D9C();
  sub_220888E9C();
}

uint64_t sub_2204AB8F4()
{
  v1 = type metadata accessor for StockListPrewarmBlueprintModifier(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  __swift_destroy_boxed_opaque_existential_1(v2 + 7);
  __swift_destroy_boxed_opaque_existential_1(v2 + 12);
  __swift_destroy_boxed_opaque_existential_1(v2 + 17);
  v3 = v1[9];
  v4 = sub_220885D4C();
  (*(*(v4 - 8) + 8))(&v2[v3], v4);
  v5 = &v2[v1[10]];

  v6 = type metadata accessor for AttributionSource(0);
  v7 = *(v6 + 20);
  v8 = sub_220884E9C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v5[v7], 1, v8))
  {
    (*(v9 + 8))(&v5[v7], v8);
  }

  v10 = v1[11];
  v11 = sub_220885ACC();
  (*(*(v11 - 8) + 8))(&v2[v10], v11);
  __swift_destroy_boxed_opaque_existential_1(&v2[v1[12]]);

  return swift_deallocObject();
}

uint64_t sub_2204ABB14()
{
  v1 = type metadata accessor for StockListPrewarmBlueprintModifier(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  __swift_destroy_boxed_opaque_existential_1(v2 + 7);
  __swift_destroy_boxed_opaque_existential_1(v2 + 12);
  __swift_destroy_boxed_opaque_existential_1(v2 + 17);
  v3 = v1[9];
  v4 = sub_220885D4C();
  (*(*(v4 - 8) + 8))(&v2[v3], v4);
  v5 = &v2[v1[10]];

  v6 = type metadata accessor for AttributionSource(0);
  v7 = *(v6 + 20);
  v8 = sub_220884E9C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v5[v7], 1, v8))
  {
    (*(v9 + 8))(&v5[v7], v8);
  }

  v10 = v1[11];
  v11 = sub_220885ACC();
  (*(*(v11 - 8) + 8))(&v2[v10], v11);
  __swift_destroy_boxed_opaque_existential_1(&v2[v1[12]]);

  return swift_deallocObject();
}

uint64_t sub_2204ABD4C()
{

  return swift_deallocObject();
}

void sub_2204ABD88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2204ABDEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2204ABEA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2204ABF08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockListPrewarmBlueprintModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2204ABFD8(uint64_t *a1, void *a2)
{
  v4 = type metadata accessor for StockListPrewarmBlueprintModifier(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = *a1;
  __swift_project_boxed_opaque_existential_1(a2 + 7, a2[10]);
  sub_22088632C();
  sub_2204ABEA0(a2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StockListPrewarmBlueprintModifier);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_2204ABF08(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;

  v11 = sub_220888D9C();
  v12 = sub_220888E4C();

  return v12;
}

uint64_t sub_2204AC170()
{
  v1 = type metadata accessor for StockListPrewarmBlueprintModifier(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  __swift_destroy_boxed_opaque_existential_1(v2 + 7);
  __swift_destroy_boxed_opaque_existential_1(v2 + 12);
  __swift_destroy_boxed_opaque_existential_1(v2 + 17);
  v3 = v1[9];
  v4 = sub_220885D4C();
  (*(*(v4 - 8) + 8))(&v2[v3], v4);
  v5 = &v2[v1[10]];

  v6 = type metadata accessor for AttributionSource(0);
  v7 = *(v6 + 20);
  v8 = sub_220884E9C();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(&v5[v7], 1, v8))
  {
    (*(v9 + 8))(&v5[v7], v8);
  }

  v10 = v1[11];
  v11 = sub_220885ACC();
  (*(*(v11 - 8) + 8))(&v2[v10], v11);
  __swift_destroy_boxed_opaque_existential_1(&v2[v1[12]]);

  return swift_deallocObject();
}

uint64_t sub_2204AC3A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for StockListPrewarmBlueprintModifier(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_2204AC44C(a1, (v2 + v6), *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a2);
}

uint64_t sub_2204AC44C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v19[2] = a1;
  v19[3] = a3;
  v21 = a4;
  v20 = sub_220885DFC();
  v5 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220886A4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[20];
  v19[1] = a2[21];
  v19[0] = __swift_project_boxed_opaque_existential_1(a2 + 17, v14);
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_2208863EC();
  sub_220886A3C();
  (*(v10 + 8))(v13, v9);
  v15 = sub_22088646C();
  (*(v5 + 8))(v8, v20);
  v16 = sub_22088581C();
  result = sub_2208857FC();
  v18 = v21;
  *v21 = v15;
  v18[1] = v16;
  v18[2] = result;
  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2204AC660(__int128 *a1)
{
  v3 = *(type metadata accessor for StockListPrewarmBlueprintModifier(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_2204AC70C(a1, (v1 + v4), *v5, *(v5 + 8));
}

uint64_t sub_2204AC70C(__int128 *a1, void *a2, void (*a3)(char *), uint64_t a4)
{
  v160 = a4;
  v161 = a3;
  sub_2204ADA80(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v159 = v6;
  v158 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v157 = &v141 - v8;
  sub_22047572C(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v154 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204ADA80(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v156 = v12;
  v170 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v155 = &v141 - v14;
  v15 = sub_220886A4C();
  v153 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v152 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v151 = &v141 - v20;
  sub_22046B2A0(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v163 = &v141 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C(0);
  v166 = v24;
  v164 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v162 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v142 = &v141 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v149 = &v141 - v32;
  v33 = type metadata accessor for AttributionSource(0);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v143 = (&v141 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v165, v36);
  v146 = (&v141 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22046B36C(0);
  v39 = v38;
  v169 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v40);
  v145 = &v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43);
  v148 = &v141 - v44;
  v177 = sub_22088685C();
  v45 = *(v177 - 8);
  MEMORY[0x28223BE20](v177, v46);
  v176 = &v141 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = *a1;
  v144 = *(a1 + 2);
  sub_22048D7F8(0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_220899920;
  v49 = v167;
  v50 = *(v167 + 16);
  v51 = MEMORY[0x277D83C10];
  *(v48 + 56) = MEMORY[0x277D83B88];
  *(v48 + 64) = v51;
  v147 = v48;
  *(v48 + 32) = v50;
  *&v178 = 0;
  *(&v178 + 1) = 0xE000000000000000;
  v52 = MEMORY[0x277D84F90];
  v168 = v39;
  v171 = a2;
  v150 = v49;
  if (v50)
  {
    v141 = v15;
    v182 = MEMORY[0x277D84F90];
    sub_22048EE54(0, v50, 0);
    v52 = v182;
    v54 = *(v45 + 16);
    v53 = v45 + 16;
    v55 = v49 + ((*(v53 + 64) + 32) & ~*(v53 + 64));
    v174 = *(v53 + 56);
    v175 = v54;
    v173 = (v53 - 8);
    do
    {
      v57 = v176;
      v56 = v177;
      v175(v176, v55, v177);
      v58 = sub_22088681C();
      v60 = v59;
      (*v173)(v57, v56);
      v182 = v52;
      v62 = *(v52 + 16);
      v61 = *(v52 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_22048EE54((v61 > 1), v62 + 1, 1);
        v52 = v182;
      }

      *(v52 + 16) = v62 + 1;
      v63 = v52 + 16 * v62;
      *(v63 + 32) = v58;
      *(v63 + 40) = v60;
      v55 += v174;
      --v50;
    }

    while (v50);
    a2 = v171;
    v39 = v168;
    v15 = v141;
  }

  v182 = v52;
  sub_2204ADED0();
  sub_22046B258(&qword_28127E9B0, sub_2204ADED0, MEMORY[0x277D83958]);
  v64 = sub_2208912CC();
  v66 = v65;

  MEMORY[0x223D89680](v64, v66);

  v67 = v178;
  v68 = v147;
  *(v147 + 96) = MEMORY[0x277D837D0];
  *(v68 + 104) = sub_22048D860();
  *(v68 + 72) = v67;
  sub_22048D2F4();
  v69 = sub_2208922DC();
  v70 = sub_220891AFC();
  sub_22088A7EC("prewarming stocklist with %lu symbols: %{public}@", 49, 2, &dword_22043F000, v69, v70, v68);

  v71 = type metadata accessor for StockListPrewarmBlueprintModifier(0);
  __swift_project_boxed_opaque_existential_1((a2 + *(v71 + 48)), *(a2 + *(v71 + 48) + 24));
  v72 = sub_22088618C();
  v177 = v71;
  if (v72)
  {
    v73 = v15;
    v176 = MEMORY[0x277D84F90];
    v74 = v151;
  }

  else
  {
    v75 = v143;
    sub_2204ABEA0(a2 + *(v71 + 40), v143, type metadata accessor for AttributionSource);
    v76 = sub_2204ADF20(v75);
    v77 = v146;
    *v146 = v76;
    v77[1] = v78;
    v77[2] = v79;
    v77[3] = v80;
    swift_storeEnumTagMultiPayload();
    sub_22046B258(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v81 = v148;
    sub_22088AD7C();
    v180 = 0;
    v178 = 0u;
    v179 = 0u;
    v181 = 2;
    sub_2204ABD88(0, &qword_28127E0F8, sub_22046B36C, MEMORY[0x277D84560]);
    v82 = v169;
    v83 = (*(v169 + 80) + 32) & ~*(v169 + 80);
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_220899360;
    (*(v82 + 16))(v84 + v83, v81, v39);
    v85 = sub_22046B258(&qword_281297F88, sub_22046B36C, MEMORY[0x277D6D408]);
    v86 = sub_22046B258(&unk_281297F90, sub_22046B36C, MEMORY[0x277D6D3F8]);
    MEMORY[0x223D80A20](v84, v39, v85, v86);
    sub_22045B950();
    sub_22088B29C();
    v87 = sub_2204AE514(0, 1, 1, MEMORY[0x277D84F90]);
    v89 = *(v87 + 2);
    v88 = *(v87 + 3);
    if (v89 >= v88 >> 1)
    {
      v87 = sub_2204AE514((v88 > 1), v89 + 1, 1, v87);
    }

    v74 = v151;
    v73 = v15;
    (*(v169 + 8))(v148, v39);
    *(v87 + 2) = v89 + 1;
    v90 = *(v164 + 32);
    v91 = (*(v164 + 80) + 32) & ~*(v164 + 80);
    v176 = v87;
    v90(&v87[v91 + *(v164 + 72) * v89], v149, v166);
  }

  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  sub_2208863EC();
  v175 = sub_2208869DC();
  v93 = v92;
  v94 = *(v153 + 8);
  v95 = v73;
  v94(v74, v73);
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  v96 = v152;
  sub_2208863EC();
  v97 = sub_2208869BC();
  v99 = v98;
  v94(v96, v95);
  __swift_project_boxed_opaque_existential_1(a2 + 2, a2[5]);
  v100 = sub_220885FCC();
  v101 = sub_22088F0DC();
  if ((v101 & 1) != 0 && *(v100 + 16) <= 1uLL)
  {

    v103 = 0;
    v93 = 0;
    v97 = 0;
    v99 = 0;
    v100 = 0;
    if (*(v150 + 16))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v103 = v175;
    if (*(v150 + 16))
    {
LABEL_15:
      MEMORY[0x28223BE20](v101, v102);
      *(&v141 - 2) = v167;
      v104 = v171;
      v105 = v172;
      *(&v141 - 2) = v144;
      *(&v141 - 1) = v104;
      sub_2204AE548(sub_2204AF958, (&v141 - 6), v106);
      v108 = v107;
      v172 = v105;
      *&v178 = v103;
      *(&v178 + 1) = v93;
      *&v179 = v97;
      *(&v179 + 1) = v99;
      v180 = v100;
      v181 = 0;
      v109 = sub_22046B258(&qword_281297F88, sub_22046B36C, MEMORY[0x277D6D408]);
      v110 = sub_22046B258(&unk_281297F90, sub_22046B36C, MEMORY[0x277D6D3F8]);
      MEMORY[0x223D80A20](v108, v168, v109, v110);
      sub_22045B950();
      sub_22046B258(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
      sub_22088B29C();
      v111 = v176;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v111 = sub_2204AE514(0, v111[2] + 1, 1, v111);
      }

      v112 = v157;
      v113 = v156;
      v114 = v155;
      v116 = v111[2];
      v115 = v111[3];
      v117 = v116 + 1;
      if (v116 >= v115 >> 1)
      {
        v111 = sub_2204AE514((v115 > 1), v116 + 1, 1, v111);
      }

      v118 = v162;
      goto LABEL_26;
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_22046B258(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
  v119 = v145;
  sub_22088AD7C();
  *&v178 = v103;
  *(&v178 + 1) = v93;
  *&v179 = v97;
  *(&v179 + 1) = v99;
  v180 = v100;
  v181 = 1;
  sub_2204ABD88(0, &qword_28127E0F8, sub_22046B36C, MEMORY[0x277D84560]);
  v120 = v169;
  v121 = (*(v169 + 80) + 32) & ~*(v169 + 80);
  v122 = swift_allocObject();
  *(v122 + 16) = xmmword_220899360;
  v123 = v119;
  v124 = v168;
  (*(v120 + 16))(v122 + v121, v123, v168);
  v125 = sub_22046B258(&qword_281297F88, sub_22046B36C, MEMORY[0x277D6D408]);
  v126 = sub_22046B258(&unk_281297F90, sub_22046B36C, MEMORY[0x277D6D3F8]);
  MEMORY[0x223D80A20](v122, v124, v125, v126);
  sub_22045B950();
  v118 = v142;
  sub_22088B29C();
  v111 = v176;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v111 = sub_2204AE514(0, v111[2] + 1, 1, v111);
  }

  v112 = v157;
  v113 = v156;
  v114 = v155;
  v116 = v111[2];
  v127 = v111[3];
  v117 = v116 + 1;
  if (v116 >= v127 >> 1)
  {
    v111 = sub_2204AE514((v127 > 1), v116 + 1, 1, v111);
  }

  (*(v169 + 8))(v145, v124);
LABEL_26:
  v111[2] = v117;
  v128 = v166;
  (*(v164 + 32))(v111 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v116, v118, v166);
  v129 = sub_22046B258(&qword_281297DC8, sub_22046B19C, MEMORY[0x277D6D720]);
  v130 = sub_22046B258(&qword_281297DD0, sub_22046B19C, MEMORY[0x277D6D718]);
  MEMORY[0x223D80A20](v111, v128, v129, v130);
  sub_22045B950();
  sub_22046B258(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
  sub_22088E7CC();
  sub_2204B3F5C(0);
  v132 = &v112[*(v131 + 48)];
  (*(v170 + 16))(v112, v114, v113);
  v133 = v171 + *(v177 + 52);
  v134 = *(v133 + 1);
  if (v134)
  {
    *v132 = *v133;
    *(v132 + 1) = v134;
    *(v132 + 1) = *(v133 + 1);
    v135 = MEMORY[0x277D6D860];
  }

  else
  {
    v135 = MEMORY[0x277D6D868];
  }

  v136 = *v135;
  v137 = sub_22088B64C();
  (*(*(v137 - 8) + 104))(v132, v136, v137);
  v138 = v158;
  v139 = v159;
  (*(v158 + 104))(v112, *MEMORY[0x277D6DF70], v159);

  v161(v112);
  (*(v138 + 8))(v112, v139);
  return (*(v170 + 8))(v114, v113);
}

void sub_2204AD9C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockListSectionDescriptor;
    v8[1] = type metadata accessor for StockListModel(255);
    v8[2] = sub_22045B950();
    v8[3] = sub_22046F584(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2204ADA80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockListSectionDescriptor;
    v8[1] = type metadata accessor for StockListModel(255);
    v8[2] = sub_22045B950();
    v8[3] = sub_22046B258(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2204ADB40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockListSectionDescriptor;
    v8[1] = type metadata accessor for StockListModel(255);
    v8[2] = sub_22045B950();
    v8[3] = sub_22046F6A4(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2204ADC00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockListSectionDescriptor;
    v8[1] = type metadata accessor for StockListModel(255);
    v8[2] = sub_22045B950();
    v8[3] = sub_220455464();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2204ADC90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockListSectionDescriptor;
    v8[1] = type metadata accessor for StockListModel(255);
    v8[2] = sub_22045B950();
    v8[3] = sub_220707308(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2204ADD50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockListSectionDescriptor;
    v8[1] = type metadata accessor for StockListModel(255);
    v8[2] = sub_22045B950();
    v8[3] = sub_2204D681C(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2204ADE10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockListSectionDescriptor;
    v8[1] = type metadata accessor for StockListModel(255);
    v8[2] = sub_22045B950();
    v8[3] = sub_220838584(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2204ADED0()
{
  if (!qword_28127E9C0)
  {
    v0 = sub_2208917AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E9C0);
    }
  }
}

uint64_t sub_2204ADF20(uint64_t *a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = objc_opt_self();
  v4 = [v3 bundleForClass_];
  sub_220884CAC();

  v5 = sub_22089139C();

  v6 = [v3 bundleForClass_];
  sub_220884CAC();

  sub_22048D7F8(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_220899360;
  v9 = *a1;
  v8 = a1[1];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_22048D860();
  *(v7 + 32) = v9;
  *(v7 + 40) = v8;

  sub_22089133C();

  sub_2204AE278(a1);
  return v5;
}

unint64_t sub_2204AE110(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B40F4(v2, v10, type metadata accessor for StockListModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2204AE394(v10, type metadata accessor for StockListModel);
      v12 = 1633972084;
    }

    else
    {
      v12 = 1953525093;
    }

    return v12 & 0xFFFF0000FFFFFFFFLL | 0x7900000000;
  }

  else
  {
    sub_2204CDB9C(v10, v6);
    v13 = sub_22088677C();
    sub_2204AE394(v6, type metadata accessor for StockListStockModel);
    return v13;
  }
}

uint64_t sub_2204AE278(uint64_t a1)
{
  v2 = type metadata accessor for AttributionSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2204AE2D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204AE334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204AE394(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204AE3F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204AE454(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204AE4B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204AE59C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v170 = a5;
  v142 = a4;
  v139 = a3;
  v155 = a6;
  v154 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v154, v8);
  v153 = &v135 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_220886A4C();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v10);
  v149 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v148, v12);
  v152 = &v135 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208852DC();
  v169 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_2208857EC();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v18);
  v144 = &v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22088699C();
  v165 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v162 = &v135 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v135 - v25;
  v27 = sub_220885D4C();
  v163 = *(v27 - 8);
  v164 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v160 = &v135 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_22088685C();
  v161 = *(v172 - 8);
  MEMORY[0x28223BE20](v172, v30);
  v174 = &v135 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v156, v32);
  v173 = &v135 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x277D83D88];
  sub_2204ABD88(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v159 = &v135 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v167 = &v135 - v40;
  sub_2204ABD88(0, &qword_2812990C0, MEMORY[0x277D697F8], v34);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v143 = &v135 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v45);
  v141 = &v135 - v46;
  MEMORY[0x28223BE20](v47, v48);
  v140 = &v135 - v49;
  MEMORY[0x28223BE20](v50, v51);
  v138 = &v135 - v52;
  MEMORY[0x28223BE20](v53, v54);
  v157 = &v135 - v55;
  MEMORY[0x28223BE20](v56, v57);
  v158 = &v135 - v58;
  MEMORY[0x28223BE20](v59, v60);
  v62 = &v135 - v61;
  v63 = a1;
  v64 = sub_22088681C();
  v66 = v139;
  v67 = *(v139 + 16);
  v147 = v14;
  v168 = v17;
  v166 = v20;
  v171 = v26;
  if (v67)
  {
    v135 = a2;
    v68 = sub_2204AF97C(v64, v65);
    v70 = v69;

    if (v70)
    {
      v71 = *(v66 + 56);
      v72 = sub_22088676C();
      v73 = *(v72 - 8);
      v74 = v73;
      v75 = *(v73 + 72);
      v76 = *(v73 + 16);
      v137 = (v72 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v76(v62, v71 + v75 * v68, v72);
      v77 = *(v74 + 56);
      v136 = v72;
      v77(v62, 0, 1, v72);
    }

    else
    {
      v80 = sub_22088676C();
      v81 = *(*(v80 - 8) + 56);
      v137 = (v80 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v136 = v80;
      v81(v62, 1, 1);
    }
  }

  else
  {

    v78 = sub_22088676C();
    v79 = *(*(v78 - 8) + 56);
    v137 = (v78 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v136 = v78;
    v79(v62, 1, 1);
  }

  v82 = v167;
  v83 = v63;
  v84 = v63;
  v85 = v170;
  sub_2204AFA44(v142, v83, v170, v62, v167);
  v139 = *(v161 + 16);
  (v139)(v174, v84, v172);
  v86 = v62;
  v87 = MEMORY[0x277D697F8];
  v142 = v86;
  v88 = v158;
  sub_2204B277C(v86, v158, &qword_2812990C0, MEMORY[0x277D697F8]);
  v135 = type metadata accessor for StockSparklineViewModel;
  v89 = v159;
  sub_2204B277C(v82, v159, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  v90 = type metadata accessor for StockListPrewarmBlueprintModifier(0);
  v91 = v164;
  v92 = *(v163 + 16);
  v93 = v160;
  v92(v160, &v85[*(v90 + 36)], v164);
  v94 = v173;
  (v139)(v173, v174, v172);
  v95 = v156;
  sub_2204B277C(v88, v94 + *(v156 + 20), &qword_2812990C0, v87);
  sub_2204B277C(v89, v94 + v95[6], qword_28128AAE8, v135);
  v92((v94 + v95[8]), v93, v91);
  *(v94 + v95[9]) = 0;
  v96 = v157;
  sub_2204B277C(v88, v157, &qword_2812990C0, v87);
  sub_2208867CC();
  v97 = v138;
  sub_2204B277C(v96, v138, &qword_2812990C0, v87);
  sub_22088676C();
  v98 = v136;
  v99 = *(v136 - 8);
  v100 = *(v99 + 48);
  if (v100(v97, 1, v136) == 1)
  {
    sub_2204B38F8(v97, &qword_2812990C0, MEMORY[0x277D697F8]);
    v139 = 0;
    LODWORD(v137) = 1;
  }

  else
  {
    v139 = sub_22088675C();
    LODWORD(v137) = v101;
    (*(v99 + 8))(v97, v98);
  }

  v102 = v162;
  v103 = v143;
  v104 = v140;
  sub_2204B277C(v96, v140, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v100(v104, 1, v98) == 1)
  {
    sub_2204B38F8(v104, &qword_2812990C0, MEMORY[0x277D697F8]);
    v140 = 0;
    LODWORD(v138) = 1;
  }

  else
  {
    v140 = sub_22088666C();
    LODWORD(v138) = v105;
    (*(v99 + 8))(v104, v98);
  }

  v106 = v141;
  sub_2204B277C(v96, v141, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v100(v106, 1, v98) == 1)
  {
    sub_2204B38F8(v106, &qword_2812990C0, MEMORY[0x277D697F8]);
    v141 = 0;
    LODWORD(v136) = 1;
  }

  else
  {
    v141 = sub_22088671C();
    LODWORD(v136) = v107;
    (*(v99 + 8))(v106, v98);
  }

  sub_2204B277C(v96, v103, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v100(v103, 1, v98) == 1)
  {
    sub_2204B38F8(v103, &qword_2812990C0, MEMORY[0x277D697F8]);
    v143 = 0;
    v108 = 0;
  }

  else
  {
    v143 = sub_22088668C();
    v108 = v109;
    (*(v99 + 8))(v103, v98);
  }

  v110 = v166;
  v111 = v173 + *(v156 + 28);
  v156 = *(v165 + 16);
  v112 = v102;
  (v156)(v102, v171, v166);
  v113 = v145;
  v114 = v144;
  v115 = v146;
  (*(v145 + 104))(v144, *MEMORY[0x277D69288], v146);
  v116 = v168;
  sub_22088524C();
  *v111 = v139;
  *(v111 + 8) = v137 & 1;
  *(v111 + 16) = v140;
  *(v111 + 24) = v138 & 1;
  *(v111 + 32) = v141;
  *(v111 + 40) = v136 & 1;
  *(v111 + 48) = v143;
  *(v111 + 56) = v108;
  v117 = type metadata accessor for PriceViewModel(0);
  (v156)(v111 + v117[10], v112, v110);
  v118 = v115;
  *(v111 + 64) = 9666786;
  *(v111 + 72) = 0xA300000000000000;
  (*(v113 + 16))(v111 + v117[9], v114, v115);
  v119 = v147;
  (*(v169 + 16))(v111 + v117[11], v116, v147);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v120 = qword_2812B6B48;
  (*(v113 + 8))(v114, v118);
  v121 = v166;
  v122 = *(v165 + 8);
  v122(v162, v166);
  v122(v171, v121);
  v123 = MEMORY[0x277D697F8];
  sub_2204B38F8(v157, &qword_2812990C0, MEMORY[0x277D697F8]);
  (*(v163 + 8))(v160, v164);
  sub_2204B38F8(v159, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  sub_2204B38F8(v158, &qword_2812990C0, v123);
  (*(v161 + 8))(v174, v172);
  v124 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v169 + 40))(v120 + v124, v168, v119);
  swift_endAccess();
  v125 = v173;
  v126 = v152;
  sub_2204ABEA0(v173, v152, type metadata accessor for StockViewModel);
  v127 = v170;
  __swift_project_boxed_opaque_existential_1(v170 + 2, *(v170 + 5));
  LOBYTE(v124) = sub_22088602C();
  __swift_project_boxed_opaque_existential_1(v127 + 2, *(v127 + 5));
  v128 = v149;
  sub_2208863EC();
  v129 = sub_2208869BC();
  v131 = v130;
  (*(v150 + 8))(v128, v151);
  v132 = v148;
  *(v126 + *(v148 + 20)) = v124 & 1;
  v133 = (v126 + *(v132 + 24));
  *v133 = v129;
  v133[1] = v131;
  sub_2204ABEA0(v126, v153, type metadata accessor for StockListStockModel);
  swift_storeEnumTagMultiPayload();
  sub_22046B258(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
  sub_22088AD7C();
  sub_2204B3E3C(v126, type metadata accessor for StockListStockModel);
  sub_2204B3E3C(v125, type metadata accessor for StockViewModel);
  sub_2204B38F8(v167, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  return sub_2204B38F8(v142, &qword_2812990C0, v123);
}

void sub_2204AF738(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void))
{
  v9 = v6;
  v26 = a1;
  v27 = a2;
  v25 = a4(0);
  v11 = *(v25 - 8);
  v13 = MEMORY[0x28223BE20](v25, v12);
  v15 = &v22 - v14;
  v16 = *(a3 + 16);
  if (v16)
  {
    v28 = MEMORY[0x277D84F90];
    v22 = a5;
    (a5)(0, v16, 0, v13);
    v17 = v28;
    v18 = *(a6(0) - 8);
    v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v24 = v11 + 32;
    v23 = *(v18 + 72);
    while (1)
    {
      v26(v19);
      if (v9)
      {
        break;
      }

      v9 = 0;
      v28 = v17;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        v22(v20 > 1, v21 + 1, 1);
        v17 = v28;
      }

      *(v17 + 16) = v21 + 1;
      (*(v11 + 32))(v17 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v21, v15, v25);
      v19 += v23;
      if (!--v16)
      {
        return;
      }
    }

    __break(1u);
  }
}

unint64_t sub_2204AF97C(uint64_t a1, uint64_t a2)
{
  sub_2208929EC();
  sub_22089146C();
  v4 = sub_220892A2C();

  return sub_2204DCCBC(a1, a2, v4);
}

void *sub_2204AF9F4(void *a1, int64_t a2, char a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E0F8, sub_22046B36C, sub_22046B36C);
  *v3 = result;
  return result;
}

uint64_t sub_2204AFA44@<X0>(uint64_t a1@<X2>, NSObject *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, _BYTE *a5@<X8>)
{
  v78 = a4;
  v79 = a5;
  v72 = a3;
  v7 = MEMORY[0x277D83D88];
  sub_2204ABD88(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v64[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v13);
  v71 = &v64[-v14];
  sub_2204ABD88(0, &qword_28127EDE8, MEMORY[0x277D6C680], v7);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v64[-v17];
  v19 = sub_220890D8C();
  v20 = *(v19 - 8);
  v76 = v19;
  v77 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v75 = &v64[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23, v24);
  v73 = &v64[-v25];
  v26 = sub_22088665C();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v74 = &v64[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v64[-v32];
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v64[-v36];
  v38 = sub_22088681C();
  if (!*(a1 + 16))
  {

    goto LABEL_6;
  }

  v70 = v11;
  v40 = sub_2204AF97C(v38, v39);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
LABEL_6:
    v47 = type metadata accessor for StockSparklineViewModel(0);
    return (*(*(v47 - 8) + 56))(v79, 1, 1, v47);
  }

  v43 = *(v27 + 16);
  v43(v33, *(a1 + 56) + *(v27 + 72) * v40, v26);
  v69 = *(v27 + 32);
  v69(v37, v33, v26);
  __swift_project_boxed_opaque_existential_1((v72 + 96), *(v72 + 120));
  v44 = v78;
  sub_2204B0174(v37, v78, a2, v18, 600.0, 0.02);
  v45 = v76;
  v46 = v77;
  if ((*(v77 + 48))(v18, 1, v76) == 1)
  {
    (*(v27 + 8))(v37, v26);
    sub_2204B38F8(v18, &qword_28127EDE8, MEMORY[0x277D6C680]);
    goto LABEL_6;
  }

  v72 = v27 + 32;
  v49 = v73;
  v67 = *(v46 + 32);
  v68 = v46 + 32;
  v67(v73, v18, v45);
  (*(v46 + 16))(v75, v49, v45);
  v43(v74, v37, v26);
  v50 = v71;
  sub_2204B277C(v44, v71, &qword_2812990C0, MEMORY[0x277D697F8]);
  v51 = sub_22088676C();
  v52 = *(v51 - 8);
  v53 = *(v52 + 48);
  if (v53(v50, 1, v51) == 1)
  {
    sub_2204B38F8(v50, &qword_2812990C0, MEMORY[0x277D697F8]);
    v66 = 0;
    v65 = 1;
  }

  else
  {
    v66 = sub_22088675C();
    v65 = v54;
    (*(v52 + 8))(v50, v51);
  }

  v55 = v70;
  sub_2204B277C(v78, v70, &qword_2812990C0, MEMORY[0x277D697F8]);
  if (v53(v55, 1, v51) == 1)
  {
    (*(v77 + 8))(v73, v45);
    (*(v27 + 8))(v37, v26);
    sub_2204B38F8(v55, &qword_2812990C0, MEMORY[0x277D697F8]);
    v56 = v45;
    v57 = 0;
    v58 = 1;
  }

  else
  {
    v56 = v45;
    v57 = sub_22088666C();
    v58 = v59;
    (*(v77 + 8))(v73, v56);
    (*(v27 + 8))(v37, v26);
    (*(v52 + 8))(v55, v51);
  }

  v60 = v79;
  v67(v79, v75, v56);
  v61 = type metadata accessor for StockSparklineViewModel(0);
  v69(&v60[v61[8]], v74, v26);
  v62 = &v60[v61[5]];
  *v62 = v66;
  v62[8] = v65 & 1;
  v63 = &v60[v61[6]];
  *v63 = v57;
  v63[8] = v58 & 1;
  v60[v61[7]] = 0;
  return (*(*(v61 - 1) + 56))(v60, 0, 1, v61);
}

void sub_2204B0174(char *a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v129 = a3;
  v130 = a4;
  v131 = a1;
  v9 = sub_22088699C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v107 - v16;
  v116 = sub_22088516C();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v18);
  v114 = &v107 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D8EC(0, &qword_281299480, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v113 = &v107 - v22;
  v112 = sub_2208857EC();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112, v23);
  v110 = &v107 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B0E8C(0);
  v109 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v108 = &v107 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22088665C();
  v127 = *(v28 - 8);
  v128 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v126 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_22088685C();
  v117 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v31);
  v124 = &v107 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22088A84C();
  v118 = *(v33 - 8);
  v119 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v123 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D8EC(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v39 = &v107 - v38;
  v40 = sub_22088676C();
  MEMORY[0x28223BE20](v40, v41);
  v122 = &v107 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v107 - v45;
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v107 - v49;
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v107 - v53;
  v120 = a2;
  v55 = a2;
  v57 = v56;
  sub_2204B1CA8(v55, v39);
  if ((*(v57 + 48))(v39, 1, v40) == 1)
  {
    v58 = v131;
    sub_2204B3BC0(v39, &qword_2812990C0, MEMORY[0x277D697F8]);
  }

  else
  {
    (*(v57 + 32))(v54, v39, v40);
    if ((sub_22088660C() & 1) == 0)
    {
      v64 = v123;
      sub_22088A80C();
      v65 = v117;
      (*(v117 + 16))(v124, v129, v125);
      (*(v127 + 16))(v126, v131, v128);
      v66 = *(v57 + 16);
      v66(v50, v54, v40);
      v66(v46, v54, v40);
      v67 = v122;
      v66(v122, v54, v40);
      v68 = sub_22088A82C();
      v69 = sub_220891AFC();
      if (os_log_type_enabled(v68, v69))
      {
        LODWORD(v121) = v69;
        v129 = v68;
        v131 = v54;
        v70 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v134[0] = v120;
        *v70 = 136447234;
        v71 = v124;
        v72 = sub_22088681C();
        v74 = v73;
        (*(v65 + 8))(v71, v125);
        v75 = sub_2204A7B78(v72, v74, v134);

        *(v70 + 4) = v75;
        *(v70 + 12) = 2082;
        v125 = v46;
        v76 = v108;
        v77 = v126;
        sub_22088664C();
        v132 = 0;
        v133 = 0xE000000000000000;
        v78 = v50;
        v79 = v116;
        sub_22089264C();
        MEMORY[0x223D89680](3026478, 0xE300000000000000);
        sub_22089264C();
        v80 = v132;
        v81 = v133;
        sub_2204B3660(v76);
        (*(v127 + 8))(v77, v128);
        v82 = sub_2204A7B78(v80, v81, v134);

        *(v70 + 14) = v82;
        *(v70 + 22) = 2082;
        v83 = v110;
        sub_22088669C();
        v84 = sub_2208857DC();
        v86 = v85;
        (*(v111 + 8))(v83, v112);
        v87 = *(v57 + 8);
        v87(v78, v40);
        v88 = sub_2204A7B78(v84, v86, v134);

        *(v70 + 24) = v88;
        *(v70 + 32) = 2082;
        v89 = v113;
        v90 = v125;
        sub_2208866EC();
        v91 = v115;
        if ((*(v115 + 48))(v89, 1, v79) == 1)
        {
          sub_2204B3BC0(v89, &qword_281299480, MEMORY[0x277CC9578]);
          v92 = 0xE300000000000000;
          v93 = 7104878;
        }

        else
        {
          v93 = sub_22088513C();
          v92 = v95;
          (*(v91 + 8))(v89, v79);
        }

        v96 = v91;
        v87(v90, v40);
        v97 = sub_2204A7B78(v93, v92, v134);

        *(v70 + 34) = v97;
        *(v70 + 42) = 2082;
        v98 = v114;
        v99 = v122;
        sub_2208866FC();
        sub_2204B0F68(&qword_281299488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v100 = sub_22089287C();
        v102 = v101;
        (*(v96 + 8))(v98, v79);
        v87(v99, v40);
        v103 = sub_2204A7B78(v100, v102, v134);

        *(v70 + 44) = v103;
        v104 = v129;
        _os_log_impl(&dword_22043F000, v129, v121, "Sparkline model for %{public}s with date range %{public}s not considered valid for quote (exchangeStatus: %{public}s, serverCreatedAt: %{public}s, dateLastRefreshed: %{public}s)", v70, 0x34u);
        v105 = v120;
        swift_arrayDestroy();
        MEMORY[0x223D8B7F0](v105, -1, -1);
        MEMORY[0x223D8B7F0](v70, -1, -1);

        (*(v118 + 8))(v123, v119);
        v87(v131, v40);
      }

      else
      {

        v94 = *(v57 + 8);
        v94(v67, v40);
        v94(v46, v40);
        v94(v50, v40);
        (*(v127 + 8))(v126, v128);
        (*(v65 + 8))(v124, v125);
        (*(v118 + 8))(v64, v119);
        v94(v54, v40);
      }

      goto LABEL_13;
    }

    v58 = v131;
    (*(v57 + 8))(v54, v40);
  }

  sub_2208867CC();
  (*(v10 + 104))(v13, *MEMORY[0x277D69868], v9);
  sub_2204B0F68(&qword_281299010, MEMORY[0x277D698A8], MEMORY[0x277D698B8]);
  v59 = sub_2208912FC();
  v60 = *(v10 + 8);
  v60(v13, v9);
  v61 = (v60)(v17, v9);
  if ((v59 & 1) == 0)
  {
    v62 = MEMORY[0x223D8AEC0](v61);
    v63.n128_f64[0] = a5;
    sub_2204B0FB0(v58, v120, v121, v130, a6, v63);
    objc_autoreleasePoolPop(v62);
    return;
  }

LABEL_13:
  v106 = sub_220890D8C();
  (*(*(v106 - 8) + 56))(v130, 1, 1, v106);
}

uint64_t sub_2204B0E44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2204B0E8C(uint64_t a1)
{
  if (!qword_28127EC18)
  {
    sub_22088516C();
    sub_2204B0E44(&qword_2812994A0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v1 = sub_2208912EC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127EC18);
    }
  }
}

uint64_t sub_2204B0F20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2204B0F68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2204B0FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D1>, __n128 a6@<Q0>)
{
  v117 = a3;
  v119 = a4;
  sub_2204B1AFC(0, a6);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v112 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_22089122C();
  MEMORY[0x28223BE20](v109, v12);
  v106 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B1C48();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v113 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_220890C7C();
  v18 = MEMORY[0x28223BE20](v105, v17);
  v114 = &v104 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B1D3C(0, v18);
  v111 = v20;
  v110 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v108 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v107 = &v104 - v25;
  sub_2204B0E8C(0);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v116 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_22088516C();
  v29 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v30);
  v124 = &v104 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_220890E5C();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v115 = &v104 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v136 = &v104 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v123 = &v104 - v41;
  MEMORY[0x28223BE20](v42, v43);
  v131 = &v104 - v44;
  v45 = sub_2208865FC();
  v46 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v47);
  v49 = &v104 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = a1;
  v50 = sub_2204B2EF4(a1, a2);
  v51 = *(v50 + 2);
  v126 = v33;
  v127 = v32;
  v120 = v50;
  if (v51)
  {
    v53 = *(v46 + 16);
    v52 = v46 + 16;
    v54 = v29;
    v55 = &v50[(*(v52 + 64) + 32) & ~*(v52 + 64)];
    v129 = *(v52 + 56);
    v130 = v53;
    v121 = (v54 + 8);
    v56 = (v52 - 8);
    v128 = (v33 + 32);
    v132 = MEMORY[0x277D84F90];
    v122 = v52;
    (v53)(v49, v55, v45);
    while (1)
    {
      sub_2208865DC();
      if (v57)
      {
        (*v56)(v49, v45);
      }

      else
      {
        v58 = v124;
        sub_2208865BC();
        sub_2208850FC();
        (*v121)(v58, v125);
        sub_22089185C();
        v59 = v123;
        sub_220890E3C();
        (*v56)(v49, v45);
        v60 = *v128;
        (*v128)(v131, v59, v32);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v61 = v132;
        }

        else
        {
          v61 = sub_2204B36BC(0, v132[2] + 1, 1, v132);
        }

        v63 = v61[2];
        v62 = v61[3];
        if (v63 >= v62 >> 1)
        {
          v61 = sub_2204B36BC((v62 > 1), v63 + 1, 1, v61);
        }

        v61[2] = v63 + 1;
        v64 = (*(v126 + 80) + 32) & ~*(v126 + 80);
        v132 = v61;
        v65 = v61 + v64 + *(v126 + 72) * v63;
        v32 = v127;
        v60(v65, v131, v127);
      }

      v55 += v129;
      if (!--v51)
      {
        break;
      }

      (v130)(v49, v55, v45);
    }
  }

  else
  {
    v132 = MEMORY[0x277D84F90];
  }

  v66 = v132[2];
  v67 = v136;
  if (v66 < 2)
  {

    v68 = sub_220891ADC();
    sub_22048D2F4();
    v69 = sub_2208922DC();
    sub_22088A7EC("Failed to create sparkline model: Insufficient data points", 58, 2, &dword_22043F000, v69, v68, MEMORY[0x277D84F90]);
LABEL_33:

    v101 = 1;
    v100 = v119;
    goto LABEL_34;
  }

  v70 = *(v126 + 16);
  v71 = v132 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
  v72 = *(v126 + 72);
  v73 = (v126 + 8);
  v74 = 0.0;
  v75 = 1.79769313e308;
  v130 = v71;
  v131 = v66;
  do
  {
    v70(v67, v71, v32);
    sub_220890E2C();
    if (v75 >= v76)
    {
      v75 = v76;
    }

    sub_220890E2C();
    v67 = v136;
    v78 = v77;
    v79 = *v73;
    result = (*v73)(v136, v32);
    if (v78 > v74)
    {
      v74 = v78;
    }

    v71 += v72;
    --v66;
  }

  while (v66);
  if (v131 > v132[2])
  {
    __break(1u);
  }

  else
  {
    v81 = v115;
    v82 = v127;
    v70(v115, &v130[v72 * (v131 - 1)], v127);
    sub_220890E2C();
    v84 = v83;
    v79(v81, v82);
    v85 = a5 * 0.5 * v84;
    v86 = v84 + v85;
    v87 = v84 - v85;
    if (v74 > v86)
    {
      v88 = v74;
    }

    else
    {
      v88 = v86;
    }

    if (v87 >= v75)
    {
      v89 = v75;
    }

    else
    {
      v89 = v87;
    }

    v90 = v117[5];
    v91 = v117[6];
    __swift_project_boxed_opaque_existential_1(v117 + 2, v90);
    v92 = v116;
    sub_22088664C();
    v93 = (*(v91 + 8))(v120, v92, v90, v91);

    sub_2204B3660(v92);
    if (*(v93 + 16) > 0xF9uLL)
    {

      v102 = sub_220891AEC();
      sub_22048D2F4();
      v69 = sub_2208922DC();
      sub_22088A7EC("Failed to create sparkline model: too many categories", 53, 2, &dword_22043F000, v69, v102, MEMORY[0x277D84F90]);
      goto LABEL_33;
    }

    MEMORY[0x223D80A20](v93, MEMORY[0x277D837D0], MEMORY[0x277D837F8], MEMORY[0x277D6CFA8]);
    result = sub_220890C6C();
    if (v89 <= v88)
    {
      v94 = sub_22089109C();
      swift_allocObject();
      v95 = sub_22089108C();
      v134 = v94;
      v135 = MEMORY[0x277D6C770];
      v133 = v95;
      sub_22089121C();
      v96 = v107;
      sub_220890DBC();
      v97 = v110;
      v98 = v111;
      (*(v110 + 16))(v108, v96, v111);
      v99 = MEMORY[0x277D6C6B0];
      sub_2204B0F68(&qword_28127EDB8, MEMORY[0x277D6C6B0], MEMORY[0x277D6C6C8]);
      sub_2204B0F68(&qword_28127EDC8, v99, MEMORY[0x277D6C6B8]);
      sub_2204B0F68(&qword_28127EDC0, v99, MEMORY[0x277D6C6C0]);
      sub_22089119C();
      v100 = v119;
      sub_220890D5C();
      (*(v97 + 8))(v96, v98);
      v101 = 0;
LABEL_34:
      v103 = sub_220890D8C();
      return (*(*(v103 - 8) + 56))(v100, v101, 1, v103);
    }
  }

  __break(1u);
  return result;
}

void sub_2204B1AFC(uint64_t a1, __n128 a2)
{
  if (!qword_28127ECC0)
  {
    sub_220890E5C();
    v2 = MEMORY[0x277D6C6B0];
    sub_2204B1C00(&qword_28127EDB8, MEMORY[0x277D6C6B0], MEMORY[0x277D6C6C8]);
    sub_2204B1C00(&qword_28127EDC8, v2, MEMORY[0x277D6C6B8]);
    sub_2204B1C00(&qword_28127EDC0, v2, MEMORY[0x277D6C6C0]);
    v3 = sub_22089118C();
    if (!v4)
    {
      atomic_store(v3, &qword_28127ECC0);
    }
  }
}

uint64_t sub_2204B1C00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2204B1C48()
{
  if (!qword_281298778)
  {
    v0 = sub_2208888CC();
    if (!v1)
    {
      atomic_store(v0, &qword_281298778);
    }
  }
}

uint64_t sub_2204B1CA8(uint64_t a1, uint64_t a2)
{
  sub_2204DD280(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2204B1D3C(uint64_t a1, __n128 a2)
{
  if (!qword_28127EDD8)
  {
    sub_220890C7C();
    sub_22089122C();
    v2 = sub_220890DDC();
    if (!v3)
    {
      atomic_store(v2, &qword_28127EDD8);
    }
  }
}

char *sub_2204B1DC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2204B1EDC(0, &qword_28127DEA8, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_2204B1EDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2204B1F2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2204B1F7C(uint64_t a1, uint64_t a2)
{
  v75 = sub_22088516C();
  v4 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v5);
  v73 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2208865FC();
  v7 = *(v74 - 8);
  MEMORY[0x28223BE20](v74, v8);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (v11)
  {
    v70 = a2;
    v76 = MEMORY[0x277D84F90];
    sub_2204B40D4(0, v11, 0);
    v12 = v76;
    v14 = *(v7 + 16);
    v13 = v7 + 16;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v71 = *(v13 + 56);
    v72 = v14;
    v16 = (v4 + 8);
    v17 = (v13 - 8);
    do
    {
      v18 = v12;
      v19 = v74;
      v20 = v13;
      v72(v10, v15, v74);
      v21 = v73;
      sub_2208865BC();
      sub_2208850FC();
      v23 = v22;
      (*v16)(v21, v75);
      v24 = v19;
      v12 = v18;
      (*v17)(v10, v24);
      v76 = v18;
      v26 = *(*&v18 + 16);
      v25 = *(*&v18 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_2204B40D4((v25 > 1), v26 + 1, 1);
        v27 = v26 + 1;
        v12 = v76;
      }

      *(*&v12 + 16) = v27;
      *(*&v12 + 8 * v26 + 32) = v23;
      v15 += v71;
      --v11;
      v13 = v20;
    }

    while (v11);
    v28 = v27 - 1;
    if (v27 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v27 = *(MEMORY[0x277D84F90] + 16);
    if (!v27)
    {
      v30 = 0;
      v29 = 1;
      v12 = MEMORY[0x277D84F90];
      goto LABEL_19;
    }

    v12 = MEMORY[0x277D84F90];
    v28 = v27 - 1;
    if (v27 == 1)
    {
LABEL_7:
      v29 = 0;
      v30 = 1;
      goto LABEL_19;
    }
  }

  v31 = 0;
  v32 = *(*&v12 + 32);
  v33 = MEMORY[0x277D84F90];
  do
  {
    v30 = v27;
    v34 = *(*&v12 + 8 * v31 + 40);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_2204B415C(0, *(v33 + 2) + 1, 1, v33);
    }

    v36 = *(v33 + 2);
    v35 = *(v33 + 3);
    if (v36 >= v35 >> 1)
    {
      v37 = sub_2204B415C((v35 > 1), v36 + 1, 1, v33);
      v27 = v30;
      v33 = v37;
    }

    else
    {
      v27 = v30;
    }

    *(v33 + 2) = v36 + 1;
    *&v33[8 * v36 + 32] = v34 - v32;
    ++v31;
    v32 = v34;
  }

  while (v28 != v31);
  v29 = 0;
LABEL_19:
  sub_2204B0E8C(0);
  sub_2208850FC();
  v39 = v38;
  sub_2208850FC();
  v41 = (v39 - v40) / 240.0;
  sub_2204B25BC();
  sub_22089173C();

  if (v76 > v41)
  {
    v41 = v76;
  }

  if (v29)
  {
    goto LABEL_24;
  }

  if (v30 > *(*&v12 + 16))
  {
    __break(1u);
  }

  else
  {
    v42 = *(*&v12 + 8 * v30 + 24);
    sub_2208850FC();
    if (v42 > v43 - v41)
    {
LABEL_24:
      v44 = *(*&v12 + 16);
      if (v44)
      {
        v76 = MEMORY[0x277D84F90];
        sub_22048EE54(0, v44, 0);
        v45 = 32;
        v46 = v76;
        do
        {
          v47 = sub_22089185C();
          v76 = v46;
          v50 = *(*&v46 + 16);
          v49 = *(*&v46 + 24);
          if (v50 >= v49 >> 1)
          {
            v52 = v47;
            v53 = v48;
            sub_22048EE54((v49 > 1), v50 + 1, 1);
            v48 = v53;
            v47 = v52;
            v46 = v76;
          }

          *(*&v46 + 16) = v50 + 1;
          v51 = *&v46 + 16 * v50;
          *(v51 + 32) = v47;
          *(v51 + 40) = v48;
          v45 += 8;
          --v44;
        }

        while (v44);
      }

      else
      {

        v46 = MEMORY[0x277D84F90];
      }

      v76 = v46;
      sub_2204ADED0();
      sub_2204B0F20(&qword_28127E9A0, sub_2204ADED0, MEMORY[0x277D83970]);
      sub_2208915CC();
LABEL_32:

      return;
    }

    v54 = v41 + v42;
    sub_2208850FC();
    v56 = MEMORY[0x277D84F90];
    v57 = v41 > 0.0 && v54 < v55;
    v58 = MEMORY[0x277D84F90];
    if (!v57)
    {
LABEL_40:
      v76 = v12;
      sub_2205D28D0(v58);
      v60 = *(*&v76 + 16);
      if (v60)
      {
        v76 = v56;
        sub_22048EE54(0, v60, 0);
        v61 = 32;
        v62 = v76;
        do
        {
          v63 = sub_22089185C();
          v76 = v62;
          v66 = *(*&v62 + 16);
          v65 = *(*&v62 + 24);
          if (v66 >= v65 >> 1)
          {
            v68 = v63;
            v69 = v64;
            sub_22048EE54((v65 > 1), v66 + 1, 1);
            v64 = v69;
            v63 = v68;
            v62 = v76;
          }

          *(*&v62 + 16) = v66 + 1;
          v67 = *&v62 + 16 * v66;
          *(v67 + 32) = v63;
          *(v67 + 40) = v64;
          v61 += 8;
          --v60;
        }

        while (v60);
      }

      goto LABEL_32;
    }

    sub_2208850FC();
    if (v41 != 0.0)
    {
      v58 = sub_2205EA96C(v54, v59, v41);
      goto LABEL_40;
    }
  }

  __break(1u);
}

unint64_t sub_2204B25BC()
{
  result = qword_28127EC78;
  if (!qword_28127EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EC78);
  }

  return result;
}

uint64_t sub_2204B2610(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220569484(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B2690(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22045443C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B26FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220454490(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B277C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2204ABD88(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B27FC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2205EA904(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B2868(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220454070(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B28E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220454138(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B2954(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2204B29BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22045418C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B2A28(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2205052F4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B2AA8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2207009E8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B2B14(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220713810(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B2B80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2204545BC(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B2BEC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2204541E0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B2C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2204B2CC0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2204D067C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B2D40(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_220498908(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2204B2DD4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_220890D8C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  else
  {
    v11 = sub_22088665C();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

char *sub_2204B2EF4(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v75 = sub_22088516C();
  v71 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v2);
  v68 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v73 = &v62 - v6;
  MEMORY[0x28223BE20](v7, v8);
  v74 = &v62 - v9;
  sub_2204B0E8C(0);
  v11 = v10;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D8EC(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v62 - v17;
  v19 = sub_2208865FC();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v70 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v67 = &v62 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v62 - v28;
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v62 - v32;
  v34 = sub_22088662C();
  v35 = sub_22088662C();
  v36 = *(v35 + 16);
  if (!v36)
  {

    return v34;
  }

  v66 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v65 = *(v20 + 72);
  (*(v20 + 16))(v29, v35 + v66 + v65 * (v36 - 1), v19);

  v37 = *(v20 + 32);
  v69 = v19;
  v63 = v37;
  v64 = v20 + 32;
  v37(v33, v29, v19);
  sub_2204B1CA8(v72, v18);
  v38 = sub_22088676C();
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(v18, 1, v38) == 1)
  {
    sub_2204B3BC0(v18, &qword_2812990C0, MEMORY[0x277D697F8]);
LABEL_6:
    v42 = v69;
    v43 = v75;
    goto LABEL_7;
  }

  *&v72 = COERCE_DOUBLE(sub_22088675C());
  v41 = v40;
  (*(v39 + 8))(v18, v38);
  if (v41)
  {
    goto LABEL_6;
  }

  v49 = COERCE_DOUBLE(sub_2208865DC());
  v42 = v69;
  v50 = v74;
  v43 = v75;
  if ((v51 & 1) != 0 || v49 != *&v72)
  {
    sub_22088664C();
    v52 = *(v11 + 36);
    v53 = v71;
    (*(v71 + 16))(v50, &v14[v52], v43);
    sub_2204B3660(v14);
    v54 = v68;
    sub_2208865BC();
    v44 = v73;
    sub_22088508C();
    v55 = *(v53 + 8);
    v56 = v54;
    v43 = v75;
    v55(v56, v75);
    v57 = sub_2208850AC();
    v55(v44, v43);
    v55(v50, v43);
    if (v57)
    {
      sub_2208865BC();
      sub_22088508C();
      v55(v44, v43);
      v58 = v67;
      sub_2208865CC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_220587B2C(0, *(v34 + 2) + 1, 1, v34);
      }

      v60 = *(v34 + 2);
      v59 = *(v34 + 3);
      if (v60 >= v59 >> 1)
      {
        v34 = sub_220587B2C((v59 > 1), v60 + 1, 1, v34);
      }

      *(v34 + 2) = v60 + 1;
      v61 = &v34[v66 + v60 * v65];
      v42 = v69;
      v63(v61, v58, v69);
    }

    goto LABEL_8;
  }

LABEL_7:
  v44 = v73;
LABEL_8:
  if (*(v34 + 2) == 1)
  {
    sub_2208865BC();
    sub_22088508C();
    (*(v71 + 8))(v44, v43);
    sub_2208865DC();
    v45 = v70;
    sub_2208865CC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_220587B2C(0, *(v34 + 2) + 1, 1, v34);
    }

    v47 = *(v34 + 2);
    v46 = *(v34 + 3);
    if (v47 >= v46 >> 1)
    {
      v34 = sub_220587B2C((v46 > 1), v47 + 1, 1, v34);
    }

    (*(v20 + 8))(v33, v42);
    *(v34 + 2) = v47 + 1;
    v63(&v34[v66 + v47 * v65], v45, v42);
  }

  else
  {
    (*(v20 + 8))(v33, v42);
  }

  return v34;
}

uint64_t sub_2204B3610()
{
  type metadata accessor for PriceFormatter(0);
  v0 = swift_allocObject();
  result = sub_22088524C();
  qword_2812B6B48 = v0;
  return result;
}

uint64_t sub_2204B3660(uint64_t a1)
{
  sub_2204B0E8C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for PriceFormatter(uint64_t a1)
{
  result = qword_281294120;
  if (!qword_281294120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2204B373C(uint64_t a1)
{
  result = sub_2208852DC();
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

uint64_t sub_2204B37D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22045443C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204B382C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220454490(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204B389C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220453F64(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204B38F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2204ABD88(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204B3968(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22050EBFC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204B39C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204B3A24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220454070(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204B3A94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2204ABDEC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204B3B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220454138(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204B3B60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204B3BC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22044D8EC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204B3C1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2205052F4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204B3C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220453CD0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204B3CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2204D067C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204B3D6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22084E1A4(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2204B3DDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204B3E3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204B3E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2204B3EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2204B3F5C(uint64_t a1)
{
  if (!qword_281296EF8)
  {
    sub_2204ADA80(255, &qword_281296EE0, MEMORY[0x277D6EC60]);
    sub_22088B64C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281296EF8);
    }
  }
}

uint64_t sub_2204B3FEC(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](v2, a2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B40F4(v5, v4, type metadata accessor for StockListModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = type metadata accessor for StockListStockModel;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return EnumCaseMultiPayload;
    }

    v8 = 0;
    v7 = type metadata accessor for StockListModel;
  }

  else
  {
    v8 = 1;
  }

  sub_2204AE394(v4, v7);
  return v8;
}

char *sub_2204B40D4(char *a1, int64_t a2, char a3)
{
  result = sub_2204B1DC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_2204B40F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_2204B415C(char *result, int64_t a2, char a3, char *a4)
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
    sub_220462184(0, &qword_28127DEA8, MEMORY[0x277D839F8], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_2204B4278(void *a1)
{
  v2 = a1;
  sub_2204B42C0(v2, v1);
}

void sub_2204B42C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = *MEMORY[0x277D85000] & *v3;
  v6 = sub_22089045C();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x28223BE20](v6, v8).n128_u64[0];
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19.receiver = v3;
  v19.super_class = ObjectType;
  objc_msgSendSuper2(&v19, sel_viewDidLoad, v9);
  v12 = [v3 view];
  if (v12)
  {
    v13 = v12;
    v14 = *(v3 + qword_281283B48);
    [v12 addSubview_];

    __swift_project_boxed_opaque_existential_1((v3 + qword_281283B38), *(v3 + qword_281283B38 + 24));
    sub_22089073C();
    v15 = sub_22089043C();
    (*(v7 + 8))(v11, v6);
    [v14 setColor_];

    [v14 startAnimating];
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = *(v5 + 80);
    v17[3] = *(v5 + 88);
    v17[4] = v16;
    sub_220888CCC();

    v18 = [v3 traitCollection];
    sub_2204B4728(v18);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2204B453C()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2204B4574()
{

  return swift_deallocObject();
}

uint64_t sub_2204B45AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_2204B45E4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  (*(v6 + 72))(v13, v5, v6);
  sub_2204446D4(0, qword_28127EF88, &protocol descriptor for Theming);
  sub_2204446D4(0, &qword_2812967F0, MEMORY[0x277D33B60]);
  swift_dynamicCast();
  v7 = v11;
  v8 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  a3(v7, v8);
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t sub_2204B46D0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = v1;

  return MEMORY[0x282191F10](v2, v3);
}

void sub_2204B4728(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22089045C();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_281283B30;
  swift_beginAccess();
  sub_22046DA2C(&v2[v8], v26);
  v9 = v27;
  v10 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v11 = *(v10 + 8);
  v12 = *(v11 + 8);
  v24 = v9;
  v25 = v10;
  __swift_allocate_boxed_opaque_existential_1(&v23);
  v12(a1, v9, v11);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(&v2[v8]);
  sub_220457328(&v23, &v2[v8]);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v26);
  sub_22046DA2C(&v2[v8], v26);
  v13 = __swift_project_boxed_opaque_existential_1(v26, v27);
  v14 = [v2 view];
  if (v14)
  {
    v15 = v14;
    v17 = *(*v13 + 40);
    v16 = *(*v13 + 48);
    __swift_project_boxed_opaque_existential_1((*v13 + 16), v17);
    v18 = (*(*(v16 + 16) + 472))(v17);
    [v15 setBackgroundColor_];

    __swift_destroy_boxed_opaque_existential_1(v26);
    v19 = *&v2[qword_281283B48];
    __swift_project_boxed_opaque_existential_1(&v2[qword_281283B38], *&v2[qword_281283B38 + 24]);
    sub_22089073C();
    v20 = sub_22089043C();
    (*(v21 + 8))(v7, v22);
    [v19 setColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2204B49A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_2204B4B0C()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 472))(v2, v3);
}

id sub_2204B4B70()
{
  v1 = *(v0 + 40);
  if (v1 && (v2 = [v1 horizontalSizeClass], v2 >= 2))
  {
    if (v2 == 2)
    {
      sub_2204D631C();
      return sub_22089202C();
    }

    else
    {
      result = sub_22089267C();
      __break(1u);
    }
  }

  else
  {
    v3 = sub_22088F0DC();
    v4 = objc_opt_self();
    if (v3)
    {
      v5 = [v4 clearColor];
    }

    else
    {
      v5 = [v4 secondarySystemBackgroundColor];
    }

    return v5;
  }

  return result;
}

uint64_t sub_2204B4C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_220890D8C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_22088665C();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

void sub_2204B4DB0(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_2204B4E1C(a3, v6);
}

void sub_2204B4E1C(uint64_t a1, uint64_t a2)
{
  v5.receiver = v2;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_traitCollectionDidChange_, a1);
  v4 = [v2 traitCollection];
  sub_2204B4728(v4);
}

void sub_2204B4E88(void *a1)
{
  v2 = a1;
  sub_2204B4ED0(v2, v1);
}

void sub_2204B4ED0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v100.receiver = v2;
  v100.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v100, sel_viewDidLayoutSubviews);
  if ((sub_22088F0DC() & 1) == 0)
  {
    sub_220888C9C();
    if (!v99)
    {
      goto LABEL_22;
    }

    v8 = [v99 view];

    if (!v8)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v35 = [v3 view];
    if (!v35)
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v36 = v35;
    [v35 bounds];
    v38 = v37;
    v40 = v39;
    v42 = v41;
    v44 = v43;

    [v8 setFrame_];
    goto LABEL_21;
  }

  v4 = [v2 view];
  if (!v4)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = [v5 semanticContentAttribute];

  if ([v6 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
  {
    sub_220888C9C();
    if (!v99)
    {
      goto LABEL_22;
    }

    v8 = [v99 view];

    if (!v8)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v9 = [v3 view];
    if (!v9)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v10 = v9;
    [v9 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v101.origin.x = v12;
    v101.origin.y = v14;
    v101.size.width = v16;
    v101.size.height = v18;
    Width = CGRectGetWidth(v101);
    v20 = [v3 view];
    if (!v20)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v21 = v20;
    [v20 safeAreaInsets];
    v23 = v22;

    v24 = [v3 view];
    if (!v24)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v25 = v24;
    v26 = Width - v23;
    [v24 bounds];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v102.origin.x = v28;
    v102.origin.y = v30;
    v102.size.width = v32;
    v102.size.height = v34;
    [v8 setFrame_];
    goto LABEL_21;
  }

  sub_220888C9C();
  if (!v99)
  {
    goto LABEL_22;
  }

  v8 = [v99 view];

  if (!v8)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v45 = [v3 view];
  if (!v45)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v46 = v45;
  [v45 safeAreaInsets];
  v48 = v47;

  v49 = [v3 view];
  if (!v49)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v50 = v49;
  [v49 bounds];
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v58 = v57;

  v103.origin.x = v52;
  v103.origin.y = v54;
  v103.size.width = v56;
  v103.size.height = v58;
  v59 = CGRectGetWidth(v103);
  v60 = [v3 view];
  if (!v60)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v61 = v60;
  [v60 safeAreaInsets];
  v63 = v62;

  v64 = [v3 view];
  if (v64)
  {
    v65 = v64;
    v66 = v59 - v63;
    [v64 bounds];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;

    v104.origin.x = v68;
    v104.origin.y = v70;
    v104.size.width = v72;
    v104.size.height = v74;
    [v8 setFrame_];
LABEL_21:

LABEL_22:
    v75 = *&v3[qword_281283B48];
    v76 = [v3 view];
    if (v76)
    {
      v77 = v76;
      [v76 safeAreaInsets];
      v79 = v78;

      v80 = [v3 view];
      if (v80)
      {
        v81 = v80;
        [v80 layoutMargins];
        v83 = v82;

        v84 = [v3 view];
        if (v84)
        {
          v85 = v84;
          [v84 bounds];
          v87 = v86;
          v89 = v88;
          v91 = v90;
          v93 = v92;

          v105.origin.x = v87;
          v105.origin.y = v89;
          v105.size.width = v91;
          v105.size.height = v93;
          v94 = CGRectGetWidth(v105);
          v95 = [v3 view];
          if (v95)
          {
            v96 = v95;
            [v95 safeAreaInsets];
            v98 = v97;

            [v75 setFrame_];
            return;
          }

          goto LABEL_30;
        }

LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_42:
  __break(1u);
}

void sub_2204B5480(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_28127F080 != -1)
  {
    swift_once();
  }

  v5 = qword_28127F088;
  v6 = sub_22089132C();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5 compatibleWithTraitCollection:0];

  if (v7)
  {
    *a4 = v7;
  }

  else
  {
    __break(1u);
  }
}

id sub_2204B5544()
{
  type metadata accessor for Images();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_28127F088 = result;
  return result;
}

double sub_2204B55BC(uint64_t a1, uint64_t a2)
{
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220886A4C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v33 = v6;
    v15 = *(Strong + 120);
    ObjectType = swift_getObjectType();
    v17 = *(v15 + 24);
    swift_unknownObjectRetain();
    v17(ObjectType, v15);
    swift_unknownObjectRelease();

    v18 = OBJC_IVAR____TtC8StocksUI20StockListDataManager_lastActiveWatchlist;
    swift_beginAccess();
    v32 = *(v8 + 16);
    v32(v11, v14 + v18, v7);
    v19 = sub_2208869BC();
    v21 = v20;
    v34 = v8;
    (*(v8 + 8))(v11, v7);
    v22 = a1;
    if (v19 == sub_2208869BC() && v21 == v23)
    {
    }

    else
    {
      v25 = sub_2208928BC();

      if ((v25 & 1) != 0 || (swift_beginAccess(), v26 = v34, (*(v34 + 24))(v14 + v18, v22, v7), swift_endAccess(), !swift_unknownObjectWeakLoadStrong()))
      {
      }

      else
      {
        v27 = *(v14 + 24);
        v28 = swift_getObjectType();
        v29 = v33;
        v32(v33, v22, v7);
        (*(v26 + 56))(v29, 0, 1, v7);
        v30 = *(v27 + 16);

        v30(v31, &off_283413E78, v29, v28, v27);
        swift_unknownObjectRelease();

        sub_2204AA87C(v29, sub_2204961E0);
      }
    }
  }

  return result;
}

uint64_t sub_2204B59A4()
{
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v8 = sub_220886A4C();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    (*(v6 + 16))(v0, &off_283413E78, v4, ObjectType, v6);
    swift_unknownObjectRelease();
    return sub_2204AA87C(v4, sub_2204961E0);
  }

  return result;
}

uint64_t sub_2204B5AC8(void *a1, uint64_t a2, uint64_t a3)
{
  v45 = *v3;
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045BAA4(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v44 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_220886A4C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v43 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v38 - v23;
  sub_2204B5FB8(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = &v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B5FEC();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v42 = v3 + 2;
    v30 = a1[7];
    v39 = Strong;
    __swift_project_boxed_opaque_existential_1(a1 + 4, v30);
    sub_2208863EC();
    sub_220886A3C();
    v40 = a3;
    v41 = v9;
    v31 = *(v14 + 8);
    v31(v24, v13);
    v32 = sub_220885DFC();
    (*(*(v32 - 8) + 56))(v28, 0, 1, v32);
    __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
    sub_2208863EC();
    v33 = v44;
    sub_2208869CC();
    v31(v20, v13);
    a3 = v40;
    v9 = v41;
    v34 = sub_220885D4C();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    sub_2204B683C(v28, v33, v39);
    swift_unknownObjectRelease();
    sub_2204AB5DC(v33, sub_22045BAA4);
    sub_2204AB5DC(v28, sub_2204B5FB8);
  }

  sub_22047939C(a3, v9, sub_2204961E0);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    return sub_2204AB5DC(v9, sub_2204961E0);
  }

  v36 = v43;
  (*(v14 + 32))(v43, v9, v13);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v37 = swift_unknownObjectWeakLoadStrong();
    if (v37)
    {
      sub_2204A3550(v36, v37);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return (*(v14 + 8))(v36, v13);
}

void sub_2204B5F54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_2204B5FEC()
{
  v1 = *v0;
  v2 = type metadata accessor for AttributionSource(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220886A4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_220885D4C();
  v11 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v12);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = v1[14];
  __swift_project_boxed_opaque_existential_1((*(v0 + v1[15]) + 32), *(*(v0 + v1[15]) + 56));
  sub_2208863EC();
  sub_2208869CC();
  (*(v7 + 8))(v10, v6);
  v15 = (v0 + *(*v0 + 184));
  v16 = v15[3];
  v17 = v15[4];
  __swift_project_boxed_opaque_existential_1(v15, v16);
  AttributionProviderType.source.getter(v16, v17);
  v18 = v1[11];
  v19 = v1[10];
  v20 = (*(v18 + 104))(v14, v5, v19, v18);
  sub_2204AB5DC(v5, type metadata accessor for AttributionSource);
  (*(v11 + 8))(v14, v25);
  v26 = v20;
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v19;
  v22[3] = v18;
  v22[4] = v21;
  sub_2204AB448(0);
  sub_22046F734(&qword_281297D28, sub_2204AB448, MEMORY[0x277D6D890]);

  sub_22088B6DC();

  return result;
}

uint64_t sub_2204B6388(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for StockListChangeWatchlistBlueprintModifier(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v18 - v12;
  sub_22046DA2C(v3 + 16, &v18 - v12 + 16);
  sub_22046DA2C(v3 + 56, (v13 + 56));
  sub_22046DA2C(v3 + 96, (v13 + 96));
  sub_22046DA2C(v3 + 136, (v13 + 136));
  v14 = v6[9];
  v15 = sub_220885D4C();
  (*(*(v15 - 8) + 16))(&v13[v14], a1, v15);
  sub_2204AB3E0(a2, &v13[v6[10]], type metadata accessor for AttributionSource);
  __swift_project_boxed_opaque_existential_1((v3 + 176), *(v3 + 200));
  sub_22088641C();
  sub_22046DA2C(v3 + 216, &v13[v6[12]]);
  *v13 = 0x615765676E616843;
  *(v13 + 1) = 0xEF7473696C686374;
  sub_2204AB3E0(v13, v9, type metadata accessor for StockListChangeWatchlistBlueprintModifier);
  sub_2204AB448(0);
  swift_allocObject();
  sub_22046F614(qword_2812802F8, type metadata accessor for StockListChangeWatchlistBlueprintModifier, &unk_22089FB64);
  v16 = sub_22088B66C();
  sub_2204AB57C(v13, type metadata accessor for StockListChangeWatchlistBlueprintModifier);
  return v16;
}

uint64_t type metadata accessor for StockListChangeWatchlistBlueprintModifier(uint64_t a1)
{
  result = qword_2812802E0;
  if (!qword_2812802E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2204B6638(uint64_t a1)
{
  result = sub_2204446D4(319, &qword_281299280, MEMORY[0x277D69550]);
  if (v2 <= 0x3F)
  {
    result = sub_2204446D4(319, &unk_2812991E0, MEMORY[0x277D696B8]);
    if (v3 <= 0x3F)
    {
      result = sub_2204446D4(319, &qword_281288DB0, &protocol descriptor for SparklineModelProviderType);
      if (v4 <= 0x3F)
      {
        result = sub_2204446D4(319, &unk_281299178, MEMORY[0x277D69718]);
        if (v5 <= 0x3F)
        {
          result = sub_220885D4C();
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for AttributionSource(319);
            if (v7 <= 0x3F)
            {
              result = sub_220885ACC();
              if (v8 <= 0x3F)
              {
                result = sub_2204446D4(319, &qword_281299220, MEMORY[0x277D69608]);
                if (v9 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2204B67F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2204B683C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22088F11C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088F14C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = sub_220885DFC();
    if ((*(*(v17 - 8) + 48))(a1, 1, v17) == 1 && (v18 = sub_220885D4C(), (*(*(v18 - 8) + 48))(a2, 1, v18) == 1))
    {

      return swift_unknownObjectRelease();
    }

    else
    {
      sub_22046D5B4();
      v23 = sub_220891D0C();
      v19 = swift_allocObject();
      *(v19 + 16) = v16;
      aBlock[4] = sub_2204C36D4;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2204C35E8;
      aBlock[3] = &block_descriptor_43;
      v20 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      sub_22088F13C();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_2204627A4(&qword_281296CA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_22046D664(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
      sub_2204B6C74();
      sub_2208923FC();
      v21 = v23;
      MEMORY[0x223D89EC0](0, v14, v9, v20);
      _Block_release(v20);
      swift_unknownObjectRelease();

      (*(v6 + 8))(v9, v5);
      return (*(v11 + 8))(v14, v10);
    }
  }

  return result;
}

uint64_t sub_2204B6BF4()
{

  return swift_deallocObject();
}

uint64_t sub_2204B6C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2204B6C74()
{
  result = qword_28127EA50;
  if (!qword_28127EA50)
  {
    sub_220447570(255, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EA50);
  }

  return result;
}

uint64_t sub_2204B6CFC(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v2, &off_2834262D8, a2, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2204B6DBC(void (**a1)(char *, uint64_t))
{
  if (*(v1 + 152) == 1)
  {
    v2 = sub_2204B6FD4(a1);
    v3 = *(v1 + 160);
    if (!v3 || ([v3 timeInterval], v4 != v2))
    {
      if (qword_2812925E8 != -1)
      {
        swift_once();
      }

      sub_22048D7F8(0);
      v5 = swift_allocObject();
      *(v5 + 16) = xmmword_220899920;
      v6 = MEMORY[0x277D839F8];
      v7 = MEMORY[0x277D83A80];
      *(v5 + 56) = MEMORY[0x277D839F8];
      *(v5 + 64) = v7;
      *(v5 + 32) = v2;
      *(v5 + 96) = v6;
      *(v5 + 104) = v7;
      *(v5 + 72) = v2 * 0.1;
      sub_220891AFC();
      sub_22088A7EC("Restarting auto-refresh timer, interval=%.2f, tolerance=%.2f", v13, *&v14);

      v8 = *(v1 + 160);
      if (v8)
      {
        [v8 invalidate];
      }

      v9 = objc_opt_self();
      v17 = sub_2205D9D18;
      v18 = v1;
      v13 = MEMORY[0x277D85DD0];
      v14 = 1107296256;
      v15 = sub_2205659F0;
      v16 = &block_descriptor_19;
      v10 = _Block_copy(&v13);
      swift_retain_n();

      v11 = [v9 scheduledTimerWithTimeInterval:1 repeats:v10 block:v2];
      _Block_release(v10);
      [v11 setTolerance_];

      v12 = *(v1 + 160);
      *(v1 + 160) = v11;
    }
  }
}

double sub_2204B6FD4(void (**a1)(char *, uint64_t))
{
  v2 = v1;
  v68 = sub_2208857EC();
  v63 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v4);
  v71 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v70 = &v51 - v8;
  v9 = sub_22088676C();
  v67 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v69 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220885ACC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v66 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v51 - v18;
  sub_220462120(0, &qword_281299328, MEMORY[0x277D69308], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v51 - v22;
  v24 = sub_22088582C();
  v64 = *(v24 - 8);
  v65 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v62 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281298FE0 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    sub_2204620D8(&qword_281286EE8, v26, type metadata accessor for StockPriceDataRefreshManager, &unk_22089F794);
    sub_220886B3C();
    if (LOBYTE(v74))
    {
      break;
    }

    sub_2204B7A04(a1, v23);
    v30 = v64;
    v29 = v65;
    if ((*(v64 + 48))(v23, 1, v65) == 1)
    {
      sub_2205D9D20(v23, &qword_281299328, MEMORY[0x277D69308]);
      __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
      sub_22088641C();
      sub_220885A1C();
      v28 = v31;
      (*(v13 + 8))(v19, v12);
      return v28;
    }

    (*(v30 + 32))(v62, v23, v29);
    v23 = v2[16];
    __swift_project_boxed_opaque_existential_1(v2 + 12, v2[15]);
    sub_22088641C();
    sub_220885A7C();
    v28 = v32;
    v33 = *(v13 + 8);
    v55 = v12;
    v54 = v13 + 8;
    v53 = v33;
    v33(v19, v12);
    v34 = sub_22088581C();
    v35 = v34 + 64;
    v36 = 1 << *(v34 + 32);
    v37 = -1;
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    v12 = v37 & *(v34 + 64);
    v38 = (v36 + 63) >> 6;
    v60 = v67 + 16;
    v59 = *MEMORY[0x277D69288];
    v57 = (v63 + 8);
    v58 = (v63 + 104);
    v56 = (v67 + 8);
    v63 = v34;

    v13 = 0;
    v61 = v9;
    v52 = v2;
    while (v12)
    {
LABEL_23:
      (*(v67 + 16))(v69, *(v63 + 56) + *(v67 + 72) * (__clz(__rbit64(v12)) | (v13 << 6)), v9);
      sub_22088669C();
      (*v58)(v71, v59, v68);
      sub_2204620D8(&qword_281299330, 255, MEMORY[0x277D692A8], MEMORY[0x277D692C0]);
      sub_22089167C();
      sub_22089167C();
      if (*&v74 == v72 && v75 == v73)
      {
        a1 = v57;
        v39 = *v57;
        v40 = v68;
        (*v57)(v71, v68);
        v39(v70, v40);
      }

      else
      {
        v48 = sub_2208928BC();
        a1 = v57;
        v49 = *v57;
        v2 = v68;
        (*v57)(v71, v68);
        v49(v70, v2);

        if ((v48 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v2 = v52;
      __swift_project_boxed_opaque_existential_1(v52 + 12, v52[15]);
      v41 = v66;
      sub_22088641C();
      sub_220885A1C();
      v43 = v42;
      v53(v41, v55);
      if (v43 < v28)
      {
        v28 = v43;
      }

LABEL_14:
      v9 = v61;
      v12 &= v12 - 1;
      v19 = v69;
      v44 = COERCE_DOUBLE(sub_22088674C());
      v23 = v45;
      (*v56)(v19, v9);
      v46 = v44;
      if (v28 <= v44)
      {
        v46 = v28;
      }

      if ((v23 & 1) == 0)
      {
        v28 = v46;
      }
    }

    while (1)
    {
      v47 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v47 >= v38)
      {
        (*(v64 + 8))(v62, v65);

        return v28;
      }

      v12 = *(v35 + 8 * v47);
      ++v13;
      if (v12)
      {
        v13 = v47;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  if (qword_27CF55BD8 != -1)
  {
    swift_once();
  }

  sub_220886B3C();
  return v74;
}

uint64_t sub_2204B7838()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[15] = 0;
  sub_2204643A4(0, &qword_281298CC8, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298FE8 = result;
  return result;
}

uint64_t sub_2204B7A04(uint64_t a1, uint64_t a2)
{
  sub_220462120(0, &qword_281299328, MEMORY[0x277D69308], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2204B7AA4()
{
  v0 = sub_22088D64C();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v27 - v5;
  v7 = sub_22088C09C();
  v8 = *(v7 - 8);
  v9 = v8;
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v27 - v15;
  sub_22088C08C();
  sub_22088C08C();
  sub_2204B7E74(0, &qword_28127E078, MEMORY[0x277D6DD30], MEMORY[0x277D84560]);
  v17 = *(v8 + 72);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_220899920;
  v20 = v19 + v18;
  v21 = *(v8 + 16);
  v21(v19 + v18, v16, v7);
  v21(v20 + v17, v12, v7);
  sub_22088D63C();
  v22 = v29;
  v23 = v30;
  (*(v29 + 16))(v28, v6, v30);
  sub_2204B7E74(0, &qword_2812986B0, MEMORY[0x277D6E780], MEMORY[0x277D6CF30]);
  swift_allocObject();
  v24 = sub_220888ECC();
  (*(v22 + 8))(v6, v23);
  v25 = *(v9 + 8);
  v25(v12, v7);
  v25(v16, v7);
  return v24;
}

void sub_2204B7E74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2204B7EFC(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  sub_2204B81A4(&unk_2812814B8, a2, type metadata accessor for PresentationOperationManagerDataStore, &unk_2208A8188);
  sub_220886B3C();
  sub_2204B81EC(0, &qword_2812985F0, MEMORY[0x277D83B88]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2204B7FD8()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[1] = 0;
  sub_2204643A4(0, &qword_281298CC0, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  swift_allocObject();
  result = sub_220886C5C();
  qword_2812B6D28 = result;
  return result;
}