void *sub_22047E32C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128CAF0, &protocol descriptor for MastheadViewStylerType, 1);
  result = sub_2208884DC();
  if (v24)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for MastheadViewStyler();
    v22[3] = v10;
    v22[4] = &off_283418F78;
    v22[0] = v9;
    type metadata accessor for MastheadViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v10);
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v20 = v10;
    v21 = &off_283418F78;
    *&v19 = v17;
    sub_220457328(&v19, v11 + 16);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = sub_220455260(&qword_28128F080, 255, type metadata accessor for MastheadViewRenderer, &unk_2208A1F70);
    *a2 = v11;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22047E600(uint64_t a1, uint64_t a2)
{
  sub_22046EAA0(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088516C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v23 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = v23 - v18;
  sub_22047EA6C(a1, v6, sub_22046EAA0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_22047EC94(v6, sub_22046EAA0);
  }

  (*(v8 + 32))(v19, v6, v7);
  v21 = *(v8 + 16);
  v21(v15, v19, v7);
  v21(v11, v15, v7);

  sub_220888DCC();

  v22 = *(v8 + 8);
  v22(v15, v7);
  return (v22)(v19, v7);
}

uint64_t sub_22047E85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v7 = swift_allocObject();
  *(v7 + 56) = xmmword_2208A5B60;
  sub_220457328(&v9, v7 + 16);
  return v7;
}

uint64_t sub_22047E900(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22044D940(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22047E980(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22044D9A4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22047E9EC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22044DB24(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_22047EA6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22047EAD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22044D824(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22047EB44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22044D9F8(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22047EBB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2207C4310(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22047EC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22044DA5C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22047EC94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22047ED18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MastheadViewRenderer();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22047ED58(uint64_t a1)
{
  *(a1 + 8) = sub_22047ED18(&qword_28128F088, &unk_2208A1F08);
  result = sub_22047ED18(qword_28128F090, &unk_2208A1F48);
  *(a1 + 16) = result;
  return result;
}

void *sub_22047EDC0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128CAF0, &protocol descriptor for MastheadViewStylerType, 1);
  result = sub_2208884DC();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for MastheadViewStyler();
    v19[3] = v10;
    v19[4] = &off_283418F78;
    v19[0] = v9;
    v11 = type metadata accessor for MastheadViewLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_283418F78;
    v12[2] = v18;
    v12[7] = MEMORY[0x277D84F98];
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_2834140A0;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22047F040(uint64_t a1)
{
  result = sub_22047F068();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22047F068()
{
  result = qword_28128F158;
  if (!qword_28128F158)
  {
    type metadata accessor for MastheadViewProvider();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128F158);
  }

  return result;
}

void sub_22047F0BC(uint64_t a1)
{
  if (!qword_281298718)
  {
    sub_22044D56C(255, &unk_28127E780, 0x277D759F0);
    v1 = sub_220888CEC();
    if (!v2)
    {
      atomic_store(v1, &qword_281298718);
    }
  }
}

void *sub_22047F124@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280, MEMORY[0x277D69550], 1);
  result = sub_2208884DC();
  if (!v29)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  if (!v26)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v21 = v26;
  v22 = a2;
  v20 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220, MEMORY[0x277D69608], 1);
  result = sub_2208884DC();
  v5 = v24;
  if (!v24)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v18 = v25;
  v6 = __swift_project_boxed_opaque_existential_1(v23, v24);
  v19 = &v17;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6, v6);
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = *(v7 + 16);
  v17(&v17 - v10, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v11 = result;
    v12 = type metadata accessor for WatchlistEditMenuProvider();
    v14 = MEMORY[0x28223BE20](v12, v13);
    (v17)(&v17 - v10, &v17 - v10, v5, v14);
    v15 = sub_22047F420(&v28, v21, v20, &v17 - v10, v11, v12, v5, v18);
    (*(v7 + 8))(&v17 - v10, v5);
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    v16 = v22;
    v22[3] = v12;
    v16[4] = &off_28341EBC8;
    *v16 = v15;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_22047F420(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v18 = a7;
  v19 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a4, a7);
  v15 = swift_allocObject();
  sub_220457328(a1, (v15 + 2));
  v15[7] = a2;
  v15[8] = a3;
  sub_220457328(&v17, (v15 + 9));
  v15[14] = a5;
  return v15;
}

uint64_t sub_22047F4EC()
{
  v0 = sub_22088A84C();
  __swift_allocate_value_buffer(v0, qword_2812B6CB8);
  __swift_project_value_buffer(v0, qword_2812B6CB8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_22089136C();
  }

  return sub_22088A83C();
}

uint64_t sub_22047F5E4(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22045C7B0(0);
  if (sub_2208884CC())
  {
    sub_220455260(&qword_281297808, 255, sub_22045C7B0, MEMORY[0x277D6DFD0]);
  }

  return sub_22088D75C();
}

uint64_t sub_22047F694()
{
  v0 = sub_22088C2FC();
  MEMORY[0x28223BE20](v0, v1);
  v2 = sub_22088C2CC();
  v4 = MEMORY[0x28223BE20](v2, v3);
  (*(v6 + 104))(v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v4);
  sub_22088D3EC();
  v7 = MEMORY[0x277D6DDF8];
  sub_22045B848(0, &qword_28127E070, MEMORY[0x277D6DDF8], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_220899360;
  sub_22088C2DC();
  v10[1] = v8;
  sub_220455260(&qword_281297A00, 255, MEMORY[0x277D6DDF8], MEMORY[0x277D6DE00]);
  sub_22045B848(0, &qword_28127EA90, v7, MEMORY[0x277D83940]);
  sub_22047F96C(&qword_28127EA88, &qword_28127EA90, v7);
  sub_2208923FC();
  return sub_22088D3FC();
}

uint64_t sub_22047F924(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22047F96C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_22045B848(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_22047F9D0(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_28128F870, &protocol descriptor for StockListRouterType, 1);
  result = sub_2208884DC();
  if (v8)
  {
    sub_220457328(&v7, v9);
    v3 = v10;
    v4 = v11;
    __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
    v5 = *(v4 + 16);

    v5(v6, &off_283421220, v3, v4);
    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22047FAAC(uint64_t a1, uint64_t a2)
{
  *(*v2 + 32) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_22047FAF4(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockListViewController(0);
  v3 = sub_2208884CC();
  swift_unknownObjectWeakAssign();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22045B9EC(0, &qword_281297EB0, type metadata accessor for StocksActivity, sub_2205C4928, MEMORY[0x277D6D5F0]);
  result = sub_2208884CC();
  if (result)
  {
    type metadata accessor for StockListRouter();
    sub_220455260(qword_281292B70, 255, type metadata accessor for StockListRouter, &unk_2208B35F0);
    sub_22088B00C();

    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_22047FC54(uint64_t *a1, void *a2)
{
  v3 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220446A58(0, &qword_281298738, MEMORY[0x277D6CD90], 1);
  result = sub_2208884DC();
  if (v10)
  {
    sub_220457328(&v9, v12);
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_22047FDCC();
    sub_220888BFC();
    __swift_destroy_boxed_opaque_existential_1(&v9);
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_220446A58(0, qword_28128CD70, &protocol descriptor for DataRefreshManagerType, 1);
    result = sub_2208884DC();
    if (v8)
    {
      sub_220457328(&v7, &v9);
      v5 = v10;
      v6 = v11;
      __swift_project_boxed_opaque_existential_1(&v9, v10);
      (*(v6 + 16))(v3, &off_283422208, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(&v9);
      return __swift_destroy_boxed_opaque_existential_1(v12);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_22047FDCC()
{
  result = qword_28128F888;
  if (!qword_28128F888)
  {
    sub_22045B9EC(255, &qword_28128F880, type metadata accessor for StockListBlueprintModifierFactory, sub_22045BA6C, type metadata accessor for StockListInteractor);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128F888);
  }

  return result;
}

uint64_t sub_22047FE8C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_21:
    v6 = sub_2208926AC();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v12 = a2;
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D8A700](v7, v5);
        a2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_14:
          __break(1u);
LABEL_15:
          v8 = v13;
          a2 = v12;
          goto LABEL_17;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        a2 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_14;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        sub_2208925DC();
      }

      else
      {
      }

      ++v7;
      if (a2 == v6)
      {
        goto LABEL_15;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_17:

  *(v3 + 16) = v8;

  type metadata accessor for RefreshHandlerProxy();
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v10 = swift_beginAccess();
  MEMORY[0x223D89870](v10);
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22089177C();
  }

  sub_22089179C();
  return swift_endAccess();
}

uint64_t sub_2204800DC(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277D6E728];
  sub_2204552A8(0, &qword_281297578, MEMORY[0x277D6E728]);
  swift_allocObject();
  sub_22088D4FC();
  sub_2204552A8(0, &qword_281297640, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_220480298(&qword_281297580, &qword_281297578, v3, MEMORY[0x277D6E730]);
  sub_22088CE4C();
  sub_22088B6CC();

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22045C54C(0);
  result = sub_2208884CC();
  if (result)
  {
    swift_allocObject();
    sub_220455260(&qword_281297230, 255, sub_22045C54C, MEMORY[0x277D6EAC8]);
    sub_22088CE4C();
    sub_22088B6CC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220480298(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_2204552A8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_2204802DC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045640C(0, &qword_281297860, sub_220455FC0, sub_220841F28, MEMORY[0x277D6DF28]);
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
  type metadata accessor for StockListBlueprintLayoutBuilder();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22045640C(0, &qword_281297488, sub_2204564AC, sub_22045C6DC, MEMORY[0x277D6E7B0]);
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
    sub_22045C54C(0);
    swift_allocObject();
    return sub_22088DE3C();
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_220480540(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281281718, &protocol descriptor for StockViewLayoutAttributesFactoryType, 1);
  result = sub_2208884DC();
  if (!v58)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281281710, &protocol descriptor for TodayViewLayoutAttributesFactoryType, 1);
  result = sub_2208884DC();
  if (!v56)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28127F0B8, &protocol descriptor for StockListSectionHeaderViewLayoutAttributesFactoryType, 1);
  result = sub_2208884DC();
  if (!v54)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281280730, &protocol descriptor for EmptyListViewLayoutAttributesFactoryType, 1);
  result = sub_2208884DC();
  if (!v52)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_2208884DC();
  if (!v50)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220, MEMORY[0x277D69608], 1);
  result = sub_2208884DC();
  v3 = v47;
  if (v47)
  {
    v44 = type metadata accessor for StockListBlueprintLayoutBuilder();
    v43 = v48;
    v4 = __swift_project_boxed_opaque_existential_1(v46, v47);
    v5 = __swift_mutable_project_boxed_opaque_existential_1(&v57, v58);
    v45 = v40;
    v6 = MEMORY[0x28223BE20](v5, v5);
    v41 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v6);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
    v42 = v40;
    v10 = MEMORY[0x28223BE20](v9, v9);
    v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v12, v10);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v53, v54);
    v40[3] = v40;
    v15 = MEMORY[0x28223BE20](v14, v14);
    v17 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17, v15);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    v40[2] = v40;
    v20 = MEMORY[0x28223BE20](v19, v19);
    v22 = v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v22, v20);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
    v40[1] = v40;
    v25 = MEMORY[0x28223BE20](v24, v24);
    v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = (*(v28 + 16))(v27, v25);
    v31 = MEMORY[0x28223BE20](v29, v30);
    v33 = v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v34 + 16))(v33, v4, v3, v31);
    v35 = type metadata accessor for StockViewLayoutAttributesFactory();
    v36 = type metadata accessor for StockListSectionHeaderViewLayoutAttributesFactory();
    v37 = type metadata accessor for TodayViewLayoutAttributesFactory();
    v38 = type metadata accessor for EmptyListViewLayoutAttributesFactory();
    v39 = sub_220481888(v41, v12, v17, v22, v27, v33, v44, v35, v36, v36, v37, v38, v3, &off_283419AF8, &off_283419398, &off_283419398, &off_2834283B8, &off_283418FC8, v43);
    __swift_destroy_boxed_opaque_existential_1(v49);
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v53);
    __swift_destroy_boxed_opaque_existential_1(v55);
    __swift_destroy_boxed_opaque_existential_1(&v57);
    __swift_destroy_boxed_opaque_existential_1(v46);
    return v39;
  }

LABEL_13:
  __break(1u);
  return result;
}

void *sub_220480C68@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128F710, &protocol descriptor for StockViewStylerType, 1);
  result = sub_2208884DC();
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, qword_28127F440, &protocol descriptor for StockSparklineViewLayoutAttributesFactoryType, 1);
    result = sub_2208884DC();
    if (v39)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      v33[2] = v33;
      v6 = MEMORY[0x28223BE20](v5, v5);
      v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v33[1] = v33;
      v11 = MEMORY[0x28223BE20](v10, v10);
      v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v8;
      v16 = *v13;
      v17 = type metadata accessor for StockViewStyler();
      v37[3] = v17;
      v37[4] = &off_2834151A0;
      v37[0] = v15;
      v18 = type metadata accessor for StockSparklineViewLayoutAttributesFactory();
      v35 = v18;
      v36 = &off_283424008;
      v34[0] = v16;
      v19 = type metadata accessor for StockViewLayoutAttributesFactory();
      v20 = swift_allocObject();
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v17);
      v22 = MEMORY[0x28223BE20](v21, v21);
      v24 = (v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24, v22);
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v27 = MEMORY[0x28223BE20](v26, v26);
      v29 = (v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      v31 = *v24;
      v32 = *v29;
      v20[5] = v17;
      v20[6] = &off_2834151A0;
      v20[2] = v31;
      v20[10] = v18;
      v20[11] = &off_283424008;
      v20[7] = v32;
      v20[12] = MEMORY[0x277D84F98];
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v40);
      a2[3] = v19;
      a2[4] = &off_283419AF8;
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

void *sub_2204810F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128F650, &protocol descriptor for TodayViewStylerType, 1);
  result = sub_2208884DC();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for TodayViewStyler();
    v19[3] = v10;
    v19[4] = &off_283422C10;
    v19[0] = v9;
    v11 = type metadata accessor for TodayViewLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_283422C10;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_2834283B8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220481344@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v11 = type metadata accessor for StockListSectionHeaderViewLayoutAttributesFactory();
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
    a2[4] = &off_283419398;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2204815B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128BB80, &protocol descriptor for EmptyListViewStylerType, 1);
  result = sub_2208884DC();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for EmptyListViewStyler();
    v19[3] = v10;
    v19[4] = &off_283415E40;
    v19[0] = v9;
    v11 = type metadata accessor for EmptyListViewLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_283415E40;
    v12[2] = v18;
    sub_220481828();
    swift_allocObject();
    v12[7] = sub_220888D0C();
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_283418FC8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220481828()
{
  if (!qword_2812986F8)
  {
    v0 = sub_220888D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812986F8);
    }
  }
}

void *sub_220481888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v68 = a7;
  v67 = a6;
  v66 = a5;
  v64 = a4;
  v62 = a3;
  v65 = a19;
  v63 = a16;
  v61[1] = a18;
  v85 = a8;
  v86 = a14;
  v22 = __swift_allocate_boxed_opaque_existential_1(&v84);
  (*(*(a8 - 8) + 32))(v22, a1, a8);
  v82 = a11;
  v83 = a17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v81);
  (*(*(a11 - 8) + 32))(boxed_opaque_existential_1, a2, a11);
  v79 = a9;
  v80 = a15;
  v24 = __swift_allocate_boxed_opaque_existential_1(v78);
  (*(*(a9 - 8) + 32))(v24, v62, a9);
  v76 = a12;
  v77 = a18;
  v25 = __swift_allocate_boxed_opaque_existential_1(v75);
  (*(*(a12 - 8) + 32))(v25, v64, a12);
  v73 = a10;
  v74 = a16;
  v26 = __swift_allocate_boxed_opaque_existential_1(v72);
  (*(*(a10 - 8) + 32))(v26, v66, a10);
  v70 = a13;
  v71 = a19;
  v27 = __swift_allocate_boxed_opaque_existential_1(&v69);
  (*(*(a13 - 8) + 32))(v27, v67, a13);
  v28 = swift_allocObject();
  v29 = __swift_mutable_project_boxed_opaque_existential_1(&v84, v85);
  v30 = MEMORY[0x28223BE20](v29, v29);
  v32 = (v61 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
  v35 = MEMORY[0x28223BE20](v34, v34);
  v37 = (v61 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37, v35);
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v78, v79);
  v40 = MEMORY[0x28223BE20](v39, v39);
  v42 = (v61 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42, v40);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  v45 = MEMORY[0x28223BE20](v44, v44);
  v47 = (v61 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47, v45);
  v49 = __swift_mutable_project_boxed_opaque_existential_1(v72, v73);
  v50 = MEMORY[0x28223BE20](v49, v49);
  v52 = (v61 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v53 + 16))(v52, v50);
  v54 = *v32;
  v55 = *v37;
  v56 = *v42;
  v57 = *v47;
  v58 = *v52;
  v28[5] = type metadata accessor for StockViewLayoutAttributesFactory();
  v28[6] = &off_283419AF8;
  v28[2] = v54;
  v28[10] = type metadata accessor for TodayViewLayoutAttributesFactory();
  v28[11] = &off_2834283B8;
  v28[7] = v55;
  v59 = type metadata accessor for StockListSectionHeaderViewLayoutAttributesFactory();
  v28[15] = v59;
  v28[16] = &off_283419398;
  v28[12] = v56;
  v28[20] = type metadata accessor for EmptyListViewLayoutAttributesFactory();
  v28[21] = &off_283418FC8;
  v28[17] = v57;
  v28[25] = v59;
  v28[26] = &off_283419398;
  v28[22] = v58;
  sub_220458198(&v69, (v28 + 27));
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v81);
  __swift_destroy_boxed_opaque_existential_1(&v84);
  return v28;
}

uint64_t sub_220481EA8()
{
  sub_22045640C(0, &qword_281297488, sub_2204564AC, sub_22045C6DC, MEMORY[0x277D6E7B0]);
  swift_allocObject();
  return sub_22088D6BC();
}

uint64_t sub_220481F24(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22045640C(0, &qword_281297860, sub_220455FC0, sub_220841F28, MEMORY[0x277D6DF28]);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220455998(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_2204821E0(0);
  v5 = v4;
  swift_allocObject();
  v6 = sub_22088DD2C();
  v12 = v5;
  v13 = sub_220455260(&unk_2812972D0, 255, sub_2204821E0, MEMORY[0x277D6EA30]);
  v11[0] = v6;
  sub_22088C95C();
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22045BB28(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_2208884CC();
  if (result)
  {
    v11[0] = v7;
    sub_2204822B0(0);
    v9 = v8;
    swift_allocObject();
    v10 = sub_22088D62C();
    v12 = v9;
    v13 = sub_220455260(&qword_2812974E8, 255, sub_2204822B0, MEMORY[0x277D6E778]);
    v11[0] = v10;
    sub_22088C95C();
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_2204821E0(uint64_t a1)
{
  if (!qword_2812972C8)
  {
    sub_22045640C(255, &qword_281297860, sub_220455FC0, sub_220841F28, MEMORY[0x277D6DF28]);
    sub_220455998(255);
    sub_220456500();
    sub_22045C514();
    v1 = sub_22088DD3C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812972C8);
    }
  }
}

void sub_2204822F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_22045BB28(255);
    v11 = v10;
    sub_22045640C(255, &qword_281297860, sub_220455FC0, sub_220841F28, MEMORY[0x277D6DF28]);
    v15[0] = v11;
    v15[1] = v12;
    v15[2] = a3(255);
    v15[3] = sub_22045639C();
    v15[4] = sub_220456500();
    v15[5] = a4();
    v13 = a5(a1, v15);
    if (!v14)
    {
      atomic_store(v13, a2);
    }
  }
}

uint64_t sub_220482408(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockListViewController(0);
  result = sub_2208884CC();
  if (result)
  {
    return a3();
  }

  __break(1u);
  return result;
}

void sub_2204824AC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22088B84C();
  sub_22088848C();
  sub_22088D56C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2204565D4(0);
  if (sub_2208884CC())
  {
    sub_220455260(&qword_281297478, 255, sub_2204565D4, MEMORY[0x277D6E7F8]);
  }

  sub_22088D57C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22045C7B0(0);
  sub_2208884CC();
  sub_22088D52C();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockListViewController(0);
  v3 = sub_2208884CC();
  if (v3)
  {
    v4 = v3;
    v5 = sub_22088D51C();
    sub_22088D14C();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_220482664(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22045640C(0, &qword_281297860, sub_220455FC0, sub_220841F28, MEMORY[0x277D6DF28]);
  result = sub_2208884CC();
  if (result)
  {
    sub_220482738();
    return sub_22088CD8C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_220482738()
{
  result = qword_281297870;
  if (!qword_281297870)
  {
    sub_22045640C(255, &qword_281297860, sub_220455FC0, sub_220841F28, MEMORY[0x277D6DF28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281297870);
  }

  return result;
}

void sub_2204827D4(uint64_t a1, void *a2)
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

uint64_t sub_2204828F8(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockListViewController(0);
  result = sub_2208884CC();
  if (result)
  {
    sub_220455260(&unk_28128ACB0, 255, type metadata accessor for StockListViewController, &unk_2208B2560);
    return sub_22088DF7C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2204829B8(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockListViewController(0);
  v4 = sub_2208884CC();
  v3 = &off_283420028;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

unint64_t sub_220482A4C()
{
  result = qword_2812982D8;
  if (!qword_2812982D8)
  {
    sub_220889FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812982D8);
  }

  return result;
}

uint64_t sub_220482AA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for TickerModule();
    v7 = swift_allocObject();
    result = sub_220457328(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &off_28341D758;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220482B78(void *a1)
{
  v3 = sub_22088A07C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v8, *MEMORY[0x277D68FB0], v3, v6);
  v9 = sub_22088721C();
  (*(v4 + 8))(v8, v3);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_220482D64();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;

  v11 = a1;
  sub_2208884BC();

  v13 = v14;
  if (v14)
  {

    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220482D24()
{

  return swift_deallocObject();
}

unint64_t sub_220482D64()
{
  result = qword_281282D50;
  if (!qword_281282D50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281282D50);
  }

  return result;
}

uint64_t sub_220482DCC(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  sub_22088836C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220482E6C();
  return sub_22088839C();
}

unint64_t sub_220482E6C()
{
  result = qword_28127E800;
  if (!qword_28127E800)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E800);
  }

  return result;
}

uint64_t sub_220482EB8()
{
  type metadata accessor for TickerViewController();
  sub_220888BDC();

  sub_220446A58(0, &qword_281282D50, &protocol descriptor for TickerCardContainerControllerType, 0);
  sub_220888BEC();

  sub_220446A58(0, &qword_281291D30, &protocol descriptor for TickerStylerType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_281285D50, &protocol descriptor for TickerCardContainerStylerType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_281291D38, &protocol descriptor for TickerRouterType, 1);
  sub_220888BEC();
  type metadata accessor for TickerRouter();
  sub_2208882BC();

  sub_220446A58(0, qword_28128C088, &protocol descriptor for TickerEventHandlerType, 0);
  sub_220888BEC();

  sub_220446A58(0, qword_28128E360, &protocol descriptor for TickerInteractorType, 0);
  sub_220888BEC();

  sub_220446A58(0, qword_28128D020, &protocol descriptor for TickerDataManagerType, 0);
  sub_220888BEC();

  sub_220483918(0);
  sub_220888BDC();

  type metadata accessor for TickerBlueprintModifierFactory(0);
  sub_220888BDC();

  sub_220483EE8(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_220484AC4(0);
  sub_220888BDC();

  sub_22088D84C();
  sub_220888BDC();

  sub_220484150(0);
  sub_220888BDC();

  sub_220484C24(0);
  sub_220888BDC();

  sub_220484258(0);
  sub_220888BDC();

  type metadata accessor for TickerBlueprintLayoutBuilder();
  sub_220888BDC();

  sub_220484D34(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
  sub_220888BDC();

  sub_220483FD4(0);
  sub_220888BDC();

  sub_220446A58(0, &qword_281297378, MEMORY[0x277D6E8F0], 0);
  sub_220888BEC();
  sub_22088D41C();
  sub_2208882BC();

  sub_220484E70(0);
  sub_220888BDC();

  sub_220484310(0);
  sub_220888BDC();

  sub_220484858(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_2204849D8(0);
  sub_220888BDC();

  type metadata accessor for TickerBlueprintViewCellProvider();
  sub_220888BDC();
  sub_2208882CC();

  type metadata accessor for TickerBlueprintViewSupplementaryViewProvider();
  sub_220888BDC();

  sub_220484ED0(0, &qword_281297690, MEMORY[0x277D6E388]);
  sub_220888BDC();
  sub_2208882CC();

  sub_22088B84C();
  sub_220888BDC();

  sub_220484F6C(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_22088CA2C();
  sub_220888BDC();

  sub_220446A58(0, &qword_28128C080, &protocol descriptor for TickerViewRendererType, 0);
  sub_220888BEC();

  sub_220446A58(0, &qword_28128E350, &protocol descriptor for TickerViewStylerType, 1);
  sub_220888BEC();

  sub_220446A58(0, qword_281281138, &protocol descriptor for TickerViewLayoutAttributesFactoryType, 1);
  sub_220888BEC();

  sub_220485058(0, &qword_281296888, sub_2204850C0, &type metadata for TickerOfflineModel, MEMORY[0x277D33538]);
  sub_220888BDC();
}

void sub_220483938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TickerSectionDescriptor;
    v8[1] = type metadata accessor for TickerModel(255);
    v8[2] = sub_220483B88();
    v8[3] = sub_220483BDC(&qword_281294CA0, type metadata accessor for TickerModel, &unk_2208B3420);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for TickerModel(uint64_t a1)
{
  result = qword_281294C50;
  if (!qword_281294C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220483A44(uint64_t a1)
{
  if (!qword_28127E910)
  {
    type metadata accessor for StockViewModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127E910);
    }
  }
}

uint64_t sub_220483AB0(uint64_t a1)
{
  sub_220483A44(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for StockViewModel(319);
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

unint64_t sub_220483B88()
{
  result = qword_28128AA80[0];
  if (!qword_28128AA80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28128AA80);
  }

  return result;
}

uint64_t sub_220483BDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220483C24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220483C6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220483CE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TickerModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for TickerBlueprintModifierFactory(uint64_t a1)
{
  result = qword_281285280;
  if (!qword_281285280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220483E48(uint64_t a1)
{
  result = sub_220885ACC();
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

void sub_220483EE8(uint64_t a1)
{
  if (!qword_281297CF8)
  {
    sub_220483918(255);
    sub_220484150(255);
    sub_220483BDC(&qword_281297CC0, sub_220483918, MEMORY[0x277D6D8C8]);
    sub_220483BDC(&qword_281297BE0, sub_220484150, MEMORY[0x277D6D960]);
    v1 = sub_22088B6FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297CF8);
    }
  }
}

void sub_220483FD4(uint64_t a1)
{
  if (!qword_281297A40)
  {
    sub_22044D56C(255, &qword_28127E820, 0x277D752A0);
    sub_220484310(255);
    sub_220484858(255);
    sub_2204849D8(255);
    type metadata accessor for TickerViewController();
    sub_220483BDC(&unk_2812973E8, sub_220484310, MEMORY[0x277D6E820]);
    sub_220483BDC(&qword_281297560, sub_220484858, MEMORY[0x277D6E738]);
    sub_220483BDC(&qword_281297370, sub_2204849D8, MEMORY[0x277D6E918]);
    v1 = sub_22088BFDC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297A40);
    }
  }
}

void sub_220484150(uint64_t a1)
{
  if (!qword_281297BD8)
  {
    type metadata accessor for TickerModel(255);
    sub_220483FD4(255);
    sub_220483B88();
    sub_220483BDC(&qword_281294CA0, type metadata accessor for TickerModel, &unk_2208B3420);
    sub_220483BDC(&qword_281297A48, sub_220483FD4, MEMORY[0x277D6DC88]);
    v1 = sub_22088B95C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297BD8);
    }
  }
}

void sub_220484258(uint64_t a1)
{
  if (!qword_281297890)
  {
    type metadata accessor for TickerLayoutModel(255);
    sub_22048466C();
    sub_220483BDC(qword_2812910F0, type metadata accessor for TickerLayoutModel, &unk_2208BD150);
    v1 = sub_22088C63C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297890);
    }
  }
}

void sub_220484310(uint64_t a1)
{
  if (!qword_2812973E0)
  {
    sub_220483918(255);
    sub_220484258(255);
    type metadata accessor for TickerBlueprintViewCellProvider();
    type metadata accessor for TickerBlueprintViewSupplementaryViewProvider();
    sub_220483BDC(&qword_281297CC0, sub_220483918, MEMORY[0x277D6D8C8]);
    sub_220483BDC(&qword_281297898, sub_220484258, MEMORY[0x277D6DF38]);
    sub_220483BDC(qword_281284988, type metadata accessor for TickerBlueprintViewCellProvider, &unk_2208B3EF8);
    sub_220483BDC(&qword_281296738, type metadata accessor for TickerBlueprintViewSupplementaryViewProvider, &unk_2208ADE00);
    sub_220483BDC(&qword_2812910E8, type metadata accessor for TickerLayoutModel, &unk_2208BD188);
    v1 = sub_22088D7DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2812973E0);
    }
  }
}

uint64_t type metadata accessor for TickerLayoutModel(uint64_t a1)
{
  result = qword_2812910B8;
  if (!qword_2812910B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22048452C(uint64_t a1)
{
  if (!qword_281293BC8)
  {
    type metadata accessor for StockViewModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281293BC8);
    }
  }
}

uint64_t sub_220484598(uint64_t a1)
{
  sub_22048452C(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for StockViewModel(319);
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

unint64_t sub_22048466C()
{
  result = qword_281285D48;
  if (!qword_281285D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281285D48);
  }

  return result;
}

uint64_t sub_22048473C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220484784(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2204847CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_220484814(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TickerLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220484858(uint64_t a1)
{
  if (!qword_281297558)
  {
    sub_220483918(255);
    sub_220484258(255);
    type metadata accessor for TickerViewController();
    sub_220483BDC(&qword_281297CC0, sub_220483918, MEMORY[0x277D6D8C8]);
    sub_220483BDC(&qword_281297898, sub_220484258, MEMORY[0x277D6DF38]);
    sub_220483BDC(&qword_28128E358, type metadata accessor for TickerViewController, &unk_2208B8D88);
    sub_220483BDC(&qword_2812910E8, type metadata accessor for TickerLayoutModel, &unk_2208BD188);
    v1 = sub_22088D59C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297558);
    }
  }
}

void sub_2204849D8(uint64_t a1)
{
  if (!qword_281297368)
  {
    sub_220483918(255);
    sub_220484258(255);
    sub_220483BDC(&qword_281297CC0, sub_220483918, MEMORY[0x277D6D8C8]);
    sub_220483BDC(&qword_281297898, sub_220484258, MEMORY[0x277D6DF38]);
    v1 = sub_22088D9AC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297368);
    }
  }
}

void sub_220484AC4(uint64_t a1)
{
  if (!qword_281297248)
  {
    sub_220484258(255);
    type metadata accessor for TickerBlueprintLayoutBuilder();
    sub_220484C24(255);
    sub_220483BDC(&qword_281297898, sub_220484258, MEMORY[0x277D6DF38]);
    sub_220483BDC(&qword_281286C68, type metadata accessor for TickerBlueprintLayoutBuilder, &unk_2208B50B8);
    sub_220483BDC(&qword_2812974B0, sub_220484C24, MEMORY[0x277D6E7B8]);
    v1 = sub_22088DE5C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297248);
    }
  }
}

void sub_220484C24(uint64_t a1)
{
  if (!qword_2812974A8)
  {
    type metadata accessor for TickerLayoutModel(255);
    sub_220484CDC();
    sub_220483BDC(&qword_2812910E8, type metadata accessor for TickerLayoutModel, &unk_2208BD188);
    v1 = sub_22088D6CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2812974A8);
    }
  }
}

unint64_t sub_220484CDC()
{
  result = qword_281285D40;
  if (!qword_281285D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281285D40);
  }

  return result;
}

void sub_220484D34(uint64_t a1)
{
  if (!qword_281297828)
  {
    sub_220483918(255);
    sub_220483FD4(255);
    type metadata accessor for TickerViewController();
    sub_220483BDC(&qword_281297CC0, sub_220483918, MEMORY[0x277D6D8C8]);
    sub_220483BDC(&qword_281297A48, sub_220483FD4, MEMORY[0x277D6DC88]);
    sub_220483BDC(&qword_28128E358, type metadata accessor for TickerViewController, &unk_2208B8D88);
    v1 = sub_22088C7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297828);
    }
  }
}

void sub_220484E70(uint64_t a1)
{
  if (!qword_2812975C8)
  {
    sub_22088D84C();
    v1 = sub_22088D2EC();
    if (!v2)
    {
      atomic_store(v1, &qword_2812975C8);
    }
  }
}

void sub_220484ED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_220483918(255);
    v7 = v6;
    v8 = sub_220483BDC(&qword_281297CC0, sub_220483918, MEMORY[0x277D6D8C8]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_220484F6C(uint64_t a1)
{
  if (!qword_281297440)
  {
    sub_220483FD4(255);
    sub_220483918(255);
    sub_220483BDC(&qword_281297A48, sub_220483FD4, MEMORY[0x277D6DC88]);
    sub_220483BDC(&qword_281297CC8, sub_220483918, MEMORY[0x277D6D8C0]);
    v1 = sub_22088D76C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297440);
    }
  }
}

void sub_220485058(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2204850C0()
{
  result = qword_2812904E0;
  if (!qword_2812904E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812904E0);
  }

  return result;
}

void *sub_220485114@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2208883BC();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = sub_22088F0DC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E800, 0x277D75D28);
  result = sub_2208884CC();
  v8 = result;
  if (v6)
  {
    if (result)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_220485058(0, &qword_281298998, sub_220447CB8, &type metadata for AppEvent, MEMORY[0x277D6CAA0]);
      result = sub_2208884CC();
      if (result)
      {
        sub_2204857E8(0);
        LOBYTE(v39[0]) = 0;
        sub_2208883AC();
        sub_22046DA2C(a1, &v42);
        v9 = swift_allocObject();
        sub_220457328(&v42, v9 + 16);
        v10 = sub_22088876C();
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_220446A58(0, &qword_281285D50, &protocol descriptor for TickerCardContainerStylerType, 1);
        result = sub_2208884DC();
        if (v43)
        {
          v11 = __swift_mutable_project_boxed_opaque_existential_1(&v42, v43);
          v12 = MEMORY[0x28223BE20](v11, v11);
          v14 = (v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v15 + 16))(v14, v12);
          v16 = *v14;
          v40 = type metadata accessor for TickerCardContainerStyler();
          v41 = &off_28341A918;
          v39[0] = v16;
          v17 = objc_allocWithZone(type metadata accessor for UIKitTickerCardContainerController(0));
          v18 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
          v19 = MEMORY[0x28223BE20](v18, v18);
          v21 = (v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v22 + 16))(v21, v19);
          v23 = sub_220601268(v8, v10, *v21, v17);

          __swift_destroy_boxed_opaque_existential_1(v39);
          result = __swift_destroy_boxed_opaque_existential_1(&v42);
          v24 = &off_28341BBB0;
LABEL_10:
          *a2 = v23;
          a2[1] = v24;
          return result;
        }

        goto LABEL_15;
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result)
  {
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220485058(0, &qword_281298998, sub_220447CB8, &type metadata for AppEvent, MEMORY[0x277D6CAA0]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_2204857E8(0);
  LOBYTE(v39[0]) = 0;
  sub_2208883AC();
  sub_22046DA2C(a1, &v42);
  v25 = swift_allocObject();
  sub_220457328(&v42, v25 + 16);
  v26 = sub_22088876C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281285D50, &protocol descriptor for TickerCardContainerStylerType, 1);
  result = sub_2208884DC();
  if (v43)
  {
    v27 = __swift_mutable_project_boxed_opaque_existential_1(&v42, v43);
    v28 = MEMORY[0x28223BE20](v27, v27);
    v30 = (v39 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v31 + 16))(v30, v28);
    v32 = *v30;
    v40 = type metadata accessor for TickerCardContainerStyler();
    v41 = &off_28341A918;
    v39[0] = v32;
    v33 = objc_allocWithZone(type metadata accessor for TickerCardContainerController(0));
    v34 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
    v35 = MEMORY[0x28223BE20](v34, v34);
    v37 = (v39 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v38 + 16))(v37, v35);
    v23 = sub_220601148(v8, v26, *v37, v33);
    __swift_destroy_boxed_opaque_existential_1(v39);
    result = __swift_destroy_boxed_opaque_existential_1(&v42);
    v24 = &off_28341D560;
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2204857A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

void sub_2204857E8(uint64_t a1)
{
  if (!qword_2812988A8)
  {
    type metadata accessor for TickerViewController();
    sub_220447CB8();
    v1 = sub_22088877C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812988A8);
    }
  }
}

void *sub_220485854@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  v10 = v21;
  if (v21)
  {
    v11 = a2(0);
    v12 = v22;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = &v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16, v14);
    v18 = a3(v16, v11, v10, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a5[3] = v11;
    a5[4] = a4;
    *a5 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for UIKitTickerCardContainerController(uint64_t a1)
{
  result = qword_281282148;
  if (!qword_281282148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220485B04(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_281282170 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_220485B50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  v4 = v15;
  if (v15)
  {
    v5 = type metadata accessor for MainStyler();
    v6 = v16;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    v8 = MEMORY[0x28223BE20](v7, v7);
    v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v10, v8);
    v12 = sub_220476DF0(v10, v5, v4, v6);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    a2[3] = v5;
    a2[4] = &off_283412AD8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_220485CD4(uint64_t *a1@<X8>)
{
  refreshed = type metadata accessor for InvertColorsRefreshManager();
  v3 = swift_allocObject();
  *(v3 + 16) = [objc_opt_self() hashTableWithOptions_];
  v4 = [objc_opt_self() defaultCenter];
  [v4 addObserver:v3 selector:sel_accessibilityInvertColorsStatusDidChange_ name:*MEMORY[0x277D76480] object:0];

  a1[3] = refreshed;
  a1[4] = &off_28341D108;
  *a1 = v3;
}

uint64_t sub_220485DC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v6);
  v3 = type metadata accessor for EmptyListModule();
  v4 = swift_allocObject();
  result = sub_220457328(v6, v4 + 16);
  a2[3] = v3;
  a2[4] = &off_28341A5B0;
  *a2 = v4;
  return result;
}

uint64_t type metadata accessor for MainSplitViewController(uint64_t a1)
{
  result = qword_28128B5F8;
  if (!qword_28128B5F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_220485EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, objc_class *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v48[2] = a1;
  v48[1] = a11;
  v59 = a10;
  v60 = a14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v58);
  (*(*(a10 - 8) + 32))(boxed_opaque_existential_1, a2, a10);
  v56 = a8;
  v57 = a12;
  v20 = __swift_allocate_boxed_opaque_existential_1(v55);
  (*(*(a8 - 8) + 32))(v20, a3, a8);
  v53 = a9;
  v54 = a13;
  v21 = __swift_allocate_boxed_opaque_existential_1(v52);
  (*(*(a9 - 8) + 32))(v21, a5, a9);
  v22 = objc_allocWithZone(a6);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v58, v59);
  v24 = MEMORY[0x28223BE20](v23, v23);
  v26 = (v48 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  v28 = __swift_mutable_project_boxed_opaque_existential_1(v55, v56);
  v29 = MEMORY[0x28223BE20](v28, v28);
  v31 = (v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v32 + 16))(v31, v29);
  v33 = __swift_mutable_project_boxed_opaque_existential_1(v52, v53);
  v34 = MEMORY[0x28223BE20](v33, v33);
  v36 = (v48 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36, v34);
  v38 = *v26;
  v39 = *v31;
  v40 = *v36;
  v51[3] = type metadata accessor for MainStyler();
  v51[4] = &off_283412AD8;
  v51[0] = v38;
  refreshed = type metadata accessor for InvertColorsRefreshManager();
  v50[4] = &off_28341D108;
  v50[3] = refreshed;
  v50[0] = v39;
  v42 = type metadata accessor for EmptyListModule();
  v49[4] = &off_28341A5B0;
  v49[3] = v42;
  v49[0] = v40;
  *&v22[qword_28128B610] = 0;
  sub_22046DA2C(v51, &v22[qword_28128B608]);
  sub_22046DA2C(v50, &v22[qword_28128B618]);
  sub_22046DA2C(v49, &v22[qword_28128B620]);

  v43 = sub_22088C85C();
  v44 = *(*__swift_project_boxed_opaque_existential_1(&v43[qword_28128B618], *&v43[qword_28128B618 + 24]) + 16);
  v45 = v43;
  [v44 addObject_];
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22088D72C();
  swift_allocObject();

  v46 = sub_22088D73C();

  __swift_destroy_boxed_opaque_existential_1(v49);
  __swift_destroy_boxed_opaque_existential_1(v50);
  __swift_destroy_boxed_opaque_existential_1(v51);

  *&v45[qword_28128B610] = v46;

  __swift_destroy_boxed_opaque_existential_1(v52);
  __swift_destroy_boxed_opaque_existential_1(v55);
  __swift_destroy_boxed_opaque_existential_1(v58);
  return v45;
}

uint64_t sub_2204863D4()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

void *sub_22048640C@<X0>(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v46 = a3;
  v9 = sub_22088B42C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452DCC(0, &unk_281297D80, MEMORY[0x277D6D788], MEMORY[0x277D83D88]);
  v14 = swift_allocBox();
  (*(v10 + 56))(v15, 1, 1, v9);
  __swift_project_boxed_opaque_existential_1(v5 + 33, v5[36]);
  if ((sub_2208863FC() & 1) == 0 && (a1 & 1) == 0)
  {
    if (qword_281298100 != -1)
    {
      swift_once();
    }

    v44 = v13;
    v45 = v14;
    v16 = sub_22088A84C();
    __swift_project_value_buffer(v16, qword_2812B6D00);
    v17 = sub_22088A82C();
    v18 = sub_220891AFC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22043F000, v17, v18, "app config has not been fetched yet, attempting fetch", v19, 2u);
      MEMORY[0x223D8B7F0](v19, -1, -1);
    }

    sub_220885ACC();
    sub_220888FBC();
    sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
    v20 = sub_220891D0C();
    v21 = swift_allocObject();
    v21[2] = v5;
    v21[3] = a2;
    v22 = v46;
    v21[4] = v46;
    sub_2205A9168();

    v23 = a2;
    sub_220888E4C();

    v24 = sub_220891D0C();
    v25 = swift_allocObject();
    v25[2] = v5;
    v25[3] = v23;
    v25[4] = v22;

    v26 = v23;
    sub_220888F0C();

    sub_2205A74D8(v44);
    v27 = objc_allocWithZone(sub_22088CD1C());
    v28 = sub_22088CD0C();
LABEL_14:

    v35 = MEMORY[0x277D6E2E0];
    v36 = MEMORY[0x277D6E2E8];
    v37 = MEMORY[0x277D6E2F0];
    v38 = MEMORY[0x277D6E2D8];
LABEL_21:
    *a4 = v28;
    a4[1] = v38;
    a4[2] = v37;
    a4[3] = v36;
    a4[4] = v35;
    return result;
  }

  __swift_project_boxed_opaque_existential_1(v5 + 13, v5[16]);
  if (sub_22088618C())
  {
    if (qword_281298100 != -1)
    {
      swift_once();
    }

    v29 = sub_22088A84C();
    __swift_project_value_buffer(v29, qword_2812B6D00);
    v30 = sub_22088A82C();
    v31 = sub_220891AFC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22043F000, v30, v31, "news-free experience is enabled, fetching first stock in active watchlist", v32, 2u);
      MEMORY[0x223D8B7F0](v32, -1, -1);
    }

    sub_2205A7FB4(a2, v46);
    sub_2205A74D8(v13);
    v33 = objc_allocWithZone(sub_22088CD1C());
    v28 = sub_22088CD0C();
    goto LABEL_14;
  }

  if (qword_281298100 != -1)
  {
    swift_once();
  }

  v39 = sub_22088A84C();
  __swift_project_value_buffer(v39, qword_2812B6D00);
  v40 = sub_22088A82C();
  v41 = sub_220891AFC();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_22043F000, v40, v41, "news-free experience is disabled, showing For You-feed", v42, 2u);
    MEMORY[0x223D8B7F0](v42, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  sub_220446A58(0, &unk_28128F188, &protocol descriptor for ForYouFeedModuleType, 1);
  result = sub_2208884DC();
  if (v49)
  {
    __swift_project_boxed_opaque_existential_1(v48, v49);
    sub_22048B0E8(v47);
    v28 = v47[0];
    v38 = v47[1];
    v37 = v47[2];
    v36 = v47[3];
    v35 = v47[4];
    __swift_destroy_boxed_opaque_existential_1(v48);

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void *sub_220486A88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v26);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281296D20, MEMORY[0x277D2D578], 1);
  result = sub_2208884DC();
  if (!v25)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281281F58, &protocol descriptor for ForYouFeedMastheadModelProviderType, 1);
  result = sub_2208884DC();
  if (v23)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v7 = MEMORY[0x28223BE20](v6, v6);
    v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9, v7);
    v11 = *v9;
    v12 = type metadata accessor for ForYouFeedMastheadModelProvider();
    v21[3] = v12;
    v21[4] = &off_283426E88;
    v21[0] = v11;
    v13 = type metadata accessor for ForYouFeedModule();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    v16 = MEMORY[0x28223BE20](v15, v15);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = *v18;
    *(v14 + 128) = v12;
    *(v14 + 136) = &off_283426E88;
    *(v14 + 104) = v20;
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
    *(v14 + 176) = 0u;
    *(v14 + 192) = 0;
    sub_220457328(v26, v14 + 16);
    *(v14 + 56) = v5;
    sub_220457328(&v24, v14 + 64);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a2[3] = v13;
    a2[4] = &off_2834245F0;
    *a2 = v14;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220486D80()
{
  v0 = sub_220888FDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ForYouFeedViewController();
  sub_220888BDC();

  sub_220446A58(0, &qword_28128F180, &protocol descriptor for ForYouFeedRouterType, 1);
  sub_220888BEC();
  type metadata accessor for ForYouFeedRouter();
  sub_2208882BC();

  sub_220446A58(0, qword_281288FF8, &protocol descriptor for ForYouFeedEventHandlerType, 0);
  sub_220888BEC();
  type metadata accessor for ForYouFeedEventHandler();
  sub_2208882BC();

  sub_220446A58(0, qword_28128A4E0, &protocol descriptor for ForYouFeedInteractorType, 0);
  sub_220888BEC();

  sub_220487E40(0, &qword_28128F198, type metadata accessor for ForYouFeedBlueprintModifierFactory, sub_220487EE4, type metadata accessor for ForYouFeedInteractor);
  sub_220888BDC();
  sub_2208882CC();

  sub_220446A58(0, qword_281289A98, &protocol descriptor for ForYouFeedDataManagerType, 0);
  sub_220888BEC();

  sub_220446A58(0, &unk_28128DC60, &protocol descriptor for ForYouFeedTrackerType, 1);
  sub_220888BEC();

  sub_220446A58(0, qword_281281F58, &protocol descriptor for ForYouFeedMastheadModelProviderType, 1);
  sub_220888BEC();

  sub_220488310(0);
  sub_220888BDC();

  type metadata accessor for ForYouFeedBlueprintModifierFactory();
  sub_220888BDC();

  sub_220446A58(0, qword_281287430, &protocol descriptor for ForYouFeedSectionFactoryType, 1);
  sub_220888BEC();

  sub_2204884CC(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_220489AF0(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_22088D84C();
  sub_220888BDC();

  sub_2204883C0(0);
  sub_220888BDC();

  sub_220489C50(0);
  sub_220888BDC();

  sub_2204888A4(0);
  sub_220888BDC();

  type metadata accessor for ForYouFeedBlueprintLayoutBuilder();
  sub_220888BDC();

  sub_220489DCC(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
  sub_220888BDC();

  sub_220488588(0);
  sub_220888BDC();

  sub_220446A58(0, &qword_281297378, MEMORY[0x277D6E8F0], 0);
  sub_220888BEC();
  sub_22088D41C();
  sub_2208882BC();

  sub_220489EA8(0, &qword_2812972C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6EA38]);
  sub_220888BDC();
  sub_2208882CC();

  sub_220488704(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_2204898B0(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_220489A00(0);
  sub_220888BDC();

  sub_22088C9AC();
  sub_220888BDC();

  type metadata accessor for ForYouFeedBlueprintViewCellProvider();
  sub_220888BDC();
  sub_2208882CC();

  type metadata accessor for ForYouFeedBlueprintViewSupplementaryViewProvider();
  sub_220888BDC();
  sub_2208882CC();

  sub_220487E40(0, &qword_281297678, sub_220488310, sub_2204897BC, MEMORY[0x277D6E388]);
  sub_220888BDC();
  sub_2208882CC();

  sub_220487E40(0, &unk_281297780, sub_220488588, sub_220489ABC, MEMORY[0x277D6E068]);
  sub_220888BDC();
  sub_2208882CC();

  sub_22088D3BC();
  sub_220888BDC();

  sub_22088D3DC();
  sub_220888BDC();

  sub_22088B84C();
  sub_220888BDC();

  sub_220489F14(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_22088CA2C();
  sub_220888BDC();

  sub_220489FD0(0, &qword_281297328, type metadata accessor for ForYouFeedModel, MEMORY[0x277D6E9B8]);
  sub_220888BDC();

  sub_220489FD0(0, &qword_2812972E0, type metadata accessor for ForYouFeedModel, MEMORY[0x277D6E9F0]);
  sub_220888BDC();

  sub_220446A58(0, &unk_2812972B0, MEMORY[0x277D6EA40], 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_2812977B8, MEMORY[0x277D6E010], 1);
  sub_220888BEC();
  (*(v1 + 104))(v4, *MEMORY[0x277D6CF70], v0);
  sub_2208882AC();

  (*(v1 + 8))(v4, v0);
  sub_22048A10C(0);
  sub_220888BDC();

  sub_220446A58(0, &qword_2812883C8, &protocol descriptor for ForYouTitleViewProviderType, 0);
  sub_220888BEC();

  type metadata accessor for ForYouFeedViewCoordinator(0);
  sub_220888BDC();

  sub_22045BAD8();
  sub_220888BDC();

  sub_22048A294(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_22048A3C8(0);
  sub_220888BDC();
  sub_2208882CC();

  type metadata accessor for ForYouFeedBlueprintCellPrefetcher();
  sub_220888BDC();
}

void sub_220487E40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_220487F30(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_22048802C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ForYouFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for ForYouFeedModel(255);
    v8[2] = sub_22044E28C(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor, &unk_2208B162C);
    v8[3] = sub_22044E28C(&unk_281293320, type metadata accessor for ForYouFeedModel, &unk_2208BA948);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220488120(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ForYouFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for ForYouFeedModel(255);
    v8[2] = sub_220488378(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor, &unk_2208B162C);
    v8[3] = sub_220488378(&unk_281293320, type metadata accessor for ForYouFeedModel, &unk_2208BA948);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220488214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ForYouFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for ForYouFeedModel(255);
    v8[2] = sub_22044E3AC(&unk_281288490, 255, type metadata accessor for ForYouFeedSectionDescriptor, &unk_2208B162C);
    v8[3] = sub_22044E3AC(&unk_281293320, 255, type metadata accessor for ForYouFeedModel, &unk_2208BA948);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_220488330(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_220488378(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2204883C0(uint64_t a1)
{
  if (!qword_281297BA8)
  {
    type metadata accessor for ForYouFeedSectionDescriptor(255);
    type metadata accessor for ForYouFeedModel(255);
    sub_220488588(255);
    sub_22044E43C(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor, &unk_2208B162C);
    sub_22044E43C(&unk_281293320, type metadata accessor for ForYouFeedModel, &unk_2208BA948);
    sub_220489ABC();
    v1 = sub_22088B95C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297BA8);
    }
  }
}

void sub_2204884CC(uint64_t a1)
{
  if (!qword_281297CE0)
  {
    sub_220488310(255);
    sub_2204883C0(255);
    sub_2204897BC();
    sub_22044E43C(&qword_281297BB0, sub_2204883C0, MEMORY[0x277D6D960]);
    v1 = sub_22088B6FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297CE0);
    }
  }
}

void sub_220488588(uint64_t a1)
{
  if (!qword_281297A20)
  {
    sub_22044D56C(255, &qword_28127E820, 0x277D752A0);
    sub_220488704(255);
    sub_2204898B0(255);
    sub_220489A00(255);
    type metadata accessor for ForYouFeedViewController();
    sub_22044E43C(&qword_2812973B0, sub_220488704, MEMORY[0x277D6E820]);
    sub_22044E43C(&unk_281297528, sub_2204898B0, MEMORY[0x277D6E738]);
    sub_22044E43C(&qword_281297350, sub_220489A00, MEMORY[0x277D6E918]);
    v1 = sub_22088BFDC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297A20);
    }
  }
}

void sub_220488704(uint64_t a1)
{
  if (!qword_2812973A0)
  {
    sub_220488310(255);
    sub_2204888A4(255);
    type metadata accessor for ForYouFeedBlueprintViewCellProvider();
    type metadata accessor for ForYouFeedBlueprintViewSupplementaryViewProvider();
    sub_2204897BC();
    sub_22044E43C(&unk_2812978D0, sub_2204888A4, MEMORY[0x277D6DF38]);
    sub_22044E43C(&qword_281282020, type metadata accessor for ForYouFeedBlueprintViewCellProvider, &unk_2208AF76C);
    sub_22044E43C(qword_2812964E8, type metadata accessor for ForYouFeedBlueprintViewSupplementaryViewProvider, &unk_22089FA0C);
    sub_22044E43C(&qword_28128DE00, type metadata accessor for ForYouFeedLayoutModel, &unk_2208BC2E0);
    v1 = sub_22088D7DC();
    if (!v2)
    {
      atomic_store(v1, &qword_2812973A0);
    }
  }
}

void sub_2204888A4(uint64_t a1)
{
  if (!qword_2812978C8)
  {
    type metadata accessor for ForYouFeedLayoutSectionDescriptor(255);
    type metadata accessor for ForYouFeedLayoutModel(255);
    sub_220488378(qword_2812835B0, type metadata accessor for ForYouFeedLayoutSectionDescriptor, &unk_2208BA0C4);
    sub_220488378(qword_28128DE08, type metadata accessor for ForYouFeedLayoutModel, &unk_2208BC2A8);
    v1 = sub_22088C63C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812978C8);
    }
  }
}

void sub_2204889FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_220488A60(uint64_t a1)
{
  sub_2205DD068(319, &qword_281283710, sub_2204889B0, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader, " header ");
  if (v1 <= 0x3F)
  {
    sub_22048934C(319);
    if (v2 <= 0x3F)
    {
      sub_220488B20(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_220488B5C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_220488CC4(319, &qword_28127E9D0, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_220488CC4(319, &qword_28127E9D8, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_220488CC4(319, &qword_28127E9E8, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Decoration, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_220488CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220488D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_220488E64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_220488ED4(uint64_t a1)
{
  sub_220488E64(319, &unk_28128F160, type metadata accessor for ForYouTitleViewLayoutAttributes, &type metadata for ForYouTitleViewModel);
  if (v1 <= 0x3F)
  {
    sub_220488E64(319, &qword_28128C9B0, type metadata accessor for SectionHeaderViewLayoutAttributes, &type metadata for SectionHeaderViewModel);
    if (v2 <= 0x3F)
    {
      sub_2205DD068(319, &qword_281293BD8, type metadata accessor for StockViewModel, type metadata accessor for StockTitleViewLayoutAttributes, "model layoutAttributes ");
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for ForYouTitleViewLayoutAttributes(uint64_t a1)
{
  result = qword_281284EC8;
  if (!qword_281284EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22048903C(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_22088D83C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2204890C8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t type metadata accessor for SectionHeaderViewLayoutAttributes(uint64_t a1)
{
  result = qword_2812833E8;
  if (!qword_2812833E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220489160(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_22088D83C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2204891EC(uint64_t a1)
{
  if (!qword_281293BD8)
  {
    type metadata accessor for StockViewModel(255);
    type metadata accessor for StockTitleViewLayoutAttributes(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281293BD8);
    }
  }
}

uint64_t type metadata accessor for StockTitleViewLayoutAttributes(uint64_t a1)
{
  result = qword_2812853E8;
  if (!qword_2812853E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2204892AC(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_22088D83C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22048934C(uint64_t a1)
{
  if (!qword_281283700)
  {
    sub_2204889B0(255);
    sub_2204889FC(255, &qword_28127E9E0, type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader, MEMORY[0x277D83940]);
    type metadata accessor for ForYouFeedLayoutSectionDescriptor.StockSectionFooter(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_281283700);
    }
  }
}

void sub_220489428(uint64_t a1)
{
  if (!qword_281287AD0)
  {
    type metadata accessor for StockSectionFooterViewModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281287AD0);
    }
  }
}

void sub_220489494(uint64_t a1)
{
  sub_220489428(319);
  if (v1 <= 0x3F)
  {
    sub_2204895C0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for StockSectionFooterViewModel(uint64_t a1)
{
  result = qword_281287A98;
  if (!qword_281287A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220489554(uint64_t a1)
{
  result = type metadata accessor for StockViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_2204895C0()
{
  if (!qword_2812836F8)
  {
    v0 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer(0);
    if (!v1)
    {
      atomic_store(v0, &qword_2812836F8);
    }
  }
}

uint64_t type metadata accessor for ForYouFeedLayoutModel(uint64_t a1)
{
  result = qword_28128DDE0;
  if (!qword_28128DDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220489654(uint64_t a1)
{
  sub_2204896C8();
  if (v1 <= 0x3F)
  {
    sub_220489710();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2204896C8()
{
  if (!qword_281296A20)
  {
    v0 = sub_22088FD8C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296A20);
    }
  }
}

void sub_220489710()
{
  if (!qword_281294158[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_281294158);
    }
  }
}

uint64_t sub_220489824(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22048986C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ForYouFeedLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2204898B0(uint64_t a1)
{
  if (!qword_281297518)
  {
    sub_220488310(255);
    sub_2204888A4(255);
    type metadata accessor for ForYouFeedViewController();
    sub_2204897BC();
    sub_22044E43C(&unk_2812978D0, sub_2204888A4, MEMORY[0x277D6DF38]);
    sub_22044E43C(&qword_28128A3E0, type metadata accessor for ForYouFeedViewController, &unk_2208B83D4);
    sub_22044E43C(&qword_28128DE00, type metadata accessor for ForYouFeedLayoutModel, &unk_2208BC2E0);
    v1 = sub_22088D59C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297518);
    }
  }
}

void sub_220489A00(uint64_t a1)
{
  if (!qword_281297348)
  {
    sub_220488310(255);
    sub_2204888A4(255);
    sub_2204897BC();
    sub_22044E43C(&unk_2812978D0, sub_2204888A4, MEMORY[0x277D6DF38]);
    v1 = sub_22088D9AC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297348);
    }
  }
}

void sub_220489AF0(uint64_t a1)
{
  if (!qword_281297268)
  {
    sub_2204888A4(255);
    type metadata accessor for ForYouFeedBlueprintLayoutBuilder();
    sub_220489C50(255);
    sub_22044E43C(&unk_2812978D0, sub_2204888A4, MEMORY[0x277D6DF38]);
    sub_22044E43C(qword_281284670, type metadata accessor for ForYouFeedBlueprintLayoutBuilder, &unk_2208B4E28);
    sub_22044E43C(&qword_2812974D8, sub_220489C50, MEMORY[0x277D6E7B8]);
    v1 = sub_22088DE5C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297268);
    }
  }
}

void sub_220489C50(uint64_t a1)
{
  if (!qword_2812974D0)
  {
    type metadata accessor for ForYouFeedLayoutSectionDescriptor(255);
    type metadata accessor for ForYouFeedLayoutModel(255);
    sub_22044E43C(&unk_2812835A0, type metadata accessor for ForYouFeedLayoutSectionDescriptor, &unk_2208BA0FC);
    sub_22044E43C(&qword_28128DE00, type metadata accessor for ForYouFeedLayoutModel, &unk_2208BC2E0);
    v1 = sub_22088D6CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2812974D0);
    }
  }
}

uint64_t sub_220489D84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220489DCC(uint64_t a1)
{
  if (!qword_2812977E0)
  {
    sub_220488310(255);
    sub_220488588(255);
    type metadata accessor for ForYouFeedViewController();
    sub_2204897BC();
    sub_220489ABC();
    sub_22044E43C(&qword_28128A3E0, type metadata accessor for ForYouFeedViewController, &unk_2208B83D4);
    v1 = sub_22088C7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2812977E0);
    }
  }
}

void sub_220489EA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_220489F14(uint64_t a1)
{
  if (!qword_281297408)
  {
    sub_220488588(255);
    sub_220489FD0(255, &qword_2812972E0, type metadata accessor for ForYouFeedModel, MEMORY[0x277D6E9F0]);
    sub_220489ABC();
    sub_22048A034();
    v1 = sub_22088D76C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297408);
    }
  }
}

void sub_220489FD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22048A034()
{
  result = qword_2812972E8;
  if (!qword_2812972E8)
  {
    sub_220489FD0(255, &qword_2812972E0, type metadata accessor for ForYouFeedModel, MEMORY[0x277D6E9F0]);
    sub_22044E43C(&unk_281293330, type metadata accessor for ForYouFeedModel, &unk_2208BAAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812972E8);
  }

  return result;
}

void sub_22048A10C(uint64_t a1)
{
  if (!qword_281290B30[0])
  {
    v4[0] = &type metadata for ForYouFeedOfflineModel.Loading;
    v4[1] = &type metadata for ForYouFeedOfflineModel.Expanding;
    v4[2] = sub_22048A188();
    v4[3] = sub_22048A1DC();
    v2 = type metadata accessor for DualOfflineManager(a1, v4);
    if (!v3)
    {
      atomic_store(v2, qword_281290B30);
    }
  }
}

unint64_t sub_22048A188()
{
  result = qword_28128CC60;
  if (!qword_28128CC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128CC60);
  }

  return result;
}

unint64_t sub_22048A1DC()
{
  result = qword_28128CC40;
  if (!qword_28128CC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128CC40);
  }

  return result;
}

void sub_22048A294(uint64_t a1)
{
  if (!qword_281296AE8)
  {
    sub_220488310(255);
    sub_2204883C0(255);
    sub_2204897BC();
    sub_22044E43C(&qword_281297BB0, sub_2204883C0, MEMORY[0x277D6D960]);
    sub_22044E43C(&qword_281293310, type metadata accessor for ForYouFeedModel, &unk_2208BA9F8);
    sub_22044E43C(&qword_281293318, type metadata accessor for ForYouFeedModel, &unk_2208BA9A0);
    v1 = sub_22088F9DC();
    if (!v2)
    {
      atomic_store(v1, &qword_281296AE8);
    }
  }
}

void sub_22048A3C8(uint64_t a1)
{
  if (!qword_281297AF0)
  {
    sub_2204888A4(255);
    type metadata accessor for ForYouFeedBlueprintCellPrefetcher();
    sub_22044E43C(&unk_2812978D0, sub_2204888A4, MEMORY[0x277D6DF38]);
    sub_22044E43C(&qword_281283BF8, type metadata accessor for ForYouFeedBlueprintCellPrefetcher, &unk_2208AD934);
    sub_22044E43C(&qword_28128DDF0, type metadata accessor for ForYouFeedLayoutModel, &unk_2208BC4D0);
    sub_22044E43C(&qword_28128DDF8, type metadata accessor for ForYouFeedLayoutModel, &unk_2208BC380);
    v1 = sub_22088BC7C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297AF0);
    }
  }
}

void *sub_22048A550@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044869C(0, &qword_28127E5C0, &protocolRef_FCBundleSubscriptionManagerType);
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299220, MEMORY[0x277D69608], 1);
    result = sub_2208884DC();
    v6 = v17;
    if (v17)
    {
      v7 = type metadata accessor for ForYouFeedMastheadModelProvider();
      v8 = v18;
      v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
      v10 = MEMORY[0x28223BE20](v9, v9);
      v12 = &v16[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v13 + 16))(v12, v10);
      v14 = sub_220466BBC(v5, v12, v7, v6, v8);
      result = __swift_destroy_boxed_opaque_existential_1(v16);
      a2[3] = v7;
      a2[4] = &off_283426E88;
      *a2 = v14;
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

void *sub_22048A750@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v3 = MEMORY[0x277D6CBA8];
  sub_22048B070(0, &qword_2812988B8, type metadata accessor for ForYouFeedViewController, MEMORY[0x277D6CBA8]);
  v45 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v44 - v7);
  v9 = sub_2208883BC();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v46 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22048B070(0, &qword_2812988C0, sub_22048B188, v3);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v15);
  v18 = (&v44 - v17);
  if (qword_281298F98 != -1)
  {
    swift_once();
  }

  sub_22048B490(qword_281292508, v16, type metadata accessor for ForYouFeedModule, &unk_2208B89E4);
  sub_220886B3C();
  v19 = LOBYTE(v50[0]);
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  if (v19 == 1)
  {
    sub_2204446D4(0, &unk_28128F170, &protocol descriptor for ForYouFeedStylerType);
    result = sub_2208884DC();
    if (v51)
    {
      __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
      sub_2204446D4(0, &qword_2812967F0, MEMORY[0x277D33B60]);
      result = sub_2208884DC();
      if (v49)
      {
        __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
        sub_22044A39C(0);
        result = sub_2208884CC();
        if (result)
        {
          *v18 = sub_22048B7AC(&unk_283410D30);
          (*(v14 + 104))(v18, *MEMORY[0x277D6CBA0], v13);
          sub_2208883AC();
          swift_allocObject();
          swift_weakInit();
          sub_22048B070(0, &qword_2812988B0, sub_22048B188, MEMORY[0x277D6CBB0]);
          swift_allocObject();
          v21 = sub_22088875C();
          sub_220676EB0(0);
          v23 = objc_allocWithZone(v22);
          v24 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
          v25 = MEMORY[0x28223BE20](v24, v24);
          v27 = (&v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
          (*(v28 + 16))(v27, v25);
          v29 = sub_22048BA54(*v27, v48, v21, v23);
          __swift_destroy_boxed_opaque_existential_1(v50);
          v30 = sub_220676EB0;
          v31 = sub_22048B490(&qword_281283A90, 255, sub_220676EB0, &unk_22089FD58);
          v32 = sub_22048BB4C(&qword_281283A98, sub_220676EB0, sub_22080C46C);
          v33 = sub_22048B490(&qword_281283AA0, 255, sub_220676EB0, &unk_22089FD30);
          v34 = &unk_281283AA8;
LABEL_12:
          result = sub_22048B490(v34, 255, v30, &unk_22089FD08);
          v43 = v47;
          *v47 = v29;
          v43[1] = v31;
          v43[2] = v32;
          v43[3] = v33;
          v43[4] = result;
          return result;
        }

        goto LABEL_17;
      }

      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  sub_2204446D4(0, &unk_28128F170, &protocol descriptor for ForYouFeedStylerType);
  result = sub_2208884DC();
  if (!v51)
  {
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  sub_2204446D4(0, &qword_2812967F0, MEMORY[0x277D33B60]);
  result = sub_2208884DC();
  if (!v49)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  sub_22044A39C(0);
  result = sub_2208884CC();
  if (result)
  {
    *v8 = sub_22048B7AC(&unk_283410D58);
    (*(v5 + 104))(v8, *MEMORY[0x277D6CBA0], v45);
    sub_2208883AC();
    swift_allocObject();
    swift_weakInit();
    sub_22048B070(0, &qword_2812988A0, type metadata accessor for ForYouFeedViewController, MEMORY[0x277D6CBB0]);
    swift_allocObject();
    v35 = sub_22088875C();
    sub_22048B97C(0);
    v37 = objc_allocWithZone(v36);
    v38 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
    v39 = MEMORY[0x28223BE20](v38, v38);
    v41 = (&v44 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v42 + 16))(v41, v39);
    v29 = sub_22048BA54(*v41, v48, v35, v37);
    __swift_destroy_boxed_opaque_existential_1(v50);
    v30 = sub_22048B97C;
    v31 = sub_22048B490(&qword_281283A68, 255, sub_22048B97C, &unk_22089FD58);
    v32 = sub_22048BB4C(&qword_281283A70, sub_22048B97C, sub_22048BBC8);
    v33 = sub_22048B490(&qword_281283A78, 255, sub_22048B97C, &unk_22089FD30);
    v34 = &unk_281283A80;
    goto LABEL_12;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22048B038()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_22048B070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_220447CB8();
    v9 = a4(a1, v7, &type metadata for AppEvent, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

id sub_22048B0E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 144);
  if (v3)
  {
    v4 = *(v1 + 168);
    v5 = *(v1 + 152);
    v6 = *(v1 + 144);
  }

  else
  {
    sub_22048A750(v1, &v14);
    v7 = v14;
    v8 = v15;
    v9 = v16;
    v12 = v16;
    v13 = v15;
    v10 = *(v1 + 144);
    *(v1 + 144) = v14;
    *(v1 + 152) = v8;
    *(v1 + 168) = v9;
    v6 = v7;

    v4 = v12;
    v5 = v13;
    v3 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 24) = v4;

  return v3;
}

void sub_22048B188(uint64_t a1)
{
  if (!qword_281297900)
  {
    type metadata accessor for ForYouFeedViewController();
    sub_220448B08(&unk_28128A3D0, type metadata accessor for ForYouFeedViewController, &unk_2208B81D8);
    v1 = sub_22088C54C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297900);
    }
  }
}

uint64_t sub_22048B21C()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  v12 = v11 + 1;
  if (v11 + 1 < 7 && ((0x5Fu >> v12) & 1) != 0)
  {
    v13 = 0x64u >> v12;
    (*(v6 + 104))(v9, *MEMORY[0x277D6D090], v5);
    (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
    v15[15] = v13 & 1;
    sub_22045E8CC();
    swift_allocObject();
    result = sub_220886C5C();
    qword_281298FA0 = result;
  }

  else
  {
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22048B490(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22048B4D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_22048B520@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  v4 = v15;
  if (v15)
  {
    v5 = type metadata accessor for ForYouFeedStyler();
    v6 = v16;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
    v8 = MEMORY[0x28223BE20](v7, v7);
    v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v10, v8);
    v12 = sub_220476DF0(v10, v5, v4, v6);
    result = __swift_destroy_boxed_opaque_existential_1(v14);
    a2[3] = v5;
    a2[4] = &off_283423B98;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_22048B6A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_281294338, &protocol descriptor for BaseStylerType);
  result = sub_2208884DC();
  if (v6)
  {
    a2[3] = &type metadata for FeedColorPalette;
    a2[4] = sub_22048B758();
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_220457328(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_22048B758()
{
  result = qword_2812925D8;
  if (!qword_2812925D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812925D8);
  }

  return result;
}

uint64_t sub_22048B7AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_22048B914(0, &qword_28127E3D8, sub_220447CB8, &type metadata for AppEvent, MEMORY[0x277D84098]);
    v3 = sub_22089250C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_2208929EC();
      MEMORY[0x223D8ABA0](v10);
      result = sub_220892A2C();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_22048B914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_22048B97C(uint64_t a1)
{
  if (!qword_281283A60)
  {
    v2 = type metadata accessor for ForYouFeedViewController();
    v4 = type metadata accessor for ForYouFeedContainerViewController(a1, v2, &off_283424120, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_281283A60);
    }
  }
}

id sub_22048BA54(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v13[3] = type metadata accessor for ForYouFeedStyler();
  v13[4] = &off_283423B98;
  v13[0] = a1;
  v9 = qword_281283B48;
  *&a4[v9] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle_];
  sub_22046DA2C(v13, &a4[qword_281283B30]);
  sub_22046DA2C(a2, &a4[qword_281283B38]);
  *&a4[qword_281283B40] = a3;
  v12.receiver = a4;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

uint64_t sub_22048BB4C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22048BC00()
{
  if (!qword_28127DE50)
  {
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DE50);
    }
  }
}

uint64_t sub_22048BC60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088C87C();
  sub_22088839C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281282D50, &protocol descriptor for TickerCardContainerControllerType, 0);
  return sub_22088837C();
}

void *sub_22048BD2C(void *a1)
{
  sub_22046DA2C(a1, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088C87C();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281282D50, &protocol descriptor for TickerCardContainerControllerType, 0);
  result = sub_2208884DC();
  v4 = v17;
  if (!v17)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044BB14(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299220, MEMORY[0x277D69608], 1);
  result = sub_2208884DC();
  if (!v16)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22048C0A8(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_2812981A8, MEMORY[0x277D352F8], 1);
  result = sub_2208884DC();
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298220, MEMORY[0x277D35030], 1);
  result = sub_2208884DC();
  if (!v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299150, MEMORY[0x277D69728], 0);
  result = sub_2208884DC();
  if (v9)
  {
    type metadata accessor for Router();
    v8 = swift_allocObject();
    sub_220457328(v19, (v8 + 2));
    v8[7] = v3;
    v8[8] = v4;
    v8[9] = v5;
    v8[10] = v6;
    sub_220457328(&v15, (v8 + 11));
    v8[16] = v7;
    sub_220457328(&v13, (v8 + 17));
    sub_220457328(&v11, (v8 + 22));
    v8[27] = v9;
    v8[28] = v10;
    return v8;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_22048C018(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296850, MEMORY[0x277D33678], 1);
  result = sub_2208884DC();
  if (v4)
  {
    sub_22044BB14(0);
    v3 = objc_allocWithZone(v2);
    return sub_2208903DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22048C0A8(uint64_t a1)
{
  if (!qword_281298910)
  {
    type metadata accessor for StockListSelectionModel(255);
    v1 = sub_2208886BC();
    if (!v2)
    {
      atomic_store(v1, &qword_281298910);
    }
  }
}

uint64_t sub_22048C100()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_22048C140()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

void sub_22048C188(void *a1, uint64_t a2)
{
  v4.receiver = a1;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  v3 = [v2 traitCollection];
  sub_22048C208(v3);
}

void sub_22048C208(void *a1)
{
  v2 = v1;
  v4 = qword_28128B608;
  swift_beginAccess();
  sub_22046DA2C(&v1[v4], v22);
  v5 = v23;
  v6 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v20 = v5;
  v21 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v19);
  v8(a1, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(&v1[v4]);
  sub_220457328(&v19, &v1[v4]);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_22046DA2C(&v1[v4], v22);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v9 = [v1 view];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  sub_22048C620(v9, a1);

  __swift_destroy_boxed_opaque_existential_1(v22);
  v11 = [v1 childViewControllers];
  sub_220482E6C();
  v12 = sub_2208916EC();

  if (v12 >> 62)
  {
    if (sub_2208926AC())
    {
      goto LABEL_4;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x223D8A700](0, v12);
      goto LABEL_7;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v12 + 32);
LABEL_7:
      v14 = v13;

      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (!v15)
      {

        return;
      }

      v16 = v15;
      sub_22046DA2C(&v2[v4], v22);
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v17 = [v16 toolbar];
      if (v17)
      {
        v18 = v17;
        sub_2204C4FB0(v17, a1);

        __swift_destroy_boxed_opaque_existential_1(v22);
        return;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }
}

uint64_t sub_22048C480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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

uint64_t sub_22048C5E8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_22048C620(void *a1, id a2)
{
  if ([a2 horizontalSizeClass] == 2)
  {
    v4 = objc_opt_self();
    v5 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.862745098 green:0.862745098 blue:0.870588235 alpha:1.0];
    v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.219607843 green:0.219607843 blue:0.22745098 alpha:1.0];
    v10 = [v4 ts:v5 dynamicColor:v6 withDarkStyleVariant:?];

    v9 = v10;
  }

  else
  {
    v7 = v2[5];
    v8 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v7);
    v9 = (*(*(v8 + 16) + 56))(v7);
  }

  v11 = v9;
  [a1 setBackgroundColor_];
}

uint64_t sub_22048C778()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 56))(v2, v3);
}

void sub_22048C7EC(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, v4);
  v6 = [v5 traitCollection];
  sub_22048C208(v6);
}

uint64_t sub_22048C87C()
{
  v1 = OBJC_IVAR____TtC8StocksUI10BaseStyler_locale;
  v2 = sub_2208852DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_systemTheme));

  return swift_deallocClassInstance();
}

uint64_t sub_22048C93C()
{
  v0 = sub_22088A84C();
  __swift_allocate_value_buffer(v0, qword_2812B6CD0);
  __swift_project_value_buffer(v0, qword_2812B6CD0);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_22089136C();
  }

  return sub_22088A83C();
}

BOOL sub_22048CA2C()
{
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298E60 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  v0 = v8;
  if (v8 < 0)
  {
    sub_220886BAC();
    if (qword_281298E78 != -1)
    {
      swift_once();
    }

    sub_220886B9C();

    v0 = v8;
  }

  if (v0 < 1)
  {
    if (qword_2812980C8 != -1)
    {
      swift_once();
    }

    v6 = sub_22088A84C();
    __swift_project_value_buffer(v6, qword_2812B6CD0);
    v2 = sub_22088A82C();
    v3 = sub_220891AFC();
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
    if (qword_2812980C8 != -1)
    {
      swift_once();
    }

    v1 = sub_22088A84C();
    __swift_project_value_buffer(v1, qword_2812B6CD0);
    v2 = sub_22088A82C();
    v3 = sub_220891AFC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134349312;
      *(v4 + 4) = v0;
      *(v4 + 12) = 2050;
      *(v4 + 14) = 1;
      v5 = "Terms and Conditions have been agreed to, versionCompleted=%{public}ld, minimumRequired=%{public}ld";
LABEL_16:
      _os_log_impl(&dword_22043F000, v2, v3, v5, v4, 0x16u);
      MEMORY[0x223D8B7F0](v4, -1, -1);
    }
  }

  return v0 > 0;
}

Swift::Void __swiftcall IdentificationResetManager.resetIdentifierIfNeeded()()
{
  v1 = v0;
  v2 = sub_22088A84C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220886A6C();
  sub_22048CFC4(&qword_281288FF0, v7, type metadata accessor for IdentificationResetManager, &protocol conformance descriptor for IdentificationResetManager);
  sub_220886B3C();

  if (v12[15] == 1)
  {
    sub_22088A81C();
    v8 = sub_22088A82C();
    v9 = sub_220891AFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22043F000, v8, v9, "Resetting user id & ads id", v10, 2u);
      MEMORY[0x223D8B7F0](v10, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_2208862CC();
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    sub_2208862BC();
    swift_allocObject();
    swift_weakInit();

    sub_220886DDC();

    sub_22088727C();
    sub_220886A6C();
    v12[14] = 0;
    sub_22048CFC4(&qword_27CF58EF0, v11, type metadata accessor for IdentificationResetManager, &protocol conformance descriptor for IdentificationResetManager);
    sub_220886C6C();
  }
}

uint64_t sub_22048CF8C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_22048CFC4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_22048D03C()
{
  v1 = v0;
  if (qword_2812925E8 != -1)
  {
    swift_once();
  }

  v2 = qword_2812925F0;
  v3 = sub_220891AFC();
  sub_22088A7EC("Enabled auto-refresh", 20, 2, &dword_22043F000, v2, v3, MEMORY[0x277D84F90]);
  *(v1 + 152) = 1;
  sub_22088582C();
  sub_220888FBC();
  sub_220888DEC();

  v4 = sub_220888D9C();
  sub_220888F0C();

  sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
  v5 = sub_220891D0C();
  sub_220888E6C();
}

uint64_t sub_22048D220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    sub_22089136C();
  }

  sub_22048D2F4();
  result = sub_2208922EC();
  *a4 = result;
  return result;
}

unint64_t sub_22048D2F4()
{
  result = qword_28127E420;
  if (!qword_28127E420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E420);
  }

  return result;
}

uint64_t sub_22048D3B4(uint64_t *a1)
{
  v2 = sub_22088519C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = CACurrentMediaTime();
  sub_22088518C();
  v8 = sub_22088517C();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  if (qword_2812925E8 != -1)
  {
    swift_once();
  }

  v11 = qword_2812925F0;
  sub_22048D7F8(0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_220899360;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = sub_22048D860();
  *(v12 + 32) = v8;
  *(v12 + 40) = v10;

  v13 = sub_220891AFC();
  sub_22088A7EC("Refreshing watchlist price data, identifier=%{public}@", 54, 2, &dword_22043F000, v11, v13, v12);

  v14 = [a1[18] allObjects];
  v15 = sub_2208916EC();

  v16 = sub_22048D8B4(v15);

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  sub_220462120(0, &qword_28127EB50, MEMORY[0x277D69810], MEMORY[0x277D83940]);
  sub_220888FBC();
  v18 = swift_allocObject();
  v18[2] = v8;
  v18[3] = v10;
  v18[4] = v17;

  v19 = sub_220888D9C();
  sub_22088582C();
  sub_220888E5C();

  v20 = swift_allocObject();
  v20[2] = v7;
  *(v20 + 3) = v8;
  *(v20 + 4) = v10;

  v21 = sub_220888D9C();
  sub_220888E3C();

  v22 = swift_allocObject();
  v22[2] = v7;
  *(v22 + 3) = v8;
  *(v22 + 4) = v10;
  v23 = sub_220888D9C();
  v24 = sub_220888E9C();

  return v24;
}

uint64_t sub_22048D77C()
{

  return swift_deallocObject();
}

uint64_t sub_22048D7BC()
{

  return swift_deallocObject();
}

void sub_22048D7F8(uint64_t a1)
{
  if (!qword_28127DE60)
  {
    sub_2204446D4(255, &qword_28127DE10, MEMORY[0x277D84D98]);
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127DE60);
    }
  }
}

unint64_t sub_22048D860()
{
  result = qword_28127EC80;
  if (!qword_28127EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EC80);
  }

  return result;
}

uint64_t sub_22048D8B4(uint64_t a1)
{
  sub_220462120(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - v4;
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v26 = &v24 - v13;
  v14 = *(a1 + 16);
  v28 = MEMORY[0x277D84F90];
  sub_22048DBA8(0, v14, 0);
  v15 = v28;
  if (v14)
  {
    v16 = a1 + 32;
    v24 = v5;
    v25 = (v7 + 56);
    v17 = (v7 + 32);
    while (1)
    {
      sub_2204A7FA8(v16, v27);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v25)(v5, 0, 1, v6);
      v18 = *v17;
      v19 = v26;
      (*v17)(v26, v5, v6);
      v18(v10, v19, v6);
      v28 = v15;
      v20 = v10;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_22048DBA8((v21 > 1), v22 + 1, 1);
        v15 = v28;
      }

      *(v15 + 16) = v22 + 1;
      v18((v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22), v20, v6);
      v16 += 32;
      --v14;
      v10 = v20;
      v5 = v24;
      if (!v14)
      {
        return v15;
      }
    }

    (*v25)(v5, 1, 1, v6);
    sub_2205D9D20(v5, &qword_281299060, MEMORY[0x277D69810]);
    return 0;
  }

  return v15;
}

void *sub_22048DBA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22048DBF8(a1, a2, a3, *v3, &qword_28127E198, MEMORY[0x277D69810], MEMORY[0x277D69810]);
  *v3 = result;
  return result;
}

void *sub_22048DBF8(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22047A10C(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_22048DDEC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return a1(v3, v4);
}

uint64_t sub_22048DE74()
{
  sub_22088859C();
  sub_220477098(0);

  sub_22088854C();
}

uint64_t sub_22048DF00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  if (qword_2812925E8 != -1)
  {
    swift_once();
  }

  v8 = qword_2812925F0;
  sub_22048D7F8(0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_220899360;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_22048D860();
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;

  v10 = sub_220891AFC();
  sub_22088A7EC("Will fetch latest price data, identifier=%{public}@", 51, 2, &dword_22043F000, v8, v10, v9);

  sub_22048E0F8(v11);
  v12 = sub_22048E9EC(v7);

  return v12;
}

uint64_t sub_22048E124(uint64_t a1)
{
  sub_22048E0A4(0);
  sub_220888FBC();

  v1 = sub_220888D9C();
  sub_220477098(0);
  v2 = sub_220888E3C();

  return v2;
}

uint64_t sub_22048E258(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_22048E39C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_22048E41C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_22048E39C(0, a5, a6, MEMORY[0x277D84560]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_22048E610(uint64_t *a1, void *a2)
{
  v41 = a2;
  v46 = sub_22088685C();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v4);
  v45 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_220885ACC();
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v6);
  v35 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22088831C();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v8);
  v36 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v47 = MEMORY[0x277D84F90];
    sub_22048EE54(0, v11, 0);
    v12 = v47;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v15 = v10 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v43 = *(v13 + 56);
    v44 = v14;
    v42 = (v13 - 8);
    do
    {
      v16 = v45;
      v17 = v46;
      v18 = v13;
      v44(v45, v15, v46);
      v19 = sub_22088681C();
      v21 = v20;
      (*v42)(v16, v17);
      v47 = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22048EE54((v22 > 1), v23 + 1, 1);
        v12 = v47;
      }

      *(v12 + 16) = v23 + 1;
      v24 = v12 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
      v15 += v43;
      --v11;
      v13 = v18;
    }

    while (v11);
  }

  v25 = v41;
  __swift_project_boxed_opaque_existential_1(v41 + 7, v41[10]);
  v26 = sub_22088627C();
  v47 = v12;
  sub_22048EE74(v26);
  __swift_project_boxed_opaque_existential_1(v25 + 7, v25[10]);
  __swift_project_boxed_opaque_existential_1(v25 + 12, v25[15]);
  v27 = v35;
  sub_22088641C();
  sub_2208859AC();
  v29 = v28;
  (*(v37 + 8))(v27, v39);
  v30 = v36;
  *v36 = v29;
  v31 = v38;
  v32 = v40;
  (*(v38 + 104))(v30, *MEMORY[0x277D6CA48], v40);
  v33 = sub_22088628C();

  (*(v31 + 8))(v30, v32);
  return v33;
}

uint64_t sub_22048E9EC(uint64_t a1)
{
  v2 = v1;
  v53 = sub_22088685C();
  v4 = *(v53 - 1);
  MEMORY[0x28223BE20](v53, v5);
  v52 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_220885ACC();
  v45 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v7);
  v43 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088831C();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v44 = (v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12, v13);
  v48 = (v42 - v14);
  sub_22046DA2C(v1 + 56, v55);
  v42[2] = v57;
  v42[3] = v56;
  v42[1] = __swift_project_boxed_opaque_existential_1(v55, v56);
  v15 = *(a1 + 16);
  if (v15)
  {
    v42[0] = v1;
    v54 = MEMORY[0x277D84F90];
    sub_22048EE54(0, v15, 0);
    v16 = v54;
    v18 = *(v4 + 16);
    v17 = v4 + 16;
    v19 = a1 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v50 = *(v17 + 56);
    v51 = v18;
    v20 = (v17 - 8);
    do
    {
      v22 = v52;
      v21 = v53;
      v23 = v17;
      (v51)(v52, v19, v53);
      v24 = sub_22088681C();
      v26 = v25;
      (*v20)(v22, v21);
      v54 = v16;
      v28 = *(v16 + 16);
      v27 = *(v16 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_22048EE54((v27 > 1), v28 + 1, 1);
        v16 = v54;
      }

      *(v16 + 16) = v28 + 1;
      v29 = v16 + 16 * v28;
      *(v29 + 32) = v24;
      *(v29 + 40) = v26;
      v19 += v50;
      --v15;
      v17 = v23;
    }

    while (v15);
    v2 = v42[0];
  }

  __swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
  v30 = v43;
  sub_22088641C();
  sub_220885A6C();
  v32 = v31;
  v53 = *(v45 + 8);
  (v53)(v30, v49);
  v33 = v47;
  *v48 = v32;
  LODWORD(v52) = *MEMORY[0x277D6CA48];
  v34 = v46;
  v51 = *(v46 + 104);
  v51();
  __swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
  sub_22088641C();
  sub_220885A3C();
  v36 = v35;
  (v53)(v30, v49);
  v37 = v44;
  *v44 = v36;
  (v51)(v37, v52, v33);
  v38 = v48;
  v39 = sub_2208862EC();

  v40 = *(v34 + 8);
  v40(v37, v33);
  v40(v38, v33);
  __swift_destroy_boxed_opaque_existential_1(v55);
  return v39;
}

char *sub_22048EE54(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2204CB2B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22048EE74(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22045E924(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_22048EF6C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong isViewLoaded])
    {
      result = [v2 view];
      if (result)
      {
        v3 = result;
        [result setNeedsLayout];

        result = [v2 view];
        if (result)
        {
          v4 = result;
          [result layoutIfNeeded];

          goto LABEL_7;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return result;
    }

LABEL_7:
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

void sub_22048F050(void *a1, uint64_t a2)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v2 = v9.receiver;
  objc_msgSendSuper2(&v9, sel_viewWillLayoutSubviews);
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    v6 = v5;
    v8 = v7;

    sub_22048F320(v6, v8);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22048F110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22088B97C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D6D980])
  {
    v11 = sub_22088CC6C();
    v12 = MEMORY[0x277D6E218];
    v13 = MEMORY[0x277D6E250];
LABEL_5:
    (*(*(v11 - 8) + 104))(a2, *v13);
    v14 = *v12;
    v15 = sub_22088CC2C();
    return (*(*(v15 - 8) + 104))(a2, v14, v15);
  }

  if (v10 == *MEMORY[0x277D6D978])
  {
    v11 = sub_22088CC0C();
    v12 = MEMORY[0x277D6E1F8];
    v13 = MEMORY[0x277D6E1E8];
    goto LABEL_5;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

id sub_22048F320(double a1, double a2)
{
  if (a2 >= a1)
  {
    v4 = 320.0;
  }

  else
  {
    v4 = 375.0;
  }

  [v2 minimumPrimaryColumnWidth];
  if (v5 != v4)
  {
    [v2 setMinimumPrimaryColumnWidth_];
  }

  v6 = a1 * 0.5;
  if (a1 * 0.5 > 480.0)
  {
    v6 = 480.0;
  }

  if (v4 <= v6)
  {
    v4 = v6;
  }

  result = [v2 maximumPrimaryColumnWidth];
  if (v8 != v4)
  {

    return [v2 setMaximumPrimaryColumnWidth_];
  }

  return result;
}

void sub_22048F3EC(void *a1)
{
  v2 = a1;
  sub_22048F454(v2, v1);
}

void sub_22048F454(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v8.receiver = v2;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidLoad);
  v4 = *&v2[qword_281282178];
  [v4 setAlpha_];
  v5 = [v3 view];
  if (v5)
  {
    v6 = v5;
    [v5 addSubview_];

    swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_220888CCC();

    v7 = [v3 traitCollection];
    sub_22048F5B0(v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_22048F578()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

id sub_22048F5B0(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[qword_281282158];
  swift_beginAccess();
  sub_22046DA2C(v4, v23);
  v5 = v24;
  v6 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v21 = v5;
  v22 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v20);
  v8(a1, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_220457328(&v20, v4);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v23);
  v9 = __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
  v10 = *&v2[qword_281282178];
  v12 = *(*v9 + 40);
  v11 = *(*v9 + 48);
  __swift_project_boxed_opaque_existential_1((*v9 + 16), v12);
  v13 = (*(*(v11 + 16) + 72))(v12);
  [v10 setBackgroundColor_];

  sub_22046DA2C(v4, v23);
  v14 = __swift_project_boxed_opaque_existential_1(v23, v24);
  result = [v2 view];
  if (result)
  {
    v16 = result;
    v17 = *v14;
    v19 = *(*v14 + 40);
    v18 = *(*v14 + 48);
    __swift_project_boxed_opaque_existential_1((v17 + 16), v19);
    (*(*(v18 + 16) + 24))(&v20, v19);
    [v16 setAccessibilityIgnoresInvertColors_];

    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22048F7AC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = sub_22088582C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812925E8 != -1)
  {
    swift_once();
  }

  v12 = qword_2812925F0;
  sub_22048D7F8(0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_220899920;
  sub_22089187C();
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 9.22337204e18)
  {
    v24 = v14;
    v22 = a1;
    v23 = v7;
    v15 = sub_22089287C();
    v17 = v16;
    v18 = v12;
    v19 = MEMORY[0x277D837D0];
    *(v13 + 56) = MEMORY[0x277D837D0];
    v20 = sub_22048D860();
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    *(v13 + 96) = v19;
    *(v13 + 104) = v20;
    *(v13 + 64) = v20;
    *(v13 + 72) = a2;
    *(v13 + 80) = a3;

    v21 = sub_220891AFC();
    sub_22088A7EC("Did refresh watchlist price data, time=%{public}@ms, identifier=%{public}@", 74, 2, &dword_22043F000, v18, v21, v13);

    (*(v8 + 16))(v11, v22, v23);
    sub_220462120(0, &qword_2812986A8, MEMORY[0x277D69308], MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_220888ECC();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_22048FA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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

uint64_t sub_22048FB9C()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 72))(v2, v3);
}

uint64_t sub_22048FC00()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 24))(v2, v3);
}

void sub_22048FC68(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a1;
  sub_22048FCBC(v3, v4);
}

void sub_22048FCBC(char a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_22088D67C();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x28223BE20](v6, v8).n128_u64[0];
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v3;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_viewWillAppear_, a1 & 1, v9);
  sub_220888C9C();
  v12 = v17;
  if (v17)
  {
    v13 = OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling;
    if (*(v3 + qword_281282160))
    {
      v17[OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling] = 1;
      sub_22088C71C();
      v14 = sub_22088BFCC();

      type metadata accessor for TickerCollectionView();
      *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = v12[v13];
      sub_2207A7D00();

      sub_22088D26C();
      (*(v7 + 104))(v11, *MEMORY[0x277D6E798], v6);
      sub_22088D66C();

      (*(v7 + 8))(v11, v6);
    }

    else
    {
      v17[OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling] = 0;
      sub_22088C71C();
      v15 = sub_22088BFCC();

      type metadata accessor for TickerCollectionView();
      *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = v12[v13];
      sub_2207A7D00();
    }
  }
}

void sub_22048FF20(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, v4);
  v6 = [v5 traitCollection];
  sub_22048F5B0(v6);
}

void sub_220490018(void *a1)
{
  v2 = a1;
  sub_220490060(v2, v1);
}

void sub_220490060(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22088BFFC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v42 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = v42 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v20 = v42 - v19;
  MEMORY[0x28223BE20](v21, v22);
  v24 = v42 - v23;
  v25 = sub_22088C00C();
  *&v27 = MEMORY[0x28223BE20](v25 - 8, v26).n128_u64[0];
  v29 = v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45.receiver = v2;
  v45.super_class = ObjectType;
  objc_msgSendSuper2(&v45, sel_viewSafeAreaInsetsDidChange, v27);
  v30 = [v2 navigationController];
  if (v30)
  {
    v31 = v30;
    if (([v30 isToolbarHidden] & 1) == 0)
    {
      v42[0] = v16;
      v43 = v8;
      v44 = v29;
      *v24 = 0;
      v24[8] = 1;
      v32 = *MEMORY[0x277D6DC90];
      v33 = *(v5 + 104);
      v33(v24, v32, v4);
      *v20 = 0x404C000000000000;
      v20[8] = 1;
      v42[1] = v20;
      v34 = v4;
      v33(v20, v32, v4);
      v35 = [v2 view];
      if (!v35)
      {
        __break(1u);
        return;
      }

      v36 = v35;
      [v35 safeAreaInsets];
      v38 = v37;

      v39 = v42[0];
      *v42[0] = v38 + 88.0;
      v39[8] = 0;
      v40 = *MEMORY[0x277D6DCA0];
      v33(v39, v40, v4);
      *v12 = 0x3FD999999999999ALL;
      v33(v12, *MEMORY[0x277D6DC98], v4);
      v41 = v43;
      *v43 = 0;
      *(v41 + 8) = 0;
      v33(v41, v40, v34);
      sub_22088BFEC();
      sub_22088D28C();
    }
  }
}

void sub_220490394(void *a1)
{
  v2 = a1;
  sub_2204903DC(v2, v1);
}

void sub_2204903DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42.receiver = v2;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, sel_viewDidLayoutSubviews);
  sub_220888C9C();
  if (!v41)
  {
    return;
  }

  v4 = *&v2[qword_281282178];
  v5 = [v3 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v43.origin.x = v8;
  v43.origin.y = v10;
  v43.size.width = v12;
  v43.size.height = v14;
  Width = CGRectGetWidth(v43);
  v16 = [v3 view];
  if (!v16)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v17 = v16;
  [v16 safeAreaInsets];
  v19 = v18;

  [v4 setFrame_];
  sub_22088C71C();
  v20 = sub_22088BFCC();

  [v20 contentSize];
  v22 = v21;

  v23 = [v41 view];
  if (!v23)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v24 = v23;
  v25 = [v3 view];
  if (!v25)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v26 = v25;
  [v25 safeAreaInsets];
  v28 = v27;

  v29 = [v3 view];
  if (!v29)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v30 = v29;
  [v29 bounds];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;

  v44.origin.x = v32;
  v44.origin.y = v34;
  v44.size.width = v36;
  v44.size.height = v38;
  v39 = CGRectGetWidth(v44);
  if (v22 <= 0.0)
  {
    sub_220891A7C();
    v22 = v40 + 56.0;
  }

  [v24 setFrame_];
}

uint64_t sub_220490678@<X0>(uint64_t a2@<X8>)
{
  v31 = a2;
  swift_getObjectType();
  v2 = sub_22088B3CC();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v27 = &v26 - v8;
  v28 = sub_22088B3DC();
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v26 - v15;
  if (qword_281298EC0 != -1)
  {
    swift_once();
  }

  swift_getWitnessTable();
  sub_220886B3C();
  v17 = v32;
  sub_220490D4C(0);
  v18 = sub_22088B3EC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 72);
  v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  if (v17 == 1)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_220899920;
    v23 = *(v19 + 104);
    v23(v22 + v21, *MEMORY[0x277D6D760], v18);
    v23(v22 + v21 + v20, *MEMORY[0x277D6D768], v18);
    sub_220490DA4(v22);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    (*(v9 + 104))(v16, *MEMORY[0x277D6D750], v28);
    (*(v29 + 104))(v27, *MEMORY[0x277D6D738], v30);
  }

  else
  {
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_220899360;
    (*(v19 + 104))(v25 + v21, *MEMORY[0x277D6D768], v18);
    sub_220490DA4(v25);
    swift_setDeallocating();
    (*(v19 + 8))(v25 + v21, v18);
    swift_deallocClassInstance();
    (*(v9 + 104))(v12, *MEMORY[0x277D6D750], v28);
    (*(v29 + 104))(v5, *MEMORY[0x277D6D738], v30);
  }

  return sub_22088B40C();
}

uint64_t sub_220490B14()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BEC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D0A8], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  v11[15] = 1;
  sub_2204643A4(0, &qword_281298CC8, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298EC8 = result;
  return result;
}

uint64_t sub_220490CE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D2860](a1, a2, ObjectType, a6);
}

void sub_220490D4C(uint64_t a1)
{
  if (!qword_28127E0B0)
  {
    sub_22088B3EC();
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E0B0);
    }
  }
}

uint64_t sub_220490DA4(uint64_t a1)
{
  v2 = sub_22088B3EC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_2204910B8(0);
    v11 = sub_22089250C();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_22049114C(&qword_281297D98, MEMORY[0x277D6D770], MEMORY[0x277D6D778]);
      v18 = sub_22089129C();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_22049114C(&qword_281297D90, MEMORY[0x277D6D770], MEMORY[0x277D6D780]);
          v25 = sub_2208912FC();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

void sub_2204910B8(uint64_t a1)
{
  if (!qword_28127E400)
  {
    sub_22088B3EC();
    sub_22049114C(&qword_281297D98, MEMORY[0x277D6D770], MEMORY[0x277D6D778]);
    v1 = sub_22089251C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E400);
    }
  }
}

uint64_t sub_22049114C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2204911C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22088CC6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v46 - v14;
  sub_22088D2BC();
  v16 = sub_22088D2CC();
  v16(a1, a2, a3);
  v17 = sub_22088D29C();
  v21 = sub_2206F1D88(1uLL, v17);
  if ((v20 & 1) == 0)
  {
    goto LABEL_2;
  }

  v46 = v18;
  v47 = v3;
  v24 = v8;
  v25 = v11;
  v26 = v20;
  v27 = v19;
  sub_2208928DC();
  swift_unknownObjectRetain_n();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
    swift_unknownObjectRelease();
    v28 = MEMORY[0x277D84F90];
  }

  v29 = *(v28 + 16);

  if (__OFSUB__(v26 >> 1, v27))
  {
    __break(1u);
    goto LABEL_39;
  }

  if (v29 != (v26 >> 1) - v27)
  {
LABEL_39:
    swift_unknownObjectRelease();
    v20 = v26;
    v19 = v27;
    v11 = v25;
    v8 = v24;
    v18 = v46;
    v3 = v47;
LABEL_2:
    sub_2206CE40C(v21, v18, v19, v20);
    v23 = v22;
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v11 = v25;
  v8 = v24;
  v3 = v47;
  if (!v23)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_10:
  (*(v8 + 16))(v15, a3, v7);
  v30 = (*(v8 + 88))(v15, v7);
  v31 = *MEMORY[0x277D6E230];
  if (v30 == v31 || (v32 = *MEMORY[0x277D6E258], v30 == v32))
  {

    v33 = 1;
LABEL_13:
    sub_2204919B8(v33);
    return;
  }

  if (v30 == *MEMORY[0x277D6E260] || v30 == *MEMORY[0x277D6E250])
  {
LABEL_31:
    v41 = [objc_opt_self() sharedApplication];
    v47 = [v41 applicationState];

    v42 = *(v8 + 104);
    v42(v11, v32, v7);
    v43 = sub_2206FA318(v11, v23);
    v44 = *(v8 + 8);
    v44(v11, v7);
    if (!v43)
    {
      v42(v11, v31, v7);
      v45 = sub_2206FA318(v11, v23);

      v44(v11, v7);
      if (!v45 && (([objc_opt_self() areAnimationsEnabled] & 1) != 0 || v47 == 2 || *(v3 + qword_281282190) == 1))
      {
        goto LABEL_37;
      }

      return;
    }

LABEL_32:

    return;
  }

  if (v30 != *MEMORY[0x277D6E268])
  {
    if (v30 != *MEMORY[0x277D6E248] && v30 != *MEMORY[0x277D6E240] && v30 != *MEMORY[0x277D6E238])
    {
      sub_22089267C();
      __break(1u);
      return;
    }

    goto LABEL_31;
  }

  v35 = *(v8 + 104);
  v35(v11, *MEMORY[0x277D6E258], v7);
  v36 = sub_2206FA318(v11, v23);
  v37 = *(v8 + 8);
  v37(v11, v7);
  if (v36)
  {
    goto LABEL_32;
  }

  v35(v11, v31, v7);
  v38 = sub_2206FA318(v11, v23);

  v37(v11, v7);
  if (!v38)
  {
LABEL_37:
    v33 = 0;
    goto LABEL_13;
  }
}

void sub_2204916B8(uint64_t a1)
{
  v3 = type metadata accessor for StockListSelectionModel(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088CC6C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a1, v7, v10);
  v13 = (*(v8 + 88))(v12, v7);
  if (v13 != *MEMORY[0x277D6E230] && v13 != *MEMORY[0x277D6E258] && v13 != *MEMORY[0x277D6E260] && v13 != *MEMORY[0x277D6E250])
  {
    if (v13 == *MEMORY[0x277D6E268])
    {
      a1 = v1;
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_featureAvailability), *(v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_featureAvailability + 24));
      if (sub_22088618C())
      {
        sub_2204A43F0();
        return;
      }

      goto LABEL_22;
    }

    if (v13 != *MEMORY[0x277D6E248] && v13 != *MEMORY[0x277D6E240] && v13 != *MEMORY[0x277D6E238])
    {
      sub_22089267C();
      __break(1u);
LABEL_22:
      v19 = *(a1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler);
      v20 = *(v19 + 40);
      ObjectType = swift_getObjectType();
      v22 = sub_22088685C();
      (*(*(v22 - 8) + 56))(v6, 1, 2, v22);
      (*(v20 + 88))(v6, ObjectType, v20);
      sub_2204A2890(v6, type metadata accessor for StockListSelectionModel);
      v23 = *(v19 + 40);
      v24 = swift_getObjectType();
      (*(v23 + 152))(v24, v23);
    }
  }
}

void sub_2204919B8(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + qword_281282160) != (a1 & 1))
  {
    *(v1 + qword_281282160) = v2;
    v3 = *(v1 + qword_281282168);
    [v3 cancel];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    v7[4] = sub_2206BEA5C;
    v7[5] = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_2206BE9C4;
    v7[3] = &block_descriptor_29;
    v6 = _Block_copy(v7);

    [v3 addAnimation_];
    _Block_release(v6);
  }
}

uint64_t sub_220491AE4()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_220491B1C()
{

  return swift_deallocObject();
}

void sub_220491B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t, void, uint64_t))
{
  v11 = *MEMORY[0x277D85000] & *v5;
  sub_220888C9C();
  if (v12)
  {
    a5(a1, a2, a3, *(v11 + 80), a4);
  }
}

uint64_t sub_220491C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5928](a1, a2, a3, ObjectType, a5);
}

id sub_220491CFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v50.receiver = v2;
  v50.super_class = ObjectType;
  objc_msgSendSuper2(&v50, sel_viewDidLoad);
  sub_220492450();
  [v2 setDefinesPresentationContext_];
  v5 = *&v2[OBJC_IVAR____TtC8StocksUI23StockListViewController_blueprintViewController];
  [v2 addChildViewController_];
  result = [v2 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  result = [v5 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  [v7 addSubview_];

  [v5 didMoveToParentViewController_];
  result = [v5 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  result = [v3 view];
  if (result)
  {
    v10 = result;
    [result bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;

    [v9 setFrame_];
    sub_22088C71C();
    v19 = sub_22088BFCC();

    [v19 setKeyboardDismissMode_];

    sub_22088C71C();
    v20 = sub_22088BFCC();

    [v20 setSelectionFollowsFocus_];

    v21 = [v3 traitCollection];
    sub_2204A0A00(v21);

    sub_2204A0BAC(0, 1);
    if (sub_22088F0DC())
    {
      sub_22044D56C(0, &qword_28127E850, 0x277D751E0);
      v22 = sub_2208916DC();
      v43.receiver = v3;
      v43.super_class = ObjectType;
      objc_msgSendSuper2(&v43, sel_setToolbarItems_animated_, v22, 0);
    }

    else
    {
      v23 = sub_220891C4C();
      if (!v23)
      {
LABEL_10:

        v25 = [v3 traitCollection];
        sub_2204A2984(v25);

        sub_22088C71C();
        v26 = sub_22088BFCC();

        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v28 = [objc_opt_self() bundleForClass_];
        sub_220884CAC();

        v29 = sub_22089132C();

        [v26 setAccessibilityLabel_];

        sub_22088AC6C();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_220888CCC();

        v30 = objc_opt_self();
        v31 = [v30 defaultCenter];
        v32 = *MEMORY[0x277D76810];
        v33 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v48 = sub_22076CB18;
        v49 = v33;
        aBlock = MEMORY[0x277D85DD0];
        v45 = 1107296256;
        v46 = sub_220763128;
        v47 = &block_descriptor_105;
        v34 = _Block_copy(&aBlock);

        v35 = [v31 addObserverForName:v32 object:0 queue:0 usingBlock:v34];
        _Block_release(v34);

        *&v3[OBJC_IVAR____TtC8StocksUI23StockListViewController_contentSizeCategoryObserver] = v35;
        swift_unknownObjectRelease();
        v36 = [v30 defaultCenter];
        v37 = *MEMORY[0x277D76660];
        v38 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v48 = sub_22076CBB4;
        v49 = v38;
        aBlock = MEMORY[0x277D85DD0];
        v45 = 1107296256;
        v46 = sub_220763128;
        v47 = &block_descriptor_109;
        v39 = _Block_copy(&aBlock);

        v40 = [v36 addObserverForName:v37 object:0 queue:0 usingBlock:v39];
        _Block_release(v39);

        *&v3[OBJC_IVAR____TtC8StocksUI23StockListViewController_applicationStateObserver] = v40;
        swift_unknownObjectRelease();
        sub_22088C73C();
        sub_22088B70C();

        swift_allocObject();
        swift_unknownObjectWeakInit();
        sub_22088868C();

        __swift_destroy_boxed_opaque_existential_1(&aBlock);
        v41 = *(*&v3[OBJC_IVAR____TtC8StocksUI23StockListViewController_eventHandler] + 40);
        v42 = swift_getObjectType();
        return (*(v41 + 184))(v42, v41);
      }

      v24 = v23;
      sub_22044D56C(0, &qword_28127E850, 0x277D751E0);
      v22 = sub_2208916DC();
      [v24 setToolbarItems:v22 animated:0];
    }

    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_220492418()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

void sub_220492450()
{
  v1 = v0;
  v2 = sub_220891CBC();
  v3 = sub_220492A40();
  [v2 setTitleView_];

  if ((sub_22088F0DC() & 1) == 0)
  {
    v15 = sub_220891CBC();
    v16 = sub_220492C48(v15);
    [v15 setRightBarButtonItem_];

    v17 = sub_220891CBC();
    v18 = [objc_allocWithZone(MEMORY[0x277D759F0]) initWithNibName:0 bundle:0];
    [v17 setSearchController_];

    v12 = [objc_opt_self() sharedApplication];
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = sub_22076CB34;
    v36 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v14 = &block_descriptor_114;
LABEL_9:
    v33 = sub_2204C35E8;
    v34 = v14;
    v20 = _Block_copy(&aBlock);

    [v12 su:v20 performBlockAfterCATransactionCommits:?];
    _Block_release(v20);

    return;
  }

  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  v6 = sub_220891CBC();
  v7 = sub_220492C48(v6);
  if (v5)
  {
    v30 = v7;
    aBlock = MEMORY[0x277D84F90];
    if (v7)
    {
      v8 = v7;
      MEMORY[0x223D89870]();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22089177C();
      }

      sub_22089179C();
    }

    sub_2204C0A04(&v30, &unk_28127E840, &qword_28127E850, 0x277D751E0, sub_22044D56C);
    sub_22044D56C(0, &qword_28127E850, 0x277D751E0);
    v9 = sub_2208916DC();

    [v6 setRightBarButtonItems_];

    v10 = sub_220891CBC();
    v11 = [objc_allocWithZone(MEMORY[0x277D759F0]) initWithNibName:0 bundle:0];
    [v10 setSearchController_];

    v12 = [objc_opt_self() sharedApplication];
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = sub_22076CB3C;
    v36 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v32 = 1107296256;
    v14 = &block_descriptor_118;
    goto LABEL_9;
  }

  v29[4] = v7;
  v21 = sub_22089132C();
  v22 = [objc_opt_self() systemImageNamed_];

  v23 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithImage:v22 style:0 target:v1 action:sel_presentSearchFromBarButtonItem];
  v24 = 0;
  v29[5] = v23;
  aBlock = MEMORY[0x277D84F90];
  while (v24 != 2)
  {
    v25 = v29[v24++ + 4];
    if (v25)
    {
      v26 = v25;
      MEMORY[0x223D89870]();
      if (*((aBlock & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22089177C();
      }

      sub_22089179C();
    }
  }

  sub_22076C644(0, &unk_28127E840, &qword_28127E850, 0x277D751E0, sub_22044D56C);
  swift_arrayDestroy();
  sub_22044D56C(0, &qword_28127E850, 0x277D751E0);
  v27 = sub_2208916DC();

  [v6 setRightBarButtonItems_];

  v28 = sub_220891CBC();
  [v28 setSearchController_];

  sub_220888CAC();
}

id sub_220492A40()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MastheadView()) initWithFrame_];
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

char *sub_220492B04(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC8StocksUI12MastheadView_appNameLabel;
  *&v6[v12] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v13 = OBJC_IVAR____TtC8StocksUI12MastheadView_dateLabel;
  *&v6[v13] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v19.receiver = v6;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC8StocksUI12MastheadView_appNameLabel;
  v16 = *&v14[OBJC_IVAR____TtC8StocksUI12MastheadView_appNameLabel];
  v17 = v14;
  [v17 addSubview_];
  [v17 addSubview_];
  [*&v14[v15] setAccessibilityTraits_];

  return v17;
}

id sub_220492C48(uint64_t a1)
{
  v2 = v1;
  if (sub_22088F0DC())
  {
    sub_22044D56C(0, &qword_28127E850, 0x277D751E0);
    v3 = (v1 + OBJC_IVAR____TtC8StocksUI23StockListViewController_styler);
    swift_beginAccess();
    v4 = __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    sub_220493184(v4);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC8StocksUI23StockListViewController_editWatchlistMenuProvider), *(v2 + OBJC_IVAR____TtC8StocksUI23StockListViewController_editWatchlistMenuProvider + 24));
    sub_2204933D8();
    v5 = sub_220891B9C();
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v7 = objc_opt_self();
    v8 = v5;
    v9 = [v7 bundleForClass_];
    sub_220884CAC();

    v10 = sub_22089132C();

    [v8 setAccessibilityLabel_];
    v11 = v8;
  }

  else
  {
    v12 = [objc_opt_self() buttonWithType_];
    v13 = [v12 widthAnchor];
    v14 = [v13 constraintEqualToConstant_];

    [v14 setActive_];
    v15 = [v12 heightAnchor];
    v16 = [v15 constraintEqualToConstant_];

    [v16 setActive_];
    v17 = (v2 + OBJC_IVAR____TtC8StocksUI23StockListViewController_styler);
    swift_beginAccess();
    v18 = __swift_project_boxed_opaque_existential_1(v17, v17[3]);
    v19 = sub_220493184(v18);
    [v12 setImage:v19 forState:0];

    [v12 setDisabledDimsImage_];
    [v12 setShowsMenuAsPrimaryAction_];
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC8StocksUI23StockListViewController_editWatchlistMenuProvider), *(v2 + OBJC_IVAR____TtC8StocksUI23StockListViewController_editWatchlistMenuProvider + 24));
    v20 = sub_2204933D8();
    [v12 setMenu_];

    [v12 setShowsLargeContentViewer_];
    v21 = sub_22089132C();
    v22 = [objc_opt_self() systemImageNamed_];

    [v12 setLargeContentImage_];
    type metadata accessor for Localized();
    v23 = swift_getObjCClassFromMetadata();
    v24 = objc_opt_self();
    v25 = [v24 bundleForClass_];
    sub_220884CAC();

    v26 = sub_22089132C();

    [v12 setLargeContentTitle_];

    v8 = v12;
    v27 = [v24 bundleForClass_];
    sub_220884CAC();

    v28 = sub_22089132C();

    [v8 setAccessibilityLabel_];

    v11 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithCustomView_];
    v10 = v8;
  }

  return v11;
}

id sub_220493184(uint64_t a1)
{
  if (sub_22088F0DC())
  {
    if (qword_28127F0A8 != -1)
    {
      swift_once();
    }

    return qword_2812B6938;
  }

  else
  {
    sub_22048BC00();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_22089B120;
    v4 = v1[10];
    v5 = v1[11];
    __swift_project_boxed_opaque_existential_1(v1 + 7, v4);
    *(v3 + 32) = (*(*(v5 + 16) + 128))(v4);
    *(v3 + 40) = [objc_opt_self() clearColor];
    sub_22044D56C(0, &qword_28127E530, 0x277D75348);
    v6 = sub_2208916DC();

    v7 = objc_opt_self();
    v8 = [v7 configurationWithPaletteColors_];

    v9 = [v7 configurationWithPointSize_];
    v10 = [v8 configurationByApplyingConfiguration_];

    v11 = v10;
    v12 = sub_22089132C();
    v13 = [objc_opt_self() systemImageNamed:v12 withConfiguration:v11];

    return v13;
  }
}

uint64_t sub_220493378()
{
  v1 = (*v0 + OBJC_IVAR____TtC8StocksUI10BaseStyler_theme);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 128))(v2, v3);
}

uint64_t sub_2204933D8()
{
  v1 = v0;
  v2 = sub_22088CA0C();
  v4 = MEMORY[0x28223BE20](v2, v3);
  (*(v6 + 104))(aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6E0E8], v4);
  v7 = *(v0 + 112);
  v17 = sub_22088731C();
  v18 = sub_22049368C();
  aBlock[0] = v7;
  v20 = 0u;
  v21 = 0u;
  v22 = 1;
  sub_22088C4DC();
  swift_allocObject();

  v8 = sub_22088C4BC();
  sub_22048BC00();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22089B130;
  v10 = objc_opt_self();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = v8;
  v18 = sub_220722E78;
  v19 = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_220721020;
  v17 = &block_descriptor_35;
  v12 = _Block_copy(aBlock);

  v13 = [v10 elementWithUncachedProvider_];
  _Block_release(v12);
  *(v9 + 32) = v13;
  sub_22044D56C(0, &qword_28127E560, 0x277D75710);
  v14 = sub_220891F5C();

  return v14;
}

uint64_t sub_22049364C()
{

  return swift_deallocObject();
}

unint64_t sub_22049368C()
{
  result = qword_281298BF0;
  if (!qword_281298BF0)
  {
    sub_22088731C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281298BF0);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_55(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_220493AE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_220493B38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void *sub_220493B90@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128D0E8, &protocol descriptor for StockSearchModuleType, 1);
  result = sub_2208884DC();
  v4 = v7;
  if (v7)
  {
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    *a2 = (*(v5 + 8))(v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220493C48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22046DA2C(a1, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281296D20, MEMORY[0x277D2D578], 1);
    result = sub_2208884DC();
    if (v10[3])
    {
      v6 = type metadata accessor for StockSearchModule();
      v7 = objc_allocWithZone(v6);
      sub_22046DA2C(v11, &v7[OBJC_IVAR____TtC8StocksUI17StockSearchModule_resolver]);
      *&v7[OBJC_IVAR____TtC8StocksUI17StockSearchModule_tracker] = v5;
      sub_22046DA2C(v10, &v7[OBJC_IVAR____TtC8StocksUI17StockSearchModule_contextBuilder]);
      v9.receiver = v7;
      v9.super_class = v6;
      v8 = objc_msgSendSuper2(&v9, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v11);
      result = __swift_destroy_boxed_opaque_existential_1(v10);
      a2[3] = v6;
      a2[4] = &protocol witness table for StockSearchModule;
      *a2 = v8;
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

void __swiftcall StockSearchModule.createSearchController()(UISearchController *__return_ptr retstr)
{
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI17StockSearchModule_resolver), *(v1 + OBJC_IVAR____TtC8StocksUI17StockSearchModule_resolver + 24));
  type metadata accessor for StockSearchViewController(0);
  swift_allocObject();
  swift_unknownObjectUnownedInit();

  v2 = sub_2208884AC();

  if (v2)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277D759F0]) initWithSearchResultsController_];
    v4 = [v3 searchBar];
    [v4 setDelegate_];

    v5 = [v3 searchBar];
    [v5 setLookToDictateEnabled_];

    sub_22049F230([v3 searchBar]);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_220493F3C()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_220493FB4(uint64_t a1)
{
  result = type metadata accessor for StockSearchMode(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_220494098(uint64_t a1)
{
  v1 = sub_220886A4C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2204940F8(void *a1, uint64_t a2)
{
  v3 = sub_22088A07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_22046DA2C(Strong + OBJC_IVAR____TtC8StocksUI17StockSearchModule_contextBuilder, v12);

  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_22088ED6C();
  sub_2204693CC();
  sub_22088837C();
  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = swift_unknownObjectUnownedLoadStrong();

  (*(v4 + 104))(v7, *MEMORY[0x277D68FA8], v3);
  sub_22088721C();

  (*(v4 + 8))(v7, v3);
  sub_22088731C();
  sub_22088836C();
}

uint64_t sub_220494328(uint64_t a1, char a2)
{
  type metadata accessor for StockSearchViewController(0);
  sub_220888BDC();

  sub_220446A58(0, &qword_28128D0D8, &protocol descriptor for StockSearchStylerType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_28128D0E0, &protocol descriptor for StockSearchRouterType, 1);
  sub_220888BEC();

  type metadata accessor for StockSearchRouter();
  sub_220888BDC();
  sub_2208882CC();

  type metadata accessor for StockSearchModalRouter();
  sub_220888BDC();
  sub_2208882CC();

  sub_220446A58(0, qword_281287AD8, &protocol descriptor for StockSearchEventHandlerType, 0);
  sub_220888BEC();

  sub_220446A58(0, qword_281289308, &protocol descriptor for StockSearchInteractorType, 0);
  sub_220888BEC();

  sub_220446A58(0, &qword_281288A40, &protocol descriptor for StockSearchDataManagerType, 0);
  sub_220888BEC();

  type metadata accessor for StockSearchBlueprintModifierFactory();
  sub_220888BDC();

  sub_2204951A0(0);
  sub_220888BDC();

  sub_220495810(0);
  *(swift_allocObject() + 16) = a2;
  sub_220888BDC();

  sub_2208882CC();

  sub_2204969F8(0);
  sub_220888BDC();

  sub_2204956C8(0);
  *(swift_allocObject() + 16) = a2;
  sub_220888BDC();

  sub_220495C18(0);
  sub_220888BDC();

  type metadata accessor for StockSearchBlueprintLayoutBuilder();
  sub_220888BDC();

  sub_220496B64(0);
  sub_220888BDC();

  sub_220496CE8(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
  sub_220888BDC();

  sub_220496E30(0);
  sub_220888BDC();

  sub_220446A58(0, &qword_2812971C0, MEMORY[0x277D6EB08], 1);
  sub_220888BEC();

  sub_220496F24(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_220497038(0, &qword_2812971B0, MEMORY[0x277D6EB10]);
  sub_220888BDC();

  sub_220495904(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_22088D84C();
  sub_220888BDC();

  sub_220446A58(0, &qword_281297378, MEMORY[0x277D6E8F0], 0);
  sub_220888BEC();
  sub_22088D41C();
  sub_2208882BC();

  sub_220495A8C(0);
  *(swift_allocObject() + 16) = a2;
  sub_220888BDC();

  sub_220496448();
  sub_220888BDC();
  sub_2208882CC();

  sub_220495D0C(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_220496720(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_2204968B0(0);
  sub_220888BDC();
  sub_2208882CC();

  type metadata accessor for StockSearchBlueprintViewCellProvider();
  sub_220888BDC();
  sub_2208882CC();

  type metadata accessor for StockSearchBlueprintViewSupplementaryViewProvider();
  sub_220888BDC();

  sub_220497038(0, &unk_281297668, MEMORY[0x277D6E388]);
  sub_220888BDC();
  sub_2208882CC();

  sub_22088B84C();
  sub_220888BDC();

  sub_2204970D8(0);
  sub_220888BDC();
  sub_2208882CC();

  sub_220446A58(0, &unk_2812972B0, MEMORY[0x277D6EA40], 1);
  sub_220888BEC();

  sub_22088CA2C();
  sub_220888BDC();

  sub_220446A58(0, qword_281284A40, &protocol descriptor for StockSearchCellViewRendererType, 0);
  sub_220888BEC();

  sub_220446A58(0, &qword_281285DA0, &protocol descriptor for StockSearchCellViewStylerType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_28127F388, &protocol descriptor for StockSearchCellViewLayoutAttributesFactoryType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_281280500, &protocol descriptor for StockSearchSectionHeaderViewRendererType, 0);
  sub_220888BEC();

  sub_220446A58(0, &qword_281280CB8, &protocol descriptor for StockSearchSectionHeaderViewStylerType, 1);
  sub_220888BEC();

  sub_220446A58(0, &qword_28127F0B0, &protocol descriptor for StockSearchSectionHeaderViewLayoutAttributesFactoryType, 1);
  sub_220888BEC();

  sub_220584CC4(0, &qword_281296890, sub_2204971CC, &type metadata for StockSearchOfflineModel, MEMORY[0x277D33538]);
  sub_220888BDC();
}

void sub_2204951A0(uint64_t a1)
{
  if (!qword_281297C58)
  {
    type metadata accessor for StockSearchSectionDescriptor(255);
    type metadata accessor for StockSearchModel(255);
    sub_220448630(qword_281286DF0, 255, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    sub_220448630(&qword_281291EB0, 255, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
    v1 = sub_22088B73C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297C58);
    }
  }
}

uint64_t type metadata accessor for StockSearchSectionDescriptor(uint64_t a1)
{
  result = qword_281286DB8;
  if (!qword_281286DB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2204952E0(uint64_t a1)
{
  sub_220495338(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_220495338(uint64_t a1)
{
  if (!qword_281299000)
  {
    sub_220886A4C();
    sub_2204953AC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281299000);
    }
  }
}

void sub_2204953AC(uint64_t a1)
{
  if (!qword_28127EB28)
  {
    sub_220886A4C();
    v1 = sub_2208917AC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127EB28);
    }
  }
}

uint64_t type metadata accessor for StockSearchModel(uint64_t a1)
{
  result = qword_281291E80;
  if (!qword_281291E80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220495450()
{
  if (!qword_281293BE0)
  {
    v0 = type metadata accessor for StockViewModel(0);
    if (!v1)
    {
      atomic_store(v0, &qword_281293BE0);
    }
  }
}

void sub_220495498(uint64_t a1)
{
  sub_220495450();
  if (v1 <= 0x3F)
  {
    sub_22049550C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22049550C(uint64_t a1)
{
  if (!qword_281293BF0)
  {
    type metadata accessor for StockViewModel(255);
    sub_220886A4C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281293BF0);
    }
  }
}

uint64_t sub_220495580(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockSearchModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2204956C8(uint64_t a1)
{
  if (!qword_281297B98)
  {
    type metadata accessor for StockSearchSectionDescriptor(255);
    type metadata accessor for StockSearchModel(255);
    sub_220495904(255);
    sub_220448630(qword_281286DF0, 255, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    sub_220448630(&qword_281291EB0, 255, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
    sub_220448630(&unk_281297A58, 255, sub_220495904, MEMORY[0x277D6DC88]);
    v1 = sub_22088B95C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297B98);
    }
  }
}

void sub_220495810(uint64_t a1)
{
  if (!qword_281297CD0)
  {
    sub_2204951A0(255);
    sub_2204956C8(255);
    sub_220448630(&qword_281297C60, 255, sub_2204951A0, MEMORY[0x277D6D8C8]);
    sub_220448630(&qword_281297BA0, 255, sub_2204956C8, MEMORY[0x277D6D960]);
    v1 = sub_22088B6FC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297CD0);
    }
  }
}

void sub_220495904(uint64_t a1)
{
  if (!qword_281297A50)
  {
    sub_22044D56C(255, &qword_28127E820, 0x277D752A0);
    sub_220495A8C(255);
    sub_220496720(255);
    sub_2204968B0(255);
    type metadata accessor for StockSearchViewController(255);
    sub_220448630(&qword_281297288, 255, sub_220495A8C, MEMORY[0x277D6EAB0]);
    sub_220448630(&qword_281297510, 255, sub_220496720, MEMORY[0x277D6E738]);
    sub_220448630(&qword_281297308, 255, sub_2204968B0, MEMORY[0x277D6E9D8]);
    v1 = sub_22088BFDC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297A50);
    }
  }
}

void sub_220495A8C(uint64_t a1)
{
  if (!qword_281297280)
  {
    sub_220495D0C(255);
    sub_220496448();
    sub_22044D56C(255, &qword_28127E820, 0x277D752A0);
    sub_220448630(&unk_281297390, 255, sub_220495D0C, MEMORY[0x277D6E820]);
    sub_220448630(&qword_281297158, 255, sub_220496448, MEMORY[0x277D6EB60]);
    sub_220448630(&unk_281297168, 255, sub_220496448, MEMORY[0x277D6EB50]);
    sub_220448630(&qword_281297160, 255, sub_220496448, MEMORY[0x277D6EB58]);
    v1 = sub_22088DE2C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297280);
    }
  }
}

void sub_220495C18(uint64_t a1)
{
  if (!qword_2812978A8)
  {
    type metadata accessor for StockSearchLayoutSectionDescriptor(255);
    type metadata accessor for StockSearchLayoutModel(255);
    sub_220448630(qword_2812822F8, 255, type metadata accessor for StockSearchLayoutSectionDescriptor, &unk_2208A5530);
    sub_220448630(&qword_28128C340, 255, type metadata accessor for StockSearchLayoutModel, &unk_2208AE7A0);
    v1 = sub_22088C63C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812978A8);
    }
  }
}

void sub_220495D0C(uint64_t a1)
{
  if (!qword_281297388)
  {
    sub_2204951A0(255);
    sub_220495C18(255);
    type metadata accessor for StockSearchBlueprintViewCellProvider();
    type metadata accessor for StockSearchBlueprintViewSupplementaryViewProvider();
    sub_220448630(&qword_281297C60, 255, sub_2204951A0, MEMORY[0x277D6D8C8]);
    sub_220448630(&qword_2812978B0, 255, sub_220495C18, MEMORY[0x277D6DF38]);
    sub_220448630(&qword_281281890, 255, type metadata accessor for StockSearchBlueprintViewCellProvider, &unk_2208B43A8);
    sub_220448630(qword_281296400, 255, type metadata accessor for StockSearchBlueprintViewSupplementaryViewProvider, &unk_2208A90FC);
    sub_220448630(&qword_28128C338, 255, type metadata accessor for StockSearchLayoutModel, &unk_2208AE7D8);
    v1 = sub_22088D7DC();
    if (!v2)
    {
      atomic_store(v1, &qword_281297388);
    }
  }
}

uint64_t type metadata accessor for StockSearchLayoutSectionDescriptor(uint64_t a1)
{
  result = qword_2812822C0;
  if (!qword_2812822C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220495F3C(uint64_t a1)
{
  sub_220657C74(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes(319);
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_220496010()
{
  if (!qword_281282D58)
  {
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_281282D58);
    }
  }
}

uint64_t type metadata accessor for StockSearchSectionHeaderViewLayoutAttributes(uint64_t a1)
{
  result = qword_28127F8E0;
  if (!qword_28127F8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2204960AC(uint64_t a1)
{
  type metadata accessor for CGRect(319);
  if (v1 <= 0x3F)
  {
    sub_22088D83C();
    if (v2 <= 0x3F)
    {
      sub_220496148();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_220496148()
{
  result = qword_28127E7B8;
  if (!qword_28127E7B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E7B8);
  }

  return result;
}

uint64_t type metadata accessor for StockSearchLayoutModel(uint64_t a1)
{
  result = qword_28128C308;
  if (!qword_28128C308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220496214(uint64_t a1)
{
  sub_220496328(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for StockViewModel(319);
    if (v5 <= 0x3F)
    {
      sub_2204961E0(319);
      v3 = v6;
      if (v7 <= 0x3F)
      {
        swift_getTupleTypeLayout3();
        v3 = 0;
        *(*(a1 - 8) + 84) = v9;
      }
    }
  }

  return v3;
}

void sub_220496328(uint64_t a1)
{
  if (!qword_281293BE8)
  {
    type metadata accessor for StockViewModel(255);
    sub_2204961E0(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_281293BE8);
    }
  }
}

unint64_t sub_2204963F0()
{
  result = qword_28128C340;
  if (!qword_28128C340)
  {
    type metadata accessor for StockSearchLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128C340);
  }

  return result;
}

void sub_220496448()
{
  if (!qword_281297150)
  {
    type metadata accessor for StockSearchSectionDescriptor(255);
    type metadata accessor for StockSearchModel(255);
    sub_2204951A0(255);
    sub_220495C18(255);
    type metadata accessor for StockSearchBlueprintViewCellProvider();
    type metadata accessor for StockSearchBlueprintViewSupplementaryViewProvider();
    type metadata accessor for StockSearchViewController(255);
    sub_220448630(qword_281286DF0, 255, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    sub_220448630(&qword_281291EB0, 255, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
    sub_220448630(&qword_281297C60, 255, sub_2204951A0, MEMORY[0x277D6D8C8]);
    sub_220448630(&qword_2812978B0, 255, sub_220495C18, MEMORY[0x277D6DF38]);
    sub_220448630(&qword_281281890, 255, type metadata accessor for StockSearchBlueprintViewCellProvider, &unk_2208B43A8);
    sub_220448630(qword_281296400, 255, type metadata accessor for StockSearchBlueprintViewSupplementaryViewProvider, &unk_2208A90FC);
    sub_220448630(&unk_2812892F0, 255, type metadata accessor for StockSearchViewController, &unk_2208A2BA8);
    sub_220448630(&qword_28128C338, 255, type metadata accessor for StockSearchLayoutModel, &unk_2208AE7D8);
    v0 = sub_22088E05C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297150);
    }
  }
}

void sub_220496720(uint64_t a1)
{
  if (!qword_281297508)
  {
    sub_2204951A0(255);
    sub_220495C18(255);
    type metadata accessor for StockSearchViewController(255);
    sub_220448630(&qword_281297C60, 255, sub_2204951A0, MEMORY[0x277D6D8C8]);
    sub_220448630(&qword_2812978B0, 255, sub_220495C18, MEMORY[0x277D6DF38]);
    sub_220448630(&unk_2812892F0, 255, type metadata accessor for StockSearchViewController, &unk_2208A2BA8);
    sub_220448630(&qword_28128C338, 255, type metadata accessor for StockSearchLayoutModel, &unk_2208AE7D8);
    v1 = sub_22088D59C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297508);
    }
  }
}

void sub_2204968B0(uint64_t a1)
{
  if (!qword_281297300)
  {
    sub_2204951A0(255);
    sub_220495C18(255);
    type metadata accessor for StockSearchViewController(255);
    sub_220448630(&qword_281297C60, 255, sub_2204951A0, MEMORY[0x277D6D8C8]);
    sub_220448630(&qword_2812978B0, 255, sub_220495C18, MEMORY[0x277D6DF38]);
    sub_220448630(&unk_2812892F0, 255, type metadata accessor for StockSearchViewController, &unk_2208A2BA8);
    v1 = sub_22088DC4C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297300);
    }
  }
}

void sub_2204969F8(uint64_t a1)
{
  if (!qword_281297258)
  {
    sub_220495C18(255);
    type metadata accessor for StockSearchBlueprintLayoutBuilder();
    sub_220496B64(255);
    sub_220448630(&qword_2812978B0, 255, sub_220495C18, MEMORY[0x277D6DF38]);
    sub_220448630(qword_281282E10, 255, type metadata accessor for StockSearchBlueprintLayoutBuilder, &unk_2208B29E0);
    sub_220448630(&unk_2812974C0, 255, sub_220496B64, MEMORY[0x277D6E7B8]);
    v1 = sub_22088DE5C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297258);
    }
  }
}

void sub_220496B64(uint64_t a1)
{
  if (!qword_2812974B8)
  {
    type metadata accessor for StockSearchLayoutSectionDescriptor(255);
    type metadata accessor for StockSearchLayoutModel(255);
    sub_220448630(&qword_2812822F0, 255, type metadata accessor for StockSearchLayoutSectionDescriptor, &unk_2208A5568);
    sub_220448630(&qword_28128C338, 255, type metadata accessor for StockSearchLayoutModel, &unk_2208AE7D8);
    v1 = sub_22088D6CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2812974B8);
    }
  }
}

uint64_t sub_220496CA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220496CE8(uint64_t a1)
{
  if (!qword_2812977C0)
  {
    sub_2204951A0(255);
    sub_220495904(255);
    type metadata accessor for StockSearchViewController(255);
    sub_220448630(&qword_281297C60, 255, sub_2204951A0, MEMORY[0x277D6D8C8]);
    sub_220448630(&unk_281297A58, 255, sub_220495904, MEMORY[0x277D6DC88]);
    sub_220448630(&unk_2812892F0, 255, type metadata accessor for StockSearchViewController, &unk_2208A2BA8);
    v1 = sub_22088C7CC();
    if (!v2)
    {
      atomic_store(v1, &qword_2812977C0);
    }
  }
}

void sub_220496E30(uint64_t a1)
{
  if (!qword_2812971C8)
  {
    sub_2204951A0(255);
    type metadata accessor for StockSearchViewController(255);
    sub_220448630(&qword_281297C60, 255, sub_2204951A0, MEMORY[0x277D6D8C8]);
    sub_220448630(&unk_2812892F0, 255, type metadata accessor for StockSearchViewController, &unk_2208A2BA8);
    v1 = sub_22088DF8C();
    if (!v2)
    {
      atomic_store(v1, &qword_2812971C8);
    }
  }
}

void sub_220496F24(uint64_t a1)
{
  if (!qword_2812971E0)
  {
    sub_22088D84C();
    sub_2204951A0(255);
    type metadata accessor for StockSearchViewController(255);
    sub_220448630(&qword_281297C60, 255, sub_2204951A0, MEMORY[0x277D6D8C8]);
    sub_220448630(&unk_2812892F0, 255, type metadata accessor for StockSearchViewController, &unk_2208A2BA8);
    v1 = sub_22088DEFC();
    if (!v2)
    {
      atomic_store(v1, &qword_2812971E0);
    }
  }
}

void sub_220497038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2204951A0(255);
    v7 = v6;
    v8 = sub_220448630(&qword_281297C60, 255, sub_2204951A0, MEMORY[0x277D6D8C8]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2204970D8(uint64_t a1)
{
  if (!qword_281297458)
  {
    sub_220495904(255);
    sub_2204951A0(255);
    sub_220448630(&unk_281297A58, 255, sub_220495904, MEMORY[0x277D6DC88]);
    sub_220448630(&qword_281297C68, 255, sub_2204951A0, MEMORY[0x277D6D8C0]);
    v1 = sub_22088D76C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297458);
    }
  }
}

unint64_t sub_2204971CC()
{
  result = qword_28128ABD0;
  if (!qword_28128ABD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128ABD0);
  }

  return result;
}

char *sub_220497220(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128D0D8, &protocol descriptor for StockSearchStylerType, 1);
  result = sub_2208884DC();
  if (!v58)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281287AD8, &protocol descriptor for StockSearchEventHandlerType, 0);
  result = sub_2208884DC();
  v3 = v55;
  if (!v55)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220496CE8(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204970D8(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220447D10(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297770, MEMORY[0x277D6E170], 1);
  result = sub_2208884DC();
  if (!v54[3])
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v48 = v56;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  if (!v50[0])
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v46 = v5;
  v47 = v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v8 = result;
    v52 = v7;
    v53 = sub_220448630(&qword_281298BF0, 255, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    v51[0] = v8;
    sub_22088B49C();
    swift_allocObject();
    v9 = sub_22088B47C();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
    v45 = &v44;
    v11 = MEMORY[0x28223BE20](v10, v10);
    v13 = (&v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v16 = type metadata accessor for StockSearchStyler();
    v52 = v16;
    v53 = &off_28341CC10;
    v51[0] = v15;
    v17 = sub_220448630(&qword_281297460, 255, sub_2204970D8, MEMORY[0x277D6E7F8]);
    v18 = type metadata accessor for StockSearchViewController(0);
    v19 = objc_allocWithZone(v18);
    v20 = __swift_mutable_project_boxed_opaque_existential_1(v51, v52);
    v44 = &v44;
    v21 = MEMORY[0x28223BE20](v20, v20);
    v23 = (&v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    v25 = *v23;
    v50[3] = v16;
    v50[4] = &off_28341CC10;
    v50[0] = v25;
    *&v19[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v26 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_searchAction;
    sub_22049D9F4();
    v28 = objc_allocWithZone(v27);
    *&v19[v26] = [v28 init];
    v29 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_stockSearchMode;
    v30 = sub_220886A4C();
    (*(*(v30 - 8) + 56))(&v19[v29], 1, 1, v30);
    swift_unknownObjectWeakInit();
    v19[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_isSearchResultsActive] = 0;
    v31 = OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventManager;
    sub_220584CC4(0, &qword_27CF56DC8, sub_220584D2C, &type metadata for StockSearchViewController.Event, MEMORY[0x277D6CAA0]);
    swift_allocObject();
    *&v19[v31] = sub_22088841C();
    sub_22046DA2C(v50, &v19[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_styler]);
    v32 = &v19[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler];
    v33 = v48;
    *v32 = v3;
    v32[1] = v33;
    v34 = v47;
    *&v19[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_blueprintViewController] = v47;
    v35 = &v19[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_blueprintSelectionProvider];
    *v35 = v46;
    v35[1] = v17;
    *&v19[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_userActivityManager] = v6;
    sub_22046DA2C(v54, &v19[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_keyboardInputMonitor]);
    *&v19[OBJC_IVAR____TtC8StocksUI25StockSearchViewController_commands] = v9;
    v49.receiver = v19;
    v49.super_class = v18;
    swift_unknownObjectRetain();
    v36 = v34;

    v37 = objc_msgSendSuper2(&v49, sel_initWithNibName_bundle_, 0, 0);
    *(*(v37 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_eventHandler) + 24) = &off_2834174B8;
    swift_unknownObjectWeakAssign();
    v38 = *(v37 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_blueprintViewController);
    v39 = v37;
    v40 = v38;
    sub_22088C79C();

    v41 = *(v39 + OBJC_IVAR____TtC8StocksUI25StockSearchViewController_searchAction);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v42 = v41;
    v43 = sub_22088E16C();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v54);
    __swift_destroy_boxed_opaque_existential_1(v50);
    __swift_destroy_boxed_opaque_existential_1(v51);
    __swift_destroy_boxed_opaque_existential_1(v57);
    return v39;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_220497A04()
{
  MEMORY[0x223D8B910](v0 + 16);

  return swift_deallocObject();
}

void *sub_220497A70@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  v10 = v21;
  if (v21)
  {
    v11 = a2(0);
    v12 = v22;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = &v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16, v14);
    v18 = a3(v16, v11, v10, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a5[3] = v11;
    a5[4] = a4;
    *a5 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_220497C08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281289308, &protocol descriptor for StockSearchInteractorType, 0);
  result = sub_2208884DC();
  v5 = v12;
  if (v12)
  {
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_28128D0E0, &protocol descriptor for StockSearchRouterType, 1);
    result = sub_2208884DC();
    if (v11[3])
    {
      type metadata accessor for StockSearchEventHandler();
      v7 = swift_allocObject();
      v7[3] = 0;
      swift_unknownObjectWeakInit();
      v7[4] = v5;
      v7[5] = v6;
      sub_22046DA2C(v11, (v7 + 6));
      ObjectType = swift_getObjectType();
      v9 = *(v6 + 16);
      swift_unknownObjectRetain();

      v9(v10, &off_28341EA60, ObjectType, v6);
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_1(v11);
      *a2 = v7;
      a2[1] = &off_28341EA98;
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

void *sub_220497D84@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281288A40, &protocol descriptor for StockSearchDataManagerType, 0);
  result = sub_2208884DC();
  if (!v24)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220495810(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockSearchBlueprintModifierFactory();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220447D10(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v17 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220584CC4(0, &qword_281296890, sub_2204971CC, &type metadata for StockSearchOfflineModel, MEMORY[0x277D33538]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  v19 = result;
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v8;
  v10 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22049C650(0, &qword_281298910, type metadata accessor for StockListSelectionModel, MEMORY[0x277D6CB60]);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280, MEMORY[0x277D69550], 1);
  result = sub_2208884DC();
  if (!v23[3])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  v12 = v21;
  if (v21)
  {
    v13 = v22;
    sub_22049C6B4(0);
    v14 = swift_allocObject();
    v14[3] = 0;
    swift_unknownObjectWeakInit();
    v14[19] = MEMORY[0x277D84FA0];
    v14[6] = v10;
    v14[7] = v5;
    v14[4] = v6;
    v14[5] = v17;
    v14[8] = v16;
    v14[9] = v9;
    v14[10] = v19;
    v14[11] = v11;
    sub_22046DA2C(v23, (v14 + 12));
    v14[17] = v12;
    v14[18] = v13;
    swift_unknownObjectRetain();

    v18 = v9;

    swift_unknownObjectRetain();
    sub_22049C844(v20);
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    swift_allocObject();
    swift_weakInit();

    sub_22088EBDC();

    swift_beginAccess();
    sub_22088EB6C();
    swift_endAccess();

    __swift_destroy_boxed_opaque_existential_1(v20);
    swift_allocObject();
    swift_weakInit();

    sub_22088868C();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v20);
    result = __swift_destroy_boxed_opaque_existential_1(v23);
    *v15 = v14;
    v15[1] = &off_28341B6B8;
    return result;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_2204982A4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *sub_2204982DC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812992F8, MEMORY[0x277D69430], 1);
  result = sub_2208884DC();
  if (!v7[3])
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299308, MEMORY[0x277D693B0], 1);
  result = sub_2208884DC();
  if (!v6[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280, MEMORY[0x277D69550], 1);
  result = sub_2208884DC();
  if (v5[3])
  {
    type metadata accessor for StockSearchDataManager();
    swift_allocObject();
    result = sub_22049845C(v7, v6, v5);
    *a2 = result;
    a2[1] = &off_2834262D8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_22049845C(void *a1, void *a2, void *a3)
{
  v28 = a2;
  v29 = a3;
  v27 = a1;
  v26 = sub_220891CFC();
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v5);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220891CCC();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_22088F14C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v12 = sub_22046D5B4();
  v24[0] = &OBJC_IVAR____TtC8StocksUI22StockSearchDataManager_latestReturnedResultsVersion;
  v24[1] = v12;
  sub_22088F13C();
  v30 = MEMORY[0x277D84F90];
  sub_2204988C0(&qword_28127E7D8, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v13 = MEMORY[0x277D85230];
  v25 = MEMORY[0x277D83940];
  sub_220498908(0, &unk_28127E990, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22046D71C(&qword_28127E988, &unk_28127E990, v13);
  sub_2208923FC();
  (*(v4 + 104))(v7, *MEMORY[0x277D85260], v26);
  v3[19] = sub_220891D2C();
  v3[20] = 0;
  v3[21] = 0;
  v3[22] = MEMORY[0x277D84F90];
  v3[23] = MEMORY[0x277D84FA0];
  v14 = v27;
  sub_22046DA2C(v27, (v3 + 4));
  v15 = v28;
  sub_22046DA2C(v28, (v3 + 9));
  v16 = v29;
  sub_22046DA2C(v29, (v3 + 14));
  __swift_project_boxed_opaque_existential_1(v3 + 9, v3[12]);
  sub_2204988C0(qword_28128C430, v17, type metadata accessor for StockSearchDataManager, &unk_2208BBDE8);

  sub_220885B5C();

  v18 = v3[19];
  sub_220498908(0, &qword_28127EB50, MEMORY[0x277D69810], v25);

  v19 = v18;
  sub_220888F9C();

  v20 = v3[19];

  v21 = v20;
  sub_220888E4C();

  v22 = sub_220888D9C();
  sub_220888E9C();

  __swift_destroy_boxed_opaque_existential_1(v16);
  __swift_destroy_boxed_opaque_existential_1(v15);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v3;
}

uint64_t sub_2204988C0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_220498908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2204989B8(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204951A0(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2204956C8(0);
    result = sub_2208884CC();
    if (result)
    {
      sub_220495810(0);
      swift_allocObject();
      return sub_22088B69C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220498AAC(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

uint64_t sub_220498B1C(uint64_t *a1, void *a2)
{
  v24 = MEMORY[0x277D85248];
  sub_220498908(0, &qword_28127E7D0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v24 - v6;
  sub_2204753E0(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204752B8(0);
  v15 = *(v14 - 8);
  v25 = v14;
  v26 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2[22] = *a1;

  __swift_project_boxed_opaque_existential_1(a2 + 14, a2[17]);
  sub_2204988C0(&qword_28128C428, v19, type metadata accessor for StockSearchDataManager, &unk_2208BBE10);
  sub_220885FAC();
  __swift_project_boxed_opaque_existential_1(a2 + 14, a2[17]);
  sub_22088600C();
  sub_22046D5B4();
  v20 = sub_220891D0C();
  v27 = v20;
  v21 = sub_220891CEC();
  (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
  sub_2204988C0(&qword_281296E10, 255, sub_2204753E0, MEMORY[0x277CBCBE0]);
  sub_2204988C0(&qword_28127E7C8, 255, sub_22046D5B4, MEMORY[0x277D85228]);
  sub_22088EBAC();
  sub_22046ABA0(v7, &qword_28127E7D0, v24);

  (*(v10 + 8))(v13, v9);
  swift_allocObject();
  swift_weakInit();
  sub_2204988C0(&qword_281296DC0, 255, sub_2204752B8, MEMORY[0x277CBCD60]);
  v22 = v25;
  sub_22088EBDC();

  (*(v26 + 8))(v18, v22);
  swift_beginAccess();
  sub_22088EB6C();
  swift_endAccess();
}

uint64_t sub_220498F68()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *sub_220498FBC(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (a2)
  {
    sub_220496448();
    result = sub_2208884CC();
    if (result)
    {
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_220495904(0);
      result = sub_2208884CC();
      if (result)
      {
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_220446A58(0, &qword_281297128, MEMORY[0x277D6EBC0], 1);
        result = sub_2208884DC();
        if (v5)
        {
          sub_2204956C8(0);
          swift_allocObject();
          return sub_22088B94C();
        }

        goto LABEL_14;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_220495904(0);
  result = sub_2208884CC();
  if (!result)
  {
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297128, MEMORY[0x277D6EBC0], 1);
  result = sub_2208884DC();
  if (!v5)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  sub_2204956C8(0);
  swift_allocObject();
  return sub_22088B93C();
}

uint64_t sub_2204991C0(void *a1)
{
  v2 = sub_22088BEAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
  result = sub_22088848C();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220495A8C(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220496720(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204968B0(0);
  result = sub_2208884CC();
  if (result)
  {
    (*(v3 + 104))(v6, *MEMORY[0x277D6DC40], v2);
    sub_220495904(0);
    swift_allocObject();
    return sub_22088BFAC();
  }

LABEL_9:
  __break(1u);
  return result;
}

id sub_2204993E0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220496F24(0);
  result = sub_22088848C();
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

uint64_t sub_22049948C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088D84C();
  result = sub_22088848C();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220496E30(0);
    result = sub_2208884CC();
    if (result)
    {
      sub_220496F24(0);
      v4 = objc_allocWithZone(v3);
      return sub_22088DEDC();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220499598(void *a1)
{
  v25 = sub_22088EA7C();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088EA6C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088EACC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v24 - v19;
  (*(v7 + 104))(v10, *MEMORY[0x277D74D58], v6, v18);
  sub_22088EA8C();
  v21 = [objc_opt_self() clearColor];
  sub_22088EAAC();
  (*(v2 + 104))(v5, *MEMORY[0x277D74D90], v25);
  sub_22088EA9C();
  (*(v12 + 16))(v15, v20, v11);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220497038(0, &qword_2812971B0, MEMORY[0x277D6EB10]);
  result = sub_2208884CC();
  if (result)
  {
    sub_220496E30(0);
    v23 = sub_22088DF6C();
    (*(v12 + 8))(v20, v11);
    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22049989C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204951A0(0);
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for StockSearchBlueprintViewCellProvider();
    result = sub_2208884CC();
    if (result)
    {
      sub_220448630(&qword_281281898, 255, type metadata accessor for StockSearchBlueprintViewCellProvider, &unk_2208B4358);
      sub_220497038(0, &qword_2812971B0, MEMORY[0x277D6EB10]);
      swift_allocObject();
      return sub_22088DF9C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2204999C8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  if (!v10)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281284A40, &protocol descriptor for StockSearchCellViewRendererType, 0);
  result = sub_2208884DC();
  if (!v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50, MEMORY[0x277D6D8E0], 0);
  result = sub_2208884DC();
  if (!v5)
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
    v3 = result;
    type metadata accessor for StockSearchBlueprintViewCellProvider();
    v4 = swift_allocObject();
    v4[3] = 0;
    swift_unknownObjectWeakInit();
    sub_220457328(&v9, (v4 + 4));
    v4[9] = v7;
    v4[10] = v8;
    v4[11] = v5;
    v4[12] = v6;
    v4[13] = v3;
    return v4;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_220499B78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281285DA0, &protocol descriptor for StockSearchCellViewStylerType, 1);
  result = sub_2208884DC();
  if (v24)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for StockSearchCellViewStyler();
    v22[3] = v10;
    v22[4] = &off_2834168F8;
    v22[0] = v9;
    type metadata accessor for StockSearchCellViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v10);
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v20 = v10;
    v21 = &off_2834168F8;
    *&v19 = v17;
    sub_220457328(&v19, v11 + 16);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = sub_220448630(&qword_281287B80, 255, type metadata accessor for StockSearchCellViewRenderer, &unk_2208BB604);
    *a2 = v11;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_220499E54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_220499E9C(uint64_t a1, uint64_t a2)
{
  result = sub_220499E54(qword_281287B88, a2, type metadata accessor for StockSearchCellViewRenderer, &unk_2208BB5DC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_220499EF4(void *a1, char a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (a2)
  {
    sub_220496448();
    result = sub_2208884CC();
    if (result)
    {
      sub_220495A8C(0);
      swift_allocObject();
      return sub_22088DE1C();
    }

    __break(1u);
  }

  else
  {
    sub_220495D0C(0);
    result = sub_2208884CC();
    if (result)
    {
      sub_220495A8C(0);
      swift_allocObject();
      return sub_22088DE0C();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220499FC0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204951A0(0);
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220495C18(0);
  result = sub_2208884CC();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockSearchBlueprintViewCellProvider();
  sub_22046DA2C(a1, v8);
  v4 = swift_allocObject();
  sub_220457328(v8, v4 + 16);
  v5 = sub_2208884AC();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StockSearchBlueprintViewSupplementaryViewProvider();
  result = sub_2208884CC();
  if (result)
  {
    *&v8[0] = v3;
    sub_220495D0C(0);
    v7 = objc_allocWithZone(v6);
    return sub_22088D7BC();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22049A15C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

void *sub_22049A1C8(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_22044D56C(0, &qword_28127E820, 0x277D752A0);
  result = sub_22088848C();
  if (result)
  {
    v4 = result;
    sub_22044D56C(0, &unk_28127E890, 0x277D759D8);
    sub_22089147C();
    sub_22088838C();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_22049A2CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  if (!v26)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281280500, &protocol descriptor for StockSearchSectionHeaderViewRendererType, 0);
  result = sub_2208884DC();
  v3 = v23;
  if (!v23)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281282B40, &protocol descriptor for WatchlistSwitcherMenuProviderType, 1);
  result = sub_2208884DC();
  if (v22)
  {
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    v6 = MEMORY[0x28223BE20](v5, v5);
    v8 = (&v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = *v8;
    v11 = type metadata accessor for WatchlistSwitcherMenuProvider();
    v20[3] = v11;
    v20[4] = &off_28341AA58;
    v20[0] = v10;
    type metadata accessor for StockSearchBlueprintViewSupplementaryViewProvider();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v11);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (&v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[12] = v11;
    v12[13] = &off_28341AA58;
    v12[9] = v18;
    sub_220457328(&v25, (v12 + 2));
    v12[7] = v3;
    v12[8] = v4;
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    return v12;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_22049A59C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281280CB8, &protocol descriptor for StockSearchSectionHeaderViewStylerType, 1);
  result = sub_2208884DC();
  if (v24)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for StockSearchSectionHeaderViewStyler();
    v22[3] = v10;
    v22[4] = &off_283422B90;
    v22[0] = v9;
    type metadata accessor for StockSearchSectionHeaderViewRenderer();
    v11 = swift_allocObject();
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v22, v10);
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (&v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = *v15;
    v20 = v10;
    v21 = &off_283422B90;
    *&v19 = v17;
    sub_220457328(&v19, v11 + 16);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = sub_220448630(&qword_2812817C0, 255, type metadata accessor for StockSearchSectionHeaderViewRenderer, &unk_2208B47B0);
    *a2 = v11;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_22049A7FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  if (!v35)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128F330, &protocol descriptor for BackgroundStylerType, 1);
  result = sub_2208884DC();
  if (!v32)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v28 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_2812877A8, &protocol descriptor for WatchlistSwitcherStylerType, 1);
  result = sub_2208884DC();
  if (v30)
  {
    v5 = type metadata accessor for StockSearchSectionHeaderViewStyler();
    v6 = v35;
    v27[0] = v36;
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
    v27[1] = v27;
    v8 = MEMORY[0x28223BE20](v7, v7);
    v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v10, v8);
    v13 = v32;
    v12 = v33;
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    v15 = MEMORY[0x28223BE20](v14, v14);
    v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v17, v15);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    v20 = MEMORY[0x28223BE20](v19, v19);
    v22 = v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v22, v20);
    v24 = type metadata accessor for WatchlistSwitcherStyler();
    v25 = sub_22049BBB4(v10, v17, v22, v5, v6, v24, v13, v27[0], &off_283412140, v12);
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v31);
    result = __swift_destroy_boxed_opaque_existential_1(v34);
    v26 = v28;
    v28[3] = v5;
    v26[4] = &off_283422B90;
    *v26 = v25;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_22049AB98@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204446D4(0, &qword_281294338, &protocol descriptor for BaseStylerType);
  result = sub_2208884DC();
  if (v6)
  {
    a2[3] = &type metadata for AppBackgroundStyler;
    a2[4] = &off_283412900;
    v4 = swift_allocObject();
    *a2 = v4;
    return sub_220457328(&v5, v4 + 16);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22049AC4C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

void sub_22049ACD0()
{
  v1 = v0;
  sub_22046EAA0(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v132 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v155 = &v132 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v132 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v132 - v15;
  sub_2208883EC();
  if ((sub_2208883DC() & 1) == 0)
  {
    return;
  }

  v152 = v5;
  v17 = NewsCoreUserDefaults();
  v18 = sub_22089132C();
  v150 = [v17 BOOLForKey_];

  v19 = NewsCoreUserDefaults();
  v20 = sub_22089132C();
  v21 = [v19 BOOLForKey_];

  v22 = NewsCoreUserDefaults();
  v23 = sub_22089132C();
  v149 = [v22 BOOLForKey_];

  v24 = NewsCoreUserDefaults();
  v25 = sub_22089132C();
  v26 = [v24 BOOLForKey_];

  v27 = NewsCoreUserDefaults();
  v28 = sub_22089132C();
  v29 = [v27 BOOLForKey_];

  v151 = 0;
  v30 = 0;
  v31 = 0xE600000000000000;
  if (!v26)
  {
    v31 = 0;
  }

  v153 = v31;
  if (!v29)
  {
    goto LABEL_12;
  }

  v32 = [*(v1 + 16) configuration];
  if (!v32)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v33 = v32;
  if (([v32 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_11:
    v151 = sub_22089136C();
    goto LABEL_12;
  }

  v34 = [v33 paidBundleViaOfferConfig];
  swift_unknownObjectRelease();
  v35 = [v34 vendorAdHocOfferIds];

  v36 = sub_2208916EC();
  if (!v36[2])
  {

    goto LABEL_11;
  }

  v37 = v36[5];
  v151 = v36[4];

  v30 = v37;
LABEL_12:
  v154 = v30;
  v38 = NewsCoreUserDefaults();
  v39 = sub_22089132C();
  v40 = [v38 integerForKey_];

  v41 = sub_22049BB80(v40);
  if (v41 <= 2)
  {
    if (v41)
    {
      if (v41 == 1)
      {

        [objc_allocWithZone(MEMORY[0x277D30F90]) initWithEntitlements:0 error:0];
      }

      else
      {

        v85 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
        v86 = sub_22089132C();
        v87 = [v85 initWithDomain:v86 code:1001 userInfo:0];

        v88 = objc_allocWithZone(MEMORY[0x277D30F90]);
        v89 = v87;
        v90 = sub_220884D2C();

        [v88 initWithEntitlements:0 error:v90];
      }

      return;
    }

    goto LABEL_55;
  }

  if (v41 <= 4)
  {
    if (v41 == 3)
    {

      v42 = objc_allocWithZone(MEMORY[0x277D30F90]);
      sub_220739DFC();
      v43 = sub_2208916DC();
      goto LABEL_53;
    }

    v91 = [*(v1 + 16) configuration];
    if (v91)
    {
      v92 = v91;
      if (([v91 respondsToSelector_] & 1) == 0)
      {

        swift_unknownObjectRelease();
        goto LABEL_56;
      }

      v93 = [v92 paidBundleConfig];
      swift_unknownObjectRelease();
      v94 = [v93 offeredBundlePurchaseIDs];
      if (v94)
      {
        v95 = v94;
        v96 = sub_2208916EC();

        if (v96[2])
        {
          v97 = v96[4];
          v98 = v96[5];

          v99 = sub_22080FD78(v97, v98);
          if ((v100 & 1) == 0)
          {
            v101 = v99;
            v139 = v21;
            v153 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v152 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            sub_22088515C();
            v102 = sub_22088516C();
            v103 = *(v102 - 8);
            v104 = *(v103 + 56);
            v104(v16, 0, 1, v102);
            sub_22088515C();
            v104(v12, 0, 1, v102);
            v105 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v155 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v148 = sub_22089132C();
            v106 = 0;
            if (v26)
            {
              v106 = sub_22089132C();
            }

            v147 = v106;
            v107 = *(v103 + 48);
            v108 = v105;
            if (v107(v16, 1, v102) == 1)
            {
              v109 = 0;
            }

            else
            {
              v109 = sub_22088509C();
              (*(v103 + 8))(v16, v102);
            }

            if (v107(v12, 1, v102) == 1)
            {
              v110 = 0;
            }

            else
            {
              v110 = sub_22088509C();
              (*(v103 + 8))(v12, v102);
            }

            v111 = v153;
            v112 = v152;
            v113 = v155;
            v114 = v148;
            if (v154)
            {
              v115 = sub_22089132C();
            }

            else
            {
              v115 = 0;
            }

            v116 = objc_allocWithZone(MEMORY[0x277D31338]);
            v130 = v113;
            v128 = v110;
            v126 = v109;
            LOBYTE(v125) = v149;
            v117 = v110;
            v118 = v109;
            v119 = v147;
            v120 = [v116 initWithAppAdamID:v111 inAppAdamID:v112 chargeCurrencyCode:v114 newsAppPurchase:1 isTrialPeriod:v150 isPurchaser:v139 servicesBundleAdamID:v147 isAmplifyUser:v125 startDate:v126 expiryDate:v128 initialPurchaseTimestamp:v108 serviceBeginsTimestamp:v130 vendorAdHocOfferID:v115];

            sub_22048BC00();
            v121 = swift_allocObject();
            *(v121 + 16) = xmmword_22089B130;
            *(v121 + 32) = v120;
            v122 = objc_allocWithZone(MEMORY[0x277D30F90]);
            sub_220739DFC();
            v123 = v120;
            v124 = sub_2208916DC();

            [v122 initWithEntitlements:v124 error:0];

            return;
          }

LABEL_56:

          return;
        }
      }

      else
      {
      }

LABEL_55:

      goto LABEL_56;
    }

LABEL_73:
    __break(1u);
    return;
  }

  if (v41 != 5)
  {
    goto LABEL_55;
  }

  v44 = NewsCoreUserDefaults();
  v45 = sub_22089132C();
  v46 = [v44 stringForKey_];

  if (!v46)
  {
    goto LABEL_55;
  }

  v47 = sub_22089136C();
  v49 = v48;

  v158 = v47;
  v159 = v49;
  v156 = 44;
  v157 = 0xE100000000000000;
  sub_22059B6A4();
  v50 = sub_22089233C();

  v158 = MEMORY[0x277D84F90];
  v51 = *(v50 + 16);
  if (!v51)
  {
    goto LABEL_52;
  }

  v139 = v21;
  v52 = 0;
  v53 = v50 + 40;
  v133 = v51 - 1;
  v54 = MEMORY[0x277D84F90];
  v55 = v155;
  v137 = v26;
  v136 = v50;
  v138 = v51;
  v134 = v50 + 40;
  do
  {
    v135 = v54;
    v56 = (v53 + 16 * v52);
    v57 = v52;
    while (1)
    {
      if (v57 >= *(v50 + 16))
      {
        __break(1u);
        goto LABEL_72;
      }

      v58 = *(v56 - 1);
      v59 = *v56;
      swift_bridgeObjectRetain_n();
      v60 = sub_22080FD78(v58, v59);
      if ((v61 & 1) == 0)
      {
        break;
      }

LABEL_25:
      ++v57;
      v56 += 2;
      if (v51 == v57)
      {
        goto LABEL_52;
      }
    }

    v62 = v60;
    v148 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v147 = [objc_allocWithZone(MEMORY[0x277CCABB0]) &selRef_lastModifiedDate];

    sub_22088515C();
    v63 = sub_22088516C();
    v64 = *(v63 - 8);
    v65 = *(v64 + 56);
    v65(v55, 0, 1, v63);
    v66 = v152;
    sub_22088515C();
    v65(v66, 0, 1, v63);
    v67 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    LODWORD(v62) = v137;
    v68 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v145 = sub_22089132C();
    v69 = 0;
    if (v62)
    {
      v69 = sub_22089132C();
    }

    v144 = v69;
    v70 = *(v64 + 48);
    v71 = v70(v55, 1, v63);
    v146 = v67;
    if (v71 == 1)
    {
      v143 = 0;
    }

    else
    {
      v143 = sub_22088509C();
      (*(v64 + 8))(v55, v63);
    }

    v72 = v152;
    if (v70(v152, 1, v63) == 1)
    {
      v73 = 0;
    }

    else
    {
      v73 = sub_22088509C();
      (*(v64 + 8))(v72, v63);
    }

    v74 = v150;
    v142 = v59;
    if (v154)
    {

      v75 = sub_22089132C();
    }

    else
    {
      v75 = 0;
    }

    v140 = v75;
    v76 = objc_allocWithZone(MEMORY[0x277D31338]);
    v129 = v68;
    v131 = v75;
    v141 = v68;
    v77 = v146;
    v127 = v73;
    v78 = v143;
    LOBYTE(v125) = v149;
    v79 = v144;
    v81 = v147;
    v80 = v148;
    v82 = v73;
    v83 = v145;
    v84 = [v76 initWithAppAdamID:v148 inAppAdamID:v147 chargeCurrencyCode:v145 newsAppPurchase:1 isTrialPeriod:v74 isPurchaser:v139 servicesBundleAdamID:v144 isAmplifyUser:v125 startDate:v143 expiryDate:v127 initialPurchaseTimestamp:v146 serviceBeginsTimestamp:v129 vendorAdHocOfferID:v131];

    v55 = v155;
    v50 = v136;
    v51 = v138;
    if (!v84)
    {
      goto LABEL_25;
    }

    MEMORY[0x223D89870]();
    if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22089177C();
    }

    v52 = v57 + 1;
    sub_22089179C();
    v54 = v158;
    v51 = v138;
    v53 = v134;
  }

  while (v133 != v57);
LABEL_52:

  v42 = objc_allocWithZone(MEMORY[0x277D30F90]);
  sub_220739DFC();
  v43 = sub_2208916DC();

LABEL_53:
  [v42 initWithEntitlements:v43 error:0];
}