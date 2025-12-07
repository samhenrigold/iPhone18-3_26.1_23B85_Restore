uint64_t sub_1E467B4F4()
{
  v1 = 1818324839;
  if (*v0 != 1)
  {
    v1 = 0x6B61657274537369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x54676E6964616572;
  }
}

uint64_t sub_1E467B558@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E46811EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E467B580(uint64_t a1)
{
  v2 = sub_1E467B7B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E467B5BC(uint64_t a1)
{
  v2 = sub_1E467B7B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReadingHistory.Day.encode(to:)(void *a1)
{
  v4 = sub_1E4650534(&qword_1ECF74A40, &qword_1E471C950);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v10 - v7;
  v10[1] = *(v1 + 8);
  v11 = *(v1 + 16);
  sub_1E465057C(a1, a1[3]);
  sub_1E467B7B0();
  sub_1E470B93C();
  v14 = 0;
  sub_1E470B7EC();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v13 = 1;
  sub_1E470B7EC();
  v12 = 2;
  sub_1E470B7CC();
  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1E467B7B0()
{
  result = qword_1ECF74A48;
  if (!qword_1ECF74A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74A48);
  }

  return result;
}

uint64_t ReadingHistory.Day.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E4650534(&qword_1ECF74A50, &qword_1E471C958);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - v8;
  sub_1E465057C(a1, a1[3]);
  sub_1E467B7B0();
  sub_1E470B92C();
  if (!v2)
  {
    v18 = 0;
    v10 = sub_1E470B77C();
    v17 = 1;
    v15 = sub_1E470B77C();
    v16 = 2;
    v12 = sub_1E470B75C();
    (*(v6 + 8))(v9, v5);
    v13 = v15;
    *a2 = v10;
    *(a2 + 8) = v13;
    *(a2 + 16) = v12 & 1;
  }

  return sub_1E4658A0C(a1);
}

uint64_t sub_1E467B9D4(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t ReadingHistory.DayEntry.date.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ReadingHistory.DayEntry.date.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 ReadingHistory.DayEntry.day.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 ReadingHistory.DayEntry.day.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

uint64_t ReadingHistory.DayEntry.description.getter()
{
  MEMORY[0x1E6915D10](*v0, v0[1]);
  MEMORY[0x1E6915D10](8250, 0xE200000000000000);
  v1 = ReadingHistory.Day.description.getter();
  MEMORY[0x1E6915D10](v1);

  MEMORY[0x1E6915D10](125, 0xE100000000000000);
  return 123;
}

void __swiftcall ReadingHistory.DayEntry.init(date:day:)(BookDataStore::ReadingHistory::DayEntry *__return_ptr retstr, Swift::String date, BookDataStore::ReadingHistory::Day day)
{
  v3 = *(day.readingTime + 16);
  retstr->date = date;
  *&retstr->day.readingTime = *day.readingTime;
  retstr->day.isStreakDay = v3;
}

uint64_t sub_1E467BBB8()
{
  if (*v0)
  {
    return 7954788;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1E467BBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E470B84C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E470B84C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E467BCC0(uint64_t a1)
{
  v2 = sub_1E467FDFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E467BCFC(uint64_t a1)
{
  v2 = sub_1E467FDFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReadingHistory.DayEntry.encode(to:)(void *a1)
{
  v4 = sub_1E4650534(&qword_1ECF74A58, &qword_1E471C960);
  v12 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - v6;
  v8 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = v8;
  v16 = *(v1 + 32);
  sub_1E465057C(a1, a1[3]);
  sub_1E467FDFC();
  sub_1E470B93C();
  LOBYTE(v13) = 0;
  sub_1E470B7BC();
  if (!v2)
  {
    v13 = v11;
    v14 = v10;
    v15 = v16;
    v17 = 1;
    sub_1E467FE50();
    sub_1E470B7FC();
  }

  return (*(v12 + 8))(v7, v4);
}

uint64_t ReadingHistory.DayEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E4650534(&qword_1ECF74A70, &qword_1E471C968);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v17 - v8;
  sub_1E465057C(a1, a1[3]);
  sub_1E467FDFC();
  sub_1E470B92C();
  if (v2)
  {
    return sub_1E4658A0C(a1);
  }

  LOBYTE(v17) = 0;
  v10 = sub_1E470B74C();
  v12 = v11;
  v13 = v10;
  v19 = 1;
  sub_1E467FEA4();
  sub_1E470B78C();
  (*(v6 + 8))(v9, v5);
  v14 = v18;
  v15 = v17;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v15;
  *(a2 + 32) = v14;

  sub_1E4658A0C(a1);
}

uint64_t ReadingHistory.Streak.description.getter()
{
  sub_1E470B5CC();

  sub_1E4709CCC();
  sub_1E467FF4C(&qword_1ECF741E0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v0 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v0);

  MEMORY[0x1E6915D10](0x6874676E656C202CLL, 0xE90000000000003ALL);
  type metadata accessor for ReadingHistory.Streak(0);
  v1 = sub_1E470B81C();
  MEMORY[0x1E6915D10](v1);

  MEMORY[0x1E6915D10](125, 0xE100000000000000);
  return 0x65746144646E657BLL;
}

uint64_t ReadingHistory.Streak.init(endDate:length:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E4709CCC();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ReadingHistory.Streak(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

BOOL static ReadingHistory.Streak.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1E4709C8C() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ReadingHistory.Streak(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1E467C340()
{
  if (*v0)
  {
    return 0x6874676E656CLL;
  }

  else
  {
    return 0x65746144646E65;
  }
}

uint64_t sub_1E467C378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746144646E65 && a2 == 0xE700000000000000;
  if (v6 || (sub_1E470B84C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E470B84C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E467C450(uint64_t a1)
{
  v2 = sub_1E467FEF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E467C48C(uint64_t a1)
{
  v2 = sub_1E467FEF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReadingHistory.Streak.encode(to:)(void *a1)
{
  v3 = sub_1E4650534(&qword_1ECF74A80, &qword_1E471C970);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9[-v6];
  sub_1E465057C(a1, a1[3]);
  sub_1E467FEF8();
  sub_1E470B93C();
  v9[15] = 0;
  sub_1E4709CCC();
  sub_1E467FF4C(&qword_1ECF74180, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1E470B7FC();
  if (!v1)
  {
    type metadata accessor for ReadingHistory.Streak(0);
    v9[14] = 1;
    sub_1E470B7EC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ReadingHistory.Streak.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1E4709CCC();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E4650534(&qword_1ECF74A90, &qword_1E471C978);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for ReadingHistory.Streak(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E465057C(a1, a1[3]);
  sub_1E467FEF8();
  sub_1E470B92C();
  if (v2)
  {
    return sub_1E4658A0C(a1);
  }

  v22 = v14;
  v15 = v24;
  v16 = v25;
  v29 = 0;
  sub_1E467FF4C(&qword_1ECF741A0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v17 = v26;
  sub_1E470B78C();
  (*(v16 + 32))(v22, v7, v17);
  v28 = 1;
  v18 = sub_1E470B77C();
  (*(v15 + 8))(v10, v27);
  v20 = v22;
  v19 = v23;
  *&v22[*(v11 + 20)] = v18;
  sub_1E46802A0(v20, v19, type metadata accessor for ReadingHistory.Streak);
  sub_1E4658A0C(a1);
  return sub_1E4680308(v20, type metadata accessor for ReadingHistory.Streak);
}

uint64_t ReadingHistory.State.longestStreak.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.State(0) + 20);

  return sub_1E467FF94(v3, a1);
}

uint64_t ReadingHistory.State.longestStreak.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReadingHistory.State(0) + 20);

  return sub_1E4680004(a1, v3);
}

__n128 ReadingHistory.State.today.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ReadingHistory.State(0) + 24));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  return result;
}

uint64_t ReadingHistory.State.today.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = type metadata accessor for ReadingHistory.State(0);
  v6 = v1 + *(result + 24);
  *v6 = v2;
  *(v6 + 8) = v3;
  *(v6 + 16) = v4;
  return result;
}

double ReadingHistory.State.readingHistory.getter()
{
  type metadata accessor for ReadingHistory.State(0);

  return result;
}

uint64_t ReadingHistory.State.readingHistory.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ReadingHistory.State(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ReadingHistory.State.description.getter()
{
  v1 = v0;
  v2 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v44 - v4;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1E471C940;
  v54 = *v0;
  sub_1E4680074();
  v7 = sub_1E470B4AC();
  v9 = v8;
  v10 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1E4663DE4();
  *(v6 + 64) = v11;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  v12 = type metadata accessor for ReadingHistory.State(0);
  sub_1E467FF94(v1 + v12[5], v5);
  v13 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v13 - 8) + 48))(v5, 1, v13) == 1)
  {
    sub_1E465E050(v5, &qword_1ECF74C40, &unk_1E471C980);
    v14 = (v6 + 72);
    *(v6 + 96) = v10;
    *(v6 + 104) = v11;
  }

  else
  {
    v15 = ReadingHistory.Streak.description.getter();
    v17 = v16;
    sub_1E4680308(v5, type metadata accessor for ReadingHistory.Streak);
    v14 = (v6 + 72);
    *(v6 + 96) = v10;
    *(v6 + 104) = v11;
    if (v17)
    {
      *v14 = v15;
      goto LABEL_6;
    }
  }

  *v14 = 7104878;
  v17 = 0xE300000000000000;
LABEL_6:
  *(v6 + 80) = v17;
  v18 = v1 + v12[6];
  v19 = v18[16];
  v52 = *v18;
  v53 = v19;
  v20 = ReadingHistory.Day.description.getter();
  *(v6 + 136) = v10;
  *(v6 + 144) = v11;
  *(v6 + 112) = v20;
  *(v6 + 120) = v21;
  v22 = *(v1 + v12[7]);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v44 = v11;
    v45 = v6;
    v51 = MEMORY[0x1E69E7CC0];
    sub_1E467F200(0, v23, 0);
    v24 = v51;
    v25 = (v22 + 64);
    do
    {
      v26 = *(v25 - 4);
      v27 = *(v25 - 3);
      v28 = *(v25 - 2);
      v29 = *(v25 - 1);
      v30 = *v25;
      v49 = 123;
      v50 = 0xE100000000000000;

      MEMORY[0x1E6915D10](v26, v27);
      MEMORY[0x1E6915D10](8250, 0xE200000000000000);
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_1E470B5CC();

      v46 = v28;
      v47 = 0x3A656D69747BLL;
      v48 = 0xE600000000000000;
      v31 = sub_1E470B81C();
      MEMORY[0x1E6915D10](v31);

      MEMORY[0x1E6915D10](0x3A6C616F67202CLL, 0xE700000000000000);
      v46 = v29;
      v32 = sub_1E470B81C();
      MEMORY[0x1E6915D10](v32);

      MEMORY[0x1E6915D10](0x6B6165727473202CLL, 0xE90000000000003ALL);
      if (v30)
      {
        v33 = 1702195828;
      }

      else
      {
        v33 = 0x65736C6166;
      }

      if (v30)
      {
        v34 = 0xE400000000000000;
      }

      else
      {
        v34 = 0xE500000000000000;
      }

      MEMORY[0x1E6915D10](v33, v34);

      MEMORY[0x1E6915D10](125, 0xE100000000000000);
      MEMORY[0x1E6915D10](v47, v48);

      MEMORY[0x1E6915D10](125, 0xE100000000000000);

      v35 = v49;
      v36 = v50;
      v51 = v24;
      v38 = *(v24 + 16);
      v37 = *(v24 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1E467F200((v37 > 1), v38 + 1, 1);
        v24 = v51;
      }

      *(v24 + 16) = v38 + 1;
      v39 = v24 + 16 * v38;
      *(v39 + 32) = v35;
      *(v39 + 40) = v36;
      v25 += 40;
      --v23;
    }

    while (v23);
    v11 = v44;
    v6 = v45;
    v10 = MEMORY[0x1E69E6158];
  }

  v49 = v24;
  sub_1E4650534(&qword_1ECF74AA0, &qword_1E471C990);
  sub_1E46800C8();
  v40 = sub_1E470AEDC();
  v42 = v41;

  *(v6 + 176) = v10;
  *(v6 + 184) = v11;
  *(v6 + 152) = v40;
  *(v6 + 160) = v42;
  return sub_1E470AF3C();
}

uint64_t ReadingHistory.State.init(currentStreak:longestStreak:today:readingHistory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 16);
  v12 = type metadata accessor for ReadingHistory.State(0);
  v13 = v12[5];
  v14 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v14 - 8) + 56))(&a5[v13], 1, 1, v14);
  *a5 = a1;
  result = sub_1E4680004(a2, &a5[v13]);
  v16 = &a5[v12[6]];
  *v16 = v9;
  *(v16 + 1) = v10;
  v16[16] = v11;
  *&a5[v12[7]] = a4;
  return result;
}

uint64_t sub_1E467D230()
{
  v1 = 0x53746E6572727563;
  v2 = 0x7961646F74;
  if (*v0 != 2)
  {
    v2 = 0x48676E6964616572;
  }

  if (*v0)
  {
    v1 = 0x53747365676E6F6CLL;
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

uint64_t sub_1E467D2BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E468130C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E467D2F0(uint64_t a1)
{
  v2 = sub_1E468012C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E467D32C(uint64_t a1)
{
  v2 = sub_1E468012C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReadingHistory.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1E4650534(&qword_1ECF74AA8, &qword_1E471C998);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v14 - v8;
  sub_1E465057C(a1, a1[3]);
  sub_1E468012C();
  sub_1E470B93C();
  LOBYTE(v16) = 0;
  sub_1E470B7EC();
  if (!v2)
  {
    v10 = type metadata accessor for ReadingHistory.State(0);
    LOBYTE(v16) = 1;
    type metadata accessor for ReadingHistory.Streak(0);
    sub_1E467FF4C(&qword_1ECF74AB8, type metadata accessor for ReadingHistory.Streak, &protocol conformance descriptor for ReadingHistory.Streak);
    sub_1E470B7AC();
    v11 = (v3 + *(v10 + 24));
    v12 = *(v11 + 16);
    v16 = *v11;
    v17 = v12;
    v15 = 2;
    sub_1E467FE50();
    sub_1E470B7FC();
    *&v16 = *(v3 + *(v10 + 28));
    v15 = 3;
    sub_1E4650534(&qword_1ECF74AC0, &qword_1E471C9A0);
    sub_1E46801D4(&qword_1ECF74AC8, sub_1E4680180, MEMORY[0x1E69E6300]);
    sub_1E470B7FC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ReadingHistory.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v28 = &v24 - v5;
  v30 = sub_1E4650534(&qword_1ECF74AD8, &qword_1E471C9A8);
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30, v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ReadingHistory.State(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v13 + 20);
  v15 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v15 - 8) + 56))(v12 + v14, 1, 1, v15);
  sub_1E465057C(a1, a1[3]);
  sub_1E468012C();
  v29 = v8;
  v16 = v31;
  sub_1E470B92C();
  if (v16)
  {
    sub_1E4658A0C(a1);
    return sub_1E465E050(v12 + v14, &qword_1ECF74C40, &unk_1E471C980);
  }

  else
  {
    v25 = a1;
    v31 = v14;
    v17 = v27;
    v18 = v28;
    LOBYTE(v32) = 0;
    v19 = v29;
    v20 = v30;
    *v12 = sub_1E470B77C();
    LOBYTE(v32) = 1;
    sub_1E467FF4C(&qword_1ECF74AE0, type metadata accessor for ReadingHistory.Streak, &protocol conformance descriptor for ReadingHistory.Streak);
    sub_1E470B73C();
    sub_1E4680004(v18, v12 + v31);
    v34 = 2;
    sub_1E467FEA4();
    sub_1E470B78C();
    v21 = v33;
    v22 = v12 + *(v9 + 24);
    *v22 = v32;
    v22[16] = v21;
    sub_1E4650534(&qword_1ECF74AC0, &qword_1E471C9A0);
    v34 = 3;
    sub_1E46801D4(&qword_1ECF74AE8, sub_1E468024C, MEMORY[0x1E69E6330]);
    sub_1E470B78C();
    (*(v17 + 8))(v19, v20);
    *(v12 + *(v9 + 28)) = v32;
    sub_1E46802A0(v12, v26, type metadata accessor for ReadingHistory.State);
    sub_1E4658A0C(v25);
    return sub_1E4680308(v12, type metadata accessor for ReadingHistory.State);
  }
}

uint64_t sub_1E467DA90(uint64_t a1)
{
  v2 = sub_1E4680368();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E467DACC(uint64_t a1)
{
  v2 = sub_1E4680368();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E467DB94@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4709CCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReadingHistory.Notification.AddFakeSession.init(date:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1E4709CCC();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for ReadingHistory.Notification.AddFakeSession(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_1E467DC9C()
{
  if (*v0)
  {
    return 0x6E6F697461727564;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1E467DCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E470B84C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E470B84C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1E467DDAC(uint64_t a1)
{
  v2 = sub_1E46803DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E467DDE8(uint64_t a1)
{
  v2 = sub_1E46803DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ReadingHistory.Notification.AddFakeSession.encode(to:)(void *a1)
{
  v3 = sub_1E4650534(&qword_1ECF74B08, &qword_1E471C9B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v9[-v6];
  sub_1E465057C(a1, a1[3]);
  sub_1E46803DC();
  sub_1E470B93C();
  v9[15] = 0;
  sub_1E4709CCC();
  sub_1E467FF4C(&qword_1ECF74180, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1E470B7FC();
  if (!v1)
  {
    type metadata accessor for ReadingHistory.Notification.AddFakeSession(0);
    v9[14] = 1;
    sub_1E470B7DC();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ReadingHistory.Notification.AddFakeSession.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1E4709CCC();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E4650534(&qword_1ECF74B18, &qword_1E471C9C0);
  v26 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ReadingHistory.Notification.AddFakeSession(0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E465057C(a1, a1[3]);
  sub_1E46803DC();
  sub_1E470B92C();
  if (v2)
  {
    return sub_1E4658A0C(a1);
  }

  v24 = v14;
  v15 = v26;
  v16 = v27;
  v31 = 0;
  sub_1E467FF4C(&qword_1ECF741A0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v17 = v28;
  sub_1E470B78C();
  (*(v16 + 32))(v24, v7, v17);
  v30 = 1;
  sub_1E470B76C();
  v19 = v18;
  (*(v15 + 8))(v10, v29);
  v21 = v24;
  v20 = v25;
  *&v24[*(v11 + 20)] = v19;
  sub_1E46802A0(v21, v20, type metadata accessor for ReadingHistory.Notification.AddFakeSession);
  sub_1E4658A0C(a1);
  return sub_1E4680308(v21, type metadata accessor for ReadingHistory.Notification.AddFakeSession);
}

uint64_t sub_1E467E35C(uint64_t a1)
{
  v2 = sub_1E4680430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E467E398(uint64_t a1)
{
  v2 = sub_1E4680430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E467E418(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = sub_1E4650534(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - v10;
  sub_1E465057C(a1, a1[3]);
  a4();
  sub_1E470B93C();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1E467E5A4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_1E4650534(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v15 - v12;
  sub_1E465057C(a1, a1[3]);
  a6();
  sub_1E470B93C();
  return (*(v10 + 8))(v13, v9);
}

BDSReadingHistoryDayInfo __swiftcall ReadingHistory.Day.toInfo()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = objc_allocWithZone(BDSReadingHistoryDayInfo);

  v5 = [v4 initWithReadingTime:v1 goal:v2 isStreakDay:v3];
  result._goal = v8;
  result._readingTime = v7;
  result.super.isa = v5;
  result._isStreakDay = v6;
  return result;
}

id static ReadingHistory.Day.from(info:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 readingTime];
  v5 = [a1 goal];
  result = [a1 isStreakDay];
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = result;
  return result;
}

BDSReadingHistoryDayEntryInfo __swiftcall ReadingHistory.DayEntry.toInfo()()
{
  v1 = [objc_allocWithZone(BDSReadingHistoryDayInfo) initWithReadingTime:*(v0 + 16) goal:*(v0 + 24) isStreakDay:*(v0 + 32)];
  v2 = objc_allocWithZone(BDSReadingHistoryDayEntryInfo);
  v3 = sub_1E470AF0C();
  v4 = [v2 initWithDate:v3 day:v1];

  v7 = v4;
  result._day = v6;
  result._date = v5;
  result.super.isa = v7;
  return result;
}

void static ReadingHistory.DayEntry.from(info:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 date];
  v5 = sub_1E470AF1C();
  v7 = v6;

  v8 = [a1 day];
  v9 = [v8 readingTime];
  v10 = [v8 goal];
  v11 = [v8 isStreakDay];

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
}

BDSReadingHistoryStreakInfo __swiftcall ReadingHistory.Streak.toInfo()()
{
  v1 = *(v0 + *(type metadata accessor for ReadingHistory.Streak(0) + 20));
  v2 = objc_allocWithZone(BDSReadingHistoryStreakInfo);
  v3 = sub_1E4709C5C();
  v4 = [v2 initWithEndDate:v3 length:v1];

  v7 = v4;
  result._length = v6;
  result._endDate = v5;
  result.super.isa = v7;
  return result;
}

uint64_t static ReadingHistory.Streak.from(info:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 endDate];
  sub_1E4709C9C();

  v5 = [a1 length];
  result = type metadata accessor for ReadingHistory.Streak(0);
  *(a2 + *(result + 20)) = v5;
  return result;
}

void __swiftcall ReadingHistory.State.toInfo()(BDSReadingHistoryStateInfo *__return_ptr retstr)
{
  v2 = v1;
  v3 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v32 - v5;
  v7 = *v2;
  v8 = type metadata accessor for ReadingHistory.State(0);
  sub_1E467FF94(v2 + v8[5], v6);
  v9 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v9 - 8) + 48))(v6, 1, v9) == 1)
  {
    sub_1E465E050(v6, &qword_1ECF74C40, &unk_1E471C980);
    v10 = 0;
  }

  else
  {
    v11 = *&v6[*(v9 + 20)];
    v12 = objc_allocWithZone(BDSReadingHistoryStreakInfo);
    v13 = sub_1E4709C5C();
    v10 = [v12 initWithEndDate:v13 length:v11];

    sub_1E4680308(v6, type metadata accessor for ReadingHistory.Streak);
  }

  v14 = v2 + v8[6];
  v15 = 0x1E8758000uLL;
  v16 = [objc_allocWithZone(BDSReadingHistoryDayInfo) initWithReadingTime:*v14 goal:*(v14 + 1) isStreakDay:v14[16]];
  v17 = v16;
  v18 = *(v2 + v8[7]);
  v19 = *(v18 + 16);
  if (v19)
  {
    v32 = v16;
    v33 = v10;
    v34 = v7;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1E470B63C();
    v20 = (v18 + 64);
    do
    {
      v21 = *(v20 - 2);
      v22 = *(v20 - 1);
      v23 = *v20;
      v20 += 40;
      v24 = v15;
      v25 = objc_allocWithZone(*(v15 + 3320));

      v26 = v25;
      v15 = v24;
      v27 = [v26 &selRef:v21 dataManager:v22 didInsertNewRecords:v23 + 4];
      v28 = objc_allocWithZone(BDSReadingHistoryDayEntryInfo);
      v29 = sub_1E470AF0C();
      [v28 initWithDate:v29 day:v27];

      sub_1E470B61C();
      sub_1E470B64C();
      sub_1E470B65C();
      sub_1E470B62C();
      --v19;
    }

    while (v19);
    v7 = v34;
    v17 = v32;
    v10 = v33;
  }

  v30 = objc_allocWithZone(BDSReadingHistoryStateInfo);
  sub_1E4680484();
  v31 = sub_1E470B0AC();

  [v30 initWithCurrentStreak:v7 longestStreak:v10 today:v17 readingHistory:v31];
}

uint64_t static ReadingHistory.State.from(info:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v8 = &v44 - v7;
  v9 = [a1 currentStreak];
  v10 = [a1 longestStreak];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 endDate];
    sub_1E4709C9C();

    v13 = [v11 length];
    v14 = type metadata accessor for ReadingHistory.Streak(0);
    *&v8[*(v14 + 20)] = v13;
    (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  }

  else
  {
    v15 = type metadata accessor for ReadingHistory.Streak(0);
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  v16 = [a1 today];
  v17 = [v16 readingTime];
  v18 = [v16 goal];
  v19 = [v16 isStreakDay];

  v20 = [a1 readingHistory];
  sub_1E4680484();
  v21 = sub_1E470B0BC();

  if (!(v21 >> 62))
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_6;
    }

LABEL_16:

    v25 = MEMORY[0x1E69E7CC0];
LABEL_17:
    v40 = type metadata accessor for ReadingHistory.State(0);
    v41 = v40[5];
    v42 = type metadata accessor for ReadingHistory.Streak(0);
    (*(*(v42 - 8) + 56))(&a2[v41], 1, 1, v42);
    *a2 = v9;
    result = sub_1E4680004(v8, &a2[v41]);
    v43 = &a2[v40[6]];
    *v43 = v17;
    *(v43 + 1) = v18;
    v43[16] = v19;
    *&a2[v40[7]] = v25;
    return result;
  }

  v22 = sub_1E470B50C();
  if (!v22)
  {
    goto LABEL_16;
  }

LABEL_6:
  v53 = MEMORY[0x1E69E7CC0];
  result = sub_1E467F220(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v51 = v22;
    v52 = v21;
    HIDWORD(v44) = v19;
    v45 = v18;
    v46 = v17;
    v47 = v9;
    v48 = v8;
    v24 = 0;
    v25 = v53;
    v26 = v21;
    v49 = a2;
    v50 = v21 & 0xC000000000000001;
    do
    {
      if (v50)
      {
        v27 = MEMORY[0x1E6916300](v24, v26);
      }

      else
      {
        v27 = *(v26 + 8 * v24 + 32);
      }

      v28 = v27;
      v29 = [v27 date];
      v30 = sub_1E470AF1C();
      v32 = v31;

      v33 = [v28 day];
      v34 = [v33 readingTime];
      v35 = [v33 goal];
      v36 = [v33 isStreakDay];

      v53 = v25;
      v38 = *(v25 + 16);
      v37 = *(v25 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1E467F220((v37 > 1), v38 + 1, 1);
        v25 = v53;
      }

      ++v24;
      *(v25 + 16) = v38 + 1;
      v39 = v25 + 40 * v38;
      *(v39 + 32) = v30;
      *(v39 + 40) = v32;
      *(v39 + 48) = v34;
      *(v39 + 56) = v35;
      *(v39 + 64) = v36;
      v26 = v52;
    }

    while (v51 != v24);

    v8 = v48;
    a2 = v49;
    v17 = v46;
    v9 = v47;
    v18 = v45;
    LOBYTE(v19) = BYTE4(v44);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t BDSReadingHistoryStreakInfo.toStreak()@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 endDate];
  sub_1E4709C9C();

  v4 = [v1 length];
  result = type metadata accessor for ReadingHistory.Streak(0);
  *(a1 + *(result + 20)) = v4;
  return result;
}

BookDataStore::ReadingHistory::Day __swiftcall BDSReadingHistoryDayInfo.toDay()()
{
  v2 = v0;
  v3 = [v1 readingTime];
  v4 = [v1 goal];
  v5 = [v1 isStreakDay];
  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  result.goal = v6;
  result.readingTime = v5;
  result.isStreakDay = v7;
  return result;
}

char *sub_1E467F200(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E467F284(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E467F220(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E467F3B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E467F240(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E467F82C(a1, a2, a3, *v3, &unk_1ECF752F0, &qword_1E471D518, MEMORY[0x1E695B5E8]);
  *v3 = result;
  return result;
}

char *sub_1E467F284(char *result, int64_t a2, char a3, char *a4)
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
    sub_1E4650534(&unk_1ECF74CE0, &qword_1E471D520);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E467F3B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1E4650534(&qword_1ECF74C18, &qword_1E471D570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E467F4D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1E4650534(&qword_1ECF74BF8, &unk_1E471D550);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_1E467F644(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1E4650534(a5, a6);
  v16 = *(sub_1E4650534(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_1E4650534(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_1E467F82C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1E4650534(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

uint64_t _s13BookDataStore14ReadingHistoryO5StateV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ReadingHistory.Streak(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v32 - v11;
  v13 = sub_1E4650534(&unk_1ECF74C20, &qword_1E471D578);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v32 - v15;
  if (*a1 != *a2)
  {
    goto LABEL_13;
  }

  v17 = type metadata accessor for ReadingHistory.State(0);
  v18 = v17[5];
  v19 = *(v13 + 48);
  sub_1E467FF94(a1 + v18, v16);
  sub_1E467FF94(a2 + v18, &v16[v19]);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    sub_1E467FF94(v16, v12);
    if (v20(&v16[v19], 1, v4) != 1)
    {
      sub_1E4681484(&v16[v19], v8);
      if (sub_1E4709C8C())
      {
        v29 = *(v4 + 20);
        v30 = *&v12[v29];
        v31 = *&v8[v29];
        sub_1E4680308(v8, type metadata accessor for ReadingHistory.Streak);
        sub_1E4680308(v12, type metadata accessor for ReadingHistory.Streak);
        sub_1E465E050(v16, &qword_1ECF74C40, &unk_1E471C980);
        if (v30 == v31)
        {
          goto LABEL_5;
        }

LABEL_13:
        v21 = 0;
        return v21 & 1;
      }

      sub_1E4680308(v8, type metadata accessor for ReadingHistory.Streak);
      sub_1E4680308(v12, type metadata accessor for ReadingHistory.Streak);
      v26 = &qword_1ECF74C40;
      v27 = &unk_1E471C980;
LABEL_12:
      sub_1E465E050(v16, v26, v27);
      goto LABEL_13;
    }

    sub_1E4680308(v12, type metadata accessor for ReadingHistory.Streak);
LABEL_11:
    v26 = &unk_1ECF74C20;
    v27 = &qword_1E471D578;
    goto LABEL_12;
  }

  if (v20(&v16[v19], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_1E465E050(v16, &qword_1ECF74C40, &unk_1E471C980);
LABEL_5:
  v21 = 0;
  v22 = v17[6];
  v23 = a1 + v22;
  v24 = *(a1 + v22);
  v25 = a2 + v22;
  if (v24 == *v25 && *(v23 + 1) == *(v25 + 1) && ((v23[16] ^ v25[16]) & 1) == 0)
  {
    v21 = sub_1E46D2C80(*(a1 + v17[7]), *(a2 + v17[7]));
  }

  return v21 & 1;
}

uint64_t _s13BookDataStore14ReadingHistoryO8DayEntryV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (v9 = sub_1E470B84C(), result = 0, (v9 & 1) != 0))
  {
    v12 = v2 == v5 && v3 == v6;
    return v12 & (v4 ^ v7 ^ 1u);
  }

  return result;
}

unint64_t sub_1E467FDFC()
{
  result = qword_1ECF74A60;
  if (!qword_1ECF74A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74A60);
  }

  return result;
}

unint64_t sub_1E467FE50()
{
  result = qword_1ECF74A68;
  if (!qword_1ECF74A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74A68);
  }

  return result;
}

unint64_t sub_1E467FEA4()
{
  result = qword_1ECF74A78;
  if (!qword_1ECF74A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74A78);
  }

  return result;
}

unint64_t sub_1E467FEF8()
{
  result = qword_1ECF74A88;
  if (!qword_1ECF74A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74A88);
  }

  return result;
}

uint64_t sub_1E467FF4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E467FF94(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4680004(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4680074()
{
  result = qword_1ECF74A98;
  if (!qword_1ECF74A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74A98);
  }

  return result;
}

unint64_t sub_1E46800C8()
{
  result = qword_1EE2ACD00;
  if (!qword_1EE2ACD00)
  {
    sub_1E46506D0(&qword_1ECF74AA0, &qword_1E471C990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2ACD00);
  }

  return result;
}

unint64_t sub_1E468012C()
{
  result = qword_1ECF74AB0;
  if (!qword_1ECF74AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74AB0);
  }

  return result;
}

unint64_t sub_1E4680180()
{
  result = qword_1ECF74AD0;
  if (!qword_1ECF74AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74AD0);
  }

  return result;
}

uint64_t sub_1E46801D4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1E46506D0(&qword_1ECF74AC0, &qword_1E471C9A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E468024C()
{
  result = qword_1ECF74AF0;
  if (!qword_1ECF74AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74AF0);
  }

  return result;
}

uint64_t sub_1E46802A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4680308(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E4680368()
{
  result = qword_1ECF74B00;
  if (!qword_1ECF74B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B00);
  }

  return result;
}

unint64_t sub_1E46803DC()
{
  result = qword_1ECF74B10;
  if (!qword_1ECF74B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B10);
  }

  return result;
}

unint64_t sub_1E4680430()
{
  result = qword_1ECF74B28;
  if (!qword_1ECF74B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B28);
  }

  return result;
}

unint64_t sub_1E4680484()
{
  result = qword_1ECF74B30;
  if (!qword_1ECF74B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF74B30);
  }

  return result;
}

unint64_t sub_1E46804D4()
{
  result = qword_1EE2AE300;
  if (!qword_1EE2AE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2AE300);
  }

  return result;
}

unint64_t sub_1E468052C()
{
  result = qword_1EE2AE308[0];
  if (!qword_1EE2AE308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2AE308);
  }

  return result;
}

unint64_t sub_1E4680614()
{
  result = qword_1EE2AE3B0;
  if (!qword_1EE2AE3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2AE3B0);
  }

  return result;
}

unint64_t sub_1E468066C()
{
  result = qword_1EE2AE3B8;
  if (!qword_1EE2AE3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2AE3B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReadingHistory.Day(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingHistory.Day(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_1E4680778(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E468078C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E46807D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E46808A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4709CCC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4680928(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4709CCC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t getEnumTagSinglePayload for ReadingHistory.State.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ReadingHistory.State.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E4680B68()
{
  result = qword_1ECF74B38;
  if (!qword_1ECF74B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B38);
  }

  return result;
}

unint64_t sub_1E4680BC0()
{
  result = qword_1ECF74B40;
  if (!qword_1ECF74B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B40);
  }

  return result;
}

unint64_t sub_1E4680C18()
{
  result = qword_1ECF74B48;
  if (!qword_1ECF74B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B48);
  }

  return result;
}

unint64_t sub_1E4680C70()
{
  result = qword_1ECF74B50;
  if (!qword_1ECF74B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B50);
  }

  return result;
}

unint64_t sub_1E4680CC8()
{
  result = qword_1ECF74B58;
  if (!qword_1ECF74B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B58);
  }

  return result;
}

unint64_t sub_1E4680D20()
{
  result = qword_1ECF74B60;
  if (!qword_1ECF74B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B60);
  }

  return result;
}

unint64_t sub_1E4680D78()
{
  result = qword_1ECF74B68;
  if (!qword_1ECF74B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B68);
  }

  return result;
}

unint64_t sub_1E4680DD0()
{
  result = qword_1ECF74B70;
  if (!qword_1ECF74B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B70);
  }

  return result;
}

unint64_t sub_1E4680E28()
{
  result = qword_1ECF74B78;
  if (!qword_1ECF74B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B78);
  }

  return result;
}

unint64_t sub_1E4680E80()
{
  result = qword_1ECF74B80;
  if (!qword_1ECF74B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B80);
  }

  return result;
}

unint64_t sub_1E4680ED8()
{
  result = qword_1ECF74B88;
  if (!qword_1ECF74B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B88);
  }

  return result;
}

unint64_t sub_1E4680F30()
{
  result = qword_1ECF74B90;
  if (!qword_1ECF74B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B90);
  }

  return result;
}

unint64_t sub_1E4680F88()
{
  result = qword_1ECF74B98;
  if (!qword_1ECF74B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74B98);
  }

  return result;
}

unint64_t sub_1E4680FE0()
{
  result = qword_1ECF74BA0;
  if (!qword_1ECF74BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74BA0);
  }

  return result;
}

unint64_t sub_1E4681038()
{
  result = qword_1ECF74BA8;
  if (!qword_1ECF74BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74BA8);
  }

  return result;
}

unint64_t sub_1E4681090()
{
  result = qword_1ECF74BB0;
  if (!qword_1ECF74BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74BB0);
  }

  return result;
}

unint64_t sub_1E46810E8()
{
  result = qword_1ECF74BB8;
  if (!qword_1ECF74BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74BB8);
  }

  return result;
}

unint64_t sub_1E4681140()
{
  result = qword_1ECF74BC0;
  if (!qword_1ECF74BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74BC0);
  }

  return result;
}

unint64_t sub_1E4681198()
{
  result = qword_1ECF74BC8;
  if (!qword_1ECF74BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF74BC8);
  }

  return result;
}

uint64_t sub_1E46811EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54676E6964616572 && a2 == 0xEB00000000656D69;
  if (v4 || (sub_1E470B84C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1818324839 && a2 == 0xE400000000000000 || (sub_1E470B84C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B61657274537369 && a2 == 0xEB00000000796144)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E470B84C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1E468130C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746E6572727563 && a2 == 0xED00006B61657274;
  if (v4 || (sub_1E470B84C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53747365676E6F6CLL && a2 == 0xED00006B61657274 || (sub_1E470B84C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961646F74 && a2 == 0xE500000000000000 || (sub_1E470B84C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x48676E6964616572 && a2 == 0xEE0079726F747369)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E470B84C();

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

uint64_t sub_1E4681484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4681564(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v34 = a1;
  v2 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v35 = v33 - v4;
  v5 = sub_1E4650534(&qword_1ECF74BE8, &unk_1E471D540);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v33 - v8);
  v10 = sub_1E4650534(&qword_1ECF74D40, &unk_1E471DBC0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v33 - v12;
  v14 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v33 - v17;
  v19 = sub_1E4650534(&qword_1ECF74D48, &qword_1E471D840);
  v33[0] = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = v33 - v22;
  (*(v15 + 16))(v18, v34, v14, v21);
  sub_1E45E2F14(&qword_1EE2ACD90, &unk_1ECF74D00, &unk_1E471DBA0, MEMORY[0x1E6995248]);
  v34 = v14;
  sub_1E470B06C();
  v33[2] = sub_1E45E2F14(&qword_1EE2ACDC8, &qword_1ECF74D48, &qword_1E471D840, MEMORY[0x1E69950C0]);
  sub_1E470B49C();
  v24 = v5;
  v27 = *(v6 + 48);
  v25 = v6 + 48;
  v26 = v27;
  if (v27(v13, 1, v5) != 1)
  {
    do
    {
      sub_1E46574C0(v13, v9, &qword_1ECF74BE8, &unk_1E471D540);
      v28 = v25;
      v29 = v24;
      v30 = *v9;
      v31 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
      (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
      v37 = v30;
      sub_1E470AB1C();
      sub_1E465E050(v9, &qword_1ECF74BE8, &unk_1E471D540);
      sub_1E470B49C();
      v24 = v29;
      v25 = v28;
    }

    while (v26(v13, 1, v24) != 1);
  }

  return (*(v33[0] + 8))(v23, v19);
}

uint64_t sub_1E46819C8(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v34 = a1;
  v2 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v35 = v33 - v4;
  v5 = sub_1E4650534(&qword_1ECF74BD8, &qword_1E471D530);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v33 - v8);
  v10 = sub_1E4650534(&qword_1ECF74D10, &unk_1E471E770);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = v33 - v12;
  v14 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v33 - v17;
  v19 = sub_1E4650534(&qword_1ECF74D18, &unk_1E471D830);
  v33[0] = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19, v20);
  v23 = v33 - v22;
  (*(v15 + 16))(v18, v34, v14, v21);
  sub_1E45E2F14(&qword_1ECF74D20, &unk_1ECF74CF0, &qword_1E471D828, MEMORY[0x1E6995248]);
  v34 = v14;
  sub_1E470B06C();
  v33[2] = sub_1E45E2F14(&qword_1ECF74D28, &qword_1ECF74D18, &unk_1E471D830, MEMORY[0x1E69950C0]);
  sub_1E470B49C();
  v24 = v5;
  v27 = *(v6 + 48);
  v25 = v6 + 48;
  v26 = v27;
  if (v27(v13, 1, v5) != 1)
  {
    do
    {
      sub_1E46574C0(v13, v9, &qword_1ECF74BD8, &qword_1E471D530);
      v28 = v25;
      v29 = v24;
      v30 = *v9;
      v31 = sub_1E4709CCC();
      (*(*(v31 - 8) + 56))(v35, 1, 1, v31);
      v37 = v30;
      type metadata accessor for ReadingHistoryModel(0);
      sub_1E470AB1C();
      sub_1E465E050(v9, &qword_1ECF74BD8, &qword_1E471D530);
      sub_1E470B49C();
      v24 = v29;
      v25 = v28;
    }

    while (v26(v13, 1, v24) != 1);
  }

  return (*(v33[0] + 8))(v23, v19);
}

uint64_t sub_1E4681E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1E4697A8C;
  *(v10 + 24) = v9;
  v13[4] = sub_1E467A478;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E46679F4;
  v13[3] = &unk_1F5E64C80;
  v11 = _Block_copy(v13);

  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4681FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1E4698424;
  *(v10 + 24) = v9;
  v13[4] = sub_1E467A478;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E46679F4;
  v13[3] = &unk_1F5E650E0;
  v11 = _Block_copy(v13);

  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4682128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v6 = sub_1E470A61C();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E470A5DC();
  v10 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(a1 + 40);
  v14 = *(a1 + 48);
  v16 = *(a1 + 56);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(a1 + 72);
    ObjectType = swift_getObjectType();
    (*(v17 + 8))(a1, ObjectType, v17);
    swift_unknownObjectRelease();
  }

  sub_1E470A5CC();
  v19 = swift_allocObject();
  swift_weakInit();
  LOBYTE(v36) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  v30 = a2;
  v21 = v34;
  *(v20 + 24) = v34;
  *(v20 + 32) = v15;
  *(v20 + 40) = v14;
  *(v20 + 48) = v16;
  *(v20 + 56) = 0;
  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 73) = v36;
  *(v20 + 80) = v19;
  aBlock[4] = sub_1E4697A98;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E64CF8;
  v22 = _Block_copy(aBlock);

  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v9, v13, v22);
  _Block_release(v22);
  (*(v32 + 8))(v9, v33);
  (*(v10 + 8))(v13, v31);

  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v25 = v35;
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  v26[2] = v23;
  v26[3] = v24;
  v27 = v30;
  v26[4] = v25;
  v26[5] = v27;
  v26[6] = v21;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(a1 + 32);
  *(a1 + 32) = 0x8000000000000000;
  sub_1E46C732C(sub_1E4697AD4, v26, v25, isUniquelyReferenced_nonNull_native);
  *(a1 + 32) = v36;
  swift_endAccess();
}

uint64_t sub_1E4682520(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v49 = a4;
  v6 = sub_1E470A61C();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E470A5DC();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v17 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v40 - v20;
  v22 = *(*a1 + 120);
  swift_beginAccess();
  sub_1E465E0B0(a1 + v22, v21, &qword_1ECF74A00, &unk_1E471D5B0);
  swift_storeEnumTagMultiPayload();
  v23 = a1 + *(*a1 + 128);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = *(v23 + 1);
    ObjectType = swift_getObjectType();
    (*(v24 + 8))(a1, ObjectType, v24);
    swift_unknownObjectRelease();
  }

  v40 = a1[3];
  sub_1E470A5CC();
  v26 = swift_allocObject();
  swift_weakInit();
  sub_1E465E0B0(v21, v17, &qword_1ECF74D90, &unk_1E471C8F0);
  v27 = *(v14 + 80);
  v42 = v21;
  v28 = (v27 + 32) & ~v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  v41 = a2;
  v30 = v48;
  *(v29 + 24) = v48;
  sub_1E46574C0(v17, v29 + v28, &qword_1ECF74D90, &unk_1E471C8F0);
  *(v29 + ((v15 + v28 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  aBlock[4] = sub_1E4697F3C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E64FF0;
  v31 = _Block_copy(aBlock);

  v32 = v45;
  sub_1E470A5FC();
  MEMORY[0x1E69160A0](0, v32, v12, v31);
  _Block_release(v31);
  (*(v46 + 8))(v32, v47);
  (*(v43 + 8))(v12, v44);

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v35 = v49;
  swift_unknownObjectWeakInit();
  v36 = swift_allocObject();
  v36[2] = v33;
  v36[3] = v34;
  v37 = v41;
  v36[4] = v35;
  v36[5] = v37;
  v36[6] = v30;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = a1[4];
  a1[4] = 0x8000000000000000;
  sub_1E46C7358(sub_1E4698020, v36, v35, isUniquelyReferenced_nonNull_native);
  a1[4] = v50;
  swift_endAccess();
  sub_1E465E050(v42, &qword_1ECF74D90, &unk_1E471C8F0);
}

uint64_t sub_1E4682A84(void (*a1)(__int128 *), uint64_t a2, __int128 *a3, uint64_t a4)
{
  v4 = a3[1];
  v11 = *a3;
  v12[0] = v4;
  *(v12 + 10) = *(a3 + 26);
  a1(&v11);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 72);
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 16);

      v9(v10, ObjectType, v7);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E4682B78(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1(a3);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result + *(*result + 128);
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      v8 = *(v6 + 16);

      v8(v9, ObjectType, v6);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E4682C74(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1E470A5DC();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E470A61C();
  v33 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v32 = *(v19 + 24);
      v20 = swift_allocObject();
      *(v20 + 16) = a5;
      *(v20 + 24) = a6;
      v21 = a1[1];
      *(v20 + 32) = *a1;
      *(v20 + 48) = v21;
      *(v20 + 58) = *(a1 + 26);
      aBlock[4] = sub_1E4697B14;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E46C4624;
      aBlock[3] = &unk_1F5E64D98;
      v22 = _Block_copy(aBlock);

      sub_1E470A5FC();
      v35 = MEMORY[0x1E69E7CC0];
      sub_1E4698194(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
      sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
      sub_1E470B4CC();
      MEMORY[0x1E69160A0](0, v17, v13, v22);
      _Block_release(v22);
      (*(v34 + 8))(v13, v10);
      (*(v33 + 8))(v17, v14);
    }

    else
    {
      v23 = sub_1E470B2CC();
      sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1E471BA00;
      aBlock[0] = a4;
      v25 = sub_1E470AF6C();
      v27 = v26;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1E4663DE4();
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      sub_1E45E2DE8(0, &qword_1EE2ACCB8, 0x1E69E9BF8);
      v28 = sub_1E470B45C();
      sub_1E470A0AC(v23, &dword_1E45E0000, v28, "Observer with oid=%@ is gone", 28, 2, v24);

      swift_beginAccess();
      v29 = sub_1E46FF750(a4);
      v31 = v30;
      swift_endAccess();
      sub_1E45EB5D8(v29, v31);
    }
  }

  return result;
}

uint64_t sub_1E46830C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = a5;
  v41 = a6;
  v38 = a4;
  v39 = a1;
  v6 = sub_1E470A5DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E470A61C();
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8, v17);
  v19 = &v37 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v37 = *(v21 + 24);
      v38 = v11;
      sub_1E465E0B0(v39, v19, &qword_1ECF74D90, &unk_1E471C8F0);
      v22 = *(v16 + 80);
      v39 = v7;
      v23 = (v22 + 32) & ~v22;
      v24 = swift_allocObject();
      v25 = v41;
      *(v24 + 16) = v40;
      *(v24 + 24) = v25;
      sub_1E46574C0(v19, v24 + v23, &qword_1ECF74D90, &unk_1E471C8F0);
      aBlock[4] = sub_1E4698030;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E46C4624;
      aBlock[3] = &unk_1F5E65068;
      v26 = _Block_copy(aBlock);

      sub_1E470A5FC();
      v43 = MEMORY[0x1E69E7CC0];
      sub_1E4698194(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
      sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
      sub_1E470B4CC();
      MEMORY[0x1E69160A0](0, v14, v10, v26);
      _Block_release(v26);
      (*(v39 + 8))(v10, v6);
      (*(v42 + 8))(v14, v38);
    }

    else
    {
      v27 = sub_1E470B2CC();
      sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1E471BA00;
      v29 = v38;
      aBlock[0] = v38;
      v30 = sub_1E470AF6C();
      v32 = v31;
      *(v28 + 56) = MEMORY[0x1E69E6158];
      *(v28 + 64) = sub_1E4663DE4();
      *(v28 + 32) = v30;
      *(v28 + 40) = v32;
      sub_1E45E2DE8(0, &qword_1EE2ACCB8, 0x1E69E9BF8);
      v33 = sub_1E470B45C();
      sub_1E470A0AC(v27, &dword_1E45E0000, v33, "Observer with oid=%@ is gone", 28, 2, v28);

      swift_beginAccess();
      v34 = sub_1E46FF768(v29);
      v36 = v35;
      swift_endAccess();
      sub_1E45EB5D8(v34, v36);
    }
  }

  return result;
}

uint64_t sub_1E46835D4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = v1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E4698378;
  *(v5 + 24) = v4;
  v8[4] = sub_1E467A478;
  v8[5] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1E46679F4;
  v8[3] = &unk_1F5E64F78;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E468373C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = sub_1E4655454(a1);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a2 + 32);
    *(a2 + 32) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E4657C84();
    }

    sub_1E46FFD54(v6, v8);
    *(a2 + 32) = v8;
  }

  return swift_endAccess();
}

BookDataStore::ReadingHistoryDataStore::Config __swiftcall ReadingHistoryDataStore.Config.init(dataPruningEnabled:historicalMonthsToKeep:)(Swift::Bool dataPruningEnabled, Swift::Int historicalMonthsToKeep)
{
  *v2 = dataPruningEnabled;
  *(v2 + 8) = historicalMonthsToKeep;
  result.historicalMonthsToKeep = historicalMonthsToKeep;
  result.dataPruningEnabled = dataPruningEnabled;
  return result;
}

uint64_t ReadingHistoryDataStore.updateCollector.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_1E4697BD4(a1, v1 + 16, &qword_1ECF74C38, &unk_1E471D580);
  return swift_endAccess();
}

uint64_t sub_1E4683900()
{
  v1 = v0;
  v2 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v30 - v8;
  sub_1E4650534(&unk_1ECF74CE0, &qword_1E471D520);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E471C940;
  v30[0] = 0x3D6C65646F6DLL;
  v30[1] = 0xE600000000000000;
  v11 = ReadingHistoryModel.description.getter();
  MEMORY[0x1E6915D10](v11);

  v12 = v30[1];
  *(v10 + 32) = v30[0];
  *(v10 + 40) = v12;
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1E470B5CC();

  strcpy(v30, "currentStreak=");
  HIBYTE(v30[1]) = -18;
  v13 = type metadata accessor for ReadingHistoryDataStore.State(0);
  sub_1E465E0B0(v0 + *(v13 + 20), v9, &qword_1ECF74C40, &unk_1E471C980);
  v14 = type metadata accessor for ReadingHistory.Streak(0);
  v15 = *(*(v14 - 8) + 48);
  if (v15(v9, 1, v14) == 1)
  {
    sub_1E465E050(v9, &qword_1ECF74C40, &unk_1E471C980);
    v16 = 0xE300000000000000;
    v17 = 7104878;
  }

  else
  {
    v18 = ReadingHistory.Streak.description.getter();
    v16 = v19;
    sub_1E4697478(v9, type metadata accessor for ReadingHistory.Streak);
    v17 = v18;
  }

  MEMORY[0x1E6915D10](v17, v16);

  v20 = v30[1];
  *(v10 + 48) = v30[0];
  *(v10 + 56) = v20;
  v30[0] = 0x3D7961646F74;
  v30[1] = 0xE600000000000000;
  v21 = sub_1E4709C1C();
  MEMORY[0x1E6915D10](v21);

  v22 = v30[1];
  *(v10 + 64) = v30[0];
  *(v10 + 72) = v22;
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_1E470B5CC();

  strcpy(v30, "longestStreak=");
  HIBYTE(v30[1]) = -18;
  sub_1E465E0B0(v1 + *(v13 + 28), v5, &qword_1ECF74C40, &unk_1E471C980);
  if (v15(v5, 1, v14) == 1)
  {
    sub_1E465E050(v5, &qword_1ECF74C40, &unk_1E471C980);
    v23 = 0xE300000000000000;
    v24 = 7104878;
  }

  else
  {
    v25 = ReadingHistory.Streak.description.getter();
    v23 = v26;
    sub_1E4697478(v5, type metadata accessor for ReadingHistory.Streak);
    v24 = v25;
  }

  MEMORY[0x1E6915D10](v24, v23);

  v27 = v30[1];
  *(v10 + 80) = v30[0];
  *(v10 + 88) = v27;
  v30[0] = v10;
  sub_1E4650534(&qword_1ECF74AA0, &qword_1E471C990);
  sub_1E45E2F14(&qword_1EE2ACD00, &qword_1ECF74AA0, &qword_1E471C990, MEMORY[0x1E69E6310]);
  v28 = sub_1E470AEDC();

  return v28;
}

uint64_t sub_1E4683CEC()
{
  v1 = v0;
  v2 = sub_1E470A5DC();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v64 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1E470A61C();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65, v5);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E470A5EC();
  v60 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v54 - v16;
  v18 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  v56 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v58 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v54 - v23;
  v25 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v26 = v25 - 8;
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  sub_1E4697B6C(v1 + v30, v29, type metadata accessor for ReadingHistoryDataStore.State);
  v31 = *(v26 + 28);
  v68 = v29;
  sub_1E465E0B0(&v29[v31], v17, &qword_1ECF74C40, &unk_1E471C980);
  v32 = type metadata accessor for ReadingHistory.Streak(0);
  v33 = *(*(v32 - 8) + 48);
  v34 = v33(v17, 1, v32);
  v61 = v24;
  if (v34 == 1)
  {
    sub_1E465E050(v17, &qword_1ECF74C40, &unk_1E471C980);
    v35 = sub_1E4709CCC();
    (*(*(v35 - 8) + 56))(v24, 1, 1, v35);
  }

  else
  {
    v36 = sub_1E4709CCC();
    v37 = *(v36 - 8);
    v55 = v7;
    v38 = v37;
    (*(v37 + 16))(v24, v17, v36);
    sub_1E4697478(v17, type metadata accessor for ReadingHistory.Streak);
    (*(v38 + 56))(v24, 0, 1, v36);
    v7 = v55;
  }

  sub_1E465E0B0(&v68[v31], v13, &qword_1ECF74C40, &unk_1E471C980);
  if (v33(v13, 1, v32) == 1)
  {
    sub_1E465E050(v13, &qword_1ECF74C40, &unk_1E471C980);
    v39 = 0;
  }

  else
  {
    v39 = *&v13[*(v32 + 20)];
    sub_1E4697478(v13, type metadata accessor for ReadingHistory.Streak);
  }

  sub_1E45E2DE8(0, &qword_1EE2ACCD0, 0x1E69E9610);
  v41 = v59;
  v40 = v60;
  (*(v60 + 104))(v59, *MEMORY[0x1E69E7F80], v7);
  v42 = sub_1E470B3AC();
  (*(v40 + 8))(v41, v7);
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = v61;
  v45 = v58;
  sub_1E465E0B0(v61, v58, &unk_1ECF74CD0, &qword_1E471B620);
  v46 = (*(v56 + 80) + 24) & ~*(v56 + 80);
  v47 = (v57 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v43;
  sub_1E46574C0(v45, v48 + v46, &unk_1ECF74CD0, &qword_1E471B620);
  *(v48 + v47) = v39;
  aBlock[4] = sub_1E4697D0C;
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46C4624;
  aBlock[3] = &unk_1F5E64E88;
  v49 = _Block_copy(aBlock);

  v50 = v62;
  sub_1E470A5FC();
  v69 = MEMORY[0x1E69E7CC0];
  sub_1E4698194(&qword_1EE2ACDE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1E4650534(&unk_1ECF759E0, &unk_1E471BCA0);
  sub_1E45E2F14(&unk_1EE2ACD10, &unk_1ECF759E0, &unk_1E471BCA0, MEMORY[0x1E69E6328]);
  v51 = v64;
  v52 = v67;
  sub_1E470B4CC();
  MEMORY[0x1E69160A0](0, v50, v51, v49);
  _Block_release(v49);

  (*(v66 + 8))(v51, v52);
  (*(v63 + 8))(v50, v65);
  sub_1E465E050(v44, &unk_1ECF74CD0, &qword_1E471B620);
  sub_1E4697478(v68, type metadata accessor for ReadingHistoryDataStore.State);
}

void sub_1E468453C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a3;
  v57 = a2;
  v3 = sub_1E4709D5C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E4709D7C();
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v47 - v14;
  v16 = sub_1E4709CCC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v55 = &v47 - v23;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v53 = v8;
    v26 = v4;
    v27 = *(Strong + 112);
    sub_1E465E0B0(v57, v15, &unk_1ECF74CD0, &qword_1E471B620);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      v28 = v27;
      sub_1E465E050(v15, &unk_1ECF74CD0, &qword_1E471B620);
      v29 = sub_1E470AF0C();
      [v28 removeObjectForKey_];

      v30 = &off_1E875C000;
      v31 = v56;
LABEL_9:
      v46 = sub_1E470AF0C();
      [v27 v30[54]];

      return;
    }

    v50 = v25;
    v32 = v55;
    (*(v17 + 32))(v55, v15, v16);
    v52 = v17;
    (*(v17 + 16))(v20, v32, v16);
    v49 = v27;
    v48 = v27;
    sub_1E4709CDC();
    v33 = *(v26 + 104);
    v33(v7, *MEMORY[0x1E6969A68], v3);
    v34 = sub_1E4709D6C();
    v35 = v26 + 8;
    v36 = *(v26 + 8);
    v36(v7, v3);
    v37 = *MEMORY[0x1E6969A78];
    v51 = v33;
    v33(v7, v37, v3);
    v38 = sub_1E4709D6C();
    v57 = v35;
    v36(v7, v3);
    v39 = 100 * v34;
    if ((v34 * 100) >> 64 == (100 * v34) >> 63)
    {
      v40 = v39 + v38;
      if (!__OFADD__(v39, v38))
      {
        v51(v7, *MEMORY[0x1E6969A48], v3);
        v41 = sub_1E4709D6C();
        v36(v7, v3);
        (*(v54 + 8))(v11, v53);
        v42 = *(v52 + 8);
        v42(v20, v16);
        v43 = 100 * v40;
        if ((v40 * 100) >> 64 == (100 * v40) >> 63)
        {
          v44 = v43 + v41;
          if (!__OFADD__(v43, v41))
          {
            v45 = sub_1E470AF0C();
            v30 = &off_1E875C000;
            [v48 setInteger:v44 forKey:v45];

            v42(v55, v16);
            v31 = v56;
            v27 = v49;
            goto LABEL_9;
          }

LABEL_14:
          __break(1u);
          return;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }
}

uint64_t static ReadingHistoryDataStore.recalculationCount.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_1ECF74C30 = a1;
  return result;
}

uint64_t ReadingHistoryDataStore.__allocating_init(goals:modelProvider:transactionProvider:config:userDefaults:currentDate:)(void *a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), unsigned __int8 *a4, void *a5, void (*a6)(void), uint64_t a7)
{
  swift_allocObject();
  v14 = sub_1E4696484(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();

  return v14;
}

uint64_t ReadingHistoryDataStore.init(goals:modelProvider:transactionProvider:config:userDefaults:currentDate:)(void *a1, void *a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t), unsigned __int8 *a4, void *a5, void (*a6)(void), uint64_t a7)
{
  v8 = sub_1E4696484(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();

  return v8;
}

uint64_t sub_1E4684C74(__int128 *a1, uint64_t a2)
{
  v6 = *a1;
  v7 = a1[1];
  v2 = *(a1 + 4);
  v3 = *(a1 + 40);
  v4 = *(a1 + 41);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8[0] = v6;
    v8[1] = v7;
    v9 = v2;
    v10 = v3;
    v11 = v4;
    sub_1E4684D0C(v8);
  }

  return result;
}

uint64_t sub_1E4684D0C(_OWORD *a1)
{
  v2 = v1;
  v4 = sub_1E4650534(&qword_1ECF74DC0, &qword_1E471D8B8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &aBlock - v6;
  v8 = sub_1E47099BC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v13 = *(v2 + 144);
  v14 = swift_allocObject();
  v15 = a1[1];
  *(v14 + 16) = *a1;
  *(v14 + 32) = v15;
  *(v14 + 42) = *(a1 + 26);
  *(v14 + 64) = v2;
  *(v14 + 72) = &v25;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1E46982A0;
  *(v16 + 24) = v14;
  v23 = sub_1E467A478;
  v24 = v16;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v22 = sub_1E46679F4;
  *(&v22 + 1) = &unk_1F5E652C0;
  v17 = _Block_copy(&aBlock);

  dispatch_sync(v13, v17);
  _Block_release(v17);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    if (v25 == 1)
    {
      sub_1E46982AC();
      aBlock = 0u;
      v22 = 0u;
      sub_1E4709E0C();
      sub_1E465E050(&aBlock, &unk_1ECF74DD0, &qword_1E471D8C0);
      if ((*(v9 + 48))(v7, 1, v8) == 1)
      {
        sub_1E465E050(v7, &qword_1ECF74DC0, &qword_1E471D8B8);
      }

      else
      {
        (*(v9 + 32))(v12, v7, v8);
        v19 = [objc_opt_self() defaultCenter];
        v20 = sub_1E470998C();
        [v19 postNotification_];

        (*(v9 + 8))(v12, v8);
      }
    }
  }

  return result;
}

uint64_t sub_1E468505C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1E46850BC(a1);
  }

  return result;
}

uint64_t sub_1E46850BC(uint64_t a1)
{
  v3 = sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v6);
  v8 = aBlock - v7;
  v9 = *(v1 + 144);
  sub_1E465E0B0(a1, aBlock - v7, &qword_1ECF74D90, &unk_1E471C8F0);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1E46574C0(v8, v11 + v10, &qword_1ECF74D90, &unk_1E471C8F0);
  *(v11 + ((v5 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v1;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1E46980FC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1E467A478;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46679F4;
  aBlock[3] = &unk_1F5E651D0;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v9, v13);
  _Block_release(v13);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall ReadingHistoryDataStore.observeSignificantDateChange(_:)(NSNotificationName a1)
{
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v1 selector:sel__handleSignificantDateChange_ name:a1 object:0];
}

uint64_t sub_1E468535C@<X0>(char *a1@<X1>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_1E4709D7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E4709CCC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v37 - v16;
  sub_1E4709CDC();
  sub_1E4709BFC();
  (*(v5 + 8))(v8, v4);
  v18 = sub_1E46A3D04(a1, 1);
  if (!sub_1E46A3D04(v17, 1))
  {
    v19 = sub_1E470B2CC();
    if (qword_1EE2ADC90 == -1)
    {
LABEL_6:
      v21 = sub_1E470A0AC(v19, &dword_1E45E0000, qword_1EE2ADC98, "Recalc: yesterday and today are both not streak day.", 52, 2, MEMORY[0x1E69E7CC0], v37);
      (*(v10 + 8))(v17, v9, v21);
      goto LABEL_13;
    }

LABEL_15:
    v36 = v19;
    swift_once();
    v19 = v36;
    goto LABEL_6;
  }

  v19 = swift_beginAccess();
  if (__OFADD__(qword_1ECF74C30, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  ++qword_1ECF74C30;
  if (v18)
  {
    v20 = a1;
  }

  else
  {
    v20 = v17;
  }

  (*(v10 + 16))(v13, v20, v9);
  v22 = sub_1E46A4088(v13, 1);
  v23 = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    swift_once();
  }

  v24 = qword_1EE2ADC98;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1E471B800;
  v26 = sub_1E4709C1C();
  v28 = v27;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  v29 = sub_1E4663DE4();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v30 = MEMORY[0x1E69E65A8];
  *(v25 + 96) = MEMORY[0x1E69E6530];
  *(v25 + 104) = v30;
  *(v25 + 64) = v29;
  *(v25 + 72) = v22;
  sub_1E470A0AC(v23, &dword_1E45E0000, v24, "Recalc: lastStreakDate=%{public}@ currentStreak=%d", 50, 2, v25);

  v31 = *(v10 + 8);
  v31(v17, v9);
  if (v22 >= 2)
  {
    v32 = v37;
    (*(v10 + 32))(v37, v13, v9);
    v33 = type metadata accessor for ReadingHistory.Streak(0);
    *(v32 + *(v33 + 20)) = v22;
    return (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  }

  v31(v13, v9);
LABEL_13:
  v35 = type metadata accessor for ReadingHistory.Streak(0);
  return (*(*(v35 - 8) + 56))(v37, 1, 1, v35);
}

uint64_t sub_1E46857BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v137 = a2;
  v138 = a3;
  v128 = a1;
  v118 = a4;
  v140 = *MEMORY[0x1E69E9840];
  v4 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v115 = (&v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v119 = &v115 - v9;
  v127 = type metadata accessor for ReadingHistory.Streak(0);
  v124 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127, v10);
  v117 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4709D5C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E4709D7C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E4709CCC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v116 = &v115 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = (&v115 - v28);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v115 - v32;
  sub_1E4709CDC();
  v129 = v33;
  v34 = v138;
  sub_1E4709BFC();
  v35 = *(v18 + 8);
  v133 = v18 + 8;
  v134 = v17;
  v132 = v35;
  v35(v21, v17);
  v139 = v23;
  v36 = *(v23 + 16);
  v136 = v22;
  v125 = v36;
  v126 = v23 + 16;
  v36(v29, v34, v22);
  sub_1E4709CDC();
  v37 = *(v13 + 104);
  v122 = *MEMORY[0x1E6969A68];
  v37(v16);
  v38 = sub_1E4709D6C();
  v41 = *(v13 + 8);
  v40 = v13 + 8;
  v39 = v41;
  v41(v16, v12);
  v121 = *MEMORY[0x1E6969A78];
  v37(v16);
  v42 = sub_1E4709D6C();
  v135 = v40;
  v41(v16, v12);
  v44 = 100 * v38;
  if ((v38 * 100) >> 64 != (100 * v38) >> 63)
  {
    __break(1u);
    goto LABEL_66;
  }

  v45 = __OFADD__(v44, v42);
  v46 = v44 + v42;
  if (v45)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v131 = v46;
  v120 = *MEMORY[0x1E6969A48];
  v37(v16);
  v130 = sub_1E4709D6C();
  v39(v16, v12);
  v132(v21, v134);
  v47 = *(v139 + 8);
  v48 = v136;
  v139 += 8;
  v123 = v47;
  v47(v29, v136);
  v125(v29, v129, v48);
  sub_1E4709CDC();
  (v37)(v16, v122, v12);
  v40 = sub_1E4709D6C();
  v39(v16, v12);
  (v37)(v16, v121, v12);
  v42 = sub_1E4709D6C();
  v39(v16, v12);
  v49 = 100 * v40;
  if ((v40 * 100) >> 64 != (100 * v40) >> 63)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v45 = __OFADD__(v49, v42);
  v50 = v49 + v42;
  if (v45)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v51 = v50;
  (v37)(v16, v120, v12);
  v40 = sub_1E4709D6C();
  v39(v16, v12);
  v132(v21, v134);
  v16 = v136;
  v39 = v123;
  v123(v29, v136);
  v21 = sub_1E46A48B8(v137);
  v29 = &v115;
  MEMORY[0x1EEE9AC00](v21, v52);
  v54 = v130;
  *(&v115 - 4) = v131;
  *(&v115 - 3) = v54;
  v37 = v51;
  *(&v115 - 2) = v51;
  *(&v115 - 1) = v40;
  v55 = *(v53 + 32);
  v42 = ((1 << v55) + 63) >> 6;
  v43 = 8 * v42;
  if ((v55 & 0x3Fu) <= 0xD)
  {
    goto LABEL_6;
  }

LABEL_69:
  v107 = v43;

  if (swift_stdlib_isStackAllocationSafe())
  {

    v43 = v107;
LABEL_6:
    MEMORY[0x1EEE9AC00](v53, v43);
    v57 = &v115 - ((v56 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v57, v56);
    v58 = 0;
    v59 = 0;
    v60 = 1 << *(v21 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(v21 + 56);
    v63 = (v60 + 63) >> 6;
    v64 = v138;
    v66 = v130;
    v65 = v131;
    while (v62)
    {
      v67 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v68 = v67 | (v59 << 6);
LABEL_16:
      v71 = (*(v21 + 48) + 16 * v68);
      v72 = *v71;
      v73 = v71[1];
      if ((v72 != v65 || v73 != v66) && (v72 != v37 || v73 != v40))
      {
        *&v57[(v68 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v68;
        v45 = __OFADD__(v58++, 1);
        if (v45)
        {
          __break(1u);
LABEL_27:
          v76 = sub_1E46E4EC4(v57, v42, v58, v21);
          goto LABEL_28;
        }
      }
    }

    v69 = v59;
    while (1)
    {
      v59 = v69 + 1;
      if (__OFADD__(v69, 1))
      {
        break;
      }

      if (v59 >= v63)
      {
        goto LABEL_27;
      }

      v70 = *(v21 + 56 + 8 * v59);
      ++v69;
      if (v70)
      {
        v62 = (v70 - 1) & v70;
        v68 = __clz(__rbit64(v70)) | (v59 << 6);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_62;
  }

  v108 = swift_slowAlloc();
  v109 = sub_1E4694524(v108, v42, v21, sub_1E4697DA8);

  v110 = v108;
  v39 = v123;
  MEMORY[0x1E6917530](v110, -1, -1);
  v76 = v109;
  v64 = v138;
LABEL_28:
  v77 = *(v76 + 16);

  v78 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v79 = v119;
  sub_1E465E0B0(v128 + *(v78 + 20), v119, &qword_1ECF74C40, &unk_1E471C980);
  v80 = (*(v124 + 48))(v79, 1, v127);
  v40 = v129;
  if (v80 == 1)
  {
    sub_1E465E050(v79, &qword_1ECF74C40, &unk_1E471C980);
LABEL_32:
    sub_1E468535C(v64, v118);
    return (v39)(v40, v16);
  }

  v81 = v79;
  v82 = v117;
  sub_1E4697DD8(v81, v117, type metadata accessor for ReadingHistory.Streak);
  if (v77)
  {
    sub_1E4697478(v82, type metadata accessor for ReadingHistory.Streak);
    goto LABEL_32;
  }

  v84 = v116;
  v125(v116, v82, v16);
  v85 = *(v82 + *(v127 + 20));
  LOBYTE(v21) = sub_1E46A3D04(v64, 1);
  v86 = sub_1E46A3D04(v40, 1);
  if ((sub_1E4709C8C() & 1) == 0)
  {
    v90 = sub_1E4709C8C();
    v29 = v115;
    if (v90)
    {
      if (v21)
      {
        v91 = (v125)(v115, v64, v16);
        v92 = v85 + 1;
        if (!__OFADD__(v85, 1))
        {
          *(v29 + *(v127 + 20)) = v92;
          (*(v124 + 56))(v29, 0, 1);
          v93 = sub_1E470B2CC();
          if (qword_1EE2ADC90 != -1)
          {
            swift_once();
          }

          v94 = qword_1EE2ADC98;
          sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
          v95 = swift_allocObject();
          *(v95 + 16) = xmmword_1E471B800;
          v96 = sub_1E4709C1C();
          v98 = v97;
          *(v95 + 56) = MEMORY[0x1E69E6158];
          v99 = sub_1E4663DE4();
          *(v95 + 32) = v96;
          *(v95 + 40) = v98;
          v100 = MEMORY[0x1E69E65A8];
          *(v95 + 96) = MEMORY[0x1E69E6530];
          *(v95 + 104) = v100;
          *(v95 + 64) = v99;
          *(v95 + 72) = v92;
          sub_1E470A0AC(v93, &dword_1E45E0000, v94, "Recalc: extending a day, lastStreakDate=%{public}@ currentStreak=%d", 67, 2, v95);

          v101 = v123;
          v123(v116, v16);
          sub_1E4697478(v117, type metadata accessor for ReadingHistory.Streak);
          v101(v40, v16);
          return sub_1E46574C0(v29, v118, &qword_1ECF74C40, &unk_1E471C980);
        }

        __break(1u);
LABEL_73:
        v112 = v91;
        swift_once();
        v91 = v112;
        goto LABEL_46;
      }

      v125(v115, v40, v16);
      *(v29 + *(v127 + 20)) = v85;
      (*(v124 + 56))(v29, 0, 1);
      v104 = sub_1E470B29C();
      if (qword_1EE2ADC90 != -1)
      {
        v113 = v104;
        swift_once();
        v104 = v113;
      }

      v103.n128_f64[0] = sub_1E470A0AC(v104, &dword_1E45E0000, qword_1EE2ADC98, "Recalc: yesterday is already lastStreakDate, skipping.", 54, 2, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      if ((sub_1E4709C7C() & 1) == 0)
      {
        sub_1E468535C(v64, v29);
        v105 = v84;
        goto LABEL_59;
      }

      if (!v86)
      {
LABEL_62:
        v39(v116, v16);
        sub_1E4697478(v117, type metadata accessor for ReadingHistory.Streak);
        v39(v40, v16);
        if (v21)
        {
          v125(v29, v64, v16);
          *(v29 + *(v127 + 20)) = 1;
          (*(v124 + 56))(v29, 0, 1);
        }

        else
        {
          (*(v124 + 56))(v29, 1, 1, v127);
        }

        return sub_1E46574C0(v29, v118, &qword_1ECF74C40, &unk_1E471C980);
      }

      sub_1E468535C(v64, v29);
    }

    v105 = v116;
LABEL_59:
    (v39)(v105, v16, v103);
    sub_1E4697478(v117, type metadata accessor for ReadingHistory.Streak);
    v39(v40, v16);
    return sub_1E46574C0(v29, v118, &qword_1ECF74C40, &unk_1E471C980);
  }

  v29 = v115;
  if (v21)
  {
    v87 = v117;
    sub_1E4697B6C(v117, v115, type metadata accessor for ReadingHistory.Streak);
    (*(v124 + 56))(v29, 0, 1, v127);
    v88 = sub_1E470B29C();
    if (qword_1EE2ADC90 != -1)
    {
      v111 = v88;
      swift_once();
      v88 = v111;
    }

    v89 = sub_1E470A0AC(v88, &dword_1E45E0000, qword_1EE2ADC98, "Recalc: today is already lastStreakDate, skipping.", 50, 2, MEMORY[0x1E69E7CC0]);
    (v39)(v116, v16, v89);
    sub_1E4697478(v87, type metadata accessor for ReadingHistory.Streak);
    v39(v40, v16);
    return sub_1E46574C0(v29, v118, &qword_1ECF74C40, &unk_1E471C980);
  }

  if (v85 < 2)
  {
    (*(v124 + 56))(v115, 1, 1, v127);
    v106 = sub_1E470B29C();
    if (qword_1EE2ADC90 != -1)
    {
      v114 = v106;
      swift_once();
      v106 = v114;
    }

    v102 = sub_1E470A0AC(v106, &dword_1E45E0000, qword_1EE2ADC98, "Recalc: today is no longer a streak day, clearing current streak", 64, 2, MEMORY[0x1E69E7CC0]);
    goto LABEL_57;
  }

  v125(v115, v40, v16);
  *(v29 + *(v127 + 20)) = v85 - 1;
  (*(v124 + 56))(v29, 0, 1);
  v91 = sub_1E470B29C();
  if (qword_1EE2ADC90 != -1)
  {
    goto LABEL_73;
  }

LABEL_46:
  v102 = sub_1E470A0AC(v91, &dword_1E45E0000, qword_1EE2ADC98, "Recalc: today is no longer a streak day, reverting to yesterday", 63, 2, MEMORY[0x1E69E7CC0]);
LABEL_57:
  (v39)(v116, v16, v102);
  sub_1E4697478(v117, type metadata accessor for ReadingHistory.Streak);
  v39(v40, v16);
  return sub_1E46574C0(v29, v118, &qword_1ECF74C40, &unk_1E471C980);
}

uint64_t sub_1E4686820(uint64_t a1)
{
  v2 = v1;
  v165 = *v2;
  v158 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  v161 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158, v4);
  v157 = &v144 - v5;
  v6 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v156 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v159 = &v144 - v11;
  v12 = sub_1E4650534(&qword_1ECF74D70, &unk_1E471DBD0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v173 = &v144 - v14;
  v15 = sub_1E4650534(&qword_1ECF74D78, &unk_1E471D870);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v172 = &v144 - v17;
  v171 = sub_1E4709A3C();
  v160 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171, v18);
  v170 = &v144 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v182 = &v144 - v22;
  v180 = type metadata accessor for ReadingHistoryDataStore.State(0);
  MEMORY[0x1EEE9AC00](v180, v23);
  v174 = &v144 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_1E4709D5C();
  v167 = *(v168 - 1);
  MEMORY[0x1EEE9AC00](v168, v25);
  v177 = &v144 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = sub_1E4709D7C();
  v166 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178, v27);
  v184 = &v144 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1E4709CCC();
  v181 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185, v29);
  v169 = &v144 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v176 = &v144 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v183 = &v144 - v36;
  v37 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v164 = &v144 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v179 = &v144 - v42;
  v43 = sub_1E4650534(&qword_1ECF74DA8, &qword_1E471D8A8);
  MEMORY[0x1EEE9AC00](v43 - 8, v44);
  v46 = &v144 - v45;
  v47 = sub_1E4650534(&qword_1ECF74DB0, &qword_1E471D8B0);
  v175 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47, v48);
  v162 = &v144 - v49;
  v50 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v144 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54, v55);
  v57 = &v144 - v56;
  MEMORY[0x1EEE9AC00](v58, v59);
  v61 = &v144 - v60;
  v62 = v2;
  v63 = (v2 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state);
  swift_beginAccess();
  sub_1E4697B6C(v63, v61, type metadata accessor for ReadingHistoryModel);
  sub_1E4698194(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v64 = a1;
  LOBYTE(a1) = sub_1E470A8AC();
  v163 = v61;
  result = sub_1E4697478(v61, type metadata accessor for ReadingHistoryModel);
  if ((a1 & 1) == 0)
  {
    return result;
  }

  v154 = v62;
  v155 = v63;
  sub_1E4697B6C(v63, v57, type metadata accessor for ReadingHistoryModel);
  sub_1E4698194(&qword_1EE2ADA90, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v153 = v64;
  sub_1E470ABDC();
  sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  sub_1E45E2F14(&qword_1ECF74DB8, &unk_1ECF74CF0, &qword_1E471D828, MEMORY[0x1E6995240]);
  sub_1E470AC1C();
  v66 = v175;
  if ((v175)[6](v46, 1, v47) == 1)
  {
    sub_1E465E050(v46, &qword_1ECF74DA8, &qword_1E471D8A8);
    v148 = 0;
  }

  else
  {
    v67 = v162;
    (v66)[4](v162, v46, v47);
    v68 = sub_1E470AA5C();
    MEMORY[0x1EEE9AC00](v68, v69);
    v142 = v57;
    v143 = v53;
    sub_1E46777E0(sub_1E4698284, &v140, v68);
    v148 = 0;

    (v66[1])(v67, v47);
  }

  v70 = v185;
  v71 = v180;
  v72 = v181;
  v73 = v155;
  v74 = v179;
  sub_1E465E0B0(v155 + *(v180 + 20), v179, &qword_1ECF74C40, &unk_1E471C980);
  v75 = *(v72 + 16);
  v76 = v73 + v71[6];
  v77 = v183;
  v75(v183, v76, v70);
  v78 = sub_1E46A48B8(v53);
  if (!*(v78 + 16))
  {

    v137 = v75;
    v138 = v174;
    sub_1E4697B6C(v53, v174, type metadata accessor for ReadingHistoryModel);
    sub_1E465E0B0(v74, v138 + v71[5], &qword_1ECF74C40, &unk_1E471C980);
    v137(v138 + v71[6], v77, v70);
    sub_1E46A38A8(v77, (v138 + v71[7]));
    sub_1E4689F54(v138, v153, 0x656772656DLL, 0xE500000000000000);
    sub_1E4697478(v138, type metadata accessor for ReadingHistoryDataStore.State);
    (*(v72 + 8))(v77, v70);
    goto LABEL_43;
  }

  v151 = v78;
  v152 = v57;
  v162 = v53;
  v150 = v72 + 16;
  v149 = v75;
  v75(v176, v77, v70);
  sub_1E4709CDC();
  v79 = v167;
  v80 = v167[13];
  v81 = v177;
  v82 = v168;
  (v80)(v177, *MEMORY[0x1E6969A68], v168);
  v83 = sub_1E4709D6C();
  v84 = v79[1];
  v84(v81, v82);
  (v80)(v81, *MEMORY[0x1E6969A78], v82);
  v85 = sub_1E4709D6C();
  v86 = (v84)(v81, v82);
  v87 = 100 * v83;
  if ((v83 * 100) >> 64 != (100 * v83) >> 63)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v139 = v86;
    swift_once();
    v86 = v139;
    goto LABEL_40;
  }

  v88 = __OFADD__(v87, v85);
  v89 = v87 + v85;
  if (v88)
  {
    goto LABEL_49;
  }

  v90 = v177;
  (v80)(v177, *MEMORY[0x1E6969A48], v82);
  v91 = v176;
  v92 = v184;
  v93 = sub_1E4709D6C();
  v84(v90, v82);
  v94 = v166;
  v95 = v166[1];
  v175 = (v166 + 1);
  v168 = v95;
  v95(v92, v178);
  v96 = v181;
  v97 = v91;
  v98 = v185;
  v176 = *(v181 + 8);
  v177 = (v181 + 8);
  (v176)(v97, v185);
  v81 = v151;
  if (*(v151 + 16) == 1 && sub_1E46F4454(v89, v93, v151))
  {

    v99 = sub_1E470B29C();
    if (qword_1EE2ADC90 != -1)
    {
      swift_once();
    }

    v100 = qword_1EE2ADC98;
    sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_1E471BA00;
    v102 = v183;
    v103 = sub_1E4709C1C();
    v105 = v104;
    *(v101 + 56) = MEMORY[0x1E69E6158];
    *(v101 + 64) = sub_1E4663DE4();
    *(v101 + 32) = v103;
    *(v101 + 40) = v105;
    sub_1E470A0AC(v99, &dword_1E45E0000, v100, "Merged with an object that only changed today: %{public}@", 57, 2, v101);

    v106 = v174;
    sub_1E4697B6C(v155, v174, type metadata accessor for ReadingHistoryDataStore.State);
    v107 = v164;
    v53 = v162;
    sub_1E46857BC(v106, v162, v102, v164);
    sub_1E4697478(v106, type metadata accessor for ReadingHistoryDataStore.State);
    v74 = v179;
    sub_1E465E050(v179, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E46574C0(v107, v74, &qword_1ECF74C40, &unk_1E471C980);
    v108 = v163;
    sub_1E4688298(v53, v74, v163);
    v109 = v180;
    goto LABEL_41;
  }

  v110 = 1 << *(v81 + 32);
  v111 = -1;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v112 = v111 & *(v81 + 56);
  v113 = (v110 + 63) >> 6;
  v167 = v94 + 7;
  v166 = (v160 + 1);
  v160 = (v96 + 48);
  v155 = (v96 + 32);
  v147 = (v161 + 2);
  ++v161;
  v181 = v96 + 56;

  v114 = 0;
LABEL_16:
  v115 = v182;
  while (v112)
  {
LABEL_22:
    v117 = (*(v81 + 48) + ((v114 << 10) | (16 * __clz(__rbit64(v112)))));
    v118 = 100 * *v117;
    if ((*v117 * 100) >> 64 != v118 >> 63)
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v119 = v117[1];
    if (__OFADD__(v118, v119))
    {
      goto LABEL_47;
    }

    v112 &= v112 - 1;
    if (v118 + v119 <= 9999)
    {
      (*v181)(v115, 1, 1, v98);
      goto LABEL_27;
    }

    v120 = v178;
    (*v167)(v172, 1, 1, v178);
    v121 = sub_1E4709D8C();
    (*(*(v121 - 8) + 56))(v173, 1, 1, v121);
    LOBYTE(v143) = 1;
    v142 = 0;
    LOBYTE(v141) = 1;
    v140 = 0;
    v122 = v170;
    v115 = v182;
    sub_1E4709A2C();
    v123 = v184;
    sub_1E4709CDC();
    sub_1E4709D1C();
    v124 = v120;
    v125 = v169;
    (v168)(v123, v124);
    (*v166)(v122, v171);
    if ((*v160)(v115, 1, v98) == 1)
    {
LABEL_27:
      v86 = sub_1E465E050(v115, &unk_1ECF74CD0, &qword_1E471B620);
    }

    else
    {
      (*v155)(v125, v115, v98);
      if (sub_1E4709C7C())
      {
        v126 = v159;
        ReadingHistoryModel.readingHistoryDay(for:)(v159);
        v127 = type metadata accessor for ReadingHistoryDay(0);
        v146 = *(*(v127 - 8) + 48);
        if (v146(v126, 1, v127) == 1)
        {
          sub_1E465E050(v126, &qword_1ECF74200, &qword_1E471AF80);
          v145 = 0;
        }

        else
        {
          v128 = v126 + *(v127 + 20);
          v129 = v157;
          v130 = v158;
          (*v147)(v157, v128, v158);
          sub_1E4697478(v159, type metadata accessor for ReadingHistoryDay);
          sub_1E470A62C();
          (*v161)(v129, v130);
          v145 = v186;
        }

        v131 = v156;
        ReadingHistoryModel.readingHistoryDay(for:)(v156);
        if (v146(v131, 1, v127) == 1)
        {
          sub_1E465E050(v131, &qword_1ECF74200, &qword_1E471AF80);
          v98 = v185;
        }

        else
        {
          v132 = v131 + *(v127 + 20);
          v133 = v157;
          v134 = v158;
          (*v147)(v157, v132, v158);
          sub_1E4697478(v131, type metadata accessor for ReadingHistoryDay);
          sub_1E470A62C();
          (*v161)(v133, v134);
          v98 = v185;
          if (v145 >= 1 && v145 < v186)
          {
            ReadingHistoryModel.setGoal(_:date:)(v145, v125);
          }
        }

        v86 = (v176)(v125, v98);
        goto LABEL_16;
      }

      v86 = (v176)(v125, v98);
    }
  }

  while (1)
  {
    v116 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
      __break(1u);
      goto LABEL_46;
    }

    if (v116 >= v113)
    {
      break;
    }

    v112 = *(v81 + 56 + 8 * v116);
    ++v114;
    if (v112)
    {
      v114 = v116;
      goto LABEL_22;
    }
  }

  v86 = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    goto LABEL_50;
  }

LABEL_40:
  sub_1E470A0AC(v86, &dword_1E45E0000, qword_1EE2ADC98, "Merged with an object with multiple changed dates, recalc triggered.", 68, 2, MEMORY[0x1E69E7CC0]);
  v135 = v164;
  v53 = v162;
  v102 = v183;
  sub_1E468535C(v183, v164);
  v74 = v179;
  sub_1E465E050(v179, &qword_1ECF74C40, &unk_1E471C980);
  sub_1E46574C0(v135, v74, &qword_1ECF74C40, &unk_1E471C980);
  sub_1E46887F0(v53, v81, v135);

  v108 = v163;
  sub_1E4688298(v53, v135, v163);
  sub_1E465E050(v135, &qword_1ECF74C40, &unk_1E471C980);
  v106 = v174;
  v109 = v180;
LABEL_41:
  sub_1E4698220(v108, v53);
  sub_1E4697B6C(v53, v106, type metadata accessor for ReadingHistoryModel);
  sub_1E465E0B0(v74, v106 + v109[5], &qword_1ECF74C40, &unk_1E471C980);
  v136 = v185;
  v149(v106 + v109[6], v102, v185);
  sub_1E46A38A8(v102, (v106 + v109[7]));
  sub_1E4689F54(v106, v153, 0x656772656DLL, 0xE500000000000000);
  sub_1E4697478(v106, type metadata accessor for ReadingHistoryDataStore.State);
  (v176)(v102, v136);
  v57 = v152;
LABEL_43:
  sub_1E465E050(v74, &qword_1ECF74C40, &unk_1E471C980);
  sub_1E4697478(v53, type metadata accessor for ReadingHistoryModel);
  return sub_1E4697478(v57, type metadata accessor for ReadingHistoryModel);
}

uint64_t sub_1E4687ED0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v5 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v41 = v35 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = v35 - v13;
  v15 = sub_1E4709CCC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v40 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v43 = v35 - v21;
  v22 = *a1;
  v23 = type metadata accessor for ReadingHistoryModel(0);
  v44 = v22;
  v24 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  sub_1E470AB0C();
  v25 = v16;
  v26 = *(v16 + 48);
  if (v26(v14, 1, v15) == 1)
  {
    return sub_1E465E050(v14, &unk_1ECF74CD0, &qword_1E471B620);
  }

  v38 = v3;
  v37 = *(v25 + 32);
  v37(v43, v14, v15);
  v28 = *(v23 + 20);
  v35[1] = v24;
  v36 = v22;
  v44 = v22;
  v29 = v41;
  v35[0] = v28;
  sub_1E470AB0C();
  if (v26(v29, 1, v15) == 1)
  {
    (*(v25 + 8))(v43, v15);
    return sub_1E465E050(v29, &unk_1ECF74CD0, &qword_1E471B620);
  }

  else
  {
    v30 = v40;
    v37(v40, v29, v15);
    if (sub_1E4709C7C())
    {
      v31 = v39;
      v32 = v43;
      (*(v25 + 16))(v39, v43, v15);
      (*(v25 + 56))(v31, 0, 1, v15);
      v44 = v36;
      sub_1E470AB1C();
      v33 = *(v25 + 8);
      v33(v30, v15);
      return (v33)(v32, v15);
    }

    else
    {
      v34 = *(v25 + 8);
      v34(v30, v15);
      return (v34)(v43, v15);
    }
  }
}

uint64_t sub_1E4688298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a3;
  v5 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v46 = &v43[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v43[-v10];
  v12 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v43[-v18];
  v20 = type metadata accessor for ReadingHistory.Streak(0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v43[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E465E0B0(a2, v19, &qword_1ECF74C40, &unk_1E471C980);
  v25 = *(v21 + 48);
  if (v25(v19, 1, v20) == 1)
  {
    v26 = &qword_1ECF74C40;
    v27 = &unk_1E471C980;
    v28 = v19;
LABEL_12:
    sub_1E465E050(v28, v26, v27);
    return sub_1E4697B6C(a1, v47, type metadata accessor for ReadingHistoryModel);
  }

  sub_1E4697DD8(v19, v24, type metadata accessor for ReadingHistory.Streak);
  v29 = *&v24[*(v20 + 20)];
  sub_1E46A38A8(v24, v15);
  if (v25(v15, 1, v20) == 1)
  {
    sub_1E465E050(v15, &qword_1ECF74C40, &unk_1E471C980);
    if (v29 >= 1)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1E4697478(v24, type metadata accessor for ReadingHistory.Streak);
    return sub_1E4697B6C(a1, v47, type metadata accessor for ReadingHistoryModel);
  }

  v42 = *&v15[*(v20 + 20)];
  sub_1E4697478(v15, type metadata accessor for ReadingHistory.Streak);
  if (v42 >= v29)
  {
    goto LABEL_10;
  }

LABEL_5:
  type metadata accessor for ReadingHistoryModel(0);
  v48 = v29;
  v30 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  sub_1E470AB0C();
  v31 = sub_1E4709CCC();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v11, 1, v31) != 1)
  {
    sub_1E4697478(v24, type metadata accessor for ReadingHistory.Streak);
    v26 = &unk_1ECF74CD0;
    v27 = &qword_1E471B620;
    v28 = v11;
    goto LABEL_12;
  }

  v45 = v30;
  sub_1E465E050(v11, &unk_1ECF74CD0, &qword_1E471B620);
  v44 = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    swift_once();
  }

  v33 = qword_1EE2ADC98;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v34 = swift_allocObject();
  v35 = MEMORY[0x1E69E6530];
  *(v34 + 16) = xmmword_1E471B800;
  v36 = MEMORY[0x1E69E65A8];
  *(v34 + 56) = v35;
  *(v34 + 64) = v36;
  *(v34 + 32) = v29;
  v37 = sub_1E4709C1C();
  v39 = v38;
  *(v34 + 96) = MEMORY[0x1E69E6158];
  *(v34 + 104) = sub_1E4663DE4();
  *(v34 + 72) = v37;
  *(v34 + 80) = v39;
  sub_1E470A0AC(v44, &dword_1E45E0000, v33, "🏆 New streak record: %d day streak on %@", 43, 0, v34);

  sub_1E4697B6C(a1, v47, type metadata accessor for ReadingHistoryModel);
  v40 = v46;
  (*(v32 + 16))(v46, v24, v31);
  (*(v32 + 56))(v40, 0, 1, v31);
  v48 = v29;
  sub_1E470AB1C();
  return sub_1E4697478(v24, type metadata accessor for ReadingHistory.Streak);
}

uint64_t sub_1E46887F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v157 = sub_1E4650534(&qword_1ECF74D60, &qword_1E471D858);
  v165 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v6);
  v156 = v143 - v7;
  v8 = type metadata accessor for ReadingHistoryMonth(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v155 = v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E4650534(&unk_1ECF74D30, &unk_1E471DB90);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v186 = v143 - v13;
  v14 = sub_1E4650534(&qword_1ECF74D68, &unk_1E471D860);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v154 = v143 - v16;
  v174 = sub_1E4709D5C();
  v164 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174, v17);
  v173 = v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v172 = v143 - v21;
  v22 = type metadata accessor for ReadingHistoryDay(0);
  v162 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v171 = v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v147 = v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v151 = v143 - v30;
  v31 = sub_1E4709D7C();
  v190 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31, v32);
  v187 = v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v189 = v143 - v36;
  v37 = sub_1E4650534(&qword_1ECF74D70, &unk_1E471DBD0);
  MEMORY[0x1EEE9AC00](v37 - 8, v38);
  v191 = v143 - v39;
  v40 = sub_1E4650534(&qword_1ECF74D78, &unk_1E471D870);
  MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v185 = v143 - v42;
  v184 = sub_1E4709A3C();
  v43 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184, v44);
  v183 = v143 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v46 - 8, v47);
  v49 = v143 - v48;
  v193 = sub_1E4709CCC();
  v158 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193, v50);
  v52 = v143 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v178 = v143 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v176 = v143 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v150 = v143 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v182 = v143 - v64;
  v175 = a1;
  v195 = a1;

  v65 = sub_1E4694150(sub_1E4697EDC, v194, a2);
  v66 = v65;
  v67 = v65[2];
  if (!v67)
  {
    goto LABEL_4;
  }

  v68 = sub_1E46B7AB4(v65[2], 0);
  v192 = sub_1E46B86B0(v196, v68 + 2, v67, v66);
  v188 = v196[0];
  v181 = v196[1];
  v180 = v196[2];
  v179 = v196[3];
  v177 = v196[4];

  sub_1E45E781C(v188);
  if (v192 != v67)
  {
    __break(1u);
LABEL_4:
    v68 = MEMORY[0x1E69E7CC0];
  }

  v196[0] = v68;
  sub_1E469383C(v196);
  v188 = v52;
  v170 = v22;
  v149 = a3;

  v69 = *(v196[0] + 2);
  v179 = v31;
  v166 = v196[0];
  if (v69)
  {
    v180 = (v190 + 56);
    v177 = (v190 + 8);
    v169 = (v43 + 8);
    v168 = (v158 + 48);
    v181 = (v158 + 32);
    v167 = (v158 + 56);
    i = v196[0] + 40;
    v192 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v71 = *(i - 1);
      v72 = 100 * v71;
      if ((v71 * 100) >> 64 != (100 * v71) >> 63)
      {
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);

        __break(1u);
        return result;
      }

      if (__OFADD__(v72, *i))
      {
        goto LABEL_53;
      }

      if (v72 + *i <= 9999)
      {
        (*v167)(v49, 1, 1, v193);
      }

      else
      {
        (*v180)(v185, 1, 1, v31);
        v73 = sub_1E4709D8C();
        (*(*(v73 - 8) + 56))(v191, 1, 1, v73);
        v74 = v183;
        sub_1E4709A2C();
        v75 = v189;
        sub_1E4709CDC();
        sub_1E4709D1C();
        (*v177)(v75, v31);
        (*v169)(v74, v184);
        v76 = v193;
        if ((*v168)(v49, 1, v193) != 1)
        {
          v77 = *v181;
          (*v181)(v182, v49, v76);
          v78 = v192;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v78 = sub_1E4693E1C(0, v78[2] + 1, 1, v78, &qword_1ECF74C00, &unk_1E471D880, MEMORY[0x1E6969530]);
          }

          v80 = v78[2];
          v79 = v78[3];
          v192 = v78;
          if (v80 >= v79 >> 1)
          {
            v192 = sub_1E4693E1C((v79 > 1), v80 + 1, 1, v192, &qword_1ECF74C00, &unk_1E471D880, MEMORY[0x1E6969530]);
          }

          v81 = v192;
          v192[2] = v80 + 1;
          v77(&v81[((*(v158 + 80) + 32) & ~*(v158 + 80)) + *(v158 + 72) * v80], v182, v193);
          v31 = v179;
          goto LABEL_9;
        }
      }

      sub_1E465E050(v49, &unk_1ECF74CD0, &qword_1E471B620);
LABEL_9:
      i += 16;
      if (!--v69)
      {
        goto LABEL_20;
      }
    }
  }

  v192 = MEMORY[0x1E69E7CC0];
LABEL_20:

  v82 = v192[2];
  if (!v82)
  {
    v142 = type metadata accessor for ReadingHistory.Streak(0);
    (*(*(v142 - 8) + 56))(v149, 1, 1, v142);
  }

  v83 = v158;
  v84 = v192 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
  v85 = *(v158 + 16);
  v183 = (v158 + 16);
  v184 = v84;
  v182 = v85;
  (v85)(v150);
  v86 = v189;
  sub_1E4709CDC();
  v87 = v176;
  sub_1E4709BFC();
  v88 = sub_1E46A4088(v87, 1);
  v177 = *(v83 + 8);
  (v177)(v87, v193);
  v89 = v190 + 8;
  v90 = *(v190 + 8);
  v90(v86, v31);
  sub_1E4709CDC();
  sub_1E4709BFC();
  v91 = v193;
  v190 = v89;
  v185 = v90;
  v90(v86, v31);
  v92 = type metadata accessor for ReadingHistory.Streak(0);
  v93 = *(v92 - 8);
  v94 = *(v93 + 56);
  v95 = v93 + 56;
  v148 = v92;
  v144 = v94;
  v94(v151, 1, 1);
  v96 = 0;
  v191 = (v83 + 8);
  v169 = (v83 + 32);
  v168 = (v164 + 104);
  v167 = (v164 + 8);
  v153 = (v165 + 16);
  LODWORD(v166) = *MEMORY[0x1E6969A68];
  v152 = (v165 + 8);
  v163 = (v162 + 7);
  LODWORD(v165) = *MEMORY[0x1E6969A78];
  v162 += 6;
  v143[1] = v95;
  v146 = (v95 - 8);
  LODWORD(v164) = *MEMORY[0x1E6969A48];
  v181 = v82;
  v145 = v82 - 1;
LABEL_22:
  v97 = v96;
  i = v178;
  v98 = v177;
  do
  {
    if (v97 >= v192[2])
    {
      goto LABEL_54;
    }

    v99 = v97 + 1;
    v100 = v188;
    (v182)(v188, v184 + *(v83 + 72) * v97, v91);
    if (sub_1E4709C6C())
    {
      v101 = i;
      i = v189;
      sub_1E4709CDC();
      v102 = v176;
      sub_1E4709C0C();
      v103 = v193;
      (v185)(i, v31);
      (v98)(v101, v103);
      v159 = *v169;
      (v159)(v101, v102, v103);
      if (__OFADD__(v88, 1))
      {
        goto LABEL_58;
      }

      v180 = v88 + 1;
      v160 = v97;
      v161 = v97 + 1;
      for (i = v178; ; (v159)(i, v135, v136))
      {
        sub_1E4709CDC();
        v104 = *v168;
        v105 = v173;
        v106 = v174;
        (*v168)(v173, v166, v174);
        v107 = sub_1E4709D6C();
        v108 = *v167;
        (*v167)(v105, v106);
        v104(v105, v165, v106);
        v109 = sub_1E4709D6C();
        (v108)(v105, v106);
        v104(v105, v164, v106);
        v110 = sub_1E4709D6C();
        (v108)(v105, v106);
        v111 = 100 * v107;
        if ((v107 * 100) >> 64 != (100 * v107) >> 63)
        {
          goto LABEL_55;
        }

        v112 = __OFADD__(v111, v109);
        v113 = (v111 + v109);
        v114 = v172;
        if (v112)
        {
          goto LABEL_56;
        }

        v196[0] = v113;
        sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
        v115 = v186;
        sub_1E470AB0C();
        v116 = sub_1E4650534(&unk_1ECF74D50, &qword_1E471D848);
        v117 = *(v116 - 8);
        if ((*(v117 + 48))(v115, 1, v116) == 1)
        {
          v31 = v179;
          (v185)(v187, v179);
          sub_1E465E050(v186, &unk_1ECF74D30, &unk_1E471DB90);
          v118 = 1;
          v119 = v170;
          v96 = v161;
          i = v160;
        }

        else
        {
          v120 = v186;
          v121 = v155;
          MEMORY[0x1E69159F0](v116);
          (*(v117 + 8))(v120, v116);
          v122 = v156;
          v123 = v157;
          (*v153)(v156, v121, v157);
          sub_1E4697478(v121, type metadata accessor for ReadingHistoryMonth);
          v196[0] = v110;
          v124 = v154;
          sub_1E470AB0C();
          (*v152)(v122, v123);
          v125 = sub_1E4650534(&unk_1ECF74D80, &unk_1E471DBB0);
          v126 = *(v125 - 8);
          v127 = (*(v126 + 48))(v124, 1, v125);
          v96 = v161;
          i = v160;
          if (v127 == 1)
          {
            v31 = v179;
            (v185)(v187, v179);
            sub_1E465E050(v124, &qword_1ECF74D68, &unk_1E471D860);
            v118 = 1;
          }

          else
          {
            MEMORY[0x1E69159F0](v125);
            v31 = v179;
            (v185)(v187, v179);
            (*(v126 + 8))(v124, v125);
            v118 = 0;
          }

          v119 = v170;
        }

        (*v163)(v114, v118, 1, v119);
        v128 = (*v162)(v114, 1, v119);
        v129 = v171;
        v130 = v180;
        if (v128 == 1)
        {
          sub_1E465E050(v114, &qword_1ECF74200, &qword_1E471AF80);
          goto LABEL_43;
        }

        sub_1E4697DD8(v114, v171, type metadata accessor for ReadingHistoryDay);
        v131 = sub_1E470AD8C();
        sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
        sub_1E470A62C();
        if (v131 < v196[0])
        {
          break;
        }

        v112 = __OFADD__(v130, 1);
        v132 = (v130 + 1);
        v133 = v177;
        if (v112)
        {
          goto LABEL_57;
        }

        v180 = v132;
        v134 = v189;
        sub_1E4709CDC();
        v135 = v176;
        i = v178;
        sub_1E4709C0C();
        (v185)(v134, v31);
        sub_1E4697478(v129, type metadata accessor for ReadingHistoryDay);
        v136 = v193;
        (v133)(i, v193);
      }

      sub_1E4697478(v129, type metadata accessor for ReadingHistoryDay);
LABEL_43:
      v137 = v151;
      v138 = v148;
      if ((*v146)(v151, 1, v148))
      {
        if (v130 >= 1)
        {
LABEL_45:
          v139 = v189;
          sub_1E4709CDC();
          v140 = v147;
          sub_1E4709BFC();
          (v185)(v139, v31);
          v91 = v193;
          (v177)(v188, v193);
          *(v140 + *(v148 + 20)) = v130;
          v144(v140, 0, 1);
          sub_1E4697BD4(v140, v151, &qword_1ECF74C40, &unk_1E471C980);
LABEL_48:
          v83 = v158;
          v88 = 0;
          if (v145 != i)
          {
            goto LABEL_22;
          }

          i = v178;
          v98 = v177;
          goto LABEL_50;
        }
      }

      else if (*(v137 + *(v138 + 20)) < v130)
      {
        goto LABEL_45;
      }

      v91 = v193;
      (v177)(v188, v193);
      goto LABEL_48;
    }

    (v98)(v100, v91);
    ++v97;
  }

  while (v181 != v99);

LABEL_50:
  (v98)(i, v91);
  (v98)(v150, v91);
  return sub_1E46574C0(v151, v149, &qword_1ECF74C40, &unk_1E471C980);
}

uint64_t sub_1E4689F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for ReadingHistoryDataStore.State(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE2ADC98;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E471C940;
  v16 = MEMORY[0x1E69E6158];
  *(v15 + 56) = MEMORY[0x1E69E6158];
  v17 = sub_1E4663DE4();
  *(v15 + 64) = v17;
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;

  v18 = sub_1E4683900();
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  *(v15 + 72) = v18;
  *(v15 + 80) = v19;
  v20 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  v21 = 0x676E6964616F6CLL;
  if (*(a2 + *(v20 + 44)))
  {
    v21 = 0x7964616572;
  }

  v22 = 0xE700000000000000;
  if (*(a2 + *(v20 + 44)))
  {
    v22 = 0xE500000000000000;
  }

  *(v15 + 136) = v16;
  *(v15 + 144) = v17;
  *(v15 + 112) = v21;
  *(v15 + 120) = v22;
  v23 = sub_1E46E6060();
  *(v15 + 176) = v16;
  *(v15 + 184) = v17;
  *(v15 + 152) = v23;
  *(v15 + 160) = v24;
  sub_1E470A0AC(v35, &dword_1E45E0000, v14, "Update reason: %@ - %@; loaded: %@, lastSource: %@", 50, 2, v15);

  sub_1E4697B6C(a1, v13, type metadata accessor for ReadingHistoryDataStore.State);
  v25 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  sub_1E4697C3C(v13, v5 + v25, type metadata accessor for ReadingHistoryDataStore.State);
  swift_endAccess();
  sub_1E4683CEC();
  v26 = sub_1E4697478(v13, type metadata accessor for ReadingHistoryDataStore.State);
  v27 = *(v5 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange);
  MEMORY[0x1EEE9AC00](v26, v28);
  *&v34[-16] = a2;
  v29 = *(v27 + 16);
  v30 = swift_allocObject();
  v30[2] = sub_1E4697CA4;
  v30[3] = &v34[-32];
  v30[4] = v27;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1E4697D00;
  *(v31 + 24) = v30;
  aBlock[4] = sub_1E467A478;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46679F4;
  aBlock[3] = &unk_1F5E64E10;
  v32 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v29, v32);
  _Block_release(v32);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
  }

  return result;
}

void sub_1E468A328(uint64_t a1, uint64_t a2, char *a3)
{
  v250 = a3;
  v254 = a1;
  v3 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v242 = &v212 - v5;
  v243 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  MEMORY[0x1EEE9AC00](v243, v6);
  v240 = &v212 - v7;
  v8 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v236 = &v212 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v237 = &v212 - v13;
  v244 = type metadata accessor for ReadingHistory.Streak(0);
  v245 = *(v244 - 8);
  MEMORY[0x1EEE9AC00](v244, v14);
  v238 = &v212 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v239 = &v212 - v18;
  v248 = sub_1E4709D5C();
  v251 = *(v248 - 8);
  MEMORY[0x1EEE9AC00](v248, v19);
  v252 = &v212 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E4709D7C();
  v22 = *(v21 - 8);
  v246 = v21;
  v247 = v22;
  MEMORY[0x1EEE9AC00](v21, v23);
  v249 = &v212 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v253 = type metadata accessor for ReadingHistoryDataStore.State(0);
  MEMORY[0x1EEE9AC00](v253, v25);
  v241 = &v212 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v212 - v29;
  v31 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v34 = &v212 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v212 - v37;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = (&v212 - v41);
  MEMORY[0x1EEE9AC00](v43, v44);
  v46 = &v212 - v45;
  v47 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v50 = &v212 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51, v52);
  v54 = &v212 - v53;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v212 - v57;
  v59 = sub_1E4709CCC();
  MEMORY[0x1EEE9AC00](v59, v60);
  MEMORY[0x1EEE9AC00](v62, &v212 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v63, v64);
  MEMORY[0x1EEE9AC00](v65, v66);
  v74 = &v212 - v73;
  v75 = *(v254 + 8);
  v76 = *(v254 + 32);
  v77 = *(v254 + 41);
  if (v77)
  {
    v78 = *(v254 + 32);
  }

  else
  {
    v78 = *(v254 + 8);
  }

  if (*(v70 + 136) != v78)
  {
    v235 = v58;
    v232 = v42;
    v230 = v38;
    v228 = v34;
    v229 = v47;
    v231 = v50;
    v234 = v54;
    v233 = v46;
    v79 = *(v254 + 16);
    if (v77)
    {
      v79 = *(v254 + 40);
    }

    if (v79 == 3)
    {
      *(v70 + 136) = v78;
      v80 = v70 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
      v81 = v67;
      v82 = v72;
      swift_beginAccess();
      (*(v82 + 16))(v74, v80 + *(v253 + 24), v81);
      v83 = v80;
      v84 = v235;
      sub_1E4697B6C(v83, v235, type metadata accessor for ReadingHistoryModel);
      ReadingHistoryModel.readingDay(for:)(&v258);
      sub_1E4697478(v84, type metadata accessor for ReadingHistoryModel);
      (*(v82 + 8))(v74, v81);
      if (v259 == 2)
      {
        *v250 = 1;
      }

      return;
    }

    if ((v77 & 1) == 0)
    {
      *(v70 + 136) = v75;
      return;
    }

    if (!*(v254 + 40))
    {
      *(v70 + 136) = v76;
      return;
    }

    v85 = v234;
    v86 = v253;
    if (*(v254 + 40) == 1)
    {
      v227 = v69;
      v213 = v68;
      v219 = v70;
      v87 = v70 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
      v88 = v71;
      v89 = v67;
      v90 = v72;
      swift_beginAccess();
      v91 = v86[6];
      v220 = v90;
      v94 = *(v90 + 16);
      v92 = v90 + 16;
      v93 = v94;
      v250 = v88;
      v254 = v89;
      v94(v88, (v87 + v91), v89);
      sub_1E4697B6C(v87, v85, type metadata accessor for ReadingHistoryModel);
      if ((*&v76 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else
      {
        v38 = v235;
        if (v76 > -9.22337204e18)
        {
          v95 = v250;
          if (v76 < 9.22337204e18)
          {
            ReadingHistoryModel.setGoal(_:date:)(v76, v250);
            type metadata accessor for ReadingHistoryDataStore(0);
            v226 = v87;
            sub_1E4697B6C(v87, v30, type metadata accessor for ReadingHistoryDataStore.State);
            v96 = v233;
            sub_1E46857BC(v30, v85, v95, v233);
            sub_1E4697478(v30, type metadata accessor for ReadingHistoryDataStore.State);
            sub_1E4688298(v85, v96, v38);
            sub_1E4697478(v85, type metadata accessor for ReadingHistoryModel);
            sub_1E4697DD8(v38, v85, type metadata accessor for ReadingHistoryModel);
            v87 = v227;
            v222 = v92;
            v221 = v93;
            v93(v227, v95, v254);
            sub_1E4709CDC();
            v98 = v251;
            v97 = v252;
            v99 = v251 + 104;
            v58 = *(v251 + 104);
            v218 = *MEMORY[0x1E6969A68];
            v100 = v248;
            (v58)(v252);
            v101 = sub_1E4709D6C();
            v38 = *(v98 + 8);
            (v38)(v97, v100);
            v217 = *MEMORY[0x1E6969A78];
            v235 = v99;
            v225 = v58;
            (v58)(v97);
            v102 = v97;
            v103 = sub_1E4709D6C();
            v251 = v98 + 8;
            (v38)(v102, v100);
            v104 = 100 * v101;
            if ((v101 * 100) >> 64 == (100 * v101) >> 63)
            {
              v216 = v104 + v103;
              v105 = v244;
              if (!__OFADD__(v104, v103))
              {
                v215 = *MEMORY[0x1E6969A48];
                v106 = v248;
                (v225)(v102);
                v107 = v227;
                v108 = v249;
                v109 = sub_1E4709D6C();
                v110 = v252;
                v111 = v109;
                (v38)(v252, v106);
                v112 = *(v247 + 8);
                v247 += 8;
                v214 = v112;
                v112(v108, v246);
                v113 = *(v220 + 8);
                v224 = v220 + 8;
                v223 = v113;
                v113(v107, v254);
                v114 = v226;
                v115 = v232;
                sub_1E465E0B0(v226 + v86[5], v232, &qword_1ECF74C40, &unk_1E471C980);
                v116 = v245 + 48;
                v117 = *(v245 + 48);
                if (v117(v115, 1, v105) == 1)
                {
                  v118 = v115;
LABEL_25:
                  sub_1E465E050(v118, &qword_1ECF74C40, &unk_1E471C980);
                  v38 = v240;
                  v123 = v242;
LABEL_26:
                  v58 = v243;
LABEL_27:
                  v124 = v234;
LABEL_28:
                  v125 = v241;
                  sub_1E4697B6C(v124, v241, type metadata accessor for ReadingHistoryModel);
                  v126 = v253;
                  v127 = v233;
                  sub_1E465E0B0(v233, v125 + *(v253 + 20), &qword_1ECF74C40, &unk_1E471C980);
                  v128 = v250;
                  v221(v125 + *(v126 + 24), v250, v254);
                  sub_1E46A38A8(v128, (v125 + *(v126 + 28)));
                  v129 = v219;

                  sub_1E470B37C();

                  v130 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
                  (*(*(v130 - 8) + 56))(v123, 1, 2, v130);
                  sub_1E4697C3C(v125, v38, type metadata accessor for ReadingHistoryModel);
                  sub_1E4697BD4(v123, &v38[*(v58 + 12)], &unk_1ECF74C60, &qword_1E471C910);
                  sub_1E4689F54(v125, v38, 0xD000000000000015, 0x80000001E4718DF0);
                  *(v129 + 136) = v76;
                  sub_1E4658550(v129 + 56, &v255);
                  v131 = v256;
                  v132 = v257;
                  sub_1E465057C(&v255, v256);
                  v133 = v231;
                  sub_1E4697B6C(v226, v231, type metadata accessor for ReadingHistoryModel);
                  (*(v132 + 48))(v133, v131, v132);
                  sub_1E4697478(v133, type metadata accessor for ReadingHistoryModel);
                  sub_1E4697478(v125, type metadata accessor for ReadingHistoryDataStore.State);
                  sub_1E4697478(v234, type metadata accessor for ReadingHistoryModel);
                  v223(v250, v254);
                  sub_1E4658A0C(&v255);
                  sub_1E465E050(v38, &qword_1ECF74A00, &unk_1E471D5B0);
                  sub_1E465E050(v127, &qword_1ECF74C40, &unk_1E471C980);
                  return;
                }

                v119 = v115;
                v120 = v239;
                sub_1E4697DD8(v119, v239, type metadata accessor for ReadingHistory.Streak);
                v121 = v114 + v86[7];
                v122 = v230;
                sub_1E465E0B0(v121, v230, &qword_1ECF74C40, &unk_1E471C980);
                v232 = v117;
                if (v117(v122, 1, v105) == 1)
                {
                  sub_1E4697478(v120, type metadata accessor for ReadingHistory.Streak);
                  v118 = v122;
                  goto LABEL_25;
                }

                v212 = v111;
                v245 = v116;
                sub_1E4697DD8(v122, v238, type metadata accessor for ReadingHistory.Streak);
                v134 = v120;
                v87 = v227;
                v221(v227, v134, v254);
                sub_1E4709CDC();
                v58 = v225;
                (v225)(v110, v218, v106);
                v135 = sub_1E4709D6C();
                (v38)(v252, v106);
                (v58)(v252, v217, v106);
                v136 = sub_1E4709D6C();
                v137 = v252;
                v138 = v106;
                v139 = v136;
                (v38)(v252, v138);
                v140 = 100 * v135;
                if ((v135 * 100) >> 64 == (100 * v135) >> 63)
                {
                  v141 = v140 + v139;
                  v58 = v243;
                  v142 = v232;
                  if (!__OFADD__(v140, v139))
                  {
                    v143 = v248;
                    (v225)(v137, v215, v248);
                    v144 = v227;
                    v145 = v249;
                    v146 = sub_1E4709D6C();
                    v147 = v252;
                    v148 = v146;
                    (v38)(v252, v143);
                    v214(v145, v246);
                    v223(v144, v254);
                    if (v141 != v216 || v148 != v212)
                    {
                      goto LABEL_48;
                    }

                    v221(v227, v238, v254);
                    sub_1E4709CDC();
                    v149 = v248;
                    v87 = v235;
                    v230 = v38;
                    v150 = v225;
                    (v225)(v147, v218, v248);
                    v151 = sub_1E4709D6C();
                    (v230)(v252, v149);
                    (v150)(v252, v217, v149);
                    v38 = v230;
                    v152 = sub_1E4709D6C();
                    v153 = v252;
                    v154 = v152;
                    (v38)(v252, v149);
                    v155 = 100 * v151;
                    if ((v151 * 100) >> 64 == (100 * v151) >> 63)
                    {
                      v156 = v155 + v154;
                      if (!__OFADD__(v155, v154))
                      {
                        v157 = v248;
                        (v225)(v153, v215, v248);
                        v158 = v227;
                        v159 = v249;
                        v160 = sub_1E4709D6C();
                        v161 = v252;
                        v162 = v160;
                        (v38)(v252, v157);
                        v214(v159, v246);
                        v223(v158, v254);
                        if (v156 == v216 && v162 == v212)
                        {
                          v163 = v244;
                          v164 = v142(v233, 1, v244);
                          v124 = v234;
                          v87 = v239;
                          if (v164 == 1)
                          {
                            goto LABEL_46;
                          }

                          v165 = v228;
                          sub_1E465E0B0(v233, v228, &qword_1ECF74C40, &unk_1E471C980);
                          if (v142(v165, 1, v163) == 1)
                          {
                            __break(1u);
                            return;
                          }

                          v221(v227, v165, v254);
                          sub_1E4697478(v165, type metadata accessor for ReadingHistory.Streak);
                          sub_1E4709CDC();
                          v166 = v248;
                          v87 = v235;
                          v167 = v225;
                          (v225)(v161, v218, v248);
                          v168 = sub_1E4709D6C();
                          v169 = v230;
                          (v230)(v252, v166);
                          (v167)(v252, v217, v166);
                          v38 = v169;
                          v170 = sub_1E4709D6C();
                          v171 = v252;
                          v172 = v170;
                          (v169)(v252, v166);
                          v173 = 100 * v168;
                          if ((v168 * 100) >> 64 == (100 * v168) >> 63)
                          {
                            v174 = v173 + v172;
                            if (!__OFADD__(v173, v172))
                            {
                              v175 = v248;
                              (v225)(v171, v215, v248);
                              v87 = v227;
                              v176 = v249;
                              v177 = sub_1E4709D6C();
                              (v169)(v252, v175);
                              v214(v176, v246);
                              v223(v87, v254);
                              v178 = 100 * v174;
                              if ((v174 * 100) >> 64 == (100 * v174) >> 63)
                              {
                                v179 = __OFADD__(v178, v177);
                                v180 = v178 + v177;
                                v124 = v234;
                                v87 = v239;
                                if (!v179)
                                {
                                  v181 = 100 * v216;
                                  if ((v216 * 100) >> 64 == (100 * v216) >> 63)
                                  {
                                    v179 = __OFADD__(v181, v212);
                                    v182 = v181 + v212;
                                    if (!v179)
                                    {
                                      if (v180 >= v182)
                                      {
                                        sub_1E4697478(v238, type metadata accessor for ReadingHistory.Streak);
                                        sub_1E4697478(v87, type metadata accessor for ReadingHistory.Streak);
                                        v38 = v240;
                                        v123 = v242;
                                        goto LABEL_28;
                                      }

LABEL_46:
                                      v183 = *(v163 + 20);
                                      v184 = v238;
                                      v58 = *&v238[v183];
                                      v255 = v58;
                                      v185 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
                                      v186 = v237;
                                      sub_1E470AB0C();
                                      v187 = v220;
                                      if ((*(v220 + 48))(v186, 1, v254) == 1)
                                      {
                                        sub_1E4697478(v184, type metadata accessor for ReadingHistory.Streak);
                                        sub_1E4697478(v87, type metadata accessor for ReadingHistory.Streak);
                                        sub_1E465E050(v186, &unk_1ECF74CD0, &qword_1E471B620);
                                        v38 = v240;
LABEL_55:
                                        v123 = v242;
                                        v58 = v243;
                                        goto LABEL_28;
                                      }

                                      v245 = v185;
                                      v188 = *(v187 + 32);
                                      v189 = v213;
                                      v190 = v254;
                                      v188(v213, v186, v254);
                                      v87 = v227;
                                      v221(v227, v189, v190);
                                      sub_1E4709CDC();
                                      v191 = v252;
                                      v192 = v248;
                                      v193 = v225;
                                      (v225)(v252, v218, v248);
                                      v194 = sub_1E4709D6C();
                                      (v230)(v191, v192);
                                      (v193)(v191, v217, v192);
                                      v38 = v230;
                                      v195 = sub_1E4709D6C();
                                      (v38)(v191, v192);
                                      v196 = 100 * v194;
                                      v123 = v242;
                                      if ((v194 * 100) >> 64 == (100 * v194) >> 63)
                                      {
                                        v197 = v196 + v195;
                                        if (!__OFADD__(v196, v195))
                                        {
                                          v198 = v252;
                                          v199 = v248;
                                          (v225)(v252, v215, v248);
                                          v200 = v227;
                                          v201 = v249;
                                          v202 = sub_1E4709D6C();
                                          (v38)(v198, v199);
                                          v214(v201, v246);
                                          v223(v200, v254);
                                          if (v197 != v216 || v202 != v212)
                                          {
                                            v223(v213, v254);
                                            sub_1E4697478(v238, type metadata accessor for ReadingHistory.Streak);
                                            sub_1E4697478(v239, type metadata accessor for ReadingHistory.Streak);
                                            v38 = v240;
                                            goto LABEL_26;
                                          }

                                          v87 = sub_1E470B2CC();
                                          v38 = v240;
                                          if (qword_1EE2ADC90 == -1)
                                          {
                                            goto LABEL_54;
                                          }

                                          goto LABEL_75;
                                        }

LABEL_74:
                                        __break(1u);
LABEL_75:
                                        swift_once();
LABEL_54:
                                        v203 = qword_1EE2ADC98;
                                        sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
                                        v204 = swift_allocObject();
                                        v205 = MEMORY[0x1E69E6530];
                                        *(v204 + 16) = xmmword_1E471B800;
                                        v206 = MEMORY[0x1E69E65A8];
                                        *(v204 + 56) = v205;
                                        *(v204 + 64) = v206;
                                        *(v204 + 32) = v58;
                                        v207 = v238;
                                        v208 = sub_1E4709C1C();
                                        v210 = v209;
                                        *(v204 + 96) = MEMORY[0x1E69E6158];
                                        *(v204 + 104) = sub_1E4663DE4();
                                        *(v204 + 72) = v208;
                                        *(v204 + 80) = v210;
                                        sub_1E470A0AC(v87, &dword_1E45E0000, v203, "🗑 Removing streak record: %d day streak on %@", 48, 0, v204);

                                        v211 = v254;
                                        (*(v220 + 56))(v236, 1, 1, v254);
                                        v255 = v58;
                                        v124 = v234;
                                        sub_1E470AB1C();
                                        v223(v213, v211);
                                        sub_1E4697478(v207, type metadata accessor for ReadingHistory.Streak);
                                        sub_1E4697478(v239, type metadata accessor for ReadingHistory.Streak);
                                        goto LABEL_55;
                                      }

LABEL_73:
                                      __break(1u);
                                      goto LABEL_74;
                                    }

LABEL_72:
                                    __break(1u);
                                    goto LABEL_73;
                                  }

LABEL_71:
                                  __break(1u);
                                  goto LABEL_72;
                                }

LABEL_70:
                                __break(1u);
                                goto LABEL_71;
                              }

LABEL_69:
                              __break(1u);
                              goto LABEL_70;
                            }

LABEL_68:
                            __break(1u);
                            goto LABEL_69;
                          }

LABEL_67:
                          __break(1u);
                          goto LABEL_68;
                        }

LABEL_48:
                        sub_1E4697478(v238, type metadata accessor for ReadingHistory.Streak);
                        sub_1E4697478(v239, type metadata accessor for ReadingHistory.Streak);
                        v38 = v240;
                        v123 = v242;
                        goto LABEL_27;
                      }

LABEL_66:
                      __break(1u);
                      goto LABEL_67;
                    }

LABEL_65:
                    __break(1u);
                    goto LABEL_66;
                  }

LABEL_64:
                  __break(1u);
                  goto LABEL_65;
                }

LABEL_63:
                __break(1u);
                goto LABEL_64;
              }

LABEL_62:
              __break(1u);
              goto LABEL_63;
            }

LABEL_61:
            __break(1u);
            goto LABEL_62;
          }

LABEL_60:
          __break(1u);
          goto LABEL_61;
        }
      }

      __break(1u);
      goto LABEL_60;
    }
  }
}

uint64_t ReadingHistoryModel.readingDay(for:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v17 - v5;
  v7 = type metadata accessor for ReadingHistoryDay(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ReadingHistoryModel.readingHistoryDay(for:)(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1E465E050(v6, &qword_1ECF74200, &qword_1E471AF80);
    v13 = 0;
    v14 = 0;
    v15 = 2;
  }

  else
  {
    sub_1E4697DD8(v6, v11, type metadata accessor for ReadingHistoryDay);
    v13 = sub_1E470AD8C();
    sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
    sub_1E470A62C();
    v14 = v17[1];
    v16 = sub_1E470AD8C();
    sub_1E470A62C();
    result = sub_1E4697478(v11, type metadata accessor for ReadingHistoryDay);
    v15 = v16 >= v17[0];
  }

  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  return result;
}

uint64_t sub_1E468C030(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v62 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v62, v3);
  v61 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v58 - v7;
  v9 = sub_1E4650534(&qword_1ECF74D90, &unk_1E471C8F0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v58 - v15;
  v17 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v59 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v58 = &v58 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v58 - v29;
  v60 = a1;
  sub_1E465E0B0(a1, v16, &qword_1ECF74D90, &unk_1E471C8F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = sub_1E4650534(&qword_1ECF74A08, &unk_1E471D890);
    sub_1E46574C0(&v16[*(v31 + 48)], v30, &qword_1ECF74A00, &unk_1E471D5B0);
    sub_1E465E050(v16, &qword_1ECF74A00, &unk_1E471D5B0);
  }

  else
  {
    sub_1E46574C0(v16, v30, &qword_1ECF74A00, &unk_1E471D5B0);
  }

  v32 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  v33 = v63;
  swift_beginAccess();
  sub_1E4697B6C(v33 + v32, v8, type metadata accessor for ReadingHistoryModel);
  sub_1E4698194(&qword_1EE2ADAB0, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v34 = sub_1E470A8AC();
  sub_1E4697478(v8, type metadata accessor for ReadingHistoryModel);
  if (v34)
  {
    sub_1E4686820(v30);
    sub_1E465E0B0(v60, v12, &qword_1ECF74D90, &unk_1E471C8F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = *(sub_1E4650534(&qword_1ECF74A08, &unk_1E471D890) + 48);
      v36 = v58;
      sub_1E46574C0(v12, v58, &qword_1ECF74A00, &unk_1E471D5B0);
      v37 = &v12[v35];
      v38 = v59;
      sub_1E46574C0(v37, v59, &qword_1ECF74A00, &unk_1E471D5B0);
      v39 = *(v17 + 44);
      if ((*(v36 + v39) & 1) == 0 && *(v38 + v39) == 1 && *(v33 + 152) == 1)
      {
        sub_1E468C708();
      }

      sub_1E465E050(v38, &qword_1ECF74A00, &unk_1E471D5B0);
      v40 = v36;
      v41 = &qword_1ECF74A00;
      v42 = &unk_1E471D5B0;
    }

    else
    {
      v41 = &qword_1ECF74D90;
      v42 = &unk_1E471C8F0;
      v40 = v12;
    }

    sub_1E465E050(v40, v41, v42);
    sub_1E4658550(v33 + 56, aBlock);
    v54 = v65;
    v55 = v66;
    sub_1E465057C(aBlock, v65);
    v56 = v33 + v32;
    v57 = v61;
    sub_1E4697B6C(v56, v61, type metadata accessor for ReadingHistoryModel);
    (*(v55 + 6))(v57, v54, v55);
    sub_1E4697478(v57, type metadata accessor for ReadingHistoryModel);
    sub_1E4658A0C(aBlock);
    return sub_1E465E050(v30, &qword_1ECF74A00, &unk_1E471D5B0);
  }

  v43 = v30[*(v17 + 44)];
  v44 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange;

  sub_1E470B37C();

  v45 = v20[*(v17 + 44)];
  v46 = sub_1E465E050(v20, &qword_1ECF74A00, &unk_1E471D5B0);
  if (v43 == v45)
  {
    return sub_1E465E050(v30, &qword_1ECF74A00, &unk_1E471D5B0);
  }

  v48 = *(v33 + v44);
  MEMORY[0x1EEE9AC00](v46, v47);
  *(&v58 - 2) = v30;
  v49 = *(v48 + 16);
  v50 = swift_allocObject();
  v50[2] = sub_1E46981DC;
  v50[3] = &v58 - 4;
  v50[4] = v48;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_1E4698428;
  *(v51 + 24) = v50;
  v66 = sub_1E467A478;
  v67 = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46679F4;
  v65 = &unk_1F5E65248;
  v52 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v49, v52);
  _Block_release(v52);
  LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

  if ((v49 & 1) == 0)
  {
    return sub_1E465E050(v30, &qword_1ECF74A00, &unk_1E471D5B0);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E468C708()
{
  v1 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v61 = &v49 - v3;
  v58 = type metadata accessor for ReadingHistoryDataStore.State(0);
  MEMORY[0x1EEE9AC00](v58, v4);
  v62 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E4650534(&unk_1ECF74CF0, &qword_1E471D828);
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v55 = &v49 - v8;
  v9 = sub_1E4650534(&unk_1ECF74D00, &unk_1E471DBA0);
  v51 = *(v9 - 8);
  v52 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v49 - v11;
  v50 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v50, v13);
  v60 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v49 - v17;
  v19 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v59 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v49 - v24;
  v26 = v0;
  v54 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange;

  sub_1E470B37C();

  v27 = v25[*(v19 + 44)];
  result = sub_1E465E050(v25, &qword_1ECF74A00, &unk_1E471D5B0);
  if (v27 == 1)
  {
    if (qword_1EE2AE440 != -1)
    {
      swift_once();
    }

    *(v26 + 136) = qword_1EE2AE450;
    v29 = v26 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
    v53 = v26 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
    swift_beginAccess();
    v49 = type metadata accessor for ReadingHistoryModel;
    sub_1E4697B6C(v29, v18, type metadata accessor for ReadingHistoryModel);
    v31 = v51;
    v30 = v52;
    (*(v51 + 16))(v12, v18, v52);
    sub_1E4681564(v12, v18);
    (*(v31 + 8))(v12, v30);
    v33 = v55;
    v32 = v56;
    v34 = v57;
    (*(v56 + 16))(v55, &v18[*(v50 + 20)], v57);
    sub_1E46819C8(v33, v18);
    (*(v32 + 8))(v33, v34);
    v35 = v62;
    sub_1E4697B6C(v18, v62, type metadata accessor for ReadingHistoryModel);
    v36 = v58;
    v37 = *(v58 + 20);
    v38 = type metadata accessor for ReadingHistory.Streak(0);
    v39 = *(*(v38 - 8) + 56);
    v39(v35 + v37, 1, 1, v38);
    v40 = *(v36 + 24);
    v41 = sub_1E4709CCC();
    (*(*(v41 - 8) + 16))(v35 + v40, v53 + v40, v41);
    v39(v35 + *(v36 + 28), 1, 1, v38);

    v42 = v59;
    sub_1E470B37C();

    v43 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
    v44 = v61;
    (*(*(v43 - 8) + 56))(v61, 1, 2, v43);
    sub_1E4697C3C(v18, v42, type metadata accessor for ReadingHistoryModel);
    sub_1E4697BD4(v44, v42 + *(v19 + 48), &unk_1ECF74C60, &qword_1E471C910);
    sub_1E4689F54(v35, v42, 0x7461447261656C63, 0xE900000000000061);
    sub_1E4658550(v26 + 56, v63);
    v45 = v64;
    v46 = v65;
    sub_1E465057C(v63, v64);
    v47 = v60;
    sub_1E4697B6C(v53, v60, v49);
    (*(v46 + 48))(v47, v45, v46);
    sub_1E4697478(v47, type metadata accessor for ReadingHistoryModel);
    sub_1E4697478(v35, type metadata accessor for ReadingHistoryDataStore.State);
    sub_1E4658A0C(v63);
    sub_1E465E050(v42, &qword_1ECF74A00, &unk_1E471D5B0);
    result = sub_1E4697478(v18, type metadata accessor for ReadingHistoryModel);
    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  *(v26 + 152) = v48;
  return result;
}

Swift::Void __swiftcall ReadingHistoryDataStore.handleSignificantDateChange()()
{
  v1 = v0;
  v48 = sub_1E4709D7C();
  isa = v48[-1].isa;
  MEMORY[0x1EEE9AC00](v48, v2);
  v44 = &v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1E4709CCC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v47 = &v38[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8, v9);
  v45 = &v38[-v10];
  MEMORY[0x1EEE9AC00](v11, v12);
  v49 = &v38[-v13];
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v38[-v16];
  v39 = sub_1E470B2CC();
  if (qword_1EE2ADC90 != -1)
  {
    swift_once();
  }

  v40 = qword_1EE2ADC98;
  sub_1E4650534(&unk_1ECF747C0, &qword_1E471B830);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1E471BA00;
  v19 = *(v0 + 120);
  v19();
  v20 = sub_1E4709C1C();
  v22 = v21;
  v23 = *(v5 + 8);
  v42 = v5 + 8;
  v43 = v23;
  v23(v17, v4);
  *(v18 + 56) = MEMORY[0x1E69E6158];
  *(v18 + 64) = sub_1E4663DE4();
  *(v18 + 32) = v20;
  *(v18 + 40) = v22;
  sub_1E470A0AC(v39, &dword_1E45E0000, v40, "ReadingHistoryDataStore: Handle significant date change %@", 58, 2, v18);

  (v19)(v24);
  v25 = v44;
  sub_1E4709CDC();
  v26 = v49;
  v41 = v17;
  sub_1E4709CEC();
  (*(isa + 1))(v25, v48);
  v48 = *(v1 + 144);
  v27 = *(v5 + 16);
  v28 = v45;
  v27(v45, v26, v4);
  v29 = v47;
  v27(v47, v17, v4);
  v30 = *(v5 + 80);
  v31 = (v30 + 24) & ~v30;
  v32 = (v6 + v30 + v31) & ~v30;
  v33 = swift_allocObject();
  *(v33 + 16) = v1;
  v34 = *(v5 + 32);
  v34(v33 + v31, v28, v4);
  v34(v33 + v32, v29, v4);
  v35 = swift_allocObject();
  *(v35 + 16) = sub_1E46973D0;
  *(v35 + 24) = v33;
  aBlock[4] = sub_1E465DE98;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46679F4;
  aBlock[3] = &unk_1F5E646C0;
  v36 = _Block_copy(aBlock);

  dispatch_sync(v48, v36);
  _Block_release(v36);
  v37 = v43;
  v43(v26, v4);
  v37(v41, v4);
  LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

  if (v37)
  {
    __break(1u);
  }
}

void sub_1E468D3CC(uint64_t a1, char *a2, char *a3)
{
  v88 = a3;
  v93 = a2;
  v4 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v98 = &v84 - v6;
  v7 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v100 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v91 = &v84 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v90 = &v84 - v15;
  v101 = type metadata accessor for ReadingHistoryDataStore.State(0);
  MEMORY[0x1EEE9AC00](v101, v16);
  v99 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v97 = &v84 - v20;
  v21 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v87 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v92 = &v84 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v89 = &v84 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v103 = &v84 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v84 - v35;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v84 - v39;
  v41 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v102 = &v84 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v84 - v46;
  v94 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange;
  v48 = a1;

  sub_1E470B37C();

  v95 = v41;
  LODWORD(a1) = v47[*(v41 + 44)];
  sub_1E465E050(v47, &qword_1ECF74A00, &unk_1E471D5B0);
  if (a1 == 1)
  {
    v86 = 0;
    v85 = v48;
    v49 = v48 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
    swift_beginAccess();
    v50 = v101;
    v51 = v49 + *(v101 + 20);
    v96 = v40;
    sub_1E465E0B0(v51, v40, &qword_1ECF74C40, &unk_1E471C980);
    v52 = type metadata accessor for ReadingHistoryDataStore(0);
    v53 = v97;
    sub_1E4697B6C(v49, v97, type metadata accessor for ReadingHistoryDataStore.State);
    v54 = v90;
    sub_1E4697B6C(v49, v90, type metadata accessor for ReadingHistoryModel);
    v55 = v93;
    v84 = v52;
    sub_1E46857BC(v53, v54, v93, v36);
    sub_1E4697478(v54, type metadata accessor for ReadingHistoryModel);
    sub_1E4697478(v53, type metadata accessor for ReadingHistoryDataStore.State);
    v56 = v91;
    sub_1E4697B6C(v49, v91, type metadata accessor for ReadingHistoryModel);
    sub_1E465E0B0(v49 + *(v50 + 28), v103, &qword_1ECF74C40, &unk_1E471C980);
    v97 = v36;
    v57 = v89;
    sub_1E465E0B0(v36, v89, &qword_1ECF74C40, &unk_1E471C980);
    v58 = type metadata accessor for ReadingHistory.Streak(0);
    v59 = *(*(v58 - 8) + 48);
    if (v59(v57, 1, v58) == 1)
    {
      sub_1E465E050(v57, &qword_1ECF74C40, &unk_1E471C980);
      v60 = 0;
    }

    else
    {
      v60 = *(v57 + *(v58 + 20));
      sub_1E4697478(v57, type metadata accessor for ReadingHistory.Streak);
    }

    v62 = v92;
    sub_1E465E0B0(v96, v92, &qword_1ECF74C40, &unk_1E471C980);
    if (v59(v62, 1, v58) == 1)
    {
      sub_1E465E050(v62, &qword_1ECF74C40, &unk_1E471C980);
      v63 = 0;
    }

    else
    {
      v63 = *(v62 + *(v58 + 20));
      sub_1E4697478(v62, type metadata accessor for ReadingHistory.Streak);
    }

    v64 = v97;
    v65 = v103;
    v66 = v55;
    v67 = sub_1E46A6620(v55, 1);
    v68 = v99;
    if (v63 < v60 || v67)
    {
      sub_1E4688298(v56, v64, v54);
      sub_1E4697478(v56, type metadata accessor for ReadingHistoryModel);
      sub_1E4697DD8(v54, v56, type metadata accessor for ReadingHistoryModel);
      v69 = v87;
      sub_1E46A38A8(v88, v87);
      sub_1E465E050(v65, &qword_1ECF74C40, &unk_1E471C980);
      sub_1E46574C0(v69, v65, &qword_1ECF74C40, &unk_1E471C980);
    }

    sub_1E4697B6C(v56, v68, type metadata accessor for ReadingHistoryModel);
    v70 = v101;
    sub_1E465E0B0(v64, v68 + *(v101 + 20), &qword_1ECF74C40, &unk_1E471C980);
    v71 = *(v70 + 24);
    v72 = sub_1E4709CCC();
    (*(*(v72 - 8) + 16))(v68 + v71, v66, v72);
    sub_1E465E0B0(v65, v68 + *(v70 + 28), &qword_1ECF74C40, &unk_1E471C980);
    v73 = v85;

    v74 = v102;
    v75 = v95;
    v76 = v86;
    sub_1E470B37C();

    v77 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
    v78 = v98;
    (*(*(v77 - 8) + 56))(v98, 1, 2, v77);
    sub_1E4697C3C(v68, v74, type metadata accessor for ReadingHistoryModel);
    sub_1E4697BD4(v78, v74 + *(v75 + 48), &unk_1ECF74C60, &qword_1E471C910);
    sub_1E4689F54(v68, v74, 0xD00000000000001BLL, 0x80000001E4718CD0);
    sub_1E4658550(v73 + 56, v104);
    v79 = v105;
    v80 = v106;
    sub_1E465057C(v104, v105);
    v81 = v49;
    v82 = v100;
    sub_1E4697B6C(v81, v100, type metadata accessor for ReadingHistoryModel);
    (*(v80 + 48))(v82, v79, v80);
    if (v76)
    {
    }

    sub_1E4697478(v82, type metadata accessor for ReadingHistoryModel);
    sub_1E4697478(v68, type metadata accessor for ReadingHistoryDataStore.State);
    sub_1E465E050(v103, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E4697478(v56, type metadata accessor for ReadingHistoryModel);
    sub_1E465E050(v97, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E465E050(v96, &qword_1ECF74C40, &unk_1E471C980);
    sub_1E4658A0C(v104);
    sub_1E465E050(v102, &qword_1ECF74A00, &unk_1E471D5B0);
  }

  else
  {
    v61 = sub_1E470B2CC();
    if (qword_1EE2ADC90 != -1)
    {
      v83 = v61;
      swift_once();
      v61 = v83;
    }

    sub_1E470A0AC(v61, &dword_1E45E0000, qword_1EE2ADC98, "ReadingHistoryDataStore: Handle significant date change - model is not ready, skipping ", 87, 2, MEMORY[0x1E69E7CC0]);
  }
}

BOOL sub_1E468DDF0(__int128 *a1, uint64_t a2)
{
  v26[1] = a2;
  v3 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = v26 - v5;
  v7 = type metadata accessor for ReadingHistoryDay(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4650534(&unk_1ECF74CD0, &qword_1E471B620);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = v26 - v14;
  v16 = sub_1E4709CCC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a1;
  sub_1E46A34A8(v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    v21 = &unk_1ECF74CD0;
    v22 = &qword_1E471B620;
    v23 = v15;
LABEL_5:
    sub_1E465E050(v23, v21, v22);
    return 0;
  }

  (*(v17 + 32))(v20, v15, v16);
  ReadingHistoryModel.readingHistoryDay(for:)(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v17 + 8))(v20, v16);
    v21 = &qword_1ECF74200;
    v22 = &qword_1E471AF80;
    v23 = v6;
    goto LABEL_5;
  }

  sub_1E4697DD8(v6, v11, type metadata accessor for ReadingHistoryDay);
  v25 = sub_1E470AD8C();
  sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  sub_1E470A62C();
  sub_1E4697478(v11, type metadata accessor for ReadingHistoryDay);
  (*(v17 + 8))(v20, v16);
  return v25 >= v27;
}

uint64_t ReadingHistoryDataStore.deinit()
{
  sub_1E465E050(v0 + 16, &qword_1ECF74C38, &unk_1E471D580);
  sub_1E4658A0C((v0 + 56));

  sub_1E4697478(v0 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state, type metadata accessor for ReadingHistoryDataStore.State);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t ReadingHistoryDataStore.__deallocating_deinit()
{
  ReadingHistoryDataStore.deinit();

  return swift_deallocClassInstance();
}

uint64_t ReadingHistoryDataStore.addObserver(_:modelChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *(v3 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange);
  v9 = *(v8 + 16);
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = sub_1E466A228;
  v10[4] = v7;
  v10[5] = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1E46974F8;
  *(v11 + 24) = v10;
  v14[4] = sub_1E467A478;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1E46679F4;
  v14[3] = &unk_1F5E64760;
  v12 = _Block_copy(v14);
  swift_retain_n();

  swift_unknownObjectRetain();

  dispatch_sync(v9, v12);
  _Block_release(v12);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t ReadingHistoryDataStore.addObserverWithEvent(_:modelChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange);
  v8 = *(v7 + 16);
  v9 = swift_allocObject();
  v9[2] = v7;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1E4698424;
  *(v10 + 24) = v9;
  v13[4] = sub_1E467A478;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E46679F4;
  v13[3] = &unk_1F5E647D8;
  v11 = _Block_copy(v13);
  swift_retain_n();

  swift_unknownObjectRetain();

  dispatch_sync(v8, v11);
  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t ReadingHistoryDataStore.removeObserver(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore_lastModelChange);
  v4 = *(v3 + 16);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = v3;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E4697504;
  *(v6 + 24) = v5;
  v9[4] = sub_1E467A478;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1E46679F4;
  v9[3] = &unk_1F5E64850;
  v7 = _Block_copy(v9);
  swift_retain_n();
  swift_unknownObjectRetain();

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  return result;
}

uint64_t ReadingHistoryDataStore.increment(date:by:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E4709CCC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x1EEE9AC00](v5, v8);
  v10 = *(v2 + 144);
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v9);
  v11 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  (*(v6 + 32))(v12 + v11, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  *(v12 + ((v7 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1E469750C;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1E467A478;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46679F4;
  aBlock[3] = &unk_1F5E648C8;
  v14 = _Block_copy(aBlock);

  dispatch_sync(v10, v14);
  _Block_release(v14);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E468E950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v32 = &v30 - v8;
  v9 = type metadata accessor for ReadingHistoryDay(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 136);
  v19 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  result = sub_1E4697B6C(a1 + v19, v17, type metadata accessor for ReadingHistoryModel);
  if ((*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v18 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v31 = v13;
  ReadingHistoryModel.incrementReadingTime(date:amount:defaultGoal:)(a2, a3, v18);
  sub_1E4650534(&qword_1ECF74C00, &unk_1E471D880);
  v21 = sub_1E4709CCC();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E471BA00;
  (*(v22 + 16))(v24 + v23, a2, v21);
  sub_1E468EDE0(v24, v17, 0x6E656D6572636E69, 0xE900000000000074);
  swift_setDeallocating();
  (*(v22 + 8))(v24 + v23, v21);
  swift_deallocClassInstance();
  v25 = v32;
  ReadingHistoryModel.readingHistoryDay(for:)(v32);
  if ((*(v10 + 48))(v25, 1, v9) == 1)
  {
    sub_1E4697478(v17, type metadata accessor for ReadingHistoryModel);
    return sub_1E465E050(v25, &qword_1ECF74200, &qword_1E471AF80);
  }

  else
  {
    v26 = v25;
    v27 = v31;
    sub_1E4697DD8(v26, v31, type metadata accessor for ReadingHistoryDay);
    swift_beginAccess();
    if (*(a1 + 40))
    {
      sub_1E4658550(a1 + 16, v33);
      swift_endAccess();
      v28 = v34;
      v29 = v35;
      sub_1E465057C(v33, v34);
      (*(v29 + 8))(a2, v27, v28, v29);
      sub_1E4697478(v27, type metadata accessor for ReadingHistoryDay);
      sub_1E4697478(v17, type metadata accessor for ReadingHistoryModel);
      return sub_1E4658A0C(v33);
    }

    else
    {
      sub_1E4697478(v27, type metadata accessor for ReadingHistoryDay);
      sub_1E4697478(v17, type metadata accessor for ReadingHistoryModel);
      return swift_endAccess();
    }
  }
}

uint64_t sub_1E468EDE0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v117 = a4;
  v116 = a3;
  v128 = a2;
  v120 = a1;
  v123 = *v4;
  v6 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v114 = &v94 - v8;
  v113 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  MEMORY[0x1EEE9AC00](v113, v9);
  v119 = &v94 - v10;
  v11 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v115 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v110 = &v94 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v108 = &v94 - v19;
  v20 = sub_1E4709D5C();
  v125 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1E4709D7C();
  v121 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v24);
  v107 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ReadingHistoryDataStore.State(0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v112 = &v94 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v94 - v31;
  v33 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v105 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v94 - v38;
  v40 = sub_1E4709CCC();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v42);
  v44 = &v94 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45, v46);
  v48 = &v94 - v47;
  v118 = v5;
  v49 = v5 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v109 = v26;
  v50 = *(v26 + 24);
  v51 = *(v41 + 16);
  v129 = v40;
  v126 = v51;
  v127 = v41;
  v51(v48, (v49 + v50), v40);
  v124 = v49;
  sub_1E4697B6C(v49, v32, type metadata accessor for ReadingHistoryDataStore.State);
  v111 = v39;
  sub_1E46857BC(v32, v128, v48, v39);
  sub_1E4697478(v32, type metadata accessor for ReadingHistoryDataStore.State);
  v52 = *(v120 + 2);
  v122 = v41 + 16;
  if (v52 != 1)
  {
    goto LABEL_9;
  }

  v104 = v48;
  v126(v44, &v120[(*(v127 + 80) + 32) & ~*(v127 + 80)], v129);
  v53 = v107;
  sub_1E4709CDC();
  v54 = v125;
  v55 = *(v125 + 104);
  LODWORD(v102) = *MEMORY[0x1E6969A68];
  v55(v23);
  v56 = sub_1E4709D6C();
  v57 = *(v54 + 8);
  (v57)(v23, v20);
  v101 = *MEMORY[0x1E6969A78];
  v55(v23);
  v58 = sub_1E4709D6C();
  v103 = v20;
  v125 = v54 + 8;
  v120 = v57;
  result = (v57)(v23, v20);
  v60 = 100 * v56;
  if ((v56 * 100) >> 64 != (100 * v56) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  v61 = __OFADD__(v60, v58);
  v62 = v60 + v58;
  if (v61)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v100 = v62;
  v99 = *MEMORY[0x1E6969A48];
  v63 = v103;
  v55(v23);
  v95 = sub_1E4709D6C();
  v64 = v120;
  (v120)(v23, v63);
  v65 = *(v121 + 8);
  v121 += 8;
  v98 = v65;
  v65(v53, v106);
  v66 = *(v127 + 8);
  v67 = v129;
  v97 = v127 + 8;
  v96 = v66;
  v66(v44, v129);
  v126(v44, v104, v67);
  sub_1E4709CDC();
  (v55)(v23, v102, v63);
  v68 = v55;
  v69 = sub_1E4709D6C();
  (v64)(v23, v63);
  v102 = v68;
  (v68)(v23, v101, v63);
  v70 = sub_1E4709D6C();
  result = (v64)(v23, v63);
  v71 = 100 * v69;
  if ((v69 * 100) >> 64 != (100 * v69) >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v72 = v71 + v70;
  if (__OFADD__(v71, v70))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v73 = v103;
  (v102)(v23, v99, v103);
  v74 = v107;
  v75 = sub_1E4709D6C();
  (v120)(v23, v73);
  v98(v74, v106);
  v96(v44, v129);
  v48 = v104;
  if (v100 != v72 || v95 != v75)
  {
LABEL_9:
    v79 = v108;
    sub_1E4697B6C(v124, v108, type metadata accessor for ReadingHistoryModel);
    v76 = v128;
    v80 = sub_1E46A48B8(v128);
    sub_1E4697478(v79, type metadata accessor for ReadingHistoryModel);
    v81 = v105;
    sub_1E46887F0(v76, v80, v105);

    sub_1E4697DD8(v76, v79, type metadata accessor for ReadingHistoryModel);
    sub_1E4688298(v79, v81, v76);
    sub_1E4697478(v79, type metadata accessor for ReadingHistoryModel);
    sub_1E465E050(v81, &qword_1ECF74C40, &unk_1E471C980);
    v78 = v111;
    goto LABEL_10;
  }

  v76 = v128;
  v77 = v108;
  sub_1E4697DD8(v128, v108, type metadata accessor for ReadingHistoryModel);
  v78 = v111;
  sub_1E4688298(v77, v111, v76);
  sub_1E4697478(v77, type metadata accessor for ReadingHistoryModel);
LABEL_10:
  v82 = v110;
  sub_1E4697DD8(v76, v110, type metadata accessor for ReadingHistoryModel);
  v83 = v118;
  v84 = v119;
  v85 = v112;
  if (*(v118 + 96) == 1)
  {
    v86 = v118[13];
    sub_1E4697B6C(v82, v76, type metadata accessor for ReadingHistoryModel);
    sub_1E46A8ACC(v86);
    sub_1E4697478(v82, type metadata accessor for ReadingHistoryModel);
  }

  else
  {
    sub_1E4697DD8(v82, v76, type metadata accessor for ReadingHistoryModel);
  }

  sub_1E4697B6C(v76, v85, type metadata accessor for ReadingHistoryModel);
  v87 = v109;
  sub_1E465E0B0(v78, v85 + *(v109 + 20), &qword_1ECF74C40, &unk_1E471C980);
  v126((v85 + *(v87 + 24)), v48, v129);
  sub_1E46A38A8(v48, (v85 + *(v87 + 28)));

  v88 = v113;
  sub_1E470B37C();

  v89 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  v90 = v114;
  (*(*(v89 - 8) + 56))(v114, 1, 2, v89);
  sub_1E4697C3C(v85, v84, type metadata accessor for ReadingHistoryModel);
  sub_1E4697BD4(v90, v84 + *(v88 + 48), &unk_1ECF74C60, &qword_1E471C910);
  sub_1E4689F54(v85, v84, v116, v117);
  sub_1E4658550((v83 + 7), &v130);
  v91 = v131;
  v92 = v132;
  sub_1E465057C(&v130, v131);
  v93 = v115;
  sub_1E4697B6C(v124, v115, type metadata accessor for ReadingHistoryModel);
  (*(v92 + 48))(v93, v91, v92);
  sub_1E4697478(v93, type metadata accessor for ReadingHistoryModel);
  sub_1E4697478(v85, type metadata accessor for ReadingHistoryDataStore.State);
  sub_1E465E050(v78, &qword_1ECF74C40, &unk_1E471C980);
  (*(v127 + 8))(v48, v129);
  sub_1E4658A0C(&v130);
  return sub_1E465E050(v84, &qword_1ECF74A00, &unk_1E471D5B0);
}

uint64_t ReadingHistoryDataStore.applyUpdate(update:)(void *a1)
{
  v3 = *(v1 + 144);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E469759C;
  *(v5 + 24) = v4;
  v9[4] = sub_1E467A478;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1E46679F4;
  v9[3] = &unk_1F5E64940;
  v6 = _Block_copy(v9);

  v7 = a1;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E468FC78(uint64_t a1)
{
  v2 = type metadata accessor for ReadingHistoryDay(0);
  v50 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v49 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v48 = v44 - v7;
  v8 = sub_1E4709CCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v51 = v16;
  sub_1E4697B6C(a1 + v17, v16, type metadata accessor for ReadingHistoryModel);
  v18 = ReadingHistoryUpdate.days.getter();
  v19 = v18;
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = sub_1E46B79B8(*(v18 + 16), 0);
    sub_1E46B87B0(v52, &v21[(*(v9 + 80) + 32) & ~*(v9 + 80)], v20, v19);
    v23 = v22;
    v24 = v52[0];
    v45 = v52[3];
    v46 = v52[2];
    v44[1] = v52[4];
    swift_bridgeObjectRetain_n();
    sub_1E45E781C(v24);
    if (v23 == v20)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v21 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v45 = a1;
  v52[0] = v21;
  sub_1E46938A8(v52);

  v46 = v52[0];
  v25 = *(v52[0] + 16);
  if (v25)
  {
    v28 = *(v9 + 16);
    v26 = v9 + 16;
    v27 = v28;
    v29 = &v46[(*(v26 + 64) + 32) & ~*(v26 + 64)];
    v30 = *(v26 + 56);
    v31 = (v26 - 8);
    v47 = v19;
    v28(v12, v29, v8);
    while (1)
    {
      if (*(v19 + 16))
      {
        v32 = sub_1E4655300(v12);
        if (v33)
        {
          v34 = v49;
          sub_1E4697B6C(*(v19 + 56) + *(v50 + 72) * v32, v49, type metadata accessor for ReadingHistoryDay);
          v35 = v34;
          v36 = v30;
          v37 = v27;
          v38 = v8;
          v39 = v26;
          v40 = v48;
          sub_1E4697DD8(v35, v48, type metadata accessor for ReadingHistoryDay);
          ReadingHistoryModel.mergeDay(date:day:)(v12, v40);
          v41 = v40;
          v26 = v39;
          v8 = v38;
          v27 = v37;
          v30 = v36;
          v19 = v47;
          sub_1E4697478(v41, type metadata accessor for ReadingHistoryDay);
        }
      }

      (*v31)(v12, v8);
      v29 += v30;
      if (!--v25)
      {
        break;
      }

      v27(v12, v29, v8);
    }
  }

  v42 = v51;
  sub_1E468EDE0(v46, v51, 0x647055796C707061, 0xEB00000000657461);

  return sub_1E4697478(v42, type metadata accessor for ReadingHistoryModel);
}

Swift::Void __swiftcall ReadingHistoryDataStore.clearData()()
{
  v1 = *(v0 + 144);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E46975A4;
  *(v2 + 24) = v0;
  v4[4] = sub_1E467A478;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1E46679F4;
  v4[3] = &unk_1F5E64990;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

void static ReadingHistoryDataStore.clearCachedData(in:)(void *a1)
{
  v2 = sub_1E470AF0C();
  [a1 removeObjectForKey_];

  v3 = sub_1E470AF0C();
  [a1 setInteger:0 forKey:v3];
}

uint64_t sub_1E4690300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v4 = type metadata accessor for ReadingHistoryDataStore.State(0);
  return sub_1E465E0B0(v3 + *(v4 + 28), a2, &qword_1ECF74C40, &unk_1E471C980);
}

uint64_t sub_1E46903E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = a1 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v9 = type metadata accessor for ReadingHistoryDataStore.State(0);
  sub_1E465E0B0(v8 + *(v9 + 20), v7, &qword_1ECF74C40, &unk_1E471C980);
  v10 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v10 - 8) + 48))(v7, 1, v10) == 1)
  {
    result = sub_1E465E050(v7, &qword_1ECF74C40, &unk_1E471C980);
    v12 = 0;
  }

  else
  {
    v12 = *&v7[*(v10 + 20)];
    result = sub_1E4697478(v7, type metadata accessor for ReadingHistory.Streak);
  }

  *a2 = v12;
  return result;
}

uint64_t sub_1E46905A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a3;
  v54 = a2;
  v53 = sub_1E4650534(&qword_1ECF741E8, &qword_1E471D590);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53, v4);
  v49 = &v46 - v5;
  v48 = sub_1E470ADBC();
  v6 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48, v7);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E4650534(&qword_1ECF74200, &qword_1E471AF80);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v55 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v46 - v22;
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v46 - v26;
  v28 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v50 = a1;
  sub_1E4697B6C(a1 + v28, v12, type metadata accessor for ReadingHistoryModel);
  ReadingHistoryModel.readingHistoryDay(for:)(v27);
  sub_1E4697478(v12, type metadata accessor for ReadingHistoryModel);
  sub_1E465E0B0(v27, v23, &qword_1ECF74200, &qword_1E471AF80);
  v29 = type metadata accessor for ReadingHistoryDay(0);
  v30 = *(*(v29 - 8) + 48);
  if (v30(v23, 1, v29) == 1)
  {
    sub_1E465E050(v23, &qword_1ECF74200, &qword_1E471AF80);
    v31 = 0;
  }

  else
  {
    v32 = v47;
    v33 = v48;
    (*(v6 + 16))(v47, v23, v48);
    sub_1E4697478(v23, type metadata accessor for ReadingHistoryDay);
    v31 = sub_1E470AD8C();
    (*(v6 + 8))(v32, v33);
  }

  sub_1E465E0B0(v27, v19, &qword_1ECF74200, &qword_1E471AF80);
  v34 = v30(v19, 1, v29);
  v35 = v55;
  if (v34 != 1)
  {
    v39 = *(v29 + 20);
    v54 = v31;
    v40 = v51;
    v41 = v49;
    v42 = v53;
    (*(v51 + 16))(v49, &v19[v39], v53);
    sub_1E4697478(v19, type metadata accessor for ReadingHistoryDay);
    sub_1E470A62C();
    (*(v40 + 8))(v41, v42);
    v31 = v54;
    v38 = v56;
    goto LABEL_10;
  }

  result = sub_1E465E050(v19, &qword_1ECF74200, &qword_1E471AF80);
  v37 = *(v50 + 136);
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  v38 = v37;
LABEL_10:
  sub_1E465E0B0(v27, v35, &qword_1ECF74200, &qword_1E471AF80);
  if (v30(v35, 1, v29) == 1)
  {
    sub_1E465E050(v27, &qword_1ECF74200, &qword_1E471AF80);
    result = sub_1E465E050(v35, &qword_1ECF74200, &qword_1E471AF80);
    v43 = 0;
  }

  else
  {
    v44 = sub_1E470AD8C();
    sub_1E470A62C();
    sub_1E465E050(v27, &qword_1ECF74200, &qword_1E471AF80);
    v43 = v44 >= v56;
    result = sub_1E4697478(v35, type metadata accessor for ReadingHistoryDay);
  }

  v45 = v52;
  *v52 = v31;
  v45[1] = v38;
  *(v45 + 16) = v43;
  return result;
}

char *ReadingHistoryDataStore.readingHistory(range:)(uint64_t a1, uint64_t a2)
{
  v64 = a2;
  v3 = sub_1E4709CCC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v62 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v65 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v52 - v12;
  v14 = sub_1E4709D7C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v20 = v19 - 8;
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v52 - v23;
  v53 = v4;
  v25 = *(v4 + 16);
  v25(&v52 - v23, a1, v3, v22);
  (v25)(&v24[*(v20 + 56)], v64, v3);
  v26 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1E4709CDC();
  v27 = sub_1E4709D0C();
  v28 = *(v15 + 8);
  v28(v18, v14);
  [v26 setCalendar_];

  v29 = sub_1E470AF0C();
  [v26 setDateFormat_];

  sub_1E4709CDC();
  sub_1E4709CEC();
  v28(v18, v14);
  sub_1E4709CDC();
  v52 = v24;
  sub_1E4709CEC();
  v59 = v18;
  v60 = v15 + 8;
  v61 = v14;
  v57 = v28;
  v28(v18, v14);
  v30 = sub_1E4698194(&qword_1EE2AEBE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v64 = v3;
  v56 = v30;
  v31 = sub_1E470AEEC();
  if (v31)
  {

    v33 = *(v53 + 8);
    v34 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v58 = v26;
    v54 = *(v63 + 144);
    v55 = (v53 + 8);
    v53 += 32;
    v34 = MEMORY[0x1E69E7CC0];
    do
    {
      MEMORY[0x1EEE9AC00](v31, v32);
      *(&v52 - 2) = v35;
      *(&v52 - 1) = v13;
      sub_1E470B37C();
      v36 = v66;
      v37 = v67;
      v38 = v68;
      v39 = sub_1E4709C5C();
      v40 = [v58 stringFromDate_];

      v41 = sub_1E470AF1C();
      v43 = v42;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_1E4693B7C(0, *(v34 + 2) + 1, 1, v34);
      }

      v45 = *(v34 + 2);
      v44 = *(v34 + 3);
      if (v45 >= v44 >> 1)
      {
        v34 = sub_1E4693B7C((v44 > 1), v45 + 1, 1, v34);
      }

      *(v34 + 2) = v45 + 1;
      v46 = &v34[40 * v45];
      *(v46 + 4) = v41;
      *(v46 + 5) = v43;
      *(v46 + 6) = v36;
      *(v46 + 7) = v37;
      v46[64] = v38;
      v47 = v59;
      sub_1E4709CDC();
      v48 = v62;
      sub_1E4709C0C();
      v57(v47, v61);
      v33 = *v55;
      v49 = v64;
      (*v55)(v13, v64);
      (*v53)(v13, v48, v49);
      v31 = sub_1E470AEEC();
    }

    while ((v31 & 1) == 0);
  }

  v50 = v64;
  v33(v65, v64);
  sub_1E465E050(v52, &unk_1ECF74C48, &qword_1E471D598);
  v33(v13, v50);
  return v34;
}

uint64_t ReadingHistoryDataStore.readingHistoryState(range:currentTime:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v43 = a3;
  v41 = a1;
  v42 = a2;
  v46 = a4;
  v45 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v45, v4);
  v47 = &v38 - v5;
  v40 = sub_1E4709D7C();
  v6 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E4709CCC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E4650534(&unk_1ECF74C48, &qword_1E471D598);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v24 = &v38 - v23;
  v25 = *(v11 + 16);
  v25(&v38 - v23, v41, v10, v22);
  (v25)(&v24[*(v16 + 56)], v42, v10);
  sub_1E4709CDC();
  v26 = v14;
  v39 = v14;
  sub_1E4709CEC();
  (*(v6 + 8))(v9, v40);
  v27 = v44;
  sub_1E470B37C();
  v43 = v50;
  sub_1E470B37C();
  v48 = v27;
  v49 = v26;
  sub_1E470B37C();
  v45 = v50;
  v42 = v51;
  LODWORD(v41) = v52;
  sub_1E465E0B0(v24, v19, &unk_1ECF74C48, &qword_1E471D598);
  v28 = *(v16 + 56);
  v29 = ReadingHistoryDataStore.readingHistory(range:)(v19, &v19[v28]);
  sub_1E465E050(v24, &unk_1ECF74C48, &qword_1E471D598);
  v30 = *(v11 + 8);
  v30(&v19[v28], v10);
  v30(v19, v10);
  v31 = type metadata accessor for ReadingHistory.State(0);
  v32 = v31[5];
  v33 = type metadata accessor for ReadingHistory.Streak(0);
  v34 = v46;
  (*(*(v33 - 8) + 56))(v46 + v32, 1, 1, v33);
  *v34 = v43;
  sub_1E4697BD4(v47, v34 + v32, &qword_1ECF74C40, &unk_1E471C980);
  v35 = v34 + v31[6];
  v36 = v42;
  *v35 = v45;
  *(v35 + 1) = v36;
  v35[16] = v41;
  *(v34 + v31[7]) = v29;
  return (v30)(v39, v10);
}

uint64_t ReadingHistoryDataStore.readingHistoryModelSnapshot(currentTime:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v68 = a2;
  v69 = a1;
  v2 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v61 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4650534(&qword_1ECF74C58, &unk_1E471D5A0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v67 = &v59 - v7;
  v8 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v59 - v10;
  v70 = type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues(0);
  v66 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70, v12);
  v62 = (&v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v59 - v16;
  v18 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v63 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v59 - v23;
  v25 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v59 - v27;

  sub_1E470B37C();

  v29 = *(v25 + 48);
  v64 = v28[*(v25 + 44)];
  v65 = v24;
  sub_1E465E0B0(&v28[v29], v24, &unk_1ECF74C60, &qword_1E471C910);
  v30 = v69;
  ReadingHistoryModel.readingDay(for:)(&v71);
  v31 = v71;
  v32 = v72;
  LOBYTE(v25) = v73;
  sub_1E46A38A8(v30, v11);
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 2;
  v33 = *(v70 + 20);
  v34 = type metadata accessor for ReadingHistory.Streak(0);
  v60 = *(*(v34 - 8) + 56);
  v60(&v17[v33], 1, 1, v34);
  *v17 = v31;
  *(v17 + 1) = v32;
  v17[16] = v25;
  v35 = &v17[v33];
  v36 = v63;
  v37 = v11;
  sub_1E4697BD4(v11, v35, &qword_1ECF74C40, &unk_1E471C980);
  sub_1E465E0B0(&v28[v29], v36, &unk_1ECF74C60, &qword_1E471C910);
  v38 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  if ((*(*(v38 - 8) + 48))(v36, 2, v38))
  {
    sub_1E465E050(v28, &qword_1ECF74A00, &unk_1E471D5B0);
    v39 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
    v40 = v68;
    sub_1E4697B6C(v17, &v68[v39[6]], type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
    v41 = v67;
    v42 = *(v66 + 56);
    v43 = v70;
    v42(v67, 1, 1, v70);
    v44 = v39[7];
    v42(&v40[v44], 1, 1, v43);
    *v40 = v64;
    sub_1E46574C0(v65, &v40[v39[5]], &unk_1ECF74C60, &qword_1E471C910);
    sub_1E4697BD4(v41, &v40[v44], &qword_1ECF74C58, &unk_1E471D5A0);
  }

  else
  {
    v45 = v36;
    v46 = v61;
    sub_1E4697DD8(v45, v61, type metadata accessor for ReadingHistoryModel);
    v47 = v69;
    ReadingHistoryModel.readingDay(for:)(&v71);
    v48 = v72;
    v63 = v71;
    v49 = v73;
    sub_1E46A38A8(v47, v11);
    sub_1E4697478(v46, type metadata accessor for ReadingHistoryModel);
    sub_1E465E050(v28, &qword_1ECF74A00, &unk_1E471D5B0);
    v50 = v62;
    *v62 = 0;
    *(v50 + 8) = 0;
    *(v50 + 16) = 2;
    v51 = v70;
    v52 = *(v70 + 20);
    v60((v50 + v52), 1, 1, v34);
    *v50 = v63;
    *(v50 + 8) = v48;
    *(v50 + 16) = v49;
    sub_1E4697BD4(v37, v50 + v52, &qword_1ECF74C40, &unk_1E471C980);
    v53 = type metadata accessor for ReadingHistory.ModelSnapshot(0);
    v54 = v68;
    sub_1E4697B6C(v17, &v68[v53[6]], type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
    v55 = v67;
    sub_1E4697B6C(v50, v67, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
    v56 = *(v66 + 56);
    v56(v55, 0, 1, v51);
    v57 = v53[7];
    v56(&v54[v57], 1, 1, v51);
    *v54 = v64;
    sub_1E46574C0(v65, &v54[v53[5]], &unk_1ECF74C60, &qword_1E471C910);
    sub_1E4697BD4(v55, &v54[v57], &qword_1ECF74C58, &unk_1E471D5A0);
    sub_1E4697478(v50, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
  }

  return sub_1E4697478(v17, type metadata accessor for ReadingHistory.ModelSnapshot.ModelValues);
}

uint64_t sub_1E4691DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  sub_1E4681FAC(a1, sub_1E466AFC4, v6);
}

uint64_t sub_1E4691E58(uint64_t a1)
{

  sub_1E46835D4(a1);
}

uint64_t sub_1E4691EAC()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1E4698374;
  *(v3 + 24) = v1;
  v6[4] = sub_1E467A478;
  v6[5] = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1E46679F4;
  v6[3] = &unk_1F5E64BE0;
  v4 = _Block_copy(v6);

  dispatch_sync(v2, v4);
  _Block_release(v4);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4691FE4()
{
  v1 = sub_1E4709CCC();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 120))(v4);
  sub_1E4692214(v6, 0x646F547261656C63, 0xEA00000000007961);
  return (*(v2 + 8))(v6, v1);
}

Swift::Void __swiftcall ReadingHistoryDataStore.clearToday()()
{
  v1 = sub_1E4709CCC();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x1EEE9AC00](v1, v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v0 + 120))(v4);
  sub_1E4692214(v6, 0x646F547261656C63, 0xEA00000000007961);
  (*(v2 + 8))(v6, v1);
}

uint64_t sub_1E4692214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E4709CCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v3 + 144);
  (*(v8 + 16))(v12, a1, v7, v11);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  (*(v8 + 32))(v15 + v13, v12, v7);
  *(v15 + v14) = v3;
  v16 = (v15 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v16 = a2;
  v16[1] = a3;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1E4697E40;
  *(v17 + 24) = v15;
  aBlock[4] = sub_1E467A478;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E46679F4;
  aBlock[3] = &unk_1F5E64F00;
  v18 = _Block_copy(aBlock);

  dispatch_sync(v21, v18);
  _Block_release(v18);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4692468(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a3;
  v68 = a4;
  v58 = a2;
  v66 = a1;
  v5 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v65 = &v55 - v7;
  v62 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  MEMORY[0x1EEE9AC00](v62, v8);
  v60 = &v55 - v9;
  v10 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v11 = (v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v59 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v55 - v16;
  v18 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v55 - v20;
  v22 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v61 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25, v26);
  v64 = &v55 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v55 - v30;
  v32 = sub_1E4709CCC();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v34);
  v36 = &v55 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a2 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v38 = v11[8];
  v63 = v33;
  v56 = *(v33 + 16);
  v56(v36, v37 + v38, v32);
  v57 = type metadata accessor for ReadingHistoryModel;
  sub_1E4697B6C(v37, v31, type metadata accessor for ReadingHistoryModel);
  sub_1E46A79EC(v66);
  type metadata accessor for ReadingHistoryDataStore(0);
  sub_1E4697B6C(v37, v17, type metadata accessor for ReadingHistoryDataStore.State);
  sub_1E46857BC(v17, v31, v36, v21);
  sub_1E4697478(v17, type metadata accessor for ReadingHistoryDataStore.State);
  v39 = v64;
  sub_1E4688298(v31, v21, v64);
  sub_1E4697478(v31, type metadata accessor for ReadingHistoryModel);
  sub_1E4697DD8(v39, v31, type metadata accessor for ReadingHistoryModel);
  v40 = v59;
  sub_1E4697B6C(v31, v59, type metadata accessor for ReadingHistoryModel);
  v41 = v40 + v11[7];
  v66 = v21;
  sub_1E465E0B0(v21, v41, &qword_1ECF74C40, &unk_1E471C980);
  v42 = v40 + v11[8];
  v64 = v32;
  v56(v42, v36, v32);
  v43 = v36;
  v44 = v40;
  v45 = v60;
  sub_1E46A38A8(v43, (v40 + v11[9]));
  v46 = v58;

  v47 = v62;
  sub_1E470B37C();

  v48 = sub_1E4650534(&qword_1ECF74C70, &unk_1E471C920);
  v49 = v65;
  (*(*(v48 - 8) + 56))(v65, 1, 2, v48);
  sub_1E4697C3C(v44, v45, type metadata accessor for ReadingHistoryModel);
  sub_1E4697BD4(v49, v45 + *(v47 + 48), &unk_1ECF74C60, &qword_1E471C910);
  sub_1E4689F54(v44, v45, v67, v68);
  sub_1E4658550(v46 + 56, v69);
  v50 = v70;
  v51 = v71;
  sub_1E465057C(v69, v70);
  v52 = v37;
  v53 = v61;
  sub_1E4697B6C(v52, v61, v57);
  (*(v51 + 48))(v53, v50, v51);
  sub_1E4697478(v53, type metadata accessor for ReadingHistoryModel);
  sub_1E4697478(v44, type metadata accessor for ReadingHistoryDataStore.State);
  sub_1E465E050(v66, &qword_1ECF74C40, &unk_1E471C980);
  sub_1E4697478(v31, type metadata accessor for ReadingHistoryModel);
  (*(v63 + 8))(v43, v64);
  sub_1E4658A0C(v69);
  return sub_1E465E050(v45, &qword_1ECF74A00, &unk_1E471D5B0);
}

uint64_t ReadingHistoryDataStore.serializedModel(_:)(void *a1)
{
  v2 = v1;
  v12 = xmmword_1E471B810;
  v4 = *(v1 + 144);
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = v2;
  v5[4] = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1E4697618;
  *(v6 + 24) = v5;
  v11[4] = sub_1E467A478;
  v11[5] = v6;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1E46679F4;
  v11[3] = &unk_1F5E64A08;
  v7 = _Block_copy(v11);

  v8 = a1;

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    v10 = v12;
    sub_1E465DD8C(v12, *(&v12 + 1));
    sub_1E465DDA0(v10, *(&v10 + 1));

    return v10;
  }

  return result;
}

uint64_t sub_1E4692C54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E470AB3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  sub_1E4697B6C(a2 + v14, v13, type metadata accessor for ReadingHistoryModel);
  (*(v6 + 104))(v9, *MEMORY[0x1E6995278], v5);
  sub_1E4698194(&qword_1EE2ADA90, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
  v15 = sub_1E470ABAC();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  sub_1E4697478(v13, type metadata accessor for ReadingHistoryModel);
  v18 = *a1;
  v19 = a1[1];
  *a1 = v15;
  a1[1] = v17;
  return sub_1E465DDA0(v18, v19);
}

Swift::Void __swiftcall ReadingHistoryDataStore.forceSummarizeAndPrune(year:month:)(Swift::Int year, Swift::Int month)
{
  v3 = v2;
  v6 = *(v2 + 144);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = year;
  v7[4] = month;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1E4697624;
  *(v8 + 24) = v7;
  v10[4] = sub_1E467A478;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1E46679F4;
  v10[3] = &unk_1F5E64A80;
  v9 = _Block_copy(v10);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }
}

uint64_t sub_1E46930E8(char *a1, uint64_t a2)
{
  v59 = a1;
  v3 = *v2;
  v62 = a2;
  v63 = v3;
  v4 = sub_1E4650534(&unk_1ECF74C60, &qword_1E471C910);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v60 = &v53 - v6;
  v58 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  MEMORY[0x1EEE9AC00](v58, v7);
  v57 = &v53 - v8;
  v9 = type metadata accessor for ReadingHistoryDataStore.State(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v64 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v54 = &v53 - v15;
  v16 = sub_1E4650534(&qword_1ECF74C40, &unk_1E471C980);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v53 - v18;
  v20 = type metadata accessor for ReadingHistoryModel(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v56 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v53 - v25;
  v27 = sub_1E4709CCC();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29);
  v31 = &v53 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v2 + OBJC_IVAR____TtC13BookDataStore23ReadingHistoryDataStore__state;
  swift_beginAccess();
  v33 = v10[8];
  v61 = v28;
  v34 = *(v28 + 16);
  v34(v31, v32 + v33, v27);
  v55 = v32;
  sub_1E4697B6C(v32, v26, type metadata accessor for ReadingHistoryModel);
  sub_1E46A8040(v59, v62);
  v35 = v32;
  v36 = v54;
  sub_1E4697B6C(v35, v54, type metadata accessor for ReadingHistoryDataStore.State);
  sub_1E46857BC(v36, v26, v31, v19);
  sub_1E4697478(v36, type metadata accessor for ReadingHistoryDataStore.State);
  v37 = v64;
  sub_1E4697B6C(v26, v64, type metadata accessor for ReadingHistoryModel);
  v38 = v37 + v10[7];
  v63 = v19;
  sub_1E465E0B0(v19, v38, &qword_1ECF74C40, &unk_1E471C980);
  v39 = v37 + v10[8];
  v62 = v27;
  v34(v39, v31, v27);
  v40 = (v37 + v10[9]);
  v59 = v31;
  sub_1E46A38A8(v31, v40);
  v41 = v53;

  v43 = v57;
  v42 = v58;
  sub_1E470B37C();

  v44 = *(v42 + 48);
  v45 = v60;
  sub_1E465E0B0(v43 + v44, v60, &unk_1ECF74C60, &qword_1E471C910);
  sub_1E4697C3C(v26, v43, type metadata accessor for ReadingHistoryModel);
  v46 = v43 + v44;
  v47 = v64;
  v48 = v45;
  v49 = v56;
  sub_1E4697BD4(v48, v46, &unk_1ECF74C60, &qword_1E471C910);
  sub_1E4689F54(v47, v43, 0xD000000000000016, 0x80000001E47189C0);
  sub_1E4658550(v41 + 56, v65);
  v50 = v66;
  v51 = v67;
  sub_1E465057C(v65, v66);
  sub_1E4697B6C(v55, v49, type metadata accessor for ReadingHistoryModel);
  (*(v51 + 48))(v49, v50, v51);
  sub_1E4697478(v49, type metadata accessor for ReadingHistoryModel);
  sub_1E4697478(v47, type metadata accessor for ReadingHistoryDataStore.State);
  sub_1E465E050(v63, &qword_1ECF74C40, &unk_1E471C980);
  sub_1E4697478(v26, type metadata accessor for ReadingHistoryModel);
  (*(v61 + 8))(v59, v62);
  sub_1E4658A0C(v65);
  return sub_1E465E050(v43, &qword_1ECF74A00, &unk_1E471D5B0);
}

uint64_t sub_1E4693730@<X0>(char *a2@<X8>)
{
  v3 = sub_1E4650534(&qword_1ECF74A00, &unk_1E471D5B0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v9 - v5;

  sub_1E470B37C();

  v7 = v6[*(v3 + 44)];
  result = sub_1E465E050(v6, &qword_1ECF74A00, &unk_1E471D5B0);
  *a2 = v7;
  return result;
}

uint64_t sub_1E469383C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E46B864C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E46945B4(v5);
  *a1 = v2;
  return result;
}

void sub_1E46938A8(uint64_t *a1)
{
  v2 = *(sub_1E4709CCC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1E46B8660(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1E46946AC(v5);
  *a1 = v3;
}

char *sub_1E4693950(char *result, int64_t a2, char a3, char *a4)
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
    sub_1E4650534(&qword_1ECF74CC8, &unk_1E471D818);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1E4693A78(char *result, int64_t a2, char a3, char *a4)
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
    sub_1E4650534(&qword_1ECF74BF0, &qword_1E471D850);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E4693B7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1E4650534(&qword_1ECF74C18, &qword_1E471D570);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E4693CE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1E4650534(&qword_1ECF74C98, &qword_1E471D7E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E4693E1C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1E4650534(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

void *sub_1E469401C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1E4650534(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1E4650534(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1E4694150(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v31 = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  v9 = 8 * v8;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v27 = v8;
    v28 = &v26;
    MEMORY[0x1EEE9AC00](a1, v9);
    v11 = &v26 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v11, v10);
    v29 = 0;
    v12 = 0;
    v13 = 1 << *(a3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a3 + 56);
    v8 = (v13 + 63) >> 6;
    v16 = v4;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v4 = v17 | (v12 << 6);
      v30 = *(*(a3 + 48) + 16 * v4);
      v20 = v6(&v30);
      if (v16)
      {

        return swift_willThrow();
      }

      if (v20)
      {
        *&v11[(v4 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v4;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
          return sub_1E46E4EC4(v11, v27, v29, a3);
        }
      }
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        return sub_1E46E4EC4(v11, v27, v29, a3);
      }

      v19 = *(a3 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:
    v23 = v9;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v9 = v23;
  }

  v24 = swift_slowAlloc();
  v25 = sub_1E4694524(v24, v8, a3, v6);

  result = MEMORY[0x1E6917530](v24, -1, -1);
  if (!v4)
  {
    return v25;
  }

  return result;
}

uint64_t sub_1E46943D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  v21 = result;
  v7 = 0;
  v8 = 0;
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_11:
    v17 = v14 | (v8 << 6);
    v20 = *(*(a3 + 48) + 16 * v17);
    result = a4(&v20);
    if (v4)
    {
      return result;
    }

    if (result)
    {
      *(v21 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_16:

        return sub_1E46E4EC4(v21, a2, v7, a3);
      }
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_16;
    }

    v16 = *(v9 + 8 * v8);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v12 = (v16 - 1) & v16;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1E4694524(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1E46943D8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E46945B4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E470B80C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1E470B0EC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1E4694B60(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1E46947D8(0, v2, 1, a1);
  }

  return result;
}

void sub_1E46946AC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1E470B80C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1E4709CCC();
        v6 = sub_1E470B0EC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1E4709CCC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1E46951C0(v8, v9, a1, v4);
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
    sub_1E469489C(0, v2, 1, a1);
  }
}

uint64_t sub_1E46947D8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 16 * a3);
    v8 = *(v4 + 16 * a3);
    v9 = 100 * v8;
    v10 = (v8 * 100) >> 64 != (100 * v8) >> 63;
    v11 = __OFADD__(v9, *(&v7 + 1));
    v12 = v9 + *(&v7 + 1);
    v13 = v11;
    v14 = v6;
    v15 = v5;
    while (!v10)
    {
      if (v13)
      {
        goto LABEL_19;
      }

      v16 = 100 * *v15;
      result = (*v15 * 100) >> 64;
      if (result != v16 >> 63)
      {
        goto LABEL_20;
      }

      result = v15[1];
      v11 = __OFADD__(v16, result);
      v17 = v16 + result;
      if (v11)
      {
        goto LABEL_21;
      }

      if (v12 < v17)
      {
        if (!v4)
        {
          goto LABEL_22;
        }

        *(v15 + 1) = *v15;
        *v15 = v7;
        v15 -= 2;
        if (!__CFADD__(v14++, 1))
        {
          continue;
        }
      }

      ++a3;
      v5 += 16;
      --v6;
      if (a3 == a2)
      {
        return result;
      }

      goto LABEL_5;
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

  return result;
}

void sub_1E469489C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1E4709CCC();
  MEMORY[0x1EEE9AC00](v8, v9);
  v44 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v48 = &v34 - v13;
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v14, v15);
  v47 = &v34 - v18;
  v36 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v45 = *(v16 + 16);
    v46 = v16 + 16;
    v20 = *(v16 + 72);
    v21 = (v16 + 8);
    v42 = (v16 + 32);
    v43 = v19;
    v22 = (v19 + v20 * (a3 - 1));
    v41 = -v20;
    v23 = a1 - a3;
    v35 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v39 = v22;
    v40 = a3;
    v37 = v24;
    v38 = v23;
    v25 = v22;
    while (1)
    {
      v26 = v47;
      v27 = v45;
      (v45)(v47, v24, v8, v17);
      v28 = v48;
      v27(v48, v25, v8);
      sub_1E4698194(&qword_1EE2AEBE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v29 = sub_1E470AEEC();
      v30 = *v21;
      (*v21)(v28, v8);
      v30(v26, v8);
      if ((v29 & 1) == 0)
      {
LABEL_4:
        a3 = v40 + 1;
        v22 = &v39[v35];
        v23 = v38 - 1;
        v24 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v31 = *v42;
      v32 = v44;
      (*v42)(v44, v24, v8);
      swift_arrayInitWithTakeFrontToBack();
      v31(v25, v32, v8);
      v25 += v41;
      v24 += v41;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1E4694B60(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_150;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v98 = *(v10 + 2);
      if (v98 >= 2)
      {
        while (*a3)
        {
          v99 = *&v10[16 * v98];
          v100 = *&v10[16 * v98 + 24];
          sub_1E4695BE8(*a3 + 16 * v99, (*a3 + 16 * *&v10[16 * v98 + 16]), (*a3 + 16 * v100), v6);
          if (v5)
          {
          }

          if (v100 < v99)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1E46B8624(v10);
          }

          if (v98 - 2 >= *(v10 + 2))
          {
            goto LABEL_134;
          }

          v101 = &v10[16 * v98];
          *v101 = v99;
          *(v101 + 1) = v100;
          result = sub_1E46B8598(v98 - 1);
          v98 = *(v10 + 2);
          if (v98 <= 1)
          {
          }
        }

        goto LABEL_148;
      }
    }

LABEL_144:
    result = sub_1E46B8624(v10);
    v10 = result;
    goto LABEL_103;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v103 = result;
  while (1)
  {
    v11 = v9++;
    if (v9 >= v7)
    {
      goto LABEL_26;
    }

    v12 = *a3;
    v13 = (*a3 + 16 * v9);
    v14 = *v13;
    v15 = 100 * *v13;
    if ((*v13 * 100) >> 64 != v15 >> 63)
    {
      goto LABEL_136;
    }

    v16 = v13[1];
    v68 = __OFADD__(v15, v16);
    v17 = v15 + v16;
    if (v68)
    {
      goto LABEL_137;
    }

    v18 = (v12 + 16 * v11);
    v19 = 100 * *v18;
    if ((*v18 * 100) >> 64 != v19 >> 63)
    {
      goto LABEL_138;
    }

    v20 = v18[1];
    v68 = __OFADD__(v19, v20);
    v21 = v19 + v20;
    if (v68)
    {
      goto LABEL_139;
    }

    v22 = v11 + 2;
    v23 = 16 * v11;
    v24 = (v12 + 16 * v11 + 40);
    do
    {
      if (v7 == v22)
      {
        v9 = v7;
        if (v17 >= v21)
        {
          goto LABEL_26;
        }

        goto LABEL_18;
      }

      v25 = *(v24 - 1);
      v26 = 100 * v25;
      if ((v25 * 100) >> 64 != (100 * v25) >> 63)
      {
        goto LABEL_116;
      }

      v27 = *v24;
      v68 = __OFADD__(v26, *v24);
      v28 = v26 + *v24;
      if (v68)
      {
        goto LABEL_117;
      }

      v29 = 100 * v14;
      v68 = __OFADD__(v29, v16);
      v30 = v29 + v16;
      if (v68)
      {
        goto LABEL_118;
      }

      v31 = (v17 < v21) ^ (v28 >= v30);
      ++v22;
      v24 += 2;
      v16 = v27;
      v14 = v25;
    }

    while ((v31 & 1) != 0);
    v9 = v22 - 1;
    if (v17 >= v21)
    {
      goto LABEL_26;
    }

LABEL_18:
    if (v9 < v11)
    {
      goto LABEL_143;
    }

    if (v11 < v9)
    {
      v32 = 16 * v9 - 16;
      v33 = v9;
      v34 = v11;
      do
      {
        if (v34 != --v33)
        {
          v35 = *a3;
          if (!*a3)
          {
            goto LABEL_147;
          }

          v36 = *(v35 + v23);
          *(v35 + v23) = *(v35 + v32);
          *(v35 + v32) = v36;
        }

        ++v34;
        v32 -= 16;
        v23 += 16;
      }

      while (v34 < v33);
      v7 = a3[1];
    }

LABEL_26:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_140;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_141;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
          goto LABEL_142;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v9 < v11)
    {
      goto LABEL_135;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E4693950(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v53 = *(v10 + 2);
    v52 = *(v10 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      result = sub_1E4693950((v52 > 1), v53 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v54;
    v55 = &v10[16 * v53];
    *(v55 + 4) = v11;
    *(v55 + 5) = v9;
    v56 = *v6;
    if (!*v6)
    {
      goto LABEL_149;
    }

    if (v53)
    {
      while (1)
      {
        v57 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v58 = *(v10 + 4);
          v59 = *(v10 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_70:
          if (v61)
          {
            goto LABEL_124;
          }

          v74 = &v10[16 * v54];
          v76 = *v74;
          v75 = *(v74 + 1);
          v77 = __OFSUB__(v75, v76);
          v78 = v75 - v76;
          v79 = v77;
          if (v77)
          {
            goto LABEL_127;
          }

          v80 = &v10[16 * v57 + 32];
          v82 = *v80;
          v81 = *(v80 + 1);
          v68 = __OFSUB__(v81, v82);
          v83 = v81 - v82;
          if (v68)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v78, v83))
          {
            goto LABEL_131;
          }

          if (v78 + v83 >= v60)
          {
            if (v60 < v83)
            {
              v57 = v54 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v84 = &v10[16 * v54];
        v86 = *v84;
        v85 = *(v84 + 1);
        v68 = __OFSUB__(v85, v86);
        v78 = v85 - v86;
        v79 = v68;
LABEL_84:
        if (v79)
        {
          goto LABEL_126;
        }

        v87 = &v10[16 * v57];
        v89 = *(v87 + 4);
        v88 = *(v87 + 5);
        v68 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v68)
        {
          goto LABEL_129;
        }

        if (v90 < v78)
        {
          goto LABEL_3;
        }

LABEL_91:
        v6 = v57 - 1;
        if (v57 - 1 >= v54)
        {
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v95 = *&v10[16 * v6 + 32];
        v96 = *&v10[16 * v57 + 40];
        sub_1E4695BE8(*a3 + 16 * v95, (*a3 + 16 * *&v10[16 * v57 + 32]), (*a3 + 16 * v96), v56);
        if (v5)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1E46B8624(v10);
        }

        if (v6 >= *(v10 + 2))
        {
          goto LABEL_121;
        }

        v97 = &v10[16 * v6];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        result = sub_1E46B8598(v57);
        v54 = *(v10 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v62 = &v10[16 * v54 + 32];
      v63 = *(v62 - 64);
      v64 = *(v62 - 56);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_122;
      }

      v67 = *(v62 - 48);
      v66 = *(v62 - 40);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_123;
      }

      v69 = &v10[16 * v54];
      v71 = *v69;
      v70 = *(v69 + 1);
      v68 = __OFSUB__(v70, v71);
      v72 = v70 - v71;
      if (v68)
      {
        goto LABEL_125;
      }

      v68 = __OFADD__(v60, v72);
      v73 = v60 + v72;
      if (v68)
      {
        goto LABEL_128;
      }

      if (v73 >= v65)
      {
        v91 = &v10[16 * v57 + 32];
        v93 = *v91;
        v92 = *(v91 + 1);
        v68 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v68)
        {
          goto LABEL_132;
        }

        if (v60 < v94)
        {
          v57 = v54 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v6 = v103;
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_101;
    }
  }

  v37 = *a3;
  v38 = *a3 + 16 * v9 - 16;
  v39 = v11 - v9;
LABEL_36:
  v40 = *(v37 + 16 * v9);
  v41 = *(v37 + 16 * v9);
  v42 = 100 * v41;
  v43 = (v41 * 100) >> 64 != (100 * v41) >> 63;
  v68 = __OFADD__(v42, *(&v40 + 1));
  v44 = v42 + *(&v40 + 1);
  v45 = v68;
  v46 = v39;
  v47 = v38;
  while (1)
  {
    if (v43)
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
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
LABEL_141:
      __break(1u);
LABEL_142:
      __break(1u);
LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    if (v45)
    {
      goto LABEL_113;
    }

    v48 = 100 * *v47;
    if ((*v47 * 100) >> 64 != v48 >> 63)
    {
      goto LABEL_114;
    }

    v49 = v47[1];
    v68 = __OFADD__(v48, v49);
    v50 = v48 + v49;
    if (v68)
    {
      goto LABEL_115;
    }

    if (v44 >= v50)
    {
LABEL_35:
      ++v9;
      v38 += 16;
      --v39;
      if (v9 == v7)
      {
        v9 = v7;
        goto LABEL_50;
      }

      goto LABEL_36;
    }

    if (!v37)
    {
      break;
    }

    *(v47 + 1) = *v47;
    *v47 = v40;
    v47 -= 2;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_35;
    }
  }

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
  return result;
}

void sub_1E46951C0(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v126 = a1;
  v8 = sub_1E4709CCC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v131 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v138 = &v123 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v144 = &v123 - v17;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v18, v19);
  v143 = &v123 - v21;
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v25 = *v126;
    if (!*v126)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v24 = sub_1E46B8624(v24);
    }

    v146 = v24;
    v119 = *(v24 + 2);
    if (v119 >= 2)
    {
      while (*a3)
      {
        v120 = *&v24[16 * v119];
        v121 = *&v24[16 * v119 + 24];
        sub_1E4695E90(*a3 + v9[9] * v120, *a3 + v9[9] * *&v24[16 * v119 + 16], *a3 + v9[9] * v121, v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v121 < v120)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1E46B8624(v24);
        }

        if (v119 - 2 >= *(v24 + 2))
        {
          goto LABEL_120;
        }

        v122 = &v24[16 * v119];
        *v122 = v120;
        *(v122 + 1) = v121;
        v146 = v24;
        sub_1E46B8598(v119 - 1);
        v24 = v146;
        v119 = *(v146 + 2);
        if (v119 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v123 = a4;
  v23 = 0;
  v141 = (v9 + 1);
  v142 = v9 + 2;
  v140 = (v9 + 4);
  v24 = MEMORY[0x1E69E7CC0];
  v128 = v9;
  v145 = v8;
  v124 = a3;
  while (1)
  {
    v25 = v23;
    v129 = v24;
    if (v23 + 1 >= v22)
    {
      v38 = v23 + 1;
    }

    else
    {
      v136 = v22;
      v125 = v5;
      v26 = *a3;
      v27 = v9[9];
      v28 = v23;
      v127 = v23;
      v29 = &v26[v27 * (v23 + 1)];
      v30 = v8;
      v31 = v9[2];
      v32 = v143;
      v31(v143, v29, v30, v20);
      v33 = &v26[v27 * v28];
      v34 = v144;
      v135 = v31;
      (v31)(v144, v33, v30);
      v134 = sub_1E4698194(&qword_1EE2AEBE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      LODWORD(v137) = sub_1E470AEEC();
      v35 = v9[1];
      v35(v34, v30);
      v133 = v35;
      v35(v32, v30);
      v36 = v127 + 2;
      v139 = v27;
      v37 = &v26[v27 * (v127 + 2)];
      while (1)
      {
        v38 = v136;
        if (v136 == v36)
        {
          break;
        }

        v39 = v143;
        v40 = v9;
        v41 = v145;
        v42 = v135;
        (v135)(v143, v37, v145);
        v43 = v144;
        v42(v144, v29, v41);
        v44 = sub_1E470AEEC() & 1;
        v45 = v133;
        (v133)(v43, v41);
        v46 = v41;
        v9 = v40;
        v45(v39, v46);
        ++v36;
        v37 += v139;
        v29 += v139;
        if ((v137 & 1) != v44)
        {
          v38 = v36 - 1;
          break;
        }
      }

      v5 = v125;
      v24 = v129;
      v8 = v145;
      a3 = v124;
      v25 = v127;
      if (v137)
      {
        if (v38 < v127)
        {
          goto LABEL_123;
        }

        if (v127 < v38)
        {
          v47 = v38;
          v48 = v139 * (v38 - 1);
          v49 = v38 * v139;
          v136 = v38;
          v50 = v127;
          v51 = v127 * v139;
          do
          {
            if (v50 != --v47)
            {
              v53 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v137 = *v140;
              v137(v131, &v53[v51], v145);
              if (v51 < v48 || &v53[v51] >= &v53[v49])
              {
                v52 = v145;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v52 = v145;
                if (v51 != v48)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v137(&v53[v48], v131, v52);
              v9 = v128;
              v24 = v129;
            }

            ++v50;
            v48 -= v139;
            v49 -= v139;
            v51 += v139;
          }

          while (v50 < v47);
          v5 = v125;
          v8 = v145;
          v25 = v127;
          v38 = v136;
        }
      }
    }

    v54 = a3[1];
    if (v38 < v54)
    {
      if (__OFSUB__(v38, v25))
      {
        goto LABEL_122;
      }

      if (v38 - v25 < v123)
      {
        if (__OFADD__(v25, v123))
        {
          goto LABEL_124;
        }

        if (v25 + v123 >= v54)
        {
          v55 = a3[1];
        }

        else
        {
          v55 = v25 + v123;
        }

        if (v55 < v25)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v38 != v55)
        {
          break;
        }
      }
    }

    v56 = v38;
    if (v38 < v25)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1E4693950(0, *(v24 + 2) + 1, 1, v24);
    }

    v58 = *(v24 + 2);
    v57 = *(v24 + 3);
    v59 = v58 + 1;
    if (v58 >= v57 >> 1)
    {
      v24 = sub_1E4693950((v57 > 1), v58 + 1, 1, v24);
    }

    *(v24 + 2) = v59;
    v60 = &v24[16 * v58];
    *(v60 + 4) = v25;
    *(v60 + 5) = v56;
    v25 = *v126;
    if (!*v126)
    {
      goto LABEL_131;
    }

    v132 = v56;
    if (v58)
    {
      while (1)
      {
        v61 = v59 - 1;
        if (v59 >= 4)
        {
          break;
        }

        if (v59 == 3)
        {
          v62 = *(v24 + 4);
          v63 = *(v24 + 5);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_52:
          if (v65)
          {
            goto LABEL_110;
          }

          v78 = &v24[16 * v59];
          v80 = *v78;
          v79 = *(v78 + 1);
          v81 = __OFSUB__(v79, v80);
          v82 = v79 - v80;
          v83 = v81;
          if (v81)
          {
            goto LABEL_113;
          }

          v84 = &v24[16 * v61 + 32];
          v86 = *v84;
          v85 = *(v84 + 1);
          v72 = __OFSUB__(v85, v86);
          v87 = v85 - v86;
          if (v72)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v82, v87))
          {
            goto LABEL_117;
          }

          if (v82 + v87 >= v64)
          {
            if (v64 < v87)
            {
              v61 = v59 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v88 = &v24[16 * v59];
        v90 = *v88;
        v89 = *(v88 + 1);
        v72 = __OFSUB__(v89, v90);
        v82 = v89 - v90;
        v83 = v72;
LABEL_66:
        if (v83)
        {
          goto LABEL_112;
        }

        v91 = &v24[16 * v61];
        v93 = *(v91 + 4);
        v92 = *(v91 + 5);
        v72 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v72)
        {
          goto LABEL_115;
        }

        if (v94 < v82)
        {
          goto LABEL_3;
        }

LABEL_73:
        v99 = v61 - 1;
        if (v61 - 1 >= v59)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v100 = *&v24[16 * v99 + 32];
        v101 = *&v24[16 * v61 + 40];
        sub_1E4695E90(*a3 + v9[9] * v100, *a3 + v9[9] * *&v24[16 * v61 + 32], *a3 + v9[9] * v101, v25);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v101 < v100)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1E46B8624(v24);
        }

        if (v99 >= *(v24 + 2))
        {
          goto LABEL_107;
        }

        v102 = &v24[16 * v99];
        *(v102 + 4) = v100;
        *(v102 + 5) = v101;
        v146 = v24;
        sub_1E46B8598(v61);
        v24 = v146;
        v59 = *(v146 + 2);
        v8 = v145;
        if (v59 <= 1)
        {
          goto LABEL_3;
        }
      }

      v66 = &v24[16 * v59 + 32];
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_108;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_109;
      }

      v73 = &v24[16 * v59];
      v75 = *v73;
      v74 = *(v73 + 1);
      v72 = __OFSUB__(v74, v75);
      v76 = v74 - v75;
      if (v72)
      {
        goto LABEL_111;
      }

      v72 = __OFADD__(v64, v76);
      v77 = v64 + v76;
      if (v72)
      {
        goto LABEL_114;
      }

      if (v77 >= v69)
      {
        v95 = &v24[16 * v61 + 32];
        v97 = *v95;
        v96 = *(v95 + 1);
        v72 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v72)
        {
          goto LABEL_118;
        }

        if (v64 < v98)
        {
          v61 = v59 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v22 = a3[1];
    v23 = v132;
    if (v132 >= v22)
    {
      goto LABEL_94;
    }
  }

  v125 = v5;
  v103 = *a3;
  v104 = v9[9];
  v139 = v9[2];
  v105 = v103 + v104 * (v38 - 1);
  v106 = -v104;
  v127 = v25;
  v107 = v25 - v38;
  v137 = v103;
  v130 = v104;
  v108 = v103 + v38 * v104;
  v132 = v55;
LABEL_85:
  v135 = v105;
  v136 = v38;
  v133 = v108;
  v134 = v107;
  v109 = v105;
  while (1)
  {
    v110 = v143;
    v111 = v139;
    (v139)(v143, v108, v8);
    v112 = v144;
    v111(v144, v109, v145);
    sub_1E4698194(&qword_1EE2AEBE0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v113 = sub_1E470AEEC();
    v114 = *v141;
    v115 = v112;
    v8 = v145;
    (*v141)(v115, v145);
    v114(v110, v8);
    if ((v113 & 1) == 0)
    {
LABEL_84:
      v38 = v136 + 1;
      v105 = &v135[v130];
      v107 = v134 - 1;
      v108 = &v133[v130];
      v56 = v132;
      if (v136 + 1 != v132)
      {
        goto LABEL_85;
      }

      v5 = v125;
      a3 = v124;
      v9 = v128;
      v24 = v129;
      v25 = v127;
      if (v132 < v127)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v137)
    {
      break;
    }

    v116 = *v140;
    v117 = v138;
    (*v140)(v138, v108, v8);
    swift_arrayInitWithTakeFrontToBack();
    v116(v109, v117, v8);
    v109 += v106;
    v108 += v106;
    if (__CFADD__(v107++, 1))
    {
      goto LABEL_84;
    }
  }

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
}