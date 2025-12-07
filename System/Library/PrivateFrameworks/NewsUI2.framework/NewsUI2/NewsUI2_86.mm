uint64_t sub_21906F580@<X0>(char a1@<W0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a3;
  sub_219070520(0);
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_219BF0744();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MyMagazinesBuildBlueprintModifier(0);
  v12 = *(v3 + *(v11 + 28) + 8);
  ObjectType = swift_getObjectType();
  (*(v12 + 56))(ObjectType, v12);
  sub_219BE2184();

  v14 = v27;
  sub_21906F854(v3);
  LOBYTE(v27) = a1;
  __swift_project_boxed_opaque_existential_1((v3 + *(v11 + 20)), *(v3 + *(v11 + 20) + 24));
  v15 = sub_21945CCB8(a2);
  v25 = v14;
  v26 = v10;
  sub_21894A040(sub_2190705EC, v24, v15);
  v17 = v16;

  sub_218953F20(0);
  v19 = v18;
  v20 = sub_219070758(&qword_27CC15840, sub_218953F20, MEMORY[0x277D6D408]);
  v21 = sub_219070758(&qword_27CC15848, sub_218953F20, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v17, v19, v20, v21);
  type metadata accessor for MyMagazinesModel(0);
  sub_218B7DFD4();
  sub_219070758(&qword_27CC0B160, type metadata accessor for MyMagazinesModel, &unk_219C3BA30);
  sub_219BE6924();
  return (*(v8 + 8))(v10, v7);
}

void sub_21906F854(uint64_t a1)
{
  v2 = sub_219BF0744();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = MEMORY[0x277D32F30];
  sub_21907060C(0, &qword_27CC15870, MEMORY[0x277D32F30], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  sub_219BF0734();
  sub_219BF06F4();
  *&v23 = v10;
  sub_219070758(&qword_280E90EB8, MEMORY[0x277D32F30], MEMORY[0x277D32F48]);
  sub_21907060C(0, &qword_280E8EF08, v9, MEMORY[0x277D83940]);
  sub_219070670();
  sub_219BF7164();
  v11 = [*(a1 + *(type metadata accessor for MyMagazinesBuildBlueprintModifier(0) + 24)) cachedSubscription];
  if (objc_getAssociatedObject(v11, v11 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  v12 = MEMORY[0x277D84F70];
  if (!*(&v22 + 1))
  {
    sub_2190706F8(&v23, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2189D2C8C);
    goto LABEL_9;
  }

  sub_21870AD58();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v13 = 0;
    v15 = 0;
    goto LABEL_10;
  }

  v13 = v20;
  v14 = [v20 integerValue];
  if (v14 == -1)
  {

    goto LABEL_21;
  }

  v15 = v14;
LABEL_10:
  if (objc_getAssociatedObject(v11, ~v15))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23 = v21;
  v24 = v22;
  if (*(&v22 + 1))
  {
    sub_21870AD58();
    if (swift_dynamicCast())
    {
      v16 = v20;
      v17 = [v16 integerValue];

      if (((v17 ^ v15) & 1) == 0)
      {
        return;
      }

LABEL_21:
      sub_219BF06E4();
      sub_21922153C(v8, v5);
      v18 = *(v3 + 8);
      v18(v5, v2);
      v18(v8, v2);
      return;
    }
  }

  else
  {
    sub_2190706F8(&v23, &qword_280E8B4F0, v12 + 8, MEMORY[0x277D83D88], sub_2189D2C8C);
  }

  if (v15)
  {
    goto LABEL_21;
  }
}

uint64_t sub_21906FC8C(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MyMagazinesModel(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_219BF0744();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v17 = *a1;
  *&v17[9] = *(a1 + 9);
  sub_21906FED4(a2, *v17, a3, v12);
  sub_218B7E1D0(0);
  v14 = *(v13 + 48);
  *v8 = *v17;
  *(v8 + 9) = *&v17[9];
  (*(v10 + 16))(v8 + v14, v12, v9);
  sub_218950CAC(v17, v16);
  sub_219070758(&qword_27CC0B160, type metadata accessor for MyMagazinesModel, &unk_219C3BA30);
  sub_219BE5FB4();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_21906FED4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v8 = sub_219BF0744();
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v22 - v13;
  v15 = [a2 identifier];
  v16 = sub_219BF5414();
  v18 = v17;

  LOBYTE(a1) = sub_2188537B8(v16, v18, a1);

  if (a1)
  {
    sub_219BF06D4();
    v19 = MEMORY[0x277D32F30];
    sub_219070758(&qword_27CC0EA10, MEMORY[0x277D32F30], MEMORY[0x277D32F40]);
    sub_219BF5874();
    sub_219070758(&unk_27CC15860, v19, MEMORY[0x277D32F50]);
    sub_219BF7C64();
    (*(v22 + 16))(v10, v14, v8);
    sub_219070758(&qword_280E90EB8, v19, MEMORY[0x277D32F48]);
    sub_219BF7144();
    return (*(v22 + 8))(v14, v8);
  }

  else
  {
    v21 = *(v22 + 16);

    return v21(a4, a3, v8);
  }
}

uint64_t sub_21907015C(uint64_t a1)
{
  v2 = sub_219070758(&unk_27CC1AEC0, type metadata accessor for MyMagazinesBuildBlueprintModifier, &unk_219C57068);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_219070278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MyMagazinesSectionDescriptor;
    v8[1] = type metadata accessor for MyMagazinesModel(255);
    v8[2] = sub_218B7DFD4();
    v8[3] = sub_219070758(&qword_27CC0B160, type metadata accessor for MyMagazinesModel, &unk_219C3BA30);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_219070338(uint64_t a1)
{
  if (!qword_27CC15800)
  {
    sub_218B7E0BC(255);
    sub_219070758(&qword_27CC15808, sub_218B7E0BC, MEMORY[0x277D6D720]);
    sub_219070758(&qword_27CC15810, sub_218B7E0BC, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15800);
    }
  }
}

unint64_t sub_219070404()
{
  result = qword_27CC15820;
  if (!qword_27CC15820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15820);
  }

  return result;
}

uint64_t sub_219070458(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2190704B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_219070520(uint64_t a1)
{
  if (!qword_27CC15830)
  {
    sub_218953F20(255);
    sub_219070758(&qword_27CC15840, sub_218953F20, MEMORY[0x277D6D408]);
    sub_219070758(&qword_27CC15848, sub_218953F20, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15830);
    }
  }
}

void sub_21907060C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_219070670()
{
  result = qword_280E8EF00;
  if (!qword_280E8EF00)
  {
    sub_21907060C(255, &qword_280E8EF08, MEMORY[0x277D32F30], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EF00);
  }

  return result;
}

uint64_t sub_2190706F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_219070758(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2190707A0(uint64_t a1)
{
  v2 = type metadata accessor for SharedWithYouTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 16;
  sub_2189AE994(0);
  v28 = v1;
  v32 = sub_219BEE964();
  sub_2186E497C(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v31 = *(v7 + 72);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C09EC0;
  v10 = (v9 + v8);
  v29 = OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_config;
  v30 = v9;
  sub_2186E0CD8(0);
  v27[2] = v11;
  sub_219BEDD14();
  v12 = sub_219BF1784();
  v14 = v13;
  v15 = sub_219BF1934();
  v16 = *(v15 - 8);
  v27[0] = *(v16 + 8);
  v27[1] = v16 + 8;
  (v27[0])(v4, v15);
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v14;
  sub_218D90870(0);
  swift_allocObject();
  *v10 = sub_219BEFB94();
  v18 = *MEMORY[0x277D32308];
  v19 = *(v7 + 104);
  v19(v10, v18, v6);
  sub_219BEDD14();
  v20 = sub_219BF1784();
  v22 = v21;
  (v27[0])(v4, v15);
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  swift_allocObject();
  v24 = sub_219BEFB94();
  v25 = v31;
  *(v10 + v31) = v24;
  v19((v10 + v25), v18, v6);
  v33 = v32;
  sub_2191EE478(v30);
  return v33;
}

uint64_t sub_219070B10(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v2[8] = *v1;
  v3 = sub_219BF0BD4();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = sub_219BDBD34();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = type metadata accessor for SharedWithYouTodayFeedGroupEmitter.Item(0);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v6 = sub_219BF12B4();
  v2[20] = v6;
  v2[21] = *(v6 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219070D48, 0, 0);
}

uint64_t sub_219070D48(uint64_t a1)
{
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v2 = qword_280F616D8;
  v1[26] = qword_280F616D8;
  v3 = sub_219BF6214();
  sub_219BE5314("SharedWithYou will load initial items", 37, 2, &dword_2186C1000, v2, v3, MEMORY[0x277D84F90]);

  v4 = swift_task_alloc();
  v1[27] = v4;
  sub_2186E497C(0, &unk_280E8EEF0, MEMORY[0x277D33250], MEMORY[0x277D83940]);
  *v4 = v1;
  v4[1] = sub_219070EB0;
  v6 = v1[7];

  return MEMORY[0x2821D20A8](v1 + 2, &unk_219C572C0, v6, v5);
}

uint64_t sub_219070EB0()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_219071F68;
  }

  else
  {

    v2 = sub_219070FCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219070FCC(uint64_t a1)
{
  v2 = v1[26];
  v3 = v1[2];
  v4 = sub_219BF6214();
  v6.n128_f64[0] = sub_219BE5314("SharedWithYou did load initial items", 36, 2, &dword_2186C1000, v2, v4, MEMORY[0x277D84F90]);
  v46 = *(v3 + 16);
  if (v46)
  {
    v7 = 0;
    v8 = v1[21];
    v44 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v45 = v8;
    v43 = (v8 + 8);
    v40 = (v8 + 40);
    v41 = (v8 + 32);
    v9 = MEMORY[0x277D84F98];
    v42 = v3;
    while (1)
    {
      if (v7 >= *(v3 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v10 = *(v45 + 72);
      v11 = *(v45 + 16);
      v11(v1[25], v44 + v10 * v7, v1[20], v6);
      v12 = sub_219BF12A4();
      v14 = v13;
      if (v13)
      {
        v15 = v12;
        (v11)(v1[24], v1[25], v1[20]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v48 = v9;
        v5 = sub_21870F700(v15, v14);
        v18 = v9[2];
        v19 = (v17 & 1) == 0;
        v20 = __OFADD__(v18, v19);
        v21 = v18 + v19;
        if (v20)
        {
          goto LABEL_28;
        }

        v22 = v17;
        if (v9[3] >= v21)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v31 = v5;
            sub_21949402C();
            v5 = v31;
          }
        }

        else
        {
          sub_219483D7C(v21, isUniquelyReferenced_nonNull_native);
          v5 = sub_21870F700(v15, v14);
          if ((v22 & 1) != (v23 & 1))
          {

            return sub_219BF79A4();
          }
        }

        v25 = v1[24];
        v24 = v1[25];
        v26 = v1[20];
        if (v22)
        {
          v27 = v5;

          v9 = v48;
          (*v40)(v48[7] + v27 * v10, v25, v26);
          v5 = (*v43)(v24, v26);
        }

        else
        {
          v9 = v48;
          v48[(v5 >> 6) + 8] |= 1 << v5;
          v28 = (v48[6] + 16 * v5);
          *v28 = v15;
          v28[1] = v14;
          (*v41)(v48[7] + v5 * v10, v25, v26);
          v5 = (*v43)(v24, v26);
          v29 = v48[2];
          v20 = __OFADD__(v29, 1);
          v30 = v29 + 1;
          if (v20)
          {
            goto LABEL_29;
          }

          v48[2] = v30;
        }

        v3 = v42;
      }

      else
      {
        v5 = (*v43)(v1[25], v1[20]);
      }

      if (v46 == ++v7)
      {
        goto LABEL_19;
      }
    }
  }

  v9 = MEMORY[0x277D84F98];
LABEL_19:
  v1[29] = v9;
  v32 = v1[7];

  sub_2186E497C(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v1[30] = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_219C09BA0;
  v35 = v9[2];
  v36 = MEMORY[0x277D83C10];
  *(v34 + 56) = MEMORY[0x277D83B88];
  *(v34 + 64) = v36;
  *(v34 + 32) = v35;
  sub_219BF6214();
  sub_219BE5314("SharedWithYou will fetch %lu headlines", v40);

  __swift_project_boxed_opaque_existential_1((v32 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_headlineService), *(v32 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_headlineService + 24));
  v37 = v9[2];
  if (v37 && (sub_21947D1C0(v37, 0), v47 = sub_2194B7E3C(), , sub_21892DE98(v48), v47 != v37))
  {
LABEL_30:
    __break(1u);
  }

  else
  {
    v1[31] = sub_219BF2844();

    v38 = swift_task_alloc();
    v1[32] = v38;
    *v38 = v1;
    v38[1] = sub_2190714D4;
    v5 = (v1 + 3);
  }

  return MEMORY[0x2821D23D8](v5);
}

uint64_t sub_2190714D4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {

    v2 = sub_219072044;
  }

  else
  {
    v2 = sub_219071618;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219071618(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3 >> 62)
  {
    goto LABEL_51;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v84 = v3;
  if (v4)
  {
    v5 = 0;
    v6 = *(v2 + 168);
    v79 = *(v2 + 128);
    v80 = *(v2 + 136);
    v89 = v3 & 0xFFFFFFFFFFFFFF8;
    v90 = v3 & 0xC000000000000001;
    v81 = v6;
    v82 = *(v2 + 232);
    v77 = v6 + 32;
    v78 = v6 + 16;
    v7 = MEMORY[0x277D84F90];
    v87 = v4;
    while (1)
    {
      if (v90)
      {
        v8 = MEMORY[0x21CECE0F0](v5, v3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_49;
        }
      }

      else
      {
        if (v5 >= *(v89 + 16))
        {
          goto LABEL_50;
        }

        v8 = *(v3 + 8 * v5 + 32);
        swift_unknownObjectRetain();
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v4 = sub_219BF7214();
          goto LABEL_3;
        }
      }

      v10 = *(v2 + 232);
      v11 = [v8 articleID];
      v12 = sub_219BF5414();
      v14 = v13;

      if (*(v10 + 16))
      {
        v15 = sub_21870F700(v12, v14);
        v17 = v16;

        if (v17)
        {
          v19 = *(v2 + 176);
          v18 = *(v2 + 184);
          v20 = *(v2 + 160);
          v85 = *(v2 + 152);
          v21 = v7;
          v22 = *(v2 + 144);
          (*(v81 + 16))(v19, *(v82 + 56) + *(v81 + 72) * v15, v20);
          v23 = *(v81 + 32);
          v23(v18, v19, v20);
          v23(v22 + *(v79 + 20), v18, v20);
          *v22 = v8;
          v24 = v22;
          v7 = v21;
          sub_2190750EC(v24, v85);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_2191F9BF8(0, v21[2] + 1, 1, v21);
          }

          v26 = v7[2];
          v25 = v7[3];
          v2 = v83;
          if (v26 >= v25 >> 1)
          {
            v7 = sub_2191F9BF8((v25 > 1), v26 + 1, 1, v7);
          }

          v27 = *(v83 + 152);
          v7[2] = v26 + 1;
          sub_2190750EC(v27, v7 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v26);
          v3 = v84;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v5;
      if (v9 == v87)
      {
        v91 = v7;
        goto LABEL_23;
      }
    }
  }

  v91 = MEMORY[0x277D84F90];
LABEL_23:
  v28 = *(v2 + 112);
  v29 = *(v2 + 96);
  v30 = *(v2 + 104);
  v31 = *(v2 + 56);

  sub_219BEF094();
  type metadata accessor for SharedWithYouTodayFeedGroupKnobs(0);
  sub_219BDBBF4();
  v88 = *(v30 + 8);
  v88(v28, v29);
  v32 = [*(v31 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_cloudContext) readingHistory];
  v33 = [v32 allReadArticleIDs];

  v34 = sub_219BF5D44();
  if ((NFStoreDemoMode() & 1) != 0 || (sub_219BDC5F4(), sub_21907520C(&qword_280E9EF68, type metadata accessor for SharedWithYouTodayFeedGroupEmitter, &unk_219C57218), sub_219BDC7D4(), , *(v2 + 272) == 1))
  {

    v35 = v91;
  }

  else
  {
    v36 = *(v2 + 120);
    v37 = swift_task_alloc();
    *(v37 + 16) = v36;
    *(v37 + 24) = v34;

    sub_2195E6978(sub_219075150, v37, v91);
    v35 = v38;
  }

  v40 = *(v2 + 80);
  v39 = *(v2 + 88);
  v41 = *(v2 + 72);
  sub_219BEF134();
  sub_219BEF524();
  v42 = *(v40 + 8);
  v42(v39, v41);
  v43 = *(v2 + 32);
  if (*(v35 + 16) < v43)
  {
    v44 = *(v2 + 120);
    v45 = *(v2 + 96);

    v46 = sub_219BEEDD4();
    sub_21907520C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    v48 = v47;
    v49 = *(v91 + 16);

    *v48 = v43;
    v48[1] = v49;
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D32400], v46);
    swift_willThrow();
    v50 = v44;
    v51 = v45;
LABEL_46:
    v88(v50, v51);

    v76 = *(v2 + 8);

    return v76();
  }

  v86 = *(v35 + 16);
  v52 = *(v2 + 88);
  v53 = *(v2 + 72);

  sub_219BEF134();
  sub_219BEF524();
  v42(v52, v53);
  if (*(v2 + 40) <= v43)
  {
    v54 = v43;
  }

  else
  {
    v54 = *(v2 + 40);
  }

  v58 = sub_219A78120(v54, v35);
  if ((v57 & 1) == 0)
  {
    goto LABEL_33;
  }

  v61 = v57;
  v62 = v56;
  v63 = v55;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v64 = swift_dynamicCastClass();
  if (!v64)
  {
    swift_unknownObjectRelease();
    v64 = MEMORY[0x277D84F90];
  }

  v65 = *(v64 + 16);

  if (__OFSUB__(v61 >> 1, v62))
  {
    __break(1u);
    goto LABEL_53;
  }

  if (v65 != (v61 >> 1) - v62)
  {
LABEL_53:
    swift_unknownObjectRelease();
    v57 = v61;
    v56 = v62;
    v55 = v63;
LABEL_33:
    sub_218B671D4(v58, v55, v56, v57);
    v60 = v59;
    goto LABEL_40;
  }

  v60 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v60)
  {
    goto LABEL_41;
  }

  v60 = MEMORY[0x277D84F90];
LABEL_40:
  swift_unknownObjectRelease();
LABEL_41:
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_219C09EC0;
  v67 = MEMORY[0x277D83B88];
  v68 = MEMORY[0x277D83C10];
  *(v66 + 56) = MEMORY[0x277D83B88];
  *(v66 + 64) = v68;
  *(v66 + 32) = v86;
  v69 = *(v60 + 16);
  *(v66 + 96) = v67;
  *(v66 + 104) = v68;
  *(v66 + 72) = v69;
  sub_219BF6214();
  sub_219BE5314("SharedWithYou group emitter capped items from %ld to %ld", v77, v78);

  if (!*(v60 + 16))
  {
    v72 = *(v2 + 120);
    v73 = *(v2 + 96);

    v74 = sub_219BEEDD4();
    sub_21907520C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v74 - 8) + 104))(v75, *MEMORY[0x277D323A8], v74);
    swift_willThrow();
    v50 = v72;
    v51 = v73;
    goto LABEL_46;
  }

  v88(*(v2 + 120), *(v2 + 96));

  v70 = *(v2 + 8);

  return v70(v60);
}

uint64_t sub_219071F68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219072044()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219072118(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186E497C(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[5] = swift_task_alloc();
  sub_2186E497C(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[6] = swift_task_alloc();
  sub_2186E497C(0, &unk_280E91A10, sub_2189AE994, v4);
  v3[7] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_219BF2034();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  sub_218A89A94(0);
  v3[14] = swift_task_alloc();
  sub_2186FE720(0);
  v3[15] = swift_task_alloc();
  v7 = sub_219BDBD64();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  type metadata accessor for SharedWithYouTodayFeedGroupConfigData(0);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v8 = sub_219BF1934();
  v3[21] = v8;
  v3[22] = *(v8 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = *(type metadata accessor for SharedWithYouTodayFeedGroupEmitter.Item(0) - 8);
  v3[25] = swift_task_alloc();
  v9 = sub_219BF3C84();
  v3[26] = v9;
  v3[27] = *(v9 - 8);
  v3[28] = swift_task_alloc();
  v10 = sub_219BF3E84();
  v3[29] = v10;
  v3[30] = *(v10 - 8);
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219072588, 0, 0);
}

uint64_t sub_219072588()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 216);
    v4 = *(v0 + 192);
    v60 = MEMORY[0x277D84F90];
    sub_218C34A88(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v58 = *(v4 + 72);
    v56 = *MEMORY[0x277D34128];
    do
    {
      v6 = *(v0 + 224);
      v8 = *(v0 + 200);
      v7 = *(v0 + 208);
      sub_219075170(v5, v8, type metadata accessor for SharedWithYouTodayFeedGroupEmitter.Item);
      v9 = *v8;
      swift_unknownObjectRetain();
      sub_219075254(v8, type metadata accessor for SharedWithYouTodayFeedGroupEmitter.Item);
      *v6 = v9;
      (*(v3 + 104))(v6, v56, v7);
      v11 = *(v60 + 16);
      v10 = *(v60 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_218C34A88((v10 > 1), v11 + 1, 1);
      }

      v12 = *(v0 + 224);
      v13 = *(v0 + 208);
      *(v60 + 16) = v11 + 1;
      (*(v3 + 32))(v60 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v12, v13);
      v5 += v58;
      --v2;
    }

    while (v2);
    v14 = MEMORY[0x277D84F90];
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v48 = *(v0 + 248);
  v49 = *(v0 + 240);
  v50 = *(v0 + 232);
  v41 = *(v0 + 176);
  v42 = *(v0 + 168);
  v16 = *(v0 + 144);
  v15 = *(v0 + 152);
  v43 = *(v0 + 160);
  v44 = *(v0 + 136);
  v46 = *(v0 + 128);
  v59 = *(v0 + 120);
  v47 = *(v0 + 112);
  v52 = *(v0 + 56);
  v53 = *(v0 + 48);
  v17 = *(v0 + 32);
  v54 = *(v0 + 40);
  sub_218F0B984(v14);
  sub_218F0BA7C(v14);
  sub_218F0BB90(v14);
  sub_219BF3E74();
  v51 = v17;
  v55 = *(v17 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_formatService + 32);
  v57 = *(v17 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_formatService + 24);
  __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_formatService), v57);
  sub_2186E0CD8(0);
  sub_219BEDD14();
  sub_219BF7314();

  sub_219BEDD14();
  v18 = sub_219BF1704();
  v20 = v19;
  v21 = *(v41 + 8);
  *(v0 + 256) = v21;
  *(v0 + 264) = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v15, v42);
  MEMORY[0x21CECC330](v18, v20);

  MEMORY[0x21CECC330](45, 0xE100000000000000);
  sub_219BDBD54();
  v22 = sub_219BDBD44();
  v24 = v23;
  (*(v44 + 8))(v16, v46);
  MEMORY[0x21CECC330](v22, v24);

  v25 = sub_219BEC004();
  v45 = *(*(v25 - 8) + 56);
  v45(v59, 1, 1, v25);
  sub_218A42400(0);
  (*(*(v26 - 8) + 56))(v47, 1, 1, v26);
  sub_219BF1764();

  sub_219075254(v47, sub_218A89A94);
  sub_219075254(v59, sub_2186FE720);
  v21(v43, v42);
  sub_2186E497C(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v27 = (*(v49 + 80) + 32) & ~*(v49 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C0B8C0;
  (*(v49 + 16))(v28 + v27, v48, v50);
  sub_219074720();
  sub_218F0B984(v14);
  sub_218F0BA7C(v14);
  sub_218F0BB90(v14);
  sub_219BF3E74();
  sub_219074BB8();
  sub_218F0B984(v14);
  sub_218F0BA7C(v14);
  sub_218F0BB90(v14);
  sub_219BF3E74();
  v45(v59, 1, 1, v25);
  sub_219A95188(v14);
  sub_219A95188(v14);
  sub_219A951A0(v14);
  sub_219A951B8(v14);
  sub_219A952CC(v14);
  sub_219A952E4(v14);
  sub_219A953F8(v14);
  sub_219BF2024();
  v29 = OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_knobs;
  sub_2189AE994(0);
  v31 = v30;
  v32 = *(v30 - 8);
  (*(v32 + 16))(v52, v51 + v29, v30);
  (*(v32 + 56))(v52, 0, 1, v31);
  v33 = sub_219BF35D4();
  (*(*(v33 - 8) + 56))(v53, 1, 1, v33);
  *(v0 + 296) = 16;
  sub_218D451AC(0);
  swift_allocObject();

  sub_219BF38D4();
  v34 = sub_219BF2774();
  (*(*(v34 - 8) + 56))(v54, 1, 1, v34);
  v35 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v35 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  sub_219BF2A84();
  v36 = swift_task_alloc();
  *(v0 + 272) = v36;
  *v36 = v0;
  v36[1] = sub_219072EB0;
  v37 = *(v0 + 184);
  v38 = *(v0 + 104);
  v39 = *(v0 + 80);

  return MEMORY[0x2821921B8](v37, v38, v39, v57, v55);
}

uint64_t sub_219072EB0(uint64_t a1)
{
  v3 = *v2;
  v3[35] = v1;

  v15 = v3[32];
  v4 = v3[23];
  v5 = v3[21];
  v6 = v3[13];
  v7 = v3[12];
  v8 = v3[11];
  v9 = v3[10];
  v10 = v3[9];
  v11 = v3[8];
  if (v1)
  {
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_21907326C;
  }

  else
  {
    v3[36] = a1;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_219073130;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_219073130()
{
  (*(v0[30] + 8))(v0[31], v0[29]);

  v1 = v0[1];
  v2 = v0[36];

  return v1(v2);
}

uint64_t sub_21907326C()
{
  (*(v0[30] + 8))(v0[31], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2190733A4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v4 = v3;
  v20[3] = a1;
  v24 = a3;
  sub_2186E497C(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_219BEF554();
  MEMORY[0x28223BE20](v6 - 8);
  v20[0] = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = sub_219BED8D4();
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v21 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_config;
  sub_2186E0CD8(0);
  v13 = v12;

  v14 = sub_219BEDCB4();
  v20[1] = v15;
  v20[2] = v14;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for SharedWithYouTodayFeedGroupKnobs(0);
  sub_2189AE9B4(0);
  sub_219BEEC84();
  v16 = v21;
  sub_219BED834();
  v17 = v24;
  (*(*(v13 - 8) + 16))(v24, v4 + v11, v13);
  v18 = type metadata accessor for SharedWithYouTodayFeedGroup(0);
  (*(v22 + 32))(v17 + *(v18 + 20), v16, v23);
  type metadata accessor for TodayFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2190736F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_219073710, 0, 0);
}

uint64_t sub_219073710()
{
  v1 = (*(v0 + 24) + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_sharedItemManager);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_2190737D0;

  return MEMORY[0x282192920](v2, v3);
}

uint64_t sub_2190737D0(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2190738D0, 0, 0);
}

uint64_t sub_2190738F4(id *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharedWithYouTodayFeedGroupEmitter.Item(0);
  sub_219BF1284();
  sub_21907520C(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v9 = sub_219BF5334();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    return 0;
  }

  v10 = *a1;
  v11 = [*a1 articleID];
  v12 = sub_219BF5414();
  v14 = v13;

  v15 = sub_2188537B8(v12, v14, a3);

  if (v15)
  {
    return 0;
  }

  else
  {
    return [v10 isFromBlockedStorefront] ^ 1;
  }
}

uint64_t sub_219073AA8()
{
  v1 = OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_config;
  sub_2186E0CD8(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_219075254(v0 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_knobs, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_formatService));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_headlineService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_sharedItemManager));

  return swift_deallocClassInstance();
}

void sub_219073BE4(uint64_t a1)
{
  sub_2186E0CD8(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SharedWithYouTodayFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_219073CD4(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_219073D74;

  return sub_219070B10(a2);
}

uint64_t sub_219073D74(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v4 + 56) = v8;
    *v8 = v5;
    v8[1] = sub_219073EF4;
    v9 = *(v4 + 24);

    return sub_219072118(v9, a1);
  }
}

uint64_t sub_219073EF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_2190740C0;
  }

  else
  {

    *(v4 + 72) = a1;
    v5 = sub_219074024;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219074024()
{
  sub_2190733A4(v0[9], v0[2]);

  sub_218B8B124(0);
  swift_storeEnumTagMultiPayload();
  v1 = v0[1];

  return v1();
}

uint64_t sub_2190740C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219074124()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_219074164@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_config;
  sub_2186E0CD8(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2190741F8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI234SharedWithYouTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for SharedWithYouTodayFeedGroupKnobs(0);
  a1[4] = sub_21907520C(&qword_280EA4BA8, type metadata accessor for SharedWithYouTodayFeedGroupKnobs, &unk_219C1674C);
  a1[5] = sub_21907520C(&qword_280EA4BB0, type metadata accessor for SharedWithYouTodayFeedGroupKnobs, &unk_219C16774);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219075170(v3 + v4, boxed_opaque_existential_1, type metadata accessor for SharedWithYouTodayFeedGroupKnobs);
}

uint64_t sub_2190742C4()
{
  type metadata accessor for SharedWithYouTodayFeedGroupKnobs(0);

  return sub_219BEF884();
}

uint64_t sub_21907438C@<X0>(uint64_t *a2@<X8>)
{
  sub_2186E497C(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E0CD8(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219075254(inited + 32, sub_2188317B0);
  sub_2190751D8(0);
  a2[3] = v6;
  a2[4] = sub_21907520C(&unk_280EE76C0, sub_2190751D8, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21907452C(uint64_t a1)
{
  sub_21907520C(&qword_280E9EF58, type metadata accessor for SharedWithYouTodayFeedGroupEmitter, &unk_219C57140);

  return sub_219BE2324();
}

uint64_t sub_219074720()
{
  v27 = sub_219BF14C4();
  v0 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v24 = &v22 - v3;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v23 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF2124();
  MEMORY[0x28223BE20](v10 - 8);
  sub_2186E497C(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  v11 = *(v0 + 72);
  v26 = v0;
  v22 = ((*(v26 + 80) + 32) & ~*(v26 + 80)) + v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  sub_219BF2394();
  v13 = sub_219BF2364();
  MEMORY[0x21CEC9120]();

  sub_219BF20F4();

  sub_219BF14A4();
  sub_219BDB914();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_219075254(v6, sub_21873F65C);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v14 = qword_280F616D8;
    v15 = sub_219BF61F4();
    sub_219BE5314("SharedWithYou group emitter failed to create header URL", 55, 2, &dword_2186C1000, v14, v15, MEMORY[0x277D84F90]);
  }

  else
  {
    v16 = v23;
    (*(v8 + 32))(v23, v6, v7);
    sub_219BF20E4();
    v17 = v24;
    sub_219BF14A4();
    v19 = v25;
    v18 = v26;
    v20 = v27;
    (*(v26 + 16))(v25, v17, v27);
    v12 = sub_2191F7664(1, 2, 1, v12);
    (*(v18 + 8))(v17, v20);
    (*(v8 + 8))(v16, v7);
    *(v12 + 16) = 2;
    (*(v18 + 32))(v12 + v22, v19, v20);
  }

  return v12;
}

uint64_t sub_219074BB8()
{
  v27 = sub_219BF14C4();
  v0 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v24 = &v22 - v3;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDB954();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v23 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF2124();
  MEMORY[0x28223BE20](v10 - 8);
  sub_2186E497C(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  v11 = *(v0 + 72);
  v26 = v0;
  v22 = ((*(v26 + 80) + 32) & ~*(v26 + 80)) + v11;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  sub_219BF2394();
  v13 = sub_219BF2364();
  MEMORY[0x21CEC9120]();

  sub_219BF20F4();

  sub_219BF14A4();
  sub_219BDB914();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_219075254(v6, sub_21873F65C);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v14 = qword_280F616D8;
    v15 = sub_219BF61F4();
    sub_219BE5314("SharedWithYou group emitter failed to create footer URL", 55, 2, &dword_2186C1000, v14, v15, MEMORY[0x277D84F90]);
  }

  else
  {
    v16 = v23;
    (*(v8 + 32))(v23, v6, v7);
    sub_219BF20E4();
    v17 = v24;
    sub_219BF14A4();
    v19 = v25;
    v18 = v26;
    v20 = v27;
    (*(v26 + 16))(v25, v17, v27);
    v12 = sub_2191F7664(1, 2, 1, v12);
    (*(v18 + 8))(v17, v20);
    (*(v8 + 8))(v16, v7);
    *(v12 + 16) = 2;
    (*(v18 + 32))(v12 + v22, v19, v20);
  }

  return v12;
}

uint64_t sub_219075050(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_2190736F0(a1, v1);
}

uint64_t sub_2190750EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouTodayFeedGroupEmitter.Item(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219075170(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21907520C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219075254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2190752DC(uint64_t a1)
{
  result = sub_218731D50();
  if (v2 <= 0x3F)
  {
    result = sub_219BF12B4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_219075360(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  sub_2186D8B7C(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v3[16] = swift_task_alloc();
  sub_219BEF554();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v4 = sub_219BED8D4();
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2190754B8, 0, 0);
}

uint64_t sub_2190754B8()
{
  sub_219075B98(*(v0 + 112));
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_219075558;
  v2 = *(v0 + 112);

  return sub_219075E5C(v0 + 16, v2);
}

uint64_t sub_219075558()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 24);
    v7 = *(v2 + 40);
    *(v2 + 96) = *(v2 + 56);
    *(v2 + 64) = v6;
    *(v2 + 80) = v7;
    v8 = swift_task_alloc();
    *(v2 + 184) = v8;
    *v8 = v3;
    v8[1] = sub_21907570C;
    v9 = *(v2 + 112);

    return sub_21908253C(v9, (v2 + 64));
  }
}

uint64_t sub_21907570C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_219075AFC;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_219075834;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219075834()
{
  v1 = v0[20];
  v5 = v0[21];
  v6 = v0[19];
  v2 = v0[13];
  sub_2186E0010(0);
  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for ForYouTodayFeedGroupKnobs(0);
  sub_219083DD4(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  sub_2190839A0((v0 + 8));
  (*(v1 + 32))(v2, v5, v6);
  type metadata accessor for TodayFeedGroup(0);
  swift_storeEnumTagMultiPayload();
  sub_219083DD4(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  v3 = v0[1];

  return v3();
}

uint64_t sub_219075AFC()
{

  sub_2190839A0(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

void sub_219075B98(uint64_t a1)
{
  sub_2186D8B7C(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = v1 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs;
  sub_219BEF124();
  sub_219793808(v17);

  if (v17[0] != 1)
  {
    v7 = v17[3];
    v8 = v18;
    sub_219083CA8(v17, &qword_27CC15888, &type metadata for ForYouTodayFeedGroupKnobs.SlotKnobs);
    if ((v8 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v9 = (v6 + *(type metadata accessor for ForYouTodayFeedGroupKnobs(0) + 36));
  if ((v9[1] & 1) == 0)
  {
    v7 = *v9;
LABEL_5:
    v10 = sub_219BF5BF4();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v7;
    v11[5] = a1;

    sub_2195E70E0(0, 0, v5, &unk_219C574E8, v11);
  }

  sub_219BEF124();
  sub_219793808(v19);

  if (v19[0] == 1 || (v12 = v19[5], v13 = v20, sub_219083CA8(v19, &qword_27CC15888, &type metadata for ForYouTodayFeedGroupKnobs.SlotKnobs), (v13 & 1) != 0))
  {
    v14 = (v6 + *(type metadata accessor for ForYouTodayFeedGroupKnobs(0) + 40));
    if (v14[1])
    {
      return;
    }

    v12 = *v14;
  }

  v15 = sub_219BF5BF4();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = v12;

  sub_2195E70E0(0, 0, v5, &unk_219C574D8, v16);
}

uint64_t sub_219075E5C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_219BEDC04();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219075F20, 0, 0);
}

uint64_t sub_219075F20(uint64_t a1)
{
  sub_219BEF164();
  v1[15] = v1[2];
  v2 = swift_task_alloc();
  v1[16] = v2;
  *v2 = v1;
  v2[1] = sub_219076010;

  return sub_2190779E4();
}

uint64_t sub_219076010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[17] = a1;
  v6[18] = a2;
  v6[19] = a3;
  v6[20] = a4;
  v6[21] = v4;

  if (v4)
  {
    v7 = sub_219077550;
  }

  else
  {
    v7 = sub_21907612C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void *sub_21907612C()
{
  v1 = *(v0 + 88);
  v2 = sub_218BACCDC(*(v0 + 136), *(v0 + 144));
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_articleForYouAvailability), *(v1 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_articleForYouAvailability + 24));
  if (sub_219BE4ED4())
  {
    v55 = v2;
    v54 = *(v0 + 120) + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
    v3 = *(v54 + 16);

    sub_219BEF0B4();
    v4 = *(*(v0 + 24) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);

    v5 = *(v4 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);

    v6 = -1;
    v7 = -1 << *(v5 + 32);
    if (-v7 < 64)
    {
      v6 = ~(-1 << -v7);
    }

    v8 = v6 & *(v5 + 64);
    v9 = (63 - v7) >> 6;

    v10 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      v12 = v10;
      if (!v8)
      {
        break;
      }

LABEL_9:
      v8 &= v8 - 1;
      v13 = [swift_unknownObjectRetain_n() clusterID];
      if (v13)
      {
        v52 = v13;
        v56 = sub_219BF5414();
        v53 = v14;

        swift_unknownObjectRelease_n();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_218840D24(0, *(v11 + 2) + 1, 1, v11);
        }

        v16 = *(v11 + 2);
        v15 = *(v11 + 3);
        v17 = v16 + 1;
        if (v16 >= v15 >> 1)
        {
          v19 = sub_218840D24((v15 > 1), v16 + 1, 1, v11);
          v17 = v16 + 1;
          v11 = v19;
        }

        *(v11 + 2) = v17;
        v18 = &v11[16 * v16];
        *(v18 + 4) = v56;
        *(v18 + 5) = v53;
      }

      else
      {
        swift_unknownObjectRelease_n();
      }
    }

    while (1)
    {
      v10 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v10 >= v9)
      {
        break;
      }

      v8 = *(v5 + 64 + 8 * v10);
      ++v12;
      if (v8)
      {
        goto LABEL_9;
      }
    }

    v24 = *(v0 + 152);
    v25 = *(v0 + 88);

    v26 = sub_218845F78(v11);

    v27 = *(v25 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_cloudContext);
    sub_219BEF0B4();
    sub_219077F00(v2, v3, v26, v24, v27, *(v0 + 32), 0x6574692064656566, 0xEA0000000000736DLL);
    v29 = v28;

    if (v29 >> 62)
    {
      if (sub_219BF7214())
      {
        v30 = sub_219BF7214();
        if (!v30)
        {

          v34 = MEMORY[0x277D84F90];
LABEL_29:
          *(v0 + 176) = v34;
          v43 = *(v0 + 144);
          sub_219BEF864();
          sub_21907EAB8(v55, v43, v34);

          *(v0 + 184) = sub_219BEF824();
          v44 = *(v54 + 16);
          *(v0 + 192) = v44;

          v45 = swift_task_alloc();
          *(v0 + 200) = v45;
          *v45 = v0;
          v45[1] = sub_219076844;
          v46 = *(v0 + 144);
          v47 = *(v0 + 152);
          v48 = *(v0 + 80);

          return sub_21907ED0C(v34, v48, v46, v47, v44);
        }

LABEL_20:
        v57 = MEMORY[0x277D84F90];
        result = sub_218C34908(0, v30 & ~(v30 >> 63), 0);
        if (v30 < 0)
        {
          __break(1u);
          return result;
        }

        v32 = 0;
        v33 = *(v0 + 104);
        v34 = v57;
        do
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v35 = MEMORY[0x21CECE0F0](v32, v29);
          }

          else
          {
            v35 = *(v29 + 8 * v32 + 32);
          }

          v36 = *(v0 + 144);
          v37 = v35;
          v38 = [v36 objectForKey_];
          sub_219BEDBD4();

          v40 = *(v57 + 16);
          v39 = *(v57 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_218C34908((v39 > 1), v40 + 1, 1);
          }

          v41 = *(v0 + 112);
          v42 = *(v0 + 96);
          ++v32;
          *(v57 + 16) = v40 + 1;
          (*(v33 + 32))(v57 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v40, v41, v42);
        }

        while (v30 != v32);

        goto LABEL_29;
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
        goto LABEL_20;
      }
    }

    v20 = *(v0 + 144);

    v23 = MEMORY[0x277D323A8];
  }

  else
  {

    if (qword_280E8D7A0 != -1)
    {
LABEL_33:
      swift_once();
    }

    v20 = *(v0 + 144);
    v21 = qword_280F616D8;
    v22 = sub_219BF61F4();
    sub_219BE5314("ForYou is unavailable", 21, 2, &dword_2186C1000, v21, v22, MEMORY[0x277D84F90]);
    v23 = MEMORY[0x277D32408];
  }

  v49 = sub_219BEEDD4();
  sub_21907BD68(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
  swift_allocError();
  (*(*(v49 - 8) + 104))(v50, *v23, v49);
  swift_willThrow();

  v51 = *(v0 + 8);

  return v51();
}

uint64_t sub_219076844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[26] = a1;
  v6[27] = a2;
  v6[28] = a3;
  v6[29] = a4;
  v6[30] = v4;

  if (v4)
  {
    v7 = sub_219076DA4;
  }

  else
  {

    v7 = sub_219076968;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_219076968()
{
  v0[5] = v0[26];
  sub_2186D8B7C(0, &unk_280E8EF90, MEMORY[0x277D31DF8], MEMORY[0x277D83940]);
  sub_218E5B3A8();
  v1 = sub_219BF5784();
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v2 = v0[22];
  v0[31] = qword_280F616D8;
  sub_2186F20D4(0);
  v0[32] = v3;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  v5 = *(v2 + 16);

  v6 = MEMORY[0x277D83B88];
  v7 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v7;
  *(v4 + 32) = v5;
  if (v1 >> 62)
  {
    v8 = sub_219BF7214();
  }

  else
  {
    v8 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v4 + 96) = v6;
  *(v4 + 104) = v7;
  *(v4 + 72) = v8;
  sub_219BF6214();
  sub_219BE5314("ForYou emitter selected from %ld to %ld feed items", v20, v21);

  if (v1 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_7;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:
    v9 = v0[26];
    __swift_project_boxed_opaque_existential_1((v0[11] + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_headlineService), *(v0[11] + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_headlineService + 24));
    v0[7] = v9;
    v10 = sub_219BF5764();

    sub_219BEF0B4();
    swift_unknownObjectRetain();

    v0[33] = sub_219BF27A4();

    swift_unknownObjectRelease();
    v11 = swift_task_alloc();
    v0[34] = v11;
    *v11 = v0;
    v11[1] = sub_219076E6C;

    return MEMORY[0x2821D23D8](v0 + 6);
  }

  v13 = v0[28];
  v12 = v0[29];
  v14 = v0[27];
  v15 = v0[18];

  v16 = sub_219BEEDD4();
  sub_21907BD68(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
  swift_allocError();
  (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D323A8], v16);
  swift_willThrow();
  sub_219083AE0(v14, v13, v12);

  v18 = v0[1];

  return v18();
}

uint64_t sub_219076DA4()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_219076E6C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_2190775BC;
  }

  else
  {

    v2 = sub_219076F88;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219076F88()
{
  v1 = v0[6];
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[11];
  v4 = v3 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs;
  v5 = type metadata accessor for ForYouTodayFeedGroupKnobs(0);
  v6 = *(v4 + *(v5 + 24));
  if (v2 >= v6)
  {
    v13 = v5;
    v14 = sub_2190789E4(v3);
    if (!v14)
    {
      v28 = v0[28];
      v29 = v0[29];
      v30 = v0[27];
      v58 = v0[18];

      v31 = sub_219BEEDD4();
      sub_21907BD68(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D323A8], v31);
      swift_willThrow();
      v10 = v30;
      v11 = v28;
      v12 = v29;
      goto LABEL_15;
    }

    v15 = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C0D560;
    v17 = MEMORY[0x277D83B88];
    v18 = MEMORY[0x277D83C10];
    *(v16 + 56) = MEMORY[0x277D83B88];
    *(v16 + 64) = v18;
    *(v16 + 32) = v2;
    if (v15 >> 62)
    {
      v19 = sub_219BF7214();
    }

    else
    {
      v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v16 + 96) = v17;
    *(v16 + 104) = v18;
    *(v16 + 72) = v19;
    v20 = *(v4 + *(v13 + 28));
    v21 = MEMORY[0x277D839F0];
    *(v16 + 136) = MEMORY[0x277D839B0];
    *(v16 + 144) = v21;
    *(v16 + 112) = v20;
    if (v1 >> 62)
    {
      result = sub_219BF7214();
      if (result)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_10:
        if ((v1 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x21CECE0F0](0, v1);
        }

        else
        {
          if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_45;
          }

          v23 = *(v1 + 32);
          swift_unknownObjectRetain();
        }

        v24 = [v23 identifier];
        swift_unknownObjectRelease();
        v25 = sub_219BF5414();
        v27 = v26;

LABEL_18:
        v34 = MEMORY[0x277D837D0];
        *(v16 + 176) = MEMORY[0x277D837D0];
        v35 = sub_2186FC3BC();
        *(v16 + 184) = v35;
        if (v27)
        {
          v36 = v25;
        }

        else
        {
          v36 = 0;
        }

        v37 = 0xE000000000000000;
        if (v27)
        {
          v37 = v27;
        }

        *(v16 + 152) = v36;
        *(v16 + 160) = v37;
        if (v15 >> 62)
        {
          result = sub_219BF7214();
          v59 = v15;
          if (result)
          {
            goto LABEL_25;
          }
        }

        else
        {
          result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v59 = v15;
          if (result)
          {
LABEL_25:
            if ((v15 & 0xC000000000000001) != 0)
            {
              v38 = MEMORY[0x21CECE0F0](0, v15);
LABEL_28:
              v39 = [v38 identifier];
              swift_unknownObjectRelease();
              v40 = sub_219BF5414();
              v42 = v41;

              v43 = (v16 + 192);
              *(v16 + 216) = v34;
              *(v16 + 224) = v35;
              if (v42)
              {
                *v43 = v40;
LABEL_33:
                v44 = v0[31];
                v45 = v0[28];
                v46 = v0[18];
                *(v16 + 200) = v42;
                v47 = sub_219BF6214();
                sub_219BE5314("ForYou emitter promoted from %ld to %ld feed items, shouldPromoteAccessibleHeadline=%d initial=%{public}@, promoted=%{public}@", 126, 2, &dword_2186C1000, v44, v47, v16);

                if (v45)
                {
                  v49 = v0[28];
                  v48 = v0[29];
                  v50 = v0[27];

                  swift_unknownObjectRetain();
                  sub_219083AE0(v50, v49, v48);
                  v51 = v0[29];
                  v52 = v0[27];
                }

                else
                {
                  v52 = 0;
                  v51 = 0;
                }

                v53 = v0[28];
                v54 = v0[23];
                v55 = v0[9];

                *v55 = v54;
                *(v55 + 8) = v59;
                *(v55 + 16) = v52;
                *(v55 + 24) = v53;
                *(v55 + 32) = v51;
                *(v55 + 40) = v45 != 0;
                v33 = v0[1];
                goto LABEL_37;
              }

LABEL_32:
              *v43 = 0;
              v42 = 0xE000000000000000;
              goto LABEL_33;
            }

            if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v38 = *(v15 + 32);
              swift_unknownObjectRetain();
              goto LABEL_28;
            }

LABEL_45:
            __break(1u);
            return result;
          }
        }

        v43 = (v16 + 192);
        *(v16 + 216) = v34;
        *(v16 + 224) = v35;
        goto LABEL_32;
      }
    }

    v25 = 0;
    v27 = 0;
    goto LABEL_18;
  }

  v56 = v0[28];
  v57 = v0[29];
  v7 = v0[27];
  v58 = v0[18];

  v8 = sub_219BEEDD4();
  sub_21907BD68(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
  swift_allocError();
  *v9 = v6;
  v9[1] = v2;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D32400], v8);
  swift_willThrow();
  v10 = v7;
  v11 = v56;
  v12 = v57;
LABEL_15:
  sub_219083AE0(v10, v11, v12);

  v33 = v0[1];
LABEL_37:

  return v33();
}

uint64_t sub_219077550()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2190775BC()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[18];

  sub_219083AE0(v3, v2, v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_21907769C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_2186D8B7C(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2190777BC, 0, 0);
}

uint64_t sub_2190777BC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_219083DD4(0, &qword_280E91120, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D32AB8]);
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_219083A70(*(v0 + 48), qword_280EDB700, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    sub_219083E54(*(v0 + 48), *(v0 + 72), type metadata accessor for TodayFeedGroup);
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_21907C540(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_219034698(*(v0 + 40), *(v0 + 24));
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 1;
LABEL_4:
  (*(*(v5 - 8) + 56))(*(v0 + 24), v6, 1, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_219077A04(uint64_t a1)
{
  sub_219BE2CF4();
  v1[12] = v1[10];
  v2 = swift_task_alloc();
  v1[13] = v2;
  *v2 = v1;
  v2[1] = sub_219077AC0;

  return MEMORY[0x2821D23D8](v1 + 2);
}

uint64_t sub_219077AC0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_219077E24;
  }

  else
  {

    v2 = sub_219077BDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219077BDC()
{
  *(v0 + 120) = *(v0 + 16);
  *(v0 + 136) = *(v0 + 40);
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_219077C90;

  return MEMORY[0x2821D23D8](v0 + 48);
}

uint64_t sub_219077C90()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_219077E88;
  }

  else
  {
    v2 = sub_219077DA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219077DA4()
{

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[1];

  return v5(v1, v2, v3, v4);
}

uint64_t sub_219077E24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219077E88()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_219077F00(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a4)
  {
    sub_2186C6148(0, &qword_280E8E760, 0x277D30FA8);
    v14 = sub_219BF5204();
  }

  else
  {
    v14 = 0;
  }

  v15 = [a5 subscriptionController];
  if (!v15)
  {
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v16 = v15;
  v17 = [v15 autoFavoriteTagIDs];

  v93 = a7;
  v94 = a8;
  if (v17)
  {
    v18 = sub_219BF5924();
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v19 = objc_opt_self();
  sub_218845F78(v18);

  v20 = sub_219BF5D34();

  v21 = [v19 transformationWithFeedContextByFeedID:v14 autoFavoriteTagIDs:v20];

  v22 = sub_2191F7014(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_2191F7014((v23 > 1), v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  v25 = &v22[40 * v24];
  *(v25 + 4) = 0xD000000000000017;
  *(v25 + 5) = 0x8000000219CDF4A0;
  *(v25 + 6) = v21;
  *(v25 + 7) = 0;
  v25[64] = 0;
  v26 = [a5 subscriptionController];
  if (!v26)
  {
    goto LABEL_52;
  }

  v27 = v26;
  v28 = [v26 newlySubscribedTagIDsInDateRange_];

  if (v28)
  {
    v29 = sub_219BF5924();
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  sub_218845F78(v29);

  v30 = sub_219BF5D34();

  if (a4)
  {
    sub_2186C6148(0, &qword_280E8E760, 0x277D30FA8);
    v31 = sub_219BF5204();
  }

  else
  {
    v31 = 0;
  }

  v32 = [objc_opt_self() transformationWithTagIDs:v30 feedContextByFeedID:v31];

  if (!v32)
  {
    goto LABEL_53;
  }

  v34 = *(v22 + 2);
  v33 = *(v22 + 3);
  if (v34 >= v33 >> 1)
  {
    v22 = sub_2191F7014((v33 > 1), v34 + 1, 1, v22);
  }

  *(v22 + 2) = v34 + 1;
  v35 = &v22[40 * v34];
  *(v35 + 2) = xmmword_219C12320;
  *(v35 + 6) = v32;
  *(v35 + 7) = 0;
  v35[64] = 0;
  v36 = [objc_opt_self() transformationWithPersonalizer_];
  if (!v36)
  {
    goto LABEL_54;
  }

  v38 = *(v22 + 2);
  v37 = *(v22 + 3);
  if (v38 >= v37 >> 1)
  {
    v89 = v36;
    v22 = sub_2191F7014((v37 > 1), v38 + 1, 1, v22);
    v36 = v89;
  }

  *(v22 + 2) = v38 + 1;
  v39 = &v22[40 * v38];
  *(v39 + 2) = xmmword_219C12330;
  *(v39 + 6) = v36;
  *(v39 + 7) = 0;
  v39[64] = 0;
  v40 = swift_allocObject();
  *(v40 + 16) = a3;
  *(v40 + 24) = a2;
  v41 = *(v22 + 2);
  v42 = *(v22 + 3);

  if (v41 >= v42 >> 1)
  {
    v22 = sub_2191F7014((v42 > 1), v41 + 1, 1, v22);
  }

  *(v22 + 2) = v41 + 1;
  v43 = &v22[40 * v41];
  *(v43 + 2) = xmmword_219C572D0;
  *(v43 + 6) = sub_219083EBC;
  *(v43 + 7) = v40;
  v43[64] = 3;
  v44 = NewsCoreUserDefaults();
  v45 = [v44 BOOLForKey_];

  if (v45)
  {
    v46 = 0x16C022513ELL;
  }

  else
  {
    v46 = 0x16C022113ELL;
  }

  v47 = [a5 subscriptionList];
  v48 = [v47 subscribedTagIDs];

  if (v48)
  {
    sub_219BF5D44();

    v49 = sub_219BF5D34();
  }

  else
  {
    v49 = 0;
  }

  v50 = [a5 subscriptionList];
  v51 = [v50 mutedTagIDs];

  if (v51)
  {
    sub_219BF5D44();

    v97 = sub_219BF5D34();
  }

  else
  {
    v97 = 0;
  }

  v52 = [a5 readingHistory];
  v53 = [v52 readingHistoryItemsByArticleID];

  sub_2186D6710(0, &qword_280E8E1B0, &protocolRef_FCReadingHistoryItem);
  sub_219BF5214();

  v92 = sub_219BF5204();

  v54 = [a5 audioPlaylist];
  v55 = [v54 articleIDs];

  if (!v55)
  {
    sub_219BF5924();
    v55 = sub_219BF5904();
  }

  v56 = [a5 offlineArticleManager];
  if (!v56)
  {
    goto LABEL_55;
  }

  v57 = [v56 readableArticleIDs];
  swift_unknownObjectRelease();
  sub_219BF5D44();

  v58 = sub_219BF5D34();

  v59 = [*(a6 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) briefingsTagID];
  v60 = [a5 paidAccessChecker];
  v61 = [a5 bundleSubscriptionManager];
  if (!v61)
  {
LABEL_56:
    __break(1u);
    return;
  }

  v62 = v61;
  v63 = objc_opt_self();
  v64 = [v62 cachedSubscription];
  swift_unknownObjectRelease();
  v65 = [v63 transformationWithFilterOptions:v46 otherArticleIDs:0 otherClusterIDs:0 subscribedTagIDs:v49 mutedTagIDs:v97 readingHistoryItems:v92 playlistArticleIDs:v55 downloadedArticleIDs:v58 briefingsTagID:v59 paidAccessChecker:v60 bundleSubscription:v64 paywalledArticlesMaxCount:0];

  swift_unknownObjectRelease();
  v67 = *(v22 + 2);
  v66 = *(v22 + 3);
  v68 = v66 >> 1;
  v69 = v67 + 1;
  if (v66 >> 1 <= v67)
  {
    v22 = sub_2191F7014((v66 > 1), v67 + 1, 1, v22);
    v66 = *(v22 + 3);
    v68 = v66 >> 1;
  }

  v70 = MEMORY[0x277D837D0];
  *(v22 + 2) = v69;
  v71 = &v22[40 * v67];
  *(v71 + 4) = v65;
  *(v71 + 5) = 0;
  *(v71 + 6) = 0;
  *(v71 + 7) = 0;
  v71[64] = 1;
  v72 = v67 + 2;
  if (v68 < v72)
  {
    v22 = sub_2191F7014((v66 > 1), v72, 1, v22);
  }

  *(v22 + 2) = v72;
  v73 = &v22[40 * v69];
  *(v73 + 4) = 0xD000000000000011;
  *(v73 + 5) = 0x8000000219D093C0;
  *(v73 + 6) = sub_21907AC10;
  *(v73 + 7) = 0;
  v73[64] = 3;
  sub_218FD1490(a1, v22);
  v75 = v74;
  v77 = v76;

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v78 = qword_280F616D8;
  sub_2186F20D4(0);
  v79 = swift_allocObject();
  *(v79 + 16) = xmmword_219C0EE20;
  if (a1 >> 62)
  {
    v90 = v79;
    v80 = sub_219BF7214();
    v79 = v90;
  }

  else
  {
    v80 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v81 = MEMORY[0x277D83B88];
  v82 = MEMORY[0x277D83C10];
  *(v79 + 56) = MEMORY[0x277D83B88];
  *(v79 + 64) = v82;
  *(v79 + 32) = v80;
  if (v75 >> 62)
  {
    v91 = v79;
    v83 = sub_219BF7214();
    v79 = v91;
  }

  else
  {
    v83 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v79 + 96) = v81;
  *(v79 + 104) = v82;
  *(v79 + 72) = v83;
  *(v79 + 136) = v70;
  v84 = v79;
  v85 = sub_2186FC3BC();
  v84[18] = v85;
  v84[14] = v93;
  v84[15] = v94;

  v86 = sub_218FD25C8(v77);
  v84[22] = v70;
  v84[23] = v85;
  v84[19] = v86;
  v84[20] = v87;
  v88 = sub_219BF6214();
  sub_219BE5314("ForYou emitter filtered from %ld to %ld %{public}@ for reasons: %{public}@", 74, 2, &dword_2186C1000, v78, v88, v84);
}

uint64_t sub_2190789E4(uint64_t a1)
{
  sub_2186D8B7C(0, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v22 - v6;
  v8 = a1 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs;
  v9 = type metadata accessor for ForYouTodayFeedGroupKnobs(0);
  v10 = *(v9 + 48);
  if (*(v8 + *(v9 + 28)) == 1)
  {
    sub_219083BBC(v8 + v10, v7, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    v11 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs(0);
    v12 = (*(*(v11 - 8) + 48))(v7, 1, v11);
    sub_219083A70(v7, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);

    sub_219319AB8(v13);
    sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
    v14 = sub_219BF5904();

    if (v12 == 1)
    {
      v15 = FCPromoteAccessibleHeadline();
    }

    else
    {
      v15 = FCPromoteAccessibleHeadlineIgnoringProminence();
    }
  }

  else
  {
    sub_219083BBC(v8 + v10, v4, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    v16 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs(0);
    v17 = (*(*(v16 - 8) + 48))(v4, 1, v16);
    sub_219083A70(v4, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);

    sub_219319AB8(v18);
    sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
    v14 = sub_219BF5904();

    if (v17 == 1)
    {
      v15 = FCPromoteOneHeadline();
    }

    else
    {
      v15 = FCPromoteOneHeadlineIgnoringProminence();
    }
  }

  v19 = v15;

  if (!v19)
  {
    return 0;
  }

  v20 = sub_219BF5924();

  return v20;
}

uint64_t sub_219078CE0@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v75 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D83D88];
  sub_2186D8B7C(0, &qword_280E90FF0, MEMORY[0x277D32BE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v63 - v4;
  v6 = sub_219BF0204();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x28223BE20](v6);
  v67 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TodayFeedGroupClusteringKnobOverrides(0);
  MEMORY[0x28223BE20](v8);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8B7C(0, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, v2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v63 - v11;
  v13 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs;
  v18 = type metadata accessor for ForYouTodayFeedGroupKnobs(0);
  sub_219083BBC(v17 + *(v18 + 48), v12, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_219083E54(v12, v16, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    sub_219BEF0B4();
    v21 = *&v73[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig];
    swift_unknownObjectRetain();

    if ([v21 respondsToSelector_])
    {
      v22 = [v21 todayFeedGroupClusteringKnobOverrides];
      swift_unknownObjectRelease();
      if (v22)
      {
        sub_219BF5214();

        v23 = objc_opt_self();
        v24 = sub_219BF5204();

        v73 = 0;
        v25 = [v23 dataWithJSONObject:v24 options:0 error:&v73];

        v26 = v73;
        if (v25)
        {
          v27 = sub_219BDBA04();
          v29 = v28;

          sub_219BDAFF4();
          swift_allocObject();
          sub_219BDAFE4();
          sub_21907BD68(&qword_280E98800, type metadata accessor for TodayFeedGroupClusteringKnobOverrides, &unk_219C94638);
          sub_219BDAFC4();
          v65 = v27;

          v43 = v70;
          sub_219083BBC(v70 + *(v8 + 20), v5, &qword_280E90FF0, MEMORY[0x277D32BE0]);
          v44 = v68;
          v45 = v69;
          v46 = (*(v68 + 48))(v5, 1, v69);
          v66 = v29;
          if (v46 != 1)
          {
            v52 = v67;
            (*(v44 + 32))(v67, v5, v45);
            if (qword_280E8D7A0 != -1)
            {
              swift_once();
            }

            v64 = qword_280F616D8;
            sub_2186F20D4(0);
            v53 = swift_allocObject();
            *(v53 + 16) = xmmword_219C09EC0;
            v73 = 0;
            v74 = 0xE000000000000000;
            sub_219BF7484();
            v55 = v73;
            v54 = v74;
            v56 = MEMORY[0x277D837D0];
            *(v53 + 56) = MEMORY[0x277D837D0];
            v57 = sub_2186FC3BC();
            *(v53 + 64) = v57;
            *(v53 + 32) = v55;
            *(v53 + 40) = v54;
            v73 = 0;
            v74 = 0xE000000000000000;
            sub_219BF7484();
            v58 = v73;
            v59 = v74;
            *(v53 + 96) = v56;
            *(v53 + 104) = v57;
            *(v53 + 72) = v58;
            *(v53 + 80) = v59;
            v60 = sub_219BF6214();
            sub_219BE5314("ForYou applying overrides %{public}@ to for you clustering knobs %{public}@", 75, 2, &dword_2186C1000, v64, v60, v53);

            v20 = v71;
            sub_219BEF7D4();
            sub_2186C6190(v65, v66);
            (*(v68 + 8))(v52, v69);
            sub_21907C540(v70, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
            v61 = *(v13 + 20);
            v62 = sub_219BEFF54();
            (*(*(v62 - 8) + 16))(v20 + v61, &v16[v61], v62);
            sub_21907C540(v16, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
            goto LABEL_15;
          }

          sub_219083A70(v5, &qword_280E90FF0, MEMORY[0x277D32BE0]);
          if (qword_280E8D7A0 != -1)
          {
            swift_once();
          }

          v47 = qword_280F616D8;
          sub_2186F20D4(0);
          v48 = swift_allocObject();
          *(v48 + 16) = xmmword_219C09BA0;
          v73 = 0;
          v74 = 0xE000000000000000;
          sub_219BF7484();
          v49 = v73;
          v50 = v74;
          *(v48 + 56) = MEMORY[0x277D837D0];
          *(v48 + 64) = sub_2186FC3BC();
          *(v48 + 32) = v49;
          *(v48 + 40) = v50;
          v51 = sub_219BF6214();
          sub_219BE5314("ForYou overrides didn't specify any for you specific overrides %{public}@", 73, 2, &dword_2186C1000, v47, v51, v48);
          sub_2186C6190(v65, v66);

          sub_21907C540(v43, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
        }

        else
        {
          v35 = v26;
          v36 = sub_219BDB724();

          swift_willThrow();
          if (qword_280E8D7A0 != -1)
          {
            swift_once();
          }

          v37 = qword_280F616D8;
          v38 = sub_219BF61F4();
          sub_2186F20D4(0);
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_219C09BA0;
          v73 = 0;
          v74 = 0xE000000000000000;
          v72 = v36;
          sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
          sub_219BF7484();
          v40 = v73;
          v41 = v74;
          *(v39 + 56) = MEMORY[0x277D837D0];
          *(v39 + 64) = sub_2186FC3BC();
          *(v39 + 32) = v40;
          *(v39 + 40) = v41;
          sub_219BE5314("ForYou failed to serialize feed group clustering overrides, error=%{public}@", 76, 2, &dword_2186C1000, v37, v38, v39);
        }

LABEL_14:
        v20 = v71;
        sub_219083E54(v16, v71, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
LABEL_15:
        v19 = 0;
        return (*(v14 + 56))(v20, v19, 1, v13);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v30 = qword_280F616D8;
    sub_2186F20D4(0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_219C09BA0;
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_219BF7484();
    v32 = v73;
    v33 = v74;
    *(v31 + 56) = MEMORY[0x277D837D0];
    *(v31 + 64) = sub_2186FC3BC();
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    v34 = sub_219BF6214();
    sub_219BE5314("No clustering knob overrides specified, For You won't apply overrides onto clustering knobs %{public}@", 102, 2, &dword_2186C1000, v30, v34, v31);

    goto LABEL_14;
  }

  sub_219083A70(v12, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  v19 = 1;
  v20 = v71;
  return (*(v14 + 56))(v20, v19, 1, v13);
}

uint64_t sub_21907979C(uint64_t a1)
{
  sub_219BE2CF4();
  v1[10] = v1[8];
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = sub_219079858;

  return MEMORY[0x2821D23D8](v1 + 2);
}

uint64_t sub_219079858()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_219079BAC;
  }

  else
  {

    v2 = sub_219079974;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219079974()
{
  v1 = v0[3];
  v0[13] = v0[2];
  v0[14] = v1;
  v0[15] = v0[5];
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_219079A1C;

  return MEMORY[0x2821D23D8](v0 + 6);
}

uint64_t sub_219079A1C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_219079C10;
  }

  else
  {
    v2 = sub_219079B30;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219079B30()
{

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_219079BAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219079C10()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_219079C88(uint64_t a1)
{
  v2 = sub_219BF1904();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TodayFeedGroup(0);
  MEMORY[0x28223BE20](v86);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v82);
  v84 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219083DD4(0, &qword_280E924A0, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D31E28]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v78 - v12;
  v83 = a1;
  v14 = sub_219BEF0A4();
  v15 = v14;
  v85 = *(v14 + 16);
  if (!v85)
  {
LABEL_13:

    return MEMORY[0x277D84FA0];
  }

  v79 = v5;
  v80 = v3;
  v81 = v2;
  v16 = 0;
  v17 = v14 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  while (1)
  {
    if (v16 >= *(v15 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    (*(v11 + 16))(v13, v17 + *(v11 + 72) * v16, v10);
    sub_219BEDC54();
    (*(v11 + 8))(v13, v10);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    v18 = type metadata accessor for TodayFeedGroup;
    v19 = v7;
LABEL_4:
    sub_21907C540(v19, v18);
    if (v85 == ++v16)
    {
      goto LABEL_13;
    }
  }

  v20 = v84;
  sub_219083E54(v7, v84, type metadata accessor for CuratedTodayFeedGroup);
  v21 = (v20 + *(v82 + 20));
  v22 = *v21 == 0x69726F7453706F74 && v21[1] == 0xEA00000000007365;
  if (!v22 && (sub_219BF78F4() & 1) == 0)
  {
    v18 = type metadata accessor for CuratedTodayFeedGroup;
    v19 = v84;
    goto LABEL_4;
  }

  v24 = v79;
  sub_219BED874();
  v11 = sub_219BF18D4();
  (*(v80 + 8))(v24, v81);
  v87 = MEMORY[0x277D84F90];
  if (!(v11 >> 62))
  {
    v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_16;
    }

LABEL_34:
    v37 = MEMORY[0x277D84F90];
    goto LABEL_35;
  }

LABEL_33:
  v25 = sub_219BF7214();
  if (!v25)
  {
    goto LABEL_34;
  }

LABEL_16:
  v26 = 0;
  v86 = v11 & 0xC000000000000001;
  while (2)
  {
    if (v86)
    {
      v27 = MEMORY[0x21CECE0F0](v26, v11);
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        goto LABEL_29;
      }

LABEL_23:
      sub_219BEF0B4();
      v29 = *(v89 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);

      v30 = *(v29 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);

      v31 = [v27 identifier];
      v32 = sub_219BF5414();
      v34 = v33;

      if (*(v30 + 16))
      {
        sub_21870F700(v32, v34);
        v36 = v35;

        if (v36)
        {
          swift_unknownObjectRelease();

LABEL_19:
          ++v26;
          if (v28 == v25)
          {
            goto LABEL_30;
          }

          continue;
        }
      }

      else
      {
      }

      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      goto LABEL_19;
    }

    break;
  }

  if (v26 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_32;
  }

  v27 = *(v11 + 8 * v26 + 32);
  swift_unknownObjectRetain();
  v28 = v26 + 1;
  if (!__OFADD__(v26, 1))
  {
    goto LABEL_23;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  v37 = v87;
LABEL_35:

  v38 = v37 < 0 || (v37 & 0x4000000000000000) != 0;
  if (v38)
  {
LABEL_76:
    v39 = sub_219BF7214();
  }

  else
  {
    v39 = *(v37 + 16);
  }

  v40 = v37 & 0xC000000000000001;
  v41 = MEMORY[0x277D84F90];
  if (v39)
  {
    v42 = 0;
    do
    {
      v43 = v42;
      while (1)
      {
        if (v40)
        {
          v44 = MEMORY[0x21CECE0F0](v43, v37);
          v42 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v43 >= *(v37 + 16))
          {
            goto LABEL_75;
          }

          v44 = *(v37 + 8 * v43 + 32);
          swift_unknownObjectRetain();
          v42 = v43 + 1;
          if (__OFADD__(v43, 1))
          {
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }
        }

        v45 = [v44 clusterID];
        if (v45)
        {
          break;
        }

        swift_unknownObjectRelease();
        ++v43;
        if (v42 == v39)
        {
          goto LABEL_57;
        }
      }

      LODWORD(v86) = v38;
      v46 = v45;
      v47 = sub_219BF5414();
      v49 = v48;

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_218840D24(0, *(v41 + 2) + 1, 1, v41);
      }

      v51 = *(v41 + 2);
      v50 = *(v41 + 3);
      if (v51 >= v50 >> 1)
      {
        v41 = sub_218840D24((v50 > 1), v51 + 1, 1, v41);
      }

      *(v41 + 2) = v51 + 1;
      v52 = &v41[16 * v51];
      *(v52 + 4) = v47;
      *(v52 + 5) = v49;
      v38 = v86;
    }

    while (v42 != v39);
  }

LABEL_57:
  v23 = sub_218845F78(v41);

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v53 = qword_280F616D8;
  sub_2186F20D4(0);
  v54 = swift_allocObject();
  v55 = v54;
  *(v54 + 16) = xmmword_219C09EC0;
  v87 = 0;
  v88 = 0xE000000000000000;
  if (v38)
  {
    v56 = sub_219BF7214();
    v85 = v55;
    v86 = v53;
    if (v56)
    {
      goto LABEL_61;
    }

LABEL_71:

    v59 = MEMORY[0x277D84F90];
LABEL_72:
    v67 = MEMORY[0x277D837D0];
    v68 = MEMORY[0x21CECC6D0](v59, MEMORY[0x277D837D0]);
    v70 = v69;

    MEMORY[0x21CECC330](v68, v70);

    v71 = v87;
    v72 = v88;
    v73 = v85;
    v85[7] = v67;
    v74 = sub_2186FC3BC();
    v73[8] = v74;
    v73[4] = v71;
    v73[5] = v72;
    v75 = sub_219BF5D54();
    v73[12] = v67;
    v73[13] = v74;
    v73[9] = v75;
    v73[10] = v76;
    v77 = sub_219BF6214();
    sub_219BE5314("Local in For You found local top stories headlines %{public}@ with cluster ids %{public}@", 89, 2, &dword_2186C1000, v86, v77, v73);

    sub_21907C540(v84, type metadata accessor for CuratedTodayFeedGroup);
    return v23;
  }

  else
  {
    v56 = *(v37 + 16);
    v85 = v54;
    v86 = v53;
    if (!v56)
    {
      goto LABEL_71;
    }

LABEL_61:
    v83 = v23;
    v89 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v56 & ~(v56 >> 63), 0);
    if ((v56 & 0x8000000000000000) == 0)
    {
      v58 = 0;
      v59 = v89;
      do
      {
        if (v40)
        {
          MEMORY[0x21CECE0F0](v58, v37);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v60 = [swift_unknownObjectRetain() identifier];
        v61 = sub_219BF5414();
        v63 = v62;
        swift_unknownObjectRelease_n();

        v89 = v59;
        v65 = *(v59 + 16);
        v64 = *(v59 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_21870B65C((v64 > 1), v65 + 1, 1);
          v59 = v89;
        }

        ++v58;
        *(v59 + 16) = v65 + 1;
        v66 = v59 + 16 * v65;
        *(v66 + 32) = v61;
        *(v66 + 40) = v63;
      }

      while (v56 != v58);

      v23 = v83;
      goto LABEL_72;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21907A5BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = sub_219BDB954();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF2124();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = a1[1];
  v22 = *a1;
  v7 = v22;
  v19 = a1[2];
  v9 = v19;
  v10 = MEMORY[0x277D84560];
  sub_2186D8B7C(0, &unk_280E8B6E0, sub_219083B24, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = v7;
  v23 = inited + 32;
  *(inited + 40) = v8;
  v20 = v8;
  sub_2186D8B7C(0, &qword_280E8B860, MEMORY[0x277D333A8], v10);
  v21 = 2 * *(*(sub_219BF14C4() - 8) + 72);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;

  v13 = [v9 name];
  sub_219BF5414();

  sub_219BF20F4();

  sub_219BF14A4();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BF20F4();

  sub_219BF14A4();
  sub_21907A9D8(v22, v20, v19);
  sub_219BF20E4();
  (*(v24 + 8))(v5, v25);
  sub_219BF14A4();
  *(inited + 48) = v12;
  v16 = sub_2194B11C0(inited);
  swift_setDeallocating();
  result = sub_21907C540(v23, sub_219083B24);
  *v26 = v16;
  return result;
}

void sub_21907A9D8(int a1, int a2, id a3)
{
  v4 = [a3 asSection];
  if (v4)
  {
    v5 = [v4 parentID];
    if (v5)
    {
      v6 = v5;
      v8 = [objc_opt_self() nss:v5 NewsURLForTagID:?];

      sub_219BDB8B4();
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  v7 = [a3 identifier];
  if (!v7)
  {
    sub_219BF5414();
    v7 = sub_219BF53D4();
  }

  v8 = [objc_opt_self() nss:v7 NewsURLForTagID:?];

  sub_219BDB8B4();
LABEL_8:
}

uint64_t sub_21907AB18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 clusterID];
  if (v6)
  {
    v7 = v6;
    v8 = sub_219BF5414();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = sub_2188537B8(v8, v10, a2);

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = [a1 articleID];
    if (v13)
    {
      v14 = v13;
      v15 = sub_219BF5414();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0xE000000000000000;
    }

    v18 = sub_2188537B8(v15, v17, a3);

    v12 = v18 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_21907AC2C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  v6 = sub_219BF7464();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21907ACF0, 0, 0);
}

uint64_t sub_21907ACF0()
{
  v1 = sub_219BF7C34();
  v3 = v2;
  sub_219BF79D4();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_21907ADCC;

  return sub_21907C5A0(v1, v3, 0, 0, 1);
}

uint64_t sub_21907ADCC()
{
  v2 = *v1;
  v3 = *v1;
  v2[8] = v0;

  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {
    (*(v5 + 8))(v4, v6);

    return MEMORY[0x2822009F8](sub_21907B0B8, 0, 0);
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = swift_task_alloc();
    v2[9] = v7;
    *v7 = v3;
    v7[1] = sub_21907AFA0;

    return sub_21907B11C();
  }
}

uint64_t sub_21907AFA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21907B0B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21907B13C(uint64_t a1)
{
  sub_219BEF164();
  v1[9] = v1[6];
  sub_219BE2CF4();
  v1[10] = v1[7];
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = sub_21907B250;

  return MEMORY[0x2821D23D8](v1 + 2);
}

uint64_t sub_21907B250()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21907B404;
  }

  else
  {

    v2 = sub_21907B36C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21907B36C()
{
  (*(v0 + 32))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21907B404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21907B470(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  v6 = sub_219BF7464();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  v7 = swift_task_alloc();
  *(v5 + 56) = v7;
  *v7 = v5;
  v7[1] = sub_21907B568;

  return MEMORY[0x2821908B8]();
}

uint64_t sub_21907B568()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21907B6B4, 0, 0);
  }
}

uint64_t sub_21907B6B4()
{
  v1 = sub_219BF7C34();
  v3 = v2;
  sub_219BF79D4();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_21907B790;

  return sub_21907C5A0(v1, v3, 0, 0, 1);
}

uint64_t sub_21907B790()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    (*(v2[5] + 8))(v2[6], v2[4]);

    return MEMORY[0x2822009F8](sub_21907BA44, 0, 0);
  }

  else
  {
    (*(v2[5] + 8))(v2[6], v2[4]);
    v3 = swift_task_alloc();
    v2[10] = v3;
    *v3 = v2;
    v3[1] = sub_21907B92C;

    return sub_21907B11C();
  }
}

uint64_t sub_21907B92C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21907BA44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21907BAA8()
{
  v1 = OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_config;
  sub_2186E0010(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21907C540(v0 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs, type metadata accessor for ForYouTodayFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_formatService));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_personalizationService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_headlineService));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_sportsGraphManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_articleForYouAvailability));

  return v0;
}

uint64_t sub_21907BBC0()
{
  sub_21907BAA8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ForYouTodayFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EB8938;
  if (!qword_280EB8938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21907BC6C(uint64_t a1)
{
  sub_2186E0010(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ForYouTodayFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21907BD68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21907BDB0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_219075360(a1, a2);
}

uint64_t sub_21907BE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_21907769C(a1, a2, a3);
}

uint64_t sub_21907BF0C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_21907BF4C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_config;
  sub_2186E0010(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21907BFE0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for ForYouTodayFeedGroupKnobs(0);
  a1[4] = sub_21907BD68(&qword_280EBE550, type metadata accessor for ForYouTodayFeedGroupKnobs, &unk_219CA367C);
  a1[5] = sub_21907BD68(&qword_280EBE558, type metadata accessor for ForYouTodayFeedGroupKnobs, "5gYh");
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219083D18(v3 + v4, boxed_opaque_existential_1, type metadata accessor for ForYouTodayFeedGroupKnobs);
}

uint64_t sub_21907C0AC(uint64_t a1)
{
  sub_219BEF124();
  sub_219793808(&v3);

  if (v3 == 1 || (v1 = v4, sub_219083CA8(&v3, &qword_27CC15888, &type metadata for ForYouTodayFeedGroupKnobs.SlotKnobs), (v1 & 1) != 0))
  {
    type metadata accessor for ForYouTodayFeedGroupKnobs(0);
  }

  return sub_219BEF884();
}

uint64_t sub_21907C214@<X0>(uint64_t *a2@<X8>)
{
  sub_2186D8B7C(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E0010(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21907C540(inited + 32, sub_2188317B0);
  sub_2186D8B7C(0, &qword_280EE7980, type metadata accessor for ForYouTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_21908404C();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21907C3B4(uint64_t a1)
{
  sub_21907BD68(&qword_280EB8958, type metadata accessor for ForYouTodayFeedGroupEmitter, &unk_219C57370);

  return sub_219BE2324();
}

uint64_t sub_21907C540(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21907C5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_219BF7454();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21907C6A0, 0, 0);
}

uint64_t sub_21907C6A0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_219BF7464();
  v5 = sub_21907BD68(&qword_280E8D560, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_219BF79B4();
  sub_21907BD68(&qword_280E8D578, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_219BF7474();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21907C830;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_21907C830()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21907C9EC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_21907C9EC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21907CA58(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v62 = a5;
  sub_218C3EEF4(0);
  v61 = v11;
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v52 - v16;
  MEMORY[0x28223BE20](v18);
  v21 = &v52 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_64;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_65;
  }

  v25 = (a2 - a1) / v23;
  v66 = a1;
  v65 = a4;
  v60 = v23;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    v59 = v19;
    if (a4 < a2 || &a2[v27] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = &a4[v27];
    if (v27 >= 1)
    {
      v38 = -v60;
      v39 = &a4[v27];
      v40 = v14;
      v56 = a4;
      v57 = a1;
      v55 = -v60;
      do
      {
        v41 = a1;
        v53 = v37;
        v42 = &a2[v38];
        v58 = a2;
        while (1)
        {
          if (a2 <= v41)
          {
            v66 = a2;
            v64 = v53;
            goto LABEL_62;
          }

          v44 = a3;
          v54 = v37;
          v60 = v39;
          v45 = &v39[v38];
          sub_219083D18(&v39[v38], v40, sub_218C3EEF4);
          v46 = v6;
          v47 = v40;
          v48 = v59;
          sub_219083D18(v42, v59, sub_218C3EEF4);
          v49 = sub_219726C30(v47, v48, v62);
          if (v46)
          {
            sub_21907C540(v48, sub_218C3EEF4);
            sub_21907C540(v47, sub_218C3EEF4);
            v66 = v58;
            v64 = v54;
            goto LABEL_62;
          }

          v50 = v49;
          v63 = 0;
          v51 = &v44[v38];
          sub_21907C540(v48, sub_218C3EEF4);
          sub_21907C540(v47, sub_218C3EEF4);
          v40 = v47;
          if (v50)
          {
            break;
          }

          v37 = v45;
          a3 = &v44[v38];
          if (v44 < v60 || v51 >= v60)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v45;
            v6 = v63;
          }

          else
          {
            v6 = v63;
            if (v44 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
              v37 = v45;
            }
          }

          v39 = v37;
          v41 = v57;
          v43 = v45 > v56;
          v38 = v55;
          a2 = v58;
          if (!v43)
          {
            goto LABEL_58;
          }
        }

        a3 = &v44[v38];
        if (v44 < v58 || v51 >= v58)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v63;
          v38 = v55;
        }

        else
        {
          a2 = v42;
          v6 = v63;
          v38 = v55;
          if (v44 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v60;
        v37 = v54;
      }

      while (v60 > v56);
    }

LABEL_58:
    v66 = a2;
    v64 = v37;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || &a1[v26] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = &a4[v26];
    v64 = &a4[v26];
    if (v26 >= 1 && a2 < a3)
    {
      v29 = v60;
      v58 = v21;
      while (1)
      {
        v30 = a3;
        sub_219083D18(a2, v21, sub_218C3EEF4);
        sub_219083D18(a4, v17, sub_218C3EEF4);
        v31 = sub_219726C30(v21, v17, v62);
        if (v6)
        {
          break;
        }

        v32 = v31;
        v63 = 0;
        v33 = v17;
        v34 = a4;
        v35 = v33;
        sub_21907C540(v33, sub_218C3EEF4);
        sub_21907C540(v21, sub_218C3EEF4);
        if (v32)
        {
          v36 = &a2[v29];
          if (a1 < a2 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v36;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v36;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = &v34[v29];
        }

        v17 = v35;
        v29 = v60;
        a1 += v60;
        v66 = a1;
        v21 = v58;
        v6 = v63;
        if (a4 >= v59 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_21907C540(v17, sub_218C3EEF4);
      sub_21907C540(v21, sub_218C3EEF4);
    }
  }

LABEL_62:
  sub_2189F19B8(&v66, &v65, &v64);
}

void sub_21907D09C(int64_t *a1, uint64_t a2, uint64_t *a3, char *a4, int64_t a5)
{
  v208 = a1;
  sub_218C3EEF4(0);
  v9 = v8;
  v216 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v210 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v228 = &v204 - v12;
  MEMORY[0x28223BE20](v13);
  v233 = (&v204 - v14);
  MEMORY[0x28223BE20](v15);
  v232 = (&v204 - v16);
  MEMORY[0x28223BE20](v17);
  v236 = &v204 - v18;
  MEMORY[0x28223BE20](v19);
  v234 = &v204 - v20;
  MEMORY[0x28223BE20](v21);
  v225 = (&v204 - v22);
  MEMORY[0x28223BE20](v23);
  v224 = (&v204 - v24);
  MEMORY[0x28223BE20](v25);
  v219 = (&v204 - v26);
  MEMORY[0x28223BE20](v27);
  v218 = (&v204 - v28);
  MEMORY[0x28223BE20](v29);
  v223 = &v204 - v30;
  MEMORY[0x28223BE20](v31);
  v221 = &v204 - v32;
  MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v34);
  v217 = a3;
  v37 = a3[1];
  v230 = a5;
  if (v37 < 1)
  {
    swift_bridgeObjectRetain_n();
    v39 = MEMORY[0x277D84F90];
LABEL_129:
    v37 = *v208;
    if (!*v208)
    {
      goto LABEL_168;
    }

    a4 = v39;
    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_162;
    }

    goto LABEL_131;
  }

  v204 = &v204 - v35;
  v205 = v36;
  swift_bridgeObjectRetain_n();
  v38 = 0;
  v39 = MEMORY[0x277D84F90];
  v207 = a4;
  v235 = v9;
LABEL_4:
  v211 = v39;
  if (v38 + 1 >= v37)
  {
    v86 = v38 + 1;
    goto LABEL_41;
  }

  v220 = v37;
  v40 = *v217;
  v41 = *(v216 + 72);
  v42 = *v217 + v41 * (v38 + 1);
  v43 = v38;
  v44 = v204;
  sub_219083D18(v42, v204, sub_218C3EEF4);
  v45 = v205;
  sub_219083D18(v40 + v41 * v43, v205, sub_218C3EEF4);
  v46 = v222;
  LODWORD(v226) = sub_219726C30(v44, v45, a5);
  v222 = v46;
  if (v46)
  {
    sub_21907C540(v45, sub_218C3EEF4);
    sub_21907C540(v44, sub_218C3EEF4);
    swift_bridgeObjectRelease_n();
LABEL_127:

    return;
  }

  sub_21907C540(v45, sub_218C3EEF4);
  sub_21907C540(v44, sub_218C3EEF4);
  v206 = v43;
  v37 = v43 + 2;
  v47 = v40 + v41 * v37;
  v48 = v41;
  v227 = v41;
  do
  {
    v9 = v235;
    if (v220 == v37)
    {
      v86 = v220;
      goto LABEL_27;
    }

    v50 = v221;
    sub_219083D18(v47, v221, sub_218C3EEF4);
    v231 = v42;
    sub_219083D18(v42, v223, sub_218C3EEF4);
    v51 = v50;
    v52 = v218;
    sub_219083D18(v51, v218, sub_218C3EEF4);
    v53 = *v52;
    v54 = [*v52 identifier];

    v55 = sub_219BF5414();
    v57 = v56;

    if (*(a5 + 16))
    {
      v58 = sub_21870F700(v55, v57);
      v60 = v59;

      if (v60)
      {
        v61 = *(*(a5 + 56) + 8 * v58);
        goto LABEL_15;
      }
    }

    else
    {
    }

    v61 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_15:
    v229 = v61;
    v62 = *(v9 + 48);
    v63 = sub_219BEDC04();
    v64 = *(*(v63 - 8) + 8);
    v64(v218 + v62, v63);
    v65 = v219;
    sub_219083D18(v223, v219, sub_218C3EEF4);
    v66 = *v65;
    v67 = [v66 identifier];

    v68 = sub_219BF5414();
    v70 = v69;

    v71 = v230;
    if (*(v230 + 16))
    {
      v72 = sub_21870F700(v68, v70);
      v74 = v73;

      if (v74)
      {
        v75 = *(*(v71 + 56) + 8 * v72);
        goto LABEL_20;
      }
    }

    else
    {
    }

    v75 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_20:
    v76 = v229;
    v64(v219 + *(v235 + 48), v63);
    if (v76 < v75)
    {
      v49 = 1;
    }

    else if (v75 >= v76)
    {
      v229 = sub_218C3EEF4;
      v77 = v224;
      sub_219083D18(v221, v224, sub_218C3EEF4);

      v78 = v235;
      v79 = *(v235 + 48);
      sub_219BEDBF4();
      v81 = v80;
      v64(v77 + v79, v63);
      v82 = v225;
      sub_219083D18(v223, v225, v229);

      v83 = *(v78 + 48);
      sub_219BEDBF4();
      v85 = v84;
      v64(v82 + v83, v63);
      v49 = v85 < v81;
    }

    else
    {
      v49 = 0;
    }

    sub_21907C540(v223, sub_218C3EEF4);
    sub_21907C540(v221, sub_218C3EEF4);
    ++v37;
    v48 = v227;
    v47 += v227;
    a5 = v230;
    v42 = v231 + v227;
  }

  while (((v226 ^ v49) & 1) == 0);
  v86 = v37 - 1;
  v9 = v235;
LABEL_27:
  a4 = v207;
  v38 = v206;
  if (v226)
  {
    if (v86 >= v206)
    {
      if (v206 < v86)
      {
        v87 = v86;
        v37 = v48 * (v86 - 1);
        v88 = v86 * v48;
        v89 = v206;
        v90 = v206 * v48;
        do
        {
          if (v89 != --v87)
          {
            v91 = *v217;
            if (!*v217)
            {
              goto LABEL_165;
            }

            sub_219083E54(v91 + v90, v210, sub_218C3EEF4);
            if (v90 < v37 || v91 + v90 >= (v91 + v88))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v90 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_219083E54(v210, v91 + v37, sub_218C3EEF4);
            v48 = v227;
          }

          ++v89;
          v37 -= v48;
          v88 -= v48;
          v90 += v48;
        }

        while (v89 < v87);
        a5 = v230;
        a4 = v207;
        v9 = v235;
        v38 = v206;
      }

      goto LABEL_41;
    }

LABEL_161:
    __break(1u);
LABEL_162:
    a4 = sub_218C81048(a4);
LABEL_131:
    v237 = a4;
    v192 = *(a4 + 2);
    if (v192 >= 2)
    {
      do
      {
        v193 = *v217;
        if (!*v217)
        {
          goto LABEL_166;
        }

        v194 = *&a4[16 * v192];
        v195 = a4;
        v196 = *&a4[16 * v192 + 24];
        v197 = *(v216 + 72);
        v198 = (v193 + v197 * v194);
        a4 = (v193 + v197 * *&a4[16 * v192 + 16]);
        v199 = (v193 + v197 * v196);
        v200 = v230;

        v201 = v198;
        v202 = v222;
        sub_21907CA58(v201, a4, v199, v37, v200);
        v222 = v202;
        if (v202)
        {
          break;
        }

        if (v196 < v194)
        {
          goto LABEL_155;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v195 = sub_218C81048(v195);
        }

        if (v192 - 2 >= *(v195 + 2))
        {
          goto LABEL_156;
        }

        v203 = &v195[16 * v192];
        *v203 = v194;
        *(v203 + 1) = v196;
        v237 = v195;
        sub_218C80FBC(v192 - 1);
        a4 = v237;
        v192 = *(v237 + 2);
      }

      while (v192 > 1);
    }

    swift_bridgeObjectRelease_n();
    return;
  }

LABEL_41:
  v92 = v217[1];
  if (v86 >= v92)
  {
    goto LABEL_50;
  }

  if (__OFSUB__(v86, v38))
  {
    goto LABEL_158;
  }

  if (v86 - v38 >= a4)
  {
    goto LABEL_50;
  }

  if (__OFADD__(v38, a4))
  {
    goto LABEL_159;
  }

  if (&a4[v38] >= v92)
  {
    v93 = v217[1];
  }

  else
  {
    v93 = &a4[v38];
  }

  if (v93 < v38)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  if (v86 == v93)
  {
LABEL_50:
    v94 = v86;
    if (v86 < v38)
    {
      goto LABEL_157;
    }

    goto LABEL_51;
  }

  v147 = *v217;
  v148 = *(v216 + 72);
  v149 = *v217 + v148 * (v86 - 1);
  v226 = -v148;
  v206 = v38;
  v150 = (v38 - v86);
  v227 = v147;
  v209 = v148;
  v151 = v147 + v86 * v148;
  v212 = v93;
  while (2)
  {
    v220 = v86;
    v213 = v151;
    v214 = v150;
    v152 = v150;
    v215 = v149;
    v153 = v149;
LABEL_104:
    v229 = v152;
    v154 = v234;
    sub_219083D18(v151, v234, sub_218C3EEF4);
    sub_219083D18(v153, v236, sub_218C3EEF4);
    v155 = v154;
    v156 = v232;
    sub_219083D18(v155, v232, sub_218C3EEF4);
    v157 = *v156;
    v158 = [*v156 identifier];

    v159 = sub_219BF5414();
    v161 = v160;

    if (*(a5 + 16))
    {
      v162 = sub_21870F700(v159, v161);
      v164 = v163;

      if (v164)
      {
        v165 = *(*(a5 + 56) + 8 * v162);
        goto LABEL_109;
      }
    }

    else
    {
    }

    v165 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_109:
    v231 = v165;
    v166 = *(v9 + 48);
    v167 = sub_219BEDC04();
    v37 = *(v167 - 8) + 8;
    v168 = *v37;
    (*v37)(v232 + v166, v167);
    v169 = v233;
    sub_219083D18(v236, v233, sub_218C3EEF4);
    v170 = *v169;
    v171 = [v170 identifier];

    v172 = sub_219BF5414();
    v174 = v173;

    a5 = v230;
    if (*(v230 + 16))
    {
      v175 = sub_21870F700(v172, v174);
      v176 = a5;
      v178 = v177;

      if (v178)
      {
        v179 = *(*(v176 + 56) + 8 * v175);
      }

      else
      {
        v179 = 0x7FFFFFFFFFFFFFFFLL;
      }

      a5 = v176;
      v9 = v235;
    }

    else
    {

      v179 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v168(v233 + *(v9 + 48), v167);
    if (v231 < v179)
    {
      sub_21907C540(v236, sub_218C3EEF4);
      sub_21907C540(v234, sub_218C3EEF4);
      goto LABEL_119;
    }

    if (v179 < v231)
    {
      a4 = sub_218C3EEF4;
      sub_21907C540(v236, sub_218C3EEF4);
      sub_21907C540(v234, sub_218C3EEF4);
LABEL_102:
      v86 = v220 + 1;
      v149 = v215 + v209;
      v150 = (v214 - 1);
      v151 = v213 + v209;
      v94 = v212;
      if (v220 + 1 != v212)
      {
        continue;
      }

      v38 = v206;
      if (v212 < v206)
      {
        goto LABEL_157;
      }

LABEL_51:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v39 = v211;
      }

      else
      {
        v39 = sub_2191F6B60(0, *(v211 + 2) + 1, 1, v211);
      }

      v37 = *(v39 + 2);
      v95 = *(v39 + 3);
      a4 = (v37 + 1);
      if (v37 >= v95 >> 1)
      {
        v39 = sub_2191F6B60((v95 > 1), v37 + 1, 1, v39);
      }

      *(v39 + 2) = a4;
      v96 = &v39[16 * v37];
      *(v96 + 4) = v38;
      *(v96 + 5) = v94;
      v212 = v94;
      v97 = *v208;
      if (!*v208)
      {
        goto LABEL_167;
      }

      if (v37)
      {
        while (2)
        {
          v98 = (a4 - 1);
          if (a4 >= 4)
          {
            v103 = &v39[16 * a4 + 32];
            v104 = *(v103 - 64);
            v105 = *(v103 - 56);
            v109 = __OFSUB__(v105, v104);
            v106 = v105 - v104;
            if (v109)
            {
              goto LABEL_144;
            }

            v108 = *(v103 - 48);
            v107 = *(v103 - 40);
            v109 = __OFSUB__(v107, v108);
            v101 = v107 - v108;
            v102 = v109;
            if (v109)
            {
              goto LABEL_145;
            }

            v110 = &v39[16 * a4];
            v112 = *v110;
            v111 = *(v110 + 1);
            v109 = __OFSUB__(v111, v112);
            v113 = v111 - v112;
            if (v109)
            {
              goto LABEL_147;
            }

            v109 = __OFADD__(v101, v113);
            v114 = v101 + v113;
            if (v109)
            {
              goto LABEL_150;
            }

            if (v114 >= v106)
            {
              v132 = &v39[16 * v98 + 32];
              v134 = *v132;
              v133 = *(v132 + 1);
              v109 = __OFSUB__(v133, v134);
              v135 = v133 - v134;
              if (v109)
              {
                goto LABEL_154;
              }

              if (v101 < v135)
              {
                v98 = (a4 - 2);
              }
            }

            else
            {
LABEL_70:
              if (v102)
              {
                goto LABEL_146;
              }

              v115 = &v39[16 * a4];
              v117 = *v115;
              v116 = *(v115 + 1);
              v118 = __OFSUB__(v116, v117);
              v119 = v116 - v117;
              v120 = v118;
              if (v118)
              {
                goto LABEL_149;
              }

              v121 = &v39[16 * v98 + 32];
              v123 = *v121;
              v122 = *(v121 + 1);
              v109 = __OFSUB__(v122, v123);
              v124 = v122 - v123;
              if (v109)
              {
                goto LABEL_152;
              }

              if (__OFADD__(v119, v124))
              {
                goto LABEL_153;
              }

              if (v119 + v124 < v101)
              {
                goto LABEL_84;
              }

              if (v101 < v124)
              {
                v98 = (a4 - 2);
              }
            }
          }

          else
          {
            if (a4 == 3)
            {
              v99 = *(v39 + 4);
              v100 = *(v39 + 5);
              v109 = __OFSUB__(v100, v99);
              v101 = v100 - v99;
              v102 = v109;
              goto LABEL_70;
            }

            v125 = &v39[16 * a4];
            v127 = *v125;
            v126 = *(v125 + 1);
            v109 = __OFSUB__(v126, v127);
            v119 = v126 - v127;
            v120 = v109;
LABEL_84:
            if (v120)
            {
              goto LABEL_148;
            }

            v128 = &v39[16 * v98];
            v130 = *(v128 + 4);
            v129 = *(v128 + 5);
            v109 = __OFSUB__(v129, v130);
            v131 = v129 - v130;
            if (v109)
            {
              goto LABEL_151;
            }

            if (v131 < v119)
            {
              break;
            }
          }

          v37 = v98 - 1;
          if (v98 - 1 >= a4)
          {
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
            goto LABEL_160;
          }

          v136 = *v217;
          if (!*v217)
          {
            goto LABEL_164;
          }

          v137 = v39;
          v138 = *&v39[16 * v37 + 32];
          v139 = *&v39[16 * v98 + 40];
          v140 = *(v216 + 72);
          v141 = (v136 + v140 * v138);
          a4 = (v136 + v140 * *&v39[16 * v98 + 32]);
          v142 = (v136 + v140 * v139);
          v143 = v230;

          v144 = v141;
          v145 = v222;
          sub_21907CA58(v144, a4, v142, v97, v143);
          v222 = v145;
          if (v145)
          {
            swift_bridgeObjectRelease_n();
            goto LABEL_127;
          }

          if (v139 < v138)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = sub_218C81048(v137);
          }

          if (v37 >= *(v137 + 2))
          {
            goto LABEL_143;
          }

          v146 = &v137[16 * v37];
          *(v146 + 4) = v138;
          *(v146 + 5) = v139;
          v237 = v137;
          sub_218C80FBC(v98);
          v39 = v237;
          a4 = *(v237 + 2);
          a5 = v230;
          v9 = v235;
          if (a4 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v37 = v217[1];
      v38 = v212;
      a4 = v207;
      if (v212 >= v37)
      {
        goto LABEL_129;
      }

      goto LABEL_4;
    }

    break;
  }

  v180 = v224;
  sub_219083D18(v234, v224, sub_218C3EEF4);

  v181 = *(v235 + 48);
  sub_219BEDBF4();
  v183 = v182;
  v231 = v151;
  v37 = v168;
  v168(v180 + v181, v167);
  v184 = v236;
  v185 = v225;
  a5 = v230;
  sub_219083D18(v236, v225, sub_218C3EEF4);

  v186 = *(v235 + 48);
  sub_219BEDBF4();
  v188 = v187;
  v189 = v185 + v186;
  v9 = v235;
  (v37)(v189, v167);
  v151 = v231;
  a4 = sub_218C3EEF4;
  sub_21907C540(v184, sub_218C3EEF4);
  sub_21907C540(v234, sub_218C3EEF4);
  if (v188 >= v183)
  {
    goto LABEL_102;
  }

LABEL_119:
  v190 = v229;
  if (v227)
  {
    a4 = sub_218C3EEF4;
    v37 = v228;
    sub_219083E54(v151, v228, sub_218C3EEF4);
    swift_arrayInitWithTakeFrontToBack();
    sub_219083E54(v37, v153, sub_218C3EEF4);
    v153 += v226;
    v151 += v226;
    v191 = __CFADD__(v190, 1);
    v152 = (v190 + 1);
    if (v191)
    {
      goto LABEL_102;
    }

    goto LABEL_104;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_164:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_165:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_166:

  __break(1u);
LABEL_167:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_168:
  swift_bridgeObjectRelease_n();
  __break(1u);
}

void sub_21907E28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  sub_218C3EEF4(0);
  v89 = v10;
  MEMORY[0x28223BE20](v10);
  v83 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = (&v72 - v13);
  MEMORY[0x28223BE20](v14);
  v79 = (&v72 - v15);
  MEMORY[0x28223BE20](v16);
  v88 = (&v72 - v17);
  MEMORY[0x28223BE20](v18);
  v87 = (&v72 - v19);
  MEMORY[0x28223BE20](v20);
  v91 = &v72 - v21;
  MEMORY[0x28223BE20](v22);
  v90 = &v72 - v24;
  v74 = a2;
  if (a3 != a2)
  {
    v25 = *a4;
    v26 = *(v23 + 72);
    v27 = *a4 + v26 * (a3 - 1);
    v81 = -v26;
    v82 = v25;
    v28 = a1 - a3;
    v73 = v26;
    v29 = v25 + v26 * a3;
    v84 = a5;
LABEL_6:
    v77 = v27;
    v78 = a3;
    v75 = v29;
    v76 = v28;
    v30 = v28;
    v31 = v89;
    while (1)
    {
      v32 = v90;
      sub_219083D18(v29, v90, sub_218C3EEF4);
      sub_219083D18(v27, v91, sub_218C3EEF4);
      v33 = v32;
      v34 = v87;
      sub_219083D18(v33, v87, sub_218C3EEF4);
      v35 = *v34;
      v36 = [*v34 identifier];

      v37 = sub_219BF5414();
      v39 = v38;

      v40 = *(a5 + 16);
      v85 = v30;
      if (v40)
      {
        v41 = sub_21870F700(v37, v39);
        v43 = v42;

        if (v43)
        {
          v44 = *(*(a5 + 56) + 8 * v41);
          goto LABEL_12;
        }
      }

      else
      {
      }

      v44 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_12:
      v86 = v44;
      v45 = *(v31 + 48);
      v46 = sub_219BEDC04();
      v47 = (*(v46 - 8) + 8);
      v48 = *v47;
      (*v47)(v87 + v45, v46);
      v49 = v88;
      sub_219083D18(v91, v88, sub_218C3EEF4);
      v50 = *v49;
      v51 = [v50 identifier];

      v52 = sub_219BF5414();
      v54 = v53;

      a5 = v84;
      if (*(v84 + 16))
      {
        v55 = sub_21870F700(v52, v54);
        v57 = v56;

        if (v57)
        {
          v58 = *(*(a5 + 56) + 8 * v55);
          goto LABEL_17;
        }
      }

      else
      {
      }

      v58 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_17:
      v31 = v89;
      v48(v88 + *(v89 + 48), v46);
      if (v86 >= v58)
      {
        if (v58 < v86)
        {
          sub_21907C540(v91, sub_218C3EEF4);
          sub_21907C540(v90, sub_218C3EEF4);
LABEL_5:
          a3 = v78 + 1;
          v27 = v77 + v73;
          v28 = v76 - 1;
          v29 = v75 + v73;
          if (v78 + 1 == v74)
          {
            return;
          }

          goto LABEL_6;
        }

        v60 = v79;
        sub_219083D18(v90, v79, sub_218C3EEF4);

        v61 = *(v89 + 48);
        sub_219BEDBF4();
        v63 = v62;
        v64 = v60 + v61;
        v31 = v89;
        v48(v64, v46);
        v86 = v47;
        v65 = v91;
        v66 = v80;
        sub_219083D18(v91, v80, sub_218C3EEF4);

        v67 = *(v31 + 48);
        sub_219BEDBF4();
        v69 = v68;
        a5 = v84;
        v48(v66 + v67, v46);
        sub_21907C540(v65, sub_218C3EEF4);
        sub_21907C540(v90, sub_218C3EEF4);
        v59 = v85;
        if (v69 >= v63)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_21907C540(v91, sub_218C3EEF4);
        sub_21907C540(v90, sub_218C3EEF4);
        v59 = v85;
      }

      if (!v82)
      {
        __break(1u);
        return;
      }

      v70 = v83;
      sub_219083E54(v29, v83, sub_218C3EEF4);
      swift_arrayInitWithTakeFrontToBack();
      sub_219083E54(v70, v27, sub_218C3EEF4);
      v27 += v81;
      v29 += v81;
      v71 = __CFADD__(v59, 1);
      v30 = v59 + 1;
      if (v71)
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_21907E84C(uint64_t *a1, int64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  v5 = sub_219BF7884();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_218C3EEF4(0);
        v8 = sub_219BF5A34();
        *(v8 + 16) = v7;
      }

      sub_218C3EEF4(0);
      v10[0] = v8 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80));
      v10[1] = v7;

      sub_21907D09C(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_21907E28C(0, v4, 1, a1, a2);
  }

  swift_bridgeObjectRelease_n();
}

uint64_t sub_21907E9D0(void **a1, int64_t a2)
{
  sub_218C3EEF4(0);
  v5 = *(v4 - 8);
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_218C81288(v6);
  }

  v7 = v6[2];
  v9[0] = v6 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v9[1] = v7;

  sub_21907E84C(v9, a2);

  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

void *sub_21907EAB8(unint64_t a1, void *a2, uint64_t a3)
{
  v20 = a2;
  v19 = sub_219BEDC04();
  v5 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() standardUserDefaults];
  v9 = [v8 BOOLForKey_];

  if (!v9)
  {

    return a3;
  }

  if (a1 >> 62)
  {
    v10 = sub_219BF7214();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  a3 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return a3;
  }

  v21 = MEMORY[0x277D84F90];
  result = sub_218C34908(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    a3 = v21;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x21CECE0F0](v12, a1);
      }

      else
      {
        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = [v20 objectForKey_];
      sub_219BEDBD4();

      v21 = a3;
      v17 = *(a3 + 16);
      v16 = *(a3 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_218C34908((v16 > 1), v17 + 1, 1);
        a3 = v21;
      }

      ++v12;
      *(a3 + 16) = v17 + 1;
      (*(v5 + 32))(a3 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, v7, v19);
    }

    while (v10 != v12);
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_21907ED0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[34] = a5;
  v6[35] = v5;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  sub_219083C3C(0);
  v6[36] = v7;
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  sub_218C3EEF4(0);
  v6[39] = v8;
  v6[40] = *(v8 - 8);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v9 = MEMORY[0x277D83D88];
  sub_2186D8B7C(0, qword_280E9C040, type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result, MEMORY[0x277D83D88]);
  v6[46] = swift_task_alloc();
  v10 = type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result(0);
  v6[47] = v10;
  v6[48] = *(v10 - 8);
  v6[49] = swift_task_alloc();
  v11 = sub_219BEFF54();
  v6[50] = v11;
  v6[51] = *(v11 - 8);
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v12 = sub_219BF0BD4();
  v6[54] = v12;
  v6[55] = *(v12 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  sub_2186D8B7C(0, &unk_280E90FA0, MEMORY[0x277D32C48], v9);
  v6[58] = swift_task_alloc();
  v13 = sub_219BF02F4();
  v6[59] = v13;
  v6[60] = *(v13 - 8);
  v6[61] = swift_task_alloc();
  v14 = sub_219BEE6F4();
  v6[62] = v14;
  v6[63] = *(v14 - 8);
  v6[64] = swift_task_alloc();
  v15 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs(0);
  v6[65] = v15;
  v6[66] = *(v15 - 8);
  v6[67] = swift_task_alloc();
  sub_2186D8B7C(0, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, v9);
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v6[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21907F19C, 0, 0);
}

uint64_t sub_21907F19C()
{
  v1 = v0[71];
  v2 = v0[70];
  v3 = v0[66];
  v4 = v0[65];
  sub_219078CE0(v1);
  sub_219083BBC(v1, v2, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  v54 = *(v3 + 48);
  v5 = v54(v2, 1, v4);
  v6 = v0[70];
  v7 = MEMORY[0x277D837D0];
  if (v5 == 1)
  {
    sub_219083A70(v6, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v8 = qword_280F616D8;
    v9 = sub_219BF6214();
    sub_219BE5314("For You emitter selecting headlines without clustering knobs", 60, 2, &dword_2186C1000, v8, v9, MEMORY[0x277D84F90]);
  }

  else
  {
    sub_219083E54(v6, v0[67], type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v10 = v0[67];
    v8 = qword_280F616D8;
    sub_2186F20D4(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09BA0;
    v0[19] = 0;
    v0[20] = 0xE000000000000000;
    sub_219BF7484();
    v12 = v0[19];
    v13 = v0[20];
    *(v11 + 56) = v7;
    *(v11 + 64) = sub_2186FC3BC();
    *(v11 + 32) = v12;
    *(v11 + 40) = v13;
    v14 = sub_219BF6214();
    sub_219BE5314("For You emitter selecting headlines with clustering knobs %{public}@", 68, 2, &dword_2186C1000, v8, v14, v11);

    sub_21907C540(v10, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  }

  v53 = v8;
  v0[72] = v8;
  v15 = v0[71];
  v16 = v0[69];
  v17 = v0[65];
  v19 = v0[63];
  v18 = v0[64];
  v20 = v0[62];
  sub_218718690(v0[35] + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_personalizationService, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v21 = *MEMORY[0x277D32940];
  v22 = sub_219BEFBD4();
  (*(*(v22 - 8) + 104))(v18, v21, v22);
  (*(v19 + 104))(v18, *MEMORY[0x277D320E8], v20);
  type metadata accessor for ForYouTodayFeedGroupKnobs(0);
  sub_219083BBC(v15, v16, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  v23 = v54(v16, 1, v17);
  v24 = v0[69];
  v25 = v0[60];
  v27 = v0[58];
  v26 = v0[59];
  if (v23 == 1)
  {
    sub_219083A70(v0[69], qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    (*(v25 + 56))(v27, 1, 1, v26);
    sub_219BF02E4();
    if ((*(v25 + 48))(v27, 1, v26) != 1)
    {
      sub_219083A70(v0[58], &unk_280E90FA0, MEMORY[0x277D32C48]);
    }
  }

  else
  {
    v28 = v0[57];
    v51 = v0[61];
    v29 = v0[54];
    v30 = v0[55];
    sub_219BEF134();
    sub_2193A6790(v28, v27);
    (*(v30 + 8))(v28, v29);
    sub_21907C540(v24, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    (*(v25 + 56))(v27, 0, 1, v26);
    (*(v25 + 32))(v51, v27, v26);
  }

  v31 = sub_219BEFFD4();
  v0[73] = v31;
  v52 = v31;
  v32 = v0[71];
  v33 = v0[68];
  v34 = v0[65];
  v35 = v0[63];
  v36 = v0[64];
  v37 = v0[62];
  (*(v0[60] + 8))(v0[61], v0[59]);
  (*(v35 + 8))(v36, v37);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_219083BBC(v32, v33, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  v38 = v54(v33, 1, v34);
  v39 = v0[68];
  if (v38 == 1)
  {
    sub_219083A70(v0[68], qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    v40 = v53;
LABEL_19:
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v46 = v0[71];
    v47 = sub_219BF6214();
    sub_219BE5314("Local in For You is disabled", 28, 2, &dword_2186C1000, v40, v47, MEMORY[0x277D84F90]);
    sub_219083A70(v46, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);

    v48 = v0[1];

    return v48(v52, 0, 0, 0);
  }

  v41 = v0[52];
  v42 = v0[53];
  v44 = v0[50];
  v43 = v0[51];
  (*(v43 + 16))(v41, v39 + *(v0[65] + 20), v44);
  sub_21907C540(v39, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  (*(v43 + 32))(v42, v41, v44);
  v40 = v53;
  if ((sub_219BEFF44() & 1) == 0)
  {
    (*(v0[51] + 8))(v0[53], v0[50]);
    goto LABEL_19;
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v45 = sub_219BF6214();
  sub_219BE5314("Local in For You is enabled", 27, 2, &dword_2186C1000, v53, v45, MEMORY[0x277D84F90]);
  sub_219BEF164();
  v0[74] = v0[22];
  v50 = swift_task_alloc();
  v0[75] = v50;
  *v50 = v0;
  v50[1] = sub_21907FE64;

  return sub_21907977C();
}

uint64_t sub_21907FE64(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[76] = a1;
  v4[77] = a2;
  v4[78] = v2;

  if (v2)
  {
    v5 = sub_219081FC4;
  }

  else
  {

    v5 = sub_21907FF88;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21907FF88(__n128 a1)
{
  v2 = v1[77];
  if (v2 >> 62)
  {
LABEL_21:
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }

LABEL_22:
    v26 = v1[72];
    v27 = v1[71];
    v28 = v1[53];
    v29 = v1[50];
    v30 = v1[51];

    v31 = sub_219BF6214();
    sub_219BE5314("Local in For You found no headlines to choose from", 50, 2, &dword_2186C1000, v26, v31, MEMORY[0x277D84F90]);
    swift_unknownObjectRelease();
    sub_219083A70(v27, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    (*(v30 + 8))(v28, v29);
    v36 = v1[73];

    v32 = v1[1];

    return v32(v36, 0, 0, 0);
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_22;
  }

LABEL_3:
  sub_219BEF0B4();
  v3 = *(v1[24] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData);

  v4 = *(v3 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);

  v5 = -1;
  v6 = -1 << *(v4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v4 + 64);
  v8 = (63 - v6) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    if (!v7)
    {
      break;
    }

LABEL_10:
    v7 &= v7 - 1;
    v12 = [swift_unknownObjectRetain_n() clusterID];
    if (v12)
    {
      v13 = v12;
      v35 = sub_219BF5414();
      v34 = v14;

      swift_unknownObjectRelease_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_218840D24(0, *(v10 + 2) + 1, 1, v10);
      }

      v16 = *(v10 + 2);
      v15 = *(v10 + 3);
      if (v16 >= v15 >> 1)
      {
        v10 = sub_218840D24((v15 > 1), v16 + 1, 1, v10);
      }

      *(v10 + 2) = v16 + 1;
      v17 = &v10[16 * v16];
      *(v17 + 4) = v35;
      *(v17 + 5) = v34;
    }

    else
    {
      swift_unknownObjectRelease_n();
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_21;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v11;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  v18 = v1[77];
  v20 = v1[34];
  v19 = v1[35];
  v21 = v1[33];

  v22 = sub_218845F78(v10);

  v23 = *(v19 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_cloudContext);
  v1[79] = v23;
  sub_219BEF0B4();
  sub_219077F00(v18, v20, v22, v21, v23, v1[25], 0xD000000000000010, 0x8000000219D08F90);
  v1[80] = v24;

  __swift_project_boxed_opaque_existential_1((v19 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_sportsGraphManager), *(v19 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_sportsGraphManager + 24));
  v1[81] = sub_219BF4434();
  v25 = swift_task_alloc();
  v1[82] = v25;
  *v25 = v1;
  v25[1] = sub_2190804CC;

  return MEMORY[0x2821D23D8](v1 + 26);
}

uint64_t sub_2190804CC()
{
  *(*v1 + 664) = v0;

  if (v0)
  {

    v2 = sub_219082280;
  }

  else
  {
    v2 = sub_21908061C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_21908061C()
{
  v241 = v0;
  v213 = sub_219079C88(*(v0 + 248));
  sub_219BEF0B4();
  v1 = *(*(v0 + 216) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  if (([v1 respondsToSelector_] & 1) == 0)
  {
LABEL_141:
    __break(1u);
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  v2 = [v1 deprecatedSportsTopicTagIds];
  swift_unknownObjectRelease();
  if (v2)
  {
    sub_219BF5924();
  }

  v3 = *(v0 + 632);
  sub_219BEF134();
  v236 = [v3 paidAccessChecker];
  if (!v236)
  {
    goto LABEL_142;
  }

  v4 = *(v0 + 632);
  v5 = *(v0 + 256);
  v6 = [objc_msgSend(v4 appConfigurationManager)];
  swift_unknownObjectRelease();
  if (([v6 respondsToSelector_] & 1) == 0)
  {
LABEL_143:

    __break(1u);
    return;
  }

  v7 = [v6 localInForYouTopicTagAllowList];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_2186F8598(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v212 = sub_219BF5214();
  }

  else
  {
    v212 = sub_2194B11A4(MEMORY[0x277D84F90]);
  }

  v8 = MEMORY[0x277D837D0];
  v9 = *(v0 + 664);
  v10 = *(v0 + 608);
  v11 = sub_219BEFED4();
  v12 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v13 = [v10 identifier];
  v14 = sub_219BF5414();
  v16 = v15;

  *(v0 + 136) = v14;
  *(v0 + 144) = v16;
  v17 = swift_task_alloc();
  *(v17 + 16) = v0 + 136;
  LOBYTE(v14) = sub_2186D128C(sub_2186D1338, v17, v11);
  v211 = v9;

  v238 = v0;
  if (v14)
  {
    v18 = *(v0 + 608);
    v19 = *(v0 + 448);
    v20 = *(v0 + 440);
    v21 = *(v0 + 432);
    v22 = *(v0 + 256);

    v23 = [v18 identifier];
    v24 = sub_219BF5414();
    v26 = v25;

    sub_219083D80();
    v27 = swift_allocError();
    *v28 = v24;
    v28[1] = v26;
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v20 + 8))(v19, v21);

    v29 = *(v0 + 576);
    v30 = *(v0 + 568);
    v31 = *(v0 + 424);
    v32 = *(v0 + 408);
    v33 = *(v0 + 400);
    v34 = sub_219BF61F4();
    sub_2186F20D4(0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_219C09BA0;
    *(v0 + 120) = 0;
    *(v0 + 128) = 0xE000000000000000;
    *(v0 + 184) = v27;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    v36 = *(v0 + 120);
    v37 = v238[16];
    *(v35 + 56) = MEMORY[0x277D837D0];
    *(v35 + 64) = sub_2186FC3BC();
    *(v35 + 32) = v36;
    *(v35 + 40) = v37;
    sub_219BE5314("Local in For You failed with error %{public}@, not injecting local headline", 75, 2, &dword_2186C1000, v29, v34, v35);

    sub_219083A70(v30, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    (*(v32 + 8))(v31, v33);
    v8 = v238;
LABEL_11:
    v233 = 0;
    v230 = 0;
    v237 = 0;
    v226 = v8[73];
LABEL_12:

    v38 = v8[1];

    v38(v226, v233, v230, v237);
    return;
  }

  if (qword_280E8D850 != -1)
  {
    goto LABEL_135;
  }

LABEL_16:
  v39 = *(v0 + 640);
  v40 = *(v0 + 608);
  v215 = qword_280F61740;
  sub_2186F20D4(0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_219C09EC0;
  v42 = [v40 v12[278]];
  v43 = sub_219BF5414();
  v45 = v44;

  *(v41 + 56) = v8;
  v214 = sub_2186FC3BC();
  *(v41 + 64) = v214;
  *(v41 + 32) = v43;
  *(v41 + 40) = v45;
  if (v39 >> 62)
  {
    v46 = sub_219BF7214();
  }

  else
  {
    v46 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v47 = *(v0 + 608);
  v48 = *(v0 + 448);
  v49 = *(v0 + 424);
  v50 = MEMORY[0x277D83C10];
  *(v41 + 96) = MEMORY[0x277D83B88];
  *(v41 + 104) = v50;
  *(v41 + 72) = v46;
  v51 = sub_219BF6214();
  sub_219BE5314("See For You local news enabled, attempting to select local headline from %{public}@ with %lu headlines", 102, 2, &dword_2186C1000, v215, v51, v41);

  v52 = sub_219726870(v49, v48, v47);
  v53 = v52;
  if (!(v39 >> 62))
  {
    v54 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v210 = v52;
    if (!v54)
    {
      goto LABEL_82;
    }

    goto LABEL_20;
  }

  v54 = sub_219BF7214();
  v210 = v53;
  if (v54)
  {
LABEL_20:
    v55 = 0;
    v227 = v39 & 0xFFFFFFFFFFFFFF8;
    v231 = v39 & 0xC000000000000001;
    v221 = *(v0 + 640) + 32;
    v56 = MEMORY[0x277D84F90];
    v57 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v217 = *(v0 + 320);
    v223 = v54;
    while (1)
    {
      if (v231)
      {
        v65 = MEMORY[0x21CECE0F0](v55, *(v0 + 640));
      }

      else
      {
        if (v55 >= *(v227 + 16))
        {
          goto LABEL_131;
        }

        v65 = *(v221 + 8 * v55);
      }

      v66 = v65;
      if (__OFADD__(v55++, 1))
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
LABEL_135:
        swift_once();
        goto LABEL_16;
      }

      v68 = [v65 isPaid];
      if ([v66 respondsToSelector_])
      {
        v69 = [v66 v57[415]];
      }

      else
      {
        v69 = 0;
      }

      v70 = [v66 publisherID];
      if (v70)
      {
        v71 = v70;
        v234 = sub_219BF5414();
        v12 = v72;

        if (!v68)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v234 = 0;
        v12 = 0;
        if (!v68)
        {
LABEL_46:
          if ((v69 & 1) == 0)
          {

LABEL_75:
            v100 = *(v0 + 352);
            v101 = *(v0 + 360);
            v102 = *(v0 + 256);
            *v100 = v66;
            v103 = v66;
            v104 = [v102 objectForKey_];
            sub_219BEDBD4();

            sub_219083E54(v100, v101, sub_218C3EEF4);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v56 = sub_2191F9C2C(0, v56[2] + 1, 1, v56);
            }

            v64 = v223;
            v57 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
            v106 = v56[2];
            v105 = v56[3];
            if (v106 >= v105 >> 1)
            {
              v56 = sub_2191F9C2C((v105 > 1), v106 + 1, 1, v56);
            }

            v107 = *(v0 + 360);
            v56[2] = v106 + 1;
            sub_219083E54(v107, v56 + ((*(v217 + 80) + 32) & ~*(v217 + 80)) + *(v217 + 72) * v106, sub_218C3EEF4);
            goto LABEL_22;
          }

          goto LABEL_47;
        }
      }

      v73 = [v236 purchaseProvider];
      if (v12)
      {
        v219 = v56;
        v74 = [v73 purchasedTagIDs];
        v75 = sub_219BF5D44();

        if (*(v75 + 16))
        {
          sub_219BF7AA4();
          sub_219BF5524();
          v76 = sub_219BF7AE4();
          v77 = -1 << *(v75 + 32);
          v78 = v76 & ~v77;
          if ((*(v75 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78))
          {
            v79 = ~v77;
            while (1)
            {
              v80 = (*(v75 + 48) + 16 * v78);
              v81 = *v80 == v234 && v12 == v80[1];
              if (v81 || (sub_219BF78F4() & 1) != 0)
              {
                break;
              }

              v78 = (v78 + 1) & v79;
              if (((*(v75 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
              {
                goto LABEL_42;
              }
            }

            swift_unknownObjectRelease();

            v0 = v238;
            v8 = MEMORY[0x277D837D0];
            v56 = v219;
            goto LABEL_75;
          }
        }

LABEL_42:

        v0 = v238;
        v8 = MEMORY[0x277D837D0];
        v56 = v219;
      }

      swift_unknownObjectRelease();
      if (!v69)
      {
LABEL_67:

        goto LABEL_68;
      }

LABEL_47:
      if (!v12)
      {
        goto LABEL_68;
      }

      v82 = [objc_msgSend(v236 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      if (objc_getAssociatedObject(v82, v82 + 1))
      {
        sub_219BF70B4();
        swift_unknownObjectRelease();
      }

      else
      {
        v239 = 0u;
        v240 = 0u;
      }

      v83 = v239;
      *(v0 + 72) = v240;
      *(v0 + 56) = v83;
      if (!*(v0 + 80))
      {
        sub_219083CA8(v0 + 56, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8);
LABEL_57:
        v84 = 0;
        v86 = 0;
        goto LABEL_58;
      }

      sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_57;
      }

      v84 = *(v0 + 232);
      v85 = [v84 integerValue];
      if (v85 == -1)
      {

        goto LABEL_74;
      }

      v86 = v85;
LABEL_58:
      if (objc_getAssociatedObject(v82, ~v86))
      {
        sub_219BF70B4();
        swift_unknownObjectRelease();
      }

      else
      {
        v239 = 0u;
        v240 = 0u;
      }

      v87 = v239;
      *(v0 + 104) = v240;
      *(v0 + 88) = v87;
      if (!*(v0 + 112))
      {
        sub_219083CA8(v0 + 88, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8);
LABEL_66:

        if ((v86 & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_74;
      }

      sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_66;
      }

      v88 = *(v0 + 224);
      v89 = v56;
      v90 = [v88 integerValue];

      v91 = v90 ^ v86;
      v56 = v89;
      v8 = MEMORY[0x277D837D0];
      if ((v91 & 1) == 0)
      {
        goto LABEL_67;
      }

LABEL_74:
      v96 = [objc_msgSend(v236 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      v97 = [v96 bundleChannelIDs];

      v98 = sub_219BF53D4();
      v99 = [v97 containsObject_];

      if (v99)
      {
        goto LABEL_75;
      }

LABEL_68:
      if ([v66 hasSourceChannelID])
      {
        v92 = [objc_msgSend(v236 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        v93 = [v66 sourceChannelID];
        if (!v93)
        {
          goto LABEL_140;
        }

        v94 = v93;
        v95 = [v92 containsTagID_];

        if (v95)
        {
          goto LABEL_75;
        }
      }

      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_219C09BA0;
      v59 = [v66 identifier];
      v60 = sub_219BF5414();
      v62 = v61;

      *(v58 + 56) = v8;
      *(v58 + 64) = v214;
      *(v58 + 32) = v60;
      *(v58 + 40) = v62;
      v63 = sub_219BF6214();
      sub_219BE5314("Ignoring local headline %{public}@ because it is a non-News+ headline the user doesn't have access to it", 104, 2, &dword_2186C1000, v215, v63, v58);

      v64 = v223;
      v57 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
LABEL_22:
      if (v55 == v64)
      {
        goto LABEL_83;
      }
    }
  }

LABEL_82:
  v56 = MEMORY[0x277D84F90];
LABEL_83:
  *&v239 = v56;

  sub_21907E9D0(&v239, v210);
  if (!v211)
  {
    v109 = *(v0 + 640);
    v8 = *(v0 + 584);
    v110 = *(v0 + 448);
    v111 = *(v0 + 424);
    swift_bridgeObjectRelease_n();

    v232 = v239;
    v235 = sub_219726F4C(v111, v110, v8, v109);
    v12 = v8[2];
    if (v12)
    {
      v112 = 0;
      v113 = *(v0 + 288);
      v114 = v12 - 1;
      v115 = MEMORY[0x277D84F90];
LABEL_89:
      v116 = v112;
      while (v116 < v8[2])
      {
        v117 = v238[73];
        v118 = v238[38];
        v119 = sub_219BEDC04();
        v120 = *(v119 - 8);
        v112 = (v116 + 1);
        v121 = *(v120 + 16);
        v122 = v117 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v116;
        v0 = *(v113 + 48);
        *v118 = v116;
        v121(v118 + v0, v122, v119);
        if (v235 != v116)
        {
          v228 = v114;
          v123 = v238[38];
          v124 = sub_219BEDBA4();
          v126 = v125;
          sub_21907C540(v123, sub_219083C3C);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = sub_218840D24(0, *(v115 + 2) + 1, 1, v115);
          }

          v0 = *(v115 + 2);
          v127 = *(v115 + 3);
          if (v0 >= v127 >> 1)
          {
            v115 = sub_218840D24((v127 > 1), v0 + 1, 1, v115);
          }

          *(v115 + 2) = v0 + 1;
          v128 = &v115[16 * v0];
          *(v128 + 4) = v124;
          *(v128 + 5) = v126;
          v114 = v228;
          if (v228 != v116)
          {
            goto LABEL_89;
          }

          goto LABEL_101;
        }

        sub_21907C540(v238[38], sub_219083C3C);
        v116 = (v116 + 1);
        if (v12 == v112)
        {
          goto LABEL_101;
        }
      }

      goto LABEL_132;
    }

    v115 = MEMORY[0x277D84F90];
LABEL_101:
    v229 = sub_218845F78(v115);

    if (v12)
    {
      v129 = 0;
      v130 = v238[36];
      v131 = MEMORY[0x277D84F90];
LABEL_103:
      v132 = v129;
      while (v132 < v8[2])
      {
        v133 = v238[73];
        v134 = v238[37];
        v135 = sub_219BEDC04();
        v136 = *(v135 - 8);
        v137 = *(v136 + 16);
        v138 = v133 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v132;
        v0 = *(v130 + 48);
        *v134 = v132;
        v137(&v134[v0], v138, v135);
        if (v235 != v132)
        {
          v139 = sub_219BEDBE4();
          if ([v139 respondsToSelector_])
          {
            v140 = [v139 clusterID];
            swift_unknownObjectRelease();
            if (v140)
            {
              v141 = v238[37];
              v0 = sub_219BF5414();
              v224 = v142;

              sub_21907C540(v141, sub_219083C3C);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v131 = sub_218840D24(0, *(v131 + 2) + 1, 1, v131);
              }

              v144 = *(v131 + 2);
              v143 = *(v131 + 3);
              if (v144 >= v143 >> 1)
              {
                v131 = sub_218840D24((v143 > 1), v144 + 1, 1, v131);
              }

              v129 = (v132 + 1);
              *(v131 + 2) = v144 + 1;
              v145 = &v131[16 * v144];
              *(v145 + 4) = v0;
              *(v145 + 5) = v224;
              if ((v12 - 1) != v132)
              {
                goto LABEL_103;
              }

              goto LABEL_117;
            }
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        v132 = (v132 + 1);
        sub_21907C540(v238[37], sub_219083C3C);
        if (v12 == v132)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_133;
    }

    v131 = MEMORY[0x277D84F90];
LABEL_117:
    v8 = v238;
    v146 = v238[76];
    v147 = v238[56];
    v148 = v238[53];
    v225 = sub_218845F78(v131);

    sub_219BEFEE4();
    v218 = sub_2197270D0(v147, v149);

    v150 = sub_219727238(v212, v146);
    v222 = v151;
    v152 = sub_2197274BC(v148, v146, v147);
    v220 = v153;
    v154 = v232;
    v155 = *(v232 + 16);
    if (v155)
    {
      v12 = v152;
      v156 = 0;
      v157 = v238[40];
      v216 = v238[39];
      while (v156 < *(v154 + 16))
      {
        v158 = v238[76];
        v159 = v238[56];
        v0 = v238[53];
        v160 = v238[42];
        sub_219083D18(v154 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v156, v160, sub_218C3EEF4);
        if (sub_219727CD0(*v160, v160 + *(v216 + 48), v213, v218, v236, v0, v158, v159, v150, v222, v12, v220, v229, v225))
        {
          v165 = v238[76];
          v167 = v238[47];
          v166 = v238[48];
          v168 = v238[46];
          v170 = v238[42];
          v169 = v238[43];
          v171 = v238[41];

          swift_unknownObjectRelease();

          sub_219083E54(v170, v169, sub_218C3EEF4);
          sub_219083E54(v169, v171, sub_218C3EEF4);

          v172 = *(v216 + 48);
          *v168 = v165;
          *(v168 + 1) = v235;
          v173 = *(v167 + 24);
          v174 = sub_219BEDC04();
          (*(*(v174 - 8) + 32))(&v168[v173], v171 + v172, v174);
          (*(v166 + 56))(v168, 0, 1, v167);
          swift_unknownObjectRetain();
          goto LABEL_124;
        }

        ++v156;
        sub_21907C540(v238[42], sub_218C3EEF4);
        v154 = v232;
        if (v155 == v156)
        {
          goto LABEL_122;
        }
      }

      goto LABEL_134;
    }

LABEL_122:
    v161 = v238[47];
    v162 = v238[48];
    v163 = v238[46];

    v164 = sub_219BF6214();
    sub_219BE5314("Found no local headlines to select for For You", 46, 2, &dword_2186C1000, v215, v164, MEMORY[0x277D84F90]);
    swift_unknownObjectRelease();

    (*(v162 + 56))(v163, 1, 1, v161);
LABEL_124:
    v175 = v238[47];
    v176 = v238[48];
    v177 = v238[46];
    v178 = v238[32];
    (*(v238[55] + 8))(v238[56], v238[54]);

    v179 = (*(v176 + 48))(v177, 1, v175);
    v180 = v238[76];
    if (v179 == 1)
    {
      v181 = v238[72];
      v182 = v238[71];
      v183 = v238[53];
      v184 = v238[50];
      v185 = v238[51];
      sub_219083A70(v238[46], qword_280E9C040, type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result);
      v186 = sub_219BF6214();
      sub_219BE5314("Local in For You found no local headlines to select.", 52, 2, &dword_2186C1000, v181, v186, MEMORY[0x277D84F90]);

      swift_unknownObjectRelease();
      sub_219083A70(v182, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
      (*(v185 + 8))(v183, v184);
      goto LABEL_11;
    }

    v187 = v238[72];
    v188 = v238[49];
    v189 = v238[47];
    sub_219083E54(v238[46], v188, type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result);
    v190 = swift_allocObject();
    *(v190 + 16) = xmmword_219C0B8C0;
    v0 = v238;
    v191 = *(v189 + 24);
    v192 = sub_219BEDBA4();
    v193 = MEMORY[0x277D837D0];
    *(v190 + 56) = MEMORY[0x277D837D0];
    *(v190 + 64) = v214;
    *(v190 + 32) = v192;
    *(v190 + 40) = v194;
    v195 = [v180 identifier];
    v196 = sub_219BF5414();
    v198 = v197;

    *(v190 + 96) = v193;
    *(v190 + 104) = v214;
    *(v190 + 72) = v196;
    *(v190 + 80) = v198;
    v199 = *(v188 + 8);
    *(v190 + 136) = MEMORY[0x277D83B88];
    *(v190 + 144) = MEMORY[0x277D83C10];
    *(v190 + 112) = v199;
    v200 = sub_219BF6214();
    sub_219BE5314("Local in For You selected local headline %{public}@, surfaced by channel %{public}@ inserting at index %lu", 106, 2, &dword_2186C1000, v187, v200, v190);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v202 = v238[73];
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v199 & 0x8000000000000000) == 0)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v202 = sub_2194AB9E8(v238[73]);
      if ((v199 & 0x8000000000000000) == 0)
      {
LABEL_128:
        if (v199 < v202[2])
        {
          v237 = v238[76];
          v203 = v238[71];
          v204 = v238[53];
          v205 = v238[50];
          v206 = v238[51];
          v207 = v238[49];
          v208 = sub_219BEDC04();
          (*(*(v208 - 8) + 24))(v202 + ((*(*(v208 - 8) + 80) + 32) & ~*(*(v208 - 8) + 80)) + *(*(v208 - 8) + 72) * v199, v188 + v191, v208);
          v8 = v238;
          v233 = sub_219BEDBA4();
          v230 = v209;

          sub_21907C540(v207, type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result);
          sub_219083A70(v203, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
          (*(v206 + 8))(v204, v205);
          v226 = v202;
          goto LABEL_12;
        }

        goto LABEL_139;
      }
    }

    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:

    __break(1u);
    goto LABEL_141;
  }

  v108 = *(v0 + 256);
}

uint64_t sub_219081FC4()
{

  v1 = v0[78];
  v2 = v0[72];
  v3 = v0[71];
  v12 = v0[53];
  v4 = v0[50];
  v5 = v0[51];
  v6 = sub_219BF61F4();
  sub_2186F20D4(0);
  v7 = swift_allocObject();
  v0[15] = 0;
  *(v7 + 16) = xmmword_219C09BA0;
  v0[16] = 0xE000000000000000;
  v0[23] = v1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v8 = v0[15];
  v9 = v0[16];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  sub_219BE5314("Local in For You failed with error %{public}@, not injecting local headline", 75, 2, &dword_2186C1000, v2, v6, v7);

  sub_219083A70(v3, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  (*(v5 + 8))(v12, v4);
  v13 = v0[73];

  v10 = v0[1];

  return v10(v13, 0, 0, 0);
}

uint64_t sub_219082280()
{
  swift_unknownObjectRelease();
  v1 = v0[83];
  v2 = v0[72];
  v3 = v0[71];
  v12 = v0[53];
  v4 = v0[50];
  v5 = v0[51];
  v6 = sub_219BF61F4();
  sub_2186F20D4(0);
  v7 = swift_allocObject();
  v0[15] = 0;
  *(v7 + 16) = xmmword_219C09BA0;
  v0[16] = 0xE000000000000000;
  v0[23] = v1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v8 = v0[15];
  v9 = v0[16];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  sub_219BE5314("Local in For You failed with error %{public}@, not injecting local headline", 75, 2, &dword_2186C1000, v2, v6, v7);

  sub_219083A70(v3, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  (*(v5 + 8))(v12, v4);
  v13 = v0[73];

  v10 = v0[1];

  return v10(v13, 0, 0, 0);
}

uint64_t sub_21908253C(uint64_t a1, uint64_t *a2)
{
  *(v3 + 232) = a1;
  *(v3 + 240) = a2;
  v4 = *a2;
  *(v3 + 248) = v2;
  *(v3 + 256) = v4;
  *(v3 + 264) = *(a2 + 1);
  v5 = MEMORY[0x277D83D88];
  sub_2186D8B7C(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  *(v3 + 280) = swift_task_alloc();
  sub_2186D8B7C(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  *(v3 + 288) = swift_task_alloc();
  sub_2186D8B7C(0, &unk_280E91A10, sub_2189AE994, v5);
  *(v3 + 296) = swift_task_alloc();
  v6 = sub_219BF2AB4();
  *(v3 + 304) = v6;
  *(v3 + 312) = *(v6 - 8);
  *(v3 + 320) = swift_task_alloc();
  v7 = sub_219BF2034();
  *(v3 + 328) = v7;
  *(v3 + 336) = *(v7 - 8);
  *(v3 + 344) = swift_task_alloc();
  sub_2186D8B7C(0, &unk_280E8FF30, sub_218A42400, v5);
  *(v3 + 352) = swift_task_alloc();
  sub_2186D8B7C(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  *(v3 + 360) = swift_task_alloc();
  v8 = sub_219BDBD64();
  *(v3 + 368) = v8;
  *(v3 + 376) = *(v8 - 8);
  *(v3 + 384) = swift_task_alloc();
  type metadata accessor for ForYouTodayFeedGroupConfigData(0);
  *(v3 + 392) = swift_task_alloc();
  v9 = sub_219BF1934();
  *(v3 + 400) = v9;
  *(v3 + 408) = *(v9 - 8);
  *(v3 + 416) = swift_task_alloc();
  v10 = sub_219BF3C84();
  *(v3 + 424) = v10;
  *(v3 + 432) = *(v10 - 8);
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  v11 = sub_219BF3E84();
  *(v3 + 456) = v11;
  *(v3 + 464) = *(v11 - 8);
  *(v3 + 472) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2190829A4, 0, 0);
}

uint64_t sub_2190829A4()
{
  v77 = v0;
  v1 = *(v0 + 240);
  v2 = *v1;
  if (*(v1 + 32))
  {
    sub_2190839D0(*(v0 + 240), v72 + 72);
    sub_2190839D0(v1, v72 + 112);

    swift_unknownObjectRetain();

    v0 = v72;
    swift_unknownObjectRelease();
  }

  else
  {
    sub_2190839D0(*(v0 + 240), v0 + 152);
    sub_2190839D0(v1, v0 + 192);
  }

  if (v2 >> 62)
  {
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v74 = MEMORY[0x277D84F90];
    v4 = sub_218C34A88(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v4, v5, v6, v7, v8);
    }

    v9 = v74;
    v10 = *(v0 + 432);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      v12 = *MEMORY[0x277D34128];
      do
      {
        v13 = *(v0 + 448);
        v14 = *(v0 + 424);
        *v13 = MEMORY[0x21CECE0F0](v11, v2);
        (*(v10 + 104))(v13, v12, v14);
        v74 = v9;
        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_218C34A88((v15 > 1), v16 + 1, 1);
          v9 = v74;
        }

        v17 = *(v0 + 448);
        v18 = *(v0 + 424);
        ++v11;
        *(v9 + 16) = v16 + 1;
        (*(v10 + 32))(v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v17, v18);
      }

      while (v3 != v11);
    }

    else
    {
      v69 = *(v10 + 104);
      v19 = 32;
      do
      {
        v20 = v2;
        **(v0 + 440) = *(v2 + v19);
        v69();
        v74 = v9;
        v21 = *(v9 + 16);
        v22 = *(v9 + 24);
        swift_unknownObjectRetain();
        if (v21 >= v22 >> 1)
        {
          sub_218C34A88((v22 > 1), v21 + 1, 1);
          v9 = v74;
        }

        v23 = *(v0 + 440);
        v24 = *(v0 + 424);
        *(v9 + 16) = v21 + 1;
        (*(v10 + 32))(v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21, v23, v24);
        v19 += 8;
        --v3;
        v2 = v20;
      }

      while (v3);
    }
  }

  v25 = *(v0 + 240);
  if ((*(v25 + 32) & 1) == 0)
  {
    sub_2190839A0(v25);
LABEL_24:
    sub_2194B11C0(MEMORY[0x277D84F90]);
    goto LABEL_25;
  }

  v27 = *(v25 + 16);
  v26 = *(v25 + 24);
  v28 = *(*(v0 + 240) + 8);

  if (!v27)
  {
    goto LABEL_24;
  }

  v74 = v28;
  v75 = v27;
  v76 = v26;

  swift_unknownObjectRetain();
  sub_21907A5BC(&v74, &v73);
  sub_219083AE0(v28, v27, v26);

  swift_unknownObjectRelease();
  if (!v73)
  {
    goto LABEL_24;
  }

LABEL_25:
  v29 = *(v0 + 240);
  if (*(v29 + 32))
  {
    v30 = *(v29 + 16);
    v31 = *(*(v0 + 240) + 8);

    sub_2186D8B7C(0, &qword_280E8B6C0, sub_219083A08, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    *(inited + 32) = v31;
    *(inited + 40) = v30;

    swift_unknownObjectRetain();
    v33 = sub_2194AD74C(&unk_282A25AA0);
    sub_2189AD3D8(&unk_282A25AC0);
    *(inited + 48) = v33;
    sub_2194B11E0(inited);
    v0 = v72;
    swift_setDeallocating();
    sub_21907C540(inited + 32, sub_219083A08);
    swift_unknownObjectRelease_n();
  }

  else
  {
    sub_2190839A0(v29);
    sub_2194B11E0(MEMORY[0x277D84F90]);
  }

  v34 = *(v0 + 464);
  v63 = *(v0 + 472);
  v64 = *(v0 + 456);
  v35 = *(v0 + 408);
  v62 = *(v0 + 400);
  v60 = *(v0 + 392);
  v36 = *(v0 + 384);
  v37 = *(v72 + 376);
  v59 = *(v72 + 368);
  v61 = *(v72 + 360);
  v38 = *(v72 + 352);
  v66 = *(v72 + 296);
  v67 = *(v72 + 288);
  v68 = *(v72 + 280);
  v39 = *(v72 + 248);
  v40 = MEMORY[0x277D84F90];
  sub_218F0BB90(MEMORY[0x277D84F90]);
  sub_219BF3E74();
  v65 = v39;
  v70 = *(v39 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_formatService + 32);
  v71 = *(v39 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_formatService + 24);
  __swift_project_boxed_opaque_existential_1((v39 + OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_formatService), v71);
  sub_2186E0010(0);
  sub_219BEDD14();
  v74 = 0x3A3A756F59726F66;
  v75 = 0xE800000000000000;
  sub_219BDBD54();
  v41 = sub_219BDBD44();
  v43 = v42;
  (*(v37 + 8))(v36, v59);
  MEMORY[0x21CECC330](v41, v43);

  v44 = sub_219BEC004();
  v45 = *(*(v44 - 8) + 56);
  v45(v61, 1, 1, v44);
  sub_218A42400(0);
  (*(*(v46 - 8) + 56))(v38, 1, 1, v46);
  sub_219BF1764();

  sub_219083A70(v38, &unk_280E8FF30, sub_218A42400);
  sub_219083A70(v61, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v47 = *(v35 + 8);
  *(v72 + 480) = v47;
  *(v72 + 488) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v47(v60, v62);
  sub_2186D8B7C(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v48 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_219C09BA0;
  (*(v34 + 16))(v49 + v48, v63, v64);
  v45(v61, 1, 1, v44);
  sub_219A95188(v40);
  sub_219A95188(v40);
  sub_219A951A0(v40);
  sub_219A951B8(v40);
  sub_219A952CC(v40);
  sub_219A952E4(v40);
  sub_219A953F8(v40);
  sub_219BF2024();
  v50 = OBJC_IVAR____TtC7NewsUI227ForYouTodayFeedGroupEmitter_knobs;
  sub_2189AE994(0);
  v52 = v51;
  v53 = *(v51 - 8);
  (*(v53 + 16))(v66, v65 + v50, v51);
  (*(v53 + 56))(v66, 0, 1, v52);
  v54 = sub_219BF35D4();
  (*(*(v54 - 8) + 56))(v67, 1, 1, v54);
  *(v72 + 105) = 4;
  sub_219083DD4(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v55 = sub_219BF2774();
  (*(*(v55 - 8) + 56))(v68, 1, 1, v55);
  v56 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v56 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  sub_219BF2A84();
  v57 = swift_task_alloc();
  *(v72 + 496) = v57;
  *v57 = v72;
  v57[1] = sub_2190834BC;
  v5 = *(v72 + 344);
  v6 = *(v72 + 320);
  v4 = *(v72 + 416);
  v8 = v70;
  v7 = v71;

  return MEMORY[0x2821921B8](v4, v5, v6, v7, v8);
}

uint64_t sub_2190834BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v5 = *(*v2 + 312);
  v3[63] = v1;

  v6 = (v5 + 8);
  v7 = (v4 + 8);
  v17 = v3[60];
  v8 = v3[52];
  v9 = v3[50];
  v10 = v3[43];
  v11 = v3[41];
  v12 = v3[40];
  v13 = v3[38];
  if (v1)
  {
    (*v6)(v12, v13);
    (*v7)(v10, v11);
    v17(v8, v9);
    v14 = sub_219083874;
  }

  else
  {
    v3[64] = a1;
    (*v6)(v12, v13);
    (*v7)(v10, v11);
    v17(v8, v9);
    v14 = sub_219083744;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_219083744()
{
  (*(v0[58] + 8))(v0[59], v0[57]);

  v1 = v0[1];
  v2 = v0[64];

  return v1(v2);
}

uint64_t sub_219083874()
{
  (*(v0[58] + 8))(v0[59], v0[57]);

  v1 = v0[1];

  return v1();
}

void sub_219083A08(uint64_t a1)
{
  if (!qword_280E8F710)
  {
    sub_2186E2394();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F710);
    }
  }
}

uint64_t sub_219083A70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186D8B7C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_219083AE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {

    swift_unknownObjectRelease();
  }
}

void sub_219083B24(uint64_t a1)
{
  if (!qword_280E8F740)
  {
    sub_2186D8B7C(255, &unk_280E8EEE0, MEMORY[0x277D333A8], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8F740);
    }
  }
}

uint64_t sub_219083BBC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186D8B7C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_219083C3C(uint64_t a1)
{
  if (!qword_280E8E910)
  {
    sub_219BEDC04();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E910);
    }
  }
}

uint64_t sub_219083CA8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_2186F8598(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219083D18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_219083D80()
{
  result = qword_27CC15878;
  if (!qword_27CC15878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15878);
  }

  return result;
}

void sub_219083DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_219083E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219083EC4(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187608D4;

  return sub_21907B470(v7, a1, v4, v5, v6);
}

uint64_t sub_219083F88(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2187609C8;

  return sub_21907AC2C(v6, a1, v4, v5, v7);
}

unint64_t sub_21908404C()
{
  result = qword_280EE7988;
  if (!qword_280EE7988)
  {
    sub_2186D8B7C(255, &qword_280EE7980, type metadata accessor for ForYouTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7988);
  }

  return result;
}

uint64_t sub_2190840E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_219084128(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_21908419C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2190841E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_219084240()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v5);
  MEMORY[0x21CECE850](v6);
  sub_219084E38(v1, v2, v3, v4);
  return sub_219BF7AE4();
}

uint64_t sub_2190842CC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 5);
  MEMORY[0x21CECE850](*(v1 + 4));
  MEMORY[0x21CECE850](v6);

  return sub_219084E38(v2, v3, v4, v5);
}

uint64_t sub_219084344(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v6);
  MEMORY[0x21CECE850](v7);
  sub_219084E38(v2, v3, v4, v5);
  return sub_219BF7AE4();
}

BOOL sub_2190843CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = CGRectEqualToRect(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return v6 && v7;
}

void sub_219084424(void *a1)
{
  v2 = v1;
  sub_219084D08(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TagFeedViewerSportsEvent(0);
  MEMORY[0x28223BE20](v7);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for NavigationBarBackgroundImageProvider.Model(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219084D60(v2 + OBJC_IVAR____TtC7NewsUI236NavigationBarBackgroundImageProvider_model, v12);
  sub_219084DC4(v12, v9);
  [a1 frame];
  Width = CGRectGetWidth(v41);
  [a1 frame];
  MaxY = CGRectGetMaxY(v42);
  v15 = [a1 traitCollection];
  v16 = [v15 userInterfaceLevel];
  v17 = [v15 userInterfaceStyle];

  aBlock = 0;
  v35 = 0;
  v36 = *&Width;
  v37 = MaxY;
  v33 = v16;
  v38 = v16;
  v39 = v17;

  sub_219BE2DD4();

  if (v40 == 1)
  {
    v32[1] = v2;
    v18 = [objc_allocWithZone(type metadata accessor for TagFeedViewerSportsEventBackgroundView()) initWithFrame_];
    [a1 bounds];
    sub_218A797E8(v6, 0.0, 0.0, Width, MaxY, v19, v20, v21, v22);
    v23 = sub_219BE6424();
    (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
    sub_219BEB574();
    [v18 setNeedsLayout];
    [v18 layoutIfNeeded];
    v24 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
    v25 = swift_allocObject();
    *(v25 + 16) = v18;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_219084E28;
    *(v26 + 24) = v25;
    v38 = sub_219084E30;
    v39 = v26;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_21988D720;
    v37 = COERCE_DOUBLE(&block_descriptor_92);
    v27 = _Block_copy(&aBlock);
    v28 = v18;

    v29 = [v24 imageWithActions_];
    _Block_release(v27);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v39 = v17;
      v40 = v29;
      aBlock = 0;
      v35 = 0;
      v36 = *&Width;
      v37 = MaxY;
      v38 = v33;
      v31 = v29;

      sub_219BE2DE4();

      sub_219084EBC(v9, type metadata accessor for TagFeedViewerSportsEvent);
    }
  }

  else
  {
    sub_219084EBC(v9, type metadata accessor for TagFeedViewerSportsEvent);
  }
}

void sub_2190848E8(void *a1, id a2)
{
  v3 = [a2 layer];
  v4 = [a1 CGContext];
  [v3 renderInContext_];
}

uint64_t sub_219084978(__n128 a1)
{
  sub_219084EBC(v1 + OBJC_IVAR____TtC7NewsUI236NavigationBarBackgroundImageProvider_model, type metadata accessor for NavigationBarBackgroundImageProvider.Model);

  return swift_deallocClassInstance();
}

uint64_t sub_219084A28(uint64_t a1)
{
  result = type metadata accessor for TagFeedViewerSportsEvent(319);
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

uint64_t sub_219084AC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_219084AE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_219084B2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedViewerSportsEvent(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_2188C4460);
}

uint64_t sub_219084B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TagFeedViewerSportsEvent(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_2188C450C);
}

uint64_t sub_219084C0C(uint64_t a1)
{
  result = type metadata accessor for TagFeedViewerSportsEvent(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

unint64_t sub_219084CB4()
{
  result = qword_27CC158B0;
  if (!qword_27CC158B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC158B0);
  }

  return result;
}

void sub_219084D08(uint64_t a1)
{
  if (!qword_27CC158B8)
  {
    sub_219BE6424();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC158B8);
    }
  }
}

uint64_t sub_219084D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NavigationBarBackgroundImageProvider.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219084DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedViewerSportsEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219084E38(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x21CECE870](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x21CECE870](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x21CECE870](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x21CECE870](*&v9);
}

uint64_t sub_219084EBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_219085008()
{
  v0 = sub_219BF17D4();
  v2 = v1;
  if (v0 == sub_219BF17D4() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_219BF78F4();
  }

  return v5 & 1;
}

char *sub_2190850CC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_subtitleLabel;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v12 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_moreActionsButton;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for MagazineFeedGroupMoreActionsButton(0)) initWithFrame_];
  *&v4[OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_debugFeedAction] = 0;
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_titleLabel;
  v15 = *&v13[OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_titleLabel];
  v16 = v13;
  [v16 addSubview_];
  v17 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_subtitleLabel;
  [v16 addSubview_];
  [v16 addSubview_];
  [*&v13[v14] setNumberOfLines_];
  [*&v16[v17] setNumberOfLines_];

  return v16;
}

void sub_219085320()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_debugFeedAction);
  if (v1)
  {
    v2 = v1;
    v3 = sub_219BEA814();
  }
}

void sub_219085390()
{
  sub_218807410(&qword_280EBB380, &unk_219C57864);

  JUMPOUT(0x21CEC1E40);
}

void sub_2190853E8()
{
  v1 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_titleLabel;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_subtitleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_moreActionsButton;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for MagazineFeedGroupMoreActionsButton(0)) initWithFrame_];
  *(v0 + OBJC_IVAR____TtC7NewsUI226MagazineFeedGroupTitleView_debugFeedAction) = 0;
  sub_219BF7514();
  __break(1u);
}

void __swiftcall AudioHistoryFeedModule.createViewController()(UIViewController *__return_ptr retstr)
{
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for AudioHistoryFeedViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE1E04();

  swift_unownedRelease();
  if (!v2)
  {
    __break(1u);
  }
}

double sub_2190855B4(void *a1, uint64_t a2)
{
  v21 = sub_219BE14C4();
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE14A4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE15B4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  v19 = a1[3];
  v20 = v15;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v19);
  v18[1] = a2;
  v18[2] = v16;
  swift_unownedRetainStrong();
  (*(v12 + 104))(v14, *MEMORY[0x277D2F498], v11);
  sub_219BDD0F4();
  (*(v12 + 8))(v14, v11);
  (*(v4 + 104))(v6, *MEMORY[0x277D2F2A8], v21);
  sub_219BE1484();
  sub_219085A2C();
  sub_219BDD1F4();

  (*(v8 + 8))(v10, v7);
  sub_219BDD274();
  sub_219BE1B94();

  return result;
}

uint64_t AudioHistoryFeedModule.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t AudioHistoryFeedModule.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_219085910()
{
  v1 = *v0;
  __swift_project_boxed_opaque_existential_1((*v0 + 16), *(*v0 + 40));
  type metadata accessor for AudioHistoryFeedViewController();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v1;
  v2 = sub_219BE1E04();

  result = swift_unownedRelease();
  if (v2)
  {
    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_219085A2C()
{
  result = qword_280EE8010;
  if (!qword_280EE8010)
  {
    sub_219BE14A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE8010);
  }

  return result;
}

uint64_t type metadata accessor for SportsNavigationTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E97C28;
  if (!qword_280E97C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219085AFC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21908602C(0, &qword_280E8C758, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219085FD8();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 17;
    v13 = type metadata accessor for SportsNavigationTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219085D64(void *a1)
{
  v3 = v1;
  sub_21908602C(0, &qword_27CC158E0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219085FD8();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsNavigationTagFeedGroupConfigData(0);
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219085F30(uint64_t a1)
{
  v2 = sub_219085FD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219085F6C(uint64_t a1)
{
  v2 = sub_219085FD8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219085FD8()
{
  result = qword_280E97C60[0];
  if (!qword_280E97C60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E97C60);
  }

  return result;
}

void sub_21908602C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219085FD8();
    v7 = a3(a1, &type metadata for SportsNavigationTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2190860A4()
{
  result = qword_27CC158E8;
  if (!qword_27CC158E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC158E8);
  }

  return result;
}

unint64_t sub_2190860FC()
{
  result = qword_280E97C50;
  if (!qword_280E97C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97C50);
  }

  return result;
}

unint64_t sub_219086154()
{
  result = qword_280E97C58;
  if (!qword_280E97C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97C58);
  }

  return result;
}

uint64_t type metadata accessor for AudioHistoryFeedLayoutModel(uint64_t a1)
{
  result = qword_27CC158F0;
  if (!qword_27CC158F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_2190861F4()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219086890(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_219086358(uint64_t a1)
{
  v2 = sub_2190868F4(&qword_27CC0C0B8, &unk_219C57B64);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21908645C()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219086890(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  v8 = sub_219BEF8E4();
  (*(v2 + 8))(v4, v1);
  return v8;
}

uint64_t sub_2190865E8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219086890(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21908674C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219086890(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_219086890(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedLayoutModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2190868F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AudioHistoryFeedLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_219086954(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 58))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21908699C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 58) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 58) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2190869FC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_219087C14(a1, &v31);
  if (v33)
  {
    v29 = v31;
    v30[0] = *v32;
    *(v30 + 9) = *&v32[9];
    sub_218A26508(&v29, v27);
    if (v28)
    {
      if (v28 == 1)
      {
        sub_2186CB1F0(v27, v24);
        v3 = v25;
        v4 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        v5 = (*(v4 + 24))(v3, v4);
        v6 = sub_219ADDA20(v5, 0);
        v8 = v7;
        v9 = v7 & 1;
        v10 = a2;
        v11 = v6;
        v12 = 2;
LABEL_8:
        sub_219086C40(v11, v9, v12, v10);
        sub_219087C70(v6, v8 & 1);
        sub_218A26564(&v29);
        __swift_destroy_boxed_opaque_existential_1(v24);
        return;
      }

LABEL_9:
      sub_218A26564(&v29);
      *a2 = *&v27[0];
      *(a2 + 40) = 2;
      return;
    }

    v17 = *&v27[0];
    v18 = sub_219ADD668(*(*&v27[0] + 24));
  }

  else
  {
    v29 = v31;
    v30[0] = *v32;
    *(v30 + 9) = *&v32[9];
    sub_218A26508(&v29, v27);
    if (v28)
    {
      if (v28 == 1)
      {
        sub_2186CB1F0(v27, v24);
        v13 = v25;
        v14 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        v15 = (*(v14 + 24))(v13, v14);
        v6 = sub_219ADDA20(v15, 1);
        v8 = v16;
        v9 = v16 & 1;
        v10 = a2;
        v11 = v6;
        v12 = 1;
        goto LABEL_8;
      }

      goto LABEL_9;
    }

    v17 = *&v27[0];
    v18 = sub_219ADD1F0(*(*&v27[0] + 24));
  }

  v20 = v18;
  v21 = v19;
  sub_218A26564(&v29);
  v22 = *(v17 + 16);

  if ((v21 & 1) == 0)
  {
    type metadata accessor for FollowingTagModel();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v20;
    *(v23 + 32) = 1;
    *(a2 + 40) = 0;
    v20 = v23;
  }

  *a2 = v20;
  *(a2 + 41) = v21 & 1;
}

void *sub_219086C40@<X0>(id a1@<X1>, char a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (a2)
  {
    *a4 = a1;
    *(a4 + 41) = 1;

    return a1;
  }

  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      sub_219096410(a3, &v40);
      v38 = &type metadata for NotificationsNewIssuesRowModel;
      v39 = &off_282A5B998;
    }

    else
    {
      if (a1 != 3)
      {
        goto LABEL_20;
      }

      sub_2190962D4(a3, &v40);
      v38 = &type metadata for NotificationsMarketingRowModel;
      v39 = &off_282A5B968;
    }

LABEL_19:
    v23 = swift_allocObject();
    v37[0] = v23;
    v24 = v41;
    v23[1] = v40;
    v23[2] = v24;
    v23[3] = v42[0];
    *(v23 + 58) = *(v42 + 10);
    sub_218718690(v37, a4);
    *(a4 + 40) = 1;
    v25 = v37;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  if (a1 == 4)
  {
    v16 = a3;
    v17 = sub_219A3D21C();
    v19 = v18;
    if (qword_27CC08428 != -1)
    {
      swift_once();
    }

    v20 = qword_27CCD88C8;
    *(&v41 + 1) = &type metadata for NotificationsEndOfAudioTrackRowModel;
    *&v42[0] = &off_282A5B9C8;
    v21 = swift_allocObject();
    *&v40 = v21;
    *(v21 + 16) = 4;
    *(v21 + 24) = v20;
    *(v21 + 32) = 0;
    *(v21 + 40) = 1;
    *(v21 + 48) = 4;
    *(v21 + 56) = v17;
    *(v21 + 64) = v19;
    *(v21 + 72) = v16;
    *(v21 + 73) = 1;
    sub_218718690(&v40, a4);
    *(a4 + 40) = 1;
    v22 = v20;
    goto LABEL_26;
  }

  if (a1 == 5)
  {
    sub_219096198(a3, &v40);
    v38 = &type metadata for NotificationsNewsletterRowModel;
    v39 = &off_282A5BBF0;
    goto LABEL_19;
  }

  if (a1 != 6)
  {
LABEL_20:
    v26 = a3;
    v27 = sub_219A3D21C();
    v29 = v28;
    v30 = sub_219A3D330();
    if (v32 == -1)
    {
      v33 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      v34 = 0;
      v35 = 1;
    }

    else
    {
      v33 = v30;
      v34 = v31;
      v35 = v32;
    }

    *(&v41 + 1) = &type metadata for NotificationsPuzzlesRowModel;
    *&v42[0] = &off_282A5B9F8;
    v36 = swift_allocObject();
    *&v40 = v36;
    *(v36 + 16) = v27;
    *(v36 + 24) = v29;
    *(v36 + 32) = 1;
    *(v36 + 40) = v33;
    *(v36 + 48) = v34;
    *(v36 + 56) = v35;
    *(v36 + 64) = 1;
    *(v36 + 72) = v26;
    *(v36 + 73) = 1;
    sub_218718690(&v40, a4);
    *(a4 + 40) = 1;
LABEL_26:
    v25 = &v40;
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v6 = a3;
  v7 = sub_219A3D21C();
  v9 = v8;
  v10 = sub_219A3D330();
  if (v12 == -1)
  {
    v13 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v14 = 0;
    v15 = 1;
  }

  else
  {
    v13 = v10;
    v14 = v11;
    v15 = v12;
  }

  *(a4 + 24) = &type metadata for NotificationsSportsRowModel;
  *(a4 + 32) = &off_282A5BA28;
  result = swift_allocObject();
  *a4 = result;
  result[2] = v7;
  result[3] = v9;
  *(result + 32) = 6;
  result[5] = v13;
  result[6] = v14;
  *(result + 56) = v15;
  result[8] = 0;
  *(result + 72) = v6;
  *(result + 73) = 1;
  *(a4 + 40) = 1;
  return result;
}

uint64_t sub_219086FD0(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v67 = a2;
  v66 = a1;
  sub_219087A28(0, &qword_27CC0C900, MEMORY[0x277D6EC60]);
  v6 = v5;
  v62 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v58 = &v52 - v7;
  sub_218A2625C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A25EF0(0);
  v65 = v11;
  v64 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v61 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = &v52 - v14;
  sub_218A25F90(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219087A28(0, &qword_27CC0C8E0, MEMORY[0x277D6D710]);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v59 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v63 = &v52 - v23;
  sub_219087A28(0, &qword_27CC0C928, MEMORY[0x277D6DF88]);
  v25 = v24;
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v28 = (&v52 - v27);
  sub_2190869FC(v3 + 16, v74);
  sub_219087AAC(v74, &v71);
  if (v73 == 1)
  {
    v29 = v71;
    *v28 = v71;
    (*(v26 + 104))(v28, *MEMORY[0x277D6DF68], v25);
    v30 = v29;
    v67(v28);

    (*(v26 + 8))(v28, v25);
    return sub_219087BB4(v74, sub_219087B10);
  }

  v57 = a3;
  v69 = v71;
  v70[0] = *v72;
  *(v70 + 9) = *&v72[9];
  sub_219A3D0C4();
  sub_219BEB244();

  if ((*(v20 + 48))(v17, 1, v19) == 1)
  {
    sub_219087BB4(v17, sub_218A25F90);
    sub_219087B60();
    v31 = swift_allocError();
    *v32 = 0;
    *v28 = v31;
    (*(v26 + 104))(v28, *MEMORY[0x277D6DF68], v25);
    v67(v28);
    (*(v26 + 8))(v28, v25);
LABEL_7:
    sub_218A26564(&v69);
    return sub_219087BB4(v74, sub_219087B10);
  }

  v33 = v20;
  v56 = v6;
  v34 = v63;
  (*(v20 + 32))(v63, v17, v19);
  sub_219A3D0C4();
  sub_219BE6A64();

  v35 = v64;
  v36 = v65;
  if ((*(v64 + 48))(v10, 1, v65) == 1)
  {
    sub_219087BB4(v10, sub_218A2625C);
    sub_219087B60();
    v37 = swift_allocError();
    *v38 = 1;
    *v28 = v37;
    (*(v26 + 104))(v28, *MEMORY[0x277D6DF68], v25);
    v67(v28);
    (*(v26 + 8))(v28, v25);
    (*(v33 + 8))(v34, v19);
    goto LABEL_7;
  }

  (*(v35 + 32))(v60, v10, v36);
  sub_218A26508(&v69, v68);
  sub_21878D92C();
  sub_219BE5FB4();
  v54 = v33;
  (*(v33 + 16))(v59, v34, v19);
  v55 = v19;
  sub_219BE69E4();
  v40 = v58;
  v41 = v56;
  v53 = *(v62 + 16);
  v53(v58, v66, v56);
  sub_219BEB234();
  sub_218BBB82C();
  sub_21878D8D8();
  sub_219BE78F4();
  __swift_project_boxed_opaque_existential_1(v68, v68[3]);
  if (sub_219BE6E54())
  {
    v42 = MEMORY[0x277D6DF80];
  }

  else
  {
    sub_218BBB880(0);
    v44 = *(v43 + 48);
    v45 = *(v43 + 64);
    v53(v28, v40, v41);
    sub_218718690(v68, v28 + v44);
    v46 = *MEMORY[0x277D6D868];
    v47 = sub_219BE6DF4();
    (*(*(v47 - 8) + 104))(v28 + v45, v46, v47);
    v42 = MEMORY[0x277D6DF78];
  }

  (*(v26 + 104))(v28, *v42, v25);
  v67(v28);
  (*(v26 + 8))(v28, v25);
  (*(v62 + 8))(v40, v41);
  v48 = *(v54 + 8);
  v49 = v55;
  v48(v59, v55);
  v50 = *(v64 + 8);
  v51 = v65;
  v50(v61, v65);
  v50(v60, v51);
  v48(v63, v49);
  sub_218A26564(&v69);
  sub_219087BB4(v74, sub_219087B10);
  return __swift_destroy_boxed_opaque_existential_1(v68);
}

uint64_t sub_219087994(uint64_t a1)
{
  v2 = sub_219087C7C();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2190879D4()
{
  result = qword_27CC15900;
  if (!qword_27CC15900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15900);
  }

  return result;
}

void sub_219087A28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingNotificationsDescriptor;
    v8[1] = &type metadata for FollowingNotificationsModel;
    v8[2] = sub_21878D8D8();
    v8[3] = sub_21878D92C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219087AAC(uint64_t a1, uint64_t a2)
{
  sub_219087B10();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_219087B10()
{
  if (!qword_27CC15908)
  {
    v0 = sub_219BE2EF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC15908);
    }
  }
}

unint64_t sub_219087B60()
{
  result = qword_27CC15910;
  if (!qword_27CC15910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15910);
  }

  return result;
}

uint64_t sub_219087BB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219087C70(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t sub_219087C7C()
{
  result = qword_27CC1A650;
  if (!qword_27CC1A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1A650);
  }

  return result;
}

unint64_t sub_219087CE4()
{
  result = qword_27CC15918;
  if (!qword_27CC15918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15918);
  }

  return result;
}

id sub_219087D38(uint64_t a1, uint64_t a2, const void *a3)
{
  v6 = MEMORY[0x277D83D88];
  sub_2186DD7B4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v8 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = v80 - v9;
  sub_2186DD7B4(0, &unk_280EE9D00, MEMORY[0x277CC9260], v6);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v80 - v12;
  memcpy(v85, a3, 0x201uLL);
  sub_219088A20();
  v14 = sub_219BF52C4();
  v15 = MEMORY[0x277D837D0];
  if (!v14)
  {
    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    v51 = qword_280F61720;
    v52 = sub_219BF6214();
    sub_2186DD7B4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_219C09BA0;
    *(v53 + 56) = v15;
    *(v53 + 64) = sub_2186FC3BC();
    *(v53 + 32) = a1;
    *(v53 + 40) = a2;

    sub_219BE5314("Search article factory invalid headline without metadata, identifier=%{public}@", 79, 2, &dword_2186C1000, v51, v52, v53);
    goto LABEL_27;
  }

  v16 = v14;
  v81 = v10;
  v17 = sub_219BF5414();
  if (!*(v16 + 16))
  {

LABEL_24:

    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    v54 = qword_280F61720;
    v55 = sub_219BF6214();
    sub_2186DD7B4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_219C09BA0;
    *(v56 + 56) = v15;
    *(v56 + 64) = sub_2186FC3BC();
    *(v56 + 32) = a1;
    *(v56 + 40) = a2;

    sub_219BE5314("Search article factory invalid headline without channelID, identifier=%{public}@", 80, 2, &dword_2186C1000, v54, v55, v56);
    goto LABEL_27;
  }

  v80[1] = v8;
  v19 = sub_21870F700(v17, v18);
  v21 = v20;

  if ((v21 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_2186D1230(*(v16 + 56) + 32 * v19, v85);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v22 = v83;
  v23 = v84;
  __swift_project_boxed_opaque_existential_1(v82 + 3, v82[6]);
  v24 = sub_219A3FB34(v22, v23, a3, 0);
  if (!v24)
  {

    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    v57 = qword_280F61720;
    v58 = sub_219BF6214();
    sub_2186DD7B4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_219C09BA0;
    *(v59 + 56) = MEMORY[0x277D837D0];
    *(v59 + 64) = sub_2186FC3BC();
    *(v59 + 32) = a1;
    *(v59 + 40) = a2;

    sub_219BE5314("Search article factory invalid headline without channel, identifier=%{public}@", 78, 2, &dword_2186C1000, v57, v58, v59);
    goto LABEL_27;
  }

  v25 = v24;
  v26 = sub_219BF5414();
  if (!*(v16 + 16))
  {

LABEL_34:
    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    v60 = qword_280F61720;
    v61 = sub_219BF6214();
    sub_2186DD7B4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v62 = swift_allocObject();
    *(v62 + 16) = xmmword_219C09BA0;
    *(v62 + 56) = MEMORY[0x277D837D0];
    *(v62 + 64) = sub_2186FC3BC();
    *(v62 + 32) = a1;
    *(v62 + 40) = a2;

    sub_219BE5314("Search article factory invalid headline without contentType, identifier=%{public}@", 82, 2, &dword_2186C1000, v60, v61, v62);
    goto LABEL_37;
  }

  v80[0] = a2;
  v28 = sub_21870F700(v26, v27);
  v30 = v29;

  if ((v30 & 1) == 0 || (sub_2186D1230(*(v16 + 56) + 32 * v28, v85), (swift_dynamicCast() & 1) == 0))
  {

    a2 = v80[0];
    goto LABEL_34;
  }

  sub_218E9B5CC();
  v31 = objc_allocWithZone(MEMORY[0x277D30DF8]);
  v32 = sub_219BF5204();

  v33 = sub_219BF53D4();
  v34 = [v31 initWithDictionary:v32 identifier:v33];

  if (!v34)
  {

    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    v63 = qword_280F61720;
    v64 = sub_219BF6214();
    sub_2186DD7B4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v65 = swift_allocObject();
    *(v65 + 16) = xmmword_219C09BA0;
    *(v65 + 56) = MEMORY[0x277D837D0];
    *(v65 + 64) = sub_2186FC3BC();
    v66 = v80[0];
    *(v65 + 32) = a1;
    *(v65 + 40) = v66;

    sub_219BE5314("Search article factory unable to generate articleData, identifier=%{public}@", 76, 2, &dword_2186C1000, v63, v64, v65);
LABEL_37:
    swift_unknownObjectRelease();
LABEL_27:

    return 0;
  }

  v35 = [objc_allocWithZone(MEMORY[0x277D30DE0]) initWithArticleMetadata:v34 sourceChannel:v25 assetManager:v82[2]];
  if (!v35)
  {

    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    v67 = qword_280F61720;
    v68 = sub_219BF6214();
    sub_2186DD7B4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_219C09BA0;
    *(v69 + 56) = MEMORY[0x277D837D0];
    *(v69 + 64) = sub_2186FC3BC();
    v70 = v80[0];
    *(v69 + 32) = a1;
    *(v69 + 40) = v70;

    sub_219BE5314("Search article factory unable to generate headline, identifier=%{public}@", 73, 2, &dword_2186C1000, v67, v68, v69);
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v82 = v34;
  v36 = v35;
  v37 = v35;
  if ([v37 contentType] == 1)
  {
    v38 = [v37 contentURL];
    if (!v38)
    {

      v77 = sub_219BDB954();
      (*(*(v77 - 8) + 56))(v13, 1, 1, v77);
      sub_21871057C(v13, &unk_280EE9D00, MEMORY[0x277CC9260]);
      if (qword_280E8D828 != -1)
      {
        swift_once();
      }

      v78 = qword_280F61720;
      v79 = sub_219BF61F4();
      sub_219BE5314("Search article factory unable to generate headline for web article when contentURL is missing", 93, 2, &dword_2186C1000, v78, v79, MEMORY[0x277D84F90]);
      swift_unknownObjectRelease();

      return 0;
    }

    v39 = v38;
    sub_219BDB8B4();

    v40 = sub_219BDB954();
    (*(*(v40 - 8) + 56))(v13, 0, 1, v40);
    sub_21871057C(v13, &unk_280EE9D00, MEMORY[0x277CC9260]);
  }

  v41 = v37;
  result = [v37 title];
  if (result)
  {
    v43 = result;

    v44 = sub_219BF5414();
    v46 = v45;

    v47 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v47 = v44 & 0xFFFFFFFFFFFFLL;
    }

    if (v47)
    {
      v48 = [v41 publishDate];

      if (v48)
      {
        v49 = v81;
        sub_219BDBCA4();

        v50 = 0;
      }

      else
      {
        v50 = 1;
        v49 = v81;
      }

      v71 = sub_219BDBD34();
      (*(*(v71 - 8) + 56))(v49, v50, 1, v71);
      v72 = sub_219BF6F94();
      sub_21871057C(v49, &qword_280EE9C40, MEMORY[0x277CC9578]);
      if (v72)
      {
        swift_unknownObjectRelease();

        return v36;
      }
    }

    else
    {
    }

    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    v73 = qword_280F61720;
    v74 = sub_219BF6214();
    sub_2186DD7B4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_219C09BA0;
    *(v75 + 56) = MEMORY[0x277D837D0];
    *(v75 + 64) = sub_2186FC3BC();
    v76 = v80[0];
    *(v75 + 32) = a1;
    *(v75 + 40) = v76;

    sub_219BE5314("Search article has invalid title or publish date, identifier=%{public}@", 71, 2, &dword_2186C1000, v73, v74, v75);
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

unint64_t sub_219088A20()
{
  result = qword_27CC15920;
  if (!qword_27CC15920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15920);
  }

  return result;
}

uint64_t sub_219088A9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219088F3C(0, &qword_280E8C7D8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219088EE8();
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

uint64_t sub_219088CE4(uint64_t a1)
{
  v2 = sub_219088EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219088D20(uint64_t a1)
{
  v2 = sub_219088EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219088D74(void *a1)
{
  sub_219088F3C(0, &qword_280E8C208, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219088EE8();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_219088EE8()
{
  result = qword_280E98E48;
  if (!qword_280E98E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98E48);
  }

  return result;
}

void sub_219088F3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219088EE8();
    v7 = a3(a1, &type metadata for SharedWithYouTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219088FB4()
{
  result = qword_27CC15928;
  if (!qword_27CC15928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC15928);
  }

  return result;
}

unint64_t sub_21908900C()
{
  result = qword_280E98E38;
  if (!qword_280E98E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98E38);
  }

  return result;
}

unint64_t sub_219089064()
{
  result = qword_280E98E40;
  if (!qword_280E98E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98E40);
  }

  return result;
}

BOOL sub_219089150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_2190930F4(a4, a5, a6);
  }

  while ((sub_219BF53A4() & 1) == 0);
  return v10 != v11;
}

BOOL sub_219089258(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != (a1 & 1));
  return v4 != 0;
}

uint64_t sub_219089288(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = a2 == 4;
    v5 = a1 == 4 && a2 == 4;
    v6 = a1 == 3 && a2 == 4;
    v7 = a1 == 2 && a2 == 4;
    v8 = a1 == 1 && a2 == 4;
    if (a1)
    {
      v4 = 0;
    }

    v9 = (a3 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      if (v11 <= 1)
      {
        if (*v9)
        {
          if (a2 != 1)
          {
            goto LABEL_19;
          }

LABEL_18:
          if (v10 == a1)
          {
            return 1;
          }

          goto LABEL_19;
        }

        if (!a2 && ((v10 ^ a1) & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        if (v11 == 2)
        {
          if (a2 != 2)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        if (v11 == 3)
        {
          if (a2 != 3)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        if (v10 <= 1)
        {
          if (v10)
          {
            if (v8)
            {
              return 1;
            }
          }

          else if (v4)
          {
            return 1;
          }
        }

        else if (v10 == 2)
        {
          if (v7)
          {
            return 1;
          }
        }

        else if (v10 == 3)
        {
          if (v6)
          {
            return 1;
          }
        }

        else if (v5)
        {
          return 1;
        }
      }

LABEL_19:
      v9 += 16;
      --v3;
    }

    while (v3);
  }

  return 0;
}

BOOL sub_2190893DC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = sub_219975D48(*v4);
    v9 = v8;
    if (v7 == sub_219975D48(v2) && v9 == v10)
    {

      return v5 != 0;
    }

    v12 = sub_219BF78F4();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_219089530(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF73626F6E4B676ELL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000014;
    }

    else
    {
      v4 = 0xD000000000000020;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000219CD6960;
    }

    else
    {
      v5 = 0x8000000219CD6980;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v4 = 0x6972657473756C63;
    }

    if (v3)
    {
      v5 = 0x8000000219CD6940;
    }

    else
    {
      v5 = 0xEF73626F6E4B676ELL;
    }
  }

  v6 = 0x8000000219CD6960;
  v7 = 0xD000000000000020;
  if (a2 == 2)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x8000000219CD6980;
  }

  if (a2)
  {
    v8 = 0xD000000000000015;
  }

  else
  {
    v8 = 0x6972657473756C63;
  }

  if (a2)
  {
    v2 = 0x8000000219CD6940;
  }

  if (a2 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}