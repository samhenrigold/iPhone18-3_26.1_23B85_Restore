unint64_t sub_1000032CC()
{
  result = qword_1006DFAC8;
  if (!qword_1006DFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006DFAC8);
  }

  return result;
}

uint64_t sub_100003320(char a1)
{
  sub_10056CC38();
  __chkstk_darwin();
  sub_100572888();
  __chkstk_darwin();
  sub_100572818();
  sub_10056CBC8();
  return sub_100572948();
}

uint64_t sub_1000034D8()
{
  v1 = 0x6E6F697461636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x437972746E756F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_100003538@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10000D07C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000356C(uint64_t a1)
{
  v2 = sub_1000103CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000035A8(uint64_t a1)
{
  v2 = sub_1000103CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000035E4(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006DFDD0, &qword_10057B7F0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v10[-v7];
  sub_10000C8CC(a1, a1[3]);
  sub_1000103CC();
  sub_100574718();
  v11 = *v3;
  v10[15] = 0;
  sub_100010420();
  sub_100574368();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v11) = 1;
  sub_100574328();
  LOBYTE(v11) = 2;
  sub_100574308();
  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_10000379C()
{
  v1 = *(v0 + 40);
  sub_100574678();
  sub_1005729F8();
  sub_1005729F8();
  if (v1)
  {
    sub_100574698(1u);
    sub_1005729F8();
  }

  else
  {
    sub_100574698(0);
  }

  return sub_1005746C8();
}

void sub_100003844(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_1005729F8();
  sub_1005729F8();
  if (v2)
  {
    sub_100574698(1u);

    sub_1005729F8();
  }

  else
  {
    sub_100574698(0);
  }
}

Swift::Int sub_1000038E0(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_100574678();
  sub_1005729F8();
  sub_1005729F8();
  if (v2)
  {
    sub_100574698(1u);
    sub_1005729F8();
  }

  else
  {
    sub_100574698(0);
  }

  return sub_1005746C8();
}

double sub_100003984@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10000D240(a2, v6);
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

uint64_t sub_1000039E0(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _s9MusicCore15SharedListeningO8ReactionV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v8) & 1;
}

uint64_t sub_100003A28()
{
  if (qword_1006DF8A0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  v2 = sub_10000C49C(v1, qword_1006FC020);
  if ((sub_10056CA48() & 1) == 0)
  {
    return 0;
  }

  v3 = v1[5];
  v4 = (v0 + v3);
  v5 = *(v0 + v3 + 8);
  v6 = (v2 + v3);
  v7 = v6[1];
  if (v5)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *v4 == *v6 && v5 == v7;
    if (!v8 && (sub_100574498() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v9 = v1[6];
  v10 = *(v0 + v9);
  v11 = *(v0 + v9 + 8);
  v12 = (v2 + v9);
  v13 = v10 == *v12 && v11 == v12[1];
  if (!v13 && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  v14 = v1[7];
  v15 = *(v0 + v14);
  v16 = *(v0 + v14 + 8);
  v17 = (v2 + v14);
  v18 = v15 == *v17 && v16 == v17[1];
  if (!v18 && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  v19 = v1[8];
  v20 = *(v0 + v19);
  v21 = *(v2 + v19);

  return sub_10006B354(v20, v21);
}

uint64_t sub_100003B74()
{
  v1 = sub_10056CAA8();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0x287472616843;
  v15 = 0xE600000000000000;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_100573ED8(17);

  strcpy(&v13, "fetchDate: ");
  BYTE5(v13._object) = 0;
  HIWORD(v13._object) = -5120;
  sub_100010E58(&qword_1006DFD50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v16._countAndFlagsBits = sub_100574408();
  sub_100572A98(v16);

  v17._countAndFlagsBits = 2108450;
  v17._object = 0xE300000000000000;
  sub_100572A98(v17);
  sub_100572A98(v13);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_100573ED8(20);

  v13._countAndFlagsBits = 0x617A696C61636F6CLL;
  v13._object = 0xEF22203A6E6F6974;
  v5 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  v6 = (v0 + *(v5 + 20));
  v7 = v6[1];
  v12[0] = *v6;
  v12[1] = v7;

  sub_100009DCC(&qword_1006DFD58, &qword_10057B750);
  v18._countAndFlagsBits = sub_100572978();
  sub_100572A98(v18);

  v19._countAndFlagsBits = 2108450;
  v19._object = 0xE300000000000000;
  sub_100572A98(v19);
  sub_100572A98(v13);

  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_100573ED8(23);

  v13._countAndFlagsBits = 0xD000000000000012;
  v13._object = 0x80000001005AA010;
  if ((sub_100003A28() & 1) == 0)
  {
    if (qword_1006DFA20 != -1)
    {
      swift_once();
    }

    if (qword_1006FC270)
    {
      sub_1000A67FC();
    }
  }

  sub_10056C9D8();
  v8 = sub_100574408();
  v10 = v9;
  (*(v2 + 8))(v4, v1);
  v20._countAndFlagsBits = v8;
  v20._object = v10;
  sub_100572A98(v20);

  v21._countAndFlagsBits = 2108450;
  v21._object = 0xE300000000000000;
  sub_100572A98(v21);
  sub_100572A98(v13);

  v13._countAndFlagsBits = 0x22203A6469;
  v13._object = 0xE500000000000000;
  v22._countAndFlagsBits = sub_1005713B8();
  sub_100572A98(v22);

  v23._countAndFlagsBits = 2108450;
  v23._object = 0xE300000000000000;
  sub_100572A98(v23);
  sub_100572A98(v13);

  strcpy(&v13, "title: ");
  BYTE1(v13._object) = 0;
  WORD1(v13._object) = 0;
  HIDWORD(v13._object) = -402653184;
  sub_100572A98(*(v0 + *(v5 + 28)));
  v24._countAndFlagsBits = 2108450;
  v24._object = 0xE300000000000000;
  sub_100572A98(v24);
  sub_100572A98(v13);

  strcpy(&v13, "items: ");
  BYTE1(v13._object) = 0;
  WORD1(v13._object) = 0;
  HIDWORD(v13._object) = -402653184;
  type metadata accessor for WidgetMusicItem(0);
  v25._countAndFlagsBits = sub_100572D38();
  sub_100572A98(v25);

  v26._countAndFlagsBits = 2108450;
  v26._object = 0xE300000000000000;
  sub_100572A98(v26);
  sub_100572A98(v13);

  v27._countAndFlagsBits = 41;
  v27._object = 0xE100000000000000;
  sub_100572A98(v27);
  return v14;
}

uint64_t sub_10000401C()
{
  v0 = type metadata accessor for WidgetMusicItem(0);
  v34 = *(v0 - 8);
  __chkstk_darwin();
  v2 = &v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10056CC38();
  __chkstk_darwin();
  sub_100572888();
  __chkstk_darwin();
  v3 = sub_10056CAA8();
  v35 = *(v3 - 8);
  v36 = v3;
  __chkstk_darwin();
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  sub_10000C910(v6, qword_1006FC020);
  v7 = sub_10000C49C(v6, qword_1006FC020);
  sub_10056CA68();
  v8 = [objc_opt_self() mainBundle];
  v9 = [v8 preferredLocalizations];

  v10 = sub_100572D28();
  if (v10[2])
  {
    v11 = v10[5];
    v33 = v10[4];
  }

  else
  {
    v33 = 0;
    v11 = 0;
  }

  v12 = sub_1005713D8();
  v31 = v13;
  v32 = v12;
  sub_100572818();
  sub_10056CBC8();
  v14 = sub_100572948();
  v29 = v15;
  v30 = v14;
  if (qword_1006DF9B8 != -1)
  {
    swift_once();
  }

  v16 = sub_10000C49C(v0, qword_1006FC1D8);
  sub_10000C974(v16, v2, type metadata accessor for WidgetMusicItem);
  v17 = sub_100572D98();
  *(v17 + 16) = 10;
  v18 = v34;
  v19 = v17 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
  sub_10000C974(v2, v19, type metadata accessor for WidgetMusicItem);
  v20 = *(v18 + 72);
  sub_10000C974(v2, v19 + v20, type metadata accessor for WidgetMusicItem);
  sub_10000C974(v2, v19 + 2 * v20, type metadata accessor for WidgetMusicItem);
  sub_10000C974(v2, v19 + 3 * v20, type metadata accessor for WidgetMusicItem);
  sub_10000C974(v2, v19 + 4 * v20, type metadata accessor for WidgetMusicItem);
  sub_10000C974(v2, v19 + 5 * v20, type metadata accessor for WidgetMusicItem);
  sub_10000C974(v2, v19 + 6 * v20, type metadata accessor for WidgetMusicItem);
  sub_10000C974(v2, v19 + 7 * v20, type metadata accessor for WidgetMusicItem);
  sub_10000C974(v2, v19 + 8 * v20, type metadata accessor for WidgetMusicItem);
  sub_10000CA3C(v2, v19 + 9 * v20, type metadata accessor for WidgetMusicItem);
  result = (*(v35 + 32))(v7, v5, v36);
  v22 = (v7 + v6[5]);
  v23 = v32;
  *v22 = v33;
  v22[1] = v11;
  v24 = (v7 + v6[6]);
  v25 = v30;
  v26 = v31;
  *v24 = v23;
  v24[1] = v26;
  v27 = (v7 + v6[7]);
  *v27 = v25;
  v27[1] = v29;
  *(v7 + v6[8]) = v17;
  return result;
}

uint64_t sub_1000044A4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_10056CAA8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100004564, 0, 0);
}

uint64_t sub_100004564()
{
  sub_10056CA68();
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 preferredLocalizations];

  v3 = sub_100572D28();
  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v0[7] = v4;
  v0[8] = v5;

  v0[9] = sub_1005721A8();
  v0[10] = v6;
  v0[11] = sub_1005721E8();
  v0[12] = v7;
  v8 = swift_task_alloc();
  v0[13] = v8;
  *v8 = v0;
  v8[1] = sub_100004698;

  return sub_1000048CC();
}

uint64_t sub_100004698(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return _swift_task_switch(sub_100004798, 0, 0);
}

uint64_t sub_100004798()
{
  v18 = v0[12];
  v19 = v0[14];
  v17 = v0[11];
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];
  v9 = v0[2];
  v10 = sub_1005722D8();
  (*(*(v10 - 8) + 8))(v8, v10);
  (*(v6 + 32))(v9, v5, v7);
  v11 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  v12 = (v9 + v11[5]);
  *v12 = v4;
  v12[1] = v3;
  v13 = (v9 + v11[6]);
  *v13 = v2;
  v13[1] = v1;
  v14 = (v9 + v11[7]);
  *v14 = v17;
  v14[1] = v18;
  *(v9 + v11[8]) = v19;

  v15 = v0[1];

  return v15();
}

uint64_t sub_1000048CC()
{
  v1[2] = v0;
  v2 = sub_1005722D8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v1[5] = *(v3 + 64);
  v1[6] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD08, &qword_10057B6F0);
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000049CC, 0, 0);
}

uint64_t sub_1000049CC()
{
  v1 = v0[7];
  sub_1005722A8();
  v2 = sub_100009DCC(&unk_1006DFD10, &qword_10057B6F8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_10001036C(v0[7], &qword_1006DFD08, &qword_10057B6F0);

    v3 = v0[1];

    return v3(_swiftEmptyArrayStorage);
  }

  else
  {
    v5 = v0[6];
    v6 = v0[3];
    v7 = v0[4];
    v8 = v0[2];
    v9 = sub_1000745C8(10);
    v18 = v10;
    v12 = v11;
    v14 = v13;
    v0[8] = v9;
    (*(v7 + 16))(v5, v8, v6);
    v15 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v16 = swift_allocObject();
    v0[9] = v16;
    (*(v7 + 32))(v16 + v15, v5, v6);
    v17 = swift_task_alloc();
    v0[10] = v17;
    *v17 = v0;
    v17[1] = sub_100004C10;

    return sub_10006B920(&unk_10057B708, v16, v9, v18, v12, v14);
  }
}

uint64_t sub_100004C10(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    swift_unknownObjectRelease();

    v6 = *(v4 + 8);

    return v6(a1);
  }
}

uint64_t sub_100004D64(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006DFF80, &qword_10057BB18);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v14 - v7;
  sub_10000C8CC(a1, a1[3]);
  sub_100010D68();
  sub_100574718();
  LOBYTE(v16) = 0;
  sub_10056CAA8();
  sub_100010E58(&qword_1006DFF90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100574368();
  if (!v2)
  {
    v9 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
    LOBYTE(v16) = 1;
    sub_100574308();
    v10 = (v3 + *(v9 + 24));
    v12 = *v10;
    v11 = v10[1];
    v16 = v12;
    v17 = v11;
    v15 = 2;
    sub_100010420();
    sub_100574368();
    LOBYTE(v16) = 3;
    sub_100574328();
    v16 = *(v3 + *(v9 + 32));
    v15 = 4;
    sub_100009DCC(&qword_1006DFF98, &qword_10057BB20);
    sub_100010DBC(&qword_1006DFFA0, &qword_1006DFFA8, &unk_10057DDA4, &protocol conformance descriptor for <A> [A]);
    sub_100574368();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000502C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_10056CAA8();
  v26 = *(v4 - 8);
  __chkstk_darwin();
  v27 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_100009DCC(&qword_1006DFFB0, &qword_10057BB28);
  v25 = *(v29 - 8);
  __chkstk_darwin();
  v7 = &v24 - v6;
  v8 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  __chkstk_darwin();
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C8CC(a1, *(a1 + 3));
  sub_100010D68();
  v28 = v7;
  sub_100574708();
  if (v2)
  {
    return sub_100010474(a1);
  }

  v11 = v10;
  v13 = v25;
  v12 = v26;
  LOBYTE(v30) = 0;
  sub_100010E58(&qword_1006DFFB8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v14 = v27;
  sub_1005742D8();
  (*(v12 + 32))(v11, v14, v4);
  LOBYTE(v30) = 1;
  v15 = sub_100574278();
  v16 = (v11 + v8[5]);
  *v16 = v15;
  v16[1] = v17;
  v32 = 2;
  sub_1000104C0();
  sub_1005742D8();
  v27 = a1;
  v18 = v31;
  v19 = (v11 + v8[6]);
  *v19 = v30;
  v19[1] = v18;
  LOBYTE(v30) = 3;
  v20 = sub_100574298();
  v21 = (v11 + v8[7]);
  *v21 = v20;
  v21[1] = v22;
  sub_100009DCC(&qword_1006DFF98, &qword_10057BB20);
  v32 = 4;
  sub_100010DBC(&qword_1006DFFC0, &qword_1006DFFC8, &unk_10057DDCC, &protocol conformance descriptor for <A> [A]);
  sub_1005742D8();
  (*(v13 + 8))(v28, v29);
  *(v11 + v8[8]) = v30;
  sub_10000C974(v11, v24, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  sub_100010474(v27);
  return sub_10000C9DC(v11, type metadata accessor for TopChartsWidgetDataProvider.Chart);
}

uint64_t sub_10000553C()
{
  v1 = *v0;
  v2 = 0x7461446863746566;
  v3 = 25705;
  v4 = 0x656C746974;
  if (v1 != 3)
  {
    v4 = 0x736D657469;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x617A696C61636F6CLL;
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

uint64_t sub_1000055D0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10000D5B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_100005604(uint64_t a1)
{
  v2 = sub_100010D68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100005640(uint64_t a1)
{
  v2 = sub_100010D68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000056B4()
{
  v1 = v0;
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  __chkstk_darwin();
  v3 = &v11 - v2;
  if (qword_1006DF8B0 != -1)
  {
    swift_once();
  }

  v4 = sub_10056DF88();
  sub_10000C49C(v4, qword_1006DF8B8);
  v5 = sub_10056DF68();
  v6 = sub_100573448();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Pre-warming descriptor cache", v7, 2u);
  }

  v8 = sub_100572F48();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v1;

  sub_100005E80(0, 0, v3, &unk_10057B768, v9);
}

uint64_t sub_10000587C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_10000589C, 0, 0);
}

uint64_t sub_10000589C()
{

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_100005968;
  v2 = *(v0 + 24);

  return sub_10006BD18(&unk_10057B798, v2, &off_10067FFF0);
}

uint64_t sub_100005968(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {

    *(v4 + 40) = a1;

    return _swift_task_switch(sub_100005AAC, 0, 0);
  }
}

uint64_t sub_100005ACC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  type metadata accessor for WidgetChartDiskCache(0);
  *(v3 + 24) = swift_task_alloc();
  *(v3 + 56) = *a2;

  return _swift_task_switch(sub_100005B68, 0, 0);
}

uint64_t sub_100005B68()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12MusicWidgets27TopChartsWidgetDataProvider_cache;
  *(v0 + 32) = OBJC_IVAR____TtC12MusicWidgets27TopChartsWidgetDataProvider_cache;
  v4 = *(v0 + 56);
  sub_10000C974(v1 + v3, v2, type metadata accessor for WidgetChartDiskCache);
  v5 = sub_100006494(v4);
  sub_10000C9DC(v2, type metadata accessor for WidgetChartDiskCache);
  if (v5)
  {

    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    *(v0 + 40) = v8;
    *v8 = v0;
    v8[1] = sub_100005CA0;
    v9 = *(v0 + 56);

    return sub_10000D9B4(v9);
  }
}

uint64_t sub_100005CA0(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100005DA0, 0, 0);
}

uint64_t sub_100005DA0()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 56);
    sub_10000C974(*(v0 + 16) + *(v0 + 32), v2, type metadata accessor for WidgetChartDiskCache);

    sub_100006FEC(v3, v1);

    sub_10000C9DC(v2, type metadata accessor for WidgetChartDiskCache);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_100005E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000CC8C(a3, v24 - v9, &qword_1006DFD60, &qword_10057B758);
  v11 = sub_100572F48();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001036C(v10, &qword_1006DFD60, &qword_10057B758);
  }

  else
  {
    sub_100572F38();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100572E78();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1005729C8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      sub_100009DCC(&qword_1006DFD68, &qword_10057B780);
      v20 = (v17 | v15);
      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v21 = swift_task_create();

      sub_10001036C(a3, &qword_1006DFD60, &qword_10057B758);

      return v21;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001036C(a3, &qword_1006DFD60, &qword_10057B758);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  sub_100009DCC(&qword_1006DFD68, &qword_10057B780);
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100006194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100009DCC(&qword_1006DFD60, &qword_10057B758);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000CC8C(a3, v24 - v9, &qword_1006DFD60, &qword_10057B758);
  v11 = sub_100572F48();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_10001036C(v10, &qword_1006DFD60, &qword_10057B758);
  }

  else
  {
    sub_100572F38();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_100572E78();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1005729C8() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_10001036C(a3, &qword_1006DFD60, &qword_10057B758);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10001036C(a3, &qword_1006DFD60, &qword_10057B758);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100006494(int a1)
{
  v88 = sub_10056CAA8();
  v2 = *(v88 - 8);
  __chkstk_darwin();
  v85 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v80 - v4;
  __chkstk_darwin();
  v7 = &v80 - v6;
  sub_100009DCC(&qword_1006DFD70, &qword_10057B7A8);
  __chkstk_darwin();
  v9 = &v80 - v8;
  v10 = type metadata accessor for WidgetChartDiskCache.ChartList(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v87 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v83 = &v80 - v13;
  __chkstk_darwin();
  v15 = &v80 - v14;
  v90 = 0;
  v91 = 0xE000000000000000;
  sub_100573ED8(19);

  v90 = 0xD000000000000011;
  v91 = 0x80000001005AA030;
  LODWORD(v86) = a1;
  LOBYTE(v89) = a1;
  v92._countAndFlagsBits = sub_100572978();
  sub_100572A98(v92);

  sub_10006E4E4(v90, v91, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10001036C(v9, &qword_1006DFD70, &qword_10057B7A8);
    if (qword_1006DF8B0 != -1)
    {
      swift_once();
    }

    v16 = sub_10056DF88();
    sub_10000C49C(v16, qword_1006DF8B8);
    v17 = sub_10056DF68();
    v18 = sub_100573448();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v90 = v20;
      *v19 = 136446210;
      LOBYTE(v89) = v86;
      v21 = sub_100572978();
      v23 = sub_10008190C(v21, v22, &v90);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Cache miss for %{public}s chart descriptors.", v19, 0xCu);
      sub_100010474(v20);
    }

    return 0;
  }

  v84 = v15;
  sub_10000CA3C(v9, v15, type metadata accessor for WidgetChartDiskCache.ChartList);
  sub_10056CA68();
  v24 = [objc_opt_self() mainBundle];
  v25 = [v24 preferredLocalizations];

  v26 = sub_100572D28();
  v27 = v7;
  if (v26[2])
  {
    v28 = v26[5];
    v81 = v26[4];
  }

  else
  {
    v81 = 0;
    v28 = 0;
  }

  v29 = v88;

  v30 = v84;
  if (qword_1006DFA20 != -1)
  {
    swift_once();
  }

  if (qword_1006FC270)
  {
    sub_1000A6804();
  }

  sub_10056C9D8();
  v31 = sub_10056C9F8();
  v32 = v2 + 8;
  v82 = *(v2 + 8);
  v82(v5, v29);
  if ((v31 & 1) == 0)
  {
    goto LABEL_25;
  }

  v33 = (v30 + *(v10 + 20));
  v34 = v33[1];
  if (v34)
  {
    if (v28 && (*v33 == v81 && v34 == v28 || (sub_100574498() & 1) != 0))
    {
      goto LABEL_20;
    }

LABEL_25:
    if (qword_1006DF8B0 != -1)
    {
      swift_once();
    }

    v48 = sub_10056DF88();
    sub_10000C49C(v48, qword_1006DF8B8);
    v49 = v85;
    (*(v2 + 16))(v85, v27, v29);
    v50 = v29;
    v51 = v87;
    sub_10000C974(v30, v87, type metadata accessor for WidgetChartDiskCache.ChartList);

    v52 = sub_10056DF68();
    v53 = sub_100573448();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v49;
      v55 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v89 = v83;
      *v55 = 136446978;
      sub_100010E58(&qword_1006DFD50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v56 = sub_100574408();
      v57 = v50;
      v58 = v56;
      v60 = v59;
      v61 = v54;
      v62 = v82;
      v82(v61, v57);
      v63 = sub_10008190C(v58, v60, &v89);

      *(v55 + 4) = v63;
      v64 = v27;
      *(v55 + 12) = 2082;
      v90 = v81;
      v91 = v28;
      sub_100009DCC(&qword_1006DFD58, &qword_10057B750);
      v65 = sub_100572978();
      v67 = sub_10008190C(v65, v66, &v89);

      *(v55 + 14) = v67;
      *(v55 + 22) = 2082;
      LOBYTE(v90) = v86;
      v68 = sub_100572978();
      v70 = sub_10008190C(v68, v69, &v89);

      *(v55 + 24) = v70;
      *(v55 + 32) = 2082;
      v71 = v87;
      v72 = sub_100009EE8();
      v74 = v73;
      sub_10000C9DC(v71, type metadata accessor for WidgetChartDiskCache.ChartList);
      v75 = sub_10008190C(v72, v74, &v89);

      *(v55 + 34) = v75;
      _os_log_impl(&_mh_execute_header, v52, v53, "Cache miss now %{public}s, expected localization %{public}s, for %{public}s chart descriptors, chart list: %{public}s", v55, 0x2Au);
      swift_arrayDestroy();

      v62(v64, v88);
      v76 = v84;
    }

    else
    {

      sub_10000C9DC(v51, type metadata accessor for WidgetChartDiskCache.ChartList);
      v77 = v82;
      v82(v49, v50);
      v77(v27, v50);
      v76 = v30;
    }

    sub_10000C9DC(v76, type metadata accessor for WidgetChartDiskCache.ChartList);
    return 0;
  }

  if (v28)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (qword_1006DF8B0 != -1)
  {
    swift_once();
  }

  v35 = sub_10056DF88();
  sub_10000C49C(v35, qword_1006DF8B8);
  v36 = v83;
  sub_10000C974(v30, v83, type metadata accessor for WidgetChartDiskCache.ChartList);

  v37 = sub_10056DF68();
  v38 = sub_100573448();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v39 = 136446722;
    LOBYTE(v90) = v86;
    v40 = sub_100572978();
    v87 = v27;
    v42 = sub_10008190C(v40, v41, &v89);
    v86 = v32;
    v43 = v42;

    *(v39 + 4) = v43;
    *(v39 + 12) = 2082;
    v90 = v81;
    v91 = v28;
    sub_100009DCC(&qword_1006DFD58, &qword_10057B750);
    v44 = sub_100572978();
    v46 = sub_10008190C(v44, v45, &v89);

    *(v39 + 14) = v46;
    *(v39 + 22) = 2050;
    v47 = *(*(v36 + *(v10 + 24)) + 16);
    sub_10000C9DC(v36, type metadata accessor for WidgetChartDiskCache.ChartList);
    *(v39 + 24) = v47;
    _os_log_impl(&_mh_execute_header, v37, v38, "Using cached %{public}s chart descriptors for %{public}s with %{public}ld items.", v39, 0x20u);
    swift_arrayDestroy();
    v30 = v84;

    v82(v87, v29);
  }

  else
  {
    sub_10000C9DC(v36, type metadata accessor for WidgetChartDiskCache.ChartList);

    v82(v27, v29);
  }

  v79 = *(v30 + *(v10 + 24));

  sub_10000C9DC(v30, type metadata accessor for WidgetChartDiskCache.ChartList);
  return v79;
}

uint64_t sub_100006FEC(char a1, uint64_t a2)
{
  sub_100009DCC(&qword_1006DFD70, &qword_10057B7A8);
  __chkstk_darwin();
  v4 = &v10[-v3];
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_100573ED8(19);

  v11 = 0xD000000000000011;
  v12 = 0x80000001005AA030;
  v10[15] = a1;
  v13._countAndFlagsBits = sub_100572978();
  sub_100572A98(v13);

  v5 = v11;
  v6 = v12;

  sub_100009E14(v7, v4);
  v8 = type metadata accessor for WidgetChartDiskCache.ChartList(0);
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  sub_100072588(v5, v6, v4);

  return sub_10001036C(v4, &qword_1006DFD70, &qword_10057B7A8);
}

uint64_t sub_100007164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for WidgetChartDiskCache(0);
  v4[6] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFCE0, &qword_10057B698);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000072B0, 0, 0);
}

uint64_t sub_1000072B0()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[3];
  v7 = OBJC_IVAR____TtC12MusicWidgets27TopChartsWidgetDataProvider_cache;
  v0[14] = OBJC_IVAR____TtC12MusicWidgets27TopChartsWidgetDataProvider_cache;
  sub_10000C974(v4 + v7, v5, type metadata accessor for WidgetChartDiskCache);
  sub_100007834(v6, v3);
  sub_10000C9DC(v5, type metadata accessor for WidgetChartDiskCache);
  v8 = *(v2 + 48);
  v0[15] = v8;
  v0[16] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v8(v3, 1, v1) == 1)
  {
    sub_10001036C(v0[9], &qword_1006DFCE0, &qword_10057B698);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_1000074E8;
    v10 = v0[8];
    v11 = v0[3];
    v12 = v0[4];

    return sub_1000086F8(v10, v11, v12);
  }

  else
  {
    v14 = v0[13];
    v15 = v0[11];
    v16 = v0[2];
    sub_10000CA3C(v0[9], v14, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    sub_10000CA3C(v14, v16, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    (*(v15 + 56))(v0[2], 0, 1, v0[10]);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_1000074E8()
{

  return _swift_task_switch(sub_1000075E4, 0, 0);
}

uint64_t sub_1000075E4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  if ((*(v0 + 120))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 88);
    sub_10001036C(v2, &qword_1006DFCE0, &qword_10057B698);
    v4 = *(v3 + 56);
    v5 = 1;
  }

  else
  {
    v6 = *(v0 + 112);
    v8 = *(v0 + 88);
    v7 = *(v0 + 96);
    v10 = *(v0 + 48);
    v9 = *(v0 + 56);
    v11 = *(v0 + 40);
    v14 = *(v0 + 16);
    sub_10000CA3C(v2, v7, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    sub_10000C974(v11 + v6, v10, type metadata accessor for WidgetChartDiskCache);
    v16._countAndFlagsBits = sub_1005713B8();
    sub_100572A98(v16);

    sub_10000C974(v7, v9, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    v4 = *(v8 + 56);
    v4(v9, 0, 1, v1);
    sub_100072D98(0x5F7472616843, 0xE600000000000000, v9);

    sub_10001036C(v9, &qword_1006DFCE0, &qword_10057B698);
    sub_10000C9DC(v10, type metadata accessor for WidgetChartDiskCache);
    sub_10000CA3C(v7, v14, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    v5 = 0;
  }

  v4(*(v0 + 16), v5, 1, *(v0 + 80));

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100007834@<X0>(char *a1@<X0>, uint64_t a3@<X8>)
{
  v99 = a3;
  v4 = sub_10056CAA8();
  v5 = *(v4 - 8);
  v97 = v4;
  v98 = v5;
  __chkstk_darwin();
  v96 = &v86[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v86[-v7];
  __chkstk_darwin();
  v10 = &v86[-v9];
  sub_100009DCC(&qword_1006DFCE0, &qword_10057B698);
  __chkstk_darwin();
  v12 = &v86[-v11];
  v13 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v94 = &v86[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v95 = &v86[-v16];
  __chkstk_darwin();
  v92 = &v86[-v17];
  __chkstk_darwin();
  v19 = &v86[-v18];
  v101 = 0x5F7472616843;
  v102 = 0xE600000000000000;
  v93 = a1;
  v103._countAndFlagsBits = sub_1005713B8();
  sub_100572A98(v103);

  sub_10006ED78(v101, v102, v12);
  v20 = v13;
  v21 = v14;

  if ((*(v14 + 48))(v12, 1, v20) == 1)
  {
    sub_10001036C(v12, &qword_1006DFCE0, &qword_10057B698);
    if (qword_1006DF8B0 != -1)
    {
      swift_once();
    }

    v22 = sub_10056DF88();
    sub_10000C49C(v22, qword_1006DF8B8);

    v23 = sub_10056DF68();
    v24 = sub_100573448();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v101 = v26;
      *v25 = 136446210;
      v27 = sub_1005713B8();
      v29 = sub_10008190C(v27, v28, &v101);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "Cache miss for chart %{public}s", v25, 0xCu);
      sub_100010474(v26);
    }

    v30 = 1;
    v31 = v99;
    return v21[7](v31, v30, 1, v20);
  }

  sub_10000CA3C(v12, v19, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  sub_10056CA68();
  v32 = [objc_opt_self() mainBundle];
  v33 = [v32 preferredLocalizations];

  v34 = sub_100572D28();
  if (v34[2])
  {
    v35 = v34[5];
    v91 = v34[4];
  }

  else
  {
    v91 = 0;
    v35 = 0;
  }

  v36 = v97;
  v37 = v95;

  if ((sub_100003A28() & 1) == 0)
  {
    if (qword_1006DFA20 != -1)
    {
      swift_once();
    }

    if (qword_1006FC270)
    {
      sub_1000A67FC();
    }
  }

  sub_10056C9D8();
  v95 = v10;
  v38 = sub_10056C9F8();
  v40 = v98 + 8;
  v39 = *(v98 + 1);
  (v39)(v8, v36);
  v41 = v96;
  if (v38)
  {
    v42 = &v19[*(v20 + 20)];
    v43 = v42[1];
    if (v43)
    {
      if (v35 && (*v42 == v91 && v43 == v35 || (sub_100574498() & 1) != 0))
      {

LABEL_29:
        v98 = v39;
        if (qword_1006DF8B0 != -1)
        {
          swift_once();
        }

        v70 = sub_10056DF88();
        sub_10000C49C(v70, qword_1006DF8B8);
        v71 = v19;
        v72 = v92;
        sub_10000C974(v19, v92, type metadata accessor for TopChartsWidgetDataProvider.Chart);
        v73 = sub_10056DF68();
        v74 = sub_100573448();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v101 = v76;
          *v75 = 136446210;
          v77 = sub_100003B74();
          v78 = v72;
          v80 = v79;
          sub_10000C9DC(v78, type metadata accessor for TopChartsWidgetDataProvider.Chart);
          v81 = sub_10008190C(v77, v80, &v101);

          *(v75 + 4) = v81;
          _os_log_impl(&_mh_execute_header, v73, v74, "Using cached chart %{public}s", v75, 0xCu);
          sub_100010474(v76);

          v82 = v95;
          v83 = v97;
        }

        else
        {

          sub_10000C9DC(v72, type metadata accessor for TopChartsWidgetDataProvider.Chart);
          v82 = v95;
          v83 = v36;
        }

        (v98)(v82, v83);
        v84 = v99;
        sub_10000CA3C(v71, v99, type metadata accessor for TopChartsWidgetDataProvider.Chart);
        v31 = v84;
        v30 = 0;
        return v21[7](v31, v30, 1, v20);
      }
    }

    else if (!v35)
    {
      goto LABEL_29;
    }
  }

  v92 = v21;
  v93 = v40;
  v90 = v20;
  if (qword_1006DF8B0 != -1)
  {
    swift_once();
  }

  v44 = sub_10056DF88();
  sub_10000C49C(v44, qword_1006DF8B8);
  v45 = v95;
  (*(v98 + 2))(v41, v95, v36);
  v46 = v41;
  sub_10000C974(v19, v37, type metadata accessor for TopChartsWidgetDataProvider.Chart);
  v47 = v37;
  v48 = v94;
  sub_10000C974(v19, v94, type metadata accessor for TopChartsWidgetDataProvider.Chart);

  v49 = sub_10056DF68();
  v50 = sub_100573448();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v89 = v19;
    v52 = v51;
    v88 = swift_slowAlloc();
    v100 = v88;
    *v52 = 136446978;
    sub_100010E58(&qword_1006DFD50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v87 = v50;
    v53 = sub_100574408();
    v54 = v36;
    v56 = v55;
    (v39)(v46, v54);
    v57 = sub_10008190C(v53, v56, &v100);

    *(v52 + 4) = v57;
    v98 = v39;
    *(v52 + 12) = 2082;
    v101 = v91;
    v102 = v35;
    sub_100009DCC(&qword_1006DFD58, &qword_10057B750);
    v58 = sub_100572978();
    v60 = sub_10008190C(v58, v59, &v100);

    *(v52 + 14) = v60;
    *(v52 + 22) = 2082;
    v61 = v90;
    v62 = (v47 + *(v90 + 28));
    v63 = *v62;
    v64 = v62[1];

    sub_10000C9DC(v47, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    v65 = sub_10008190C(v63, v64, &v100);

    *(v52 + 24) = v65;
    *(v52 + 32) = 2082;
    v66 = sub_100003B74();
    v68 = v67;
    sub_10000C9DC(v48, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    v69 = sub_10008190C(v66, v68, &v100);

    *(v52 + 34) = v69;
    v20 = v61;
    _os_log_impl(&_mh_execute_header, v49, v87, "Cache miss now %{public}s, expected localization %{public}s, for chart %{public}s: chart %{public}s", v52, 0x2Au);
    swift_arrayDestroy();

    (v98)(v45, v97);
    sub_10000C9DC(v89, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    v30 = 1;
    v31 = v99;
  }

  else
  {

    sub_10000C9DC(v48, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    sub_10000C9DC(v47, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    (v39)(v46, v36);
    (v39)(v45, v36);
    sub_10000C9DC(v19, type metadata accessor for TopChartsWidgetDataProvider.Chart);
    v30 = 1;
    v31 = v99;
    v20 = v90;
  }

  v21 = v92;
  return v21[7](v31, v30, 1, v20);
}

id sub_10000839C()
{
  type metadata accessor for TopChartsWidgetDataProvider(0);
  swift_allocObject();
  result = sub_1000083DC();
  qword_1006FC038 = result;
  return result;
}

id sub_1000083DC()
{
  v1 = v0;
  v2 = sub_100570D58();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10006AC28(0x7472616843706F54, 0xE900000000000073, v0 + OBJC_IVAR____TtC12MusicWidgets27TopChartsWidgetDataProvider_cache);
  (*(v3 + 104))(v5, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v2);
  sub_100570D68();
  v6 = [objc_opt_self() processInfo];
  v7 = [v6 processName];

  v8 = sub_1005728D8();
  v10 = v9;

  if (v8 == 0x646957636973754DLL && v10 == 0xEC00000073746567)
  {
  }

  else
  {
    v12 = sub_100574498();

    if ((v12 & 1) == 0)
    {
      return v1;
    }
  }

  if (qword_1006DF8B0 != -1)
  {
    swift_once();
  }

  v13 = sub_10056DF88();
  sub_10000C49C(v13, qword_1006DF8B8);
  v14 = sub_10056DF68();
  v15 = sub_100573448();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "running in widget process, disabling fallback cache", v16, 2u);
  }

  v17 = [objc_opt_self() defaultMediaLibrary];
  if ([v17 artworkDataSource])
  {
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      [v18 setUsesFallbackCache:0];
    }

    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() sharedStoreArtworkDataSource];
  if (result)
  {
    v20 = result;
    [result setUsesFallbackCache:0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000086F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  sub_100009DCC(&qword_1006DFCC0, &qword_10057B678);
  v3[17] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006DFCC8, &qword_10057B680);
  v3[18] = v4;
  v3[19] = *(v4 - 8);
  v3[20] = swift_task_alloc();
  v5 = sub_1005722D8();
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = sub_100009DCC(&qword_1006DFCD0, &qword_10057B688);
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v7 = sub_100570D78();
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v8 = sub_100009DCC(&qword_1006DFCD8, &qword_10057B690);
  v3[31] = v8;
  v3[32] = *(v8 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = sub_100009DCC(&qword_1006DFCE0, &qword_10057B698);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();

  return _swift_task_switch(sub_1000089DC, 0, 0);
}

uint64_t sub_1000089DC()
{
  v25 = v0;
  if (qword_1006DF8B0 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  v0[37] = sub_10000C49C(v1, qword_1006DF8B8);

  v2 = sub_10056DF68();
  v3 = sub_100573448();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v24 = v5;
    *v4 = 136446210;
    v6 = sub_1005713B8();
    v8 = sub_10008190C(v6, v7, &v24);

    *(v4 + 4) = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Asking server for chart with id: %{public}s", v4, 0xCu);
    sub_100010474(v5);
  }

  v9 = v0[36];
  v10 = v0[30];
  v11 = v0[29];
  v23 = v0[28];
  v12 = v0[15];
  v13 = v0[16];
  v14 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  v0[38] = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 56);
  v0[39] = v16;
  v0[40] = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v16(v9, 1, 1, v14);
  swift_getKeyPath();
  v0[12] = v12;
  v0[13] = v13;
  sub_100010E58(&qword_1006DFCE8, &type metadata accessor for Playlist, &protocol conformance descriptor for Playlist);

  sub_1005710E8();
  (*(v11 + 104))(v10, enum case for MusicDataRequest.Source.widgets(_:), v23);
  sub_1005710C8();
  sub_100009DCC(&qword_1006DFCF0, &qword_10057B6C8);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_10057B4F0;
  sub_100009DCC(&qword_1006DFCF8, &unk_10057B6D0);
  *(v17 + 32) = sub_100570D38();
  sub_1005710D8();
  v18 = sub_1005710B8();
  sub_10056D608();
  v18(v0 + 2, 0);
  v19 = swift_task_alloc();
  v0[41] = v19;
  *v19 = v0;
  v19[1] = sub_100008D7C;
  v20 = v0[31];
  v21 = v0[27];

  return MusicCatalogResourceRequest.response()(v21, v20);
}

uint64_t sub_100008D7C()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_100009648;
  }

  else
  {
    v2 = sub_100008E90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100008E90()
{
  v34 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v6 = *(v0 + 136);
  v5 = *(v0 + 144);
  sub_1005711F8();
  sub_10006E310(v6);
  (*(v4 + 8))(v3, v5);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    sub_10001036C(*(v0 + 136), &qword_1006DFCC0, &qword_10057B678);

    v7 = sub_10056DF68();
    v8 = sub_100573428();

    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 256);
    v11 = *(v0 + 264);
    v12 = *(v0 + 248);
    v13 = *(v0 + 208);
    v14 = *(v0 + 216);
    v15 = *(v0 + 200);
    if (v9)
    {
      v32 = *(v0 + 216);
      v31 = *(v0 + 248);
      v16 = swift_slowAlloc();
      v30 = v11;
      v17 = swift_slowAlloc();
      v33 = v17;
      *v16 = 136446210;
      v18 = sub_1005713B8();
      v20 = sub_10008190C(v18, v19, &v33);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v7, v8, "Server did not return chart for: %{public}s ", v16, 0xCu);
      sub_100010474(v17);

      (*(v13 + 8))(v32, v15);
      (*(v10 + 8))(v30, v31);
    }

    else
    {

      (*(v13 + 8))(v14, v15);
      (*(v10 + 8))(v11, v12);
    }

    (*(v0 + 312))(*(v0 + 112), 1, 1, *(v0 + 304));
    sub_10001036C(*(v0 + 288), &qword_1006DFCE0, &qword_10057B698);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v21 = *(v0 + 184);
    v22 = *(v0 + 192);
    v23 = *(v0 + 168);
    v24 = *(v0 + 176);
    (*(v24 + 32))(v22, *(v0 + 136), v23);
    (*(v24 + 16))(v21, v22, v23);
    v25 = swift_task_alloc();
    *(v0 + 344) = v25;
    *v25 = v0;
    v25[1] = sub_100009230;
    v26 = *(v0 + 280);
    v27 = *(v0 + 184);

    return sub_1000044A4(v26, v27);
  }
}

uint64_t sub_100009230()
{

  return _swift_task_switch(sub_10000932C, 0, 0);
}

uint64_t sub_10000932C()
{
  v35 = v0;
  v2 = *(v0 + 280);
  v1 = *(v0 + 288);
  (*(v0 + 312))(v2, 0, 1, *(v0 + 304));
  sub_10000C6F0(v2, v1);
  v3 = sub_10056DF68();
  v4 = sub_100573448();
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 280);
    v5 = *(v0 + 288);
    v7 = *(v0 + 256);
    v31 = *(v0 + 248);
    v32 = *(v0 + 264);
    v8 = *(v0 + 208);
    v29 = *(v0 + 200);
    v30 = *(v0 + 216);
    v28 = *(v0 + 192);
    v9 = *(v0 + 176);
    v27 = *(v0 + 168);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136446210;
    swift_beginAccess();
    sub_10000CC8C(v5, v6, &qword_1006DFCE0, &qword_10057B698);
    v12 = sub_100572978();
    v14 = sub_10008190C(v12, v13, &v34);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Server returned: %{public}s", v10, 0xCu);
    sub_100010474(v11);

    (*(v9 + 8))(v28, v27);
    (*(v8 + 8))(v30, v29);
    (*(v7 + 8))(v32, v31);
  }

  else
  {
    v15 = *(v0 + 256);
    v33 = *(v0 + 264);
    v16 = *(v0 + 248);
    v18 = *(v0 + 208);
    v17 = *(v0 + 216);
    v20 = *(v0 + 192);
    v19 = *(v0 + 200);
    v22 = *(v0 + 168);
    v21 = *(v0 + 176);

    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v17, v19);
    (*(v15 + 8))(v33, v16);
  }

  v23 = *(v0 + 288);
  v24 = *(v0 + 112);
  swift_beginAccess();
  sub_10000CC8C(v23, v24, &qword_1006DFCE0, &qword_10057B698);
  sub_10001036C(*(v0 + 288), &qword_1006DFCE0, &qword_10057B698);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100009648(uint64_t a1, uint64_t a2)
{
  v23 = v2;

  swift_errorRetain();
  v3 = sub_10056DF68();
  v4 = sub_100573428();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v2[32];
  v6 = v2[33];
  v8 = v2[31];
  if (v5)
  {
    v21 = v2[33];
    v20 = v2[31];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 136446466;
    v12 = sub_1005713B8();
    v14 = sub_10008190C(v12, v13, &v22);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v15;
    *v10 = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Request %{public}s Failed with %{public}@", v9, 0x16u);
    sub_10001036C(v10, &qword_1006DFD00, &qword_10057E570);

    sub_100010474(v11);

    (*(v7 + 8))(v21, v20);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v16 = v2[36];
  v17 = v2[14];
  swift_beginAccess();
  sub_10000CC8C(v16, v17, &qword_1006DFCE0, &qword_10057B698);
  sub_10001036C(v2[36], &qword_1006DFCE0, &qword_10057B698);

  v18 = v2[1];

  return v18();
}

uint64_t sub_100009914@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10000C8CC(a1, a1[3]);
  result = sub_100571918();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_10000995C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100040A04(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100009A54()
{
  sub_10000C9DC(v0 + OBJC_IVAR____TtC12MusicWidgets27TopChartsWidgetDataProvider_cache, type metadata accessor for WidgetChartDiskCache);

  return swift_deallocClassInstance();
}

uint64_t sub_100009AF4(uint64_t a1)
{
  result = type metadata accessor for WidgetDiskCache(319);
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

uint64_t sub_100009B98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDiskCache(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100009C18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetDiskCache(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100009CA8(uint64_t a1)
{
  result = type metadata accessor for WidgetDiskCache(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_100009D14(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100009D28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100009D70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100009DCC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100009E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10056CA68();
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 preferredLocalizations];

  v6 = sub_100572D28();
  if (v6[2])
  {
    v8 = v6[4];
    v7 = v6[5];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  result = type metadata accessor for WidgetChartDiskCache.ChartList(0);
  v10 = (a2 + *(result + 20));
  *v10 = v8;
  v10[1] = v7;
  *(a2 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_100009EE8()
{
  v1 = sub_10056CAA8();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0x73694C7472616843;
  v14 = 0xEA00000000002874;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100573ED8(17);

  strcpy(&v12, "fetchDate: ");
  BYTE5(v12._object) = 0;
  HIWORD(v12._object) = -5120;
  sub_100010E58(&qword_1006DFD50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v15._countAndFlagsBits = sub_100574408();
  sub_100572A98(v15);

  v16._countAndFlagsBits = 2108450;
  v16._object = 0xE300000000000000;
  sub_100572A98(v16);
  sub_100572A98(v12);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100573ED8(20);

  v12._countAndFlagsBits = 0x617A696C61636F6CLL;
  v12._object = 0xEF22203A6E6F6974;
  v5 = (v0 + *(type metadata accessor for WidgetChartDiskCache.ChartList(0) + 20));
  v6 = v5[1];
  v11[0] = *v5;
  v11[1] = v6;

  sub_100009DCC(&qword_1006DFD58, &qword_10057B750);
  v17._countAndFlagsBits = sub_100572978();
  sub_100572A98(v17);

  v18._countAndFlagsBits = 2108450;
  v18._object = 0xE300000000000000;
  sub_100572A98(v18);
  sub_100572A98(v12);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100573ED8(23);

  v12._countAndFlagsBits = 0xD000000000000012;
  v12._object = 0x80000001005AA010;
  if (qword_1006DFA20 != -1)
  {
    swift_once();
  }

  if (qword_1006FC270)
  {
    sub_1000A6804();
  }

  sub_10056C9D8();
  v7 = sub_100574408();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  v19._countAndFlagsBits = v7;
  v19._object = v9;
  sub_100572A98(v19);

  v20._countAndFlagsBits = 2108450;
  v20._object = 0xE300000000000000;
  sub_100572A98(v20);
  sub_100572A98(v12);

  strcpy(&v12, "items: ");
  BYTE1(v12._object) = 0;
  WORD1(v12._object) = 0;
  HIDWORD(v12._object) = -402653184;
  v21._countAndFlagsBits = sub_100572D38();
  sub_100572A98(v21);

  v22._countAndFlagsBits = 2108450;
  v22._object = 0xE300000000000000;
  sub_100572A98(v22);
  sub_100572A98(v12);

  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  sub_100572A98(v23);
  return v13;
}

uint64_t sub_10000A2C8(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006DFFD0, &qword_10057BB30);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11[-v7];
  sub_10000C8CC(a1, a1[3]);
  sub_100010EA0();
  sub_100574718();
  v14 = 0;
  sub_10056CAA8();
  sub_100010E58(&qword_1006DFF90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100574368();
  if (!v2)
  {
    v9 = type metadata accessor for WidgetChartDiskCache.ChartList(0);
    v13 = 1;
    sub_100574308();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_100009DCC(&qword_1006DFFE0, &qword_10057BB38);
    sub_100010EF4(&qword_1006DFFE8, sub_100010F6C, &protocol conformance descriptor for <A> [A]);
    sub_100574368();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000A510@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_10056CAA8();
  v25 = *(v4 - 8);
  __chkstk_darwin();
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100009DCC(&qword_1006DFFF8, &qword_10057BB40);
  v24 = *(v27 - 8);
  __chkstk_darwin();
  v7 = &v21 - v6;
  v8 = type metadata accessor for WidgetChartDiskCache.ChartList(0);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C8CC(a1, a1[3]);
  sub_100010EA0();
  sub_100574708();
  if (v2)
  {
    return sub_100010474(a1);
  }

  v12 = v24;
  v11 = v25;
  v21 = v10;
  v22 = a1;
  v31 = 0;
  sub_100010E58(&qword_1006DFFB8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v14 = v26;
  v13 = v27;
  sub_1005742D8();
  (*(v11 + 32))(v21, v14, v4);
  v30 = 1;
  v15 = sub_100574278();
  v16 = &v21[*(v8 + 20)];
  *v16 = v15;
  v16[1] = v17;
  sub_100009DCC(&qword_1006DFFE0, &qword_10057BB38);
  v29 = 2;
  sub_100010EF4(&qword_1006E0000, sub_100010FC0, &protocol conformance descriptor for <A> [A]);
  sub_1005742D8();
  (*(v12 + 8))(v7, v13);
  v18 = *(v8 + 24);
  v19 = v21;
  *&v21[v18] = v28;
  sub_10000C974(v19, v23, type metadata accessor for WidgetChartDiskCache.ChartList);
  sub_100010474(v22);
  return sub_10000C9DC(v19, type metadata accessor for WidgetChartDiskCache.ChartList);
}

Swift::Int sub_10000A940()
{
  v1 = *v0;
  sub_100574678();
  sub_100574688(v1);
  return sub_1005746C8();
}

Swift::Int sub_10000A988(uint64_t a1)
{
  v2 = *v1;
  sub_100574678();
  sub_100574688(v2);
  return sub_1005746C8();
}

uint64_t sub_10000A9CC()
{
  v1 = 0x617A696C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x736D657469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461446863746566;
  }
}

uint64_t sub_10000AA30@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000114C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10000AA64(uint64_t a1)
{
  v2 = sub_100010EA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000AAA0(uint64_t a1)
{
  v2 = sub_100010EA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000AB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_100571C48();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1005722D8();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10000AC30, 0, 0);
}

uint64_t sub_10000AC30()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  (*(v0[9] + 16))(v0[10], v0[4], v0[8]);
  (*(v3 + 16))(v1, v4, v2);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *v5 = v0;
  v5[1] = sub_10000AD10;
  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[2];

  return sub_10000AE40(v8, v6, v7);
}

uint64_t sub_10000AD10()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000AE40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v4 = sub_10056D5A8();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = sub_100571C48();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v3[19] = swift_task_alloc();
  sub_100009DCC(&unk_1006DFD20, &unk_10057B720);
  v3[20] = swift_task_alloc();
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = sub_10056C8A8();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_10000B0C0, 0, 0);
}

uint64_t sub_10000B0C0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 176);
  *(v0 + 16) = sub_100571C28();
  *(v0 + 24) = v4;
  *(v0 + 32) = sub_100571BE8();
  *(v0 + 40) = v5;
  sub_1005721B8();
  v6 = *(v2 + 48);
  if (v6(v3, 1, v1) == 1)
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 168);
    sub_10056C868();
    result = v6(v8, 1, v7);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v10 = *(v0 + 176);
    v11 = *(v0 + 184);
    (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 168), v11);
    if (v6(v10, 1, v11) != 1)
    {
      sub_10001036C(*(v0 + 176), qword_1006E1D50, &qword_10057CA90);
    }
  }

  else
  {
    (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 176), *(v0 + 184));
  }

  v12 = *(v0 + 160);
  sub_100571C38();
  v13 = sub_100571E58();
  *(v0 + 208) = v13;
  v14 = *(v13 - 8);
  *(v0 + 216) = v14;
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10001036C(*(v0 + 160), &unk_1006DFD20, &unk_10057B720);
    *(v0 + 240) = 0;
    v15 = *(v0 + 144);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    v46 = *(v17 + 16);
    v46(v15, *(v0 + 64), v16);
    v45 = *(v17 + 88);
    v18 = v45(v15, v16);
    LODWORD(v16) = enum case for Track.song(_:);
    *(v0 + 408) = enum case for Track.song(_:);
    v19 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
    v20 = *(*(v19 - 8) + 56);
    if (v18 == v16)
    {
      v20(*(v0 + 152), 1, 11, v19);
      v18 = enum case for Track.musicVideo(_:);
    }

    else
    {
      v22 = enum case for Track.musicVideo(_:);
      v23 = *(v0 + 152);
      if (v18 == enum case for Track.musicVideo(_:))
      {
        v20(v23, 5, 11, v19);
      }

      else
      {
        v20(v23, 1, 11, v19);
        v18 = v22;
      }
    }

    *(v0 + 412) = v18;
    v24 = *(v0 + 32);
    v25 = *(v0 + 16);
    v26 = *(v0 + 24);
    v28 = *(v0 + 136);
    v27 = *(v0 + 144);
    v30 = *(v0 + 120);
    v29 = *(v0 + 128);
    v31 = *(v0 + 112);
    v32 = *(v0 + 96);
    v43 = *(v0 + 88);
    v44 = *(v0 + 104);
    v33 = *(v0 + 64);
    *(v0 + 248) = *(v0 + 40);
    *(v0 + 256) = v24;
    *(v0 + 264) = v26;
    *(v0 + 272) = v25;
    v34 = *(v29 + 8);
    *(v0 + 280) = v34;
    *(v0 + 288) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v34(v27, v30);
    v46(v28, v33, v30);
    *(v0 + 416) = v45(v28, v30);
    v34(v28, v30);
    *(v0 + 296) = sub_100571C08();
    *(v0 + 304) = v35;
    *(v0 + 312) = sub_100571BD8();
    *(v0 + 320) = v36;
    sub_100571BC8();
    *(v0 + 328) = sub_10056D578();
    *(v0 + 336) = v37;
    v38 = *(v32 + 8);
    v38(v31, v43);
    *(v0 + 344) = sub_1005721A8();
    *(v0 + 352) = v39;
    *(v0 + 360) = sub_100572158();
    *(v0 + 368) = v40;
    sub_1005720C8();
    *(v0 + 376) = sub_10056D578();
    *(v0 + 384) = v41;
    v38(v44, v43);
    *(v0 + 392) = sub_10000BF84();
    v42 = swift_task_alloc();
    *(v0 + 400) = v42;
    *v42 = v0;
    v42[1] = sub_10000BA20;

    return sub_1000747E8();
  }

  else
  {
    v21 = swift_task_alloc();
    *(v0 + 224) = v21;
    *v21 = v0;
    v21[1] = sub_10000B5C4;

    return sub_10003E58C(50.0);
  }
}

uint64_t sub_10000B5C4(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 160);
  *(*v1 + 232) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10000B724, 0, 0);
}

uint64_t sub_10000B724()
{
  *(v0 + 240) = *(v0 + 232);
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);
  v32 = *(v3 + 16);
  v32(v1, *(v0 + 64), v2);
  v31 = *(v3 + 88);
  v4 = v31(v1, v2);
  LODWORD(v2) = enum case for Track.song(_:);
  *(v0 + 408) = enum case for Track.song(_:);
  v5 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
  v6 = *(*(v5 - 8) + 56);
  if (v4 == v2)
  {
    v6(*(v0 + 152), 1, 11, v5);
    v4 = enum case for Track.musicVideo(_:);
  }

  else
  {
    v7 = enum case for Track.musicVideo(_:);
    v8 = *(v0 + 152);
    if (v4 == enum case for Track.musicVideo(_:))
    {
      v6(v8, 5, 11, v5);
    }

    else
    {
      v6(v8, 1, 11, v5);
      v4 = v7;
    }
  }

  *(v0 + 412) = v4;
  v9 = *(v0 + 32);
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v15 = *(v0 + 120);
  v14 = *(v0 + 128);
  v16 = *(v0 + 112);
  v17 = *(v0 + 96);
  v29 = *(v0 + 88);
  v30 = *(v0 + 104);
  v18 = *(v0 + 64);
  *(v0 + 248) = *(v0 + 40);
  *(v0 + 256) = v9;
  *(v0 + 264) = v11;
  *(v0 + 272) = v10;
  v19 = *(v14 + 8);
  *(v0 + 280) = v19;
  *(v0 + 288) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v19(v12, v15);
  v32(v13, v18, v15);
  *(v0 + 416) = v31(v13, v15);
  v19(v13, v15);
  *(v0 + 296) = sub_100571C08();
  *(v0 + 304) = v20;
  *(v0 + 312) = sub_100571BD8();
  *(v0 + 320) = v21;
  sub_100571BC8();
  *(v0 + 328) = sub_10056D578();
  *(v0 + 336) = v22;
  v23 = *(v17 + 8);
  v23(v16, v29);
  *(v0 + 344) = sub_1005721A8();
  *(v0 + 352) = v24;
  *(v0 + 360) = sub_100572158();
  *(v0 + 368) = v25;
  sub_1005720C8();
  *(v0 + 376) = sub_10056D578();
  *(v0 + 384) = v26;
  v23(v30, v29);
  *(v0 + 392) = sub_10000BF84();
  v27 = swift_task_alloc();
  *(v0 + 400) = v27;
  *v27 = v0;
  v27[1] = sub_10000BA20;

  return sub_1000747E8();
}

uint64_t sub_10000BA20(char a1)
{
  *(*v1 + 420) = a1;

  return _swift_task_switch(sub_10000BB20, 0, 0);
}

uint64_t sub_10000BB20()
{
  v46 = *(v0 + 420);
  v45 = *(v0 + 392);
  v42 = *(v0 + 376);
  v43 = *(v0 + 384);
  v39 = *(v0 + 360);
  v40 = *(v0 + 368);
  v36 = *(v0 + 344);
  v37 = *(v0 + 352);
  v34 = *(v0 + 328);
  v35 = *(v0 + 336);
  v32 = *(v0 + 312);
  v33 = *(v0 + 320);
  v1 = *(v0 + 416);
  v30 = *(v0 + 296);
  v31 = *(v0 + 304);
  v48 = *(v0 + 280);
  v27 = *(v0 + 264);
  v28 = *(v0 + 272);
  v26 = *(v0 + 256);
  v25 = *(v0 + 248);
  v49 = *(v0 + 240);
  v2 = *(v0 + 192);
  v29 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = 1.77777778;
  v5 = *(v0 + 152);
  if (v1 != *(v0 + 412))
  {
    v4 = 1.0;
  }

  if (v1 == *(v0 + 408))
  {
    v6 = 1.0;
  }

  else
  {
    v6 = v4;
  }

  v41 = *(v0 + 120);
  v7 = *(v0 + 72);
  v8 = *(v0 + 80);
  v38 = *(v0 + 64);
  v47 = *(v0 + 56);
  v9 = *(v0 + 48);
  v10 = sub_10056CAA8();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 1, 1, v10);
  v11(v7, 1, 1, v10);
  v12 = type metadata accessor for WidgetMusicItem(0);
  v44 = v12[25];
  *&v9[v44] = 0;
  *&v9[v12[26]] = _swiftEmptyArrayStorage;
  *v9 = 0;
  *(v9 + 1) = 0;
  *(v9 + 2) = v28;
  *(v9 + 3) = v27;
  *(v9 + 4) = v26;
  *(v9 + 5) = v25;
  (*(v2 + 16))(&v9[v12[7]], v29, v3);
  sub_10000C974(v5, &v9[v12[23]], type metadata accessor for ArtworkImage.Placeholder);
  *&v9[v12[24]] = v6;
  v9[v12[8]] = 8;
  v13 = &v9[v12[9]];
  *v13 = v30;
  *(v13 + 1) = v31;
  v14 = &v9[v12[10]];
  *v14 = v32;
  *(v14 + 1) = v33;
  v15 = &v9[v12[11]];
  *v15 = v34;
  *(v15 + 1) = v35;
  v16 = &v9[v12[12]];
  *v16 = v36;
  *(v16 + 1) = v37;
  v17 = &v9[v12[13]];
  *v17 = v39;
  *(v17 + 1) = v40;
  v18 = &v9[v12[14]];
  *v18 = v42;
  *(v18 + 1) = v43;
  *&v9[v12[15]] = v45;
  v9[v12[16]] = v46;
  sub_10000CC8C(v8, &v9[v12[17]], &unk_1006E1E90, &qword_10057C550);
  sub_10000CC8C(v7, &v9[v12[18]], &unk_1006E1E90, &qword_10057C550);
  v19 = &v9[v12[19]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v9[v12[20]] = _swiftEmptyArrayStorage;
  v20 = &v9[v12[21]];
  *v20 = 0;
  *(v20 + 1) = 0;
  *(v20 + 2) = 0;
  v20[24] = 1;
  v21 = &v9[v12[22]];
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  v21[24] = 1;
  sub_1000396D8(_swiftEmptyArrayStorage);
  v48(v38, v41);
  v22 = sub_1005722D8();
  (*(*(v22 - 8) + 8))(v47, v22);
  sub_10001036C(v7, &unk_1006E1E90, &qword_10057C550);
  sub_10001036C(v8, &unk_1006E1E90, &qword_10057C550);
  sub_10000C9DC(v5, type metadata accessor for ArtworkImage.Placeholder);
  (*(v2 + 8))(v29, v3);
  *&v9[v44] = v49;

  v23 = *(v0 + 8);

  return v23();
}

void *sub_10000BF84()
{
  v1 = v0;
  v2 = sub_1005713A8();
  v25 = *(v2 - 8);
  v26 = v2;
  __chkstk_darwin();
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006DFD38, &unk_10057F0D0);
  __chkstk_darwin();
  v6 = &v25 - v5;
  sub_100009DCC(&qword_1006DFD40, &unk_10057B740);
  __chkstk_darwin();
  v8 = &v25 - v7;
  v9 = sub_100571A68();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100571C48();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin();
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, v1, v13, v15);
  v18 = (*(v14 + 88))(v17, v13);
  if (v18 == enum case for Track.song(_:))
  {
    (*(v14 + 96))(v17, v13);
    (*(v10 + 32))(v12, v17, v9);
    sub_100009DCC(&qword_1006DFD48, &unk_10057F0E0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10057B500;
    sub_1005719D8();
    *(v19 + 32) = TextBadge.init(for:isPlayable:)(v8, 1);
    sub_100571948();
    v20 = sub_10056D558();
    (*(*(v20 - 8) + 56))(v6, 0, 1, v20);
    *(v19 + 33) = TextBadge.init(for:)(v6);
    (*(v10 + 8))(v12, v9);
  }

  else if (v18 == enum case for Track.musicVideo(_:))
  {
    (*(v14 + 96))(v17, v13);
    v22 = v25;
    v21 = v26;
    (*(v25 + 32))(v4, v17, v26);
    sub_100009DCC(&qword_1006DFD48, &unk_10057F0E0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_10057B500;
    sub_100571358();
    *(v19 + 32) = TextBadge.init(for:isPlayable:)(v8, 1);
    sub_100571328();
    v23 = sub_10056D558();
    (*(*(v23 - 8) + 56))(v6, 0, 1, v23);
    *(v19 + 33) = TextBadge.init(for:)(v6);
    (*(v22 + 8))(v4, v21);
  }

  else
  {
    (*(v14 + 8))(v17, v13);
    return _swiftEmptyArrayStorage;
  }

  return v19;
}

uint64_t sub_10000C438()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006DF8B8);
  sub_10000C49C(v0, qword_1006DF8B8);
  return static Logger.music(_:)(0xD00000000000001BLL, 0x800000010057B5D0);
}

uint64_t sub_10000C49C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000C500(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10000C5F8;

  return v6(a1);
}

uint64_t sub_10000C5F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000C6F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006DFCE0, &qword_10057B698);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000C760()
{
  v1 = sub_1005722D8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_10000C7E8(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_1005722D8() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000116F0;

  return sub_10000AB10(a1, a2, v2 + v7);
}

void *sub_10000C8CC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_10000C910(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_10000C974(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000C9DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10000CA3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10000CAA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10000CAE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CB98;

  return sub_10000587C(a1, v4, v5, v6);
}

uint64_t sub_10000CB98()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000CC8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009DCC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000CCF4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_10000CDE8;

  return v5(v2 + 16);
}

uint64_t sub_10000CDE8()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10000CF18(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_10000CCF4(a1, v4);
}

uint64_t sub_10000CFD0(uint64_t a1, _BYTE *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000CB98;

  return sub_100005ACC(a1, a2, v2);
}

uint64_t sub_10000D07C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC000000656D614ELL || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_100574498();

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

uint64_t _s9MusicCore15SharedListeningO8ReactionV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_100574498() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_100574498() & 1) != 0)
    {
      v6 = a1[5];
      v7 = a2[5];
      if (v6)
      {
        if (v7 && (a1[4] == a2[4] && v6 == v7 || (sub_100574498() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_10000D240@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_100009DCC(&qword_1006DFDE8, &qword_10057B7F8);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v19 - v7;
  sub_10000C8CC(a1, a1[3]);
  sub_1000103CC();
  sub_100574708();
  if (v2)
  {
    return sub_100010474(a1);
  }

  v25 = 0;
  sub_1000104C0();
  sub_1005742D8();
  v22 = a2;
  v10 = v23;
  v9 = v24;
  LOBYTE(v23) = 1;
  v19 = sub_100574298();
  v20 = v10;
  v21 = v11;
  LOBYTE(v23) = 2;
  v12 = sub_100574278();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  result = sub_100010474(a1);
  v16 = v22;
  v17 = v19;
  *v22 = v20;
  v16[1] = v9;
  v18 = v21;
  v16[2] = v17;
  v16[3] = v18;
  v16[4] = v12;
  v16[5] = v14;
  return result;
}

uint64_t sub_10000D4AC(uint64_t a1, uint64_t a2)
{
  if ((sub_10056CA48() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TopChartsWidgetDataProvider.Chart(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (!v7)
  {
    if (!v9)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v9)
  {
    return 0;
  }

  v10 = *v6 == *v8 && v7 == v9;
  if (!v10 && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v11 = v4[6];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  v16 = v4[7];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v17 == *v19 && v18 == v19[1];
  if (!v20 && (sub_100574498() & 1) == 0)
  {
    return 0;
  }

  v21 = v4[8];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);

  return sub_10006B354(v22, v23);
}

uint64_t sub_10000D5B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446863746566 && a2 == 0xE900000000000065;
  if (v4 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_100574498() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_100574498() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_100574498();

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

uint64_t sub_10000D764@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100009DCC(&qword_1006DFD78, &qword_10057B7B0);
  __chkstk_darwin();
  v5 = &v21 - v4;
  v6 = sub_100571F38();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1005721A8();
  v11 = v10;
  sub_100571F48();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_10001036C(v5, &qword_1006DFD78, &qword_10057B7B0);
    v12 = sub_1005722D8();
    result = (*(*(v12 - 8) + 8))(a1, v12);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v16 = sub_100571F28();
    v17 = v18;
    v14 = sub_100571F18();
    v15 = v19;
    v20 = sub_1005722D8();
    (*(*(v20 - 8) + 8))(a1, v20);
    result = (*(v7 + 8))(v9, v6);
  }

  *a2 = v22;
  a2[1] = v11;
  a2[2] = v16;
  a2[3] = v17;
  a2[4] = v14;
  a2[5] = v15;
  return result;
}

uint64_t sub_10000D9B4(char a1)
{
  *(v1 + 194) = a1;
  v2 = sub_100571F38();
  *(v1 + 272) = v2;
  *(v1 + 280) = *(v2 - 8);
  *(v1 + 288) = swift_task_alloc();
  *(v1 + 296) = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD78, &qword_10057B7B0);
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  v3 = sub_1005722D8();
  *(v1 + 344) = v3;
  *(v1 + 352) = *(v3 - 8);
  *(v1 + 360) = swift_task_alloc();
  *(v1 + 368) = swift_task_alloc();
  *(v1 + 376) = swift_task_alloc();
  *(v1 + 384) = swift_task_alloc();
  *(v1 + 392) = swift_task_alloc();
  *(v1 + 400) = swift_task_alloc();
  *(v1 + 408) = swift_task_alloc();
  *(v1 + 416) = swift_task_alloc();
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  *(v1 + 440) = swift_task_alloc();
  *(v1 + 448) = sub_100009DCC(&qword_1006DFD80, &qword_10057B7B8);
  *(v1 + 456) = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006DFD88, &qword_10057B7C0);
  *(v1 + 464) = v4;
  *(v1 + 472) = *(v4 - 8);
  *(v1 + 480) = swift_task_alloc();
  v5 = sub_100009DCC(&qword_1006DFCC8, &qword_10057B680);
  *(v1 + 488) = v5;
  *(v1 + 496) = *(v5 - 8);
  *(v1 + 504) = swift_task_alloc();
  *(v1 + 512) = swift_task_alloc();
  *(v1 + 520) = swift_task_alloc();
  v6 = sub_100571058();
  *(v1 + 528) = v6;
  *(v1 + 536) = *(v6 - 8);
  *(v1 + 544) = swift_task_alloc();
  *(v1 + 552) = swift_task_alloc();
  v7 = sub_100570D78();
  *(v1 + 560) = v7;
  *(v1 + 568) = *(v7 - 8);
  *(v1 + 576) = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD90, &qword_10057B7C8);
  *(v1 + 584) = swift_task_alloc();
  v8 = sub_100571028();
  *(v1 + 592) = v8;
  *(v1 + 600) = *(v8 - 8);
  *(v1 + 608) = swift_task_alloc();
  *(v1 + 616) = swift_task_alloc();

  return _swift_task_switch(sub_10000DE44, 0, 0);
}

uint64_t sub_10000DE44()
{
  v35 = v0;
  v1 = *(v0 + 568);
  v29 = *(v0 + 194);
  *(v0 + 200) = _swiftEmptyArrayStorage;
  v2 = enum case for MusicCatalogChartKind.dailyGlobalTop(_:);
  *(v0 + 180) = enum case for MusicCatalogChartKind.dailyGlobalTop(_:);
  v3 = enum case for MusicCatalogChartKind.cityTop(_:);
  *(v0 + 196) = enum case for MusicCatalogChartKind.cityTop(_:);
  v33 = enum case for MusicDataRequest.Source.widgets(_:);
  *(v0 + 688) = enum case for MusicDataRequest.Source.widgets(_:);
  *(v0 + 624) = 0;
  v4 = *(v0 + 584);
  v31 = *(v0 + 576);
  v32 = *(v0 + 560);
  v30 = *(v0 + 344);
  v5 = sub_100571BA8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_100009DCC(&qword_1006DFD98, &qword_10057B7D0);
  v6 = sub_100570F78();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10057B510;
  if (v29)
  {
    v10 = v2;
  }

  else
  {
    v10 = v3;
  }

  (*(v7 + 104))(v9 + v8, v10, v6);
  sub_100009DCC(&qword_1006DFDA0, &qword_10057B7D8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10057B510;
  *(v11 + 32) = v30;
  *(v11 + 40) = &protocol witness table for Playlist;
  sub_100570FD8();
  (*(v1 + 104))(v31, v33, v32);
  swift_beginAccess();
  sub_100570FC8();
  sub_100570FB8();
  sub_100570FA8();
  sub_100570FE8();
  sub_100571008();
  swift_endAccess();
  if (qword_1006DF8B0 != -1)
  {
    swift_once();
  }

  v12 = sub_10056DF88();
  *(v0 + 632) = sub_10000C49C(v12, qword_1006DF8B8);
  v13 = sub_10056DF68();
  v14 = sub_100573448();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v0 + 194);
    v16 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v16 = 136446722;
    *(v0 + 193) = v15;
    v17 = sub_100572978();
    v19 = sub_10008190C(v17, v18, &v34);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2050;
    *(v16 + 14) = 0;
    *(v16 + 22) = 2082;
    swift_beginAccess();
    v20 = sub_100570FF8();
    v22 = v21;
    swift_endAccess();
    *(v0 + 184) = v20;
    *(v0 + 192) = v22 & 1;
    sub_100009DCC(&qword_1006DFDA8, &unk_10057B7E0);
    v23 = sub_100572978();
    v25 = sub_10008190C(v23, v24, &v34);

    *(v16 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Asking server for %{public}s chart list, batch: %{public}ld, offset: %{public}s.", v16, 0x20u);
    swift_arrayDestroy();
  }

  (*(*(v0 + 600) + 16))(*(v0 + 608), *(v0 + 616), *(v0 + 592));
  v26 = swift_task_alloc();
  *(v0 + 640) = v26;
  *v26 = v0;
  v26[1] = sub_10000E2F8;
  v27 = *(v0 + 552);

  return MusicCatalogChartsRequest.response()(v27);
}

uint64_t sub_10000E2F8()
{
  v2 = *v1;
  v2[81] = v0;

  v3 = v2[76];
  v4 = v2[75];
  v5 = v2[74];
  v6 = *(v4 + 8);
  v7 = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  if (v0)
  {
    v2[84] = v6;
    v2[85] = v7;
    v6(v3, v5);
    v8 = sub_10000FD4C;
  }

  else
  {
    v2[82] = v6;
    v2[83] = v7;
    v6(v3, v5);
    v8 = sub_10000E484;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_10000E484()
{
  v262 = v0;
  (*(*(v0 + 536) + 16))(*(v0 + 544), *(v0 + 552), *(v0 + 528));
  v1 = sub_10056DF68();
  v2 = sub_100573448();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 544);
    v4 = *(v0 + 536);
    v5 = *(v0 + 528);
    v6 = *(v0 + 194);
    v7 = swift_slowAlloc();
    v261[0] = swift_slowAlloc();
    *v7 = 136446466;
    *(v0 + 179) = v6;
    v8 = sub_100572978();
    v10 = sub_10008190C(v8, v9, v261);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2082;
    sub_100010E58(&qword_1006DFDC8, &type metadata accessor for MusicCatalogChartsResponse, &protocol conformance descriptor for MusicCatalogChartsResponse);
    v11 = sub_100574408();
    v13 = v12;
    v14 = v5;
    v15 = *(v4 + 8);
    v15(v3, v14);
    v16 = sub_10008190C(v11, v13, v261);

    *(v7 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v1, v2, "Response for %{public}s chart list: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v17 = *(v0 + 544);
    v18 = *(v0 + 536);
    v19 = *(v0 + 528);

    v15 = *(v18 + 8);
    v15(v17, v19);
  }

  v20 = sub_100571048();
  if (!*(v20 + 16))
  {
    v35 = *(v0 + 656);
    v36 = *(v0 + 616);
    v37 = *(v0 + 592);
    v15(*(v0 + 552), *(v0 + 528));

    v35(v36, v37);
    goto LABEL_85;
  }

  v227 = v15;
  v21 = *(v0 + 520);
  v22 = *(v0 + 512);
  v23 = *(v0 + 488);
  v24 = *(v0 + 496);
  v26 = *(v0 + 472);
  v25 = *(v0 + 480);
  v27 = *(v0 + 464);
  (*(v26 + 16))(v25, v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v27);

  sub_100570DA8();
  v29 = *(v26 + 8);
  v28 = v26 + 8;
  v29(v25, v27);
  (*(v24 + 32))(v21, v22, v23);
  sub_100010BC0(&qword_1006DFDB0, &qword_1006DFCC8, &qword_10057B680, &protocol conformance descriptor for MusicItemCollection<A>);
  sub_1005731B8();
  sub_100573208();
  if (*(v0 + 216) != *(v0 + 224))
  {
    v38 = *(v0 + 448);
    v39 = *(v0 + 456);
    (*(*(v0 + 496) + 16))(*(v0 + 504), *(v0 + 520), *(v0 + 488));
    sub_100010BC0(&qword_1006DFDB8, &qword_1006DFCC8, &qword_10057B680, &protocol conformance descriptor for MusicItemCollection<A>);
    sub_100572B98();
    v40 = *(v38 + 36);
    sub_100573208();
    v235 = _swiftEmptyArrayStorage;
    if (*(v39 + v40) != *(v0 + 240))
    {
      v232 = v39;
      v235 = _swiftEmptyArrayStorage;
      v255 = v40;
      do
      {
        v28 = *(v0 + 440);
        v65 = *(v0 + 352);
        v242 = *(v0 + 336);
        v66 = *(v0 + 280);
        v248 = *(v0 + 272);
        v67 = sub_1005732E8();
        (*(v65 + 16))(v28);
        v67(v0 + 64, 0);
        v68 = v255;
        sub_100573218();
        sub_100571F48();
        if ((*(v66 + 48))(v242, 1, v248) == 1)
        {
          v64 = *(v0 + 336);
          (*(*(v0 + 352) + 8))(*(v0 + 440), *(v0 + 344));
          sub_10001036C(v64, &qword_1006DFD78, &qword_10057B7B0);
        }

        else
        {
          v69 = *(v0 + 336);
          v70 = *(v0 + 272);
          v71 = *(v0 + 280);
          v72 = sub_100571F28();
          v74 = v73;
          (*(v71 + 8))(v69, v70);

          v75 = HIBYTE(v74) & 0xF;
          if ((v74 & 0x2000000000000000) == 0)
          {
            v75 = v72 & 0xFFFFFFFFFFFFLL;
          }

          if (v75)
          {
            v76 = *(*(v0 + 352) + 32);
            v76(*(v0 + 432), *(v0 + 440), *(v0 + 344));
            v77 = v235;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + 232) = v235;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10004140C(0, v235[2] + 1, 1);
              v77 = *(v0 + 232);
            }

            v80 = v77[2];
            v79 = v77[3];
            if (v80 >= v79 >> 1)
            {
              sub_10004140C((v79 > 1), v80 + 1, 1);
              v77 = *(v0 + 232);
            }

            v81 = *(v0 + 432);
            v82 = *(v0 + 344);
            v83 = *(v0 + 352);
            v77[2] = v80 + 1;
            v235 = v77;
            v76(v77 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v80, v81, v82);
            v68 = v255;
          }

          else
          {
            (*(*(v0 + 352) + 8))(*(v0 + 440), *(v0 + 344));
          }
        }

        sub_100573208();
      }

      while (*(v232 + v68) != *(v0 + 240));
    }

    sub_10001036C(*(v0 + 456), &qword_1006DFD80, &qword_10057B7B8);
    v41 = v235;
    v42 = v235[2];
    if (!v42)
    {
      v84 = *(v0 + 656);
      v85 = *(v0 + 616);
      v86 = *(v0 + 592);
      v87 = *(v0 + 552);
      v88 = *(v0 + 528);
      v89 = *(v0 + 520);
      v90 = *(v0 + 488);
      v91 = *(v0 + 496);

      (*(v91 + 8))(v89, v90);
      v227(v87, v88);
      v84(v85, v86);
      goto LABEL_85;
    }

    v254 = v235[2];
    if (*(v0 + 194))
    {
      if (*(v0 + 194) != 1)
      {
        v124 = 0;
        while (1)
        {
          if (v124 >= *(v41 + 2))
          {
LABEL_94:
            __break(1u);
            goto LABEL_95;
          }

          v125 = *(v0 + 352);
          v126 = *(v0 + 304);
          v128 = *(v0 + 272);
          v127 = *(v0 + 280);
          v129 = *(v125 + 16);
          v129(*(v0 + 368), &v41[((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v124], *(v0 + 344));
          sub_100571F48();
          v130 = (*(v127 + 48))(v126, 1, v128);
          v131 = *(v0 + 304);
          if (v130 == 1)
          {
            break;
          }

          v133 = *(v0 + 272);
          v132 = *(v0 + 280);
          v134 = sub_100571F18();
          v136 = v135;
          (*(v132 + 8))(v131, v133);
          if (!v136)
          {
            goto LABEL_70;
          }

          v137 = HIBYTE(v136) & 0xF;
          if ((v136 & 0x2000000000000000) == 0)
          {
            v137 = v134 & 0xFFFFFFFFFFFFLL;
          }

          if (!v137)
          {
LABEL_70:

            goto LABEL_83;
          }

          ++v124;
          (*(*(v0 + 352) + 8))(*(v0 + 368), *(v0 + 344));
          v41 = v235;
          if (v254 == v124)
          {
            v250 = *(v0 + 656);
            v138 = *(v0 + 616);
            v139 = *(v0 + 592);
            v140 = *(v0 + 552);
            v141 = *(v0 + 528);
            v142 = *(v0 + 520);
            v143 = *(v0 + 488);
            v144 = *(v0 + 496);

            v145 = sub_100570E38();
            (*(v144 + 8))(v142, v143);
            v227(v140, v141);
            v250(v138, v139);
            if (v145)
            {
              goto LABEL_73;
            }

            goto LABEL_85;
          }
        }

        sub_10001036C(v131, &qword_1006DFD78, &qword_10057B7B0);
LABEL_83:
        v253 = *(v0 + 552);
        v259 = *(v0 + 624);
        v240 = *(v0 + 520);
        v246 = *(v0 + 528);
        v207 = *(v0 + 488);
        v206 = *(v0 + 496);
        v208 = *(v0 + 376);
        v210 = *(v0 + 352);
        v209 = *(v0 + 360);
        v211 = *(v0 + 344);
        (*(v210 + 32))(v208, *(v0 + 368), v211);

        sub_100009DCC(&qword_1006DFDC0, &qword_10057E3E0);
        v212 = swift_allocObject();
        v212[1] = xmmword_10057B510;
        v129(v209, v208, v211);
        sub_10000D764(v209, (v0 + 16));
        v213 = *(v0 + 32);
        v212[2] = *(v0 + 16);
        v212[3] = v213;
        v212[4] = *(v0 + 48);
        (*(v210 + 8))(v208, v211);
        (*(v206 + 8))(v240, v207);
        v205 = (v227)(v253, v246);
        *(v0 + 200) = v212;
        if (v259 != 0x7FFFFFFFFFFFFFFFLL)
        {
          (*(v0 + 656))(*(v0 + 616), *(v0 + 592));
          goto LABEL_85;
        }

        __break(1u);
        return MusicCatalogChartsRequest.response()(v205);
      }

      v43 = 0;
      v228 = _swiftEmptyArrayStorage;
      do
      {
        if (v43 >= *(v41 + 2))
        {
          __break(1u);
          goto LABEL_94;
        }

        v45 = *(v0 + 352);
        v46 = *(v0 + 320);
        v48 = *(v0 + 272);
        v47 = *(v0 + 280);
        v49 = *(v45 + 16);
        v45 += 16;
        v28 = (*(v45 + 64) + 32) & ~*(v45 + 64);
        v241 = v49;
        v247 = *(v45 + 56);
        v49(*(v0 + 408), &v41[v28 + v247 * v43], *(v0 + 344));
        sub_100571F48();
        v237 = *(v47 + 48);
        if (v237(v46, 1, v48) == 1)
        {
          v44 = *(v0 + 320);
          (*(*(v0 + 352) + 8))(*(v0 + 408), *(v0 + 344));
          sub_10001036C(v44, &qword_1006DFD78, &qword_10057B7B0);
        }

        else
        {
          v50 = *(v0 + 320);
          v52 = *(v0 + 272);
          v51 = *(v0 + 280);
          v53 = sub_100571F18();
          v55 = v54;
          (*(v51 + 8))(v50, v52);
          if (!v55)
          {
            goto LABEL_26;
          }

          v56 = HIBYTE(v55) & 0xF;
          if ((v55 & 0x2000000000000000) == 0)
          {
            v56 = v53 & 0xFFFFFFFFFFFFLL;
          }

          if (v56)
          {
            v57 = *(*(v0 + 352) + 32);
            v57(*(v0 + 400), *(v0 + 408), *(v0 + 344));
            v58 = v228;
            v59 = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + 248) = v228;
            if ((v59 & 1) == 0)
            {
              sub_10004140C(0, v228[2] + 1, 1);
              v58 = *(v0 + 248);
            }

            v61 = v58[2];
            v60 = v58[3];
            if (v61 >= v60 >> 1)
            {
              sub_10004140C((v60 > 1), v61 + 1, 1);
              v58 = *(v0 + 248);
            }

            v62 = *(v0 + 400);
            v63 = *(v0 + 344);
            v58[2] = v61 + 1;
            v228 = v58;
            v57(v58 + v28 + v61 * v247, v62, v63);
            v42 = v254;
          }

          else
          {
LABEL_26:
            (*(*(v0 + 352) + 8))(*(v0 + 408), *(v0 + 344));
          }
        }

        ++v43;
        v41 = v235;
      }

      while (v42 != v43);

      v146 = v228[2];
      if (v146)
      {
        *(v0 + 256) = _swiftEmptyArrayStorage;
        sub_100041450(0, v146, 0);
        v256 = *(v0 + 256);
        v147 = v228 + v28;
        do
        {
          v236 = v146;
          v148 = *(v0 + 384);
          v149 = *(v0 + 392);
          v150 = *(v0 + 344);
          v151 = *(v0 + 312);
          v152 = *(v0 + 272);
          v241(v149, v147, v150);
          v241(v148, v149, v150);
          v153 = sub_1005721A8();
          v234 = v154;
          sub_100571F48();
          if (v237(v151, 1, v152) == 1)
          {
            sub_10001036C(*(v0 + 312), &qword_1006DFD78, &qword_10057B7B0);
            v155 = 0;
            v156 = 0;
            v231 = 0;
            v157 = 0xE000000000000000;
          }

          else
          {
            v159 = *(v0 + 280);
            v158 = *(v0 + 288);
            v160 = *(v0 + 272);
            (*(v159 + 32))(v158, *(v0 + 312), v160);
            v231 = sub_100571F28();
            v157 = v161;
            v155 = sub_100571F18();
            v156 = v162;
            (*(v159 + 8))(v158, v160);
          }

          v163 = *(v0 + 392);
          v164 = *(v0 + 344);
          v165 = *(*(v0 + 352) + 8);
          v165(*(v0 + 384), v164);
          v165(v163, v164);
          v166 = v256;
          *(v0 + 256) = v256;
          v168 = v256[2];
          v167 = v256[3];
          if (v168 >= v167 >> 1)
          {
            sub_100041450((v167 > 1), v168 + 1, 1);
            v166 = *(v0 + 256);
          }

          v166[2] = v168 + 1;
          v256 = v166;
          v169 = &v166[6 * v168];
          v169[4] = v153;
          v169[5] = v234;
          v169[6] = v231;
          v169[7] = v157;
          v169[8] = v155;
          v169[9] = v156;
          v147 += v247;
          v146 = v236 - 1;
        }

        while (v236 != 1);

        v170 = v256;
      }

      else
      {

        v170 = _swiftEmptyArrayStorage;
      }

      v251 = *(v0 + 616);
      v257 = *(v0 + 656);
      v171 = *(v0 + 592);
      v172 = *(v0 + 552);
      v173 = *(v0 + 528);
      v174 = *(v0 + 520);
      v175 = *(v0 + 488);
      v176 = *(v0 + 496);
      sub_10000995C(v170);
      v177 = sub_100570E38();
      (*(v176 + 8))(v174, v175);
      v227(v172, v173);
      v257(v251, v171);
      if ((v177 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v92 = *(v0 + 352);
      *(v0 + 264) = _swiftEmptyArrayStorage;
      sub_100041450(0, v42, 0);
      v93 = *(v0 + 264);
      v94 = v235 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v229 = *(v92 + 16);
      v230 = *(v92 + 72);
      do
      {
        v96 = *(v0 + 416);
        v95 = *(v0 + 424);
        v97 = *(v0 + 344);
        v98 = *(v0 + 328);
        v100 = *(v0 + 272);
        v99 = *(v0 + 280);
        v229(v95, v94, v97);
        v229(v96, v95, v97);
        v101 = sub_1005721A8();
        v238 = v102;
        v243 = v101;
        sub_100571F48();
        if ((*(v99 + 48))(v98, 1, v100) == 1)
        {
          sub_10001036C(*(v0 + 328), &qword_1006DFD78, &qword_10057B7B0);
          v103 = 0;
          v104 = 0;
          v233 = 0;
          v105 = 0xE000000000000000;
        }

        else
        {
          v106 = *(v0 + 296);
          v108 = *(v0 + 272);
          v107 = *(v0 + 280);
          (*(v107 + 32))(v106, *(v0 + 328), v108);
          v233 = sub_100571F28();
          v105 = v109;
          v103 = sub_100571F18();
          v104 = v110;
          (*(v107 + 8))(v106, v108);
        }

        v111 = *(v0 + 424);
        v112 = *(v0 + 344);
        v113 = *(*(v0 + 352) + 8);
        v113(*(v0 + 416), v112);
        v113(v111, v112);
        *(v0 + 264) = v93;
        v115 = *(v93 + 16);
        v114 = *(v93 + 24);
        if (v115 >= v114 >> 1)
        {
          sub_100041450((v114 > 1), v115 + 1, 1);
          v93 = *(v0 + 264);
        }

        *(v93 + 16) = v115 + 1;
        v116 = (v93 + 48 * v115);
        v116[4] = v243;
        v116[5] = v238;
        v116[6] = v233;
        v116[7] = v105;
        v116[8] = v103;
        v116[9] = v104;
        v94 += v230;
        --v254;
      }

      while (v254);
      v249 = *(v0 + 656);
      v244 = *(v0 + 616);
      v117 = *(v0 + 592);
      v118 = *(v0 + 552);
      v119 = *(v0 + 528);
      v120 = *(v0 + 520);
      v121 = *(v0 + 488);
      v122 = *(v0 + 496);

      sub_10000995C(v93);
      v123 = sub_100570E38();
      (*(v122 + 8))(v120, v121);
      v227(v118, v119);
      v249(v244, v117);
      if ((v123 & 1) == 0)
      {
        goto LABEL_85;
      }
    }

LABEL_73:
    v178 = *(v0 + 624) + 1;
    *(v0 + 624) = v178;
    v258 = *(v0 + 688);
    v179 = (v0 + 196);
    v180 = *(v0 + 584);
    v181 = *(v0 + 568);
    v245 = *(v0 + 576);
    v252 = *(v0 + 560);
    v239 = *(v0 + 344);
    if (*(v0 + 194))
    {
      v179 = (v0 + 180);
    }

    v182 = *v179;
    v183 = sub_100571BA8();
    (*(*(v183 - 8) + 56))(v180, 1, 1, v183);
    sub_100009DCC(&qword_1006DFD98, &qword_10057B7D0);
    v184 = sub_100570F78();
    v185 = *(v184 - 8);
    v186 = (*(v185 + 80) + 32) & ~*(v185 + 80);
    v187 = swift_allocObject();
    *(v187 + 16) = xmmword_10057B510;
    v188 = v184;
    v28 = v178;
    (*(v185 + 104))(v187 + v186, v182, v188);
    sub_100009DCC(&qword_1006DFDA0, &qword_10057B7D8);
    v189 = swift_allocObject();
    *(v189 + 16) = xmmword_10057B510;
    *(v189 + 32) = v239;
    *(v189 + 40) = &protocol witness table for Playlist;
    sub_100570FD8();
    (*(v181 + 104))(v245, v258, v252);
    swift_beginAccess();
    sub_100570FC8();
    sub_100570FB8();
    sub_100570FA8();
    sub_100570FE8();
    if (v178 == 0xA3D70A3D70A3D8)
    {
LABEL_95:
      __break(1u);
    }

    else
    {
      sub_100571008();
      swift_endAccess();
      if (qword_1006DF8B0 == -1)
      {
LABEL_77:
        v190 = sub_10056DF88();
        *(v0 + 632) = sub_10000C49C(v190, qword_1006DF8B8);
        v191 = sub_10056DF68();
        v192 = sub_100573448();
        if (os_log_type_enabled(v191, v192))
        {
          v193 = *(v0 + 194);
          v194 = swift_slowAlloc();
          v261[0] = swift_slowAlloc();
          *v194 = 136446722;
          *(v0 + 193) = v193;
          v195 = sub_100572978();
          v197 = sub_10008190C(v195, v196, v261);

          *(v194 + 4) = v197;
          *(v194 + 12) = 2050;
          *(v194 + 14) = v28;
          *(v194 + 22) = 2082;
          swift_beginAccess();
          v198 = sub_100570FF8();
          v200 = v199;
          swift_endAccess();
          *(v0 + 184) = v198;
          *(v0 + 192) = v200 & 1;
          sub_100009DCC(&qword_1006DFDA8, &unk_10057B7E0);
          v201 = sub_100572978();
          v203 = sub_10008190C(v201, v202, v261);

          *(v194 + 24) = v203;
          _os_log_impl(&_mh_execute_header, v191, v192, "Asking server for %{public}s chart list, batch: %{public}ld, offset: %{public}s.", v194, 0x20u);
          swift_arrayDestroy();
        }

        (*(*(v0 + 600) + 16))(*(v0 + 608), *(v0 + 616), *(v0 + 592));
        v204 = swift_task_alloc();
        *(v0 + 640) = v204;
        *v204 = v0;
        v204[1] = sub_10000E2F8;
        v205 = *(v0 + 552);

        return MusicCatalogChartsRequest.response()(v205);
      }
    }

    swift_once();
    goto LABEL_77;
  }

  v30 = *(v0 + 656);
  v31 = *(v0 + 616);
  v32 = *(v0 + 592);
  v33 = *(v0 + 552);
  v34 = *(v0 + 528);
  (*(*(v0 + 496) + 8))(*(v0 + 520), *(v0 + 488));
  v227(v33, v34);
  v30(v31, v32);
LABEL_85:
  v214 = *(v0 + 200);

  v215 = sub_10056DF68();
  v216 = sub_100573448();

  if (os_log_type_enabled(v215, v216))
  {
    v217 = *(v0 + 194);
    v218 = swift_slowAlloc();
    v261[0] = swift_slowAlloc();
    *v218 = 136446466;
    *(v0 + 208) = *(v214 + 16);
    v219 = sub_100574408();
    v221 = sub_10008190C(v219, v220, v261);

    *(v218 + 4) = v221;
    *(v218 + 12) = 2082;
    *(v0 + 177) = v217;
    v222 = sub_100572978();
    v224 = sub_10008190C(v222, v223, v261);

    *(v218 + 14) = v224;
    _os_log_impl(&_mh_execute_header, v215, v216, "Fetched %{public}s %{public}s charts", v218, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v214 + 16))
  {
    v260 = v214;
  }

  else
  {

    v260 = 0;
  }

  v225 = *(v0 + 8);

  return v225(v260);
}

uint64_t sub_10000FD4C()
{
  v38 = v0;
  swift_errorRetain();
  v1 = sub_10056DF68();
  v2 = sub_100573428();

  if (os_log_type_enabled(v1, v2))
  {
    v35 = *(v0 + 672);
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    v34 = *(v0 + 592);
    v5 = *(v0 + 194);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v6 = 136446978;
    *(v0 + 178) = v5;
    v8 = sub_100572978();
    v10 = sub_10008190C(v8, v9, &v37);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2050;
    *(v6 + 14) = v3;
    *(v6 + 22) = 2082;
    swift_beginAccess();
    v11 = sub_100570FF8();
    v13 = v12;
    swift_endAccess();
    *(v0 + 168) = v11;
    *(v0 + 176) = v13 & 1;
    sub_100009DCC(&qword_1006DFDA8, &unk_10057B7E0);
    v14 = sub_100572978();
    v16 = sub_10008190C(v14, v15, &v37);

    *(v6 + 24) = v16;
    *(v6 + 32) = 2114;
    swift_errorRetain();
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 34) = v17;
    *v7 = v17;
    _os_log_impl(&_mh_execute_header, v1, v2, "Request failed for %{public}s chart list, batch: %{public}ld, offset: %{public}s with %{public}@", v6, 0x2Au);
    sub_10001036C(v7, &qword_1006DFD00, &qword_10057E570);

    swift_arrayDestroy();

    v35(v4, v34);
  }

  else
  {
    v18 = *(v0 + 672);
    v19 = *(v0 + 616);
    v20 = *(v0 + 592);

    v18(v19, v20);
  }

  v21 = *(v0 + 200);

  v22 = sub_10056DF68();
  v23 = sub_100573448();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = *(v0 + 194);
    v25 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v25 = 136446466;
    *(v0 + 208) = *(v21 + 16);
    v26 = sub_100574408();
    v28 = sub_10008190C(v26, v27, &v37);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    *(v0 + 177) = v24;
    v29 = sub_100572978();
    v31 = sub_10008190C(v29, v30, &v37);

    *(v25 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "Fetched %{public}s %{public}s charts", v25, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v21 + 16))
  {
    v36 = v21;
  }

  else
  {

    v36 = 0;
  }

  v32 = *(v0 + 8);

  return v32(v36);
}

uint64_t sub_1000102EC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100010324(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10001036C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100009DCC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1000103CC()
{
  result = qword_1006DFDD8;
  if (!qword_1006DFDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006DFDD8);
  }

  return result;
}

unint64_t sub_100010420()
{
  result = qword_1006DFDE0;
  if (!qword_1006DFDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006DFDE0);
  }

  return result;
}

uint64_t sub_100010474(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_1000104C0()
{
  result = qword_1006DFDF0;
  if (!qword_1006DFDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006DFDF0);
  }

  return result;
}

uint64_t sub_100010574(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CAA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100010644(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056CAA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_1000106FC(uint64_t a1)
{
  sub_10056CAA8();
  if (v1 <= 0x3F)
  {
    sub_100010B2C(319, &qword_1006DFE60, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100010B2C(319, &unk_1006DFE68, &type metadata for TopChartsWidgetDataProvider.ChartDescriptor, &type metadata accessor for Array);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000107F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CAA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000108C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10056CAA8();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_100010984(uint64_t a1)
{
  sub_10056CAA8();
  if (v1 <= 0x3F)
  {
    sub_100010B2C(319, &qword_1006DFE60, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_100010A58(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100010A58(uint64_t a1)
{
  if (!qword_1006DFF08)
  {
    type metadata accessor for WidgetMusicItem(255);
    v1 = sub_100572E38();
    if (!v2)
    {
      atomic_store(v1, &qword_1006DFF08);
    }
  }
}

__n128 sub_100010AB0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for GlowModifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GlowModifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_100010B2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_100010BC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100010C0C()
{
  result = qword_1006DFF60;
  if (!qword_1006DFF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006DFF60);
  }

  return result;
}

unint64_t sub_100010C64()
{
  result = qword_1006DFF68;
  if (!qword_1006DFF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006DFF68);
  }

  return result;
}

unint64_t sub_100010CBC()
{
  result = qword_1006DFF70;
  if (!qword_1006DFF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006DFF70);
  }

  return result;
}

unint64_t sub_100010D14()
{
  result = qword_1006DFF78;
  if (!qword_1006DFF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006DFF78);
  }

  return result;
}

unint64_t sub_100010D68()
{
  result = qword_1006DFF88;
  if (!qword_1006DFF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006DFF88);
  }

  return result;
}

uint64_t sub_100010DBC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(&qword_1006DFF98, &qword_10057BB20);
    sub_100010E58(a2, type metadata accessor for WidgetMusicItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100010E58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100010EA0()
{
  result = qword_1006DFFD8;
  if (!qword_1006DFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006DFFD8);
  }

  return result;
}

uint64_t sub_100010EF4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100010324(&qword_1006DFFE0, &qword_10057BB38);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100010F6C()
{
  result = qword_1006DFFF0;
  if (!qword_1006DFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006DFFF0);
  }

  return result;
}

unint64_t sub_100010FC0()
{
  result = qword_1006E0008;
  if (!qword_1006E0008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0008);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RadioWidgetDataProvider.DiskCache.StationList.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RadioWidgetDataProvider.DiskCache.StationList.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TopChartsWidgetDataProvider.Chart.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TopChartsWidgetDataProvider.Chart.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000112B8()
{
  result = qword_1006E0010;
  if (!qword_1006E0010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0010);
  }

  return result;
}

unint64_t sub_100011310()
{
  result = qword_1006E0018;
  if (!qword_1006E0018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0018);
  }

  return result;
}

unint64_t sub_100011368()
{
  result = qword_1006E0020;
  if (!qword_1006E0020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0020);
  }

  return result;
}

unint64_t sub_1000113C0()
{
  result = qword_1006E0028;
  if (!qword_1006E0028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0028);
  }

  return result;
}

unint64_t sub_100011418()
{
  result = qword_1006E0030;
  if (!qword_1006E0030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0030);
  }

  return result;
}

unint64_t sub_100011470()
{
  result = qword_1006E0038;
  if (!qword_1006E0038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0038);
  }

  return result;
}

uint64_t sub_1000114C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461446863746566 && a2 == 0xE900000000000065;
  if (v4 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617A696C61636F6CLL && a2 == 0xEC0000006E6F6974 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_100574498();

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

uint64_t sub_1000115E4()
{

  return swift_deallocObject();
}

uint64_t sub_10001161C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_10000C500(a1, v4);
}

uint64_t sub_100011734@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  type metadata accessor for TopChartsWidgetTimelineProvider(0);
  __chkstk_darwin();
  v1 = sub_100009DCC(&qword_1006E0100, &qword_10057BDF0);
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v29[-v3];
  v42 = sub_100009DCC(&qword_1006E0108, &qword_10057BDF8);
  v5 = *(v42 - 8);
  __chkstk_darwin();
  v7 = &v29[-v6];
  v44 = sub_100009DCC(&qword_1006E0110, &qword_10057BE00);
  v38 = *(v44 - 8);
  __chkstk_darwin();
  v43 = &v29[-v8];
  v9 = sub_100009DCC(&qword_1006E0118, &qword_10057BE08);
  v10 = *(v9 - 8);
  v39 = v9;
  v40 = v10;
  __chkstk_darwin();
  v45 = &v29[-v11];
  static Logger.music(_:)(0xD00000000000001FLL, 0x80000001005AA090);
  type metadata accessor for TopChartsWidgetView(0);
  sub_100011F98(&qword_1006E0120, type metadata accessor for TopChartsWidgetView, &unk_10057E5B4);
  sub_100011F98(&qword_1006E0128, type metadata accessor for TopChartsWidgetTimelineProvider, &unk_100581D30);
  sub_100572588();
  sub_10056F2A8();
  v12 = sub_100011FE0();
  sub_10056F558();

  (*(v2 + 8))(v4, v1);
  sub_10056F2A8();
  v46 = v1;
  v47 = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = v42;
  sub_10056F508();

  (*(v5 + 8))(v7, v14);
  v37 = sub_100009DCC(&qword_1006E0138, &qword_10057BE10);
  v15 = sub_1005724A8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v36 = v18 + 4 * v17;
  v19 = swift_allocObject();
  v35 = xmmword_10057BD80;
  *(v19 + 16) = xmmword_10057BD80;
  v20 = v19 + v18;
  v34 = enum case for WidgetFamily.systemSmall(_:);
  v21 = *(v16 + 104);
  v21(v19 + v18);
  v33 = enum case for WidgetFamily.systemMedium(_:);
  v21(v20 + v17);
  v32 = enum case for WidgetFamily.systemLarge(_:);
  v21(v20 + 2 * v17);
  v31 = 3 * v17;
  v30 = enum case for WidgetFamily.systemExtraLarge(_:);
  v21(v20 + 3 * v17);
  v46 = v42;
  v47 = OpaqueTypeConformance2;
  v42 = swift_getOpaqueTypeConformance2();
  v22 = v44;
  v23 = v43;
  sub_10056F528();

  (*(v38 + 8))(v23, v22);
  sub_100009DCC(&qword_1006E0140, qword_100581C00);
  sub_100572508();
  *(swift_allocObject() + 16) = xmmword_10057B510;
  sub_1005724D8();
  v24 = swift_allocObject();
  *(v24 + 16) = v35;
  v25 = v24 + v18;
  (v21)(v24 + v18, v34, v15);
  (v21)(v25 + v17, v33, v15);
  (v21)(v25 + 2 * v17, v32, v15);
  (v21)(v25 + v31, v30, v15);
  v46 = v44;
  v47 = v42;
  swift_getOpaqueTypeConformance2();
  v26 = v39;
  v27 = v45;
  sub_10056F538();

  return (*(v40 + 8))(v27, v26);
}

uint64_t sub_100011F20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100012044(a1, a2);
  v3 = *(type metadata accessor for TopChartsWidgetView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_100009DCC(&qword_1006E0148, &qword_10057C450);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_100011F98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100011FE0()
{
  result = qword_1006E0130;
  if (!qword_1006E0130)
  {
    sub_100010324(&qword_1006E0100, &qword_10057BDF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0130);
  }

  return result;
}

uint64_t sub_100012044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopChartsWidgetTimelineProvider.Entry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000120AC()
{
  sub_100010324(&qword_1006E0118, &qword_10057BE08);
  sub_100010324(&qword_1006E0110, &qword_10057BE00);
  sub_100010324(&qword_1006E0108, &qword_10057BDF8);
  sub_100010324(&qword_1006E0100, &qword_10057BDF0);
  sub_100011FE0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

id sub_1000121CC()
{
  type metadata accessor for NowPlayingDataProvider(0);
  swift_allocObject();
  result = sub_1000142DC();
  qword_1006FC040 = result;
  return result;
}

void sub_10001220C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E0530, &qword_10057BF88);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = aBlock - v6;
  v8 = objc_opt_self();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_100015700;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012988;
  aBlock[3] = &unk_100680940;
  v11 = _Block_copy(aBlock);

  [v8 getActiveRouteWithCompletion:v11];
  _Block_release(v11);
}

uint64_t sub_1000123DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100009DCC(&qword_1006E0530, &qword_10057BF88);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = aBlock - v8;
  v10 = [objc_allocWithZone(MPCPlayerRequest) init];
  MPCPlaybackEngine.Configuration.systemMusic.unsafeMutableAddressor();

  v11 = sub_100572898();

  v12 = [objc_opt_self() pathWithRoute:a1 bundleID:0 playerID:v11];

  [v10 setPlayerPath:v12];
  (*(v7 + 16))(v9, a3, v6);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = v10;
  (*(v7 + 32))(v14 + v13, v9, v6);
  aBlock[4] = sub_100015870;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000128FC;
  aBlock[3] = &unk_100680990;
  v15 = _Block_copy(aBlock);

  v16 = v10;

  v17 = [v16 performWithCompletion:v15];
  _Block_release(v15);

  return swift_unknownObjectRelease();
}

uint64_t sub_100012658(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
    v5 = [a1 state];
    v6 = v5 - 2;
    if (v5 - 2) <= 4 && ((0x1Du >> v6))
    {
      v7 = 8 * v6;
      v8 = 0x100010000uLL >> (v7 & 0xF8);
      v5 = *(&unk_10057C160 + v7);
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
  }

  LOBYTE(v8) = 2;
LABEL_7:
  v9 = a4;
  v10 = sub_10056DF68();
  v11 = sub_100573448();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136446722;
    v13 = sub_100572978();
    v15 = v14;
    v16 = sub_10008190C(v13, v14, &v27);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    if (v5 <= 6)
    {
      v15 = *(&off_100680B10 + v5);
      v17 = *(&off_100680AD8 + v5);
    }

    v18 = v15;
    v19 = sub_1005728D8();
    v21 = v20;

    v22 = sub_10008190C(v19, v21, &v27);

    *(v12 + 14) = v22;
    *(v12 + 22) = 2082;
    [v9 playerPath];
    sub_100009DCC(&qword_1006E0538, &qword_10057BF90);
    v23 = sub_100572978();
    v25 = sub_10008190C(v23, v24, &v27);

    *(v12 + 24) = v25;
    _os_log_impl(&_mh_execute_header, v10, v11, "Widget state: %{public}s, mpcState: %{public}s, path: %{public}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  LOBYTE(v27) = v8;
  sub_100009DCC(&qword_1006E0530, &qword_10057BF88);
  return sub_100572E98();
}

void sub_1000128FC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_100012988(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1000129F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x646573756170;
  if (v2 != 1)
  {
    v4 = 0x646570706F7473;
    v3 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E6979616C70;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x646573756170;
  if (*a2 != 1)
  {
    v8 = 0x646570706F7473;
    v7 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E6979616C70;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_100574498();
  }

  return v11 & 1;
}

Swift::Int sub_100012AF0()
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

uint64_t sub_100012B90(uint64_t a1)
{
  sub_1005729F8();
}

Swift::Int sub_100012C1C(uint64_t a1)
{
  sub_100574678();
  sub_1005729F8();

  return sub_1005746C8();
}

unint64_t sub_100012CB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100015A80(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100012CE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x646573756170;
  if (v2 != 1)
  {
    v5 = 0x646570706F7473;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E6979616C70;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double sub_100012D44()
{
  v1 = v0;
  v2 = sub_10056CAA8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v26 - v6;
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v29 = &v26 - v10;
  v11 = sub_100009DCC(&qword_1006E0500, &unk_10057BF60);
  __chkstk_darwin();
  v13 = &v26 - v12;
  if (qword_1006DF8D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v15 = sub_10000C49C(v14, qword_1006FC048);
  if (sub_10056CA48() & 1) != 0 && (sub_10056CA48())
  {
    v26 = v7;
    v16 = v1;
    v17 = *(v14 + 24);
    v18 = *(v11 + 48);
    v27 = v16;
    sub_10000CC8C(v16 + v17, v13, &unk_1006E1E90, &qword_10057C550);
    v28 = v18;
    sub_10000CC8C(v15 + v17, &v13[v18], &unk_1006E1E90, &qword_10057C550);
    v19 = *(v3 + 48);
    if (v19(v13, 1, v2) == 1)
    {
      if (v19(&v13[v28], 1, v2) == 1)
      {
        sub_10001036C(v13, &unk_1006E1E90, &qword_10057C550);
        return 0.0;
      }
    }

    else
    {
      v21 = v29;
      sub_10000CC8C(v13, v29, &unk_1006E1E90, &qword_10057C550);
      if (v19(&v13[v28], 1, v2) != 1)
      {
        (*(v3 + 32))(v26, &v13[v28], v2);
        sub_100014B88(&qword_1006E0508, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        LODWORD(v28) = sub_1005727E8();
        v25 = *(v3 + 8);
        v25(v26, v2);
        v25(v21, v2);
        sub_10001036C(v13, &unk_1006E1E90, &qword_10057C550);
        v20 = 0.0;
        v1 = v27;
        if (v28)
        {
          return v20;
        }

        goto LABEL_11;
      }

      (*(v3 + 8))(v21, v2);
    }

    sub_10001036C(v13, &qword_1006E0500, &unk_10057BF60);
    v1 = v27;
  }

LABEL_11:
  sub_10000CC8C(v1 + *(v14 + 24), v9, &unk_1006E1E90, &qword_10057C550);
  v22 = *(v3 + 48);
  if (v22(v9, 1, v2) == 1)
  {
    sub_10056CA68();
    if (v22(v9, 1, v2) != 1)
    {
      sub_10001036C(v9, &unk_1006E1E90, &qword_10057C550);
    }
  }

  else
  {
    (*(v3 + 32))(v5, v9, v2);
  }

  sub_10056CA78();
  v20 = v23;
  (*(v3 + 8))(v5, v2);
  return v20;
}

uint64_t sub_100013248(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = sub_100009DCC(&qword_1006E0518, &unk_10057BF70);
  v2[5] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100013320, 0, 0);
}

uint64_t sub_100013320()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1000133FC;
  v2 = *(v0 + 24);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 64, 0, 0, 0x7453726579616C70, 0xEB00000000657461, sub_1000155C4, v2, &type metadata for NowPlayingDataProvider.PlayerState);
}

uint64_t sub_1000133FC()
{

  return _swift_task_switch(sub_1000134F8, 0, 0);
}

uint64_t sub_1000134F8()
{
  if (*(v0 + 64) && *(v0 + 64) != 1)
  {
  }

  else
  {
    v1 = sub_100574498();

    if ((v1 & 1) == 0)
    {
      v3 = *(v0 + 40);
      v2 = *(v0 + 48);
      v4 = *(v0 + 32);
      sub_10000CC8C(*(*(v0 + 24) + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItemProgress, v3, &qword_1006E0518, &unk_10057BF70);
      sub_10007051C(*(v3 + *(v4 + 44)), *(v3 + *(v4 + 44) + 8), v2);
      sub_10001036C(v3, &qword_1006E0518, &unk_10057BF70);
      v5 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
      v6 = (*(*(v5 - 8) + 48))(v2, 1, v5);
      v7 = *(v0 + 48);
      if (v6 != 1)
      {
        sub_1000155CC(v7, *(v0 + 16));
        goto LABEL_10;
      }

      sub_10001036C(v7, &qword_1006E0528, &qword_10057BF80);
    }
  }

  if (qword_1006DF8D8 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 16);
  v9 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v10 = sub_10000C49C(v9, qword_1006FC048);
  sub_100015198(v10, v8);
LABEL_10:

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1000136FC()
{
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  __chkstk_darwin();
  v1 = &v12 - v0;
  v2 = sub_10056CAA8();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  sub_10000C910(v8, qword_1006FC048);
  v9 = sub_10000C49C(v8, qword_1006FC048);
  sub_10056CA68();
  sub_10056C9A8();
  sub_10056C998();
  (*(v3 + 56))(v1, 0, 1, v2);
  v10 = *(v3 + 32);
  v10(v9, v7, v2);
  v10(v9 + *(v8 + 20), v5, v2);
  return sub_100015128(v1, v9 + *(v8 + 24));
}

uint64_t sub_1000138C8()
{
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  __chkstk_darwin();
  v2 = &v5 - v1;
  strcpy(v6, "ItemProgress(");
  HIWORD(v6[1]) = -4864;
  v5._countAndFlagsBits = 0x7461447472617473;
  v5._object = 0xEB00000000203A65;
  sub_10056CAA8();
  sub_100014B88(&qword_1006DFD50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v7._countAndFlagsBits = sub_100574408();
  sub_100572A98(v7);

  v8._countAndFlagsBits = 8236;
  v8._object = 0xE200000000000000;
  sub_100572A98(v8);
  sub_100572A98(v5);

  v5._countAndFlagsBits = 0x3A65746144646E65;
  v5._object = 0xE900000000000020;
  v3 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v9._countAndFlagsBits = sub_100574408();
  sub_100572A98(v9);

  v10._countAndFlagsBits = 8236;
  v10._object = 0xE200000000000000;
  sub_100572A98(v10);
  sub_100572A98(v5);

  v5._countAndFlagsBits = 0x7461446573756170;
  v5._object = 0xEB00000000203A65;
  sub_10000CC8C(v0 + *(v3 + 24), v2, &unk_1006E1E90, &qword_10057C550);
  v11._countAndFlagsBits = sub_100572978();
  sub_100572A98(v11);

  sub_100572A98(v5);

  v12._countAndFlagsBits = 41;
  v12._object = 0xE100000000000000;
  sub_100572A98(v12);
  return v6[0];
}

uint64_t sub_100013B20(void *a1)
{
  v3 = sub_100009DCC(&qword_1006E04F8, &qword_10057BF58);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_10000C8CC(a1, a1[3]);
  sub_1000150D4();
  sub_100574718();
  v11 = 0;
  sub_10056CAA8();
  sub_100014B88(&qword_1006DFF90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100574368();
  if (!v1)
  {
    type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    v10 = 1;
    sub_100574368();
    v9 = 2;
    sub_100574318();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100013D20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  __chkstk_darwin();
  v25 = &v21 - v4;
  v28 = sub_10056CAA8();
  v26 = *(v28 - 8);
  __chkstk_darwin();
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v27 = &v21 - v7;
  v8 = sub_100009DCC(&qword_1006E04E8, &qword_10057BF50);
  v29 = *(v8 - 8);
  v30 = v8;
  __chkstk_darwin();
  v10 = &v21 - v9;
  v11 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C8CC(a1, a1[3]);
  sub_1000150D4();
  sub_100574708();
  if (v2)
  {
    return sub_100010474(a1);
  }

  v14 = v6;
  v21 = v11;
  v22 = v13;
  v23 = a1;
  v33 = 0;
  sub_100014B88(&qword_1006DFFB8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v15 = v27;
  v16 = v28;
  sub_1005742D8();
  v27 = *(v26 + 32);
  (v27)(v22, v15, v16);
  v32 = 1;
  sub_1005742D8();
  (v27)(&v22[*(v21 + 20)], v14, v16);
  v31 = 2;
  v17 = v25;
  sub_100574288();
  v18 = v23;
  (*(v29 + 8))(v10, v30);
  v19 = v22;
  sub_100015128(v17, &v22[*(v21 + 24)]);
  sub_100015198(v19, v24);
  sub_100010474(v18);
  return sub_1000151FC(v19);
}

uint64_t sub_1000141A8()
{
  v1 = 0x65746144646E65;
  if (*v0 != 1)
  {
    v1 = 0x7461446573756170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461447472617473;
  }
}

uint64_t sub_100014204@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_100015ACC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001422C(uint64_t a1)
{
  v2 = sub_1000150D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100014268(uint64_t a1)
{
  v2 = sub_1000150D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_1000142DC()
{
  v1 = v0;
  type metadata accessor for NowPlayingDataProvider.Cache(0);
  swift_allocObject();
  *(v0 + 16) = sub_100014640();
  static Logger.NowPlaying.category(_:)(0xD000000000000012, 0x80000001005AA270);
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 processName];

  v4 = sub_1005728D8();
  v6 = v5;

  if (v4 == 0x646957636973754DLL && v6 == 0xEC00000073746567)
  {
  }

  else
  {
    v8 = sub_100574498();

    if ((v8 & 1) == 0)
    {
      return v1;
    }
  }

  v9 = sub_10056DF68();
  v10 = sub_100573448();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "running in widget process, disabling fallback cache", v11, 2u);
  }

  v12 = [objc_opt_self() defaultMediaLibrary];
  if ([v12 artworkDataSource])
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      [v13 setUsesFallbackCache:0];
    }

    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() sharedStoreArtworkDataSource];
  if (result)
  {
    v15 = result;
    [result setUsesFallbackCache:0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100014534()
{
  sub_10001036C(v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItem, &qword_1006E0510, &qword_10057C360);
  sub_10001036C(v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItemProgress, &qword_1006E0518, &unk_10057BF70);
  sub_10001036C(v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__codableCurrentItemBackground, &qword_1006E0520, &unk_100581DC0);
  sub_10001036C(v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentContainer, &qword_1006E0510, &qword_10057C360);
  sub_10001036C(v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__codableCurrentContainerBackground, &qword_1006E0520, &unk_100581DC0);

  return swift_deallocClassInstance();
}

uint64_t sub_100014640()
{
  v1 = v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItem;
  sub_10006AC28(0x6979616C50776F4ELL, 0xEA0000000000676ELL, v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItem);
  v2 = sub_100009DCC(&qword_1006E0510, &qword_10057C360);
  v3 = (v1 + *(v2 + 44));
  *v3 = 0x49746E6572727563;
  v3[1] = 0xEB000000006D6574;
  v4 = v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItemProgress;
  sub_10006AC28(0x6979616C50776F4ELL, 0xEA0000000000676ELL, v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItemProgress);
  v5 = (v4 + *(sub_100009DCC(&qword_1006E0518, &unk_10057BF70) + 44));
  *v5 = 0xD000000000000013;
  v5[1] = 0x80000001005AA290;
  v6 = v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__codableCurrentItemBackground;
  sub_10006AC28(0x6979616C50776F4ELL, 0xEA0000000000676ELL, v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__codableCurrentItemBackground);
  v7 = sub_100009DCC(&qword_1006E0520, &unk_100581DC0);
  v8 = (v6 + *(v7 + 44));
  *v8 = 0xD000000000000015;
  v8[1] = 0x80000001005AA2B0;
  v9 = v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentContainer;
  sub_10006AC28(0x6979616C50776F4ELL, 0xEA0000000000676ELL, v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentContainer);
  v10 = (v9 + *(v2 + 44));
  *v10 = 0xD000000000000010;
  v10[1] = 0x80000001005AA2D0;
  v11 = v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__codableCurrentContainerBackground;
  sub_10006AC28(0x6979616C50776F4ELL, 0xEA0000000000676ELL, v0 + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__codableCurrentContainerBackground);
  v12 = (v11 + *(v7 + 44));
  *v12 = 0xD00000000000001ALL;
  v12[1] = 0x80000001005AA2F0;
  return v0;
}

uint64_t sub_100014820()
{

  v1 = OBJC_IVAR____TtC12MusicWidgets22NowPlayingDataProvider_logger;
  v2 = sub_10056DF88();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000148EC(uint64_t a1)
{
  result = sub_10056DF88();
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

void sub_1000149B4(uint64_t a1)
{
  sub_100014ABC(319);
  if (v1 <= 0x3F)
  {
    sub_100014BD0(319);
    if (v2 <= 0x3F)
    {
      sub_100014CBC(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100014ABC(uint64_t a1)
{
  if (!qword_1006E02D0)
  {
    v2 = type metadata accessor for WidgetMusicItem(255);
    v3 = sub_100014B88(&qword_1006DFFC8, type metadata accessor for WidgetMusicItem, &unk_10057DDCC);
    v4 = sub_100014B88(&qword_1006DFFA8, type metadata accessor for WidgetMusicItem, &unk_10057DDA4);
    v5 = type metadata accessor for FileBacked(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1006E02D0);
    }
  }
}

uint64_t sub_100014B88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100014BD0(uint64_t a1)
{
  if (!qword_1006E02D8)
  {
    v2 = type metadata accessor for NowPlayingDataProvider.ItemProgress(255);
    v3 = sub_100014B88(&qword_1006E02E0, type metadata accessor for NowPlayingDataProvider.ItemProgress, &unk_10057BF28);
    v4 = sub_100014B88(&qword_1006E02E8, type metadata accessor for NowPlayingDataProvider.ItemProgress, &unk_10057BF00);
    v5 = type metadata accessor for FileBacked(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1006E02D8);
    }
  }
}

void sub_100014CBC(uint64_t a1)
{
  if (!qword_1006E02F0)
  {
    v2 = sub_100014D24();
    v3 = sub_100014D78();
    v4 = type metadata accessor for FileBacked(a1, &type metadata for CodableImage, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1006E02F0);
    }
  }
}

unint64_t sub_100014D24()
{
  result = qword_1006E02F8;
  if (!qword_1006E02F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E02F8);
  }

  return result;
}

unint64_t sub_100014D78()
{
  result = qword_1006E0300;
  if (!qword_1006E0300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0300);
  }

  return result;
}

uint64_t sub_100014DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10056CAA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100014EF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_10056CAA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

void sub_100014FF8(uint64_t a1)
{
  sub_10056CAA8();
  if (v1 <= 0x3F)
  {
    sub_10001507C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10001507C(uint64_t a1)
{
  if (!qword_1006E04B0)
  {
    sub_10056CAA8();
    v1 = sub_100573C28();
    if (!v2)
    {
      atomic_store(v1, &qword_1006E04B0);
    }
  }
}

unint64_t sub_1000150D4()
{
  result = qword_1006E04F0;
  if (!qword_1006E04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E04F0);
  }

  return result;
}

uint64_t sub_100015128(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000151FC(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_100015258(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056CAA8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  __chkstk_darwin();
  v9 = &v22 - v8;
  v10 = sub_100009DCC(&qword_1006E0500, &unk_10057BF60);
  __chkstk_darwin();
  v12 = &v22 - v11;
  if ((sub_10056CA48() & 1) == 0)
  {
    return 0;
  }

  v13 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  if ((sub_10056CA48() & 1) == 0)
  {
    return 0;
  }

  v23 = v5;
  v14 = *(v13 + 24);
  v15 = *(v10 + 48);
  sub_10000CC8C(a1 + v14, v12, &unk_1006E1E90, &qword_10057C550);
  v16 = a2 + v14;
  v17 = v23;
  sub_10000CC8C(v16, &v12[v15], &unk_1006E1E90, &qword_10057C550);
  v18 = *(v17 + 48);
  if (v18(v12, 1, v4) == 1)
  {
    if (v18(&v12[v15], 1, v4) == 1)
    {
      sub_10001036C(v12, &unk_1006E1E90, &qword_10057C550);
      return 1;
    }

    goto LABEL_8;
  }

  sub_10000CC8C(v12, v9, &unk_1006E1E90, &qword_10057C550);
  if (v18(&v12[v15], 1, v4) == 1)
  {
    (*(v17 + 8))(v9, v4);
LABEL_8:
    sub_10001036C(v12, &qword_1006E0500, &unk_10057BF60);
    return 0;
  }

  (*(v17 + 32))(v7, &v12[v15], v4);
  sub_100014B88(&qword_1006E0508, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v20 = sub_1005727E8();
  v21 = *(v17 + 8);
  v21(v7, v4);
  v21(v9, v4);
  sub_10001036C(v12, &unk_1006E1E90, &qword_10057C550);
  return (v20 & 1) != 0;
}

uint64_t sub_1000155CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015630()
{
  v1 = sub_100009DCC(&qword_1006E0530, &qword_10057BF88);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100015700(uint64_t a1)
{
  v3 = *(sub_100009DCC(&qword_1006E0530, &qword_10057BF88) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1000123DC(a1, v4, v5);
}

uint64_t sub_100015780(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100015798()
{
  v1 = sub_100009DCC(&qword_1006E0530, &qword_10057BF88);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100015870(void *a1, uint64_t a2)
{
  sub_100009DCC(&qword_1006E0530, &qword_10057BF88);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_100012658(a1, a2, v5, v6);
}

unint64_t sub_100015924()
{
  result = qword_1006E0540;
  if (!qword_1006E0540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0540);
  }

  return result;
}

unint64_t sub_10001597C()
{
  result = qword_1006E0548;
  if (!qword_1006E0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0548);
  }

  return result;
}

unint64_t sub_1000159D4()
{
  result = qword_1006E0550;
  if (!qword_1006E0550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0550);
  }

  return result;
}

unint64_t sub_100015A2C()
{
  result = qword_1006E0558;
  if (!qword_1006E0558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0558);
  }

  return result;
}

unint64_t sub_100015A80(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100680040;
  v6._object = a2;
  v4 = sub_100574238(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100015ACC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_100574498() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_100574498() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446573756170 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_100574498();

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

uint64_t sub_100015C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenMusicWidgetTimelineProvider.Entry(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100015C90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenMusicWidgetTimelineProvider.Entry(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for OpenMusicWidgetView(uint64_t a1)
{
  result = qword_1006E05B8;
  if (!qword_1006E05B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100015D4C(uint64_t a1)
{
  result = type metadata accessor for OpenMusicWidgetTimelineProvider.Entry(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100015DD4@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  __chkstk_darwin();
  v3 = v26 - v2;
  sub_100009DCC(&qword_1006E05F0, &qword_10057C210);
  __chkstk_darwin();
  v5 = v26 - v4;
  v6 = sub_100570558();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[0] = sub_100009DCC(&qword_1006E05F8, &qword_10057C218);
  __chkstk_darwin();
  v11 = (v26 - v10);
  v12 = type metadata accessor for OpenMusicWidgetTimelineProvider.Entry(0);

  sub_1005705E8();
  (*(v7 + 104))(v9, enum case for Image.ResizingMode.stretch(_:), v6);
  sub_1005705D8();

  (*(v7 + 8))(v9, v6);
  v13 = enum case for Image.TemplateRenderingMode.template(_:);
  v14 = sub_100570598();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v5, v13, v14);
  (*(v15 + 56))(v5, 0, 1, v14);
  v16 = sub_100570568();

  sub_10001036C(v5, &qword_1006E05F0, &qword_10057C210);
  v17 = sub_1005709E8();
  v19 = v18;
  v20 = v11 + *(v26[0] + 36);
  sub_100572438();
  v21 = &v20[*(sub_100009DCC(&qword_1006E0600, &qword_10057C220) + 36)];
  *v21 = v17;
  v21[1] = v19;
  *v11 = v16;
  v22 = *(v12 + 24);
  v23 = sub_10056C8A8();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v3, v1 + v22, v23);
  (*(v24 + 56))(v3, 0, 1, v23);
  sub_1000161FC();
  sub_10056FF68();
  sub_10001036C(v3, qword_1006E1D50, &qword_10057CA90);
  return sub_10001036C(v11, &qword_1006E05F8, &qword_10057C218);
}

unint64_t sub_1000161FC()
{
  result = qword_1006E0608;
  if (!qword_1006E0608)
  {
    sub_100010324(&qword_1006E05F8, &qword_10057C218);
    sub_100016288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0608);
  }

  return result;
}

unint64_t sub_100016288()
{
  result = qword_1006E0610;
  if (!qword_1006E0610)
  {
    sub_100010324(&qword_1006E0600, &qword_10057C220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0610);
  }

  return result;
}

uint64_t sub_1000162EC()
{
  sub_100010324(&qword_1006E05F8, &qword_10057C218);
  sub_1000161FC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100016364(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_10056CAA8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for WidgetMusicRecommendation(0);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v15 = sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[8];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[9]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  v18 = v17 - 1;
  if (v18 < 0)
  {
    v18 = -1;
  }

  return (v18 + 1);
}

uint64_t sub_100016538(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_10056CAA8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for WidgetMusicRecommendation(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[7];
      }

      else
      {
        result = sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[9]) = a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[8];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_100016708(uint64_t a1)
{
  sub_10056CAA8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WidgetMusicRecommendation(319);
    if (v2 <= 0x3F)
    {
      sub_100016918(319, &qword_1006E0688, &type metadata for NowPlayingDataProvider.PlayerState);
      if (v3 <= 0x3F)
      {
        sub_100016878(319, &qword_1006E0690, type metadata accessor for WidgetMusicItem);
        if (v4 <= 0x3F)
        {
          sub_100016878(319, &qword_1006E0698, type metadata accessor for NowPlayingDataProvider.ItemProgress);
          if (v5 <= 0x3F)
          {
            sub_100016878(319, &qword_1006E06A0, sub_1000168CC);
            if (v6 <= 0x3F)
            {
              sub_100016918(319, &qword_1006DFE60, &type metadata for String);
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

void sub_100016878(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100573C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1000168CC()
{
  result = qword_1006E06A8;
  if (!qword_1006E06A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006E06A8);
  }

  return result;
}

void sub_100016918(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_100573C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_100016978(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056DF88();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000169F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10056DF88();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100016A88(uint64_t a1)
{
  result = sub_10056DF88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100016AF4()
{
  v0 = sub_10056CAA8();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
  __chkstk_darwin();
  v5 = &v18 - v4;
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  __chkstk_darwin();
  v7 = &v18 - v6;
  v8 = type metadata accessor for WidgetMusicRecommendation(0);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  sub_10000C910(v11, qword_1006FC060);
  v12 = sub_10000C49C(v11, qword_1006FC060);
  if (qword_1006DFA08 != -1)
  {
    swift_once();
  }

  v13 = sub_10000C49C(v8, qword_1006FC250);
  sub_100019A10(v13, v10, type metadata accessor for WidgetMusicRecommendation);
  v14 = type metadata accessor for WidgetMusicItem(0);
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  v15 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_10056CA98();
  (*(v1 + 32))(v12, v3, v0);
  sub_100019AD8(v10, v12 + v11[5], type metadata accessor for WidgetMusicRecommendation);
  *(v12 + v11[6]) = 3;
  sub_100019B40(v7, v12 + v11[7], &qword_1006E0618, &unk_10057C230);
  result = sub_100019B40(v5, v12 + v11[8], &qword_1006E0528, &qword_10057BF80);
  *(v12 + v11[9]) = 0;
  v17 = (v12 + v11[10]);
  *v17 = 0;
  v17[1] = 0;
  return result;
}

uint64_t sub_100016E40@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10056CAA8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

unint64_t sub_100016EB0()
{
  result = qword_1006E0780;
  if (!qword_1006E0780)
  {
    type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0780);
  }

  return result;
}

unint64_t sub_100016F0C()
{
  result = qword_1006E0788;
  if (!qword_1006E0788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0788);
  }

  return result;
}

uint64_t sub_100016F60(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_100009DCC(&qword_1006E0790, &qword_10057C370);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for WidgetMusicRecommendation(0);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10001705C, 0, 0);
}

uint64_t sub_10001705C()
{
  if (sub_100058BC8())
  {
    v1 = sub_10056DF68();
    v2 = sub_100573428();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v1, v2, "Can't use widget: privacyAcknowledgementRequired", v3, 2u);
    }

    if (qword_1006DF968 != -1)
    {
      swift_once();
    }

    v5 = qword_1006FC158;
    v4 = unk_1006FC160;
    v6 = qword_1006DFA08;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = v0[2];
    v8 = sub_10000C49C(v0[6], qword_1006FC250);
    v9 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
    sub_100019A10(v8, v7 + v9[5], type metadata accessor for WidgetMusicRecommendation);
    v10 = v9[7];
    v11 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v11 - 8) + 56))(v7 + v10, 1, 1, v11);
    v12 = v9[8];
    v13 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    (*(*(v13 - 8) + 56))(v7 + v12, 1, 1, v13);
    sub_10056CA98();
    *(v7 + v9[6]) = 3;
    *(v7 + v9[9]) = 0;
    v14 = (v7 + v9[10]);
    *v14 = v5;
    v14[1] = v4;

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = swift_task_alloc();
    v0[9] = v17;
    *v17 = v0;
    v17[1] = sub_10001733C;

    return sub_100058BD0();
  }
}

uint64_t sub_10001733C(char a1)
{
  *(*v1 + 90) = a1;

  return _swift_task_switch(sub_10001743C, 0, 0);
}

id sub_10001743C(uint64_t a1)
{
  v43 = v1;
  if (*(v1 + 90) != 1)
  {
    v21 = sub_10056DF68();
    v22 = sub_100573448();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Can't use widget. Subscription required.", v23, 2u);
    }

    if (qword_1006DF970 != -1)
    {
      swift_once();
    }

    v24 = &qword_1006FC168;
    goto LABEL_20;
  }

  result = [objc_opt_self() sharedCloudController];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result hasProperNetworkConditionsToShowCloudMedia];

  if (!v4)
  {
    v25 = sub_10056DF68();
    v26 = sub_100573448();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Can't use widget. Device offline.", v27, 2u);
    }

    if (qword_1006DF980 != -1)
    {
      swift_once();
    }

    v24 = &qword_1006FC188;
LABEL_20:
    v29 = *v24;
    v28 = v24[1];
    v30 = qword_1006DFA08;

    if (v30 != -1)
    {
      swift_once();
    }

    v31 = *(v1 + 16);
    v32 = sub_10000C49C(*(v1 + 48), qword_1006FC250);
    v33 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
    sub_100019A10(v32, v31 + v33[5], type metadata accessor for WidgetMusicRecommendation);
    v34 = v33[7];
    v35 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v35 - 8) + 56))(v31 + v34, 1, 1, v35);
    v36 = v33[8];
    v37 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    (*(*(v37 - 8) + 56))(v31 + v36, 1, 1, v37);
    sub_10056CA98();
    *(v31 + v33[6]) = 3;
    *(v31 + v33[9]) = 0;
    v38 = (v31 + v33[10]);
    *v38 = v29;
    v38[1] = v28;
    goto LABEL_23;
  }

  sub_10056C078();
  v5 = *(v1 + 88);
  if (v5 == 6)
  {

    v6 = sub_10056DF68();
    v7 = sub_100573428();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v42 = v9;
      *v8 = 136315138;
      sub_10056C078();
      sub_100009DCC(&qword_1006E0798, qword_10057C378);
      v10 = sub_100572978();
      v12 = sub_10008190C(v10, v11, &v42);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v6, v7, "Can't fetch recommendation of kind %s.", v8, 0xCu);
      sub_100010474(v9);
    }

    if (qword_1006DFA08 != -1)
    {
      swift_once();
    }

    v13 = *(v1 + 16);
    v14 = sub_10000C49C(*(v1 + 48), qword_1006FC250);
    v15 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
    sub_100019A10(v14, v13 + v15[5], type metadata accessor for WidgetMusicRecommendation);
    v16 = v15[7];
    v17 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v17 - 8) + 56))(v13 + v16, 1, 1, v17);
    v18 = v15[8];
    v19 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    (*(*(v19 - 8) + 56))(v13 + v18, 1, 1, v19);
    sub_10056CA98();
    *(v13 + v15[6]) = 3;
    *(v13 + v15[9]) = 0;
    v20 = (v13 + v15[10]);
    *v20 = 0;
    v20[1] = 0;
LABEL_23:

    v39 = *(v1 + 8);

    return v39();
  }

  if (qword_1006DFA10 != -1)
  {
    swift_once();
  }

  v40 = swift_task_alloc();
  *(v1 + 80) = v40;
  *v40 = v1;
  v40[1] = sub_100017A8C;
  v41 = *(v1 + 40);

  return sub_10007A858(v41, v5);
}

uint64_t sub_100017A8C()
{

  return _swift_task_switch(sub_100017B88, 0, 0);
}

uint64_t sub_100017B88()
{
  v46 = v0;
  v1 = v0[6];
  v2 = v0[5];
  if ((*(v0[7] + 48))(v2, 1, v1) == 1)
  {
    sub_10001036C(v2, &qword_1006E0790, &qword_10057C370);

    v3 = sub_10056DF68();
    v4 = sub_100573428();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v45 = v6;
      *v5 = 136315138;
      sub_10056C078();
      sub_100009DCC(&qword_1006E0798, qword_10057C378);
      v7 = sub_100572978();
      v9 = sub_10008190C(v7, v8, &v45);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Can't fetch recommendation of kind %s.", v5, 0xCu);
      sub_100010474(v6);
    }

    if (qword_1006DFA08 != -1)
    {
      swift_once();
    }

    v10 = v0[2];
    v11 = sub_10000C49C(v0[6], qword_1006FC250);
    v12 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
    sub_100019A10(v11, v10 + v12[5], type metadata accessor for WidgetMusicRecommendation);
    v13 = v12[7];
    v14 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v14 - 8) + 56))(v10 + v13, 1, 1, v14);
    v15 = v12[8];
    v16 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
    (*(*(v16 - 8) + 56))(v10 + v15, 1, 1, v16);
    sub_10056CA98();
    *(v10 + v12[6]) = 3;
    *(v10 + v12[9]) = 0;
    v17 = (v10 + v12[10]);
    *v17 = 0;
    v17[1] = 0;
  }

  else
  {
    v18 = v0[8];
    sub_100019AD8(v2, v18, type metadata accessor for WidgetMusicRecommendation);
    if (*(*(v18 + *(v1 + 32)) + 16))
    {
      v19 = v0[8];
      v20 = v0[2];
      v21 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
      sub_100019A10(v19, v20 + v21[5], type metadata accessor for WidgetMusicRecommendation);
      v22 = v21[7];
      v23 = type metadata accessor for WidgetMusicItem(0);
      (*(*(v23 - 8) + 56))(v20 + v22, 1, 1, v23);
      v24 = v21[8];
      v25 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
      (*(*(v25 - 8) + 56))(v20 + v24, 1, 1, v25);
      sub_10056CA98();
      *(v20 + v21[6]) = 3;
      *(v20 + v21[9]) = 0;
      v26 = (v20 + v21[10]);
      *v26 = 0;
      v26[1] = 0;
      v27 = v19;
    }

    else
    {
      v28 = sub_10056DF68();
      v29 = sub_100573448();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&_mh_execute_header, v28, v29, "Server returned no recommendation items. New subscriber.", v30, 2u);
      }

      v31 = v0[8];
      v32 = v0[2];

      v33 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
      sub_100019A10(v31, v32 + v33[5], type metadata accessor for WidgetMusicRecommendation);
      v34 = v33[7];
      v35 = type metadata accessor for WidgetMusicItem(0);
      (*(*(v35 - 8) + 56))(v32 + v34, 1, 1, v35);
      v36 = v33[8];
      v37 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
      (*(*(v37 - 8) + 56))(v32 + v36, 1, 1, v37);
      if (qword_1006DF990 != -1)
      {
        swift_once();
      }

      v38 = v0[8];
      v39 = v0[2];
      v41 = qword_1006FC1A8;
      v40 = unk_1006FC1B0;

      sub_10056CA98();
      *(v39 + v33[6]) = 3;
      *(v39 + v33[9]) = 0;
      v42 = (v39 + v33[10]);
      *v42 = v41;
      v42[1] = v40;
      v27 = v38;
    }

    sub_100019A78(v27, type metadata accessor for WidgetMusicRecommendation);
  }

  v43 = v0[1];

  return v43();
}

uint64_t sub_100018164(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = sub_100009DCC(&qword_1006E0518, &unk_10057BF70);
  v3[6] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0528, &qword_10057BF80);
  v3[7] = swift_task_alloc();
  v4 = sub_10056CAA8();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v5 = sub_100572578();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v6 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = sub_100009DCC(&qword_1006E0520, &unk_100581DC0);
  v3[27] = swift_task_alloc();
  v7 = type metadata accessor for NowPlayingDataProvider.ItemProgress(0);
  v3[28] = v7;
  v3[29] = *(v7 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = sub_100009DCC(&qword_1006E0510, &qword_10057C360);
  v3[33] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  v3[34] = swift_task_alloc();

  return _swift_task_switch(sub_1000184D8, 0, 0);
}

uint64_t sub_1000184D8()
{
  if (qword_1006DF8D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1006FC040;
  *(v0 + 280) = qword_1006FC040;
  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *v2 = v0;
  v2[1] = sub_1000185F0;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 320, 0, 0, 0x7453726579616C70, 0xEB00000000657461, sub_1000155C4, v1, &type metadata for NowPlayingDataProvider.PlayerState);
}

uint64_t sub_1000185F0()
{

  return _swift_task_switch(sub_1000186EC, 0, 0);
}

uint64_t sub_1000186EC()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v4 = *(v0 + 256);
  v3 = *(v0 + 264);
  *(v0 + 321) = *(v0 + 320);
  sub_10000CC8C(*(v1 + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentContainer, v3, &qword_1006E0510, &qword_10057C360);
  sub_10006F60C(*(v3 + *(v4 + 44)), *(v3 + *(v4 + 44) + 8), v2);
  sub_10001036C(v3, &qword_1006E0510, &qword_10057C360);
  v5 = swift_task_alloc();
  *(v0 + 296) = v5;
  *v5 = v0;
  v5[1] = sub_1000187FC;
  v6 = *(v0 + 248);

  return sub_100013248(v6);
}

uint64_t sub_1000187FC()
{

  return _swift_task_switch(sub_1000188F8, 0, 0);
}

uint64_t sub_1000188F8()
{
  if (*(v0 + 321) && *(v0 + 321) != 1)
  {

    v2 = 0;
  }

  else
  {
    v1 = sub_100574498();

    if (v1)
    {
      v2 = 0;
    }

    else
    {
      v4 = *(v0 + 208);
      v3 = *(v0 + 216);
      sub_10000CC8C(*(*(v0 + 280) + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__codableCurrentContainerBackground, v3, &qword_1006E0520, &unk_100581DC0);
      v5 = sub_10006FEA0(*(v3 + *(v4 + 44)), *(v3 + *(v4 + 44) + 8));
      sub_10001036C(v3, &qword_1006E0520, &unk_100581DC0);
      if (v5 == 1)
      {
        v2 = 0;
      }

      else
      {
        v6 = v5;
        v2 = v5;
      }

      sub_100019990(v5);
    }
  }

  *(v0 + 304) = v2;
  v7 = swift_task_alloc();
  *(v0 + 312) = v7;
  *v7 = v0;
  v7[1] = sub_100018A9C;
  v8 = *(v0 + 200);
  v9 = *(v0 + 24);

  return sub_100016F60(v8, v9);
}

uint64_t sub_100018A9C()
{

  return _swift_task_switch(sub_100018B98, 0, 0);
}

uint64_t sub_100018B98(uint64_t a1)
{
  v2 = *(v1 + 321);
  sub_10056CA98();
  if (!v2)
  {
    v3 = *(v1 + 224);
    v4 = *(v1 + 232);
    v5 = *(v1 + 48);
    v6 = *(v1 + 56);
    v7 = *(v1 + 40);
    sub_10000CC8C(*(*(v1 + 280) + 16) + OBJC_IVAR____TtCC12MusicWidgets22NowPlayingDataProviderP33_70F471A0DA99FBA7CCD65ABFE189F6D95Cache__currentItemProgress, v5, &qword_1006E0518, &unk_10057BF70);
    sub_10007051C(*(v5 + *(v7 + 44)), *(v5 + *(v7 + 44) + 8), v6);
    sub_10001036C(v5, &qword_1006E0518, &unk_10057BF70);
    if ((*(v4 + 48))(v6, 1, v3) == 1)
    {
      sub_10001036C(*(v1 + 56), &qword_1006E0528, &qword_10057BF80);
    }

    else
    {
      v8 = *(v1 + 240);
      sub_100019AD8(*(v1 + 56), v8, type metadata accessor for NowPlayingDataProvider.ItemProgress);
      sub_100012D44();
      sub_100019A78(v8, type metadata accessor for NowPlayingDataProvider.ItemProgress);
    }

    v9 = *(v1 + 272);
    v77 = *(v1 + 248);
    v80 = *(v1 + 304);
    v10 = *(v1 + 232);
    v87 = *(v1 + 224);
    v11 = *(v1 + 200);
    v82 = *(v1 + 184);
    v12 = *(v1 + 152);
    v13 = *(v1 + 96);
    v15 = *(v1 + 64);
    v14 = *(v1 + 72);
    sub_10056C9D8();
    sub_100572558();
    v85 = *(v14 + 8);
    v85(v13, v15);
    *(v11 + v12[6]) = 0;
    sub_1000199A0(v9, v11 + v12[7]);
    v16 = v12[8];
    sub_10001036C(v11 + v16, &qword_1006E0528, &qword_10057BF80);
    sub_100019A10(v77, v11 + v16, type metadata accessor for NowPlayingDataProvider.ItemProgress);
    (*(v10 + 56))(v11 + v16, 0, 1, v87);
    v17 = v12[9];
    v18 = *(v11 + v17);
    v88 = v80;

    *(v11 + v17) = v80;
    sub_100019A10(v11, v82, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
    v19 = sub_100040B24(0, 1, 1, _swiftEmptyArrayStorage);
    v21 = v19[2];
    v20 = v19[3];
    v22 = v21 + 1;
    if (v21 >= v20 >> 1)
    {
      v19 = sub_100040B24((v20 > 1), v21 + 1, 1, v19);
    }

    v23 = *(v1 + 184);
    goto LABEL_29;
  }

  if (v2 != 1)
  {
    if ((sub_100075E34() & 1) == 0)
    {
      if (qword_1006DFA20 != -1)
      {
        swift_once();
      }

      if (qword_1006FC270)
      {
        sub_1000A680C();
      }
    }

    v51 = *(v1 + 232);
    v84 = *(v1 + 224);
    v52 = *(v1 + 200);
    v89 = *(v1 + 192);
    v53 = *(v1 + 152);
    v54 = *(v1 + 104);
    v56 = *(v1 + 64);
    v55 = *(v1 + 72);
    sub_10056C9D8();
    sub_100572558();
    v85 = *(v55 + 8);
    v85(v54, v56);
    *(v52 + v53[6]) = 2;
    v57 = v53[7];
    sub_10001036C(v52 + v57, &qword_1006E0618, &unk_10057C230);
    v58 = type metadata accessor for WidgetMusicItem(0);
    (*(*(v58 - 8) + 56))(v52 + v57, 1, 1, v58);
    v59 = v53[8];
    sub_10001036C(v52 + v59, &qword_1006E0528, &qword_10057BF80);
    (*(v51 + 56))(v52 + v59, 1, 1, v84);
    v60 = v53[9];

    *(v52 + v60) = 0;
    sub_100019A10(v52, v89, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
    v19 = sub_100040B24(0, 1, 1, _swiftEmptyArrayStorage);
    v21 = v19[2];
    v61 = v19[3];
    v22 = v21 + 1;
    if (v21 >= v61 >> 1)
    {
      v19 = sub_100040B24((v61 > 1), v21 + 1, 1, v19);
    }

    v88 = *(v1 + 304);
    v23 = *(v1 + 192);
LABEL_29:
    v62 = *(v1 + 160);
    v19[2] = v22;
    v50 = v19 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v21;
    goto LABEL_30;
  }

  if ((sub_100075E34() & 1) == 0)
  {
    if (qword_1006DFA20 != -1)
    {
      swift_once();
    }

    if (qword_1006FC270)
    {
      sub_1000A680C();
    }
  }

  v24 = *(v1 + 272);
  v75 = *(v1 + 304);
  v78 = *(v1 + 248);
  v25 = *(v1 + 232);
  v83 = *(v1 + 224);
  v26 = *(v1 + 200);
  v86 = *(v1 + 176);
  v27 = *(v1 + 152);
  v28 = *(v1 + 88);
  v30 = *(v1 + 64);
  v29 = *(v1 + 72);
  sub_10056C9D8();
  sub_100572558();
  v85 = *(v29 + 8);
  v85(v28, v30);
  *(v26 + v27[6]) = 1;
  v81 = v27[7];
  sub_1000199A0(v24, v26 + v81);
  v31 = v27[8];
  sub_10001036C(v26 + v31, &qword_1006E0528, &qword_10057BF80);
  sub_100019A10(v78, v26 + v31, type metadata accessor for NowPlayingDataProvider.ItemProgress);
  v79 = *(v25 + 56);
  v79(v26 + v31, 0, 1, v83);
  v32 = v27[9];
  v33 = *(v26 + v32);
  v88 = v75;

  *(v26 + v32) = v75;
  sub_100019A10(v26, v86, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  v34 = sub_100040B24(0, 1, 1, _swiftEmptyArrayStorage);
  v36 = v34[2];
  v35 = v34[3];
  if (v36 >= v35 >> 1)
  {
    v34 = sub_100040B24((v35 > 1), v36 + 1, 1, v34);
  }

  v37 = *(v1 + 200);
  v38 = *(v1 + 176);
  v73 = *(v1 + 224);
  v74 = *(v1 + 168);
  v39 = *(v1 + 160);
  v40 = *(v1 + 72);
  v41 = *(v1 + 80);
  v42 = *(v1 + 64);
  v34[2] = v36 + 1;
  v76 = (*(v39 + 80) + 32) & ~*(v39 + 80);
  v43 = *(v39 + 72);
  v44 = v34 + v76 + v43 * v36;
  v45 = v34;
  sub_100019AD8(v38, v44, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  sub_10056C9D8();
  (*(v40 + 40))(v37, v41, v42);
  sub_10001036C(v26 + v81, &qword_1006E0618, &unk_10057C230);
  v46 = type metadata accessor for WidgetMusicItem(0);
  (*(*(v46 - 8) + 56))(v26 + v81, 1, 1, v46);
  sub_10001036C(v26 + v31, &qword_1006E0528, &qword_10057BF80);
  v79(v26 + v31, 1, 1, v73);

  *(v26 + v32) = 0;
  sub_100019A10(v37, v74, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  v47 = v45;
  v48 = v45[2];
  v49 = v47[3];
  if (v48 >= v49 >> 1)
  {
    v47 = sub_100040B24((v49 > 1), v48 + 1, 1, v47);
  }

  v23 = *(v1 + 168);
  v47[2] = v48 + 1;
  v50 = v47 + v76 + v48 * v43;
LABEL_30:
  sub_100019AD8(v23, v50, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
  v63 = *(v1 + 272);
  v71 = *(v1 + 248);
  v72 = *(v1 + 200);
  v64 = *(v1 + 144);
  v65 = *(v1 + 128);
  v66 = *(v1 + 112);
  v67 = *(v1 + 120);
  v68 = *(v1 + 64);
  (*(v65 + 16))(*(v1 + 136), v64, v67);
  sub_100016EB0();
  sub_100572638();

  v85(v66, v68);
  (*(v65 + 8))(v64, v67);
  sub_100019A78(v71, type metadata accessor for NowPlayingDataProvider.ItemProgress);
  sub_10001036C(v63, &qword_1006E0618, &unk_10057C230);
  sub_100019A78(v72, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);

  v69 = *(v1 + 8);

  return v69();
}

uint64_t sub_100019650@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006DF8E0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for RecommendationsWidgetTimelineProvider.Entry(0);
  v3 = sub_10000C49C(v2, qword_1006FC060);
  return sub_100019A10(v3, a1, type metadata accessor for RecommendationsWidgetTimelineProvider.Entry);
}

uint64_t sub_1000196D0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_100016F60(a1, v4);
}

uint64_t sub_100019778(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000116F0;

  return sub_100018164(a1, v4);
}

uint64_t sub_100019828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000CB98;

  return AppIntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_1000198DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1000116F0;

  return AppIntentTimelineProvider.relevance()(a1, a2, a3);
}

void sub_100019990(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t sub_1000199A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&qword_1006E0618, &unk_10057C230);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100019A10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100019A78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100019AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100019B40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100009DCC(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_100019BA8()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleFootnote;
  v2 = UIContentSizeCategoryExtraExtraExtraLarge;
  v3 = [v0 _preferredFontForTextStyle:v1 variant:1024 maximumContentSizeCategory:v2];

  if (v3)
  {
    v4 = [objc_opt_self() configurationWithFont:v3 scale:1];

    v6 = &type metadata for HierarchicalShapeStyle;
    v7 = &protocol witness table for HierarchicalShapeStyle;
    v5[0] = sub_10056F6F8();
    FavoriteBadgeConfiguration.init(symbolConfiguration:foregroundStyle:)(v4, v5, qword_1006E07A0);
  }

  else
  {
    __break(1u);
  }
}

void sub_100019CA4()
{
  v0 = objc_opt_self();
  v1 = UIFontTextStyleCaption2;
  v2 = UIContentSizeCategoryExtraExtraExtraLarge;
  v3 = [v0 _preferredFontForTextStyle:v1 maximumContentSizeCategory:v2];

  if (v3)
  {
    v4 = [objc_opt_self() configurationWithFont:v3 scale:1];

    v6 = &type metadata for HierarchicalShapeStyle;
    v7 = &protocol witness table for HierarchicalShapeStyle;
    v5[0] = sub_10056F6F8();
    FavoriteBadgeConfiguration.init(symbolConfiguration:foregroundStyle:)(v4, v5, qword_1006E07D0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100019DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_10056FDF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 32);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100019EF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_10056FDF8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 32);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_100009DCC(&qword_1006E0800, qword_10057C3B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ErrorMessageModifier(uint64_t a1)
{
  result = qword_1006E0860;
  if (!qword_1006E0860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001A070(uint64_t a1)
{
  sub_10001A1A4(319, &qword_1006E0870, type metadata accessor for CGSize, &type metadata accessor for State);
  if (v1 <= 0x3F)
  {
    sub_10056FDF8();
    if (v2 <= 0x3F)
    {
      sub_10001A1A4(319, &qword_1006E0878, &type metadata accessor for WidgetFamily, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_10001A208();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10001A1A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_10001A208()
{
  if (!qword_1006E0880)
  {
    v0 = sub_10056E6D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1006E0880);
    }
  }
}

uint64_t sub_10001A274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = *(type metadata accessor for ErrorMessageModifier(0) - 8);
  v5 = *(v45 + 64);
  __chkstk_darwin();
  v6 = sub_1005709E8();
  v8 = v7;
  sub_10001A520(v2, v47);
  v9 = sub_100009DCC(&qword_1006E08C8, &qword_10057C438);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = a2 + *(sub_100009DCC(&qword_1006E08D0, &qword_10057C440) + 36);
  *v10 = v6;
  *(v10 + 8) = v8;
  v11 = v47[3];
  *(v10 + 48) = v47[2];
  *(v10 + 64) = v11;
  *(v10 + 80) = v47[4];
  *(v10 + 96) = v48;
  v12 = v47[1];
  *(v10 + 16) = v47[0];
  *(v10 + 32) = v12;
  v13 = sub_1005709D8();
  v15 = v14;
  v16 = *v2;
  v17 = v2[1];

  v18 = sub_10056FA28();
  sub_10056E598();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v46 = 0;
  v27 = sub_10056FA58();
  sub_10056E598();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = a2 + *(sub_100009DCC(&qword_1006E08D8, &qword_10057C448) + 36);
  *v36 = v16;
  *(v36 + 8) = v17;
  *(v36 + 16) = 1;
  *(v36 + 24) = v18;
  *(v36 + 32) = v20;
  *(v36 + 40) = v22;
  *(v36 + 48) = v24;
  *(v36 + 56) = v26;
  *(v36 + 64) = 0;
  *(v36 + 72) = v27;
  *(v36 + 80) = v29;
  *(v36 + 88) = v31;
  *(v36 + 96) = v33;
  *(v36 + 104) = v35;
  *(v36 + 112) = 0;
  *(v36 + 120) = v13;
  *(v36 + 128) = v15;
  v37 = sub_1005709E8();
  v39 = v38;
  sub_10001AF94(v2, &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v41 = swift_allocObject();
  sub_10001B188(&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v41 + v40);
  result = sub_100009DCC(&qword_1006E08E0, &qword_10057C458);
  v43 = (a2 + *(result + 36));
  *v43 = sub_10001B1EC;
  v43[1] = v41;
  v43[2] = v37;
  v43[3] = v39;
  return result;
}

__n128 sub_10001A520@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10056F198();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001A7E8();
  sub_100009DCC(&qword_1006E08F0, &qword_10057C468);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10057BD80;
  sub_1005704A8();
  *(v8 + 32) = sub_100570948();
  *(v8 + 40) = v9;
  sub_1005704A8();
  *(v8 + 48) = sub_100570948();
  *(v8 + 56) = v10;
  sub_1005704A8();
  sub_1005704E8();

  *(v8 + 64) = sub_100570948();
  *(v8 + 72) = v11;
  sub_1005704B8();
  *(v8 + 80) = sub_100570948();
  *(v8 + 88) = v12;
  sub_100570B28();
  sub_100570B38();
  sub_100570958();
  sub_10056EA68();
  v13 = a1 + *(type metadata accessor for ErrorMessageModifier(0) + 40);
  v15 = *v13;
  v14 = *(v13 + 16);
  if (*(v13 + 32) == 1)
  {
    v24 = *v13;
    v25 = v14;
  }

  else
  {
    v22 = *v13;
    v16 = *&v22.f64[0];
    v23 = v14;

    v17 = sub_100573438();
    v18 = sub_10056F9D8();
    sub_10056DE58(v17, &_mh_execute_header, v18, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    sub_10056F188();
    swift_getAtKeyPath();
    sub_10001B17C(v16, *&v22.f64[1], *&v23.f64[0], *&v23.f64[1], 0);
    (*(v5 + 8))(v7, v4);
    v15 = v24;
    v14 = v25;
  }

  v22 = vsubq_f64(0, v14);
  v23 = vsubq_f64(0, v15);
  v19 = sub_10056FA38();
  v20 = v27;
  *a2 = v26;
  *(a2 + 16) = v20;
  *(a2 + 32) = v28;
  *(a2 + 40) = v19;
  result = v22;
  *(a2 + 48) = v23;
  *(a2 + 64) = result;
  *(a2 + 80) = 0;
  return result;
}

void *sub_10001A7E8()
{
  v1 = v0;
  sub_100009DCC(&qword_1006E08F8, &qword_10057C470);
  __chkstk_darwin();
  v49 = &v41 - v2;
  sub_100009DCC(&qword_1006E0900, &qword_10057C478);
  __chkstk_darwin();
  v47 = &v41 - v3;
  v4 = sub_10056FDD8();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005724A8();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v41 - v11);
  v13 = type metadata accessor for ErrorMessageModifier(0);
  sub_1000A8194(v12);
  (*(v8 + 104))(v10, enum case for WidgetFamily.systemLarge(_:), v7);
  v14 = sub_100572498();
  v15 = *(v8 + 8);
  v15(v10, v7);
  result = (v15)(v12, v7);
  if (v14)
  {
    v17 = v1[4];
    v18 = v1[5];
    v19 = v1[6];
    v52 = v17;
    v53 = v18;
    v54 = v19;
    v20 = sub_100009DCC(&qword_1006E08E8, &qword_10057C460);
    result = sub_100570678();
    if (v50 != 0.0 || v51 != 0.0)
    {
      v46 = *(v13 + 32);
      v21 = v1[1];
      v52 = *v1;
      v53 = v21;
      sub_10001B550();

      v22 = sub_10056FF28();
      v24 = v23;
      v26 = v25;
      sub_10056FB08();
      v27 = sub_10056FE88();
      v42 = v19;
      v43 = v20;
      v28 = v27;
      v30 = v29;
      v44 = v5;
      v45 = v4;
      v32 = v31;

      sub_10001B5A4(v22, v24, v26 & 1);

      sub_10056FB88();
      v33 = sub_10056FD98();
      v35 = v34;
      LOBYTE(v24) = v36;
      sub_10001B5A4(v28, v30, v32 & 1);

      v52 = v17;
      v53 = v18;
      v37 = v42;
      v54 = v42;
      sub_100570678();
      v38 = sub_10056FDA8();
      (*(*(v38 - 8) + 56))(v47, 1, 1, v38);
      v39 = sub_10056FED8();
      (*(*(v39 - 8) + 56))(v49, 1, 1, v39);
      v40 = v48;
      sub_10056FDC8();
      sub_10056FDB8();
      sub_10001B5A4(v33, v35, v24 & 1);

      (*(v44 + 8))(v40, v45);
      v52 = v17;
      v53 = v18;
      v54 = v37;
      return sub_100570678();
    }
  }

  return result;
}

uint64_t sub_10001AD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = a1;
  v5 = sub_10056E938();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for ErrorMessageModifier(0) - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = sub_1005704B8();
  sub_10001AF94(a2, &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v8, v17, v5);
  v12 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v13 = (v10 + *(v6 + 80) + v12) & ~*(v6 + 80);
  v14 = swift_allocObject();
  sub_10001B188(&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v12);
  result = (*(v6 + 32))(v14 + v13, v8, v5);
  *a3 = v11;
  a3[1] = sub_10001B484;
  a3[2] = v14;
  a3[3] = 0;
  a3[4] = 0;
  return result;
}

uint64_t sub_10001AEEC(uint64_t a1)
{
  sub_10056E928();
  sub_1005738C8();
  sub_100009DCC(&qword_1006E08E8, &qword_10057C460);
  return sub_100570688();
}

uint64_t sub_10001AF94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorMessageModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001AFF8()
{
  v1 = type metadata accessor for ErrorMessageModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[8];
  v4 = sub_10056FDF8();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v1[9];
  sub_100009DCC(&qword_1006E0148, &qword_10057C450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1005724A8();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v2 + v1[10];
  sub_10001B17C(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));

  return swift_deallocObject();
}

uint64_t sub_10001B17C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return v5;
}

uint64_t sub_10001B188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ErrorMessageModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B1EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ErrorMessageModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_10001AD04(a1, v6, a2);
}

uint64_t sub_10001B26C()
{
  v1 = type metadata accessor for ErrorMessageModifier(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = sub_10056E938();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v0 + v3;

  v9 = v1[8];
  v10 = sub_10056FDF8();
  (*(*(v10 - 8) + 8))(v0 + v3 + v9, v10);
  v11 = v1[9];
  sub_100009DCC(&qword_1006E0148, &qword_10057C450);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1005724A8();
    (*(*(v12 - 8) + 8))(v8 + v11, v12);
  }

  else
  {
  }

  v13 = v8 + v1[10];
  sub_10001B17C(*v13, *(v13 + 8), *(v13 + 16), *(v13 + 24), *(v13 + 32));
  (*(v6 + 8))(v0 + ((v3 + v4 + v7) & ~v7), v5);

  return swift_deallocObject();
}

uint64_t sub_10001B484()
{
  v1 = *(type metadata accessor for ErrorMessageModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_10056E938();

  return sub_10001AEEC(v0 + v2);
}

unint64_t sub_10001B550()
{
  result = qword_1006E1EA0;
  if (!qword_1006E1EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E1EA0);
  }

  return result;
}

uint64_t sub_10001B5A4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_10001B5B8()
{
  result = qword_1006E0908;
  if (!qword_1006E0908)
  {
    sub_100010324(&qword_1006E08E0, &qword_10057C458);
    sub_10001B670();
    sub_100010BC0(&qword_1006E0948, &qword_1006E0950, &qword_10057C490, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0908);
  }

  return result;
}

unint64_t sub_10001B670()
{
  result = qword_1006E0910;
  if (!qword_1006E0910)
  {
    sub_100010324(&qword_1006E08D8, &qword_10057C448);
    sub_10001B728();
    sub_100010BC0(&qword_1006E0938, &qword_1006E0940, &qword_10057C488, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0910);
  }

  return result;
}

unint64_t sub_10001B728()
{
  result = qword_1006E0918;
  if (!qword_1006E0918)
  {
    sub_100010324(&qword_1006E08D0, &qword_10057C440);
    sub_100010BC0(&qword_1006E0920, &qword_1006E08C8, &qword_10057C438, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_100010BC0(&qword_1006E0928, &qword_1006E0930, &qword_10057C480, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006E0918);
  }

  return result;
}

id sub_10001B80C()
{
  type metadata accessor for RadioWidgetDataProvider(0);
  swift_allocObject();
  result = sub_10001C6D4();
  qword_1006FC078 = result;
  return result;
}

uint64_t sub_10001B84C()
{
  v1[2] = v0;
  sub_100009DCC(&qword_1006E0AE0, &qword_10057C4E0);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for RadioWidgetDataProvider.DiskCache(0);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_10001B924, 0, 0);
}

uint64_t sub_10001B924()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = OBJC_IVAR____TtC12MusicWidgets23RadioWidgetDataProvider_cache;
  v0[7] = OBJC_IVAR____TtC12MusicWidgets23RadioWidgetDataProvider_cache;
  sub_10001F520(v2 + v3, v1, type metadata accessor for RadioWidgetDataProvider.DiskCache);
  v4 = sub_10001BD34();
  sub_10001F5F8(v1, type metadata accessor for RadioWidgetDataProvider.DiskCache);
  if (v4)
  {

    v5 = v0[1];

    return v5(v4);
  }

  else
  {
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_10001BA78;

    return sub_10001EA4C();
  }
}

uint64_t sub_10001BA78(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10001BBD4, 0, 0);
  }
}

uint64_t sub_10001BBD4()
{
  if (v0[9])
  {
    v2 = v0[4];
    v1 = v0[5];
    v3 = v0[3];
    sub_10001F520(v0[2] + v0[7], v1, type metadata accessor for RadioWidgetDataProvider.DiskCache);
    v4 = (v1 + *(v2 + 20));
    v5 = *v4;
    v6 = v4[1];

    sub_10001DE14(v7, v3);
    v8 = type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList(0);
    (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
    sub_100073DB8(v5, v6, v3);
    sub_10001036C(v3, &qword_1006E0AE0, &qword_10057C4E0);
    sub_10001F5F8(v1, type metadata accessor for RadioWidgetDataProvider.DiskCache);
    v9 = v0[9];
  }

  else
  {
    v9 = 0;
  }

  v10 = v0[1];

  return v10(v9);
}

uint64_t sub_10001BD34()
{
  v73 = sub_10056CAA8();
  v1 = *(v73 - 8);
  __chkstk_darwin();
  v3 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v67 - v4;
  __chkstk_darwin();
  v7 = &v67 - v6;
  sub_100009DCC(&qword_1006E0AE0, &qword_10057C4E0);
  __chkstk_darwin();
  v9 = &v67 - v8;
  v10 = type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v67 - v14;
  __chkstk_darwin();
  v16 = &v67 - v15;
  v17 = type metadata accessor for RadioWidgetDataProvider.DiskCache(0);
  sub_100071644(*(v0 + *(v17 + 20)), *(v0 + *(v17 + 20) + 8), v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_10001036C(v9, &qword_1006E0AE0, &qword_10057C4E0);
    if (qword_1006DF900 != -1)
    {
      swift_once();
    }

    v18 = sub_10056DF88();
    sub_10000C49C(v18, qword_1006E0958);
    v19 = sub_10056DF68();
    v20 = sub_100573448();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Cache miss for station list.", v21, 2u);
    }

    return 0;
  }

  v68 = v10;
  v22 = v16;
  sub_10001F658(v9, v16);
  sub_10056CA68();
  v23 = [objc_opt_self() mainBundle];
  v24 = [v23 preferredLocalizations];

  v25 = sub_100572D28();
  if (v25[2])
  {
    v26 = v25[5];
    v69 = v25[4];
  }

  else
  {
    v69 = 0;
    v26 = 0;
  }

  v27 = v73;

  sub_10056C9D8();
  v72 = v7;
  v28 = sub_10056C9F8();
  v71 = *(v1 + 8);
  v71(v5, v27);
  v29 = v3;
  v30 = v13;
  if ((v28 & 1) == 0)
  {
    goto LABEL_21;
  }

  v31 = (v22 + *(v68 + 20));
  v32 = v31[1];
  if (v32)
  {
    if (v26 && (*v31 == v69 && v32 == v26 || (sub_100574498() & 1) != 0))
    {
      goto LABEL_16;
    }

LABEL_21:
    if (qword_1006DF900 != -1)
    {
      swift_once();
    }

    v47 = sub_10056DF88();
    sub_10000C49C(v47, qword_1006E0958);
    (*(v1 + 16))(v29, v72, v27);
    sub_10001F520(v22, v13, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);

    v48 = sub_10056DF68();
    v49 = sub_100573448();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v70 = v22;
      v51 = v50;
      v68 = swift_slowAlloc();
      v76 = v68;
      *v51 = 136446722;
      sub_10001FA34(&qword_1006DFD50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v52 = sub_100574408();
      v54 = v53;
      v71(v29, v27);
      v55 = sub_10008190C(v52, v54, &v76);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      v74 = v69;
      v75 = v26;
      sub_100009DCC(&qword_1006DFD58, &qword_10057B750);
      v56 = sub_100572978();
      v58 = sub_10008190C(v56, v57, &v76);

      *(v51 + 14) = v58;
      *(v51 + 22) = 2082;
      v59 = sub_10001DEE8();
      v61 = v60;
      sub_10001F5F8(v30, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
      v62 = sub_10008190C(v59, v61, &v76);

      *(v51 + 24) = v62;
      _os_log_impl(&_mh_execute_header, v48, v49, "Cache miss now %{public}s, expected localization %{public}s, with station list: %{public}s", v51, 0x20u);
      swift_arrayDestroy();

      v71(v72, v73);
      v63 = v70;
    }

    else
    {

      sub_10001F5F8(v30, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
      v64 = v71;
      v71(v29, v27);
      v64(v72, v27);
      v63 = v22;
    }

    sub_10001F5F8(v63, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
    return 0;
  }

  if (v26)
  {
    goto LABEL_21;
  }

LABEL_16:
  v33 = v27;
  if (qword_1006DF900 != -1)
  {
    swift_once();
  }

  v34 = sub_10056DF88();
  sub_10000C49C(v34, qword_1006E0958);
  v35 = v70;
  sub_10001F520(v22, v70, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);

  v36 = sub_10056DF68();
  v37 = sub_100573448();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v75 = v26;
    v76 = v39;
    *v38 = 136446466;
    v74 = v69;
    sub_100009DCC(&qword_1006DFD58, &qword_10057B750);
    v40 = sub_100572978();
    v42 = sub_10008190C(v40, v41, &v76);

    *(v38 + 4) = v42;
    *(v38 + 12) = 2082;
    v43 = sub_10001DEE8();
    v45 = v44;
    sub_10001F5F8(v35, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
    v46 = sub_10008190C(v43, v45, &v76);

    *(v38 + 14) = v46;
    _os_log_impl(&_mh_execute_header, v36, v37, "Using cached station list for %{public}s with %{public}s", v38, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10001F5F8(v35, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
  }

  v71(v72, v33);
  v66 = *(v22 + *(v68 + 24));

  sub_10001F5F8(v22, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
  return v66;
}

id sub_10001C6D4()
{
  v1 = v0;
  v2 = sub_100570D58();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + OBJC_IVAR____TtC12MusicWidgets23RadioWidgetDataProvider_cache;
  sub_10006AC28(0x6469576F69646152, 0xEB00000000746567, v0 + OBJC_IVAR____TtC12MusicWidgets23RadioWidgetDataProvider_cache);
  v7 = (v6 + *(type metadata accessor for RadioWidgetDataProvider.DiskCache(0) + 20));
  *v7 = 0x736E6F6974617453;
  v7[1] = 0xE90000000000005FLL;
  (*(v3 + 104))(v5, enum case for MusicDataRequest.ExecutionMethod.firstParty(_:), v2);
  sub_100570D68();
  v8 = [objc_opt_self() processInfo];
  v9 = [v8 processName];

  v10 = sub_1005728D8();
  v12 = v11;

  if (v10 == 0x646957636973754DLL && v12 == 0xEC00000073746567)
  {
  }

  else
  {
    v13 = sub_100574498();

    if ((v13 & 1) == 0)
    {
      return v1;
    }
  }

  if (qword_1006DF900 != -1)
  {
    swift_once();
  }

  v14 = sub_10056DF88();
  sub_10000C49C(v14, qword_1006E0958);
  v15 = sub_10056DF68();
  v16 = sub_100573448();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "running in widget process, disabling fallback cache", v17, 2u);
  }

  v18 = [objc_opt_self() defaultMediaLibrary];
  if ([v18 artworkDataSource])
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      [v19 setUsesFallbackCache:0];
    }

    swift_unknownObjectRelease();
  }

  result = [objc_opt_self() sharedStoreArtworkDataSource];
  if (result)
  {
    v21 = result;
    [result setUsesFallbackCache:0];

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10001CA30(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_100571F08();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_10001CAF0, 0, 0);
}

uint64_t sub_10001CAF0()
{
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_10001CBA0;
  v2 = v0[6];
  v3 = v0[2];

  return sub_10001CCB4(v3, v2);
}

uint64_t sub_10001CBA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10001CCB4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  sub_100009DCC(&qword_1006DFD40, &unk_10057B740);
  v2[8] = swift_task_alloc();
  v3 = sub_10056D5A8();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  type metadata accessor for ArtworkImage.Placeholder(0);
  v2[12] = swift_task_alloc();
  sub_100009DCC(&unk_1006DFD20, &unk_10057B720);
  v2[13] = swift_task_alloc();
  sub_100009DCC(qword_1006E1D50, &qword_10057CA90);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_10056C8A8();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();

  return _swift_task_switch(sub_10001CEF4, 0, 0);
}

uint64_t sub_10001CEF4()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v0[2] = sub_100571EE8();
  v0[3] = v4;
  sub_100571ED8();
  v5 = *(v2 + 48);
  if (v5(v3, 1, v1) == 1)
  {
    v6 = v0[16];
    v7 = v0[14];
    sub_10056C868();
    result = v5(v7, 1, v6);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v9 = v0[15];
    v10 = v0[16];
    (*(v0[17] + 32))(v0[18], v0[14], v10);
    if (v5(v9, 1, v10) != 1)
    {
      sub_10001036C(v0[15], qword_1006E1D50, &qword_10057CA90);
    }
  }

  else
  {
    (*(v0[17] + 32))(v0[18], v0[15], v0[16]);
  }

  v11 = v0[13];
  sub_100571EF8();
  v12 = sub_100571E58();
  v0[19] = v12;
  v13 = *(v12 - 8);
  v0[20] = v13;
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_10001036C(v0[13], &unk_1006DFD20, &unk_10057B720);
    v14 = v0[2];
    v15 = v0[3];
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[9];
    v19 = v0[10];
    v20 = v0[8];
    v0[23] = 0;
    v0[24] = v15;
    v0[25] = v14;
    v21 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
    (*(*(v21 - 8) + 56))(v16, 9, 11, v21);
    v0[26] = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
    v0[27] = v22;
    sub_100571E98();
    v0[28] = sub_10056D578();
    v0[29] = v23;
    (*(v19 + 8))(v17, v18);
    sub_100009DCC(&qword_1006DFD48, &unk_10057F0E0);
    v24 = swift_allocObject();
    v0[30] = v24;
    *(v24 + 16) = xmmword_10057B510;
    sub_100571EB8();
    *(v24 + 32) = TextBadge.init(for:isPlayable:)(v20, 1);
    v25 = swift_task_alloc();
    v0[31] = v25;
    *v25 = v0;
    v25[1] = sub_10001D5A8;

    return sub_100074B74();
  }

  else
  {
    v26 = swift_task_alloc();
    v0[21] = v26;
    *v26 = v0;
    v26[1] = sub_10001D29C;

    return sub_10003E58C(150.0);
  }
}

uint64_t sub_10001D29C(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 104);
  *(*v1 + 176) = a1;

  (*(v2 + 8))(v4, v3);

  return _swift_task_switch(sub_10001D3FC, 0, 0);
}

uint64_t sub_10001D3FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];
  v0[23] = v0[22];
  v0[24] = v2;
  v0[25] = v1;
  v8 = sub_100009DCC(&qword_1006DFD30, &unk_10057B730);
  (*(*(v8 - 8) + 56))(v3, 9, 11, v8);
  v0[26] = _s8MusicKit7StationV0A4CoreE9catalogIDAA0a4ItemF0VSgvg_0();
  v0[27] = v9;
  sub_100571E98();
  v0[28] = sub_10056D578();
  v0[29] = v10;
  (*(v6 + 8))(v4, v5);
  sub_100009DCC(&qword_1006DFD48, &unk_10057F0E0);
  v11 = swift_allocObject();
  v0[30] = v11;
  *(v11 + 16) = xmmword_10057B510;
  sub_100571EB8();
  *(v11 + 32) = TextBadge.init(for:isPlayable:)(v7, 1);
  v12 = swift_task_alloc();
  v0[31] = v12;
  *v12 = v0;
  v12[1] = sub_10001D5A8;

  return sub_100074B74();
}

uint64_t sub_10001D5A8(char a1)
{
  *(*v1 + 256) = a1;

  return _swift_task_switch(sub_10001D6A8, 0, 0);
}

uint64_t sub_10001D6A8()
{
  v30 = *(v0 + 256);
  v28 = *(v0 + 232);
  v29 = *(v0 + 240);
  v26 = *(v0 + 216);
  v27 = *(v0 + 224);
  v25 = *(v0 + 208);
  v1 = *(v0 + 192);
  v33 = *(v0 + 184);
  v2 = *(v0 + 136);
  v22 = *(v0 + 200);
  v23 = *(v0 + 144);
  v3 = *(v0 + 128);
  v24 = *(v0 + 96);
  v4 = *(v0 + 56);
  v5 = *(v0 + 48);
  v32 = *(v0 + 40);
  v6 = *(v0 + 32);
  v7 = sub_10056CAA8();
  v8 = *(*(v7 - 8) + 56);
  v8(v4, 1, 1, v7);
  v8(v5, 1, 1, v7);
  v9 = type metadata accessor for WidgetMusicItem(0);
  v31 = v9[25];
  *&v6[v31] = 0;
  *&v6[v9[26]] = _swiftEmptyArrayStorage;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v6 + 2) = v22;
  *(v6 + 3) = v1;
  *(v6 + 4) = 0;
  *(v6 + 5) = 0;
  (*(v2 + 16))(&v6[v9[7]], v23, v3);
  sub_10001F520(v24, &v6[v9[23]], type metadata accessor for ArtworkImage.Placeholder);
  *&v6[v9[24]] = 0x3FF0000000000000;
  v6[v9[8]] = 8;
  v10 = &v6[v9[9]];
  *v10 = v25;
  *(v10 + 1) = v26;
  v11 = &v6[v9[10]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v6[v9[11]];
  *v12 = v27;
  *(v12 + 1) = v28;
  v13 = &v6[v9[12]];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v6[v9[13]];
  *v14 = 0;
  *(v14 + 1) = 0;
  v15 = &v6[v9[14]];
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v6[v9[15]] = v29;
  v6[v9[16]] = v30;
  sub_10001F588(v4, &v6[v9[17]]);
  sub_10001F588(v5, &v6[v9[18]]);
  v16 = &v6[v9[19]];
  *v16 = 0;
  *(v16 + 1) = 0;
  *&v6[v9[20]] = _swiftEmptyArrayStorage;
  v17 = &v6[v9[21]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  v18 = &v6[v9[22]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v18[24] = 1;
  sub_1000396D8(_swiftEmptyArrayStorage);
  v19 = sub_100571F08();
  (*(*(v19 - 8) + 8))(v32, v19);
  sub_10001036C(v5, &unk_1006E1E90, &qword_10057C550);
  sub_10001036C(v4, &unk_1006E1E90, &qword_10057C550);
  sub_10001F5F8(v24, type metadata accessor for ArtworkImage.Placeholder);
  (*(v2 + 8))(v23, v3);
  *&v6[v31] = v33;

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10001DA48()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, qword_1006E0958);
  sub_10000C49C(v0, qword_1006E0958);
  return static Logger.music(_:)(0xD000000000000017, 0x800000010057C490);
}

uint64_t sub_10001DAAC()
{
  sub_10001F5F8(v0 + OBJC_IVAR____TtC12MusicWidgets23RadioWidgetDataProvider_cache, type metadata accessor for RadioWidgetDataProvider.DiskCache);

  return swift_deallocClassInstance();
}

uint64_t sub_10001DB4C(uint64_t a1)
{
  result = type metadata accessor for RadioWidgetDataProvider.DiskCache(319);
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

uint64_t sub_10001DC10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WidgetDiskCache(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10001DCE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for WidgetDiskCache(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10001DDA0(uint64_t a1)
{
  result = type metadata accessor for WidgetDiskCache(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10001DE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10056CA68();
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 preferredLocalizations];

  v6 = sub_100572D28();
  if (v6[2])
  {
    v8 = v6[4];
    v7 = v6[5];
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  result = type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList(0);
  v10 = (a2 + *(result + 20));
  *v10 = v8;
  v10[1] = v7;
  *(a2 + *(result + 24)) = a1;
  return result;
}

uint64_t sub_10001DEE8()
{
  v1 = sub_10056CAA8();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v13, "StationList(");
  BYTE5(v13[1]) = 0;
  HIWORD(v13[1]) = -5120;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100573ED8(17);

  strcpy(&v12, "fetchDate: ");
  BYTE5(v12._object) = 0;
  HIWORD(v12._object) = -5120;
  sub_10001FA34(&qword_1006DFD50, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v14._countAndFlagsBits = sub_100574408();
  sub_100572A98(v14);

  v15._countAndFlagsBits = 2108450;
  v15._object = 0xE300000000000000;
  sub_100572A98(v15);
  sub_100572A98(v12);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100573ED8(20);

  v12._countAndFlagsBits = 0x617A696C61636F6CLL;
  v12._object = 0xEF22203A6E6F6974;
  v5 = (v0 + *(type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList(0) + 20));
  v6 = v5[1];
  v11[0] = *v5;
  v11[1] = v6;

  sub_100009DCC(&qword_1006DFD58, &qword_10057B750);
  v16._countAndFlagsBits = sub_100572978();
  sub_100572A98(v16);

  v17._countAndFlagsBits = 2108450;
  v17._object = 0xE300000000000000;
  sub_100572A98(v17);
  sub_100572A98(v12);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100573ED8(23);

  v12._countAndFlagsBits = 0xD000000000000012;
  v12._object = 0x80000001005AA010;
  sub_10056C9D8();
  v7 = sub_100574408();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  v18._countAndFlagsBits = v7;
  v18._object = v9;
  sub_100572A98(v18);

  v19._countAndFlagsBits = 2108450;
  v19._object = 0xE300000000000000;
  sub_100572A98(v19);
  sub_100572A98(v12);

  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_100573ED8(16);

  strcpy(&v12, "stations: ");
  HIDWORD(v12._object) = -352321536;
  type metadata accessor for WidgetMusicItem(0);
  v20._countAndFlagsBits = sub_100572D38();
  sub_100572A98(v20);

  v21._countAndFlagsBits = 2108450;
  v21._object = 0xE300000000000000;
  sub_100572A98(v21);
  sub_100572A98(v12);

  v22._countAndFlagsBits = 41;
  v22._object = 0xE100000000000000;
  sub_100572A98(v22);
  return v13[0];
}

uint64_t sub_10001E294(void *a1)
{
  v3 = v1;
  v5 = sub_100009DCC(&qword_1006E0BA0, &unk_10057C5E0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v11[-v7];
  sub_10000C8CC(a1, a1[3]);
  sub_10001F944();
  sub_100574718();
  v14 = 0;
  sub_10056CAA8();
  sub_10001FA34(&qword_1006DFF90, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_100574368();
  if (!v2)
  {
    v9 = type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList(0);
    v13 = 1;
    sub_100574308();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    sub_100009DCC(&qword_1006DFF98, &qword_10057BB20);
    sub_10001F998(&qword_1006DFFA0, &qword_1006DFFA8, &unk_10057DDA4, &protocol conformance descriptor for <A> [A]);
    sub_100574368();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10001E4E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_10056CAA8();
  v25 = *(v4 - 8);
  __chkstk_darwin();
  v26 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_100009DCC(&qword_1006E0BB0, &qword_10057C5F0);
  v24 = *(v27 - 8);
  __chkstk_darwin();
  v7 = &v21 - v6;
  v8 = type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList(0);
  __chkstk_darwin();
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C8CC(a1, a1[3]);
  sub_10001F944();
  sub_100574708();
  if (v2)
  {
    return sub_100010474(a1);
  }

  v12 = v24;
  v11 = v25;
  v21 = v10;
  v22 = a1;
  v31 = 0;
  sub_10001FA34(&qword_1006DFFB8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v14 = v26;
  v13 = v27;
  sub_1005742D8();
  (*(v11 + 32))(v21, v14, v4);
  v30 = 1;
  v15 = sub_100574278();
  v16 = &v21[*(v8 + 20)];
  *v16 = v15;
  v16[1] = v17;
  sub_100009DCC(&qword_1006DFF98, &qword_10057BB20);
  v29 = 2;
  sub_10001F998(&qword_1006DFFC0, &qword_1006DFFC8, &unk_10057DDCC, &protocol conformance descriptor for <A> [A]);
  sub_1005742D8();
  (*(v12 + 8))(v7, v13);
  v18 = *(v8 + 24);
  v19 = v21;
  *&v21[v18] = v28;
  sub_10001F520(v19, v23, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
  sub_100010474(v22);
  return sub_10001F5F8(v19, type metadata accessor for RadioWidgetDataProvider.DiskCache.StationList);
}

uint64_t sub_10001E910()
{
  v1 = 0x617A696C61636F6CLL;
  if (*v0 != 1)
  {
    v1 = 0x736E6F6974617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461446863746566;
  }
}

uint64_t sub_10001E978@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10001FB94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10001E9A0(uint64_t a1)
{
  v2 = sub_10001F944();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001E9DC(uint64_t a1)
{
  v2 = sub_10001F944();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001EA4C()
{
  v1 = sub_100009DCC(&qword_1006E0AE8, &qword_10057C4F0);
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  v2 = sub_100009DCC(&qword_1006E0AF0, &qword_10057C4F8);
  v0[6] = v2;
  v0[7] = *(v2 - 8);
  v0[8] = swift_task_alloc();
  v3 = sub_100570D78();
  v0[9] = v3;
  v0[10] = *(v3 - 8);
  v0[11] = swift_task_alloc();
  sub_100009DCC(&qword_1006E0AF8, &qword_10057C500);
  v0[12] = swift_task_alloc();
  v4 = sub_100009DCC(&qword_1006E0B00, &qword_10057C508);
  v0[13] = v4;
  v0[14] = *(v4 - 8);
  v0[15] = swift_task_alloc();

  return _swift_task_switch(sub_10001EC84, 0, 0);
}

uint64_t sub_10001EC84()
{
  v1 = v0[12];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  swift_getKeyPath();
  v5 = enum case for Station.FeaturedEditorialKind.appleMusicLiveRadio(_:);
  v6 = sub_100571EA8();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v1, v5, v6);
  (*(v7 + 56))(v1, 0, 1, v6);
  sub_1005710A8();
  (*(v3 + 104))(v2, enum case for MusicDataRequest.Source.widgets(_:), v4);
  sub_1005710C8();
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_10001EE28;
  v9 = v0[13];
  v10 = v0[8];

  return MusicCatalogResourceRequest.response()(v10, v9);
}

uint64_t sub_10001EE28()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_10001F2B8;
  }

  else
  {
    v2 = sub_10001EF3C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001EF3C()
{
  v1 = v0[5];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  sub_1005711F8();
  (*(v3 + 16))(v2, v1, v4);
  v5 = sub_100074738(6);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v0[18] = v5;
  v12 = swift_task_alloc();
  v0[19] = v12;
  *v12 = v0;
  v12[1] = sub_10001F068;

  return sub_10006C840(&unk_10057C540, 0, v5, v7, v9, v11);
}

uint64_t sub_10001F068(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    swift_unknownObjectRelease();
    *(v4 + 160) = a1;

    return _swift_task_switch(sub_10001F1AC, 0, 0);
  }
}

uint64_t sub_10001F1AC()
{
  v1 = v0[20];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[6];
  (*(v0[3] + 8))(v0[5], v0[2]);
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_10001F2B8()
{
  (*(v0[14] + 8))(v0[15], v0[13]);
  if (qword_1006DF900 != -1)
  {
    swift_once();
  }

  v1 = sub_10056DF88();
  sub_10000C49C(v1, qword_1006E0958);
  swift_errorRetain();
  v2 = sub_10056DF68();
  v3 = sub_100573428();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138543362;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Station request failed with %{public}@", v4, 0xCu);
    sub_10001036C(v5, &qword_1006DFD00, &qword_10057E570);
  }

  else
  {
  }

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_10001F520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10001F588(uint64_t a1, uint64_t a2)
{
  v4 = sub_100009DCC(&unk_1006E1E90, &qword_10057C550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}