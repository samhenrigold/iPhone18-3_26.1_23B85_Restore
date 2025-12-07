void sub_2197BA910(unint64_t a1, uint64_t a2)
{
  v35 = a2;
  sub_218C72018(0);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E2CAD4(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218E2C134(0, &qword_27CC0AFD8, MEMORY[0x277D6D710]);
  v33 = *(v9 - 8);
  v34 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v31 - v11;
  v40[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_38:
    v13 = sub_219BF7214();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v5;
  v36 = v12;
  if (v13)
  {
    v31[1] = v8;
    v5 = 0;
    v8 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (v8)
      {
        v14 = MEMORY[0x21CECE0F0](v5, a1, v10);
        v15 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          v12 = v36;
          break;
        }
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_38;
        }

        v14 = *(a1 + 8 * v5 + 32);

        v15 = (v5 + 1);
        if (__OFADD__(v5, 1))
        {
          goto LABEL_16;
        }
      }

      v16 = [*(*(v14 + 24) + 16) tagType];
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v16 != 1)
        {
          goto LABEL_44;
        }

        sub_219BF73D4();
        v12 = *(v40[0] + 16);
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
      }

      ++v5;
      if (v15 == v13)
      {
        goto LABEL_17;
      }
    }
  }

  v40[0] = sub_219758FD4(v18, v17);
  sub_218A24FC0(v40);

  a1 = v40[0];
  v19 = v40[0] < 0 || (v40[0] & 0x4000000000000000) != 0;
  if (!v19)
  {
    if (*(v40[0] + 16))
    {
      goto LABEL_23;
    }

LABEL_40:

    return;
  }

  if (!sub_219BF7214())
  {
    goto LABEL_40;
  }

LABEL_23:
  sub_2197EC9B8(v40);
  v41 = 2;
  v20 = sub_218E2CB84(&qword_27CC12838, MEMORY[0x277D6D408]);
  v21 = sub_218E2CB84(&qword_27CC12840, MEMORY[0x277D6D3F8]);
  v22 = MEMORY[0x277D84F90];
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v38, v20, v21);
  sub_2189528B0();
  sub_218952904();
  sub_219BE6924();
  if (!v19)
  {
    v23 = *(a1 + 16);
    if (v23)
    {
      goto LABEL_25;
    }

LABEL_35:

LABEL_36:
    v30 = v34;
    sub_219BE6984();

    sub_218E2C134(0, &qword_27CC0B008, MEMORY[0x277D6EC60]);
    sub_218E2C9AC();
    sub_219BEB324();
    (*(v33 + 8))(v12, v30);
    return;
  }

  v23 = sub_219BF7214();
  if (!v23)
  {
    goto LABEL_35;
  }

LABEL_25:
  v40[0] = v22;
  sub_218C38040(0, v23 & ~(v23 >> 63), 0);
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    v25 = v40[0];
    v26 = v32;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x21CECE0F0](v24, a1);
      }

      else
      {
      }

      v39 = v27 | 0x8000000000000000;
      sub_219BE5FB4();
      v40[0] = v25;
      v29 = *(v25 + 16);
      v28 = *(v25 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_218C38040((v28 > 1), v29 + 1, 1);
        v26 = v32;
        v25 = v40[0];
      }

      ++v24;
      *(v25 + 16) = v29 + 1;
      (*(v37 + 32))(v25 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v29, v26, v38);
    }

    while (v23 != v24);

    v12 = v36;
    goto LABEL_36;
  }

  __break(1u);
LABEL_44:
  sub_219BF7514();
  __break(1u);

  __break(1u);
}

void sub_2197BAF6C(uint64_t a1)
{
  if (!qword_27CC1F310)
  {
    sub_218E2C134(255, &qword_27CC0B008, MEMORY[0x277D6EC60]);
    sub_219BE6DF4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1F310);
    }
  }
}

uint64_t sub_2197BB028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v38 = a2;
  v40 = a4;
  sub_2197BB920(0, &qword_280E91A90, sub_218700FF8);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v33 - v6;
  v37 = type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs(0);
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197BB920(0, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  sub_2197BB920(0, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v33 - v16;
  v18 = type metadata accessor for AudioPlaylistFeedGroupKnobs(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197BB974(a1, v17, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
  v22 = *(v19 + 48);
  if (v22(v17, 1, v18) == 1)
  {
    v34 = a1;
    v23 = v37;
    (*(v7 + 56))(v14, 1, 1, v37);
    sub_2197BB974(v14, v11, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
    v24 = *(v7 + 48);
    if (v24(v11, 1, v23) == 1)
    {
      sub_218700FF8(0);
      v26 = *(*(v25 - 8) + 56);
      v33 = v22;
      v27 = v35;
      v26(v35, 1, 1, v25);
      v28 = v36;
      v29 = v27;
      v22 = v33;
      sub_2190F6EC8(v29, v36);
      sub_2197BB9E0(v14, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
      if (v24(v11, 1, v37) != 1)
      {
        sub_2197BB9E0(v11, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
      }
    }

    else
    {
      sub_2197BB9E0(v14, &qword_280E98668, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
      v28 = v36;
      sub_2197BBA3C(v11, v36, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
    }

    sub_2197BBA3C(v28, v21, type metadata accessor for ArticleListAudioPlaylistFeedGroupKnobs);
    sub_2197BB9E0(v34, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
    if (v22(v17, 1, v18) != 1)
    {
      sub_2197BB9E0(v17, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
    }
  }

  else
  {
    sub_2197BB9E0(a1, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
    sub_2197BBA3C(v17, v21, type metadata accessor for AudioPlaylistFeedGroupKnobs);
  }

  v30 = v40;
  sub_2197BBA3C(v21, v40, type metadata accessor for AudioPlaylistFeedGroupKnobs);
  if (v39)
  {
    v31 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v31 = v38 & ~(v38 >> 63);
  }

  result = type metadata accessor for AudioPlaylistFeedKnobsConfig(0);
  *(v30 + *(result + 20)) = v31;
  return result;
}

uint64_t sub_2197BB594@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2197BB920(0, &qword_280EB9208, type metadata accessor for AudioPlaylistFeedGroupKnobs);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_2197BBAA4(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197BBB00();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for AudioPlaylistFeedGroupKnobs(0);
    v18 = 0;
    sub_2197BBB54(&qword_27CC1F328, type metadata accessor for AudioPlaylistFeedGroupKnobs, &unk_219C8540C);
    sub_219BF7674();
    v17 = 1;
    sub_219BF7674();
    sub_2197BB028(v6, v15, v16, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_2197BB7C0(char *a2@<X8>)
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

void sub_2197BB820(char *a3@<X8>)
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

uint64_t sub_2197BB884(uint64_t a1)
{
  v2 = sub_2197BBB00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197BB8C0(uint64_t a1)
{
  v2 = sub_2197BBB00();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2197BB920(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_2197BB974(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2197BB920(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2197BB9E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2197BB920(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2197BBA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2197BBAA4(uint64_t a1)
{
  if (!qword_27CC1F318)
  {
    sub_2197BBB00();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1F318);
    }
  }
}

unint64_t sub_2197BBB00()
{
  result = qword_27CC1F320;
  if (!qword_27CC1F320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F320);
  }

  return result;
}

uint64_t sub_2197BBB54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2197BBB9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioPlaylistFeedGroupKnobs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2197BBC14()
{
  result = qword_27CC1F330;
  if (!qword_27CC1F330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F330);
  }

  return result;
}

unint64_t sub_2197BBC6C()
{
  result = qword_27CC1F338;
  if (!qword_27CC1F338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F338);
  }

  return result;
}

unint64_t sub_2197BBCC4()
{
  result = qword_27CC1F340;
  if (!qword_27CC1F340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F340);
  }

  return result;
}

uint64_t sub_2197BBD18(uint64_t a1)
{
  result = sub_219BDC244();
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

uint64_t sub_2197BBDCC()
{

  v1 = qword_27CC1F348;
  v2 = sub_219BDC244();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_2197BBE44()
{
  sub_2197BBDCC();

  return swift_deallocClassInstance();
}

uint64_t sub_2197BBEB4(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;
  sub_2197BDCDC();

  if (swift_dynamicCast())
  {
    sub_2186CB1F0(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_219BDB544();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_2197BDD40(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_219BF73B4();
  }

  sub_2197BCF68(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2197BD2B4(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  sub_2197BCB10(sub_2197BDE30, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_219BDB9C4();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_2197BD130(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_219BF55C4();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_219BF55F4();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_219BF73B4();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_2197BD130(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_219BF55D4();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_219BDB9D4();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_219BDB9D4();
    sub_218822A5C(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_218822A5C(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_218B87528(*&__src[0], *(&__src[0] + 1));

  sub_2186C6190(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_2197BC3BC()
{
  v1 = *v0;
  v2 = 0x4974736575716572;
  v3 = 0x726F73727563;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x5265766968637261;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656B6154656D6974;
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

uint64_t sub_2197BC468@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2197BD454(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2197BC490(uint64_t a1)
{
  v2 = sub_2197BD9A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197BC4CC(uint64_t a1)
{
  v2 = sub_2197BD9A8();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_2197BC508@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2197BD61C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t sub_2197BC558()
{
  v1 = 0x7954746C75736572;
  v2 = 0x656372756F73;
  if (*v0 != 2)
  {
    v2 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    v1 = 25705;
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

uint64_t sub_2197BC5C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2197BE1A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2197BC5F0(uint64_t a1)
{
  v2 = sub_2197BDB80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2197BC62C(uint64_t a1)
{
  v2 = sub_2197BDB80();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2197BC668(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v33 = sub_219BF1BC4();
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v34 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197BDB20(0, &qword_27CC1F3F8, sub_2197BDB80, &type metadata for PuzzleArchiveFetchResponse.ArchiveResult.CodingKeys);
  v5 = v4;
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v26 - v6;
  v8 = type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2197BDB80();
  v11 = v35;
  sub_219BF7B34();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v35 = v8;
    v12 = v32;
    v13 = v33;
    v39 = 0;
    v14 = v7;
    v15 = v10;
    *v10 = sub_219BF76F4();
    v10[1] = v16;
    v29 = v16;
    v38 = 1;
    v10[2] = sub_219BF76F4();
    v10[3] = v17;
    v37 = 2;
    v28 = 0;
    v10[4] = sub_219BF76F4();
    v10[5] = v18;
    v36 = 3;
    v19 = sub_219BF76F4();
    v26 = v5;
    v27 = v14;
    v20 = v19;
    v22 = v21;
    sub_219BE1994();
    swift_allocObject();
    sub_219BE1984();
    v23 = sub_2197BBEB4(v20, v22);
    v25 = v24;
    sub_2197BDBD4(&qword_27CC1F408, MEMORY[0x277D33540], MEMORY[0x277D33548]);
    sub_219BE1974();
    (*(v12 + 8))(v27, v26);
    sub_2186C6190(v23, v25);

    (*(v30 + 32))(v15 + *(v35 + 28), v34, v13);
    sub_2197BDC1C(v15, v31);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2197BDC80(v15);
  }
}

void sub_2197BCB10(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v17[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v17, 0, 15);
      a1(&v15, v17, v17);
      return;
    }

    sub_2186C6190(v7, v6);
    v15 = v7;
    v16 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_219CA57E0;
    sub_2186C6190(0, 0xC000000000000000);
    sub_219BDB964();
    sub_2197BCEB4(*(v15 + 16), *(v15 + 24), a1);
    v10 = v16 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v15;
      v4[1] = v10;
      return;
    }

    *v4 = v15;
    goto LABEL_18;
  }

  if (!v8)
  {
    sub_2186C6190(v7, v6);
    v17[0] = v7;
    LOWORD(v17[1]) = v6;
    BYTE2(v17[1]) = BYTE2(v6);
    BYTE3(v17[1]) = BYTE3(v6);
    BYTE4(v17[1]) = BYTE4(v6);
    BYTE5(v17[1]) = BYTE5(v6);
    BYTE6(v17[1]) = BYTE6(v6);
    a1(&v15, v17, v17 + BYTE6(v6));
    v9 = LODWORD(v17[1]) | ((WORD2(v17[1]) | (BYTE6(v17[1]) << 16)) << 32);
    *v4 = v17[0];
    v4[1] = v9;
    return;
  }

  v11 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_2186C6190(v7, v6);
  *v4 = xmmword_219CA57E0;
  sub_2186C6190(0, 0xC000000000000000);
  v12 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v12 < v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (sub_219BDB384() && __OFSUB__(v7, sub_219BDB3B4()))
    {
LABEL_22:
      __break(1u);
    }

    sub_219BDB3C4();
    swift_allocObject();
    v13 = sub_219BDB364();

    v11 = v13;
  }

  if (v12 < v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_2197BCEB4(v7, v7 >> 32, a1);

  v10 = v11 | 0x4000000000000000;
  if (v3)
  {
    *v4 = v7;
LABEL_18:
    v4[1] = v10;
    return;
  }

  *v4 = v7;
  v4[1] = v10;
}

char *sub_2197BCEB4(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_219BDB384();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_219BDB3B4();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_219BDB3A4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t *sub_2197BCF68@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_2197BD1FC(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_219BDB3C4();
      swift_allocObject();
      v8 = sub_219BDB374();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_219BDB9B4();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

_BYTE *sub_2197BD030@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_2197BD1FC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_2197BD354(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_2197BD3D0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_2197BD0C4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2197BD130(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_219BF5614();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CECC380](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2197BD1AC@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_219BF7324();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
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

uint64_t sub_2197BD1FC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_2197BD2B4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_219BDB3C4();
      swift_allocObject();
      sub_219BDB394();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_219BDB9B4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_2197BD354(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_219BDB3C4();
  swift_allocObject();
  result = sub_219BDB374();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_219BDB9B4();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_2197BD3D0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_219BDB3C4();
  swift_allocObject();
  result = sub_219BDB374();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_2197BD454(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4974736575716572 && a2 == 0xE900000000000044;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656B6154656D6974 && a2 == 0xE90000000000006ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F73727563 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CD8060 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5265766968637261 && a2 == 0xEE0073746C757365)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

void sub_2197BD61C(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_2197BDB20(0, &qword_27CC1F3D0, sub_2197BD9A8, &type metadata for PuzzleArchiveFetchResponse.CodingKeys);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  v10 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_2197BD9A8();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
  }

  else
  {
    v11 = v7;
    v38 = 0;
    v12 = v6;
    v13 = sub_219BF7694();
    if (v14)
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = 0xE000000000000000;
    }

    v37 = 1;
    v17 = COERCE_DOUBLE(sub_219BF76B4());
    if (v18)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = v17;
    }

    v36 = 2;
    v20 = sub_219BF7694();
    v22 = v21;
    v31 = v20;
    v35 = 3;
    v23 = sub_219BF76C4();
    v29 = v24;
    v30 = v23;
    sub_2197BDDCC(0, &qword_27CC1F3E0, type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult, MEMORY[0x277D83940]);
    v33 = 4;
    sub_2197BDA48();
    sub_219BF76E4();
    v25 = v30;
    if (v29)
    {
      v25 = 0;
    }

    v30 = v25;
    (*(v11 + 8))(v9, v12);
    v26 = v34;

    __swift_destroy_boxed_opaque_existential_1(v32);

    *a2 = v15;
    *(a2 + 8) = v16;
    *(a2 + 16) = v19;
    v27 = v30;
    *(a2 + 24) = v31;
    *(a2 + 32) = v22;
    *(a2 + 40) = v27;
    *(a2 + 48) = v26;
  }
}

unint64_t sub_2197BD9A8()
{
  result = qword_27CC1F3D8;
  if (!qword_27CC1F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F3D8);
  }

  return result;
}

uint64_t type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult(uint64_t a1)
{
  result = qword_27CC1F420;
  if (!qword_27CC1F420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2197BDA48()
{
  result = qword_27CC1F3E8;
  if (!qword_27CC1F3E8)
  {
    sub_2197BDDCC(255, &qword_27CC1F3E0, type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult, MEMORY[0x277D83940]);
    sub_2197BDBD4(&qword_27CC1F3F0, type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult, &unk_219CA57F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F3E8);
  }

  return result;
}

void sub_2197BDB20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_219BF7774();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_2197BDB80()
{
  result = qword_27CC1F400;
  if (!qword_27CC1F400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F400);
  }

  return result;
}

uint64_t sub_2197BDBD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2197BDC1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197BDC80(uint64_t a1)
{
  v2 = type metadata accessor for PuzzleArchiveFetchResponse.ArchiveResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2197BDCDC()
{
  result = qword_27CC1F410;
  if (!qword_27CC1F410)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CC1F410);
  }

  return result;
}

uint64_t sub_2197BDD40(uint64_t a1)
{
  sub_2197BDDCC(0, &qword_27CC1F418, sub_2197BDCDC, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2197BDDCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_2197BDE30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_2197BD0C4(sub_2197BDE98, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_2197BDF10(uint64_t a1)
{
  result = sub_219BF1BC4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2197BDF98()
{
  result = qword_27CC1F430;
  if (!qword_27CC1F430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F430);
  }

  return result;
}

unint64_t sub_2197BDFF0()
{
  result = qword_27CC1F438;
  if (!qword_27CC1F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F438);
  }

  return result;
}

unint64_t sub_2197BE048()
{
  result = qword_27CC1F440;
  if (!qword_27CC1F440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F440);
  }

  return result;
}

unint64_t sub_2197BE0A0()
{
  result = qword_27CC1F448;
  if (!qword_27CC1F448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F448);
  }

  return result;
}

unint64_t sub_2197BE0F8()
{
  result = qword_27CC1F450;
  if (!qword_27CC1F450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F450);
  }

  return result;
}

unint64_t sub_2197BE150()
{
  result = qword_27CC1F458;
  if (!qword_27CC1F458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F458);
  }

  return result;
}

uint64_t sub_2197BE1A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954746C75736572 && a2 == 0xEA00000000006570;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
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

uint64_t sub_2197BE304(uint64_t a1)
{
  v1 = sub_219BF1934();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IntroToSportsTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IntroToSportsTodayFeedGroupEmitter(0);
  v30 = 19;
  sub_2189AE994(0);
  v28 = sub_219BEE964();
  sub_2197C9CFC(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v26 = 2 * v11;
  v13 = swift_allocObject();
  v27 = v13;
  *(v13 + 16) = xmmword_219C0B8C0;
  v14 = (v13 + v12);
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  sub_219BEDD14();
  (*(v2 + 16))(v4, v7, v1);
  sub_2197C9978(v7, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
  v15 = sub_219BF1784();
  v17 = v16;
  (*(v2 + 8))(v4, v1);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  sub_2197C9C7C(0, &qword_280E91230, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D328E0]);
  swift_allocObject();
  *v14 = sub_219BEFB94();
  v19 = *MEMORY[0x277D32308];
  v20 = *(v10 + 104);
  v20(v14, v19, v9);
  swift_allocObject();
  *(v14 + v11) = sub_219BEFB94();
  v20((v14 + v11), v19, v9);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  swift_allocObject();
  v22 = sub_219BEFB94();
  v23 = v26;
  *(v14 + v26) = v22;
  v20((v14 + v23), v19, v9);
  v29 = v28;
  sub_2191EE478(v27);
  return v29;
}

uint64_t sub_2197BE7AC(uint64_t a1, uint64_t a2)
{
  v3[293] = v2;
  v3[287] = a2;
  v3[281] = a1;
  v4 = type metadata accessor for IntroToSportsTodayFeedGroupEmitter(0);
  v3[299] = v4;
  v5 = *(v4 - 8);
  v3[305] = v5;
  v3[311] = *(v5 + 64);
  v3[317] = swift_task_alloc();
  v3[323] = swift_task_alloc();
  v3[329] = swift_task_alloc();
  v6 = sub_219BF1214();
  v3[335] = v6;
  v3[341] = *(v6 - 8);
  v3[347] = swift_task_alloc();
  v3[353] = type metadata accessor for IntroToSportsTodayFeedGroupConfigData(0);
  v3[359] = swift_task_alloc();
  v3[365] = swift_task_alloc();
  v7 = sub_219BF1934();
  v3[371] = v7;
  v8 = *(v7 - 8);
  v3[372] = v8;
  v3[373] = *(v8 + 64);
  v3[374] = swift_task_alloc();
  v3[375] = swift_task_alloc();
  v3[376] = swift_task_alloc();
  v3[377] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197BE9B4, 0, 0);
}

uint64_t sub_2197BE9B4()
{
  v1 = v0[376];
  v2 = v0[372];
  v3 = v0[371];
  v4 = v0[365];
  v5 = v0[359];
  v20 = v0[347];
  v6 = v0[341];
  v18 = v0[353];
  v19 = v0[335];
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  sub_219BEDD14();
  v7 = *(v2 + 16);
  v0[378] = v7;
  v0[379] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v3);
  sub_2197C9978(v4, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
  sub_219BEF174();
  sub_219BEDD14();
  (*(v6 + 16))(v20, v5 + *(v18 + 28), v19);
  sub_2197C9978(v5, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v8 = v0[376];
  v9 = v0[372];
  v10 = v0[371];
  v11 = v0[347];
  v12 = v0[341];
  v13 = v0[335];
  sub_219BF1774();

  (*(v12 + 8))(v11, v13);
  v14 = *(v9 + 8);
  v0[380] = v14;
  v0[381] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v10);
  sub_219BEF164();
  v0[382] = v0[275];
  v15 = swift_task_alloc();
  v0[383] = v15;
  *v15 = v0;
  v15[1] = sub_2197BED44;
  v16 = v0[287];

  return sub_2197C090C(v16);
}

uint64_t sub_2197BED44(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[384] = a1;
  v4[385] = a2;
  v4[386] = v2;

  if (v2)
  {
    v5 = sub_2197BFFE0;
  }

  else
  {
    v5 = sub_2197BEE60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2197BEE60()
{
  v30 = v0[385];
  v31 = v0[384];
  v1 = v0[378];
  v2 = v0[377];
  v25 = v2;
  v3 = v0[375];
  v22 = v3;
  v27 = v0[374];
  v28 = v0[382];
  v4 = v0[372];
  v5 = v0[371];
  v23 = v0[329];
  v26 = v0[323];
  v29 = v0[317];
  v6 = v0[311];
  v7 = v0[305];
  v32 = v0[287];
  v34 = v0[293];
  sub_2197C9910(v34, v23, type metadata accessor for IntroToSportsTodayFeedGroupEmitter);
  v8 = v2;
  v9 = v5;
  v1(v3, v8, v5);
  v33 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = (v6 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v4 + 80);
  v13 = swift_allocObject();
  v0[387] = v13;
  sub_2197C9B98(v23, v13 + v33, type metadata accessor for IntroToSportsTodayFeedGroupEmitter);
  *(v13 + v10) = v32;
  v14 = (v13 + v11);
  *v14 = v31;
  v14[1] = v30;
  v24 = *(v4 + 32);
  v24(v13 + ((v12 + v11 + 16) & ~v12), v22, v9);

  sub_2197C9CFC(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
  swift_asyncLet_begin();
  sub_2197C9910(v34, v26, type metadata accessor for IntroToSportsTodayFeedGroupEmitter);
  v15 = v9;
  v1(v27, v25, v9);
  v16 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v0[388] = v17;
  sub_2197C9B98(v26, v17 + v33, type metadata accessor for IntroToSportsTodayFeedGroupEmitter);
  v18 = (v17 + v10);
  *v18 = v31;
  v18[1] = v30;
  *(v17 + v16) = v28;
  v24(v17 + ((v12 + v16 + 8) & ~v12), v27, v15);

  swift_asyncLet_begin();
  sub_2197C9910(v34, v29, type metadata accessor for IntroToSportsTodayFeedGroupEmitter);
  v19 = swift_allocObject();
  v0[389] = v19;
  sub_2197C9B98(v29, v19 + v33, type metadata accessor for IntroToSportsTodayFeedGroupEmitter);
  v20 = (v19 + v10);
  *v20 = v31;
  v20[1] = v30;
  *(v19 + v16) = v32;
  *(v19 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;

  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 2, v0 + 247, sub_2197BF24C, v0 + 270);
}

uint64_t sub_2197BF24C()
{
  v1[390] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 255, sub_2197C00FC, v1 + 276, v2);
  }

  else
  {
    v1[391] = v1[247];
    v1[392] = v1[248];
    v1[393] = v1[249];

    return MEMORY[0x282200930](v1 + 82, v1 + 255, sub_2197BF334, v1 + 294);
  }
}

uint64_t sub_2197BF334()
{
  v1[394] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 255, sub_2197C02D0, v1 + 300, v2);
  }

  else
  {
    v3 = v1[255];
    v1[395] = v3;
    v4 = v1[256];
    v1[396] = v4;
    v5 = v1[257];
    v1[397] = v5;

    v6 = swift_task_alloc();
    v1[398] = v6;
    *v6 = v1;
    v6[1] = sub_2197BF4BC;
    v7 = v1[392];
    v8 = v1[391];
    v9 = v1[384];
    v10 = v1[382];
    v11 = v1[287];

    return sub_2197C82BC(v9, v11, v10, v8, v7, v3, v4, v5);
  }
}

uint64_t sub_2197BF4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[399] = a1;
  v5[400] = a2;
  v5[401] = a3;
  v5[402] = v3;

  if (v3)
  {
    v6 = sub_2197BF820;
  }

  else
  {

    v6 = sub_2197BF604;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2197BF604()
{
  v1 = v0[402];
  v2 = sub_2197C3FA0(v0[287], v0[399], v0[400], v0[401], v0[391], v0[392], v0[393]);
  v0[403] = v1;
  v0[404] = v2;
  v0[405] = v3;
  if (v1)
  {
    v4 = v0[400];
    v5 = v0[399];

    sub_2187A9CC4(v5, v4);

    return MEMORY[0x282200920](v0 + 82, v0 + 255, sub_2197C04A4, v0 + 336, v6);
  }

  else
  {
    v7 = v0[384];

    sub_2191EE304(v8);
    v0[263] = v7;
    sub_218A4247C(0, &qword_280E8EC90, &qword_280E8E420, &protocolRef_FCSportsProviding);
    sub_218ACCA38();
    v0[406] = sub_219BF56E4();

    return MEMORY[0x282200928](v0 + 162, v0 + 269, sub_2197BFACC, v0 + 360);
  }
}

uint64_t sub_2197BF820()
{

  return MEMORY[0x282200920](v0 + 656, v0 + 2040, sub_2197BF8F8, v0 + 2544, v1);
}

uint64_t sub_2197BF98C()
{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[371];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197BFACC()
{
  v1 = v0[269];
  v0[407] = v1;

  v2 = swift_task_alloc();
  v0[408] = v2;
  *v2 = v0;
  v2[1] = sub_2197BFB94;
  v3 = v0[406];
  v4 = v0[405];
  v5 = v0[404];
  v6 = v0[377];
  v7 = v0[287];

  return sub_2197C467C(v7, v6, v5, v4, v3, v1);
}

uint64_t sub_2197BFB94(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 3272) = v1;

  if (v1)
  {
    v5 = sub_2197C0678;
  }

  else
  {

    *(v4 + 3280) = a1;
    v5 = sub_2197BFCF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2197BFCF0()
{
  v1 = v0[400];
  v2 = v0[399];
  sub_2197C6D30(v0[410], v0[281]);

  sub_2187A9CC4(v2, v1);

  sub_2197C9C7C(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x282200920](v0 + 82, v0 + 255, sub_2197BFE04, v0 + 264, v3);
}

uint64_t sub_2197BFE98()
{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[371];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197BFFE0()
{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[371];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197C0190()
{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[371];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197C0364()
{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[371];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197C0538()
{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[371];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197C0678()
{
  v1 = *(v0 + 3200);
  v2 = *(v0 + 3192);

  sub_2187A9CC4(v2, v1);

  return MEMORY[0x282200920](v0 + 656, v0 + 2040, sub_2197C0738, v0 + 2928, v3);
}

uint64_t sub_2197C07CC()
{
  v1 = v0[380];
  v2 = v0[377];
  v3 = v0[371];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197C090C(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_219BF0BD4();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197C09CC, 0, 0);
}

uint64_t sub_2197C09CC()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v24 = type metadata accessor for IntroToSportsTodayFeedGroupEmitter(0);
  type metadata accessor for IntroToSportsTodayFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  v4 = *(v2 + 8);
  v4(v1, v3);
  v23 = *(v0 + 168);
  sub_219BEF134();
  sub_219BEF524();
  v4(v1, v3);
  v5 = *(v0 + 48);
  sub_219BEF134();
  sub_219BEF524();
  v4(v1, v3);
  v6 = *(v0 + 56);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 88);
  v8 = qword_280F616D8;
  *(v0 + 120) = qword_280F616D8;
  sub_2186F20D4(0);
  *(v0 + 128) = v9;
  v10 = swift_allocObject();
  v11 = v10;
  *(v10 + 16) = xmmword_219C0B8C0;
  if (v23)
  {
    v12 = 0x636572506D616574;
  }

  else
  {
    v12 = 0x746C7561666564;
  }

  if (v23)
  {
    v13 = 0xEE0065636E656465;
  }

  else
  {
    v13 = 0xE700000000000000;
  }

  *(v10 + 56) = MEMORY[0x277D837D0];
  v14 = sub_2186FC3BC();
  *(v0 + 136) = v14;
  v11[4] = v12;
  v11[5] = v13;
  v15 = MEMORY[0x277D83B88];
  v16 = MEMORY[0x277D83C10];
  v11[12] = MEMORY[0x277D83B88];
  v11[13] = v16;
  v11[8] = v14;
  v11[9] = v5;
  v11[17] = v15;
  v11[18] = v16;
  v11[14] = v6;
  v17 = sub_219BF6214();
  sub_219BE5314("Intro to sports will fetch featured tags with recommendation order %{public}@, leading %ld and trailing %ld", 107, 2, &dword_2186C1000, v8, v17, v11);

  v18 = __swift_project_boxed_opaque_existential_1((v7 + *(v24 + 40)), *(v7 + *(v24 + 40) + 24));
  if (__OFADD__(v5, v6))
  {
    __break(1u);
  }

  else
  {
    v19 = off_282A97438;
    v20 = type metadata accessor for MySportsTagService();
    *(v0 + 144) = v19(v5 + v6, v23 | 0x100u, v20);
    v21 = swift_task_alloc();
    *(v0 + 152) = v21;
    *v21 = v0;
    v21[1] = sub_2197C0CE4;
    v18 = (v0 + 16);
  }

  return MEMORY[0x2821D23D8](v18);
}

uint64_t sub_2197C0CE4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_2197C11B4;
  }

  else
  {

    v2 = sub_2197C0E00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_2197C0E00()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09EC0;
  if (v2 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D83B88];
  v6 = MEMORY[0x277D83C10];
  *(v3 + 56) = MEMORY[0x277D83B88];
  *(v3 + 64) = v6;
  *(v3 + 32) = v4;
  if (v1 >> 62)
  {
    v7 = sub_219BF7214();
  }

  else
  {
    v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v3 + 96) = v5;
  *(v3 + 104) = v6;
  *(v3 + 72) = v7;
  sub_219BF6214();
  sub_219BE5314("Intro to sports will feature %ld tags for scores, %ld tags for articles", v24, v26);

  sub_2191EE304(v8);
  v0[9] = v1;
  sub_218A4247C(0, &qword_280E8EC90, &qword_280E8E420, &protocolRef_FCSportsProviding);
  sub_218ACCA38();
  v9 = sub_219BF56E4();

  if (v9 >> 62)
  {
    v10 = sub_219BF7214();
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_19:

    goto LABEL_20;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_19;
  }

LABEL_7:
  v28 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    return result;
  }

  v25 = v2;
  v27 = v1;
  v12 = 0;
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      MEMORY[0x21CECE0F0](v12, v9);
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v13 = [swift_unknownObjectRetain() identifier];
    v14 = sub_219BF5414();
    v16 = v15;

    swift_unknownObjectRelease_n();
    v18 = *(v28 + 16);
    v17 = *(v28 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_21870B65C((v17 > 1), v18 + 1, 1);
    }

    ++v12;
    *(v28 + 16) = v18 + 1;
    v19 = v28 + 16 * v18;
    *(v19 + 32) = v14;
    *(v19 + 40) = v16;
  }

  while (v10 != v12);

  v1 = v27;
  v2 = v25;
LABEL_20:
  v20 = [objc_opt_self() standardUserDefaults];
  v21 = sub_219BF5904();

  v22 = sub_219BF53D4();
  [v20 setValue:v21 forKey:v22];

  v23 = v0[1];

  return v23(v1, v2);
}

uint64_t sub_2197C11B4()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[15];

  v4 = sub_219BF61F4();
  v5 = swift_allocObject();
  v0[4] = 0;
  *(v5 + 16) = xmmword_219C09BA0;
  v0[5] = 0xE000000000000000;
  v0[8] = v1;
  sub_2186C709C(0, &qword_280E8B580, MEMORY[0x277D84948], 1);
  sub_219BF7484();
  v6 = v0[4];
  v7 = v0[5];
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = v2;
  *(v5 + 32) = v6;
  *(v5 + 40) = v7;
  sub_219BE5314("Intro to sports failed to fetch featured sports tags, error=%{public}@", 70, 2, &dword_2186C1000, v3, v4, v5);

  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_2197C1314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_219515964;

  return sub_2197C13CC(a3, a5, a6);
}

uint64_t sub_2197C13CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[32] = a3;
  v4[33] = v3;
  v4[30] = a1;
  v4[31] = a2;
  v5 = sub_219BDBD34();
  v4[34] = v5;
  v4[35] = *(v5 - 8);
  v4[36] = swift_task_alloc();
  v6 = sub_219BF4264();
  v4[37] = v6;
  v4[38] = *(v6 - 8);
  v4[39] = swift_task_alloc();
  type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind(0);
  v4[40] = swift_task_alloc();
  sub_219BF4CF4();
  v4[41] = swift_task_alloc();
  sub_2197C9CFC(0, &unk_280E8FE40, MEMORY[0x277D34408], MEMORY[0x277D83D88]);
  v4[42] = swift_task_alloc();
  v4[43] = type metadata accessor for SportsConfiguringDataVisualizationRequest(0);
  v4[44] = swift_task_alloc();
  v7 = sub_219BF0BD4();
  v4[45] = v7;
  v4[46] = *(v7 - 8);
  v4[47] = swift_task_alloc();
  v8 = sub_219BF0644();
  v4[48] = v8;
  v4[49] = *(v8 - 8);
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197C1694, 0, 0);
}

uint64_t sub_2197C1694()
{
  v1 = v0;
  v3 = *(v0 + 400);
  v2 = *(v0 + 408);
  v4 = *(v0 + 384);
  v5 = *(v0 + 392);
  sub_219BEF154();
  (*(v5 + 104))(v3, *MEMORY[0x277D32EF8], v4);
  sub_2197C7B08(&unk_280E90EE0, MEMORY[0x277D32F00], MEMORY[0x277D32F10]);
  v6 = sub_219BF53A4();
  v7 = *(v5 + 8);
  v7(v3, v4);
  v7(v2, v4);
  if ((v6 & 1) == 0)
  {
    v14 = *(v0 + 368);
    v13 = *(v0 + 376);
    v15 = *(v0 + 360);
    v16 = type metadata accessor for IntroToSportsTodayFeedGroupEmitter(0);
    *(v0 + 416) = v16;
    v63 = v16;
    *(v0 + 520) = *(v16 + 20);
    *(v0 + 424) = type metadata accessor for IntroToSportsTodayFeedGroupKnobs(0);
    sub_219BEF134();
    sub_219BEF524();
    v17 = *(v14 + 8);
    *(v0 + 432) = v17;
    *(v0 + 440) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v17(v13, v15);
    v61 = *(v0 + 208);
    *(v0 + 448) = v61;
    sub_219BEF134();
    sub_219BEF524();
    v62 = v17;
    v17(v13, v15);
    v18 = *(v0 + 216);
    *(v0 + 456) = v18;
    sub_219BF1724();
    v19 = sub_219BF5AA4();

    if (v19 >> 62)
    {
      v20 = sub_219BF7214();
      v60 = v18;
      if (v20)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v60 = v18;
      if (v20)
      {
LABEL_9:
        v65 = MEMORY[0x277D84F90];
        v21 = sub_21870B65C(0, v20 & ~(v20 >> 63), 0);
        if (v20 < 0)
        {
          __break(1u);
          return MEMORY[0x2821D23D8](v21);
        }

        v22 = 0;
        v23 = v65;
        v24 = v19;
        v25 = v19 & 0xC000000000000001;
        v26 = v19;
        do
        {
          if (v25)
          {
            MEMORY[0x21CECE0F0](v22, v24);
          }

          else
          {
          }

          v27 = sub_219BF3ED4();
          v29 = v28;

          v31 = *(v65 + 16);
          v30 = *(v65 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_21870B65C((v30 > 1), v31 + 1, 1);
          }

          ++v22;
          *(v65 + 16) = v31 + 1;
          v32 = v65 + 16 * v31;
          *(v32 + 32) = v27;
          *(v32 + 40) = v29;
          v24 = v26;
        }

        while (v20 != v22);

LABEL_20:
        v1[58] = sub_218845F78(v23);

        if (qword_280E8D7A0 != -1)
        {
          swift_once();
        }

        v33 = v1;
        v34 = v1[47];
        v35 = v1[42];
        v58 = v1[44];
        v59 = v1[43];
        v56 = v1[45];
        v57 = v1[40];
        v64 = v1[33];
        v36 = qword_280F616D8;
        v1[59] = qword_280F616D8;
        sub_2186F20D4(0);
        v1[60] = v37;
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_219C0B8C0;
        v39 = MEMORY[0x277D83B88];
        v40 = MEMORY[0x277D83C10];
        *(v38 + 56) = MEMORY[0x277D83B88];
        *(v38 + 64) = v40;
        *(v38 + 32) = v61;
        *(v38 + 96) = v39;
        *(v38 + 104) = v40;
        *(v38 + 72) = v60;
        v41 = MEMORY[0x277D837D0];
        v42 = sub_219BF5D54();
        v44 = v43;
        *(v38 + 136) = v41;
        v45 = sub_2186FC3BC();
        v33[61] = v45;
        *(v38 + 144) = v45;
        *(v38 + 112) = v42;
        *(v38 + 120) = v44;
        v46 = sub_219BF6214();
        sub_219BE5314("Intro to sports will fetch scores with min=%ld and max=%ld, curated scores=%{public}@", 85, 2, &dword_2186C1000, v36, v46, v38);

        sub_219BEF134();
        sub_219BEF524();
        v62(v34, v56);
        sub_219BF4CE4();
        sub_219BF4CA4();
        v47 = *MEMORY[0x277D34400];
        v48 = sub_219BF43B4();
        v49 = *(v48 - 8);
        (*(v49 + 104))(v35, v47, v48);
        (*(v49 + 56))(v35, 0, 1, v48);
        v50 = sub_219BF4F64();
        (*(*(v50 - 8) + 56))(v57, 6, 6, v50);
        sub_218F6B224(v35, v58);
        sub_2197C9910(v57, v58 + v59[5], type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
        v51 = (v58 + v59[6]);
        *v51 = 0;
        v51[1] = 0;
        sub_2197C9978(v57, type metadata accessor for SportsConfiguringDataVisualizationRequest.EmbedKind);
        sub_2197301F8(v35);
        v52 = v58 + v59[7];
        strcpy(v52, "introToSports");
        *(v52 + 14) = -4864;
        v53 = *(v64 + *(v63 + 48) + 8);
        ObjectType = swift_getObjectType();
        v33[62] = (*(v53 + 8))(v58, ObjectType, v53);
        v55 = swift_task_alloc();
        v33[63] = v55;
        *v55 = v33;
        v55[1] = sub_2197C1E8C;
        v21 = v33[39];

        return MEMORY[0x2821D23D8](v21);
      }
    }

    v23 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v8 = qword_280F616D8;
  v9 = sub_219BF6214();
  sub_219BE5314("Intro to Sports will omit scores because building feed for offline mode", 71, 2, &dword_2186C1000, v8, v9, MEMORY[0x277D84F90]);

  v10 = *(v0 + 8);
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_2197C1E8C()
{
  *(*v1 + 512) = v0;

  if (v0)
  {

    v2 = sub_2197C2548;
  }

  else
  {
    v2 = sub_2197C1FBC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_2197C1FBC(uint64_t a1)
{
  v58 = *(v1 + 472);
  v59 = *(v1 + 456);
  v56 = *(v1 + 432);
  v60 = *(v1 + 464);
  v2 = *(v1 + 376);
  v55 = *(v1 + 360);
  v57 = *(v1 + 248);
  v54 = sub_219BF4234();
  sub_219BEF134();
  v3 = sub_219BEF264();
  v4 = sub_219BEF264();
  sub_219BEF524();
  v5 = *(v1 + 232);
  v6 = sub_219BF0BC4();
  v7 = MEMORY[0x277D84FA0];
  sub_2194796A0(MEMORY[0x277D84FA0], v6);
  v9 = v8;
  sub_219BEF524();
  v56(v2, v55);
  v10 = *(v1 + 525);
  *(v1 + 104) = v58;
  strcpy((v1 + 112), "introToSports");
  *(v1 + 126) = -4864;
  *(v1 + 128) = v59;
  *(v1 + 136) = v60;
  *(v1 + 144) = v3;
  *(v1 + 152) = v4;
  *(v1 + 160) = v5;
  *(v1 + 168) = v9;
  *(v1 + 176) = v10;
  v11 = *(v1 + 120);
  *(v1 + 16) = *(v1 + 104);
  *(v1 + 32) = v11;
  v12 = *(v1 + 152);
  *(v1 + 80) = *(v1 + 168);
  v13 = *(v1 + 136);
  *(v1 + 64) = v12;
  *(v1 + 184) = v7;
  *(v1 + 96) = v7;
  *(v1 + 48) = v13;
  if (v57 >> 62)
  {
    v14 = sub_219BF7214();
  }

  else
  {
    v14 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = *(v1 + 472);
  if (v14)
  {
    v61 = MEMORY[0x277D84F90];
    v16 = v15;
    result = sub_21870B65C(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      return result;
    }

    v18 = v61;
    if ((v57 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v19, *(v1 + 248));
        v20 = [swift_unknownObjectRetain() identifier];
        v21 = sub_219BF5414();
        v23 = v22;

        swift_unknownObjectRelease_n();
        v25 = *(v61 + 16);
        v24 = *(v61 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_21870B65C((v24 > 1), v25 + 1, 1);
        }

        ++v19;
        *(v61 + 16) = v25 + 1;
        v26 = v61 + 16 * v25;
        *(v26 + 32) = v21;
        *(v26 + 40) = v23;
      }

      while (v14 != v19);
    }

    else
    {
      v45 = *(v1 + 248) + 32;
      do
      {
        v46 = [swift_unknownObjectRetain_n() identifier];
        v47 = sub_219BF5414();
        v49 = v48;

        swift_unknownObjectRelease_n();
        v51 = *(v61 + 16);
        v50 = *(v61 + 24);
        if (v51 >= v50 >> 1)
        {
          sub_21870B65C((v50 > 1), v51 + 1, 1);
        }

        *(v61 + 16) = v51 + 1;
        v52 = v61 + 16 * v51;
        *(v52 + 32) = v47;
        *(v52 + 40) = v49;
        v45 += 8;
        --v14;
      }

      while (v14);
    }
  }

  else
  {
    v27 = v15;
    v18 = MEMORY[0x277D84F90];
  }

  v28 = *(v1 + 280);
  v29 = *(v1 + 288);
  v30 = *(v1 + 272);
  v31 = sub_218845F78(v18);

  sub_219BDBD24();
  sub_219AC4E80(v54, v1 + 16, v31, v29);
  v33 = v32;

  (*(v28 + 8))(v29, v30);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_219C09EC0;
  if (v54 >> 62)
  {
    v35 = sub_219BF7214();
  }

  else
  {
    v35 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = MEMORY[0x277D83B88];
  v37 = MEMORY[0x277D83C10];
  *(v34 + 56) = MEMORY[0x277D83B88];
  *(v34 + 64) = v37;
  *(v34 + 32) = v35;
  if (v33 >> 62)
  {
    v38 = sub_219BF7214();
  }

  else
  {
    v38 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = *(v1 + 448);
  *(v34 + 96) = v36;
  *(v34 + 104) = v37;
  *(v34 + 72) = v38;
  sub_219BF6214();
  sub_219BE5314("Intro to sports fetched recent %ld scores and sorted to %ld", v53, v54);

  v40 = *(v1 + 352);
  v42 = *(v1 + 304);
  v41 = *(v1 + 312);
  v43 = *(v1 + 296);
  if (v38 < v39)
  {

    v33 = MEMORY[0x277D84F90];
  }

  sub_218F6B454(v1 + 104);
  (*(v42 + 8))(v41, v43);
  sub_2197C9978(v40, type metadata accessor for SportsConfiguringDataVisualizationRequest);

  v44 = *(v1 + 8);

  return v44(v33);
}

uint64_t sub_2197C2548(uint64_t a1)
{
  v2 = v1[64];
  v3 = v1[61];
  v4 = v1[59];
  v5 = v1[44];
  v6 = sub_219BF61F4();
  v7 = swift_allocObject();
  v1[24] = 0;
  *(v7 + 16) = xmmword_219C09BA0;
  v1[25] = 0xE000000000000000;
  v1[28] = v2;
  sub_2186C709C(0, &qword_280E8B580, MEMORY[0x277D84948], 1);
  sub_219BF7484();
  v8 = v1[24];
  v9 = v1[25];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = v3;
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  sub_219BE5314("Intro to sports failed to fetch scores, error=%{public}@", 56, 2, &dword_2186C1000, v4, v6, v7);

  sub_2197C9978(v5, type metadata accessor for SportsConfiguringDataVisualizationRequest);

  v10 = v1[1];
  v11 = MEMORY[0x277D84F90];

  return v10(v11);
}

uint64_t sub_2197C2714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_218E5B904;

  return sub_2197C27CC(a3, a5, a6);
}

uint64_t sub_2197C27CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = type metadata accessor for IntroToSportsTodayFeedGroupConfigData(0);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for SportsSectionCurationRequest(0);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197C2894, 0, 0);
}

uint64_t sub_2197C2894()
{
  v1 = v0;
  v4 = v0 + 9;
  v3 = v0[9];
  v2 = v4[1];
  v5 = v1[6];
  v6 = *(v5 + 16);
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  swift_unknownObjectRetain();
  sub_219BEDD14();
  v7 = (v2 + *(v3 + 20));
  v8 = *v7;
  v9 = v7[1];

  sub_2197C9978(v2, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
  v10 = *(v5 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);

  sub_219BF1724();
  v11 = sub_219BF5AB4();

  if (v11 >> 62)
  {
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v8;
  v43 = v6;
  v41 = v9;
  if (v12)
  {
    v44 = MEMORY[0x277D84F90];
    v13 = sub_21870B65C(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return MEMORY[0x2821D23D8](v13);
    }

    v40 = v10;
    v14 = 0;
    v15 = v44;
    v16 = v11;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v14, v16);
      }

      else
      {
      }

      v17 = sub_219BF16A4();
      v19 = v18;

      v21 = *(v44 + 16);
      v20 = *(v44 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_21870B65C((v20 > 1), v21 + 1, 1);
      }

      ++v14;
      *(v44 + 16) = v21 + 1;
      v22 = v44 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v16 = v11;
    }

    while (v12 != v14);

    v10 = v40;
  }

  else
  {

    v15 = MEMORY[0x277D84F90];
  }

  v23 = sub_2194B1FF0(v15, v10);

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v25 = v1[11];
  v24 = v1[12];
  v26 = v1[5];
  v27 = qword_280F616D8;
  v28 = MEMORY[0x277D30BC8];
  v1[13] = qword_280F616D8;
  v29 = *v28;
  v30 = *(v25 + 40);
  v31 = *MEMORY[0x277D32998];
  v32 = sub_219BEFBD4();
  (*(*(v32 - 8) + 104))(v24 + v30, v31, v32);
  v33 = v27;
  v34 = v29;
  sub_219A09690(v26, v35);
  *v24 = v26;
  v24[1] = v43;
  v24[2] = v42;
  v24[3] = v41;
  v24[4] = v23;
  v24[5] = v33;
  v24[6] = v34;
  *(v24 + *(v25 + 44)) = v36;

  v37 = sub_219BF6214();
  sub_219BE5314("Intro to sports will fetch curations...", 39, 2, &dword_2186C1000, v33, v37, MEMORY[0x277D84F90]);
  type metadata accessor for IntroToSportsTodayFeedGroupEmitter(0);
  v1[14] = sub_21924C6E8(v24);
  v38 = swift_task_alloc();
  v1[15] = v38;
  *v38 = v1;
  v38[1] = sub_2197C2C9C;
  v13 = (v1 + 2);

  return MEMORY[0x2821D23D8](v13);
}

uint64_t sub_2197C2C9C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_2197C2E9C;
  }

  else
  {

    v2 = sub_2197C2DB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2197C2DB8(uint64_t a1)
{
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = sub_219BF6214();
  sub_219BE5314("Intro to sports will fetch curations...done", 43, 2, &dword_2186C1000, v3, v7, MEMORY[0x277D84F90]);
  sub_2197C9978(v2, type metadata accessor for SportsSectionCurationRequest);

  v8 = v1[1];

  return v8(v4, v5, v6);
}

uint64_t sub_2197C2E9C()
{
  v1 = v0[13];
  v2 = v0[12];

  v3 = sub_219BF6214();
  sub_219BE5314("Intro to sports will fetch curations...done", 43, 2, &dword_2186C1000, v1, v3, MEMORY[0x277D84F90]);
  sub_2197C9978(v2, type metadata accessor for SportsSectionCurationRequest);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197C2F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_2197C3024;

  return sub_2197C3188(a3, a5, a6);
}

uint64_t sub_2197C3024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (v3)
  {
    v10 = v9[1];

    return v10();
  }

  else
  {
    v8[4] = a3;
    v8[5] = a2;
    v8[6] = a1;

    return MEMORY[0x2822009F8](sub_2197C9DE8, 0, 0);
  }
}

uint64_t sub_2197C3188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_219BF0354();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_219BEFBD4();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  type metadata accessor for TodayFeedServiceContext(0);
  v4[22] = swift_task_alloc();
  v7 = sub_219BF0BD4();
  v4[23] = v7;
  v4[24] = *(v7 - 8);
  v4[25] = swift_task_alloc();
  v8 = type metadata accessor for SportsTopicClusteringRequest(0);
  v4[26] = v8;
  v9 = *(v8 - 8);
  v4[27] = v9;
  v4[28] = *(v9 + 64);
  v4[29] = swift_task_alloc();
  v4[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197C33C4, 0, 0);
}

uint64_t sub_2197C33C4()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(*(v0 + 88) + 16);
  v6 = type metadata accessor for IntroToSportsTodayFeedGroupEmitter(0);
  v51 = v5;
  swift_unknownObjectRetain();
  sub_219BEF134();
  sub_219BEF0B4();
  sub_2197C9910(*(v0 + 40) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v4, type metadata accessor for TodayFeedServiceContext);

  sub_218D559C0(v1, v4);
  v48 = v7;
  sub_2197C9978(v4, type metadata accessor for TodayFeedServiceContext);
  v8 = *(v2 + 8);
  v8(v1, v3);
  type metadata accessor for IntroToSportsTodayFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  v57 = v8;
  v8(v1, v3);
  v47 = *(v0 + 48);
  v9 = qword_280E8D7A0;
  v45 = *MEMORY[0x277D30BC8];
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 240);
  v49 = *(v0 + 232);
  v50 = *(v0 + 216);
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  v13 = *(v0 + 184);
  v61 = *(v0 + 160);
  v62 = *(v0 + 168);
  v55 = *(v0 + 152);
  v56 = *(v0 + 144);
  v14 = *(v0 + 136);
  v53 = *(v0 + 128);
  v36 = *(v0 + 120);
  v37 = *(v0 + 112);
  v46 = *(v0 + 96);
  v38 = *(v0 + 104);
  v39 = *(v0 + 88);
  v60 = *(v0 + 72);
  v15 = qword_280F616D8;
  *(v0 + 248) = qword_280F616D8;
  v43 = v15;
  v42 = FCFeedBinForTopicsInForYou();
  v44 = v6;
  sub_219BEF134();
  sub_219BEF524();
  v57(v11, v13);
  v41 = *(v0 + 280);
  v16 = v14[13];
  v16(v62, *MEMORY[0x277D329C0], v53);
  v16(v61, *MEMORY[0x277D32998], v53);
  v40 = *(v39 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);

  sub_219BEF134();
  sub_219BEF524();
  v57(v11, v13);
  v59 = *(v0 + 281);
  sub_219BEF134();
  sub_219BEF524();
  v57(v11, v13);
  v58 = *(v0 + 56);
  sub_219BEF0B4();

  v17 = NewsCoreUserDefaults();
  v18 = [v17 BOOLForKey_];

  v19 = 135486;
  if (v18)
  {
    v19 = 151870;
  }

  v54 = v19;
  v20 = v14[2];
  v20(v55, v62, v53);
  v20(v56, v61, v53);
  v52 = sub_2194B0D40(MEMORY[0x277D84F90]);
  sub_219BF0344();
  *v10 = v60;
  v21 = *MEMORY[0x277D32C88];
  v22 = sub_219BF03B4();
  (*(*(v22 - 8) + 104))(v10, v21, v22);
  v20(&v10[v12[12]], v55, v53);
  v20(&v10[v12[13]], v56, v53);
  (*(v37 + 16))(&v10[v12[24]], v36, v38);
  *&v10[v12[15]] = 1;
  *&v10[v12[16]] = 5;
  *&v10[v12[17]] = 1;
  *&v10[v12[18]] = 0x7FFFFFFFFFFFFFFFLL;
  v10[v12[19]] = 0;
  *&v10[v12[28]] = 0x7FFFFFFFFFFFFFFFLL;
  v23 = v12[29];
  v24 = *(v37 + 8);

  v24(v36, v38);
  v25 = v14[1];
  v25(v56, v53);
  v25(v55, v53);
  v25(v61, v53);
  v25(v62, v53);
  v26 = MEMORY[0x277D84F90];
  *&v10[v23] = MEMORY[0x277D84F90];
  *&v10[v12[5]] = v51;
  *&v10[v12[6]] = v48;
  *&v10[v12[7]] = v47;
  *&v10[v12[8]] = v45;
  *&v10[v12[9]] = v43;
  *&v10[v12[10]] = v42;
  v10[v12[11]] = v41;
  *&v10[v12[14]] = v40;
  *&v10[v12[20]] = 0x7FFFFFFFFFFFFFFFLL;
  *&v10[v12[21]] = 0x7FFFFFFFFFFFFFFFLL;
  *&v10[v12[22]] = 0x7FFFFFFFFFFFFFFFLL;
  *&v10[v12[23]] = v52;
  v10[v12[25]] = v59;
  v27 = &v10[v12[26]];
  *v27 = v58;
  v27[8] = 0;
  *&v10[v12[27]] = v54;
  v28 = sub_219BF6214();
  sub_219BE5314("Intro to sports will fetch sports tag feeds...", 46, 2, &dword_2186C1000, v43, v28, v26);
  v29 = *(v46 + *(v44 + 28));
  v30 = swift_task_alloc();
  *(v30 + 16) = v29;
  *(v30 + 24) = v10;
  sub_218A4247C(0, &qword_280E8ED00, &qword_280E8E680, &protocolRef_FCTagProviding);
  sub_219BE3204();

  sub_2197C9910(v10, v49, type metadata accessor for SportsTopicClusteringRequest);
  v31 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v32 = swift_allocObject();
  sub_2197C9B98(v49, v32 + v31, type metadata accessor for SportsTopicClusteringRequest);
  v33 = sub_219BE2E54();
  type metadata accessor for SportsTopicClusteringService();
  *(v0 + 256) = sub_219BE2F84();

  v34 = swift_task_alloc();
  *(v0 + 264) = v34;
  *v34 = v0;
  v34[1] = sub_2197C3C0C;

  return MEMORY[0x2821D23D8](v0 + 16);
}

uint64_t sub_2197C3C0C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_2197C3E6C;
  }

  else
  {

    v2 = sub_2197C3D28;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2197C3D28(uint64_t a1)
{
  v3 = v1[30];
  v2 = v1[31];
  v8 = v1[3];
  v9 = v1[2];
  v7 = v1[4];
  v4 = sub_219BF6214();
  sub_219BE5314("Intro to sports will fetch sports tag feeds...done", 50, 2, &dword_2186C1000, v2, v4, MEMORY[0x277D84F90]);
  sub_2197C9978(v3, type metadata accessor for SportsTopicClusteringRequest);

  v5 = v1[1];

  return v5(v9, v8, v7);
}

uint64_t sub_2197C3E6C()
{
  v1 = v0[31];
  v2 = v0[30];

  v3 = sub_219BF6214();
  sub_219BE5314("Intro to sports will fetch sports tag feeds...done", 50, 2, &dword_2186C1000, v1, v3, MEMORY[0x277D84F90]);
  sub_2197C9978(v2, type metadata accessor for SportsTopicClusteringRequest);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2197C3FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v45 = a7;
  v69 = a4;
  v47 = a3;
  v46 = a2;
  v33[1] = a1;
  v10 = sub_219BF0BD4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for IntroToSportsTodayFeedGroupEmitter(0);
  v37 = v7;
  type metadata accessor for IntroToSportsTodayFeedGroupKnobs(0);
  v39 = a5;

  v40 = a6;

  sub_219BEF134();
  sub_219BEF524();
  v14 = *(v11 + 8);
  v14(v13, v10);
  v44 = v48;
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v35 = qword_280F616D8;
  sub_218E59C4C(v46);

  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v43 = v48;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v34 = v48;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v42 = v48;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v41 = v48;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v15 = v48;
  sub_219BEF134();
  sub_219BEF524();
  v14(v13, v10);
  v16 = v48;
  v17 = sub_219BF6214();
  v18 = v35;
  sub_219BE5314("Intro to sports will create heroes and sections...", 50, 2, &dword_2186C1000, v35, v17, MEMORY[0x277D84F90]);
  v19 = v34;
  v64[0] = v43;
  v64[1] = v34;
  v64[2] = v42;
  v64[3] = v41;
  v64[4] = v15;
  v64[5] = 3;
  v64[6] = v16;
  v64[7] = v46;
  v64[8] = v47;
  v64[9] = v69;
  v20 = v39;
  v21 = v40;
  v64[10] = v39;
  v64[11] = v40;
  v22 = v45;
  v64[12] = v45;
  v65 = v44;
  *v66 = *v68;
  *&v66[3] = *&v68[3];
  v67 = v18;
  sub_2197C99D8(v64, &v48);
  v23 = v38;
  v38 = sub_21924D498(v64);
  v25 = v24;
  if (v23)
  {
    v48 = v43;
    v49 = v19;
    v50 = v42;
    v51 = v41;
    v52 = v15;
    v53 = 3;
    v54 = v16;
    v55 = v46;
    v56 = v47;
    v57 = v69;
    v58 = v20;
    v59 = v21;
    v60 = v22;
    v61 = v44;
    *v62 = *v68;
    *&v62[3] = *&v68[3];
    v63 = v18;
    sub_2197C9A34(&v48);
    v26 = v64;
  }

  else
  {
    sub_2197C9A34(v64);
    sub_2186F20D4(0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_219C09BA0;
    v28 = sub_219458290(v38, v25);
    v30 = v29;
    *(v27 + 56) = MEMORY[0x277D837D0];
    *(v27 + 64) = sub_2186FC3BC();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    v31 = sub_219BF6214();
    sub_219BE5314("Intro to sports will create heroes and sections...done, result=%{public}@", 73, 2, &dword_2186C1000, v18, v31, v27);

    v48 = v43;
    v49 = v19;
    v50 = v42;
    v51 = v41;
    v52 = v15;
    v53 = 3;
    v54 = v16;
    v55 = v46;
    v56 = v47;
    v57 = v69;
    v58 = v39;
    v59 = v40;
    v60 = v45;
    v61 = v44;
    *v62 = *v68;
    *&v62[3] = *&v68[3];
    v63 = v18;
    v26 = &v48;
  }

  sub_2197C9A34(v26);
  return v38;
}

uint64_t sub_2197C467C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[28] = a6;
  v7[29] = v6;
  v7[26] = a4;
  v7[27] = a5;
  v7[24] = a2;
  v7[25] = a3;
  v7[23] = a1;
  v8 = MEMORY[0x277D83D88];
  sub_2197C9CFC(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v7[30] = swift_task_alloc();
  sub_2197C9CFC(0, &qword_280E90150, MEMORY[0x277D33EC8], v8);
  v7[31] = swift_task_alloc();
  sub_2197C9CFC(0, &unk_280E91A10, sub_2189AE994, v8);
  v7[32] = swift_task_alloc();
  v9 = sub_219BF2AB4();
  v7[33] = v9;
  v7[34] = *(v9 - 8);
  v7[35] = swift_task_alloc();
  sub_2197C9CFC(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v8);
  v7[36] = swift_task_alloc();
  v10 = sub_219BF2034();
  v7[37] = v10;
  v7[38] = *(v10 - 8);
  v7[39] = swift_task_alloc();
  v7[40] = type metadata accessor for IntroToSportsTodayFeedGroupConfigData(0);
  v7[41] = swift_task_alloc();
  sub_2197C98A4(0);
  v7[42] = v11;
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v12 = sub_219BF47F4();
  v7[47] = v12;
  v7[48] = *(v12 - 8);
  v7[49] = swift_task_alloc();
  v7[50] = swift_task_alloc();
  v13 = sub_219BF3484();
  v7[51] = v13;
  v7[52] = *(v13 - 8);
  v7[53] = swift_task_alloc();
  v14 = sub_219BF3C84();
  v7[54] = v14;
  v7[55] = *(v14 - 8);
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v15 = sub_219BF3E84();
  v7[61] = v15;
  v7[62] = *(v15 - 8);
  v7[63] = swift_task_alloc();
  v7[64] = swift_task_alloc();
  v7[65] = swift_task_alloc();
  v7[66] = swift_task_alloc();
  v7[67] = swift_task_alloc();
  v16 = sub_219BF0BD4();
  v7[68] = v16;
  v7[69] = *(v16 - 8);
  v7[70] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197C4BA4, 0, 0);
}

uint64_t sub_2197C4BA4(__n128 a1)
{
  v237 = v1;
  if (!*(v1[26] + 16) && !*(v1[25] + 16))
  {
    v72 = sub_219BEEDD4();
    sub_2197C7B08(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v72 - 8) + 104))(v73, *MEMORY[0x277D323A8], v72);
    swift_willThrow();

    v74 = v1[1];

    return v74();
  }

  v212 = *(v1[26] + 16);
  v2 = v1[70];
  v3 = v1[69];
  v4 = v1[68];
  v5 = v1[29];
  v6 = v1[23];
  v197 = type metadata accessor for IntroToSportsTodayFeedGroupEmitter(0);
  v7 = v5 + *(v197 + 20);
  v8 = type metadata accessor for IntroToSportsTodayFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  v11 = *(v3 + 8);
  v9 = v3 + 8;
  v10 = v11;
  v11(v2, v4);
  i = v1[20];
  v13 = *(v7 + *(v8 + 80));
  sub_219BEF134();
  v14 = v13;
  sub_219BEF524();
  v11(v2, v4);
  if ((i & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v196 = v7;
    v14 = v1[21];
    v231 = v1;
    v10 = v1[27];
    v7 = v10 >> 62;
    if (!(v10 >> 62))
    {
      v9 = 0;
      v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15 >= i)
      {
        v16 = i;
      }

      else
      {
        v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (i)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v15 >= v17)
      {
        goto LABEL_12;
      }

LABEL_110:
      __break(1u);
      goto LABEL_111;
    }
  }

  v15 = sub_219BF7214();
  v76 = sub_219BF7214();
  if (v76 < 0)
  {
    __break(1u);
    goto LABEL_168;
  }

  v9 = v15 >> 63;
  if (v15 >= i)
  {
    v77 = i;
  }

  else
  {
    v77 = v15;
  }

  if (v15 < 0)
  {
    v77 = i;
  }

  if (i)
  {
    v17 = v77;
  }

  else
  {
    v17 = 0;
  }

  if (sub_219BF7214() < v17)
  {
    goto LABEL_110;
  }

LABEL_12:
  v222 = v14;
  v226 = v10 & 0xC000000000000001;
  if ((v10 & 0xC000000000000001) == 0)
  {

    if (!v7)
    {
      goto LABEL_17;
    }

LABEL_20:

    v19 = sub_219BF7564();
    v6 = v21;
    v17 = v22;
    if ((v22 & 1) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  if (v17)
  {
    sub_2186D6710(0, &qword_280E8E420, &protocolRef_FCSportsProviding);
    v18 = 0;
    do
    {
      v14 = (v18 + 1);
      sub_219BF7334();
      v18 = v14;
    }

    while (v17 != v14);
  }

  if (v7)
  {
    goto LABEL_20;
  }

LABEL_17:
  v6 = 0;
  v19 = v10 & 0xFFFFFFFFFFFFFF8;
  v20 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
  v17 = (2 * v17) | 1;
  if ((v17 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  v14 = v20;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x277D84F90];
  }

  v25 = *(v24 + 16);

  if (__OFSUB__(v17 >> 1, v6))
  {
    goto LABEL_163;
  }

  if (v25 != (v17 >> 1) - v6)
  {
    goto LABEL_164;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (i)
  {
    goto LABEL_29;
  }

  for (i = MEMORY[0x277D84F90]; ; i = v23)
  {
    swift_unknownObjectRelease();
LABEL_29:
    if ((i & 0x8000000000000000) != 0 || (i & 0x4000000000000000) != 0)
    {
LABEL_111:
      v76 = sub_219BF7214();
      if (v76 < 0)
      {
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
        swift_once();
        goto LABEL_71;
      }

LABEL_168:
      v17 = v76;
    }

    else
    {
      v17 = *(i + 16);
    }

    if (v15 >= v17)
    {
      v26 = v17;
    }

    else
    {
      v26 = v15;
    }

    if (v9)
    {
      v26 = v17;
    }

    if (v17)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    if (v15 < v27)
    {
      goto LABEL_113;
    }

    if (v7)
    {
      if (v10 < 0)
      {
        v6 = v231[27];
      }

      else
      {
        v6 = v10 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_219BF7214() < v27)
      {
        goto LABEL_114;
      }

      v28 = sub_219BF7214();
    }

    else
    {
      v28 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28 < v27)
      {
        goto LABEL_114;
      }
    }

    if (v28 < v15)
    {
      goto LABEL_115;
    }

    if (v9)
    {
      goto LABEL_116;
    }

    if (!v226 || v27 == v15)
    {

      if (!v7)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v27 >= v15)
      {
        __break(1u);
LABEL_165:
        __break(1u);
LABEL_166:
        swift_unknownObjectRelease();
        v39 = v9;
        v38 = v15;
        v37 = v6;
LABEL_62:
        sub_218B673FC(v14, v37, v38, v39);
        v9 = v40;
        v10 = v231;
        goto LABEL_69;
      }

      sub_2186D6710(0, &qword_280E8E420, &protocolRef_FCSportsProviding);

      v29 = v27;
      do
      {
        v30 = v29 + 1;
        sub_219BF7334();
        v29 = v30;
      }

      while (v15 != v30);
      if (!v7)
      {
LABEL_58:
        v31 = v10 & 0xFFFFFFFFFFFFFF8;
        v32 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
        v33 = (2 * v15) | 1;
        goto LABEL_61;
      }
    }

    v31 = sub_219BF7564();
    v32 = v34;
    v27 = v35;
    v33 = v36;
LABEL_61:
    v14 = sub_219A781E8(v222, v31, v32, v27, v33);
    if ((v39 & 1) == 0)
    {
      goto LABEL_62;
    }

    v9 = v39;
    v15 = v38;
    v6 = v37;
    sub_219BF7934();
    swift_unknownObjectRetain_n();
    v41 = swift_dynamicCastClass();
    if (!v41)
    {
      swift_unknownObjectRelease();
      v41 = MEMORY[0x277D84F90];
    }

    v42 = *(v41 + 16);

    v10 = v231;
    if (__OFSUB__(v9 >> 1, v15))
    {
      goto LABEL_165;
    }

    if (v42 != (v9 >> 1) - v15)
    {
      goto LABEL_166;
    }

    v9 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v9)
    {
      goto LABEL_70;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_69:
    swift_unknownObjectRelease();
LABEL_70:
    if (qword_280E8D7A0 != -1)
    {
      goto LABEL_117;
    }

LABEL_71:
    v43 = qword_280F616D8;
    sub_2186F20D4(0);
    v44 = swift_allocObject();
    v45 = MEMORY[0x277D83B88];
    *(v44 + 16) = xmmword_219C09EC0;
    v6 = MEMORY[0x277D83C10];
    *(v44 + 56) = v45;
    *(v44 + 64) = v6;
    *(v44 + 32) = v17;
    if ((v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
    {
      v78 = v44;
      v46 = sub_219BF7214();
      v44 = v78;
    }

    else
    {
      v46 = *(v9 + 16);
    }

    *(v44 + 96) = v45;
    *(v44 + 104) = v6;
    *(v44 + 72) = v46;
    sub_219BF6214();
    sub_219BE5314("Intro to sports will resolve content with leading max %ld and trailing max %ld recommendations", v193, v194);

    v48 = sub_21946A4EC(i, v47);

    if (v48 >> 62)
    {
      v17 = sub_219BF7214();
    }

    else
    {
      v17 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = MEMORY[0x277D34100];
    v195 = v43;
    if (v17)
    {
      v220 = v48;
      v236[0] = MEMORY[0x277D84F90];
      v14 = v236;
      sub_218C34A88(0, v17 & ~(v17 >> 63), 0);
      if (v17 < 0)
      {
        __break(1u);
LABEL_161:
        __break(1u);
        goto LABEL_162;
      }

      v49 = 0;
      v7 = *(v10 + 440);
      v50 = v236[0];
      v51 = v220;
      v222 = v220 & 0xC000000000000001;
      v226 = v17;
      v52 = *v19;
      do
      {
        if (v222)
        {
          v53 = MEMORY[0x21CECE0F0](v49, v51);
        }

        else
        {
          v53 = swift_unknownObjectRetain();
        }

        v54 = v231[60];
        v55 = v231[54];
        *v54 = v53;
        (*(v7 + 104))(v54, v52, v55);
        v236[0] = v50;
        v19 = *(v50 + 16);
        v56 = *(v50 + 24);
        if (v19 >= v56 >> 1)
        {
          sub_218C34A88((v56 > 1), v19 + 1, 1);
          v51 = v220;
          v50 = v236[0];
        }

        v57 = v231[60];
        v58 = v231[54];
        ++v49;
        *(v50 + 16) = v19 + 1;
        (*(v7 + 32))(v50 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v19, v57, v58);
      }

      while (v17 != v49);
    }

    v17 = v231[67];
    v6 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v6);
    sub_218F0BB90(v6);
    sub_219BF3E74();
    v60 = sub_21946A4EC(v9, v59);

    if (v60 >> 62)
    {
      v15 = sub_219BF7214();
      v10 = v231;
      if (!v15)
      {
LABEL_121:

        goto LABEL_122;
      }
    }

    else
    {
      v15 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v231;
      if (!v15)
      {
        goto LABEL_121;
      }
    }

    v61 = v60;
    v236[0] = v6;
    v14 = v236;
    sub_218C34A88(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      goto LABEL_161;
    }

    v62 = 0;
    v9 = *(v10 + 440);
    v63 = v236[0];
    v64 = v61;
    v226 = v61 & 0xC000000000000001;
    LODWORD(v222) = *MEMORY[0x277D34100];
    v7 = v9 + 104;
    do
    {
      if (v226)
      {
        v65 = MEMORY[0x21CECE0F0](v62, v64);
      }

      else
      {
        v65 = swift_unknownObjectRetain();
      }

      v66 = v231[59];
      v67 = v231[54];
      *v66 = v65;
      (*v7)(v66, v222, v67);
      v236[0] = v63;
      v69 = *(v63 + 16);
      v68 = *(v63 + 24);
      if (v69 >= v68 >> 1)
      {
        sub_218C34A88((v68 > 1), v69 + 1, 1);
        v63 = v236[0];
      }

      v70 = v231[59];
      v71 = v231[54];
      ++v62;
      *(v63 + 16) = v69 + 1;
      (*(v9 + 32))(v63 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v69, v70, v71);
      v64 = v61;
    }

    while (v15 != v62);

    v10 = v231;
LABEL_122:
    v19 = *(v10 + 528);
    v79 = *(v10 + 224);
    v17 = MEMORY[0x277D84F90];
    v6 = sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v17);
    sub_218F0BB90(v17);
    sub_219BF3E74();
    if (v79 >> 62)
    {
      v15 = sub_219BF7214();
    }

    else
    {
      v15 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v15)
    {
      goto LABEL_136;
    }

    v236[0] = MEMORY[0x277D84F90];
    v14 = v236;
    sub_218C34A88(0, v15 & ~(v15 >> 63), 0);
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    swift_unknownObjectRelease();
    v20 = v14;
LABEL_21:
    sub_218B673FC(v19, v20, v6, v17);
  }

  v80 = v236[0];
  v81 = *(v10 + 440);
  v82 = *(v10 + 416);
  if ((v79 & 0xC000000000000001) != 0)
  {
    v83 = 0;
    v232 = *MEMORY[0x277D33DF0];
    v227 = (v82 + 104);
    v223 = *MEMORY[0x277D34130];
    do
    {
      v84 = *(v10 + 464);
      v85 = v10;
      v86 = *(v10 + 432);
      v87 = v85[53];
      v88 = v85[51];
      v89 = MEMORY[0x21CECE0F0](v83, v85[28]);
      v90 = swift_allocObject();
      *(v90 + 16) = v89;
      *v87 = v90;
      (*v227)(v87, v232, v88);
      sub_219BF1AC4();
      (*(v81 + 104))(v84, v223, v86);
      v236[0] = v80;
      v92 = *(v80 + 16);
      v91 = *(v80 + 24);
      if (v92 >= v91 >> 1)
      {
        sub_218C34A88((v91 > 1), v92 + 1, 1);
        v80 = v236[0];
      }

      v93 = v85[58];
      v94 = v85[54];
      ++v83;
      *(v80 + 16) = v92 + 1;
      (*(v81 + 32))(v80 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v92, v93, v94);
      v10 = v85;
    }

    while (v15 != v83);
  }

  else
  {
    v95 = (*(v10 + 224) + 32);
    v233 = *MEMORY[0x277D33DF0];
    v228 = (v82 + 104);
    v224 = *MEMORY[0x277D34130];
    do
    {
      v96 = v15;
      v97 = *(v10 + 448);
      v98 = v10;
      v101 = v10 + 424;
      v100 = *(v10 + 424);
      v99 = *(v101 + 8);
      v102 = v98[51];
      v103 = *v95;
      v104 = swift_allocObject();
      *(v104 + 16) = v103;
      *v100 = v104;
      (*v228)(v100, v233, v102);

      sub_219BF1AC4();
      (*(v81 + 104))(v97, v224, v99);
      v236[0] = v80;
      v106 = *(v80 + 16);
      v105 = *(v80 + 24);
      if (v106 >= v105 >> 1)
      {
        sub_218C34A88((v105 > 1), v106 + 1, 1);
        v80 = v236[0];
      }

      v107 = v98[56];
      v108 = v98[54];
      *(v80 + 16) = v106 + 1;
      (*(v81 + 32))(v80 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v106, v107, v108);
      ++v95;
      v15 = v96 - 1;
      v10 = v98;
    }

    while (v96 != 1);
  }

LABEL_136:
  v109 = *(v10 + 200);
  v110 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v110);
  sub_218F0BB90(v110);
  sub_219BF3E74();
  v111 = *(v109 + 16);
  if (v111)
  {
    v112 = *(v10 + 496);
    v113 = *(v10 + 440);
    v206 = *(v10 + 320);
    v208 = *(v10 + 336);
    v198 = *(v109 + 16);
    v114 = *(v10 + 200);
    sub_218C35610(0, v111, 0);
    v115 = type metadata accessor for SportsSection(0);
    v116 = v115;
    v117 = 0;
    v202 = v114 + ((*(*(v115 - 8) + 80) + 32) & ~*(*(v115 - 8) + 80));
    v118 = v198;
    v119 = v110;
    v200 = *(*(v115 - 8) + 72);
    if (v212)
    {
      v120 = v110;
    }

    else
    {
      v120 = &unk_282A29988;
    }

    v210 = v112;
    v199 = v120;
    v204 = v115;
    do
    {
      v218 = v119;
      v121 = *(v10 + 360);
      v122 = *(v10 + 368);
      v123 = *(v208 + 48);
      sub_2197C9910(v202 + v117 * v200, v122 + v123, type metadata accessor for SportsSection);
      *v121 = v117;
      v124 = v121 + *(v208 + 48);
      sub_2197C9B98(v122 + v123, v124, type metadata accessor for SportsSection);
      v236[0] = 0x2D6F726568;
      v236[1] = 0xE500000000000000;
      v221 = v117;
      *(v10 + 176) = v117;
      v125 = sub_219BF7894();
      MEMORY[0x21CECC330](v125);

      v126 = *(v124 + *(v116 + 20));
      v127 = *(v126 + 16);
      if (v127)
      {
        v215 = v124;
        v236[0] = v110;
        sub_218C34A88(0, v127, 0);
        v128 = v236[0];
        v129 = (v126 + 32);
        v130 = *(v113 + 104);
        do
        {
          **(v10 + 456) = *v129;
          v130();
          v236[0] = v128;
          v131 = v10;
          v133 = *(v128 + 16);
          v132 = *(v128 + 24);
          swift_unknownObjectRetain();
          if (v133 >= v132 >> 1)
          {
            sub_218C34A88((v132 > 1), v133 + 1, 1);
            v128 = v236[0];
          }

          v134 = *(v131 + 456);
          v135 = *(v131 + 432);
          *(v128 + 16) = v133 + 1;
          (*(v113 + 32))(v128 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v133, v134, v135);
          v129 += 3;
          --v127;
          v10 = v131;
        }

        while (v127);
        v110 = MEMORY[0x277D84F90];
        v118 = v198;
        v124 = v215;
      }

      v136 = *(v10 + 360);
      v137 = *(v10 + 328);
      sub_218E8BFB8();
      sub_218E8C1FC();
      sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
      sub_219BEDD14();
      v138 = (v137 + *(v206 + 24));
      v139 = v138[2];
      v140 = *v138;
      *(v10 + 32) = v138[1];
      *(v10 + 48) = v139;
      *(v10 + 16) = v140;
      v141 = *v138;
      v142 = *(v10 + 48);
      *(v10 + 80) = *(v10 + 32);
      *(v10 + 96) = v141;
      *(v10 + 64) = v142;
      sub_218A18DB4(v10 + 96, v10 + 112);
      sub_218A18DB4(v10 + 80, v10 + 128);
      sub_218A18DB4(v10 + 64, v10 + 144);
      sub_2197C9978(v137, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
      sub_2198F4470((v10 + 16));
      sub_2189AD3D8(v10 + 96);
      sub_2189AD3D8(v10 + 80);
      sub_2189AD3D8(v10 + 64);
      v116 = v204;
      v143 = *(v124 + *(v204 + 24));

      sub_2194B1FF0(v199, v143);

      sub_218F0BB90(v110);
      sub_219BF3E74();
      sub_2197C9978(v136, sub_2197C98A4);
      v119 = v218;
      v145 = *(v218 + 16);
      v144 = *(v218 + 24);
      if (v145 >= v144 >> 1)
      {
        sub_218C35610((v144 > 1), v145 + 1, 1);
        v119 = v218;
      }

      v146 = *(v10 + 512);
      v147 = *(v10 + 488);
      v117 = v221 + 1;
      *(v119 + 16) = v145 + 1;
      (*(v210 + 32))(v119 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v145, v146, v147);
    }

    while (v221 + 1 != v118);
  }

  sub_219BF47E4();
  v148 = MEMORY[0x277D84F90];
  if (v212)
  {
    v149 = *(v10 + 496);
    v229 = *(v10 + 336);
    v150 = *(v10 + 208);
    v236[0] = MEMORY[0x277D84F90];
    sub_218C35610(0, v212, 0);
    v151 = v236[0];
    v152 = 0;
    v153 = *(type metadata accessor for SportsSection(0) - 8);
    v154 = v150 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
    v225 = *(v153 + 72);
    v234 = v149;
    do
    {
      v155 = *(v10 + 504);
      v157 = *(v10 + 344);
      v156 = *(v10 + 352);
      v158 = *(v10 + 232);
      v159 = *(v229 + 48);
      sub_2197C9910(v154, v156 + v159, type metadata accessor for SportsSection);
      *v157 = v152;
      v160 = *(v229 + 48);
      sub_2197C9B98(v156 + v159, v157 + v160, type metadata accessor for SportsSection);
      sub_2197C70A8(v152, v157 + v160, v158, v155);
      sub_2197C9978(v157, sub_2197C98A4);
      v236[0] = v151;
      v162 = *(v151 + 16);
      v161 = *(v151 + 24);
      if (v162 >= v161 >> 1)
      {
        sub_218C35610((v161 > 1), v162 + 1, 1);
        v151 = v236[0];
      }

      v163 = *(v10 + 504);
      v164 = *(v10 + 488);
      ++v152;
      *(v151 + 16) = v162 + 1;
      (*(v234 + 32))(v151 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + *(v234 + 72) * v162, v163, v164);
      v154 += v225;
    }

    while (v212 != v152);
    v148 = MEMORY[0x277D84F90];
  }

  v165 = *(v10 + 528);
  v201 = *(v10 + 536);
  v203 = *(v10 + 520);
  v166 = v10;
  v169 = v10 + 488;
  v168 = *(v10 + 488);
  v167 = *(v169 + 8);
  v205 = v165;
  v207 = *(v166 + 392);
  v170 = *(v166 + 384);
  v209 = *(v166 + 376);
  v211 = *(v166 + 400);
  v214 = *(v166 + 288);
  v216 = *(v166 + 256);
  v217 = *(v166 + 248);
  v171 = *(v166 + 232);
  v219 = *(v166 + 240);
  sub_219BF47E4();
  v172 = (v171 + *(v197 + 24));
  v230 = v172[3];
  v235 = v172[4];
  __swift_project_boxed_opaque_existential_1(v172, v230);
  v173 = MEMORY[0x277D84560];
  sub_2197C9CFC(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v174 = *(v167 + 72);
  v175 = (*(v167 + 80) + 32) & ~*(v167 + 80);
  v213 = swift_allocObject();
  *(v213 + 16) = xmmword_219C0B8C0;
  v176 = v213 + v175;
  v177 = *(v167 + 16);
  v177(v176, v201, v168);
  v177(v176 + v174, v203, v168);
  v177(v176 + 2 * v174, v205, v168);
  sub_2197C9CFC(0, &unk_280E8B780, MEMORY[0x277D34500], v173);
  v178 = *(v170 + 72);
  v179 = (*(v170 + 80) + 32) & ~*(v170 + 80);
  v180 = swift_allocObject();
  *(v180 + 16) = xmmword_219C09EC0;
  v181 = v180 + v179;
  v182 = *(v170 + 16);
  v182(v181, v211, v209);
  v182(v181 + v178, v207, v209);
  v183 = sub_219BEC004();
  (*(*(v183 - 8) + 56))(v214, 1, 1, v183);
  sub_219A95188(v148);
  sub_219A95188(v148);
  sub_219A951A0(v148);
  sub_219A951B8(v148);
  sub_219A952CC(v148);
  sub_219A952E4(v148);
  sub_219A953F8(v148);
  sub_219BF2024();
  sub_2189AE994(0);
  v185 = v184;
  v186 = *(v184 - 8);
  (*(v186 + 16))(v216, v196, v184);
  (*(v186 + 56))(v216, 0, 1, v185);
  v187 = sub_219BF35D4();
  (*(*(v187 - 8) + 56))(v217, 1, 1, v187);
  *(v166 + 592) = 19;
  sub_2197C9C7C(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v188 = sub_219BF2774();
  (*(*(v188 - 8) + 56))(v219, 1, 1, v188);
  *MEMORY[0x277D30BC8];
  v195;
  sub_219BF2A84();
  v189 = swift_task_alloc();
  *(v166 + 568) = v189;
  *v189 = v166;
  v189[1] = sub_2197C66D8;
  v190 = *(v166 + 312);
  v191 = *(v166 + 280);
  v192 = *(v166 + 192);

  return MEMORY[0x2821921B8](v192, v190, v191, v230, v235);
}

uint64_t sub_2197C66D8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 304);
  v6 = *(*v2 + 272);
  v4[72] = v1;

  v7 = (v6 + 8);
  v8 = (v5 + 8);
  v9 = v4[39];
  v10 = v4[37];
  v11 = v4[35];
  v12 = v4[33];
  if (v1)
  {
    (*v7)(v11, v12);
    (*v8)(v9, v10);
    v13 = sub_2197C6B04;
  }

  else
  {
    v4[73] = a1;
    (*v7)(v11, v12);
    (*v8)(v9, v10);
    v13 = sub_2197C68DC;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_2197C68DC()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[61];
  v5 = v0[62];
  v6 = v0[50];
  v7 = v0[47];
  v8 = *(v0[48] + 8);
  v8();
  (v8)(v6, v7);
  v9 = *(v5 + 8);
  v9(v3, v4);
  v9(v2, v4);
  v9(v1, v4);

  v10 = v0[1];
  v11 = v0[73];

  return v10(v11);
}

uint64_t sub_2197C6B04()
{
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[61];
  v5 = v0[62];
  v6 = v0[50];
  v7 = v0[47];
  v8 = *(v0[48] + 8);
  v8(v0[49], v7);
  v8(v6, v7);
  v9 = *(v5 + 8);
  v9(v3, v4);
  v9(v2, v4);
  v9(v1, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_2197C6D30@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v12[3] = a1;
  v14 = a3;
  sub_2197C9CFC(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_219BEF554();
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v13 = sub_219BED8D4();
  v6 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);

  v9 = sub_219BEDCB4();
  v12[1] = v10;
  v12[2] = v9;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for IntroToSportsTodayFeedGroupEmitter(0);
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for IntroToSportsTodayFeedGroupKnobs(0);
  sub_2197C9C7C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  (*(v6 + 32))(v14, v8, v13);
  type metadata accessor for TodayFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2197C70A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a3;
  v28 = sub_219BF3C84();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = (v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for IntroToSportsTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v29);
  v31 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v38[0] = 0x2D6E6F6974636573;
  *(&v38[0] + 1) = 0xE800000000000000;
  *&v42[0] = a1;
  v11 = sub_219BF7894();
  MEMORY[0x21CECC330](v11);

  v12 = v38[0];
  v30 = type metadata accessor for SportsSection(0);
  v13 = *(a2 + *(v30 + 20));
  v14 = *(v13 + 16);
  if (v14)
  {
    v25[1] = *(&v12 + 1);
    v25[2] = v12;
    v26 = a2;
    v27 = a4;
    *&v38[0] = MEMORY[0x277D84F90];
    sub_218C34A88(0, v14, 0);
    v15 = *&v38[0];
    v16 = (v13 + 32);
    v36 = *MEMORY[0x277D34128];
    v34 = *(v7 + 104);
    v35 = v7 + 104;
    v33 = v7 + 32;
    v17 = v28;
    do
    {
      *v9 = *v16;
      v34(v9, v36, v17);
      *&v38[0] = v15;
      v18 = *(v15 + 16);
      v19 = *(v15 + 24);
      swift_unknownObjectRetain();
      if (v18 >= v19 >> 1)
      {
        sub_218C34A88((v19 > 1), v18 + 1, 1);
        v15 = *&v38[0];
      }

      *(v15 + 16) = v18 + 1;
      (*(v7 + 32))(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v9, v17);
      v16 += 3;
      --v14;
    }

    while (v14);
    a2 = v26;
  }

  sub_218E8BFB8();
  sub_218E8C1FC();
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  v20 = v31;
  sub_219BEDD14();
  v21 = (v20 + *(v29 + 24));
  v22 = v21[1];
  v38[0] = *v21;
  v38[1] = v22;
  v39 = v21[2];
  v40 = v38[0];
  v41 = v22;
  v42[0] = v39;
  sub_218A18DB4(&v40, v37);
  sub_218A18DB4(&v41, v37);
  sub_218A18DB4(v42, v37);
  sub_2197C9978(v20, type metadata accessor for IntroToSportsTodayFeedGroupConfigData);
  sub_2198F4470(v38);
  sub_2189AD3D8(&v40);
  sub_2189AD3D8(&v41);
  sub_2189AD3D8(v42);
  v23 = *(a2 + *(v30 + 24));

  sub_2194B1FF0(&unk_282A29958, v23);
  sub_2189AD3D8(&unk_282A29978);
  sub_218F0BB90(MEMORY[0x277D84F90]);
  return sub_219BF3E74();
}

uint64_t sub_2197C74D4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_2197BE7AC(a1, a2);
}

uint64_t sub_2197C757C@<X0>(uint64_t a1@<X8>)
{
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for TodayFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2197C7640@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for IntroToSportsTodayFeedGroupKnobs(0);
  a2[4] = sub_2197C7B08(&qword_280EA6630, type metadata accessor for IntroToSportsTodayFeedGroupKnobs, &unk_219C346FC);
  a2[5] = sub_2197C7B08(&qword_280EA6638, type metadata accessor for IntroToSportsTodayFeedGroupKnobs, &unk_219C34724);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2197C9910(v2 + v4, boxed_opaque_existential_1, type metadata accessor for IntroToSportsTodayFeedGroupKnobs);
}

uint64_t sub_2197C7708()
{
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);

  return sub_219BEDCA4();
}

uint64_t sub_2197C7778@<X0>(uint64_t *a2@<X8>)
{
  sub_2197C9CFC(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2197C9A88(0, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2197C9978(inited + 32, sub_2188317B0);
  sub_2197C9CFC(0, &qword_280EE76F0, type metadata accessor for IntroToSportsTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_2197C9D60();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2197C7940(uint64_t a1)
{
  sub_2197C7B08(&qword_280EA03D8, type metadata accessor for IntroToSportsTodayFeedGroupEmitter, &unk_219CA5B0C);

  return sub_219BE2324();
}

uint64_t sub_2197C79AC()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_219BF53D4();
  v2 = [v0 arrayForKey_];

  if (v2)
  {
    v3 = sub_219BF5924();

    v4 = sub_218B0C5E4(v3);

    if (v4)
    {
      return v4;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2197C7B08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for IntroToSportsTodayFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EA03B0;
  if (!qword_280EA03B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2197C7BB0(uint64_t a1)
{
  sub_2197C9A88(319, &qword_280E92160, type metadata accessor for IntroToSportsTodayFeedGroupConfigData, sub_2197C7AA0, sub_2197C7AD4);
  if (v1 <= 0x3F)
  {
    type metadata accessor for IntroToSportsTodayFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186C709C(319, &qword_280E90510, MEMORY[0x277D33778], 1);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SportsTopicClusteringService();
        if (v4 <= 0x3F)
        {
          type metadata accessor for SportsSectionService();
          if (v5 <= 0x3F)
          {
            type metadata accessor for SportsScoreSorter();
            if (v6 <= 0x3F)
            {
              sub_2186C709C(319, qword_280EC7670, &protocol descriptor for MySportsTagServiceType, 1);
              if (v7 <= 0x3F)
              {
                sub_218735F3C();
                if (v8 <= 0x3F)
                {
                  sub_2186C709C(319, qword_280EA48C0, &protocol descriptor for SportsConfiguringDataServiceType, 0);
                  if (v9 <= 0x3F)
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

uint64_t sub_2197C7E84(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IntroToSportsTodayFeedGroupEmitter(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_219BF1934() - 8);
  v10 = *(v1 + v7);
  v11 = (v8 + *(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = v1 + v8;
  v13 = *(v1 + v8);
  v14 = *(v12 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2187609C8;

  return sub_2197C1314(a1, v1 + v6, v10, v13, v14, v1 + v11);
}

uint64_t sub_2197C7FFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IntroToSportsTodayFeedGroupEmitter(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_219BF1934() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = v1 + v7;
  v12 = *(v1 + v7);
  v13 = *(v11 + 8);
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2187608D4;

  return sub_2197C2714(a1, v1 + v6, v12, v13, v14, v1 + v10);
}

uint64_t sub_2197C8174(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for IntroToSportsTodayFeedGroupEmitter(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v8);
  v13 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_2187609C8;

  return sub_2197C2F6C(a1, v1 + v6, v10, v11, v12, v13);
}

uint64_t sub_2197C82BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[26] = v17;
  v9[27] = v8;
  v9[24] = a7;
  v9[25] = a8;
  v9[22] = a5;
  v9[23] = a6;
  v9[20] = a3;
  v9[21] = a4;
  v9[18] = a1;
  v9[19] = a2;
  v10 = sub_219BF1934();
  v9[28] = v10;
  v9[29] = *(v10 - 8);
  v9[30] = swift_task_alloc();
  v9[31] = type metadata accessor for CuratedTagFeedGroupConfigData(0);
  v9[32] = swift_task_alloc();
  v11 = type metadata accessor for TagFeedCuration(0);
  v9[33] = v11;
  v9[34] = *(v11 - 8);
  v9[35] = swift_task_alloc();
  v12 = sub_219BF0354();
  v9[36] = v12;
  v9[37] = *(v12 - 8);
  v9[38] = swift_task_alloc();
  v13 = sub_219BEFBD4();
  v9[39] = v13;
  v9[40] = *(v13 - 8);
  v9[41] = swift_task_alloc();
  v9[42] = swift_task_alloc();
  type metadata accessor for TodayFeedServiceContext(0);
  v9[43] = swift_task_alloc();
  v14 = sub_219BF0BD4();
  v9[44] = v14;
  v9[45] = *(v14 - 8);
  v9[46] = swift_task_alloc();
  v9[47] = type metadata accessor for SportsTopicClusteringRequest(0);
  v9[48] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2197C859C, 0, 0);
}

uint64_t sub_2197C859C()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 344);
  v4 = *(v0 + 352);
  v5 = *(*(v0 + 160) + 16);
  type metadata accessor for IntroToSportsTodayFeedGroupEmitter(0);
  v96 = v5;
  swift_unknownObjectRetain();
  sub_219BEF134();
  sub_219BEF0B4();
  sub_2197C9910(*(v0 + 40) + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v3, type metadata accessor for TodayFeedServiceContext);

  sub_218D559C0(v1, v3);
  v95 = v6;
  sub_2197C9978(v3, type metadata accessor for TodayFeedServiceContext);
  v7 = *(v2 + 8);
  v7(v1, v4);
  type metadata accessor for IntroToSportsTodayFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  v108 = v7;
  v7(v1, v4);
  v94 = *(v0 + 48);
  v8 = qword_280E8D7A0;
  v93 = *MEMORY[0x277D30BC8];
  if (v8 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v9 = *(v0 + 368);
    v10 = *(v0 + 352);
    v102 = *(v0 + 336);
    v105 = *(v0 + 328);
    v12 = *(v0 + 312);
    v11 = *(v0 + 320);
    v109 = *(v0 + 160);
    v13 = qword_280F616D8;
    *(v0 + 392) = qword_280F616D8;
    v97 = v13;
    v92 = FCFeedBinForTopicsInForYou();
    sub_219BEF134();
    sub_219BEF524();
    v108(v9, v10);
    v112 = v0;
    v14 = *(v0 + 424);
    v15 = *(v11 + 104);
    v15(v102, *MEMORY[0x277D329C0], v12);
    v15(v105, *MEMORY[0x277D32998], v12);
    v16 = *(v109 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);

    sub_2194796A0(v17, v16);
    v19 = v18;
    sub_219BF1724();
    v20 = sub_219BF5AB4();

    v21 = v20 >> 62 ? sub_219BF7214() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v112;
    v113 = MEMORY[0x277D84F90];
    v90 = v19;
    if (v21)
    {
      v114 = MEMORY[0x277D84F90];
      v23 = sub_21870B65C(0, v21 & ~(v21 >> 63), 0);
      if (v21 < 0)
      {
        __break(1u);
        return MEMORY[0x2821D23D8](v23);
      }

      v24 = 0;
      v25 = v114;
      do
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v24, v20);
        }

        else
        {
        }

        v26 = sub_219BF16A4();
        v28 = v27;

        v30 = *(v114 + 16);
        v29 = *(v114 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_21870B65C((v29 > 1), v30 + 1, 1);
        }

        ++v24;
        *(v114 + 16) = v30 + 1;
        v31 = v114 + 16 * v30;
        *(v31 + 32) = v26;
        *(v31 + 40) = v28;
      }

      while (v21 != v24);

      v22 = v112;
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
    }

    v32 = v22[47];
    v33 = v22[48];
    v34 = v22[46];
    v110 = v22[44];
    v103 = v22[42];
    v84 = v22[41];
    v101 = v22[40];
    v98 = v22[39];
    v99 = v22[38];
    v85 = v22[37];
    v87 = v22[36];
    v89 = v22[21];
    v100 = v22[18];
    v91 = sub_2194B1FF0(v25, v90);

    sub_219BEF204();
    sub_219BEF134();
    sub_219BEF524();

    v108(v34, v110);
    v88 = v22[7];
    sub_219BEF1E4();
    sub_219BEF134();
    sub_219BEF524();

    v108(v34, v110);
    v86 = v22[8];
    sub_219BEF1F4();
    sub_219BEF134();
    sub_219BEF524();

    v108(v34, v110);
    v83 = v22[9];
    sub_219BEF1B4();
    sub_219BEF134();
    sub_219BEF524();

    v108(v34, v110);
    v82 = v22[10];
    sub_219BEF1D4();
    sub_219BEF134();
    sub_219BEF524();

    v108(v34, v110);
    sub_219BEF134();
    sub_219BEF524();
    v108(v34, v110);
    v81 = *(v22 + 425);
    sub_219BEF134();
    sub_219BEF524();
    v108(v34, v110);
    v79 = v22[11];
    sub_219BEF0B4();

    v35 = NewsCoreUserDefaults();
    v36 = [v35 BOOLForKey_];

    v37 = 135486;
    if (v36)
    {
      v37 = 151870;
    }

    v76 = v37;
    *v33 = v100;
    v38 = *MEMORY[0x277D32C88];
    v39 = sub_219BF03B4();
    (*(*(v39 - 8) + 104))(v33, v38, v39);
    v40 = *(v101 + 16);
    v40(&v33[v32[12]], v103, v98);
    v40(&v33[v32[13]], v84, v98);
    (*(v85 + 16))(&v33[v32[24]], v99, v87);
    v41 = v32[15];
    *&v33[v41] = 1;
    v42 = v22;
    v74 = v41;
    v75 = v32[16];
    *&v33[v75] = 5;
    v77 = v32[17];
    *&v33[v77] = 1;
    v78 = v32[18];
    *&v33[v78] = 0x7FFFFFFFFFFFFFFFLL;
    v80 = v32[19];
    v33[v80] = 0;
    *&v33[v32[28]] = 0x7FFFFFFFFFFFFFFFLL;
    v43 = v32[29];
    v44 = *(v85 + 8);

    v44(v99, v87);
    v45 = *(v101 + 8);
    v45(v84, v98);
    v45(v103, v98);
    v104 = v43;
    *&v33[v43] = MEMORY[0x277D84F90];
    *&v33[v32[5]] = v96;
    *&v33[v32[6]] = v95;
    *&v33[v32[7]] = v94;
    *&v33[v32[8]] = v93;
    *&v33[v32[9]] = v97;
    *&v33[v32[10]] = v92;
    v33[v32[11]] = v14;
    *&v33[v32[14]] = v91;
    *&v33[v32[20]] = v88;
    *&v33[v32[21]] = v86;
    *&v33[v32[22]] = v83;
    *&v33[v32[23]] = v82;
    v33[v32[25]] = v81;
    v46 = &v33[v32[26]];
    *v46 = v79;
    v46[8] = 0;
    *&v33[v32[27]] = v76;
    sub_219BEF134();
    sub_219BEF524();
    v108(v34, v110);
    *&v33[v74] = v22[13];
    sub_219BEF134();
    sub_219BEF524();
    v108(v34, v110);
    *&v33[v75] = v22[14];
    sub_219BEF134();
    sub_219BEF524();
    v108(v34, v110);
    *&v33[v77] = v22[15];
    sub_219BEF134();
    sub_219BEF524();
    v108(v34, v110);
    *&v33[v78] = v22[16];
    sub_219BEF134();
    sub_219BEF524();
    v108(v34, v110);
    v106 = v33;
    v33[v80] = *(v22 + 426);
    v47 = *(v89 + 16);
    if (!v47)
    {
      break;
    }

    v48 = v42[34];
    v111 = v42[31];
    v49 = v42[29];
    v108 = *(v42[33] + 28);
    v50 = v42[21] + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v107 = *(v48 + 72);
    v51 = (v49 + 16);
    v52 = (v49 + 8);
    v113 = MEMORY[0x277D84F90];
    while (1)
    {
      v53 = v112[35];
      v54 = v112[32];
      v55 = v112[30];
      v56 = v112[28];
      sub_2197C9910(v50, v53, type metadata accessor for TagFeedCuration);
      sub_2197C9A88(0, &qword_280E92490, type metadata accessor for CuratedTagFeedGroupConfigData, sub_2197C9B14, sub_2197C9B48);
      sub_219BEDD14();
      (*v51)(v55, v54 + *(v111 + 20), v56);
      sub_2197C9978(v54, type metadata accessor for CuratedTagFeedGroupConfigData);
      v57 = sub_219BF1754();
      (*v52)(v55, v56);
      sub_2197C9978(v53, type metadata accessor for TagFeedCuration);
      v58 = *(v57 + 16);
      v59 = v113;
      v0 = *(v113 + 2);
      v60 = v0 + v58;
      if (__OFADD__(v0, v58))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v60 > *(v113 + 3) >> 1)
      {
        if (v0 <= v60)
        {
          v62 = v0 + v58;
        }

        else
        {
          v62 = v0;
        }

        v59 = sub_218840D24(isUniquelyReferenced_nonNull_native, v62, 1, v113);
      }

      if (*(v57 + 16))
      {
        if ((*(v59 + 3) >> 1) - *(v59 + 2) < v58)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v58)
        {
          v63 = *(v59 + 2);
          v64 = __OFADD__(v63, v58);
          v65 = v63 + v58;
          if (v64)
          {
            goto LABEL_39;
          }

          *(v59 + 2) = v65;
        }
      }

      else
      {

        if (v58)
        {
          goto LABEL_37;
        }
      }

      v113 = v59;
      v50 += v107;
      if (!--v47)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

LABEL_33:
  v66 = v112[48];
  v68 = v112[24];
  v67 = v112[25];
  v69 = v112[23];
  v112[17] = v113;
  sub_2186D0BA8();
  sub_2197C7B08(&qword_280E8EDE0, sub_2186D0BA8, MEMORY[0x277D83970]);
  v70 = sub_219BF56E4();

  *(v106 + v104) = v70;
  v71 = sub_219BF6214();
  sub_219BE5314("Intro to sports will fetch and cluster sports topics...", 55, 2, &dword_2186C1000, v97, v71, MEMORY[0x277D84F90]);
  v112[50] = sub_218E54FE0(v66, v69, v68, v67);
  v72 = swift_task_alloc();
  v112[51] = v72;
  *v72 = v112;
  v72[1] = sub_2197C9500;
  v23 = (v112 + 2);

  return MEMORY[0x2821D23D8](v23);
}

uint64_t sub_2197C9500()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_2197C9764;
  }

  else
  {

    v2 = sub_2197C961C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2197C961C(uint64_t a1)
{
  v3 = v1[48];
  v2 = v1[49];
  v8 = v1[3];
  v9 = v1[2];
  v7 = v1[4];
  v4 = sub_219BF6214();
  sub_219BE5314("Intro to sports will fetch and cluster sports topics...done", 59, 2, &dword_2186C1000, v2, v4, MEMORY[0x277D84F90]);
  sub_2197C9978(v3, type metadata accessor for SportsTopicClusteringRequest);

  v5 = v1[1];

  return v5(v9, v8, v7);
}

uint64_t sub_2197C9764()
{

  v2 = v0[48];
  v1 = v0[49];
  v3 = sub_219BF6214();
  sub_219BE5314("Intro to sports will fetch and cluster sports topics...done", 59, 2, &dword_2186C1000, v1, v3, MEMORY[0x277D84F90]);
  sub_2197C9978(v2, type metadata accessor for SportsTopicClusteringRequest);

  v4 = v0[1];

  return v4();
}

void sub_2197C98A4(uint64_t a1)
{
  if (!qword_280E8E960)
  {
    type metadata accessor for SportsSection(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E8E960);
    }
  }
}

uint64_t sub_2197C9910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2197C9978(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2197C9A88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    a5();
    v8 = sub_219BEDD94();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2197C9B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2197C9C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_2197C9CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2197C9D60()
{
  result = qword_280EE76F8;
  if (!qword_280EE76F8)
  {
    sub_2197C9CFC(255, &qword_280EE76F0, type metadata accessor for IntroToSportsTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE76F8);
  }

  return result;
}

uint64_t sub_2197C9E14(uint64_t a1)
{
  v2 = sub_2197C9ED4(qword_280E94CD8, &unk_219CA5D04);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2197C9ED4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2197C9F18(uint64_t a1)
{
  swift_getObjectType();
  if (sub_219BF2FA4())
  {
    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v1 = sub_219BE5434();
    __swift_project_value_buffer(v1, qword_280F62778);
    v5 = sub_219BE5414();
    v2 = sub_219BF6214();
    if (os_log_type_enabled(v5, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_2186C1000, v5, v2, "User already completed onboarding. Skipping.", v3, 2u);
      MEMORY[0x21CECF960](v3, -1, -1);
    }
  }

  else
  {
    MEMORY[0x28223BE20](0);
    sub_219BE3204();
    v4 = sub_219BE2E54();
    sub_219BE2F94();
  }
}

id sub_2197CA0DC()
{
  v1 = OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler____lazy_storage___sportsUpsellConfig;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler____lazy_storage___sportsUpsellConfig);
  v3 = v2;
  if (v2 != 1)
  {
LABEL_7:
    sub_2190AB1E0(v2);
    return v3;
  }

  result = [*(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_configurationManager) configuration];
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      v3 = [v5 sportsUpsellConfig];
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v3 = 0;
    }

    v6 = *(v0 + v1);
    *(v0 + v1) = v3;
    v7 = v3;
    sub_2190AAF44(v6);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_2197CA1B4(void *a1)
{
  v3 = sub_2197CA0DC();
  if (!v3)
  {
    sub_21874D974();
    swift_allocObject();
    return sub_219BE3014();
  }

  v4 = v3;
  [v3 maxNumberOfTopics];

  v5 = [a1 topicIDs];
  if (v5)
  {
    v6 = v5;
    sub_219BF5924();

    v7 = sub_219A79734();
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v7 = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F90] + 32;
    v13 = 1;
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_tagService), *(v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_tagService + 24));
  if ((v13 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_8:
    sub_218B666EC(v7, v9, v11, v13);
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v15 = swift_dynamicCastClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v15 + 16);

  if (__OFSUB__(v13 >> 1, v11))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v16 != (v13 >> 1) - v11)
  {
LABEL_18:
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v17 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_15:
  sub_219BF1C34();

  v18 = sub_219BE2E54();
  v19 = sub_219BE2F64();
  swift_unknownObjectRelease();

  return v19;
}

void sub_2197CA3D8(_BYTE *a1, uint64_t a2)
{
  sub_2197CC940(0, qword_280ED4F40, type metadata accessor for SportsUpsellState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v42 - v6;
  v8 = type metadata accessor for SportsUpsellState(0);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = (&v42 - v13);
  if (*a1 != 1)
  {
    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v27 = sub_219BE5434();
    __swift_project_value_buffer(v27, qword_280F62778);
    v28 = sub_219BE5414();
    v29 = sub_219BF6214();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2186C1000, v28, v29, "Headline is not sports related. Skipping.", v30, 2u);
      MEMORY[0x21CECF960](v30, -1, -1);
    }

    goto LABEL_26;
  }

  v46 = v2;
  if (qword_280EE6060 != -1)
  {
    swift_once();
  }

  v15 = sub_219BE5434();
  __swift_project_value_buffer(v15, qword_280F62778);
  v16 = sub_219BE5414();
  v17 = sub_219BF6214();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = v9;
    v19 = a2;
    v20 = v18;
    *v18 = 0;
    _os_log_impl(&dword_2186C1000, v16, v17, "Headline is sports related. Proceeding...", v18, 2u);
    v21 = v20;
    a2 = v19;
    v9 = v45;
    MEMORY[0x21CECF960](v21, -1, -1);
  }

  if ((sub_2197CA9A8() & 1) == 0)
  {
    v28 = sub_219BE5414();
    v31 = sub_219BF6214();
    if (os_log_type_enabled(v28, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2186C1000, v28, v31, "Quiescence interval has not elapsed. Skipping.", v32, 2u);
      MEMORY[0x21CECF960](v32, -1, -1);
    }

    goto LABEL_26;
  }

  v22 = (a2 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store);
  v23 = *(a2 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 24);
  v43 = *(a2 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 32);
  v44 = v23;
  v45 = a2;
  v42 = __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store), v23);
  v24 = v22[3];
  v25 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v24);
  (*(v25 + 8))(v24, v25);
  v26 = *(v9 + 48);
  if (v26(v7, 1, v8) == 1)
  {
    sub_219BDBBB4();
    *v11 = 0;
    *(v11 + v8[6]) = 0;
    *(v11 + v8[7]) = 0;
    if (v26(v7, 1, v8) != 1)
    {
      sub_2197CC7F8(v7);
    }
  }

  else
  {
    sub_2197CC884(v7, v11);
  }

  v33 = *v11 + 1;
  if (__OFADD__(*v11, 1))
  {
    __break(1u);
    return;
  }

  v34 = v8[5];
  v35 = sub_219BDBD34();
  (*(*(v35 - 8) + 16))(v14 + v34, v11 + v34, v35);
  LOBYTE(v34) = *(v11 + v8[6]);
  v36 = *(v11 + v8[7]);
  sub_218D49498(v11);
  *v14 = v33;
  *(v14 + v8[6]) = v34;
  *(v14 + v8[7]) = v36;
  (*(v43 + 24))(v14, v44);
  sub_218D49498(v14);
  v37 = sub_2197CB0EC();
  v28 = sub_219BE5414();
  v38 = sub_219BF6214();
  v39 = os_log_type_enabled(v28, v38);
  if ((v37 & 1) == 0)
  {
    if (v39)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2186C1000, v28, v38, "Upsell cannot be presented. Exiting.", v41, 2u);
      MEMORY[0x21CECF960](v41, -1, -1);
    }

LABEL_26:

    return;
  }

  if (v39)
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_2186C1000, v28, v38, "Presenting sports upsell...", v40, 2u);
    MEMORY[0x21CECF960](v40, -1, -1);
  }

  sub_2197CB908();
}

uint64_t sub_2197CA9A8()
{
  v63 = sub_219BDBD34();
  v61 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v60 = &v58 - v3;
  MEMORY[0x28223BE20](v4);
  v59 = &v58 - v5;
  MEMORY[0x28223BE20](v6);
  v64 = &v58 - v7;
  sub_2197CC940(0, qword_280ED4F40, type metadata accessor for SportsUpsellState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = type metadata accessor for SportsUpsellState(0);
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v58 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = (&v58 - v18);
  v20 = (v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store);
  v21 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 24);
  v22 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store), v21);
  (*(v22 + 8))(v21, v22);
  v23 = *(v15 + 48);
  if (v23(v13, 1, v14) == 1)
  {
    sub_219BDBBB4();
    *v19 = 0;
    *(v19 + v14[6]) = 0;
    *(v19 + v14[7]) = 0;
    if (v23(v13, 1, v14) != 1)
    {
      sub_2197CC7F8(v13);
    }
  }

  else
  {
    sub_2197CC884(v13, v19);
  }

  v24 = *(v19 + v14[6]);
  sub_218D49498(v19);
  v25 = sub_2197CA0DC();
  if (v25)
  {
    v26 = &selRef_engagedUserQuiescenceInterval;
    if (!v24)
    {
      v26 = &selRef_quiescenceInterval;
    }

    v27 = v25;
    v28 = [v25 *v26];

    v29 = v20[3];
    v30 = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v29);
    (*(v30 + 8))(v29, v30);
    if (v23(v10, 1, v14) == 1)
    {
      v31 = v58;
      sub_219BDBBB4();
      v32 = v23(v10, 1, v14);
      v33 = v64;
      v34 = v61;
      v35 = v62;
      if (v32 != 1)
      {
        sub_2197CC7F8(v10);
      }
    }

    else
    {
      v31 = v58;
      sub_2197CC884(v10, v58);
      v33 = v64;
      v34 = v61;
      v35 = v62;
    }

    v41 = v63;
    (*(v34 + 32))(v33, v31 + v14[5], v63);
    v42 = v59;
    sub_219BDBBF4();
    v43 = v60;
    sub_219BDBCB4();
    LODWORD(v40) = sub_219BDBC24();
    v44 = *(v34 + 8);
    v44(v43, v41);
    v44(v42, v41);
    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v45 = sub_219BE5434();
    __swift_project_value_buffer(v45, qword_280F62778);
    (*(v34 + 16))(v35, v33, v41);
    v46 = sub_219BE5414();
    v47 = sub_219BF6214();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      LODWORD(v62) = v40;
      v40 = v35;
      v49 = v48;
      v50 = swift_slowAlloc();
      v65 = v50;
      *v49 = 67109634;
      *(v49 + 4) = v62 & 1;
      *(v49 + 8) = 2048;
      *(v49 + 10) = v28;
      *(v49 + 18) = 2080;
      sub_21874E3C0(&qword_280EE9C60, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v51 = sub_219BF7894();
      v53 = v52;
      v54 = v40;
      LOBYTE(v40) = v62;
      v44(v54, v41);
      v55 = sub_2186D1058(v51, v53, &v65);

      *(v49 + 20) = v55;
      _os_log_impl(&dword_2186C1000, v46, v47, "Checking quiescenceIntervalHasElapsed [%{BOOL}d]: quiescence interval [%lld]. Last Upsell Shown Date [%s]", v49, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      MEMORY[0x21CECF960](v50, -1, -1);
      MEMORY[0x21CECF960](v49, -1, -1);

      v56 = v64;
    }

    else
    {

      v44(v35, v41);
      v56 = v33;
    }

    v44(v56, v41);
  }

  else
  {
    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v36 = sub_219BE5434();
    __swift_project_value_buffer(v36, qword_280F62778);
    v37 = sub_219BE5414();
    v38 = sub_219BF6214();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_2186C1000, v37, v38, "Quiescence interval is null. Exiting.", v39, 2u);
      MEMORY[0x21CECF960](v39, -1, -1);
    }

    LOBYTE(v40) = 0;
  }

  return v40 & 1;
}

uint64_t sub_2197CB0EC()
{
  sub_2197CC940(0, qword_280ED4F40, type metadata accessor for SportsUpsellState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v68 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v68 - v8;
  v10 = type metadata accessor for SportsUpsellState(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v68 - v15);
  MEMORY[0x28223BE20](v17);
  v19 = (&v68 - v18);
  v20 = sub_2197CA0DC();
  if (!v20)
  {
    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v27 = sub_219BE5434();
    __swift_project_value_buffer(v27, qword_280F62778);
    v28 = sub_219BE5414();
    v29 = sub_219BF6214();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2186C1000, v28, v29, "No configuration found. Exiting.", v30, 2u);
      MEMORY[0x21CECF960](v30, -1, -1);
    }

    goto LABEL_37;
  }

  v68 = v13;
  v69 = v3;
  v70 = v0;
  v71 = v20;
  v21 = &v0[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store];
  v22 = *&v0[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 24];
  v23 = *&v0[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 32];
  __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store], v22);
  (*(v23 + 8))(v22, v23);
  v24 = *(v11 + 48);
  if (v24(v9, 1, v10) == 1)
  {
    sub_219BDBBB4();
    *v19 = 0;
    *(v19 + *(v10 + 24)) = 0;
    *(v19 + *(v10 + 28)) = 0;
    v25 = v24(v9, 1, v10);
    v26 = v71;
    if (v25 != 1)
    {
      sub_2197CC7F8(v9);
    }
  }

  else
  {
    sub_2197CC884(v9, v19);
    v26 = v71;
  }

  v31 = *(v19 + *(v10 + 28));
  sub_218D49498(v19);
  if (v31 < [v26 maxNumberOfPresentations])
  {
    v32 = *(v21 + 3);
    v33 = *(v21 + 4);
    __swift_project_boxed_opaque_existential_1(v21, v32);
    (*(v33 + 8))(v32, v33);
    if (v24(v6, 1, v10) == 1)
    {
      sub_219BDBBB4();
      *v16 = 0;
      *(v16 + *(v10 + 24)) = 0;
      *(v16 + *(v10 + 28)) = 0;
      v34 = v24(v6, 1, v10);
      v35 = v71;
      if (v34 != 1)
      {
        sub_2197CC7F8(v6);
      }
    }

    else
    {
      sub_2197CC884(v6, v16);
      v35 = v71;
    }

    v45 = *v16;
    sub_218D49498(v16);
    if (v45 < [v35 minNumberOfArticlesRead])
    {
      if (qword_280EE6060 != -1)
      {
        swift_once();
      }

      v46 = sub_219BE5434();
      __swift_project_value_buffer(v46, qword_280F62778);
      v47 = v70;
      v48 = v35;
      v49 = sub_219BE5414();
      v50 = sub_219BF6214();
      if (os_log_type_enabled(v49, v50))
      {
        LODWORD(v70) = v50;
        v71 = v47;
        v51 = swift_slowAlloc();
        *v51 = 134218240;
        v52 = *(v21 + 3);
        v53 = *(v21 + 4);
        __swift_project_boxed_opaque_existential_1(v21, v52);
        v54 = v69;
        (*(v53 + 8))(v52, v53);
        if (v24(v54, 1, v10) == 1)
        {
          v55 = v68;
          sub_219BDBBB4();
          *v55 = 0;
          *(v55 + *(v10 + 24)) = 0;
          *(v55 + *(v10 + 28)) = 0;
          v56 = &selRef__setPreferredLayout_;
          if (v24(v54, 1, v10) != 1)
          {
            sub_2197CC7F8(v54);
          }
        }

        else
        {
          v55 = v68;
          sub_2197CC884(v54, v68);
          v56 = &selRef__setPreferredLayout_;
        }

        v67 = *v55;
        sub_218D49498(v55);
        *(v51 + 4) = v67;

        *(v51 + 12) = 2048;
        *(v51 + 14) = [v48 v56[302]];

        _os_log_impl(&dword_2186C1000, v49, v70, "Required number of articles not reached [%ld/%lld]. Exiting.", v51, 0x16u);
        MEMORY[0x21CECF960](v51, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    v57 = [v35 landingPageArticleID];
    if (v57)
    {
      v58 = v57;
      v59 = sub_219BF5414();
      v61 = v60;

      v62 = HIBYTE(v61) & 0xF;
      v63 = (v61 & 0x2000000000000000) == 0;
      v35 = v71;
      if (v63)
      {
        v62 = v59 & 0xFFFFFFFFFFFFLL;
      }

      if (v62)
      {

        return 1;
      }
    }

    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v65 = sub_219BE5434();
    __swift_project_value_buffer(v65, qword_280F62778);
    v37 = sub_219BE5414();
    v66 = sub_219BF6214();
    if (!os_log_type_enabled(v37, v66))
    {

      return 0;
    }

    v28 = v35;
    v39 = swift_slowAlloc();
    *v39 = 0;
    v40 = "Landing Page Article ID not found. Exiting.";
    v41 = v66;
    v42 = v37;
    v43 = v39;
    v44 = 2;
    goto LABEL_36;
  }

  if (qword_280EE6060 != -1)
  {
    swift_once();
  }

  v36 = sub_219BE5434();
  __swift_project_value_buffer(v36, qword_280F62778);
  v28 = v26;
  v37 = sub_219BE5414();
  v38 = sub_219BF6214();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    *(v39 + 4) = [v28 maxNumberOfPresentations];

    v40 = "Reached max number of presentations [%lld]. Exiting.";
    v41 = v38;
    v42 = v37;
    v43 = v39;
    v44 = 12;
LABEL_36:
    _os_log_impl(&dword_2186C1000, v42, v41, v40, v43, v44);
    MEMORY[0x21CECF960](v39, -1, -1);

    goto LABEL_37;
  }

LABEL_37:
  return 0;
}

uint64_t sub_2197CB908()
{
  v1 = v0;
  v2 = sub_219BED174();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v54 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_219BED1D4();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197CC940(0, qword_280ED4F40, type metadata accessor for SportsUpsellState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v48 - v6;
  v7 = type metadata accessor for SportsUpsellState(0);
  v58 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (&v48 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = (v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped);
  v21 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped);
  v22 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped + 8);
  *v20 = sub_2197CC8E8;
  v20[1] = v19;

  sub_2187FABEC(v21, v22);

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = (v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled);
  v25 = *(v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled);
  v26 = *(v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled + 8);
  *v24 = sub_2197CC910;
  v24[1] = v23;

  v27 = v25;
  v28 = v58;
  sub_2187FABEC(v27, v26);

  v51 = v1;
  v29 = (v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store);
  v30 = v59;
  v31 = v29[3];
  v49 = v29[4];
  v50 = v31;
  v48 = __swift_project_boxed_opaque_existential_1(v29, v31);
  v33 = v29[3];
  v32 = v29[4];
  __swift_project_boxed_opaque_existential_1(v29, v33);
  (*(v32 + 8))(v33, v32);
  v34 = *(v28 + 48);
  if (v34(v30, 1, v7) == 1)
  {
    sub_219BDBBB4();
    *v9 = 0;
    *(v9 + v7[6]) = 0;
    *(v9 + v7[7]) = 0;
    if (v34(v30, 1, v7) != 1)
    {
      sub_2197CC7F8(v30);
    }
  }

  else
  {
    sub_2197CC884(v30, v9);
  }

  v35 = v7[5];
  v36 = sub_219BDBD34();
  v37 = *(*(v36 - 8) + 16);
  v37(&v12[v35], v9 + v35, v36);
  v38 = *(v9 + v7[6]);
  v39 = *(v9 + v7[7]);
  sub_218D49498(v9);
  *v12 = 0;
  v12[v7[6]] = v38;
  *&v12[v7[7]] = v39;
  v40 = v7[5];
  sub_219BDBCB4();
  sub_218D49498(v12);
  *v15 = 0;
  *(v15 + v7[6]) = v38;
  *(v15 + v7[7]) = v39;
  v37(&v18[v7[5]], v15 + v40, v36);
  result = sub_218D49498(v15);
  if (__OFADD__(v39, 1))
  {
    __break(1u);
  }

  else
  {
    *v18 = 0;
    v18[v7[6]] = v38;
    *&v18[v7[7]] = v39 + 1;
    (*(v49 + 24))(v18, v50);
    sub_218D49498(v18);
    [*(v51 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_postActionHandlerManager) addPostActionHandler:v51 forActionType:*MEMORY[0x277D55110]];
    sub_2187D9028();
    v42 = sub_219BF66A4();
    v43 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_2197CC938;
    aBlock[5] = v43;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_218793E0C;
    aBlock[3] = &block_descriptor_172;
    v44 = _Block_copy(aBlock);

    v45 = v52;
    sub_219BED1A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_21874E3C0(&qword_280E927E0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_2197CC940(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_21874EB68();
    v46 = v54;
    v47 = v57;
    sub_219BF7164();
    MEMORY[0x21CECD460](0, v45, v46, v44);
    _Block_release(v44);

    (*(v56 + 8))(v46, v47);
    return (*(v53 + 8))(v45, v55);
  }

  return result;
}

void sub_2197CC01C(uint64_t a1, const char *a2, int a3)
{
  sub_2197CC940(0, qword_280ED4F40, type metadata accessor for SportsUpsellState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  v8 = type metadata accessor for SportsUpsellState(0);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = (&v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v38 = a3;
    if (qword_280EE6060 != -1)
    {
      swift_once();
    }

    v17 = sub_219BE5434();
    __swift_project_value_buffer(v17, qword_280F62778);
    v18 = sub_219BE5414();
    v19 = sub_219BF6214();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2186C1000, v18, v19, a2, v20, 2u);
      MEMORY[0x21CECF960](v20, -1, -1);
    }

    v21 = &v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store];
    v22 = *&v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 32];
    v37 = *&v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store + 24];
    v36 = __swift_project_boxed_opaque_existential_1(&v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_store], v37);
    v23 = *(v21 + 3);
    v24 = *(v21 + 4);
    __swift_project_boxed_opaque_existential_1(v21, v23);
    (*(v24 + 8))(v23, v24);
    v25 = *(v9 + 48);
    if (v25(v7, 1, v8) == 1)
    {
      sub_219BDBBB4();
      *v11 = 0;
      *(v11 + v8[6]) = 0;
      *(v11 + v8[7]) = 0;
      if (v25(v7, 1, v8) != 1)
      {
        sub_2197CC7F8(v7);
      }
    }

    else
    {
      sub_2197CC884(v7, v11);
    }

    v26 = *v11;
    v27 = v8[5];
    v28 = sub_219BDBD34();
    (*(*(v28 - 8) + 16))(&v14[v27], v11 + v27, v28);
    v29 = *(v11 + v8[7]);
    sub_218D49498(v11);
    *v14 = v26;
    v14[v8[6]] = v38;
    *&v14[v8[7]] = v29;
    (*(v22 + 24))(v14, v37, v22);
    sub_218D49498(v14);
    v30 = &v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped];
    v31 = *&v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped];
    v32 = *&v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped + 8];
    *v30 = 0;
    *(v30 + 1) = 0;
    sub_2187FABEC(v31, v32);
    v33 = &v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled];
    v34 = *&v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled];
    v35 = *&v16[OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled + 8];
    *v33 = 0;
    *(v33 + 1) = 0;
    sub_2187FABEC(v34, v35);
  }
}

void *sub_2197CC3E4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    sub_218718690(result + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_router, v8);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v3 = sub_2197CA0DC();
    if (v3)
    {
      v5 = v3;
      v6 = [v3 landingPageArticleID];

      if (v6)
      {
        sub_219BF5414();
      }
    }

    sub_21874E3C0(&qword_27CC1F4A8, v4, type metadata accessor for SportsUpsellHandler, &unk_219CA5DB8);
    v7 = v2;
    sub_219BE43B4();

    return __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return result;
}

uint64_t sub_2197CC544(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (*a1 >> 62)
  {
LABEL_16:
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    v6 = v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CECE0F0](v5, v2);
      if (__OFADD__(v6, 1))
      {
LABEL_12:
        __break(1u);
LABEL_13:
        swift_unknownObjectRelease();
        break;
      }
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v7 = *(v2 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }
    }

    v8 = [v7 asSports];
    swift_unknownObjectRelease();
    v5 = v6 + 1;
    if (v8)
    {
      goto LABEL_13;
    }
  }

  sub_21874D974();
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2197CC7F8(uint64_t a1)
{
  sub_2197CC940(0, qword_280ED4F40, type metadata accessor for SportsUpsellState, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2197CC884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsUpsellState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2197CC940(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2197CC9A4()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled);
  v3 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled);
  if (v3)
  {
    v4 = v2[1];

    v3(v5);
    sub_2187FABEC(v3, v4);
  }

  [*(v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_postActionHandlerManager) removePostActionHandler:v1 forActionType:*MEMORY[0x277D55110]];
  v6 = (v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped);
  v7 = *(v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped);
  v8 = *(v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped + 8);
  *v6 = 0;
  v6[1] = 0;
  sub_2187FABEC(v7, v8);
  v9 = *v2;
  v10 = v2[1];
  *v2 = 0;
  v2[1] = 0;

  return sub_2187FABEC(v9, v10);
}

uint64_t sub_2197CCA58()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped);
  v3 = *(v0 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onOnboardTapped);
  if (v3)
  {
    v4 = v2[1];

    v3(v5);
    sub_2187FABEC(v3, v4);
  }

  [*(v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_postActionHandlerManager) removePostActionHandler:v1 forActionType:*MEMORY[0x277D55110]];
  v6 = *v2;
  v7 = v2[1];
  *v2 = 0;
  v2[1] = 0;
  sub_2187FABEC(v6, v7);
  v8 = (v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled);
  v9 = *(v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled);
  v10 = *(v1 + OBJC_IVAR____TtC7NewsUI219SportsUpsellHandler_onUpsellCancelled + 8);
  *v8 = 0;
  v8[1] = 0;

  return sub_2187FABEC(v9, v10);
}

uint64_t sub_2197CCB0C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[15] = 0;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F4B0 = result;
  return result;
}

uint64_t sub_2197CCD1C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[15] = 0;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F4B8 = result;
  return result;
}

uint64_t sub_2197CCF2C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[15] = 0;
  sub_2186C6588(0, &qword_280EE9078, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F4C0 = result;
  return result;
}

uint64_t sub_2197CD13C()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088, MEMORY[0x277D837D0], MEMORY[0x277D6D0D8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F4C8 = result;
  return result;
}

uint64_t sub_2197CD350()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088, MEMORY[0x277D837D0], MEMORY[0x277D6D0D8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F4D0 = result;
  return result;
}

uint64_t sub_2197CD564()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = sub_219BF5414();
  v7[1] = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_2186C6588(0, &qword_280EE9088, MEMORY[0x277D837D0], MEMORY[0x277D6D0D8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F4D8 = result;
  return result;
}

uint64_t sub_2197CD778()
{
  v0 = sub_219BDC934();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_219BDC944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v7 = sub_219BF5414();
  *(v7 + 1) = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D6D0A0], v4);
  (*(v1 + 104))(v3, *MEMORY[0x277D6D098], v0);
  strcpy(v10, "default_source");
  v10[15] = -18;
  sub_2186C6588(0, &qword_280EE9088, MEMORY[0x277D837D0], MEMORY[0x277D6D0D8]);
  swift_allocObject();
  result = sub_219BDC9F4();
  qword_27CC1F4E0 = result;
  return result;
}

uint64_t sub_2197CD9B8()
{
  v1 = *(v0 + 16);
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v1);
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_2197CDA1C(uint64_t a1)
{
  MEMORY[0x21CECE850](*(v1 + 16));

  return sub_219BF5524();
}

uint64_t sub_2197CDA70(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_219BF7AA4();
  MEMORY[0x21CECE850](v2);
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_2197CDAD0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if ((a2[2] & 1) == 0)
    {
      return 0;
    }
  }

  else if (a2[2])
  {
    return 0;
  }

  if (v3 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_219BF78F4();
  }
}

uint64_t SearchFilterItem.hash(into:)(uint64_t a1)
{
  sub_219BF5524();
  MEMORY[0x21CECE850](*(v1 + 32));
  sub_219BF5524();
  type metadata accessor for SearchFilterItem(0);
  sub_219BDBD34();
  sub_2197CE05C(&qword_27CC1AD70, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_219BF52F4();
}

uint64_t SearchFilterItem.hashValue.getter()
{
  sub_219BF7AA4();
  sub_219BF5524();
  MEMORY[0x21CECE850](*(v0 + 32));
  sub_219BF5524();
  type metadata accessor for SearchFilterItem(0);
  sub_219BDBD34();
  sub_2197CE05C(&qword_27CC1AD70, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2197CDCB4()
{
  sub_219BF7AA4();
  sub_219BF5524();
  MEMORY[0x21CECE850](*(v0 + 32));
  sub_219BF5524();
  sub_219BDBD34();
  sub_2197CE05C(&qword_27CC1AD70, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_2197CDD88(uint64_t a1)
{
  sub_219BF5524();
  MEMORY[0x21CECE850](*(v1 + 32));
  sub_219BF5524();
  sub_219BDBD34();
  sub_2197CE05C(&qword_27CC1AD70, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_219BF52F4();
}

uint64_t sub_2197CDE40(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();
  MEMORY[0x21CECE850](*(v1 + 32));
  sub_219BF5524();
  sub_219BDBD34();
  sub_2197CE05C(&qword_27CC1AD70, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t _s7NewsUI216SearchFilterItemV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  if (a1[4])
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_219BF78F4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SearchFilterItem(0);

  return sub_219BDBC94();
}

uint64_t type metadata accessor for SearchFilterItem(uint64_t a1)
{
  result = qword_280ED7CD8;
  if (!qword_280ED7CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2197CE05C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2197CE0CC(uint64_t a1)
{
  result = sub_219BDBD34();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2197CE194()
{
  result = qword_27CC1F4F0;
  if (!qword_27CC1F4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F4F0);
  }

  return result;
}

uint64_t NewIssueCheckNotificationCoordinator.performBackgroundFetch()(uint64_t a1)
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61750;
  v2 = sub_219BF6214();
  sub_219BE5314("NewIssueCheckNotificationCoordinator: woken up by system to perform background tasks.", 85, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
  sub_2197CE3C8(0);
  swift_allocObject();
  return sub_219BE30B4();
}

void sub_2197CE2A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 72);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v11[4] = sub_2197CEFA8;
  v11[5] = v9;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_218B66540;
  v11[3] = &block_descriptor_173;
  v10 = _Block_copy(v11);

  [v7 refreshBundleSubscriptionWithCachePolicy:2 completion:v10];
  _Block_release(v10);
}

void sub_2197CE3C8(uint64_t a1)
{
  if (!qword_280EE6BB0)
  {
    sub_219BE2874();
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6BB0);
    }
  }
}

uint64_t sub_2197CE420(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v7 = sub_219BE2874();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v13 = qword_280F61750;
    v14 = sub_219BF61F4();
    v15 = sub_219BE5314("Failed to schedule local notifications for new issues. Self was lost", 68, 2, &dword_2186C1000, v13, v14, MEMORY[0x277D84F90]);
    (*(v8 + 104))(v10, *MEMORY[0x277D6CD50], v7, v15);
    a3(v10);
    return (*(v8 + 8))(v10, v7);
  }

  v12 = Strong;
  if (objc_getAssociatedObject(a1, (a1 + 1)))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  aBlock = v36;
  v33 = v37;
  if (!*(&v37 + 1))
  {
    sub_218806FD0(&aBlock);
    goto LABEL_13;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v16 = 0;
    v17 = 0;
    goto LABEL_14;
  }

  v16 = v31;
  v17 = [v31 integerValue];
  if (v17 == -1)
  {
LABEL_23:

    if (((v17 ^ 0xFFFFFFC0) & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_20:
    if ([*(v12 + 64) newIssueNotificationsEnabled])
    {
      v20 = *(v12 + 16);
      v21 = swift_allocObject();
      swift_weakInit();
      v22 = swift_allocObject();
      v22[2] = a3;
      v22[3] = a4;
      v22[4] = v21;
      v34 = sub_2197CEFB4;
      v35 = v22;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v33 = sub_218B66540;
      *(&v33 + 1) = &block_descriptor_13_5;
      v23 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v20 fetchUsersCurrentIssuesWithCompletion_];
      _Block_release(v23);

      return swift_unknownObjectRelease();
    }

    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v28 = qword_280F61750;
    v29 = sub_219BF6214();
    v27 = sub_219BE5314("Did not schedule local notifications for new issues. User has disabled new issues notifications switch", 102, 2, &dword_2186C1000, v28, v29, MEMORY[0x277D84F90]);
    goto LABEL_30;
  }

LABEL_14:
  if (objc_getAssociatedObject(a1, ~v17))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  aBlock = v36;
  v33 = v37;
  if (!*(&v37 + 1))
  {
    sub_218806FD0(&aBlock);
    goto LABEL_23;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v18 = v31;
  v19 = [v18 integerValue];

  if (((v19 - 64) ^ v17))
  {
    goto LABEL_20;
  }

LABEL_24:
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v25 = qword_280F61750;
  v26 = sub_219BF6214();
  v27 = sub_219BE5314("Did not schedule local notifications for new issues. User is no longer a subscriber", 83, 2, &dword_2186C1000, v25, v26, MEMORY[0x277D84F90]);
LABEL_30:
  (*(v8 + 104))(v10, *MEMORY[0x277D6CD50], v7, v27);
  a3(v10);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2197CE954(void *a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v7 = sub_219BE2874();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 unreadFollowedIssues];
  if (!v12)
  {
    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v27 = qword_280F61750;
    v28 = sub_219BF61F4();
    sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_219C09BA0;
    v38 = 0;
    v39 = 0xE000000000000000;
    v40 = [a1 error];
    sub_2187B1B90(0, &unk_280E8B570, &qword_280E8B580, MEMORY[0x277D84948], MEMORY[0x277D83D88]);
    v30 = sub_219BF5484();
    MEMORY[0x21CECC330](v30);

    v31 = v38;
    v32 = v39;
    *(v29 + 56) = MEMORY[0x277D837D0];
    *(v29 + 64) = sub_2186FC3BC();
    *(v29 + 32) = v31;
    *(v29 + 40) = v32;
    sub_219BE5314("Failed to fetch current issues with error: %{public}@", 53, 2, &dword_2186C1000, v27, v28, v29);

    goto LABEL_14;
  }

  v13 = v12;
  sub_2186C6148(0, &qword_280E8DAB0, 0x277D310B0);
  v14 = sub_219BF5924();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    if (qword_280E8D870 != -1)
    {
      swift_once();
    }

    v34 = qword_280F61750;
    v35 = sub_219BF61F4();
    v33.n128_f64[0] = sub_219BE5314("Failed to schedule local notifications for new issues. Self was lost.", 69, 2, &dword_2186C1000, v34, v35, MEMORY[0x277D84F90]);
LABEL_14:
    (*(v8 + 104))(v11, *MEMORY[0x277D6CD50], v7, v33);
    a2(v11);
    return (*(v8 + 8))(v11, v7);
  }

  v16 = Strong;
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v37[1] = a3;
  v17 = qword_280F61750;
  sub_2187B1B90(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_219C09BA0;
  v19 = a2;
  if (v14 >> 62)
  {
    v20 = sub_219BF7214();
  }

  else
  {
    v20 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = v20;
  v21 = sub_219BF7894();
  v23 = v22;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_2186FC3BC();
  *(v18 + 32) = v21;
  *(v18 + 40) = v23;
  v24 = sub_219BF6214();
  sub_219BE5314("currentIssuesChecker fetchCurrentIssues resulted in %{public}@ unread issues.", 77, 2, &dword_2186C1000, v17, v24, v18);

  v25 = v16[6];
  v26 = v16[7];
  __swift_project_boxed_opaque_existential_1(v16 + 3, v25);
  (*(v26 + 8))(v14, v25, v26);

  (*(v8 + 104))(v11, *MEMORY[0x277D6CD58], v7);
  v19(v11);

  return (*(v8 + 8))(v11, v7);
}

uint64_t NewIssueCheckNotificationCoordinator.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  swift_unknownObjectRelease();
  return v0;
}

uint64_t NewIssueCheckNotificationCoordinator.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2197CEED4(uint64_t a1)
{
  if (qword_280E8D870 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61750;
  v2 = sub_219BF6214();
  sub_219BE5314("NewIssueCheckNotificationCoordinator: woken up by system to perform background tasks.", 85, 2, &dword_2186C1000, v1, v2, MEMORY[0x277D84F90]);
  sub_2197CE3C8(0);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t type metadata accessor for PaywallAudioFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EB35D0;
  if (!qword_280EB35D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2197CF040(uint64_t a1)
{
  sub_2186FA21C(319);
  if (v1 <= 0x3F)
  {
    sub_2186C709C(319, &qword_280EE6430, MEMORY[0x277D34F20], 1);
    if (v2 <= 0x3F)
    {
      sub_2186C709C(319, &unk_280EE6480, MEMORY[0x277D34EA8], 0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2197CF114(uint64_t a1)
{
  sub_219BE4864();
  sub_219BE3204();
  v1 = sub_219BE2E54();
  sub_219BE3064();

  sub_2197CF1E8();
  v2 = sub_219BE31C4();

  return v2;
}

uint64_t sub_2197CF1E8()
{
  v1 = sub_219BE4884();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x28223BE20](v1);
  v39 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_219BE4034();
  v3 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE3E04();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_219BE4914();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = type metadata accessor for PaywallAudioFeedGroupEmitter(0);
  __swift_project_boxed_opaque_existential_1((v0 + *(v14 + 24)), *(v0 + *(v14 + 24) + 24));
  (*(v7 + 104))(v9, *MEMORY[0x277D34E80], v6);
  v15 = v45;
  (*(v3 + 104))(v5, *MEMORY[0x277D34EF0], v45);
  v16 = v13;
  v17 = v44;
  v18 = v42;
  sub_219BE4064();
  (*(v3 + 8))(v5, v15);
  (*(v7 + 8))(v9, v6);
  v19 = v43;
  v20 = v16;
  (*(v18 + 16))(v43, v16, v17);
  v21 = (*(v18 + 88))(v19, v17);
  if (v21 == *MEMORY[0x277D353A0])
  {
    (*(v18 + 96))(v19, v17);
    if (qword_280E8D7D8 != -1)
    {
      swift_once();
    }

    v22 = qword_280F616F8;
    v23 = sub_219BF61F4();
    sub_219BE5314("Audio Feed Paywall creation resulted in an unexpected paywall type. No paywall will be created.", 95, 2, &dword_2186C1000, v22, v23, MEMORY[0x277D84F90]);
    sub_2197D06E0();
    swift_allocError();
    *v24 = 0;
    sub_2197D0734(0);
    swift_allocObject();
    v25 = sub_219BE2FF4();
    (*(v18 + 8))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v19);
    return v25;
  }

  if (v21 == *MEMORY[0x277D353B0])
  {
    (*(v18 + 96))(v19, v17);
    v26 = *v19;
    if (*(*v19 + 16))
    {
      v28 = v39;
      v27 = v40;
      v29 = v41;
      (*(v40 + 16))(v39, v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)), v41);

      sub_219BE4874();
      (*(v27 + 8))(v28, v29);
      sub_2186CB1F0(v46, v47);
      sub_218718690(v47, v46);
      sub_2197D0734(0);
      swift_allocObject();
      v25 = sub_219BE3014();
      __swift_destroy_boxed_opaque_existential_1(v47);
LABEL_17:
      (*(v18 + 8))(v20, v17);
      return v25;
    }

LABEL_16:
    sub_2197D06E0();
    swift_allocError();
    *v36 = 1;
    sub_2197D0734(0);
    swift_allocObject();
    v25 = sub_219BE2FF4();
    goto LABEL_17;
  }

  if (v21 == *MEMORY[0x277D353A8])
  {
    if (qword_280E8D7D8 != -1)
    {
      swift_once();
    }

    v30 = qword_280F616F8;
    v31 = sub_219BF6214();
    sub_219BE5314("Audio Feed Paywall creation resulted in no paywall for the channel", 66, 2, &dword_2186C1000, v30, v31, MEMORY[0x277D84F90]);
    goto LABEL_16;
  }

  if (qword_280E8D7D8 != -1)
  {
    swift_once();
  }

  v32 = qword_280F616F8;
  v33 = sub_219BF61F4();
  sub_219BE5314("Audio Feed Paywall creation resulted in an unknown paywall type. No paywall will be created.", 92, 2, &dword_2186C1000, v32, v33, MEMORY[0x277D84F90]);
  sub_2197D06E0();
  swift_allocError();
  *v34 = 2;
  sub_2197D0734(0);
  swift_allocObject();
  v25 = sub_219BE2FF4();
  v35 = *(v18 + 8);
  v35(v16, v17);
  v35(v19, v17);
  return v25;
}

uint64_t sub_2197CF8FC(uint64_t a1, uint64_t a2)
{
  v19[0] = a2;
  sub_218C68E08(0);
  v19[1] = v2;
  MEMORY[0x28223BE20](v2);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PaywallAudioFeedGroup(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2186FA21C(0);
  v9 = sub_219BEDCA4();
  v11 = v10;
  v12 = sub_219BE47D4();
  v14 = v13;
  v20 = v9;
  v21 = v11;

  MEMORY[0x21CECC330](v12, v14);

  v15 = v20;
  v16 = v21;
  sub_218718690(v19[0], (v8 + 2));
  sub_219BEDCC4();
  *v8 = v15;
  v8[1] = v16;
  *(v8 + *(v6 + 36)) = 0x3FF0000000000000;
  sub_2197D065C(v8, v4, type metadata accessor for PaywallAudioFeedGroup);
  type metadata accessor for AudioFeedGroup(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_2197D07A0(0, &unk_280EE6C70, sub_218C68E08, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v17 = sub_219BE3014();
  sub_2197D08AC(v8, type metadata accessor for PaywallAudioFeedGroup);
  return v17;
}

uint64_t sub_2197CFB28(uint64_t a1)
{
  type metadata accessor for PaywallAudioFeedGroupEmitter(0);
  swift_getObjectType();
  return sub_219BE3F74();
}

uint64_t sub_2197CFB7C()
{
  sub_2197D07A0(0, &qword_280EE6910, sub_21880702C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_2197CFBFC@<X0>(uint64_t a1@<X8>)
{
  sub_2186FA21C(0);
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for AudioFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_2197CFC7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(a1 + 20));
  a2[3] = &type metadata for PaywallAudioFeedGroupKnobs;
  a2[4] = sub_2197D0804();
  result = sub_2197D0858();
  a2[5] = result;
  *a2 = v4;
  return result;
}

uint64_t sub_2197CFCC4()
{
  v0 = sub_219BEF554();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FA21C(0);
  sub_219BEDCC4();
  v4 = (*(v1 + 88))(v3, v0);
  v5 = *MEMORY[0x277D32638];
  (*(v1 + 8))(v3, v0);
  if (v4 != v5)
  {
    return MEMORY[0x277D84F90];
  }

  sub_2197D07A0(0, &unk_280E8B8D0, sub_2191FD1C0, MEMORY[0x277D84560]);
  sub_2191FD1C0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  (*(v8 + 104))(v10 + v9, *MEMORY[0x277D322F8], v7);
  return v10;
}

uint64_t sub_2197CFEB4()
{
  sub_2186FA21C(0);

  return sub_219BEDCA4();
}

uint64_t sub_2197CFEE0@<X0>(uint64_t *a2@<X8>)
{
  sub_2197D07A0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186FA21C(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2197D08AC(inited + 32, sub_2188317B0);
  sub_2197D07A0(0, &qword_280EE7930, type metadata accessor for PaywallAudioFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_2197D090C();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2197D0064(uint64_t a1)
{
  sub_2197D0614(&qword_280EB35E8, type metadata accessor for PaywallAudioFeedGroupEmitter, &unk_219CA60F8);

  return sub_219BE2324();
}

uint64_t sub_2197D01F0()
{
  v1 = type metadata accessor for PaywallAudioFeedGroupEmitter(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_2187D9028();
  v4 = sub_219BF66A4();
  sub_2197D065C(v0, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaywallAudioFeedGroupEmitter);
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_2197D03F8(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_2197D04C0(0);
  sub_219BE31D4();

  sub_2197D065C(v0, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PaywallAudioFeedGroupEmitter);
  v7 = swift_allocObject();
  sub_2197D03F8(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2197D0544;
  *(v8 + 24) = v7;
  v9 = sub_219BE2E54();
  sub_218C68E08(0);
  v10 = sub_219BE2F64();

  return v10;
}

uint64_t sub_2197D03F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PaywallAudioFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2197D04C0(uint64_t a1)
{
  if (!qword_280EE61F0)
  {
    sub_219BE4864();
    sub_2186C709C(255, &qword_280EE6460, MEMORY[0x277D34EE0], 1);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280EE61F0);
    }
  }
}

uint64_t sub_2197D0544(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PaywallAudioFeedGroupEmitter(0);

  return sub_2197CF8FC(a1, a2);
}

uint64_t sub_2197D05C4(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2197D04C0(0);
  return v3(a1, a1 + *(v4 + 48));
}

uint64_t sub_2197D0614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2197D065C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2197D06E0()
{
  result = qword_27CC1F4F8;
  if (!qword_27CC1F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F4F8);
  }

  return result;
}

void sub_2197D0734(uint64_t a1)
{
  if (!qword_280EE6FF8)
  {
    sub_2186C709C(255, &qword_280EE6460, MEMORY[0x277D34EE0], 1);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6FF8);
    }
  }
}

void sub_2197D07A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2197D0804()
{
  result = qword_27CC1F500;
  if (!qword_27CC1F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F500);
  }

  return result;
}

unint64_t sub_2197D0858()
{
  result = qword_27CC1F508;
  if (!qword_27CC1F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F508);
  }

  return result;
}

uint64_t sub_2197D08AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2197D090C()
{
  result = qword_280EE7938;
  if (!qword_280EE7938)
  {
    sub_2197D07A0(255, &qword_280EE7930, type metadata accessor for PaywallAudioFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7938);
  }

  return result;
}

unint64_t sub_2197D09A8()
{
  result = qword_27CC1F510;
  if (!qword_27CC1F510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1F510);
  }

  return result;
}

void sub_2197D09FC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SearchResults(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SearchFeedServiceContext(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197D0AD8(a1, v9);
  sub_2197D0B3C(v9, v6);
  sub_2190ABC3C(v6, a2);
}

uint64_t sub_2197D0AD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchFeedServiceContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197D0B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchResults(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for FoodTagRecipesClusteringRequest(uint64_t a1)
{
  result = qword_280EA9370;
  if (!qword_280EA9370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2197D0C14(uint64_t a1)
{
  sub_219BE5434();
  if (v1 <= 0x3F)
  {
    sub_2197D0D9C(319, &qword_280E8EF60, sub_218C3EE8C, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2186C61E4();
      if (v3 <= 0x3F)
      {
        sub_2186E2394();
        if (v4 <= 0x3F)
        {
          sub_2197D0E00(319);
          if (v5 <= 0x3F)
          {
            sub_2197D0D9C(319, &unk_280E91800, MEMORY[0x277D32348], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_219BEFD94();
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

void sub_2197D0D9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2197D0E00(uint64_t a1)
{
  if (!qword_280E8FB28)
  {
    sub_219BEED84();
    v1 = sub_219BF52A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8FB28);
    }
  }
}

uint64_t sub_2197D0E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v45 = a1;
  v5 = type metadata accessor for MagazineGridItemModel(0);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MagazineCatalogModel(0);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v44 = &v40 - v10;
  v11 = sub_219BEF2A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = sub_219BEF974();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for MagazineCatalogLayoutModel(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3DBBC(0);
  sub_219BE75E4();
  v49 = v19;
  (*(v19 + 32))(v21, v24, v18);
  swift_getObjectType();
  sub_219BEED04();
  (*(v12 + 16))(v14, v17, v11);
  v25 = (*(v12 + 88))(v14, v11);
  if (v25 == *MEMORY[0x277D32528])
  {
    (*(v12 + 96))(v14, v11);
    v26 = *v14;
    v48 = sub_219BE7314();
    v41 = *(v4 + 40);
    ObjectType = swift_getObjectType();
    sub_2189537DC(0);
    v27 = v44;
    sub_219BE5FC4();
    v28 = v43;
    sub_218BB47C4(v27, v43);
    v29 = v28;
    v30 = v46;
    sub_2189F5020(v29, v46);
    v31 = sub_218EF6AC8();
    v47 = v18;
    v33 = v32;
    sub_2197D1480(v30, type metadata accessor for MagazineGridItemModel);
    v34 = v27;
    v35 = v26;
    sub_2197D1480(v34, type metadata accessor for MagazineCatalogModel);
    (*(v41 + 32))(v31, v33, ObjectType);

    sub_2197D14E0(qword_280EDE170, type metadata accessor for IssueDownload, &protocol conformance descriptor for IssueDownload);
    v36 = v48;
    sub_219BF19C4();

    (*(v12 + 8))(v17, v11);
    (*(v49 + 8))(v21, v47);
  }

  else
  {
    v37 = v49;
    if (v25 == *MEMORY[0x277D32530])
    {
      (*(v12 + 8))(v17, v11);
      (*(v37 + 8))(v21, v18);
      (*(v12 + 96))(v14, v11);
      return *v14;
    }

    else
    {
      v35 = sub_219BEF294();
      v38 = *(v12 + 8);
      v38(v17, v11);
      (*(v37 + 8))(v21, v18);
      v38(v14, v11);
    }
  }

  return v35;
}

uint64_t sub_2197D1450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_2197D0E68(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_2197D1480(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2197D14E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SavedFeedLayoutModel(uint64_t a1)
{
  result = qword_280ECD638;
  if (!qword_280ECD638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_2197D1574()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197D1D04(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_2197D16D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197D1D04(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_2197D17C4(uint64_t a1)
{
  v2 = sub_2197D1D68(&qword_280ECD670, &unk_219CA6430);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_2197D1868(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197D1D04(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_2197D1A5C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197D1D04(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2197D1BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2197D1D04(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_2197D1D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedLayoutModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2197D1D68(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SavedFeedLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2197D1DAC(uint64_t a1, uint64_t a2)
{
  sub_219512F74();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = *(a2 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_sportsOnboardingManager + 32);
  v15 = *(a2 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_sportsOnboardingManager + 24);
  v14 = __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_sportsOnboardingManager), v15);
  sub_2187D9028();
  v9 = sub_219BF66A4();
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v6 + 16))(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v6 + 32))(v12 + v11, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v13 = *(v8 + 24);

  v13(v9, sub_2197D27AC, v12, v15, v8);
}

double sub_2197D1F7C(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if ((a2 & 1) != 0 || a1 != 1)
    {
      if (qword_280EE5F70 != -1)
      {
        swift_once();
      }

      v15 = sub_219BE5434();
      __swift_project_value_buffer(v15, qword_280F625C8);
      v16 = sub_219BE5414();
      v17 = sub_219BF6214();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_2186C1000, v16, v17, "SportsTopicNotificationStartupTask will disable notifications when sports is not onboarded", v18, 2u);
        MEMORY[0x21CECF960](v18, -1, -1);
      }

      v19 = *(v6 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager + 24);
      v20 = *(v6 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager + 32);
      __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager), v19);
      (*(v20 + 40))(0, v19, v20);
    }

    else
    {
      v7 = (Strong + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager);
      v8 = *(Strong + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager + 24);
      v9 = *(Strong + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager + 32);
      __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager), v8);
      if ((*(v9 + 64))(v8, v9))
      {
        if (qword_280EE5F70 != -1)
        {
          swift_once();
        }

        v10 = sub_219BE5434();
        __swift_project_value_buffer(v10, qword_280F625C8);
        v11 = sub_219BE5414();
        v12 = sub_219BF6214();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_2186C1000, v11, v12, "SportsTopicNotificationStartupTask stopped. This task will only run when sports notifications have not yet been setup before.", v13, 2u);
          MEMORY[0x21CECF960](v13, -1, -1);
        }
      }

      else
      {
        if (qword_280EE5F70 != -1)
        {
          swift_once();
        }

        v21 = sub_219BE5434();
        __swift_project_value_buffer(v21, qword_280F625C8);
        v22 = sub_219BE5414();
        v23 = sub_219BF6214();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_2186C1000, v22, v23, "SportsTopicNotificationStartupTask setting sportsTopicNotificationsEnabledState to enabled", v24, 2u);
          MEMORY[0x21CECF960](v24, -1, -1);
        }

        v25 = v7[3];
        v26 = v7[4];
        __swift_project_boxed_opaque_existential_1(v7, v25);
        (*(v26 + 40))(1, v25, v26);
      }
    }

    sub_219512F74();
    sub_219BF5B64();
  }

  else
  {
    sub_219512F74();
    sub_219BF5B64();
  }

  return result;
}

uint64_t sub_2197D22FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_2197D242C;
    v3 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v2, 0, 0, 0xD000000000000014, 0x8000000219D36B20, sub_2197D27A4, Strong, v3);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_2197D242C()
{

  return MEMORY[0x2822009F8](sub_2197D2528, 0, 0);
}

uint64_t sub_2197D2528()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager), v2);
  (*(v3 + 80))(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2197D25D0()
{
  v1 = OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_executionPhase;
  v2 = sub_219BE2C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_pushNotificationDataManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234SportsTopicNotificationStartupTask_sportsOnboardingManager));

  return swift_deallocClassInstance();
}

uint64_t sub_2197D2694()
{
  sub_21879D924();
  swift_allocObject();
  swift_weakInit();
  return sub_219BE2F54();
}

uint64_t sub_2197D2708(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2187608D4;

  return sub_2197D22DC(a1, v1);
}

double sub_2197D27AC(uint64_t a1, char a2)
{
  sub_219512F74();
  v5 = *(v2 + 16);

  return sub_2197D1F7C(a1, a2 & 1, v5);
}

uint64_t type metadata accessor for MagazineSectionBarViewController(uint64_t a1)
{
  result = qword_280EA5FE0;
  if (!qword_280EA5FE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2197D2A5C(uint64_t a1)
{
  sub_218747BDC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2197D2B44()
{
  v1 = v0;
  v35.receiver = v0;
  v35.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v35, sel_viewDidLoad);
  v2 = *&v0[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintViewController];
  [v0 addChildViewController_];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];
  if (!v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  v9 = [v1 view];
  if (!v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v9;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame_];
  sub_219BE8664();
  v19 = sub_219BE7BC4();

  [v19 setContentInsetAdjustmentBehavior_];

  sub_219BE8664();
  v20 = sub_219BE7BC4();

  v21 = sub_219BF53D4();
  [v20 setFocusGroupIdentifier_];

  sub_219BE8664();
  v22 = sub_219BE7BC4();

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v24 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v25 = sub_219BF53D4();

  [v22 setAccessibilityLabel_];

  sub_219BE9BB4();
  v26 = v2;
  v27 = sub_219BE9BA4();
  if (!v27)
  {
    goto LABEL_8;
  }

  v28 = v27;
  v29 = [v1 view];
  if (v29)
  {
    v30 = v29;
    [v29 addSubview_];

    v31 = *&v1[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintHorizontalShimView];
    *&v1[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintHorizontalShimView] = v28;

LABEL_8:
    v32 = [v1 view];
    if (v32)
    {
      v33 = v32;
      [v32 setAccessibilityContainerType_];

      v34 = [v1 traitCollection];
      sub_2197D4690();

      return;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
}

void sub_2197D2F44()
{
  ObjectType = swift_getObjectType();
  v2 = sub_219BE8164();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v36 - v8;
  v36.receiver = v0;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, sel_viewWillLayoutSubviews, v7);
  v10 = [*&v0[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintViewController] view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = v10;
  v12 = [v0 view];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = v12;
  [v12 bounds];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  [v11 setFrame_];
  v22 = *&v0[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintHorizontalShimView];
  if (!v22)
  {
LABEL_6:
    sub_219BE8664();
    v34 = sub_219BE7BC4();

    sub_219BE86E4();
    swift_getObjectType();
    sub_219BE9E04();
    swift_unknownObjectRelease();
    sub_219BE7FF4();
    v35 = *(v3 + 8);
    v35(v9, v2);
    sub_219BE86E4();
    swift_getObjectType();
    sub_219BE9E04();
    swift_unknownObjectRelease();
    sub_219BE8014();
    v35(v5, v2);
    sub_219BF6094();

    return;
  }

  v23 = v22;
  v24 = [v0 view];
  if (v24)
  {
    v25 = v24;
    [v24 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    [v23 setFrame_];
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_2197D3388(uint64_t a1, uint64_t a2)
{
  v4 = *v2 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_pluggableDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2197D33F8(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_pluggableDelegate;
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

uint64_t sub_2197D349C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  return *(v1 + v2);
}

void sub_2197D34E4(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  *(v3 + v4) = a1;
}

uint64_t sub_2197D35B4()
{
  sub_2197D456C(0, &qword_280EE5A38, MEMORY[0x277D6D618]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = v8 - v4;
  v8[1] = *(*v0 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_blueprintLayoutProvider);
  sub_2197D454C(0);
  sub_2197D4504(&qword_280EE4C50, sub_2197D454C, MEMORY[0x277D6DF38]);
  sub_219BE91E4();
  v6 = sub_219BE6534();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_2197D3724(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_2197D440C(0, &qword_280EE3798, MEMORY[0x277D6EC60]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  sub_219BE86A4();
  v11[0] = v11[1];
  sub_2197D440C(0, &qword_280EE5568, MEMORY[0x277D6D8B8]);
  sub_2197D4490();
  sub_219BE7B94();

  v9 = a3(v5);
  (*(v6 + 8))(v8, v5);
  return v9;
}

double sub_2197D3890(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_eventHandler);
  v7 = *(*(*v2 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_config) + 16);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = a1;
  v8[4] = a2;
  v9 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 32);

  v12 = v5;

  v11(v7, sub_2197D43D0, v8, ObjectType, v9);

  return result;
}

double sub_2197D398C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_eventHandler);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = a1;
  v7[4] = a2;
  v8 = *(v6 + 40);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  v11 = v5;

  v10(sub_2197D4204, v7, ObjectType, v8);

  return result;
}

void sub_2197D3A5C(uint64_t a1)
{
  sub_219BE8664();
  v1 = sub_219BE7BC4();

  [v1 reloadData];
}

uint64_t sub_2197D3AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_218747BDC(0);
  *&v8 = MEMORY[0x28223BE20](v7 - 8).n128_u64[0];
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (![*(v3 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_featureAvailability) useOfflineMode] || (__swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_offlineProvider), *(v3 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_offlineProvider + 24)), (sub_219BEED44() & 1) == 0) || (sub_218BBF5C0(0), sub_219BE5FC4(), v11 = sub_2196C8ED0(), result = sub_218BBF61C(v22), (v11 & 1) != 0))
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v13 = sub_219BE98C4();
      v15 = v14;
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0;
      v15 = 0;
    }

    v16 = off_282A49828;
    type metadata accessor for MagazineSectionBarEventHandler();
    v16(a2, v13, v15);

    sub_219BE8664();
    v17 = sub_219BE7BC4();

    v18 = OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_previousSelectedIndexPath;
    swift_beginAccess();
    sub_218A1BF30(v4 + v18, v10);
    sub_218B729A0(v10);

    sub_218A1C0F4(v10);
    v19 = sub_219BDC104();
    v20 = *(v19 - 8);
    (*(v20 + 16))(v10, a3, v19);
    (*(v20 + 56))(v10, 0, 1, v19);
    swift_beginAccess();
    sub_2197D462C(v10, v4 + v18);
    return swift_endAccess();
  }

  return result;
}

void sub_2197D3D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_219BE9F74();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_isBeingUsedAsPlugin;
  swift_beginAccess();
  if ((*(v3 + v9) & 1) == 0)
  {
    (*(v6 + 16))(v8, a3, v5);
    v10 = (*(v6 + 88))(v8, v5);
    if (v10 == *MEMORY[0x277D6E950])
    {
      (*(v6 + 8))(v8, v5);
LABEL_4:
      v11 = *(*(v3 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_eventHandler) + 40);
      ObjectType = swift_getObjectType();
      (*(v11 + 40))(nullsub_1, 0, ObjectType, v11);
      return;
    }

    if (v10 == *MEMORY[0x277D6E928])
    {
      v13 = *(*(v3 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_eventHandler) + 40);
      v14 = swift_getObjectType();
      v15 = *(v13 + 32);

      v15(v16, nullsub_1, 0, v14, v13);
    }

    else
    {
      if (v10 == *MEMORY[0x277D6E948] || v10 == *MEMORY[0x277D6E930])
      {
        goto LABEL_4;
      }

      if (v10 != *MEMORY[0x277D6E958] && v10 != *MEMORY[0x277D6E970])
      {
        sub_219BF7514();
        __break(1u);
      }
    }
  }
}

uint64_t sub_2197D4038(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 56))(a2, ObjectType, v4);
}

uint64_t sub_2197D4098(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_eventHandler) + 40);
  ObjectType = swift_getObjectType();
  return (*(v4 + 48))(a2, ObjectType, v4);
}

uint64_t sub_2197D4240(uint64_t a1, uint64_t (*a2)(double, double))
{
  v3 = sub_219BE8164();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE86E4();
  swift_getObjectType();
  sub_219BE9E04();
  swift_unknownObjectRelease();
  sub_219BE8154();
  v8 = v7;
  (*(v4 + 8))(v6, v3);
  sub_219BE8664();
  v9 = sub_219BE7BC4();

  v10 = [v9 collectionViewLayout];

  [v10 collectionViewContentSize];
  v12 = v11;

  return a2(v8, v12);
}

void sub_2197D440C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
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

unint64_t sub_2197D4490()
{
  result = qword_280EE5570;
  if (!qword_280EE5570)
  {
    sub_2197D440C(255, &qword_280EE5568, MEMORY[0x277D6D8B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE5570);
  }

  return result;
}

uint64_t sub_2197D4504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2197D456C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineSectionBarLayoutSectionDescriptor;
    v8[1] = type metadata accessor for MagazineSectionBarLayoutModel(255);
    v8[2] = sub_218951214();
    v8[3] = sub_2197D4504(&qword_280EB01F0, type metadata accessor for MagazineSectionBarLayoutModel, &unk_219CC8320);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2197D462C(uint64_t a1, uint64_t a2)
{
  sub_218747BDC(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_2197D4690()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];

    v4 = __swift_project_boxed_opaque_existential_1(&v0[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_styler], *&v0[OBJC_IVAR____TtC7NewsUI232MagazineSectionBarViewController_styler + 24]);
    sub_219BE8664();
    v5 = sub_219BE7BC4();

    [v5 setBackgroundColor_];
    [v5 setShowsHorizontalScrollIndicator_];
    [v5 setScrollsToTop_];
    [v5 _setPocketsEnabled_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t type metadata accessor for SearchMoreExpandRequest(uint64_t a1)
{
  result = qword_27CC1F560;
  if (!qword_27CC1F560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2197D487C(uint64_t a1)
{
  result = type metadata accessor for SearchMoreFeedGapLocation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2197D4900()
{
  sub_2186D0E7C(0, &qword_280EE6900, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

BOOL sub_2197D4968()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_bundleSubscriptionManager) cachedSubscription];
  if (objc_getAssociatedObject(v1, v1 + 1))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  v2 = MEMORY[0x277D84F70];
  if (!*(&v11 + 1))
  {
    sub_218745D0C(&v12, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186D0E7C);
    goto LABEL_9;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    v4 = 0;
    goto LABEL_10;
  }

  v3 = v9;
  v4 = [v9 integerValue];
  if (v4 == -1)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (objc_getAssociatedObject(v1, ~v4))
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12 = v10;
  v13 = v11;
  if (!*(&v11 + 1))
  {
    sub_218745D0C(&v12, &qword_280E8B4F0, v2 + 8, MEMORY[0x277D83D88], sub_2186D0E7C);
    goto LABEL_17;
  }

  sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v7 = -159;
    return ((v7 ^ v4) & 1) == 0;
  }

  v5 = v9;
  v6 = [v5 integerValue];

  v7 = v6 - 159;
  return ((v7 ^ v4) & 1) == 0;
}

uint64_t sub_2197D4C04(uint64_t a1, void *a2, void *a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  *(swift_allocObject() + 16) = a3;

  v6 = a3;
  sub_219BE20F4();

  __swift_destroy_boxed_opaque_existential_1(v9);
  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  *(swift_allocObject() + 16) = v6;
  v7 = v6;

  sub_219BE20F4();

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

double sub_2197D4D4C()
{
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v0 = sub_219BF6F74();
  v1 = sub_219BF6214();
  sub_219BE5314("AudioDataManager: Detected playlist change, will reload", 55, 2, &dword_2186C1000, v0, v1, MEMORY[0x277D84F90]);

  sub_219BE2024();

  return result;
}

double sub_2197D4DFC()
{
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v0 = sub_219BF6F74();
  v1 = sub_219BF6214();
  sub_2186F20D4(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  type metadata accessor for AudioState(0);
  sub_2197D8F94(&unk_280EDFF90, type metadata accessor for AudioState, &unk_219C76B0C);
  v3 = sub_219BF7894();
  v5 = v4;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  sub_219BE5314("AudioDataManager: Updating AudioState to %{public}@", 51, 2, &dword_2186C1000, v0, v1, v2);

  return result;
}

uint64_t sub_2197D50B8(char *a1)
{
  *(swift_allocObject() + 16) = a1;
  type metadata accessor for AudioFeedContentConfig(0);
  v2 = a1;
  sub_219BE31D4();

  *(swift_allocObject() + 16) = v2;
  v3 = v2;
  v4 = sub_219BE2E54();
  type metadata accessor for AudioState(0);
  sub_219BE2F64();

  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v5 = sub_219BF66A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = sub_219BE2F64();

  return v6;
}

uint64_t sub_2197D5254(uint64_t a1)
{
  v2 = sub_219BE1B34();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277CC9578];
  v5 = MEMORY[0x277D83D88];
  sub_21873652C(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v9 = type metadata accessor for AudioFeedContentConfig(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v33 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v34 = &v33 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  sub_21873652C(0, qword_280EC8F00, type metadata accessor for AudioFeedContentConfig, v5);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  v23 = (a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_feedConfigManager);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_feedConfigManager), *(a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_feedConfigManager + 24));
  sub_219BE2184();
  sub_21872D560(v16, v8, &qword_280EE9C40, v4);
  v24 = sub_219BDBD34();
  if ((*(*(v24 - 8) + 48))(v8, 1, v24) == 1)
  {
    sub_2197D95DC(v16, type metadata accessor for AudioFeedContentConfig);
    sub_218745D0C(v8, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_21873652C);
    v25 = 1;
  }

  else
  {
    sub_218745D0C(v8, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_21873652C);
    sub_21872D17C(v16, v22, type metadata accessor for AudioFeedContentConfig);
    v25 = 0;
  }

  (*(v10 + 56))(v22, v25, 1, v9);
  sub_21872D560(v22, v19, qword_280EC8F00, type metadata accessor for AudioFeedContentConfig);
  if ((*(v10 + 48))(v19, 1, v9) == 1)
  {
    sub_218745D0C(v22, qword_280EC8F00, type metadata accessor for AudioFeedContentConfig, MEMORY[0x277D83D88], sub_21873652C);
    v38 = *__swift_project_boxed_opaque_existential_1(v23, v23[3]);
    v27 = v35;
    v26 = v36;
    v28 = v37;
    (*(v36 + 104))(v35, *MEMORY[0x277D6CA28], v37);
    v29 = off_282A71798;
    type metadata accessor for AudioFeedConfigManager();
    v30 = v29();
    (*(v26 + 8))(v27, v28);
  }

  else
  {
    v31 = v34;
    sub_21872D17C(v19, v34, type metadata accessor for AudioFeedContentConfig);
    sub_2187365F8(v31, v33, type metadata accessor for AudioFeedContentConfig);
    sub_21873652C(0, &qword_280EE6E00, type metadata accessor for AudioFeedContentConfig, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v30 = sub_219BE3014();
    sub_2197D95DC(v31, type metadata accessor for AudioFeedContentConfig);
    sub_218745D0C(v22, qword_280EC8F00, type metadata accessor for AudioFeedContentConfig, MEMORY[0x277D83D88], sub_21873652C);
  }

  return v30;
}

uint64_t sub_2197D5888(uint64_t a1, char a2)
{
  v3 = v2;
  v24 = a1;
  v6 = type metadata accessor for AudioFeedContentConfig(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v9 = sub_219BF6F74();
  v10 = sub_219BF6214();
  sub_2186F20D4(0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_219C09BA0;
  v12 = sub_2186FC3BC();
  v13 = 1702195828;
  if ((a2 & 1) == 0)
  {
    v13 = 0x65736C6166;
  }

  v14 = 0xE500000000000000;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = v12;
  if (a2)
  {
    v14 = 0xE400000000000000;
  }

  *(v11 + 32) = v13;
  *(v11 + 40) = v14;
  sub_219BE5314("AudioDataManager: Will update state, force=%{public}@", 53, 2, &dword_2186C1000, v9, v10, v11);

  sub_2187365F8(a1, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioFeedContentConfig);
  v15 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  sub_21872D17C(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AudioFeedContentConfig);
  sub_2197D9114(0);
  v17 = v3;
  sub_219BE31D4();

  sub_2187365F8(v24, &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioFeedContentConfig);
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  sub_21872D17C(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v15, type metadata accessor for AudioFeedContentConfig);
  v19 = v17;
  v20 = sub_219BE2E54();
  type metadata accessor for AudioState(0);
  v21 = sub_219BE2F64();

  return v21;
}

uint64_t sub_2197D5B60(char *a1)
{
  *(swift_allocObject() + 16) = a1;
  sub_2197D9660(0);
  v2 = a1;
  sub_219BE31D4();

  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2197D96CC;
  *(v4 + 24) = v3;
  type metadata accessor for AudioState(0);
  v5 = v2;
  sub_219BE2F64();

  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v6 = sub_219BF66A4();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = sub_219BE2F64();

  return v7;
}

uint64_t sub_2197D5D20(uint64_t a1)
{
  v2 = sub_219BE1B34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = *__swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_feedConfigManager), *(a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_feedConfigManager + 24));
  (*(v3 + 104))(v5, *MEMORY[0x277D6CA28], v2);
  v6 = off_282A71798;
  type metadata accessor for AudioFeedConfigManager();
  v6();
  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_suggestionsStore), *(a1 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_suggestionsStore + 24));
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v7 = sub_219BF6F74();
  v8 = sub_219BF6214();
  sub_219BE5314("AudioSuggestionsStore: refreshing", 33, 2, &dword_2186C1000, v7, v8, MEMORY[0x277D84F90]);

  v13[0] = 0x68736572666572;
  v13[1] = 0xE700000000000000;
  sub_219BE2014();
  v9 = sub_219BE2E54();
  sub_219BE2F74();

  v10 = sub_219BE2E54();
  v11 = sub_219BE2E34();

  return v11;
}

uint64_t sub_2197D5F9C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AudioState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;

    sub_2197D8F94(&qword_280EDFFA0, type metadata accessor for AudioState, &unk_219C76AE4);
    sub_219BE2114();
  }

  sub_2187365F8(a1, v5, type metadata accessor for AudioState);
  sub_21873652C(0, &unk_280EE6F98, type metadata accessor for AudioState, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

void *sub_2197D6114(void *a1, unint64_t a2, void *a3)
{
  v176 = a3;
  v174 = a2;
  TrackData = type metadata accessor for AudioState.UpNextTrackData(0);
  MEMORY[0x28223BE20](TrackData);
  v163 = (&v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v152 = (&v151 - v6);
  v178 = type metadata accessor for AudioState(0);
  MEMORY[0x28223BE20](v178);
  v160 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v164 = &v151 - v9;
  MEMORY[0x28223BE20](v10);
  v153 = &v151 - v11;
  MEMORY[0x28223BE20](v12);
  v155 = &v151 - v13;
  v177 = type metadata accessor for AudioFeedTrack(0);
  v180 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v157 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v175 = (&v151 - v16);
  MEMORY[0x28223BE20](v17);
  v154 = (&v151 - v18);
  MEMORY[0x28223BE20](v19);
  v159 = &v151 - v20;
  MEMORY[0x28223BE20](v21);
  v156 = (&v151 - v22);
  MEMORY[0x28223BE20](v23);
  v162 = (&v151 - v24);
  v166 = sub_218D58C8C;
  v25 = MEMORY[0x277D83D88];
  sub_21873652C(0, &qword_280EDCA40, sub_218D58C8C, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v151 - v27;
  sub_21873652C(0, &qword_280EDC960, type metadata accessor for AudioFeedTrack, v25);
  MEMORY[0x28223BE20](v29);
  v158 = (&v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v167 = &v151 - v32;
  MEMORY[0x28223BE20](v33);
  v179 = &v151 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v151 - v36;
  v173 = sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v38 = sub_219BF6F74();
  LODWORD(v165) = sub_219BF6214();
  sub_2186F20D4(0);
  v172 = v39;
  v40 = swift_allocObject();
  v161 = xmmword_219C09EC0;
  *(v40 + 16) = xmmword_219C09EC0;
  v182 = 0;
  v183 = 0xE000000000000000;
  swift_getObjectType();
  v169 = a1;
  sub_219BF6874();
  sub_2186CFDE4(0, &unk_280EE73B0, MEMORY[0x277D6CD48]);
  sub_219BF7484();
  __swift_destroy_boxed_opaque_existential_1(&v181);
  v41 = v182;
  v42 = v183;
  v43 = MEMORY[0x277D837D0];
  *(v40 + 56) = MEMORY[0x277D837D0];
  v44 = sub_2186FC3BC();
  *(v40 + 64) = v44;
  *(v40 + 32) = v41;
  *(v40 + 40) = v42;
  v45 = v174;
  sub_21872D560(v174, v37, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  v46 = sub_219BF5484();
  *(v40 + 96) = v43;
  *(v40 + 104) = v44;
  v171 = v44;
  *(v40 + 72) = v46;
  *(v40 + 80) = v47;
  v48 = v170;
  sub_219BE5314("AudioDataManager: Asked to add headline %{public}@ after track %{public}@", 73, 2, &dword_2186C1000, v38, v165, v40);

  sub_2197D74BC(v45, v48);
  v174 = v49;
  sub_21872D560(v176, v28, &qword_280EDCA40, v166);
  sub_218D58C8C(0);
  if ((*(*(v50 - 8) + 48))(v28, 1, v50) == 1)
  {
    sub_218745D0C(v28, &qword_280EDCA40, sub_218D58C8C, MEMORY[0x277D83D88], sub_21873652C);
    v51 = 1;
    v52 = v179;
  }

  else
  {
    v52 = v179;
    sub_21872D17C(v28, v179, type metadata accessor for AudioFeedTrack);
    v51 = 0;
  }

  v53 = v180;
  v54 = v177;
  v180[7](v52, v51, 1, v177);
  v55 = v167;
  sub_21872D560(v52, v167, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
  v56 = v53[6];
  v166 = (v53 + 6);
  v165 = v56;
  v57 = (v56)(v55, 1, v54);
  v58 = v169;
  if (v57 == 1)
  {
    sub_218745D0C(v55, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_21873652C);
    goto LABEL_11;
  }

  v59 = v55;
  v60 = v162;
  sub_21872D17C(v59, v162, type metadata accessor for AudioFeedTrack);
  v176 = *v60;
  v61 = [v176 identifier];
  v62 = sub_219BF5414();
  v64 = v63;

  v65 = [v58 identifier];
  v66 = sub_219BF5414();
  v68 = v67;

  if (v62 == v66 && v64 == v68)
  {

LABEL_10:
    sub_2197D95DC(v162, type metadata accessor for AudioFeedTrack);
    goto LABEL_11;
  }

  v69 = sub_219BF78F4();

  if (v69)
  {
    goto LABEL_10;
  }

  v109 = v155;
  sub_219BE20E4();
  v110 = *(v109 + v178[5]);

  result = sub_2197D95DC(v109, type metadata accessor for AudioState);
  v111 = 0;
  v112 = *(v110 + 16);
  v113 = v156;
  while (v112 != v111)
  {
    if (v111 >= *(v110 + 16))
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    sub_2187365F8(v110 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + v180[9] * v111, v113, type metadata accessor for AudioFeedTrack);
    v114 = [*v113 identifier];
    v115 = sub_219BF5414();
    v117 = v116;

    v118 = [v176 identifier];
    v119 = sub_219BF5414();
    v121 = v120;

    if (v115 == v119 && v117 == v121)
    {

      sub_2197D95DC(v113, type metadata accessor for AudioFeedTrack);
LABEL_45:

      sub_2197D95DC(v162, type metadata accessor for AudioFeedTrack);
      v58 = v169;
      v48 = v170;
      goto LABEL_11;
    }

    ++v111;
    v123 = sub_219BF78F4();

    result = sub_2197D95DC(v113, type metadata accessor for AudioFeedTrack);
    if (v123)
    {
      goto LABEL_45;
    }
  }

  v131 = v153;
  sub_219BE20E4();
  v132 = v152;
  sub_2187365F8(v131 + v178[6], v152, type metadata accessor for AudioState.UpNextTrackData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v48 = v170;
    if (EnumCaseMultiPayload == 1)
    {
      v134 = v159;
      sub_21872D17C(v132, v159, type metadata accessor for AudioFeedTrack);
      sub_21873652C(0, &unk_280E8BC50, type metadata accessor for AudioFeedTrack, MEMORY[0x277D84560]);
      v135 = (*(v180 + 80) + 32) & ~*(v180 + 80);
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_219C09BA0;
      sub_21872D17C(v134, v136 + v135, type metadata accessor for AudioFeedTrack);
      result = sub_2197D95DC(v131, type metadata accessor for AudioState);
    }

    else
    {
      result = sub_2197D95DC(v131, type metadata accessor for AudioState);
      v136 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    result = sub_2197D95DC(v131, type metadata accessor for AudioState);
    v136 = *v132;
    v48 = v170;
  }

  v137 = v154;
  v138 = 0;
  v139 = *(v136 + 16);
  while (v139 != v138)
  {
    if (v138 >= *(v136 + 16))
    {
      goto LABEL_64;
    }

    sub_2187365F8(v136 + ((*(v180 + 80) + 32) & ~*(v180 + 80)) + v180[9] * v138, v137, type metadata accessor for AudioFeedTrack);
    v140 = [*v137 identifier];
    v141 = sub_219BF5414();
    v143 = v142;

    v144 = [v176 identifier];
    v145 = sub_219BF5414();
    v147 = v146;

    if (v141 == v145 && v143 == v147)
    {

      sub_2197D95DC(v137, type metadata accessor for AudioFeedTrack);
LABEL_61:

      goto LABEL_62;
    }

    ++v138;
    v149 = sub_219BF78F4();

    result = sub_2197D95DC(v137, type metadata accessor for AudioFeedTrack);
    if (v149)
    {
      goto LABEL_61;
    }
  }

  __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore), *(v48 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore + 24));
  sub_218CA8710(v176, 0);
  v150 = v174;
  if (v174 <= 1)
  {
    v150 = 1;
  }

  v174 = v150;
LABEL_62:
  sub_2197D95DC(v162, type metadata accessor for AudioFeedTrack);
  v58 = v169;
LABEL_11:
  v70 = sub_219BF6F74();
  v71 = sub_219BF6214();
  v72 = swift_allocObject();
  *(v72 + 16) = v161;
  v73 = [v58 articleID];
  v74 = sub_219BF5414();
  v76 = v75;

  v77 = v171;
  *(v72 + 56) = MEMORY[0x277D837D0];
  *(v72 + 64) = v77;
  v78 = MEMORY[0x277D83B88];
  *(v72 + 32) = v74;
  *(v72 + 40) = v76;
  v79 = MEMORY[0x277D83C10];
  *(v72 + 96) = v78;
  *(v72 + 104) = v79;
  v80 = v174;
  *(v72 + 72) = v174;
  sub_219BE5314("AudioDataManager: Will insert %{public}@ at index %lu", 53, 2, &dword_2186C1000, v70, v71, v72);

  v81 = (v48 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore);
  __swift_project_boxed_opaque_existential_1((v48 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore), *(v48 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_playlistStore + 24));
  sub_218CA8710(v58, v80);
  v82 = v164;
  sub_219BE20E4();
  v83 = v163;
  sub_2187365F8(v82 + v178[6], v163, type metadata accessor for AudioState.UpNextTrackData);
  v84 = swift_getEnumCaseMultiPayload();
  if (v84)
  {
    if (v84 == 1)
    {
      v85 = v159;
      sub_21872D17C(v83, v159, type metadata accessor for AudioFeedTrack);
      sub_21873652C(0, &unk_280E8BC50, type metadata accessor for AudioFeedTrack, MEMORY[0x277D84560]);
      v86 = (*(v180 + 80) + 32) & ~*(v180 + 80);
      v87 = swift_allocObject();
      *(v87 + 16) = xmmword_219C09BA0;
      sub_21872D17C(v85, v87 + v86, type metadata accessor for AudioFeedTrack);
      sub_2197D95DC(v82, type metadata accessor for AudioState);
      v88 = v87;
    }

    else
    {
      sub_2197D95DC(v82, type metadata accessor for AudioState);
      v88 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    sub_2197D95DC(v82, type metadata accessor for AudioState);
    v88 = *v83;
  }

  v89 = v175;
  v90 = *(v88 + 16);

  if (v90)
  {
    goto LABEL_38;
  }

  v91 = v160;
  sub_219BE20E4();
  v92 = *(v91 + v178[7]);

  sub_2197D95DC(v91, type metadata accessor for AudioState);
  if (*(v92 + 16))
  {
    v93 = v157;
    sub_2187365F8(v92 + ((*(v180 + 80) + 32) & ~*(v180 + 80)), v157, type metadata accessor for AudioFeedTrack);

    sub_21872D17C(v93, v89, type metadata accessor for AudioFeedTrack);
    v94 = *v89;
    v95 = [v94 identifier];
    v96 = sub_219BF5414();
    v98 = v97;

    v99 = v158;
    sub_21872D560(v179, v158, &qword_280EDC960, type metadata accessor for AudioFeedTrack);
    if ((v165)(v99, 1, v177) == 1)
    {
      sub_218745D0C(v99, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_21873652C);

LABEL_20:
      v100 = sub_219BF6F74();
      v101 = sub_219BF6214();
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_219C09BA0;
      sub_2197D8F94(&qword_280EDC9E0, type metadata accessor for AudioFeedTrack, &protocol conformance descriptor for AudioFeedTrack);
      v103 = v175;
      v104 = sub_219BF7894();
      v105 = v171;
      *(v102 + 56) = MEMORY[0x277D837D0];
      *(v102 + 64) = v105;
      *(v102 + 32) = v104;
      *(v102 + 40) = v106;
      sub_219BE5314("AudioDataManager: Inserting into Up Next section that is currently hosting a suggestion %{public}@", 98, 2, &dword_2186C1000, v100, v101, v102);

      result = __swift_project_boxed_opaque_existential_1(v81, v81[3]);
      if (__OFADD__(v174, 1))
      {
LABEL_65:
        __break(1u);
        return result;
      }

      sub_218CA8710(v94, v174 + 1);
      v108 = v103;
      goto LABEL_37;
    }

    v180 = v94;
    v124 = [*v99 identifier];
    v125 = sub_219BF5414();
    v127 = v126;

    sub_2197D95DC(v99, type metadata accessor for AudioFeedTrack);
    if (v96 == v125 && v98 == v127)
    {
    }

    else
    {
      v128 = sub_219BF78F4();

      v94 = v180;
      if ((v128 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v108 = v175;
LABEL_37:
    sub_2197D95DC(v108, type metadata accessor for AudioFeedTrack);
    goto LABEL_38;
  }

LABEL_38:
  v129 = *(v48 + OBJC_IVAR____TtC7NewsUI216AudioDataManager_readingHistory);
  v130 = [v58 articleID];
  if (!v130)
  {
    sub_219BF5414();
    v130 = sub_219BF53D4();
  }

  [v129 markArticle:v130 withCompletedListening:0];

  return sub_218745D0C(v179, &qword_280EDC960, type metadata accessor for AudioFeedTrack, MEMORY[0x277D83D88], sub_21873652C);
}