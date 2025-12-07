uint64_t sub_218D1E2C8(void *a1)
{
  v3 = v1;
  sub_218D1F0BC(0, &qword_27CC11428, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D1F004();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8(0);
  sub_21877C7E0(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for TopicRecipesTagFeedGroupKnobs(0);
    LOBYTE(v14) = 1;
    sub_219BEF814();
    sub_21877C7E0(&qword_280E912F0, MEMORY[0x277D32720], MEMORY[0x277D32728]);
    sub_219BF77E4();
    LOBYTE(v14) = 2;
    sub_219BF77E4();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_218D1D174(0);
    sub_21877C7E0(&qword_280E91470, sub_218D1D174, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_218CC4F9C();
    sub_21877C7E0(&qword_280E917A0, sub_218CC4F9C, MEMORY[0x277D32440]);
    sub_219BF7834();
    v14 = *(v3 + v10[9]);
    v13 = 5;
    sub_2186ECA28();
    sub_21877C7E0(&qword_280E913E0, sub_2186ECA28, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[10]);
    v13 = 6;
    sub_2186F95C4();
    sub_21877C7E0(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[11]);
    v13 = 7;
    sub_218CC4F34(0);
    sub_218CC6A10();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_218D1E758()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000015;
    if (v1 == 6)
    {
      v5 = 0xD000000000000020;
    }

    v6 = 0x546465726F6E6769;
    if (v1 != 4)
    {
      v6 = 0xD000000000000012;
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
    v2 = 0x73656C7572;
    v3 = 0xD00000000000001BLL;
    if (v1 != 2)
    {
      v3 = 0xD000000000000013;
    }

    if (*v0)
    {
      v2 = 0xD000000000000021;
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

uint64_t sub_218D1E874@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_218D1F238(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_218D1E8A8(uint64_t a1)
{
  v2 = sub_218D1F004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D1E8E4(uint64_t a1)
{
  v2 = sub_218D1F004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218D1E954(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BEF814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EDCB0(0, &qword_280E912E0, MEMORY[0x277D32720]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v47 - v12;
  sub_218CC85CC(0);
  v15 = v14;
  MEMORY[0x28223BE20](v14);
  v54 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v47 - v18;
  type metadata accessor for TagFeedServiceConfig(0);
  sub_21877C7E0(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    goto LABEL_16;
  }

  v49 = v10;
  v50 = v7;
  v20 = type metadata accessor for TopicRecipesTagFeedGroupKnobs(0);
  v21 = a1;
  v51 = v20;
  v52 = a1;
  v22 = *(v20 + 20);
  v23 = *(v15 + 48);
  v24 = MEMORY[0x277D32720];
  sub_218D0B510(v21 + v22, v19, &qword_280E912E0, MEMORY[0x277D32720]);
  v53 = a2;
  sub_218D0B510(a2 + v22, &v19[v23], &qword_280E912E0, v24);
  v25 = *(v5 + 48);
  v26 = v5;
  if (v25(v19, 1, v4) == 1)
  {
    if (v25(&v19[v23], 1, v4) == 1)
    {
      v48 = v5;
      sub_218D0B57C(v19, &qword_280E912E0, MEMORY[0x277D32720]);
      goto LABEL_9;
    }

LABEL_7:
    v27 = v19;
LABEL_15:
    sub_218D0BBC4(v27);
    goto LABEL_16;
  }

  sub_218D0B510(v19, v13, &qword_280E912E0, MEMORY[0x277D32720]);
  if (v25(&v19[v23], 1, v4) == 1)
  {
    (*(v5 + 8))(v13, v4);
    goto LABEL_7;
  }

  v28 = *(v5 + 32);
  v29 = v50;
  v28(v50, &v19[v23], v4);
  sub_21877C7E0(&qword_27CC10CD8, MEMORY[0x277D32720], MEMORY[0x277D32730]);
  v30 = sub_219BF53A4();
  v48 = v26;
  v31 = *(v26 + 8);
  v31(v29, v4);
  v31(v13, v4);
  sub_218D0B57C(v19, &qword_280E912E0, MEMORY[0x277D32720]);
  if ((v30 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v32 = v51;
  v33 = *(v51 + 24);
  v34 = *(v15 + 48);
  v35 = MEMORY[0x277D32720];
  v36 = v54;
  sub_218D0B510(v52 + v33, v54, &qword_280E912E0, MEMORY[0x277D32720]);
  sub_218D0B510(v53 + v33, v36 + v34, &qword_280E912E0, v35);
  if (v25(v36, 1, v4) != 1)
  {
    v37 = v49;
    sub_218D0B510(v36, v49, &qword_280E912E0, MEMORY[0x277D32720]);
    if (v25((v36 + v34), 1, v4) != 1)
    {
      v40 = v48;
      v41 = v36 + v34;
      v42 = v50;
      (*(v48 + 32))(v50, v41, v4);
      sub_21877C7E0(&qword_27CC10CD8, MEMORY[0x277D32720], MEMORY[0x277D32730]);
      v43 = sub_219BF53A4();
      v44 = *(v40 + 8);
      v44(v42, v4);
      v44(v37, v4);
      sub_218D0B57C(v36, &qword_280E912E0, MEMORY[0x277D32720]);
      if ((v43 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    (*(v48 + 8))(v37, v4);
    goto LABEL_14;
  }

  if (v25((v36 + v34), 1, v4) != 1)
  {
LABEL_14:
    v27 = v36;
    goto LABEL_15;
  }

  sub_218D0B57C(v36, &qword_280E912E0, MEMORY[0x277D32720]);
LABEL_19:
  sub_218D1D174(0);
  v46 = v52;
  v45 = v53;
  if (sub_219BEF504())
  {
    sub_218CC4F9C();
    if (sub_219BEEDE4())
    {
      sub_2186ECA28();
      if (sub_219BEF504())
      {
        sub_2186F95C4();
        if (sub_219BEF504())
        {
          sub_21931A484(*(v46 + *(v32 + 44)), *(v45 + *(v32 + 44)));
          return v38 & 1;
        }
      }
    }
  }

LABEL_16:
  v38 = 0;
  return v38 & 1;
}

unint64_t sub_218D1F004()
{
  result = qword_280EADFA8[0];
  if (!qword_280EADFA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EADFA8);
  }

  return result;
}

uint64_t sub_218D1F058(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicRecipesTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218D1F0BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D1F004();
    v7 = a3(a1, &type metadata for TopicRecipesTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218D1F134()
{
  result = qword_27CC11430;
  if (!qword_27CC11430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11430);
  }

  return result;
}

unint64_t sub_218D1F18C()
{
  result = qword_280EADF98;
  if (!qword_280EADF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EADF98);
  }

  return result;
}

unint64_t sub_218D1F1E4()
{
  result = qword_280EADFA0;
  if (!qword_280EADFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EADFA0);
  }

  return result;
}

uint64_t sub_218D1F238(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000219CD7680 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD76B0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000219CD76F0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x546465726F6E6769 && a2 == 0xED00007344496761 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219CD7740 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000219CD6980 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219CD6940 == a2)
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

uint64_t sub_218D1F52C()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186CFDE4(0, &qword_280EE8D30, MEMORY[0x277D2FD00]);
  sub_219BE2914();
  v4 = *MEMORY[0x277D6CF10];
  v5 = *(v1 + 104);
  v5(v3, v4, v0);
  sub_219BE19F4();

  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_2186CFDE4(0, qword_280E98578, &protocol descriptor for AudioPlaybackOptionsAlertPresenterType);
  sub_219BE2914();
  v5(v3, v4, v0);
  sub_219BE19F4();

  return (v6)(v3, v0);
}

uint64_t sub_218D1F764@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

double sub_218D1F7B4()
{
  sub_2186CFDE4(0, &qword_280EE8CE0, MEMORY[0x277D2FE68]);
  sub_219BE2914();

  return result;
}

uint64_t sub_218D1F858@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = a1(0);
  swift_allocObject();
  result = a2();
  a4[3] = v7;
  a4[4] = a3;
  *a4 = result;
  return result;
}

double sub_218D1F8E8()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186CFDE4(0, &unk_280EC27D0, &protocol descriptor for AudioPlaybackTrackerType);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186CFDE4(0, qword_280EC27E0, &protocol descriptor for AudioPlaybackContextType);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186CFDE4(0, &qword_280EBC3A0, &protocol descriptor for AudioHeadlineConverterType);
  sub_219BE2914();

  (*(v1 + 104))(v3, *MEMORY[0x277D6CF10], v0);
  sub_219BE19F4();

  (*(v1 + 8))(v3, v0);
  sub_219BE2044();
  sub_219BE28F4();

  sub_219BE2044();
  sub_219BE28F4();

  return result;
}

uint64_t sub_218D1FB54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF6 && *(a1 + 16))
  {
    return (*a1 + 2147483639);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 8;
  if (v4 >= 0xA)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218D1FBAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483639;
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF7)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

uint64_t sub_218D1FC0C(uint64_t a1, uint64_t a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v2 = 0x466465766153;
        goto LABEL_17;
      }

      v3 = 0x4679726F74736948;
    }

    else if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_21;
      }

      v3 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x6546756F59726F46;
    }
  }

  else
  {
    if (a2 > 5)
    {
      switch(a2)
      {
        case 6:
          v3 = 0x627548646F6F66;
          goto LABEL_22;
        case 7:
          v3 = 0x6957646572616853;
          goto LABEL_22;
        case 8:
          v2 = 0x466F69647541;
LABEL_17:
          v3 = v2 & 0xFFFFFFFFFFFFLL | 0x6565000000000000;
          goto LABEL_22;
      }

LABEL_21:
      v3 = a1;
      goto LABEL_22;
    }

    if (a2 == 4)
    {
      v3 = 0x7374726F7053796DLL;
    }

    else
    {
      v3 = 0x7548656C7A7A7570;
    }
  }

LABEL_22:
  sub_218D1FDAC(a1, a2);
  return v3;
}

double sub_218D1FDAC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

uint64_t sub_218D1FDC0(uint64_t a1, unint64_t a2)
{

  if (sub_219BF5624() & 1) != 0 || (, , (sub_219BF5624()) || (, , (sub_219BF5624()) || (, , (sub_219BF5624()) || (, swift_arrayDestroy(), , (sub_219BF5624()) || (, , (sub_219BF5624()) || (, , (sub_219BF5624()) || (, , (sub_219BF5624()) || (, , (sub_219BF5624()) || (, swift_arrayDestroy(), , (sub_219BF5624()) || (, , (sub_219BF5624()) || (, , (sub_219BF5624()) || (, , (sub_219BF5624()) || (, , (sub_219BF5624()) || (, , (sub_219BF5624()))
  {
    swift_arrayDestroy();

    v4 = sub_219BF5554();

    v5 = sub_219BC923C(v4, a1, a2);
    v7 = v6;
    v9 = v8;
    v11 = v10;

    a1 = MEMORY[0x21CECC290](v5, v7, v9, v11);
  }

  else
  {

    swift_arrayDestroy();
  }

  return a1;
}

BOOL sub_218D20210(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        if (a4 != 2)
        {
          return 0;
        }
      }

      else if (a4 != 3)
      {
        return 0;
      }

      return 1;
    }

    if (a2)
    {
      if (a2 != 1)
      {
        goto LABEL_29;
      }

      if (a4 == 1)
      {
        return 1;
      }
    }

    else if (!a4)
    {
      return 1;
    }

    return 0;
  }

  if (a2 <= 5)
  {
    if (a2 == 4)
    {
      if (a4 != 4)
      {
        return 0;
      }
    }

    else if (a4 != 5)
    {
      return 0;
    }

    return 1;
  }

  switch(a2)
  {
    case 6:
      return a4 == 6;
    case 7:
      return a4 == 7;
    case 8:
      return a4 == 8;
  }

LABEL_29:
  if (a4 < 9)
  {
    return 0;
  }

  v7 = sub_218D1FDC0(a1, a2);
  v9 = v8;
  if (v7 == sub_218D1FDC0(a3, a4) && v9 == v10)
  {

    return 1;
  }

  else
  {
    v11 = sub_219BF78F4();

    return v11 & 1;
  }
}

uint64_t sub_218D20388(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0x6546756F59726F46 && a2 == 0xEA00000000006465;
  if (v2 || (sub_219BF78F4() & 1) != 0 || a1 == 0xD000000000000010 && 0x8000000219CDD430 == a2 || (sub_219BF78F4() & 1) != 0 || a1 == 0x6565466465766153 && a2 == 0xE900000000000064 || (sub_219BF78F4() & 1) != 0 || a1 == 0x4679726F74736948 && a2 == 0xEB00000000646565 || (sub_219BF78F4() & 1) != 0 || a1 == 0x7374726F7053796DLL && a2 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0 || a1 == 0x7548656C7A7A7570 && a2 == 0xE900000000000062 || (sub_219BF78F4() & 1) != 0 || a1 == 0x627548646F6F66 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0 || a1 == 0x6957646572616853 && a2 == 0xED0000756F596874 || (sub_219BF78F4() & 1) != 0 || a1 == 0x6565466F69647541 && a2 == 0xE900000000000064 || (v6 = sub_219BF78F4(), result = a1, (v6 & 1) != 0))
  {

    return 0;
  }

  return result;
}

BOOL sub_218D20704(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 > 4)
  {
    v4 = 2;
    if (v3 > 4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = qword_219C31D98[v3];
    return v4 < v5;
  }

  v4 = qword_219C31D98[v2];
  if (v3 <= 4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2;
  return v4 < v5;
}

BOOL sub_218D2074C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3 > 4)
  {
    v4 = 2;
    if (v2 > 4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = qword_219C31D98[v2];
    return v4 >= v5;
  }

  v4 = qword_219C31D98[v3];
  if (v2 <= 4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2;
  return v4 >= v5;
}

BOOL sub_218D20794(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 > 4)
  {
    v4 = 2;
    if (v3 > 4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = qword_219C31D98[v3];
    return v4 >= v5;
  }

  v4 = qword_219C31D98[v2];
  if (v3 <= 4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2;
  return v4 >= v5;
}

BOOL sub_218D207DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v3 > 4)
  {
    v4 = 2;
    if (v2 > 4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = qword_219C31D98[v2];
    return v4 < v5;
  }

  v4 = qword_219C31D98[v3];
  if (v2 <= 4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2;
  return v4 < v5;
}

BOOL sub_218D20824(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 > 4)
  {
    v4 = 2;
    if (v3 > 4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = qword_219C31D98[v3];
    return v4 == v5;
  }

  v4 = qword_219C31D98[v2];
  if (v3 <= 4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2;
  return v4 == v5;
}

void sub_218D2086C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v7 = *(a3 + 16);
      [*(v7 + OBJC_IVAR____TtC7NewsUI211WelcomeView_titleGroup) setAlpha_];
      v6 = 0;
      goto LABEL_14;
    }

    if (a2 == 1)
    {
      v5 = 1;
      v6 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v5 = 0;
        v6 = 3;
        goto LABEL_13;
      case 3:
        v5 = 0;
        v6 = 4;
        goto LABEL_13;
      case 4:
        v5 = 0;
        v6 = 5;
        goto LABEL_13;
    }
  }

  v5 = 1;
  v6 = 2;
LABEL_13:
  v7 = *(a3 + 16);
  [*(v7 + OBJC_IVAR____TtC7NewsUI211WelcomeView_titleGroup) setAlpha_];
  if (v5)
  {
LABEL_14:
    v8 = OBJC_IVAR____TtC7NewsUI211WelcomeView_footer;
    [*(*(v7 + OBJC_IVAR____TtC7NewsUI211WelcomeView_footer) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton) setAlpha_];
    [*(*(v7 + v8) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyIcon) setAlpha_];
    [*(*(v7 + v8) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink) setAlpha_];
    if (v6 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  v11 = OBJC_IVAR____TtC7NewsUI211WelcomeView_titleGroup;
  v12 = [*(v7 + OBJC_IVAR____TtC7NewsUI211WelcomeView_titleGroup) layer];
  [v12 removeAllAnimations];

  v13 = *(v7 + v11);
  [v13 center];
  [v13 setCenter_];

  if (v6 != 2)
  {
LABEL_15:
    if (v6 == 5)
    {
      sub_218D20E54();
    }

    else if (v6 == 4)
    {
      v9 = OBJC_IVAR____TtC7NewsUI211WelcomeView_footer;
      [*(*(v7 + OBJC_IVAR____TtC7NewsUI211WelcomeView_footer) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton) setAlpha_];
      [*(*(v7 + v9) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyIcon) setAlpha_];
      [*(*(v7 + v9) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink) setAlpha_];
      v10 = [*(*(v7 + v9) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton) layer];
      [v10 removeAllAnimations];

      [*(*(v7 + v9) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_activityIndicator) setAlpha_];
      v14 = [*(*(v7 + v9) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_activityIndicator) layer];
      [v14 removeAllAnimations];
    }

    return;
  }

LABEL_21:
  if (a2 >= 5)
  {
    sub_218D20BA8(a1, a2);
  }
}

void sub_218D20BA8(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = OBJC_IVAR____TtC7NewsUI211WelcomeView_footer;
  v5 = [*(*(v3 + OBJC_IVAR____TtC7NewsUI211WelcomeView_footer) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_offlineMessage) attributedText];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 attributesAtIndex:0 effectiveRange:0];

    type metadata accessor for Key(0);
    sub_21899E604();
    v8 = sub_219BF5214();
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*(v3 + v4) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_offlineMessage);
  v10 = sub_219BF53D4();
  if (v8)
  {
    type metadata accessor for Key(0);
    sub_21899E604();
    v11 = sub_219BF5204();
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString:v10 attributes:v11];

  [v9 setAttributedText_];
  v13 = objc_opt_self();
  v20 = sub_218D21C30;
  v21 = v2;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_218793E0C;
  v19 = &block_descriptor_54;
  v14 = _Block_copy(&v16);

  v20 = sub_218D21868;
  v21 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_218A1DA70;
  v19 = &block_descriptor_7_1;
  v15 = _Block_copy(&v16);
  [v13 animateWithDuration:v14 animations:v15 completion:0.3];
  _Block_release(v15);
  _Block_release(v14);
}

id sub_218D20E54()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC7NewsUI211WelcomeView_footer;
  [*(*(v1 + OBJC_IVAR____TtC7NewsUI211WelcomeView_footer) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton) setAlpha_];
  [*(*(v1 + v2) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_activityIndicator) setAlpha_];
  [*(*(v1 + v2) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyIcon) setAlpha_];
  v3 = *(*(v1 + v2) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink);

  return [v3 setAlpha_];
}

id sub_218D20F18(uint64_t a1, uint64_t a2)
{
  MEMORY[0x21CECEE00](*MEMORY[0x277D76488]);
  v5 = objc_opt_self();
  [v5 begin];
  v14[4] = a1;
  v14[5] = a2;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_218793E0C;
  v14[3] = &block_descriptor_22_2;
  v6 = _Block_copy(v14);

  [v5 setCompletionBlock_];
  _Block_release(v6);
  v7 = *(v2 + 16);
  v8 = OBJC_IVAR____TtC7NewsUI211WelcomeView_titleGroup;
  v9 = [*(v7 + OBJC_IVAR____TtC7NewsUI211WelcomeView_titleGroup) layer];
  v10 = sub_218D221B8();
  [v9 addAnimation:v10 forKey:0];

  v11 = [*(v7 + v8) layer];
  v12 = sub_218D21ED0(0.5, 0.0);
  [v11 addAnimation:v12 forKey:0];

  return [v5 commit];
}

uint64_t sub_218D210B4(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = a1[3];
  v94 = a1[2];
  v95 = v8;
  v96 = *(a1 + 8);
  v9 = a1[1];
  v92 = *a1;
  v93 = v9;
  v10 = *(a1 + 2);
  v11 = [v10 horizontalSizeClass];
  v12 = [v10 verticalSizeClass];
  if (v11 == 1)
  {
    if (v12 != 2)
    {
LABEL_10:
      v14 = 0;
      v15 = 1;
      goto LABEL_11;
    }

    v15 = 2;
    v14 = 1;
  }

  else
  {
    if (v11 != 2 || v12 != 2)
    {
      goto LABEL_10;
    }

    v14 = 0;
    v15 = 3;
  }

LABEL_11:
  v88[2] = v94;
  v88[3] = v95;
  v89 = v96;
  v88[1] = v93;
  v88[0] = v92;
  v90 = 0;
  v91 = v15;
  __swift_project_boxed_opaque_existential_1((v4 + 200), *(v4 + 224));
  v16 = *(v4 + 104);
  v17 = *(v4 + 136);
  v86[6] = *(v4 + 120);
  v86[7] = v17;
  v87 = *(v4 + 152);
  v18 = *(v4 + 40);
  v19 = *(v4 + 72);
  v86[2] = *(v4 + 56);
  v86[3] = v19;
  v20 = *(v4 + 88);
  v86[5] = v16;
  v86[4] = v20;
  v21 = *(v4 + 24);
  v86[1] = v18;
  v86[0] = v21;
  sub_218D21CB4(a1, v76);
  sub_218CFCE3C(v86, v88, v73);
  if (v14 && (v22 = v75, CGRectGetHeight(v74) < v22))
  {
    v23 = [v10 preferredContentSizeCategory];
    v24 = sub_219BF6954();
    sub_218D21D10(a1);
  }

  else
  {
    sub_218D21D10(a1);
    v24 = 0;
  }

  v82[2] = v94;
  v82[3] = v95;
  v83 = v96;
  v82[1] = v93;
  v82[0] = v92;
  v84 = v24 & 1;
  v85 = v15;
  __swift_project_boxed_opaque_existential_1((v4 + 200), *(v4 + 224));
  v25 = *(v4 + 104);
  v26 = *(v4 + 136);
  v80[6] = *(v4 + 120);
  v80[7] = v26;
  v81 = *(v4 + 152);
  v27 = *(v4 + 40);
  v28 = *(v4 + 72);
  v80[2] = *(v4 + 56);
  v80[3] = v28;
  v80[4] = *(v4 + 88);
  v80[5] = v25;
  v80[0] = *(v4 + 24);
  v80[1] = v27;
  sub_218D21CB4(a1, v76);
  sub_218CFCE3C(v80, v82, v76);
  v29 = v77;
  v30 = *(v4 + 16);
  [*(v30 + OBJC_IVAR____TtC7NewsUI211WelcomeView_titleGroup) center];
  v32 = v31;
  v33 = objc_opt_self();
  [v33 begin];
  v34 = swift_allocObject();
  v34[2] = v4;
  v34[3] = a2;
  v34[4] = a3;
  v71 = sub_218D21D64;
  v72 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v68 = 1107296256;
  v69 = sub_218793E0C;
  v70 = &block_descriptor_10_0;
  v35 = _Block_copy(&aBlock);

  [v33 setCompletionBlock_];
  _Block_release(v35);
  v36 = OBJC_IVAR____TtC7NewsUI211WelcomeView_footer;
  v37 = [*(*(v30 + OBJC_IVAR____TtC7NewsUI211WelcomeView_footer) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_activityIndicator) layer];
  v38 = sub_218D21D70(0.08);
  [v37 addAnimation:v38 forKey:0];

  [*(*(v30 + v36) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_offlineMessage) alpha];
  if (v39 > 0.0)
  {
    v40 = [*(*(v30 + v36) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_offlineMessage) layer];
    v41 = sub_218D21D70(0.08);
    [v40 addAnimation:v41 forKey:0];
  }

  v42 = objc_opt_self();
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v29 - v32;
  v71 = sub_218D21EC4;
  v72 = v44;
  aBlock = MEMORY[0x277D85DD0];
  v68 = 1107296256;
  v69 = sub_218793E0C;
  v70 = &block_descriptor_19;
  v45 = _Block_copy(&aBlock);

  [v42 animateWithDuration:196608 delay:v45 usingSpringWithDamping:0 initialSpringVelocity:1.0 options:0.08 animations:20.0 completion:0.0];
  _Block_release(v45);
  [*(*(v30 + v36) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink) center];
  v46 = v78;
  v47 = v79;
  v49 = v48 + v78;
  v50 = [*(*(v30 + v36) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink) layer];
  v51 = sub_218D21ED0(0.5, 0.12);
  [v50 addAnimation:v51 forKey:0];

  v52 = [*(*(v30 + v36) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink) layer];
  v53 = sub_218D22044(v49, 0.12);
  [v52 addAnimation:v53 forKey:0];

  [*(*(v30 + v36) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyIcon) center];
  v55 = v46 + v54;
  v56 = [*(*(v30 + v36) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyIcon) layer];
  v57 = sub_218D21ED0(0.5, 0.12);
  [v56 addAnimation:v57 forKey:0];

  v58 = [*(*(v30 + v36) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyIcon) layer];
  v59 = sub_218D22044(v55, 0.12);
  [v58 addAnimation:v59 forKey:0];

  [*(*(v30 + v36) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton) center];
  v61 = v47 + v60;
  v62 = [*(*(v30 + v36) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton) layer];
  v63 = sub_218D21ED0(0.5, 0.16);
  [v62 addAnimation:v63 forKey:0];

  v64 = [*(*(v30 + v36) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton) layer];
  v65 = sub_218D22044(v61, 0.16);
  [v64 addAnimation:v65 forKey:0];

  [v33 commit];
  return sub_218D21D10(a1);
}

uint64_t sub_218D21878(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 16);
  v4 = OBJC_IVAR____TtC7NewsUI211WelcomeView_footer;
  [*(*(v3 + OBJC_IVAR____TtC7NewsUI211WelcomeView_footer) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton) setAlpha_];
  [*(*(v3 + v4) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyIcon) setAlpha_];
  [*(*(v3 + v4) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink) setAlpha_];
  v5 = [*(*(v3 + v4) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_continueButton) layer];
  [v5 removeAllAnimations];

  [*(*(v3 + v4) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_activityIndicator) setAlpha_];
  v6 = [*(*(v3 + v4) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_activityIndicator) layer];
  [v6 removeAllAnimations];

  v7 = MEMORY[0x21CECEE20](*MEMORY[0x277D76488]);
  return a2(v7);
}

void sub_218D219C0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(*(Strong + 16) + OBJC_IVAR____TtC7NewsUI211WelcomeView_titleGroup);
    [v2 center];
    [v2 setCenter_];
  }
}

uint64_t sub_218D21A60()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 136);
  v6[6] = *(v0 + 120);
  v6[7] = v2;
  v7 = *(v0 + 152);
  v3 = *(v0 + 40);
  v4 = *(v0 + 72);
  v6[2] = *(v0 + 56);
  v6[3] = v4;
  v6[4] = *(v0 + 88);
  v6[5] = v1;
  v6[0] = *(v0 + 24);
  v6[1] = v3;
  sub_218C4F040(v6);
  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  __swift_destroy_boxed_opaque_existential_1((v0 + 200));
  return swift_deallocClassInstance();
}

uint64_t get_enum_tag_for_layout_string_7NewsUI219WelcomeViewKeyFrameO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_218D21B20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218D21B78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_218D21BDC()
{
  result = qword_27CC11438;
  if (!qword_27CC11438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11438);
  }

  return result;
}

id sub_218D21C30()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____TtC7NewsUI211WelcomeView_footer;
  [*(*(v1 + OBJC_IVAR____TtC7NewsUI211WelcomeView_footer) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_activityIndicator) setAlpha_];
  v3 = *(*(v1 + v2) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_offlineMessage);

  return [v3 setAlpha_];
}

id sub_218D21D70(double a1)
{
  v2 = sub_219BF53D4();
  v3 = [objc_opt_self() animationWithKeyPath_];

  v4 = sub_219BDD2F4();
  [v3 setFromValue_];

  v5 = sub_219BDD2F4();
  [v3 setToValue_];

  v6 = v3;
  [v6 setDuration_];
  v7 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v8) = 1036831949;
  LODWORD(v9) = 0.25;
  LODWORD(v10) = 0.75;
  LODWORD(v11) = 1.0;
  v12 = [v7 initWithControlPoints__:v9 :{v8, v10, v11}];
  [v6 setTimingFunction_];

  [v6 setRemovedOnCompletion_];
  [v6 setFillMode_];

  return v6;
}

id sub_218D21ED0(double a1, double a2)
{
  v4 = sub_219BF53D4();
  v5 = [objc_opt_self() animationWithKeyPath_];

  v6 = v5;
  [v6 setBeginTime_];
  v7 = sub_219BDD2F4();
  [v6 setFromValue_];

  v8 = sub_219BDD2F4();
  [v6 setToValue_];

  [v6 setDuration_];
  v9 = objc_allocWithZone(MEMORY[0x277CD9EF8]);
  LODWORD(v10) = 1036831949;
  LODWORD(v11) = 0.25;
  LODWORD(v12) = 0.75;
  LODWORD(v13) = 1.0;
  v14 = [v9 initWithControlPoints__:v11 :{v10, v12, v13}];
  [v6 setTimingFunction_];

  [v6 setRemovedOnCompletion_];
  [v6 setFillMode_];

  return v6;
}

id sub_218D22044(double a1, double a2)
{
  v3 = sub_219BF53D4();
  v4 = [objc_opt_self() animationWithKeyPath_];

  v5 = v4;
  v6 = sub_219BDD2F4();
  [v5 setFromValue_];

  v7 = v5;
  [v7 setBeginTime_];
  [v7 setMass_];
  [v7 setStiffness_];
  [v7 setDamping_];
  [v7 setInitialVelocity_];
  [v7 settlingDuration];
  [v7 setDuration_];
  [v7 setRemovedOnCompletion_];
  [v7 setFillMode_];

  return v7;
}

id sub_218D221B8()
{
  v0 = sub_219BF53D4();
  v1 = [objc_opt_self() animationWithKeyPath_];

  [v1 setMass_];
  [v1 setStiffness_];
  [v1 setDamping_];
  [v1 setInitialVelocity_];
  v2 = v1;
  [v2 settlingDuration];
  [v2 setDuration_];

  v3 = v2;
  v4 = sub_219BDD2F4();
  [v3 setFromValue_];

  v5 = sub_219BDD2F4();
  [v3 setToValue_];

  return v3;
}

uint64_t sub_218D22318(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_21871A7F0(*a1);
  v5 = v4;
  if (v3 == sub_21871A7F0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_218D223A0()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_21871A7F0(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_218D22404(uint64_t a1)
{
  sub_21871A7F0(*v1);
  sub_219BF5524();

  return result;
}

uint64_t sub_218D22458(uint64_t a1)
{
  v2 = *v1;
  sub_219BF7AA4();
  sub_21871A7F0(v2);
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_218D224B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218D234C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_218D224E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21871A7F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_218D22538(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

unint64_t sub_218D22644@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_218D23580(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_218D22674(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xD000000000000012;
  v6 = 0x8000000219CD71B0;
  v7 = 0x8000000219CD71D0;
  v8 = 0xD000000000000019;
  if (v2 != 4)
  {
    v8 = 0xD000000000000013;
    v7 = 0x8000000219CD71F0;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xED00006465626972;
  v10 = 0x6373627553746F6ELL;
  if (v2 != 1)
  {
    v10 = 0xD000000000000012;
    v9 = 0x8000000219CD7190;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

void sub_218D22748(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_21870A434();
  }
}

uint64_t sub_218D2279C(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BDB1E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_219BDB1A4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t getEnumTagSinglePayload for OfflineFeatureEnablement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 6;
  v9 = v7 - 6;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OfflineFeatureEnablement(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_218D22A80(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_218D22A94(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OfflineFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OfflineFeature(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_218D22C08()
{
  result = qword_27CC11468;
  if (!qword_27CC11468)
  {
    sub_21871A708(255, &unk_27CC11470, &type metadata for OfflineFeature, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11468);
  }

  return result;
}

void sub_218D22CB8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_218C81048(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_218D23294((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_219BF78F4();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_219BF78F4()))
          {
            goto LABEL_23;
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_2191F6B60(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_2191F6B60((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_218D23294((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_218C81048(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_218C80FBC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (sub_219BF78F4() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
}

uint64_t sub_218D23294(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_219BF78F4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_219BF78F4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

unint64_t sub_218D234C4(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7954();

  if (v2 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_218D2352C()
{
  result = qword_27CC11480;
  if (!qword_27CC11480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11480);
  }

  return result;
}

unint64_t sub_218D23580(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_218D235EC(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for EngagementEvent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  result = sub_219BE3964();
  if (result)
  {
    if (qword_280EE60A0 != -1)
    {
      swift_once();
    }

    v8 = sub_219BE5434();
    __swift_project_value_buffer(v8, qword_280F627F0);
    sub_218A153EC(a1, v6);
    v9 = sub_219BE5414();
    v10 = sub_219BF61E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = sub_218A12AC0();
      v15 = v14;
      sub_218C1023C(v6);
      v16 = sub_2186D1058(v13, v15, &v18);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2186C1000, v9, v10, "EngagementService: Received event %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x21CECF960](v12, -1, -1);
      MEMORY[0x21CECF960](v11, -1, -1);
    }

    else
    {

      sub_218C1023C(v6);
    }

    __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
    return sub_21879431C(a1);
  }

  return result;
}

uint64_t sub_218D23844(void *a1)
{
  v3 = v1;
  sub_218D24318(0, &qword_27CC114A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D24204();
  sub_219BF7B44();
  LOBYTE(v12) = 0;
  sub_219BF77F4();
  if (!v2)
  {
    v12 = *(v3 + 16);
    HIBYTE(v11) = 1;
    sub_2189684CC();
    sub_219BF7834();
    LOBYTE(v12) = 2;
    sub_219BF77F4();
    LOBYTE(v12) = 3;
    sub_219BF7794();
    v12 = *(v3 + 56);
    HIBYTE(v11) = 4;
    sub_218D24258(0);
    sub_218D2437C(&qword_27CC114B0, &qword_27CC114B8, &unk_219C0C3C4, MEMORY[0x277D83948]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_218D23AA0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD00000000000001ALL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000018;
  }

  if (*v0)
  {
    v2 = 0x73746F6C73;
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

uint64_t sub_218D23B48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_218D23C44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_218D23B70(uint64_t a1)
{
  v2 = sub_218D24204();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D23BAC(uint64_t a1)
{
  v2 = sub_218D24204();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_218D23BE8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_218D23E00(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t sub_218D23C44(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746F6C73 && a2 == 0xE500000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000219CD9230 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219CD9250 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219CF3F30 == a2)
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

void sub_218D23E00(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_218D24318(0, &qword_27CC11490, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D24204();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v33[0]) = 0;
    v10 = sub_219BF76F4();
    v28 = v11;
    LOBYTE(v29) = 1;
    sub_218968414();
    sub_219BF7734();
    v27 = v33[0];
    LOBYTE(v33[0]) = 2;
    v24 = sub_219BF76F4();
    v26 = v12;
    LOBYTE(v33[0]) = 3;
    v23 = sub_219BF7694();
    v25 = v13;
    sub_218D24258(0);
    v34[0] = 4;
    sub_218D2437C(&qword_27CC114A0, qword_280EC1758, &unk_219C0C3EC, MEMORY[0x277D83978]);
    sub_219BF7734();
    (*(v7 + 8))(v9, v6);
    v22 = v35;
    v15 = v27;
    v14 = v28;
    *&v29 = v10;
    *(&v29 + 1) = v28;
    v16 = v24;
    *&v30 = v27;
    *(&v30 + 1) = v24;
    v18 = v25;
    v17 = v26;
    *&v31 = v26;
    *(&v31 + 1) = v23;
    *&v32 = v25;
    *(&v32 + 1) = v35;
    sub_218D242B0(&v29, v33);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v33[0] = v10;
    v33[1] = v14;
    v33[2] = v15;
    v33[3] = v16;
    v33[4] = v17;
    v33[5] = v23;
    v33[6] = v18;
    v33[7] = v22;
    sub_218D242E8(v33);
    v19 = v30;
    *a2 = v29;
    a2[1] = v19;
    v20 = v32;
    a2[2] = v31;
    a2[3] = v20;
  }
}

unint64_t sub_218D24204()
{
  result = qword_27CC11498;
  if (!qword_27CC11498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11498);
  }

  return result;
}

void sub_218D24258(uint64_t a1)
{
  if (!qword_280E8F0F0)
  {
    type metadata accessor for LegacyAudioConfigArticle(255);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8F0F0);
    }
  }
}

void sub_218D24318(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D24204();
    v7 = a3(a1, &type metadata for LegacyAudioSuggestionsFeedGroupConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_218D2437C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_218D24258(255);
    sub_218D243F8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218D243F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LegacyAudioConfigArticle(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_218D24450()
{
  result = qword_27CC114C0;
  if (!qword_27CC114C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC114C0);
  }

  return result;
}

unint64_t sub_218D244A8()
{
  result = qword_27CC114C8;
  if (!qword_27CC114C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC114C8);
  }

  return result;
}

unint64_t sub_218D24500()
{
  result = qword_27CC114D0;
  if (!qword_27CC114D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC114D0);
  }

  return result;
}

uint64_t sub_218D24554(uint64_t a1)
{
  v3 = type metadata accessor for SportsHeadlineExposureTracker.Exposure(0);
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v28 = v1;
  v36 = MEMORY[0x277D84F90];
  sub_21870B65C(0, v5, 0);
  v6 = v36;
  v7 = a1 + 56;
  result = sub_219BF7174();
  v9 = result;
  v10 = 0;
  v29 = a1 + 64;
  v30 = v5;
  v31 = a1 + 56;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
  {
    v13 = v9 >> 6;
    if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_21;
    }

    v34 = *(a1 + 36);
    v14 = v32;
    sub_218D2A150(*(a1 + 48) + *(v33 + 72) * v9, v32, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
    v35 = sub_219BDF0D4();
    v16 = v15;
    result = sub_218D2A434(v14, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
    v36 = v6;
    v18 = *(v6 + 16);
    v17 = *(v6 + 24);
    v19 = v6;
    if (v18 >= v17 >> 1)
    {
      result = sub_21870B65C((v17 > 1), v18 + 1, 1);
      v19 = v36;
    }

    *(v19 + 16) = v18 + 1;
    v20 = v19 + 16 * v18;
    *(v20 + 32) = v35;
    *(v20 + 40) = v16;
    v11 = 1 << *(a1 + 32);
    if (v9 >= v11)
    {
      goto LABEL_22;
    }

    v7 = v31;
    v21 = *(v31 + 8 * v13);
    if ((v21 & (1 << v9)) == 0)
    {
      goto LABEL_23;
    }

    v6 = v19;
    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v22 = v21 & (-2 << (v9 & 0x3F));
    if (v22)
    {
      v11 = __clz(__rbit64(v22)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v12 = v30;
    }

    else
    {
      v23 = v13 << 6;
      v24 = v13 + 1;
      v12 = v30;
      v25 = (v29 + 8 * v13);
      while (v24 < (v11 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_2187BC250(v9, v34, 0);
          v11 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_2187BC250(v9, v34, 0);
    }

LABEL_4:
    ++v10;
    v9 = v11;
    if (v10 == v12)
    {
      return v6;
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
  return result;
}

void sub_218D2483C(id a1, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = a1;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x21CECE0F0](j, a4, a3);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        a1 = *(a4 + 8 * j + 32);
      }

      v8 = a1;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = a1;
      a2(&v13, &v12);

      if (v4)
      {

        return;
      }

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = a1;
    i = sub_219BF7214();
  }
}

void sub_218D24964(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v7 = type metadata accessor for SportsHeadlineExposureTracker.Exposure(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 56);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  while (v13)
  {
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    sub_218D2A150(*(a4 + 48) + *(v8 + 72) * (v17 | (v16 << 6)), v10, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
    v19(&v20, v10);
    sub_218D2A434(v10, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
    if (v4)
    {

      return;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return;
    }

    v13 = *(a4 + 56 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_218D24B64(uint64_t a1, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, unint64_t a4)
{
  v13 = a1;
  if (a4 >> 62)
  {
LABEL_16:
    v10 = a1;
    v6 = sub_219BF7214();
    a1 = v10;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      do
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x21CECE0F0](v7, a4, a3);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return;
          }
        }

        else
        {
          if (v7 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v8 = *(a4 + 8 * v7 + 32);
          swift_unknownObjectRetain();
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_12;
          }
        }

        v12 = v8;
        a2(&v13, &v12);
        a1 = swift_unknownObjectRelease();
        if (v4)
        {
          goto LABEL_13;
        }

        ++v7;
      }

      while (v9 != v6);
    }
  }
}

void sub_218D24CD4(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = 0;
  v12 = a1;
  v10 = *(a4 + 16);
  while (v10 != v9)
  {
    v11 = *((a5)(0, a2, a3) - 8);
    a2(&v12, a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++);
    if (v5)
    {

      return;
    }
  }
}

void sub_218D24DC8(id a1, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = a1;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x21CECE0F0](j, a4, a3);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        a1 = *(a4 + 8 * j + 32);
      }

      v8 = a1;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = a1;
      a2(&v13, &v12);

      if (v4)
      {

        return;
      }

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = a1;
    i = sub_219BF7214();
  }
}

void sub_218D24F48(uint64_t a1, void (*a2)(uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v13 = a1;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 56); ; i += 32)
    {
      v8 = *i;
      v10 = *(i - 2);
      v9 = *(i - 1);
      v11[0] = *(i - 3);
      v11[1] = v10;
      v11[2] = v9;
      v12 = v8;

      (a2)(&v13, v11);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return;
      }
    }
  }
}

void sub_218D25000(uint64_t a1, void (*a2)(uint64_t *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v19 = a1;
  v6 = a4 + 64;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v12 << 6);
      v14 = (*(a4 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(a4 + 56) + 8 * v13);
      v18[0] = *v14;
      v18[1] = v15;
      v18[2] = v16;

      (a2)(&v19, v18);
      if (v4)
      {
        break;
      }

      v9 &= v9 - 1;

      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {

        return;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_218D25168(uint64_t a1)
{
  v1 = sub_219BDF0D4();
  v3 = v2;
  if (v1 == sub_219BDF0D4() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_219BF78F4();
  }

  return v5 & 1;
}

uint64_t sub_218D251F4()
{
  sub_219BF7AA4();
  sub_219BDF0D4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_218D25250(uint64_t a1)
{
  sub_219BDF0D4();
  sub_219BF5524();

  return result;
}

uint64_t sub_218D252A0(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BDF0D4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_218D252F8(uint64_t a1)
{
  v3 = sub_219BE16D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_219BE16A4();
  v8 = v7;
  swift_beginAccess();
  if (*(v1[15] + 16))
  {
    sub_21870F700(v6, v8);
    v10 = v9;

    if (v10)
    {
      swift_endAccess();

      return;
    }
  }

  else
  {
  }

  swift_endAccess();
  v11 = sub_219BE1684();
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);
  __swift_project_boxed_opaque_existential_1(v1 + 3, v1[6]);
  v14 = sub_219BE0BE4();
  v16 = ceil(v15 * v13);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v16 < 9.22337204e18)
  {
    v17 = v16;
    MEMORY[0x28223BE20](v14);
    *(&v26 - 4) = v1;
    *(&v26 - 3) = v17;
    *(&v26 - 2) = v12;
    sub_218D28D04(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
    sub_219BE3204();
    (*(v4 + 16))(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v18 = (*(v4 + 80) + 40) & ~*(v4 + 80);
    v19 = swift_allocObject();
    *(v19 + 2) = v17;
    *(v19 + 3) = v1;
    *(v19 + 4) = v12;
    (*(v4 + 32))(&v19[v18], &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

    v20 = sub_219BE2E54();
    type metadata accessor for SportsHeadlineExposureTracker.FuzzedGroup(0);
    v21 = sub_219BE2F74();

    v22 = sub_219BE16A4();
    v24 = v23;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v1[15];
    v1[15] = 0x8000000000000000;
    sub_21948C7B0(v21, v22, v24, isUniquelyReferenced_nonNull_native);

    v1[15] = v26;
    swift_endAccess();
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_218D25690(uint64_t a1, uint64_t a2)
{
  sub_218D28D04(0, &unk_27CC11580, type metadata accessor for SportsHeadlineExposureTracker.GroupSession, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for SportsHeadlineExposureTracker.GroupSession(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  swift_beginAccess();
  sub_2195EA288(a1, a2, v7);
  swift_endAccess();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_218D29FE0(v7, &unk_27CC11580, type metadata accessor for SportsHeadlineExposureTracker.GroupSession);
  }

  v16 = sub_218D2A1B8(v7, v14, type metadata accessor for SportsHeadlineExposureTracker.GroupSession);
  MEMORY[0x28223BE20](v16);
  *(&v20 - 2) = v14;
  type metadata accessor for SportsHeadlineExposureTracker.FuzzedGroup(0);
  sub_219BE3204();
  sub_218D2A150(v14, v11, type metadata accessor for SportsHeadlineExposureTracker.GroupSession);
  v17 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  sub_218D2A1B8(v11, v18 + v17, type metadata accessor for SportsHeadlineExposureTracker.GroupSession);

  v19 = sub_219BE2E54();
  sub_219BE2F74();

  return sub_218D2A434(v14, type metadata accessor for SportsHeadlineExposureTracker.GroupSession);
}

uint64_t sub_218D259AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v97 = a5;
  v98 = a4;
  v79 = a3;
  v7 = MEMORY[0x277D83D88];
  sub_218D28D04(0, &qword_27CC11558, sub_218D28F80, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v81 = &v77 - v9;
  v10 = type metadata accessor for SportsHeadlineExposureTracker.Exposure(0);
  MEMORY[0x28223BE20](v10);
  v78 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v80 = &v77 - v13;
  sub_218D28D04(0, &unk_280EE8878, MEMORY[0x277D2D8B8], v7);
  MEMORY[0x28223BE20](v14 - 8);
  v82 = &v77 - v15;
  v85 = sub_219BDF104();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v83 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D28D04(0, &qword_27CC11570, MEMORY[0x277D2E9C0], v7);
  MEMORY[0x28223BE20](v17 - 8);
  v87 = &v77 - v18;
  v19 = sub_219BE09E4();
  v20 = *(v19 - 8);
  v88 = v19;
  v89 = v20;
  MEMORY[0x28223BE20](v19);
  v86 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D28D04(0, &qword_27CC11578, MEMORY[0x277D2D950], v7);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v77 - v23;
  v25 = sub_219BDF1A4();
  v91 = *(v25 - 8);
  v92 = v25;
  MEMORY[0x28223BE20](v25);
  v90 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D28D04(0, &unk_280EE88A0, MEMORY[0x277D2D8A8], v7);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v77 - v28;
  v30 = sub_219BDF0E4();
  v94 = *(v30 - 8);
  v95 = v30;
  MEMORY[0x28223BE20](v30);
  v93 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D28D04(0, &unk_280EE7FA0, MEMORY[0x277D2F590], v7);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v77 - v33;
  v35 = sub_219BE16D4();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v96 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
  result = sub_219BE0BF4();
  if ((result & 1) == 0)
  {
    type metadata accessor for HeadlineExposureDataStack();
    *(swift_allocObject() + 16) = MEMORY[0x277D84F98];
    (v98)();
    sub_218D26910(0x74614470756F7247, 0xE900000000000061, MEMORY[0x277D2F590], v34);
    if ((*(v36 + 48))(v34, 1, v35) == 1)
    {

      v39 = &unk_280EE7FA0;
      v40 = MEMORY[0x277D2F590];
      v41 = v34;
    }

    else
    {
      v98 = v10;
      v42 = v96;
      (*(v36 + 32))(v96, v34, v35);
      sub_218D26910(0x44656C6369747241, 0xEB00000000617461, MEMORY[0x277D2D8A8], v29);
      v44 = v94;
      v43 = v95;
      if ((*(v94 + 48))(v29, 1, v95) == 1)
      {
        (*(v36 + 8))(v42, v35);

        v39 = &unk_280EE88A0;
        v40 = MEMORY[0x277D2D8A8];
        v41 = v29;
      }

      else
      {
        v97 = v36;
        v45 = v93;
        (*(v44 + 32))(v93, v29, v43);
        v46 = v44;
        sub_218D26910(0x4465636E65696353, 0xEB00000000617461, MEMORY[0x277D2D950], v24);
        v47 = v91;
        v48 = v43;
        v49 = v92;
        if ((*(v91 + 48))(v24, 1, v92) == 1)
        {

          (*(v46 + 8))(v45, v48);
          (*(v97 + 8))(v96, v35);
          v39 = &qword_27CC11578;
          v40 = MEMORY[0x277D2D950];
          v41 = v24;
        }

        else
        {
          v50 = v90;
          (*(v47 + 32))(v90, v24, v49);
          v51 = v87;
          sub_218D267DC(v87);
          v52 = v88;
          v53 = v89;
          if ((*(v89 + 48))(v51, 1, v88) == 1)
          {

            (*(v47 + 8))(v50, v49);
            (*(v94 + 8))(v93, v95);
            (*(v97 + 8))(v96, v35);
            v39 = &qword_27CC11570;
            v54 = MEMORY[0x277D2E9C0];
          }

          else
          {
            v55 = v86;
            (*(v53 + 32))(v86, v51, v52);
            v51 = v82;
            sub_218D26910(0x446C656E6E616843, 0xEB00000000617461, MEMORY[0x277D2D8B8], v82);
            v56 = v84;
            v57 = v85;
            if ((*(v84 + 48))(v51, 1, v85) != 1)
            {
              v87 = v35;
              v58 = v83;
              (*(v56 + 32))(v83, v51, v57);
              v59 = v53;
              v60 = v80;
              (*(v94 + 16))(v80, v93, v95);
              v61 = v98;
              (*(v91 + 16))(v60 + *(v98 + 20), v90, v92);
              (*(v56 + 16))(v60 + v61[6], v58, v57);
              (*(v59 + 16))(v60 + v61[8], v55, v52);
              *(v60 + v61[7]) = v79;
              swift_unknownObjectRetain();
              v62 = v56;
              v63 = sub_219BE16A4();
              v65 = v64;
              swift_beginAccess();
              v66 = sub_218D26AC8(v99, v63, v65);
              v68 = v67;
              v69 = type metadata accessor for SportsHeadlineExposureTracker.GroupSession(0);
              if ((*(*(v69 - 8) + 48))(v68, 1, v69))
              {
                (v66)(v99, 0);
                swift_endAccess();

                sub_218D2A434(v60, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
                (*(v62 + 8))(v83, v57);
                (*(v89 + 8))(v86, v52);
                (*(v91 + 8))(v90, v92);
                (*(v94 + 8))(v93, v95);
                (*(v97 + 8))(v96, v87);
                sub_218D28F80(0);
                v71 = v81;
                (*(*(v70 - 8) + 56))(v81, 1, 1, v70);
              }

              else
              {
                sub_218D28F80(0);
                v98 = v72;
                v73 = *(v72 + 48);
                v74 = v78;
                sub_218D2A150(v60, v78, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
                v75 = &v81[v73];
                v71 = v81;
                v76 = sub_219498EC8(v75, v74);
                (v66)(v99, 0);
                swift_endAccess();

                sub_218D2A434(v60, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
                (*(v62 + 8))(v83, v85);
                (*(v89 + 8))(v86, v52);
                (*(v91 + 8))(v90, v92);
                (*(v94 + 8))(v93, v95);
                (*(v97 + 8))(v96, v87);
                *v71 = v76 & 1;
                (*(*(v98 - 8) + 56))(v71, 0, 1, v98);
              }

              v39 = &qword_27CC11558;
              v40 = sub_218D28F80;
              v41 = v71;
              return sub_218D29FE0(v41, v39, v40);
            }

            (*(v53 + 8))(v55, v52);
            (*(v91 + 8))(v90, v92);
            (*(v94 + 8))(v93, v95);
            (*(v97 + 8))(v96, v35);
            v39 = &unk_280EE8878;
            v54 = MEMORY[0x277D2D8B8];
          }

          v40 = v54;
          v41 = v51;
        }
      }
    }

    return sub_218D29FE0(v41, v39, v40);
  }

  return result;
}

uint64_t sub_218D267DC@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_21870F700(0xD000000000000016, 0x8000000219CE8F40), (v5 & 1) != 0))
  {
    sub_218718690(*(v3 + 56) + 40 * v4, v9);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
  }

  swift_endAccess();
  sub_218D28D04(0, &qword_280EE8F48, sub_218D2A050, MEMORY[0x277D83D88]);
  v6 = sub_219BE09E4();
  v7 = swift_dynamicCast();
  return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
}

uint64_t sub_218D26910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v9 = *(v4 + 16);
  if (*(v9 + 16) && (v10 = sub_21870F700(a1, a2), (v11 & 1) != 0))
  {
    sub_218718690(*(v9 + 56) + 40 * v10, v15);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
  }

  swift_endAccess();
  sub_218D28D04(0, &qword_280EE8F48, sub_218D2A050, MEMORY[0x277D83D88]);
  v12 = a3(0);
  v13 = swift_dynamicCast();
  return (*(*(v12 - 8) + 56))(a4, v13 ^ 1u, 1, v12);
}

uint64_t (*sub_218D26A4C(uint64_t **a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_218D293E4(v4, a2);
  return sub_218D26AC4;
}

uint64_t (*sub_218D26AC8(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_218D2948C(v6, a2, a3);
  return sub_218D2A760;
}

uint64_t (*sub_218D26B50(uint64_t **a1, char a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_218D29538(v4, a2 & 1);
  return sub_218D2A760;
}

void sub_218D26BC8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_218D26C14(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v89 = a5;
  v87 = a4;
  v11 = MEMORY[0x277D83D88];
  sub_218D28D04(0, &unk_280EE87A0, MEMORY[0x277D2DAB8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v86[3] = v86 - v13;
  sub_218D28D04(0, &unk_280EE8380, MEMORY[0x277D2E6C8], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v86[2] = v86 - v15;
  v16 = sub_219BE16E4();
  MEMORY[0x28223BE20](v16 - 8);
  v88 = v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDF584();
  MEMORY[0x28223BE20](v18 - 8);
  v90 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_219BEFBD4();
  v20 = *(v101 - 1);
  MEMORY[0x28223BE20](v101);
  v100 = v86 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for SportsHeadlineExposureTracker.Exposure(0);
  v102 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v107 = v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v98 = v86 - v24;
  MEMORY[0x28223BE20](v25);
  v28 = v86 - v27;
  v29 = *a1;
  if (*a1 >> 62)
  {
    v30 = sub_219BF7214();
    if (v30 < a2)
    {
      goto LABEL_3;
    }

    v26 = sub_219BF7214();
    v30 = v26;
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30 < a2)
    {
LABEL_3:
      sub_218D2A698();
      swift_allocError();
      *v31 = a2;
      v31[1] = v30;
      swift_willThrow();
      return;
    }
  }

  v86[0] = a6;
  v86[1] = v6;
  if (v30)
  {
    v32 = v30;
    v33 = 0;
    v103 = v29 & 0xFFFFFFFFFFFFFF8;
    v104 = v29 & 0xC000000000000001;
    v95 = *MEMORY[0x277D329E0];
    v93 = (v20 + 8);
    v94 = (v20 + 104);
    v34 = MEMORY[0x277D84F90];
    v91 = v28;
    v92 = a3;
    v96 = v30;
    v97 = v29;
    while (1)
    {
      if (v104)
      {
        v35 = MEMORY[0x21CECE0F0](v33, v29);
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_55;
        }
      }

      else
      {
        if (v33 >= *(v103 + 16))
        {
          goto LABEL_56;
        }

        v35 = *(v29 + 8 * v33 + 32);
        swift_unknownObjectRetain();
        v36 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
          return;
        }
      }

      swift_getObjectType();
      if ([v35 sourceChannel])
      {
        v105 = v36;
        v37 = v98;
        sub_219BF67F4();
        v39 = v100;
        v38 = v101;
        (*v94)(v100, v95, v101);
        v106 = v34;
        v40 = v99;
        sub_219BE02C4();
        v41 = v39;
        v42 = v91;
        (*v93)(v41, v38);
        sub_219BE01F4();
        sub_219BE01E4();
        swift_unknownObjectRelease();
        v43 = *(v40 + 28);
        v34 = v106;
        *(v37 + v43) = v35;
        sub_218D2A1B8(v37, v42, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_2191F892C(0, v34[2] + 1, 1, v34);
        }

        v45 = v34[2];
        v44 = v34[3];
        v32 = v96;
        v29 = v97;
        v36 = v105;
        if (v45 >= v44 >> 1)
        {
          v34 = sub_2191F892C((v44 > 1), v45 + 1, 1, v34);
        }

        v34[2] = v45 + 1;
        v26 = sub_218D2A1B8(v42, v34 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v45, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
      }

      else
      {
        v26 = swift_unknownObjectRelease();
      }

      ++v33;
      if (v36 == v32)
      {
        goto LABEL_23;
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_23:
  v108 = v34;
  MEMORY[0x28223BE20](v26);
  v46 = v87;
  sub_218D28D04(0, &unk_27CC11540, type metadata accessor for SportsHeadlineExposureTracker.Exposure, MEMORY[0x277D83940]);
  sub_218D2A610();
  v47 = sub_219BF56F4();

  v48 = MEMORY[0x277D84F90];
  v104 = *(v46 + 16);
  v99 = v47;
  if (v104)
  {
    v49 = 0;
    v103 = v46 + 32;
    v50 = MEMORY[0x277D84F90];
    while (1)
    {
      v51 = (v103 + 16 * v49);
      v53 = *v51;
      v52 = v51[1];
      v105 = v49;
      v106 = v52;
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_218840D24(0, *(v50 + 2) + 1, 1, v50);
      }

      v55 = *(v50 + 2);
      v54 = *(v50 + 3);
      if (v55 >= v54 >> 1)
      {
        v50 = sub_218840D24((v54 > 1), v55 + 1, 1, v50);
      }

      *(v50 + 2) = v55 + 1;
      v56 = &v50[16 * v55];
      v57 = v106;
      *(v56 + 4) = v53;
      *(v56 + 5) = v57;
      if (*(v47 + 16))
      {
        v58 = sub_21870F700(v53, v57);
        if (v59)
        {
          v101 = v50;
          v60 = *(*(v47 + 56) + 8 * v58);
          v61 = *(v60 + 2);
          if (v61)
          {
            v108 = v48;

            sub_21870B65C(0, v61, 0);
            v48 = v108;
            v62 = *(v102 + 80);
            v100 = v60;
            v63 = &v60[(v62 + 32) & ~v62];
            v64 = *(v102 + 72);
            do
            {
              v65 = v107;
              sub_218D2A150(v63, v107, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
              v66 = sub_219BDF0D4();
              v68 = v67;
              sub_218D2A434(v65, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
              v108 = v48;
              v70 = v48[2];
              v69 = v48[3];
              if (v70 >= v69 >> 1)
              {
                sub_21870B65C((v69 > 1), v70 + 1, 1);
                v48 = v108;
              }

              v48[2] = v70 + 1;
              v71 = &v48[2 * v70];
              v71[4] = v66;
              v71[5] = v68;
              v63 += v64;
              --v61;
            }

            while (v61);

            v47 = v99;
          }

          v72 = v48[2];
          v50 = v101;
          v73 = *(v101 + 2);
          v74 = v73 + v72;
          if (__OFADD__(v73, v72))
          {
            goto LABEL_57;
          }

          v75 = *(v101 + 3) >> 1;
          if (v75 < v74)
          {
            if (v73 <= v74)
            {
              v79 = v73 + v72;
            }

            else
            {
              v79 = *(v101 + 2);
            }

            v50 = sub_218840D24(1, v79, 1, v101);
            v73 = *(v50 + 2);
            v75 = *(v50 + 3) >> 1;
            if (!v48[2])
            {
LABEL_25:

              v48 = MEMORY[0x277D84F90];
              if (v72)
              {
                goto LABEL_58;
              }

              goto LABEL_26;
            }
          }

          else if (!v72)
          {
            goto LABEL_25;
          }

          if ((v75 - v73) < v72)
          {
            goto LABEL_59;
          }

          swift_arrayInitWithCopy();

          if (v72)
          {
            v76 = *(v50 + 2);
            v77 = __OFADD__(v76, v72);
            v78 = v76 + v72;
            v48 = MEMORY[0x277D84F90];
            if (v77)
            {
              goto LABEL_60;
            }

            *(v50 + 2) = v78;
          }

          else
          {
            v48 = MEMORY[0x277D84F90];
          }
        }
      }

LABEL_26:
      v49 = v105 + 1;

      if (v49 == v104)
      {
        goto LABEL_53;
      }
    }
  }

  v50 = MEMORY[0x277D84F90];
LABEL_53:
  sub_219BE15F4();
  sub_219BE16B4();
  v80 = sub_219BE16A4();
  v82 = *(v50 + 2);
  if (v82 >> 31)
  {
    goto LABEL_61;
  }

  v104 = v80;
  v106 = v81;
  v107 = v82;
  LODWORD(v105) = sub_219BE1604();
  v103 = sub_219BE1654();
  v102 = sub_219BE1614();
  v100 = sub_219BE1664();
  v83 = sub_219BE1624();
  v97 = v84;
  v98 = v83;
  v96 = sub_219BE16C4();
  sub_219BE1644();
  sub_219BE1674();
  sub_219BE1694();
  sub_219BE1634();
  v101 = v50;
  sub_219BE15C4();
  v85 = v86[0];
  sub_219BE15E4();
  *(v85 + *(type metadata accessor for SportsHeadlineExposureTracker.FuzzedGroup(0) + 20)) = v99;
}

void sub_218D276DC(uint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_7;
  }

  v5 = sub_218A5DCD4(*(a1 + 16));
  if (v5 >= v2)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v6 = a1 + 16 * v5;
  v7 = *(v6 + 40);
  *a2 = *(v6 + 32);
  a2[1] = v7;
}

uint64_t sub_218D27744(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v47 = a1;
  v2 = sub_219BE16D4();
  v54 = *(v2 - 8);
  v55 = v2;
  v56 = *(v54 + 64);
  MEMORY[0x28223BE20](v2);
  v62 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SportsHeadlineExposureTracker.FuzzedGroup(0);
  v52 = *(v4 - 8);
  v51 = *(v52 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v59 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SportsHeadlineExposureTracker.GroupSession(0);
  v7 = v6 - 8;
  v49 = *(v6 - 8);
  v48 = *(v49 + 64);
  MEMORY[0x28223BE20](v6);
  v58 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_219BDFCE4();
  v45 = *(v61 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v57 = &v42 - v11;
  v12 = sub_219BDBD34();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = sub_219BDD2D4();
  v42 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v42 - v22;
  v24 = *(v7 + 28);
  v25 = v47;
  (*(v13 + 16))(v16, v47 + v24, v12, v21);
  sub_219BDBCB4();
  v26 = v23;
  v44 = v23;
  sub_219BDD2B4();
  v27 = v57;
  sub_219BDFCD4();
  v50 = *(v50 + 16);
  sub_218D2A150(v25, v58, type metadata accessor for SportsHeadlineExposureTracker.GroupSession);
  v28 = v53;
  sub_218D2A150(v53, v59, type metadata accessor for SportsHeadlineExposureTracker.FuzzedGroup);
  (*(v18 + 16))(&v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v17);
  v29 = v45;
  (*(v45 + 16))(v60, v27, v61);
  v30 = v54;
  v31 = v55;
  (*(v54 + 16))(v62, v28, v55);
  v32 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v33 = (v48 + *(v52 + 80) + v32) & ~*(v52 + 80);
  v34 = (v51 + *(v18 + 80) + v33) & ~*(v18 + 80);
  v35 = (v19 + *(v29 + 80) + v34) & ~*(v29 + 80);
  v36 = (v46 + *(v30 + 80) + v35) & ~*(v30 + 80);
  v37 = swift_allocObject();
  sub_218D2A1B8(v58, v37 + v32, type metadata accessor for SportsHeadlineExposureTracker.GroupSession);
  sub_218D2A1B8(v59, v37 + v33, type metadata accessor for SportsHeadlineExposureTracker.FuzzedGroup);
  v38 = v37 + v34;
  v39 = v42;
  (*(v18 + 32))(v38, v43, v42);
  v40 = v61;
  (*(v29 + 32))(v37 + v35, v60, v61);
  (*(v30 + 32))(v37 + v36, v62, v31);
  sub_219BDD154();

  (*(v29 + 8))(v57, v40);
  return (*(v18 + 8))(v44, v39);
}

double sub_218D27D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for SportsHeadlineExposureTracker.Exposure(0);
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v69 = v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + *(type metadata accessor for SportsHeadlineExposureTracker.GroupSession(0) + 24));
  v16 = sub_218D24554(v15);
  v58 = sub_218845F78(v16);

  v73 = a3;
  sub_218D24964(MEMORY[0x277D84F90], sub_218D2A418, v72, v15);
  v74[0] = v17;
  sub_218D29190();
  v18 = v74[0];
  v19 = *(v74[0] + 16);
  if (v19)
  {
    v20 = v12[6];
    v57 = v69 + v12[5];
    v56 = v69 + v20;
    v55 = v69 + v12[8];
    v54 = sub_219BE0834();
    v53 = v12[7];
    v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v51[1] = v18;
    v22 = v18 + v21;
    v63 = "inserted memberAfterInsert ";
    v52 = *(v13 + 72);
    v68 = *MEMORY[0x277CEAD18];
    v71 = xmmword_219C09BA0;
    v51[4] = a6;
    v51[3] = a5;
    v51[2] = a4;
    v70 = a1;
    do
    {
      v67 = v22;
      v62 = v19;
      sub_218D2A150(v22, v69, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
      sub_218D28D04(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v24 = v23;
      v25 = sub_219BDCD44();
      v26 = *(*(v25 - 8) + 72);
      v27 = *(v25 - 8);
      v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v29 = *(v27 + 80);
      v30 = swift_allocObject();
      *(v30 + 16) = v71;
      v64 = *(v27 + 104);
      v31 = v68;
      v64(v30 + v28, v68, v25);
      v61 = v27 + 104;
      sub_219BDD2D4();
      sub_218D2A6FC(&unk_280EE8ED0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEC8]);
      sub_219BDCCC4();

      v60 = v26;
      v32 = swift_allocObject();
      *(v32 + 16) = v71;
      v33 = v31;
      v65 = v25;
      v34 = v64;
      v64(v32 + v28, v33, v25);
      sub_219BDFCE4();
      sub_218D2A6FC(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
      sub_219BDCCC4();

      v59 = v29;
      v66 = v24;
      v35 = swift_allocObject();
      *(v35 + 16) = v71;
      v36 = v68;
      v34(v35 + v28, v68, v25);
      sub_219BE16D4();
      sub_218D2A6FC(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
      sub_219BDCCC4();

      v37 = swift_allocObject();
      *(v37 + 16) = v71;
      v38 = v65;
      v34(v37 + v28, v36, v65);
      sub_219BDF0E4();
      sub_218D2A6FC(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
      sub_219BDCCC4();

      v39 = swift_allocObject();
      *(v39 + 16) = v71;
      v40 = v68;
      v41 = v38;
      v42 = v64;
      v64(v39 + v28, v68, v41);
      sub_219BDF1A4();
      sub_218D2A6FC(&unk_280EE8850, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
      sub_219BDCCC4();

      v43 = swift_allocObject();
      *(v43 + 16) = v71;
      v44 = v65;
      v42(v43 + v28, v40, v65);
      sub_219BDF104();
      sub_218D2A6FC(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
      sub_219BDCCC4();

      v45 = swift_allocObject();
      *(v45 + 16) = v71;
      v42(v45 + v28, v40, v44);
      sub_219BE09E4();
      sub_218D2A6FC(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
      sub_219BDCCC4();

      v46 = v69;
      v47 = sub_219BDF0D4();
      sub_2188537B8(v47, v48, v58);

      swift_unknownObjectRetain();
      sub_218D2A434(v46, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
      v74[3] = sub_219BDF4D4();
      __swift_allocate_boxed_opaque_existential_1(v74);
      sub_219BDF4C4();
      sub_218D2A6FC(&qword_280EE82C0, MEMORY[0x277D2E858], MEMORY[0x277D2E840]);
      sub_219BDCCE4();
      v49 = v62;
      sub_218D2A434(v74, sub_21880702C);
      v22 = v67 + v52;
      v19 = v49 - 1;
    }

    while (v19);
  }

  return result;
}

double sub_218D2867C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SportsHeadlineExposureTracker.Exposure(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D2A150(a2, v9, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_2191F892C(0, v10[2] + 1, 1, v10);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_2191F892C((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  sub_218D2A1B8(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
  *a1 = v10;
  v13 = *(a3 + *(type metadata accessor for SportsHeadlineExposureTracker.FuzzedGroup(0) + 20));
  v14 = sub_219BDF0D4();
  if (*(v13 + 16))
  {
    sub_21870F700(v14, v15);
    v17 = v16;

    if (v17)
    {

      sub_2191EE430(v19);
    }
  }

  else
  {
  }

  return result;
}

void *sub_218D28858()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 80));

  return v0;
}

uint64_t sub_218D288B0()
{
  sub_218D28858();

  return swift_deallocClassInstance();
}

void sub_218D2892C(uint64_t a1)
{
  sub_218D28D04(319, &qword_27CC114F0, type metadata accessor for SportsHeadlineExposureTracker.FuzzedGroup, MEMORY[0x277D6CF30]);
  if (v1 <= 0x3F)
  {
    sub_219BDBD34();
    if (v2 <= 0x3F)
    {
      sub_218D28A18(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_218D28A18(uint64_t a1)
{
  if (!qword_27CC114F8)
  {
    type metadata accessor for SportsHeadlineExposureTracker.Exposure(255);
    sub_218D2A6FC(&unk_27CC11500, type metadata accessor for SportsHeadlineExposureTracker.Exposure, &unk_219C32330);
    v1 = sub_219BF5DA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC114F8);
    }
  }
}

unint64_t sub_218D28AF4(uint64_t a1)
{
  result = sub_219BDF0E4();
  if (v2 <= 0x3F)
  {
    result = sub_219BDF1A4();
    if (v3 <= 0x3F)
    {
      result = sub_219BDF104();
      if (v4 <= 0x3F)
      {
        result = sub_218731D50();
        if (v5 <= 0x3F)
        {
          result = sub_219BE09E4();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_218D28BE8(uint64_t a1)
{
  sub_219BE16D4();
  if (v1 <= 0x3F)
  {
    sub_218D28C6C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_218D28C6C(uint64_t a1)
{
  if (!qword_27CC11538)
  {
    sub_218D28D04(255, &unk_27CC11540, type metadata accessor for SportsHeadlineExposureTracker.Exposure, MEMORY[0x277D83940]);
    v1 = sub_219BF52A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11538);
    }
  }
}

void sub_218D28D04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218D28DB0(uint64_t a1)
{
  sub_218D28D04(0, &unk_27CC11580, type metadata accessor for SportsHeadlineExposureTracker.GroupSession, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v11 - v3);
  v5 = sub_219BE16A4();
  v7 = v6;
  sub_218D252F8(a1);
  *v4 = v8;
  v9 = type metadata accessor for SportsHeadlineExposureTracker.GroupSession(0);
  sub_219BDBCB4();
  *(v4 + *(v9 + 24)) = MEMORY[0x277D84FA0];
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  swift_beginAccess();
  sub_2199D5A60(v4, v5, v7);
  return swift_endAccess();
}

double sub_218D28F0C(uint64_t a1)
{
  v1 = sub_219BE16A4();
  sub_218D25690(v1, v2);

  return result;
}

void sub_218D28F80(uint64_t a1)
{
  if (!qword_27CC11560)
  {
    type metadata accessor for SportsHeadlineExposureTracker.Exposure(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC11560);
    }
  }
}

void sub_218D28FEC()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v20 = 0;
      MEMORY[0x21CECF980](&v20, 8);
      v5 = (v20 * v1) >> 64;
      if (v1 > v20 * v1)
      {
        v6 = -v1 % v1;
        if (v6 > v20 * v1)
        {
          do
          {
            v20 = 0;
            MEMORY[0x21CECF980](&v20, 8);
          }

          while (v6 > v20 * v1);
          v5 = (v20 * v1) >> 64;
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_21;
        }

        if (v7 >= v9)
        {
          goto LABEL_22;
        }

        v10 = *(v8 + 32 + 8 * v7);
        v11 = *(v8 + 32 + 8 * v3);
        v12 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_218C82C04(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        v14 = v8 + 8 * v3;
        v15 = *(v14 + 32);
        *(v14 + 32) = v12;

        sub_219BF73E4();
        v16 = *v0;
        v17 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v16;
        if ((v17 & 1) == 0)
        {
          v16 = sub_218C82C04(v16);
          *v0 = v16;
        }

        if (v7 >= *(v16 + 16))
        {
          goto LABEL_24;
        }

        v18 = v16 + 8 * v7;
        v19 = *(v18 + 32);
        *(v18 + 32) = v11;

        sub_219BF73E4();
      }

      --v1;
      if (v3++ == v2)
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

void sub_218D29190()
{
  v1 = type metadata accessor for SportsHeadlineExposureTracker.Exposure(0);
  v21 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v4);
  v22 = &v18 - v6;
  v20 = v0;
  v7 = *v0;
  v8 = *(*v0 + 16);
  v9 = v8 - 2;
  if (v8 >= 2)
  {
    v10 = 0;
    v19 = v8 - 2;
    while (1)
    {
      v23 = 0;
      MEMORY[0x21CECF980](&v23, 8, v5);
      v12 = (v23 * v8) >> 64;
      if (v8 > v23 * v8)
      {
        v13 = -v8 % v8;
        if (v13 > v23 * v8)
        {
          do
          {
            v23 = 0;
            MEMORY[0x21CECF980](&v23, 8);
          }

          while (v13 > v23 * v8);
          v12 = (v23 * v8) >> 64;
        }
      }

      v14 = v10 + v12;
      if (__OFADD__(v10, v12))
      {
        break;
      }

      if (v10 != v14)
      {
        v15 = v7[2];
        if (v10 >= v15)
        {
          goto LABEL_19;
        }

        v16 = (*(v21 + 80) + 32) & ~*(v21 + 80);
        v17 = *(v21 + 72);
        sub_218D2A150(v7 + v16 + v17 * v10, v22, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
        if (v14 >= v15)
        {
          goto LABEL_20;
        }

        sub_218D2A150(v7 + v16 + v17 * v14, v3, type metadata accessor for SportsHeadlineExposureTracker.Exposure);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_218C811D4(v7);
        }

        if (v10 >= v7[2])
        {
          goto LABEL_21;
        }

        sub_218D2A494(v3, v7 + v16 + v17 * v10);
        if (v14 >= v7[2])
        {
          goto LABEL_22;
        }

        sub_218D2A494(v22, v7 + v16 + v17 * v14);
        v9 = v19;
        *v20 = v7;
      }

      --v8;
      if (v10++ == v9)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t (*sub_218D293E4(uint64_t *a1, void *a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_218D29EF0(v5);
  v5[9] = sub_218D2963C(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_218D29488;
}

uint64_t (*sub_218D2948C(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_218D29F24(v7);
  v7[9] = sub_218D29838(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_218D2A764;
}

uint64_t (*sub_218D29538(uint64_t *a1, char a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_218D29F24(v5);
  v5[9] = sub_218D29D88((v5 + 4), a2 & 1, isUniquelyReferenced_nonNull_native);
  return sub_218D2A764;
}

void sub_218D295DC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_218D2963C(uint64_t *a1, void *a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_21931ED80(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_219491788();
      v11 = v19;
      goto LABEL_11;
    }

    sub_219480124(v16, a3 & 1);
    v11 = sub_21931ED80(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for SportsDateHeader();
    result = sub_219BF79A4();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_218D29784;
}

void sub_218D29784(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_21948F64C(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];

    sub_21948948C(v6, v7);
  }

  free(v1);
}

void (*sub_218D29838(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x68uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[1] = a3;
  v10[2] = v5;
  *v10 = a2;
  v12 = type metadata accessor for SportsHeadlineExposureTracker.GroupSession(0);
  v11[3] = v12;
  v13 = *(v12 - 8);
  v14 = v13;
  v11[4] = v13;
  v15 = *(v13 + 64);
  if (v9)
  {
    v11[5] = swift_coroFrameAlloc();
    v11[6] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v11[5] = malloc(*(v13 + 64));
    v11[6] = malloc(v15);
    v16 = malloc(v15);
  }

  v11[7] = v16;
  sub_218D28D04(0, &unk_27CC11580, type metadata accessor for SportsHeadlineExposureTracker.GroupSession, MEMORY[0x277D83D88]);
  v18 = *(*(v17 - 8) + 64);
  if (v9)
  {
    v11[8] = swift_coroFrameAlloc();
    v11[9] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v11[8] = malloc(v18);
    v11[9] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v11[10] = v19;
  v21 = *v5;
  v23 = sub_21870F700(a2, a3);
  *(v11 + 96) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
  }

  else
  {
    v27 = v22;
    v28 = *(v21 + 24);
    if (v28 >= v26 && (a4 & 1) != 0)
    {
LABEL_16:
      v11[11] = v23;
      if (v27)
      {
LABEL_17:
        sub_218D2A1B8(*(*v5 + 56) + *(v14 + 72) * v23, v20, type metadata accessor for SportsHeadlineExposureTracker.GroupSession);
        v29 = 0;
LABEL_21:
        (*(v14 + 56))(v20, v29, 1, v12);
        return sub_218D29B38;
      }

LABEL_20:
      v29 = 1;
      goto LABEL_21;
    }

    if (v28 >= v26 && (a4 & 1) == 0)
    {
      sub_219491E88();
      goto LABEL_16;
    }

    sub_219480C98(v26, a4 & 1);
    v30 = sub_21870F700(a2, a3);
    if ((v27 & 1) == (v31 & 1))
    {
      v23 = v30;
      v11[11] = v30;
      if (v27)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }
  }

  result = sub_219BF79A4();
  __break(1u);
  return result;
}

void sub_218D29B38(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = (*(*a1 + 32) + 48);
  v5 = *(*a1 + 80);
  if (a2)
  {
    v6 = *(v2 + 8);
    sub_218D29F4C(v5, v6);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 8);
    if (v7 != 1)
    {
      v10 = *(v2 + 2);
      sub_218D2A1B8(v9, *(v2 + 6), type metadata accessor for SportsHeadlineExposureTracker.GroupSession);
      v11 = *v10;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        sub_218D2A1B8(v13, v14, type metadata accessor for SportsHeadlineExposureTracker.GroupSession);
        sub_21948F690(v12, v16, v15, v14, v11);

        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_218D29F4C(v5, v17);
    v18 = (*v4)(v17, 1, v3);
    v8 = *(v2 + 96);
    v9 = *(v2 + 9);
    if (v18 != 1)
    {
      v21 = *(v2 + 2);
      sub_218D2A1B8(v9, *(v2 + 7), type metadata accessor for SportsHeadlineExposureTracker.GroupSession);
      v11 = *v21;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_218D2A1B8(v13, v11[7] + *(*(v2 + 4) + 72) * v12, type metadata accessor for SportsHeadlineExposureTracker.GroupSession);
      goto LABEL_10;
    }
  }

  sub_218D29FE0(v9, &unk_27CC11580, type metadata accessor for SportsHeadlineExposureTracker.GroupSession);
  if (v8)
  {
    v19 = *(v2 + 11);
    v20 = **(v2 + 2);
    sub_2189AD3D8(*(v20 + 48) + 16 * v19);
    sub_219489690(v19, v20);
  }

LABEL_10:
  v22 = *(v2 + 9);
  v23 = *(v2 + 10);
  v25 = *(v2 + 7);
  v24 = *(v2 + 8);
  v27 = *(v2 + 5);
  v26 = *(v2 + 6);
  sub_218D29FE0(v23, &unk_27CC11580, type metadata accessor for SportsHeadlineExposureTracker.GroupSession);
  free(v23);
  free(v22);
  free(v24);
  free(v25);
  free(v26);
  free(v27);

  free(v2);
}

unint64_t (*sub_218D29D88(uint64_t a1, char a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v7 = *v3;
  v8 = sub_219320C08();
  *(a1 + 25) = v9 & 1;
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_219497348();
      v8 = v16;
      goto LABEL_8;
    }

    sub_219488998(v13, a3 & 1);
    v8 = sub_219320C08();
    if ((v14 & 1) == (v17 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_219BF79A4();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v8;
  if (v14)
  {
    v18 = *(*(*v4 + 56) + 8 * v8);
  }

  else
  {
    v18 = 0;
  }

  *a1 = v18;
  return sub_218D29EA4;
}

unint64_t sub_218D29EA4(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_21948FCFC(*(result + 16), *(result + 24) & 1, v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_21948B3C8(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_218D29EF0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_218D29F18;
}

uint64_t (*sub_218D29F24(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_218D2A744;
}

uint64_t sub_218D29F4C(uint64_t a1, uint64_t a2)
{
  sub_218D28D04(0, &unk_27CC11580, type metadata accessor for SportsHeadlineExposureTracker.GroupSession, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D29FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218D28D04(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_218D2A050()
{
  result = qword_280EE8F50;
  if (!qword_280EE8F50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE8F50);
  }

  return result;
}

uint64_t sub_218D2A150(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D2A1B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_218D2A220(uint64_t a1)
{
  v3 = *(type metadata accessor for SportsHeadlineExposureTracker.GroupSession(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SportsHeadlineExposureTracker.FuzzedGroup(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_219BDD2D4() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_219BDFCE4() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(sub_219BE16D4() - 8);
  v16 = v1 + ((v13 + v14 + *(v15 + 80)) & ~*(v15 + 80));

  return sub_218D27D60(a1, v1 + v4, v1 + v7, v1 + v10, v1 + v13, v16);
}

uint64_t sub_218D2A434(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D2A494(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsHeadlineExposureTracker.Exposure(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D2A4F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1((v1 + 80), *(v1 + 104));
  v4 = off_282A66890[0];
  type metadata accessor for HeadlineNoiseGenerator();
  return v4(v2, v3);
}

unint64_t sub_218D2A610()
{
  result = qword_27CC11590;
  if (!qword_27CC11590)
  {
    sub_218D28D04(255, &unk_27CC11540, type metadata accessor for SportsHeadlineExposureTracker.Exposure, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11590);
  }

  return result;
}

unint64_t sub_218D2A698()
{
  result = qword_27CC11598;
  if (!qword_27CC11598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11598);
  }

  return result;
}

uint64_t sub_218D2A6FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218D2A768(uint64_t a1, uint64_t a2)
{
  sub_21879A328();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_218D2A7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21879A328();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for SearchLayoutModel(uint64_t a1)
{
  result = qword_280ED5410;
  if (!qword_280ED5410)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_218D2A89C()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14F34(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_218D2AA00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14F34(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_218D2AAEC(uint64_t a1)
{
  v2 = sub_218D2B158(&qword_280ED5448, &unk_219C3241C);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_218D2AB90(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14F34(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_218D2AD24(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14F34(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_218D2AEA0(uint64_t a1)
{
  v2 = sub_219BEF974();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14F34(v1, v8);
  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_219BEF924();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_218D2B014(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B14F34(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_218D2B158(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_218D2B19C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  swift_unknownObjectRetain();
  sub_218DB1F7C(v2, v3);
  swift_unknownObjectRelease();
  sub_218774F78(v2 + 16);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_218D2E754(v2 + OBJC_IVAR____TtC7NewsUI230ChannelPickerDetailDataManager_model, type metadata accessor for ChannelPickerElementModel);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChannelPickerDetailDataManager(uint64_t a1)
{
  result = qword_27CC115A8;
  if (!qword_27CC115A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_218D2B2A8(uint64_t a1)
{
  result = type metadata accessor for ChannelPickerElementModel(319);
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

uint64_t sub_218D2B350(uint64_t a1)
{
  v2 = type metadata accessor for ChannelPickerElementModel(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_218D2E69C(a1 + OBJC_IVAR____TtC7NewsUI230ChannelPickerDetailDataManager_model, v4, type metadata accessor for ChannelPickerElementModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = v4[9];
      v32[2] = v4[8];
      v32[3] = v7;
      v32[4] = v4[10];
      v8 = v4[5];
      v30 = v4[4];
      v31 = v8;
      v9 = v4[7];
      v32[0] = v4[6];
      v32[1] = v9;
      v10 = v4[1];
      v26 = *v4;
      v27 = v10;
      v11 = v4[3];
      v28 = v4[2];
      v29 = v11;
      v6 = sub_218D2B774(&v26);
      sub_218980B3C(&v26);
    }

    else
    {
      sub_218D2E754(v4, type metadata accessor for ChannelPickerElementModel);
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      *&v32[0] = MEMORY[0x277D84F90];
      sub_218D2E704(0, &qword_27CC115C0, &type metadata for ChannelPickerModel, MEMORY[0x277D6CF30]);
      *(v32 + 8) = 0u;
      *(&v32[1] + 8) = 0u;
      swift_allocObject();
      return sub_219BE3014();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v12 = v4[7];
    v32[0] = v4[6];
    v32[1] = v12;
    v32[2] = v4[8];
    *(&v32[2] + 9) = *(v4 + 137);
    v13 = v4[3];
    v28 = v4[2];
    v29 = v13;
    v14 = v4[5];
    v30 = v4[4];
    v31 = v14;
    v15 = v4[1];
    v26 = *v4;
    v27 = v15;
    if (*&v32[1])
    {
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      *&v25[-16] = a1;
      *&v25[-8] = v16;
      sub_218D2E704(0, &qword_27CC16920, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D83940]);
      sub_219BE3204();
      v17 = swift_allocObject();
      v18 = v32[1];
      v17[7] = v32[0];
      v17[8] = v18;
      v17[9] = v32[2];
      *(v17 + 153) = *(&v32[2] + 9);
      v19 = v29;
      v17[3] = v28;
      v17[4] = v19;
      v20 = v31;
      v17[5] = v30;
      v17[6] = v20;
      v21 = v27;
      v17[1] = v26;
      v17[2] = v21;
      sub_218D2E42C(&v26, v25);
      v22 = sub_219BE2E54();
      v6 = sub_219BE2F74();
      sub_218980B90(&v26);
    }

    else
    {
      sub_218D2E38C();
      swift_allocError();
      *v23 = 1;
      sub_218D2E704(0, &qword_27CC115C0, &type metadata for ChannelPickerModel, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v6 = sub_219BE2FF4();
      sub_218980B90(&v26);
    }
  }

  else
  {
    v26 = xmmword_219C325C0;
    v27 = xmmword_219C325C0;
    v28 = xmmword_219C325C0;
    v29 = xmmword_219C325C0;
    v30 = xmmword_219C325C0;
    v31 = xmmword_219C325C0;
    *&v32[0] = MEMORY[0x277D84F90];
    *(v32 + 8) = xmmword_219C325C0;
    *(&v32[1] + 8) = xmmword_219C325C0;
    sub_218D2E704(0, &qword_27CC115C0, &type metadata for ChannelPickerModel, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v6 = sub_219BE3014();
    sub_218D2E754(v4, type metadata accessor for ChannelPickerElementModel);
  }

  return v6;
}

uint64_t sub_218D2B774(uint64_t a1)
{
  sub_218D2E7B4(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);
  sub_219BE3204();
  sub_218BFB180(a1, &v19);
  v3 = swift_allocObject();
  v4 = v25;
  *(v3 + 136) = v26;
  v5 = v28;
  *(v3 + 152) = v27;
  *(v3 + 168) = v5;
  *(v3 + 184) = v29;
  v6 = v21;
  *(v3 + 72) = v22;
  v7 = v24;
  *(v3 + 88) = v23;
  *(v3 + 104) = v7;
  *(v3 + 120) = v4;
  v8 = v20;
  *(v3 + 24) = v19;
  *(v3 + 40) = v8;
  *(v3 + 16) = v1;
  *(v3 + 56) = v6;

  v9 = sub_219BE2E54();
  sub_219BE2F64();

  sub_218BFB180(a1, &v19);
  v10 = swift_allocObject();
  v11 = v28;
  v10[9] = v27;
  v10[10] = v11;
  v10[11] = v29;
  v12 = v24;
  v10[5] = v23;
  v10[6] = v12;
  v13 = v26;
  v10[7] = v25;
  v10[8] = v13;
  v14 = v20;
  v10[1] = v19;
  v10[2] = v14;
  v15 = v22;
  v10[3] = v21;
  v10[4] = v15;
  v16 = sub_219BE2E54();
  v17 = sub_219BE2F74();

  return v17;
}

uint64_t sub_218D2B964(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 112);
  v18 = *(a1 + 96);
  v19 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v14 = *(a1 + 32);
  v15 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v16 = *(a1 + 64);
  v17 = v6;
  v7 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v7;
  v8 = *(a1 + 112);
  v11[6] = v18;
  v11[7] = v8;
  v11[2] = v14;
  v11[3] = v5;
  v11[4] = v16;
  v11[5] = v1;
  v20 = *(a1 + 128);
  v12 = *(a1 + 128);
  v11[0] = v13[0];
  v11[1] = v3;
  sub_218D2E704(0, &qword_27CC115B8, &type metadata for ChannelPickerPrewarmResult, MEMORY[0x277D6CF30]);
  swift_allocObject();
  sub_218D2E330(v13, v10);
  return sub_219BE3014();
}

double sub_218D2BA40(uint64_t a1)
{
  if (qword_27CC08558 != -1)
  {
    swift_once();
  }

  v1 = qword_27CCD8A18;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("Channel Picker Data Manager failed prewarm, error=%{public}@", 60, 2, &dword_2186C1000, v1, v2, v3);

  return result;
}

uint64_t sub_218D2BB6C(__n128 *a1)
{
  v1 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v2 = a1[1].n128_i64[0];
  if (v2)
  {
    v3 = a1 + 2;
    for (i = v2 - 1; ; --i)
    {
      v5 = v3[7];
      v6 = v3[9];
      v30 = v3[8];
      v31 = v6;
      v7 = v3[9];
      v32 = v3[10];
      v8 = v3[3];
      v9 = v3[5];
      v26 = v3[4];
      v27 = v9;
      v10 = v3[5];
      v11 = v3[7];
      v28 = v3[6];
      v29 = v11;
      v12 = v3[1];
      v23[0] = *v3;
      v23[1] = v12;
      v13 = v3[3];
      v15 = *v3;
      v14 = v3[1];
      v24 = v3[2];
      v25 = v13;
      v22[8] = v30;
      v22[9] = v7;
      v22[10] = v3[10];
      v22[4] = v26;
      v22[5] = v10;
      v22[6] = v28;
      v22[7] = v5;
      v22[0] = v15;
      v22[1] = v14;
      v22[2] = v24;
      v22[3] = v8;
      sub_218D2E4D0(v23, &v21);
      sub_218D2BDF0(v22, v16);
      v17 = sub_218D2E52C(v23);
      MEMORY[0x21CECC690](v17);
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_219BF5A14();
      }

      sub_219BF5A54();
      if (!i)
      {
        break;
      }

      v3 += 11;
    }

    v1 = v33;
  }

  sub_218D2E704(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
  *&v23[0] = v1;
  v18 = sub_219BE2E54();
  sub_218D2E580(0);
  sub_218D2E818(&qword_27CC16940, sub_218D2E580, MEMORY[0x277D83988]);
  v19 = sub_219BE2F34();

  return v19;
}

void sub_218D2BD4C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 40);
  v5 = *(a2 + 80);
  v6 = *(a2 + 88);
  v7 = *(a2 + 96);
  v8 = *(a2 + 104);
  *a3 = *(a2 + 16);
  *(a3 + 8) = *(a2 + 24);
  *(a3 + 24) = v4;
  *(a3 + 32) = xmmword_219C325C0;
  *(a3 + 48) = xmmword_219C325C0;
  *(a3 + 64) = v5;
  *(a3 + 72) = v6;
  *(a3 + 80) = v7;
  *(a3 + 88) = v8;
  *(a3 + 96) = v3;
  *(a3 + 104) = xmmword_219C325C0;
  *(a3 + 120) = xmmword_219C325C0;

  sub_218D2E488(v5, v6);
}

void sub_218D2BDF0(__n128 *a1, __n128 a2)
{
  v4 = type metadata accessor for ChannelPickerEngagementModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ChannelPickerElementModel(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = (&v85 - v12);
  v14 = a1[9];
  v155 = a1[8];
  v156 = v14;
  v157 = a1[10];
  v15 = a1[5];
  v151 = a1[4];
  v152 = v15;
  v16 = a1[6];
  v154 = a1[7];
  v153 = v16;
  v17 = a1[1];
  v148 = *a1;
  v149 = v17;
  v19 = a1[2];
  v18 = a1[3];
  v150[1] = v18;
  v150[0] = v19;
  v20 = v18.n128_i64[1];
  if (!v18.n128_u64[1])
  {
    sub_218D2E38C();
    swift_allocError();
    *v28 = 0;
    sub_218D2E704(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_219BE2FF4();
    return;
  }

  v90 = v11;
  if (BYTE1(v150[0]) <= 1u)
  {
    if (BYTE1(v150[0]))
    {
      *&v158 = ChannelPickerElementModel.sectionId.getter(v18);
      *(&v158 + 1) = v75;
      MEMORY[0x21CECC330](47, 0xE100000000000000);
      if (*&v150[1])
      {
        v76 = *(&v150[0] + 1);
      }

      else
      {
        v76 = 0;
      }

      if (*&v150[1])
      {
        v77 = *&v150[1];
      }

      else
      {
        v77 = 0xE000000000000000;
      }

      MEMORY[0x21CECC330](v76, v77);

      v78 = v158;
      sub_218D2E5FC(&v139);
      v159 = v148;
      v160 = v149;
      v117 = v148;
      v118 = v149;
      v161 = v151.n128_u64[0];
      LOBYTE(v124[0]) = v152.n128_u8[0];
      *(&v116 + 7) = v152.n128_u64[1];
      HIBYTE(v116) = v153.n128_u8[0];
      LOBYTE(v108) = 0;
      *&v115[7] = v154;
      v125[32] = v155.n128_u8[8];
      v162 = v154;
      v163 = v156;
      *&v114[7] = v156;
      v95[0] = v157;
      *&v125[56] = v157;
      *(v134 + 9) = *(v147 + 9);
      v133 = v146;
      v134[0] = v147[0];
      v131 = v144;
      v132 = v145;
      v127 = v140;
      v126 = v139;
      v130 = v143;
      v129 = v142;
      v128 = v141;
      v120 = v148;
      v121 = v149;
      LOBYTE(v122[0]) = v150[0];
      BYTE1(v122[0]) = 1;
      *(v122 + 8) = v78;
      *(&v122[1] + 1) = MEMORY[0x277D84F90];
      v123 = v151;
      *(v124 + 1) = v116;
      *(&v124[1] + 1) = v153.n128_u64[1];
      v125[0] = 0;
      *&v125[24] = v155.n128_u64[0];
      *&v125[16] = v154.n128_u64[1];
      *&v125[1] = *v115;
      *&v125[33] = *v114;
      v33 = v156.n128_u64[1];
    }

    else
    {
      *&v158 = ChannelPickerElementModel.sectionId.getter(v18);
      *(&v158 + 1) = v29;
      MEMORY[0x21CECC330](47, 0xE100000000000000);
      if (*&v150[1])
      {
        v30 = *(&v150[0] + 1);
      }

      else
      {
        v30 = 0;
      }

      if (*&v150[1])
      {
        v31 = *&v150[1];
      }

      else
      {
        v31 = 0xE000000000000000;
      }

      MEMORY[0x21CECC330](v30, v31);

      v32 = v158;
      sub_218D2E5FC(&v139);
      v159 = v148;
      v160 = v149;
      v112 = v148;
      v113 = v149;
      v161 = v151.n128_u64[0];
      LOBYTE(v124[0]) = v152.n128_u8[0];
      *(&v111 + 7) = v152.n128_u64[1];
      HIBYTE(v111) = v153.n128_u8[0];
      LOBYTE(v108) = 0;
      *&v110[7] = v154;
      v125[32] = v155.n128_u8[8];
      v162 = v154;
      v163 = v156;
      *&v109[7] = v156;
      v95[0] = v157;
      *&v125[56] = v157;
      *(v134 + 9) = *(v147 + 9);
      v133 = v146;
      v134[0] = v147[0];
      v131 = v144;
      v132 = v145;
      v127 = v140;
      v126 = v139;
      v130 = v143;
      v129 = v142;
      v128 = v141;
      v120 = v148;
      v121 = v149;
      LOWORD(v122[0]) = LOBYTE(v150[0]);
      *(v122 + 8) = v32;
      *(&v122[1] + 1) = MEMORY[0x277D84F90];
      v123 = v151;
      *(v124 + 1) = v111;
      *(&v124[1] + 1) = v153.n128_u64[1];
      v125[0] = 0;
      *&v125[24] = v155.n128_u64[0];
      *&v125[16] = v154.n128_u64[1];
      *&v125[1] = *v110;
      *&v125[33] = *v109;
      v33 = v156.n128_u64[1];
    }

    goto LABEL_49;
  }

  if (BYTE1(v150[0]) != 2)
  {
    if (BYTE1(v150[0]) == 3)
    {
      MEMORY[0x28223BE20](v11);
      *(&v85 - 2) = v2;
      *(&v85 - 1) = v20;
      sub_218D2E7B4(0, &qword_280E8EFD0, type metadata accessor for TagModel, MEMORY[0x277D83940]);

      sub_219BE3204();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = v2;
      v22 = v156;
      *(v21 + 160) = v155;
      *(v21 + 176) = v22;
      *(v21 + 192) = v157;
      v23 = v152;
      *(v21 + 96) = v151;
      *(v21 + 112) = v23;
      v24 = v154;
      *(v21 + 128) = v153;
      *(v21 + 144) = v24;
      v25 = v149;
      *(v21 + 32) = v148;
      *(v21 + 48) = v25;
      v26 = v150[1];
      *(v21 + 64) = v150[0];
      *(v21 + 80) = v26;

      sub_218D2E4D0(&v148, &v120);
      v27 = sub_219BE2E54();
      sub_219BE2F64();

      return;
    }

    sub_218D2E5FC(&v139);
    v158 = *(v150 + 8);
    v159 = v148;
    v160 = v149;
    *&v138[11] = v148;
    *&v138[19] = v149;
    *&v138[3] = *(v150 + 8);
    v161 = v151.n128_u64[0];
    LOBYTE(v124[0]) = v152.n128_u8[0];
    HIBYTE(v137) = v153.n128_u8[0];
    *(&v137 + 7) = v152.n128_u64[1];
    v119[0] = 0;
    *&v136[7] = v154;
    v125[32] = v155.n128_u8[8];
    v162 = v154;
    v163 = v156;
    *&v135[7] = v156;
    v95[0] = v157;
    *&v125[56] = v157;
    *(v134 + 9) = *(v147 + 9);
    v133 = v146;
    v134[0] = v147[0];
    v131 = v144;
    v132 = v145;
    v127 = v140;
    v126 = v139;
    v130 = v143;
    v129 = v142;
    v128 = v141;
    v120 = v148;
    v121 = v149;
    LOBYTE(v122[0]) = v150[0];
    BYTE1(v122[0]) = 4;
    *(v122 + 2) = *v138;
    v122[1] = *&v150[1];
    v123 = v151;
    *(v124 + 1) = v137;
    *(&v124[1] + 1) = v153.n128_u64[1];
    v125[0] = 0;
    *&v125[24] = v155.n128_u64[0];
    *&v125[16] = v154.n128_u64[1];
    *&v125[1] = *v136;
    *&v125[33] = *v135;
    *&v125[48] = v156.n128_u64[1];
    sub_218D2E704(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v74 = MEMORY[0x277D837D0];
    sub_218D2E61C(&v158, v119, &qword_280E8F860, MEMORY[0x277D837D0]);
    goto LABEL_50;
  }

  v85 = v6;
  v108 = MEMORY[0x277D84F90];
  v34 = *(*(&v150[1] + 1) + 16);
  v89 = OBJC_IVAR____TtC7NewsUI230ChannelPickerDetailDataManager_model;

  v88 = v34;
  if (!v34)
  {
LABEL_42:

    *&v158 = ChannelPickerElementModel.sectionId.getter(v79);
    *(&v158 + 1) = v80;
    MEMORY[0x21CECC330](47, 0xE100000000000000);
    if (*&v150[1])
    {
      v81 = *(&v150[0] + 1);
    }

    else
    {
      v81 = 0;
    }

    if (*&v150[1])
    {
      v82 = *&v150[1];
    }

    else
    {
      v82 = 0xE000000000000000;
    }

    MEMORY[0x21CECC330](v81, v82);

    v83 = v158;
    v84 = v108;
    sub_218D2E5FC(&v139);
    v159 = v148;
    v160 = v149;
    v106 = v148;
    v107 = v149;
    v161 = v151.n128_u64[0];
    LOBYTE(v124[0]) = v152.n128_u8[0];
    *(&v105 + 7) = v152.n128_u64[1];
    HIBYTE(v105) = v153.n128_u8[0];
    v104 = 0;
    *&v103[7] = v154;
    v125[32] = v155.n128_u8[8];
    v162 = v154;
    v163 = v156;
    *&v102[7] = v156;
    v95[0] = v157;
    *&v125[56] = v157;
    *(v134 + 9) = *(v147 + 9);
    v133 = v146;
    v134[0] = v147[0];
    v131 = v144;
    v132 = v145;
    v127 = v140;
    v126 = v139;
    v130 = v143;
    v129 = v142;
    v128 = v141;
    v120 = v148;
    v121 = v149;
    LOBYTE(v122[0]) = v150[0];
    BYTE1(v122[0]) = 2;
    *(v122 + 8) = v83;
    *(&v122[1] + 1) = v84;
    v123 = v151;
    *(v124 + 1) = v105;
    *(&v124[1] + 1) = v153.n128_u64[1];
    v125[0] = 0;
    *&v125[24] = v155.n128_u64[0];
    *&v125[16] = v154.n128_u64[1];
    *&v125[1] = *v103;
    *&v125[33] = *v102;
    v33 = v156.n128_u64[1];
LABEL_49:
    *&v125[48] = v33;
    sub_218D2E704(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v74 = MEMORY[0x277D837D0];
LABEL_50:
    sub_218D2E61C(&v159, v119, &qword_280E8F860, v74);
    sub_218D2E61C(&v160, v119, &qword_280E8F860, v74);
    sub_218D2E69C(&v161, v119, sub_2186D0AF8);
    sub_218D2E61C(&v162, v119, &qword_280E8F860, v74);
    sub_218D2E61C(&v163, v119, &qword_280E8F860, v74);
    sub_218D2E61C(v95, v119, &qword_280E8F860, v74);
    sub_219BE3014();
    return;
  }

  v35 = 0;
  v36 = v20 + 80;
  v86 = v20;
  v87 = v2;
  while (v35 < *(v20 + 16))
  {
    v48 = *(v36 - 48);
    v49 = *(v36 - 40);
    v50 = *v36;
    v51 = *(v36 + 8);
    v52 = *(v36 + 88);
    v53 = *(v36 + 104);
    v54 = *(v36 + 72);
    *&v145 = *(v36 + 120);
    v144 = v53;
    v142 = v54;
    v143 = v52;
    v55 = *(v36 + 24);
    v56 = *(v36 + 40);
    v141 = *(v36 + 56);
    v140 = v56;
    v139 = v55;
    if (v49)
    {
      v57 = *(&v139 + 1);
      v58 = *(v36 + 88);
      v98 = *(v36 + 72);
      v99 = v58;
      v100 = *(v36 + 104);
      v101 = *(v36 + 120);
      v59 = *(v36 + 56);
      v96 = *(v36 + 40);
      v97 = v59;
      if (*(&v139 + 1) != 1)
      {
        v91 = v139;
        v92 = v48;
        v93 = v50;
        v94 = v51;
        v163.n128_u64[0] = 0;
        v163.n128_u64[1] = 0xE000000000000000;
        sub_218D2E69C(v2 + v89, v13, type metadata accessor for ChannelPickerElementModel);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload > 1)
        {
          if (EnumCaseMultiPayload == 2)
          {
            v65 = v13[9];
            *&v125[16] = v13[8];
            *&v125[32] = v65;
            *&v125[48] = v13[10];
            v66 = v13[5];
            v123 = *(v13 + 4);
            v124[0] = v66;
            v67 = v13[7];
            v124[1] = v13[6];
            *v125 = v67;
            v68 = *(v13 + 1);
            v120 = *v13;
            v121 = v68;
            v69 = v13[3];
            v122[0] = v13[2];
            v122[1] = v69;
            v38 = *&v125[48];
            v39 = *&v125[56];

            sub_218D2E61C(&v139, v95, &qword_27CC115D8, &type metadata for ChannelPickerModule);

            sub_218980B3C(&v120);
          }

          else
          {
            v37 = v85;
            sub_218D2E9EC(v13, v85, type metadata accessor for ChannelPickerEngagementModel);
            v38 = *v37;
            v39 = v37[1];

            sub_218D2E61C(&v139, &v120, &qword_27CC115D8, &type metadata for ChannelPickerModule);

            sub_218D2E754(v37, type metadata accessor for ChannelPickerEngagementModel);
          }
        }

        else if (EnumCaseMultiPayload)
        {
          v70 = v13[7];
          v124[1] = v13[6];
          *v125 = v70;
          *&v125[16] = v13[8];
          *&v125[25] = *(v13 + 137);
          v71 = v13[3];
          v122[0] = v13[2];
          v122[1] = v71;
          v72 = v13[5];
          v123 = *(v13 + 4);
          v124[0] = v72;
          v73 = *(v13 + 1);
          v120 = *v13;
          v121 = v73;
          v38 = *&v125[24];
          v39 = *&v125[32];

          sub_218D2E61C(&v139, v95, &qword_27CC115D8, &type metadata for ChannelPickerModule);

          sub_218980B90(&v120);
        }

        else
        {
          v61 = *(v13 + 89);
          v62 = v13[5];
          v123 = *(v13 + 4);
          v124[0] = v62;
          *(v124 + 9) = v61;
          v63 = *(v13 + 1);
          v120 = *v13;
          v121 = v63;
          v64 = v13[3];
          v122[0] = v13[2];
          v122[1] = v64;
          v38 = *(&v124[0] + 1);
          v39 = *&v124[1];

          sub_218D2E61C(&v139, v95, &qword_27CC115D8, &type metadata for ChannelPickerModule);

          sub_218980BE4(&v120);
        }

        ++v35;
        MEMORY[0x21CECC330](v38, v39);

        MEMORY[0x21CECC330](47, 0xE100000000000000);
        v40 = *&v150[1] ? *(&v150[0] + 1) : 0;
        v41 = *&v150[1] ? *&v150[1] : 0xE000000000000000;

        MEMORY[0x21CECC330](v40, v41);

        v42 = v163;
        v43 = v91;
        *v9 = v92;
        *(v9 + 1) = v49;
        *(v9 + 2) = v43;
        *(v9 + 3) = v57;
        v44 = v99;
        *(v9 + 4) = v98;
        *(v9 + 5) = v44;
        *(v9 + 6) = v100;
        v45 = v101;
        v46 = v97;
        *(v9 + 2) = v96;
        *(v9 + 3) = v46;
        v47 = v93;
        *(v9 + 14) = v45;
        *(v9 + 15) = v47;
        *(v9 + 16) = v94;
        *(v9 + 136) = v42;
        v9[152] = 2;
        swift_storeEnumTagMultiPayload();
        sub_218D2E7B4(0, &unk_27CC16960, type metadata accessor for ChannelPickerElementModel, MEMORY[0x277D83940]);
        sub_218D2E818(&qword_27CC0B7A8, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
        sub_219BF59B4();
        sub_218D2E754(v9, type metadata accessor for ChannelPickerElementModel);
        v36 += 176;
        v2 = v87;
        v20 = v86;
        if (v88 != v35)
        {
          continue;
        }
      }
    }

    goto LABEL_42;
  }

  __break(1u);
}

uint64_t sub_218D2CCE0(unint64_t *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v85 = a2;
  v6 = type metadata accessor for ChannelPickerEngagementModel(0);
  MEMORY[0x28223BE20](v6 - 8);
  v56 = (&v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = type metadata accessor for ChannelPickerElementModel(0);
  MEMORY[0x28223BE20](v63);
  v62 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v54 - v10);
  MEMORY[0x28223BE20](v12);
  v14 = (&v54 - v13);
  v15 = *a1;
  v84 = MEMORY[0x277D84F90];
  if (v15 >> 62)
  {
    v53 = v15;
    result = sub_219BF7214();
    v15 = v53;
  }

  else
  {
    result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x277D84F90];
  v55 = a3;
  if (!result)
  {
    v45 = MEMORY[0x277D84F90];
LABEL_22:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v47 = [objc_opt_self() bundleForClass_];
    v48 = sub_219BDB5E4();
    v50 = v49;

    v52 = *(v55 + 160);
    v51 = *(v55 + 168);
    sub_218D2E5FC(&v75);
    *&v69[23] = v82;
    v70[0] = v83[0];
    *(v70 + 9) = *(v83 + 9);
    *&v69[19] = v80;
    *&v69[21] = v81;
    *&v69[13] = v77;
    *&v69[15] = v78;
    *&v69[17] = v79;
    *&v69[9] = v75;
    v74 = 0;
    v73 = 0;
    v72 = 1;
    v71 = 1;
    *&v69[11] = v76;
    *&v65 = v48;
    *(&v65 + 1) = v50;
    v66 = xmmword_219C325C0;
    LOWORD(v67) = 768;
    *(&v67 + 1) = v52;
    *&v68[0] = v51;
    *(&v68[0] + 1) = v45;
    v68[1] = v17;
    LOBYTE(v68[2]) = 0;
    *(&v68[2] + 1) = 0;
    LOBYTE(v68[3]) = 0;
    *(&v68[3] + 1) = 0;
    LOBYTE(v69[0]) = 1;
    *&v69[1] = xmmword_219C325C0;
    v69[3] = 0;
    LOBYTE(v69[4]) = 1;
    memset(&v69[5], 0, 32);
    sub_218D2E704(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
    swift_allocObject();

    return sub_219BE3014();
  }

  if (result >= 1)
  {
    v18 = 0;
    v19 = OBJC_IVAR____TtC7NewsUI230ChannelPickerDetailDataManager_model;
    v58 = v15 & 0xC000000000000001;
    v57 = xmmword_219C325C0;
    v60 = result;
    v61 = v15;
    v59 = OBJC_IVAR____TtC7NewsUI230ChannelPickerDetailDataManager_model;
    do
    {
      if (v58)
      {
        v24 = MEMORY[0x21CECE0F0](v18);
      }

      else
      {
        v24 = *(v15 + 8 * v18 + 32);
      }

      *(&v76 + 1) = type metadata accessor for TagModel();
      *&v77 = sub_218D2E818(&qword_27CC16900, type metadata accessor for TagModel, &unk_219C7E080);
      *&v75 = v24;
      sub_218D2E69C(v85 + v19, v14, type metadata accessor for ChannelPickerElementModel);
      if (swift_getEnumCaseMultiPayload())
      {

        sub_218D2E754(v14, type metadata accessor for ChannelPickerElementModel);
        v25 = [*(v24 + 16) displayName];
        v64 = sub_219BF5414();
        v27 = v26;
      }

      else
      {
        v28 = v14[3];
        v67 = v14[2];
        v68[0] = v28;
        v29 = v14[5];
        v68[1] = v14[4];
        v68[2] = v29;
        *(&v68[2] + 9) = *(v14 + 89);
        v30 = v14[1];
        v65 = *v14;
        v66 = v30;
        v27 = *&v68[0];
        v64 = *(&v67 + 1);

        sub_218980BE4(&v65);
      }

      sub_218D2E69C(v85 + v19, v11, type metadata accessor for ChannelPickerElementModel);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v36 = v11[9];
          *&v69[2] = v11[8];
          *&v69[4] = v36;
          *&v69[6] = v11[10];
          v37 = v11[5];
          v68[1] = v11[4];
          v68[2] = v37;
          v38 = v11[7];
          v68[3] = v11[6];
          *v69 = v38;
          v39 = v11[1];
          v65 = *v11;
          v66 = v39;
          v40 = v11[3];
          v67 = v11[2];
          v68[0] = v40;
          v22 = v69[6];
          v21 = v69[7];

          sub_218980B3C(&v65);
        }

        else
        {
          v20 = v56;
          sub_218D2E9EC(v11, v56, type metadata accessor for ChannelPickerEngagementModel);
          v22 = *v20;
          v21 = v20[1];

          sub_218D2E754(v20, type metadata accessor for ChannelPickerEngagementModel);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        v41 = v11[7];
        v68[3] = v11[6];
        *v69 = v41;
        *&v69[2] = v11[8];
        *(&v69[3] + 1) = *(v11 + 137);
        v42 = v11[3];
        v67 = v11[2];
        v68[0] = v42;
        v43 = v11[5];
        v68[1] = v11[4];
        v68[2] = v43;
        v44 = v11[1];
        v65 = *v11;
        v66 = v44;
        v22 = v69[3];
        v21 = v69[4];

        sub_218980B90(&v65);
      }

      else
      {
        v32 = *(v11 + 89);
        v33 = v11[5];
        v68[1] = v11[4];
        v68[2] = v33;
        *(&v68[2] + 9) = v32;
        v34 = v11[1];
        v65 = *v11;
        v66 = v34;
        v35 = v11[3];
        v67 = v11[2];
        v68[0] = v35;
        v22 = *(&v68[2] + 1);
        v21 = *&v68[3];

        sub_218980BE4(&v65);
      }

      ++v18;
      sub_2186CB1F0(&v75, &v65);
      *(&v67 + 1) = v64;
      *&v68[0] = v27;
      *(v68 + 8) = v57;
      *(&v68[1] + 8) = v57;
      *(&v68[2] + 1) = v22;
      *&v68[3] = v21;
      BYTE8(v68[3]) = 3;
      v23 = v62;
      sub_218BFB1DC(&v65, v62);
      swift_storeEnumTagMultiPayload();
      sub_218D2E7B4(0, &unk_27CC16960, type metadata accessor for ChannelPickerElementModel, MEMORY[0x277D83940]);
      sub_218D2E818(&qword_27CC0B7A8, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
      sub_219BF59B4();

      sub_218D2E754(v23, type metadata accessor for ChannelPickerElementModel);
      sub_218980BE4(&v65);
      v15 = v61;
      v19 = v59;
    }

    while (v60 != v18);
    v45 = v84;
    v17 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

double sub_218D2D404@<D0>(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, 0x151uLL);
  sub_218D2EB00(__dst, &v10);
  v5 = sub_2191F8960(0, 1, 1, MEMORY[0x277D84F90]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_2191F8960((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  memcpy(&v5[344 * v7 + 32], __dst, 0x151uLL);
  v8 = a2[1];
  *a3 = *a2;
  *(a3 + 8) = v8;
  *(a3 + 16) = xmmword_219C325C0;
  *(a3 + 32) = xmmword_219C325C0;
  *(a3 + 48) = xmmword_219C325C0;
  *(a3 + 64) = xmmword_219C325C0;
  *(a3 + 80) = xmmword_219C325C0;
  *(a3 + 96) = v5;
  *(a3 + 104) = xmmword_219C325C0;
  *(a3 + 120) = xmmword_219C325C0;

  return result;
}

char *sub_218D2D500(char *result)
{
  v1 = 0;
  v2 = *(result + 2);
  v3 = result - 144;
  v4 = MEMORY[0x277D84F90];
LABEL_2:
  v5 = &v3[176 * v1];
  while (1)
  {
    if (v2 == v1)
    {
      v12 = off_282A4D758;
      type metadata accessor for TagService();
      v13 = v12(v4);

      return v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v7 = *(v5 + 23);
    ++v1;
    v5 += 176;
    if (v7)
    {
      v8 = *v5;

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_218840D24(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        result = sub_218840D24((v9 > 1), v10 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_218D2D648(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v101 = a3;
  v102 = a4;
  v7 = type metadata accessor for ChannelPickerEngagementModel(0);
  MEMORY[0x28223BE20](v7 - 8);
  v98 = (&v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218D2E7B4(0, &qword_27CC0EF50, type metadata accessor for ChannelPickerElementModel, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v98 - v10;
  v12 = type metadata accessor for ChannelPickerElementModel(0);
  v105 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v104 = (&v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x28223BE20](v14);
  v110 = &v98 - v16;
  v17 = *a1;
  if (v17 >> 62)
  {
    goto LABEL_66;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v103 = a2;
  v111 = v11;
  v112 = v12;
  if (v18)
  {
    v19 = 0;
    v108 = v17 & 0xFFFFFFFFFFFFFF8;
    v109 = (v17 & 0xC000000000000001);
    v20 = MEMORY[0x277D84F98];
    v106 = v18;
    v107 = v17;
    while (1)
    {
      if (v109)
      {
        a2 = MEMORY[0x21CECE0F0](v19, v17, v15);
        v21 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
          goto LABEL_62;
        }
      }

      else
      {
        if (v19 >= *(v108 + 16))
        {
          goto LABEL_63;
        }

        a2 = *(v17 + 8 * v19 + 32);

        v21 = (v19 + 1);
        if (__OFADD__(v19, 1))
        {
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v18 = sub_219BF7214();
          goto LABEL_3;
        }
      }

      v147 = v21;
      v22 = [*(a2 + 16) identifier];
      v12 = sub_219BF5414();
      v24 = v23;

      v17 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v114 = v17;
      v11 = sub_21870F700(v12, v24);
      v27 = *(v17 + 16);
      v28 = (v26 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_64;
      }

      v30 = v26;
      if (*(v17 + 24) >= v29)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v26)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v17 = &v114;
          sub_219492A6C();
          if (v30)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_219481C7C(v29, isUniquelyReferenced_nonNull_native);
        v17 = v114;
        v31 = sub_21870F700(v12, v24);
        if ((v30 & 1) != (v32 & 1))
        {
          result = sub_219BF79A4();
          __break(1u);
          return result;
        }

        v11 = v31;
        if (v30)
        {
LABEL_5:

          v20 = v114;
          *(*(v114 + 56) + 8 * v11) = a2;

          goto LABEL_6;
        }
      }

      v20 = v114;
      *(v114 + 8 * (v11 >> 6) + 64) |= 1 << v11;
      v33 = (v20[6] + 16 * v11);
      *v33 = v12;
      v33[1] = v24;
      *(v20[7] + 8 * v11) = a2;

      v34 = v20[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_65;
      }

      v20[2] = v36;
LABEL_6:
      ++v19;
      v17 = v107;
      v11 = v111;
      v12 = v112;
      if (v147 == v106)
      {
        goto LABEL_25;
      }
    }
  }

  v20 = MEMORY[0x277D84F98];
LABEL_25:
  v108 = v20;
  v37 = *(v103 + 16);
  v100 = OBJC_IVAR____TtC7NewsUI230ChannelPickerDetailDataManager_model;
  if (v37)
  {
    v38 = (v103 + 32);
    v109 = (v105 + 56);
    v147 = (v105 + 48);
    v39 = MEMORY[0x277D84F90];
    v99 = xmmword_219C325C0;
    while (1)
    {
      v40 = v38[9];
      v120[1] = v38[8];
      *v121 = v40;
      *&v121[2] = v38[10];
      v41 = v38[5];
      v118 = v38[4];
      v119[0] = v41;
      v42 = v38[7];
      v119[1] = v38[6];
      v120[0] = v42;
      v43 = v38[1];
      v114 = *v38;
      v115 = v43;
      v44 = v38[3];
      v116 = v38[2];
      v117 = v44;
      v45 = *(&v114 + 1);
      if (*(&v114 + 1) && *(v108 + 16))
      {
        v46 = v114;
        sub_218D2E8B0(&v114, &v134);
        v47 = sub_21870F700(v46, v45);
        if (v48)
        {
          v49 = v115;
          v50 = *(*(v108 + 56) + 8 * v47);
          v132 = type metadata accessor for TagModel();
          v133 = sub_218D2E818(&qword_27CC16900, type metadata accessor for TagModel, &unk_219C7E080);
          *&v131 = v50;
          if (*(&v49 + 1))
          {
            v103 = v49;

            v107 = *(&v49 + 1);
          }

          else
          {
            v53 = *(v50 + 16);
            swift_retain_n();
            v54 = [v53 displayName];
            v103 = sub_219BF5414();
            v107 = v55;

            v11 = v111;
          }

          v56 = *(&v117 + 1);
          v106 = v117;
          *&v146 = 0;
          *(&v146 + 1) = 0xE000000000000000;
          sub_218D2E69C(v101 + v100, v104, type metadata accessor for ChannelPickerElementModel);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (EnumCaseMultiPayload > 1)
          {
            if (EnumCaseMultiPayload == 2)
            {
              v64 = v104[9];
              v140[0] = v104[8];
              v140[1] = v64;
              v141 = v104[10];
              v65 = v104[5];
              v137[1] = v104[4];
              v138[0] = v65;
              v66 = v104[7];
              v138[1] = v104[6];
              v139 = v66;
              v67 = v104[1];
              v134 = *v104;
              v135 = v67;
              v68 = v104[3];
              v136 = v104[2];
              v137[0] = v68;
              v63 = *(&v141 + 1);
              v62 = v141;

              sub_218980B3C(&v134);
            }

            else
            {
              v73 = v98;
              sub_218D2E9EC(v104, v98, type metadata accessor for ChannelPickerEngagementModel);
              v62 = *v73;
              v63 = v73[1];

              v74 = v73;
              v11 = v111;
              sub_218D2E754(v74, type metadata accessor for ChannelPickerEngagementModel);
            }
          }

          else if (EnumCaseMultiPayload)
          {
            v69 = v104[7];
            v138[1] = v104[6];
            v139 = v69;
            v140[0] = v104[8];
            *(v140 + 9) = *(v104 + 137);
            v70 = v104[3];
            v136 = v104[2];
            v137[0] = v70;
            v71 = v104[5];
            v137[1] = v104[4];
            v138[0] = v71;
            v72 = v104[1];
            v134 = *v104;
            v135 = v72;
            v62 = *(&v140[0] + 1);
            v63 = *&v140[1];

            sub_218980B90(&v134);
          }

          else
          {
            v58 = *(v104 + 89);
            v59 = v104[5];
            v137[1] = v104[4];
            v138[0] = v59;
            *(v138 + 9) = v58;
            v60 = v104[1];
            v134 = *v104;
            v135 = v60;
            v61 = v104[3];
            v136 = v104[2];
            v137[0] = v61;
            v62 = *(&v138[0] + 1);
            v63 = *&v138[1];

            sub_218980BE4(&v134);
          }

          MEMORY[0x21CECC330](v62, v63);

          MEMORY[0x21CECC330](47, 0xE100000000000000);
          v75 = *(v102 + 48);
          if (v75)
          {
            v76 = *(v102 + 40);
          }

          else
          {
            v76 = 0;
          }

          if (v75)
          {
            v77 = *(v102 + 48);
          }

          else
          {
            v77 = 0xE000000000000000;
          }

          MEMORY[0x21CECC330](v76, v77);

          v78 = v146;
          sub_2186CB1F0(&v131, &v134);
          *(&v136 + 1) = v103;
          *&v137[0] = v107;
          *(v137 + 8) = v99;
          *(&v137[1] + 1) = v106;
          *&v138[0] = v56;
          *(v138 + 8) = v78;
          BYTE8(v138[1]) = 3;
          v79 = v138[0];
          *(v11 + 64) = v137[1];
          *(v11 + 80) = v79;
          *(v11 + 89) = *(v138 + 9);
          v80 = v135;
          *v11 = v134;
          *(v11 + 16) = v80;
          v81 = v137[0];
          *(v11 + 32) = v136;
          *(v11 + 48) = v81;
          v12 = v112;
          swift_storeEnumTagMultiPayload();
          (*v109)(v11, 0, 1, v12);
          goto LABEL_36;
        }
      }

      else
      {
        sub_218D2E8B0(&v114, &v134);
      }

      (*v109)(v11, 1, 1, v12);
LABEL_36:
      sub_218D2E90C(&v114);
      if ((*v147)(v11, 1, v12) == 1)
      {
        sub_218D2E960(v11);
      }

      else
      {
        sub_218D2E9EC(v11, v110, type metadata accessor for ChannelPickerElementModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_2191F8584(0, v39[2] + 1, 1, v39);
        }

        v52 = v39[2];
        v51 = v39[3];
        if (v52 >= v51 >> 1)
        {
          v39 = sub_2191F8584((v51 > 1), v52 + 1, 1, v39);
        }

        v39[2] = v52 + 1;
        sub_218D2E9EC(v110, v39 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v52, type metadata accessor for ChannelPickerElementModel);
      }

      v38 += 11;
      if (!--v37)
      {
        goto LABEL_58;
      }
    }
  }

  v39 = MEMORY[0x277D84F90];
LABEL_58:

  v123 = ChannelPickerElementModel.sectionId.getter(v82);
  v124 = v83;
  MEMORY[0x21CECC330](47, 0xE100000000000000);
  v84 = v102;
  if (*(v102 + 48))
  {
    v85 = *(v102 + 40);
    v86 = *(v102 + 48);
  }

  else
  {
    v85 = 0;
    v86 = 0xE000000000000000;
  }

  MEMORY[0x21CECC330](v85, v86);

  v87 = v123;
  v88 = v124;
  sub_218D2E5FC(&v134);
  v89 = *v84;
  v130 = *(v84 + 16);
  v131 = v89;
  v146 = v130;
  v129 = v89;
  v90 = *(v84 + 32);
  v91 = *(v84 + 72);
  v145 = *(v84 + 64);
  *(&v118 + 1) = v91;
  LOBYTE(v119[0]) = *(v84 + 80);
  *(&v128 + 7) = *(v84 + 88);
  HIBYTE(v128) = *(v84 + 96);
  v92 = *(v84 + 104);
  v127 = 0;
  v144 = *(v84 + 112);
  *&v126[7] = v144;
  LOBYTE(v121[0]) = *(v84 + 136);
  v93 = *(v84 + 128);
  v94 = *(v84 + 144);
  v142 = *(v84 + 160);
  v143 = v94;
  v95 = *(v84 + 160);
  *&v125[7] = *(v84 + 144);
  *&v121[3] = v95;
  *(v122 + 9) = *(v140 + 9);
  *&v121[19] = v139;
  v122[0] = v140[0];
  *&v121[15] = v138[0];
  *&v121[17] = v138[1];
  *&v121[7] = v135;
  *&v121[5] = v134;
  *&v121[13] = v137[1];
  *&v121[11] = v137[0];
  *&v121[9] = v136;
  v114 = v129;
  v115 = v130;
  LOWORD(v116) = v90;
  *(&v116 + 1) = v87;
  *&v117 = v88;
  *(&v117 + 1) = v39;
  *&v118 = v145;
  *(v119 + 1) = v128;
  *(&v119[1] + 1) = v92;
  LOBYTE(v120[0]) = 0;
  *&v120[1] = *(&v144 + 1);
  *(&v120[1] + 1) = v93;
  *(v120 + 1) = *v126;
  *(v121 + 1) = *v125;
  v121[2] = *&v125[15];
  sub_218D2E704(0, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v96 = MEMORY[0x277D837D0];
  sub_218D2E61C(&v131, v113, &qword_280E8F860, MEMORY[0x277D837D0]);
  sub_218D2E61C(&v146, v113, &qword_280E8F860, v96);
  sub_218D2E69C(&v145, v113, sub_2186D0AF8);
  sub_218D2E61C(&v144, v113, &qword_280E8F860, v96);
  sub_218D2E61C(&v143, v113, &qword_280E8F860, v96);
  sub_218D2E61C(&v142, v113, &qword_280E8F860, v96);
  return sub_219BE3014();
}

uint64_t sub_218D2E1C4()
{
  sub_219BE3204();
  v0 = sub_219BE2E54();
  sub_219BE2F64();

  v1 = sub_219BE2E54();
  v2 = sub_219BE2FD4();

  return v2;
}

uint64_t sub_218D2E288()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, &off_282A44660, ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_218D2E38C()
{
  result = qword_27CC115C8;
  if (!qword_27CC115C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC115C8);
  }

  return result;
}

double sub_218D2E488(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void sub_218D2E580(uint64_t a1)
{
  if (!qword_27CC115D0)
  {
    sub_218D2E704(255, &unk_27CC16930, &type metadata for ChannelPickerSectionModel, MEMORY[0x277D6CF30]);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC115D0);
    }
  }
}

double sub_218D2E5FC(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 137) = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_218D2E61C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_218D2E704(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_218D2E69C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_218D2E704(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_218D2E754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_218D2E7B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_218D2E818(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218D2E960(uint64_t a1)
{
  sub_218D2E7B4(0, &qword_27CC0EF50, type metadata accessor for ChannelPickerElementModel, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_218D2E9EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218D2EA54()
{
  v1 = *(*(v0 + 24) + 152);
  v2 = off_282A4D758;
  type metadata accessor for TagService();
  return v2(v1);
}

unint64_t sub_218D2EB70()
{
  result = qword_27CC115E0;
  if (!qword_27CC115E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC115E0);
  }

  return result;
}

uint64_t sub_218D2EBC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_219BE0204();
    result = sub_219BE1E24();
    if (result)
    {
      v6 = result;
      v7 = type metadata accessor for SubscriptionOffersTracker();
      v8 = swift_allocObject();
      *(v8 + 16) = v5;
      *(v8 + 24) = v6;
      a2[3] = v7;
      result = sub_218D2EE84(&qword_27CC115E8, type metadata accessor for SubscriptionOffersTracker, &unk_219C6D86C);
      a2[4] = result;
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

uint64_t sub_218D2ECC4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for CampaignLandingPageTracker();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    a2[3] = v5;
    result = sub_218D2EE84(&qword_280EBC238, type metadata accessor for CampaignLandingPageTracker, &unk_219CC8ACC);
    a2[4] = result;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218D2ED80(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for WebEmbedFailureTracker();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218D2EDF0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for WebEmbedFailureTracker();
  result = sub_219BE1E24();
  if (result)
  {
    v4 = result;
    result = sub_218D2EE84(qword_280EC61B0, type metadata accessor for WebEmbedFailureTracker, &unk_219C1B8C8);
    *a2 = v4;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218D2EE84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218D2EECC(uint64_t a1)
{
  v20 = a1;
  v2 = sub_219BDE294();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D2F198(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SavedFeedRouteModel(0);
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
    sub_218D2F1F0(v8, sub_218D2F198);
    return 0;
  }

  else
  {
    v15 = v18;
    sub_21880BBE4(v8, v18, type metadata accessor for SavedFeedRouteModel);
    __swift_project_boxed_opaque_existential_1((v19 + 48), *(v19 + 72));
    v16 = sub_2196CD744(v15);
    sub_218D2F1F0(v15, type metadata accessor for SavedFeedRouteModel);
    return v16;
  }
}

void sub_218D2F198(uint64_t a1)
{
  if (!qword_27CC115F0)
  {
    type metadata accessor for SavedFeedRouteModel(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC115F0);
    }
  }
}

uint64_t sub_218D2F1F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_218D2F250(char a1, uint64_t a2)
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

void *sub_218D2F32C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for EngagementAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a2 + 11, a2[14]);
  sub_218D2F4F4(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21880BBE4(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for EngagementAction);
  sub_219BDD154();

  v9 = __swift_project_boxed_opaque_existential_1(a2 + 6, a2[9]);
  __swift_project_boxed_opaque_existential_1((*v9 + 24), *(*v9 + 48));
  sub_218D2F5C8();
  result = sub_219BE1E34();
  if (v12)
  {
    sub_21875F93C(&v11, v13);
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    sub_219BE6DC4();
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_218D2F4F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D2F558(uint64_t a1)
{
  v3 = *(type metadata accessor for EngagementAction(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_218E3371C(a1, v4);
}

unint64_t sub_218D2F5C8()
{
  result = qword_280EE5700;
  if (!qword_280EE5700)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE5700);
  }

  return result;
}

double sub_218D2F62C@<D0>(uint64_t a3@<X2>, CGFloat *a4@<X8>)
{
  v7 = *__swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  sub_219BF54E4();
  sub_21899E550(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  v9 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v10 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  v11 = v9;
  *(inited + 40) = sub_219BF6BD4();
  v12 = *MEMORY[0x277D740C0];
  *(inited + 64) = v10;
  *(inited + 72) = v12;
  v13 = *(*__swift_project_boxed_opaque_existential_1((v7 + 16), *(v7 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 48);
  *(inited + 104) = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  *(inited + 80) = v13;
  v14 = v12;
  v15 = v13;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v17 = sub_219BF53D4();

  type metadata accessor for Key(0);
  sub_21899E604();
  v18 = sub_219BF5204();

  v19 = [v16 initWithString:v17 attributes:v18];

  sub_219BF6B94();
  sub_219BF6784();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_219BF6794();
  [v28 ascender];
  v30 = v29;

  v31 = sub_219BF6794();
  [v31 capHeight];
  v33 = v32;

  v48 = v30 - v33;
  v34 = (a3 + *(type metadata accessor for MyMagazinesSectionHeaderViewLayoutOptions(0) + 20));
  v35 = v34[1];
  v49.origin.x = v21;
  v49.origin.y = v23;
  v49.size.width = v25;
  v49.size.height = v27;
  v36 = v35 + CGRectGetWidth(v49) + v34[3];
  v37 = *v34;
  v50.origin.x = v21;
  v50.origin.y = v23;
  v50.size.width = v25;
  v50.size.height = v27;
  v51.size.height = v37 + CGRectGetHeight(v50) + v34[2];
  v51.origin.x = 0.0;
  v51.origin.y = 0.0;
  v51.size.width = v36;
  v52 = CGRectIntegral(v51);
  width = v52.size.width;
  x = v52.origin.x;
  y = v52.origin.y;
  height = v52.size.height;
  v52.origin.x = v21;
  v52.origin.y = v23;
  v52.size.width = v25;
  v52.size.height = v27;
  v39 = CGRectGetWidth(v52);
  v53.origin.x = v21;
  v53.origin.y = v23;
  v53.size.width = v25;
  v53.size.height = v27;
  v54.size.height = CGRectGetHeight(v53);
  v54.origin.x = v35;
  v54.origin.y = v37;
  v54.size.width = v39;
  v55 = CGRectIntegral(v54);
  v40 = v55.origin.x;
  v41 = v55.origin.y;
  v42 = v55.size.width;
  v43 = v55.size.height;

  *a4 = x;
  a4[1] = y;
  a4[2] = width;
  a4[3] = height;
  a4[4] = v40;
  a4[5] = v41;
  a4[6] = v42;
  a4[7] = v43;
  result = v48;
  a4[8] = v48;
  return result;
}

uint64_t sub_218D2F9E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v39 = type metadata accessor for SharedWithYouFeedConfig(0);
  MEMORY[0x28223BE20](v39);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x277D83D88];
  sub_2186DD494(0, &qword_280E91B80, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v38 - v6;
  sub_2186DD494(0, &qword_27CC115F8, sub_218D30510, v4);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  sub_2186DD494(0, &qword_280EE9C40, MEMORY[0x277CC9578], v4);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - v11;
  sub_218D30694(0, &qword_27CC11608, MEMORY[0x277D6CE98]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D305DC();
  v18 = v43;
  sub_219BF7B04();
  if (v18)
  {
    v31 = a1;
  }

  else
  {
    v19 = v15;
    v43 = a1;
    v20 = v42;
    sub_219BDBD34();
    v46 = 0;
    sub_218D307D0(&unk_280EE9C70, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v21 = v17;
    sub_219BE2C94();
    v38 = v12;
    sub_218D30510(0);
    v23 = v22;
    v45 = 1;
    sub_218D307D0(&qword_27CC11618, sub_218D30510, MEMORY[0x277D6CB08]);
    v24 = v9;
    sub_219BE2C94();
    v25 = v19;
    v26 = *(v23 - 8);
    if ((*(v26 + 48))(v24, 1, v23) == 1)
    {
      sub_218710370(v24, &qword_27CC115F8, sub_218D30510);
      v27 = 0;
    }

    else
    {
      v28 = sub_219BE1E44();
      v29 = v24;
      v27 = v28;
      (*(v26 + 8))(v29, v23);
    }

    v30 = v40;
    sub_219BEE5B4();
    v44 = 2;
    sub_218D307D0(&qword_280E91B88, MEMORY[0x277D32028], MEMORY[0x277D32038]);
    sub_219BE2C94();
    v33 = MEMORY[0x277CC9578];
    v34 = v27;
    v35 = v38;
    sub_21872AA08(v38, v30, &qword_280EE9C40, MEMORY[0x277CC9578]);
    if (!v34)
    {
      v34 = MEMORY[0x277D84F90];
    }

    sub_218710370(v35, &qword_280EE9C40, v33);
    (*(v25 + 8))(v21, v14);
    v36 = v20;
    v37 = v39;
    *(v30 + *(v39 + 20)) = v34;
    sub_2189A1E30(v41, v30 + *(v37 + 24));
    sub_218D30630(v30, v36);
    v31 = v43;
  }

  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t sub_218D2FFDC(void *a1)
{
  v3 = v1;
  sub_218D30694(0, &qword_27CC11620, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_218D305DC();
  sub_219BF7B44();
  v13 = 0;
  sub_219BDBD34();
  sub_218D307D0(&qword_280EE9CA0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_219BF77E4();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for SharedWithYouFeedConfig(0) + 20));
    v11[15] = 1;
    sub_2186DD494(0, &qword_280E8F078, type metadata accessor for SharedWithYouFeedGroupConfig, MEMORY[0x277D83940]);
    sub_218D306F8();
    sub_219BF7834();
    v11[14] = 2;
    sub_219BEE5B4();
    sub_218D307D0(&unk_280E91B90, MEMORY[0x277D32028], MEMORY[0x277D32030]);
    sub_219BF77E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_218D3026C(uint64_t a1)
{
  v2 = sub_218D305DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_218D302A8(uint64_t a1)
{
  v2 = sub_218D305DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_218D30360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v8 = MEMORY[0x277CC9578];
  sub_2186DD494(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v13 - v10;
  sub_21872AA08(v5, &v13 - v10, &qword_280EE9C40, v8);
  sub_21872AA08(v5 + *(a2 + 24), a3 + *(a2 + 24), &qword_280E91B80, MEMORY[0x277D32028]);
  sub_21872AA08(v11, a3, &qword_280EE9C40, v8);

  result = sub_218710370(v11, &qword_280EE9C40, v8);
  *(a3 + *(a2 + 20)) = a1;
  return result;
}

void sub_218D30510(uint64_t a1)
{
  if (!qword_27CC11600)
  {
    type metadata accessor for SharedWithYouFeedGroupConfig(255);
    sub_218D307D0(&qword_27CC10148, type metadata accessor for SharedWithYouFeedGroupConfig, &unk_219C27268);
    sub_218D307D0(&qword_27CC10150, type metadata accessor for SharedWithYouFeedGroupConfig, &unk_219C27240);
    v1 = sub_219BE1E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC11600);
    }
  }
}

unint64_t sub_218D305DC()
{
  result = qword_27CC11610;
  if (!qword_27CC11610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11610);
  }

  return result;
}

uint64_t sub_218D30630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_218D30694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_218D305DC();
    v7 = a3(a1, &type metadata for SharedWithYouFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_218D306F8()
{
  result = qword_27CC11628;
  if (!qword_27CC11628)
  {
    sub_2186DD494(255, &qword_280E8F078, type metadata accessor for SharedWithYouFeedGroupConfig, MEMORY[0x277D83940]);
    sub_218D307D0(&qword_27CC10150, type metadata accessor for SharedWithYouFeedGroupConfig, &unk_219C27240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11628);
  }

  return result;
}

uint64_t sub_218D307D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_218D3082C()
{
  result = qword_27CC11630;
  if (!qword_27CC11630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11630);
  }

  return result;
}

unint64_t sub_218D30884()
{
  result = qword_27CC11638;
  if (!qword_27CC11638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11638);
  }

  return result;
}

unint64_t sub_218D308DC()
{
  result = qword_27CC11640;
  if (!qword_27CC11640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC11640);
  }

  return result;
}

uint64_t sub_218D30930()
{
  sub_21896FA3C(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v24 - v6;
  v8 = *(v0 + 24);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_219C0A870;
  v24[1] = v9;
  v10 = v9 | 0x1000000000000004;
  v11 = sub_219BDFA44();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = v8;
  sub_2187B14CC(v30, &v25, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (*(&v26 + 1))
  {
    sub_21875F93C(&v25, v27);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v13 = qword_280ED32D8;
    v12 = qword_280ED32E0;
    v14 = qword_280ED32E8;

    sub_2188202A8(v12);
    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
    sub_2187448D0(&v25, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v13 = qword_280ED32D8;
    v12 = qword_280ED32E0;
    v14 = qword_280ED32E8;

    sub_2188202A8(v12);
  }

  v24[3] = v10;
  v26 = 0u;
  v25 = 0u;
  sub_2189B4E2C(v7, v4);
  sub_2187B14CC(v32, v27, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v15 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v16 = (v3 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 47) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  sub_2189B4EAC(v4, v18 + v15);
  v19 = v18 + v16;
  v20 = v27[1];
  *v19 = v27[0];
  *(v19 + 16) = v20;
  *(v19 + 32) = v28;
  v21 = (v18 + v17);
  v22 = (v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v21 = 0;
  v21[1] = 0;
  *v22 = v13;
  v22[1] = v12;
  v22[2] = v14;

  sub_2188202A8(v12);
  sub_2186CF94C(0);
  sub_218D30F98(&qword_280EE5A90, 255, sub_2186CF94C, MEMORY[0x277D6D5F8]);
  sub_219BEB464();

  sub_2187FABEC(v12, v14);
  sub_2187448D0(v30, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00], sub_2186C6F70);
  sub_2187448D0(v32, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578], sub_2186C6F70);
  sub_218A42D80(v7);
  sub_2187448D0(&v25, &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186F8278);

  return 1;
}

uint64_t sub_218D30F98(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_218D30FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a3;
  v41[1] = a1;
  sub_218A5310C(0, &qword_280EE3C68, sub_218A52E68);
  MEMORY[0x28223BE20](v5 - 8);
  v41[0] = v41 - v6;
  v7 = sub_219BDC104();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FollowingDislikedSupplementaryLayoutAttributes.Header(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = v41 - v16;
  v17 = sub_219BE9834();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = v41 - v22;
  sub_218952958(0);
  sub_219BE8184();
  v24 = v58;
  sub_219BE95F4();
  v25 = (*(v18 + 88))(v23, v17);
  if (v25 != *MEMORY[0x277D6E758])
  {
    goto LABEL_10;
  }

  v45 = a4;
  v26 = sub_219BE9604();
  if ((v26 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v26 >= *(v24 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    result = sub_219BF7514();
    __break(1u);
    return result;
  }

  v27 = v48;
  sub_218D317C8(v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v26, v48);

  sub_218952834(0);
  sub_219BE6934();
  v56[2] = v54;
  v57[0] = v55[0];
  *(v57 + 9) = *(v55 + 9);
  v56[0] = v52;
  v56[1] = v53;
  sub_218D317C8(v27, v14);
  v28 = *(v14 + 3);
  v59[2] = *(v14 + 2);
  v59[3] = v28;
  v60 = *(v14 + 8);
  v29 = *(v14 + 1);
  v59[0] = *v14;
  v59[1] = v29;
  sub_218CB6278(0);
  v31 = &v14[*(v30 + 48)];
  v32 = v49;
  sub_218A52EFC(v31, v49);
  sub_218A52F60(0);
  (*(v18 + 104))(v20, v25, v17);
  v33 = v42;
  sub_219BE9614();
  v34 = sub_219BF6424();
  (*(v43 + 8))(v33, v44);
  (*(v18 + 8))(v20, v17);
  if (BYTE8(v57[1]))
  {
    __swift_project_boxed_opaque_existential_1(v47 + 2, v47[5]);
    sub_218A52E68(0);
    v36 = v41[0];
    (*(*(v35 - 8) + 56))(v41[0], 1, 1, v35);
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_21913770C(v59, v34, v32, v36);
    sub_218967CDC(v59);
    sub_218D3182C(v56);
    sub_218D31880(v50, &qword_280ECFCE8, sub_218A53160);
    sub_218D31880(v36, &qword_280EE3C68, sub_218A52E68);
    v37 = v32;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v47 + 7, v47[10]);
    v38 = v32;
    v39 = sub_219BE9494();
    sub_219357FA0(v59, v39, v38);
    sub_218967CDC(v59);

    sub_218D3182C(v56);
    v37 = v38;
  }

  sub_218D318DC(v37, type metadata accessor for TitleViewLayoutAttributes);
  sub_218D318DC(v27, type metadata accessor for FollowingDislikedSupplementaryLayoutAttributes.Header);
  return v34;
}

uint64_t sub_218D3168C()
{
  v0 = sub_219BE9834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A52F60(0);
  (*(v1 + 104))(v3, *MEMORY[0x277D6E758], v0);
  sub_219BF6444();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_218D317C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FollowingDislikedSupplementaryLayoutAttributes.Header(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218D31880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218A5310C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218D318DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D3193C@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_219BF53D4();
  v4 = [v2 valueForKey_];

  if (v4)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = sub_219BDBD34();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_218806FD0(v11);
    v8 = sub_219BDBD34();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t sub_218D31AB0()
{
  v0 = sub_219BE2874();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD4F8(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_219BDBD34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  sub_218D3193C(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_2187103E0(v6, &qword_280EE9C40, MEMORY[0x277CC9578]);
    return sub_218D31F28();
  }

  else
  {
    v30 = v1;
    (*(v8 + 32))(v16, v6, v7);
    sub_218D32084(v16, v13);
    sub_219BDBD24();
    v18 = sub_219BDBC14();
    v19 = *(v8 + 8);
    v19(v10, v7);
    if (v18)
    {
      v20 = sub_218D31F28();
    }

    else
    {
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
      v29 = sub_219BF6F74();
      sub_2186DD4F8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_219C09BA0;
      sub_218758598(&qword_280EE9C60, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v22 = sub_219BF7894();
      v23 = v0;
      v25 = v24;
      *(v21 + 56) = MEMORY[0x277D837D0];
      *(v21 + 64) = sub_2186FC3BC();
      *(v21 + 32) = v22;
      *(v21 + 40) = v25;
      v26 = sub_219BF6214();
      v27 = v29;
      sub_219BE5314("AudioScheduledRefreshManager: skipping refresh because next refresh isn't due until %{public}@", 94, 2, &dword_2186C1000, v29, v26, v21);

      (*(v30 + 104))(v3, *MEMORY[0x277D6CD50], v23);
      sub_2186DD4F8(0, &qword_280EE6BB0, MEMORY[0x277D6CD60], MEMORY[0x277D6CF30]);
      swift_allocObject();
      v20 = sub_219BE3014();
    }

    v28 = v20;
    v19(v13, v7);
    v19(v16, v7);
    return v28;
  }
}

uint64_t sub_218D31F28()
{
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v0 = sub_219BF6F74();
  v1 = sub_219BF6214();
  sub_219BE5314("AudioScheduledRefreshManager: will refresh", 42, 2, &dword_2186C1000, v0, v1, MEMORY[0x277D84F90]);

  type metadata accessor for AudioFeedContentConfig(0);
  sub_219BE3204();

  v2 = sub_219BE2E54();
  type metadata accessor for AudioState(0);
  sub_219BE2F64();

  v3 = sub_219BE2E54();
  sub_219BE2874();
  v4 = sub_219BE2F64();

  return v4;
}

uint64_t sub_218D32084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v68 = a1;
  v3 = sub_219BDBEB4();
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x28223BE20](v3);
  v64 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BDBED4();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v60 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_219BDBE74();
  v59 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v58 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_2186DD4F8(0, &unk_280EE9C00, MEMORY[0x277CC99E8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v51 - v10;
  v11 = sub_219BDB534();
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x28223BE20](v11);
  v72 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD4F8(0, &qword_280EE9C40, MEMORY[0x277CC9578], v8);
  MEMORY[0x28223BE20](v13 - 8);
  v61 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v57 = &v51 - v16;
  sub_2186DD4F8(0, &qword_280EE9BD0, MEMORY[0x277CC9A70], v8);
  MEMORY[0x28223BE20](v17 - 8);
  v53 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v22 = sub_219BDC084();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v52 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v51 = &v51 - v26;
  v27 = sub_219BDBE44();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_219BDBF94();
  v70 = *(v31 - 8);
  v71 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 72), *(v2 + 96));
  v34 = sub_219BF3CE4();
  [v34 audioRefreshTimeGMT];

  (*(v28 + 104))(v30, *MEMORY[0x277CC9810], v27);
  sub_219BDBE54();
  (*(v28 + 8))(v30, v27);
  sub_219BDC054();
  v35 = (*(v23 + 48))(v21, 1, v22);
  v69 = v33;
  if (v35 == 1)
  {
    sub_2187103E0(v21, &qword_280EE9BD0, MEMORY[0x277CC9A70]);
  }

  else
  {
    v36 = v51;
    (*(v23 + 32))(v51, v21, v22);
    (*(v23 + 16))(v52, v36, v22);
    sub_219BDBF64();
    (*(v23 + 8))(v36, v22);
  }

  (*(v70 + 56))(v54, 1, 1, v71);
  (*(v23 + 56))(v53, 1, 1, v22);
  sub_219BDB514();
  v37 = v58;
  v38 = v59;
  (*(v59 + 104))(v58, *MEMORY[0x277CC9878], v73);
  v40 = v62;
  v39 = v63;
  v41 = v60;
  (*(v62 + 104))(v60, *MEMORY[0x277CC9900], v63);
  v43 = v64;
  v42 = v65;
  v44 = v66;
  (*(v65 + 104))(v64, *MEMORY[0x277CC98E8], v66);
  v45 = v57;
  sub_219BDBF44();
  (*(v42 + 8))(v43, v44);
  (*(v40 + 8))(v41, v39);
  (*(v38 + 8))(v37, v73);
  (*(v55 + 8))(v72, v56);
  v46 = v61;
  sub_2187D96F4(v45, v61);
  v47 = sub_219BDBD34();
  v48 = *(v47 - 8);
  v49 = *(v48 + 48);
  if (v49(v46, 1, v47) == 1)
  {
    sub_219BDBBF4();
    sub_2187103E0(v45, &qword_280EE9C40, MEMORY[0x277CC9578]);
    (*(v70 + 8))(v69, v71);
    result = v49(v46, 1, v47);
    if (result != 1)
    {
      return sub_2187103E0(v46, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    sub_2187103E0(v45, &qword_280EE9C40, MEMORY[0x277CC9578]);
    (*(v70 + 8))(v69, v71);
    return (*(v48 + 32))(v67, v46, v47);
  }

  return result;
}

uint64_t sub_218D32B20(uint64_t a1)
{
  v2 = sub_219BE1B34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  (*(v3 + 104))(v5, *MEMORY[0x277D6CA20], v2);
  v6 = off_282A71798;
  type metadata accessor for AudioFeedConfigManager();
  v7 = v6();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_218D32C70()
{
  v19 = sub_219BE2874();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD4F8(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = sub_219BDBD34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v13 = sub_219BF6F74();
  v14 = sub_219BF6214();
  sub_219BE5314("AudioScheduledRefreshManager: did refresh", 41, 2, &dword_2186C1000, v13, v14, MEMORY[0x277D84F90]);

  sub_219BDBD24();
  (*(v7 + 16))(v5, v12, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_218D33D98(v5);
  sub_218D32084(v12, v9);
  sub_218D32FAC(v9);
  (*(v0 + 104))(v2, *MEMORY[0x277D6CD58], v19);
  sub_2186DD4F8(0, &qword_280EE6BB0, MEMORY[0x277D6CD60], MEMORY[0x277D6CF30]);
  swift_allocObject();
  v15 = sub_219BE3014();
  v16 = *(v7 + 8);
  v16(v9, v6);
  v16(v12, v6);
  return v15;
}

void sub_218D32FAC(uint64_t a1)
{
  v2 = v1;
  v56 = a1;
  v3 = sub_219BDBF74();
  v55 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDBF94();
  v53 = *(v6 - 8);
  v54 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DD4F8(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - v10;
  v12 = sub_219BDBD34();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v51 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v52 = &v48 - v16;
  __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
  v17 = sub_219BF3CE4();
  v18 = [v17 audioRefreshForceWakeEnabled];

  if (v18)
  {
    v19 = [*(v2 + 112) cachedSubscription];
    v20 = objc_getAssociatedObject(v19, v19 + 1);
    v49 = v13;
    v50 = v12;
    if (v20)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 0u;
      v59 = 0u;
    }

    v60 = v58;
    v61 = v59;
    if (*(&v59 + 1))
    {
      sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v23 = v57;
        v24 = [v57 integerValue];
        if (v24 == -1)
        {

          v29 = v50;
          goto LABEL_25;
        }

        v25 = v24;
LABEL_14:
        if (objc_getAssociatedObject(v19, ~v25))
        {
          sub_219BF70B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v58 = 0u;
          v59 = 0u;
        }

        v60 = v58;
        v61 = v59;
        if (*(&v59 + 1))
        {
          sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
          if (swift_dynamicCast())
          {
            v26 = v57;
            v27 = [v26 integerValue];

            v28 = v27 ^ v25;
            v29 = v50;
            if (v28)
            {
LABEL_25:
              __swift_project_boxed_opaque_existential_1((v2 + 72), *(v2 + 96));
              v32 = sub_219BF3CE4();
              v33 = [v32 audioRefreshForceWakeRandomizationWindow];

              if ((v33 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v33)
              {
                sub_218A5DCD4(v33);
                sub_219BDBF34();
                v34 = v55;
                (*(v55 + 104))(v5, *MEMORY[0x277CC99A8], v3);
                sub_219BDBF04();
                (*(v34 + 8))(v5, v3);
                (*(v53 + 8))(v8, v54);
                v35 = v49;
                if ((*(v49 + 48))(v11, 1, v29) == 1)
                {
                  sub_2187103E0(v11, &qword_280EE9C40, MEMORY[0x277CC9578]);
                }

                else
                {
                  v36 = v52;
                  (*(v35 + 32))(v52, v11, v29);
                  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
                  v37 = sub_219BF6F74();
                  sub_2186DD4F8(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
                  v38 = swift_allocObject();
                  *(v38 + 16) = xmmword_219C09BA0;
                  sub_218758598(&qword_280EE9C60, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
                  v39 = sub_219BF7894();
                  v41 = v40;
                  *(v38 + 56) = MEMORY[0x277D837D0];
                  *(v38 + 64) = sub_2186FC3BC();
                  *(v38 + 32) = v39;
                  *(v38 + 40) = v41;
                  v42 = sub_219BF6214();
                  sub_219BE5314("AudioScheduledRefreshManager: scheduling content refresh for %{public}@", 71, 2, &dword_2186C1000, v37, v42, v38);

                  v43 = *(v2 + 160);
                  v44 = sub_219BDBC04();
                  v45 = v51;
                  sub_219BDBBF4();
                  v46 = sub_219BDBC04();
                  v47 = *(v35 + 8);
                  v47(v45, v29);
                  [v43 requestBackgroundAppRefreshStartingAfter:v44 before:v46];

                  v47(v36, v29);
                }

                return;
              }

              __break(1u);
              return;
            }

LABEL_23:
            sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
            v30 = sub_219BF6F74();
            v31 = sub_219BF6214();
            sub_219BE5314("AudioScheduledRefreshManager: not scheduling force-wake because the user is not a subscriber", 92, 2, &dword_2186C1000, v30, v31, MEMORY[0x277D84F90]);

            return;
          }
        }

        else
        {
          sub_218806FD0(&v60);
        }

        v29 = v50;
        if (v25)
        {
          goto LABEL_25;
        }

        goto LABEL_23;
      }
    }

    else
    {
      sub_218806FD0(&v60);
    }

    v23 = 0;
    v25 = 0;
    goto LABEL_14;
  }

  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v56 = sub_219BF6F74();
  v21 = sub_219BF6214();
  sub_219BE5314("AudioScheduledRefreshManager: not scheduling force-wake because it's disabled in the config", 91, 2, &dword_2186C1000, v56, v21, MEMORY[0x277D84F90]);
  v22 = v56;
}

uint64_t sub_218D337A8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_218D33810(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BE1B34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE2874();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  LODWORD(a1) = (*(v9 + 88))(v12, v8);
  v13 = *MEMORY[0x277D6CD50];
  result = (*(v9 + 8))(v12, v8);
  if (a1 == v13)
  {
    v16[3] = *__swift_project_boxed_opaque_existential_1((a2 + 32), *(a2 + 56));
    (*(v5 + 104))(v7, *MEMORY[0x277D6CA20], v4);
    v15 = off_282A71798;
    type metadata accessor for AudioFeedConfigManager();
    v15();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_218D33A4C(uint64_t a1, uint64_t a2)
{
  sub_2186DD4F8(0, &qword_280EE6BB0, MEMORY[0x277D6CD60], MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

double sub_218D33ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5[18];
  v8 = a5[19];
  __swift_project_boxed_opaque_existential_1(a5 + 15, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = *(v8 + 24);

  v10(sub_218D34158, v9, v7, v8);

  return result;
}

uint64_t sub_218D33B9C(void (*a1)(char *))
{
  v2 = sub_219BE2874();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277D6CD50], v2, v4);
  a1(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_218D33CC4()
{
  sub_219BE2874();
  sub_219BE3204();

  v0 = sub_219BE2E54();
  v1 = sub_219BE2F64();

  return v1;
}

uint64_t sub_218D33D98(uint64_t a1)
{
  sub_2186DD4F8(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_219BDBD34();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = [objc_opt_self() standardUserDefaults];
  if (v8 == 1)
  {
    v10 = sub_219BF53D4();
    [v9 removeObjectForKey_];
  }

  else
  {
    sub_2187D96F4(a1, v4);
    if (v7(v4, 1, v5) == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = sub_219BDBC04();
      (*(v6 + 8))(v4, v5);
    }

    v10 = sub_219BF53D4();
    [v9 setObject:v11 forKey:v10];

    swift_unknownObjectRelease();
  }

  return sub_2187103E0(a1, &qword_280EE9C40, MEMORY[0x277CC9578]);
}

uint64_t sub_218D34030()
{
  v0 = off_282A88848;
  type metadata accessor for AudioDataManager();
  return v0();
}

uint64_t sub_218D34168()
{
  v1 = [*(v0 + 32) possiblyUnfetchedAppConfiguration];
  if ([v1 respondsToSelector_])
  {
    v2 = [v1 paidBundleConfig];
    swift_unknownObjectRelease();
    sub_218BE55B8(0, &unk_280E8BA70, &type metadata for OfflineIssuePruningRule);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_219C10590;
    v4 = *(v0 + 16);
    *(v3 + 32) = 0;
    *(v3 + 40) = 0;
    *(v3 + 48) = v4;
    *(v3 + 56) = 0;
    *(v3 + 64) = 1;
    sub_218BE55B8(0, &qword_280E8BA10, &type metadata for OfflineIssuePruningCondition);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_219C09EC0;
    *(v5 + 32) = 2;
    *(v5 + 40) = v4;
    *(v5 + 48) = 0;
    *(v5 + 56) = 1;
    *(v5 + 72) = 0;
    *(v5 + 80) = 0;
    *(v5 + 64) = 0;
    *(v5 + 88) = 4;
    *(v3 + 72) = 0;
    *(v3 + 88) = 0;
    *(v3 + 96) = 0;
    *(v3 + 80) = v5;
    *(v3 + 104) = 2;
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_219C09EC0;
    *(v6 + 32) = 1;
    *(v6 + 40) = v4;
    *(v6 + 48) = 0;
    *(v6 + 56) = 1;
    v7 = v4;
    v8 = [v2 normalStorageManualIssueDownloadTTL];
    v9 = *(v0 + 24);
    *(v6 + 64) = v8;
    *(v6 + 72) = v9;
    *(v6 + 80) = v4;
    *(v6 + 88) = 0;
    *(v3 + 112) = 0;
    *(v3 + 128) = 0;
    *(v3 + 136) = 0;
    *(v3 + 120) = v6;
    *(v3 + 144) = 2;
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09EC0;
    *(v10 + 32) = 2;
    *(v10 + 40) = v4;
    *(v10 + 48) = 0;
    *(v10 + 56) = 1;
    swift_unknownObjectRetain_n();
    v11 = v7;
    *(v10 + 64) = [v2 normalStorageAutomaticIssueDownloadTTL];
    *(v10 + 72) = v9;
    *(v10 + 80) = v4;
    *(v10 + 88) = 0;
    *(v3 + 152) = 0;
    *(v3 + 168) = 0;
    *(v3 + 176) = 0;
    *(v3 + 160) = v10;
    *(v3 + 184) = 2;
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_219C09EC0;
    *(v12 + 32) = 1;
    *(v12 + 40) = v4;
    *(v12 + 48) = 0;
    *(v12 + 56) = 1;
    v13 = v11;
    swift_unknownObjectRetain();
    *(v12 + 64) = [v2 lowStorageManualIssueDownloadTTL];
    *(v12 + 72) = v9;
    *(v12 + 80) = v4;
    *(v12 + 88) = 0;
    *(v3 + 192) = 1;
    *(v3 + 208) = 0;
    *(v3 + 216) = 0;
    *(v3 + 200) = v12;
    *(v3 + 224) = 2;
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09EC0;
    *(v14 + 32) = 2;
    *(v14 + 40) = v4;
    *(v14 + 48) = 0;
    *(v14 + 56) = 1;
    v15 = v13;
    swift_unknownObjectRetain();
    *(v14 + 64) = [v2 lowStorageAutomaticIssueDownloadTTL];
    *(v14 + 72) = v9;
    *(v14 + 80) = v4;
    *(v14 + 88) = 0;
    *(v3 + 232) = 1;
    *(v3 + 248) = 0;
    *(v3 + 256) = 0;
    *(v3 + 240) = v14;
    *(v3 + 264) = 2;
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09EC0;
    *(v16 + 32) = 1;
    *(v16 + 40) = v4;
    *(v16 + 48) = 0;
    *(v16 + 56) = 1;
    v17 = v15;
    swift_unknownObjectRetain();
    *(v16 + 64) = [v2 criticalStorageManualIssueDownloadTTL];
    *(v16 + 72) = v9;
    *(v16 + 80) = v4;
    *(v16 + 88) = 0;
    *(v3 + 272) = 2;
    *(v3 + 288) = 0;
    *(v3 + 296) = 0;
    *(v3 + 280) = v16;
    *(v3 + 304) = 2;
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_219C09EC0;
    *(v18 + 32) = 2;
    *(v18 + 40) = v4;
    *(v18 + 48) = 0;
    *(v18 + 56) = 1;
    *(v18 + 64) = [v2 criticalStorageAutomaticIssueDownloadTTL];
    *(v18 + 72) = v9;
    *(v18 + 80) = v4;
    *(v18 + 88) = 0;
    *(v3 + 312) = 2;
    *(v3 + 328) = 0;
    *(v3 + 336) = 0;
    *(v3 + 320) = v18;
    *(v3 + 344) = 2;

    return v3;
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_218D34578@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v93 = a3;
  v95 = a4;
  sub_218D35764(0, &qword_27CC11648, MEMORY[0x277D2E920]);
  MEMORY[0x28223BE20](v6 - 8);
  v92 = &v86 - v7;
  sub_218D35764(0, &qword_27CC11650, MEMORY[0x277D2E430]);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v86 - v9;
  sub_218D35764(0, &qword_27CC11658, MEMORY[0x277D2EF60]);
  MEMORY[0x28223BE20](v10 - 8);
  v98 = &v86 - v11;
  sub_218D35764(0, &unk_27CC11660, MEMORY[0x277D2E118]);
  MEMORY[0x28223BE20](v12 - 8);
  v97 = &v86 - v13;
  v14 = sub_219BDFDA4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UserNotification.ArticleData(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = (&v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for UserNotification.Kind(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BE1144();
  v94 = *(v96 - 8);
  *&v24 = MEMORY[0x28223BE20](v96).n128_u64[0];
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = [a1 notification];
  v28 = [v27 request];

  v29 = [v28 content];
  [v29 interruptionLevel];

  v30 = v26;
  sub_219BE1154();
  sub_218A7A6E8(a2 + OBJC_IVAR____TtC7NewsUI216UserNotification_kind, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v90 = *(v23 + 1);

        v76 = v97;
        (*(v15 + 104))(v97, *MEMORY[0x277D2E0F0], v14);
        (*(v15 + 56))(v76, 0, 1, v14);
        v77 = v94;
        v78 = v98;
        v79 = v96;
        (*(v94 + 16))(v98, v30, v96);
        (*(v77 + 56))(v78, 0, 1, v79);
        v80 = sub_219BE0284();
        (*(*(v80 - 8) + 56))(v91, 1, 1, v80);
        v81 = sub_219BE0954();
        (*(*(v81 - 8) + 56))(v92, 1, 1, v81);
        sub_219BDFD84();
        return (*(v77 + 8))(v30, v79);
      }

      sub_218D3599C(v23, type metadata accessor for UserNotification.Kind);
    }

    else
    {
      if (EnumCaseMultiPayload == 6)
      {
        v57 = MEMORY[0x277D2E0E0];
        goto LABEL_23;
      }

      if (EnumCaseMultiPayload == 7)
      {
        v32 = *(a2 + OBJC_IVAR____TtC7NewsUI216UserNotification_payload);
        if (v32)
        {
          v99 = 7565409;
          v100 = 0xE300000000000000;
          sub_219BF72A4();
          if (*(v32 + 16))
          {
            v33 = sub_21931EECC(&v101);
            if (v34)
            {
              sub_2186D1230(*(v32 + 56) + 32 * v33, &v102);
              sub_218B6B67C(&v101);
              v35 = v96;
              if (*(&v103 + 1))
              {
                sub_2187AC8F4();
                v36 = swift_dynamicCast();
                v37 = v94;
                v38 = v92;
                if (v36)
                {
                  v39 = v101;
                  *&v102 = 6580575;
                  *(&v102 + 1) = 0xE300000000000000;
                  sub_219BF72A4();
                  if (*(v39 + 16))
                  {
                    v40 = sub_21931EECC(&v101);
                    if (v41)
                    {
                      sub_2186D1230(*(v39 + 56) + 32 * v40, &v102);
                      sub_218B6B67C(&v101);

                      if (*(&v103 + 1))
                      {
                        swift_dynamicCast();
LABEL_32:
                        v82 = v97;
                        (*(v15 + 104))(v97, *MEMORY[0x277D2E110], v14);
                        (*(v15 + 56))(v82, 0, 1, v14);
                        v83 = v98;
                        (*(v37 + 16))(v98, v26, v35);
                        (*(v37 + 56))(v83, 0, 1, v35);
                        v84 = sub_219BE0284();
                        (*(*(v84 - 8) + 56))(v91, 1, 1, v84);
                        v85 = sub_219BE0954();
                        (*(*(v85 - 8) + 56))(v38, 1, 1, v85);
                        sub_219BDFD84();
                        return (*(v37 + 8))(v26, v35);
                      }

LABEL_31:
                      sub_218D3599C(&v102, sub_21880702C);
                      goto LABEL_32;
                    }
                  }

                  sub_218B6B67C(&v101);
                }

LABEL_30:
                v102 = 0u;
                v103 = 0u;
                goto LABEL_31;
              }

LABEL_29:
              sub_218D3599C(&v102, sub_21880702C);
              v37 = v94;
              v38 = v92;
              goto LABEL_30;
            }
          }

          sub_218B6B67C(&v101);
        }

        v102 = 0u;
        v103 = 0u;
        v35 = v96;
        goto LABEL_29;
      }
    }

    MEMORY[0x21CEB8D80]("asked to make analytics data from unknown notification type", 59, 2, MEMORY[0x277D84F90]);
    v57 = MEMORY[0x277D2E0F0];
LABEL_23:
    v58 = v97;
    (*(v15 + 104))(v97, *v57, v14);
    (*(v15 + 56))(v58, 0, 1, v14);
    v59 = v94;
    v60 = v98;
    v61 = v96;
    (*(v94 + 16))(v98, v26, v96);
    (*(v59 + 56))(v60, 0, 1, v61);
    v62 = sub_219BE0284();
    (*(*(v62 - 8) + 56))(v91, 1, 1, v62);
    v63 = sub_219BE0954();
    (*(*(v63 - 8) + 56))(v92, 1, 1, v63);
    sub_219BDFD84();
    return (*(v59 + 8))(v26, v61);
  }

  if (EnumCaseMultiPayload > 1)
  {
    v51 = v96;
    v52 = v97;
    if (EnumCaseMultiPayload == 2)
    {
      (*(v15 + 104))(v97, *MEMORY[0x277D2E100], v14);
      (*(v15 + 56))(v52, 0, 1, v14);
      v53 = v94;
      v54 = v98;
      (*(v94 + 16))(v98, v30, v51);
      (*(v53 + 56))(v54, 0, 1, v51);
      v55 = sub_219BE0284();
      (*(*(v55 - 8) + 56))(v91, 1, 1, v55);
      v56 = sub_219BE0954();
      (*(*(v56 - 8) + 56))(v92, 1, 1, v56);
      sub_219BDFD84();
      (*(v53 + 8))(v30, v51);
      return sub_218D3599C(v23, type metadata accessor for UserNotification.IssueData);
    }

    else
    {
      (*(v15 + 104))(v97, *MEMORY[0x277D2E0D8], v14);
      (*(v15 + 56))(v52, 0, 1, v14);
      v72 = v94;
      v73 = v98;
      (*(v94 + 16))(v98, v26, v51);
      (*(v72 + 56))(v73, 0, 1, v51);
      v74 = sub_219BE0284();
      (*(*(v74 - 8) + 56))(v91, 1, 1, v74);
      v75 = sub_219BE0954();
      (*(*(v75 - 8) + 56))(v92, 1, 1, v75);
      sub_219BDFD84();
      return (*(v72 + 8))(v26, v51);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_2187ACC2C(0);
    v90 = *&v23[*(v64 + 48)];
    v65 = v97;
    (*(v15 + 104))(v97, *MEMORY[0x277D2E108], v14);
    (*(v15 + 56))(v65, 0, 1, v14);
    v66 = v94;
    v67 = v98;
    v68 = v96;
    (*(v94 + 16))(v98, v26, v96);
    (*(v66 + 56))(v67, 0, 1, v68);
    v69 = sub_219BE0284();
    (*(*(v69 - 8) + 56))(v91, 1, 1, v69);
    v70 = sub_219BE0954();
    (*(*(v70 - 8) + 56))(v92, 1, 1, v70);
    sub_219BDFD84();
    (*(v66 + 8))(v26, v68);
    v71 = sub_219BDB954();
    return (*(*(v71 - 8) + 8))(v23, v71);
  }

  else
  {
    sub_218A7A74C(v23, v20);
    sub_218D357B8(v20, v17);
    v89 = v20[2];
    v88 = v20[4];
    v90 = *v20;
    v42 = v26;
    v87 = v26;
    v43 = v97;
    (*(v15 + 16))(v97, v17, v14);
    (*(v15 + 56))(v43, 0, 1, v14);
    v44 = v94;
    v45 = v98;
    v46 = v42;
    v47 = v96;
    (*(v94 + 16))(v98, v46, v96);
    (*(v44 + 56))(v45, 0, 1, v47);
    v48 = sub_219BE0284();
    (*(*(v48 - 8) + 56))(v91, 1, 1, v48);
    v49 = sub_219BE0954();
    (*(*(v49 - 8) + 56))(v92, 1, 1, v49);

    swift_bridgeObjectRetain_n();
    sub_219BDFD84();
    (*(v15 + 8))(v17, v14);
    sub_218D3599C(v20, type metadata accessor for UserNotification.ArticleData);
    return (*(v44 + 8))(v87, v96);
  }
}

void sub_218D35764(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_218D357B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for UserNotification.ArticleData(0) + 40));
  *&v14 = sub_219BF5414();
  *(&v14 + 1) = v4;
  sub_219BF72A4();
  if (*(v3 + 16) && (v5 = sub_21931EECC(v16), (v6 & 1) != 0))
  {
    sub_2186D1230(*(v3 + 56) + 32 * v5, &v14);
    sub_218B6B67C(v16);
    sub_218D3599C(&v14, sub_21880702C);
    v7 = MEMORY[0x277D2E0F8];
  }

  else
  {
    sub_218B6B67C(v16);
    v14 = 0u;
    v15 = 0u;
    sub_218D3599C(&v14, sub_21880702C);
    *&v14 = sub_219BF5414();
    *(&v14 + 1) = v8;
    sub_219BF72A4();
    if (*(v3 + 16) && (v9 = sub_21931EECC(v16), (v10 & 1) != 0))
    {
      sub_2186D1230(*(v3 + 56) + 32 * v9, &v14);
      sub_218B6B67C(v16);
      sub_218D3599C(&v14, sub_21880702C);
      v7 = MEMORY[0x277D2E0D0];
    }

    else
    {
      sub_218B6B67C(v16);
      v14 = 0u;
      v15 = 0u;
      sub_218D3599C(&v14, sub_21880702C);
      v7 = MEMORY[0x277D2E0E8];
    }
  }

  v11 = *v7;
  v12 = sub_219BDFDA4();
  return (*(*(v12 - 8) + 104))(a2, v11, v12);
}

uint64_t sub_218D3599C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218D35A0C(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = [*(a1 + 16) name];
  v6 = sub_219BF5414();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_219BF5454();

  return v9;
}

uint64_t sub_218D35B68(uint64_t a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_2186F20D4(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  v5 = [*(a1 + 16) name];
  v6 = sub_219BF5414();
  v8 = v7;

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_219BF5454();

  return v9;
}