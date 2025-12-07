uint64_t sub_1000D1870()
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

uint64_t sub_1000D18FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000D65A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D1930(uint64_t a1)
{
  v2 = sub_1000D5304();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D196C(uint64_t a1)
{
  v2 = sub_1000D5304();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingHistory.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100270220, &qword_1001F1FF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10009BB74(a1, a1[3]);
  sub_1000D5304();
  sub_1001C6E78();
  LOBYTE(v15) = 0;
  sub_1001C6C98();
  if (!v2)
  {
    v9 = type metadata accessor for ReadingHistory.State(0);
    LOBYTE(v15) = 1;
    type metadata accessor for ReadingHistory.Streak(0);
    sub_1000D51E8(&qword_100270230, type metadata accessor for ReadingHistory.Streak, &protocol conformance descriptor for ReadingHistory.Streak);
    sub_1001C6C58();
    v10 = (v3 + *(v9 + 24));
    v11 = *(v10 + 16);
    v15 = *v10;
    v16 = v11;
    v14 = 2;
    sub_1000D4F40();
    sub_1001C6CA8();
    *&v15 = *(v3 + *(v9 + 28));
    v14 = 3;
    sub_100084528(&qword_100270238, &qword_1001F2000);
    sub_1000D5400(&qword_100270240, sub_1000D5358, &protocol conformance descriptor for <A> [A]);
    sub_1001C6CA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ReadingHistory.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  __chkstk_darwin(v3 - 8);
  v25 = &v21 - v4;
  v27 = sub_100084528(&qword_100270250, &qword_1001F2008);
  v24 = *(v27 - 8);
  __chkstk_darwin(v27);
  v6 = &v21 - v5;
  v7 = type metadata accessor for ReadingHistory.State(0);
  v8 = __chkstk_darwin(v7);
  v10 = (&v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v8 + 20);
  v12 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  sub_10009BB74(a1, a1[3]);
  sub_1000D5304();
  v26 = v6;
  v13 = v28;
  sub_1001C6E58();
  if (v13)
  {
    sub_10008E7BC(a1);
    return sub_10008875C(v10 + v11, &qword_10026F508, &qword_1001F1150);
  }

  else
  {
    v22 = a1;
    v28 = v11;
    v14 = v24;
    v15 = v25;
    LOBYTE(v29) = 0;
    v16 = v26;
    v17 = v27;
    *v10 = sub_1001C6C18();
    LOBYTE(v29) = 1;
    sub_1000D51E8(&qword_100270258, type metadata accessor for ReadingHistory.Streak, &protocol conformance descriptor for ReadingHistory.Streak);
    sub_1001C6BD8();
    sub_1000CFF8C(v15, v10 + v28);
    v31 = 2;
    sub_1000D53AC();
    sub_1001C6C28();
    v18 = v30;
    v19 = v10 + *(v7 + 24);
    *v19 = v29;
    v19[16] = v18;
    sub_100084528(&qword_100270238, &qword_1001F2000);
    v31 = 3;
    sub_1000D5400(&qword_100270268, sub_1000D5478, &protocol conformance descriptor for <A> [A]);
    sub_1001C6C28();
    (*(v14 + 8))(v16, v17);
    *(v10 + *(v7 + 28)) = v29;
    sub_1000D54CC(v10, v23, type metadata accessor for ReadingHistory.State);
    sub_10008E7BC(v22);
    return sub_1000D5534(v10, type metadata accessor for ReadingHistory.State);
  }
}

uint64_t sub_1000D20CC(uint64_t a1)
{
  v2 = sub_1000D5594();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D2108(uint64_t a1)
{
  v2 = sub_1000D5594();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D21D0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1001C4CA8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReadingHistory.Notification.AddFakeSession.init(date:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1001C4CA8();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for ReadingHistory.Notification.AddFakeSession(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t sub_1000D22D8()
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

uint64_t sub_1000D230C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1001C6D08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1001C6D08();

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

uint64_t sub_1000D23E8(uint64_t a1)
{
  v2 = sub_1000D5608();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D2424(uint64_t a1)
{
  v2 = sub_1000D5608();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ReadingHistory.Notification.AddFakeSession.encode(to:)(void *a1)
{
  v3 = sub_100084528(&qword_100270288, &qword_1001F2018);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_10009BB74(a1, a1[3]);
  sub_1000D5608();
  sub_1001C6E78();
  v8[15] = 0;
  sub_1001C4CA8();
  sub_1000D51E8(&qword_10026F970, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  sub_1001C6CA8();
  if (!v1)
  {
    type metadata accessor for ReadingHistory.Notification.AddFakeSession(0);
    v8[14] = 1;
    sub_1001C6C88();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ReadingHistory.Notification.AddFakeSession.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1001C4CA8();
  v24 = *(v4 - 8);
  v25 = v4;
  __chkstk_darwin(v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100084528(&qword_100270298, &qword_1001F2020);
  v23 = *(v26 - 8);
  __chkstk_darwin(v26);
  v8 = &v20 - v7;
  v9 = type metadata accessor for ReadingHistory.Notification.AddFakeSession(0);
  __chkstk_darwin(v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009BB74(a1, a1[3]);
  sub_1000D5608();
  sub_1001C6E58();
  if (v2)
  {
    return sub_10008E7BC(a1);
  }

  v21 = v11;
  v12 = v23;
  v13 = v24;
  v28 = 0;
  sub_1000D51E8(&qword_10026F980, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v14 = v25;
  sub_1001C6C28();
  (*(v13 + 32))(v21, v6, v14);
  v27 = 1;
  sub_1001C6C08();
  v16 = v15;
  (*(v12 + 8))(v8, v26);
  v18 = v21;
  v17 = v22;
  *&v21[*(v9 + 20)] = v16;
  sub_1000D54CC(v18, v17, type metadata accessor for ReadingHistory.Notification.AddFakeSession);
  sub_10008E7BC(a1);
  return sub_1000D5534(v18, type metadata accessor for ReadingHistory.Notification.AddFakeSession);
}

uint64_t sub_1000D2994(uint64_t a1)
{
  v2 = sub_1000D565C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D29D0(uint64_t a1)
{
  v2 = sub_1000D565C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000D2A50(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = sub_100084528(a2, a3);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_10009BB74(a1, a1[3]);
  a4();
  sub_1001C6E78();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000D2BB4(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = sub_100084528(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v14 - v11;
  sub_10009BB74(a1, a1[3]);
  a6();
  sub_1001C6E78();
  return (*(v10 + 8))(v12, v9);
}

BDSReadingHistoryDayInfo __swiftcall ReadingHistory.Day.toInfo()()
{
  v3 = v2;
  v4 = v1;
  v5 = v0;
  v6 = objc_allocWithZone(BDSReadingHistoryDayInfo);

  v7 = [v6 initWithReadingTime:v5 goal:v4 isStreakDay:v3 & 1];
  result._goal = v10;
  result._readingTime = v9;
  result.super.isa = v7;
  result._isStreakDay = v8;
  return result;
}

id static ReadingHistory.Day.from(info:)(void *a1)
{
  v2 = [a1 readingTime];
  [a1 goal];
  [a1 isStreakDay];
  return v2;
}

BDSReadingHistoryDayEntryInfo __swiftcall ReadingHistory.DayEntry.toInfo()()
{
  v1 = [objc_allocWithZone(BDSReadingHistoryDayInfo) initWithReadingTime:*(v0 + 16) goal:*(v0 + 24) isStreakDay:*(v0 + 32) & 1];
  v2 = objc_allocWithZone(BDSReadingHistoryDayEntryInfo);
  v3 = sub_1001C5FE8();
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
  v5 = sub_1001C6018();
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
  isa = sub_1001C4C38().super.isa;
  v4 = [v2 initWithEndDate:isa length:v1];

  v7 = v4;
  result._length = v6;
  result._endDate = v5;
  result.super.isa = v7;
  return result;
}

uint64_t static ReadingHistory.Streak.from(info:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 endDate];
  sub_1001C4C78();

  v5 = [a1 length];
  result = type metadata accessor for ReadingHistory.Streak(0);
  *(a2 + *(result + 20)) = v5;
  return result;
}

void __swiftcall ReadingHistory.State.toInfo()(BDSReadingHistoryStateInfo *__return_ptr retstr)
{
  v2 = v1;
  v3 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  __chkstk_darwin(v3 - 8);
  v5 = &v31 - v4;
  v6 = *v2;
  v7 = type metadata accessor for ReadingHistory.State(0);
  sub_1000D5230(v2 + v7[5], v5);
  v8 = type metadata accessor for ReadingHistory.Streak(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_10008875C(v5, &qword_10026F508, &qword_1001F1150);
    v9 = 0;
  }

  else
  {
    v10 = *&v5[*(v8 + 20)];
    v11 = objc_allocWithZone(BDSReadingHistoryStreakInfo);
    isa = sub_1001C4C38().super.isa;
    v9 = [v11 initWithEndDate:isa length:v10];

    sub_1000D5534(v5, type metadata accessor for ReadingHistory.Streak);
  }

  v13 = v2 + v7[6];
  v14 = BCCloudDataManager;
  v15 = [objc_allocWithZone(BDSReadingHistoryDayInfo) initWithReadingTime:*v13 goal:*(v13 + 1) isStreakDay:v13[16]];
  v16 = v15;
  v17 = *(v2 + v7[7]);
  v18 = *(v17 + 16);
  if (v18)
  {
    v31 = v15;
    v32 = v9;
    v33 = v6;
    v34 = _swiftEmptyArrayStorage;
    sub_1001C6A78();
    v19 = (v17 + 64);
    do
    {
      v20 = *(v19 - 2);
      v21 = *(v19 - 1);
      v22 = *v19;
      v19 += 40;
      v23 = v14;
      v24 = objc_allocWithZone(&v14[80]);

      v25 = v24;
      v14 = v23;
      v26 = [v25 initWithReadingTime:v20 goal:v21 isStreakDay:v22];
      v27 = objc_allocWithZone(BDSReadingHistoryDayEntryInfo);
      v28 = sub_1001C5FE8();
      [v27 initWithDate:v28 day:v26];

      sub_1001C6A48();
      sub_1001C6A88();
      sub_1001C6A98();
      sub_1001C6A58();
      --v18;
    }

    while (v18);
    v6 = v33;
    v16 = v31;
    v9 = v32;
  }

  v29 = objc_allocWithZone(BDSReadingHistoryStateInfo);
  sub_1000D56B0();
  v30 = sub_1001C6288().super.isa;

  [v29 initWithCurrentStreak:v6 longestStreak:v9 today:v16 readingHistory:v30];
}

uint64_t static ReadingHistory.State.from(info:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  __chkstk_darwin(v4 - 8);
  v6 = &v42 - v5;
  v7 = [a1 currentStreak];
  v8 = [a1 longestStreak];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 endDate];
    sub_1001C4C78();

    v11 = [v9 length];
    v12 = type metadata accessor for ReadingHistory.Streak(0);
    *&v6[*(v12 + 20)] = v11;
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for ReadingHistory.Streak(0);
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
  }

  v14 = [a1 today];
  v15 = [v14 readingTime];
  v16 = [v14 goal];
  v17 = [v14 isStreakDay];

  v18 = [a1 readingHistory];
  sub_1000D56B0();
  v19 = sub_1001C6298();

  if (!(v19 >> 62))
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_6;
    }

LABEL_16:

    v23 = _swiftEmptyArrayStorage;
LABEL_17:
    v38 = type metadata accessor for ReadingHistory.State(0);
    v39 = v38[5];
    v40 = type metadata accessor for ReadingHistory.Streak(0);
    (*(*(v40 - 8) + 56))(&a2[v39], 1, 1, v40);
    *a2 = v7;
    result = sub_1000CFF8C(v6, &a2[v39]);
    v41 = &a2[v38[6]];
    *v41 = v15;
    *(v41 + 1) = v16;
    v41[16] = v17;
    *&a2[v38[7]] = v23;
    return result;
  }

  v20 = sub_1001C6B38();
  if (!v20)
  {
    goto LABEL_16;
  }

LABEL_6:
  v51 = _swiftEmptyArrayStorage;
  result = sub_1000D38B8(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v49 = v20;
    v50 = v19;
    HIDWORD(v42) = v17;
    v43 = v16;
    v44 = v15;
    v45 = v7;
    v46 = v6;
    v22 = 0;
    v23 = v51;
    v24 = v19;
    v47 = a2;
    v48 = v19 & 0xC000000000000001;
    do
    {
      if (v48)
      {
        v25 = sub_1001C69F8();
      }

      else
      {
        v25 = *(v24 + 8 * v22 + 32);
      }

      v26 = v25;
      v27 = [v25 date];
      v28 = sub_1001C6018();
      v30 = v29;

      v31 = [v26 day];
      v32 = [v31 readingTime];
      v33 = [v31 goal];
      v34 = [v31 isStreakDay];

      v51 = v23;
      v36 = v23[2];
      v35 = v23[3];
      if (v36 >= v35 >> 1)
      {
        sub_1000D38B8((v35 > 1), v36 + 1, 1);
        v23 = v51;
      }

      ++v22;
      v23[2] = v36 + 1;
      v37 = &v23[5 * v36];
      v37[4] = v28;
      v37[5] = v30;
      v37[6] = v32;
      v37[7] = v33;
      *(v37 + 64) = v34;
      v24 = v50;
    }

    while (v49 != v22);

    v6 = v46;
    a2 = v47;
    v15 = v44;
    v7 = v45;
    v16 = v43;
    LOBYTE(v17) = BYTE4(v42);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t BDSReadingHistoryStreakInfo.toStreak()@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 endDate];
  sub_1001C4C78();

  v4 = [v1 length];
  result = type metadata accessor for ReadingHistory.Streak(0);
  *(a1 + *(result + 20)) = v4;
  return result;
}

bookdatastored::ReadingHistory::Day __swiftcall BDSReadingHistoryDayInfo.toDay()()
{
  v1 = [v0 readingTime];
  v2 = [v0 goal];
  v3 = [v0 isStreakDay];
  v4 = v1;
  v5 = v2;
  result.goal = v5;
  result.readingTime = v4;
  result.isStreakDay = v3;
  return result;
}

char *sub_1000D3814(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D3A68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D3834(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D3B90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000D3854(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D425C(a1, a2, a3, *v3, &qword_10026F778, &qword_1001F13A8, _s21PriceDropNotificationVMa);
  *v3 = result;
  return result;
}

char *sub_1000D3898(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D3CBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D38B8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D3F18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000D38D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D425C(a1, a2, a3, *v3, &qword_100270570, &unk_1001F2BA0, &type metadata accessor for CKSyncEngine.PendingDatabaseChange);
  *v3 = result;
  return result;
}

void *sub_1000D391C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D425C(a1, a2, a3, *v3, &qword_100273D10, &unk_1001F2B40, _s8CardItemVMa);
  *v3 = result;
  return result;
}

char *sub_1000D3960(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D4034(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D3980(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D4140(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000D39A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D425C(a1, a2, a3, *v3, &qword_10026F780, &qword_1001F13B0, _s4DealVMa);
  *v3 = result;
  return result;
}

void *sub_1000D39E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D425C(a1, a2, a3, *v3, &qword_10026F768, &unk_1001F2B60, _s11TrackedItemVMa);
  *v3 = result;
  return result;
}

char *sub_1000D3A28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D445C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D3A48(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000D4560(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000D3A68(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_100270558, &qword_1001F2B78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000D3B90(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_10026F7B8, &qword_1001F2B70);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000D3CBC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_10026F7B0, &unk_1001F13E0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000D3DEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_100270578, &unk_1001F5230);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000D3F18(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_10026F920, &qword_1001F2BB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000D4034(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_100270550, &qword_1001F2B38);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000D4140(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_10026F770, &qword_1001F13A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000D425C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100084528(a5, a6);
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

char *sub_1000D445C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_100270548, &qword_1001F2B30);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1000D4560(char *result, int64_t a2, char a3, char *a4)
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
    sub_100084528(&qword_100270540, &qword_1001F2B28);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1000D46AC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100084528(a5, a6);
  v16 = *(sub_100084528(a7, a8) - 8);
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
  v21 = *(sub_100084528(a7, a8) - 8);
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

uint64_t _s14bookdatastored14ReadingHistoryO5StateV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ReadingHistory.Streak(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  __chkstk_darwin(v8 - 8);
  v10 = &v29 - v9;
  v11 = sub_100084528(&qword_100270580, &qword_1001F2BB8);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_13;
  }

  v14 = type metadata accessor for ReadingHistory.State(0);
  v15 = v14[5];
  v16 = *(v11 + 48);
  sub_1000D5230(a1 + v15, v13);
  sub_1000D5230(a2 + v15, &v13[v16]);
  v17 = *(v5 + 48);
  if (v17(v13, 1, v4) != 1)
  {
    sub_1000D5230(v13, v10);
    if (v17(&v13[v16], 1, v4) != 1)
    {
      sub_1000D6720(&v13[v16], v7);
      if (sub_1001C4C68())
      {
        v26 = *(v4 + 20);
        v27 = *&v10[v26];
        v28 = *&v7[v26];
        sub_1000D5534(v7, type metadata accessor for ReadingHistory.Streak);
        sub_1000D5534(v10, type metadata accessor for ReadingHistory.Streak);
        sub_10008875C(v13, &qword_10026F508, &qword_1001F1150);
        if (v27 == v28)
        {
          goto LABEL_5;
        }

LABEL_13:
        v18 = 0;
        return v18 & 1;
      }

      sub_1000D5534(v7, type metadata accessor for ReadingHistory.Streak);
      sub_1000D5534(v10, type metadata accessor for ReadingHistory.Streak);
      v23 = &qword_10026F508;
      v24 = &qword_1001F1150;
LABEL_12:
      sub_10008875C(v13, v23, v24);
      goto LABEL_13;
    }

    sub_1000D5534(v10, type metadata accessor for ReadingHistory.Streak);
LABEL_11:
    v23 = &qword_100270580;
    v24 = &qword_1001F2BB8;
    goto LABEL_12;
  }

  if (v17(&v13[v16], 1, v4) != 1)
  {
    goto LABEL_11;
  }

  sub_10008875C(v13, &qword_10026F508, &qword_1001F1150);
LABEL_5:
  v18 = 0;
  v19 = v14[6];
  v20 = a1 + v19;
  v21 = *(a1 + v19);
  v22 = a2 + v19;
  if (v21 == *v22 && *(v20 + 1) == *(v22 + 1) && ((v20[16] ^ v22[16]) & 1) == 0)
  {
    v18 = sub_100194238(*(a1 + v14[7]), *(a2 + v14[7]));
  }

  return v18 & 1;
}

uint64_t sub_1000D4C00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54676E6964616572 && a2 == 0xEB00000000656D69;
  if (v4 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1818324839 && a2 == 0xE400000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B61657274537369 && a2 == 0xEB00000000796144)
  {

    return 2;
  }

  else
  {
    v6 = sub_1001C6D08();

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

uint64_t sub_1000D4D20(void *a1)
{
  v2 = sub_100084528(&qword_100270590, &qword_1001F2BC8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10009BB74(a1, a1[3]);
  sub_1000D04B0();
  sub_1001C6E58();
  v11 = 0;
  v6 = sub_1001C6C18();
  v10 = 1;
  sub_1001C6C18();
  v9 = 2;
  sub_1001C6BF8();
  (*(v3 + 8))(v5, v2);
  sub_10008E7BC(a1);
  return v6;
}

unint64_t sub_1000D4EEC()
{
  result = qword_1002701F8;
  if (!qword_1002701F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002701F8);
  }

  return result;
}

unint64_t sub_1000D4F40()
{
  result = qword_100270200;
  if (!qword_100270200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270200);
  }

  return result;
}

uint64_t sub_1000D4F94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100084528(&qword_100270588, &qword_1001F2BC0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_10009BB74(a1, a1[3]);
  sub_1000D4EEC();
  sub_1001C6E58();
  if (v2)
  {
    return sub_10008E7BC(a1);
  }

  LOBYTE(v18) = 0;
  v9 = sub_1001C6BE8();
  v11 = v10;
  v12 = v9;
  v21 = 1;
  sub_1000D53AC();
  sub_1001C6C28();
  (*(v6 + 8))(v8, v5);
  v13 = v18;
  v14 = v19;
  v15 = v20;
  result = sub_10008E7BC(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  return result;
}

unint64_t sub_1000D5194()
{
  result = qword_100270210;
  if (!qword_100270210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270210);
  }

  return result;
}

uint64_t sub_1000D51E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000D5230(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D52A0()
{
  result = qword_10026F850;
  if (!qword_10026F850)
  {
    sub_1000885AC(&unk_10026FED0, &unk_1001F1450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10026F850);
  }

  return result;
}

unint64_t sub_1000D5304()
{
  result = qword_100270228;
  if (!qword_100270228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270228);
  }

  return result;
}

unint64_t sub_1000D5358()
{
  result = qword_100270248;
  if (!qword_100270248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270248);
  }

  return result;
}

unint64_t sub_1000D53AC()
{
  result = qword_100270260;
  if (!qword_100270260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270260);
  }

  return result;
}

uint64_t sub_1000D5400(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000885AC(&qword_100270238, &qword_1001F2000);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000D5478()
{
  result = qword_100270270;
  if (!qword_100270270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270270);
  }

  return result;
}

uint64_t sub_1000D54CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D5534(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000D5594()
{
  result = qword_100270280;
  if (!qword_100270280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270280);
  }

  return result;
}

unint64_t sub_1000D5608()
{
  result = qword_100270290;
  if (!qword_100270290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270290);
  }

  return result;
}

unint64_t sub_1000D565C()
{
  result = qword_1002702A8;
  if (!qword_1002702A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002702A8);
  }

  return result;
}

unint64_t sub_1000D56B0()
{
  result = qword_1002702B0;
  if (!qword_1002702B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1002702B0);
  }

  return result;
}

unint64_t sub_1000D5700()
{
  result = qword_1002702B8;
  if (!qword_1002702B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002702B8);
  }

  return result;
}

unint64_t sub_1000D5758()
{
  result = qword_1002702C0;
  if (!qword_1002702C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002702C0);
  }

  return result;
}

unint64_t sub_1000D5840()
{
  result = qword_1002702D8;
  if (!qword_1002702D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002702D8);
  }

  return result;
}

unint64_t sub_1000D5898()
{
  result = qword_1002702E0;
  if (!qword_1002702E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002702E0);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ReadingGoals.StateChange(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
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

__n128 sub_1000D59B8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000D59CC(uint64_t a1, int a2)
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

uint64_t sub_1000D5A14(uint64_t result, int a2, int a3)
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

void sub_1000D5AC4(uint64_t a1)
{
  sub_1000B331C(319);
  if (v1 <= 0x3F)
  {
    sub_1000D5B60();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000D5B60()
{
  if (!qword_1002703E0)
  {
    v0 = sub_1001C62F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1002703E0);
    }
  }
}

uint64_t sub_1000D5BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C4CA8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000D5C74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001C4CA8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000D5CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1001C4CA8();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
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

unint64_t sub_1000D5F24()
{
  result = qword_1002704A8;
  if (!qword_1002704A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704A8);
  }

  return result;
}

unint64_t sub_1000D5F7C()
{
  result = qword_1002704B0;
  if (!qword_1002704B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704B0);
  }

  return result;
}

unint64_t sub_1000D5FD4()
{
  result = qword_1002704B8;
  if (!qword_1002704B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704B8);
  }

  return result;
}

unint64_t sub_1000D602C()
{
  result = qword_1002704C0;
  if (!qword_1002704C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704C0);
  }

  return result;
}

unint64_t sub_1000D6084()
{
  result = qword_1002704C8;
  if (!qword_1002704C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704C8);
  }

  return result;
}

unint64_t sub_1000D60DC()
{
  result = qword_1002704D0;
  if (!qword_1002704D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704D0);
  }

  return result;
}

unint64_t sub_1000D6134()
{
  result = qword_1002704D8;
  if (!qword_1002704D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704D8);
  }

  return result;
}

unint64_t sub_1000D618C()
{
  result = qword_1002704E0;
  if (!qword_1002704E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704E0);
  }

  return result;
}

unint64_t sub_1000D61E4()
{
  result = qword_1002704E8;
  if (!qword_1002704E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704E8);
  }

  return result;
}

unint64_t sub_1000D623C()
{
  result = qword_1002704F0;
  if (!qword_1002704F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704F0);
  }

  return result;
}

unint64_t sub_1000D6294()
{
  result = qword_1002704F8;
  if (!qword_1002704F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002704F8);
  }

  return result;
}

unint64_t sub_1000D62EC()
{
  result = qword_100270500;
  if (!qword_100270500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270500);
  }

  return result;
}

unint64_t sub_1000D6344()
{
  result = qword_100270508;
  if (!qword_100270508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270508);
  }

  return result;
}

unint64_t sub_1000D639C()
{
  result = qword_100270510;
  if (!qword_100270510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270510);
  }

  return result;
}

unint64_t sub_1000D63F4()
{
  result = qword_100270518;
  if (!qword_100270518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270518);
  }

  return result;
}

unint64_t sub_1000D644C()
{
  result = qword_100270520;
  if (!qword_100270520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270520);
  }

  return result;
}

unint64_t sub_1000D64A4()
{
  result = qword_100270528;
  if (!qword_100270528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270528);
  }

  return result;
}

unint64_t sub_1000D64FC()
{
  result = qword_100270530;
  if (!qword_100270530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270530);
  }

  return result;
}

unint64_t sub_1000D6554()
{
  result = qword_100270538;
  if (!qword_100270538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270538);
  }

  return result;
}

uint64_t sub_1000D65A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53746E6572727563 && a2 == 0xED00006B61657274;
  if (v4 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x53747365676E6F6CLL && a2 == 0xED00006B61657274 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961646F74 && a2 == 0xE500000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x48676E6964616572 && a2 == 0xEE0079726F747369)
  {

    return 3;
  }

  else
  {
    v6 = sub_1001C6D08();

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

uint64_t sub_1000D6720(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D67E0()
{
  v1 = v0;
  v2 = type metadata accessor for PBPropertyBookImpressionParam(0);
  __chkstk_darwin(v2 - 8);
  v53 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for PBPropertyMarkedAsFinishedParam(0);
  __chkstk_darwin(v51);
  v52 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for PBPropertySingleFloatParam(0);
  __chkstk_darwin(v49);
  v50 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Params = type metadata accessor for PBPropertyBookReadParams(0);
  __chkstk_darwin(Params - 8);
  v54 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100084528(&qword_1002705B0, &qword_1001F2BD8);
  __chkstk_darwin(v8 - 8);
  *&v57 = &v49 - v9;
  v10 = sub_1001C4CA8();
  v55 = *(v10 - 8);
  v56 = v10;
  __chkstk_darwin(v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100084528(&qword_1002705B8, &unk_1001F2BE0);
  __chkstk_darwin(v13 - 8);
  v15 = &v49 - v14;
  v16 = sub_1001C4EE8();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = 0xE000000000000000;
  v59 = 0;
  v60 = 0xE000000000000000;
  v21 = type metadata accessor for PBPropertyValue(0);
  v22 = (v0 + v21[8]);
  v23 = v22[1];
  if (v23)
  {
    v24 = *v22;
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v20 = v22[1];
  }

  v61._countAndFlagsBits = v24;
  v61._object = v20;
  sub_1001C6138(v61);

  v62._countAndFlagsBits = 32;
  v62._object = 0xE100000000000000;
  sub_1001C6138(v62);
  v58 = *v0;
  v63._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v63);

  v64._countAndFlagsBits = 32;
  v64._object = 0xE100000000000000;
  sub_1001C6138(v64);
  sub_10009ADF0(v0 + v21[7], v15, &qword_1002705B8, &unk_1001F2BE0);
  v25 = *(v17 + 48);
  if (v25(v15, 1, v16) == 1)
  {
    sub_1001C4ED8();
    if (v25(v15, 1, v16) != 1)
    {
      sub_10008875C(v15, &qword_1002705B8, &unk_1001F2BE0);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v15, v16);
  }

  sub_1001C4EC8();
  (*(v17 + 8))(v19, v16);
  sub_1000D74B0();
  v26 = v56;
  v65._countAndFlagsBits = sub_1001C6CC8();
  sub_1001C6138(v65);

  (*(v55 + 8))(v12, v26);
  v27 = v59;
  v28 = v60;
  v29 = v57;
  sub_10009ADF0(v1 + v21[5], v57, &qword_1002705B0, &qword_1001F2BD8);
  v30 = type metadata accessor for PBPropertyValue.OneOf_Params(0);
  if ((*(*(v30 - 8) + 48))(v29, 1, v30) == 1)
  {
    goto LABEL_11;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v36 = v54;
      sub_1000D7508(v29, v54, type metadata accessor for PBPropertyBookReadParams);
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1001C69C8(24);

      v59 = 0x736572676F727020;
      v60 = 0xEA00000000003D73;
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v37 = swift_allocObject();
      v57 = xmmword_1001F0670;
      *(v37 + 16) = xmmword_1001F0670;
      v38 = *(v36 + 1);
      *(v37 + 56) = &type metadata for Float;
      *(v37 + 64) = &protocol witness table for Float;
      *(v37 + 32) = v38;
      v67._countAndFlagsBits = sub_1001C6048();
      sub_1001C6138(v67);

      v68._countAndFlagsBits = 0x6C706D6153736920;
      v68._object = 0xEA00000000003D65;
      sub_1001C6138(v68);
      v39 = swift_allocObject();
      *(v39 + 16) = v57;
      v40 = *v36;
      v41 = sub_100084570();
      v42 = 20302;
      if (v40)
      {
        v42 = 5457241;
      }

      *(v39 + 56) = &type metadata for String;
      *(v39 + 64) = v41;
      if (v40)
      {
        v43 = 0xE300000000000000;
      }

      else
      {
        v43 = 0xE200000000000000;
      }

      *(v39 + 32) = v42;
      *(v39 + 40) = v43;
      v69._countAndFlagsBits = sub_1001C6048();
      sub_1001C6138(v69);

      v31 = v59;
      v32 = v60;
      v44 = type metadata accessor for PBPropertyBookReadParams;
      v45 = v36;
      goto LABEL_33;
    }

    if (EnumCaseMultiPayload == 3)
    {
      v34 = v52;
      sub_1000D7508(v29, v52, type metadata accessor for PBPropertyMarkedAsFinishedParam);
      v59 = 0;
      v60 = 0xE000000000000000;
      v66._countAndFlagsBits = 0x3D65756C617620;
      v66._object = 0xE700000000000000;
      sub_1001C6138(v66);
      sub_1001C6AD8();
      v31 = v59;
      v32 = v60;
      v35 = type metadata accessor for PBPropertyMarkedAsFinishedParam;
    }

    else
    {
      v34 = v53;
      sub_1000D7508(v29, v53, type metadata accessor for PBPropertyBookImpressionParam);
      v59 = 0;
      v60 = 0xE000000000000000;
      sub_1001C69C8(40);

      v59 = 0xD000000000000026;
      v60 = 0x8000000100200250;
      if (*v34)
      {
        v46._countAndFlagsBits = 1702195828;
      }

      else
      {
        v46._countAndFlagsBits = 0x65736C6166;
      }

      if (*v34)
      {
        v47 = 0xE400000000000000;
      }

      else
      {
        v47 = 0xE500000000000000;
      }

      v46._object = v47;
      sub_1001C6138(v46);

      v31 = v59;
      v32 = v60;
      v35 = type metadata accessor for PBPropertyBookImpressionParam;
    }

LABEL_32:
    v44 = v35;
    v45 = v34;
LABEL_33:
    sub_1000D7570(v45, v44);
    goto LABEL_34;
  }

  if (EnumCaseMultiPayload)
  {
    v34 = v50;
    sub_1000D7508(v29, v50, type metadata accessor for PBPropertySingleFloatParam);
    v59 = 0;
    v60 = 0xE000000000000000;
    v70._countAndFlagsBits = 0x3D65756C617620;
    v70._object = 0xE700000000000000;
    sub_1001C6138(v70);
    sub_1001C6AD8();
    v31 = v59;
    v32 = v60;
    v35 = type metadata accessor for PBPropertySingleFloatParam;
    goto LABEL_32;
  }

  sub_1000D7570(v29, type metadata accessor for PBPropertyValue.OneOf_Params);
LABEL_11:
  v31 = 0;
  v32 = 0xE000000000000000;
LABEL_34:
  v59 = v27;
  v60 = v28;
  v71._countAndFlagsBits = v31;
  v71._object = v32;
  sub_1001C6138(v71);

  return v59;
}

void sub_1000D70AC()
{
  v1 = v0;
  v2 = type metadata accessor for PBPropertyValue(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100084528(&qword_1002705A8, &unk_1001F5200);
  __chkstk_darwin(v6 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for PBPropertyConfiguration(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = 0;
  v29 = 0xE000000000000000;
  v13 = type metadata accessor for PBPropertyBundle(0);
  sub_10009ADF0(v1 + *(v13 + 28), v8, &qword_1002705A8, &unk_1001F5200);
  v14 = *(v10 + 48);
  if (v14(v8, 1, v9) == 1)
  {
    *v12 = 0;
    v12[1] = 0;
    v12[2] = 0;
    v12[3] = 0xE000000000000000;
    v12[4] = 0;
    _s14bookdatastored18PBPropertyNoParamsVACycfC_0();
    if (v14(v8, 1, v9) != 1)
    {
      sub_10008875C(v8, &qword_1002705A8, &unk_1001F5200);
    }
  }

  else
  {
    sub_1000D7508(v8, v12, type metadata accessor for PBPropertyConfiguration);
  }

  v15 = v12[2];
  v16 = v12[3];

  sub_1000D7570(v12, type metadata accessor for PBPropertyConfiguration);
  v30._countAndFlagsBits = v15;
  v30._object = v16;
  sub_1001C6138(v30);

  v31._countAndFlagsBits = 32;
  v31._object = 0xE100000000000000;
  sub_1001C6138(v31);
  v17 = *v1;
  v18 = *(*v1 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0xE000000000000000;
    while (v20 < *(v17 + 16))
    {
      sub_1000D744C(v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20++, v5);
      v26 = v19;
      v27 = v21;
      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v23 = 8236;
      }

      else
      {
        v23 = 0;
      }

      if (v22)
      {
        v24 = 0xE200000000000000;
      }

      else
      {
        v24 = 0xE000000000000000;
      }

      v32._countAndFlagsBits = v23;
      v32._object = v24;
      sub_1001C6138(v32);

      v33._countAndFlagsBits = sub_1000D67E0();
      sub_1001C6138(v33);

      v19 = v26;
      v25 = v27;
      sub_1000D7570(v5, type metadata accessor for PBPropertyValue);

      v21 = v25;
      if (v18 == v20)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = 0;
    v25 = 0xE000000000000000;
LABEL_19:
    v34._countAndFlagsBits = v19;
    v34._object = v25;
    sub_1001C6138(v34);
  }
}

uint64_t sub_1000D744C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPropertyValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D74B0()
{
  result = qword_100270A80;
  if (!qword_100270A80)
  {
    sub_1001C4CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270A80);
  }

  return result;
}

uint64_t sub_1000D7508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D7570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s21PriceDropNotificationVMa(uint64_t a1)
{
  result = qword_100270618;
  if (!qword_100270618)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D7644(uint64_t a1)
{
  result = sub_1001C4B28();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000D76DC(uint64_t a1, uint64_t a2)
{
  sub_1000D9490();
  sub_1001C6248();
  sub_1001C6248();
  if (v7 == v5 && v8 == v6)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1001C6D08();
  }

  return v3 & 1;
}

uint64_t sub_1000D7788(void *a1)
{
  v3 = v1;
  v5 = sub_100084528(&qword_100270680, &qword_1001F2E18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10009BB74(a1, a1[3]);
  sub_1000D94E4();
  sub_1001C6E78();
  v11 = *v3;
  v10[7] = 0;
  sub_1000D9538();
  sub_1001C6CA8();
  if (!v2)
  {
    v10[6] = 1;
    sub_1001C6C68();
    v10[5] = 2;
    sub_1001C6C68();
    v10[4] = 3;
    sub_1001C6C68();
    _s21PriceDropNotificationVMa(0);
    v10[3] = 4;
    sub_1001C4B28();
    sub_1000D958C();
    sub_1001C6CA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000D79CC()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656C746974627573;
  v4 = 2036625250;
  if (v1 != 3)
  {
    v4 = 0x6B6E694C70656564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

uint64_t sub_1000D7A58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000D96FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000D7A80(uint64_t a1)
{
  v2 = sub_1000D94E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D7ABC(uint64_t a1)
{
  v2 = sub_1000D94E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000D7B14(uint64_t a1)
{
  sub_1001C6DF8();
  sub_1000D9490();
  sub_1001C6248();
  sub_1001C60E8();

  return sub_1001C6E28();
}

uint64_t sub_1000D7B88(uint64_t a1, uint64_t a2)
{
  sub_1000D9490();
  sub_1001C6248();
  sub_1001C60E8();
}

Swift::Int sub_1000D7BF4(uint64_t a1, uint64_t a2)
{
  sub_1001C6DF8();
  sub_1000D9490();
  sub_1001C6248();
  sub_1001C60E8();

  return sub_1001C6E28();
}

unint64_t sub_1000D7D20()
{
  result = qword_100270660;
  if (!qword_100270660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270660);
  }

  return result;
}

unint64_t sub_1000D7D78()
{
  result = qword_100270668;
  if (!qword_100270668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270668);
  }

  return result;
}

unint64_t sub_1000D7DCC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000D9058(*a1, a1[1]);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1000D7E04@<X0>(uint64_t *a1@<X8>)
{
  sub_10008E704();
  result = sub_1001C61D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1000D7EEC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100084528(&qword_100270670, &qword_1001F2E10);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_1000D7F60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1001C61F8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1000D8A84(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1001C6A38();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1000D84EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1000D943C();

  result = sub_1001C61F8();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1000D8A84(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1001C6A38();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1000D8A84(uint64_t a1, unint64_t a2)
{
  v2 = sub_1001C6208();
  v6 = sub_1000D8B04(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1000D8B04(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1001C6828();
    if (!v9 || (v10 = v9, v11 = sub_1000D7EEC(v9, 0), v12 = sub_1000D8C5C(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1001C60D8();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1001C60D8();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1001C6A38();
LABEL_4:

  return sub_1001C60D8();
}

unint64_t sub_1000D8C5C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1000D8E7C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1001C6198();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1001C6A38();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1000D8E7C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1001C6168();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1000D8E7C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1001C61A8();
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
    v5 = sub_1001C6178();
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

uint64_t sub_1000D8EF8(uint64_t *a1, uint64_t *a2)
{
  sub_1000D9490();
  sub_1001C6248();
  sub_1001C6248();
  if (v10 == v8 && v11 == v9)
  {
  }

  else
  {
    v5 = sub_1001C6D08();

    if ((v5 & 1) == 0)
    {
LABEL_18:
      v6 = 0;
      return v6 & 1;
    }
  }

  if ((a1[1] != a2[1] || a1[2] != a2[2]) && (sub_1001C6D08() & 1) == 0 || (a1[3] != a2[3] || a1[4] != a2[4]) && (sub_1001C6D08() & 1) == 0 || (a1[5] != a2[5] || a1[6] != a2[6]) && (sub_1001C6D08() & 1) == 0)
  {
    goto LABEL_18;
  }

  _s21PriceDropNotificationVMa(0);
  v6 = sub_1001C4AC8();
  return v6 & 1;
}

unint64_t sub_1000D9058(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v33[0] = result;
      v33[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v19 = v33 + 1;
            while (1)
            {
              v20 = *v19;
              v21 = v20 - 48;
              if ((v20 - 48) >= 0xA)
              {
                if ((v20 - 65) < 0x1A)
                {
                  v21 = v20 - 55;
                }

                else
                {
                  if ((v20 - 97) > 0x19)
                  {
                    goto LABEL_87;
                  }

                  v21 = v20 - 87;
                }
              }

              v22 = 36 * v6;
              if ((v6 * 36) >> 64 != (36 * v6) >> 63)
              {
                break;
              }

              v6 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                break;
              }

              ++v19;
              if (!--v3)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_87;
        }

LABEL_98:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v26 = v33;
          while (1)
          {
            v27 = *v26;
            v28 = v27 - 48;
            if ((v27 - 48) >= 0xA)
            {
              if ((v27 - 65) < 0x1A)
              {
                v28 = v27 - 55;
              }

              else
              {
                if ((v27 - 97) > 0x19)
                {
                  goto LABEL_87;
                }

                v28 = v27 - 87;
              }
            }

            v29 = 36 * v6;
            if ((v6 * 36) >> 64 != (36 * v6) >> 63)
            {
              break;
            }

            v6 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++v26;
            if (!--v2)
            {
              LOBYTE(v3) = 0;
              goto LABEL_88;
            }
          }
        }

        goto LABEL_87;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v11 = v33 + 1;
          while (1)
          {
            v12 = *v11;
            v13 = v12 - 48;
            if ((v12 - 48) >= 0xA)
            {
              if ((v12 - 65) < 0x1A)
              {
                v13 = v12 - 55;
              }

              else
              {
                if ((v12 - 97) > 0x19)
                {
                  goto LABEL_87;
                }

                v13 = v12 - 87;
              }
            }

            v14 = 36 * v6;
            if ((v6 * 36) >> 64 != (36 * v6) >> 63)
            {
              break;
            }

            v6 = v14 - v13;
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            ++v11;
            if (!--v3)
            {
              goto LABEL_88;
            }
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1001C6A38();
        v3 = v32;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            if (result)
            {
              v6 = 0;
              v15 = (result + 1);
              while (1)
              {
                v16 = *v15;
                v17 = v16 - 48;
                if ((v16 - 48) >= 0xA)
                {
                  if ((v16 - 65) < 0x1A)
                  {
                    v17 = v16 - 55;
                  }

                  else
                  {
                    if ((v16 - 97) > 0x19)
                    {
                      goto LABEL_87;
                    }

                    v17 = v16 - 87;
                  }
                }

                v18 = 36 * v6;
                if ((v6 * 36) >> 64 != (36 * v6) >> 63)
                {
                  goto LABEL_87;
                }

                v6 = v18 + v17;
                if (__OFADD__(v18, v17))
                {
                  goto LABEL_87;
                }

                ++v15;
                if (!--v3)
                {
                  goto LABEL_88;
                }
              }
            }

            goto LABEL_75;
          }

          goto LABEL_87;
        }

        goto LABEL_97;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          if (result)
          {
            v6 = 0;
            while (1)
            {
              v23 = *result;
              v24 = v23 - 48;
              if ((v23 - 48) >= 0xA)
              {
                if ((v23 - 65) < 0x1A)
                {
                  v24 = v23 - 55;
                }

                else
                {
                  if ((v23 - 97) > 0x19)
                  {
                    goto LABEL_87;
                  }

                  v24 = v23 - 87;
                }
              }

              v25 = 36 * v6;
              if ((v6 * 36) >> 64 != (36 * v6) >> 63)
              {
                goto LABEL_87;
              }

              v6 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_87;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_88;
              }
            }
          }

          goto LABEL_75;
        }

LABEL_87:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_88;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          if (result)
          {
            v6 = 0;
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7;
              v9 = v8 - 48;
              if ((v8 - 48) >= 0xA)
              {
                if ((v8 - 65) < 0x1A)
                {
                  v9 = v8 - 55;
                }

                else
                {
                  if ((v8 - 97) > 0x19)
                  {
                    goto LABEL_87;
                  }

                  v9 = v8 - 87;
                }
              }

              v10 = 36 * v6;
              if ((v6 * 36) >> 64 != (36 * v6) >> 63)
              {
                goto LABEL_87;
              }

              v6 = v10 - v9;
              if (__OFSUB__(v10, v9))
              {
                goto LABEL_87;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_88;
              }
            }
          }

LABEL_75:
          v6 = 0;
          LOBYTE(v3) = 0;
LABEL_88:
          v34 = v3;
          v30 = v3;
          goto LABEL_89;
        }

        goto LABEL_87;
      }

      __break(1u);
    }

    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  v6 = sub_1000D7F60(result, a2, 36);
  v30 = v31;
LABEL_89:

  if (v30)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_1000D943C()
{
  result = qword_1002728B0;
  if (!qword_1002728B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002728B0);
  }

  return result;
}

unint64_t sub_1000D9490()
{
  result = qword_100270678;
  if (!qword_100270678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270678);
  }

  return result;
}

unint64_t sub_1000D94E4()
{
  result = qword_100270688;
  if (!qword_100270688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270688);
  }

  return result;
}

unint64_t sub_1000D9538()
{
  result = qword_100270690;
  if (!qword_100270690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270690);
  }

  return result;
}

unint64_t sub_1000D958C()
{
  result = qword_100270698;
  if (!qword_100270698)
  {
    sub_1001C4B28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270698);
  }

  return result;
}

unint64_t sub_1000D95F8()
{
  result = qword_1002706A0;
  if (!qword_1002706A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002706A0);
  }

  return result;
}

unint64_t sub_1000D9650()
{
  result = qword_1002706A8;
  if (!qword_1002706A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002706A8);
  }

  return result;
}

unint64_t sub_1000D96A8()
{
  result = qword_1002706B0;
  if (!qword_1002706B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002706B0);
  }

  return result;
}

uint64_t sub_1000D96FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1001C6D08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1001C6D08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6E694C70656564 && a2 == 0xEB000000004C5255)
  {

    return 4;
  }

  else
  {
    v6 = sub_1001C6D08();

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

void sub_1000D98A8()
{
  v1 = _s9SchedulerC5StateOMa(0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DCDF4(v0 + v4, v3);
  v5 = sub_1000D9A88();
  v7 = v6;
  sub_1000DCEAC(v3);
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v8 = sub_1001C5148();
  sub_100083274(v8, qword_100281898);

  v9 = sub_1001C5128();
  v10 = sub_1001C65B8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136446210;
    v13 = sub_1001874E8(v5, v7, &v14);

    *(v11 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "[Scheduler] state → %{public}s", v11, 0xCu);
    sub_10008E7BC(v12);
  }

  else
  {
  }
}

uint64_t sub_1000D9A88()
{
  v1 = _s9SchedulerC5StateOMa(0);
  __chkstk_darwin(v1);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000DCDF4(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v10 = *(v3 + 1);
      v14 = *v3;
      v15 = v10;
      v16 = *(v3 + 2);
      v17 = v3[48];
      sub_1000DCE58(&v14);
      v11 = *(sub_100084528(&qword_100270870, &qword_1001F30F8) + 48);
      v12 = sub_100084528(&unk_100270838, &unk_1001F2FC0);
      (*(*(v12 - 8) + 8))(&v3[v11], v12);
      return 0x676E6970706F7473;
    }

    else
    {
      return 1701602409;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1000DCEAC(v3);
    return 0x676E696E6E7572;
  }

  else
  {
    v5 = *(v3 + 1);
    v14 = *v3;
    v15 = v5;
    v16 = *(v3 + 2);
    v17 = v3[48];
    v13[0] = 0x656C756465686373;
    v13[1] = 0xEA00000000002864;
    v6 = sub_10016C674();
    v8 = v7;
    sub_1000DCE58(&v14);
    v18._countAndFlagsBits = v6;
    v18._object = v8;
    sub_1001C6138(v18);

    v19._countAndFlagsBits = 41;
    v19._object = 0xE100000000000000;
    sub_1001C6138(v19);
    return v13[0];
  }
}

uint64_t sub_1000D9C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ObjectType = swift_getObjectType();
    sub_1000D9CE4(a1, ObjectType, a2);
  }

  return result;
}

uint64_t sub_1000D9CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v11 = sub_1001C5148();
  sub_100083274(v11, qword_100281898);
  v12 = sub_1001C5128();
  v13 = sub_1001C65B8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "[Scheduler] Launching BG task", v14, 2u);
  }

  v15 = sub_1001C6348();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a2;
  v16[5] = a3;
  v16[6] = v4;
  v16[7] = a1;

  swift_unknownObjectRetain();
  sub_10016CE38(0, 0, v10, &unk_1001F3130, v16);
}

uint64_t sub_1000D9ECC()
{
  v1 = v0;
  v2 = sub_100084528(&unk_100270838, &unk_1001F2FC0);
  v22[0] = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = v22 - v3;
  v5 = _s9SchedulerC5StateOMa(0);
  v6 = __chkstk_darwin(v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v22 - v9;
  v11 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DCDF4(v1 + v11, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_6;
    }

    v13 = sub_100084528(&qword_100270870, &qword_1001F30F8);
    (*(v22[0] + 8))(&v10[*(v13 + 48)], v2);
  }

  else
  {
    sub_1000DCEAC(v10);
  }

  sub_1000B3A90(v1 + 112, v23);
  v14 = v24;
  v15 = v25;
  sub_10009BB74(v23, v24);
  (*(v15 + 40))(0xD00000000000002CLL, 0x8000000100200320, v14, v15);
  sub_10008E7BC(v23);
LABEL_6:
  sub_1000DCDF4(v1 + v11, v8);
  v16 = swift_getEnumCaseMultiPayload();
  if (v16 > 1)
  {
    if (v16 == 2)
    {

      v17 = sub_100084528(&qword_100270870, &qword_1001F30F8);
      v18 = v22[0];
      (*(v22[0] + 32))(v4, &v8[*(v17 + 48)], v2);
      LOBYTE(v23[0]) = 1;
      sub_1001C6328();
      (*(v18 + 8))(v4, v2);
    }
  }

  else if (v16)
  {

    sub_1001C63A8();
  }

  else
  {
    sub_1000DCEAC(v8);
  }

  sub_1000B3A90(v1 + 112, v23);
  v19 = v24;
  v20 = v25;
  sub_10009BB74(v23, v24);
  (*(v20 + 16))(0xD00000000000002CLL, 0x8000000100200320, v19, v20);
  sub_10008E7BC(v23);
  sub_10008E7BC((v1 + 112));

  sub_1000DCEAC(v1 + v11);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_1000DA260()
{
  sub_1000D9ECC();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000DA2B4(uint64_t a1)
{
  result = _s9SchedulerC5StateOMa(319);
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

void sub_1000DA3E8(uint64_t a1)
{
  sub_1000DA498(319, &qword_100270820, &qword_100270828, &qword_1001F2FB8);
  if (v1 <= 0x3F)
  {
    sub_1000DA498(319, &qword_100270830, &unk_100270838, &unk_1001F2FC0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000DA498(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000885AC(a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1000DA510()
{
  result = qword_100270868;
  if (!qword_100270868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270868);
  }

  return result;
}

uint64_t sub_1000DA570(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v4 = 0;
  }

  else
  {
    v4 = *a1 == *&v2;
  }

  v5 = v4;
  v6 = *a1 == v2;
  if (v3 != 1)
  {
    v6 = 0;
  }

  v7 = *a1 == *a2;
  if (v3 != 2)
  {
    v7 = 0;
  }

  if (*(a1 + 8) != 1)
  {
    v6 = v7;
  }

  if (*(a1 + 8))
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1000DA5D4(uint64_t a1)
{
  v2[160] = v1;
  v2[159] = a1;
  v3 = sub_100084528(&unk_100270838, &unk_1001F2FC0);
  v2[161] = v3;
  v2[162] = *(v3 - 8);
  v2[163] = swift_task_alloc();
  v2[164] = _s9SchedulerC5StateOMa(0);
  v2[165] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA6D4, v1, 0);
}

uint64_t sub_1000DA6D4()
{
  v1 = *(v0 + 1320);
  v2 = *(v0 + 1280);
  v3 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DCDF4(v2 + v3, v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v5 = *(v0 + 1320);
      v6 = *(v0 + 1272);
      v7 = *v5;
      v8 = v5[1];
      v10 = v5[2];
      v9 = v5[3];
      v12 = v5[4];
      v11 = v5[5];
      v13 = *(v5 + 48);
      v14 = *v6;
      v15 = *(v6 + 8);
      v16 = *(v6 + 16);
      v18 = *(v6 + 24);
      v17 = *(v6 + 32);
      v19 = *(v6 + 40);
      v20 = *(v6 + 48);
      if (v8)
      {
        if (v15)
        {
          *(v0 + 352) = v14;
          *(v0 + 360) = v15;
          *(v0 + 368) = v16;
          *(v0 + 376) = v18;
          *(v0 + 384) = v17;
          *(v0 + 392) = v19;
          *(v0 + 400) = v20;
          *(v0 + 408) = v7;
          *(v0 + 416) = v8;
          *(v0 + 424) = v10;
          *(v0 + 432) = v9;
          *(v0 + 440) = v12;
          *(v0 + 448) = v11;
          *(v0 + 456) = v13;
          v21 = sub_10016C9E4((v0 + 408), v0 + 352);
          sub_1000DCF60(v6, v0 + 240);

          if (v21)
          {
            goto LABEL_29;
          }

LABEL_17:
          sub_1000DB5A8();
          v66 = *(v6 + 8);
          if (v66)
          {
            *(v0 + 576) = **(v0 + 1272);
            *(v0 + 584) = v66;
            v67 = *(v6 + 48);
            v68 = *(v6 + 32);
            *(v0 + 592) = *(v6 + 16);
            *(v0 + 608) = v68;
            *(v0 + 624) = v67;
            v65 = v0 + 576;
            goto LABEL_19;
          }

          goto LABEL_29;
        }

LABEL_16:
        *(v0 + 128) = v7;
        *(v0 + 136) = v8;
        *(v0 + 144) = v10;
        *(v0 + 152) = v9;
        *(v0 + 160) = v12;
        *(v0 + 168) = v11;
        *(v0 + 176) = v13;
        *(v0 + 184) = v14;
        *(v0 + 192) = v15;
        *(v0 + 200) = v16;
        *(v0 + 208) = v18;
        *(v0 + 216) = v17;
        *(v0 + 224) = v19;
        *(v0 + 232) = v20;
        sub_1000DCF60(v6, v0 + 1136);
        sub_10008875C(v0 + 128, &unk_100270888, &unk_1001F3110);
        goto LABEL_17;
      }

      if (v15)
      {
        goto LABEL_16;
      }

      sub_1000DCF60(*(v0 + 1272), v0 + 1192);
LABEL_28:

      goto LABEL_29;
    }

    v41 = *(v0 + 1320);
    v42 = *(v0 + 1272);
    v44 = v41[1];
    v43 = v41[2];
    v45 = *v41;
    *(v0 + 344) = *(v41 + 48);
    *(v0 + 312) = v44;
    *(v0 + 328) = v43;
    *(v0 + 296) = v45;
    v46 = *v41;
    v47 = *(v41 + 1);
    v49 = *(v41 + 2);
    v48 = *(v41 + 3);
    v51 = *(v41 + 4);
    v50 = *(v41 + 5);
    v52 = *(v41 + 48);
    *(v0 + 1328) = *(v41 + 7);
    v53 = *v42;
    v54 = *(v42 + 8);
    v55 = *(v42 + 16);
    v56 = *(v42 + 24);
    v58 = *(v42 + 32);
    v57 = *(v42 + 40);
    v59 = *(v42 + 48);
    if (v47)
    {
      if (v54)
      {
        *(v0 + 1080) = v53;
        *(v0 + 1088) = v54;
        *(v0 + 1096) = v55;
        *(v0 + 1104) = v56;
        *(v0 + 1112) = v58;
        *(v0 + 1120) = v57;
        *(v0 + 1128) = v59;
        *(v0 + 744) = v46;
        *(v0 + 752) = v47;
        *(v0 + 760) = v49;
        *(v0 + 768) = v48;
        *(v0 + 776) = v51;
        *(v0 + 784) = v50;
        *(v0 + 792) = v52;
        v60 = sub_10016C9E4((v0 + 744), v0 + 1080);
        sub_1000DCF60(v42, v0 + 968);
        sub_1000DCFD0(v0 + 296, v0 + 1024);

        if (v60)
        {
          sub_1000DCE58(v0 + 296);

          goto LABEL_29;
        }

        goto LABEL_22;
      }
    }

    else if (!v54)
    {
      sub_1000DCF60(v42, v0 + 912);

      goto LABEL_28;
    }

    *(v0 + 16) = v46;
    *(v0 + 24) = v47;
    *(v0 + 32) = v49;
    *(v0 + 40) = v48;
    *(v0 + 48) = v51;
    *(v0 + 56) = v50;
    *(v0 + 64) = v52;
    *(v0 + 72) = v53;
    *(v0 + 80) = v54;
    *(v0 + 88) = v55;
    *(v0 + 96) = v56;
    *(v0 + 104) = v58;
    *(v0 + 112) = v57;
    *(v0 + 120) = v59;
    sub_1000DCF60(v42, v0 + 800);
    sub_1000DCFD0(v0 + 296, v0 + 856);
    sub_10008875C(v0 + 16, &unk_100270888, &unk_1001F3110);
LABEL_22:
    v69 = *(v0 + 1280);
    sub_1001C63A8();
    v70 = sub_1000DCF08();
    v71 = swift_task_alloc();
    *(v0 + 1336) = v71;
    *(v71 + 16) = v69;
    *(v71 + 24) = v0 + 296;
    v72 = swift_task_alloc();
    *(v0 + 1344) = v72;
    *v72 = v0;
    v72[1] = sub_1000DAC74;
    v34 = sub_1000DD02C;
    v35 = v0 + 122;
    v39 = 0xD000000000000019;
    v36 = 0x8000000100200300;
    v37 = v69;
    v38 = v70;
    v40 = v71;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v61 = *(v0 + 1272);
    v62 = *(v61 + 8);
    if (v62)
    {
      *(v0 + 632) = *v61;
      *(v0 + 640) = v62;
      v63 = *(v61 + 48);
      v64 = *(v61 + 32);
      *(v0 + 648) = *(v61 + 16);
      *(v0 + 664) = v64;
      *(v0 + 680) = v63;
      v65 = v0 + 632;
LABEL_19:
      sub_1000DB0C4(v65);
    }

LABEL_29:

    v73 = *(v0 + 8);

    return v73();
  }

  v22 = *(v0 + 1320);
  v23 = *(v0 + 1304);
  v24 = *(v0 + 1296);
  v25 = *(v0 + 1288);
  v26 = *(v0 + 1280);
  v28 = v22[1];
  v27 = v22[2];
  v29 = *v22;
  *(v0 + 736) = *(v22 + 48);
  *(v0 + 704) = v28;
  *(v0 + 720) = v27;
  *(v0 + 688) = v29;
  v30 = sub_100084528(&qword_100270870, &qword_1001F30F8);
  (*(v24 + 32))(v23, v22 + *(v30 + 48), v25);
  *(v0 + 121) = 1;
  sub_1001C6328();
  v31 = sub_1000DCF08();
  v32 = swift_task_alloc();
  *(v0 + 1352) = v32;
  *(v32 + 16) = v26;
  *(v32 + 24) = v0 + 688;
  v33 = swift_task_alloc();
  *(v0 + 1360) = v33;
  *v33 = v0;
  v33[1] = sub_1000DAE84;
  v34 = sub_1000DD348;
  v35 = v0 + 123;
  v36 = 0x80000001002002E0;
  v37 = v26;
  v38 = v31;
  v39 = 0xD000000000000018;
  v40 = v32;
LABEL_23:

  return withCheckedContinuation<A>(isolation:function:_:)(v35, v37, v38, v39, v36, v34, v40, &type metadata for ReplaceableContinuationResult);
}

uint64_t sub_1000DAC74()
{
  v1 = *(*v0 + 1280);

  return _swift_task_switch(sub_1000DADA0, v1, 0);
}

uint64_t sub_1000DADA0()
{
  if (*(v0 + 122))
  {
    sub_1000DCE58(v0 + 296);
  }

  else
  {
    v1 = *(v0 + 1272);
    sub_1000DB974(v0 + 296);
    sub_1000DCE58(v0 + 296);
    sub_1000DB5A8();
    v2 = *(v1 + 8);
    if (v2)
    {
      v3 = *(v0 + 1272);
      *(v0 + 520) = *v3;
      *(v0 + 528) = v2;
      v4 = *(v3 + 48);
      v5 = *(v3 + 32);
      *(v0 + 536) = *(v3 + 16);
      *(v0 + 552) = v5;
      *(v0 + 568) = v4;
      sub_1000DB0C4(v0 + 520);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1000DAE84()
{
  v1 = *(*v0 + 1280);

  return _swift_task_switch(sub_1000DAFB0, v1, 0);
}

uint64_t sub_1000DAFB0()
{
  if (*(v0 + 123))
  {
    (*(*(v0 + 1296) + 8))(*(v0 + 1304), *(v0 + 1288));
    sub_1000DCE58(v0 + 688);
  }

  else
  {
    v1 = *(v0 + 1272);
    sub_1000DB974(v0 + 688);
    sub_1000DCE58(v0 + 688);
    sub_1000DB5A8();
    v2 = *(v1 + 8);
    v3 = *(v0 + 1304);
    v4 = *(v0 + 1296);
    v5 = *(v0 + 1288);
    if (v2)
    {
      v6 = *(v0 + 1272);
      *(v0 + 464) = *v6;
      *(v0 + 472) = v2;
      v7 = *(v6 + 48);
      v8 = *(v6 + 32);
      *(v0 + 480) = *(v6 + 16);
      *(v0 + 496) = v8;
      *(v0 + 512) = v7;
      sub_1000DB0C4(v0 + 464);
    }

    (*(v4 + 8))(v3, v5);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1000DB0C4(uint64_t a1)
{
  v2 = v1;
  v4 = _s9SchedulerC5StateOMa(0);
  __chkstk_darwin(v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[17];
  v8 = v1[18];
  sub_10009BB74(v1 + 14, v7);
  (*(v8 + 24))(v25, 0xD00000000000002CLL, 0x8000000100200320, v7, v8);
  if (v25[1])
  {
    sub_10008875C(v25, &qword_100270880, &qword_1001F3108);
    v9 = *(a1 + 16);
    *v6 = *a1;
    *(v6 + 1) = v9;
    *(v6 + 2) = *(a1 + 32);
    v6[48] = *(a1 + 48);
    swift_storeEnumTagMultiPayload();
    v10 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
    swift_beginAccess();
    sub_1000DCFD0(a1, v24);
    sub_1000DD048(v6, v1 + v10);
    swift_endAccess();
    sub_1000D98A8();
    sub_1000DCEAC(v6);
    sub_1000DCDF4(v1 + v10, v6);
    v11 = sub_1000D9A88();
    v13 = v12;
    sub_1000DCEAC(v6);
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v14 = sub_1001C5148();
    sub_100083274(v14, qword_100281898);

    v15 = sub_1001C5128();
    v16 = sub_1001C6598();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v24[0] = swift_slowAlloc();
      *v17 = 136446466;
      *(v17 + 4) = sub_1001874E8(0xD00000000000002CLL, 0x8000000100200320, v24);
      *(v17 + 12) = 2082;
      v18 = sub_1001874E8(v11, v13, v24);

      *(v17 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v15, v16, "[Scheduler] Found existing task request for %{public}s, assuming %{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v19 = v1[17];
    v20 = v1[18];
    sub_10009BB74(v1 + 14, v19);
    (*(v20 + 32))(a1, v19, v20);
    v21 = *(a1 + 16);
    *v6 = *a1;
    *(v6 + 1) = v21;
    *(v6 + 2) = *(a1 + 32);
    v6[48] = *(a1 + 48);
    swift_storeEnumTagMultiPayload();
    v22 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
    swift_beginAccess();
    sub_1000DCFD0(a1, v24);
    sub_1000DD048(v6, v2 + v22);
    swift_endAccess();
    sub_1000D98A8();
    sub_1000DCEAC(v6);
  }

  return 1;
}

uint64_t sub_1000DB5A8()
{
  v1 = v0;
  v2 = _s9SchedulerC5StateOMa(0);
  __chkstk_darwin(v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[17];
  v6 = v0[18];
  sub_10009BB74(v0 + 14, v5);
  (*(v6 + 24))(v18, 0xD00000000000002CLL, 0x8000000100200320, v5, v6);
  if (v18[1])
  {
    sub_10008875C(v18, &qword_100270880, &qword_1001F3108);
    v7 = v0[17];
    v8 = v0[18];
    sub_10009BB74(v0 + 14, v7);
    (*(v8 + 40))(0xD00000000000002CLL, 0x8000000100200320, v7, v8);
  }

  else
  {
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v9 = sub_1001C5148();
    sub_100083274(v9, qword_100281898);
    v10 = sub_1001C5128();
    v11 = sub_1001C6598();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17[0] = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_1001874E8(0xD00000000000002CLL, 0x8000000100200320, v17);
      _os_log_impl(&_mh_execute_header, v10, v11, "[Scheduler] Did not find existing task request for %{public}s, assuming idle", v12, 0xCu);
      sub_10008E7BC(v13);
    }
  }

  swift_storeEnumTagMultiPayload();
  v14 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DD048(v4, v1 + v14);
  swift_endAccess();
  sub_1000D98A8();
  sub_1000DCEAC(v4);
  return 1;
}

double sub_1000DB974(uint64_t a1)
{
  v3 = _s9SchedulerC5StateOMa(0);
  v4 = __chkstk_darwin(v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v22 - v7;
  v9 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DCDF4(v1 + v9, v8);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1000DCEAC(v8);
  }

  else
  {
    v20 = *(v8 + 1);
    v22 = *v8;
    v23 = v20;
    v24 = *(v8 + 2);
    v25 = v8[48];
    if (*a1 == v22)
    {
      sub_1000DCE58(&v22);
    }

    else
    {
      v21 = sub_1001C6D08();
      sub_1000DCE58(&v22);
      if ((v21 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    if (*(a1 + 16) == v23 && BYTE8(v23) == (*(a1 + 24) & 1) && BYTE9(v23) == (*(a1 + 25) & 1))
    {
      if (*(a1 + 48))
      {
        if (v25)
        {
          return result;
        }
      }

      else if ((v25 & 1) == 0 && *(a1 + 32) == *&v24)
      {
        result = *(a1 + 40);
        if (result == *(&v24 + 1))
        {
          return result;
        }
      }
    }
  }

LABEL_3:
  sub_1000DCDF4(v1 + v9, v6);
  v10 = sub_1000D9A88();
  v12 = v11;
  sub_1000DCEAC(v6);
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v13 = sub_1001C5148();
  sub_100083274(v13, qword_100281898);

  v14 = sub_1001C5128();
  v15 = sub_1001C6598();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v22 = v17;
    *v16 = 136315138;
    v18 = sub_1001874E8(v10, v12, &v22);

    *(v16 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "[Scheduler] Unexpected state: %s", v16, 0xCu);
    sub_10008E7BC(v17);
  }

  else
  {
  }

  return result;
}

uint64_t sub_1000DBC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s9SchedulerC5StateOMa(0);
  __chkstk_darwin(v6);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(sub_100084528(&qword_100270870, &qword_1001F30F8) + 48);
  v8[48] = *(a3 + 48);
  v10 = *(a3 + 16);
  *v8 = *a3;
  *(v8 + 1) = v10;
  *(v8 + 2) = *(a3 + 32);
  v11 = sub_100084528(&unk_100270838, &unk_1001F2FC0);
  (*(*(v11 - 8) + 16))(&v8[v9], a1, v11);
  swift_storeEnumTagMultiPayload();
  v12 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DCFD0(a3, v14);
  sub_1000DD048(v8, a2 + v12);
  swift_endAccess();
  sub_1000D98A8();
  return sub_1000DCEAC(v8);
}

uint64_t sub_1000DBDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000DBDEC, a4, 0);
}

uint64_t sub_1000DBDEC()
{
  sub_1000DBE50(v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

void sub_1000DBE50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100084528(&unk_100270A00, &qword_1001F3120);
  __chkstk_darwin(v7 - 8);
  v9 = &v40 - v8;
  v10 = _s9SchedulerC5StateOMa(0);
  v11 = __chkstk_darwin(v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v40 - v14;
  v16 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DCDF4(v3 + v16, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v39 = sub_1001C5148();
      sub_100083274(v39, qword_100281898);
      v35 = sub_1001C5128();
      v36 = sub_1001C6598();
      if (!os_log_type_enabled(v35, v36))
      {
        goto LABEL_20;
      }

      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "[Scheduler] BG task was cancelled before work started";
      goto LABEL_19;
    }

    v31 = *(v15 + 1);
    v41 = *v15;
    v42 = v31;
    v43 = *(v15 + 2);
    LOBYTE(v44) = v15[48];
    sub_1000DCE58(&v41);
    v32 = *(sub_100084528(&qword_100270870, &qword_1001F30F8) + 48);
    v33 = sub_100084528(&unk_100270838, &unk_1001F2FC0);
    (*(*(v33 - 8) + 8))(&v15[v32], v33);
LABEL_11:
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v34 = sub_1001C5148();
    sub_100083274(v34, qword_100281898);
    v35 = sub_1001C5128();
    v36 = sub_1001C6598();
    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_20;
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = "[Scheduler] Attempting to start Task while already running";
LABEL_19:
    _os_log_impl(&_mh_execute_header, v35, v36, v38, v37, 2u);

LABEL_20:

    return;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1000DCEAC(v15);
    goto LABEL_11;
  }

  v40 = v3;
  v18 = *(v15 + 1);
  v45 = *v15;
  v46 = v18;
  v47 = *(v15 + 2);
  v48 = v15[48];
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v19 = sub_1001C5148();
  sub_100083274(v19, qword_100281898);
  v20 = sub_1001C5128();
  v21 = sub_1001C65B8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "[Scheduler] Starting Task", v22, 2u);
  }

  v23 = sub_1001C6348();
  (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
  v24 = sub_1000DCF08();
  v25 = swift_allocObject();
  v26 = v40;
  v25[2] = v40;
  v25[3] = v24;
  v25[4] = a2;
  v25[5] = a3;
  v25[6] = v26;
  v25[7] = a1;
  swift_retain_n();
  swift_unknownObjectRetain();
  v27 = sub_10016CE38(0, 0, v9, &unk_1001F3140, v25);
  v28 = *(a3 + 16);

  v28(sub_1000DD29C, v27, a2, a3);
  LOBYTE(v44) = v48;
  v29 = v46;
  v41 = v45;
  v42 = v46;
  v30 = v47;
  v43 = v47;
  *v13 = v45;
  *(v13 + 1) = v29;
  *(v13 + 2) = v30;
  *(v13 + 6) = v44;
  *(v13 + 7) = v27;
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();

  sub_1000DD048(v13, v26 + v16);
  swift_endAccess();
  sub_1000D98A8();

  sub_1000DCEAC(v13);
}

uint64_t sub_1000DC3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000DC3D8, a4, 0);
}

uint64_t sub_1000DC3D8()
{
  v1 = *(v0 + 16);
  _s9SchedulerCMa(0);
  sub_1000DCF08();
  sub_1001C6318();
  v4 = (*(v1 + 152) + **(v1 + 152));
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1000DC510;

  return v4();
}

uint64_t sub_1000DC510()
{
  v1 = *(*v0 + 16);

  return _swift_task_switch(sub_1000DC620, v1, 0);
}

uint64_t sub_1000DC620()
{
  sub_1000DC684(v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

void sub_1000DC684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_100084528(&unk_100270838, &unk_1001F2FC0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v36[-v9];
  v11 = _s9SchedulerC5StateOMa(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v36[-v15];
  (*(a3 + 32))(a2, a3);
  v17 = OBJC_IVAR____TtCC14bookdatastored12PriceTracker9Scheduler_state;
  swift_beginAccess();
  sub_1000DCDF4(v3 + v17, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_10;
    }

    v19 = *(v16 + 1);
    v37 = *v16;
    v38 = v19;
    v39 = *(v16 + 2);
    v40 = v16[48];
    v20 = sub_100084528(&qword_100270870, &qword_1001F30F8);
    (*(v8 + 32))(v10, &v16[*(v20 + 48)], v7);
    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v21 = sub_1001C5148();
    sub_100083274(v21, qword_100281898);
    v22 = sub_1001C5128();
    v23 = sub_1001C65B8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "[Scheduler] Finished stopping Task", v24, 2u);
    }

    v25 = v38;
    *v14 = v37;
    *(v14 + 1) = v25;
    *(v14 + 2) = v39;
    v14[48] = v40;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1000DD048(v14, v4 + v17);
    swift_endAccess();
    sub_1000D98A8();
    sub_1000DCEAC(v14);
    v36[8] = 0;
    sub_1001C6328();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1000DCEAC(v16);
LABEL_10:
      if (qword_10026EBB8 != -1)
      {
        swift_once();
      }

      v26 = sub_1001C5148();
      sub_100083274(v26, qword_100281898);
      v27 = sub_1001C5128();
      v28 = sub_1001C6598();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "[Scheduler] Attempt to finsh Task while not running", v29, 2u);
      }

      return;
    }

    v30 = *(v16 + 1);
    v37 = *v16;
    v38 = v30;
    v39 = *(v16 + 2);
    v40 = v16[48];

    if (qword_10026EBB8 != -1)
    {
      swift_once();
    }

    v31 = sub_1001C5148();
    sub_100083274(v31, qword_100281898);
    v32 = sub_1001C5128();
    v33 = sub_1001C65B8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "[Scheduler] Finished running Task", v34, 2u);
    }

    v35 = v38;
    *v14 = v37;
    *(v14 + 1) = v35;
    *(v14 + 2) = v39;
    v14[48] = v40;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1000DD048(v14, v4 + v17);
    swift_endAccess();
    sub_1000D98A8();
    sub_1000DCEAC(v14);
  }
}

void sub_1000DCBB4(uint64_t a1)
{
  if (qword_10026EBB8 != -1)
  {
    swift_once();
  }

  v1 = sub_1001C5148();
  sub_100083274(v1, qword_100281898);
  v2 = sub_1001C5128();
  v3 = sub_1001C65B8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "[Scheduler] BG task expired, requesting Task cancellation", v4, 2u);
  }

  sub_1001C63A8();
}

void sub_1000DCCC0(double a1, double a2)
{
  v3 = round(a2);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1001C6CC8();
  v5._countAndFlagsBits = 47;
  v5._object = 0xE100000000000000;
  sub_1001C6138(v5);
  v4 = round(a1);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v4 < 9.22337204e18)
  {
    v6._countAndFlagsBits = sub_1001C6CC8();
    sub_1001C6138(v6);

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1000DCDF4(uint64_t a1, uint64_t a2)
{
  v4 = _s9SchedulerC5StateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DCEAC(uint64_t a1)
{
  v2 = _s9SchedulerC5StateOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000DCF08()
{
  result = qword_100270878;
  if (!qword_100270878)
  {
    _s9SchedulerCMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100270878);
  }

  return result;
}

uint64_t sub_1000DCF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100084528(&qword_100270880, &qword_1001F3108);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DD048(uint64_t a1, uint64_t a2)
{
  v4 = _s9SchedulerC5StateOMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DD0AC(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10009B25C;

  return sub_1000DBDC8(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t sub_1000DD180()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000DD1C8(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10009AAEC;

  return sub_1000DC3B4(a1, v6, v7, v9, v8, v4, v5);
}

uint64_t _s9SchedulerC11ConfigErrorOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s9SchedulerC11ConfigErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

Swift::Void __swiftcall ReadingHistoryService.setEnableCloudSync(_:)(Swift::Bool a1)
{
  v3 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v4 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1001F0670;
  *(v5 + 56) = &type metadata for Bool;
  *(v5 + 64) = &protocol witness table for Bool;
  v6 = a1;
  *(v5 + 32) = a1;
  sub_1001C5118(v3, &_mh_execute_header, v4, "ReadingHistoryService setEnableCloudSync: %d", v12);

  v7 = *(v1 + OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncManager);
  v8 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  swift_beginAccess();
  v9 = *(v7 + v8);
  *(v7 + v8) = a1;
  if (v9 != v6)
  {
    v10 = *(v7 + qword_10026FB30);
    v11 = *(v10 + qword_100281A08);
    *(v10 + qword_100281A08) = v6;
    if (v11 != v6)
    {
      sub_1000F1254(a1);
    }
  }
}

uint64_t sub_1000DD4AC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t ReadingHistoryService.clearData(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001C5648();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001C5688();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v17 = v12;
    swift_once();
    v12 = v17;
  }

  sub_1001C5118(v12, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService clearData", 31, 2, _swiftEmptyArrayStorage);
  v18[1] = *&v2[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1000F161C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100246458;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  sub_1001C5668();
  v20 = _swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v19);
}

uint64_t ReadingHistoryService.clearDefaultsCachedData(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001C5648();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001C5688();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v17 = v12;
    swift_once();
    v12 = v17;
  }

  sub_1001C5118(v12, &_mh_execute_header, qword_1002711E8, "ReadingGoalsService clearDefaultsCachedData", 43, 2, _swiftEmptyArrayStorage);
  v18[1] = *&v2[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1000F1640;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_1002464A8;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  sub_1001C5668();
  v20 = _swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v19);
}

uint64_t ReadingHistoryService.clearDate(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v27 = a3;
  v5 = sub_1001C5648();
  v30 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5688();
  v28 = *(v8 - 8);
  v29 = v8;
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001C4CA8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    LODWORD(v25) = v15;
    swift_once();
    v15 = v25;
  }

  sub_1001C5118(v15, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService clearDate", 31, 2, _swiftEmptyArrayStorage);
  v25 = *&v3[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  (*(v12 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v3;
  (*(v12 + 32))(v18 + v16, v14, v11);
  v19 = (v18 + v17);
  v20 = v27;
  *v19 = v26;
  v19[1] = v20;
  aBlock[4] = sub_1000F164C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_1002464F8;
  v21 = _Block_copy(aBlock);
  v22 = v3;

  sub_1001C5668();
  v31 = _swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v21);
  (*(v30 + 8))(v7, v5);
  (*(v28 + 8))(v10, v29);
}

uint64_t ReadingHistoryService.clearToday(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001C5648();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001C5688();
  v9 = *(v19 - 8);
  __chkstk_darwin(v19);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v17 = v12;
    swift_once();
    v12 = v17;
  }

  sub_1001C5118(v12, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService clearToday", 32, 2, _swiftEmptyArrayStorage);
  v18[1] = *&v2[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  v13 = swift_allocObject();
  v13[2] = v2;
  v13[3] = a1;
  v13[4] = a2;
  aBlock[4] = sub_1000F1720;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100246548;
  v14 = _Block_copy(aBlock);
  v15 = v2;

  sub_1001C5668();
  v20 = _swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v14);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v19);
}

uint64_t ReadingHistoryService.handleSyncFileChange(syncVersionInfo:updateInfo:completionHandler:)(void *a1, id a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v14 - v9);
  if (!a1)
  {
    v13 = type metadata accessor for CRDTModelSyncVersion(0);
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = a1;
  static CRDTModelSyncVersion.fromInfo(_:)(v11, v10);

  if (a2)
  {
LABEL_3:
    a2 = [a2 update];
  }

LABEL_4:
  ReadingHistoryService.handleSyncFileChange(syncVersion:update:completionHandler:)(v10, a2, a3, a4);

  return sub_10008875C(v10, &unk_10026F350, &qword_1001F31E0);
}

uint64_t ReadingHistoryService.increment(date:by:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a4;
  v34 = a2;
  v35 = a3;
  v5 = sub_1001C5648();
  v41 = *(v5 - 8);
  v42 = v5;
  __chkstk_darwin(v5);
  v40 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C5688();
  v38 = *(v7 - 8);
  v39 = v7;
  __chkstk_darwin(v7);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C4CA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v32) = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v13 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1001F0660;
  v15 = sub_1001C4C08();
  v17 = v16;
  *(v14 + 56) = &type metadata for String;
  v18 = sub_100084570();
  *(v14 + 32) = v15;
  *(v14 + 40) = v17;
  *(v14 + 96) = &type metadata for Int;
  *(v14 + 104) = &protocol witness table for Int;
  v19 = v34;
  *(v14 + 64) = v18;
  *(v14 + 72) = v19;
  sub_1001C5118(v32, &_mh_execute_header, v13, "ReadingHistoryService increment (date: %@, by: %ld)", 51, 2, v14);

  v20 = v36;
  v32 = *&v36[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  (*(v10 + 16))(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v21 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v22 = (v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  (*(v10 + 32))(v23 + v21, v12, v9);
  *(v23 + v22) = v19;
  v24 = (v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8));
  v25 = v37;
  *v24 = v35;
  v24[1] = v25;
  aBlock[4] = sub_1000F172C;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100246598;
  v26 = _Block_copy(aBlock);
  v27 = v20;

  v28 = v33;
  sub_1001C5668();
  v43 = _swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  v29 = v40;
  v30 = v42;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v26);
  (*(v41 + 8))(v29, v30);
  (*(v38 + 8))(v28, v39);
}

uint64_t ReadingHistoryService.readingHistoryStateInfo(rangeStart:rangeEnd:currentTime:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v62 = a4;
  v63 = a5;
  v60 = a3;
  v61 = a2;
  v6 = sub_1001C5648();
  v68 = *(v6 - 8);
  v69 = v6;
  __chkstk_darwin(v6);
  v67 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5688();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin(v8);
  v64 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1001C4CA8();
  v10 = *(v58 - 8);
  v11 = __chkstk_darwin(v58);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v56 = &v53 - v14;
  v55 = v15;
  __chkstk_darwin(v13);
  v17 = &v53 - v16;
  v18 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v19 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1001F0680;
  v21 = sub_1001C4C08();
  v23 = v22;
  *(v20 + 56) = &type metadata for String;
  v24 = sub_100084570();
  *(v20 + 64) = v24;
  *(v20 + 32) = v21;
  *(v20 + 40) = v23;
  v25 = v61;
  v26 = sub_1001C4C08();
  *(v20 + 96) = &type metadata for String;
  *(v20 + 104) = v24;
  *(v20 + 72) = v26;
  *(v20 + 80) = v27;
  v28 = v60;
  v29 = sub_1001C4C08();
  *(v20 + 136) = &type metadata for String;
  *(v20 + 144) = v24;
  *(v20 + 112) = v29;
  *(v20 + 120) = v30;
  sub_1001C5118(v18, &_mh_execute_header, v19, "ReadingHistoryService readingHistoryStateInfo (range: (%@ -> %@), currentTime: %@)", 82, 2, v20);

  v31 = v28;
  v32 = v70;
  v57 = *&v70[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  v33 = *(v10 + 16);
  v54 = v17;
  v34 = a1;
  v35 = v58;
  v33(v17, v34, v58);
  v36 = v56;
  v33(v56, v25, v35);
  v37 = v59;
  v33(v59, v31, v35);
  v38 = *(v10 + 80);
  v39 = (v38 + 24) & ~v38;
  v40 = (v55 + v38 + v39) & ~v38;
  v41 = (v55 + v38 + v40) & ~v38;
  v42 = (v55 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v32;
  v44 = *(v10 + 32);
  v44(v43 + v39, v54, v35);
  v44(v43 + v40, v36, v35);
  v44(v43 + v41, v37, v35);
  v45 = (v43 + v42);
  v46 = v63;
  *v45 = v62;
  v45[1] = v46;
  aBlock[4] = sub_10009A464;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_1002465E8;
  v47 = _Block_copy(aBlock);
  v48 = v70;

  v49 = v64;
  sub_1001C5668();
  v71 = _swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  v50 = v67;
  v51 = v69;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v47);
  (*(v68 + 8))(v50, v51);
  (*(v65 + 8))(v49, v66);
}

BDSReadingHistoryServiceStatusInfo __swiftcall ReadingHistoryService.serviceStatusInfo()()
{
  v0 = [objc_allocWithZone(BDSReadingHistoryServiceStatusInfo) initWithIsLoaded:1];
  v1 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1001F0670;
  *(v3 + 56) = sub_100088714(0, &qword_10026F370, off_10023DD40);
  *(v3 + 64) = sub_1000F17CC(&qword_10026F378, &qword_10026F370, off_10023DD40);
  *(v3 + 32) = v0;
  v4 = v0;
  sub_1001C5118(v1, &_mh_execute_header, v2, "ReadingHistoryService serviceStatusInfo: %@", 43, 2, v3);

  v6 = v4;
  result._status = v5;
  result.super.isa = v6;
  return result;
}

uint64_t sub_1000DF04C()
{
  v1 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v13 = v1;
    swift_once();
    v1 = v13;
  }

  v2 = *(v0 + 16);
  v3 = qword_1002711E8;
  sub_1001C5118(v1, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService bookWidgetReadingHistoryStateInfo", 55, 2, _swiftEmptyArrayStorage);
  v4 = *(v2 + OBJC_IVAR___BDSReadingHistoryService_viewStateChangeHandler);
  if (v4)
  {
    v5 = [swift_unknownObjectRetain() currentViewStateInfo];
    v6 = sub_1001C65B8();
    if (os_log_type_enabled(v3, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v5;
      *v8 = v5;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v3, v6, "ReadingHistoryService DONE bookWidgetReadingHistoryStateInfo: %@", v7, 0xCu);
      sub_10008875C(v8, &unk_1002718E0, &qword_1001F31F0);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = sub_1001C6598();
    sub_1001C5118(v10, &_mh_execute_header, v3, "ReadingHistoryService bookWidgetReadingHistoryStateInfo -- missing handler", 74, 2, _swiftEmptyArrayStorage);
    v5 = 0;
  }

  v11 = *(v0 + 8);

  return v11(v5, v4 != 0);
}

uint64_t sub_1000DF26C()
{
  v1 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  sub_1001C5118(v1, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService mergeMovedReadingHistoryData", 50, 2, _swiftEmptyArrayStorage);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000DF368;

  return sub_1000E0774();
}

uint64_t sub_1000DF368(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t ReadingHistoryService.backup(name:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000DF48C, 0, 0);
}

uint64_t sub_1000DF48C(uint64_t a1)
{
  v1[5] = sub_1000E0060();
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_1000DF534;
  v4 = v1[2];
  v3 = v1[3];

  return ReadingHistoryBackupManager.backup(name:)(v4, v3);
}

uint64_t sub_1000DF534()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000DF674, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3(1);
  }
}

uint64_t sub_1000DF674()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1000DF6FC(uint64_t a1)
{
  *(v1 + 24) = sub_1000E0060();
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_1000DF798;

  return sub_100133D3C();
}

uint64_t sub_1000DF798(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1000DF8F4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1, 1);
  }
}

uint64_t sub_1000DF8F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ReadingHistoryService.restore(name:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1000DF980, 0, 0);
}

uint64_t sub_1000DF980(uint64_t a1)
{
  v1[5] = sub_1000E0060();
  v2 = swift_task_alloc();
  v1[6] = v2;
  *v2 = v1;
  v2[1] = sub_1000DFA28;
  v4 = v1[2];
  v3 = v1[3];

  return ReadingHistoryBackupManager.restore(name:)(v4, v3);
}

uint64_t sub_1000DFA28()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000F51DC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3(1);
  }
}

void sub_1000DFB68(char a1)
{
  v3 = direct field offset for CRDTModelSyncManager.enableCloudSync;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = a1 & 1;
  *(v1 + v3) = a1;
  if (v4 != v5)
  {
    v6 = *(v1 + qword_10026FB30);
    v7 = *(v6 + qword_100281A08);
    *(v6 + qword_100281A08) = v5;
    if (v7 != v5)
    {
      sub_1000F1254(a1 & 1);
    }
  }
}

char *sub_1000DFBFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a3;
  v21 = a2;
  v19 = a1;
  v5 = sub_1001C6638();
  __chkstk_darwin(v5);
  v6 = sub_1001C6668();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001C5688();
  __chkstk_darwin(v10 - 8);
  *(v3 + 3) = 0;
  swift_unknownObjectWeakInit();
  v11 = &v4[*(*v4 + 144)];
  *v11 = 0;
  *(v11 + 1) = 0;
  v18 = *(*v3 + 152);
  v17[1] = sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  sub_1001C5678();
  (*(v7 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v6);
  v22 = _swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  *&v3[v18] = sub_1001C66A8();
  *&v3[*(*v3 + 160)] = &_swiftEmptySetSingleton;
  *&v3[*(*v3 + 168)] = 0;
  v3[*(*v3 + 176)] = 0;
  v3[*(*v3 + 184)] = 0;
  v22 = 0;
  v23 = 0xE000000000000000;
  sub_1001C69C8(20);

  v22 = 0xD000000000000012;
  v23 = 0x80000001001FE0E0;
  v24._countAndFlagsBits = 0xD00000000000001CLL;
  v24._object = 0x8000000100200DC0;
  sub_1001C6138(v24);
  sub_1001C5138();
  *(v3 + 4) = v19;
  v12 = *(*v3 + 136);
  v13 = sub_1001C4B28();
  (*(*(v13 - 8) + 32))(&v4[v12], v20, v13);
  v14 = *(*v4 + 128);
  v15 = sub_100084528(&unk_100270A30, &qword_1001F3490);
  (*(*(v15 - 8) + 32))(&v4[v14], v21, v15);
  return v4;
}

uint64_t sub_1000E0060()
{
  v1 = OBJC_IVAR___BDSReadingHistoryService____lazy_storage___historyBackupManager;
  if (*(v0 + OBJC_IVAR___BDSReadingHistoryService____lazy_storage___historyBackupManager))
  {
    v2 = *(v0 + OBJC_IVAR___BDSReadingHistoryService____lazy_storage___historyBackupManager);
  }

  else
  {
    __chkstk_darwin(0);
    type metadata accessor for ReadingHistoryBackupManager();
    sub_1001C6688();
    v2 = v4;
    *(v0 + v1) = v4;
  }

  return v2;
}

uint64_t sub_1000E0140@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*(a1 + OBJC_IVAR___BDSReadingHistoryService_historyServiceContext) + 64);
  type metadata accessor for ReadingHistoryBackupManager();
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000055;
  v4[3] = 0x80000001001FDEE0;
  v4[4] = 0xD000000000000012;
  v4[5] = 0x80000001001FDF40;
  v4[6] = 0xD000000000000013;
  v4[7] = 0x80000001001FDF60;
  v4[8] = 0x736B6F6F42;
  v4[9] = 0xE500000000000000;
  v4[10] = 0xD000000000000019;
  v4[11] = 0x80000001001FDF80;
  v4[12] = v3;
  *a2 = v4;
  return swift_unknownObjectRetain();
}

NSObject *ReadingHistoryService.init(readingGoalsService:transactionProvider:viewStateChangeHandler:)(void *a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = objc_opt_self();
  swift_unknownObjectRetain();
  v7 = [v6 sharedInstance];
  v8 = sub_10008366C();
  sub_100098D64();
  v10 = v9;
  sub_1001C69E8();
  v29._countAndFlagsBits = 45;
  v29._object = 0xE100000000000000;
  sub_1001C6138(v29);
  type metadata accessor for ReadingHistoryModel(0);
  sub_100084528(&qword_10026F330, qword_1001F0760);
  v30._countAndFlagsBits = sub_1001C6078();
  sub_1001C6138(v30);

  v11 = objc_allocWithZone(BCCloudDataSource);
  v12 = sub_1001C5FE8();

  v13 = [v11 initWithManagedObjectModel:v10 nameOnDisk:v12];

  v14 = objc_allocWithZone(sub_100084528(&qword_10026F338, &unk_1001F0D10));
  v15 = swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = v7;
  v17 = v8;
  v18 = v13;
  v19 = sub_100191330(v16, v17, v18, a2, v14);
  v20 = objc_allocWithZone(sub_100084528(&unk_10026F810, &qword_1001F3220));
  v21 = v19;
  v22 = sub_1000C4AA8(v21, v17, a2, v20, v15);

  *&v21[qword_100281A00 + 8] = &off_100244988;
  swift_unknownObjectWeakAssign();

  v23 = type metadata accessor for ReadingHistoryServiceContext();
  v24 = sub_10012FE54(a2, v23);
  v25 = objc_allocWithZone(ObjectType);
  v26 = sub_1000F1C1C(a1, v22, v24, 0, a3);

  swift_unknownObjectRelease();
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v26;
}

uint64_t CRDTModelCloudSyncController.__allocating_init(cloudSyncManager:transactionProvider:)(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CRDTModelCloudSyncController.init(cloudSyncManager:transactionProvider:)(a1, a2);
  return v4;
}

uint64_t sub_1000E05C0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1000E0654;

  return sub_1000E0774();
}

uint64_t sub_1000E0654(char a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_1000E0754, 0, 0);
}

uint64_t sub_1000E0774()
{
  v1[20] = v0;
  v2 = sub_1001C4CA8();
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  sub_100084528(&unk_10026FC70, &unk_1001F1430);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v3 = sub_1001C4B28();
  v1[27] = v3;
  v1[28] = *(v3 - 8);
  v1[29] = swift_task_alloc();

  return _swift_task_switch(sub_1000E08E0, 0, 0);
}

uint64_t sub_1000E08E0()
{
  v63 = v0;
  v1 = *(*(v0 + 160) + OBJC_IVAR___BDSReadingHistoryService_historyDefaults);
  v2 = sub_1001C5FE8();
  v3 = [v1 BOOLForKey:v2];

  if (v3)
  {
    v4 = *(v0 + 200);
    v5 = *(v0 + 168);
    v6 = *(v0 + 176);
    sub_1000E1104(v4);
    v7 = (*(v6 + 48))(v4, 1, v5);
    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    if (v7 != 1)
    {
      (*(v9 + 32))(*(v0 + 192), *(v0 + 200), *(v0 + 168));
      v26 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v27 = qword_1002711E8;
      (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 192), *(v0 + 168));
      v28 = os_log_type_enabled(v27, v26);
      v29 = *(v0 + 184);
      v30 = *(v0 + 192);
      v32 = *(v0 + 168);
      v31 = *(v0 + 176);
      if (v28)
      {
        v61 = *(v0 + 192);
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v62 = v34;
        *v33 = 136315138;
        sub_1000F2C74(&qword_100270A80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v35 = sub_1001C6CC8();
        v37 = v36;
        v38 = *(v31 + 8);
        v38(v29, v32);
        v39 = sub_1001874E8(v35, v37, &v62);

        *(v33 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v27, v26, "Migration: Not needed in daemon. Last migrated at:%s", v33, 0xCu);
        sub_10008E7BC(v34);

        v38(v61, v32);
      }

      else
      {
        v54 = *(v31 + 8);
        v54(*(v0 + 184), *(v0 + 168));
        v54(v30, v32);
      }

      goto LABEL_28;
    }

    v10 = *(v0 + 208);
    sub_10008875C(*(v0 + 200), &unk_10026FC70, &unk_1001F1430);
    sub_1001C4C98();
    (*(v9 + 56))(v10, 0, 1, v8);
    sub_1000E126C(v10);
    v11 = sub_1001C65B8();
    if (qword_10026EBE8 == -1)
    {
LABEL_4:
      sub_1001C5118(v11, &_mh_execute_header, qword_1002711E8, "Migration: Not needed in daemon. Updated timestamp to now.", 58, 2, _swiftEmptyArrayStorage);
LABEL_28:
      v53 = 1;
      goto LABEL_29;
    }

LABEL_33:
    v58 = v11;
    swift_once();
    v11 = v58;
    goto LABEL_4;
  }

  v59 = v1;
  v12 = (v0 + 241);
  v13 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v57 = v13;
    swift_once();
    v13 = v57;
  }

  v14 = *(v0 + 160);
  v15 = qword_1002711E8;
  sub_1001C5118(v13, &_mh_execute_header, qword_1002711E8, "Migration: Merging reading history data in daemon", 49, 2, _swiftEmptyArrayStorage, "CRDTModelFileSyncContext");
  *(v0 + 240) = 0;
  v16 = [objc_opt_self() readingHistoryFileURL];
  sub_1001C4AD8();

  v17 = [objc_allocWithZone(NSFileCoordinator) init];
  sub_1001C4A88(v18);
  v20 = v19;
  v21 = swift_allocObject();
  v21[2] = v0 + 240;
  v21[3] = v12;
  v21[4] = v14;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1000F4EB0;
  *(v22 + 24) = v21;
  *(v0 + 48) = sub_1000F4EF0;
  *(v0 + 56) = v22;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1000E7150;
  *(v0 + 40) = &unk_1002476E8;
  v23 = _Block_copy((v0 + 16));
  v24 = v14;

  log = v17;
  [v17 coordinateReadingItemAtURL:v20 options:0 error:0 byAccessor:v23];

  _Block_release(v23);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (*v12 == 1)
  {
    v25 = sub_1001C65B8();
  }

  else
  {
    v25 = sub_1001C6598();
  }

  v40 = v25;
  if (os_log_type_enabled(v15, v25))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v62 = v42;
    *v41 = 136315394;
    swift_beginAccess();
    if (*v12)
    {
      v43 = 0x6673736563637573;
    }

    else
    {
      v43 = 0x64656C696166;
    }

    if (*v12)
    {
      v44 = 0xEC000000796C6C75;
    }

    else
    {
      v44 = 0xE600000000000000;
    }

    v45 = sub_1001874E8(v43, v44, &v62);

    *(v41 + 4) = v45;
    *(v41 + 12) = 1024;
    swift_beginAccess();
    *(v41 + 14) = *(v0 + 240);
    _os_log_impl(&_mh_execute_header, v15, v40, "Migration done in daemon %s, completed: %{BOOL}d", v41, 0x12u);
    sub_10008E7BC(v42);
  }

  swift_beginAccess();
  v47 = *(v0 + 224);
  v46 = *(v0 + 232);
  v48 = *(v0 + 216);
  if (*(v0 + 240) == 1)
  {
    v49 = *(v0 + 208);
    v51 = *(v0 + 168);
    v50 = *(v0 + 176);
    v52 = sub_1001C5FE8();
    [v59 setBool:1 forKey:v52];

    sub_1001C4C98();
    (*(v50 + 56))(v49, 0, 1, v51);
    v12 = (v0 + 241);
    sub_1000E126C(v49);

    (*(v47 + 8))(v46, v48);
  }

  else
  {
    (*(v47 + 8))(*(v0 + 232), *(v0 + 216));
  }

  swift_beginAccess();
  v53 = *v12;

LABEL_29:

  v55 = *(v0 + 8);

  return v55(v53);
}

uint64_t sub_1000E1104@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR___BDSReadingHistoryService_historyDefaults);
  v4 = sub_1001C5FE8();
  v5 = [v3 valueForKey:v4];

  if (v5)
  {
    sub_1001C6888();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v6 = sub_1001C4CA8();
    v7 = swift_dynamicCast();
    return (*(*(v6 - 8) + 56))(a1, v7 ^ 1u, 1, v6);
  }

  else
  {
    sub_10008875C(v12, &qword_10026FCB0, &unk_1001F14E0);
    v9 = sub_1001C4CA8();
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_1000E126C(uint64_t a1)
{
  v3 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  v6 = *(v1 + OBJC_IVAR___BDSReadingHistoryService_historyDefaults);
  sub_10009ADF0(a1, &v12 - v4, &unk_10026FC70, &unk_1001F1430);
  v7 = sub_1001C4CA8();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    isa = sub_1001C4C38().super.isa;
    (*(v8 + 8))(v5, v7);
  }

  v10 = sub_1001C5FE8();
  [v6 setObject:isa forKey:v10];
  swift_unknownObjectRelease();

  return sub_10008875C(a1, &unk_10026FC70, &unk_1001F1430);
}

uint64_t sub_1000E13FC()
{
  v1 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  __chkstk_darwin(v1);
  v103 = &v86 - v2;
  v98 = type metadata accessor for ReadingHistory.State(0);
  __chkstk_darwin(v98);
  v99 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1001C4D48();
  v4 = *(v93 - 1);
  __chkstk_darwin(v93);
  v6 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C4D68();
  v105 = *(v7 - 8);
  v106 = v7;
  __chkstk_darwin(v7);
  v9 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100084528(&unk_10026FC70, &unk_1001F1430);
  __chkstk_darwin(v10 - 8);
  v12 = &v86 - v11;
  v107 = sub_100084528(&qword_10026F510, &qword_1001F1158);
  v13 = __chkstk_darwin(v107);
  v97 = &v86 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v96 = &v86 - v16;
  v17 = __chkstk_darwin(v15);
  v102 = &v86 - v18;
  __chkstk_darwin(v17);
  v104 = &v86 - v19;
  v100 = sub_1001C4CA8();
  v20 = *(v100 - 8);
  v21 = __chkstk_darwin(v100);
  v94 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v101 = &v86 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v86 - v26;
  __chkstk_darwin(v25);
  v108 = &v86 - v28;
  v29 = *(v0 + OBJC_IVAR___BDSReadingHistoryService_historyDataStore);
  sub_100084528(&qword_10026F530, &qword_1001F1170);
  v95 = v29;
  sub_1001C6688();
  if (v109 == 1)
  {
    v30 = *(v0 + OBJC_IVAR___BDSReadingHistoryService_viewStateChangeHandler);
    if (v30)
    {
      v91 = v1;
      v92 = v30;
      swift_unknownObjectRetain();
      v31 = v108;
      sub_1001C4C98();
      sub_1001C4CD8();
      v32 = v93;
      (*(v4 + 104))(v6, enum case for Calendar.Component.day(_:), v93);
      sub_1001C4D38();
      (*(v4 + 8))(v6, v32);
      v33 = v9;
      v34 = v105 + 8;
      v93 = *(v105 + 8);
      (v93)(v9, v106);
      v35 = *(v20 + 48);
      v36 = v100;
      v37 = v35(v12, 1, v100);
      v90 = 0;
      if (v37 == 1)
      {
        (*(v20 + 16))(v27, v31, v36);
        v38 = v35(v12, 1, v36);
        v39 = v20;
        if (v38 != 1)
        {
          sub_10008875C(v12, &unk_10026FC70, &unk_1001F1430);
        }
      }

      else
      {
        (*(v20 + 32))(v27, v12, v36);
        v39 = v20;
      }

      v87 = *(v107 + 48);
      sub_1001C4CD8();
      v43 = v101;
      sub_1001C4CE8();
      v44 = v106;
      v45 = v93;
      (v93)(v33, v106);
      v105 = v34;
      sub_1001C4CD8();
      v46 = v94;
      sub_1001C4CE8();
      v45(v33, v44);
      v47 = v39[1];
      v88 = v39 + 1;
      v89 = v47;
      v48 = v100;
      v47(v27, v100);
      v49 = v107;
      v50 = *(v107 + 48);
      v51 = v39[4];
      v52 = v102;
      v51(v102, v43, v48);
      v51(&v52[v50], v46, v48);
      v53 = v52;
      v54 = v52;
      v55 = v96;
      sub_10009AE58(v53, v96, &qword_10026F510, &qword_1001F1158);
      v56 = *(v49 + 48);
      v57 = v49;
      v58 = v104;
      v51(v104, v55, v48);
      v51((v58 + v87), (v55 + v56), v48);
      sub_10009ADF0(v58, v54, &qword_10026F510, &qword_1001F1158);
      v59 = *(v57 + 48);
      v94 = v59;
      v60 = v39[2];
      v60(v55, v54, v48);
      v60(v55 + *(v57 + 48), &v59[v54], v48);
      sub_1001C4CD8();
      v61 = v101;
      sub_1001C4CE8();
      (v93)(v33, v106);
      v62 = v95;
      sub_1001C6688();
      v106 = v109;
      v63 = sub_1001C6688();
      __chkstk_darwin(v63);
      *(&v86 - 2) = v62;
      *(&v86 - 1) = v61;
      v64 = v61;
      sub_1001C6688();
      v105 = v109;
      v93 = v110;
      LODWORD(v91) = v111;
      v65 = v97;
      sub_10009ADF0(v55, v97, &qword_10026F510, &qword_1001F1158);
      v66 = *(v107 + 48);
      v67 = ReadingHistoryDataStore.readingHistory(range:)(v65, v65 + v66);
      sub_10008875C(v55, &qword_10026F510, &qword_1001F1158);
      v68 = v89;
      v89(v65 + v66, v48);
      v68(v65, v48);
      v69 = v98;
      v70 = *(v98 + 20);
      v71 = type metadata accessor for ReadingHistory.Streak(0);
      v72 = v99;
      (*(*(v71 - 8) + 56))(&v99[v70], 1, 1, v71);
      *v72 = v106;
      sub_1000B36A8(v103, v72 + v70, &qword_10026F508, &qword_1001F1150);
      v73 = v72 + *(v69 + 24);
      v74 = v93;
      *v73 = v105;
      *(v73 + 1) = v74;
      v73[16] = v91;
      *(v72 + *(v69 + 28)) = v67;
      v68(v64, v48);
      v75 = v102;
      v68(&v94[v102], v48);
      v68(v75, v48);
      ReadingHistory.State.toInfo()(v76);
      v78 = v77;
      v79 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v80 = qword_1002711E8;
      if (os_log_type_enabled(qword_1002711E8, v79))
      {
        v81 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        *v81 = 138412290;
        *(v81 + 4) = v78;
        *v82 = v78;
        v83 = v78;
        _os_log_impl(&_mh_execute_header, v80, v79, "ReadingHistoryService updateViewStateIfNeeded: state: %@", v81, 0xCu);
        sub_10008875C(v82, &unk_1002718E0, &qword_1001F31F0);

        v72 = v99;
      }

      [v92 handleReadingHistoryViewStateChange:v78];

      swift_unknownObjectRelease();
      sub_10008875C(v104, &qword_10026F510, &qword_1001F1158);
      v68(v108, v48);
      return sub_1000F4A38(v72, type metadata accessor for ReadingHistory.State);
    }

    else
    {
      v42 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        v85 = v42;
        swift_once();
        v42 = v85;
      }

      return sub_1001C5118(v42, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService updateViewStateIfNeeded -- no handler configured", 70, 2, _swiftEmptyArrayStorage);
    }
  }

  else
  {
    v40 = sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      v84 = v40;
      swift_once();
      v40 = v84;
    }

    return sub_1001C5118(v40, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService updateViewStateIfNeeded: model not ready yet", 66, 2, _swiftEmptyArrayStorage);
  }
}

void sub_1000E2004(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      v13 = v5;
      swift_once();
      v5 = v13;
    }

    v6 = qword_1002711E8;
    sub_1001C5118(v5, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService modelDidChange", 36, 2, _swiftEmptyArrayStorage);
    v15 = 0;
    v7 = *&v4[OBJC_IVAR___BDSReadingHistoryService_accessQueue];
    v8 = swift_allocObject();
    v8[2] = &v15 + 1;
    v8[3] = v4;
    v8[4] = &v15;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1000F4BAC;
    *(v9 + 24) = v8;
    v14[4] = sub_1000B3DA0;
    v14[5] = v9;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1000906F4;
    v14[3] = &unk_100247490;
    v10 = _Block_copy(v14);
    v11 = v4;

    dispatch_sync(v7, v10);
    _Block_release(v10);
    LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

    if (v7)
    {
      __break(1u);
      return;
    }

    if ((v15 & 1) == 0)
    {
      if (HIBYTE(v15) != 1)
      {
LABEL_13:

        return;
      }

      v12 = sub_1001C65B8();
      sub_1001C5118(v12, &_mh_execute_header, v6, "ReadingHistoryService model ready", 33, 2, _swiftEmptyArrayStorage);
      dispatch_resume(*&v11[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue]);
    }

    if (HIBYTE(v15) == 1)
    {
      sub_1000E13FC();
    }

    if ((v15 & 1) == 0 && HIBYTE(v15) == 1)
    {
      [a2 endTransaction];
    }

    goto LABEL_13;
  }
}

void *sub_1000E229C(_BYTE *a1, uint64_t a2, _BYTE *a3)
{
  sub_100084528(&qword_10026F530, &qword_1001F1170);
  result = sub_1001C6688();
  *a1 = v8;
  v7 = OBJC_IVAR___BDSReadingHistoryService_isModelReady;
  *a3 = *(a2 + OBJC_IVAR___BDSReadingHistoryService_isModelReady);
  *(a2 + v7) = *a1;
  return result;
}

id ReadingHistoryService.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = *&v0[OBJC_IVAR___BDSReadingHistoryService_historyDataStore];
  v4 = *&v3[OBJC_IVAR____TtC14bookdatastored23ReadingHistoryDataStore_lastModelChange];
  v5 = *(v4 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000B2EF4;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1000B2E48;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100246660;
  v8 = _Block_copy(aBlock);
  swift_retain_n();

  v9 = v1;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
    goto LABEL_5;
  }

  v11 = objc_opt_self();
  v12 = [v11 defaultCenter];
  sub_1000B39A0();
  v3 = v9;
  v13 = sub_1001C4E28();
  [v12 removeObserver:v3 name:v13 object:0];

  v14 = [v11 defaultCenter];
  [v14 removeObserver:v3 name:@"BDSNotificationForwarderSignificantTimeChangeNotification" object:0];

  v10 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
LABEL_5:
    v16 = v10;
    swift_once();
    v10 = v16;
  }

  sub_1001C5118(v10, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService DONE deinit", 33, 2, _swiftEmptyArrayStorage);
  v17.receiver = v3;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, "dealloc");
}

uint64_t sub_1000E2748(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_historyDataStore);
  v4 = *(v3 + 144);
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1000F504C;
  *(v5 + 24) = v3;
  v10[4] = sub_1000B3DA0;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_1000906F4;
  v10[3] = &unk_1002478A0;
  v6 = _Block_copy(v10);

  dispatch_sync(v4, v6);
  _Block_release(v6);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  v7 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
LABEL_5:
    v9 = v7;
    swift_once();
    v7 = v9;
  }

  sub_1001C5118(v7, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService DONE clearData", 36, 2, _swiftEmptyArrayStorage);
  return a2(1);
}

uint64_t sub_1000E2944(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_historyDefaults);
  v4 = sub_1001C5FE8();
  [v3 removeObjectForKey:v4];

  v5 = sub_1001C5FE8();
  [v3 setInteger:0 forKey:v5];

  v6 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v8 = v6;
    swift_once();
    v6 = v8;
  }

  sub_1001C5118(v6, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService DONE clearDefaultsCachedData", 50, 2, _swiftEmptyArrayStorage);
  return a2(1);
}

uint64_t sub_1000E2AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_1000AA0B4(a2, 0x7461447261656C63, 0xE900000000000065);
  v4 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v6 = v4;
    swift_once();
    v4 = v6;
  }

  sub_1001C5118(v4, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService DONE clearDate", 36, 2, _swiftEmptyArrayStorage);
  return a3(1);
}

uint64_t sub_1000E2CAC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = sub_1001C4CA8();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(a1 + OBJC_IVAR___BDSReadingHistoryService_historyDataStore) + 120))(v6);
  sub_1000AA0B4(v8, 0x646F547261656C63, 0xEA00000000007961);
  (*(v5 + 8))(v8, v4);
  v9 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v11 = v9;
    swift_once();
    v9 = v11;
  }

  sub_1001C5118(v9, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService DONE clearToday", 37, 2, _swiftEmptyArrayStorage);
  return a2(1);
}

uint64_t sub_1000E2E70(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t static CRDTModelSyncVersion.fromInfo(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1001C5EB8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 data];
  sub_1001C4BA8();

  sub_1001C5CF8();
  sub_1001C5E38();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v9 = sub_1001C5E18();
  sub_10008875C(v12, &unk_10026EF20, &unk_1001F1FB0);
  v10 = type metadata accessor for CRDTModelSyncVersion(0);
  (*(v5 + 32))(a2 + *(v10 + 20), v7, v4);
  *a2 = v9;
  return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
}

uint64_t ReadingHistoryService.handleSyncFileChange(syncVersion:update:completionHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v31 = a4;
  v28 = a3;
  v29 = sub_1001C5648();
  v34 = *(v29 - 8);
  __chkstk_darwin(v29);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001C5688();
  v32 = *(v8 - 8);
  v33 = v8;
  __chkstk_darwin(v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = v27 - v14;
  v16 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  sub_1001C5118(v16, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService handleSyncFileChange", 42, 2, _swiftEmptyArrayStorage);
  v27[1] = *&v4[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  sub_10009ADF0(a1, v15, &unk_10026F350, &qword_1001F31E0);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  v19 = v30;
  *(v18 + 16) = v30;
  *(v18 + 24) = v4;
  sub_10009AE58(v15, v18 + v17, &unk_10026F350, &qword_1001F31E0);
  v20 = (v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8));
  v21 = v31;
  *v20 = v28;
  v20[1] = v21;
  aBlock[4] = sub_1000F2B50;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_1002466B0;
  v22 = _Block_copy(aBlock);
  v23 = v19;
  v24 = v4;

  sub_1001C5668();
  v35 = _swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  v25 = v29;
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v22);
  (*(v34 + 8))(v7, v25);
  (*(v32 + 8))(v10, v33);
}

void *sub_1000E3734(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v52 = a5;
  v53 = a4;
  v8 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for CRDTModelSyncVersion(0);
  v55 = *(v11 - 8);
  __chkstk_darwin(v11);
  v50 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v10;
  if (a1)
  {
    v54 = *&a1[OBJC_IVAR___BDSReadingHistoryUpdate_value + 8];
  }

  else
  {
    v54 = 0;
  }

  v13 = [objc_opt_self() books];
  v14 = [v13 userDefaults];

  v15 = sub_1001C5FE8();
  v16 = [v14 integerForKey:v15];

  if (a1)
  {
    v17 = a3;
    v18 = *(a2 + OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSaveAccessLock);
    v19 = a1;
    os_unfair_lock_lock(v18 + 4);
    v20 = OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSave;
    v21 = *(a2 + OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSave);
    if (v21)
    {
      v16 = *&v21[OBJC_IVAR___BDSReadingHistoryUpdate_value + 8];
      v22 = v21;
      v23 = ReadingHistoryUpdate.coalesce(newerUpdate:)(v19);

      v24 = *(a2 + v20);
      *(a2 + v20) = v23;
    }

    else
    {
      *(a2 + OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSave) = a1;
      v25 = v19;
    }

    os_unfair_lock_unlock(v18 + 4);

    a3 = v17;
  }

  result = sub_1001C6688();
  v27 = LOBYTE(aBlock[0]);
  if (!a1 || (aBlock[0] & 1) != 0)
  {
    goto LABEL_13;
  }

  if (!__OFADD__(v16, 1))
  {
    if (v16 + 1 >= v54)
    {
      v28 = 0;
LABEL_15:
      v29 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v30 = qword_1002711E8;
      if (os_log_type_enabled(qword_1002711E8, v29))
      {
        v31 = swift_slowAlloc();
        *v31 = 67109888;
        *(v31 + 4) = v28;
        *(v31 + 8) = 2048;
        *(v31 + 10) = v54;
        *(v31 + 18) = 2048;
        *(v31 + 20) = v16;
        *(v31 + 28) = 1024;
        *(v31 + 30) = v27;
        _os_log_impl(&_mh_execute_header, v30, v29, "ReadingHistoryService handleSyncFileChange - doFullSync=%{BOOL}d (editGen=%ld, lastSeenGen=%ld, loaded=%{BOOL}d)", v31, 0x22u);
      }

      if (v28)
      {
        v32 = v51;
        sub_10009ADF0(a3, v51, &unk_10026F350, &qword_1001F31E0);
        if ((*(v55 + 48))(v32, 1, v11) == 1)
        {
          sub_10008875C(v32, &unk_10026F350, &qword_1001F31E0);
          v33 = sub_1001C6598();
          sub_1001C5118(v33, &_mh_execute_header, v30, "ReadingHistoryService handleSyncFileChange - missing syncVersion", 64, 2, _swiftEmptyArrayStorage);
LABEL_29:
          v48 = sub_1001C65B8();
          sub_1001C5118(v48, &_mh_execute_header, v30, "ReadingHistoryService DONE handleSyncFileChange", 47, 2, _swiftEmptyArrayStorage);
          return v53(1);
        }
      }

      else
      {
        if (!a1)
        {
          v47 = sub_1001C6598();
          sub_1001C5118(v47, &_mh_execute_header, v30, "ReadingHistoryService handleSyncFileChange - missing update", 59, 2, _swiftEmptyArrayStorage);
          goto LABEL_29;
        }

        v34 = a1;
        v35 = sub_1001C65B8();
        if (os_log_type_enabled(v30, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *v36 = 138412290;
          *(v36 + 4) = v34;
          *v37 = a1;
          v38 = v34;
          _os_log_impl(&_mh_execute_header, v30, v35, "ReadingHistoryService handleSyncFileChange - received update: %@", v36, 0xCu);
          sub_10008875C(v37, &unk_1002718E0, &qword_1001F31F0);
        }

        v39 = *(a2 + OBJC_IVAR___BDSReadingHistoryService_historyDataStore);
        v40 = *(v39 + 144);
        v41 = swift_allocObject();
        *(v41 + 16) = v39;
        *(v41 + 24) = v34;
        v42 = swift_allocObject();
        *(v42 + 16) = sub_1000B2F8C;
        *(v42 + 24) = v41;
        aBlock[4] = sub_1000B3DA0;
        aBlock[5] = v42;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000906F4;
        aBlock[3] = &unk_100246F18;
        v43 = _Block_copy(aBlock);
        v32 = v34;

        dispatch_sync(v40, v43);
        _Block_release(v43);
        LOBYTE(v40) = swift_isEscapingClosureAtFileLocation();

        if ((v40 & 1) == 0)
        {
          goto LABEL_29;
        }

        __break(1u);
      }

      v44 = v32;
      v45 = v50;
      sub_1000F4BE8(v44, v50, type metadata accessor for CRDTModelSyncVersion);
      v46 = sub_1001C65B8();
      sub_1001C5118(v46, &_mh_execute_header, v30, "ReadingHistoryService handleSyncFileChange - received syncVersion", 65, 2, _swiftEmptyArrayStorage);
      sub_1000E3E38(v45, 1);
      sub_1000F4A38(v45, type metadata accessor for CRDTModelSyncVersion);
      goto LABEL_29;
    }

LABEL_13:
    v28 = (*(v55 + 48))(a3, 1, v11) != 1;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E3E38(uint64_t a1, char a2)
{
  v5 = type metadata accessor for CRDTModelSyncVersion(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v8 = *(v2 + 48);
  sub_1000F4968(a1, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRDTModelSyncVersion);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  sub_1000F4BE8(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for CRDTModelSyncVersion);
  *(v10 + v9 + v7) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000F47FC;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100246F90;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t CRDTModelCloudSyncController.checkLocalModelSyncVersion(syncVersion:createTransaction:)(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *v2;
  v7 = type metadata accessor for CRDTModelSyncVersion(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v10 = v2[6];
  sub_1000F4968(a1, aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CRDTModelSyncVersion);
  v11 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = *(v5 + 80);
  *(v12 + 24) = *(v6 + 88);
  *(v12 + 40) = *(v5 + 104);
  *(v12 + 48) = v2;
  sub_1000F4BE8(aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for CRDTModelSyncVersion);
  *(v12 + v11 + v9) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000F2BF0;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1000B3DA0;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000906F4;
  aBlock[3] = &unk_100246728;
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

uint64_t sub_1000E42D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v31 = a3;
  v7 = sub_1001C5648();
  v29 = *(v7 - 8);
  v30 = v7;
  __chkstk_darwin(v7);
  v28 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001C4CA8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ReadingHistoryModel(0);
  __chkstk_darwin(v13);
  v25 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  ReadingHistoryDataStore.increment(date:by:)(a2, v31);
  v37 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncManager);
  sub_1001C6688();
  (*(v10 + 16))(v12, a2, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v10 + 32))(v17 + v15, v12, v9);
  *(v17 + v16) = v31;
  v18 = (v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8));
  v19 = v27;
  *v18 = v26;
  v18[1] = v19;

  sub_100084528(&unk_100270A10, &unk_1001F3470);
  sub_1001C6688();
  v20 = v38[0];
  v21 = v28;
  sub_1001C5638();
  v22 = v25;
  v32 = v20;
  v33 = v25;
  v34 = 0;
  v35 = sub_1000F4F74;
  v36 = v17;
  sub_100084528(&unk_100270A90, &qword_1001F34D8);
  sub_1001C6678();

  (*(v29 + 8))(v21, v30);

  return sub_1000F4A38(v22, type metadata accessor for ReadingHistoryModel);
}

uint64_t sub_1000E4648(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v6 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1001F0660;
  v8 = sub_1001C4C08();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  v11 = sub_100084570();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = &type metadata for Int;
  *(v7 + 104) = &protocol witness table for Int;
  *(v7 + 64) = v11;
  *(v7 + 72) = a2;
  sub_1001C5118(v5, &_mh_execute_header, v6, "ReadingHistoryService DONE increment (date: %@, by: %ld)", 56, 2, v7);

  return a3(1);
}

void sub_1000E48BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(id, uint64_t), uint64_t a6)
{
  v61 = a6;
  v62 = a5;
  v66 = a3;
  v67 = a4;
  v65 = a2;
  v60 = sub_100084528(&qword_10026F508, &qword_1001F1150);
  __chkstk_darwin(v60);
  v64 = &v54[-v7];
  v8 = sub_1001C4D68();
  v58 = *(v8 - 8);
  v59 = v8;
  __chkstk_darwin(v8);
  v10 = &v54[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1001C4CA8();
  v57 = *(v11 - 8);
  v12 = v57;
  __chkstk_darwin(v11);
  v63 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_100084528(&qword_10026F510, &qword_1001F1158);
  v15 = v14 - 8;
  v16 = __chkstk_darwin(v14);
  v18 = &v54[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v20 = &v54[-v19];
  v21 = type metadata accessor for ReadingHistory.State(0);
  v22 = (v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v54[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_historyDataStore);
  v26 = *(v12 + 16);
  v56 = v11;
  v26(v20, v65, v11);
  v26(&v20[*(v15 + 56)], v66, v11);
  sub_1001C4CD8();
  v27 = v63;
  sub_1001C4CE8();
  (*(v58 + 8))(v10, v59);
  sub_1001C6688();
  v59 = v70;
  sub_1001C6688();
  v68 = v25;
  v69 = v27;
  sub_1001C6688();
  v60 = v70;
  v58 = v71;
  v55 = v72;
  sub_10009ADF0(v20, v18, &qword_10026F510, &qword_1001F1158);
  v28 = *(v15 + 56);
  v29 = ReadingHistoryDataStore.readingHistory(range:)(v18, &v18[v28]);
  sub_10008875C(v20, &qword_10026F510, &qword_1001F1158);
  v30 = *(v57 + 8);
  v31 = &v18[v28];
  v32 = v56;
  v30(v31, v56);
  v33 = v18;
  v34 = v32;
  v30(v33, v32);
  v35 = v22[7];
  v36 = type metadata accessor for ReadingHistory.Streak(0);
  (*(*(v36 - 8) + 56))(&v24[v35], 1, 1, v36);
  *v24 = v59;
  sub_1000B36A8(v64, &v24[v35], &qword_10026F508, &qword_1001F1150);
  v37 = &v24[v22[8]];
  v38 = v58;
  *v37 = v60;
  *(v37 + 1) = v38;
  v37[16] = v55;
  *&v24[v22[9]] = v29;
  v30(v63, v34);
  ReadingHistory.State.toInfo()(v39);
  v41 = v40;
  sub_1000F4A38(v24, type metadata accessor for ReadingHistory.State);
  v42 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    swift_once();
  }

  v43 = qword_1002711E8;
  sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1001F0CF0;
  v45 = sub_1001C4C08();
  v47 = v46;
  *(v44 + 56) = &type metadata for String;
  v48 = sub_100084570();
  *(v44 + 64) = v48;
  *(v44 + 32) = v45;
  *(v44 + 40) = v47;
  v49 = sub_1001C4C08();
  *(v44 + 96) = &type metadata for String;
  *(v44 + 104) = v48;
  *(v44 + 72) = v49;
  *(v44 + 80) = v50;
  v51 = sub_1001C4C08();
  *(v44 + 136) = &type metadata for String;
  *(v44 + 144) = v48;
  *(v44 + 112) = v51;
  *(v44 + 120) = v52;
  *(v44 + 176) = sub_100088714(0, &qword_100270AC8, off_10023DD48);
  *(v44 + 184) = sub_1000F17CC(&unk_100270AD0, &qword_100270AC8, off_10023DD48);
  *(v44 + 152) = v41;
  v53 = v41;
  sub_1001C5118(v42, &_mh_execute_header, v43, "ReadingHistoryService DONE readingHistoryStateInfo (range: (%@ -> %@), currentTime: %@), stateInfo: %@", 102, 2, v44);

  v62(v53, 1);
}

uint64_t sub_1000E5244()
{
  v1 = sub_1001C5648();
  v17 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001C5688();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v14 = v7;
    swift_once();
    v7 = v14;
  }

  sub_1001C5118(v7, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService handlePlaceholderStreakDayGoalNeedsUpdate", 63, 2, _swiftEmptyArrayStorage);
  v8 = [*(*&v0[OBJC_IVAR___BDSReadingHistoryService_historyServiceContext] + 64) createTransactionWithName:"com.apple.bookdatastored.ReadingHistoryService.handlePlaceholderStreakDayGoalNeedsUpdate"];
  v15 = *&v0[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1000F31EC;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100246BF8;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  v12 = v8;
  sub_1001C5668();
  v18 = _swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v10);

  (*(v17 + 8))(v3, v1);
  (*(v4 + 8))(v6, v16);
}

uint64_t sub_1000E56A4()
{
  v1 = sub_1001C5648();
  v17 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001C5688();
  v4 = *(v16 - 8);
  __chkstk_darwin(v16);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v14 = v7;
    swift_once();
    v7 = v14;
  }

  sub_1001C5118(v7, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService handleSignificantDateChange", 49, 2, _swiftEmptyArrayStorage);
  v8 = [*(*&v0[OBJC_IVAR___BDSReadingHistoryService_historyServiceContext] + 64) createTransactionWithName:"com.apple.bookdatastored.ReadingHistoryService.handleSignificantDateChange"];
  v15 = *&v0[OBJC_IVAR___BDSReadingHistoryService_modelReadyQueue];
  v9 = swift_allocObject();
  *(v9 + 16) = v0;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1000F3190;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000DD4AC;
  aBlock[3] = &unk_100246BA8;
  v10 = _Block_copy(aBlock);
  v11 = v0;
  v12 = v8;
  sub_1001C5668();
  v18 = _swiftEmptyArrayStorage;
  sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100084528(&unk_10026F360, &qword_1001F13F0);
  sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  sub_1001C6698();
  _Block_release(v10);

  (*(v17 + 8))(v3, v1);
  (*(v4 + 8))(v6, v16);
}

uint64_t sub_1000E5C74(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000B8DCC;

  return ReadingHistoryService.bookWidgetReadingHistoryStateInfo()();
}

void sub_1000E5D7C(uint64_t a1, uint64_t a2)
{
  v5 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v20[-v9];
  v11 = type metadata accessor for CRDTModelRevisionInfo(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10009ADF0(a1, v10, &unk_10026F410, &unk_1001F0E40);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v15 = sub_10008875C(v10, &unk_10026F410, &unk_1001F0E40);
  }

  else
  {
    sub_1000F4BE8(v10, v14, type metadata accessor for CRDTModelRevisionInfo);
    v16 = *(v2 + OBJC_IVAR___BDSReadingHistoryService_historyServiceContext);
    sub_1000F4968(v14, v8, type metadata accessor for CRDTModelRevisionInfo);
    (*(v12 + 56))(v8, 0, 1, v11);
    sub_10012FED0(*(v16 + 16), *(v16 + 24), v8);
    sub_10008875C(v8, &unk_10026F410, &unk_1001F0E40);
    v15 = sub_1000F4A38(v14, type metadata accessor for CRDTModelRevisionInfo);
  }

  v17 = *(v2 + OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSaveAccessLock);
  v18 = __chkstk_darwin(v15);
  *&v20[-16] = v2;
  *&v20[-8] = a2;
  __chkstk_darwin(v18);
  *&v20[-16] = sub_1000F4D04;
  *&v20[-8] = v19;
  os_unfair_lock_lock(v17 + 4);
  sub_1000F4D20();
  os_unfair_lock_unlock(v17 + 4);
}

void sub_1000E6034(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSave;
  v3 = *(a1 + OBJC_IVAR___BDSReadingHistoryService_readingHistoryUpdatePendingSave);
  if (v3)
  {
    v6 = v3;
    if (!ReadingHistoryUpdate.hasDelta(from:)(a2))
    {
      v7 = *&v6[OBJC_IVAR___BDSReadingHistoryUpdate_value + 8];
      v8 = [objc_opt_self() books];
      v9 = [v8 userDefaults];

      v10 = sub_1001C5FE8();
      [v9 setInteger:v7 forKey:v10];

      v11 = *(a1 + v2);
      *(a1 + v2) = 0;

      v12 = sub_1001C65B8();
      if (qword_10026EBE8 != -1)
      {
        swift_once();
      }

      v13 = qword_1002711E8;
      if (os_log_type_enabled(qword_1002711E8, v12))
      {
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        *(v14 + 4) = v7;
        _os_log_impl(&_mh_execute_header, v13, v12, "ReadingHistoryService saved lastLocalUpdateSavedGeneration=%ld", v14, 0xCu);
      }
    }
  }
}

uint64_t sub_1000E61DC(uint64_t a1)
{
  v3 = sub_100084528(&unk_10026F410, &unk_1001F0E40);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CRDTModelRevisionInfo(0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10009ADF0(a1, v8, &unk_10026F410, &unk_1001F0E40);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_10008875C(v8, &unk_10026F410, &unk_1001F0E40);
  }

  sub_1000F4BE8(v8, v12, type metadata accessor for CRDTModelRevisionInfo);
  v14 = *(v1 + OBJC_IVAR___BDSReadingHistoryService_historyServiceContext);
  sub_1000F4968(v12, v6, type metadata accessor for CRDTModelRevisionInfo);
  (*(v10 + 56))(v6, 0, 1, v9);
  sub_10012FED0(*(v14 + 32), *(v14 + 40), v6);
  sub_10008875C(v6, &unk_10026F410, &unk_1001F0E40);
  return sub_1000F4A38(v12, type metadata accessor for CRDTModelRevisionInfo);
}

uint64_t sub_1000E657C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(sub_1000E65F4, 0, 0);
}

uint64_t sub_1000E65F4()
{
  v1 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v4 = v1;
    swift_once();
    v1 = v4;
  }

  sub_1001C5118(v1, &_mh_execute_header, qword_1002711E8, "ReadingHistoryService mergeMovedReadingHistoryData", 50, 2, _swiftEmptyArrayStorage);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000E66F0;

  return sub_1000E0774();
}

uint64_t sub_1000E66F0(char a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1 & 1, 0);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_1000E683C()
{
  v1 = v0;
  v2 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v59 = v2;
    swift_once();
    v2 = v59;
  }

  v62 = qword_1002711E8;
  sub_1001C5118(v2, &_mh_execute_header, qword_1002711E8, "Migration: Starting migration", 29, 2, _swiftEmptyArrayStorage);
  v61 = swift_allocObject();
  *(v61 + 16) = [*(*&v0[OBJC_IVAR___BDSReadingHistoryService_historyServiceContext] + 64) createTransactionWithName:"com.apple.bookdatastored.reading-history-migration"];
  v3 = objc_opt_self();
  v4 = [v3 books];
  v5 = [v4 userDefaults];

  v6 = objc_opt_self();
  v7 = [v6 booksFinishedUserDefaultsKey];
  if (!v7)
  {
    sub_1001C6018();
    v7 = sub_1001C5FE8();
  }

  v8 = [v5 dictionaryForKey:v7];

  if (v8)
  {
    v9 = sub_1001C5F08();
  }

  else
  {
    v9 = 0;
  }

  v10 = [v3 books];
  v11 = [v10 userDefaults];

  v12 = [v6 streakDayUserDefaultsKey];
  if (!v12)
  {
    sub_1001C6018();
    v12 = sub_1001C5FE8();
  }

  v13 = [v11 dictionaryForKey:v12];

  if (v13)
  {
    v15 = sub_1001C5F08();
  }

  else
  {
    v15 = 0;
  }

  v65.value._rawValue = v9;
  v65.is_nil = v15;
  ReadingGoalsDataStore.migrate(bookFinishedGoalDict:streakDayGoalDict:)(v65, v14);

  v16 = objc_allocWithZone(NSPersistentContainer);
  v17 = sub_1001C5FE8();
  v18 = [v16 initWithName:v17];

  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = [objc_opt_self() defaultManager];
  sub_1001C4AF8();
  v22 = sub_1001C5FE8();

  LODWORD(v16) = [v21 fileExistsAtPath:v22];

  if (v16)
  {
    v23 = objc_allocWithZone(NSPersistentStoreDescription);
    sub_1001C4A88(v24);
    v26 = v25;
    v27 = [v23 initWithURL:v25];

    [v27 setShouldInferMappingModelAutomatically:1];
    [v27 setShouldMigrateStoreAutomatically:1];
    [v27 setUsesPersistentHistoryTracking:1];
    sub_100084528(&qword_100270AB0, &qword_1001F52C0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1001F31C0;
    *(v28 + 32) = v27;
    sub_100088714(0, &qword_100270AB8, NSPersistentStoreDescription_ptr);
    v29 = v27;
    isa = sub_1001C6288().super.isa;

    [v18 setPersistentStoreDescriptions:isa];

    v31 = swift_allocObject();
    v31[2] = v18;
    v31[3] = v61;
    v31[4] = v19;
    v31[5] = v1;
    v31[6] = v20;
    aBlock[4] = sub_1000F4F18;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000E8410;
    aBlock[3] = &unk_100247788;
    v32 = _Block_copy(aBlock);
    v33 = v18;

    v34 = v1;

    [v33 loadPersistentStoresWithCompletionHandler:v32];
    _Block_release(v32);
    swift_beginAccess();
    v35 = v62;
    if (*(v20 + 16) != 1)
    {
      goto LABEL_23;
    }

    swift_beginAccess();
    *(v19 + 16) = 1;
    v36 = sub_1001C65B8();
    sub_1001C5118(v36, &_mh_execute_header, v62, "Migration: Cleaning up", 22, 2, _swiftEmptyArrayStorage);
    v37 = [v33 persistentStoreCoordinator];
    sub_1001C4A88(v38);
    v40 = v39;
    v60 = v29;
    v41 = [v29 type];
    if (!v41)
    {
      sub_1001C6018();
      v41 = sub_1001C5FE8();
    }

    v63[0] = 0;
    v42 = [v37 destroyPersistentStoreAtURL:v40 withType:v41 options:0 error:v63];

    if (v42)
    {
      v43 = v63[0];
    }

    else
    {
      v46 = v63[0];
      sub_1001C4A28();

      swift_willThrow();
      v47 = sub_1001C6598();
      sub_100084528(&qword_10026FEE0, &unk_1001F0690);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1001F0670;
      v49 = sub_1001C4AF8();
      v51 = v50;
      *(v48 + 56) = &type metadata for String;
      *(v48 + 64) = sub_100084570();
      *(v48 + 32) = v49;
      *(v48 + 40) = v51;
      sub_1001C5118(v47, &_mh_execute_header, v62, "Failed to destroy persistent store after migration at %{public}@", 64, 2, v48);
    }

    v29 = v60;
    v35 = v62;
    if (*(v20 + 16) == 1)
    {
      v52 = sub_1001C65B8();
    }

    else
    {
LABEL_23:
      v52 = sub_1001C6598();
    }

    v53 = v52;
    if (os_log_type_enabled(v35, v52))
    {

      v54 = swift_slowAlloc();
      *v54 = 67109376;
      *(v54 + 4) = *(v20 + 16);

      *(v54 + 8) = 1024;
      swift_beginAccess();
      *(v54 + 10) = *(v19 + 16);

      _os_log_impl(&_mh_execute_header, v35, v53, "Daemon migration reading history - success: %{BOOL}d, completed: %{BOOL}d", v54, 0xEu);
    }

    swift_beginAccess();
  }

  else
  {
    v44 = sub_1001C65B8();
    sub_1001C5118(v44, &_mh_execute_header, v62, "Migration: database file not found", 34, 2, _swiftEmptyArrayStorage);

    *(v19 + 16) = 1;
    *(v20 + 16) = 1;
    v45 = *(v61 + 16);
    *(v61 + 16) = 0;
  }

  v55 = *(v19 + 16);
  v56 = *(v20 + 16);

  if (v56)
  {
    v57 = 256;
  }

  else
  {
    v57 = 0;
  }

  return v57 | v55;
}

uint64_t sub_1000E7150(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001C4B28();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1001C4AD8();
  v7(v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1000E7234(int a1, void *a2, id a3, id a4, uint64_t a5, uint64_t isEscapingClosureAtFileLocation, uint64_t a7)
{
  v10 = a5 + 16;
  v11 = (a7 + 16);
  if (!a2)
  {
    goto LABEL_4;
  }

  swift_errorRetain();
  v21 = sub_1001C6598();
  if (qword_10026EBE8 != -1)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v12 = qword_1002711E8;
    sub_100084528(&qword_10026FEE0, &unk_1001F0690);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1001F0670;
    swift_getErrorValue();
    v14 = sub_1001C6D98();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100084570();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    sub_1001C5118(v21, &_mh_execute_header, v12, "Error loading persistent store: %{public}@", 42, 2, v13);

LABEL_4:
    v17 = [a3 newBackgroundContext];
    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = v17;
    v18[4] = v10;
    v18[5] = isEscapingClosureAtFileLocation;
    v18[6] = v11;
    a3 = swift_allocObject();
    *(a3 + 2) = sub_1000F4F28;
    *(a3 + 3) = v18;
    aBlock[4] = sub_1000B2E48;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000906F4;
    aBlock[3] = &unk_100247800;
    v11 = _Block_copy(aBlock);

    a4 = v17;
    v19 = isEscapingClosureAtFileLocation;

    [a4 performBlockAndWait:v11];

    _Block_release(v11);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_6:
    swift_once();
  }

  return result;
}

unint64_t sub_1000E74CC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, _BYTE *a5)
{
  v52 = a5;
  v53 = a4;
  v56 = a3;
  v60 = a1;
  v55 = sub_1001C5648();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ReadingHistoryModel(0);
  v8 = __chkstk_darwin(v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v48 - v11;
  v13 = objc_allocWithZone(NSFetchRequest);
  v14 = sub_1001C5FE8();
  v15 = [v13 initWithEntityName:v14];

  sub_100088714(0, &qword_100270AC0, NSPredicate_ptr);
  v57 = sub_100084528(&qword_10026FEE0, &unk_1001F0690);
  v16 = swift_allocObject();
  v58 = xmmword_1001F0670;
  *(v16 + 16) = xmmword_1001F0670;
  *(v16 + 56) = &type metadata for String;
  v59 = sub_100084570();
  *(v16 + 64) = v59;
  *(v16 + 32) = 0xD000000000000013;
  *(v16 + 40) = 0x80000001001FDF60;
  v17 = sub_1001C6568();
  [v15 setPredicate:v17];

  v18 = sub_1001C65B8();
  if (qword_10026EBE8 != -1)
  {
    v46 = v18;
    swift_once();
    v18 = v46;
  }

  v19 = qword_1002711E8;
  sub_1001C5118(v18, &_mh_execute_header, qword_1002711E8, "Migration: Fetching", 19, 2, _swiftEmptyArrayStorage);
  type metadata accessor for CRDTModelSyncEntity(0);
  result = sub_1001C66C8();
  v51 = v15;
  if (result >> 62)
  {
    v47 = result;
    v21 = sub_1001C6B38();
    result = v47;
  }

  else
  {
    v21 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = v12;
  v23 = v6;
  if (!v21)
  {

    v32 = sub_1001C6598();
    sub_1001C5118(v32, &_mh_execute_header, v19, "Results for fetch CRDTModelSyncEntity with type ReadingHistoryModel were empty", 78, 2, _swiftEmptyArrayStorage);

    goto LABEL_13;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    v24 = sub_1001C69F8();
    goto LABEL_9;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(result + 32);
LABEL_9:
    v25 = v24;

    v26 = [v25 protoData];
    if (v26)
    {
      v27 = v26;
      v28 = sub_1001C4BA8();
      v30 = v29;

      v31 = sub_1001C65B8();
      sub_1001C5118(v31, &_mh_execute_header, v19, "Migration: Creating ReadingHistoryModel from stored data", 56, 2, _swiftEmptyArrayStorage);
      sub_10009AD9C(v28, v30);
      sub_1000F2C74(&qword_10026F460, type metadata accessor for ReadingHistoryModel, &protocol conformance descriptor for ReadingHistoryModel);
      sub_1001C5C58();
      v50 = v30;
      v56 = v28;
      v35 = sub_1001C65B8();
      sub_1000F4968(v22, v10, type metadata accessor for ReadingHistoryModel);
      if (os_log_type_enabled(v19, v35))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v61[0] = v38;
        *v37 = 136315138;
        v49 = ReadingHistoryModel.description.getter();
        v40 = v39;
        sub_1000F4A38(v10, type metadata accessor for ReadingHistoryModel);
        v41 = sub_1001874E8(v49, v40, v61);

        *(v37 + 4) = v41;
        _os_log_impl(&_mh_execute_header, v19, v35, "Migration: Model loaded! let's merge: %s", v37, 0xCu);
        sub_10008E7BC(v38);
      }

      else
      {
        sub_1000F4A38(v10, type metadata accessor for ReadingHistoryModel);
      }

      v42 = v50;
      v43 = *(v53 + OBJC_IVAR___BDSReadingHistoryService_historyCloudSyncManager);
      v44 = sub_1001C5638();
      __chkstk_darwin(v44);
      *(&v48 - 4) = v43;
      *(&v48 - 3) = v22;
      *(&v48 - 16) = 1;
      sub_1001C6678();
      (*(v54 + 8))(v23, v55);

      sub_1000887D0(v56, v42);
      sub_1000F4A38(v22, type metadata accessor for ReadingHistoryModel);
      v45 = v52;
      swift_beginAccess();
      *v45 = 1;
      return sub_1000E7F4C(v60);
    }

    v33 = sub_1001C6598();
    sub_1001C5118(v33, &_mh_execute_header, v19, "Failed to retreive protoData from CRDTModelSyncEntity", 53, 2, _swiftEmptyArrayStorage);

LABEL_13:
    v34 = v56;
    swift_beginAccess();
    *v34 = 1;
    return sub_1000E7F4C(v60);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E7F4C(uint64_t a1)
{
  v2 = sub_1001C5648();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v28 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001C5688();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1001C56A8();
  v26 = *(v29 - 8);
  v8 = __chkstk_darwin(v29);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = sub_1001C5658();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v18 = *(a1 + 16);
  if (v18)
  {
    v24 = v18;
    [v24 transactionNeedsMoreTime];
    sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
    v25 = v5;
    (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.background(_:), v13);
    v23 = sub_1001C66B8();
    (*(v14 + 8))(v16, v13);
    sub_1001C5698();
    sub_1001C56B8();
    v26 = *(v26 + 8);
    (v26)(v10, v29);
    aBlock[4] = sub_1000F4F38;
    aBlock[5] = a1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000DD4AC;
    aBlock[3] = &unk_100247828;
    v19 = _Block_copy(aBlock);

    sub_1001C5668();
    v30 = _swiftEmptyArrayStorage;
    sub_1000F2C74(&unk_100270B90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100084528(&unk_10026F360, &qword_1001F13F0);
    sub_1000885F4(&qword_100270BA0, &unk_10026F360, &qword_1001F13F0, &protocol conformance descriptor for [A]);
    v20 = v28;
    sub_1001C68C8();
    v21 = v23;
    sub_1001C6648();
    _Block_release(v19);

    (*(v3 + 8))(v20, v2);
    (*(v27 + 8))(v7, v25);
    (v26)(v12, v29);
  }

  return result;
}

void sub_1000E8410(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

uint64_t sub_1000E849C()
{
  v1 = *(*v0 + 96);
  v3[0] = *(*v0 + 80);
  v3[1] = v1;
  type metadata accessor for CRDTModelFileSyncManager(0, v3);
  sub_1001C6688();
  return *&v3[0];
}

void *sub_1000E8534(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v4 = sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      v9 = v4;
      swift_once();
      v4 = v9;
    }

    sub_1001C5118(v4, &_mh_execute_header, qword_1002711E8, "Loading localSyncManager", 24, 2, _swiftEmptyArrayStorage);
    v5 = *(a1 + 56);
    swift_unknownObjectRetain();
    v6 = sub_1000EDF7C(0x617461646B6F6F62, 0xEE006465726F7473);
    sub_100084528(&unk_100270A10, &unk_1001F3470);
    v7 = swift_allocObject();
    v3 = sub_1000F3554(v6, v5, 0, 0, v7);
    swift_unknownObjectRelease();
    *(a1 + 24) = v3;

    sub_1000E8800(v3);
  }

  return v3;
}

uint64_t sub_1000E8684@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[3];
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v7 = v4;
    v8 = sub_1001C65B8();
    if (qword_10026EBE8 != -1)
    {
      v12 = v8;
      swift_once();
      v8 = v12;
    }

    sub_1001C5118(v8, &_mh_execute_header, qword_1002711E8, "Loading localSyncManager", 24, 2, _swiftEmptyArrayStorage);
    v9 = *(v7 + 96);
    v13[0] = *(v7 + 80);
    v13[1] = v9;
    type metadata accessor for CRDTModelFileSyncManager(0, v13);
    v10 = a1[7];
    swift_unknownObjectRetain();
    v6 = sub_100169580(0x617461646B6F6F62, 0xEE006465726F7473, 1, v10, 0, 0);
    swift_unknownObjectRelease();
    a1[3] = v6;

    sub_1000E8BBC();
  }

  *a2 = v6;
}

uint64_t sub_1000E8800(uint64_t a1)
{
  v2 = v1;
  sub_100084528(&unk_10026F450, &qword_1001F76A0);
  sub_1001C6688();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = aBlock[2];
  v5 = swift_allocObject();
  v5[2] = aBlock;
  v5[3] = sub_1000F48E8;
  v5[4] = v3;
  v5[5] = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1000B2EE8;
  *(v6 + 24) = v5;
  v20 = sub_1000B3DA0;
  v21 = v6;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1000906F4;
  v19 = &unk_100247058;
  v7 = _Block_copy(&aBlock);

  dispatch_sync(v4, v7);
  _Block_release(v7);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_100084528(&unk_100270A20, &unk_1001F3480);
  sub_1001C6688();
  v9 = aBlock;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = v9[2];
  v12 = swift_allocObject();
  v12[2] = v9;
  v12[3] = sub_1000F4938;
  v12[4] = v10;
  v12[5] = v2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000F51E0;
  *(v13 + 24) = v12;
  v20 = sub_1000B3DA0;
  v21 = v13;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_1000906F4;
  v19 = &unk_1002470D0;
  v14 = _Block_copy(&aBlock);

  dispatch_sync(v11, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E8BBC()
{
  v1 = v0;
  v2 = *v0;
  CRDTModelFileSyncManager.observable.getter();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v5 = v2[10];
  v4[2] = v5;
  v6 = v2[11];
  v4[3] = v6;
  v7 = v2[12];
  v4[4] = v7;
  v8 = v2[13];
  v4[5] = v8;
  v4[6] = v3;
  ObservableContainer.addObserver(_:callback:)(v0, sub_1000F478C, v4);

  v9 = CRDTModelFileSyncManager.modelSyncVersionObservable.getter();
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *&v12 = v5;
  *(&v12 + 1) = v6;
  *&v13 = v7;
  *(&v13 + 1) = v8;
  *(v11 + 16) = v12;
  *(v11 + 32) = v13;
  *(v11 + 48) = v10;
  v14 = *(v9 + 16);
  v15 = swift_allocObject();
  v15[2] = v9;
  v15[3] = sub_1000F47A4;
  v15[4] = v11;
  v15[5] = v1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000F47D4;
  *(v16 + 24) = v15;
  v19[4] = sub_1000B3DA0;
  v19[5] = v16;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_1000906F4;
  v19[3] = &unk_100246E50;
  v17 = _Block_copy(v19);

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

char *sub_1000E8E94(void *a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v34 = a2;
  v4 = sub_100084528(&unk_10026F350, &qword_1001F31E0);
  __chkstk_darwin(v4 - 8);
  v32 = v26 - v5;
  v27 = sub_1001C6638();
  __chkstk_darwin(v27);
  v6 = sub_1001C5688();
  __chkstk_darwin(v6 - 8);
  v31 = sub_1001C6668();
  v7 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 3) = 0;
  sub_100088714(0, &qword_10026F2D0, OS_dispatch_queue_ptr);
  v28 = "HistoryService.modelReady";
  v30 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v29 = *(v7 + 104);
  v29(v9);
  sub_1001C5668();
  aBlock[0] = _swiftEmptyArrayStorage;
  v26[1] = sub_1000F2C74(&unk_10026ECC0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  v26[0] = sub_100084528(&unk_10026F2E0, &unk_1001F0D00);
  sub_1000885F4(&unk_10026ECD0, &unk_10026F2E0, &unk_1001F0D00, &protocol conformance descriptor for [A]);
  sub_1001C68C8();
  *(v2 + 4) = sub_1001C66A8();
  *(v2 + 5) = 0;
  (v29)(v9, v30, v31);
  sub_1001C5668();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1001C68C8();
  *(v2 + 6) = sub_1001C66A8();
  v10 = qword_1002708C0;
  v11 = type metadata accessor for CRDTModelSyncVersion(0);
  v12 = *(*(v11 - 8) + 56);
  v12(&v3[v10], 1, 1, v11);
  *&v3[qword_1002708C8] = 0;
  *&v3[qword_1002818C8 + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = v33;
  v14 = v34;
  *(v3 + 2) = v33;
  *(v3 + 7) = v14;
  v15 = v32;
  v12(v32, 1, 1, v11);
  v16 = qword_1002708C0;
  swift_beginAccess();
  v17 = v13;
  swift_unknownObjectRetain();
  sub_1000B36A8(v15, &v3[v16], &unk_10026F350, &qword_1001F31E0);
  swift_endAccess();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = objc_allocWithZone(BUCoalescingCallBlock);
  aBlock[4] = sub_1000F4E84;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000991BC;
  aBlock[3] = &unk_100247620;
  v20 = _Block_copy(aBlock);

  v21 = sub_1001C5FE8();
  v22 = [v19 initWithNotifyBlock:v20 blockDescription:v21];

  _Block_release(v20);

  [v22 setCoalescingDelay:30.0];

  swift_unknownObjectRelease();
  v23 = qword_1002708C8;
  swift_beginAccess();
  v24 = *&v3[v23];
  *&v3[v23] = v22;

  return v3;
}