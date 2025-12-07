uint64_t sub_2194BC8A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleArchiveTagFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2194BC908(unint64_t *a1)
{
  v3 = *(type metadata accessor for PuzzleArchiveTagFeedGroupEmitter(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  sub_2194BC1E0(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void *sub_2194BC9A0@<X0>(unint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_2194BDA90(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v24 - v5;
  v7 = sub_219BF3C84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2194BDA90(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v11 = *(sub_219BF3E84() - 8);
  v24[2] = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  if (a1 >> 62)
  {
    v13 = sub_219BF7214();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = MEMORY[0x277D84F90];
  v24[3] = v12;
  if (!v13)
  {
LABEL_13:
    sub_218F0B984(v14);
    sub_218F0BA7C(v14);
    sub_218F0BB90(v14);
    sub_219BF3E74();
    v23 = sub_219BEC004();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
    sub_219A95188(v14);
    sub_219A95188(v14);
    sub_219A951A0(v14);
    sub_219A951B8(v14);
    sub_219A952CC(v14);
    sub_219A952E4(v14);
    sub_219A953F8(v14);
    return sub_219BF2024();
  }

  v15 = a1;
  v27 = MEMORY[0x277D84F90];
  result = sub_218C34A88(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v24[0] = v6;
    v24[1] = a2;
    v17 = 0;
    v18 = v27;
    v19 = v15;
    v26 = v15 & 0xC000000000000001;
    v25 = *MEMORY[0x277D34118];
    v24[4] = v8 + 32;
    do
    {
      if (v26)
      {
        v20 = MEMORY[0x21CECE0F0](v17, v19);
      }

      else
      {
        v20 = swift_unknownObjectRetain();
      }

      *v10 = v20;
      (*(v8 + 104))(v10, v25, v7);
      v27 = v18;
      v22 = *(v18 + 16);
      v21 = *(v18 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_218C34A88((v21 > 1), v22 + 1, 1);
        v18 = v27;
      }

      ++v17;
      *(v18 + 16) = v22 + 1;
      (*(v8 + 32))(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22, v10, v7);
      v19 = v15;
    }

    while (v13 != v17);
    v6 = v24[0];
    v14 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_2194BCE24(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_2194BDA90(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  sub_2194BDA90(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  sub_2194BDA90(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v32 - v11;
  v13 = sub_219BF2AB4();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PuzzleArchiveTagFeedGroupConfigData(0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v2 + *(type metadata accessor for PuzzleArchiveTagFeedGroupEmitter(0) + 24));
  v21 = v20[3];
  v35 = v20[4];
  v36 = v21;
  v34 = __swift_project_boxed_opaque_existential_1(v20, v21);
  sub_2194BB554(0);
  sub_219BEDD14();
  v33 = *(v17 + 28);
  sub_2189AD5C8(0);
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  sub_219BEF0B4();
  v23 = *(v41 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v24 = sub_219BF35D4();
  (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
  v40 = 36;
  sub_2194BDB14(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  v25 = *(v41 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v26 = sub_219BF2774();
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  v27 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v27 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  sub_219BF2A84();
  v28 = v33;
  v29 = sub_219BF2194();
  (*(v37 + 8))(v15, v38);
  v30 = sub_219BF1934();
  (*(*(v30 - 8) + 8))(&v19[v28], v30);
  return v29;
}

uint64_t sub_2194BD350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218A59C84(0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TagFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194BD57C(a1, v9);
  sub_2194BDBB0(v9, v6, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_2194BDA90(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v10 = sub_219BE3014();
  sub_218A80EBC(v9, type metadata accessor for TagFeedGroup);
  return v10;
}

uint64_t sub_2194BD4E4(uint64_t a1)
{
  v3 = *(type metadata accessor for PuzzleArchiveTagFeedGroupEmitter(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_2194BD350(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2194BD57C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v24 = a3;
  sub_2194BDA90(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v23 = v21 - v5;
  v6 = sub_219BEF554();
  MEMORY[0x28223BE20](v6 - 8);
  v21[0] = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v9 = sub_219BF1904();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BED8D4();
  v13 = *(v22 - 8);
  v14 = MEMORY[0x28223BE20](v22);
  v16 = v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9, v14);
  sub_2194BB554(0);
  v17 = sub_219BEDCB4();
  v21[1] = v18;
  v21[2] = v17;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for PuzzleArchiveTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  v19 = sub_219BEE5D4();
  (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
  sub_219BED854();
  (*(v13 + 32))(v24, v16, v22);
  type metadata accessor for TagFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2194BD920(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PuzzleArchiveTagFeedGroupEmitter(0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup(0);
  sub_2194BB620(&qword_280EDE9C0, type metadata accessor for TagFeedGroup, &unk_219C8E808);
  return sub_219BEF194();
}

void sub_2194BDA90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2194BDB14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig(255);
    v7 = sub_2194BB620(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2194BDBB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t SportsLinksTagFeedLink.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_2194BDFF4();
  v29 = v3;
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  sub_2194BE36C(0, &qword_280E8CE28, MEMORY[0x277D844C8]);
  v13 = v12;
  v30 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194BE04C();
  v16 = v32;
  sub_219BF7B34();
  if (v16)
  {
    v19 = a1;
  }

  else
  {
    v27 = v11;
    v17 = v31;
    v32 = a1;
    v18 = v29;
    v35 = 0;
    sub_2194BE0A0();
    sub_219BF7734();
    v21 = v33;
    if (v33)
    {
      LODWORD(v27) = v33;
      if (v33 == 1)
      {
        LOBYTE(v33) = 1;
        sub_2194BE0F4();
        v5 = v8;
      }

      else
      {
        LOBYTE(v33) = 1;
        sub_2194BE0F4();
      }

      sub_219BF7734();
      v25 = v28;
      v26 = v30;
      sub_219BF13D4();
      (*(v31 + 8))(v5, v18);
      (*(v26 + 8))(v15, v13);
      v23 = v33;
      v24 = v34;
      v21 = v27;
    }

    else
    {
      LOBYTE(v33) = 1;
      sub_2194BE0F4();
      v22 = v27;
      sub_219BF7734();
      sub_219BF13D4();
      (*(v17 + 8))(v22, v18);
      (*(v30 + 8))(v15, v13);
      v23 = v33;
      v24 = v34;
      v25 = v28;
    }

    *v25 = v23;
    *(v25 + 8) = v24;
    *(v25 + 16) = v21;
    v19 = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

void sub_2194BDFF4()
{
  if (!qword_280E908C8)
  {
    v0 = sub_219BF13E4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E908C8);
    }
  }
}

unint64_t sub_2194BE04C()
{
  result = qword_280EC6A90;
  if (!qword_280EC6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6A90);
  }

  return result;
}

unint64_t sub_2194BE0A0()
{
  result = qword_280EC6A70;
  if (!qword_280EC6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6A70);
  }

  return result;
}

unint64_t sub_2194BE0F4()
{
  result = qword_280E908D0;
  if (!qword_280E908D0)
  {
    sub_2194BDFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E908D0);
  }

  return result;
}

uint64_t SportsLinksTagFeedLink.encode(to:)(void *a1)
{
  sub_2194BE36C(0, &qword_27CC1AF30, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v12 - v7;
  v9 = *(v1 + 8);
  v12[1] = *v1;
  v12[2] = v9;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194BE04C();
  sub_219BF7B44();
  if (v10)
  {
    if (v10 == 1)
    {
      v17 = 1;
      v16 = 0;
      sub_2194BE3D0();
      sub_219BF7834();
      if (!v2)
      {
        v15 = 1;
LABEL_9:
        sub_219BF77F4();
      }
    }

    else
    {
      v20 = 2;
      v19 = 0;
      sub_2194BE3D0();
      sub_219BF7834();
      if (!v2)
      {
        v18 = 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v14 = 0;
    sub_2194BE3D0();
    sub_219BF7834();
    if (!v2)
    {
      v13 = 1;
      goto LABEL_9;
    }
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_2194BE36C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2194BE04C();
    v7 = a3(a1, &type metadata for SportsLinksTagFeedLink.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2194BE3D0()
{
  result = qword_27CC1AF38;
  if (!qword_27CC1AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AF38);
  }

  return result;
}

void sub_2194BE424(char *a2@<X8>)
{
  v3 = sub_219BF7614();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_2194BE484(char *a3@<X8>)
{
  v4 = sub_219BF7614();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t sub_2194BE4E8(uint64_t a1)
{
  v2 = sub_2194BE04C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2194BE524(uint64_t a1)
{
  v2 = sub_2194BE04C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2194BE560(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x676E69646E617473;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x7374656B63617262;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7365726F6373;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x676E69646E617473;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x7374656B63617262;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7365726F6373;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_2194BE668()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_2194BE70C(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_2194BE79C(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_2194BE83C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2194BEC20(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2194BE86C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE900000000000073;
  v5 = 0x676E69646E617473;
  if (v2 != 1)
  {
    v5 = 0x7374656B63617262;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7365726F6373;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t static SportsLinksTagFeedLink.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else if (v2 == 2)
    {
      return 1;
    }
  }

  else if (!*(a2 + 16))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2194BE9F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (*(a1 + 16) == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else if (v2 == 2)
    {
      return 1;
    }
  }

  else if (!*(a2 + 16))
  {
    return 1;
  }

  return 0;
}

unint64_t sub_2194BEA70()
{
  result = qword_27CC1AF40;
  if (!qword_27CC1AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AF40);
  }

  return result;
}

unint64_t sub_2194BEAC8()
{
  result = qword_27CC1AF48;
  if (!qword_27CC1AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AF48);
  }

  return result;
}

unint64_t sub_2194BEB20()
{
  result = qword_280EC6A80;
  if (!qword_280EC6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6A80);
  }

  return result;
}

unint64_t sub_2194BEB78()
{
  result = qword_280EC6A88;
  if (!qword_280EC6A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6A88);
  }

  return result;
}

unint64_t sub_2194BEBCC()
{
  result = qword_280EC6A78;
  if (!qword_280EC6A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC6A78);
  }

  return result;
}

unint64_t sub_2194BEC20(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2194BEC6C(uint64_t a1)
{
  type metadata accessor for SportsFavoritesTagFeedGroupEmitter(0);
  sub_2189AD5C8(0);
  v17 = sub_219BEE964();
  v1 = MEMORY[0x277D84560];
  sub_2194C0178(0, &qword_280E8B8E0, sub_218A59E00, MEMORY[0x277D84560]);
  sub_218A59E00(0);
  v3 = v2;
  v16 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_219C09EC0;
  v8 = (v7 + v6);
  sub_2194C0590(0, &qword_280E91240, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v8 = sub_219BEFB94();
  v9 = *(v4 + 104);
  v9(v8, *MEMORY[0x277D32308], v3);
  sub_2194C0178(0, &qword_280E8B8A0, MEMORY[0x277D32F00], v1);
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
  v9((v8 + v5), *MEMORY[0x277D322C8], v16);
  sub_2191EDA0C(v7);
  return v17;
}

uint64_t sub_2194BEF84(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SportsFavoritesTagFeedGroupEmitter(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v15 = v2;
  v16 = a1;
  sub_219BED8D4();
  sub_219BE3204();
  sub_2194C062C(v2, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SportsFavoritesTagFeedGroupEmitter);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_2194C03E4(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7);
  v9 = sub_219BE2E54();
  sub_218A59C84(0);
  sub_219BE2F64();

  sub_2194C062C(v2, &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for SportsFavoritesTagFeedGroupEmitter);
  v10 = swift_allocObject();
  sub_2194C03E4(&v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v7);
  v11 = sub_219BE2E54();
  v12 = sub_219BE3064();

  return v12;
}

uint64_t sub_2194BF188(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v3 = MEMORY[0x277D83D88];
  sub_2194C0178(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v57 = &v51 - v5;
  sub_2194C0178(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v51 - v7;
  sub_2194C0178(0, &qword_280E91A70, sub_2189AD5C8, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v51 - v9;
  v11 = sub_219BF2AB4();
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x28223BE20](v11);
  v64 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F97D4(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_219BEF554();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v51 - v19;
  v21 = type metadata accessor for SportsFavoritesTagFeedGroupConfigData(0);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SportsFavoritesTagFeedGroupEmitter(0);
  v26 = (a1 + *(v25 + 24));
  v27 = v26[3];
  v54 = v26[4];
  v55 = v27;
  v56 = __swift_project_boxed_opaque_existential_1(v26, v27);
  sub_2194C0030(0);
  v58 = v24;
  sub_219BEDD14();
  v28 = *(v22 + 28);
  v59 = v20;
  sub_219BEDCC4();
  v60 = v17;
  sub_219BEDCC4();
  v29 = sub_219BEE5D4();
  v30 = *(*(v29 - 8) + 56);
  v62 = v15;
  v30(v15, 1, 1, v29);
  v31 = *(v25 + 20);
  sub_2189AD5C8(0);
  v33 = v32;
  v34 = *(v32 - 8);
  (*(v34 + 16))(v10, a1 + v31, v32);
  (*(v34 + 56))(v10, 0, 1, v33);
  sub_219BEF0B4();
  v35 = *(v68 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  v36 = sub_219BF35D4();
  (*(*(v36 - 8) + 56))(v52, 1, 1, v36);
  LOBYTE(v67) = 12;
  sub_2194C0590(0, &qword_280E90090, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  sub_219BEF0B4();
  sub_218CB8CBC();

  sub_219BEF0B4();
  v37 = v57;
  v38 = *(v67 + OBJC_IVAR____TtC7NewsUI220TagFeedServiceConfig_feedDescriptor);

  sub_219BF3914();
  swift_allocObject();
  sub_219BF3904();
  v39 = sub_219BF2774();
  (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
  v40 = qword_280E8D7F8;
  *MEMORY[0x277D30BC0];
  if (v40 != -1)
  {
    swift_once();
  }

  qword_280F61708;
  v41 = v64;
  sub_219BF2A84();
  v43 = v58;
  v42 = v59;
  v44 = v60;
  v45 = v62;
  v46 = sub_218F0AF50(&v58[v28], 1936154996, 0xE400000000000000, v59, v60, MEMORY[0x277D84F90], v62, v41, v55, v54);
  (*(v65 + 8))(v41, v66);
  sub_2194C0530(v45, sub_2186F97D4);
  v47 = *(v61 + 8);
  v48 = v63;
  v47(v44, v63);
  v47(v42, v48);
  v49 = sub_219BF1934();
  (*(*(v49 - 8) + 8))(&v43[v28], v49);
  return v46;
}

uint64_t sub_2194BF8FC(uint64_t a1)
{
  sub_218A59C84(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TagFeedGroup(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED8D4();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  sub_2194C062C(v7, v4, type metadata accessor for TagFeedGroup);
  swift_storeEnumTagMultiPayload();
  sub_2194C0178(0, &qword_280EE6C80, sub_218A59C84, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v9 = sub_219BE3014();
  sub_2194C0530(v7, type metadata accessor for TagFeedGroup);
  return v9;
}

uint64_t sub_2194BFAC4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SportsFavoritesTagFeedGroupEmitter(0);
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  type metadata accessor for TagFeedGroup(0);
  sub_2194C00FC(&qword_280EDE9C0, type metadata accessor for TagFeedGroup, &unk_219C8E808);
  return sub_219BEF194();
}

uint64_t sub_2194BFBB8()
{
  sub_2194C0178(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2194BFC38@<X0>(uint64_t *a1@<X8>)
{
  sub_2194C0030(0);
  v4 = v3;
  v5 = swift_allocBox();
  result = (*(*(v4 - 8) + 16))(v6, v1, v4);
  *a1 = v5 | 0x2000000000000006;
  return result;
}

uint64_t sub_2194BFCB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SportsFavoritesTagFeedGroupKnobs(0);
  a2[4] = sub_2194C00FC(&qword_280EA47D0, type metadata accessor for SportsFavoritesTagFeedGroupKnobs, &unk_219CCE49C);
  a2[5] = sub_2194C00FC(&qword_27CC1AF50, type metadata accessor for SportsFavoritesTagFeedGroupKnobs, &unk_219CCE474);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2194C062C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SportsFavoritesTagFeedGroupKnobs);
}

uint64_t sub_2194BFD80()
{
  sub_2194C0030(0);

  return sub_219BEDCA4();
}

uint64_t sub_2194BFDAC@<X0>(uint64_t *a2@<X8>)
{
  sub_2194C0178(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2194C0030(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2194C0530(inited + 32, sub_2188317B0);
  sub_2194C0144(0);
  a2[3] = v6;
  a2[4] = sub_2194C00FC(&qword_280EE7698, sub_2194C0144, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2194BFF30(uint64_t a1)
{
  sub_2194C00FC(&qword_280E9EBA8, type metadata accessor for SportsFavoritesTagFeedGroupEmitter, &unk_219C824C8);

  return sub_219BE2324();
}

uint64_t type metadata accessor for SportsFavoritesTagFeedGroupEmitter(uint64_t a1)
{
  result = qword_280E9EB90;
  if (!qword_280E9EB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2194C0030(uint64_t a1)
{
  if (!qword_280E920E8)
  {
    type metadata accessor for SportsFavoritesTagFeedGroupConfigData(255);
    sub_2194C00FC(&qword_280E98B30, type metadata accessor for SportsFavoritesTagFeedGroupConfigData, &unk_219C7E390);
    sub_2194C00FC(&qword_280E98B38, type metadata accessor for SportsFavoritesTagFeedGroupConfigData, &unk_219C7E368);
    v1 = sub_219BEDD94();
    if (!v2)
    {
      atomic_store(v1, &qword_280E920E8);
    }
  }
}

uint64_t sub_2194C00FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2194C0178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2194C0204(uint64_t a1)
{
  sub_2194C0030(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SportsFavoritesTagFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_218C5D8B8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2194C03E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsFavoritesTagFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2194C0530(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2194C0590(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TagFeedServiceConfig(255);
    v7 = sub_2194C00FC(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2194C062C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2194C06A4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v47 = a3;
  v48 = a2;
  sub_2189519D8(0);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v38 - v7;
  v8 = sub_219BE6DF4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194C2C04(0, &qword_27CC0EF98, MEMORY[0x277D6DF88]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v44 = &v38 - v15;
  sub_218BFB050(0);
  MEMORY[0x28223BE20](v16 - 8);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951BD0(0);
  v19 = v18;
  v43 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v42 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2194C2CC4(&qword_27CC11960, sub_218951BD0, MEMORY[0x277D6EC70]);
  v22 = sub_219BF5E44();
  v23 = MEMORY[0x277D84F90];
  v55 = v19;
  v45 = v14;
  v46 = v13;
  if (v22)
  {
    v59 = MEMORY[0x277D84F90];
    v52 = v22;
    sub_218C34FE0(0, v22 & ~(v22 >> 63), 0);
    v23 = v59;
    v24 = a1;
    sub_219BF5DF4();
    if ((v52 & 0x8000000000000000) == 0)
    {
      v56 = v21;
      v38 = v11;
      v39 = v9;
      v40 = v8;
      v25 = 0;
      v26 = (v53 + 16);
      v11 = (v53 + 8);
      v49 = v53 + 32;
      while (1)
      {
        v27 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v28 = a1;
        v29 = sub_219BF5EC4();
        v30 = v50;
        v31 = v54;
        (*v26)(v50);
        v29(v58, 0);
        sub_2194C0D6C(v30, v51, v57);
        (*v11)(v30, v31);
        v59 = v23;
        v33 = *(v23 + 16);
        v32 = *(v23 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_218C34FE0((v32 > 1), v33 + 1, 1);
          v31 = v54;
          v23 = v59;
        }

        *(v23 + 16) = v33 + 1;
        (*(v53 + 32))(v23 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v33, v57, v31);
        a1 = v28;
        v24 = v28;
        sub_219BF5E94();
        ++v25;
        if (v27 == v52)
        {
          v8 = v40;
          v9 = v39;
          v11 = v38;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
    (*v11)(a1, v24);

    __break(1u);
  }

  else
  {
LABEL_9:
    v34 = sub_2194C2CC4(&qword_27CC0EFA8, sub_2189519D8, MEMORY[0x277D6D720]);
    v35 = sub_2194C2CC4(&qword_27CC0EFB0, sub_2189519D8, MEMORY[0x277D6D718]);
    MEMORY[0x21CEB9170](v23, v54, v34, v35);
    type metadata accessor for ChannelPickerElementModel(0);
    sub_218951A90();
    sub_2194C2CC4(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
    v36 = v42;
    sub_219BEB2D4();
    (*(v9 + 104))(v11, *MEMORY[0x277D6D868], v8);
    v37 = v44;
    sub_219BE85D4();
    (*(v9 + 8))(v11, v8);
    v48(v37);
    (*(v45 + 8))(v37, v46);
    (*(v43 + 8))(v36, v55);
  }
}

uint64_t sub_2194C0D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a3;
  v91 = a2;
  v101 = type metadata accessor for ChannelPickerElementModel(0);
  MEMORY[0x28223BE20](v101);
  v92 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v90 = v87 - v6;
  MEMORY[0x28223BE20](v7);
  v95 = v87 - v8;
  sub_218951C88(0);
  v10 = v9;
  v97 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v89 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v102 = v87 - v13;
  MEMORY[0x28223BE20](v14);
  v94 = v87 - v15;
  MEMORY[0x28223BE20](v16);
  v96 = (v87 - v17);
  MEMORY[0x28223BE20](v18);
  v117 = v87 - v19;
  MEMORY[0x28223BE20](v20);
  v99 = v87 - v21;
  sub_2189519D8(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BFAE30(0);
  v28 = v27;
  MEMORY[0x28223BE20](v27);
  v93 = (v87 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v32 = v87 - v31;
  sub_218BFAEC4(0);
  MEMORY[0x28223BE20](v33 - 8);
  v87[2] = v87 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v87[1] = v87 - v36;
  MEMORY[0x28223BE20](v37);
  v87[3] = v87 - v38;
  sub_219BE6934();
  memcpy(v115, v114, 0x151uLL);
  memcpy(v116, v114, 0x151uLL);
  v39 = sub_21898EAD4(v116);
  v40 = sub_21892DE88(v116);
  v100 = v10;
  v98 = v23;
  if (v39 == 1)
  {
    v41 = v28;
    if (v40[33] <= 1u)
    {
      if (v40[33])
      {
        memcpy(v113, v40, 0x151uLL);
        sub_2194C1C98(a1, v113, v88);
        return sub_218F9E778(v115);
      }
    }

    else if (v40[33] == 3)
    {
      v42 = v24;
      v43 = v98;
      sub_219BE6934();
      memcpy(v112, v113, sizeof(v112));
      (*(v42 + 16))(v26, a1, v43);
      sub_2194C2CC4(&qword_27CC142F0, sub_2189519D8, MEMORY[0x277D6D728]);
      v44 = v93;
      sub_219BF56A4();
      v45 = *(v41 + 36);
      v46 = sub_2194C2CC4(&qword_27CC0AF20, sub_2189519D8, MEMORY[0x277D6D730]);
      sub_219BF5E84();
      if (*(v44 + v45) == v106)
      {
        v47 = MEMORY[0x277D84F90];
      }

      else
      {
        v95 = (v97 + 8);
        v96 = (v97 + 16);
        v47 = MEMORY[0x277D84F90];
        v99 = (v97 + 32);
        do
        {
          v117 = v47;
          v71 = v46;
          v72 = v45;
          v73 = sub_219BF5EC4();
          v74 = v94;
          (*v96)(v94);
          v73(&v106, 0);
          v45 = v72;
          v46 = v71;
          sub_219BF5E94();
          v75 = v92;
          sub_219BE5FC4();
          if (swift_getEnumCaseMultiPayload())
          {
            sub_2194C2D0C(v75, type metadata accessor for ChannelPickerElementModel);
            v76 = *v99;
            v77 = v89;
            (*v99)(v89, v74, v10);
          }

          else
          {
            v78 = v75[5];
            v110 = v75[4];
            v111[0] = v78;
            *(v111 + 9) = *(v75 + 89);
            v79 = v75[1];
            v106 = *v75;
            v107 = v79;
            v80 = v75[3];
            v108 = v75[2];
            v109 = v80;
            v81 = sub_219BE5F84();
            v83 = sub_218E969B8(v81, v82, 0);

            if (v83)
            {
              v104 = type metadata accessor for TagModel();
              v105 = sub_2194C2CC4(&qword_27CC16900, type metadata accessor for TagModel, &unk_219C7E080);
              *&v103 = v83;
              __swift_destroy_boxed_opaque_existential_1(&v106);
              sub_2186CB1F0(&v103, &v106);
            }

            sub_218BFB1DC(&v106, &v103);
            sub_218BFB1DC(&v103, v90);
            swift_storeEnumTagMultiPayload();
            sub_2194C2CC4(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
            v77 = v89;
            sub_219BE5FB4();
            sub_218980BE4(&v103);
            v10 = v100;
            (*v95)(v94, v100);
            sub_218980BE4(&v106);
            v76 = *v99;
          }

          v44 = v93;
          v47 = v117;
          v76(v102, v77, v10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v47 = sub_2191F7EF8(0, *(v47 + 2) + 1, 1, v47);
          }

          v85 = *(v47 + 2);
          v84 = *(v47 + 3);
          if (v85 >= v84 >> 1)
          {
            v47 = sub_2191F7EF8((v84 > 1), v85 + 1, 1, v47);
          }

          *(v47 + 2) = v85 + 1;
          v86 = &v47[((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v85];
          v10 = v100;
          v76(v86, v102, v100);
          sub_219BF5E84();
        }

        while (*(v44 + v45) != v106);
      }

      sub_2194C2D0C(v44, sub_218BFAE30);
      v48 = sub_2194C2CC4(&qword_27CC0EF88, sub_218951C88, MEMORY[0x277D6D408]);
      v49 = sub_2194C2CC4(&qword_27CC0EF90, sub_218951C88, MEMORY[0x277D6D3F8]);
      MEMORY[0x21CEB9170](v47, v10, v48, v49);
      sub_218951A90();
      sub_2194C2CC4(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
      sub_219BE6924();
      return sub_218F9E778(v115);
    }

    sub_218F9E778(v115);
    sub_219BE6934();
    memcpy(v112, v113, sizeof(v112));
    sub_219BE6974();
    sub_218951A90();
    sub_2194C2CC4(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
    return sub_219BE6924();
  }

  sub_218F9E778(v115);
  sub_219BE6934();
  memcpy(v112, v113, sizeof(v112));
  (*(v24 + 16))(v26, a1, v23);
  sub_2194C2CC4(&qword_27CC142F0, sub_2189519D8, MEMORY[0x277D6D728]);
  sub_219BF56A4();
  v51 = *(v28 + 36);
  sub_2194C2CC4(&qword_27CC0AF20, sub_2189519D8, MEMORY[0x277D6D730]);
  sub_219BF5E84();
  if (*&v51[v32] == v106)
  {
    v52 = MEMORY[0x277D84F90];
  }

  else
  {
    v93 = (v97 + 16);
    v89 = (v97 + 8);
    v52 = MEMORY[0x277D84F90];
    v92 = (v97 + 32);
    v55 = (v97 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v94 = v51;
    do
    {
      v102 = v55;
      v56 = sub_219BF5EC4();
      v57 = v99;
      (*v93)(v99);
      v56(&v106, 0);
      sub_219BF5E94();
      v58 = v95;
      sub_219BE5FC4();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_2194C2D0C(v58, type metadata accessor for ChannelPickerElementModel);
        v59 = *v92;
        v60 = v96;
        (*v92)(v96, v57, v10);
      }

      else
      {
        v61 = v58[5];
        v110 = v58[4];
        v111[0] = v61;
        *(v111 + 9) = *(v58 + 89);
        v62 = v58[1];
        v106 = *v58;
        v107 = v62;
        v63 = v58[3];
        v108 = v58[2];
        v109 = v63;
        v64 = sub_219BE5F84();
        v66 = sub_218E969B8(v64, v65, 0);

        if (v66)
        {
          v104 = type metadata accessor for TagModel();
          v105 = sub_2194C2CC4(&qword_27CC16900, type metadata accessor for TagModel, &unk_219C7E080);
          *&v103 = v66;
          __swift_destroy_boxed_opaque_existential_1(&v106);
          sub_2186CB1F0(&v103, &v106);
        }

        sub_218BFB1DC(&v106, &v103);
        sub_218BFB1DC(&v103, v90);
        swift_storeEnumTagMultiPayload();
        sub_2194C2CC4(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
        v60 = v96;
        sub_219BE5FB4();
        sub_218980BE4(&v103);
        v10 = v100;
        (*v89)(v99, v100);
        sub_218980BE4(&v106);
        v59 = *v92;
      }

      v67 = v94;
      v55 = v102;
      v59(v117, v60, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_2191F7EF8(0, v52[2] + 1, 1, v52);
      }

      v69 = v52[2];
      v68 = v52[3];
      if (v69 >= v68 >> 1)
      {
        v52 = sub_2191F7EF8((v68 > 1), v69 + 1, 1, v52);
      }

      v52[2] = v69 + 1;
      v70 = v52 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + *(v97 + 72) * v69;
      v10 = v100;
      v59(v70, v117, v100);
      sub_219BF5E84();
    }

    while (*&v67[v32] != v106);
  }

  sub_2194C2D0C(v32, sub_218BFAE30);
  v53 = sub_2194C2CC4(&qword_27CC0EF88, sub_218951C88, MEMORY[0x277D6D408]);
  v54 = sub_2194C2CC4(&qword_27CC0EF90, sub_218951C88, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v52, v10, v53, v54);
  sub_218951A90();
  sub_2194C2CC4(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
  return sub_219BE6924();
}

uint64_t sub_2194C1C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v85 = a1;
  v82 = a3;
  sub_218BFAEC4(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v78 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for ChannelPickerElementModel(0);
  v78 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v88 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v79 = &v78 - v9;
  MEMORY[0x28223BE20](v10);
  v86 = &v78 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = (&v78 - v13);
  sub_218951C88(0);
  v16 = v15;
  v93 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v83 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v91 = &v78 - v19;
  MEMORY[0x28223BE20](v20);
  v96 = &v78 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v78 - v23;
  sub_2189519D8(0);
  v26 = v25;
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v29 = &v78 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218BFAE30(0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v78 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a2 + 72);
  if (*(a2 + 80))
  {
    v35 = 0;
  }

  if (!*(a2 + 96))
  {
    v35 = *(a2 + 88);
  }

  if (*(a2 + 112))
  {
    v36 = 0;
  }

  else
  {
    v36 = *(a2 + 104);
  }

  if ((v35 * v36) >> 64 != (v35 * v36) >> 63)
  {
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v80 = v35 * v36;
  v81 = v6;
  v37 = *(v27 + 16);
  v95 = v31;
  v37(v29, v85, v26, v32);
  sub_2194C2CC4(&qword_27CC142F0, sub_2189519D8, MEMORY[0x277D6D728]);
  sub_219BF56A4();
  v38 = *(v95 + 36);
  sub_2194C2CC4(&qword_27CC0AF20, sub_2189519D8, MEMORY[0x277D6D730]);
  sub_219BF5E84();
  v39 = *(v34 + v38);
  v94 = v16;
  v92 = v26;
  if (v39 == *&v99[0])
  {
    v40 = MEMORY[0x277D84F90];
  }

  else
  {
    v90 = (v93 + 16);
    v84 = (v93 + 8);
    v40 = MEMORY[0x277D84F90];
    v89 = (v93 + 32);
    v95 = (v93 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    do
    {
      v56 = sub_219BF5EC4();
      (*v90)(v24);
      v56(v99, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      if (swift_getEnumCaseMultiPayload())
      {
        sub_2194C2D0C(v14, type metadata accessor for ChannelPickerElementModel);
        v57 = *v89;
        v58 = v91;
        (*v89)(v91, v24, v16);
      }

      else
      {
        v59 = v14[5];
        v99[4] = v14[4];
        v99[5] = v59;
        *(&v99[5] + 9) = *(v14 + 89);
        v60 = v14[1];
        v99[0] = *v14;
        v99[1] = v60;
        v61 = v14[3];
        v99[2] = v14[2];
        v99[3] = v61;
        v62 = sub_219BE5F84();
        v64 = sub_218E969B8(v62, v63, 0);

        if (v64)
        {
          *&v98[24] = type metadata accessor for TagModel();
          *&v98[32] = sub_2194C2CC4(&qword_27CC16900, type metadata accessor for TagModel, &unk_219C7E080);
          *v98 = v64;
          __swift_destroy_boxed_opaque_existential_1(v99);
          sub_2186CB1F0(v98, v99);
        }

        sub_218BFB1DC(v99, v98);
        sub_218BFB1DC(v98, v86);
        swift_storeEnumTagMultiPayload();
        sub_2194C2CC4(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
        v58 = v91;
        sub_219BE5FB4();
        sub_218980BE4(v98);
        v16 = v94;
        (*v84)(v24, v94);
        sub_218980BE4(v99);
        v57 = *v89;
      }

      v57(v96, v58, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_2191F7EF8(0, v40[2] + 1, 1, v40);
      }

      v66 = v40[2];
      v65 = v40[3];
      if (v66 >= v65 >> 1)
      {
        v40 = sub_2191F7EF8((v65 > 1), v66 + 1, 1, v40);
      }

      v40[2] = v66 + 1;
      v67 = v40 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v66;
      v16 = v94;
      v57(v67, v96, v94);
      sub_219BF5E84();
    }

    while (*(v34 + v38) != *&v99[0]);
  }

  sub_2194C2D0C(v34, sub_218BFAE30);
  v41 = *(v87 + 32);
  if (v41)
  {
    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = v79;
      v44 = v41 + ((*(v78 + 80) + 32) & ~*(v78 + 80));
      v45 = *(v78 + 72);
      v96 = (v93 + 32);
      do
      {
        sub_218980A74(v44, v43);
        v46 = v43;
        v47 = v43;
        v48 = v88;
        sub_218980A74(v46, v88);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          sub_2194C2D0C(v48, type metadata accessor for ChannelPickerElementModel);
          v43 = v47;
        }

        else
        {
          v50 = v48[5];
          v99[4] = v48[4];
          v99[5] = v50;
          *(&v99[5] + 9) = *(v48 + 89);
          v51 = v48[1];
          v99[0] = *v48;
          v99[1] = v51;
          v52 = v48[3];
          v99[2] = v48[2];
          v99[3] = v52;
          MEMORY[0x28223BE20](EnumCaseMultiPayload);
          *(&v78 - 2) = v47;
          v43 = v47;
          if (sub_218FAE560(sub_2194C2D6C, (&v78 - 4)))
          {
            sub_218980BE4(v99);
            v16 = v94;
          }

          else
          {
            sub_2194C2950(v99, v98);
            sub_218BFB1DC(v98, v86);
            swift_storeEnumTagMultiPayload();
            sub_2194C2CC4(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
            sub_219BE5FB4();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v40 = sub_2191F7EF8(0, v40[2] + 1, 1, v40);
            }

            v54 = v40[2];
            v53 = v40[3];
            if (v54 >= v53 >> 1)
            {
              v40 = sub_2191F7EF8((v53 > 1), v54 + 1, 1, v40);
            }

            sub_218980BE4(v98);
            sub_218980BE4(v99);
            v40[2] = v54 + 1;
            v55 = v40 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v54;
            v16 = v94;
            (*(v93 + 32))(v55, v83, v94);
          }
        }

        sub_2194C2D0C(v43, type metadata accessor for ChannelPickerElementModel);
        v44 += v45;
        --v42;
      }

      while (v42);
    }
  }

  sub_219BE6934();
  memcpy(v98, v99, sizeof(v98));
  a2 = sub_219A781A0(v80, v40);
  if ((v70 & 1) == 0)
  {
    goto LABEL_37;
  }

  v34 = v70;
  v29 = v69;
  v24 = v68;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v73 = swift_dynamicCastClass();
  if (!v73)
  {
    swift_unknownObjectRelease();
    v73 = MEMORY[0x277D84F90];
  }

  v74 = *(v73 + 16);

  if (__OFSUB__(v34 >> 1, v29))
  {
    goto LABEL_47;
  }

  if (v74 != (v34 >> 1) - v29)
  {
LABEL_48:
    swift_unknownObjectRelease();
    v70 = v34;
    v69 = v29;
    v68 = v24;
LABEL_37:
    sub_218B67424(a2, v68, v69, v70);
    v72 = v71;
LABEL_44:
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  v72 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v72)
  {
    v72 = MEMORY[0x277D84F90];
    goto LABEL_44;
  }

LABEL_45:
  v75 = sub_2194C2CC4(&qword_27CC0EF88, sub_218951C88, MEMORY[0x277D6D408]);
  v76 = sub_2194C2CC4(&qword_27CC0EF90, sub_218951C88, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v72, v16, v75, v76);
  sub_218951A90();
  sub_2194C2CC4(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
  return sub_219BE6924();
}

uint64_t sub_2194C2840()
{
  v0 = type metadata accessor for ChannelPickerElementModel(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951C88(0);
  sub_219BE5FC4();
  v4 = ChannelPickerElementModel.identifier.getter(v3);
  v6 = v5;
  sub_2194C2D0C(v2, type metadata accessor for ChannelPickerElementModel);
  if (v4 == ChannelPickerElementModel.identifier.getter(v7) && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_219BF78F4();
  }

  return v10 & 1;
}

uint64_t sub_2194C2950@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  v10 = sub_219BE1D74();
  v12 = v11;
  (*(v6 + 8))(v9, v4);
  v13 = sub_218E969B8(v10, v12, 0);

  if (v13)
  {
    v17 = type metadata accessor for TagModel();
    v18 = sub_2194C2CC4(&qword_27CC16900, type metadata accessor for TagModel, &unk_219C7E080);
    *&v16 = v13;
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2186CB1F0(&v16, a1);
  }

  return sub_218BFB1DC(a1, a2);
}

uint64_t sub_2194C2B28(uint64_t a1)
{
  v2 = sub_2194C2D8C();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2194C2B68()
{
  result = qword_27CC1AF58;
  if (!qword_27CC1AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AF58);
  }

  return result;
}

void sub_2194C2C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for ChannelPickerSectionDescriptor;
    v8[1] = type metadata accessor for ChannelPickerElementModel(255);
    v8[2] = sub_218951A90();
    v8[3] = sub_2194C2CC4(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2194C2CC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2194C2D0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2194C2D8C()
{
  result = qword_27CC1AF60;
  if (!qword_27CC1AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AF60);
  }

  return result;
}

uint64_t sub_2194C2DF0(void *a1)
{
  if (a1[2])
  {
    MEMORY[0x28223BE20](a1);
    sub_2194C2FE4(0);

    sub_219BE3204();
    v1 = sub_219BE2E54();
    type metadata accessor for TagFeedServiceConfig(0);
    v2 = sub_219BE2F74();

    return v2;
  }

  else
  {
    sub_2194C3074();
    swift_allocError();
    *v4 = 0;
    sub_218FF0B7C(0);
    swift_allocObject();
    return sub_219BE2FF4();
  }
}

uint64_t sub_2194C2F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TagFeedServiceConfig(0);
  sub_2186F7CA4();
  sub_219BEF3D4();
  v3 = sub_219BEE814();

  return v3;
}

void sub_2194C2FE4(uint64_t a1)
{
  if (!qword_280E90D00)
  {
    type metadata accessor for TagFeedServiceConfig(255);
    sub_2186F7CA4();
    v1 = sub_219BF09B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E90D00);
    }
  }
}

unint64_t sub_2194C3074()
{
  result = qword_27CC1AF68;
  if (!qword_27CC1AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AF68);
  }

  return result;
}

unint64_t sub_2194C30DC()
{
  result = qword_27CC1AF70;
  if (!qword_27CC1AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1AF70);
  }

  return result;
}

id static FCIssue.stub(identifier:type:title:publicationDate:isPaid:sourceChannel:notificationDescription:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, int a7, void *a8, void *a9, void *a10)
{
  v64 = a8;
  LODWORD(v66) = a7;
  v70 = a5;
  v67 = a3;
  v57 = a10;
  v58 = a9;
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = [objc_allocWithZone(MEMORY[0x277D30E08]) init];
  v63 = [objc_allocWithZone(MEMORY[0x277D30E08]) init];
  v14 = objc_opt_self();
  v62 = [v14 blackColor];
  v61 = [v14 whiteColor];
  v60 = [v14 blackColor];
  v59 = [objc_allocWithZone(MEMORY[0x277D30EE8]) initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
  v71 = [v14 blackColor];
  sub_21871D24C();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_219C09BA0;
  *(v15 + 32) = sub_219BF5414();
  *(v15 + 40) = v16;
  sub_219BE2EE4();
  v17 = sub_219BDBD34();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v52 = v13;
  v19(v13, a6, v17);
  (*(v18 + 56))(v13, 0, 1, v17);
  v56 = sub_219BF53D4();
  v55 = sub_219BF53D4();
  v54 = sub_219BDBC04();
  v53 = sub_219BF53D4();
  v70 = sub_219BDBC04();
  v20 = sub_219BF53D4();
  v21 = sub_219BF5904();
  v69 = sub_219BF53D4();
  v68 = sub_219BF5904();

  v22 = sub_219BF5904();
  v23 = sub_219BF5904();
  v24 = sub_219BF53D4();
  v25 = sub_219BF53D4();
  v26 = v52;

  v27 = 0;
  if ((*(v18 + 48))(v26, 1, v17) != 1)
  {
    v27 = sub_219BDBC04();
    (*(v18 + 8))(v26, v17);
  }

  v52 = v27;
  v28 = objc_allocWithZone(MEMORY[0x277D310B0]);
  v48 = v27;
  v58 = v25;
  v47 = v25;
  v57 = v24;
  v46 = v24;
  v44 = v23;
  v45 = v64;
  v43 = v22;
  v42 = v21;
  BYTE2(v41) = v66 & 1;
  LOWORD(v41) = 0;
  v40 = v20;
  v66 = v23;
  v29 = v59;
  v64 = v22;
  v30 = v60;
  v51 = v20;
  v31 = v61;
  v32 = v62;
  v33 = v63;
  v34 = v65;
  v35 = v55;
  v36 = v56;
  v37 = v54;
  v50 = v21;
  v38 = v53;
  v67 = [v28 initWithIdentifier:v56 type:v67 title:v55 publicationDate:v54 coverDate:v53 lastModifiedDate:v70 metadataJSONAssetHandle:1.0 coverImageAssetHandle:1.0 coverImageAspectRatio:v65 coverImagePrimaryColor:v63 coverImageBackgroundColor:v62 coverImageTextColor:v61 coverImageAccentColor:v60 layeredCoverJSON:v59 layeredCoverAspectRatio:v40 layeredCoverPrimaryColor:v71 isCurrent:v41 isDraft:0 isPaid:v42 minimumNewsVersion:v69 allArticleIDs:v68 coverArticleID:v43 allowedStorefrontIDs:v44 blockedStorefrontIDs:v45 topicTagIDs:v46 sourceChannel:v47 notificationDescription:v48 issueDescription:? sortDate:?];

  return v67;
}

void sub_2194C3624(void *a1@<X0>, void *a2@<X1>, char *a4@<X8>)
{
  if (!*a1)
  {
    swift_getObjectType();
    sub_219BEAD74();
    sub_219BE70A4();
    if (v4)
    {

      v6 = 1;
LABEL_8:
      *a4 = v6;
      return;
    }

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  if (*a1 == 1)
  {
    v7 = a2[10];
    v8 = a2[11];
    __swift_project_boxed_opaque_existential_1(a2 + 7, v7);
    (*(v8 + 40))(1, v7, v8);
    goto LABEL_7;
  }

  sub_219BF7514();
  __break(1u);
}

id sub_2194C3758(void *a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if ([a1 isPuzzleHub])
  {
    v4 = a2[10];
    v5 = a2[11];
    __swift_project_boxed_opaque_existential_1(a2 + 7, v4);
    (*(v5 + 16))(1, 1, v4, v5);
    sub_219BDD154();
    return 0;
  }

  v6 = a2[6];
  if ([v6 hasSubscriptionToTag_])
  {
    v12[0] = 0;
    if ([v6 setNotificationsEnabled:1 forTag:a1 error:v12])
    {
      v7 = v12[0];
      return 0;
    }

    v11 = v12[0];
    v9 = sub_219BDB724();

    swift_willThrow();
  }

  else
  {
    v12[0] = 0;
    [v6 addSubscriptionToTag:a1 notificationsEnabled:1 error:v12];
    v9 = v12[0];
    v10 = v12[0];
  }

  return v9;
}

uint64_t sub_2194C38D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if ([a1 isMySports])
  {
    v4 = MEMORY[0x277D34078];
LABEL_5:
    v5 = *v4;
    v6 = sub_219BF3BC4();
    (*(*(v6 - 8) + 104))(a2, v5, v6);
    v7 = MEMORY[0x277D34090];
    goto LABEL_7;
  }

  if ([a1 isPuzzleHub])
  {
    v4 = MEMORY[0x277D34080];
    goto LABEL_5;
  }

  v8 = [a1 identifier];
  v9 = sub_219BF5414();
  v11 = v10;

  *a2 = v9;
  a2[1] = v11;
  v7 = MEMORY[0x277D34088];
LABEL_7:
  v12 = *v7;
  v13 = sub_219BF3BD4();
  v14 = *(*(v13 - 8) + 104);

  return v14(a2, v12, v13);
}

uint64_t sub_2194C3A0C()
{

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  __swift_destroy_boxed_opaque_existential_1((v0 + 184));
  return v0;
}

uint64_t sub_2194C3A6C()
{
  sub_2194C3A0C();

  return swift_deallocClassInstance();
}

unint64_t sub_2194C3AA4()
{
  result = qword_27CC1AF80[0];
  if (!qword_27CC1AF80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CC1AF80);
  }

  return result;
}

uint64_t sub_2194C3B24@<X0>(void **a1@<X3>, _BYTE *a2@<X8>)
{
  result = sub_2194C4A6C(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_2194C3B84()
{
  v0 = sub_219BE1094();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BE0E44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE0E34();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D2ED58], v4, v10);
  (*(v1 + 104))(v3, *MEMORY[0x277D2EED0], v0);
  sub_219BE0E24();
  sub_21874801C(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v13 = sub_219BDCD44();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_219C09BA0;
  (*(v14 + 104))(v16 + v15, *MEMORY[0x277CEAD18], v13);
  sub_2186E0128(&unk_27CC22080, MEMORY[0x277D2ED40], MEMORY[0x277D2ED38]);
  sub_219BDCCC4();

  (*(v9 + 8))(v12, v8);
  sub_219BE0E14();
  sub_2186E0128(&qword_27CC19020, MEMORY[0x277D2ED30], MEMORY[0x277D2ED28]);
  memset(v18, 0, sizeof(v18));
  sub_219BDCCE4();
  return sub_2187458EC(v18, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186DF120);
}

double sub_2194C3F98(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  sub_21874801C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v67 = *(v10 - 8);
  v11 = *(v67 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - v13;
  v15 = sub_219BF3BD4();
  *&v17 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v19 = (&v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a4)
  {
    v61 = v11;
    v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v19;
    v21 = v16;
    sub_2194C38D8(a3, v19);
    v22 = sub_218DF2428();
    v60 = v5[2];
    type metadata accessor for FollowingNotificationsPrewarm(0);
    v23 = swift_allocBox();
    v25 = v24;
    sub_21878D714(0);
    v26 = v14;
    v28 = *(v27 + 48);
    *v25 = v22;
    v29 = *(v21 + 16);
    v64 = v20;
    v29(v25 + v28, v20, v15);
    v65 = v21;
    v30 = v25 + v28;
    v31 = v26;
    (*(v21 + 56))(v30, 0, 1, v15);
    swift_storeEnumTagMultiPayload();
    v63 = v23;
    v32 = v5[3];
    v33 = sub_219BDFA44();
    (*(*(v33 - 8) + 56))(v26, 1, 1, v33);
    v77 = 0;
    memset(v76, 0, sizeof(v76));
    v75 = 0;
    memset(v74, 0, sizeof(v74));
    v73 = v60;
    sub_2187B171C(v74, &v69, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    v66 = v15;
    if (v70)
    {
      sub_21875F93C(&v69, v71);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v34 = qword_280ED32D8;
      v35 = qword_280ED32E0;
      v36 = qword_280ED32E8;

      sub_2188202A8(v35);
      __swift_destroy_boxed_opaque_existential_1(v71);
    }

    else
    {
      sub_2187B1CC0(&v69, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v34 = qword_280ED32D8;
      v35 = qword_280ED32E0;
      v36 = qword_280ED32E8;

      sub_2188202A8(v35);
    }

    v49 = v62;
    v50 = v61;
    v68 = v23 | 0x3000000000000004;
    v70 = sub_219BDD274();
    *&v69 = v32;
    sub_2189B4E2C(v31, v49);
    sub_2187B171C(v76, v71, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v51 = (*(v67 + 80) + 24) & ~*(v67 + 80);
    v67 = v31;
    v52 = (v50 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
    v53 = (v52 + 47) & 0xFFFFFFFFFFFFFFF8;
    v54 = swift_allocObject();
    *(v54 + 16) = v32;
    sub_2189B4EAC(v49, v54 + v51);
    v55 = v54 + v52;
    v56 = v71[1];
    *v55 = v71[0];
    *(v55 + 16) = v56;
    *(v55 + 32) = v72;
    v57 = (v54 + v53);
    v58 = (v54 + ((v53 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v57 = 0;
    v57[1] = 0;
    *v58 = v34;
    v58[1] = v35;
    v58[2] = v36;
    swift_retain_n();

    sub_2188202A8(v35);
    sub_2186CF94C(0);
    sub_2186E0128(&qword_280EE5A90, sub_2186CF94C, MEMORY[0x277D6D5F8]);
    sub_219BEB464();

    sub_2187FABEC(v35, v36);
    sub_2187B1CC0(v74, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    sub_2187B1CC0(v76, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_2187458EC(v67, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_21874801C);
    (*(v65 + 8))(v64, v66);
    sub_2187458EC(&v69, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186DF120);
  }

  else if ([a3 isMySports])
  {
    type metadata accessor for FCSportsOnboardingState(0);
    sub_219BE3204();
    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v37 = sub_219BF66A4();
    v38 = swift_allocObject();
    *(v38 + 16) = a1;
    *(v38 + 24) = a2;
    sub_2186DF120(0, &qword_280E8B4E0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
    swift_unknownObjectRetain();
    sub_219BE2F94();
  }

  else
  {
    v40 = sub_2194C3758(a3, v5);
    if (v40)
    {
      v41 = v40;
      sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_219C09EC0;
      *&v76[0] = 0;
      *(&v76[0] + 1) = 0xE000000000000000;
      *&v74[0] = a3;
      sub_2186D8870();
      sub_219BF7484();
      v43 = v76[0];
      v44 = MEMORY[0x277D837D0];
      *(v42 + 56) = MEMORY[0x277D837D0];
      v45 = sub_2186FC3BC();
      *(v42 + 64) = v45;
      *(v42 + 32) = v43;
      *&v76[0] = 0;
      *(&v76[0] + 1) = 0xE000000000000000;
      *&v74[0] = v41;
      sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
      sub_219BF7484();
      v46 = v76[0];
      *(v42 + 96) = v44;
      *(v42 + 104) = v45;
      *(v42 + 72) = v46;
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
      v47 = sub_219BF6F44();
      v48 = sub_219BF6214();
      sub_219BE5314("failed to subscribe and turn on notifications for channel, tag=%@, error=%@", 75, 2, &dword_2186C1000, v47, v48, v42);
    }
  }

  return result;
}

uint64_t sub_2194C4A6C(void *a1)
{
  v3 = *(v1 + 120);
  v4 = *(v1 + 128);
  __swift_project_boxed_opaque_existential_1((v1 + 96), v3);
  v5 = (*(v4 + 16))(v3, v4);
  if (v5)
  {
    if (*&v5[OBJC_IVAR___TSNotificationSettings_authorizationStatus] == 2)
    {
      v6 = v5;
      if ([a1 isMySports])
      {
        v7 = *(v1 + 80);
        v8 = *(v1 + 88);
        __swift_project_boxed_opaque_existential_1((v1 + 56), v7);
        v9 = (*(v8 + 48))(v7, v8);
      }

      else if ([a1 isPuzzleHub])
      {
        v11 = *(v1 + 80);
        v12 = *(v1 + 88);
        __swift_project_boxed_opaque_existential_1((v1 + 56), v11);
        v9 = (*(v12 + 56))(v11, v12);
      }

      else
      {
        v9 = [*(v1 + 48) hasNotificationsEnabledForTag_];
      }

      v10 = v9;
      v5 = v6;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

id sub_2194C4BB4(void *a1)
{
  if ([*(v1 + 136) useOfflineMode])
  {
    __swift_project_boxed_opaque_existential_1((v1 + 144), *(v1 + 168));
    if (sub_219BEED44())
    {
      return 0;
    }
  }

  result = [a1 asChannel];
  if (result)
  {
    v4 = [result supportsNotifications];
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

uint64_t sub_2194C4C58(void *a1)
{
  sub_21874801C(0, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_2194C4D4C()
{
  v1 = v0[26];
  v2 = v0[27];
  __swift_project_boxed_opaque_existential_1(v0 + 23, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t dispatch thunk of RecipeFilterResultProviderType.filterResult(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return v11(a1, a2, a3, a4);
}

void sub_2194C4F08(uint64_t a1)
{
  v2 = type metadata accessor for OfflineReadinessSection(0);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB77C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194CA43C(0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5, v11);
  sub_2187FB084(&qword_280EE7468, sub_2186EB77C, MEMORY[0x277D6CC40]);
  sub_219BF56A4();
  v14 = *(v10 + 44);
  v15 = sub_2187FB084(&qword_280EE7460, sub_2186EB77C, MEMORY[0x277D6CC48]);
  sub_219BF5E84();
  v16 = MEMORY[0x277D84F90];
  if (*&v13[v14] == v49[0])
  {
LABEL_2:
    sub_2194CA4D0(v13, sub_2194CA43C);
    return;
  }

  v46 = v15;
  v43 = v13;
  v44 = v5;
  v42 = v14;
  while (1)
  {
    v17 = sub_219BF5EC4();
    v18 = v47;
    sub_2187A96A4(v19, v47, type metadata accessor for OfflineReadinessSection);
    v17(v49, 0);
    sub_219BF5E94();
    v20 = sub_2194C5454();
    sub_2194CA4D0(v18, type metadata accessor for OfflineReadinessSection);
    v21 = v20 >> 62;
    v22 = v20 >> 62 ? sub_219BF7214() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v16 >> 62;
    if (v16 >> 62)
    {
      break;
    }

    v24 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v24 + v22;
    if (__OFADD__(v24, v22))
    {
      goto LABEL_33;
    }

LABEL_10:
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v23)
      {
        v26 = v16 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_219BF7214();
      goto LABEL_16;
    }

    if (v23)
    {
      goto LABEL_15;
    }

LABEL_16:
    v16 = sub_219BF7364();
    v26 = v16 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v50 = v16;
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v21)
    {
      v30 = v26;
      v31 = sub_219BF7214();
      v26 = v30;
      v29 = v31;
      if (v31)
      {
LABEL_21:
        if (((v28 >> 1) - v27) < v22)
        {
          goto LABEL_35;
        }

        v32 = v26 + 8 * v27 + 32;
        v48 = v22;
        v45 = v26;
        if (v21)
        {
          if (v29 < 1)
          {
            goto LABEL_37;
          }

          sub_2186EBC14(0);
          sub_2187FB084(&qword_280E8ED30, sub_2186EBC14, MEMORY[0x277D83988]);
          for (i = 0; i != v29; ++i)
          {
            v34 = sub_218A353D0(v49, i, v20);
            v36 = *v35;
            (v34)(v49, 0);
            *(v32 + 8 * i) = v36;
          }
        }

        else
        {
          sub_2186C6148(0, &qword_280E8E770, 0x277D30E08);
          swift_arrayInitWithCopy();
        }

        v13 = v43;
        v14 = v42;
        v16 = v50;
        if (v48 >= 1)
        {
          v37 = *(v45 + 16);
          v38 = __OFADD__(v37, v48);
          v39 = v37 + v48;
          if (v38)
          {
            goto LABEL_36;
          }

          *(v45 + 16) = v39;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v29 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_21;
      }
    }

    v16 = v50;
    if (v22 > 0)
    {
      goto LABEL_34;
    }

LABEL_5:
    sub_219BF5E84();
    if (*&v13[v14] == v49[0])
    {
      goto LABEL_2;
    }
  }

  v40 = sub_219BF7214();
  v25 = v40 + v22;
  if (!__OFADD__(v40, v22))
  {
    goto LABEL_10;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_2194C5454()
{
  v1 = *(v0 + *(type metadata accessor for OfflineReadinessSection(0) + 24));
  v9 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    for (j = 0; ; ++j)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x21CECE0F0](j, v1);
      }

      else
      {
        if (j >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v4 = *(v1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ([v4 dataProvider])
      {

        swift_unknownObjectRelease();
      }

      else
      {
        v7 = [v5 downloadError];
        if (v7 && (v7, ([v5 isDownloadFailureRecoverable] & 1) == 0))
        {
        }

        else
        {
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }
      }

      if (v6 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2194C55EC@<X0>(char *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a3;
  v4 = *a2;
  v5 = *MEMORY[0x277D85000];
  v18 = *((*MEMORY[0x277D85000] & *a2) + 0x68);
  v17 = *((v5 & v4) + 0x70);
  v6 = *((v5 & v4) + 0x88);
  v7 = *((v5 & v4) + 0x98);
  v19 = v18;
  v20 = v17;
  v21 = v6;
  v22 = v7;
  v8 = sub_219BEB334();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *((v5 & v4) + 0xF8);
  swift_beginAccess();
  (*(v9 + 16))(v11, &a2[v12], v8);
  v13 = v16;
  sub_219BEB364();
  (*(v9 + 8))(v11, v8);
  v19 = v18;
  v20 = v17;
  v21 = v6;
  v22 = v7;
  v14 = sub_219BE6A54();
  return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
}

double sub_2194C57F8(void *a1)
{
  if ([a1 isNetworkReachable])
  {

    sub_2187FBC98(sub_2194CA6DC, &block_descriptor_43_0);
  }

  return result;
}

void sub_2194C58A0(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_2194C57F8(a3);
  swift_unknownObjectRelease();
}

uint64_t sub_2194C5A08(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000];
  sub_218720434(*&a1[*((v4 & v2) + 0xA0)], *&a1[*((v4 & v2) + 0xA0) + 8]);
  swift_unknownObjectRelease();

  (*(*(*((v4 & v2) + 0x60) - 8) + 8))(&a1[*((*v3 & *a1) + 0xB8)]);
  (*(*(*((v4 & v2) + 0x58) - 8) + 8))(&a1[*((*v3 & *a1) + 0xC0)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xC8)]);
  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v3 & *a1) + 0xD0)]);
  swift_unknownObjectRelease();
  v5 = *((*v3 & *a1) + 0xE0);
  v6 = sub_219BEE544();
  (*(*(v6 - 8) + 8))(&a1[v5], v6);

  v7 = *((*v3 & *a1) + 0xF8);
  v8 = sub_219BEB334();
  (*(*(v8 - 8) + 8))(&a1[v7], v8);
  v9 = *((*v3 & *a1) + 0x100);
  sub_2186EB77C(0);
  (*(*(v10 - 8) + 8))(&a1[v9], v10);

  v11 = MEMORY[0x277CC9578];
  v12 = MEMORY[0x277D83D88];
  sub_2194CA650(&a1[*((*v3 & *a1) + 0x110)], &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_2186DDE18);
  return sub_2194CA650(&a1[*((*v3 & *a1) + 0x118)], &qword_280EE9C40, v11, v12, sub_2186DDE18);
}

uint64_t sub_2194C5E2C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_219BE5434();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2194C5F14()
{
  v0 = sub_219BDBD64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  v4 = sub_219BDBD44();
  v6 = v5;
  (*(v1 + 8))(v3, v0);

  v7 = sub_219BE5414();
  v8 = sub_219BF6214();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_2186D1058(v4, v6, &v16);
    _os_log_impl(&dword_2186C1000, v7, v8, "Offline Readiness will unbox cursor before committing to database, id=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  swift_getAssociatedConformanceWitness();
  sub_219BF09B4();
  sub_219BE3204();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v6;
  v12 = sub_219BE2E54();
  type metadata accessor for OfflineFeedManifest(0);
  v13 = sub_219BE2F84();

  return v13;
}

void sub_2194C6260(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v120 = a4;
  v129 = a3;
  v5 = *a2;
  v138 = type metadata accessor for OfflineReadinessSection(0);
  v98 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v97 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OfflineFeedManifest(0);
  v137 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v101 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v97 - v10;
  v136 = a2;
  v11 = v5[12];
  v12 = v5[10];
  v127 = v5[11];
  v128 = v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v126 = &v97 - v15;
  v125 = sub_219BEDC14();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BF0C34();
  MEMORY[0x28223BE20](v17 - 8);
  v121 = &v97 - v18;
  v19 = sub_219BF0BD4();
  MEMORY[0x28223BE20](v19 - 8);
  v119 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = AssociatedConformanceWitness;
  v116 = swift_getAssociatedTypeWitness();
  v21 = sub_219BF6FB4();
  MEMORY[0x28223BE20](v21 - 8);
  v131 = &v97 - v22;
  v23 = sub_219BDBD34();
  MEMORY[0x28223BE20](v23 - 8);
  v135 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v134 = &v97 - v26;
  v110 = sub_219BEDA64();
  v109 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v133 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = v12;
  v118 = *(v12 - 8);
  MEMORY[0x28223BE20](v28);
  v117 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v132 = &v97 - v31;
  v111 = sub_219BDBD64();
  v32 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v34 = &v97 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_219BF0964();
  v35 = sub_219BEDC64();
  sub_219BF5B14();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v36 = sub_219BF56C4();

  v142 = v136[3];
  v37 = v142;
  v139 = v36;
  v140 = v136;
  sub_2186DDE18(0, &qword_27CC1B098, type metadata accessor for OfflineReadinessSection, MEMORY[0x277D83940]);
  sub_21875B274(qword_27CC1B0A0, &qword_27CC1B098, type metadata accessor for OfflineReadinessSection);

  v102 = v35;
  v38 = v122;
  v115 = sub_219BF57E4();
  v122 = v38;
  v99 = v37;

  v39 = v104;
  v114 = sub_219BF09B4();
  sub_219BDBD54();
  v113 = sub_219BDBD44();
  v112 = v40;
  (*(v32 + 8))(v34, v111);
  sub_219BF0944();
  v111 = sub_219BF0924();
  (*(v109 + 104))(v133, *MEMORY[0x277D31D20], v110);
  sub_219BF0914();
  sub_219BDBD24();
  v41 = v39;
  sub_219BEDFA4();
  v110 = sub_219BF5A24();
  v42 = sub_219BF5B14();
  v43 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v44 = sub_219BF5A24();
  v109 = sub_2194CA118(v44, v43, v42, MEMORY[0x277D83B98]);

  v108 = sub_219BF5A24();
  v107 = sub_219BF5A24();
  sub_219BEE3B4();
  v106 = sub_219BF5A24();
  v105 = sub_218831A70(MEMORY[0x277D84F90]);
  v45 = v116;
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v46 = sub_219BEFDB4();
  v47 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v48 = sub_219BF5A24();
  v103 = sub_2194CA118(v48, v47, v46, MEMORY[0x277D837E0]);

  (*(*(v45 - 8) + 56))(v131, 1, 1, v45);
  sub_219BF08F4();
  sub_219BF0904();
  (*(v124 + 104))(v123, *MEMORY[0x277D31E00], v125);
  v49 = v41;
  sub_219BEE384();
  v50 = v117;
  sub_219BF0944();
  sub_219BEEE74();
  (*(v118 + 8))(v50, v49);
  sub_219BEE354();
  sub_219BF08C4();
  v51 = swift_allocObject();

  *(v51 + 16) = sub_219BEE824();
  CACurrentMediaTime();
  swift_retain_n();
  v52 = v120;

  v53 = v52;
  v54 = sub_219BE5414();
  v55 = sub_219BF6214();

  v56 = os_log_type_enabled(v54, v55);
  v135 = v51;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v142 = v58;
    *v57 = 136446466;
    v59 = v53;
    *(v57 + 4) = sub_2186D1058(v129, v53, &v142);
    *(v57 + 12) = 2050;
    sub_219BF0934();
    v60 = sub_219BF5A64();

    *(v57 + 14) = v60;

    _os_log_impl(&dword_2186C1000, v54, v55, "Offline Readiness will commit to database, id=%{public}s, groupCount=%{public}ld", v57, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x21CECF960](v58, -1, -1);
    MEMORY[0x21CECF960](v57, -1, -1);
  }

  else
  {
    v59 = v53;
  }

  v61 = v122;
  sub_219BEDF54();
  if (v61)
  {
    v62 = v59;

    v63 = v61;
    v64 = sub_219BE5414();
    v65 = sub_219BF6214();

    v66 = os_log_type_enabled(v64, v65);
    v67 = v129;
    if (v66)
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v144 = v69;
      *v68 = 136446466;
      *(v68 + 4) = sub_2186D1058(v67, v62, &v144);
      *(v68 + 12) = 2082;
      v142 = 0;
      v143 = 0xE000000000000000;
      v141 = v61;
      sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
      sub_219BF7484();
      v70 = sub_2186D1058(v142, v143, &v144);

      *(v68 + 14) = v70;
      _os_log_impl(&dword_2186C1000, v64, v65, "Offline Readiness failed to commit to database, id=%{public}s, error=%{public}s", v68, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v69, -1, -1);
      MEMORY[0x21CECF960](v68, -1, -1);
    }

    sub_2186DDE18(0, &qword_27CC20CF0, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE2FF4();

    return;
  }

  v71 = v59;

  v72 = sub_219BE5414();
  v73 = sub_219BF6214();

  v74 = os_log_type_enabled(v72, v73);
  v75 = v129;
  if (!v74)
  {

    v88 = v101;
    goto LABEL_15;
  }

  v76 = swift_slowAlloc();
  v77 = swift_slowAlloc();
  v142 = v77;
  *v76 = 136446978;
  *(v76 + 4) = sub_2186D1058(v75, v71, &v142);
  *(v76 + 12) = 2082;
  v78 = sub_219BF08D4();
  v80 = sub_2186D1058(v78, v79, &v142);

  *(v76 + 14) = v80;
  *(v76 + 22) = 2082;
  qos_class_self();
  v81 = FCStringFromQoSClass();
  if (!v81)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v82 = v81;
  v83 = sub_219BF5414();
  v85 = v84;

  v86 = sub_2186D1058(v83, v85, &v142);

  *(v76 + 24) = v86;
  *(v76 + 32) = 2050;
  sub_219BF5CD4();
  if ((*&v87 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  v88 = v101;
  if (v87 <= -9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v87 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v76 + 34) = v87;
  _os_log_impl(&dword_2186C1000, v72, v73, "Offline Readiness finished committing to database, id=%{public}s, rootCursorIdentifier%{public}s, qos=%{public}s, time=%{public}lldms", v76, 0x2Au);
  swift_arrayDestroy();
  MEMORY[0x21CECF960](v77, -1, -1);
  MEMORY[0x21CECF960](v76, -1, -1);

LABEL_15:
  v89 = v99;
  v90 = *(v99 + 16);
  v91 = MEMORY[0x277D84F90];
  if (v90)
  {
    v136 = 0;
    v142 = MEMORY[0x277D84F90];
    sub_218C37590(0, v90, 0);
    v91 = v142;
    v92 = v89 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v93 = *(v98 + 72);
    v94 = v97;
    do
    {
      sub_2187A96A4(v92, v94, type metadata accessor for OfflineReadinessSection);
      sub_2187A96A4(v94 + *(v138 + 20), v88, type metadata accessor for OfflineFeedManifest);
      sub_2194CA4D0(v94, type metadata accessor for OfflineReadinessSection);
      v142 = v91;
      v96 = *(v91 + 16);
      v95 = *(v91 + 24);
      if (v96 >= v95 >> 1)
      {
        sub_218C37590((v95 > 1), v96 + 1, 1);
        v91 = v142;
      }

      *(v91 + 16) = v96 + 1;
      sub_2187538EC(v88, v91 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v96);
      v92 += v93;
      --v90;
    }

    while (v90);
  }

  OfflineFeedManifest.init(_:)(v91, v100);
  sub_2186DDE18(0, &qword_27CC20CF0, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_219BE3014();
}

uint64_t sub_2194C75D8@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X8>)
{
  v27 = a4;
  v5 = type metadata accessor for OfflineReadinessSection(0);
  MEMORY[0x28223BE20](v5 - 8);
  v26 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getAssociatedConformanceWitness();
  v7 = sub_219BEDC64();
  v8 = sub_219BF6FB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = a1[1];
  v28[0] = *a1;
  v28[1] = v12;

  sub_219BF52B4();

  v13 = *(v7 - 8);
  if ((*(v13 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v14 = v26;
    sub_2187A96A4(a1, v26, type metadata accessor for OfflineReadinessSection);
    v15 = sub_219BE5414();
    v16 = sub_219BF6214();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v28[0] = v18;
      *v17 = 136446210;
      v19 = *v14;
      v20 = v14[1];

      sub_2194CA4D0(v14, type metadata accessor for OfflineReadinessSection);
      v21 = sub_2186D1058(v19, v20, v28);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_2186C1000, v15, v16, "Offline Readiness failed to lookup group for section, id=%{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x21CECF960](v18, -1, -1);
      MEMORY[0x21CECF960](v17, -1, -1);
    }

    else
    {

      sub_2194CA4D0(v14, type metadata accessor for OfflineReadinessSection);
    }

    v23 = 1;
    v24 = v27;
  }

  else
  {
    v22 = v27;
    (*(v13 + 32))(v27, v11, v7);
    v23 = 0;
    v24 = v22;
  }

  return (*(v13 + 56))(v24, v23, 1, v7);
}

uint64_t *sub_2194C799C()
{
  v1 = *v0;

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));
  v2 = *(*v0 + 128);
  v3 = sub_219BE5434();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_2194C7AA4(uint64_t a1)
{
  result = type metadata accessor for OfflineReadinessSection(319);
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        result = sub_219BE5434();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_2194C7C1C()
{
  v0 = sub_219BDBD64();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDBD54();
  v4 = sub_219BDBD44();
  v6 = v5;
  (*(v1 + 8))(v3, v0);

  v7 = sub_219BE5414();
  v8 = sub_219BF6214();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_2186D1058(v4, v6, &v18);
    _os_log_impl(&dword_2186C1000, v7, v8, "Offline Readiness will unbox cursor before committing to database, id=%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  swift_getAssociatedConformanceWitness();
  sub_219BF09B4();
  sub_219BE3204();
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = v6;

  v12 = sub_219BE2E54();
  type metadata accessor for OfflineFeedManifest(0);
  sub_219BE2F84();

  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v6;
  v14 = sub_219BE2E54();
  v15 = sub_219BE2FE4();

  return v15;
}

uint64_t sub_2194C7FD4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v62 = a4;
  v50 = a3;
  v4 = a2;
  v5 = *a2;
  v6 = *(*a2 + 104);
  v52 = *(*a2 + 80);
  v7 = v52;
  v65 = v6;
  v58 = *(&v52 + 1);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  v56 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v53 = &v50 - v10;
  v11 = *(v5 + 112);
  v66 = *(v5 + 96);
  v67 = v11;
  v12 = swift_getAssociatedTypeWitness();
  v60 = *(v12 - 8);
  v61 = v12;
  MEMORY[0x28223BE20](v12);
  v59 = &v50 - v13;
  v57 = v7;
  v54 = AssociatedConformanceWitness;
  v14 = sub_219BEDC64();
  v51 = sub_219BF6FB4();
  v15 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v17 = &v50 - v16;
  v18 = *(v14 - 8);
  MEMORY[0x28223BE20](v19);
  v63 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v50 - v22;
  *&v68[0] = sub_219BF0964();
  sub_219BF5B14();
  swift_getWitnessTable();
  v24 = v18;
  v25 = v64;
  sub_219BF57F4();

  if ((*(v18 + 48))(v17, 1, v14) == 1)
  {
    (*(v15 + 8))(v17, v51);
    *&v26 = v66;
    *(&v26 + 1) = v65;
    v68[1] = v26;
    v68[0] = v52;
    v69 = v67;
    v4 = type metadata accessor for OfflineReadinessFeedMicroAdopter.Errors(0, v68);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    *&v52 = v25;
    (*(v18 + 32))(v23, v17, v14);
    v27 = CACurrentMediaTime();
    v28 = *(v18 + 16);
    v64 = v23;
    v29 = v23;
    v30 = v14;
    v28(v63, v29, v14);
    v31 = v62;

    v32 = sub_219BE5414();
    v33 = sub_219BF6214();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *&v68[0] = v51;
      *v34 = 136446466;
      *(v34 + 4) = sub_2186D1058(v50, v31, v68);
      *(v34 + 12) = 2082;
      v35 = v63;
      v36 = sub_219BEDC34();
      v37 = v24;
      v39 = v38;
      v63 = *(v37 + 8);
      (v63)(v35, v30);
      v40 = sub_2186D1058(v36, v39, v68);

      *(v34 + 14) = v40;
      _os_log_impl(&dword_2186C1000, v32, v33, "Offline Readiness will commit to database, id=%{public}s, group=%{public}s", v34, 0x16u);
      v41 = v51;
      swift_arrayDestroy();
      MEMORY[0x21CECF960](v41, -1, -1);
      MEMORY[0x21CECF960](v34, -1, -1);
    }

    else
    {

      v42 = v63;
      v63 = *(v24 + 8);
      (v63)(v42, v30);
    }

    LOBYTE(v68[0]) = 1;
    v43 = v59;
    (*(v67 + 24))(v68, v66);
    v44 = v53;
    sub_219BEDC54();
    sub_219BEE7D4();
    v45 = v52;
    sub_219BEDF64();
    if (v45)
    {

      (*(v55 + 8))(v44, v56);
    }

    else
    {
      (*(v55 + 8))(v44, v56);

      v46 = swift_allocObject();
      v47 = v50;
      *(v46 + 2) = v4;
      *(v46 + 3) = v47;
      *(v46 + 4) = v62;
      v46[5] = v27;

      v48 = sub_219BE2E54();
      type metadata accessor for OfflineFeedManifest(0);
      v4 = sub_219BE2F64();
    }

    (*(v60 + 8))(v43, v61);
    (v63)(v64, v30);
  }

  return v4;
}

uint64_t sub_2194C885C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedConformanceWitness();
  sub_219BEDC64();
  if (sub_219BEDC34() == *(a2 + qword_27CC1B008) && v3 == *(a2 + qword_27CC1B008 + 8))
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_219BF78F4();
  }

  return v5 & 1;
}

void sub_2194C8940(double a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = type metadata accessor for OfflineFeedManifest(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  v12 = sub_219BE5414();
  v13 = sub_219BF6214();

  if (!os_log_type_enabled(v12, v13))
  {

    goto LABEL_8;
  }

  v25 = v5;
  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v26 = v15;
  *v14 = 136446722;
  *(v14 + 4) = sub_2186D1058(a4, a5, &v26);
  *(v14 + 12) = 2082;
  qos_class_self();
  v16 = FCStringFromQoSClass();
  if (v16)
  {
    v17 = v16;
    v18 = sub_219BF5414();
    v20 = v19;

    v21 = sub_2186D1058(v18, v20, &v26);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2050;
    sub_219BF5CD4();
    if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v22 > -9.22337204e18)
    {
      if (v22 < 9.22337204e18)
      {
        *(v14 + 24) = v22;
        _os_log_impl(&dword_2186C1000, v12, v13, "Offline Readiness finished committing to database, id=%{public}s, qos=%{public}s, time=%{public}lldms", v14, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x21CECF960](v15, -1, -1);
        MEMORY[0x21CECF960](v14, -1, -1);

LABEL_8:
        v23 = a3 + qword_27CC1B008;
        v24 = type metadata accessor for OfflineReadinessSection(0);
        sub_2187A96A4(v23 + *(v24 + 20), v11, type metadata accessor for OfflineFeedManifest);
        sub_2186DDE18(0, &qword_27CC20CF0, type metadata accessor for OfflineFeedManifest, MEMORY[0x277D6CF30]);
        swift_allocObject();
        sub_219BE3014();
        return;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  __break(1u);
}

void sub_2194C8C1C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  v7 = a1;
  oslog = sub_219BE5414();
  v8 = sub_219BF6214();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_2186D1058(a3, a4, &v13);
    *(v9 + 12) = 2082;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    v11 = sub_2186D1058(0, 0xE000000000000000, &v13);

    *(v9 + 14) = v11;
    _os_log_impl(&dword_2186C1000, oslog, v8, "Offline Readiness failed to commit to database, id=%{public}s, error=%{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v10, -1, -1);
    MEMORY[0x21CECF960](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t *sub_2194C8DF8()
{
  v1 = *v0;

  sub_2194CA4D0(v0 + qword_27CC1B008, type metadata accessor for OfflineReadinessSection);
  (*(*(*(v1 + 96) - 8) + 8))(v0 + *(*v0 + 136));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 144));
  v2 = *(*v0 + 152);
  v3 = sub_219BE5434();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t sub_2194C8F58(uint64_t (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

double sub_2194C8FEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + 56);
    v7 = v5[8];
    v5[7] = 0;
    v5[8] = 0;
    sub_2194CA0D8(v6, v7);
    v8 = v5[11];
    if (v8)
    {
      v9 = v5[12];

      v8(a2);
      sub_2187FABEC(v8, v9);
    }

    if (v5[4] == v5[5] >> 1)
    {
      v10 = v5[13];
      if (v10)
      {
        v11 = v5[14];

        v10(v12);
        sub_2187FABEC(v10, v11);
      }
    }

    sub_2187FC78C();
  }

  return result;
}

uint64_t sub_2194C90C8()
{
  swift_unknownObjectRelease();

  sub_2194CA0D8(*(v0 + 56), *(v0 + 64));

  sub_2187FABEC(*(v0 + 88), *(v0 + 96));
  sub_2187FABEC(*(v0 + 104), *(v0 + 112));
  return v0;
}

uint64_t sub_2194C9118()
{
  sub_2194C90C8();

  return swift_deallocClassInstance();
}

uint64_t sub_2194C9148()
{

  return swift_deallocClassInstance();
}

unint64_t sub_2194C91C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BF52E4();

  return sub_2194C921C(a1, v6, a2, a3);
}

unint64_t sub_2194C921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_219BF53A4();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

void sub_2194C93A4(uint64_t *result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v14 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v14, v13);
  v15 = v14 - v13;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v33 = v15;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 8 * a2;
  v31 = v13;
  v32 = (v18 + 8 * a3);
  sub_2194C9D64(v7);
  v35 = v9 + 32;
  if (v19)
  {
    v20 = v19;
    v30 = v9;
    v21 = v4[2];
    v22 = (v4[1] + 8 * v21);
    v23 = &v22[8 * a2];
    sub_2186C6148(0, &qword_280E8E770, 0x277D30E08);
    swift_arrayDestroy();
    if (v17 != v22 || v17 >= v23)
    {
      memmove(v17, v22, 8 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v24 = &v23[8 * v33];
    if (v32 != v24 || v32 >= &v24[8 * v31])
    {
      memmove(v32, v24, 8 * v31);
    }

    swift_arrayDestroy();
    *(v20 + 16) = 0;

    v9 = v30;
  }

  else
  {
    v21 = v4[2];
    v25 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v25 < v21)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v25, v21))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    sub_2186C6148(0, &qword_280E8E770, 0x277D30E08);
    swift_arrayInitWithCopy();
    a4(v35 + 8 * a2, a3);
    v26 = v25 + v33;
    if (__OFADD__(v25, v33))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v27 = v4[3] >> 1;
    if (v27 < v26)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v27, v26))
    {
LABEL_42:
      __break(1u);
      return;
    }

    swift_arrayInitWithCopy();
  }

  swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_33;
  }

  v28 = *(v9 + 16);
  v11 = __OFADD__(v21, v28);
  v29 = v21 + v28;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v29 < v21)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v29 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v35 - 8 * v21;
  v4[2] = v21;
  v4[3] = (2 * v29) | 1;
}

void sub_2194C968C(uint64_t *result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v5 = v4[2];
  v6 = v4[3] >> 1;
  v7 = v6 - v5;
  if (__OFSUB__(v6, v5))
  {
    __break(1u);
    goto LABEL_29;
  }

  v9 = *result;
  v10 = *(*result + 16);
  v11 = __OFSUB__(v10, a2);
  v12 = v10 - a2;
  if (v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v15 = v7 - a2;
  if (__OFSUB__(v7, a2))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v11 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v11)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v32 = v14;
  v33 = v16;
  v17 = (v9 + 32);
  v18 = v9 + 32 + 16 * a2;
  sub_2194C9EC4(v7);
  v35 = v9 + 32;
  if (v19)
  {
    v20 = v19;
    __dst = (v18 + 16 * a3);
    v31 = v9;
    v21 = v4[2];
    v22 = (v4[1] + 16 * v21);
    v23 = &v22[16 * a2];
    swift_arrayDestroy();
    if (v17 != v22 || v17 >= v23)
    {
      memmove(v17, v22, 16 * a2);
    }

    swift_arrayDestroy();
    a4(v18, a3);
    v24 = &v23[16 * v33];
    if (__dst != v24 || __dst >= &v24[16 * v32])
    {
      memmove(__dst, v24, 16 * v32);
    }

    swift_arrayDestroy();
    *(v20 + 16) = 0;

    v9 = v31;
  }

  else
  {
    v21 = v4[2];
    v25 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    if (v25 < v21)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (__OFSUB__(v25, v21))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    swift_arrayInitWithCopy();
    a4(v35 + 16 * a2, a3);
    v26 = v25 + v33;
    if (__OFADD__(v25, v33))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v27 = v4[3] >> 1;
    if (v27 < v26)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v27, v26))
    {
LABEL_42:
      __break(1u);
      return;
    }

    swift_arrayInitWithCopy();
  }

  swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_33;
  }

  v28 = *(v9 + 16);
  v11 = __OFADD__(v21, v28);
  v29 = v21 + v28;
  if (v11)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v29 < v21)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v29 < 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  *v4 = v9;
  v4[1] = v35 - 16 * v21;
  v4[2] = v21;
  v4[3] = (2 * v29) | 1;
}

void sub_2194C9944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v7 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_25:
    if (v7 >= v6)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v7 + 0x4000000000000000 >= 0)
    {
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_28;
  }

  v6 = a2;
  if ((a6 & 1) == 0)
  {
    goto LABEL_25;
  }

  sub_219BF7934();
  swift_unknownObjectRetain();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 16);
  v12 = a4 + 8 * a5 + 8 * v7;
  if (v12 == v10 + 8 * v11 + 32)
  {
    v14 = *(v10 + 24);

    v15 = (v14 >> 1) - v11;
    v13 = v7 + v15;
    if (__OFADD__(v7, v15))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }
  }

  else
  {

    v13 = v7;
  }

  swift_unknownObjectRetain();
  v16 = swift_dynamicCastClass();
  if (v13 < v6)
  {
    if (!v16)
    {
      swift_unknownObjectRelease();
      v16 = MEMORY[0x277D84F90];
    }

    v17 = *(v16 + 16);
    if (v12 == v16 + 8 * v17 + 32)
    {
      v19 = *(v16 + 24);

      v20 = (v19 >> 1) - v17;
      v21 = __OFADD__(v7, v20);
      v7 += v20;
      if (v21)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v16)
  {
    swift_unknownObjectRelease();
    v16 = MEMORY[0x277D84F90];
  }

  v18 = *(v16 + 16);
  if (v12 == v16 + 8 * v18 + 32)
  {
    v22 = *(v16 + 24);

    if (__OFADD__(v7, (v22 >> 1) - v18))
    {
LABEL_30:
      __break(1u);
      return;
    }
  }

  else
  {
  }

LABEL_21:

  sub_2194B7E58();
}

void sub_2194C9B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = a1;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_219BF7934();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 16 * a5 + 16 * v8;
  if (v13 == v11 + 16 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 16 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 16 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  sub_21947D1C0(v6, v25);
}

double sub_2194C9CE0(uint64_t a1)
{
  sub_2194C9944(a1, a1 + 1, *v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  v6 = v3;
  v4 = sub_2194C9CC4();
  sub_2194C93A4(&v6, a1, 0, v4);

  return result;
}

void sub_2194C9D64(uint64_t a1)
{
  if (swift_isUniquelyReferenced_nonNull())
  {
    v5 = v1[2];
    v4 = v1[3];
    v6 = (v4 >> 1) - v5;
    if (__OFSUB__(v4 >> 1, v5))
    {
      __break(1u);
      goto LABEL_20;
    }

    v7 = v1[1] + 8 * v5;
    if (v4)
    {
      sub_219BF7934();
      swift_unknownObjectRetain();
      v8 = swift_dynamicCastClass();
      if (!v8)
      {
        swift_unknownObjectRelease();
        v8 = MEMORY[0x277D84F90];
      }

      v9 = *(v8 + 16);
      if (v7 + 8 * v6 == v8 + 8 * v9 + 32)
      {
        v11 = *(v8 + 24);

        v12 = (v11 >> 1) - v9;
        v13 = __OFADD__(v6, v12);
        v10 = v6 + v12;
        if (v13)
        {
          __break(1u);
          return;
        }

LABEL_10:
        if (v10 < a1)
        {
          return;
        }

        sub_219BF7934();
        swift_unknownObjectRetain();
        v14 = swift_dynamicCastClass();
        if (!v14)
        {
          swift_unknownObjectRelease();
          v14 = MEMORY[0x277D84F90];
        }

        v15 = v7 - v14 - 25;
        if (v7 - v14 - 32 >= 0)
        {
          v15 = v7 - v14 - 32;
        }

        v13 = __OFADD__(v6, v15 >> 3);
        v4 = v6 + (v15 >> 3);
        if (!v13)
        {
          v3 = *(v14 + 16);
          if (v4 >= v3)
          {
            return;
          }

LABEL_21:
          sub_2194B40C0(v4, v3, 0);
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v10 = v6;
    goto LABEL_10;
  }
}

void sub_2194C9EC4(uint64_t a1)
{
  if (swift_isUniquelyReferenced_nonNull())
  {
    v4 = v1[2];
    v3 = v1[3];
    v5 = (v3 >> 1) - v4;
    if (__OFSUB__(v3 >> 1, v4))
    {
      __break(1u);
      goto LABEL_20;
    }

    v6 = v1[1] + 16 * v4;
    if (v3)
    {
      sub_219BF7934();
      swift_unknownObjectRetain();
      v7 = swift_dynamicCastClass();
      if (!v7)
      {
        swift_unknownObjectRelease();
        v7 = MEMORY[0x277D84F90];
      }

      v8 = *(v7 + 16);
      if (v6 + 16 * v5 == v7 + 16 * v8 + 32)
      {
        v10 = *(v7 + 24);

        v11 = (v10 >> 1) - v8;
        v12 = __OFADD__(v5, v11);
        v9 = v5 + v11;
        if (v12)
        {
          __break(1u);
          return;
        }

LABEL_10:
        if (v9 < a1)
        {
          return;
        }

        sub_219BF7934();
        swift_unknownObjectRetain();
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
          swift_unknownObjectRelease();
          v13 = MEMORY[0x277D84F90];
        }

        v14 = v6 - v13 - 17;
        if (v6 - v13 - 32 >= 0)
        {
          v14 = v6 - v13 - 32;
        }

        v12 = __OFADD__(v5, v14 >> 4);
        v15 = v5 + (v14 >> 4);
        if (!v12)
        {
          if (v15 >= *(v13 + 16))
          {
            return;
          }

LABEL_21:
          sub_2194B7E4C();
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v9 = v5;
    goto LABEL_10;
  }
}

id sub_2194CA08C(id result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();

    return v2;
  }

  return result;
}

void *sub_2194CA0D8(void *result, uint64_t a2)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_2194CA118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_219BF5A64())
  {
    sub_219BF75C4();
    v13 = sub_219BF75B4();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_219BF5A64();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_219BF5A44())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_219BF7344();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2194C91C0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_2194CA43C(uint64_t a1)
{
  if (!qword_280E8D520)
  {
    sub_2186EB77C(255);
    sub_2187FB084(&qword_280EE7460, sub_2186EB77C, MEMORY[0x277D6CC48]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D520);
    }
  }
}

uint64_t sub_2194CA4D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2194CA650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2194CA6EC(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v2 != 1)
    {
      sub_218B67450(a1, a1 + 32, 1, (2 * v2) | 1);
    }

    swift_unknownObjectRetain();
  }

  else
  {
    v3 = sub_219BEEDD4();
    sub_218EA25D0(v4);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D32390], v3);
    swift_willThrow();
  }

  return v3;
}

void sub_2194CA7FC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  sub_2186DDE7C(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
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

  sub_21870ED94(v13, v16, &qword_280EE9C40, MEMORY[0x277CC9578]);
  sub_219BDBD34();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v16, 1, v27) == 1)
  {
    sub_218710A24(v16, &qword_280EE9C40, MEMORY[0x277CC9578]);
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
    sub_21870ED94(v7, v10, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if ((*(v36 + 48))(v10, 1, v35) == 1)
    {
      sub_218710A24(v10, &qword_280EE9C40, MEMORY[0x277CC9578]);
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

uint64_t sub_2194CAE70(void *a1, uint64_t a2)
{
  sub_2186DDE7C(0, &qword_27CC1B130, MEMORY[0x277D2DE60]);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  if (a1)
  {
    [a1 playDuration];
    sub_2194CAFCC(a2);
    v6 = [a1 rankID];
    if (v6)
    {
      v7 = v6;
      sub_219BF5414();
    }
  }

  else
  {
    sub_2194CAFCC(a2);
  }

  sub_219BF1CB4();
  sub_219BDF8E4();
  return sub_219BDF8F4();
}

uint64_t sub_2194CAFCC(uint64_t a1)
{
  sub_2186DDE7C(0, &qword_27CC1B138, MEMORY[0x277D333D8]);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v46 = &v45 - v5;
  v6 = sub_219BF2B94();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v45 - v10;
  v11 = MEMORY[0x277D335C8];
  sub_2186DDE7C(0, &qword_280E905D8, MEMORY[0x277D335C8]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v45 - v13;
  v15 = sub_219BF3464();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v45 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v45 - v23;
  sub_2194CB644(a1, v14, &qword_280E905D8, v11);
  v25 = sub_219BF1D54();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v14, 1, v25) == 1)
  {
    v27 = &qword_280E905D8;
    v28 = MEMORY[0x277D335C8];
    v29 = v14;
  }

  else
  {
    sub_219BF1D44();
    (*(v26 + 8))(v14, v25);
    (*(v16 + 32))(v24, v21, v15);
    (*(v16 + 16))(v18, v24, v15);
    if ((*(v16 + 88))(v18, v15) != *MEMORY[0x277D33DE0])
    {
      v41 = *(v16 + 8);
      v41(v24, v15);
      v41(v18, v15);
      return 0;
    }

    (*(v16 + 96))(v18, v15);
    v30 = v48;
    v31 = v50;
    v32 = v18;
    v33 = v49;
    (*(v48 + 32))(v50, v32, v49);
    (*(v30 + 16))(v8, v31, v33);
    if ((*(v30 + 88))(v8, v33) != *MEMORY[0x277D33AF8])
    {
      v42 = *(v30 + 8);
      v42(v31, v33);
      (*(v16 + 8))(v24, v15);
      v42(v8, v33);
      return 0;
    }

    (*(v30 + 96))(v8, v33);
    v34 = MEMORY[0x277D333D8];
    v35 = v8;
    v36 = v46;
    sub_21870ED94(v35, v46, &qword_27CC1B138, MEMORY[0x277D333D8]);
    v37 = v47;
    sub_2194CB644(v36, v47, &qword_27CC1B138, v34);
    v38 = sub_219BF15B4();
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1, v38) != 1)
    {
      v44 = sub_219BF1594();
      sub_218710A24(v36, &qword_27CC1B138, MEMORY[0x277D333D8]);
      (*(v30 + 8))(v50, v33);
      (*(v16 + 8))(v24, v15);
      (*(v39 + 8))(v37, v38);
      return v44;
    }

    v40 = MEMORY[0x277D333D8];
    sub_218710A24(v36, &qword_27CC1B138, MEMORY[0x277D333D8]);
    (*(v30 + 8))(v50, v33);
    (*(v16 + 8))(v24, v15);
    v29 = v37;
    v27 = &qword_27CC1B138;
    v28 = v40;
  }

  sub_218710A24(v29, v27, v28);
  return 0;
}

uint64_t sub_2194CB644(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186DDE7C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2194CB6B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = a3;
  v27 = a4;
  v5 = sub_219BED174();
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED1D4();
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BED214();
  v29 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v18 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v28 = *(v12 + 8);
  v28(v14, v11);
  v19 = swift_allocObject();
  v20 = v26;
  v21 = v27;
  v19[2] = a2;
  v19[3] = v20;
  v19[4] = v21;
  aBlock[4] = sub_2194CC7D0;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218793E0C;
  aBlock[3] = &block_descriptor_132;
  v22 = _Block_copy(aBlock);
  v23 = a2;

  sub_219BED1A4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_218A72744();
  sub_2186E5898(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  sub_219BF7164();
  MEMORY[0x21CECD420](v17, v10, v7, v22);
  _Block_release(v22);

  (*(v32 + 8))(v7, v5);
  (*(v30 + 8))(v10, v31);
  return (v28)(v17, v29);
}

void sub_2194CBA60(void *a1, void (*a2)(id), uint64_t a3)
{
  v24 = a2;
  v5 = sub_219BED214();
  v23 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BF51A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));

  v12 = sub_219BF53D4();

  v13 = [a1 objectForKey_];

  if (v13)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(&v26, &v27);
    sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
    swift_dynamicCast();
    v14 = v25;
    sub_2186C6148(0, &unk_27CC1B150, 0x277D550E8);
    sub_219BF6584();

    v15 = v28;
    if (v28 && (v16 = [v28 scrollView], v15, v16))
    {
      v17 = v16;

      v18 = sub_219BF53D4();

      [a1 setObject:v17 forKey:v18];

      sub_219BF51C4();
      [v17 bounds];
      *v11 = CGRectGetHeight(v29) * 4.0;
      (*(v9 + 104))(v11, *MEMORY[0x277D6D130], v8);
      v19 = swift_allocObject();
      *(v19 + 16) = v24;
      *(v19 + 24) = a3;

      sub_219BED1E4();
      sub_219BF51B4();

      (*(v23 + 8))(v7, v5);
      (*(v9 + 8))(v11, v8);
    }

    else
    {
      v20 = objc_allocWithZone(MEMORY[0x277D6D138]);
      v21 = sub_219BF53D4();
      v22 = [v20 initWithMessage_];

      v24(v22);
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_2194CBE5C(uint64_t a1, uint64_t a2)
{
  sub_219BF51C4();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_219BF5194();

  return result;
}

void sub_2194CBF74(id a1, __objc2_prot **a2)
{
  v4 = sub_219BE9414();
  v49 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v48 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDE294();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E5898(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v42 - v10;
  v12 = sub_219BDD534();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = swift_allocObject();
  *(v54 + 16) = a2;
  v15 = unk_27CC244E8;
  _Block_copy(a2);

  v16 = sub_219BF53D4();

  v17 = [a1 objectForKey_];

  if (!v17)
  {
    _Block_release(a2);
    __break(1u);
    goto LABEL_10;
  }

  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_218751558(v58, v59);
  swift_dynamicCast();
  LOBYTE(v59[0]) = v56;
  sub_2186FC620();
  if (v18)
  {
    v45 = v4;
    v43 = a2;
    sub_2187B2C48(0);
    v20 = v19;
    v44 = swift_allocBox();
    v22 = v21;
    v47 = *(v20 + 48);
    sub_2187B2DA0(0);
    v46 = *(v23 + 48);
    v24 = sub_219BDB954();
    v25 = *(*(v24 - 8) + 56);
    v25(v11, 1, 1, v24);
    sub_219BDD514();
    v25(v11, 1, 1, v24);
    v27 = v52;
    v26 = v53;
    (*(v52 + 104))(v8, *MEMORY[0x277D2FF08], v53);
    sub_219BDD894();
    (*(v27 + 8))(v8, v26);
    sub_218838478(v11);
    (*(v50 + 8))(v14, v51);
    v28 = MEMORY[0x277D84F90];
    v29 = v47;
    *(v22 + v46) = MEMORY[0x277D84F90];
    *(v22 + v29) = v28;
    v16 = aNavigator_125;

    v15 = sub_219BF53D4();

    a2 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    v4 = [a1 objectForKey_];

    if (v4)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v58, v59);
      sub_2186CF94C(0);
      v4 = v30;
      swift_dynamicCast();
      v31 = swift_allocObject();
      v31[2] = a1;
      v31[3] = sub_218967168;
      v31[4] = v54;
      v32 = a1;

      sub_219BE6454();

      v15 = aNavigator_125[1];

      v16 = sub_219BF53D4();

      v33 = [v32 objectForKey_];

      if (v33)
      {
        v34 = v44;
        sub_219BF70B4();
        swift_unknownObjectRelease();
        sub_218751558(v58, v59);
        swift_dynamicCast();
        *&v59[0] = v34 | 2;
        v36 = v48;
        v35 = v49;
        v37 = v45;
        (*(v49 + 104))(v48, *MEMORY[0x277D6E598], v45);
        sub_219BE6474();
        (*(v35 + 8))(v36, v37);

        return;
      }

      goto LABEL_11;
    }

LABEL_10:
    _Block_release(v43);
    __break(1u);
LABEL_11:
    _Block_release(v43);
    __break(1u);
    goto LABEL_12;
  }

  *&v59[0] = 0;
  *(&v59[0] + 1) = 0xE000000000000000;
  sub_219BF7314();

  v56 = 0x2074736554;
  v57 = 0xE500000000000000;

  v15 = sub_219BF53D4();

  v4 = [a1 objectForKey_];

  if (!v4)
  {
LABEL_12:
    _Block_release(a2);
    __break(1u);
    _Block_release(v43);
    (v15)[1](v16, v4);

    swift_unexpectedError();
    __break(1u);
    return;
  }

  sub_219BF70B4();
  swift_unknownObjectRelease();
  sub_218751558(v58, v59);
  swift_dynamicCast();
  LOBYTE(v59[0]) = v55;
  v38 = PPT.Test.rawValue.getter();
  MEMORY[0x21CECC330](v38);

  MEMORY[0x21CECC330](0xD00000000000001CLL, 0x8000000219D22BD0);
  v39 = objc_allocWithZone(MEMORY[0x277D6D138]);
  v40 = sub_219BF53D4();

  v41 = [v39 initWithMessage_];

  (a2[2])(a2, v41);
}

uint64_t sub_2194CC7E4(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v6 = sub_219BF0BD4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = [objc_msgSend(a1 backingTag];
  swift_unknownObjectRelease();
  if (v9)
  {
    sub_2194CCB84(0, &qword_280EE6A60, sub_218A35A80, MEMORY[0x277D6CF30]);
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
    sub_2194CCB84(0, &qword_280EE6A60, sub_218A35A80, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_219BE3014();
  }
}

void sub_2194CCB84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2194CCBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_218D42644;

  return sub_2194CCCA0(a3, a4, a5);
}

uint64_t sub_2194CCCA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_2194CCCC4, 0, 0);
}

uint64_t sub_2194CCCC4()
{
  v2 = *(v0 + 64);
  v3 = *(*(*(*(v0 + 56) + 24) + 24) + 16);
  *(v0 + 80) = v3;
  type metadata accessor for PuzzleListTagFeedGroupKnobs(0);

  sub_219BEF524();

  v4 = *(v0 + 16);
  v5 = v3 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleArchiveKnobs;
  v6 = *(v5 + *(type metadata accessor for PuzzleArchiveTagFeedGroupKnobs(0) + 24));

  sub_219BEF524();

  v7 = *(v0 + 24);
  v8 = __OFADD__(v4, v7);
  v9 = v4 + v7;
  if (v8)
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = v3 + OBJC_IVAR____TtC7NewsUI217TagFeedGroupKnobs_puzzleFeaturedKnobs;
  v11 = *(v10 + *(type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs(0) + 24));

  v6 = v11;
  sub_219BEF524();

  v12 = *(v0 + 32);
  v2 = v9 + v12;
  if (__OFADD__(v9, v12))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs(0);

  sub_219BEF524();

  v13 = *(v0 + 40);
  v6 = v2 + v13;
  if (__OFADD__(v2, v13))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v14 = [*(v0 + 48) latestPuzzleIDs];
  if (v14)
  {
    v15 = v14;
    sub_219BF5924();
  }

  v6 = sub_219A79734();
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  v1 = v18;
  v9 = v17;
  v2 = v16;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x277D84F90];
  }

  v22 = *(v21 + 16);

  if (__OFSUB__(v1 >> 1, v9))
  {
    goto LABEL_21;
  }

  if (v22 != (v1 >> 1) - v9)
  {
LABEL_22:
    swift_unknownObjectRelease();
    v18 = v1;
    v17 = v9;
    v16 = v2;
LABEL_7:
    sub_218B666EC(v6, v16, v17, v18);
    v20 = v19;
    goto LABEL_14;
  }

  v20 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v20)
  {
    goto LABEL_15;
  }

  v20 = MEMORY[0x277D84F90];
LABEL_14:
  swift_unknownObjectRelease();
LABEL_15:
  *(v0 + 88) = v20;
  v23 = *(v0 + 72);
  v24 = v23[19];
  v25 = v23[20];
  __swift_project_boxed_opaque_existential_1(v23 + 16, v24);
  v26 = swift_task_alloc();
  *(v0 + 96) = v26;
  *v26 = v0;
  v26[1] = sub_2194CCFE4;

  return MEMORY[0x282192260](v20, 1, v24, v25);
}

uint64_t sub_2194CCFE4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_2194CD17C;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_2194CD10C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2194CD10C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_2194CD17C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2194CD1E8(uint64_t a1)
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

  return sub_2194CCBE8(a1, v6, v7, v8, v1 + v5);
}

uint64_t IssueDownload.identifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t IssueDownload.deinit()
{
  sub_218806FD0(v0 + 16);

  return v0;
}

uint64_t IssueDownload.__deallocating_deinit()
{
  sub_218806FD0(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_2194CD3E4()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_2194CD450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BE6234();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IssueDownload();
  v10 = swift_allocObject();
  *(v10 + 16) = 0u;
  *(v10 + 32) = 0u;
  (*(v7 + 104))(v9, *MEMORY[0x277D6D560], v6);
  sub_2191E3E58(0);
  swift_allocObject();
  *(v10 + 72) = sub_219BE2174();
  v12[1] = 0;
  sub_2186F8638(0, &qword_280EE7AB0, MEMORY[0x277D839F8], MEMORY[0x277D6CB78]);
  swift_allocObject();
  *(v10 + 80) = sub_219BE2174();
  *(v10 + 48) = a1;
  *(v10 + 56) = a2;
  *(v10 + 64) = a3;
  return v10;
}

id sub_2194CD79C()
{
  v1 = v0;
  v27.receiver = v0;
  v27.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v27, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_blueprintViewController];
  sub_219BE8664();
  v3 = sub_219BE7BC4();

  v4 = [v3 collectionViewLayout];

  [v4 setTs:1 sortItemsLogicallyForAccessibility:?];
  [v1 addChildViewController_];
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = result;
  result = [v2 view];
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = result;
  [v6 addSubview_];

  [v2 didMoveToParentViewController_];
  result = [v2 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  result = [v1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  [result bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  [v8 setFrame_];
  sub_219BE8664();
  v18 = sub_219BE7BC4();

  [v18 setContentInsetAdjustmentBehavior_];

  sub_219BE9BB4();
  v19 = v2;
  v20 = sub_219BE9BA4();
  if (!v20)
  {
LABEL_8:
    v24 = [v1 traitCollection];
    sub_2194CF3B4();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2194CF180(&qword_27CC1B1D8, v25, type metadata accessor for MyMagazinesViewController, &unk_219C83030);
    sub_2194CF180(&qword_27CC1B1E0, v26, type metadata accessor for MyMagazinesViewController, &unk_219C8320C);

    sub_219BEEA54();
  }

  v21 = v20;
  result = [v1 view];
  if (result)
  {
    v22 = result;
    [result addSubview_];

    v23 = *&v1[OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_blueprintHorizontalShimView];
    *&v1[OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_blueprintHorizontalShimView] = v21;

    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
  return result;
}

void sub_2194CDB00(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_blueprintViewController);

    sub_219BE8664();
    v4 = sub_219BE7BC4();

    [v4 reloadData];
  }
}

void sub_2194CDC00(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v7 = *a4;
  v8 = v9.receiver;
  objc_msgSendSuper2(&v9, v7, a3);
  sub_219BE1D04();
}

void sub_2194CDC7C()
{
  v1 = v0;
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_viewWillLayoutSubviews);
  v2 = [*&v0[OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_blueprintViewController] view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = [v0 view];
  if (!v4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [v3 setFrame_];
  sub_219BE8734();
  v14 = *&v0[OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_blueprintHorizontalShimView];
  if (!v14)
  {
    return;
  }

  v15 = v14;
  v16 = [v1 view];
  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v15 setFrame_];
}

double sub_2194CDEC4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;

  sub_219BE3494();

  return result;
}

double sub_2194CDF50(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = sub_218A79028;
  v7[4] = v6;

  v8 = a1;

  sub_219BE3494();

  return result;
}

uint64_t sub_2194CE018(uint64_t a1, uint64_t (*a2)(double, double))
{
  v4 = sub_219BE8164();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE86E4();
  swift_getObjectType();
  sub_219BE9E04();
  swift_unknownObjectRelease();
  sub_219BE8154();
  v9 = v8;
  (*(v5 + 8))(v7, v4);
  sub_219BE8664();
  v10 = sub_219BE7BC4();

  v11 = [v10 collectionViewLayout];

  [v11 collectionViewContentSize];
  v13 = v12;

  result = a2(v9, v13);
  v15 = (a1 + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_lastComputedSize);
  *v15 = v9;
  v15[1] = v13;
  return result;
}

uint64_t sub_2194CE208(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_pluggableDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2194CE278(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = *v1;
  v6 = OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_pluggableDelegate;
  *(v3 + 40) = *v1;
  *(v3 + 48) = v6;
  v7 = v5 + v6;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v9;
  return sub_218A5FF2C;
}

uint64_t sub_2194CE31C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_2194CE364(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_2194CE434()
{
  sub_2194CF2D0(0, &qword_27CC1B1C0, MEMORY[0x277D6D618]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_blueprintLayoutProvider);
  sub_2194CF394(0);
  sub_2194CF180(&qword_27CC1B1D0, 255, sub_2194CF394, MEMORY[0x277D6DF38]);
  sub_219BE91E4();
  v6 = sub_219BE6534();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_2194CE5A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_2194CF20C(0, &qword_27CC0E790, MEMORY[0x277D6EC60]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  sub_219BE86A4();
  v11[0] = v11[1];
  sub_2194CF1EC(0);
  sub_2194CF180(&unk_27CC21DB0, 255, sub_2194CF1EC, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v9 = a3(v5);
  (*(v6 + 8))(v8, v5);
  return v9;
}

double sub_2194CE728@<D0>(uint64_t a1@<X8>)
{
  sub_219BE8714();
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
    *(a1 + 24) = v2;
    *(a1 + 32) = *(v3 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_218AE1530(v7);
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_2194CE7F0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_eventHandler);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 32);
  v11 = v5;

  v10(sub_2194CF1E0, v7, ObjectType, v8);

  return result;
}

double sub_2194CE8C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_eventHandler);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  v11 = v5;

  v10(sub_2194CF1C8, v7, ObjectType, v8);

  return result;
}

uint64_t sub_2194CE990(uint64_t result, double a2, double a3)
{
  if (*(result + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_lastComputedSize) != a2 || *(result + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_lastComputedSize + 8) != a3)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      swift_getObjectType();
      sub_2194CF180(&qword_27CC11850, v4, type metadata accessor for MyMagazinesViewController, &unk_219C8317C);
      sub_219BE98B4();
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_2194CEA80(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_blueprintViewController);

    sub_219BE8664();
    v4 = sub_219BE7BC4();

    [v4 setContentOffset:0 animated:{0.0, 0.0}];
  }
}

void sub_2194CEB24(uint64_t a1)
{
  sub_219BE8664();
  v1 = sub_219BE7BC4();

  [v1 reloadData];
}

void sub_2194CEB90(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v11 = OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_isBeingUsedAsPlugin;
    swift_beginAccess();
    if ((*(v3 + v11) & 1) == 0)
    {
      v12 = *(*(v3 + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_eventHandler) + 40);
      ObjectType = swift_getObjectType();
      (*(v12 + 40))(nullsub_1, 0, ObjectType, v12);
    }

    return;
  }

  if (v10 == *MEMORY[0x277D6E928])
  {
    v14 = OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_isBeingUsedAsPlugin;
    swift_beginAccess();
    if ((*(v3 + v14) & 1) == 0)
    {
      v15 = *(*(v3 + OBJC_IVAR____TtC7NewsUI225MyMagazinesViewController_eventHandler) + 40);
      v16 = swift_getObjectType();
      (*(v15 + 32))(nullsub_1, 0, v16, v15);
    }
  }

  else
  {
    if (v10 == *MEMORY[0x277D6E948])
    {
      goto LABEL_3;
    }

    if (v10 == *MEMORY[0x277D6E978])
    {
      return;
    }

    if (v10 == *MEMORY[0x277D6E930])
    {
      goto LABEL_3;
    }

    if (v10 != *MEMORY[0x277D6E958])
    {
      if (v10 == *MEMORY[0x277D6E970])
      {
        sub_219BE8664();
        v17 = sub_219BE7BC4();

        [v17 reloadData];
      }

      else
      {
        sub_219BF7514();
        __break(1u);
      }
    }
  }
}

uint64_t sub_2194CEE98(uint64_t a1, uint64_t a2)
{
  v4 = [v2 tabBarSplitViewFocusable];
  if (v4)
  {
    [v4 toggleSplitViewFocusTo_];
    swift_unknownObjectRelease();
  }

  return sub_218CF7448(a2);
}

unint64_t sub_2194CF0E0()
{
  result = qword_27CC1B1B0;
  if (!qword_27CC1B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B1B0);
  }

  return result;
}

uint64_t sub_2194CF180(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2194CF20C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MyMagazinesSectionDescriptor;
    v8[1] = type metadata accessor for MyMagazinesModel(255);
    v8[2] = sub_218B7DFD4();
    v8[3] = sub_2194CF180(&qword_27CC0B160, 255, type metadata accessor for MyMagazinesModel, &unk_219C3BA30);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2194CF2D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MyMagazinesLayoutSectionDescriptor;
    v8[1] = type metadata accessor for MyMagazinesLayoutModel(255);
    v8[2] = sub_218C3F56C();
    v8[3] = sub_2194CF180(&qword_27CC0F678, 255, type metadata accessor for MyMagazinesLayoutModel, &unk_219CD3578);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2194CF3B4()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = [v3 clearColor];
    [v2 setBackgroundColor_];

    sub_219BE8664();
    v6 = sub_219BE7BC4();

    v5 = [v3 clearColor];
    [v6 setBackgroundColor_];

    [v6 setShowsHorizontalScrollIndicator_];
    [v6 setAlwaysBounceHorizontal_];
    [v6 layoutMargins];
    sub_219BF6024();
    [v6 setContentInset_];
    [v6 setScrollsToTop_];
  }

  else
  {
    __break(1u);
  }
}

void sub_2194CF550(uint64_t a1)
{
  if (!qword_27CC1B1E8)
  {
    sub_2194B6B84();
    v1 = sub_219BE1D44();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1B1E8);
    }
  }
}

void sub_2194CF5B0(uint64_t a1)
{
  v3 = sub_219BE15B4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277D2F4B8], v3, v5);
  v8 = sub_219BDD0F4();
  (*(v4 + 8))(v7, v3);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for SportsNavigationViewController();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;

  swift_unknownObjectRetain();
  v10 = sub_219BE1E04();

  if (v10)
  {
    [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2194CF784(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D85DC();
  return sub_219BE1B74();
}

uint64_t sub_2194CF88C()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  type metadata accessor for NewIssueCheckNotificationCoordinator();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    type metadata accessor for NewIssueNotificationBackgroundAppRefreshRequester();
    result = sub_219BE1E24();
    if (result)
    {
      v3 = result;
      sub_2191FCE08(0);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_219C09EC0;
      v5 = sub_2194CF9C4(&qword_27CC1B1F0, type metadata accessor for NewIssueCheckNotificationCoordinator, &protocol conformance descriptor for NewIssueCheckNotificationCoordinator);
      *(v4 + 32) = v2;
      *(v4 + 40) = v5;
      v6 = sub_2194CF9C4(&qword_27CC1B1F8, type metadata accessor for NewIssueNotificationBackgroundAppRefreshRequester, &unk_219CA0560);
      *(v4 + 48) = v3;
      *(v4 + 56) = v6;
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

uint64_t sub_2194CF9C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2194CFA0C(uint64_t a1)
{
  v2 = type metadata accessor for TodayFeedServiceContext(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  v5 = qword_280F617A0;
  v6 = sub_219BF6214();
  sub_219BE5314("Fetching the today feed service configuration", 45, 2, &dword_2186C1000, v5, v6, MEMORY[0x277D84F90]);
  sub_2194D0FA4(0);
  sub_219BE3204();
  sub_2194D1354(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TodayFeedServiceContext);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_2194D1228(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TodayFeedServiceContext);
  v9 = sub_219BE2E54();
  type metadata accessor for TodayFeedServiceConfig(0);
  sub_219BE2F94();

  v10 = sub_219BE2E54();
  v11 = sub_219BE2FD4();

  return v11;
}

uint64_t sub_2194CFC68(uint64_t *a1)
{
  v46 = *a1;
  v2 = MEMORY[0x277D83D88];
  sub_2186DCC04(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v42 - v4;
  v5 = sub_219BDB954();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BDB0F4();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCC04(0, qword_280EC6638, type metadata accessor for TodayConfigFetchResult, v2);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = type metadata accessor for TodayConfigFetchResult(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  sub_21872AF48(a1 + OBJC_IVAR____TtC7NewsUI229TodayFeedServiceConfigFetcher_prefetchedTodayConfigFetchResult, v12, qword_280EC6638, type metadata accessor for TodayConfigFetchResult);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_2194D1228(v12, v19, type metadata accessor for TodayConfigFetchResult);
    sub_2194D1354(v19, v16, type metadata accessor for TodayConfigFetchResult);
    sub_2186DCC04(0, &unk_280EE6DC0, type metadata accessor for TodayConfigFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE3014();
    sub_2194D11C8(v19, type metadata accessor for TodayConfigFetchResult);
LABEL_16:
    __swift_project_boxed_opaque_existential_1(a1 + 14, a1[17]);

    sub_219BF3CC4();
    v39 = a1[23];
    v40 = a1[24];
    __swift_project_boxed_opaque_existential_1(a1 + 20, v39);
    (*(v40 + 8))(v39, v40);
    v30 = sub_219BE31B4();

    return v30;
  }

  sub_2194D1290(v12, qword_280EC6638, type metadata accessor for TodayConfigFetchResult);
  if (qword_280EE94A0 != -1)
  {
    swift_once();
  }

  if ((sub_219BDC834() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
    v31 = [objc_opt_self() ignoreCacheCachePolicy];
    sub_218E17010(v31);

    goto LABEL_16;
  }

  if (qword_27CC07FB8 != -1)
  {
    swift_once();
  }

  sub_2186DFDD0(&qword_27CC1B200, type metadata accessor for TodayFeedServiceConfigFetcher, &unk_219C834AC);
  sub_219BDC7D4();
  v50 = v52;
  v51 = v53;
  sub_219BDB0D4();
  sub_2187F3BD4();
  v20 = MEMORY[0x277D837D0];
  v21 = sub_219BF7024();
  v23 = v22;
  (*(v44 + 8))(v9, v45);

  v24 = v47;
  sub_219BDB914();
  v26 = v48;
  v25 = v49;
  if ((*(v48 + 48))(v24, 1, v49) != 1)
  {

    v32 = v43;
    (*(v26 + 32))(v43, v24, v25);
    if (qword_280E8D8E8 != -1)
    {
      swift_once();
    }

    v33 = qword_280F617A0;
    sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_219C09BA0;
    v35 = sub_219BDB804();
    v37 = v36;
    *(v34 + 56) = v20;
    *(v34 + 64) = sub_2186FC3BC();
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    v38 = sub_219BF6214();
    sub_219BE5314("Fetching the today feed service configuration from debug url=%@", 63, 2, &dword_2186C1000, v33, v38, v34);

    __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
    sub_218E17320(v32);
    (*(v26 + 8))(v32, v25);
    goto LABEL_16;
  }

  sub_2194D1290(v24, &unk_280EE9D00, MEMORY[0x277CC9260]);
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  v27 = qword_280F617A0;
  v28 = sub_219BF61F4();
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_219C09BA0;
  *(v29 + 56) = v20;
  *(v29 + 64) = sub_2186FC3BC();
  *(v29 + 32) = v21;
  *(v29 + 40) = v23;
  sub_219BE5314("Failed to create today feed config debug url=%@", 47, 2, &dword_2186C1000, v27, v28, v29);

  sub_2194D1300();
  swift_allocError();
  sub_2186DCC04(0, &qword_27CC1B210, sub_2194D0FA4, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE2FF4();
}

uint64_t sub_2194D053C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v57 = a4;
  v52 = a1;
  v53 = a3;
  v5 = MEMORY[0x277D83D88];
  sub_2186DCC04(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v56 = v6;
  MEMORY[0x28223BE20](v6);
  v54 = &v50 - v7;
  v61 = sub_219BEEA84();
  v55 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TodayFeedServiceContext(0);
  MEMORY[0x28223BE20](v9 - 8);
  v58 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCC04(0, qword_280EDF310, type metadata accessor for TodayConfig, v5);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v50 - v12;
  v14 = type metadata accessor for TodayConfig(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v59 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v65 = &v50 - v18;
  sub_2194D0FA4(0);
  v20 = v19;
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for TodayConfigFetchResult(0);
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  v26 = qword_280F617A0;
  v27 = sub_219BF6214();
  sub_219BE5314("Successfully fetched the today feed service configuration", 57, 2, &dword_2186C1000, v26, v27, MEMORY[0x277D84F90]);
  sub_2194D1354(v52, v22, sub_2194D0FA4);
  v28 = *&v22[*(v20 + 64)];
  v51 = *&v22[*(v20 + 48)];
  v52 = v28;
  sub_2194D1228(v22, v25, type metadata accessor for TodayConfigFetchResult);
  sub_2194D10B0(a2 + 72, &v62);
  if (v64)
  {
    __swift_project_boxed_opaque_existential_1(&v62, v64);
    sub_218DFFE2C(v25, v13);
    (*(v15 + 56))(v13, 0, 1, v14);
    __swift_destroy_boxed_opaque_existential_1(&v62);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      v29 = v25;
      sub_2194D1228(v13, v65, type metadata accessor for TodayConfig);
      goto LABEL_9;
    }
  }

  else
  {
    sub_2194D1140(&v62);
    (*(v15 + 56))(v13, 1, 1, v14);
  }

  v29 = v25;
  sub_2194D1354(v25, v65, type metadata accessor for TodayConfig);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_2194D1290(v13, qword_280EDF310, type metadata accessor for TodayConfig);
  }

LABEL_9:
  v30 = v58;
  sub_2194D1354(v53, v58, type metadata accessor for TodayFeedServiceContext);
  sub_2194D1354(v65, v59, type metadata accessor for TodayConfig);
  v31 = *(v23 + 20);
  v32 = *(v23 + 24);
  v50 = v29;
  v33 = *(v29 + v31);
  v34 = *(v29 + v32);
  v35 = v55;
  v36 = v61;
  (*(v55 + 104))(v60, *MEMORY[0x277D32220], v61);
  v37 = *(a2 + 152);
  v53 = *(a2 + OBJC_IVAR____TtC7NewsUI229TodayFeedServiceConfigFetcher_featureAvailability);
  type metadata accessor for TodayFeedServiceConfig(0);
  v38 = swift_allocObject();
  *(v38 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_canCache) = 0;
  sub_2194D1354(v30, v38 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, type metadata accessor for TodayFeedServiceContext);
  v39 = v59;
  sub_2194D1354(v59, v38 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig, type metadata accessor for TodayConfig);
  *(v38 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfigData) = v33;
  *(v38 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_paidBundleConfig) = v51;
  *(v38 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig) = v34;
  v40 = v60;
  (*(v35 + 16))(v38 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cachePolicy, v60, v36);
  *(v38 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_subscriptionController) = v37;

  v41 = v37;
  v42 = v53;
  swift_unknownObjectRetain();
  *(v38 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_refreshInterval) = [swift_unknownObjectRetain() autoRefreshMinimumInterval];
  v43 = v58;
  v62 = sub_21936076C();
  v63 = v44;
  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_21872AF48(v39, v54, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v45 = sub_219BF5484();
  MEMORY[0x21CECC330](v45);

  v46 = v62;
  v47 = v63;
  (*(v35 + 8))(v40, v61);
  sub_2194D11C8(v39, type metadata accessor for TodayConfig);
  sub_2194D11C8(v43, type metadata accessor for TodayFeedServiceContext);
  sub_2194D11C8(v65, type metadata accessor for TodayConfig);
  result = sub_2194D11C8(v50, type metadata accessor for TodayConfigFetchResult);
  v49 = (v38 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_cacheKey);
  *v49 = v46;
  v49[1] = v47;
  *(v38 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_sportsOnboardingState) = v52;
  *(v38 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_featureAvailability) = v42;
  *v57 = v38;
  return result;
}

double sub_2194D0D44(uint64_t a1)
{
  if (qword_280E8D8E8 != -1)
  {
    swift_once();
  }

  v1 = qword_280F617A0;
  v2 = sub_219BF61F4();
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("Failed to fetch the today feed service configuration, error=%{public}@", 70, 2, &dword_2186C1000, v1, v2, v3);

  return result;
}

uint64_t sub_2194D0E9C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  sub_2194D1140(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));

  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  sub_2194D1290(v0 + OBJC_IVAR____TtC7NewsUI229TodayFeedServiceConfigFetcher_prefetchedTodayConfigFetchResult, qword_280EC6638, type metadata accessor for TodayConfigFetchResult);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2194D0FA4(uint64_t a1)
{
  if (!qword_280EC65D0)
  {
    type metadata accessor for TodayConfigFetchResult(255);
    sub_2193D00AC();
    type metadata accessor for FCSportsOnboardingState(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_280EC65D0);
    }
  }
}

uint64_t sub_2194D10B0(uint64_t a1, uint64_t a2)
{
  sub_2187B1B90(0, &qword_280EB9BB8, qword_280EB9BC0, &protocol descriptor for TodayConfigTransformerType, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2194D1140(uint64_t a1)
{
  sub_2187B1B90(0, &qword_280EB9BB8, qword_280EB9BC0, &protocol descriptor for TodayConfigTransformerType, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2194D11C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2194D1228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2194D1290(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186DCC04(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2194D1300()
{
  result = qword_27CC1B208;
  if (!qword_27CC1B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B208);
  }

  return result;
}

uint64_t sub_2194D1354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2194D13D0()
{
  result = qword_27CC1B218;
  if (!qword_27CC1B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B218);
  }

  return result;
}

uint64_t sub_2194D1424@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for SearchHomeModule();
  result = sub_219BE1E04();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &off_282A30F30;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2194D14D0@<X0>(void *a1@<X0>, uint64_t **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EB7130, &protocol descriptor for SearchRecentsDataSourceType, 1);
  result = sub_219BE1E34();
  if (v12)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (&v11[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = sub_2194D6648(*v7);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v9;
    a2[1] = &protocol witness table for RecentSearchManager;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2194D1608(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2186C6148(0, &qword_280E8E540, 0x277D31278);
  v3 = sub_219BE1E24();
  if (v3)
  {
    v4 = v3;
    [v3 addObserver_];
  }

  else
  {
    __break(1u);
  }
}

double sub_2194D16A4()
{
  type metadata accessor for SearchHomeModule();
  sub_219BE2904();

  type metadata accessor for SearchHomeViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_280ECD248, &protocol descriptor for SearchHomeStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &unk_280ECD250, &protocol descriptor for SearchHomeRouterType, 1);
  sub_219BE2914();
  type metadata accessor for SearchHomeRouter();
  sub_219BE19C4();

  sub_2186C709C(0, qword_280EBA448, &protocol descriptor for SearchHomeEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EC0440, &protocol descriptor for SearchHomeInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_280EC9D08, &protocol descriptor for SearchHomeTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EBD250, &protocol descriptor for SearchHomeDataManagerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EB7130, &protocol descriptor for SearchRecentsDataSourceType, 1);
  sub_219BE2914();

  type metadata accessor for SearchRecentsDataSource();
  sub_219BE2904();

  sub_2194D76C4(0, &qword_280EE5450, MEMORY[0x277D6D8B8]);
  sub_219BE2904();

  type metadata accessor for SearchHomeBlueprintModifierFactory();
  sub_219BE2904();

  sub_2194D67B8(0, v0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2194D70A8(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280E98000, &protocol descriptor for SearchHomeSectionTitleViewRendererType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E9A920, &protocol descriptor for SearchHomeSectionTitleViewStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E92FE0, &protocol descriptor for SearchHomeSectionTitleViewLayoutAttributesFactoryType, 1);
  sub_219BE2914();

  sub_219BE9C54();
  sub_219BE2904();

  sub_2194D68C4(0, v1);
  sub_219BE2904();

  sub_2194D6CD8(0, &qword_280EE4260, sub_2194D720C, sub_218D56F7C, MEMORY[0x277D6E7B0]);
  sub_219BE2904();

  sub_2194D6CD8(0, &qword_280EE4CC8, sub_218951470, sub_2189514C4, MEMORY[0x277D6DF28]);
  sub_219BE2904();

  type metadata accessor for SearchHomeBlueprintLayoutBuilder();
  sub_219BE2904();

  sub_2194D72FC(0, v2);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C6148(0, &qword_280E8E4C0, 0x277D752A0);
  sub_219BE2904();

  sub_2194D6990(0);
  sub_219BE2904();

  sub_2186C709C(0, &qword_280EE3DE0, MEMORY[0x277D6E8F0], 0);
  sub_219BE2914();
  sub_219BE95A4();
  sub_219BE19C4();

  sub_218BF0580(0);
  sub_219BE2904();

  sub_2194D6B0C(0, v3);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2194D6E0C(0, v4);
  sub_219BE2904();
  sub_219BE19D4();

  sub_2194D6F88(0, v5);
  sub_219BE2904();

  type metadata accessor for SearchHomeBlueprintViewCellProvider();
  sub_219BE2904();
  sub_219BE19D4();

  type metadata accessor for SearchHomeBlueprintViewSupplementaryViewProvider();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EC0A30, &protocol descriptor for RecentSearchRendererType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280EC7090, &protocol descriptor for RecentSearchStylerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, qword_280E96B68, &protocol descriptor for RecentSearchLayoutAttributesFactoryType, 1);
  sub_219BE2914();

  sub_2194D75A0(0, &qword_280EE4630, MEMORY[0x277D6E388], v6);
  sub_219BE2904();

  sub_219BE70E4();
  sub_219BE2904();

  sub_2194D7450(0);
  sub_219BE2904();
  sub_219BE19D4();

  sub_219BE8A54();
  sub_219BE2904();
  sub_219BE19D4();

  sub_2186C709C(0, &unk_280EE3C80, MEMORY[0x277D6EA40], 1);
  sub_219BE2914();

  return result;
}

void *sub_2194D22F4(void *a1)
{
  sub_218718690(a1, v11);
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
  sub_21872F37C();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21874EEB8(0, &unk_280E906B0, sub_2186FB6D4, &type metadata for SearchOfflineModel, MEMORY[0x277D33538]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if (v10)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC04E8, &protocol descriptor for SearchFilterProviderType, 0);
  result = sub_219BE1E34();
  if (v7)
  {
    type metadata accessor for SearchHomeModule();
    v6 = swift_allocObject();
    v6[8] = 0;
    sub_21875F93C(v11, (v6 + 2));
    v6[7] = v3;
    v6[9] = v4;
    v6[10] = v5;
    v6[11] = v9;
    v6[12] = v7;
    v6[13] = v8;
    return v6;
  }

LABEL_11:
  __break(1u);
  return result;
}

char *sub_2194D24EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280ECD248, &protocol descriptor for SearchHomeStylerType, 1);
  result = sub_219BE1E34();
  if (!v51)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBA448, &protocol descriptor for SearchHomeEventHandlerType, 0);
  result = sub_219BE1E34();
  v3 = v48;
  if (!v48)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D72FC(0, v4);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC3D88, &protocol descriptor for RecentSearchManagerType, 0);
  result = sub_219BE1E34();
  v6 = v46;
  if (!v46)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v37 = v49;
  v36 = v47;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_219BE1E34();
  if ((v45 & 1) == 0)
  {
    v7 = v44;
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v50, v51);
    v35[2] = v35;
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for SearchHomeStyler();
    v42 = v14;
    v43 = &off_282A59E38;
    v41[0] = v13;
    v15 = type metadata accessor for SearchHomeViewController();
    v16 = objc_allocWithZone(v15);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
    v35[1] = v35;
    v18 = MEMORY[0x28223BE20](v17);
    v20 = (v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v40[3] = v14;
    v40[4] = &off_282A59E38;
    v40[0] = v22;
    *&v16[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    sub_218718690(v40, &v16[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_styler]);
    v23 = &v16[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_eventHandler];
    v24 = v37;
    *v23 = v3;
    *(v23 + 1) = v24;
    *&v16[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_blueprintViewController] = v5;
    v25 = &v16[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_recentSearchManager];
    v26 = v36;
    *v25 = v6;
    *(v25 + 1) = v26;
    *&v16[OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_origination] = v7;
    v39.receiver = v16;
    v39.super_class = v15;
    swift_unknownObjectRetain();
    v27 = v5;
    swift_unknownObjectRetain();
    v28 = objc_msgSendSuper2(&v39, sel_initWithNibName_bundle_, 0, 0);
    *(*(v28 + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_eventHandler) + 24) = &off_282A99E60;
    swift_unknownObjectWeakAssign();
    v29 = *(v28 + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_blueprintViewController);
    v30 = v28;
    v31 = v29;
    sub_219BE8744();

    v32 = *(v30 + OBJC_IVAR____TtC7NewsUI224SearchHomeViewController_recentSearchManager + 8);
    ObjectType = swift_getObjectType();
    v34 = *(v32 + 8);
    swift_unknownObjectRetain();
    v34(v38, v30, &off_282A99E38, v7, ObjectType, v32);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v38);
    __swift_destroy_boxed_opaque_existential_1(v40);
    __swift_destroy_boxed_opaque_existential_1(v41);
    __swift_destroy_boxed_opaque_existential_1(v50);
    return v30;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_2194D29F0@<X0>(void *a1@<X0>, void *a2@<X8>)
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
    v11 = sub_2187040C0(&qword_280EDFED0, type metadata accessor for BaseStyler, &unk_219C653D4);
    v20[4] = v11;
    v20[0] = v9;
    v12 = type metadata accessor for SearchHomeStyler();
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
    a2[4] = &off_282A59E38;
    *a2 = v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2194D2C50@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_21874EEB8(0, &qword_280EE5A80, sub_2186CF9A8, &type metadata for NewsActivity2, MEMORY[0x277D6D5F0]);
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for SearchHomeRouter();
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      result = sub_21875F93C(v9, v8 + 24);
      *(v8 + 64) = v6;
      *(v8 + 72) = v5;
      a2[3] = v7;
      a2[4] = &off_282A628F0;
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

void sub_2194D2D84(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchHomeViewController();
  v2 = sub_219BE1E24();
  swift_unknownObjectWeakAssign();
}

void *sub_2194D2E04@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC0440, &protocol descriptor for SearchHomeInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280ECD250, &protocol descriptor for SearchHomeRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC9D08, &protocol descriptor for SearchHomeTrackerType, 1);
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
    v17 = sub_2194D78D4(v5, v6, *v10, *v15);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A6BC48;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2194D30B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EBD250, &protocol descriptor for SearchHomeDataManagerType, 0);
  result = sub_219BE1E34();
  if (!v9)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D67B8(0, v5);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchHomeBlueprintModifierFactory();
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    sub_2194D7748(0);
    v8 = swift_allocObject();
    v8[3] = 0;
    result = swift_unknownObjectWeakInit();
    v8[6] = v9;
    v8[7] = v10;
    v8[4] = v6;
    v8[5] = v7;
    *a2 = v8;
    a2[1] = &off_282A89518;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2194D31F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_219BE14C4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE14A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v13 = result;
    v14 = type metadata accessor for SearchHomeTracker();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    (*(v5 + 104))(v7, *MEMORY[0x277D2F290], v4);

    sub_219BE1484();
    sub_2187040C0(&qword_280EE8010, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
    sub_219BDD1F4();

    result = (*(v9 + 8))(v11, v8);
    a2[3] = v14;
    a2[4] = &off_282A60490;
    *a2 = v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2194D345C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EC3D88, &protocol descriptor for RecentSearchManagerType, 0);
  result = sub_219BE1E34();
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    result = sub_219BE1E34();
    if ((v6 & 1) == 0)
    {
      type metadata accessor for SearchHomeDataManager();
      result = swift_allocObject();
      result[2] = v7;
      result[3] = v8;
      result[4] = v5;
      *a2 = result;
      a2[1] = &off_282A64FB0;
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

uint64_t sub_2194D3578@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = a2(0);
  result = sub_219BE1E24();
  if (result)
  {
    a4[3] = v7;
    a4[4] = a3;
    *a4 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2194D35FC()
{
  type metadata accessor for SearchRecentsDataSource();
  result = swift_allocObject();
  *(result + 16) = 10;
  return result;
}

uint64_t sub_2194D362C(__n128 a1)
{
  sub_2194D76C4(0, &qword_280EE5450, MEMORY[0x277D6D8B8]);
  swift_allocObject();
  return sub_219BE6F94();
}

uint64_t sub_2194D3680()
{
  type metadata accessor for SearchHomeBlueprintModifierFactory();

  return swift_allocObject();
}

uint64_t sub_2194D36B4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D76C4(0, &qword_280EE5450, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2194D68C4(0, v3);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2194D67B8(0, v4);
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

void sub_2194D37B0(__n128 a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277D6E728];
  sub_2194D76C4(0, &qword_280EE4400, MEMORY[0x277D6E728]);
  swift_allocObject();
  sub_219BE96E4();
  sub_2194D76C4(0, &qword_280EE4568, MEMORY[0x277D6E3B8]);
  swift_allocObject();
  sub_2194D755C(&unk_280EE4408, &qword_280EE4400, v4, MEMORY[0x277D6E730], v5);
  sub_219BE8FA4();
  sub_219BE6ED4();

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_2194D70A8(0);
  if (sub_219BE1E24())
  {
    swift_allocObject();
    sub_2187040C0(&qword_280EE3C28, sub_2194D70A8, MEMORY[0x277D6EAC8]);
    sub_219BE8FA4();
    sub_219BE6ED4();
  }

  else
  {
    __break(1u);
  }
}

void *sub_2194D3968(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D6CD8(0, &qword_280EE4CC8, sub_218951470, sub_2189514C4, MEMORY[0x277D6DF28]);
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
  type metadata accessor for SearchHomeBlueprintLayoutBuilder();
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D6CD8(0, &qword_280EE4260, sub_2194D720C, sub_218D56F7C, MEMORY[0x277D6E7B0]);
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
    sub_2194D70A8(0);
    swift_allocObject();
    return sub_219BEA484();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_2194D3BEC@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SearchHomeSectionTitleViewStyler();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_282A8A500;
  *a1 = result;
  return result;
}

void *sub_2194D3C54@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E9A920, &protocol descriptor for SearchHomeSectionTitleViewStylerType, 1);
  result = sub_219BE1E34();
  if (v25)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for SearchHomeSectionTitleViewStyler();
    v23[3] = v14;
    v23[4] = &off_282A8A500;
    v23[0] = v13;
    v15 = a2(0);
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v23, v14);
    v18 = MEMORY[0x28223BE20](v17);
    v20 = (v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v16[5] = v14;
    v16[6] = &off_282A8A500;
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

void *sub_2194D3E8C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D6990(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, &unk_280EE39D0, MEMORY[0x277D6EBC0], 1);
    result = sub_219BE1E34();
    if (v3)
    {
      sub_2194D68C4(0, 0);
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

uint64_t sub_2194D3F8C(__n128 a1)
{
  sub_2194D6CD8(0, &qword_280EE4260, sub_2194D720C, sub_218D56F7C, MEMORY[0x277D6E7B0]);
  swift_allocObject();
  return sub_219BE9964();
}

uint64_t sub_2194D4008(__n128 a1)
{
  sub_2194D6CD8(0, &qword_280EE4CC8, sub_218951470, sub_2189514C4, MEMORY[0x277D6DF28]);
  swift_allocObject();
  return sub_219BE8554();
}

void *sub_2194D4084(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280E92FE0, &protocol descriptor for SearchHomeSectionTitleViewLayoutAttributesFactoryType, 1);
  result = sub_219BE1E34();
  if (v38)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2186C709C(0, qword_280E96B68, &protocol descriptor for RecentSearchLayoutAttributesFactoryType, 1);
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
      v15 = type metadata accessor for SearchHomeSectionTitleViewLayoutAttributesFactory();
      v34[3] = v15;
      v34[4] = &off_282A844C8;
      v34[0] = v13;
      v16 = type metadata accessor for RecentSearchLayoutAttributesFactory();
      v32 = v16;
      v33 = &off_282A31FF0;
      v31[0] = v14;
      type metadata accessor for SearchHomeBlueprintLayoutBuilder();
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
      v17[6] = &off_282A844C8;
      v17[2] = v28;
      v17[10] = v16;
      v17[11] = &off_282A31FF0;
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

void *sub_2194D4490(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D76C4(0, &qword_280EE5450, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D6990(0);
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
  sub_2194D75A0(0, &qword_280EE4630, MEMORY[0x277D6E388], v3);
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
    sub_2187040C0(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
    sub_2194D72FC(0, v4);
    v6 = objc_allocWithZone(v5);
    return sub_219BE8754();
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_2194D4800(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218BF0580(0);
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

uint64_t sub_2194D48A8(void *a1)
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
  sub_2194D6B0C(0, v3);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D6E0C(0, v4);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D6F88(0, v5);
  result = sub_219BE1E24();
  if (result)
  {
    sub_2194D6990(0);
    swift_allocObject();
    return sub_219BE7BB4();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_2194D4A14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D6990(0);
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

uint64_t sub_2194D4B00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unsigned int *a4, uint64_t (*a5)(char *))
{
  v7 = (a3)(0, a2);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  (*(v11 + 104))(&v13 - v9, *a4, v8);
  return a5(v10);
}

uint64_t sub_2194D4BDC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BE9C54();
  result = sub_219BE1DE4();
  if (result)
  {
    sub_218BF0580(0);
    v3 = objc_allocWithZone(v2);
    return sub_219BE9454();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2194D4C6C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D76C4(0, &qword_280EE5450, MEMORY[0x277D6D8B8]);
  v2 = sub_219BE1E24();
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D6CD8(0, &qword_280EE4CC8, sub_218951470, sub_2189514C4, MEMORY[0x277D6DF28]);
  if (!sub_219BE1E24())
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchHomeBlueprintViewCellProvider();
  sub_218718690(a1, v9);
  v4 = swift_allocObject();
  sub_21875F93C(v9, v4 + 16);
  v5 = sub_219BE1E04();

  if (!v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for SearchHomeBlueprintViewSupplementaryViewProvider();
  if (sub_219BE1E24())
  {
    *&v9[0] = v3;
    sub_2194D6B0C(0, v6);
    v8 = objc_allocWithZone(v7);
    sub_219BE9B64();
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_2194D4E68(void *a1, void *a2)
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

void *sub_2194D4F78(uint64_t a1, void *a2)
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

void *sub_2194D504C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D76C4(0, &qword_280EE5450, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D6CD8(0, &qword_280EE4CC8, sub_218951470, sub_2189514C4, MEMORY[0x277D6DF28]);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D75A0(0, &qword_280EE4630, MEMORY[0x277D6E388], v3);
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

  sub_2187040C0(&qword_280EE8EE0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE4800, MEMORY[0x277D6E170], 1);
  result = sub_219BE1E34();
  if (v6)
  {
    sub_2194D6E0C(0, 0);
    v5 = objc_allocWithZone(v4);
    return sub_219BE9744();
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2194D5318(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_219BE70E4();
  sub_219BE1DE4();
  sub_219BE9764();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2194D7450(0);
  if (sub_219BE1E24())
  {
    sub_2187040C0(&qword_280EE3FF8, sub_2194D7450, MEMORY[0x277D6E7F8]);
  }

  return sub_219BE9774();
}

uint64_t sub_2194D541C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D76C4(0, &qword_280EE5450, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2194D6CD8(0, &qword_280EE4CC8, sub_218951470, sub_2189514C4, MEMORY[0x277D6DF28]);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2194D6F88(0, v3);
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

void *sub_2194D553C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EC0A30, &protocol descriptor for RecentSearchRendererType, 1);
  result = sub_219BE1E34();
  if (v18)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v3 = MEMORY[0x28223BE20](v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for RecentSearchRenderer();
    v16[3] = v8;
    v16[4] = &off_282A7B3C0;
    v16[0] = v7;
    type metadata accessor for SearchHomeBlueprintViewCellProvider();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[7] = v8;
    v9[8] = &off_282A7B3C0;
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

void sub_2194D5758(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchHomeViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A99E58;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void *sub_2194D57EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280E98000, &protocol descriptor for SearchHomeSectionTitleViewRendererType, 1);
  result = sub_219BE1E34();
  if (v18)
  {
    v2 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
    v3 = MEMORY[0x28223BE20](v2);
    v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 16))(v5, v3);
    v7 = *v5;
    v8 = type metadata accessor for SearchHomeSectionTitleViewRenderer();
    v16[3] = v8;
    v16[4] = &off_282A42360;
    v16[0] = v7;
    type metadata accessor for SearchHomeBlueprintViewSupplementaryViewProvider();
    v9 = swift_allocObject();
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v16, v8);
    v11 = MEMORY[0x28223BE20](v10);
    v13 = (v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v13;
    v9[7] = v8;
    v9[8] = &off_282A42360;
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

void sub_2194D5A08(uint64_t *a1, void *a2)
{
  v2 = *a1;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for SearchHomeViewController();
  v4 = sub_219BE1E24();
  v3 = &off_282A99E48;
  if (!v4)
  {
    v3 = 0;
  }

  *(v2 + 24) = v3;
  swift_unknownObjectWeakAssign();
}

void *sub_2194D5A9C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC7090, &protocol descriptor for RecentSearchStylerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for RecentSearchStyler();
    v19[3] = v10;
    v19[4] = &off_282A64B40;
    v19[0] = v9;
    v11 = type metadata accessor for RecentSearchRenderer();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A64B40;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A7B3C0;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2194D5CC8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC7090, &protocol descriptor for RecentSearchStylerType, 1);
  result = sub_219BE1E34();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for RecentSearchStyler();
    v19[3] = v10;
    v19[4] = &off_282A64B40;
    v19[0] = v9;
    v11 = type metadata accessor for RecentSearchLayoutAttributesFactory();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_282A64B40;
    v12[2] = v18;
    sub_2194D765C();
    swift_allocObject();
    v12[7] = sub_219BE2D94();
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_282A31FF0;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2194D5F14(void *a1)
{
  v2 = sub_219BE9BC4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_219BE9BE4();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  sub_2194D75A0(0, &qword_280EE46D0, MEMORY[0x277D6E380], v7);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D76C4(0, &qword_280EE5450, MEMORY[0x277D6D8B8]);
  result = sub_219BE1E24();
  if (result)
  {
    v14 = result;
    (*(v10 + 104))(v12, *MEMORY[0x277D6E378], v9);
    *v5 = 0;
    (*(v3 + 104))(v5, *MEMORY[0x277D6E828], v2);
    sub_219BE9BD4();
    v16[1] = v14;
    sub_2194D75A0(0, &qword_280EE4630, MEMORY[0x277D6E388], v15);
    swift_allocObject();
    return sub_219BE8EC4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2194D61C4(void *a1)
{
  sub_2187F2110(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09EC0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D7450(0);
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = sub_2187040C0(&qword_280EE4000, sub_2194D7450, MEMORY[0x277D6E800]);
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

uint64_t sub_2194D6300(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D6990(0);
  result = sub_219BE1E24();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2194D76C4(0, &qword_280EE5450, MEMORY[0x277D6D8B8]);
    result = sub_219BE1E24();
    if (result)
    {
      sub_2194D7450(0);
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

uint64_t sub_2194D6430(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D6990(0);
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

uint64_t sub_2194D64EC(uint64_t a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_2194D72FC(0, v8);
  v9 = sub_219BE1E24();
  if (v9)
  {
    v10 = v9;
    v11 = sub_2187040C0(a3, sub_2194D72FC, a4);
    v9 = v10;
  }

  else
  {
    v11 = 0;
  }

  return a5(v9, v11);
}

uint64_t sub_2194D65A0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2194D72FC(0, v3);
  v5 = v4;
  result = sub_219BE1E24();
  if (result)
  {
    v7 = result;
    a2[3] = v5;
    result = sub_2187040C0(&qword_280EE49B8, sub_2194D72FC, MEMORY[0x277D6DFC8]);
    a2[4] = result;
    *a2 = v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_2194D6648(uint64_t *a1)
{
  v1 = *a1;
  v14[3] = v1;
  v14[4] = &off_282A45A88;
  v14[0] = a1;
  v2 = type metadata accessor for RecentSearchManager();
  v3 = objc_allocWithZone(v2);
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v14, v1);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v12 - v6);
  (*(v8 + 16))(&v12 - v6, v5);
  v9 = *v7;
  v13[3] = v1;
  v13[4] = &off_282A45A88;
  v13[0] = v9;
  *&v3[OBJC_IVAR____TtC7NewsUI219RecentSearchManager_observers] = MEMORY[0x277D84F90];
  sub_218718690(v13, &v3[OBJC_IVAR____TtC7NewsUI219RecentSearchManager_searchRecentsDataSource]);
  v12.receiver = v3;
  v12.super_class = v2;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v13);
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v10;
}

void sub_2194D67B8(uint64_t a1, __n128 a2)
{
  if (!qword_280EE55A8)
  {
    v2 = MEMORY[0x277D6D8B8];
    sub_2194D76C4(255, &qword_280EE5450, MEMORY[0x277D6D8B8]);
    sub_2194D68C4(255, v3);
    sub_2194D755C(&qword_280EE5458, &qword_280EE5450, v2, MEMORY[0x277D6D8C8], v4);
    sub_2187040C0(&qword_280EE5280, sub_2194D68C4, MEMORY[0x277D6D960]);
    v5 = sub_219BE6F54();
    if (!v6)
    {
      atomic_store(v5, &qword_280EE55A8);
    }
  }
}

void sub_2194D68C4(uint64_t a1, __n128 a2)
{
  if (!qword_280EE5278)
  {
    sub_2194D6990(255);
    sub_218931D04();
    sub_218931D5C();
    sub_2187040C0(&qword_280EE4EB8, sub_2194D6990, MEMORY[0x277D6DC88]);
    v2 = sub_219BE72E4();
    if (!v3)
    {
      atomic_store(v2, &qword_280EE5278);
    }
  }
}

void sub_2194D6990(uint64_t a1)
{
  if (!qword_280EE4EB0)
  {
    sub_2186C6148(255, &qword_280E8E4C0, 0x277D752A0);
    sub_2194D6B0C(255, v1);
    sub_2194D6E0C(255, v2);
    sub_2194D6F88(255, v3);
    type metadata accessor for SearchHomeViewController();
    sub_2187040C0(&qword_280EE3EA0, sub_2194D6B0C, MEMORY[0x277D6E820]);
    sub_2187040C0(&qword_280EE4328, sub_2194D6E0C, MEMORY[0x277D6E738]);
    sub_2187040C0(&qword_280EE3D40, sub_2194D6F88, MEMORY[0x277D6E918]);
    v4 = sub_219BE7BE4();
    if (!v5)
    {
      atomic_store(v4, &qword_280EE4EB0);
    }
  }
}

void sub_2194D6B0C(uint64_t a1, __n128 a2)
{
  if (!qword_280EE3E98)
  {
    v2 = MEMORY[0x277D6D8B8];
    sub_2194D76C4(255, &qword_280EE5450, MEMORY[0x277D6D8B8]);
    sub_2194D6CD8(255, &qword_280EE4CC8, sub_218951470, sub_2189514C4, MEMORY[0x277D6DF28]);
    type metadata accessor for SearchHomeBlueprintViewCellProvider();
    type metadata accessor for SearchHomeBlueprintViewSupplementaryViewProvider();
    sub_2194D755C(&qword_280EE5458, &qword_280EE5450, v2, MEMORY[0x277D6D8C8], v3);
    sub_2194D6D70();
    sub_2187040C0(qword_280E9C7B8, type metadata accessor for SearchHomeBlueprintViewCellProvider, &unk_219C8C5D4);
    sub_2187040C0(qword_280EE1E78, type metadata accessor for SearchHomeBlueprintViewSupplementaryViewProvider, &unk_219C0CD54);
    sub_218D56F7C();
    v4 = sub_219BE9B94();
    if (!v5)
    {
      atomic_store(v4, &qword_280EE3E98);
    }
  }
}

void sub_2194D6CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, void *))
{
  if (!*a2)
  {
    v11[0] = &type metadata for SearchHomeLayoutSectionDescriptor;
    v11[1] = &type metadata for SearchHomeLayoutModel;
    v11[2] = a3();
    v11[3] = a4();
    v9 = a5(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_2194D6D70()
{
  result = qword_280EE4CD0;
  if (!qword_280EE4CD0)
  {
    sub_2194D6CD8(255, &qword_280EE4CC8, sub_218951470, sub_2189514C4, MEMORY[0x277D6DF28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4CD0);
  }

  return result;
}

void sub_2194D6E0C(uint64_t a1, __n128 a2)
{
  if (!qword_280EE4320)
  {
    v2 = MEMORY[0x277D6D8B8];
    sub_2194D76C4(255, &qword_280EE5450, MEMORY[0x277D6D8B8]);
    sub_2194D6CD8(255, &qword_280EE4CC8, sub_218951470, sub_2189514C4, MEMORY[0x277D6DF28]);
    type metadata accessor for SearchHomeViewController();
    sub_2194D755C(&qword_280EE5458, &qword_280EE5450, v2, MEMORY[0x277D6D8C8], v3);
    sub_2194D6D70();
    sub_2187040C0(&qword_280EC0438, type metadata accessor for SearchHomeViewController, &unk_219CC4594);
    sub_218D56F7C();
    v4 = sub_219BE9794();
    if (!v5)
    {
      atomic_store(v4, &qword_280EE4320);
    }
  }
}

void sub_2194D6F88(uint64_t a1, __n128 a2)
{
  if (!qword_280EE3D38)
  {
    v2 = MEMORY[0x277D6D8B8];
    sub_2194D76C4(255, &qword_280EE5450, MEMORY[0x277D6D8B8]);
    sub_2194D6CD8(255, &qword_280EE4CC8, sub_218951470, sub_2189514C4, MEMORY[0x277D6DF28]);
    sub_2194D755C(&qword_280EE5458, &qword_280EE5450, v2, MEMORY[0x277D6D8C8], v3);
    sub_2194D6D70();
    v4 = sub_219BE9F34();
    if (!v5)
    {
      atomic_store(v4, &qword_280EE3D38);
    }
  }
}

void sub_2194D70A8(uint64_t a1)
{
  if (!qword_280EE3C20)
  {
    sub_2194D6CD8(255, &qword_280EE4CC8, sub_218951470, sub_2189514C4, MEMORY[0x277D6DF28]);
    type metadata accessor for SearchHomeBlueprintLayoutBuilder();
    sub_2194D6CD8(255, &qword_280EE4260, sub_2194D720C, sub_218D56F7C, MEMORY[0x277D6E7B0]);
    sub_2194D6D70();
    sub_2187040C0(qword_280EA4D10, type metadata accessor for SearchHomeBlueprintLayoutBuilder, &unk_219C385F0);
    sub_2194D7260();
    v1 = sub_219BEA4A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE3C20);
    }
  }
}

unint64_t sub_2194D720C()
{
  result = qword_280EA1FA8;
  if (!qword_280EA1FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1FA8);
  }

  return result;
}

unint64_t sub_2194D7260()
{
  result = qword_280EE4268;
  if (!qword_280EE4268)
  {
    sub_2194D6CD8(255, &qword_280EE4260, sub_2194D720C, sub_218D56F7C, MEMORY[0x277D6E7B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE4268);
  }

  return result;
}

void sub_2194D72FC(uint64_t a1, __n128 a2)
{
  if (!qword_280EE49B0)
  {
    v2 = MEMORY[0x277D6D8B8];
    sub_2194D76C4(255, &qword_280EE5450, MEMORY[0x277D6D8B8]);
    sub_2194D6990(255);
    type metadata accessor for SearchHomeViewController();
    sub_2194D755C(&qword_280EE5458, &qword_280EE5450, v2, MEMORY[0x277D6D8C8], v3);
    sub_2187040C0(&qword_280EE4EB8, sub_2194D6990, MEMORY[0x277D6DC88]);
    sub_2187040C0(&qword_280EC0438, type metadata accessor for SearchHomeViewController, &unk_219CC4594);
    v4 = sub_219BE8774();
    if (!v5)
    {
      atomic_store(v4, &qword_280EE49B0);
    }
  }
}

void sub_2194D7450(uint64_t a1)
{
  if (!qword_280EE3FF0)
  {
    sub_2194D6990(255);
    v1 = MEMORY[0x277D6D8B8];
    sub_2194D76C4(255, &qword_280EE5450, MEMORY[0x277D6D8B8]);
    sub_2187040C0(&qword_280EE4EB8, sub_2194D6990, MEMORY[0x277D6DC88]);
    sub_2194D755C(&unk_280EE5460, &qword_280EE5450, v1, MEMORY[0x277D6D8C0], v2);
    v3 = sub_219BE9AD4();
    if (!v4)
    {
      atomic_store(v3, &qword_280EE3FF0);
    }
  }
}

uint64_t sub_2194D755C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4, __n128 a5)
{
  result = *a1;
  if (!result)
  {
    sub_2194D76C4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2194D75A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), __n128 a4)
{
  if (!*a2)
  {
    v7 = MEMORY[0x277D6D8B8];
    sub_2194D76C4(255, &qword_280EE5450, MEMORY[0x277D6D8B8]);
    v9 = v8;
    v11 = sub_2194D755C(&qword_280EE5458, &qword_280EE5450, v7, MEMORY[0x277D6D8C8], v10);
    v12 = a3(a1, v9, v11);
    if (!v13)
    {
      atomic_store(v12, a2);
    }
  }
}

void sub_2194D765C()
{
  if (!qword_280EE70F0)
  {
    v0 = sub_219BE2DA4();
    if (!v1)
    {
      atomic_store(v0, &qword_280EE70F0);
    }
  }
}

void sub_2194D76C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for SearchHomeSectionDescriptor;
    v8[1] = &type metadata for SearchHomeModel;
    v8[2] = sub_218931D04();
    v8[3] = sub_218931D5C();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2194D7748(uint64_t a1)
{
  if (!qword_280ECD268[0])
  {
    v2 = type metadata accessor for SearchHomeBlueprintModifierFactory();
    v3 = sub_2187040C0(qword_280E9F288, type metadata accessor for SearchHomeBlueprintModifierFactory, &unk_219C33054);
    v5 = type metadata accessor for SearchHomeInteractor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_280ECD268);
    }
  }
}

void *sub_2194D77DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v15[3] = type metadata accessor for SearchHomeRouter();
  v15[4] = &off_282A628F0;
  v15[0] = a3;
  v14[3] = type metadata accessor for SearchHomeTracker();
  v14[4] = &off_282A60490;
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

  v11(v12, &off_282A6BC30, ObjectType, a2);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return a5;
}

void *sub_2194D78D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v26 = type metadata accessor for SearchHomeRouter();
  v27 = &off_282A628F0;
  v25[0] = a3;
  v23 = v8;
  v24 = &off_282A60490;
  v22[0] = a4;
  type metadata accessor for SearchHomeEventHandler();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = (v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = sub_2194D77DC(a1, a2, *v13, *v18, v9);
  __swift_destroy_boxed_opaque_existential_1(v22);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v20;
}

uint64_t sub_2194D7AE0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_2194D7C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  sub_2194DA348(0, &qword_280EE5890, MEMORY[0x277D6D710]);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  sub_218B14D4C(0);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  sub_219BEF6B4();
  v5[19] = swift_task_alloc();
  v8 = sub_219BEF594();
  v5[20] = v8;
  v5[21] = *(v8 - 8);
  v5[22] = swift_task_alloc();
  sub_219BEF5B4();
  v5[23] = swift_task_alloc();
  sub_219BEF604();
  v5[24] = swift_task_alloc();
  sub_219BEF644();
  v5[25] = swift_task_alloc();
  sub_219BEF664();
  v5[26] = swift_task_alloc();
  v9 = sub_219BEF694();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();
  sub_2194DA2F4(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[30] = swift_task_alloc();
  v10 = sub_219BE8164();
  v5[31] = v10;
  v5[32] = *(v10 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  sub_2194DA2F4(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[35] = swift_task_alloc();
  v11 = sub_219BEF6C4();
  v5[36] = v11;
  v5[37] = *(v11 - 8);
  v5[38] = swift_task_alloc();
  sub_219BDCAF4();
  v5[39] = swift_task_alloc();
  v12 = sub_219BDCAE4();
  v5[40] = v12;
  v5[41] = *(v12 - 8);
  v5[42] = swift_task_alloc();
  v13 = sub_219BDCAB4();
  v5[43] = v13;
  v5[44] = *(v13 - 8);
  v5[45] = swift_task_alloc();
  sub_2194DA2F4(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[46] = swift_task_alloc();
  v14 = sub_219BF0634();
  v5[47] = v14;
  v5[48] = *(v14 - 8);
  v5[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2194D81D8, 0, 0);
}

void *sub_2194D81D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[12];
  if (qword_280E8D828 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v10 = *(v9 + 72);
    v11 = (v10 > 7 ? MEMORY[0x277D32EA8] : qword_278242E00[v10]);
    v54 = v8[49];
    v12 = v8[46];
    v57 = v8[47];
    v58 = v8[48];
    v13 = v8[44];
    v14 = v8[45];
    v16 = v8[42];
    v15 = v8[43];
    v60 = v8[41];
    v61 = v8[40];
    v55 = v8[38];
    v56 = v8[37];
    v59 = v8[36];
    v67 = v8[35];
    v17 = v8[34];
    v64 = v8[33];
    v69 = v8[31];
    v71 = v8[32];
    v47 = v8[29];
    v48 = v8[30];
    v18 = v8[28];
    v49 = v8[27];
    v52 = v8[22];
    v50 = v8[20];
    v51 = v8[21];
    v53 = v8[19];
    v19 = v8[10];
    (*(v58 + 104))(v54, *v11, v57, a4, a5, a6, a7, a8, v41, v42, v43, v44);
    v20 = sub_219BF0BD4();
    (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
    (*(v13 + 104))(v14, *MEMORY[0x277D6D178], v15);
    sub_219BE8004();
    sub_219BF6B74();
    sub_219BE8004();
    sub_219BE8044();
    sub_219BE7FD4();
    sub_219BE8064();
    v45 = v21;
    sub_219BE8034();
    sub_219BE7FF4();
    v23 = v22;
    v25 = v24;
    sub_219BE8024();
    sub_219BE8084();
    sub_219BE8014();
    sub_219BEE674();
    sub_219BEE664();
    sub_219BEE654();

    v43 = v23;
    v44 = v25;
    v42 = v45;
    sub_219BDCAC4();
    v46 = *(v71 + 16);
    v46(v17, v19, v69);
    sub_219BEF614();
    v26 = sub_219BEF624();
    (*(*(v26 - 8) + 56))(v67, 0, 1, v26);
    v27 = sub_219BEF684();
    (*(*(v27 - 8) + 56))(v48, 1, 1, v27);
    (*(v18 + 104))(v47, *MEMORY[0x277D326B0], v49);
    sub_219BEF654();
    sub_219BEF5F4();
    sub_219BEF5F4();
    (*(v51 + 104))(v52, *MEMORY[0x277D32680], v50);
    sub_219BEF5A4();
    sub_219BEF6A4();

    v41 = v53;
    sub_219BEF5C4();
    v68 = sub_219BEE0E4();
    (*(v56 + 8))(v55, v59);
    (*(v60 + 8))(v16, v61);
    (*(v13 + 8))(v14, v15);
    sub_218864DB0(v12, &unk_280E90C60, MEMORY[0x277D32FE0]);
    (*(v58 + 8))(v54, v57);
    v46(v64, v19, v69);
    sub_218AF3D74(0);
    sub_2186D7808(&qword_280EE36F8, sub_218AF3D74, MEMORY[0x277D6EC70]);
    v28 = sub_219BF5E44();
    if (!v28)
    {
      break;
    }

    v29 = v28;
    v73 = MEMORY[0x277D84F90];
    sub_218C375E0(0, v28 & ~(v28 >> 63), 0);
    result = sub_219BF5DF4();
    if (v29 < 0)
    {
      __break(1u);
      return result;
    }

    v31 = 0;
    v32 = v8[14];
    v65 = (v32 + 16);
    v66 = (v32 + 8);
    v62 = v8[17];
    v63 = v29;
    while (!__OFADD__(v31, 1))
    {
      v70 = v31 + 1;
      v72 = v8[18];
      v33 = v8[15];
      v34 = v8[12];
      v35 = sub_219BF5EC4();
      (*v65)(v33);
      v35(v8 + 2, 0);
      sub_2194D8C24(v33, v68, v34, v8 + 7, v72);
      (*v66)(v8[15], v8[13]);
      v37 = *(v73 + 16);
      v36 = *(v73 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_218C375E0((v36 > 1), v37 + 1, 1);
      }

      v38 = v8[18];
      v39 = v8[16];
      *(v73 + 16) = v37 + 1;
      (*(v62 + 32))(v73 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v37, v38, v39);
      sub_219BF5E94();
      ++v31;
      if (v70 == v63)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
    v9 = v8[12];
  }

LABEL_12:
  type metadata accessor for SearchLayoutModel(0);
  sub_218B14D6C();
  sub_2186D7808(&qword_280ED5450, type metadata accessor for SearchLayoutModel, &unk_219C323E4);
  sub_219BE6514();
  sub_219BEE0C4();

  v40 = v8[1];

  return v40();
}

void sub_2194D8C24(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(char *, uint64_t)@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a4;
  v47 = a3;
  v55 = a2;
  v53 = type metadata accessor for SearchLayoutModel(0);
  MEMORY[0x28223BE20](v53);
  v51 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_219BEF974();
  v54 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189BE8AC(0);
  v50 = v9;
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v43 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BEE074();
  v11 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE9FA4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v45 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for SearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v17);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194DA348(0, &qword_280EE5890, MEMORY[0x277D6D710]);
  sub_219BE6934();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
LABEL_4:
    v21 = v61;
    sub_2194D9438(a1, v55, *v19 + *(**v19 + 88), MEMORY[0x277D84FA0], a5);

    if (!v21)
    {
      return;
    }

LABEL_15:
    *v46 = v21;
    return;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      goto LABEL_4;
    }

    v24 = *v19;
    v25 = *(**v19 + 88);
    v26 = type metadata accessor for SavedRecipesSearchFeedGroup(0);
    v22 = MEMORY[0x277D84FA0];
    v23 = v24 + *(v26 + 20) + v25;
LABEL_10:
    v21 = v61;
    sub_2194D9438(a1, v55, v23, v22, a5);
    if (!v21)
    {

      return;
    }

    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v22 = MEMORY[0x277D84FA0];
      v23 = *v19 + *(**v19 + 88);
      goto LABEL_10;
    }

LABEL_26:
    sub_219BF7514();
    __break(1u);
    return;
  }

  if (EnumCaseMultiPayload != 11)
  {
    if (EnumCaseMultiPayload != 8)
    {
      sub_2187B1C64(v19, &qword_280ED01D0, &qword_280ED01E0, &protocol descriptor for StreamingTagResults);
    }

    goto LABEL_26;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v27 = v45;
  (*(v15 + 104))(v45, *MEMORY[0x277D6E9B0], v14);
  sub_2194DA43C();
  memset(v56, 0, sizeof(v56));
  v57 = 0;
  v28 = v61;
  sub_219BEE0A4();
  v42 = v28;
  if (v28)
  {
    sub_2187B1C64(v56, &qword_280E91020, &qword_280E91028, MEMORY[0x277D32BA0]);
    (*(v15 + 8))(v27, v14);
    v21 = v42;
    goto LABEL_15;
  }

  sub_2187B1C64(v56, &qword_280E91020, &qword_280E91028, MEMORY[0x277D32BA0]);
  v29 = sub_219BEE004();
  (*(v11 + 8))(v13, v44);
  v30 = *(v29 + 16);
  if (v30)
  {
    v44 = a5;
    *&v56[0] = MEMORY[0x277D84F90];
    sub_218C37720(0, v30, 0);
    v31 = *&v56[0];
    v61 = *(v54 + 16);
    v32 = (*(v54 + 80) + 32) & ~*(v54 + 80);
    v41[1] = v29;
    v33 = v29 + v32;
    v34 = *(v54 + 72);
    v54 += 16;
    v55 = v34;
    v46 = (v52 + 32);
    v47 = (v54 - 8);
    v35 = v43;
    do
    {
      v36 = v48;
      v37 = v49;
      v38 = v61;
      v61(v48, v33, v49);
      v38(v51, v36, v37);
      sub_2186D7808(&qword_280ED5450, type metadata accessor for SearchLayoutModel, &unk_219C323E4);
      sub_219BE75D4();
      (*v47)(v36, v37);
      *&v56[0] = v31;
      v40 = *(v31 + 16);
      v39 = *(v31 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_218C37720((v39 > 1), v40 + 1, 1);
        v31 = *&v56[0];
      }

      *(v31 + 16) = v40 + 1;
      (*(v52 + 32))(v31 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v40, v35, v50);
      v33 += v55;
      --v30;
    }

    while (v30);
  }

  sub_219267968();
  sub_2186D7808(&qword_280ED5448, type metadata accessor for SearchLayoutModel, &unk_219C3241C);
  sub_219BE81A4();
}

uint64_t sub_2194D9438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v96 = a2;
  v91 = a4;
  v80 = a1;
  v76 = a5;
  v104 = type metadata accessor for SearchLayoutModel(0);
  MEMORY[0x28223BE20](v104);
  v101 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BEF974();
  v103 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189BE8AC(0);
  v98 = v8;
  v102 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v71 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_219BE9FA4();
  v73 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v75 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2194DA2F4(0, &qword_280EE9048, MEMORY[0x277D6D1A0]);
  MEMORY[0x28223BE20](v11 - 8);
  v90 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v89 = &v71 - v14;
  MEMORY[0x28223BE20](v15);
  v88 = &v71 - v16;
  MEMORY[0x28223BE20](v17);
  v87 = &v71 - v18;
  v94 = sub_219BDCB14();
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v86 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_219BEE074();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v72 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v93 = &v71 - v22;
  v85 = MEMORY[0x277D32218];
  sub_2194DA2F4(0, &qword_280E91990, MEMORY[0x277D32218]);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v71 - v24;
  v26 = sub_219BED8D4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x277D325F8];
  sub_2194DA2F4(0, &qword_280E91548, MEMORY[0x277D325F8]);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v71 - v31;
  v83 = MEMORY[0x277D31DD0];
  sub_2194DA2F4(0, &qword_280E924F8, MEMORY[0x277D31DD0]);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v71 - v34;
  v79 = sub_219BF1904();
  v82 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v37 = &v71 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a3;
  sub_219BED874();
  v38 = sub_219BEDB64();
  (*(*(v38 - 8) + 56))(v35, 1, 1, v38);
  (*(v27 + 16))(v29, a3, v26);
  sub_219BEF4D4();
  v39 = sub_219BEF4E4();
  (*(*(v39 - 8) + 56))(v32, 0, 1, v39);
  v40 = sub_219BEEA64();
  (*(*(v40 - 8) + 56))(v25, 1, 1, v40);
  sub_219B50B88();
  sub_2194DA348(0, &qword_280EE5890, MEMORY[0x277D6D710]);
  sub_2186D7808(&qword_27CC1B228, type metadata accessor for SearchSectionDescriptor, &unk_219C5AEA0);
  sub_2186D7808(&qword_280EDF4A0, type metadata accessor for SearchModel, &unk_219C18E48);
  sub_219BE69F4();

  sub_218864DB0(v25, &qword_280E91990, v85);
  sub_218864DB0(v32, &qword_280E91548, v84);
  sub_218864DB0(v35, &qword_280E924F8, v83);
  v41 = *(v82 + 8);
  v42 = v79;
  v41(v37, v79);
  sub_219BED874();
  v43 = sub_219BF44B4();
  v41(v37, v42);
  v105[3] = sub_219BF3594();
  v105[4] = MEMORY[0x277D33EB8];
  v105[0] = v43;
  v44 = sub_219BDCB24();
  v45 = *(*(v44 - 8) + 56);
  v45(v87, 1, 1, v44);
  v45(v88, 1, 1, v44);
  v45(v89, 1, 1, v44);
  v46 = v44;
  v47 = v86;
  v45(v90, 1, 1, v46);
  v48 = v43;

  v49 = v93;
  sub_219BDCB04();
  v50 = v97;
  sub_219BEE0B4();
  if (v50)
  {
    (*(v92 + 8))(v47, v94);

    return sub_2187B1C64(v105, &qword_280E91020, &qword_280E91028, MEMORY[0x277D32BA0]);
  }

  else
  {
    v52 = MEMORY[0x277D84F90];
    v91 = v48;
    (*(v92 + 8))(v47, v94);

    sub_2187B1C64(v105, &qword_280E91020, &qword_280E91028, MEMORY[0x277D32BA0]);
    v53 = v72;
    (*(v77 + 16))(v72, v49, v78);
    v105[0] = sub_2199EEACC(v53);
    v105[1] = v54;
    v105[2] = v55;
    v56 = *MEMORY[0x277D6E980];
    v57 = sub_219BE9F84();
    v58 = v75;
    (*(*(v57 - 8) + 104))(v75, v56, v57);
    (*(v73 + 104))(v58, *MEMORY[0x277D6E988], v74);
    v59 = sub_219BEE004();
    v60 = *(v59 + 16);
    if (v60)
    {
      v92 = 0;
      v106 = v52;
      sub_218C37720(0, v60, 0);
      v61 = v106;
      v62 = *(v103 + 16);
      v63 = (*(v103 + 80) + 32) & ~*(v103 + 80);
      v90 = v59;
      v64 = v59 + v63;
      v96 = *(v103 + 72);
      v97 = v62;
      v94 = v102 + 32;
      v95 = (v103 + 8);
      v65 = v71;
      v103 += 16;
      do
      {
        v66 = v99;
        v67 = v100;
        v68 = v97;
        v97(v99, v64, v100);
        v68(v101, v66, v67);
        sub_2186D7808(&qword_280ED5450, type metadata accessor for SearchLayoutModel, &unk_219C323E4);
        sub_219BE75D4();
        (*v95)(v66, v67);
        v106 = v61;
        v70 = *(v61 + 16);
        v69 = *(v61 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_218C37720((v69 > 1), v70 + 1, 1);
          v61 = v106;
        }

        *(v61 + 16) = v70 + 1;
        (*(v102 + 32))(v61 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v70, v65, v98);
        v64 += v96;
        --v60;
      }

      while (v60);
    }

    sub_219267968();
    sub_2186D7808(&qword_280ED5448, type metadata accessor for SearchLayoutModel, &unk_219C3241C);
    sub_219BE81A4();

    return (*(v77 + 8))(v93, v78);
  }
}

uint64_t sub_2194DA230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_2194D7C28(a1, a2, a3, a4);
}

void sub_2194DA2F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void sub_2194DA348(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchSectionDescriptor(255);
    v8[1] = type metadata accessor for SearchModel(255);
    v8[2] = sub_2186D7808(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
    v8[3] = sub_2186D7808(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_2194DA43C()
{
  result = qword_27CC1B220;
  if (!qword_27CC1B220)
  {
    sub_2194DA348(255, &qword_280EE5890, MEMORY[0x277D6D710]);
    sub_2186D7808(&qword_27CC1B228, type metadata accessor for SearchSectionDescriptor, &unk_219C5AEA0);
    sub_2186D7808(&qword_280EDF4A0, type metadata accessor for SearchModel, &unk_219C18E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1B220);
  }

  return result;
}

uint64_t type metadata accessor for RecentSearchLayoutOptions(uint64_t a1)
{
  result = qword_27CC1B260;
  if (!qword_27CC1B260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2194DA78C(void *a1)
{
  v3 = sub_219BDDC34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NewsActivity2.Article(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = (*v1 >> 58) & 0x3C | (*v1 >> 1) & 3;
  if (v14 != 17)
  {
    if (v14 != 1)
    {
      if (qword_280ED32D0 != -1)
      {
        swift_once();
      }

      v20 = qword_280ED32D8;
      v26 = qword_280ED32E0;

      sub_2188202A8(v26);
      return v20;
    }

    sub_2187B2C48(0);
    v15 = swift_projectBox();
    sub_2194DBEE4(v15, v13);
    (*(v4 + 104))(v6, *MEMORY[0x277D2FC98], v3);
    sub_2186F1AC8(0);
    swift_allocObject();
    v16 = sub_219BE1E94();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2194DBF48();
    result = sub_219BE1E24();
    if (result)
    {
      v18 = result;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_2186C709C(0, &unk_280E90370, MEMORY[0x277D339F8], 1);
      result = sub_219BE1E34();
      if (v28)
      {
        v19 = sub_21875F93C(&v27, v29);
        MEMORY[0x28223BE20](v19);
        *(&v27 - 4) = v16;
        *(&v27 - 3) = v18;
        *(&v27 - 2) = v13;
        *(&v27 - 1) = v29;
        sub_2187B2F14(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
        swift_allocObject();
        v20 = sub_219BE30B4();
        swift_unknownObjectRelease();
        sub_2194DBEE4(v13, v10);
        v21 = (*(v8 + 80) + 24) & ~*(v8 + 80);
        v22 = swift_allocObject();
        *(v22 + 16) = v16;
        sub_218B1B3A4(v10, v22 + v21, type metadata accessor for NewsActivity2.Article);
        __swift_destroy_boxed_opaque_existential_1(v29);
        sub_218BF9888(v13, type metadata accessor for NewsActivity2.Article);
        return v20;
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

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187A53A0(0);
  result = sub_219BE1E24();
  if (!result)
  {
    goto LABEL_14;
  }

  v23 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187367A8(0);
  result = sub_219BE1E24();
  if (result)
  {
    v24 = sub_219BED5B4();

    MEMORY[0x28223BE20](v25);
    *(&v27 - 2) = v23;
    *(&v27 - 1) = v24;
    sub_2187B2F14(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    v20 = sub_219BE30B4();

    return v20;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_2194DAC9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void *))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B54();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDFA44();
  sub_219BE1B64();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  sub_219BE1B64();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8C00, MEMORY[0x277D30050], 0);
  result = sub_219BE1B64();
  if (a8)
  {
    return a8(a1);
  }

  return result;
}

uint64_t sub_2194DAE0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B54();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDFA44();
  sub_219BE1B64();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  result = sub_219BE1B64();
  if (a6)
  {
    return a6(a1);
  }

  return result;
}

uint64_t sub_2194DAF24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  sub_219BE1B94();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDFA44();
  sub_219BE1B64();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE33B0, MEMORY[0x277D2D578], 1);
  sub_219BE1B64();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE8C00, MEMORY[0x277D30050], 0);
  return sub_219BE1B64();
}

uint64_t sub_2194DB07C()
{
  sub_2187B2F14(0, &qword_280EE69F0, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
  swift_allocObject();
  result = sub_219BE3014();
  qword_280ED32E0 = 0;
  qword_280ED32E8 = 0;
  qword_280ED32D8 = result;
  return result;
}