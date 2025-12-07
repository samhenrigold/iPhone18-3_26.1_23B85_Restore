uint64_t sub_218EE6EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A25EF0(0);
  sub_219BE5FC4();
  sub_218EE6FA0(v5, a3, v6);
  sub_218A26564(v5);
  sub_218EE78F8(v6, v5);
  sub_21878E148();
  sub_219BE75D4();
  return sub_218EE7954(v6);
}

void sub_218EE6FA0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_219BE9F64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE8164();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A26508(a1, v78);
  if (v79)
  {
    if (v79 == 1)
    {
      sub_2186CB1F0(v78, v75);
      v69 = v11;
      v71 = v6;
      v72 = a3;
      v14 = *(v11 + 16);
      v14(v13, a2, v10);
      type metadata accessor for TagViewLayoutOptions(0);
      v15 = swift_allocObject();
      v16 = sub_219BE8034();
      v17 = [v16 preferredContentSizeCategory];

      LOBYTE(v16) = sub_219BF6924();
      type metadata accessor for TagViewLayoutOptions.AccessoryOptions();
      v18 = swift_allocObject();
      __asm
      {
        FMOV            V0.2D, #22.0
        FMOV            V1.2D, #30.0
      }

      *(v18 + 32) = _Q0;
      *(v18 + 48) = _Q1;
      *(v18 + 64) = 0x4041800000000000;
      *(v18 + 16) = &unk_282A24CD8;
      *(v18 + 24) = v16 & 1;
      *(v15 + 72) = v18;
      v14((v15 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions), v13, v10);
      sub_219BE8154();
      v26 = v25;
      sub_219BE7FB4();
      sub_219BE9F54();
      v28 = v27;
      v29 = *(v7 + 8);
      v30 = v71;
      v29(v9, v71);
      v31 = v26 - v28;
      sub_219BE7FB4();
      sub_219BE9F54();
      v33 = v32;
      v29(v9, v30);
      v34 = *(v69 + 8);
      v34(v13, v10);
      *(v15 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width) = v31 - v33;
      v35 = *(MEMORY[0x277D768C8] + 16);
      *(v15 + 16) = *MEMORY[0x277D768C8];
      *(v15 + 32) = v35;
      *(v15 + 48) = xmmword_219C45190;
      *(v15 + 64) = 0x4028000000000000;
      *(v15 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) = 0;
      *(v15 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context) = 0;
      v36 = __swift_project_boxed_opaque_existential_1((v73 + 96), *(v73 + 120));
      v37 = v76;
      v38 = v77;
      v39 = __swift_project_boxed_opaque_existential_1(v75, v76);
      sub_218C26FDC(v39, *&v15, *v36, v37, *(v38 + 16), v80);
      swift_setDeallocating();

      v34((v15 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions), v10);
      swift_deallocClassInstance();
      v40 = v72;
      sub_218718690(v75, v72);
      memcpy(v40 + 5, v80, 0x1EAuLL);
      *(v40 + 530) = 1;
      __swift_destroy_boxed_opaque_existential_1(v75);
    }

    else
    {
      v65 = *&v78[0];
      sub_219B7AF68(*&v78[0], v80);
      *a3 = v65;
      v66 = v80[0];
      *(a3 + 3) = v80[1];
      v67 = v80[3];
      *(a3 + 5) = v80[2];
      *(a3 + 7) = v67;
      *(a3 + 9) = v80[4];
      *(a3 + 1) = v66;
      *(a3 + 530) = 2;
    }
  }

  else
  {
    v70 = *&v78[0];
    v71 = v6;
    v41 = v11;
    v68 = *(v11 + 16);
    v68(v13, a2, v10);
    type metadata accessor for TagViewLayoutOptions(0);
    v42 = swift_allocObject();
    v72 = a3;
    v43 = v42;
    v44 = sub_219BE8034();
    v45 = [v44 preferredContentSizeCategory];

    LOBYTE(v44) = sub_219BF6924();
    type metadata accessor for TagViewLayoutOptions.AccessoryOptions();
    v46 = swift_allocObject();
    __asm
    {
      FMOV            V0.2D, #22.0
      FMOV            V1.2D, #30.0
    }

    *(v46 + 32) = _Q0;
    *(v46 + 48) = _Q1;
    *(v46 + 64) = 0x4041800000000000;
    *(v46 + 16) = &unk_282A24CB0;
    *(v46 + 24) = v44 & 1;
    *(v43 + 72) = v46;
    v68((v43 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions), v13, v10);
    sub_219BE8154();
    v50 = v49;
    sub_219BE7FB4();
    sub_219BE9F54();
    v52 = v51;
    v53 = *(v7 + 8);
    v54 = v71;
    v53(v9, v71);
    v55 = v50 - v52;
    sub_219BE7FB4();
    sub_219BE9F54();
    v57 = v56;
    v53(v9, v54);
    v58 = *(v41 + 8);
    v58(v13, v10);
    *(v43 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_width) = v55 - v57;
    v59 = *(MEMORY[0x277D768C8] + 16);
    *(v43 + 16) = *MEMORY[0x277D768C8];
    *(v43 + 32) = v59;
    *(v43 + 48) = xmmword_219C45190;
    *(v43 + 64) = 0x4028000000000000;
    *(v43 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_allowSuggestedDescription) = 0;
    *(v43 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_context) = 0;
    v60 = *__swift_project_boxed_opaque_existential_1((v73 + 96), *(v73 + 120));
    v61 = v70;

    sub_2189CCB7C(v62, v43, v60, v74);

    swift_setDeallocating();

    v58((v43 + OBJC_IVAR____TtC7NewsUI220TagViewLayoutOptions_layoutOptions), v10);
    swift_deallocClassInstance();
    v63 = v72;
    *v72 = v61;
    v64 = v63;
    memcpy(v63 + 1, v74, 0x1EAuLL);
    *(v64 + 530) = 0;
  }
}

uint64_t sub_218EE7688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_219BE8164();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_218EE7750, 0, 0);
}

uint64_t sub_218EE7750()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_218948094(sub_218EE7864, v3);

  sub_21878E0F4();
  sub_21878E148();
  sub_219BE6514();

  v4 = v0[1];

  return v4();
}

void sub_218EE79A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_218EE79FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_218EE7A68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218EE7B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static EmptyStateStyler.dynamicSearchHomeTheme.getter()
{
  v0 = objc_opt_self();
  v1 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.6 green:0.6 blue:0.6 alpha:1.0];
  v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  v3 = [v0 ts:v1 dynamicColor:v2 withDarkStyleVariant:?];

  LOBYTE(v2) = sub_219BED0C4();
  sub_2186F8B0C();
  v4 = sub_219BF6D44();
  if (v2)
  {
    v5 = v4;
    v6 = [v0 labelColor];
    v7 = v3;

    return MEMORY[0x2821D3768](v5, 0, v6);
  }

  else
  {

    return sub_219BE6C34();
  }
}

uint64_t sub_218EE7CEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EE84F4(0, &qword_27CC13360, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PuzzleFullArchiveTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EE843C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218EE8558(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218EE8490(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218EE7F98(uint64_t a1)
{
  v2 = sub_218EE843C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218EE7FD4(uint64_t a1)
{
  v2 = sub_218EE843C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218EE8050(void *a1)
{
  sub_218EE84F4(0, &qword_27CC13370, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EE843C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218EE8558(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218EE82B0(uint64_t a1)
{
  result = sub_218EE8558(&qword_27CC13350, type metadata accessor for PuzzleFullArchiveTagFeedGroup, &unk_219C453C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218EE8308(void *a1)
{
  a1[1] = sub_218EE8558(&qword_27CC13358, type metadata accessor for PuzzleFullArchiveTagFeedGroup, &unk_219C452F0);
  a1[2] = sub_218EE8558(&unk_27CC1C6F0, type metadata accessor for PuzzleFullArchiveTagFeedGroup, &unk_219C4539C);
  result = sub_218EE8558(&unk_27CC1C800, type metadata accessor for PuzzleFullArchiveTagFeedGroup, &unk_219C45374);
  a1[3] = result;
  return result;
}

uint64_t sub_218EE83B4(uint64_t a1)
{
  v2 = sub_218EE8558(&qword_27CC13358, type metadata accessor for PuzzleFullArchiveTagFeedGroup, &unk_219C452F0);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218EE843C()
{
  result = qword_27CC13368;
  if (!qword_27CC13368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13368);
  }

  return result;
}

uint64_t sub_218EE8490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleFullArchiveTagFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218EE84F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218EE843C();
    v7 = a3(a1, &type metadata for PuzzleFullArchiveTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218EE8558(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218EE85B4()
{
  result = qword_27CC13378;
  if (!qword_27CC13378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13378);
  }

  return result;
}

unint64_t sub_218EE860C()
{
  result = qword_27CC13380;
  if (!qword_27CC13380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13380);
  }

  return result;
}

unint64_t sub_218EE8664()
{
  result = qword_27CC13388;
  if (!qword_27CC13388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13388);
  }

  return result;
}

uint64_t sub_218EE86E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_218EE8BD8(0, &qword_280E91AA0, sub_21872F4C4);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v29 - v5;
  v36 = type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs(0);
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EE8BD8(0, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v43 = &v29 - v12;
  sub_218EE8C2C(0);
  v14 = v13;
  v37 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EE8C88();
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
    sub_218700550(&qword_27CC133A0, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs, &unk_219C64048);
    v19 = v36;
    v32 = v14;
    sub_219BF76E4();
    v30 = v16;
    v20 = v7;
    v21 = v38;
    v22 = v31;
    v23 = v43;
    sub_218EE8CDC(v43, v31);
    v24 = *(v18 + 48);
    v25 = v24(v22, 1, v19);
    v26 = v33;
    if (v25 == 1)
    {
      sub_21872F4C4(0);
      (*(*(v27 - 8) + 56))(v21, 1, 1, v27);
      sub_2191B93B0(v21, v20);
      sub_218EE8D5C(v23);
      if (v24(v22, 1, v19) != 1)
      {
        sub_218EE8D5C(v22);
      }
    }

    else
    {
      sub_218EE8D5C(v23);
      sub_218D4D5AC(v22, v20);
    }

    sub_218D4D5AC(v20, v35);
    (*(v37 + 8))(v30, v32);
    v17 = v26;
  }

  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_218EE8B48(uint64_t a1)
{
  v2 = sub_218EE8C88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218EE8B84(uint64_t a1)
{
  v2 = sub_218EE8C88();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_218EE8BD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_218EE8C2C(uint64_t a1)
{
  if (!qword_27CC13390)
  {
    sub_218EE8C88();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC13390);
    }
  }
}

unint64_t sub_218EE8C88()
{
  result = qword_27CC13398;
  if (!qword_27CC13398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13398);
  }

  return result;
}

uint64_t sub_218EE8CDC(uint64_t a1, uint64_t a2)
{
  sub_218EE8BD8(0, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EE8D5C(uint64_t a1)
{
  sub_218EE8BD8(0, &qword_280E9A040, type metadata accessor for ArticleListAudioHistoryFeedGroupKnobs);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218EE8DE8()
{
  result = qword_27CC133A8;
  if (!qword_27CC133A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC133A8);
  }

  return result;
}

unint64_t sub_218EE8E40()
{
  result = qword_27CC133B0;
  if (!qword_27CC133B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC133B0);
  }

  return result;
}

unint64_t sub_218EE8E98()
{
  result = qword_27CC133B8;
  if (!qword_27CC133B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC133B8);
  }

  return result;
}

BOOL sub_218EE8EEC()
{
  v1 = [*(v0 + 88) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v2 = 0;
    v3 = 0;
    goto LABEL_10;
  }

  v2 = v8;
  v3 = [v8 integerValue];
  if (v3 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v3))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (!*(&v10 + 1))
  {
    sub_218806FD0(&v11);
    goto LABEL_17;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v6 = -43;
    return ((v6 ^ v3) & 1) == 0;
  }

  v4 = v8;
  v5 = [v4 integerValue];

  v6 = v5 - 43;
  return ((v6 ^ v3) & 1) == 0;
}

void sub_218EE90C0(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v7 = sub_218EE936C();
  if (v8)
  {
    MEMORY[0x28223BE20](v7);
    v10 = v9;
    v12 = v11;
    sub_218EEA0A4(0);
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v13 = sub_219BF66A4();
    v14 = swift_allocObject();
    v14[2] = v4;
    v14[3] = a2;
    v14[4] = a3;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_218EEA204;
    *(v15 + 24) = v14;

    sub_219BE2F74();

    v16 = swift_allocObject();
    v16[2] = v10;
    v16[3] = v12;
    v16[4] = a2;
    v16[5] = a3;

    v17 = sub_219BE2E54();
    sub_219BE2FD4();
  }

  else
  {
    v18 = sub_219BF61F4();
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v19 = sub_219BF6F44();
    sub_219BE5314("Unexpected INPlayMediaIntent parameters", 39, 2, &dword_2186C1000, v19, v18, MEMORY[0x277D84F90]);

    v20 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:0];
    a2();
  }
}

id sub_218EE936C()
{
  v1 = v0;
  v2 = [v0 mediaItems];
  if (v2)
  {
    v3 = v2;
    sub_2186C6148(0, &qword_280E8E848, 0x277CD3DB8);
    v4 = sub_219BF5924();

    if (v4 >> 62)
    {
      result = sub_219BF7214();
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_4:
        if ((v4 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x21CECE0F0](0, v4);
        }

        else
        {
          if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v6 = *(v4 + 32);
        }

        v7 = v6;

        v8 = [v7 identifier];
        if (!v8)
        {

          goto LABEL_14;
        }

        v9 = v8;
        v10 = sub_219BF5414();
        v12 = v11;

        v19 = v10;
        v20 = v12;
        v17 = 65;
        v18 = 0xE100000000000000;
        sub_218B9E340();
        sub_218B9E394();
        LOBYTE(v9) = sub_219BF5314();

        if (v9)
        {
          return v10;
        }
      }
    }
  }

LABEL_14:
  result = [v1 mediaContainer];
  if (result)
  {
    v13 = result;
    v14 = [result identifier];
    if (v14)
    {
      v15 = v14;
      v16 = sub_219BF5414();

      sub_218B9E340();
      sub_218B9E394();
      LOBYTE(v15) = sub_219BF5314();

      if (v15)
      {
        return v16;
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_218EE95B8(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  sub_219BF2834();
  sub_218AFD1EC();
  v3 = sub_219BE2E54();
  v4 = sub_219BE2E34();

  return v4;
}

uint64_t sub_218EE9670(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v32 = a4;
  v33 = a3;
  v29 = a2;
  sub_218EEA144(0, &unk_280E90420, sub_218932F68, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v28 = &v27 - v6;
  v27 = sub_219BF1324();
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF1C74();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF2A04();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218932F68(0);
  v30 = *(v18 - 8);
  v31 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  (*(v15 + 104))(v17, *MEMORY[0x277D33A78], v14, v19);
  (*(v11 + 104))(v13, *MEMORY[0x277D33570], v10);
  (*(v7 + 104))(v9, *MEMORY[0x277D33280], v27);
  v34 = 0u;
  v35 = 0u;
  sub_218731D50();
  swift_unknownObjectRetain();
  sub_219BF2564();
  if (sub_218EE8EEC())
  {
    sub_219BEACD4();
  }

  else
  {
    sub_219BEAC54();
  }

  swift_getObjectType();
  v23 = v30;
  v22 = v31;
  v24 = v28;
  (*(v30 + 16))(v28, v21, v31);
  (*(v23 + 56))(v24, 0, 1, v22);
  sub_219BE7094();
  sub_218C163C4(v24);
  v25 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:4 userActivity:0];
  v33();

  return (*(v23 + 8))(v21, v22);
}

void sub_218EE9BE0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = sub_219BF61F4();
  sub_2186F20D4(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_2186FC3BC();
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);

  v9 = sub_219BF6F44();
  sub_219BE5314("Error retrieving headlines for INPlayMediaIntent with articleID %{public}@", 74, 2, &dword_2186C1000, v9, v7, v8);

  v10 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:0];
  a4();
}

uint64_t sub_218EE9D10()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_218EE9D84(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  v6 = sub_218EE936C();
  if (v7)
  {
    MEMORY[0x28223BE20](v6);
    v9 = v8;
    v11 = v10;
    sub_218EEA0A4(0);
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v12 = sub_219BF66A4();
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = sub_218967168;
    v13[4] = v5;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_218EEA110;
    *(v14 + 24) = v13;

    sub_219BE2F74();

    v15 = swift_allocObject();
    v15[2] = v9;
    v15[3] = v11;
    v15[4] = sub_218967168;
    v15[5] = v5;

    v16 = sub_219BE2E54();
    sub_219BE2FD4();
  }

  else
  {
    v17 = sub_219BF61F4();
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v18 = sub_219BF6F44();
    sub_219BE5314("Unexpected INPlayMediaIntent parameters", 39, 2, &dword_2186C1000, v18, v17, MEMORY[0x277D84F90]);

    v19 = [objc_allocWithZone(MEMORY[0x277CD3EC8]) initWithCode:6 userActivity:0];
    (a3)[2](a3, v19);
  }
}

void sub_218EEA0A4(uint64_t a1)
{
  if (!qword_27CC133C0)
  {
    sub_218731D50();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC133C0);
    }
  }
}

void sub_218EEA144(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t objectdestroy_10Tm()
{

  return swift_deallocObject();
}

uint64_t type metadata accessor for WebEmbedRouteModel(uint64_t a1)
{
  result = qword_280ED20A8;
  if (!qword_280ED20A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218EEA394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  v5[33] = type metadata accessor for HistoryFeedLayoutModel(0);
  v5[34] = swift_task_alloc();
  v6 = sub_219BEF974();
  v5[35] = v6;
  v5[36] = *(v6 - 8);
  v5[37] = swift_task_alloc();
  sub_218C3E97C(0);
  v5[38] = v7;
  v5[39] = *(v7 - 8);
  v5[40] = swift_task_alloc();
  v5[41] = swift_task_alloc();
  v8 = sub_219BE9FA4();
  v5[42] = v8;
  v5[43] = *(v8 - 8);
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280EE9048, MEMORY[0x277D6D1A0]);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v9 = sub_219BDCB14();
  v5[50] = v9;
  v5[51] = *(v9 - 8);
  v5[52] = swift_task_alloc();
  v10 = sub_219BEE074();
  v5[53] = v10;
  v5[54] = *(v10 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91990, MEMORY[0x277D32218]);
  v5[58] = swift_task_alloc();
  v11 = sub_219BED8D4();
  v5[59] = v11;
  v5[60] = *(v11 - 8);
  v5[61] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91548, MEMORY[0x277D325F8]);
  v5[62] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E924F8, MEMORY[0x277D31DD0]);
  v5[63] = swift_task_alloc();
  v12 = sub_219BF1904();
  v5[64] = v12;
  v5[65] = *(v12 - 8);
  v5[66] = swift_task_alloc();
  v13 = type metadata accessor for ArticleListHistoryFeedGroup(0);
  v5[67] = v13;
  v5[68] = *(v13 - 8);
  v5[69] = swift_task_alloc();
  type metadata accessor for HistoryFeedSectionDescriptor(0);
  v5[70] = swift_task_alloc();
  sub_218EEC918(0);
  v5[71] = v14;
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  sub_218C3EA10(0);
  v5[74] = v15;
  v5[75] = *(v15 - 8);
  v5[76] = swift_task_alloc();
  sub_218EEC9A0(0);
  v5[77] = swift_task_alloc();
  v16 = sub_219BE8944();
  v5[78] = v16;
  v5[79] = *(v16 - 8);
  v5[80] = swift_task_alloc();
  v17 = sub_219BE8164();
  v5[81] = v17;
  v5[82] = *(v17 - 8);
  v5[83] = swift_task_alloc();
  sub_219BEF6B4();
  v5[84] = swift_task_alloc();
  v18 = sub_219BEF594();
  v5[85] = v18;
  v5[86] = *(v18 - 8);
  v5[87] = swift_task_alloc();
  sub_219BEF5B4();
  v5[88] = swift_task_alloc();
  sub_219BEF604();
  v5[89] = swift_task_alloc();
  sub_219BEF644();
  v5[90] = swift_task_alloc();
  sub_219BEF664();
  v5[91] = swift_task_alloc();
  v19 = sub_219BEF694();
  v5[92] = v19;
  v5[93] = *(v19 - 8);
  v5[94] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[95] = swift_task_alloc();
  sub_2189BD6B0(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[96] = swift_task_alloc();
  v20 = sub_219BEF6C4();
  v5[97] = v20;
  v5[98] = *(v20 - 8);
  v5[99] = swift_task_alloc();
  sub_219BDCAF4();
  v5[100] = swift_task_alloc();
  v21 = sub_219BDCAE4();
  v5[101] = v21;
  v5[102] = *(v21 - 8);
  v5[103] = swift_task_alloc();
  v22 = sub_219BDCAB4();
  v5[104] = v22;
  v5[105] = *(v22 - 8);
  v5[106] = swift_task_alloc();
  sub_2189BD6B0(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[107] = swift_task_alloc();
  v23 = sub_219BF0634();
  v5[108] = v23;
  v5[109] = *(v23 - 8);
  v5[110] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218EEAE34, 0, 0);
}

void *sub_218EEAE34()
{
  v112 = v0[108];
  v113 = v0[109];
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v107 = v0[110];
  v4 = v0[104];
  v142 = v0[103];
  v121 = v0[102];
  v127 = v0[101];
  v111 = v0[99];
  v115 = v0[98];
  v117 = v0[97];
  v92 = v0[96];
  v94 = v0[95];
  v5 = v0[93];
  v96 = v0[94];
  v98 = v0[92];
  v6 = v0[86];
  v101 = v0[87];
  v103 = v0[85];
  v119 = v0[82];
  v123 = v0[81];
  v125 = v0[83];
  v132 = v0[79];
  v136 = v0[78];
  v138 = v0[80];
  v7 = v0[30];
  v139 = v0[29];
  v141 = v0[77];
  (*(v113 + 104))();
  v8 = sub_219BF0BD4();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  (*(v3 + 104))(v2, *MEMORY[0x277D6D178], v4);
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
  v9 = sub_219BEF624();
  (*(*(v9 - 8) + 56))(v92, 1, 1, v9);
  v10 = sub_219BEF684();
  (*(*(v10 - 8) + 56))(v94, 1, 1, v10);
  (*(v5 + 104))(v96, *MEMORY[0x277D326B0], v98);
  sub_219BEF654();
  sub_219BEF5F4();
  sub_219BEF5F4();
  (*(v6 + 104))(v101, *MEMORY[0x277D32680], v103);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  sub_219BEE0E4();
  (*(v115 + 8))(v111, v117);
  (*(v121 + 8))(v142, v127);
  (*(v3 + 8))(v2, v4);
  sub_218864B10(v1, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v113 + 8))(v107, v112);
  (*(v119 + 16))(v125, v7, v123);
  (*(v132 + 104))(v138, *MEMORY[0x277D6E080], v136);
  sub_218954264(0);
  (*(*(v11 - 8) + 16))(v141, v139, v11);
  sub_2186FF87C(&qword_280EE3640, sub_218954264, MEMORY[0x277D6EC70]);
  v12 = sub_219BF5E44();
  if (v12)
  {
    v13 = v12;
    v144 = MEMORY[0x277D84F90];
    sub_218C36088(0, v12 & ~(v12 >> 63), 0);
    v14 = v144;
    result = sub_219BF5DF4();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v16 = v0;
      v17 = 0;
      v18 = v0[22];
      v118 = v0 + 12;
      v19 = v0[54];
      v116 = (v0[68] + 48);
      v95 = (v0[60] + 16);
      v93 = (v0[65] + 8);
      v97 = (v0[51] + 8);
      v89 = (v19 + 16);
      v114 = (v0[43] + 104);
      v99 = v0[36];
      v143 = v0[39];
      v140 = (v99 + 8);
      v126 = v0[71];
      v108 = (v19 + 8);
      v91 = v0[67];
      v109 = v0[75];
      v88 = *MEMORY[0x277D6E980];
      v87 = *MEMORY[0x277D6E988];
      v90 = *MEMORY[0x277D6E9B0];
      v110 = v13;
      while (1)
      {
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        v137 = v17;
        v21 = v16[73];
        v22 = *(v126 + 48);
        v16[23] = v18;
        result = sub_219BF5DF4();
        if (v18 < v16[24])
        {
          goto LABEL_31;
        }

        result = sub_219BF5E84();
        if (v18 >= v16[25])
        {
          goto LABEL_32;
        }

        v120 = v20;
        v122 = v18;
        v124 = v14;
        v23 = v16;
        v24 = v16[72];
        v128 = v23[70];
        v133 = v23[67];
        v25 = sub_219BF5EC4();
        v27 = v26;
        sub_218EECA34(0, &qword_280EE5970, MEMORY[0x277D6D710]);
        v29 = v28;
        v30 = *(v28 - 8);
        (*(v30 + 16))(v21 + v22, v27, v28);
        v25(v118, 0);
        *v24 = v137;
        (*(v30 + 32))(&v24[*(v126 + 48)], v21 + v22, v29);
        sub_219BE6934();
        if ((*v116)(v128, 1, v133) == 1)
        {
          v31 = v23[44];
          v32 = v23[42];
          v23[17] = 0;
          v23[18] = 0;
          v23[16] = 1;
          (*v114)(v31, v90, v32);
          sub_218EECB28();
          *(v23 + 1) = 0u;
          *(v23 + 2) = 0u;
          v23[6] = 0;
          sub_219BEE0A4();
          v16 = v23;
          v33 = v23[55];
          v34 = v23[53];
          sub_218864B10((v23 + 2), &qword_280E91020, sub_2189BD704);
          v35 = sub_219BEE004();
          (*v108)(v33, v34);
          v36 = *(v35 + 16);
          if (v36)
          {
            v145 = MEMORY[0x277D84F90];
            sub_218C361C8(0, v36, 0);
            v37 = v35 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
            v129 = *(v99 + 16);
            v134 = *(v99 + 72);
            do
            {
              v38 = v16[37];
              v40 = v16[34];
              v39 = v16[35];
              v129(v38, v37, v39);
              v129(v40, v38, v39);
              sub_2186FF87C(&unk_280EC8148, type metadata accessor for HistoryFeedLayoutModel, &unk_219C9D028);
              sub_219BE75D4();
              (*v140)(v38, v39);
              v41 = *(v145 + 16);
              v42 = *(v145 + 24);
              if (v41 >= v42 >> 1)
              {
                sub_218C361C8((v42 > 1), v41 + 1, 1);
              }

              v43 = v16[40];
              v44 = v16[38];
              *(v145 + 16) = v41 + 1;
              (*(v143 + 32))(v145 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v41, v43, v44);
              v37 += v134;
              --v36;
            }

            while (v36);
          }

          sub_218EECC84();
          sub_2186FF87C(&qword_280EC8140, type metadata accessor for HistoryFeedLayoutModel, &unk_219C9D060);
          sub_219BE81A4();
        }

        else
        {
          v45 = v23[66];
          v46 = v23[63];
          v102 = v23[64];
          v47 = v23[61];
          v48 = v23[62];
          v49 = v23[59];
          v100 = v23[58];
          v104 = v23[49];
          v105 = v23[48];
          v106 = v23[47];
          v130 = v23[46];
          v50 = v23[69];
          sub_218B73F4C(v23[70], v50);
          v51 = *(v91 + 20);
          sub_219BED874();
          v52 = sub_219BEDB64();
          (*(*(v52 - 8) + 56))(v46, 1, 1, v52);
          (*v95)(v47, v50 + v51, v49);
          sub_219BEF4D4();
          v53 = sub_219BEF4E4();
          (*(*(v53 - 8) + 56))(v48, 0, 1, v53);
          v54 = sub_219BEEA64();
          (*(*(v54 - 8) + 56))(v100, 1, 1, v54);
          sub_2186FF87C(&unk_280EB4208, type metadata accessor for HistoryFeedSectionDescriptor, &unk_219C7A580);
          sub_2186FF87C(&qword_280ED8670, type metadata accessor for HistoryFeedModel, &unk_219C443D8);
          sub_219BE69F4();
          sub_218864B10(v100, &qword_280E91990, MEMORY[0x277D32218]);
          sub_218864B10(v48, &qword_280E91548, MEMORY[0x277D325F8]);
          sub_218864B10(v46, &qword_280E924F8, MEMORY[0x277D31DD0]);
          v55 = *v93;
          (*v93)(v45, v102);
          sub_219BED874();
          v56 = sub_219BF44B4();
          v55(v45, v102);
          v23[10] = sub_219BF3594();
          v23[11] = MEMORY[0x277D33EB8];
          v23[7] = v56;
          v57 = sub_219BDCB24();
          v58 = *(*(v57 - 8) + 56);
          v58(v104, 1, 1, v57);
          v58(v105, 1, 1, v57);
          v58(v106, 1, 1, v57);
          v58(v130, 1, 1, v57);

          sub_219BDCB04();
          sub_219BEE0B4();
          v16 = v23;
          v59 = v23[56];
          v60 = v23[57];
          v61 = v23[53];
          v62 = v23[45];
          v63 = v23[42];
          (*v97)(v23[52], v23[50]);

          sub_218864B10((v23 + 7), &qword_280E91020, sub_2189BD704);
          (*v89)(v59, v60, v61);
          v23[19] = sub_21956D914(v59);
          v23[20] = v64;
          v23[21] = v65;
          v66 = sub_219BE9F84();
          (*(*(v66 - 8) + 104))(v62, v88, v66);
          (*v114)(v62, v87, v63);
          v67 = sub_219BEE004();
          v68 = *(v67 + 16);
          if (v68)
          {
            v146 = MEMORY[0x277D84F90];
            sub_218C361C8(0, v68, 0);
            v69 = v67 + ((*(v99 + 80) + 32) & ~*(v99 + 80));
            v131 = *(v99 + 16);
            v135 = *(v99 + 72);
            do
            {
              v70 = v16[37];
              v71 = v16;
              v74 = v16 + 34;
              v73 = v16[34];
              v72 = v74[1];
              v131(v70, v69, v72);
              v131(v73, v70, v72);
              sub_2186FF87C(&unk_280EC8148, type metadata accessor for HistoryFeedLayoutModel, &unk_219C9D028);
              sub_219BE75D4();
              (*v140)(v70, v72);
              v75 = *(v146 + 16);
              v76 = *(v146 + 24);
              if (v75 >= v76 >> 1)
              {
                sub_218C361C8((v76 > 1), v75 + 1, 1);
              }

              v77 = v71[41];
              v78 = v71[38];
              *(v146 + 16) = v75 + 1;
              (*(v143 + 32))(v146 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v75, v77, v78);
              v69 += v135;
              --v68;
              v16 = v71;
            }

            while (v68);
          }

          v79 = v16[69];
          v80 = v16[57];
          v81 = v16[53];
          sub_218EECC84();
          sub_2186FF87C(&qword_280EC8140, type metadata accessor for HistoryFeedLayoutModel, &unk_219C9D060);
          sub_219BE81A4();

          (*v108)(v80, v81);
          sub_218EECC24(v79, type metadata accessor for ArticleListHistoryFeedGroup);
        }

        sub_218EECC24(v16[72], sub_218EEC918);
        v14 = v124;
        v83 = *(v124 + 16);
        v82 = *(v124 + 24);
        if (v83 >= v82 >> 1)
        {
          sub_218C36088((v82 > 1), v83 + 1, 1);
          v14 = v124;
        }

        v84 = v16[76];
        v85 = v16[74];
        *(v14 + 16) = v83 + 1;
        (*(v109 + 32))(v14 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v83, v84, v85);
        v16[27] = v122;
        result = sub_219BF5E54();
        v18 = v16[26];
        v17 = v120;
        if (v120 == v110)
        {
          sub_218EECC24(v16[77], sub_218EEC9A0);
          goto LABEL_27;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_218EECC24(v0[77], sub_218EEC9A0);
    v16 = v0;
LABEL_27:
    sub_218EECC84();
    sub_2186FF87C(&qword_280EC8140, type metadata accessor for HistoryFeedLayoutModel, &unk_219C9D060);
    sub_219BE6564();
    sub_219BEE0C4();

    v86 = v16[1];

    return v86();
  }

  return result;
}

uint64_t sub_218EEC854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_218EEA394(a1, a2, a3, a4);
}

void sub_218EEC918(uint64_t a1)
{
  if (!qword_280E8E990)
  {
    sub_218EECA34(255, &qword_280EE5970, MEMORY[0x277D6D710]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E990);
    }
  }
}

void sub_218EEC9A0(uint64_t a1)
{
  if (!qword_280E8D420)
  {
    sub_218954264(255);
    sub_2186FF87C(&qword_280EE3648, sub_218954264, MEMORY[0x277D6EC68]);
    v1 = sub_219BF7544();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D420);
    }
  }
}

void sub_218EECA34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for HistoryFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for HistoryFeedModel(255);
    v8[2] = sub_2186FF87C(&qword_280EB4200, type metadata accessor for HistoryFeedSectionDescriptor, &unk_219C7A558);
    v8[3] = sub_2186FF87C(&qword_280ED8650, type metadata accessor for HistoryFeedModel, &unk_219C441A0);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218EECB28()
{
  result = qword_280EE5980;
  if (!qword_280EE5980)
  {
    sub_218EECA34(255, &qword_280EE5970, MEMORY[0x277D6D710]);
    sub_2186FF87C(&unk_280EB4208, type metadata accessor for HistoryFeedSectionDescriptor, &unk_219C7A580);
    sub_2186FF87C(&qword_280ED8670, type metadata accessor for HistoryFeedModel, &unk_219C443D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE5980);
  }

  return result;
}

uint64_t sub_218EECC24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218EECC84()
{
  result = qword_280EA0400;
  if (!qword_280EA0400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA0400);
  }

  return result;
}

uint64_t type metadata accessor for NewspaperGroup(uint64_t a1)
{
  result = qword_280EDC268;
  if (!qword_280EDC268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218EECD4C(uint64_t a1)
{
  type metadata accessor for NewspaperGroupConfig(319);
  if (v1 <= 0x3F)
  {
    sub_219BED8D4();
    if (v2 <= 0x3F)
    {
      sub_2186D6710(319, &qword_280E8E390, &protocolRef_FCChannelProviding);
      if (v3 <= 0x3F)
      {
        sub_218EECE28(319);
        if (v4 <= 0x3F)
        {
          sub_2186D0AF8(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_218EECE28(uint64_t a1)
{
  if (!qword_280E8EC20)
  {
    sub_2186D6710(255, &qword_280E8E360, &protocolRef_FCSectionProviding);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EC20);
    }
  }
}

void sub_218EECE90(void **a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v4 = v2;
    v5 = v2;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    type metadata accessor for AVError(0);
    if (swift_dynamicCast())
    {
      sub_218EEDB58();
      sub_219BDB6E4();
      if (v23 == -11819)
      {
        sub_2186C66AC();
        v6 = sub_219BF6F74();
        v7 = sub_219BF61F4();
        sub_219BE5314("AudioErrorHandler: Ignoring media services reset audio error code, handled elsewhere.", 85, 2, &dword_2186C1000, v6, v7, MEMORY[0x277D84F90]);

LABEL_14:
        return;
      }
    }

    sub_2186C66AC();
    v9 = sub_219BF6F74();
    v10 = sub_219BF61F4();
    sub_2186F20D4(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09BA0;
    sub_219BF7484();
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_2186FC3BC();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    sub_219BE5314("AudioErrorHandler: Other error occurred: %{public}@", 51, 2, &dword_2186C1000, v9, v10, v11);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 40), *(Strong + 64));

      v13 = sub_219BE7174();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 rootViewController];

        if (v15)
        {
          v16 = sub_219BDB714();
          v17 = [v16 fc_isAVUnauthorizedError];

          sub_218EEDAF4();
          sub_219BEA744();
          swift_allocObject();
          sub_219BEA6C4();
          v18 = swift_allocObject();
          *(v18 + 16) = v17;
          *(v18 + 24) = sub_218EEDAEC;
          *(v18 + 32) = a2;
          *(v18 + 40) = v2;
          *(v18 + 48) = v15;
          v19 = v2;

          v20 = v15;
          sub_219BEA6E4();

          v21 = sub_219BF6534();
          sub_219BEA6D4();

          return;
        }
      }

      sub_218EED298(a2);
    }

    goto LABEL_14;
  }

  sub_2186C66AC();
  v22 = sub_219BF6F74();
  v8 = sub_219BF6214();
  sub_219BE5314("AudioErrorHandler: Error reset to nil", 37, 2, &dword_2186C1000, v22, v8, MEMORY[0x277D84F90]);
}

uint64_t sub_218EED298(uint64_t a1)
{
  v25 = a1;
  sub_218CFB62C(0);
  MEMORY[0x28223BE20](v1 - 8);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BF1324();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BF1C74();
  v6 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BF2A04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EEDBB8();
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *MEMORY[0x277D33A68], v9, v16);
  (*(v6 + 104))(v8, *MEMORY[0x277D33568], v23);
  v26 = 0u;
  v27 = 0u;
  (*(v3 + 104))(v5, *MEMORY[0x277D33290], v24);
  sub_219BF2564();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_219BEABC4();
    v19 = v22;
    (*(v15 + 16))(v22, v18, v14);
    (*(v15 + 56))(v19, 0, 1, v14);
    sub_219BE7094();
    swift_unknownObjectRelease();

    sub_218EEDC0C(v19);
  }

  return (*(v15 + 8))(v18, v14);
}

void sub_218EED68C(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CEE3D8]) init];
    [v7 setIgnoreAccountConversion_];
    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000087, 0x8000000219CFF2D0);
    swift_getErrorValue();
    v8 = sub_219BF7A04();
    MEMORY[0x21CECC330](v8);

    v9 = sub_219BF53D4();

    [v7 setDebugReason_];

    v10 = sub_219BF6534();
    v11 = [objc_allocWithZone(MEMORY[0x277CEE878]) initWithAccount:0 presentingViewController:v10 options:v7];

    v12 = [v11 performAuthentication];
    v13 = swift_allocObject();
    *(v13 + 16) = a3;
    *(v13 + 24) = a4;
    v15[4] = sub_218EEDBB0;
    v15[5] = v13;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_218846728;
    v15[3] = &block_descriptor_74;
    v14 = _Block_copy(v15);

    [v12 addFinishBlock_];
    _Block_release(v14);
  }

  else
  {
    a3(a1);
  }
}

double sub_218EED8C0(id a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_2186C66AC();
    v8 = a2;
    v9 = sub_219BF6F74();
    v10 = sub_219BF61F4();
    sub_2186F20D4(0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09BA0;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    *(v11 + 56) = MEMORY[0x277D837D0];
    *(v11 + 64) = sub_2186FC3BC();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    sub_219BE5314("AppleID authentication failed in AudioErrorHandler with error: %{public}@", 73, 2, &dword_2186C1000, v9, v10, v11);
  }

  if (a1)
  {
    v12 = [a1 account];
    if (v12)
    {

      v13 = [objc_opt_self() sharedAccount];
      [v13 reloadiTunesAccount];
    }
  }

  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;

  sub_219BE3494();

  return result;
}

uint64_t sub_218EEDA9C()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocClassInstance();
}

unint64_t sub_218EEDAF4()
{
  result = qword_27CC133C8;
  if (!qword_27CC133C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC133C8);
  }

  return result;
}

unint64_t sub_218EEDB58()
{
  result = qword_27CC0A740;
  if (!qword_27CC0A740)
  {
    type metadata accessor for AVError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC0A740);
  }

  return result;
}

void sub_218EEDBB8()
{
  if (!qword_280E90410)
  {
    v0 = sub_219BF25B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E90410);
    }
  }
}

uint64_t sub_218EEDC0C(uint64_t a1)
{
  sub_218CFB62C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218EEDC8C(void *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = sub_219BF2124();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_219BDB954();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = [objc_msgSend(a1 eventLeagueTag];
  swift_unknownObjectRelease();
  if (!v10)
  {
    sub_219BF5414();
    v10 = sub_219BF53D4();
  }

  v11 = [objc_opt_self() nss:v10 NewsURLForTagID:5 feedConfiguration:?];

  sub_219BDB8B4();
  sub_218EEDEFC(0);
  sub_219BF14C4();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  sub_219BF20E4();
  sub_219BF14A4();
  (*(v6 + 8))(v9, v5);
  return v12;
}

void sub_218EEDEFC(uint64_t a1)
{
  if (!qword_280E8B860)
  {
    sub_219BF14C4();
    v1 = sub_219BF78A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8B860);
    }
  }
}

char *sub_218EEDF54(void *a1, char a2)
{
  if (a2 != 1)
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = [a1 eventCompetitorTags];
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    goto LABEL_17;
  }

  v4 = v2;
  sub_2186D85DC();
  v5 = sub_219BF5924();

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_16:

LABEL_17:
    v17 = sub_218845F78(v3);

    return v17;
  }

  v6 = sub_219BF7214();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_5:
  result = sub_21870B65C(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CECE0F0](v8, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v8 + 32);
        swift_unknownObjectRetain();
      }

      v10 = [v9 identifier];
      v11 = sub_219BF5414();
      v13 = v12;
      swift_unknownObjectRelease();

      v15 = *(v3 + 16);
      v14 = *(v3 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_21870B65C((v14 > 1), v15 + 1, 1);
      }

      ++v8;
      *(v3 + 16) = v15 + 1;
      v16 = v3 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
    }

    while (v6 != v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_218EEE114(uint64_t a1)
{
  sub_218EEE4B8(0);
  v3 = v2;
  sub_219BED8F4();
  v4 = *(v11 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v5 = [v4 backingTag];

  LODWORD(v4) = [v5 isMySports];
  swift_unknownObjectRelease();
  if (v4)
  {
    (*(*(v3 - 8) + 8))(a1, v3);
    return 0;
  }

  else
  {
    sub_219BED8F4();
    v7 = *(v11 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v8 = [v7 backingTag];

    v6 = [v8 asSportsEvent];
    swift_unknownObjectRelease();
    if (!v6)
    {
      sub_219BED8F4();
      v9 = *(v11 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

      v6 = [v9 backingTag];
    }

    (*(*(v3 - 8) + 8))(a1, v3);
  }

  return v6;
}

id sub_218EEE328(__n128 a1)
{
  sub_219BEF0B4();
  v1 = *(v9 + 16);

  v2 = *(v1 + 32);

  v3 = [v2 backingTag];

  LODWORD(v2) = [v3 isMySports];
  swift_unknownObjectRelease();
  if (v2)
  {

    return 0;
  }

  else
  {
    sub_219BEF0B4();
    v5 = *(v9 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

    v6 = [v5 backingTag];

    v4 = [v6 asSportsEvent];
    swift_unknownObjectRelease();
    if (!v4)
    {
      sub_219BEF0B4();
      v7 = *(v9 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

      v4 = [v7 backingTag];
    }
  }

  return v4;
}

void sub_218EEE4B8(uint64_t a1)
{
  if (!qword_27CC133D0)
  {
    type metadata accessor for TagFeedServiceConfig(255);
    sub_2186F7CA4();
    v1 = sub_219BED924();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC133D0);
    }
  }
}

uint64_t type metadata accessor for TagFeedFailedData(uint64_t a1)
{
  result = qword_280ED4E10;
  if (!qword_280ED4E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218EEE590(uint64_t a1)
{
  result = type metadata accessor for TagFeedGapLocation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_218EEE60C()
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
  qword_280EE9A18 = result;
  return result;
}

uint64_t static Settings.FeedPerformance.suppressAlerts.getter()
{
  if (qword_280EE9A10 != -1)
  {
    swift_once();
  }
}

uint64_t sub_218EEE82C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EEF034(0, &qword_280E8CDC8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EEEF7C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218EEF098(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218EEEFD0(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218EEEAD8(uint64_t a1)
{
  v2 = sub_218EEEF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218EEEB14(uint64_t a1)
{
  v2 = sub_218EEEF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218EEEB90(void *a1)
{
  sub_218EEF034(0, &qword_280E8C580, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EEEF7C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218EEF098(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218EEEDF0(uint64_t a1)
{
  result = sub_218EEF098(&qword_280EC3198, type metadata accessor for SpotlightTodayFeedGroup, &unk_219C45A84);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218EEEE48(uint64_t a1)
{
  v2 = sub_218EEF098(&qword_280EC31C8, type metadata accessor for SpotlightTodayFeedGroup, &unk_219C45968);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218EEEED0(void *a1)
{
  a1[1] = sub_218EEF098(&qword_280EC31C8, type metadata accessor for SpotlightTodayFeedGroup, &unk_219C45968);
  a1[2] = sub_218EEF098(&qword_280EC31A0, type metadata accessor for SpotlightTodayFeedGroup, &unk_219C45A5C);
  result = sub_218EEF098(&qword_280EC31B0, type metadata accessor for SpotlightTodayFeedGroup, &unk_219C45A34);
  a1[3] = result;
  return result;
}

unint64_t sub_218EEEF7C()
{
  result = qword_280EC31E0;
  if (!qword_280EC31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC31E0);
  }

  return result;
}

uint64_t sub_218EEEFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpotlightTodayFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218EEF034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218EEEF7C();
    v7 = a3(a1, &type metadata for SpotlightTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218EEF098(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218EEF0F4()
{
  result = qword_27CC133D8;
  if (!qword_27CC133D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC133D8);
  }

  return result;
}

unint64_t sub_218EEF14C()
{
  result = qword_280EC31D0;
  if (!qword_280EC31D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC31D0);
  }

  return result;
}

unint64_t sub_218EEF1A4()
{
  result = qword_280EC31D8;
  if (!qword_280EC31D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC31D8);
  }

  return result;
}

uint64_t sub_218EEF1F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EEFA00(0, &qword_280E8CB88, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SeenContentMarkTodayFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EEF948();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218EEFA64(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218EEF99C(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218EEF4A4(uint64_t a1)
{
  v2 = sub_218EEF948();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218EEF4E0(uint64_t a1)
{
  v2 = sub_218EEF948();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218EEF55C(void *a1)
{
  sub_218EEFA00(0, &qword_280E8C3E8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EEF948();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218EEFA64(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218EEF7BC(uint64_t a1)
{
  result = sub_218EEFA64(&qword_27CC0B998, type metadata accessor for SeenContentMarkTodayFeedGroup, &unk_219C45D4C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218EEF814(uint64_t a1)
{
  v2 = sub_218EEFA64(&qword_27CC133F0, type metadata accessor for SeenContentMarkTodayFeedGroup, &unk_219C45C30);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_218EEF89C(void *a1)
{
  a1[1] = sub_218EEFA64(&qword_27CC133F0, type metadata accessor for SeenContentMarkTodayFeedGroup, &unk_219C45C30);
  a1[2] = sub_218EEFA64(&qword_280EAEF40, type metadata accessor for SeenContentMarkTodayFeedGroup, &unk_219C45D24);
  result = sub_218EEFA64(&qword_280EAEF48, type metadata accessor for SeenContentMarkTodayFeedGroup, &unk_219C45CFC);
  a1[3] = result;
  return result;
}

unint64_t sub_218EEF948()
{
  result = qword_280EAEF68;
  if (!qword_280EAEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEF68);
  }

  return result;
}

uint64_t sub_218EEF99C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeenContentMarkTodayFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218EEFA00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218EEF948();
    v7 = a3(a1, &type metadata for SeenContentMarkTodayFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218EEFA64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218EEFAC0()
{
  result = qword_27CC133F8;
  if (!qword_27CC133F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC133F8);
  }

  return result;
}

unint64_t sub_218EEFB18()
{
  result = qword_280EAEF58;
  if (!qword_280EAEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEF58);
  }

  return result;
}

unint64_t sub_218EEFB70()
{
  result = qword_280EAEF60;
  if (!qword_280EAEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EAEF60);
  }

  return result;
}

double sub_218EEFBEC(uint64_t a1)
{
  v2 = v1;
  sub_21896FA3C(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = *(v2 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = 1;
  if (a1 && (v13 = sub_219BE82D4()) != 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = *(v2 + 24);
  }

  v15 = sub_219BDFA44();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v40 = 0;
  memset(v39, 0, sizeof(v39));
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = v11;
  sub_2187B14CC(v37, &v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  v30 = v12;
  if (v33)
  {
    sub_21875F93C(&v32, v34);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_2187448D0(&v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v17 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
  }

  v31 = v12 | 0x7000000000000006;
  v33 = sub_219BDD274();
  *&v32 = v14;
  sub_2189B4E2C(v10, v7);
  sub_2187B14CC(v39, v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v19 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v20 = (v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v29 = v10;
  v22 = swift_allocObject();
  *(v22 + 16) = v14;
  sub_2189B4EAC(v7, v22 + v19);
  v23 = v22 + v20;
  v24 = v34[1];
  *v23 = v34[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v35;
  v25 = (v22 + v21);
  v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = 0;
  v25[1] = 0;
  *v26 = v17;
  v26[1] = v16;
  v26[2] = v18;
  swift_retain_n();

  sub_2188202A8(v16);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v16, v18);
  sub_2187448D0(v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v29);
  sub_2187448D0(&v32, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return result;
}

uint64_t type metadata accessor for FollowingShortcutsMoveModifier(uint64_t a1)
{
  result = qword_27CC13400;
  if (!qword_27CC13400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218EF0258(uint64_t a1)
{
  sub_218EF0318();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FollowingModel(319);
    if (v2 <= 0x3F)
    {
      sub_218EF12C0(319, &qword_27CC16390, MEMORY[0x277D6E3E0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_218EF0318()
{
  result = qword_280ED02F0;
  if (!qword_280ED02F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280ED02F0);
  }

  return result;
}

uint64_t sub_218EF037C(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v100 = a3;
  v101 = a2;
  v98 = a1;
  sub_218EF1200(0, &qword_280EE4B40, MEMORY[0x277D6DF88]);
  v102 = *(v4 - 8);
  v103 = v4;
  MEMORY[0x28223BE20](v4);
  v99 = (&v77 - v5);
  v6 = sub_219BE7654();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6);
  v84 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v83 = &v77 - v9;
  v10 = sub_219BE91F4();
  v88 = *(v10 - 8);
  v89 = v10;
  MEMORY[0x28223BE20](v10);
  v87 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EF1200(0, &qword_280EE3760, MEMORY[0x277D6EC60]);
  v13 = v12;
  v94 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v91 = &v77 - v14;
  v15 = MEMORY[0x277D6D3F0];
  sub_218EF135C(0, &unk_280EE5C60, &qword_280EE5C70, MEMORY[0x277D6D3F0], sub_218EF12C0);
  MEMORY[0x28223BE20](v16 - 8);
  v97 = &v77 - v17;
  sub_218EF12C0(0, &qword_280EE5C70, v15);
  v19 = v18;
  v96 = *(v18 - 1);
  MEMORY[0x28223BE20](v18);
  v95 = &v77 - v20;
  v21 = MEMORY[0x277D6D710];
  sub_218EF135C(0, &unk_280EE5740, &qword_280EE5750, MEMORY[0x277D6D710], sub_218EF1200);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v77 - v23;
  sub_218EF1200(0, &qword_280EE5750, v21);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v90 = &v77 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v77 - v30;
  v92 = type metadata accessor for FollowingShortcutsMoveModifier(0);
  sub_218F37C08();
  v93 = v13;
  v32 = v98;
  sub_219BEB244();

  if ((*(v27 + 48))(v24, 1, v26) == 1)
  {
    v33 = &unk_280EE5740;
    v34 = &qword_280EE5750;
    v35 = MEMORY[0x277D6D710];
    v36 = sub_218EF1200;
LABEL_5:
    sub_218EF140C(v24, v33, v34, v35, v36);
    sub_218EF13B8();
    v38 = swift_allocError();
    *v39 = 0;
    v40 = v99;
    *v99 = v38;
    v42 = v102;
    v41 = v103;
    (*(v102 + 104))(v40, *MEMORY[0x277D6DF68], v103);
    v101(v40);
    return (*(v42 + 8))(v40, v41);
  }

  (*(v27 + 32))(v31, v24, v26);
  sub_218F37C08();
  v24 = v97;
  sub_219BE6A64();

  v37 = v96;
  if ((*(v96 + 48))(v24, 1, v19) == 1)
  {
    (*(v27 + 8))(v31, v26);
    v33 = &unk_280EE5C60;
    v34 = &qword_280EE5C70;
    v35 = MEMORY[0x277D6D3F0];
    v36 = sub_218EF12C0;
    goto LABEL_5;
  }

  v44 = v19;
  v45 = v37;
  v82 = v31;
  v81 = v27;
  v80 = v26;
  v46 = *(v37 + 32);
  v47 = v95;
  v97 = v44;
  v46();
  v48 = sub_218EF0F08(v3);
  v50 = v49;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v51 = v32;
  v53 = v93;
  v52 = v94;
  if (!v50)
  {
    goto LABEL_12;
  }

  v79 = *(v3 + *(v92 + 24));
  v54 = sub_218C55948(v48, v50);
  if (!v54)
  {

    goto LABEL_12;
  }

  v55 = v54;
  sub_218C55854(v54, v79);
  v57 = v56;

  if ((v57 & 1) == 0)
  {
LABEL_12:
    sub_218EF13B8();
    v69 = swift_allocError();
    *v70 = 1;
    v71 = v99;
    *v99 = v69;
    v73 = v102;
    v72 = v103;
    (*(v102 + 104))(v71, *MEMORY[0x277D6DF68], v103);
    v101(v71);
    (*(v73 + 8))(v71, v72);
    (*(v45 + 8))(v47, v97);
    return (*(v81 + 8))(v82, v80);
  }

  (*(v81 + 16))(v90, v82, v80);
  sub_219BE6964();
  (*(v52 + 16))(v91, v51, v53);
  sub_219BEB234();
  v58 = v87;
  v59 = v88;
  v60 = *(v88 + 104);
  LODWORD(v79) = *MEMORY[0x277D6E440];
  v61 = v89;
  v78 = v60;
  v60(v87);
  v92 = sub_219BE9034();
  v77 = *(v59 + 8);
  v77(v58, v61);
  v62 = v83;
  sub_219BE9084();
  v63 = v84;
  v64 = v85;
  v65 = v86;
  (*(v85 + 104))(v84, *MEMORY[0x277D6DAA0], v86);
  LODWORD(v88) = sub_219BE7644();
  v66 = *(v64 + 8);
  v66(v63, v65);
  v66(v62, v65);
  type metadata accessor for FollowingModel(0);
  sub_2187490E4();
  sub_2186D56E4(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
  v67 = v99;
  v68 = v91;
  if (v88)
  {
    sub_219BE8574();
    v101(v67);

    (*(v102 + 8))(v67, v103);
  }

  else
  {
    sub_219BE85B4();
    v101(v67);
    (*(v102 + 8))(v67, v103);
    v74 = v89;
    v78(v58, v79, v89);
    sub_219BE9204();

    v77(v58, v74);
  }

  (*(v94 + 8))(v68, v93);
  v75 = *(v81 + 8);
  v76 = v80;
  v75(v90, v80);
  (*(v45 + 8))(v95, v97);
  return (v75)(v82, v76);
}

uint64_t sub_218EF0F08(uint64_t a1)
{
  v2 = type metadata accessor for FollowingModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FollowingShortcutsMoveModifier(0);
  sub_218EF1468(a1 + *(v5 + 20), v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 2u:
      v6 = type metadata accessor for FollowingAudioModel;
      goto LABEL_3;
    case 6u:
    case 7u:
      v8 = *(*(*v4 + 24) + 16);

      v9 = [v8 identifier];
      v10 = sub_219BF5414();

      return v10;
    case 0xBu:

      sub_218748BF4(0);
      v12 = *(v11 + 48);
      sub_218748D40(0);
      (*(*(v13 - 8) + 8))(&v4[v12], v13);
      return 0;
    case 0x10u:
      v6 = type metadata accessor for FollowingMySportsModel;
      goto LABEL_3;
    case 0x11u:
      sub_218EF14CC(v4, type metadata accessor for FollowingPuzzleHubModel);
      return 0x7548656C7A7A7570;
    default:
      v6 = type metadata accessor for FollowingModel;
LABEL_3:
      sub_218EF14CC(v4, v6);
      return 0;
  }
}

uint64_t sub_218EF1104(uint64_t a1)
{
  v2 = sub_2186D56E4(&qword_27CC0E088, type metadata accessor for FollowingShortcutsMoveModifier, &unk_219C45F38);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_218EF1200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDescriptor;
    v8[1] = type metadata accessor for FollowingModel(255);
    v8[2] = sub_2187490E4();
    v8[3] = sub_2186D56E4(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218EF12C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for FollowingModel(255);
    v7 = sub_2186D56E4(&qword_280EDC630, type metadata accessor for FollowingModel, &unk_219C48188);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_218EF135C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF6FB4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_218EF13B8()
{
  result = qword_27CC13418;
  if (!qword_27CC13418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13418);
  }

  return result;
}

uint64_t sub_218EF140C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_218EF135C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_218EF1468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218EF14CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218EF1540()
{
  result = qword_27CC13420;
  if (!qword_27CC13420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13420);
  }

  return result;
}

uint64_t sub_218EF1594@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    v6 = type metadata accessor for MagazineCategoriesPickerModule();
    v7 = swift_allocObject();
    result = sub_2186CB1F0(v8, v7 + 16);
    *(v7 + 56) = v5;
    a2[3] = v6;
    a2[4] = &protocol witness table for MagazineCategoriesPickerModule;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_218EF1644()
{
  type metadata accessor for MagazineCategoriesPickerViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC13428, &protocol descriptor for MagazineCategoriesPickerStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC13430, &protocol descriptor for MagazineCategoriesPickerRouterType, 1);
  sub_219BE2914();
  type metadata accessor for MagazineCategoriesPickerRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC13438, &protocol descriptor for MagazineCategoriesPickerEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC13440, &protocol descriptor for MagazineCategoriesPickerInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC13448, &protocol descriptor for MagazineCategoriesPickerTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC13450, &protocol descriptor for MagazineCategoriesPickerDataManagerType, 0);
  sub_219BE2914();

  sub_218EF53F4(0);
  sub_219BE2904();

  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  sub_219BE2904();

  type metadata accessor for MagazineCategoriesPickerBlueprintModifierFactory();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC13470, &protocol descriptor for MagazineCategoriesPickerSectionFactoryType, 1);
  sub_219BE2914();

  sub_218EF549C(0, v0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_218EF5DC0(0);
  sub_219BE2904();

  sub_219BE9C54();
  sub_219BE2904();

  sub_218EF55A8(0, v1);
  sub_219BE2904();

  sub_218EF5EFC(0);
  sub_219BE2904();

  sub_218EF59D8(0);
  sub_219BE2904();

  type metadata accessor for MagazineCategoriesPickerBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_218EF5FB4(0, v2);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  sub_219BE2904();

  sub_218EF5674(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
  sub_219BE2904();

  sub_218EF57F0(0, v3);
  sub_219BE2904();
  sub_219BE19D4();

  sub_218EF5B1C(0, v4);
  sub_219BE2904();
  sub_219BE19D4();

  sub_218EF5CB4(0, v5);
  sub_219BE2904();

  type metadata accessor for MagazineCategoriesPickerBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for MagazineCategoriesPickerBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();

  sub_218EF6214(0, &qword_27CC13530, MEMORY[0x277D6E388], v6);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_218EF6108(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  sub_219BE2914();

  return result;
}

char *sub_218EF2034(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC13428, &protocol descriptor for MagazineCategoriesPickerStylerType, 1);
  result = sub_219BE1E34();
  if (!v18)
  {
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC13438, &protocol descriptor for MagazineCategoriesPickerEventHandlerType, 0);
  result = sub_219BE1E34();
  v3 = v15;
  if (!v15)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v4 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5FB4(0, v5);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF53F4(0);
  result = sub_219BE1DE4();
  if (result)
  {
    v7 = result;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (&v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = sub_218EF63F0(*v11, v3, v4, v6, v7);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v17);
    return v13;
  }

LABEL_9:
  __break(1u);
  return result;
}

void *sub_218EF2278@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EDC810, &protocol descriptor for BaseStylerType, 1);
  result = sub_219BE1E34();
  if (v26)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &qword_280E902B0, MEMORY[0x277D33B60], 1);
    result = sub_219BE1E34();
    if (v24)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (&v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for BaseStyler(0);
      v22[3] = v11;
      v12 = sub_218EF5AD4(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
      v22[4] = v12;
      v22[0] = v10;
      v13 = type metadata accessor for MagazineCategoriesPickerStyler();
      v14 = swift_allocObject();
      v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v11);
      v16 = MEMORY[0x28223BE20](v15);
      v18 = (&v22[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v19 + 16))(v18, v16);
      v20 = *v18;
      *(v14 + 40) = v11;
      *(v14 + 48) = v12;
      *(v14 + 16) = v20;
      *(v14 + 96) = xmmword_219C46040;
      sub_2186CB1F0(&v23, v14 + 56);
      __swift_destroy_boxed_opaque_existential_1(v22);
      result = __swift_destroy_boxed_opaque_existential_1(v25);
      a2[3] = v13;
      a2[4] = &off_282A974C0;
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

uint64_t sub_218EF2548@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21874EDE8(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for MagazineCategoriesPickerRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_2186CB1F0(v9, v8 + 24);
      *(v8 + 64) = v5;
      *(v8 + 72) = v6;
      a2[3] = v7;
      a2[4] = &off_282A795F8;
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

void sub_218EF267C(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineCategoriesPickerViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_218EF26FC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC13440, &protocol descriptor for MagazineCategoriesPickerInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC13430, &protocol descriptor for MagazineCategoriesPickerRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC13448, &protocol descriptor for MagazineCategoriesPickerTrackerType, 1);
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
    v17 = sub_218EF6794(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A5BE28;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_218EF29AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC13450, &protocol descriptor for MagazineCategoriesPickerDataManagerType, 0);
  result = sub_219BE1E34();
  if (!v10)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF549C(0, v5);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineCategoriesPickerBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v8 = result;
    sub_218EF635C(0, v7);
    v9 = swift_allocObject();
    v9[3] = 0;
    result = swift_unknownObjectWeakInit();
    v9[6] = v10;
    v9[7] = v11;
    v9[4] = v6;
    v9[5] = v8;
    *a2 = v9;
    a2[1] = &off_282A97600;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218EF2AEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for MagazineCategoriesPickerTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_282A867B0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218EF2B74@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EA3480, &protocol descriptor for MagazineCategoryConfigServiceType, 1);
  result = sub_219BE1E34();
  if (v42)
  {
    v34 = a2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280EB84C0, &protocol descriptor for MagazineCategoryServiceType, 1);
    result = sub_219BE1E34();
    if (v40)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v33[1] = v33;
      v6 = MEMORY[0x28223BE20](v5);
      v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
      v33[0] = v33;
      v11 = MEMORY[0x28223BE20](v10);
      v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v8;
      v16 = *v13;
      v17 = type metadata accessor for MagazineCategoryConfigService(0);
      v38[3] = v17;
      v38[4] = &off_282A6EDE8;
      v38[0] = v15;
      v18 = type metadata accessor for MagazineCategoryService();
      v36 = v18;
      v37 = &off_282A649E8;
      v35[0] = v16;
      type metadata accessor for MagazineCategoriesPickerDataManager();
      v19 = swift_allocObject();
      v20 = __swift_mutable_project_boxed_opaque_existential_1(v38, v17);
      v21 = MEMORY[0x28223BE20](v20);
      v23 = (v33 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v24 + 16))(v23, v21);
      v25 = __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
      v26 = MEMORY[0x28223BE20](v25);
      v28 = (v33 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28, v26);
      v30 = *v23;
      v31 = *v28;
      v19[5] = v17;
      v19[6] = &off_282A6EDE8;
      v19[2] = v30;
      v19[10] = v18;
      v19[11] = &off_282A649E8;
      v19[7] = v31;
      __swift_destroy_boxed_opaque_existential_1(v35);
      __swift_destroy_boxed_opaque_existential_1(v38);
      __swift_destroy_boxed_opaque_existential_1(v39);
      result = __swift_destroy_boxed_opaque_existential_1(v41);
      v32 = v34;
      *v34 = v19;
      v32[1] = &off_282A51F50;
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

uint64_t sub_218EF2F9C(__n128 a1)
{
  sub_218EF53F4(0);
  swift_allocObject();
  return sub_219BE20D4();
}

uint64_t sub_218EF2FFC(__n128 a1)
{
  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  swift_allocObject();
  return sub_219BE6F94();
}

void *sub_218EF3050(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC13470, &protocol descriptor for MagazineCategoriesPickerSectionFactoryType, 1);
  result = sub_219BE1E34();
  if (v18)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v3 = MEMORY[0x28223BE20](v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for MagazineCategoriesPickerSectionFactory();
    v16[3] = v8;
    v16[4] = &off_282A853F0;
    v16[0] = v7;
    type metadata accessor for MagazineCategoriesPickerBlueprintModifierFactory();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[5] = v8;
    v9[6] = &off_282A853F0;
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

uint64_t sub_218EF3260@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for MagazineCategoriesPickerSectionFactory();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282A853F0;
  *a1 = result;
  return result;
}

uint64_t sub_218EF32A8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218EF55A8(0, v3);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218EF549C(0, v4);
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

void sub_218EF33A4(__n128 a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277D6E728];
  sub_218EF62D8(0, &qword_27CC13578, MEMORY[0x277D6E728]);
  swift_allocObject();
  sub_219BE96E4();
  sub_218EF62D8(0, &qword_27CC13580, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_218EF5A90(&qword_27CC13588, &qword_27CC13578, v4, MEMORY[0x277D6E730], v5);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_218EF5DC0(0);
  if (sub_219BE1E24())
  {
    swift_allocObject();
    sub_218EF5AD4(&qword_27CC13590, sub_218EF5DC0, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_218EF355C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF59D8(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  result = sub_219BE1DF4();
  if (!v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineCategoriesPickerBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5EFC(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_218EF5DC0(0);
    swift_allocObject();
    return sub_219BEA484();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_218EF3764(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  a2(0);
  swift_allocObject();
  return a3();
}

void *sub_218EF37A8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5674(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_218EF55A8(0, 0);
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

uint64_t sub_218EF3900(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &unk_280E91DA0, MEMORY[0x277D33AC8], MEMORY[0x277D33AC0], MEMORY[0x277D31F40]);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for MagazineCategoriesPickerBlueprintLayoutBuilder();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218EF39A8(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5674(0);
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
  if (!v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
  result = sub_219BE1E34();
  if (!v8)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF6214(0, &qword_27CC13530, MEMORY[0x277D6E388], v3);
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
  if (!v7)
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
    sub_218EF5AD4(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_218EF5FB4(0, v4);
    v6 = objc_allocWithZone(v5);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_218EF3CE0(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BF3E94();
  if (sub_219BE1E24())
  {
    sub_218EF5AD4(&qword_280E8FF80, MEMORY[0x277D34268], MEMORY[0x277D34260]);
  }

  return sub_219BE8704();
}

id sub_218EF3D8C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21879AAE0(0, &qword_280EE44C0, MEMORY[0x277D6E880], MEMORY[0x277D6E870], MEMORY[0x277D6E608]);
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

uint64_t sub_218EF3E6C(void *a1)
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
  sub_218EF57F0(0, v3);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5B1C(0, v4);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5CB4(0, v5);
  result = sub_219BE1E24();
  if (result)
  {
    sub_218EF5674(0);
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_218EF3FD8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5674(0);
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

uint64_t sub_218EF4090()
{
  v0 = sub_219BE80A4();
  v1 = MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6DDE0], v1);
  return sub_219BE9574();
}

uint64_t sub_218EF4160(void *a1)
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

void sub_218EF4228(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF59D8(0);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineCategoriesPickerBlueprintViewCellProvider();
  sub_218718690(a1, v9);
  v4 = swift_allocObject();
  sub_2186CB1F0(v9, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MagazineCategoriesPickerBlueprintViewSupplementaryViewProvider();
  if (sub_219BE1E24())
  {
    *&v9[0] = v3;
    sub_218EF57F0(0, v6);
    v8 = objc_allocWithZone(v7);
    sub_219BE9B64();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_218EF43E0(void *a1, void *a2)
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

void *sub_218EF44F0(uint64_t a1, void *a2)
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

void *sub_218EF45C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF59D8(0);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF6214(0, &qword_27CC13530, MEMORY[0x277D6E388], v3);
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
  if (!v7)
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

  sub_218EF5AD4(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800, MEMORY[0x277D6E170], 1);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_218EF5B1C(0, 0);
    v5 = objc_allocWithZone(v4);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_218EF484C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218EF6108(0);
  if (sub_219BE1E24())
  {
    sub_218EF5AD4(&qword_27CC13570, sub_218EF6108, MEMORY[0x277D6E7F8]);
  }

  return sub_219BE9774();
}

uint64_t sub_218EF4950(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218EF59D8(0);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218EF5CB4(0, v3);
      v5 = objc_allocWithZone(v4);
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

void *sub_218EF4A2C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E90158, MEMORY[0x277D33E78], 1);
  result = sub_219BE1E34();
  if (!v8)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E91810, MEMORY[0x277D32340], 0);
  result = sub_219BE1E34();
  if (!v5)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF53F4(0);
  result = sub_219BE1DE4();
  if (result)
  {
    v3 = result;
    type metadata accessor for MagazineCategoriesPickerBlueprintViewCellProvider();
    v4 = swift_allocObject();
    v4[3] = 0;
    swift_unknownObjectWeakInit();
    sub_2186CB1F0(&v7, (v4 + 4));
    v4[9] = v5;
    v4[10] = v6;
    v4[11] = v3;
    return v4;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_218EF4B94(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for MagazineCategoriesPickerViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A5E398;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void *sub_218EF4C28(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90FD0, MEMORY[0x277D32C08], 1);
  result = sub_219BE1E34();
  if (v4)
  {
    type metadata accessor for MagazineCategoriesPickerBlueprintViewSupplementaryViewProvider();
    v2 = swift_allocObject();
    sub_2186CB1F0(&v3, v2 + 16);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EF4CC8(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  sub_218EF6214(0, &qword_27CC13568, MEMORY[0x277D6E380], v7);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    v14 = result;
    (*(v10 + 104))(v12, *MEMORY[0x277D6E378], v9);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v16[1] = v14;
    sub_218EF6214(0, &qword_27CC13530, MEMORY[0x277D6E388], v15);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218EF4F70(void *a1)
{
  sub_2187F2110(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF6108(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_218EF5AD4(&qword_27CC13560, sub_218EF6108, MEMORY[0x277D6E800]);
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

uint64_t sub_218EF50AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5674(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_218EF62D8(0, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    result = sub_219BE1E24();
    if (result)
    {
      sub_218EF6108(0);
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

uint64_t sub_218EF51DC(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_218EF5FB4(0, v8);
  v9 = sub_219BE1E24();
  if (v9)
  {
    v10 = v9;
    v11 = sub_218EF5AD4(a3, sub_218EF5FB4, a4);
    v9 = v10;
  }

  else
  {
    v11 = 0;
  }

  return a5(v9, v11);
}

uint64_t sub_218EF5290(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5674(0);
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

uint64_t sub_218EF534C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218EF5FB4(0, v3);
  v5 = v4;
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    a2[3] = v5;
    result = sub_218EF5AD4(&qword_27CC13548, sub_218EF5FB4, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_218EF53F4(uint64_t a1)
{
  if (!qword_27CC13458)
  {
    sub_218EF544C();
    v1 = sub_219BE2124();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC13458);
    }
  }
}

void sub_218EF544C()
{
  if (!qword_27CC13460)
  {
    v0 = sub_219BF6FB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC13460);
    }
  }
}

void sub_218EF549C(uint64_t a1, __n128 a2)
{
  if (!qword_27CC13478)
  {
    v2 = MEMORY[0x277D6D8B8];
    sub_218EF62D8(255, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    sub_218EF55A8(255, v3);
    sub_218EF5A90(&qword_27CC134A0, &qword_27CC13468, v2, MEMORY[0x277D6D8C8], v4);
    sub_218EF5AD4(&qword_27CC13500, sub_218EF55A8, MEMORY[0x277D6D960]);
    v5 = sub_219BE6F54();
    if (!v6)
    {
      atomic_store(v5, &qword_27CC13478);
    }
  }
}

void sub_218EF55A8(uint64_t a1, __n128 a2)
{
  if (!qword_27CC13480)
  {
    sub_218EF5674(255);
    sub_218DB6788();
    sub_218DB6840();
    sub_218EF5AD4(&qword_27CC134F8, sub_218EF5674, MEMORY[0x277D6DC88]);
    v2 = sub_219BE72E4();
    if (!v3)
    {
      atomic_store(v2, &qword_27CC13480);
    }
  }
}

void sub_218EF5674(uint64_t a1)
{
  if (!qword_27CC13488)
  {
    sub_2186C6148(255, &qword_280E8E4C0, 0x277D752A0);
    sub_218EF57F0(255, v1);
    sub_218EF5B1C(255, v2);
    sub_218EF5CB4(255, v3);
    type metadata accessor for MagazineCategoriesPickerViewController();
    sub_218EF5AD4(&qword_27CC134E0, sub_218EF57F0, MEMORY[0x277D6E820]);
    sub_218EF5AD4(&qword_27CC134E8, sub_218EF5B1C, MEMORY[0x277D6E738]);
    sub_218EF5AD4(&qword_27CC134F0, sub_218EF5CB4, MEMORY[0x277D6E918]);
    v4 = sub_219BE7BE4();
    if (!v5)
    {
      atomic_store(v4, &qword_27CC13488);
    }
  }
}

void sub_218EF57F0(uint64_t a1, __n128 a2)
{
  if (!qword_27CC13490)
  {
    v2 = MEMORY[0x277D6D8B8];
    sub_218EF62D8(255, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    sub_218EF59D8(255);
    type metadata accessor for MagazineCategoriesPickerBlueprintViewCellProvider();
    type metadata accessor for MagazineCategoriesPickerBlueprintViewSupplementaryViewProvider();
    sub_218EF5A90(&qword_27CC134A0, &qword_27CC13468, v2, MEMORY[0x277D6D8C8], v3);
    sub_218EF5AD4(&qword_27CC134A8, sub_218EF59D8, MEMORY[0x277D6DF38]);
    sub_218EF5AD4(&qword_27CC134B0, type metadata accessor for MagazineCategoriesPickerBlueprintViewCellProvider, &unk_219CC6C44);
    sub_218EF5AD4(&qword_27CC134B8, type metadata accessor for MagazineCategoriesPickerBlueprintViewSupplementaryViewProvider, &unk_219C38300);
    sub_218EF5AD4(&qword_27CC134C0, type metadata accessor for MagazineCategoriesPickerLayoutModel, &unk_219CA45B8);
    v4 = sub_219BE9B94();
    if (!v5)
    {
      atomic_store(v4, &qword_27CC13490);
    }
  }
}

void sub_218EF59D8(uint64_t a1)
{
  if (!qword_27CC13498)
  {
    type metadata accessor for MagazineCategoriesPickerLayoutModel(255);
    sub_218ACD334();
    sub_218EF5AD4(&qword_27CC0F818, type metadata accessor for MagazineCategoriesPickerLayoutModel, &unk_219CA4580);
    v1 = sub_219BE8564();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC13498);
    }
  }
}

uint64_t sub_218EF5A90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, __n128 a5)
{
  result = *a1;
  if (!result)
  {
    sub_218EF62D8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218EF5AD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218EF5B1C(uint64_t a1, __n128 a2)
{
  if (!qword_27CC134C8)
  {
    v2 = MEMORY[0x277D6D8B8];
    sub_218EF62D8(255, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    sub_218EF59D8(255);
    type metadata accessor for MagazineCategoriesPickerViewController();
    sub_218EF5A90(&qword_27CC134A0, &qword_27CC13468, v2, MEMORY[0x277D6D8C8], v3);
    sub_218EF5AD4(&qword_27CC134A8, sub_218EF59D8, MEMORY[0x277D6DF38]);
    sub_218EF5AD4(&qword_27CC134D0, type metadata accessor for MagazineCategoriesPickerViewController, &unk_219C5D550);
    sub_218EF5AD4(&qword_27CC134C0, type metadata accessor for MagazineCategoriesPickerLayoutModel, &unk_219CA45B8);
    v4 = sub_219BE9794();
    if (!v5)
    {
      atomic_store(v4, &qword_27CC134C8);
    }
  }
}

void sub_218EF5CB4(uint64_t a1, __n128 a2)
{
  if (!qword_27CC134D8)
  {
    v2 = MEMORY[0x277D6D8B8];
    sub_218EF62D8(255, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    sub_218EF59D8(255);
    sub_218EF5A90(&qword_27CC134A0, &qword_27CC13468, v2, MEMORY[0x277D6D8C8], v3);
    sub_218EF5AD4(&qword_27CC134A8, sub_218EF59D8, MEMORY[0x277D6DF38]);
    v4 = sub_219BE9F34();
    if (!v5)
    {
      atomic_store(v4, &qword_27CC134D8);
    }
  }
}

void sub_218EF5DC0(uint64_t a1)
{
  if (!qword_27CC13508)
  {
    sub_218EF59D8(255);
    type metadata accessor for MagazineCategoriesPickerBlueprintLayoutBuilder();
    sub_218EF5EFC(255);
    sub_218EF5AD4(&qword_27CC134A8, sub_218EF59D8, MEMORY[0x277D6DF38]);
    sub_218EF5AD4(&qword_27CC13518, type metadata accessor for MagazineCategoriesPickerBlueprintLayoutBuilder, &unk_219CC7AC8);
    sub_218EF5AD4(&qword_27CC13520, sub_218EF5EFC, MEMORY[0x277D6E7B8]);
    v1 = sub_219BEA4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC13508);
    }
  }
}

void sub_218EF5EFC(uint64_t a1)
{
  if (!qword_27CC13510)
  {
    type metadata accessor for MagazineCategoriesPickerLayoutModel(255);
    sub_218ACD38C();
    sub_218EF5AD4(&qword_27CC134C0, type metadata accessor for MagazineCategoriesPickerLayoutModel, &unk_219CA45B8);
    v1 = sub_219BE9974();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC13510);
    }
  }
}

void sub_218EF5FB4(uint64_t a1, __n128 a2)
{
  if (!qword_27CC13528)
  {
    v2 = MEMORY[0x277D6D8B8];
    sub_218EF62D8(255, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    sub_218EF5674(255);
    type metadata accessor for MagazineCategoriesPickerViewController();
    sub_218EF5A90(&qword_27CC134A0, &qword_27CC13468, v2, MEMORY[0x277D6D8C8], v3);
    sub_218EF5AD4(&qword_27CC134F8, sub_218EF5674, MEMORY[0x277D6DC88]);
    sub_218EF5AD4(&qword_27CC134D0, type metadata accessor for MagazineCategoriesPickerViewController, &unk_219C5D550);
    v4 = sub_219BE8774();
    if (!v5)
    {
      atomic_store(v4, &qword_27CC13528);
    }
  }
}

void sub_218EF6108(uint64_t a1)
{
  if (!qword_27CC13538)
  {
    sub_218EF5674(255);
    v1 = MEMORY[0x277D6D8B8];
    sub_218EF62D8(255, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    sub_218EF5AD4(&qword_27CC134F8, sub_218EF5674, MEMORY[0x277D6DC88]);
    sub_218EF5A90(&qword_27CC13540, &qword_27CC13468, v1, MEMORY[0x277D6D8C0], v2);
    v3 = sub_219BE9AD4();
    if (!v4)
    {
      atomic_store(v3, &qword_27CC13538);
    }
  }
}

void sub_218EF6214(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), __n128 a4)
{
  if (!*a2)
  {
    v7 = MEMORY[0x277D6D8B8];
    sub_218EF62D8(255, &qword_27CC13468, MEMORY[0x277D6D8B8]);
    v9 = v8;
    v11 = sub_218EF5A90(&qword_27CC134A0, &qword_27CC13468, v7, MEMORY[0x277D6D8C8], v10);
    v12 = a3(a1, v9, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void sub_218EF62D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineCategoriesPickerSectionDescriptor;
    v8[1] = &type metadata for MagazineCategoriesPickerModel;
    v8[2] = sub_218DB6788();
    v8[3] = sub_218DB6840();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218EF635C(uint64_t a1, __n128 a2)
{
  if (!qword_27CC13598)
  {
    v3 = type metadata accessor for MagazineCategoriesPickerBlueprintModifierFactory();
    v4 = sub_218EF5AD4(&qword_27CC135A0, type metadata accessor for MagazineCategoriesPickerBlueprintModifierFactory, &unk_219CA91F4);
    v6 = type metadata accessor for MagazineCategoriesPickerInteractor(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27CC13598);
    }
  }
}

char *sub_218EF63F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = type metadata accessor for MagazineCategoriesPickerStyler();
  v30[3] = v10;
  v30[4] = &off_282A974C0;
  v30[0] = a1;
  v11 = type metadata accessor for MagazineCategoriesPickerViewController();
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v30, v10);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = *v16;
  v29[3] = v10;
  v29[4] = &off_282A974C0;
  v29[0] = v18;
  *&v12[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v19 = OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_coverViewManager;
  sub_219BE6C14();
  swift_allocObject();
  *&v12[v19] = sub_219BE6C04();
  v20 = OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_eventManager;
  sub_21874EDE8(0, &qword_27CC135A8, sub_218EF69A0, &type metadata for MagazineCategoriesPickerViewController.Event, MEMORY[0x277D6CAA0]);
  swift_allocObject();
  *&v12[v20] = sub_219BE1D34();
  *&v12[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_contentSizeObserver] = 0;
  sub_218718690(v29, &v12[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_styler]);
  v21 = &v12[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_eventHandler];
  *v21 = a2;
  *(v21 + 1) = a3;
  *&v12[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_blueprintViewController] = a4;
  *&v12[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_selectedCategory] = a5;
  v28.receiver = v12;
  v28.super_class = v11;
  swift_unknownObjectRetain();
  v22 = a4;

  v23 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
  *(*&v23[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_eventHandler] + 24) = &off_282A5E3A0;
  swift_unknownObjectWeakAssign();
  v24 = *&v23[OBJC_IVAR____TtC7NewsUI238MagazineCategoriesPickerViewController_blueprintViewController];
  v25 = v23;
  v26 = v24;
  sub_219BE8744();

  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v25;
}

void *sub_218EF669C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for MagazineCategoriesPickerRouter();
  v15[4] = &off_282A795F8;
  v15[0] = a3;
  v14[3] = type metadata accessor for MagazineCategoriesPickerTracker();
  v14[4] = &off_282A867B0;
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

  v11(v12, &off_282A5BE08, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_218EF6794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = type metadata accessor for MagazineCategoriesPickerRouter();
  v27 = &off_282A795F8;
  v25[0] = a3;
  v23 = v8;
  v24 = &off_282A867B0;
  v22[0] = a4;
  type metadata accessor for MagazineCategoriesPickerEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_218EF669C(a1, a2, *v13, *v18, v9);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

unint64_t sub_218EF69A0()
{
  result = qword_27CC135B0;
  if (!qword_27CC135B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC135B0);
  }

  return result;
}

uint64_t type metadata accessor for MagazineGridItemModel(uint64_t a1)
{
  result = qword_27CC135B8;
  if (!qword_27CC135B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218EF6A40(uint64_t a1)
{
  sub_2189E96A0(319);
  if (v1 <= 0x3F)
  {
    sub_2189E9570(319);
    if (v2 <= 0x3F)
    {
      sub_2189E93F4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_218EF6AC8()
{
  v1 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2189E93F4(0);
      v8 = &v3[*(v16 + 48)];
      v17 = *&v3[*(v16 + 64) + 32];

      v18 = [v5[2] identifier];
      v14 = sub_219BF5414();

      v15 = sub_219BF0444();
      goto LABEL_7;
    }

    v6 = *(v3 + 2);
    sub_2189E9530(*(v3 + 4), *(v3 + 5), *(v3 + 6));
    sub_2189E9570(0);
    v8 = &v3[*(v7 + 64)];
    v9 = *&v3[*(v7 + 80) + 32];

    v10 = [v5 identifier];
  }

  else
  {
    v6 = *(v3 + 2);
    sub_2189E96A0(0);
    v8 = &v3[*(v11 + 48)];
    v12 = *&v3[*(v11 + 64) + 32];

    v10 = [v5 identifier];
  }

  v13 = v10;
  v14 = sub_219BF5414();

  v15 = sub_219BF0744();
LABEL_7:
  (*(*(v15 - 8) + 8))(v8, v15);
  return v14;
}

uint64_t sub_218EF6CE0()
{
  v1 = v0;
  v2 = sub_219BE59F4();
  v107 = *(v2 - 8);
  v108 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = (&v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v106 = (&v96 - v6);
  v7 = sub_219BE5A04();
  v105 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v96 - v11;
  v13 = sub_219BF0744();
  v14 = *(v13 - 8);
  v109 = v13;
  v110 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v96 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v96 - v21;
  v23 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v1, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *v117 = *v25;
      *&v117[9] = *(v25 + 9);
      v27 = *(v25 + 5);
      v103 = *(v25 + 4);
      v28 = v103 != 0;
      v105 = *(v25 + 6);
      v106 = v27;
      LODWORD(v104) = v25[56];
      sub_2189E9570(0);
      v30 = v29;
      v31 = *&v25[*(v29 + 80) + 32];

      v32 = [*v117 sourceChannel];
      v102 = *(v30 + 64);
      sub_219BE5A14();
      *v4 = v32;
      v4[1] = 2 * v28;
      v101 = v32;
      v34 = v107;
      v33 = v108;
      (*(v107 + 104))(v4, *MEMORY[0x277D31A10], v108);
      swift_unknownObjectRetain();
      v100 = MEMORY[0x21CEBC780](v4, MEMORY[0x277D84FA0]);
      (*(v34 + 8))(v4, v33);
      v35 = *v117;
      v36 = v117[8];
      v37 = v117[9];
      LOBYTE(v31) = v117[10];
      LOBYTE(v32) = v117[11];
      LOBYTE(v34) = v117[12];
      v38 = *&v117[16];
      LODWORD(v108) = v117[24];
      v39 = swift_allocObject();
      *(v39 + 16) = v35;
      *(v39 + 24) = v36;
      *(v39 + 25) = v37;
      *(v39 + 26) = v31;
      *(v39 + 27) = v32;
      *(v39 + 28) = v34;
      *(v39 + 32) = v38;
      *(v39 + 40) = v108;
      swift_allocObject();
      sub_218950CAC(v117, v116);
      v40 = sub_219BE59B4();
      swift_unknownObjectRelease();
      sub_2189E9530(v103, v106, v105);
      sub_218950D08(v117);
      (*(v110 + 8))(&v25[v102], v109);
    }

    else
    {
      v57 = *v25;
      sub_2189E93F4(0);
      v59 = *(v58 + 48);
      v60 = *&v25[*(v58 + 64) + 32];

      sub_219BE5A14();
      v61 = v106;
      v62 = v107;
      *v106 = *(v57 + 16);
      v61[1] = 0;
      v63 = v108;
      (*(v62 + 104))(v61, *MEMORY[0x277D31A10], v108);
      swift_unknownObjectRetain();
      MEMORY[0x21CEBC780](v61, MEMORY[0x277D84FA0]);
      (*(v62 + 8))(v61, v63);
      swift_allocObject();
      v40 = sub_219BE59B4();
      v64 = sub_219BF0444();
      (*(*(v64 - 8) + 8))(&v25[v59], v64);
    }
  }

  else
  {
    v96 = v12;
    v97 = v9;
    v101 = *v25;
    v116[0] = v25[8];
    v115 = v25[9];
    v114 = v25[10];
    v113 = v25[11];
    v112 = v25[12];
    v102 = *(v25 + 2);
    v111 = v25[24];
    sub_2189E96A0(0);
    v41 = v22;
    v43 = *(v42 + 48);
    v44 = *&v25[*(v42 + 64) + 32];

    v45 = v109;
    v46 = v110;
    (*(v110 + 32))(v41, &v25[v43], v109);
    v47 = *(v46 + 16);
    v104 = v41;
    v47(v19, v41, v45);
    sub_219BF0704();
    v48 = sub_218EFC3E4(&qword_280E90EB8, MEMORY[0x277D32F30], MEMORY[0x277D32F48]);
    v49 = sub_219BF70D4();
    v50 = *(v46 + 8);
    v50(v16, v45);
    v110 = v46 + 8;
    v103 = v50;
    v100 = v16;
    v99 = v48;
    if (v49)
    {
      v50(v19, v45);
      sub_218EFC5A4(0, &unk_280E8BD80, MEMORY[0x277D31B20], MEMORY[0x277D84560]);
      v51 = sub_219BEAAD4();
      v52 = *(v51 - 8);
      v53 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_219C09BA0;
      v55 = *MEMORY[0x277D31B10];
      v56 = *(v52 + 104);
      v98 = v54;
      v56(v54 + v53, v55, v51);
    }

    else
    {
      sub_219BF0714();
      v65 = sub_219BF70D4();
      v50(v16, v45);
      v50(v19, v45);
      sub_218EFC5A4(0, &unk_280E8BD80, MEMORY[0x277D31B20], MEMORY[0x277D84560]);
      v66 = sub_219BEAAD4();
      v67 = *(v66 - 8);
      v68 = *(v67 + 72);
      v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v70 = swift_allocObject();
      if (v65)
      {
        *(v70 + 16) = xmmword_219C09BA0;
        v71 = *MEMORY[0x277D31B18];
        v72 = *(v67 + 104);
        v98 = v70;
        v72(v70 + v69, v71, v66);
      }

      else
      {
        *(v70 + 16) = xmmword_219C09EC0;
        v98 = v70;
        v73 = v70 + v69;
        v74 = *(v67 + 104);
        v74(v70 + v69, *MEMORY[0x277D31B10], v66);
        v74(v73 + v68, *MEMORY[0x277D31B18], v66);
      }

      v50 = v103;
    }

    sub_218EFC5A4(0, &unk_280E8C008, MEMORY[0x277D31AD0], MEMORY[0x277D84560]);
    v75 = v105;
    v76 = (v105[80] + 32) & ~v105[80];
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_219C09BA0;
    v78 = *(v75 + 13);
    v78(v77 + v76, *MEMORY[0x277D31A98], v7);
    v79 = sub_218C3D46C(v77);
    swift_setDeallocating();
    v80 = *(v75 + 1);
    v80(v77 + v76, v7);
    swift_deallocClassInstance();
    *v117 = v79;
    v81 = v100;
    sub_219BF06C4();
    LOBYTE(v77) = sub_219BF70D4();
    v50(v81, v45);
    if (v77)
    {
      v82 = v97;
      v78(v97, *MEMORY[0x277D31AB8], v7);
      v83 = v96;
      sub_219498044(v96, v82);
      v80(v83, v7);
    }

    sub_219BE5A14();
    v84 = v106;
    v85 = v107;
    v86 = v101;
    v87 = v98;
    *v106 = v101;
    v84[1] = v87;
    v84[2] = 0;
    v88 = v108;
    (*(v85 + 104))(v84, *MEMORY[0x277D31A28], v108);
    v89 = *v117;
    v90 = v86;
    MEMORY[0x21CEBC780](v84, v89);

    (*(v85 + 8))(v84, v88);
    LOBYTE(v84) = v116[0];
    LOBYTE(v85) = v115;
    v91 = v114;
    v92 = v113;
    v93 = v112;
    LOBYTE(v88) = v111;
    v94 = swift_allocObject();
    *(v94 + 16) = v90;
    *(v94 + 24) = v84;
    *(v94 + 25) = v85;
    *(v94 + 26) = v91;
    *(v94 + 27) = v92;
    *(v94 + 28) = v93;
    *(v94 + 32) = v102;
    *(v94 + 40) = v88;
    swift_allocObject();
    v40 = sub_219BE59B4();
    v103(v104, v109);
  }

  return v40;
}

uint64_t sub_218EF7908()
{
  v1 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      sub_2189E93F4(0);
      v20 = *(v19 + 48);
      v21 = *&v3[*(v19 + 64) + 32];

      v22 = sub_219BF0444();
      (*(*(v22 - 8) + 8))(&v3[v20], v22);
      return 1;
    }

    v6 = v3[8];
    v25 = v3[9];
    v26 = v6;
    v7 = v3[10];
    v8 = v3[11];
    v9 = v3[12];
    v10 = *(v3 + 2);
    v11 = v3[24];
    sub_2189E9530(*(v3 + 4), *(v3 + 5), *(v3 + 6));
    sub_2189E9570(0);
    v13 = 80;
    v14 = 64;
  }

  else
  {
    v15 = v3[8];
    v25 = v3[9];
    v26 = v15;
    v7 = v3[10];
    v8 = v3[11];
    v9 = v3[12];
    v10 = *(v3 + 2);
    v11 = v3[24];
    sub_2189E96A0(0);
    v13 = 64;
    v14 = 48;
  }

  v16 = *(v12 + v14);
  v17 = *&v3[*(v12 + v13) + 32];

  v18 = sub_219BF0744();
  (*(*(v18 - 8) + 8))(&v3[v16], v18);
  v27 = v5;
  v28 = v26;
  v29 = v25;
  v30 = v7;
  v31 = v8;
  v32 = v9;
  v33 = v10;
  v34 = v11;
  sub_218950D08(&v27);
  return v11;
}

id sub_218EF7B34()
{
  v1 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *v3;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2189E93F4(0);
      v8 = &v3[*(v15 + 48)];
      v16 = *&v3[*(v15 + 64) + 32];

      v13 = v5[2];
      swift_unknownObjectRetain();

      v14 = sub_219BF0444();
      goto LABEL_7;
    }

    v6 = *(v3 + 2);
    sub_2189E9530(*(v3 + 4), *(v3 + 5), *(v3 + 6));
    sub_2189E9570(0);
    v8 = &v3[*(v7 + 64)];
    v9 = *&v3[*(v7 + 80) + 32];

    v10 = [v5 sourceChannel];
  }

  else
  {
    v6 = *(v3 + 2);
    sub_2189E96A0(0);
    v8 = &v3[*(v11 + 48)];
    v12 = *&v3[*(v11 + 64) + 32];

    v10 = [v5 sourceChannel];
  }

  v13 = v10;

  v14 = sub_219BF0744();
LABEL_7:
  (*(*(v14 - 8) + 8))(v8, v14);
  return v13;
}

uint64_t sub_218EF7D18()
{
  v1 = v0;
  v2 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;
  if (!EnumCaseMultiPayload)
  {
    v13 = *(v4 + 2);
    sub_2189E96A0(0);
    v15 = v14;
    v16 = &v4[*(v14 + 64)];
    v17 = v16[4];
    if (v16[1])
    {
      v12 = *v16;
    }

    else
    {
      v24 = [v6 title];
      v12 = sub_219BF5414();
    }

    v23 = *(v15 + 48);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v7 = *(v4 + 2);
    sub_2189E9530(*(v4 + 4), *(v4 + 5), *(v4 + 6));
    sub_2189E9570(0);
    v9 = v8;
    v10 = &v4[*(v8 + 80)];
    v11 = v10[4];
    if (v10[1])
    {
      v12 = *v10;
    }

    else
    {
      v22 = [v6 title];
      v12 = sub_219BF5414();
    }

    v23 = *(v9 + 64);
LABEL_13:
    v19 = &v4[v23];
    v25 = sub_219BF0744();
    goto LABEL_16;
  }

  sub_2189E93F4(0);
  v19 = &v4[*(v18 + 48)];
  v20 = &v4[*(v18 + 64)];
  v21 = v20[4];
  if (v20[1])
  {
    v12 = *v20;
  }

  else
  {
    v26 = [v6[2] displayName];
    v12 = sub_219BF5414();
  }

  v25 = sub_219BF0444();
LABEL_16:
  (*(*(v25 - 8) + 8))(v19, v25);
  return v12;
}

uint64_t sub_218EF7F98@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v3, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v9;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      sub_2189E93F4(0);
      v13 = &v9[*(v20 + 48)];
      v21 = *&v9[*(v20 + 64) + 32];

      v22 = *a1;
      v23 = a2(0);
      (*(*(v23 - 8) + 104))(a3, v22, v23);
      v19 = sub_219BF0444();
      return (*(*(v19 - 8) + 8))(v13, v19);
    }

    sub_2189E9530(*(v9 + 4), *(v9 + 5), *(v9 + 6));
    sub_2189E9570(0);
    v13 = &v9[*(v12 + 64)];
    v14 = *(v12 + 80);
  }

  else
  {

    sub_2189E96A0(0);
    v13 = &v9[*(v15 + 48)];
    v14 = *(v15 + 64);
  }

  v16 = *&v9[v14 + 32];

  v17 = *a1;
  v18 = a2(0);
  (*(*(v18 - 8) + 104))(a3, v17, v18);
  v19 = sub_219BF0744();
  return (*(*(v19 - 8) + 8))(v13, v19);
}

uint64_t sub_218EF81BC(__n128 a1)
{
  v2 = v1;
  v3 = sub_219BF0444();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_219BF0744();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v32[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2189F50E4(v2, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v15 = *v13;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_2189E93F4(0);
      v25 = *(v24 + 48);
      v26 = *&v13[*(v24 + 64) + 32];

      (*(v4 + 32))(v6, &v13[v25], v3);
      v33 = 0;
      v34 = 0xE000000000000000;
      v27 = [v15[2] name];
      v28 = sub_219BF5414();
      v30 = v29;

      MEMORY[0x21CECC330](v28, v30);

      MEMORY[0x21CECC330](36, 0xE100000000000000);
      sub_219BF7484();

      v23 = v33;
      (*(v4 + 8))(v6, v3);
      return v23;
    }

    v16 = v13[8];
    v17 = *(v13 + 2);
    sub_2189E9530(*(v13 + 4), *(v13 + 5), *(v13 + 6));
    sub_2189E9570(0);
    v19 = *(v18 + 64);
    v20 = *(v18 + 80);
  }

  else
  {
    v16 = v13[8];
    v17 = *(v13 + 2);
    sub_2189E96A0(0);
    v19 = *(v21 + 48);
    v20 = *(v21 + 64);
  }

  v22 = *&v13[v20 + 32];

  (*(v8 + 32))(v10, &v13[v19], v7);
  v33 = 0;
  v34 = 0xE000000000000000;
  v32[15] = v16;
  sub_219BF7484();
  MEMORY[0x21CECC330](36, 0xE100000000000000);
  sub_219BF7484();

  v23 = v33;
  (*(v8 + 8))(v10, v7);
  return v23;
}

uint64_t sub_218EF8560()
{
  v1 = v0;
  v2 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v1, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = *v4;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {

      sub_2189E93F4(0);
      v8 = &v4[*(v13 + 48)];
      v14 = *&v4[*(v13 + 64) + 32];

      v12 = sub_219BF0444();
      goto LABEL_7;
    }

    sub_2189E9530(*(v4 + 4), *(v4 + 5), *(v4 + 6));
    sub_2189E9570(0);
    v8 = &v4[*(v7 + 64)];
    v9 = *(v7 + 80);
  }

  else
  {

    sub_2189E96A0(0);
    v8 = &v4[*(v10 + 48)];
    v9 = *(v10 + 64);
  }

  v11 = *&v4[v9 + 32];

  v12 = sub_219BF0744();
LABEL_7:
  (*(*(v12 - 8) + 8))(v8, v12);
  return 1;
}

uint64_t sub_218EF86F0@<X0>(char *a1@<X8>)
{
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EFC5A4(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  v10 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v14 = *v12;
  if (!EnumCaseMultiPayload)
  {
    v15 = *(v12 + 2);
    sub_2189E96A0(0);
    v17 = &v12[*(v20 + 48)];
    v21 = *&v12[*(v20 + 64) + 32];

    v19 = [v14 publicationDate];
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v15 = *(v12 + 2);
    sub_2189E9530(*(v12 + 4), *(v12 + 5), *(v12 + 6));
    sub_2189E9570(0);
    v17 = &v12[*(v16 + 64)];
    v18 = *&v12[*(v16 + 80) + 32];

    v19 = [v14 publicationDate];
LABEL_5:
    v22 = v19;
    sub_219BDBCA4();

    v23 = sub_219BF0744();
    return (*(*(v23 - 8) + 8))(v17, v23);
  }

  sub_2189E93F4(0);
  v25 = v24;
  v26 = *&v12[*(v24 + 64) + 32];

  v27 = [v14[2] publisherSpecifiedArticleIDsModifiedDate];
  if (v27)
  {
    v28 = v27;
    sub_219BDBCA4();

    v29 = *(v4 + 32);
    v29(v9, v6, v3);
    (*(v4 + 56))(v9, 0, 1, v3);
    v29(a1, v9, v3);
  }

  else
  {
    (*(v4 + 56))(v9, 1, 1, v3);
    sub_219BDBBB4();

    if ((*(v4 + 48))(v9, 1, v3) != 1)
    {
      sub_2187104B0(v9, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  v17 = &v12[*(v25 + 48)];
  v23 = sub_219BF0444();
  return (*(*(v23 - 8) + 8))(v17, v23);
}

uint64_t sub_218EF8AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_218EFC3E4(&qword_27CC135E0, type metadata accessor for MagazineGridItemModel, &unk_219C46148);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_218EF8CE0@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v205 = a1;
  v207 = a2;
  v2 = MEMORY[0x277D83D88];
  sub_218EFC5A4(0, &qword_27CC13600, MEMORY[0x277D32F68], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v188 = &v172 - v4;
  v187 = sub_219BF07A4();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v185 = &v172 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218EFC5A4(0, &qword_27CC13608, MEMORY[0x277D32CD0], v2);
  MEMORY[0x28223BE20](v6 - 8);
  v181 = &v172 - v7;
  sub_218EFC5A4(0, &unk_280E90F30, MEMORY[0x277D32CD8], v2);
  MEMORY[0x28223BE20](v8 - 8);
  v182 = (&v172 - v9);
  v197 = sub_219BF0444();
  v196 = *(v197 - 1);
  MEMORY[0x28223BE20](v197);
  v193 = &v172 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v195 = &v172 - v12;
  v200 = sub_219BF0534();
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v179 = &v172 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v178 = &v172 - v15;
  v203 = sub_219BF06A4();
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v183 = &v172 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v201 = &v172 - v18;
  MEMORY[0x28223BE20](v19);
  v180 = &v172 - v20;
  v212 = sub_219BF19D4();
  v206 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v194 = (&v172 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v189 = &v172 - v23;
  MEMORY[0x28223BE20](v24);
  v208 = &v172 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v172 - v27;
  v29 = sub_219BF0574();
  v210 = *(v29 - 8);
  v211 = v29;
  MEMORY[0x28223BE20](v29);
  v192 = &v172 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v198 = &v172 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v172 - v34;
  sub_218EFC5A4(0, &qword_27CC13610, MEMORY[0x277D32F58], v2);
  MEMORY[0x28223BE20](v36 - 8);
  v177 = &v172 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v172 - v39;
  sub_218EFC5A4(0, &qword_280E90EA8, MEMORY[0x277D32F60], v2);
  MEMORY[0x28223BE20](v41 - 8);
  v190 = &v172 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v172 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v172 - v47;
  v213 = sub_219BF0744();
  v209 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v204 = &v172 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v191 = &v172 - v51;
  MEMORY[0x28223BE20](v52);
  v54 = &v172 - v53;
  MEMORY[0x28223BE20](v55);
  v57 = &v172 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = &v172 - v59;
  v61 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v61);
  v63 = &v172 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189F50E4(v205, v63);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v205 = v54;
      v184 = v45;
      *v215 = *v63;
      *&v215[9] = *(v63 + 9);
      v65 = *(v63 + 5);
      v197 = *(v63 + 4);
      v196 = v65;
      v195 = *(v63 + 6);
      LODWORD(v193) = v63[56];
      sub_2189E9570(0);
      v67 = *(v66 + 64);
      v68 = &v63[*(v66 + 80)];
      v69 = *(v68 + 1);
      *v216 = *v68;
      *&v216[16] = v69;
      v217 = *(v68 + 2);
      v70 = v209;
      v71 = v191;
      v72 = v213;
      (*(v209 + 32))(v191, &v63[v67], v213);
      v182 = *(v70 + 16);
      v182(v204, v71, v72);
      v73 = *&v216[8];
      v74 = *&v216[24];
      v75 = v217;
      v189 = v217;
      if (v217)
      {

        v76 = v75;

        v77 = v177;
        sub_219BF0764();
        v78 = sub_219BF0774();
        (*(*(v78 - 8) + 56))(v77, 0, 1, v78);
      }

      else
      {
        v111 = sub_219BF0774();
        (*(*(v111 - 8) + 56))(v177, 1, 1, v111);
      }

      v112 = v190;
      v181 = v73;
      sub_219BF0784();
      v113 = sub_219BF0794();
      (*(*(v113 - 8) + 56))(v112, 0, 1, v113);
      v114 = v211;
      v115 = v210;
      v116 = v192;
      (*(v210 + 104))(v192, *MEMORY[0x277D32D70], v211);
      sub_218950CAC(v215, v214);
      v117 = 256;
      if (!v215[9])
      {
        v117 = 0;
      }

      v118 = v194;
      v119 = v204;
      sub_2198D47EC(*v215, v117 | v215[8], v194);
      v120 = MEMORY[0x277D32D48];
      if (!v215[12])
      {
        v120 = MEMORY[0x277D32D40];
      }

      (*(v199 + 104))(v179, *v120, v200);
      v200 = v74;
      v121 = v183;
      sub_219BF0694();
      v122 = *v215;
      v123 = v206;
      (*(v206 + 16))(v208, v118, v212);
      v182(v205, v119, v213);
      (*(v115 + 16))(v198, v116, v114);
      sub_218DFDB20(v112, v184);
      v124 = *&v215[16];
      v125 = v202;
      v126 = v203;
      (*(v202 + 16))(v201, v121, v203);
      v127 = v122;
      v128 = v124;
      v129 = v185;
      sub_219BF0654();
      sub_218950D08(v215);
      (*(v125 + 8))(v121, v126);
      (*(v123 + 8))(v194, v212);
      (*(v210 + 8))(v192, v211);
      sub_2187104B0(v190, &qword_280E90EA8, MEMORY[0x277D32F60]);
      v130 = *(v209 + 8);
      v131 = v213;
      v130(v204, v213);
      v132 = v188;
      v133 = v197;
      v134 = v196;
      v135 = v195;
      v136 = v191;
      sub_218EFA450(v197, v196, v195, v193, v191, v216, v188);
      sub_2189E9530(v133, v134, v135);

      sub_218950D08(v215);
      v130(v136, v131);
      sub_218EFC42C(0);
      v138 = *(v137 + 48);
      v139 = v207;
      (*(v186 + 32))(v207, v129, v187);
      sub_218EFC4D0(v132, v139 + v138);
      v140 = *MEMORY[0x277D31E20];
      v141 = sub_219BEDC24();
      return (*(*(v141 - 8) + 104))(v139, v140, v141);
    }

    else
    {
      v94 = *v63;
      sub_2189E93F4(0);
      v96 = *(v95 + 48);
      v97 = &v63[*(v95 + 64)];
      v213 = *v97;
      v99 = v97[2];
      v98 = v97[3];
      v100 = v97[4];
      v209 = v97[5];
      v101 = v196;
      v102 = &v63[v96];
      v103 = v195;
      v104 = v197;
      (*(v196 + 32))(v195, v102, v197);
      v105 = [*(v94 + 16) identifier];
      v106 = sub_219BF5414();
      v210 = v107;
      v211 = v106;
      (*(v206 + 104))(v189, *MEMORY[0x277D334C8], v212);
      if (v98)
      {
        v108 = v99;
      }

      else
      {
        v108 = 0;
      }

      v212 = v108;
      (*(v101 + 16))(v193, v103, v104);
      if (v100)
      {
        v100 = v100;
        swift_unknownObjectRetain();

        v109 = v181;
        sub_219BF0474();
        v110 = 0;
      }

      else
      {

        swift_unknownObjectRetain();

        v110 = 1;
        v109 = v181;
      }

      v166 = sub_219BF0484();
      (*(*(v166 - 8) + 56))(v109, v110, 1, v166);
      v167 = v182;
      sub_219BF0464();
      v168 = sub_219BF0494();
      (*(*(v168 - 8) + 56))(v167, 0, 1, v168);
      v169 = v207;
      sub_219BF03D4();

      (*(v196 + 8))(v195, v197);
      v170 = *MEMORY[0x277D31E10];
      v171 = sub_219BEDC24();
      return (*(*(v171 - 8) + 104))(v169, v170, v171);
    }
  }

  else
  {
    v204 = v40;
    v175 = v48;
    v174 = v35;
    v176 = v28;
    *v216 = *v63;
    *&v216[9] = *(v63 + 9);
    sub_2189E96A0(0);
    v80 = *(v79 + 48);
    v81 = &v63[*(v79 + 64)];
    v82 = *(v81 + 1);
    v192 = *v81;
    v83 = *(v81 + 3);
    v191 = *(v81 + 2);
    v84 = *(v81 + 4);
    v85 = v209;
    v86 = v213;
    (*(v209 + 32))(v60, &v63[v80], v213);
    v87 = *(v85 + 16);
    v173 = v57;
    v205 = v60;
    v88 = v60;
    v89 = v84;
    v194 = v87;
    v193 = (v85 + 16);
    (v87)(v57, v88, v86);
    v184 = v45;
    v197 = v84;
    if (v84)
    {
      v90 = v54;

      v91 = v89;

      v92 = v204;
      sub_219BF0764();
      v93 = sub_219BF0774();
      (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
    }

    else
    {
      v90 = v54;
      v143 = sub_219BF0774();
      (*(*(v143 - 8) + 56))(v204, 1, 1, v143);
    }

    v144 = v175;
    v195 = v82;
    v196 = v83;
    sub_219BF0784();
    v145 = sub_219BF0794();
    (*(*(v145 - 8) + 56))(v144, 0, 1, v145);
    v146 = v211;
    v147 = v210;
    v148 = v174;
    (*(v210 + 104))(v174, *MEMORY[0x277D32D70], v211);
    v149 = 256;
    if (!v216[9])
    {
      v149 = 0;
    }

    if (v216[12])
    {
      v150 = MEMORY[0x277D32D48];
    }

    else
    {
      v150 = MEMORY[0x277D32D40];
    }

    v151 = v176;
    v152 = v173;
    sub_2198D47EC(*v216, v149 | v216[8], v176);
    (*(v199 + 104))(v178, *v150, v200);
    v153 = v180;
    sub_219BF0694();
    v154 = *v216;
    v155 = v206;
    (*(v206 + 16))(v208, v151, v212);
    (v194)(v90, v152, v213);
    (*(v147 + 16))(v198, v148, v146);
    sub_218DFDB20(v144, v184);
    v156 = *&v216[16];
    v157 = v202;
    v158 = v203;
    (*(v202 + 16))(v201, v153, v203);
    v159 = v154;
    v160 = v156;
    v161 = v207;
    sub_219BF0654();
    sub_218950D08(v216);

    (*(v157 + 8))(v153, v158);
    (*(v155 + 8))(v176, v212);
    (*(v210 + 8))(v174, v211);
    sub_2187104B0(v175, &qword_280E90EA8, MEMORY[0x277D32F60]);
    v162 = *(v209 + 8);
    v163 = v213;
    v162(v173, v213);
    v162(v205, v163);
    v164 = *MEMORY[0x277D31E18];
    v165 = sub_219BEDC24();
    return (*(*(v165 - 8) + 104))(v161, v164, v165);
  }
}

uint64_t sub_218EFA450@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, double *a6@<X5>, uint64_t a7@<X8>)
{
  v87 = a5;
  v95 = a4;
  v12 = sub_219BF0534();
  v81 = *(v12 - 8);
  v82 = v12;
  MEMORY[0x28223BE20](v12);
  v80 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BF06A4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v84 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = &v68 - v18;
  v94 = sub_219BF19D4();
  v83 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v90 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v92 = &v68 - v21;
  v91 = sub_219BF0574();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v79 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v88 = &v68 - v24;
  v25 = MEMORY[0x277D83D88];
  sub_218EFC5A4(0, &qword_27CC13610, MEMORY[0x277D32F58], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v68 - v27;
  sub_218EFC5A4(0, &qword_280E90EA8, MEMORY[0x277D32F60], v25);
  MEMORY[0x28223BE20](v29 - 8);
  v78 = &v68 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v68 - v32;
  v34 = sub_219BF0744();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v40 = MEMORY[0x28223BE20](v36);
  if (a1)
  {
    v73 = v39;
    v96 = v33;
    v75 = v15;
    v76 = v14;
    v41 = a1;
    v77 = a7;
    v74 = v35;
    v42 = *(v35 + 16);
    v86 = &v68 - v37;
    v87 = v38;
    v72 = v42;
    v71 = v35 + 16;
    v42(v40);
    v70 = *(a6 + 2);
    v43 = *(a6 + 4);
    v85 = a3;
    if (v43)
    {
      v44 = a2;
      sub_218EFC564(a1, a2, a3);

      v45 = v43;

      sub_219BF0764();
      v46 = sub_219BF0774();
      (*(*(v46 - 8) + 56))(v28, 0, 1, v46);
    }

    else
    {
      v50 = sub_219BF0774();
      (*(*(v50 - 8) + 56))(v28, 1, 1, v50);
      v44 = a2;
      sub_218EFC564(a1, a2, a3);
    }

    v51 = v96;
    sub_219BF0784();
    v52 = sub_219BF0794();
    (*(*(v52 - 8) + 56))(v51, 0, 1, v52);
    v53 = v88;
    v54 = v89;
    v55 = v91;
    (*(v89 + 104))(v88, *MEMORY[0x277D32D70], v91);
    v69 = v44;
    v56 = v92;
    v57 = v86;
    sub_2198D47EC(v41, v44 & 0x101, v92);
    v58 = MEMORY[0x277D32D40];
    if ((v44 & 0x100000000) != 0)
    {
      v58 = MEMORY[0x277D32D48];
    }

    (*(v81 + 104))(v80, *v58, v82);
    v59 = v93;
    sub_219BF0694();
    v60 = v83;
    (*(v83 + 16))(v90, v56, v94);
    (v72)(v73, v57, v87);
    (*(v54 + 16))(v79, v53, v55);
    sub_218DFDB20(v96, v78);
    v61 = v75;
    v62 = v76;
    (*(v75 + 16))(v84, v59, v76);
    v63 = v41;
    v64 = v85;
    v65 = v85;
    v66 = v77;
    sub_219BF0654();
    sub_2189E9530(v41, v69, v64);
    (*(v61 + 8))(v93, v62);
    (*(v60 + 8))(v92, v94);
    (*(v89 + 8))(v88, v91);
    sub_2187104B0(v96, &qword_280E90EA8, MEMORY[0x277D32F60]);
    (*(v74 + 8))(v86, v87);
    v67 = sub_219BF07A4();
    return (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
  }

  else
  {
    v47 = sub_219BF07A4();
    v48 = *(*(v47 - 8) + 56);

    return v48(a7, 1, 1, v47);
  }
}

uint64_t sub_218EFAD90@<X0>(uint64_t a1@<X8>)
{
  sub_218EF8CE0(v1, a1);
  v3 = *MEMORY[0x277D32CF8];
  v4 = sub_219BF0614();
  v5 = *(*(v4 - 8) + 104);

  return v5(a1, v3, v4);
}

uint64_t sub_218EFAE2C()
{
  sub_218EF7D18();
  sub_219BF54D4();

  v0 = sub_219BF5494();
  v2 = v1;

  sub_218EF7D18();
  sub_219BF54D4();

  v3 = sub_219BF5494();
  v5 = v4;

  if (v0 == v3 && v2 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_219BF78F4();
  }

  return v6 & 1;
}

uint64_t sub_218EFAF1C()
{
  sub_218EF7D18();
  sub_219BF54D4();

  v0 = sub_219BF5494();
  v2 = v1;

  sub_218EF7D18();
  sub_219BF54D4();

  v3 = sub_219BF5494();
  v5 = v4;

  if (v0 == v3 && v2 == v5)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_219BF78F4();

    v6 = v7 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_218EFB020()
{
  sub_218EF7D18();
  sub_219BF54D4();

  v0 = sub_219BF5494();
  v2 = v1;

  sub_218EF7D18();
  sub_219BF54D4();

  v3 = sub_219BF5494();
  v5 = v4;

  if (v0 == v3 && v2 == v5)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_219BF78F4();

    v6 = v7 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_218EFB124()
{
  sub_218EF7D18();
  sub_219BF54D4();

  v0 = sub_219BF5494();
  v2 = v1;

  sub_218EF7D18();
  sub_219BF54D4();

  v3 = sub_219BF5494();
  v5 = v4;

  if (v0 == v3 && v2 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_219BF78F4();
  }

  return v6 & 1;
}

uint64_t sub_218EFB214(void *a1)
{
  sub_219BF4284();
  v2 = [a1 sourceChannel];
  return sub_219BF4274();
}

uint64_t sub_218EFB25C(uint64_t a1)
{
  sub_219BF4284();
  swift_unknownObjectRetain();
  return sub_219BF4274();
}

uint64_t sub_218EFB304(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_219BF0444();
  v127 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v120 - v9;
  v11 = sub_219BF0744();
  v128 = *(v11 - 8);
  v129 = v11;
  MEMORY[0x28223BE20](v11);
  v126 = (&v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v125 = (&v120 - v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v120 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v120 - v19;
  sub_218EFC380(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = &v23[*(v24 + 56)];
  sub_2189F50E4(a1, v23);
  sub_2189F50E4(a2, v25);
  type metadata accessor for MagazineGridItemModel(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *v131 = *v23;
      *&v131[9] = *(v23 + 9);
      v28 = *(v23 + 4);
      v27 = *(v23 + 5);
      v29 = *(v23 + 6);
      sub_2189E9570(0);
      v31 = *(v30 + 64);
      v32 = *(v30 + 80);
      v33 = *&v23[v32 + 16];
      v132 = *&v23[v32];
      v133 = v33;
      v134 = *&v23[v32 + 32];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v124 = v29;
        *v130 = *v25;
        *&v130[9] = *(v25 + 9);
        v34 = *(v25 + 40);
        v127 = *(v25 + 32);
        v35 = *(v25 + 48);
        v121 = v34;
        v122 = v35;
        v123 = *(v25 + 56);
        v36 = *(v25 + v32 + 16);
        v135 = *(v25 + v32);
        v136 = v36;
        v137 = *(v25 + v32 + 32);
        v37 = *(v128 + 4);
        v38 = &v23[v31];
        v39 = v129;
        v37(v125, v38, v129);
        v37(v126, (v25 + v31), v39);
        v40 = [*v131 identifier];
        v41 = sub_219BF5414();
        v43 = v42;

        v44 = [*v130 identifier];
        v45 = sub_219BF5414();
        v47 = v46;

        if (v41 == v45 && v43 == v47)
        {
        }

        else
        {
          v90 = sub_219BF78F4();

          if ((v90 & 1) == 0)
          {
            goto LABEL_53;
          }
        }

        if (v28)
        {
          v91 = [v28 identifier];
          v92 = sub_219BF5414();
          v94 = v93;

          if (!v127)
          {
            if (!v94)
            {
              goto LABEL_51;
            }

            goto LABEL_48;
          }
        }

        else
        {
          if (!v127)
          {
            goto LABEL_51;
          }

          v94 = 0;
          v92 = 0;
        }

        v103 = [v127 identifier];
        v104 = sub_219BF5414();
        v106 = v105;

        if (!v94)
        {
          if (!v106)
          {
            goto LABEL_51;
          }

          v150 = v135;
          v112 = MEMORY[0x277D837D0];
          sub_218744C90(&v150, &qword_280E8F860, MEMORY[0x277D837D0]);
          v151 = v136;
          sub_218744C90(&v151, &qword_280E8F860, v112);
          v152 = v137;
          sub_218744C90(&v152, &qword_27CC0EA08, &type metadata for MagazineGridModel.EditorialOverrides.Image);
          v153 = v132;
          sub_218744C90(&v153, &qword_280E8F860, v112);
          v154 = v133;
          sub_218744C90(&v154, &qword_280E8F860, v112);
          v155[0] = v134;
          sub_218744C90(v155, &qword_27CC0EA08, &type metadata for MagazineGridModel.EditorialOverrides.Image);
          sub_2189E9530(v127, v121, v122);
          sub_2189E9530(v28, v27, v124);
          sub_218950D08(v130);
          sub_218950D08(v131);
LABEL_49:

LABEL_54:
          v70 = 0;
          goto LABEL_55;
        }

        if (!v106)
        {
LABEL_48:
          v150 = v135;
          v113 = MEMORY[0x277D837D0];
          sub_218744C90(&v150, &qword_280E8F860, MEMORY[0x277D837D0]);
          v151 = v136;
          sub_218744C90(&v151, &qword_280E8F860, v113);
          v152 = v137;
          sub_218744C90(&v152, &qword_27CC0EA08, &type metadata for MagazineGridModel.EditorialOverrides.Image);
          v153 = v132;
          sub_218744C90(&v153, &qword_280E8F860, v113);
          v154 = v133;
          sub_218744C90(&v154, &qword_280E8F860, v113);
          v155[0] = v134;
          sub_218744C90(v155, &qword_27CC0EA08, &type metadata for MagazineGridModel.EditorialOverrides.Image);
          sub_2189E9530(v127, v121, v122);
          sub_2189E9530(v28, v27, v124);
          sub_218950D08(v130);
          sub_218950D08(v131);
          goto LABEL_49;
        }

        if (v92 == v104 && v94 == v106)
        {

          goto LABEL_51;
        }

        v114 = sub_219BF78F4();

        if (v114)
        {
LABEL_51:
          sub_218EFC3E4(&qword_27CC0EA10, MEMORY[0x277D32F30], MEMORY[0x277D32F40]);
          sub_219BF5874();
          sub_219BF5874();
          if (*&v155[0] == v154)
          {
            v70 = sub_21938C82C(&v132, &v135);
            v150 = v135;
            v115 = MEMORY[0x277D837D0];
            sub_218744C90(&v150, &qword_280E8F860, MEMORY[0x277D837D0]);
            v151 = v136;
            sub_218744C90(&v151, &qword_280E8F860, v115);
            v152 = v137;
            sub_218744C90(&v152, &qword_27CC0EA08, &type metadata for MagazineGridModel.EditorialOverrides.Image);
            v153 = v132;
            sub_218744C90(&v153, &qword_280E8F860, v115);
            v154 = v133;
            sub_218744C90(&v154, &qword_280E8F860, v115);
            v155[0] = v134;
            sub_218744C90(v155, &qword_27CC0EA08, &type metadata for MagazineGridModel.EditorialOverrides.Image);
            sub_2189E9530(v127, v121, v122);
            sub_2189E9530(v28, v27, v124);
            sub_218950D08(v130);
            sub_218950D08(v131);
LABEL_55:
            v117 = v129;
            v118 = *(v128 + 1);
            v118(v126, v129);
            v118(v125, v117);
            return v70 & 1;
          }
        }

LABEL_53:
        v150 = v135;
        v116 = MEMORY[0x277D837D0];
        sub_218744C90(&v150, &qword_280E8F860, MEMORY[0x277D837D0]);
        v151 = v136;
        sub_218744C90(&v151, &qword_280E8F860, v116);
        v152 = v137;
        sub_218744C90(&v152, &qword_27CC0EA08, &type metadata for MagazineGridModel.EditorialOverrides.Image);
        v153 = v132;
        sub_218744C90(&v153, &qword_280E8F860, v116);
        v154 = v133;
        sub_218744C90(&v154, &qword_280E8F860, v116);
        v155[0] = v134;
        sub_218744C90(v155, &qword_27CC0EA08, &type metadata for MagazineGridModel.EditorialOverrides.Image);
        sub_2189E9530(v127, v121, v122);
        sub_2189E9530(v28, v27, v124);
        sub_218950D08(v130);
        sub_218950D08(v131);
        goto LABEL_54;
      }

      sub_218950D08(v131);
      sub_2189E9530(v28, v27, v29);
      goto LABEL_17;
    }

    v51 = *v23;
    sub_2189E93F4(0);
    v53 = *(v52 + 48);
    v54 = *(v52 + 64);
    v55 = *&v23[v54 + 16];
    v132 = *&v23[v54];
    v133 = v55;
    v134 = *&v23[v54 + 32];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      *v130 = v132;
      v77 = MEMORY[0x277D837D0];
      sub_218744C90(v130, &qword_280E8F860, MEMORY[0x277D837D0]);
      *v131 = v133;
      sub_218744C90(v131, &qword_280E8F860, v77);
      v135 = v134;
      sub_218744C90(&v135, &qword_27CC0EA08, &type metadata for MagazineGridModel.EditorialOverrides.Image);
      (v127[1])(&v23[v53], v5);
      goto LABEL_19;
    }

    v56 = v10;
    v57 = *v25;
    v58 = *(v25 + v54 + 16);
    v135 = *(v25 + v54);
    v136 = v58;
    v137 = *(v25 + v54 + 32);
    v59 = v127[4];
    v128 = v56;
    v59();
    v129 = v7;
    (v59)(v7, v25 + v53, v5);
    v126 = v51;
    v60 = [*(v51 + 16) identifier];
    v61 = sub_219BF5414();
    v63 = v62;

    v125 = v57;
    v64 = [v57[2] identifier];
    v65 = sub_219BF5414();
    v67 = v66;

    if (v61 == v65 && v63 == v67)
    {
    }

    else
    {
      v69 = sub_219BF78F4();

      if ((v69 & 1) == 0)
      {
        v70 = 0;
        v71 = &v151;
        v124 = &v150;
        v72 = v149;
        v73 = v142;
        v74 = v141;
        v75 = v140;
LABEL_35:
        *v75 = v135;
        v100 = MEMORY[0x277D837D0];
        sub_218744C90(v75, &qword_280E8F860, MEMORY[0x277D837D0]);
        *v74 = v136;
        sub_218744C90(v74, &qword_280E8F860, v100);
        *v73 = v137;
        sub_218744C90(v73, &qword_27CC0EA08, &type metadata for MagazineGridModel.EditorialOverrides.Image);
        *v72 = v132;
        sub_218744C90(v72, &qword_280E8F860, v100);
        v101 = v124;
        *v124 = v133;
        sub_218744C90(v101, &qword_280E8F860, v100);
        *v71 = v134;
        sub_218744C90(v71, &qword_27CC0EA08, &type metadata for MagazineGridModel.EditorialOverrides.Image);

        v102 = v127[1];
        (v102)(v129, v5);
        (v102)(v128, v5);
        return v70 & 1;
      }
    }

    sub_218EFC3E4(&qword_27CC135F8, MEMORY[0x277D32CB0], MEMORY[0x277D32CC0]);
    sub_219BF5874();
    sub_219BF5874();
    if (*v131 == *v130)
    {
      v70 = sub_21938C82C(&v132, &v135);
      v71 = v131;
      v124 = v130;
      v72 = v155;
      v73 = v148;
      v74 = v147;
      v75 = v146;
    }

    else
    {
      v70 = 0;
      v71 = &v154;
      v124 = &v153;
      v72 = &v152;
      v73 = v145;
      v74 = v144;
      v75 = v143;
    }

    goto LABEL_35;
  }

  *v131 = *v23;
  *&v131[9] = *(v23 + 9);
  sub_2189E96A0(0);
  v31 = *(v48 + 48);
  v49 = *(v48 + 64);
  v50 = *&v23[v49 + 16];
  v132 = *&v23[v49];
  v133 = v50;
  v134 = *&v23[v49 + 32];
  if (!swift_getEnumCaseMultiPayload())
  {
    *v130 = *v25;
    *&v130[9] = *(v25 + 9);
    v78 = *(v25 + v49 + 16);
    v135 = *(v25 + v49);
    v136 = v78;
    v137 = *(v25 + v49 + 32);
    v79 = *(v128 + 4);
    v80 = &v23[v31];
    v81 = v129;
    v79(v20, v80, v129);
    v79(v17, (v25 + v31), v81);
    v82 = [*v131 identifier];
    v83 = sub_219BF5414();
    v85 = v84;

    v86 = [*v130 identifier];
    v87 = sub_219BF5414();
    v89 = v88;

    if (v83 == v87 && v85 == v89)
    {
    }

    else
    {
      v95 = sub_219BF78F4();

      if ((v95 & 1) == 0)
      {
        v70 = 0;
        v127 = v149;
        v126 = v148;
        v96 = v147;
        v97 = v140;
        v98 = &v139;
        v99 = &v138;
LABEL_45:
        *v99 = v135;
        v107 = MEMORY[0x277D837D0];
        sub_218744C90(v99, &qword_280E8F860, MEMORY[0x277D837D0]);
        *v98 = v136;
        sub_218744C90(v98, &qword_280E8F860, v107);
        *v97 = v137;
        sub_218744C90(v97, &qword_27CC0EA08, &type metadata for MagazineGridModel.EditorialOverrides.Image);
        *v96 = v132;
        sub_218744C90(v96, &qword_280E8F860, v107);
        v108 = v126;
        *v126 = v133;
        sub_218744C90(v108, &qword_280E8F860, v107);
        v109 = v127;
        *v127 = v134;
        sub_218744C90(v109, &qword_27CC0EA08, &type metadata for MagazineGridModel.EditorialOverrides.Image);
        sub_218950D08(v130);
        sub_218950D08(v131);
        v110 = v129;
        v111 = *(v128 + 1);
        v111(v17, v129);
        v111(v20, v110);
        return v70 & 1;
      }
    }

    sub_218EFC3E4(&qword_27CC0EA10, MEMORY[0x277D32F30], MEMORY[0x277D32F40]);
    sub_219BF5874();
    sub_219BF5874();
    if (*&v155[0] == v154)
    {
      v70 = sub_21938C82C(&v132, &v135);
      v127 = v155;
      v126 = &v154;
      v96 = &v153;
      v97 = v146;
      v98 = v145;
      v99 = v144;
    }

    else
    {
      v70 = 0;
      v127 = &v152;
      v126 = &v151;
      v96 = &v150;
      v97 = v143;
      v98 = v142;
      v99 = v141;
    }

    goto LABEL_45;
  }

  sub_218950D08(v131);
LABEL_17:
  v155[0] = v132;
  v76 = MEMORY[0x277D837D0];
  sub_218744C90(v155, &qword_280E8F860, MEMORY[0x277D837D0]);
  *v130 = v133;
  sub_218744C90(v130, &qword_280E8F860, v76);
  v135 = v134;
  sub_218744C90(&v135, &qword_27CC0EA08, &type metadata for MagazineGridModel.EditorialOverrides.Image);
  (*(v128 + 1))(&v23[v31], v129);
LABEL_19:
  sub_21897C080(v25);
  v70 = 0;
  return v70 & 1;
}

void sub_218EFC380(uint64_t a1)
{
  if (!qword_27CC135F0)
  {
    type metadata accessor for MagazineGridItemModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC135F0);
    }
  }
}

uint64_t sub_218EFC3E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218EFC42C(uint64_t a1)
{
  if (!qword_27CC13618)
  {
    sub_219BF07A4();
    sub_218EFC5A4(255, &qword_27CC13600, MEMORY[0x277D32F68], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC13618);
    }
  }
}

uint64_t sub_218EFC4D0(uint64_t a1, uint64_t a2)
{
  sub_218EFC5A4(0, &qword_27CC13600, MEMORY[0x277D32F68], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_218EFC564(id result, uint64_t a2, void *a3)
{
  if (result)
  {
    v3 = result;

    return a3;
  }

  return result;
}

void sub_218EFC5A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_218EFC60C(char *a1, uint64_t a2)
{
  v3 = v2;
  v113 = a2;
  v99 = sub_219BF0BD4();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v96 = v5;
  v97 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF6C4();
  MEMORY[0x28223BE20](v6 - 8);
  v109 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v104);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_218EFFFF8(a1);
  if (qword_280E8D910 != -1)
  {
LABEL_28:
    swift_once();
  }

  v11 = qword_280F617C0;
  sub_2186E80E4(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09EC0;
  sub_218F0014C();
  v13 = sub_219BF5D54();
  v15 = v14;
  v16 = MEMORY[0x277D837D0];
  *(v12 + 56) = MEMORY[0x277D837D0];
  v17 = sub_2186FC3BC();
  *(v12 + 64) = v17;
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v112 = &a1[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context];
  v18 = sub_219361A30();
  *(v12 + 96) = v16;
  *(v12 + 104) = v17;
  *(v12 + 72) = v18;
  *(v12 + 80) = v19;
  v20 = sub_219BF6214();
  sub_219BE5314("Feed pool fetching requirements=%{public}@, context=%{public}@", 62, 2, &dword_2186C1000, v11, v20, v12);

  v21 = sub_2194B3934(&unk_282A24EE0);

  v107 = v10;
  v108 = v3;
  v22 = sub_218EFD62C(v21, v10, sub_218F001A0, a1);

  v23 = MEMORY[0x277D84F90];
  v117[0] = MEMORY[0x277D84F90];
  v24 = sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
  sub_218A4E214(0);
  v26 = v25;
  v27 = sub_2186DFB90(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);

  v102 = v26;
  ObjectType = v27;
  v28 = v104;
  v103 = v24;
  sub_219BF7164();
  sub_2186E80E4(0, &unk_280EE71C0, sub_218F001B0, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  v106 = v22;
  v114 = sub_219BE2D14();
  v110 = a1;
  v111 = *&a1[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData];
  v100 = OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines;
  v29 = *(v111 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines);
  v32 = *(v29 + 64);
  v31 = v29 + 64;
  v30 = v32;
  v33 = 1 << *(*(v111 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_headlines) + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v30;
  v36 = (v33 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v3 = 0;
  v105 = v23;
  v10 = v9;
  a1 = v28;
LABEL_5:
  v37 = v3;
  if (!v35)
  {
    goto LABEL_7;
  }

  do
  {
    v3 = v37;
LABEL_10:
    v35 &= v35 - 1;
    v38 = [swift_unknownObjectRetain_n() clusterID];
    if (v38)
    {
      v39 = v38;
      v95 = sub_219BF5414();
      v94 = v40;
      swift_unknownObjectRelease_n();

      v41 = v105;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_218840D24(0, *(v41 + 2) + 1, 1, v41);
      }

      v43 = *(v41 + 2);
      v42 = *(v41 + 3);
      if (v43 >= v42 >> 1)
      {
        v41 = sub_218840D24((v42 > 1), v43 + 1, 1, v41);
      }

      *(v41 + 2) = v43 + 1;
      v105 = v41;
      v44 = &v41[16 * v43];
      v45 = v94;
      *(v44 + 4) = v95;
      *(v44 + 5) = v45;
      v9 = v10;
      goto LABEL_5;
    }

    swift_unknownObjectRelease_n();
    v37 = v3;
    v9 = v10;
  }

  while (v35);
  while (1)
  {
LABEL_7:
    v3 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v3 >= v36)
    {
      break;
    }

    v35 = *(v31 + 8 * v3);
    ++v37;
    if (v35)
    {
      goto LABEL_10;
    }
  }

  v94 = sub_218845F78(v105);

  v46 = *(v112 + 1);
  v105 = *&v110[OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig];
  swift_unknownObjectRetain();
  v95 = v46;
  sub_218DAE5F8(v109);
  v47 = MEMORY[0x277D84F90];
  v117[0] = MEMORY[0x277D84F90];

  sub_219BF7164();
  sub_2186E80E4(0, &unk_280EE7160, sub_218F001EC, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  v103 = sub_219BE2D14();
  v48 = *(*(v111 + v100) + 16);
  if (v48)
  {
    v49 = sub_2194B7E58();
    v50 = sub_2194B7E40();
    v51 = v117[0];

    sub_21892DE98(v51);
    if (v50 == v48)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  v49 = v47;
LABEL_22:
  v52 = *(v112 + 3);
  KeyPath = swift_getKeyPath();
  v54 = swift_getKeyPath();
  v55 = MEMORY[0x277D84FA0];
  v115[0] = v49;
  v115[1] = v47;
  v115[2] = v52;
  v115[3] = MEMORY[0x277D84FA0];
  v115[4] = v47;
  v115[5] = KeyPath;
  v115[6] = v54;
  v56 = *(*(v111 + OBJC_IVAR____TtC7NewsUI215TodayConfigData_tags) + 16);
  if (!v56)
  {

    v57 = MEMORY[0x277D84F90];
    goto LABEL_26;
  }

  v57 = sub_2194B7E58();
  v58 = sub_2194B7E40();
  v59 = v117[0];

  sub_21892DE98(v59);
  if (v58 == v56)
  {
    v47 = MEMORY[0x277D84F90];
    v55 = MEMORY[0x277D84FA0];
LABEL_26:
    v102 = type metadata accessor for TodayFeedPool(0);
    ObjectType = swift_getObjectType();
    v60 = swift_getKeyPath();
    v116[0] = v57;
    v116[1] = v47;
    v116[2] = v55;
    v116[3] = v55;
    v116[4] = v47;
    v116[5] = v60;
    v116[6] = 0;
    v61 = swift_getKeyPath();
    v117[0] = v47;
    v117[1] = v47;
    v117[2] = v55;
    v117[3] = v55;
    v117[4] = v47;
    v117[5] = v61;
    v117[6] = 0;
    v62 = swift_allocObject();
    swift_weakInit();
    v63 = v98;
    v64 = *(v98 + 16);
    v111 = v98 + 16;
    v112 = v64;
    v65 = v97;
    v66 = v99;
    (v64)(v97, v113, v99);
    v67 = *(v63 + 80);
    v68 = (v67 + 24) & ~v67;
    v96 += 7;
    v69 = (v96 + v68) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    *(v70 + 16) = v62;
    v104 = *(v63 + 32);
    (v104)(v70 + v68, v65, v66);
    v71 = v110;
    *(v70 + v69) = v110;
    v72 = sub_2194B3934(&unk_282A24F08);

    v100 = sub_218EFE53C(v72, v107, sub_218F00288, v70);

    (v112)(v65, v113, v66);
    v73 = swift_allocObject();
    *(v73 + 16) = v114;
    (v104)(v73 + v68, v65, v66);
    *(v73 + v69) = v71;
    v74 = sub_2194B3934(&unk_282A24F30);

    v75 = v107;
    v76 = v108;
    v98 = sub_218EFE21C(v74, v107, sub_218F002A0, v73);

    (v112)(v65, v113, v66);
    v77 = (v67 + 32) & ~v67;
    v78 = (v96 + v77) & 0xFFFFFFFFFFFFFFF8;
    v79 = swift_allocObject();
    v80 = v114;
    v81 = v94;
    *(v79 + 16) = v114;
    *(v79 + 24) = v81;
    (v104)(v79 + v77, v65, v66);
    *(v79 + v78) = v71;
    v82 = sub_2194B3934(&unk_282A24F58);

    v83 = sub_218EFDF2C(v82, v75, sub_218F0036C, v79);

    v84 = swift_allocObject();
    *(v84 + 16) = v80;
    *(v84 + 24) = v71;
    v85 = sub_2194B3934(&unk_282A24F80);

    v86 = sub_218EFDC3C(v85, v75, sub_218F0040C, v84);

    v87 = sub_2194B3934(&unk_282A24FA8);

    v88 = v76;
    v89 = sub_218EFD91C(v87, v75, sub_218F00414, v71);

    sub_218A4E590(v105, v95, 1, v109, v103, v115, v116, v117, v100, v98, v83, v86, v89, v102);
    __swift_project_boxed_opaque_existential_1((v88 + 232), *(v88 + 256));
    v90 = swift_allocObject();
    swift_weakInit();
    v91 = swift_allocObject();
    swift_weakInit();
    v92 = swift_allocObject();
    *(v92 + 16) = v90;
    *(v92 + 24) = v91;
    sub_219BE2D04();

    return;
  }

  __break(1u);
}

uint64_t sub_218EFD45C(void *a1, uint64_t a2, __n128 a3)
{
  v6 = a1[2];
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = sub_219BE2CC4();
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = v5;
  v11[4] = v9;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_219BE31D4();

  v12 = sub_219BE2CC4();
  sub_218718690((a1 + 39), v20);
  sub_218718690((a1 + 44), v19);
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a1;
  v13[4] = v6;
  sub_2186CB1F0(v20, (v13 + 5));
  sub_2186CB1F0(v19, (v13 + 10));
  v13[15] = v8;
  v13[16] = v7;
  v13[17] = v5;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_218F00D3C;
  *(v14 + 24) = v13;

  swift_unknownObjectRetain();

  v15 = v6;
  v16 = v8;
  swift_unknownObjectRetain();
  v17 = sub_219BE2F64();

  return v17;
}

uint64_t sub_218EFD62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v8);

  v10 = *(sub_2192090F4(a1, a2, v9) + 2);

  if (v10)
  {
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a3;
    v12[4] = a4;
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);
  }

  else
  {
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);
  }

  sub_219BF7164();
  sub_218F0065C(0, &unk_280EE71B0, &qword_280EE6E40, &_s20FeedItemFetchResultsVN);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_218EFD91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v8);

  v10 = *(sub_2192090F4(a1, a2, v9) + 2);

  if (v10)
  {
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a3;
    v12[4] = a4;
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);
  }

  else
  {
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);
  }

  sub_219BF7164();
  sub_2186E80E4(0, &qword_280EE7190, sub_218F00458, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_218EFDC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v8);

  v10 = *(sub_2192090F4(a1, a2, v9) + 2);

  if (v10)
  {
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a3;
    v12[4] = a4;
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);
  }

  else
  {
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);
  }

  sub_219BF7164();
  sub_218F0065C(0, &unk_280EE71E0, &unk_280EE6F30, &_s11SuggestionsVN);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_218EFDF2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v8);

  v10 = *(sub_2192090F4(a1, a2, v9) + 2);

  if (v10)
  {
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a3;
    v12[4] = a4;
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);
  }

  else
  {
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);
  }

  sub_219BF7164();
  sub_218F0065C(0, &unk_280EE71D0, &unk_280EE6F20, &_s13MissedStoriesVN);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_218EFE21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v8);

  v10 = *(sub_2192090F4(a1, a2, v9) + 2);

  if (v10)
  {
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a3;
    v12[4] = a4;
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);
  }

  else
  {
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);
  }

  sub_219BF7164();
  sub_2186E80E4(0, &unk_280EE71F0, sub_218A4E350, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  return sub_219BE2D14();
}

uint64_t sub_218EFE53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v8);

  v10 = *(sub_2192090F4(a1, a2, v9) + 2);

  if (v10)
  {
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a3;
    v12[4] = a4;
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);
  }

  else
  {
    sub_2186DFB90(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_218A4E214(0);
    sub_2186DFB90(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);
  }

  sub_219BF7164();
  sub_218F0065C(0, &unk_280EE7200, &qword_280EE6F50, &_s11ForYouFetchVN);
  swift_allocObject();
  return sub_219BE2D14();
}

void sub_218EFE82C(uint64_t *a2@<X8>)
{
  sub_219BE2CF4();
  v3 = sub_219BE2E54();
  _s19FeedItemFetchResultVMa(0);
  v4 = sub_219BE2F64();

  *a2 = v4;
}

void sub_218EFE8D0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 clusterID];
  if (v3)
  {
    v4 = v3;
    v5 = sub_219BF5414();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_218EFE938(uint64_t *a2@<X8>)
{
  _s19FeedItemFetchResultVMa(0);
  sub_219BE3204();
  v3 = sub_219BE2E54();
  sub_2187381BC(0, &qword_280E8ED70, &qword_280E8E800, 0x277D35488, MEMORY[0x277D83940]);
  v4 = sub_219BE2F74();

  *a2 = v4;
}

uint64_t sub_218EFEA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_219BF0BD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_219BE2CF4();
    (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v10 = swift_allocObject();
    (*(v7 + 32))(v10 + v9, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    *(v10 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;

    v11 = sub_219BE2E54();
    type metadata accessor for TodayFeedPoolService();
    v12 = sub_219BE2F84();

    return v12;
  }

  else
  {
    if (qword_280E8D910 != -1)
    {
      swift_once();
    }

    v14 = qword_280F617C0;
    v15 = sub_219BF61F4();
    sub_219BE5314("ForYou fetch promise failed to run because underlying fetchResults is no longer available.", 90, 2, &dword_2186C1000, v14, v15, MEMORY[0x277D84F90]);
    sub_218F00A5C();
    swift_allocError();
    *v16 = 0;
    sub_218F00CCC(0, &qword_280EE6F50, &_s11ForYouFetchVN, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE2FF4();
  }
}

uint64_t sub_218EFECB0(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v7 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = a2[2];
  v12 = a2[4];
  v42 = a2[3];
  v43 = v12;
  v13 = *__swift_project_boxed_opaque_existential_1(a2 + 34, a2[37]);
  v47[3] = type metadata accessor for LocalNewsChannelService();
  v47[4] = &off_282A6E848;
  v47[0] = v13;

  if (sub_219614240(a3, a4))
  {
    v14 = sub_219BEEDD4();
    sub_2186DFB90(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x277D323D0], v14);
    sub_218F00CCC(0, &qword_280EE6F50, &_s11ForYouFetchVN, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v16 = sub_219BE2FF4();
LABEL_6:
    __swift_destroy_boxed_opaque_existential_1(v47);
    return v16;
  }

  v35[0] = v4;
  v17 = CACurrentMediaTime();
  sub_218F00CCC(0, &qword_280EE7358, &_s4FeedVN, MEMORY[0x277D6CE00]);
  swift_allocObject();
  v36 = sub_219BE2B44();
  sub_2186E80E4(0, &unk_280EE7340, sub_218A4E818, MEMORY[0x277D6CE00]);
  swift_allocObject();
  v39 = sub_219BE2B44();
  v40 = v11;
  v41 = v8;
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  swift_weakInit();
  sub_218718690(v47, &v44);
  v35[1] = a4;
  v37 = v10;
  v38 = v9;
  v21 = swift_allocObject();
  *(v21 + 2) = v36;
  *(v21 + 3) = v18;
  *(v21 + 4) = v19;
  *(v21 + 5) = v20;
  v22 = v43;
  *(v21 + 6) = v42;
  *(v21 + 7) = v22;
  *(v21 + 8) = v40;
  v21[9] = v17;
  v23 = sub_2186CB1F0(&v44, (v21 + 10));
  v35[2] = v35;
  v24 = v39;
  *(v21 + 15) = a4;
  *(v21 + 16) = v24;
  MEMORY[0x28223BE20](v23);
  _s19FeedItemFetchResultVMa(0);

  swift_unknownObjectRetain();
  v25 = v22;
  v26 = v40;

  sub_219BE3204();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_218F00BF4;
  *(v27 + 24) = v21;

  v28 = sub_219BE2E54();
  sub_219BE2F74();

  v29 = sub_219BE2E54();
  sub_219BE2FD4();

  v30 = swift_allocObject();
  v30[2] = v41;
  v30[3] = v7;
  v31 = v38;
  v30[4] = v37;
  v30[5] = v31;
  v30[6] = sub_218F00BF4;
  v30[7] = v21;

  result = MEMORY[0x21CEB98C0](v32);
  if (result)
  {
    v34 = result;
    result = MEMORY[0x21CEB98C0]();
    if (result)
    {
      *&v44 = v34;
      *(&v44 + 1) = result;
      v45 = sub_218F00C5C;
      v46 = v30;
      sub_218F00CCC(0, &qword_280EE6F50, &_s11ForYouFetchVN, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v16 = sub_219BE3014();

      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_218EFF220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_219BF0BD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_219BE2CF4();
  (*(v7 + 16))(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  (*(v7 + 32))(v10 + v9, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v10 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;

  v11 = sub_219BE2E54();
  _s11MyHeadlinesCMa(0);
  type metadata accessor for TodayFeedPoolService();
  v12 = sub_219BE2F84();

  return v12;
}

uint64_t sub_218EFF3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_218A4E350(0);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218EFF454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_219BF0BD4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  sub_219BE2CF4();
  (*(v9 + 16))(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  (*(v9 + 32))(v12 + v11, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  *(v12 + ((v10 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;

  v13 = sub_219BE2E54();
  type metadata accessor for TodayFeedPoolService();
  v14 = sub_219BE2F84();

  return v14;
}

uint64_t sub_218EFF60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a2 + 272), *(a2 + 296));
  v8[3] = type metadata accessor for LocalNewsChannelService();
  v8[4] = &off_282A6E848;
  v8[0] = v5;
  sub_218F00CCC(0, &unk_280EE6F20, &_s13MissedStoriesVN, MEMORY[0x277D6CF30]);
  swift_allocObject();

  v6 = sub_219BE30B4();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_218EFF738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_219BE2CF4();

  v3 = sub_219BE2E54();
  type metadata accessor for TodayFeedPoolService();
  v4 = sub_219BE2F84();

  return v4;
}

uint64_t sub_218EFF7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218F00CCC(0, &unk_280EE6F30, &_s11SuggestionsVN, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_218EFF870(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineFeedServiceContext(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context;
  v12 = a2 + *(type metadata accessor for TodayFeedServiceContext(0) + 36);
  v13 = sub_219BEE754();
  (*(*(v13 - 8) + 16))(v10, v12 + v11, v13);
  swift_storeEnumTagMultiPayload();
  v14 = CACurrentMediaTime();
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v15 = qword_280F617C8;
  v16 = sub_219BF6214();
  sub_219BE5314("Network fetching magazine and paid-bundle configs...", 52, 2, &dword_2186C1000, v15, v16, MEMORY[0x277D84F90]);
  sub_218F004A8(0);
  sub_219BE3204();
  sub_218F00D58(v10, v7, type metadata accessor for MagazineFeedServiceContext);
  v17 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  sub_218AC55A4(v7, v18 + v17);
  v19 = sub_219BE2E54();
  type metadata accessor for MagazineFeedServiceConfig(0);
  type metadata accessor for MagazineFeedServiceConfigFetcher();
  sub_219BE2F94();

  sub_218F00DC0(v10, type metadata accessor for MagazineFeedServiceContext);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;

  v21 = sub_219BE2E54();
  v22 = sub_219BE2F74();

  return v22;
}

uint64_t sub_218EFFB98()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1((v0 + 192));
  __swift_destroy_boxed_opaque_existential_1((v0 + 232));
  __swift_destroy_boxed_opaque_existential_1((v0 + 272));
  __swift_destroy_boxed_opaque_existential_1((v0 + 312));
  __swift_destroy_boxed_opaque_existential_1((v0 + 352));
  return v0;
}

uint64_t sub_218EFFC28()
{
  sub_218EFFB98();

  return swift_deallocClassInstance();
}

uint64_t sub_218EFFCB8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2189FE9D0();
  swift_allocError();
  *v6 = 8;
  sub_218F00CCC(0, a1, a2, MEMORY[0x277D6CF30]);
  swift_allocObject();
  result = sub_219BE2FF4();
  *a3 = result;
  return result;
}

void sub_218EFFD50(uint64_t (*a2)(void)@<X1>, unint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v9 = a2();
  }

  else
  {
    sub_2189FE9D0();
    swift_allocError();
    *v10 = 6;
    sub_218F00CCC(0, a3, a4, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v9 = sub_219BE2FF4();
  }

  *a5 = v9;
}

uint64_t sub_218EFFE74@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  sub_2189FE9D0();
  swift_allocError();
  *v4 = 8;
  a1(0);
  swift_allocObject();
  result = sub_219BE2FF4();
  *a2 = result;
  return result;
}

void sub_218EFFEF4(uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v7 = a2();
  }

  else
  {
    sub_2189FE9D0();
    swift_allocError();
    *v8 = 6;
    a3(0);
    swift_allocObject();
    v7 = sub_219BE2FF4();
  }

  *a4 = v7;
}

uint64_t sub_218EFFFF8(uint64_t a1)
{
  v2 = type metadata accessor for TodayFeedGroupConfig(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D84FA0];
  v15 = MEMORY[0x277D84FA0];
  v7 = a1 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig;
  v8 = *(v7 + *(type metadata accessor for TodayFeedConfig(0) + 20));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_218F00D58(v10, v5, type metadata accessor for TodayFeedGroupConfig);
      v12 = sub_219A47B58();
      sub_218F00DC0(v5, type metadata accessor for TodayFeedGroupConfig);
      sub_218DD89FC(v12);
      v10 += v11;
      --v9;
    }

    while (v9);
    return v15;
  }

  return v6;
}

unint64_t sub_218F0014C()
{
  result = qword_280EB6278;
  if (!qword_280EB6278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6278);
  }

  return result;
}

void sub_218F001EC(uint64_t a1)
{
  if (!qword_280EE6A98)
  {
    sub_2187381BC(255, &qword_280E8ED70, &qword_280E8E800, 0x277D35488, MEMORY[0x277D83940]);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6A98);
    }
  }
}

uint64_t sub_218F002B8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_219BF0BD4() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v6, v2 + v5, v7);
}

uint64_t sub_218F0036C(uint64_t a1)
{
  v3 = *(sub_219BF0BD4() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_218EFF454(a1, v6, v7, v1 + v4, v5);
}

void sub_218F004A8(uint64_t a1)
{
  if (!qword_280E8E050)
  {
    sub_2186D6710(255, &qword_280E8E080, &protocolRef_FCNewsAppConfiguration);
    type metadata accessor for MagazineConfig(255);
    sub_2186C6148(255, &qword_280E8DDC0, 0x277D311C0);
    sub_2187381BC(255, &unk_280E8E8C0, &qword_280E8E8D0, 0x277D31208, MEMORY[0x277D83D88]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_280E8E050);
    }
  }
}

void sub_218F0065C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_218F00CCC(255, a3, a4, MEMORY[0x277D6CF30]);
    v5 = sub_219BE2D24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t objectdestroy_11Tm_3(void (*a1)(void))
{
  v3 = sub_219BF0BD4();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  a1(*(v1 + 16));
  (*(v4 + 8))(v1 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_218F0082C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_219BF0BD4() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  return sub_218EFF60C(a1, a2, *(v2 + 16), v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_218F0094C(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_219BF0BD4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_218EFF3D0(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_218F00A5C()
{
  result = qword_27CC13620;
  if (!qword_27CC13620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13620);
  }

  return result;
}

uint64_t objectdestroy_64Tm()
{
  v1 = sub_219BF0BD4();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_218F00B4C(uint64_t *a1, void *a2)
{
  v5 = *(sub_219BF0BD4() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_218EFECB0(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_218F00CCC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_218F00D58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218F00DC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218F00E44()
{
  result = qword_27CC13630;
  if (!qword_27CC13630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13630);
  }

  return result;
}

unint64_t sub_218F00E9C()
{
  result = qword_27CC13638;
  if (!qword_27CC13638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13638);
  }

  return result;
}

uint64_t sub_218F00EFC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_218F00F4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F0175C(0, &qword_27CC13660, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for RecentStoriesTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F016A4();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_218F017C0(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_218F016F8(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_218F011F8(uint64_t a1)
{
  v2 = sub_218F016A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F01234(uint64_t a1)
{
  v2 = sub_218F016A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218F012B0(void *a1)
{
  sub_218F0175C(0, &qword_27CC13670, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F016A4();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_218F017C0(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218F01510(uint64_t a1)
{
  result = sub_218F017C0(&qword_27CC13650, type metadata accessor for RecentStoriesTagFeedGroup, &unk_219C468A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_218F01568(void *a1)
{
  a1[1] = sub_218F017C0(&qword_27CC13658, type metadata accessor for RecentStoriesTagFeedGroup, &unk_219C467CC);
  a1[2] = sub_218F017C0(&unk_27CC1C720, type metadata accessor for RecentStoriesTagFeedGroup, &unk_219C46878);
  result = sub_218F017C0(&unk_27CC1C830, type metadata accessor for RecentStoriesTagFeedGroup, &unk_219C46850);
  a1[3] = result;
  return result;
}

uint64_t sub_218F01614(uint64_t a1)
{
  v2 = sub_218F017C0(&qword_27CC13658, type metadata accessor for RecentStoriesTagFeedGroup, &unk_219C467CC);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_218F016A4()
{
  result = qword_27CC13668;
  if (!qword_27CC13668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13668);
  }

  return result;
}

uint64_t sub_218F016F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentStoriesTagFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218F0175C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F016A4();
    v7 = a3(a1, &type metadata for RecentStoriesTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218F017C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218F0181C()
{
  result = qword_27CC13678;
  if (!qword_27CC13678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13678);
  }

  return result;
}

unint64_t sub_218F01874()
{
  result = qword_27CC13680;
  if (!qword_27CC13680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13680);
  }

  return result;
}

unint64_t sub_218F018CC()
{
  result = qword_27CC13688;
  if (!qword_27CC13688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC13688);
  }

  return result;
}

id sub_218F01934(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_218F0198C(uint64_t a1, SEL *a2, void *a3)
{
  v4 = [objc_opt_self() *a2];
  v5 = [v4 colorWithAlphaComponent_];

  *a3 = v5;
}

uint64_t sub_218F019FC@<X0>(uint64_t a1@<X8>)
{
  v15[3] = a1;
  sub_218F01E5C(0, &qword_280E90F70, MEMORY[0x277D32C58]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  sub_218F01E5C(0, &qword_280E91148, MEMORY[0x277D32A88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for SportsTopicClusteringRequest(0);
  v9 = *(v1 + v8[16]);
  v15[1] = *(v1 + v8[15]);
  v15[2] = v9;
  v10 = sub_219BEFD84();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = v8[24];
  v12 = sub_219BF0354();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4, v1 + v11, v12);
  (*(v13 + 56))(v4, 0, 1, v12);

  return sub_219BF02D4();
}

uint64_t sub_218F01C2C@<X0>(uint64_t a1@<X8>)
{
  v15[3] = a1;
  sub_218F01E5C(0, &qword_280E90F70, MEMORY[0x277D32C58]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  sub_218F01E5C(0, &qword_280E91148, MEMORY[0x277D32A88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  v8 = type metadata accessor for SportsTopicClusteringRequest(0);
  v9 = *(v1 + v8[18]);
  v15[1] = *(v1 + v8[17]);
  v15[2] = v9;
  v10 = sub_219BEFD84();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = v8[24];
  v12 = sub_219BF0354();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v4, v1 + v11, v12);
  (*(v13 + 56))(v4, 0, 1, v12);

  return sub_219BF02D4();
}

void sub_218F01E5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t type metadata accessor for SportsTopicClusteringRequest(uint64_t a1)
{
  result = qword_280EB2588;
  if (!qword_280EB2588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218F01F24(uint64_t a1)
{
  sub_219BF03B4();
  if (v1 <= 0x3F)
  {
    sub_218F0215C();
    if (v2 <= 0x3F)
    {
      sub_2186C6148(319, &qword_280E8E860, 0x277D30F38);
      if (v3 <= 0x3F)
      {
        type metadata accessor for FCOperationPurpose(319);
        if (v4 <= 0x3F)
        {
          sub_2186C6148(319, &qword_280E8D790, 0x277D86200);
          if (v5 <= 0x3F)
          {
            type metadata accessor for FCFeedBin(319);
            if (v6 <= 0x3F)
            {
              sub_219BEFBD4();
              if (v7 <= 0x3F)
              {
                sub_2186E2394();
                if (v8 <= 0x3F)
                {
                  sub_218822764();
                  if (v9 <= 0x3F)
                  {
                    sub_219BF0354();
                    if (v10 <= 0x3F)
                    {
                      sub_2186DEFE0(319, &qword_280E8EA30, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for FCFeedFilterOptions(319);
                        if (v12 <= 0x3F)
                        {
                          sub_2186DEFE0(319, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
                          if (v13 <= 0x3F)
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
          }
        }
      }
    }
  }
}

unint64_t sub_218F0215C()
{
  result = qword_280E8E288;
  if (!qword_280E8E288)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280E8E288);
  }

  return result;
}

void sub_218F021C0(uint64_t a1, void *a2, uint64_t a3)
{
  v48 = a3;
  v62 = a1;
  v46 = type metadata accessor for MastheadPaywallConfiguration;
  sub_2187F6124(0, qword_280EB3C28, type metadata accessor for MastheadPaywallConfiguration);
  MEMORY[0x28223BE20](v4 - 8);
  v45 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v44 - v7;
  sub_2187F6124(0, &qword_280EE62C8, MEMORY[0x277D35210]);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = v44 - v10;
  v11 = MEMORY[0x277D34D28];
  sub_2187F6124(0, &qword_280EE64B0, MEMORY[0x277D34D28]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v44 - v16;
  v18 = a2[19];
  v19 = a2[20];
  __swift_project_boxed_opaque_existential_1(a2 + 16, v18);
  (*(v19 + 16))(v18, v19);
  v20 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_paywallModel;
  swift_beginAccess();
  sub_218F0370C(v17, a2 + v20, &qword_280EE64B0, v11);
  swift_endAccess();
  sub_218809EDC(v62, v8, qword_280EB3C28, v46);
  v21 = type metadata accessor for MastheadPaywallConfiguration(0);
  v22 = *(v21 - 8);
  v46 = *(v22 + 48);
  v44[1] = v22 + 48;
  if ((v46)(v8, 1, v21) == 1)
  {
    sub_218809FC8(v8, qword_280EB3C28, type metadata accessor for MastheadPaywallConfiguration);
    v23 = sub_219BE4584();
    v24 = v47;
    (*(*(v23 - 8) + 56))(v47, 1, 1, v23);
  }

  else
  {
    v25 = *(v21 + 20);
    v26 = sub_219BE4584();
    v27 = *(v26 - 8);
    v28 = &v8[v25];
    v24 = v47;
    (*(v27 + 16))(v47, v28, v26);
    sub_218F03920(v8, type metadata accessor for MastheadPaywallConfiguration);
    (*(v27 + 56))(v24, 0, 1, v26);
  }

  v29 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_subscribeButtonDestination;
  swift_beginAccess();
  sub_218F0370C(v24, a2 + v29, &qword_280EE62C8, MEMORY[0x277D35210]);
  swift_endAccess();
  v30 = MEMORY[0x277D34D28];
  sub_218809EDC(a2 + v20, v14, &qword_280EE64B0, MEMORY[0x277D34D28]);
  v31 = sub_219BE3D34();
  v32 = (*(*(v31 - 8) + 48))(v14, 1, v31);
  sub_218809FC8(v14, &qword_280EE64B0, v30);
  if (v32 == 1)
  {
    v56 = 0;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
  }

  else
  {
    v33 = v45;
    sub_218809EDC(v62, v45, qword_280EB3C28, type metadata accessor for MastheadPaywallConfiguration);
    if ((v46)(v33, 1, v21) == 1)
    {
      sub_218809FC8(v33, qword_280EB3C28, type metadata accessor for MastheadPaywallConfiguration);
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v56 = 0;
    }

    else
    {
      v34 = *(v33 + 48);
      v59 = *(v33 + 32);
      v60 = v34;
      v61 = *(v33 + 64);
      v35 = *(v33 + 16);
      v57 = *v33;
      v58 = v35;
      sub_218F038C4(&v57, &v52);
      sub_218F03920(v33, type metadata accessor for MastheadPaywallConfiguration);
      v54 = v59;
      v55 = v60;
      v56 = v61;
      v52 = v57;
      v53 = v58;
    }
  }

  v36 = v53;
  v59 = v54;
  v60 = v55;
  v37 = v52;
  v57 = v52;
  v58 = v53;
  v38 = v48 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction;
  v39 = *(v48 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 48);
  v50[2] = *(v48 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 32);
  v50[3] = v39;
  v40 = *(v48 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 16);
  v50[0] = *(v48 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction);
  v50[1] = v40;
  v41 = v55;
  *(v38 + 32) = v54;
  *(v38 + 48) = v41;
  v61 = v56;
  v51 = *(v38 + 64);
  *(v38 + 64) = v56;
  *v38 = v37;
  *(v38 + 16) = v36;
  sub_218A6E6F4(&v52, &v49);
  sub_218C8FBF8(v50);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v43 = Strong;
    sub_218F03778(&v57, Strong);
    sub_218C8FBF8(&v52);
  }

  else
  {
    sub_218C8FBF8(&v52);
  }
}

uint64_t sub_218F027EC()
{
  sub_2187F6124(0, &qword_280EE64B0, MEMORY[0x277D34D28]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - v2;
  v4 = sub_219BE3D34();
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D35210];
  sub_2187F6124(0, &qword_280EE62C8, MEMORY[0x277D35210]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_219BE4584();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_subscribeButtonDestination;
  swift_beginAccess();
  sub_218809EDC(v0 + v15, v10, &qword_280EE62C8, v7);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_218809FC8(v10, &qword_280EE62C8, MEMORY[0x277D35210]);
  }

  (*(v12 + 32))(v14, v10, v11);
  v17 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_paywallModel;
  swift_beginAccess();
  sub_218809EDC(v0 + v17, v3, &qword_280EE64B0, MEMORY[0x277D34D28]);
  v19 = v20;
  v18 = v21;
  if ((*(v20 + 48))(v3, 1, v21) == 1)
  {
    (*(v12 + 8))(v14, v11);
    return sub_218809FC8(v3, &qword_280EE64B0, MEMORY[0x277D34D28]);
  }

  else
  {
    (*(v19 + 32))(v6, v3, v18);
    swift_getObjectType();
    sub_219BE4364();
    (*(v19 + 8))(v6, v18);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_218F02BA0()
{
  sub_2187F6124(0, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v13[-v5];
  v7 = type metadata accessor for MastheadPaywallEventSession(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_session;
  swift_beginAccess();
  sub_218809EDC(v0 + v11, v6, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_218809FC8(v6, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
  }

  sub_218F0368C(v6, v10);
  swift_getObjectType();
  sub_219BE4344();
  sub_219BE4334();
  sub_218F03920(v10, type metadata accessor for MastheadPaywallEventSession);
  (*(v8 + 56))(v3, 1, 1, v7);
  swift_beginAccess();
  sub_218F0370C(v3, v0 + v11, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);
  return swift_endAccess();
}

uint64_t sub_218F02E2C()
{
  sub_218774F78((v0 + 2));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 11);
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  sub_218809FC8(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_subscribeButtonDestination, &qword_280EE62C8, MEMORY[0x277D35210]);
  sub_218809FC8(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_paywallModel, &qword_280EE64B0, MEMORY[0x277D34D28]);
  sub_218F03C00(*(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 8), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 16), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 24), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 32), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 40), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 48), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 56), *(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_callToAction + 64));
  sub_218809FC8(v0 + OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_session, &qword_280EB7F90, type metadata accessor for MastheadPaywallEventSession);

  return swift_deallocClassInstance();
}

uint64_t sub_218F02F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_2187F6124(0, &qword_280EE64B0, MEMORY[0x277D34D28]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - v10;
  v12 = sub_219BE3D34();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  if (a1 <= 1)
  {
    if (!a1)
    {
      *a3 = 0;
      v24 = MEMORY[0x277D34D10];
      goto LABEL_12;
    }

    if (a1 != 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v24 = MEMORY[0x277D34D08];
LABEL_12:
    v28 = *v24;
    v29 = sub_219BE3CB4();
    v39 = *(v29 - 8);
    (*(v39 + 104))(a3, v28, v29);
    v20 = *(v39 + 56);
    v22 = a3;
    v23 = 0;
    v21 = v29;
    goto LABEL_13;
  }

  if ((a1 - 2) < 2)
  {
    v25 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_paywallModel;
    swift_beginAccess();
    sub_218809EDC(a2 + v25, v11, &qword_280EE64B0, MEMORY[0x277D34D28]);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      v26 = MEMORY[0x277D34D28];
      v27 = v11;
LABEL_19:
      sub_218809FC8(v27, &qword_280EE64B0, v26);
      v34 = sub_219BE3CB4();
      return (*(*(v34 - 8) + 56))(a3, 1, 1, v34);
    }

    (*(v13 + 32))(v18, v11, v12);
    v31 = sub_219BE3D24();
    (*(v13 + 8))(v18, v12);
    *a3 = v31;
    v32 = MEMORY[0x277D34CF8];
LABEL_21:
    v36 = *v32;
    v37 = sub_219BE3CB4();
    v38 = *(v37 - 8);
    (*(v38 + 104))(a3, v36, v37);
    return (*(v38 + 56))(a3, 0, 1, v37);
  }

  if (a1 == 5)
  {
    v33 = OBJC_IVAR____TtC7NewsUI227MastheadPaywallEventHandler_paywallModel;
    swift_beginAccess();
    sub_218809EDC(a2 + v33, v8, &qword_280EE64B0, MEMORY[0x277D34D28]);
    if ((*(v13 + 48))(v8, 1, v12) == 1)
    {
      v26 = MEMORY[0x277D34D28];
      v27 = v8;
      goto LABEL_19;
    }

    (*(v13 + 32))(v15, v8, v12);
    v35 = sub_219BE3D24();
    (*(v13 + 8))(v15, v12);
    *a3 = v35;
    v32 = MEMORY[0x277D34D00];
    goto LABEL_21;
  }

  if (a1 == 4)
  {
    goto LABEL_8;
  }

LABEL_5:
  v19 = sub_219BE3CB4();
  v20 = *(*(v19 - 8) + 56);
  v21 = v19;
  v22 = a3;
  v23 = 1;
LABEL_13:

  return v20(v22, v23, 1, v21);
}

uint64_t sub_218F034A0()
{
  sub_2186F8278(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

double sub_218F03510()
{
  sub_2187F6124(0, qword_280EB3C28, type metadata accessor for MastheadPaywallConfiguration);
  sub_219BE3204();
  sub_2187D9028();
  v0 = sub_219BF66A4();

  sub_219BE2F94();

  return result;
}

uint64_t sub_218F03628(uint64_t a1, uint64_t a2)
{
  sub_2187FF18C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F0368C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MastheadPaywallEventSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_218F0370C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2187F6124(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void sub_218F03778(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (sub_219BED0C4())
  {
    sub_21978FDE0(a1);
    return;
  }

  v5 = a2 + OBJC_IVAR____TtC7NewsUI219TodayViewController_mastheadViewProviderDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 8);
    v7 = swift_getObjectType();
    v8 = sub_218803338();
    (*(v6 + 8))(a2, v8, a1, v7, v6);
    swift_unknownObjectRelease();
  }

  v9 = sub_218803338();
  v10 = MEMORY[0x21CEBCBD0](ObjectType, v9);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  swift_getObjectType();
  if ((sub_219BE90B4() & 1) == 0)
  {

LABEL_11:
    sub_218F02BA0();
    return;
  }

  sub_21880D358();
}

uint64_t sub_218F03920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218F03980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = a3;
  v5 = sub_219BE3CB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D34D18];
  sub_2187F6124(0, &qword_27CC13690, MEMORY[0x277D34D18]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  sub_218F02F78(a2, v3, (v20 - v14));
  sub_218809EDC(v15, v12, &qword_27CC13690, v9);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    sub_218809FC8(v15, &qword_27CC13690, MEMORY[0x277D34D18]);
  }

  else
  {
    (*(v6 + 32))(v8, v12, v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
      v18 = v17;
      sub_219BE4254();
    }

    (*(v6 + 8))(v8, v5);
    v12 = v15;
  }

  return sub_218809FC8(v12, &qword_27CC13690, MEMORY[0x277D34D18]);
}

void sub_218F03C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a2)
  {
  }
}

uint64_t sub_218F03CB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_218F03D10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_218F03D94()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_218F03E18(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

void sub_218F03E74(BOOL *a2@<X8>)
{
  v3 = sub_219BF7614();

  *a2 = v3 != 0;
}

void sub_218F03F14(BOOL *a3@<X8>)
{
  v4 = sub_219BF7614();

  *a3 = v4 != 0;
}

uint64_t sub_218F03F6C(uint64_t a1)
{
  v2 = sub_218F041E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218F03FA8(uint64_t a1)
{
  v2 = sub_218F041E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChannelSupergroupKnobs.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_218F044F0(0, &qword_27CC13698, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F041E0();
  sub_219BF7B34();
  if (!v2)
  {
    sub_219BF7714();
    v11 = v10.n128_u64[0];
    if (v10.n128_f64[0] < 0.0)
    {
      if (qword_280E8D920 != -1)
      {
        swift_once();
      }

      v12 = qword_280F617C8;
      v13 = sub_219BF61F4();
      v10.n128_f64[0] = sub_219BE5314("Encountered negative rank multiplier while decoding supergroup knobs. Using 0.0 instead.", 88, 2, &dword_2186C1000, v12, v13, MEMORY[0x277D84F90]);
      v11 = 0;
    }

    (*(v7 + 8))(v9, v6, v10);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_218F041E0()
{
  result = qword_27CC136A0;
  if (!qword_27CC136A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC136A0);
  }

  return result;
}

uint64_t ChannelSupergroupKnobs.encode(to:)(void *a1)
{
  sub_218F044F0(0, &qword_27CC136A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F041E0();
  sub_219BF7B44();
  sub_219BF7814();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_218F043A8(void *a1)
{
  sub_218F044F0(0, &qword_27CC136A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218F041E0();
  sub_219BF7B44();
  sub_219BF7814();
  return (*(v4 + 8))(v6, v3);
}

void sub_218F044F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218F041E0();
    v7 = a3(a1, &type metadata for ChannelSupergroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218F04578()
{
  result = qword_27CC136B0;
  if (!qword_27CC136B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC136B0);
  }

  return result;
}

unint64_t sub_218F045D0()
{
  result = qword_27CC136B8;
  if (!qword_27CC136B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC136B8);
  }

  return result;
}

unint64_t sub_218F04628()
{
  result = qword_27CC136C0;
  if (!qword_27CC136C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC136C0);
  }

  return result;
}

void *sub_218F0467C(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277D84560];
  sub_218F05538(0, &unk_280E8B6F0, sub_218A38BBC, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  strcpy((inited + 32), "puzzleTypeID");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_218F05538(0, &unk_280E8C0A0, MEMORY[0x277D6CCB8], v4);
  v6 = sub_219BE26C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09EC0;
  v11 = (v10 + v9);
  *v11 = 90;
  v11[1] = 0xE100000000000000;
  v12 = *(v7 + 104);
  result = v12(v11, *MEMORY[0x277D6CCA8], v6);
  if ((*MEMORY[0x277D30A00] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v11 + v8) = *MEMORY[0x277D30A00];
    v12((v11 + v8), *MEMORY[0x277D6CCB0], v6);
    *(inited + 48) = v10;
    sub_2194AE704(inited);
    swift_setDeallocating();
    sub_218F0559C(inited + 32);
    v14 = sub_219BE2684();

    v2[2] = v14;
    v2[3] = a1;
    v2[4] = a2;
    return v2;
  }

  return result;
}

uint64_t sub_218F048A8(uint64_t a1)
{
  sub_218F05538(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v49 = &v43 - v3;
  v4 = sub_219BE26D4();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE22B4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE22F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  sub_218F05538(0, &qword_280EE7430, MEMORY[0x277D6D3E0], MEMORY[0x277D6CC70]);
  v48 = a1;
  sub_219BE2594();
  sub_219BE22D4();
  v17 = *(v11 + 8);
  v17(v16, v10);
  v18 = sub_219BE22C4();
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  if (v20)
  {
    v44 = v18;
    v21 = [objc_opt_self() sharedAccount];
    v22 = [v21 isContentStoreFrontSupported];

    if (v22)
    {
      v43 = sub_218FA86C8(v48);
      v23 = v43;

      sub_219BE2594();
      v24 = v45;
      sub_219BE22E4();
      v17(v13, v10);
      v25 = sub_219BE2634();
      v27 = v26;
      (*(v46 + 8))(v24, v47);
      if (v27 && (v52[0] = v25, v52[1] = v27, v50 = 0x65766968637261, v51 = 0xE700000000000000, sub_2187F3BD4(), v28 = sub_219BF7084(), , (v28 & 1) != 0))
      {
        v29 = swift_allocObject();
        *(v29 + 16) = v44;
        *(v29 + 24) = v20;
        *(v29 + 32) = v23;
        v30 = v29 | 0xE000000000000004;
      }

      else
      {

        v36 = swift_allocObject();
        v37 = v43;
        *(v36 + 16) = v44;
        *(v36 + 24) = v20;
        v38 = MEMORY[0x277D84F90];
        *(v36 + 32) = v37;
        *(v36 + 40) = v38;
        *(v36 + 48) = 1;
        *(v36 + 56) = 10;
        *(v36 + 64) = 0u;
        *(v36 + 80) = 0u;
        *(v36 + 96) = -1;
        v30 = v36 | 0x2000000000000006;
        v39 = v23;
      }

      v52[0] = v30;
      v40 = v49;
      sub_219BE2564();
      v41 = sub_219BDFA44();
      (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
      v31 = sub_218F04F1C(v52, v40);

      sub_21874522C(v40, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218F05538);
      v35 = v30;
    }

    else
    {

      v32 = swift_allocObject();
      *(v32 + 40) = &type metadata for AlertContentRegionUnavailable;
      *(v32 + 48) = sub_2189F7F2C();
      *(v32 + 56) = 1;
      v52[0] = v32;
      v33 = v49;
      sub_219BE2564();
      v34 = sub_219BDFA44();
      (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
      v31 = sub_218F04F1C(v52, v33);
      sub_21874522C(v33, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218F05538);
      v35 = v52[0];
    }

    sub_218932F9C(v35);
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

uint64_t sub_218F04F1C(uint64_t *a1, uint64_t a2)
{
  sub_218F05538(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = v26 - v8;
  v10 = *a1;
  v11 = *(v2 + 24);
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = v11;
  sub_2187B1898(v32, &v27, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  if (*(&v28 + 1))
  {
    sub_21875F93C(&v27, v29);
    *&v27 = v10;
    v12 = sub_2194DA78C(v29);
    v14 = v13;
    v16 = v15;
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
    sub_21874522C(&v27, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v12 = qword_280ED32D8;
    v14 = qword_280ED32E0;
    v16 = qword_280ED32E8;

    sub_2188202A8(v14);
  }

  v26[1] = v10;
  v28 = 0u;
  v27 = 0u;
  sub_2187B1898(a2, v9, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218F05538);
  sub_2187B1898(v34, v29, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  v17 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v18 = (v7 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 47) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  sub_2189B4EAC(v9, v20 + v17);
  v21 = v20 + v18;
  v22 = v29[1];
  *v21 = v29[0];
  *(v21 + 16) = v22;
  *(v21 + 32) = v30;
  v23 = (v20 + v19);
  v24 = (v20 + ((v19 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v23 = 0;
  v23[1] = 0;
  *v24 = v12;
  v24[1] = v14;
  v24[2] = v16;

  sub_2188202A8(v14);
  sub_2186CF94C(0);
  sub_218F056EC(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v14, v16);
  sub_21874522C(v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_21874522C(v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_21874522C(&v27, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);
  return 1;
}

void sub_218F05538(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218F0559C(uint64_t a1)
{
  sub_218A38BBC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218F055F8(void *a1)
{
  sub_218F05538(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_218F056EC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_218F05748(uint64_t a1)
{
  if (!qword_280E92070)
  {
    type metadata accessor for BestOfBundleMagazineFeedGroupConfigData(255);
    sub_218F0A318(&unk_280E97770, type metadata accessor for BestOfBundleMagazineFeedGroupConfigData, &unk_219C69F00);
    sub_218F0A318(&qword_280E97780, type metadata accessor for BestOfBundleMagazineFeedGroupConfigData, &unk_219C69ED8);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E92070);
    }
  }
}

uint64_t type metadata accessor for BestOfBundleMagazineFeedGroupEmitter(uint64_t a1)
{
  result = qword_280E9BD20;
  if (!qword_280E9BD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218F05874(uint64_t a1)
{
  sub_218F05748(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for BestOfBundleMagazineFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510, MEMORY[0x277D33778]);
      if (v3 <= 0x3F)
      {
        sub_2186CFDE4(319, &qword_280E910C0, MEMORY[0x277D32B88]);
        if (v4 <= 0x3F)
        {
          sub_2186CFDE4(319, &unk_280E90370, MEMORY[0x277D339F8]);
          if (v5 <= 0x3F)
          {
            sub_2186D6710(319, &qword_280E8E270, &protocolRef_FCFeedPersonalizing);
            if (v6 <= 0x3F)
            {
              sub_2186CFDE4(319, &unk_280EE6160, MEMORY[0x277D34B68]);
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

uint64_t sub_218F059C8(uint64_t a1)
{
  v1 = sub_219BF1934();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BestOfBundleMagazineFeedGroupEmitter(0);
  v21 = 11;
  sub_2186E3B14(0);
  v19 = sub_219BEE964();
  sub_2186E48B4(0, &unk_280E8B8B0, sub_218C6086C, MEMORY[0x277D84560]);
  sub_218C6086C(0);
  v18 = v9;
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  sub_218F05748(0);
  sub_219BEDD14();
  (*(v2 + 16))(v4, &v8[*(v6 + 44)], v1);
  sub_218817458(v8, type metadata accessor for BestOfBundleMagazineFeedGroupConfigData);
  v13 = sub_219BF1784();
  v15 = v14;
  (*(v2 + 8))(v4, v1);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  sub_2186F8E48(0, &unk_280E91220, MEMORY[0x277D328E0]);
  swift_allocObject();
  *(v12 + v11) = sub_219BEFB94();
  (*(v10 + 104))(v12 + v11, *MEMORY[0x277D32308], v18);
  v20 = v19;
  sub_2191EE154(v12);
  return v20;
}

uint64_t sub_218F05D04(uint64_t a1)
{
  v28 = a1;
  v2 = type metadata accessor for BestOfBundleMagazineFeedGroupEmitter(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  v27 = type metadata accessor for BestOfBundleMagazineFeedGroupEmitter;
  sub_218F0A27C(v1, v5, type metadata accessor for BestOfBundleMagazineFeedGroupEmitter);
  v6 = *(v3 + 80);
  v7 = ((v6 + 16) & ~v6) + v4;
  v26 = (v6 + 16) & ~v6;
  v29 = v7;
  v8 = swift_allocObject();
  sub_218F08B48(v5, v8 + ((v6 + 16) & ~v6));
  v9 = sub_219BE2E54();
  sub_219BE2F64();

  v10 = v30;
  sub_218F0A27C(v30, v5, type metadata accessor for BestOfBundleMagazineFeedGroupEmitter);
  v11 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  v13 = v26;
  sub_218F08B48(v5, v12 + v26);
  v14 = v28;
  *(v12 + v11) = v28;

  v15 = sub_219BE2E54();
  sub_218F08CD8(0);
  sub_219BE2F64();

  v16 = v27;
  sub_218F0A27C(v10, v5, v27);
  v17 = swift_allocObject();
  sub_218F08B48(v5, v17 + v13);
  *(v17 + v11) = v14;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_218F08F24;
  *(v18 + 24) = v17;

  v19 = sub_219BE2E54();
  type metadata accessor for MagazineFeedGroup(0);
  sub_219BE2F74();

  v20 = sub_219BE2E54();
  sub_218C5FB88(0);
  sub_219BE2F74();

  sub_218F0A27C(v30, v5, v16);
  v21 = swift_allocObject();
  sub_218F08B48(v5, v21 + v13);
  v22 = sub_219BE2E54();
  v23 = sub_219BE3064();

  return v23;
}

uint64_t sub_218F060BC(_OWORD *a1)
{
  v3 = type metadata accessor for BestOfBundleMagazineFeedGroupEmitter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  v20 = a1;
  v21 = v1;
  sub_2189FE7E4(0);
  sub_219BE3204();
  sub_218F0A27C(v1, &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for BestOfBundleMagazineFeedGroupEmitter);
  v7 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = a1[3];
  v8[3] = a1[2];
  v8[4] = v9;
  v8[5] = a1[4];
  v10 = a1[1];
  v8[1] = *a1;
  v8[2] = v10;
  sub_218F08B48(&v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  sub_218F0A1CC(a1, v22);

  v11 = sub_219BE2E54();
  sub_2187E7248(0);
  sub_219BE2F64();

  v12 = sub_219BE2E54();
  sub_219BEE6E4();
  sub_218F0A318(&qword_280E8EBF0, sub_2187E7248, MEMORY[0x277D83970]);
  sub_219BE30D4();

  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = *a1;
  *(v13 + 40) = a1[1];
  v15 = a1[3];
  *(v13 + 56) = a1[2];
  *(v13 + 72) = v15;
  *(v13 + 88) = a1[4];
  *(v13 + 24) = v14;
  sub_218F0A1CC(a1, v22);

  v16 = sub_219BE2E54();
  v17 = sub_219BE2F74();

  return v17;
}

void (*sub_218F063C8(uint64_t *a1, uint64_t a2, uint64_t a3))(char *, uint64_t)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  result = sub_218F0909C(a3, *a1);
  if (!v3)
  {
    v8 = swift_allocObject();
    v8[2] = v5;
    v8[3] = v4;
    v8[4] = v6;

    v9 = sub_219BE2E54();
    sub_218F08CD8(0);
    v10 = sub_219BE2F74();

    return v10;
  }

  return result;
}

double sub_218F064A4@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = *a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;

  return result;
}

uint64_t sub_218F064FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v66 = a3;
  v67 = a4;
  v64 = a1;
  v68 = a5;
  sub_2186E48B4(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v51 - v7;
  v56 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v56);
  v57 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEF554();
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v63 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v61 = &v51 - v12;
  v62 = sub_219BED8D4();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720(0);
  MEMORY[0x28223BE20](v14 - 8);
  v53 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A90C(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A940(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7A974(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_219BF1904();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v51 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v51 - v36;
  sub_219BF2734();
  v38 = sub_219BDBD34();
  (*(*(v38 - 8) + 56))(v27, 1, 1, v38);
  v58 = a2;
  sub_219BF2734();
  v39 = sub_219BF18D4();
  v51 = *(v29 + 8);
  v52 = v28;
  v51(v31, v28);
  if (v39 >> 62)
  {
    result = sub_219BF7214();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_7:

      v41 = sub_219BF1AD4();
      (*(*(v41 - 8) + 56))(v24, 1, 1, v41);
      v42 = sub_219BEFC64();
      (*(*(v42 - 8) + 56))(v21, 1, 1, v42);
      v43 = sub_219BF4334();
      (*(*(v43 - 8) + 56))(v18, 1, 1, v43);
      v44 = sub_219BEC004();
      v45 = v53;
      (*(*(v44 - 8) + 56))(v53, 1, 1, v44);
      sub_219BF1854();
      swift_unknownObjectRelease();
      sub_218817458(v45, sub_2186FE720);
      sub_218817458(v18, sub_218D7A90C);
      sub_218817458(v21, sub_218D7A940);
      sub_218817458(v24, sub_218D7A974);
      sub_218817458(v27, sub_2186DCF58);
      v46 = v34;
      v48 = v51;
      v47 = v52;
      v51(v46, v52);
      v58 = sub_219BF2744();
      v48(v37, v47);
      sub_218F05748(0);
      v53 = sub_219BEDCB4();
      sub_219BEDCC4();
      v49 = v57;
      sub_219BEDD14();
      (*(v54 + 16))(v63, v49 + *(v56 + 28), v55);
      sub_218817458(v49, type metadata accessor for BestOfBundleMagazineFeedGroupConfigData);
      type metadata accessor for BestOfBundleMagazineFeedGroupEmitter(0);
      sub_2186E3B14(0);
      sub_219BEE9B4();
      sub_219BEE984();
      sub_219BEE9D4();
      type metadata accessor for BestOfBundleMagazineFeedGroupKnobs(0);
      sub_2186F8E48(0, &qword_280E91830, MEMORY[0x277D32318]);
      sub_219BEEC84();
      sub_219BEF864();

      sub_219BEF824();
      v50 = v59;
      sub_219BED834();
      (*(v60 + 32))(v68, v50, v62);
      type metadata accessor for MagazineFeedGroup(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  if ((v39 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, v39);
    goto LABEL_7;
  }

  if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    swift_unknownObjectRetain();
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_218F06E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_218F0A27C(a1, a2, type metadata accessor for MagazineFeedGroup);
  sub_218C5FB88(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218F06EBC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for BestOfBundleMagazineFeedGroupEmitter(0);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup(0);
  sub_218F0A318(&qword_280ED5E20, type metadata accessor for MagazineFeedGroup, &unk_219C2DD50);
  return sub_219BEF194();
}

uint64_t sub_218F06FB0(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(type metadata accessor for BestOfBundleMagazineFeedGroupEmitter(0) + 20);
  v3 = type metadata accessor for BestOfBundleMagazineFeedGroupKnobs(0);
  return sub_219B6D49C(*(v2 + v3[5]), *(v2 + v3[6]), *(v2 + v3[9]));
}

id sub_218F07018(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v107 = a4;
  v112 = a3;
  v120 = a2;
  v6 = MEMORY[0x277D83D88];
  sub_2186E48B4(0, &qword_280E90F70, MEMORY[0x277D32C58], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v104 = v96 - v8;
  sub_2186E48B4(0, &qword_280E91148, MEMORY[0x277D32A88], v6);
  MEMORY[0x28223BE20](v9 - 8);
  v102 = v96 - v10;
  v106 = sub_219BF02F4();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v12 = v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEE6F4();
  v111 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v15 = (v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v109 = v96 - v17;
  v119 = *a1;
  sub_2189FE7E4(0);
  sub_2186DEEA0(0, &qword_280E8F860, MEMORY[0x277D837D0]);
  sub_218F0A318(&qword_280E8ED60, sub_2189FE7E4, MEMORY[0x277D83970]);
  sub_218A42594();
  v18 = sub_219BF56E4();
  v110 = v4;
  v118[0] = MEMORY[0x277D84F90];
  if (v18 >> 62)
  {
LABEL_60:
    v95 = v18;
    v19 = sub_219BF7214();
    v18 = v95;
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v113 = v13;
  v103 = v15;
  if (!v19)
  {
    v49 = MEMORY[0x277D84F90];
LABEL_38:

    v50 = type metadata accessor for BestOfBundleMagazineFeedGroupEmitter(0);
    v51 = v112;
    __swift_project_boxed_opaque_existential_1((v112 + *(v50 + 40)), *(v112 + *(v50 + 40) + 24));
    if (sub_219BE4ED4())
    {
      v108 = v50;
      v52 = (v51 + *(v50 + 28));
      v53 = v52[3];
      v116 = v52[4];
      v100 = v52;
      v115 = v53;
      v114 = __swift_project_boxed_opaque_existential_1(v52, v53);
      v101 = v12;
      if (v49 < 0 || (v49 & 0x4000000000000000) != 0)
      {
        sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);

        v117 = sub_219BF7534();
      }

      else
      {

        sub_219BF7924();
        sub_2186D6710(0, &qword_280E8DF60, &protocolRef_FCFeedPersonalizingItem);
        v117 = v49;
      }

      v54 = v111;
      v55 = v109;

      v56 = *MEMORY[0x277D32988];
      v57 = sub_219BEFBD4();
      v58 = *(v57 - 8);
      v59 = *(v58 + 104);
      v60 = v58 + 104;
      LODWORD(v109) = v56;
      v59(v55, v56, v57);
      v61 = *MEMORY[0x277D320E8];
      v62 = v54;
      v63 = v54 + 104;
      v64 = *(v54 + 104);
      v64(v55, *MEMORY[0x277D320E8], v113);
      v65 = v110;
      v66 = sub_219BF0004();
      v116 = v65;
      if (v65)
      {
        (*(v54 + 8))(v55, v113);

        return v60;
      }

      v72 = v66;
      v96[1] = v63;
      v97 = v64;
      v98 = v61;
      v99 = v57;
      v73 = *(v62 + 8);
      v110 = v60;
      v111 = v62 + 8;
      v114 = v59;
      v115 = v73;
      v73(v55, v113);

      v74 = v107;
      swift_beginAccess();
      *(v74 + 16) = v72;

      swift_beginAccess();

      v76 = v112;
      sub_218F07E38(v75, v120);
      v78 = v77;

      if (*(v78 + 16))
      {
        v120 = __swift_project_boxed_opaque_existential_1(v100, v100[3]);
        v79 = v103;
        (v114)(v103, v109, v99);
        v97(v79, v98, v113);
        v80 = v76 + *(v108 + 20);
        v81 = type metadata accessor for BestOfBundleMagazineFeedGroupKnobs(0);
        v117 = v80;
        v82 = sub_219BEFD84();
        (*(*(v82 - 8) + 56))(v102, 1, 1, v82);
        v83 = sub_219BF0354();
        (*(*(v83 - 8) + 56))(v104, 1, 1, v83);
        v84 = v101;
        sub_219BF02D4();
        v85 = v116;
        v86 = sub_219BEFFD4();
        if (v85)
        {

          (*(v105 + 8))(v84, v106);
          v115(v79, v113);
          v60 = sub_219BEEDD4();
          sub_218F0A318(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
          swift_allocError();
          *v87 = v85;
          (*(*(v60 - 8) + 104))(v87, *MEMORY[0x277D32378], v60);
          swift_willThrow();
          return v60;
        }

        v91 = v86;

        (*(v105 + 8))(v84, v106);
        v115(v79, v113);
        v92 = *(v91 + 16);
        v93 = *(v117 + *(v81 + 28));
        if (v92 >= v93)
        {
          __swift_project_boxed_opaque_existential_1((v112 + *(v108 + 32)), *(v112 + *(v108 + 32) + 24));
          v60 = sub_219BF2804();

          return v60;
        }

        v60 = sub_219BEEDD4();
        sub_218F0A318(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
        swift_allocError();
        v70 = v94;
        *v94 = v93;
        v94[1] = v92;
        v71 = MEMORY[0x277D32400];
      }

      else
      {

        if (qword_280E8D920 != -1)
        {
          swift_once();
        }

        v88 = qword_280F617C8;
        v89 = sub_219BF61F4();
        sub_219BE5314("Best of Bundle is unavailable due to unscored items", 51, 2, &dword_2186C1000, v88, v89, MEMORY[0x277D84F90]);
        v60 = sub_219BEEDD4();
        sub_218F0A318(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
        swift_allocError();
        v70 = v90;
        v71 = MEMORY[0x277D323B0];
      }
    }

    else
    {

      if (qword_280E8D920 != -1)
      {
        swift_once();
      }

      v67 = qword_280F617C8;
      v68 = sub_219BF61F4();
      sub_219BE5314("Best of Bundle is unavailable", 29, 2, &dword_2186C1000, v67, v68, MEMORY[0x277D84F90]);
      v60 = sub_219BEEDD4();
      sub_218F0A318(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      v70 = v69;
      v71 = MEMORY[0x277D32408];
    }

    (*(*(v60 - 8) + 104))(v70, *v71, v60);
    swift_willThrow();
    return v60;
  }

  v20 = 0;
  v21 = v18 & 0xC000000000000001;
  v22 = v18 & 0xFFFFFFFFFFFFFF8;
  v108 = v18;
  v23 = (v18 + 32);
  v15 = &selRef_moveShortcutWithIdentifier_toIndex_;
  v116 = v18 & 0xC000000000000001;
  v117 = v19;
  v114 = (v18 + 32);
  v115 = (v18 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    while (1)
    {
      if (v21)
      {
        v18 = MEMORY[0x21CECE0F0](v20, v108);
      }

      else
      {
        if (v20 >= *(v22 + 16))
        {
          goto LABEL_59;
        }

        v18 = v23[v20];
      }

      v13 = v18;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if ([v18 v15[256]])
      {
        break;
      }

      if (v20 == v19)
      {
        goto LABEL_36;
      }
    }

    v25 = v12;
    result = [v13 articleID];
    if (!result)
    {
      break;
    }

    v27 = result;
    v28 = v120[1];
    v29 = sub_219BF5414();
    v31 = v30;

    if (*(v28 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v32 = sub_219BF7AE4();
      v33 = -1 << *(v28 + 32);
      v34 = v32 & ~v33;
      if ((*(v28 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        do
        {
          v36 = (*(v28 + 48) + 16 * v34);
          v37 = *v36 == v29 && v36[1] == v31;
          if (v37 || (sub_219BF78F4() & 1) != 0)
          {
            goto LABEL_32;
          }

          v34 = (v34 + 1) & v35;
        }

        while (((*(v28 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0);
      }
    }

    result = [v13 articleID];
    if (!result)
    {
      goto LABEL_63;
    }

    v38 = result;
    v39 = v120[3];
    v40 = sub_219BF5414();
    v42 = v41;

    if (*(v39 + 16))
    {
      sub_219BF7AA4();
      sub_219BF5524();
      v43 = sub_219BF7AE4();
      v44 = -1 << *(v39 + 32);
      v45 = v43 & ~v44;
      if ((*(v39 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        v46 = ~v44;
        while (1)
        {
          v47 = (*(v39 + 48) + 16 * v45);
          v48 = *v47 == v40 && v47[1] == v42;
          if (v48 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v45 = (v45 + 1) & v46;
          if (((*(v39 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            goto LABEL_31;
          }
        }

LABEL_32:

        goto LABEL_33;
      }
    }

LABEL_31:

    sub_219BF73D4();
    sub_219BF7414();
    sub_219BF7424();
    v18 = sub_219BF73E4();
LABEL_33:
    v12 = v25;
    v21 = v116;
    v19 = v117;
    v23 = v114;
    v22 = v115;
    v15 = &selRef_moveShortcutWithIdentifier_toIndex_;
    if (v20 == v117)
    {
LABEL_36:
      v49 = v118[0];
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}